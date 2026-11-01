'use strict';
const $=id=>document.getElementById(id),canvas=$('canvas'),ctx=canvas.getContext('2d'),sheet=new Image();
sheet.src='/entity.png';
let catalog=[],atlas={},design=null,selected=new Set(),history=[],future=[],mode='edit',playing=false;
let sim=null,session=null,zoom=.6,cx=0,cy=0,drag=null,ghost=[],trail=[],keys=new Set(),touch=0;
let busy=false,loading=false,last=0,acc=0,dirty=false,serial=0,baseline='';
const copy=x=>JSON.parse(JSON.stringify(x)),num=(n,k,d=0)=>Number(n.attrs[k]??d),nodes=()=>design?design.nodes:[];
const uid=()=>Date.now().toString(36)+'_'+(++serial),round=x=>Math.round(x*1000)/1000;
const snap=x=>$('snap').checked?Math.round(x/10)*10:round(x);
const colorRGB=color=>color?[1,3,5].map(i=>parseInt(color.slice(i,i+2),16)/255):null;
async function api(path,data){const r=await fetch('/api/'+path,data?{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify(data)}:{});const result=await r.json();if(!r.ok)throw Error(result.error||'请求失败');return result;}
function fail(e){$('error').textContent=e.message||e;}
function cache(){if(!design)return;try{localStorage.setItem('dwl-editor-'+design.level,JSON.stringify({design,dirty}));}catch(e){$('message').textContent='浏览器草稿存储不可用，请导出草稿或保存到工程。';}}
function checkpoint(){history.push(copy(design));if(history.length>60)history.shift();future=[];}
function changed(){dirty=JSON.stringify(design)!==baseline;cache();update();}
function selectionCenter(chosen=nodes().filter(n=>selected.has(n.key))){return {x:chosen.reduce((s,n)=>s+num(n,'x'),0)/chosen.length,y:chosen.reduce((s,n)=>s+num(n,'y'),0)/chosen.length};}
function update(){
  $('level').disabled=loading;
  $('dirty').textContent=dirty?'● 草稿已修改，尚未保存到工程':'已与工程同步';
  $('undo').disabled=mode!=='edit'||!history.length;$('redo').disabled=mode!=='edit'||!future.length;
  $('save').disabled=!design||mode!=='edit'||!dirty||loading;
  $('test').hidden=mode==='test';$('edit').hidden=mode==='edit';$('drive').hidden=mode==='edit';
  $('quickEdit').hidden=mode==='edit';$('quickPlay').disabled=loading;
  document.querySelectorAll('.test-only').forEach(e=>e.hidden=mode==='edit');
  $('palette').querySelectorAll('button').forEach(e=>e.disabled=mode!=='edit');
  for(const id of ['addSpiral','ghost','selectTrack','snap'])$(id).disabled=mode!=='edit';
  const chosen=nodes().filter(n=>selected.has(n.key));$('properties').hidden=mode!=='edit'||!chosen.length;
  $('selection').textContent=mode==='test'?'试玩时可观察球的运动轨迹':!chosen.length?'点击木板、货球、车辆或星星':chosen.length===1?`${chosen[0].attrs.id||chosen[0].key} · ${chosen[0].tag}`:`已选 ${chosen.length} 个物体（坐标为组合中心）`;
  updateMaterialProperties(chosen);
  $('materialPlace').disabled=mode!=='edit'||loading;
  if(!chosen.length)return;const center=selectionCenter(chosen);
  $('propX').value=round(center.x);$('propY').value=round(center.y);$('propAngle').value=chosen.length===1?num(chosen[0],'rotation'):0;
  const single=chosen.length===1&&chosen[0].tag==='body';$('bodyProps').hidden=!single;
  if(single){const a=chosen[0].attrs;$('propFrame').value=a.frame;$('propDensity').value=a.density??0;$('propFriction').value=a.friction??.9;$('propRestitution').value=a.restitution??.3;}
  $('duplicate').disabled=!chosen.every(n=>copyableTags.has(n.tag));$('delete').disabled=!chosen.every(n=>copyableTags.has(n.tag));
}
function pause(){playing=false;keys.clear();touch=0;acc=0;}
async function waitStep(){while(busy)await new Promise(r=>setTimeout(r,10));}
async function load(){
  if(loading)return;loading=true;$('level').disabled=true;pause();mode='edit';selected.clear();history=[];future=[];ghost=[];trail=[];$('error').textContent='';$('message').textContent='';
  try{await waitStep();const n=Number($('level').value),disk=await api('editor/load',{level:n});disk.deleted=[];baseline=JSON.stringify(disk);design=disk;dirty=false;
    try{const cached=JSON.parse(localStorage.getItem('dwl-editor-'+n));if(cached?.dirty){if(cached.design.revision===disk.revision){design=cached.design;dirty=JSON.stringify(design)!==baseline;if(dirty)$('message').textContent='已恢复此关上次未保存的草稿。';}else $('message').textContent='工程地图已更新，旧草稿未覆盖当前地图。';}}catch(e){}
    design.mechanisms??=[];$('title').textContent=n+' · '+catalog.find(d=>d.level===n).title;localStorage.setItem('dwl-editor-level',String(n));fit();
  }catch(e){fail(e);}finally{loading=false;update();}
}
function size(frame,tag){const f=atlas[frame];if(f)return f.sourceSize.match(/-?\d+/g).map(Number);return tag==='ball'?[42,42]:tag==='star'?[50,50]:[50,30];}
function objects(){if(mode==='test')return sim?.objects||[];return nodes().map(n=>{const a=n.attrs,frame=a.frame||n.tag,text=(materialLibrary.texts[a.text]||a.text||'').replaceAll('\\n','\n'),fontsize=num(n,'fontsize',20);let[w,h]=size(frame,n.tag);if(n.tag==='label'){w=Math.max(50,...text.split('\n').map(s=>s.length*fontsize*.65));h=Math.max(25,text.split('\n').length*fontsize*1.25);}return {key:n.key,id:a.id,kind:n.tag==='wheels'?'car':n.tag,frame,w,h,x:num(n,'x'),y:num(n,'y'),angle:num(n,'rotation')*Math.PI/180,alpha:num(n,'opacity',1),circle:a.isCircle==='true',dynamic:num(n,'density')>0,tint:colorRGB(n.color||n.baseColor),text,fontsize};});}
function fit(){const a=objects().filter(o=>o.kind!=='label');if(!a.length)return;const x1=Math.min(...a.map(o=>o.x-Math.hypot(o.w,o.h)/2)),x2=Math.max(...a.map(o=>o.x+Math.hypot(o.w,o.h)/2)),y1=Math.min(...a.map(o=>o.y-Math.hypot(o.w,o.h)/2)),y2=Math.max(...a.map(o=>o.y+Math.hypot(o.w,o.h)/2));cx=(x1+x2)/2;cy=(y1+y2)/2;zoom=Math.min(canvas.clientWidth/(x2-x1+120),canvas.clientHeight/(y2-y1+120));}
const tintedFrames=new Map();
function sprite(o){
  const f=atlas[o.frame];if(!$('textures').checked||!f||!sheet.complete||!sheet.naturalWidth)return false;
  const[x,y,w,h]=f.frame.match(/-?\d+/g).map(Number),[sx,sy,sw,sh]=f.sourceColorRect.match(/-?\d+/g).map(Number),[fw,fh]=f.sourceSize.match(/-?\d+/g).map(Number);
  if(o.tint){
    const rgb=o.tint.map(c=>Math.max(0,Math.min(255,Math.round(c*255)))),key=o.frame+':'+rgb.join(',');
    let image=tintedFrames.get(key);
    if(!image){
      const raw=document.createElement('canvas');raw.width=fw;raw.height=fh;const g=raw.getContext('2d');g.translate(sx+sw/2,sy+sh/2);
      if(f.rotated){g.rotate(-Math.PI/2);g.drawImage(sheet,x,y,h,w,-sh/2,-sw/2,sh,sw);}else g.drawImage(sheet,x,y,w,h,-sw/2,-sh/2,sw,sh);
      image=document.createElement('canvas');image.width=fw;image.height=fh;const colored=image.getContext('2d');colored.drawImage(raw,0,0);
      colored.globalCompositeOperation='multiply';colored.fillStyle='rgb('+rgb.join(',')+')';colored.fillRect(0,0,fw,fh);
      colored.globalCompositeOperation='destination-in';colored.drawImage(raw,0,0);
      if(tintedFrames.size>=128)tintedFrames.delete(tintedFrames.keys().next().value);tintedFrames.set(key,image);
    }
    ctx.drawImage(image,-o.w/2,-o.h/2,o.w,o.h);return true;
  }
  ctx.save();ctx.scale(o.w/fw,o.h/fh);ctx.translate(sx+sw/2-fw/2,sy+sh/2-fh/2);if(f.rotated){ctx.rotate(-Math.PI/2);ctx.drawImage(sheet,x,y,h,w,-sh/2,-sw/2,sh,sw);}else ctx.drawImage(sheet,x,y,w,h,-sw/2,-sh/2,sw,sh);ctx.restore();return true;
}
function paint(o){ctx.save();ctx.translate(o.x,o.y);ctx.rotate(o.angle);ctx.globalAlpha=mode==='edit'?Math.max(.15,o.alpha??1):(o.alpha??1);if(o.kind==='label'){ctx.fillStyle='#344a3c';ctx.font=(o.fontsize||20)+'px system-ui';ctx.textAlign='center';ctx.textBaseline='middle';String(o.text||'').replaceAll('\\n','\n').split('\n').forEach((line,i)=>ctx.fillText(line,0,i*(o.fontsize||20)*1.25));}else if(!sprite(o)){ctx.fillStyle=o.kind==='ball'?'#d96446':o.kind==='star'?'#dfb12f':o.kind==='car'||o.kind==='wheel'?'#6085a0':o.dynamic?'#ae7951':'#576558';if(o.tint)ctx.fillStyle='rgb('+o.tint.map(c=>Math.round(c*255)).join(',')+')';ctx.beginPath();if(o.circle||o.kind==='ball'||o.kind==='wheel')ctx.arc(0,0,o.w/2,0,Math.PI*2);else if(o.kind==='star'){for(let i=0;i<10;i++){let a=i*Math.PI/5-Math.PI/2,r=i%2?11:25;ctx.lineTo(Math.cos(a)*r,Math.sin(a)*r);}ctx.closePath();}else ctx.rect(-o.w/2,-o.h/2,o.w,o.h);ctx.fill();}if(mode==='edit'&&selected.has(o.key)){ctx.globalAlpha=1;ctx.strokeStyle='#0878b0';ctx.lineWidth=2/zoom;ctx.strokeRect(-o.w/2-3/zoom,-o.h/2-3/zoom,o.w+6/zoom,o.h+6/zoom);}ctx.restore();}
async function step(frames){if(loading||busy||!session)return;busy=true;try{let drive=touch||((keys.has('ArrowRight')||keys.has('d')?1:0)-(keys.has('ArrowLeft')||keys.has('a')?1:0));sim=await api('step',{session,drive,frames});const b=sim.objects.find(o=>o.kind==='ball');if(b){trail.push([b.x,b.y]);if(trail.length>5000)trail.shift();}if(sim.won)pause();}catch(e){pause();fail(e);}finally{busy=false;}}
function draw(t){const dt=last?Math.min((t-last)/1000,.1):0;last=t;if(mode==='test'&&playing){acc=Math.min(.2,acc+dt);const n=Math.min(3,Math.floor(acc*60));if(n&&!busy&&!loading){acc-=n/60;step(n);}}
  const w=canvas.clientWidth,h=canvas.clientHeight,d=devicePixelRatio||1;if(canvas.width!==Math.round(w*d)||canvas.height!==Math.round(h*d)){canvas.width=Math.round(w*d);canvas.height=Math.round(h*d);}ctx.setTransform(d,0,0,d,0,0);ctx.fillStyle='#f7f2e5';ctx.fillRect(0,0,w,h);ctx.save();ctx.translate(w/2,h/2);ctx.scale(zoom,zoom);ctx.translate(-cx,-cy);ctx.strokeStyle='#e8e1d0';ctx.lineWidth=1/zoom;ctx.beginPath();let spacing=$('snap').checked&&zoom>.7?50:200;for(let x=Math.floor((cx-w/zoom/2)/spacing)*spacing;x<cx+w/zoom/2;x+=spacing){ctx.moveTo(x,cy-h/zoom/2);ctx.lineTo(x,cy+h/zoom/2);}for(let y=Math.floor((cy-h/zoom/2)/spacing)*spacing;y<cy+h/zoom/2;y+=spacing){ctx.moveTo(cx-w/zoom/2,y);ctx.lineTo(cx+w/zoom/2,y);}ctx.stroke();objects().forEach(paint);
  if($('trail').checked&&trail.length){ctx.strokeStyle='#d56035';ctx.lineWidth=2/zoom;ctx.beginPath();trail.forEach(([x,y],i)=>i?ctx.lineTo(x,y):ctx.moveTo(x,y));ctx.stroke();}
  if(ghost.length&&mode==='edit'){ctx.strokeStyle='#0878b0';ctx.setLineDash([7/zoom,5/zoom]);ctx.lineWidth=2/zoom;ctx.beginPath();ghost.forEach(([x,y],i)=>i?ctx.lineTo(x,y):ctx.moveTo(x,y));ctx.stroke();ctx.setLineDash([]);}
  if(drag?.kind==='marquee'){ctx.fillStyle='#0878b022';ctx.strokeStyle='#0878b0';ctx.lineWidth=1/zoom;ctx.fillRect(drag.start.x,drag.start.y,drag.end.x-drag.start.x,drag.end.y-drag.start.y);ctx.strokeRect(drag.start.x,drag.start.y,drag.end.x-drag.start.x,drag.end.y-drag.start.y);}
  ctx.restore();$('hud').textContent=mode==='edit'?`设计模式 · ${nodes().length} 个物体 · ${Math.round(zoom*100)}%`:`${sim?.won?'货球已到达目标 ✓':playing?'试玩中':'试玩已暂停'} · ${(sim?.time||0).toFixed(1)} s · 空格暂停 / R 重试`;$('quickPlay').textContent=mode==='edit'?'试玩':playing?'暂停':'继续';$('warnings').textContent=mode==='test'?(sim?.warnings||[]).join('；'):'';requestAnimationFrame(draw);
}
function world(e){const r=canvas.getBoundingClientRect();return {x:(e.clientX-r.left-r.width/2)/zoom+cx,y:(e.clientY-r.top-r.height/2)/zoom+cy};}
function hit(p){return objects().slice().reverse().find(o=>{const dx=p.x-o.x,dy=p.y-o.y,x=dx*Math.cos(o.angle)+dy*Math.sin(o.angle),y=-dx*Math.sin(o.angle)+dy*Math.cos(o.angle);return Math.abs(x)<=o.w/2+3/zoom&&Math.abs(y)<=o.h/2+3/zoom;});}
canvas.oncontextmenu=e=>e.preventDefault();
canvas.onpointerdown=e=>{if(loading||!design)return;canvas.focus();canvas.setPointerCapture(e.pointerId);const p=world(e),o=mode==='edit'&&e.button===0&&!keys.has(' ')?hit(p):null;if(o){if(e.shiftKey){if(selected.has(o.key)){selected.delete(o.key);update();return;}selected.add(o.key);}else if(!selected.has(o.key))selected=new Set([o.key]);drag={kind:'objects',start:p,orig:copy(nodes().filter(n=>selected.has(n.key))),recorded:false};}else if(mode==='edit'&&e.shiftKey&&e.button===0)drag={kind:'marquee',start:p,end:p};else{if(mode==='edit'&&e.button===0&&!keys.has(' '))selected.clear();drag={kind:'pan',x:e.clientX,y:e.clientY,cx,cy};}update();};
canvas.onpointermove=e=>{if(!drag)return;if(drag.kind==='pan'){cx=drag.cx-(e.clientX-drag.x)/zoom;cy=drag.cy-(e.clientY-drag.y)/zoom;return;}const p=world(e);if(drag.kind==='marquee'){drag.end=p;return;}const dx=p.x-drag.start.x,dy=p.y-drag.start.y;if(!drag.recorded&&Math.hypot(dx,dy)*zoom<2)return;if(!drag.recorded){checkpoint();drag.recorded=true;}for(const before of drag.orig){const n=nodes().find(n=>n.key===before.key);n.attrs.x=String(snap(num(before,'x')+dx));n.attrs.y=String(snap(num(before,'y')+dy));}update();};
function finishDrag(){if(drag?.kind==='marquee'){const a=drag.start,b=drag.end;for(const n of nodes())if(num(n,'x')>=Math.min(a.x,b.x)&&num(n,'x')<=Math.max(a.x,b.x)&&num(n,'y')>=Math.min(a.y,b.y)&&num(n,'y')<=Math.max(a.y,b.y))selected.add(n.key);}if(drag?.recorded)changed();drag=null;update();}
canvas.onpointerup=finishDrag;canvas.onpointercancel=finishDrag;
canvas.onwheel=e=>{e.preventDefault();const before=world(e);zoom=Math.max(.04,Math.min(5,zoom*Math.exp(-e.deltaY*.001)));const after=world(e);cx+=before.x-after.x;cy+=before.y-after.y;};
function transform(dx=0,dy=0,degrees=0){if(mode!=='edit'||!selected.size)return;checkpoint();const center=selectionCenter(),a=degrees*Math.PI/180;for(const n of nodes().filter(n=>selected.has(n.key))){const x=num(n,'x')-center.x,y=num(n,'y')-center.y;n.attrs.x=String(round(center.x+x*Math.cos(a)-y*Math.sin(a)+dx));n.attrs.y=String(round(center.y+x*Math.sin(a)+y*Math.cos(a)+dy));n.attrs.rotation=String(round(num(n,'rotation')+degrees));}changed();}
function addBoard(frame,x=cx,y=cy,angle=0){const key='new_'+uid();return {key,tag:'body',attrs:{id:'editor_'+key.slice(4),x:String(round(x)),y:String(round(y)),rotation:String(round(angle)),opacity:'1',frame,density:'0',friction:'.9',restitution:'.1',isSensor:'false',isCircle:'false'}};}
function remove(){if(mode!=='edit'||!selected.size)return;const chosen=nodes().filter(n=>selected.has(n.key)),ids=new Set(chosen.map(n=>n.attrs.id)),groups=selectionAssemblies();if(chosen.some(n=>!copyableTags.has(n.tag)))return fail('货球、车辆和终点需要保留。');if(groups.some(m=>assemblyMembers(m).some(id=>!ids.has(id))))return fail('请先点击“选中整组机关”，再删除完整机关。');if(nodes().some(n=>!selected.has(n.key)&&n.action&&ids.has(n.action.target)))return fail('仍有开关指向所选物体，请先修改开关目标或一并删除开关。');checkpoint();design.mechanisms=assemblies().filter(m=>!groups.includes(m));design.deleted.push(...chosen.filter(n=>!n.key.startsWith('new_')).map(n=>n.key));design.nodes=nodes().filter(n=>!selected.has(n.key));selected.clear();changed();}
$('delete').onclick=remove;
$('duplicate').onclick=duplicateMaterials;
for(const[id,sign]of[['rotateL',-1],['rotateR',1]])$(id).onclick=()=>transform(0,0,sign*15);
for(const[id,axis]of[['propX','x'],['propY','y']])$(id).onchange=()=>{const value=Number($(id).value);if(!Number.isFinite(value))return;const c=selectionCenter();transform(axis==='x'?value-c.x:0,axis==='y'?value-c.y:0);};
$('propAngle').onchange=()=>{const chosen=nodes().filter(n=>selected.has(n.key)),value=Number($('propAngle').value);if(!chosen.length||!Number.isFinite(value))return;transform(0,0,chosen.length===1?value-num(chosen[0],'rotation'):value);};
for(const[id,attr]of[['propFrame','frame'],['propDensity','density'],['propFriction','friction'],['propRestitution','restitution']])$(id).onchange=()=>{const n=nodes().find(n=>selected.has(n.key));if(!n||mode!=='edit')return;checkpoint();n.attrs[attr]=$(id).value;if(attr==='frame'&&n.tag==='body')n.attrs.isCircle=String(n.attrs.frame.startsWith('circle'));changed();};
function undo(redo=false){if(mode!=='edit')return;const from=redo?future:history,to=redo?history:future;if(!from.length)return;to.push(copy(design));design=from.pop();selected.clear();changed();}
$('undo').onclick=()=>undo();$('redo').onclick=()=>undo(true);
$('selectTrack').onclick=()=>{selected=new Set(nodes().filter(n=>/^rail_|^editor_/.test(n.attrs.id||'')).map(n=>n.key));update();};
async function test(){if(loading||!design)return;loading=true;update();pause();$('error').textContent='';try{await waitStep();sim=await api('editor/preview',design);session=sim.session;mode='test';selected.clear();trail=[];ghost=[];playing=true;canvas.focus();}catch(e){fail(e);}finally{loading=false;update();}}
$('test').onclick=test;$('resetTest').onclick=test;
$('edit').onclick=async()=>{pause();loading=true;await waitStep();mode='edit';loading=false;update();};
$('quickPlay').onclick=()=>{if(loading)return;if(mode==='edit')test();else{playing=!playing;acc=0;canvas.focus();}};
$('quickEdit').onclick=()=>$('edit').click();$('quickFit').onclick=fit;
$('save').onclick=async()=>{if(loading||mode!=='edit'||!dirty)return;loading=true;update();$('error').textContent='';try{const result=await api('editor/save',design);design={...result.design,deleted:[]};baseline=JSON.stringify(design);dirty=false;history=[];future=[];selected.clear();cache();$('message').textContent=result.saved?'已保存到工程。原文件备份：'+result.backup:'布局无需更新。';}catch(e){fail(e);}finally{loading=false;update();}};
$('export').onclick=()=>{if(!design)return;const a=document.createElement('a'),url=URL.createObjectURL(new Blob([JSON.stringify(design,null,2)],{type:'application/json'}));a.href=url;a.download=`level-${design.level}-draft.json`;a.click();setTimeout(()=>URL.revokeObjectURL(url),1000);};
function makeSpiral(){const outer=+$('outer').value,inner=+$('inner').value,turns=+$('turns').value,width=+$('width').value,start=+$('startAngle').value*Math.PI/180;if(![outer,inner,turns,width,start].every(Number.isFinite)||inner<40||outer<=inner||outer>900||turns<.25||turns>2||width<48||width>150)throw Error('请设置外半径 > 内半径 ≥ 40，圈数 0.25～2，通道宽 48～150。');if((outer-inner)/turns<width+35&&turns>=1)throw Error('相邻圈间距不足，请增大外半径或减少圈数。');const count=Math.ceil(2*Math.PI*turns*outer/24),points=[];for(let i=0;i<=count;i++){const t=i/count,r=$('outward').checked?inner+(outer-inner)*t:outer-(outer-inner)*t,a=start+t*turns*2*Math.PI;points.push([cx+r*Math.cos(a),cy+r*Math.sin(a)]);}return points;}
$('ghost').onclick=()=>{try{ghost=makeSpiral();$('error').textContent='';}catch(e){fail(e);}};
$('clearGhost').onclick=()=>ghost=[];
$('addSpiral').onclick=()=>{if(mode!=='edit')return;try{if(!ghost.length)ghost=makeSpiral();const width=+$('width').value,added=[];for(let i=1;i<ghost.length;i++){const a=ghost[i-1],b=ghost[i],angle=Math.atan2(b[1]-a[1],b[0]-a[0]),off=width/2+9.5;for(const side of[-1,1]){const n=addBoard('box73',(a[0]+b[0])/2-side*Math.sin(angle)*off,(a[1]+b[1])/2+side*Math.cos(angle)*off,angle*180/Math.PI);n.attrs.friction='0';n.attrs.restitution='0';added.push(n);}}if(nodes().length+added.length>1800)throw Error('轨道过密，物体总数不能超过 1800。');checkpoint();design.nodes.push(...added);selected=new Set(added.map(n=>n.key));ghost=[];changed();}catch(e){fail(e);}};
for(const id of['outer','inner','turns','width','startAngle','outward'])$(id).oninput=()=>{if(ghost.length)try{ghost=makeSpiral();$('error').textContent='';}catch(e){fail(e);}};
$('fit').onclick=fit;$('level').onchange=load;
window.onkeydown=e=>{if(['INPUT','SELECT','TEXTAREA','BUTTON'].includes(e.target.tagName))return;const k=e.key.startsWith('Arrow')?e.key:e.key.toLowerCase();if(['ArrowLeft','ArrowRight','ArrowUp','ArrowDown',' ','Backspace'].includes(k))e.preventDefault();if((e.metaKey||e.ctrlKey)&&k==='z'){e.preventDefault();undo(e.shiftKey);return;}if(mode==='edit'){if(['Delete','Backspace'].includes(e.key))remove();const delta=e.shiftKey?10:1;if(k==='ArrowLeft')transform(-delta);if(k==='ArrowRight')transform(delta);if(k==='ArrowUp')transform(0,-delta);if(k==='ArrowDown')transform(0,delta);}else{if(k===' '&&!e.repeat){playing=!playing;acc=0;}if(k==='r'&&!e.repeat)test();}keys.add(k);};
window.onkeyup=e=>keys.delete(e.key.startsWith('Arrow')?e.key:e.key.toLowerCase());window.onblur=()=>{pause();finishDrag();};document.onvisibilitychange=()=>{if(document.hidden)pause();};
for(const[id,v]of[['left',-1],['right',1]]){$(id).onpointerdown=e=>{touch=v;e.target.setPointerCapture(e.pointerId);};$(id).onpointerup=$(id).onpointercancel=()=>touch=0;}
(async()=>{try{const loaded=await Promise.all([api('levels'),api('atlas'),api('materials')]);[catalog,atlas]=loaded;initMaterials(loaded[2]);for(const name of['原版','扩展']){const g=document.createElement('optgroup');g.label=name==='原版'?'原版 1～45':'扩展 46～60';for(const d of catalog.filter(d=>d.group===name)){const o=document.createElement('option');o.value=d.level;o.textContent=d.level+' · '+d.title;g.append(o);}$('level').append(g);}const requested=Number(new URLSearchParams(location.search).get('level')),saved=Number(localStorage.getItem('dwl-editor-level'));$('level').value=String(requested>=1&&requested<=60?requested:saved>=1&&saved<=60?saved:48);
  await load();
}catch(e){fail(e);}})();requestAnimationFrame(draw);
