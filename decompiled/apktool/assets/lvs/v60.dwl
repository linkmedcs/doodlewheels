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
  <!--Original expansion course 60: Last expedition-->
  <body id="object_001" x="-1601.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_002" x="-1203.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_003" x="-809.349" y="-118.626" rotation="12.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_004" x="-505.197" y="-77.251" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_005" x="-196.697" y="-77.251" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_006" x="135.803" y="-61.251" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_007" x="441.279" y="-95.807" rotation="-10.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_008" x="746.756" y="-130.363" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_009" x="1055.256" y="-130.363" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_010" x="1453.256" y="-130.363" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_011" x="1851.256" y="-130.363" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <wheels id="vehicle" x="-1690.000" y="-217.000" rotation="0.000" opacity="1" />
  <ball id="cargo" x="-1470.000" y="-208.000" rotation="0.000" opacity="1" />
  <star id="goal" x="1955.256" y="-162.363" rotation="0.000" opacity="1" />
  <body id="finish_backstop" x="2025.256" y="-200.363" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="gate_1" x="-1083.600" y="-230.000" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <switch id="button_1" x="-1362.200" y="-182.000" rotation="0.000" opacity="1" script="open_gate_1" />
  <body id="object_018" x="-505.197" y="-207.251" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <body id="object_019" x="-196.697" y="-124.751" rotation="90.000" opacity="1" frame="box73" density="0.12" friction="0.9" restitution="0.05" isSensor="false" isCircle="false" />
  <body id="gate_2" x="1174.656" y="-200.363" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false" />
  <switch id="button_2" x="681.056" y="-152.363" rotation="0.000" opacity="1" script="open_gate_2" />
  <body id="object_022" x="1333.856" y="-138.363" rotation="0.000" opacity="1" frame="circle20" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="true" />
  <body id="object_023" x="1473.156" y="-138.363" rotation="0.000" opacity="1" frame="circle20" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="true" />
</lv>
