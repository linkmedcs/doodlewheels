'use strict';
let materialLibrary={entries:[],sheets:{},texts:{}},chosenMaterial=null;
const materialImages={},copyableTags=new Set(['body','sprite','label','switch']);
const physicalFrame=f=>/^(box|circle)/.test(f);
function assemblyMembers(m){
  if(m.kind==='rope')return [...new Set([...m.joints.flatMap(j=>Object.values(j)),...(m.extras||[])])];
  if(m.kind==='lift')return [m.platform,m.anchor,m.switch];
  return m.bodies||[];
}
function assemblies(){return design?.mechanisms||[];}
function selectionAssemblies(){const ids=new Set(nodes().filter(n=>selected.has(n.key)).map(n=>n.attrs.id));return assemblies().filter(m=>assemblyMembers(m).some(id=>ids.has(id)));}
function paintMaterial(target,sheetName,frame,width,height){
  const entry=materialLibrary.sheets[sheetName],data=entry?.frames[frame],image=materialImages[sheetName];
  if(!data||!image?.naturalWidth)return;
  const[x,y,w,h]=data.frame.match(/-?\d+/g).map(Number),[sx,sy,sw,sh]=data.sourceColorRect.match(/-?\d+/g).map(Number),[fw,fh]=data.sourceSize.match(/-?\d+/g).map(Number);
  const scale=Math.min((width-8)/fw,(height-8)/fh,2.5);
  target.save();target.translate(width/2,height/2);target.scale(scale,scale);target.translate(sx+sw/2-fw/2,sy+sh/2-fh/2);
  if(data.rotated){target.rotate(-Math.PI/2);target.drawImage(image,x,y,h,w,-sh/2,-sw/2,sh,sw);}else target.drawImage(image,x,y,w,h,-sw/2,-sh/2,sw,sh);
  target.restore();
}
function materialCanvas(m,width=92,height=54){
  const c=document.createElement('canvas');c.width=width*2;c.height=height*2;c.style.width='100%';c.style.height=height+'px';c.setAttribute('aria-hidden','true');
  const g=c.getContext('2d');g.scale(2,2);
  paintMaterial(g,m.sheet,m.frame,width,height);
  return c;
}
function renderMaterials(){
  const q=$('materialSearch').value.trim().toLowerCase();
  const visible=materialLibrary.entries.filter(m=>[m.name,m.frame].join(' ').toLowerCase().includes(q));
  $('materialCount').textContent=`${visible.length} / ${materialLibrary.counts.total} 种基础素材`;
  $('palette').replaceChildren();
  for(const m of visible){const b=document.createElement('button');b.type='button';b.disabled=mode!=='edit';b.setAttribute('aria-pressed',String(chosenMaterial?.key===m.key));b.setAttribute('aria-label',m.name+(m.frame?' '+m.frame:''));b.append(materialCanvas(m));const name=document.createElement('span');name.textContent=m.name;b.append(name);const detail=document.createElement('small');detail.textContent=m.size?.join(' × ')+' 像素';b.append(detail);b.onclick=()=>selectMaterial(m);$('palette').append(b);}
  if(!visible.length){const p=document.createElement('p');p.textContent='没有匹配的素材，请更换关键词。';$('palette').append(p);}
}
function selectMaterial(m){
  chosenMaterial=m;$('materialPreview').hidden=false;$('materialName').textContent=m.name;$('materialMedia').replaceChildren();
  $('materialMedia').append(materialCanvas(m,210,95));
  const note=m.note||'原版建筑素材，可调整密度、摩擦、弹性与碰撞形状。';
  $('materialNote').textContent=[m.source,m.size?.join(' × '),note].filter(Boolean).join(' · ');
  $('materialPlace').hidden=false;
  $('materialPlace').textContent='加入地图';
  $('materialPlace').disabled=mode!=='edit';renderMaterials();
}
function remapReferences(value,mapping){if(typeof value==='string')return mapping[value]||value;if(Array.isArray(value))return value.map(v=>remapReferences(v,mapping));if(value&&typeof value==='object')return Object.fromEntries(Object.entries(value).map(([k,v])=>[k,remapReferences(v,mapping)]));return value;}
function placeMaterial(){
  if(mode!=='edit'||loading||!design||!chosenMaterial)return;
  const m=chosenMaterial;
  try{
    if(!['body','switch'].includes(m.mode))return;
    if(nodes().length>=1800)throw Error('物体总数不能超过 1800。');
    const n=addBoard(m.frame||'box73');n.tag=m.mode;
    if(m.mode==='body')Object.assign(n.attrs,copy(m.attrs));
    else {const a=n.attrs;n.attrs={id:a.id,x:a.x,y:a.y,rotation:'0',opacity:'1'};
      const chosen=nodes().find(o=>selected.has(o.key)&&o.tag==='body'&&o.attrs.id),candidates=nodes().filter(o=>o.tag==='body'&&o.attrs.id);
      candidates.sort((a,b)=>Math.hypot(num(a,'x')-cx,num(a,'y')-cy)-Math.hypot(num(b,'x')-cx,num(b,'y')-cy));
      n.attrs.script='editor_action_'+n.attrs.id;n.action={kind:'remove',target:(chosen||candidates[0])?.attrs.id||'',delay:0};}
    checkpoint();design.nodes.push(n);selected=new Set([n.key]);changed();showPlacement();$('error').textContent='';
  }catch(e){fail(e);}
}
function showPlacement(){if(window.innerWidth<=700)$('view').scrollIntoView({block:'start'});canvas.focus({preventScroll:true});}
function updateMaterialProperties(chosen){
  for(const id of['visualProps','collisionProps','labelProps','switchProps','colorProps'])$(id).hidden=true;
  $('propOpacity').disabled=chosen.length!==1;
  $('selectAssembly').hidden=!selectionAssemblies().length;
  if(chosen.length!==1)return;
  const n=chosen[0],a=n.attrs;$('propOpacity').value=a.opacity??1;
  if(['body','sprite'].includes(n.tag)&&a.id&&nodes().filter(o=>o.attrs.id===a.id).length===1){$('colorProps').hidden=false;const color=n.color||n.baseColor||'#ffffff';$('propColor').value=color;$('propColorHex').value=color;$('resetColor').disabled=!n.color;}
  if(['body','sprite'].includes(n.tag)){
    $('visualProps').hidden=false;const frames=Object.keys(atlas).filter(f=>physicalFrame(f)||f===a.frame);
    $('propFrame').replaceChildren();for(const frame of frames){const o=document.createElement('option');o.value=frame;const material=materialLibrary.entries.find(m=>m.sheet==='entity'&&m.frame===frame);o.textContent=(material?.baseName||material?.name||frame)+' · '+frame;$('propFrame').append(o);}$('propFrame').value=a.frame;
  }
  if(n.tag==='body'){$('collisionProps').hidden=false;$('propCircle').checked=a.isCircle==='true';$('propSensor').checked=a.isSensor==='true';}
  if(n.tag==='label'){$('labelProps').hidden=false;$('propText').value=a.text;$('propFontsize').value=a.fontsize||20;}
  if(n.tag==='switch'){
    $('switchProps').hidden=false;$('switchActionProps').hidden=!n.action;
    $('switchDescription').textContent=n.action?'触发后移除指定物体。':selectionAssemblies().some(m=>m.kind==='lift')?'此开关控制同组升降台。':'保留原关卡动作：'+(a.script||'未绑定');
    if(n.action){$('propTarget').replaceChildren();const prompt=document.createElement('option');prompt.value='';prompt.textContent='请选择目标物体';$('propTarget').append(prompt);const counts={};for(const o of nodes())if(o.attrs.id)counts[o.attrs.id]=(counts[o.attrs.id]||0)+1;for(const target of nodes().filter(o=>o.tag==='body'&&o.attrs.id&&counts[o.attrs.id]===1)){const opt=document.createElement('option');opt.value=target.attrs.id;opt.textContent=target.attrs.id+' · '+target.attrs.frame;$('propTarget').append(opt);}$('propTarget').value=n.action.target;$('propDelay').value=n.action.delay;}
  }
}
function duplicateMaterials(){
  if(mode!=='edit')return;const chosen=nodes().filter(n=>selected.has(n.key));if(!chosen.length||chosen.some(n=>!copyableTags.has(n.tag)))return;
  const counts={};for(const n of chosen)if(n.attrs.id)counts[n.attrs.id]=(counts[n.attrs.id]||0)+1;
  const mapping={};for(const n of chosen)if(n.attrs.id&&counts[n.attrs.id]===1)mapping[n.attrs.id]='editor_'+uid();
  const fullGroups=selectionAssemblies().filter(m=>assemblyMembers(m).every(id=>mapping[id]));
  if(chosen.some(n=>n.tag==='switch'&&!n.action&&!fullGroups.some(m=>m.kind==='lift'&&m.switch===n.attrs.id)))return fail('此开关依赖原机关脚本，请复制整组升降机关或新建开关。');
  checkpoint();const added=chosen.map(old=>{const n=remapReferences(copy(old),mapping);n.key='new_'+uid();n.attrs.id=mapping[old.attrs.id]||'editor_'+uid();n.attrs.x=String(num(old,'x')+30);n.attrs.y=String(num(old,'y')+30);if(n.tag==='switch')n.attrs.script='editor_action_'+n.attrs.id;return n;});
  design.nodes.push(...added);for(const group of fullGroups){const m=remapReferences(copy(group),mapping);m.id='editor_'+uid();design.mechanisms.push(m);}selected=new Set(added.map(n=>n.key));changed();
}
function initMaterials(data){
  materialLibrary=data;
  $('quick').querySelector('a[href="#tools"]').href='#materialLibrary';
  for(const[name,s]of Object.entries(data.sheets)){const image=new Image();materialImages[name]=image;image.onload=()=>{renderMaterials();if(chosenMaterial)selectMaterial(chosenMaterial);};image.src=s.url;}
  for(const[key,text]of Object.entries(data.texts)){const o=document.createElement('option');o.value=key;o.textContent=key+' · '+text.replaceAll('\\n',' ');$('propText').append(o);}
  $('materialSearch').oninput=renderMaterials;$('materialPlace').onclick=placeMaterial;
  $('selectAssembly').onclick=()=>{const group=selectionAssemblies()[0];if(group){const ids=new Set(assemblyMembers(group));selected=new Set(nodes().filter(n=>ids.has(n.attrs.id)).map(n=>n.key));update();}};
  for(const[id,attr]of[['propOpacity','opacity'],['propText','text'],['propFontsize','fontsize'],['propCircle','isCircle'],['propSensor','isSensor']])$(id).onchange=()=>{const n=nodes().find(n=>selected.has(n.key));if(mode!=='edit'||!n)return;checkpoint();n.attrs[attr]=$(id).type==='checkbox'?String($(id).checked):$(id).value;changed();};
  for(const[id,attr]of[['propTarget','target'],['propDelay','delay']])$(id).onchange=()=>{const n=nodes().find(n=>selected.has(n.key));if(mode!=='edit'||!n?.action)return;checkpoint();n.action[attr]=attr==='delay'?Number($(id).value):$(id).value;changed();};
  function setColor(value){
    const n=nodes().find(n=>selected.has(n.key));
    if(mode!=='edit'||selected.size!==1||!n||$('colorProps').hidden)return;
    if(value!==null&&!/^#[0-9a-f]{6}$/i.test(value)){fail('请输入 #RRGGBB 格式的颜色。');return;}
    checkpoint();if(value===null)delete n.color;else n.color=value.toLowerCase();
    $('error').textContent='';changed();
  }
  $('propColor').onchange=()=>setColor($('propColor').value);
  $('propColorHex').onchange=()=>setColor($('propColorHex').value.trim());
  $('resetColor').onclick=()=>setColor(null);
  renderMaterials();
}
