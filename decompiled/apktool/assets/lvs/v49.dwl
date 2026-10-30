<?xml version="1.0"?>
<lv w="7000" h="1800">
  <script><![CDATA[function init()
  gate_1=find "gate_1"
  color(gate_1,0,0.7,0.3)
end
function open_gate_1()
  remove(gate_1,0.1)
end]]></script>
  <!--Original expansion course 49: Gate on the ridge-->
  <body id="object_001" x="-1601.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_002" x="-1292.500" y="-160.000" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_003" x="-986.450" y="-191.130" rotation="-9.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_004" x="-680.400" y="-222.261" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_005" x="-374.350" y="-191.130" rotation="9.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_006" x="21.200" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_007" x="329.700" y="-160.000" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_008" x="638.200" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <wheels id="vehicle" x="-1690.000" y="-217.000" rotation="0.000" opacity="1" />
  <ball id="cargo" x="-1470.000" y="-208.000" rotation="0.000" opacity="1" />
  <star id="goal" x="742.200" y="-192.000" rotation="0.000" opacity="1" />
  <body id="finish_backstop" x="812.200" y="-230.000" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="gate_1" x="-614.700" y="-292.261" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <switch id="button_1" x="-1358.200" y="-182.000" rotation="0.000" opacity="1" script="open_gate_1" />
</lv>
