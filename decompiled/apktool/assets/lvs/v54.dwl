<?xml version="1.0" encoding="utf-8"?><lv w="7000" h="1800">
  <script><![CDATA[function init()
  gate_1=find "gate_1"
  color(gate_1,0,0.7,0.3)
  gate_2=find "gate_2"
  color(gate_2,0,0.7,0.3)
end
function open_gate_1()
  remove(gate_1,0.1)
end
function open_gate_2()
  remove(gate_2,0.1)
  remove(find("editor_mw6k04g4_6"),0.1)
end
-- LEVEL_LAB_GENERATED_BEGIN
local editor_previous_init=init
function init()
  if editor_previous_init then editor_previous_init() end
  color(find("gate_1"),0.06666666666666667,0.35294117647058826,0.19215686274509805)
  color(find("editor_mw6k04g4_6"),0.0,0.6980392156862745,0.2980392156862745)
end
-- LEVEL_LAB_GENERATED_END]]></script>
  <!--Original expansion course 54: 双锁迷途-->
  <body id="object_001" x="-1701" y="-160" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_002" x="-1303" y="-160" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  
  <body id="object_004" x="-513.736" y="-103.9" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_005" x="-115.736" y="-103.9" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  
  
  
  <wheels id="vehicle" x="-1298.432" y="-208.02" rotation="0" opacity="1"/>
  <ball id="cargo" x="-1139.057" y="-204.363" rotation="0" opacity="1"/>
  <star id="goal" x="39.853" y="-164.308" rotation="0" opacity="1"/>
  <body id="finish_backstop" x="95.364" y="-162.75" rotation="90" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="gate_1" x="-274.59" y="-176.447" rotation="90" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <switch id="button_1" x="-1599.738" y="-180.639" rotation="0" opacity="1" script="open_gate_1"/>
  <body id="gate_2" x="-1521.567" y="-233.132" rotation="90" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <switch id="button_2" x="-613.236" y="-125.9" rotation="0" opacity="1" script="open_gate_2"/>

  <body id="editor_mw6k04g4_6" x="-907.178" y="-131.709" rotation="8" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/><!--level-lab-editor:{"mechanisms":[],"actions":{},"colors":{"gate_1":"#115a31","editor_mw6k04g4_6":"#00b24c"}}--></lv>
