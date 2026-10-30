<?xml version="1.0"?>
<lv w="7000" h="1800">
  <script><![CDATA[function init()
  gate_1=find "gate_1"
  color(gate_1,0,0.7,0.3)
end
function open_gate_1()
  remove(gate_1,0.1)
end]]></script>
  <!--Original expansion course 59: Mountain checkpoint-->
  <body id="object_001" x="-1601.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_002" x="-1205.450" y="-128.870" rotation="9.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_003" x="-899.400" y="-97.739" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_004" x="-593.350" y="-128.870" rotation="-9.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_005" x="-198.890" y="-139.199" rotation="6.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_006" x="108.520" y="-118.398" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_007" x="415.929" y="-139.199" rotation="-6.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_008" x="812.839" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_009" x="1210.839" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <wheels id="vehicle" x="-1690.000" y="-217.000" rotation="0.000" opacity="1" />
  <ball id="cargo" x="-1470.000" y="-208.000" rotation="0.000" opacity="1" />
  <star id="goal" x="1314.839" y="-192.000" rotation="0.000" opacity="1" />
  <body id="finish_backstop" x="1384.839" y="-230.000" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="gate_1" x="-833.700" y="-167.739" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <switch id="button_1" x="-976.050" y="-119.739" rotation="0.000" opacity="1" script="open_gate_1" />
  <body id="object_016" x="141.370" y="-138.398" rotation="0.000" opacity="1" frame="circle20" density="0.15" friction="0.3" restitution="0.1" isSensor="false" isCircle="true" />
  <body id="object_017" x="812.839" y="-290.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
</lv>
