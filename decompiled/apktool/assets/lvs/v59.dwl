<?xml version="1.0" encoding="utf-8"?><lv w="7000" h="1800">
  <script><![CDATA[function init()
  gate_1=find "gate_1"
  color(gate_1,0,0.7,0.3)
end
function open_gate_1()
  remove(gate_1,0.1)
end]]></script>
  <!--Original expansion course 59: 盘旋登高-->
  <body id="object_001" x="-1698.809" y="-128.264" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_002" x="-1302.785" y="-128.701" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_003" x="-1992.77" y="-1499.148" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_004" x="-1686.72" y="-1530.279" rotation="-9.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  
  
  
  
  
  <wheels id="vehicle" x="-1526.661" y="-185.264" rotation="0" opacity="1"/>
  <ball id="cargo" x="-1733.284" y="-181.415" rotation="0" opacity="1"/>
  <star id="goal" x="-1587.262" y="-1587.354" rotation="0.000" opacity="1"/>
  <body id="finish_backstop" x="-1496.509" y="-1625.092" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="gate_1" x="-1927.07" y="-1569.148" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <switch id="button_1" x="-2069.42" y="-1521.148" rotation="0.000" opacity="1" script="open_gate_1"/>
  
  
  <!-- Two copies of the current level-56 left curve, each with its run-up.
       Left copy attaches to the start road; right copy is mirrored.
       Existing level-59 objects and switch logic are preserved. -->
  <!-- left curve assembly -->
  <body id="level59_curve_left_runup" x="-2008.75" y="-127.645" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="level59_curve_left_arc_01" x="-2173.25" y="-149.645" rotation="21.33" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="level59_curve_left_arc_02" x="-2263.25" y="-220.645" rotation="54.213" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="level59_curve_left_arc_03" x="-2297.25" y="-332.646" rotation="90.407" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="level59_curve_left_arc_04" x="-2268.249" y="-447.645" rotation="-61.555" opacity="1" frame="box134" density="0" friction="0.2" restitution="0" isSensor="false" isCircle="false"/>
  <body id="level59_curve_left_arc_05" x="-2189.25" y="-538.645" rotation="-36.221" opacity="1" frame="box134" density="0" friction="0.3" restitution="0.1" isSensor="false" isCircle="false"/>
  <!-- right curve assembly -->
  
  
  
  
  
  

  <body id="editor_mw6mrzzc_133" x="-2008.75" y="-1233.455" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mrzzc_134" x="-2173.25" y="-1255.455" rotation="21.33" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mrzzc_135" x="-2263.25" y="-1326.455" rotation="54.213" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mrzzc_136" x="-2297.25" y="-1438.456" rotation="90.407" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mrzzc_137" x="-2268.249" y="-1553.455" rotation="-61.555" opacity="1" frame="box134" density="0" friction="0.2" restitution="0" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mrzzc_138" x="-2189.25" y="-1644.455" rotation="-36.221" opacity="1" frame="box134" density="0" friction="0.3" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtii0_183" x="-1766.361" y="-950.743" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtii0_184" x="-1601.861" y="-972.743" rotation="-21.33" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtii0_185" x="-1511.861" y="-1043.743" rotation="-54.213" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtii0_186" x="-1477.861" y="-1155.744" rotation="-90.407" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtii0_187" x="-1506.862" y="-1270.743" rotation="61.555" opacity="1" frame="box134" density="0" friction="0.2" restitution="0" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtii0_188" x="-1585.861" y="-1361.743" rotation="36.221" opacity="1" frame="box134" density="0" friction="0.3" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtthw_195" x="-2009.15" y="-682.093" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtthw_196" x="-2173.65" y="-704.093" rotation="21.33" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtthw_197" x="-2263.65" y="-775.093" rotation="54.213" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtthw_198" x="-2297.65" y="-887.094" rotation="90.407" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtthw_199" x="-2268.649" y="-1002.093" rotation="-61.555" opacity="1" frame="box134" density="0" friction="0.2" restitution="0" isSensor="false" isCircle="false"/>
  <body id="editor_mw6mtthw_200" x="-2189.65" y="-1093.093" rotation="-36.221" opacity="1" frame="box134" density="0" friction="0.3" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nmuvv_1" x="-1982.847" y="-951.354" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nn6zj_3" x="-1766.361" y="-397.046" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nn6zj_4" x="-1601.861" y="-419.046" rotation="-21.33" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nn6zj_5" x="-1511.861" y="-490.046" rotation="-54.213" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nn6zj_6" x="-1477.861" y="-602.047" rotation="-90.407" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nn6zj_7" x="-1506.862" y="-717.046" rotation="61.555" opacity="1" frame="box134" density="0" friction="0.2" restitution="0" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nn6zj_8" x="-1585.861" y="-808.046" rotation="36.221" opacity="1" frame="box134" density="0" friction="0.3" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nn6zj_9" x="-1982.847" y="-397.657" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6nnpvn_17" x="-1792.256" y="-1233.455" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6no1u7_19" x="-1792.256" y="-682.093" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/></lv>