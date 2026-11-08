<?xml version="1.0" encoding="utf-8"?><lv w="7000" h="1800">
  <script><![CDATA[function init()
end]]></script>
  <!--Original expansion course 53: 危桥穿行-->
  <body id="object_001" x="-1601" y="-395.5" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_002" x="-208.544" y="-134.336" rotation="-8" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_003" x="8.325" y="-134.336" rotation="8" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_004" x="223.867" y="-141.863" rotation="-12" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_005" x="-1291.019" y="-142.836" rotation="12.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_006" x="-1075.012" y="-131.516" rotation="-6.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_007" x="-857.211" y="-131.516" rotation="6.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_008" x="-640.475" y="-139.084" rotation="-10.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_009" x="-424.802" y="-139.084" rotation="10.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_010" x="526.112" y="-395.5" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <wheels id="vehicle" x="-1690" y="-452.5" rotation="0" opacity="1"/>
  <ball id="cargo" x="-1470" y="-443.5" rotation="0" opacity="1"/>
  <star id="goal" x="630.112" y="-427.5" rotation="0" opacity="1"/>
  <body id="finish_backstop" x="700.112" y="-465.5" rotation="90" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <!-- Rebuilt on the current terrain: four loose two-storey triangular frames.
       Two short lower triangles carry each middle plank; an upper triangle
       carries the road plank. All added pieces remain dynamic, without joints.
       Short cap shims compensate for the different ground heights. Inclined
       feet are fitted to the existing slope surfaces, with zero restitution.
       Higher leg friction and light caps favour empty-frame stability.
       The top planks match the high banks at y=-395.5 (collision top -404). -->
  <!-- Frame 01: two independent feet pairs and balanced cap loads. -->
  <body id="triangle_refit_01_lower_1_left" x="-1327.00604" y="-197.56823" rotation="-36.524380" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_01_lower_1_right" x="-1265.55208" y="-187.44021" rotation="69.845373" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_01_lower_2_left" x="-1116.43613" y="-172.92305" rotation="-53.055588" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_01_lower_2_right" x="-1045.96400" y="-178.99535" rotation="37.711044" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_01_lower_2_cap_1" x="-1084.30000" y="-220.50000" rotation="0.000000" opacity="1" frame="box87" density="0.22" friction="1.4" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_01_middle" x="-1184.30000" y="-238.00000" rotation="0.000000" opacity="1" frame="box406" density="0.25" friction="1.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_01_upper_left" x="-1281.49317" y="-316.75000" rotation="-34.288126" opacity="1" frame="box227" density="1.0" friction="1.15" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_01_upper_right" x="-1087.10683" y="-316.75000" rotation="34.288126" opacity="1" frame="box227" density="1.0" friction="1.15" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_01_deck" x="-1184.30000" y="-395.50000" rotation="0.000000" opacity="1" frame="box406" density="0.16" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Frame 02: two independent feet pairs and balanced cap loads. -->
  <body id="triangle_refit_02_lower_1_left" x="-891.84111" y="-179.30802" rotation="-37.059828" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_02_lower_1_right" x="-820.80137" y="-173.15998" rotation="52.301580" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_02_lower_1_cap_1" x="-853.30000" y="-220.50000" rotation="0.000000" opacity="1" frame="box87" density="0.22" friction="1.4" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_02_lower_2_left" x="-659.90266" y="-187.05003" rotation="-76.255078" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_02_lower_2_right" x="-605.37331" y="-194.01216" rotation="44.452935" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_02_middle" x="-753.30000" y="-238.00000" rotation="0.000000" opacity="1" frame="box406" density="0.25" friction="1.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_02_upper_left" x="-850.49317" y="-316.75000" rotation="-34.288126" opacity="1" frame="box227" density="1.0" friction="1.15" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_02_upper_right" x="-656.10683" y="-316.75000" rotation="34.288126" opacity="1" frame="box227" density="1.0" friction="1.15" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_02_deck" x="-753.30000" y="-395.50000" rotation="0.000000" opacity="1" frame="box406" density="0.16" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Frame 03: two independent feet pairs and balanced cap loads. -->
  <body id="triangle_refit_03_lower_1_left" x="-462.47614" y="-194.27361" rotation="-43.815963" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_03_lower_1_right" x="-406.80440" y="-187.08809" rotation="74.906965" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_03_lower_2_left" x="-279.76619" y="-171.46293" rotation="-58.296600" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_03_lower_2_right" x="-211.85245" y="-179.16394" rotation="37.358842" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_03_lower_2_cap_1" x="-250.30000" y="-220.50000" rotation="0.000000" opacity="1" frame="box87" density="0.22" friction="1.4" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_03_middle" x="-322.30000" y="-238.00000" rotation="0.000000" opacity="1" frame="box406" density="0.25" friction="1.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_03_upper_left" x="-419.49317" y="-316.75000" rotation="-34.288126" opacity="1" frame="box227" density="1.0" friction="1.15" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_03_upper_right" x="-225.10683" y="-316.75000" rotation="34.288126" opacity="1" frame="box227" density="1.0" friction="1.15" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_03_deck" x="-322.30000" y="-395.50000" rotation="0.000000" opacity="1" frame="box406" density="0.16" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Frame 04: two independent feet pairs and balanced cap loads. -->
  <body id="triangle_refit_04_lower_1_left" x="-2.40626" y="-180.23564" rotation="-35.176289" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_04_lower_1_right" x="67.57226" y="-172.17314" rotation="55.599793" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_04_lower_1_cap_1" x="36.70000" y="-220.50000" rotation="0.000000" opacity="1" frame="box87" density="0.22" friction="1.4" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_04_lower_2_left" x="194.29963" y="-187.04471" rotation="-76.558308" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_04_lower_2_right" x="250.20014" y="-195.83088" rotation="40.218730" opacity="1" frame="box87" density="1.2" friction="2.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_04_middle" x="108.70000" y="-238.00000" rotation="0.000000" opacity="1" frame="box406" density="0.25" friction="1.3" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_04_upper_left" x="11.50683" y="-316.75000" rotation="-34.288126" opacity="1" frame="box227" density="1.0" friction="1.15" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_04_upper_right" x="205.89317" y="-316.75000" rotation="34.288126" opacity="1" frame="box227" density="1.0" friction="1.15" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_refit_04_deck" x="108.70000" y="-395.50000" rotation="0.000000" opacity="1" frame="box406" density="0.16" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
</lv>