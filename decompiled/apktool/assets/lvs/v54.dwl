<?xml version="1.0"?>
<lv w="7000" h="1800">
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
end]]></script>
  <!--Original expansion course 54: Two locks-->
  <body id="object_001" x="-1601.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_002" x="-1203.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_003" x="-895.566" y="-144.761" rotation="8.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_004" x="-588.131" y="-129.521" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_005" x="-190.131" y="-129.521" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_006" x="117.303" y="-144.761" rotation="-8.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_007" x="424.737" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_008" x="822.737" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <wheels id="vehicle" x="-1690.000" y="-217.000" rotation="0.000" opacity="1" />
  <ball id="cargo" x="-1470.000" y="-208.000" rotation="0.000" opacity="1" />
  <star id="goal" x="926.737" y="-192.000" rotation="0.000" opacity="1" />
  <body id="finish_backstop" x="996.737" y="-230.000" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="gate_1" x="-1083.600" y="-230.000" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <switch id="button_1" x="-1342.300" y="-182.000" rotation="0.000" opacity="1" script="open_gate_1" />
  <body id="gate_2" x="-70.731" y="-199.521" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <switch id="button_2" x="-687.631" y="-151.521" rotation="0.000" opacity="1" script="open_gate_2" />
</lv>
