<?xml version="1.0" encoding="utf-8"?><lv w="7000" h="2600">
  <script><![CDATA[function init()
end]]></script>
  <!--Original expansion course 60: 七层危塔-->
  <!-- Seven rows from the top: 1, 3, 5, 7, 9, 11, 13 triangular cells.
       Row n has n upward cells and n-1 inverted cells sharing the same edges.
       Each upward cell contributes two leaning boards and one horizontal edge.
       There are 49 cells and 84 distinct boards: no duplicated shared edges.
       All boards, including the seven bottom-row bases, have density 0.7
       and remain dynamic, with no hinges, constraints or switches.
       Finite board widths are included when positioning the leaning contacts.
       Horizontal edge seams are 2 units; restitution is zero throughout. -->
  <!-- Row 1: 1 upward and 0 inverted cells (1 total). -->
  <body id="triangle_r01_c01_left" x="-1071.250000" y="-1634.997450" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r01_c01_right" x="-958.750000" y="-1634.997450" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r01_c01_base" x="-1015.000000" y="-1521.536108" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Row 2: 2 upward and 1 inverted cells (3 total). -->
  <body id="triangle_r02_c01_left" x="-1183.750000" y="-1408.074766" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r02_c01_right" x="-1071.250000" y="-1408.074766" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r02_c01_base" x="-1127.500000" y="-1294.613423" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r02_c02_left" x="-958.750000" y="-1408.074766" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r02_c02_right" x="-846.250000" y="-1408.074766" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r02_c02_base" x="-902.500000" y="-1294.613423" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Row 3: 3 upward and 2 inverted cells (5 total). -->
  <body id="triangle_r03_c01_left" x="-1296.250000" y="-1181.152081" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r03_c01_right" x="-1183.750000" y="-1181.152081" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r03_c01_base" x="-1240.000000" y="-1067.690739" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r03_c02_left" x="-1071.250000" y="-1181.152081" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r03_c02_right" x="-958.750000" y="-1181.152081" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r03_c02_base" x="-1015.000000" y="-1067.690739" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r03_c03_left" x="-846.250000" y="-1181.152081" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r03_c03_right" x="-733.750000" y="-1181.152081" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r03_c03_base" x="-790.000000" y="-1067.690739" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Row 4: 4 upward and 3 inverted cells (7 total). -->
  <body id="triangle_r04_c01_left" x="-1408.750000" y="-954.229396" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c01_right" x="-1296.250000" y="-954.229396" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c01_base" x="-1352.500000" y="-840.768054" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c02_left" x="-1183.750000" y="-954.229396" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c02_right" x="-1071.250000" y="-954.229396" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c02_base" x="-1127.500000" y="-840.768054" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c03_left" x="-958.750000" y="-954.229396" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c03_right" x="-846.250000" y="-954.229396" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c03_base" x="-902.500000" y="-840.768054" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c04_left" x="-733.750000" y="-954.229396" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c04_right" x="-621.250000" y="-954.229396" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r04_c04_base" x="-677.500000" y="-840.768054" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Row 5: 5 upward and 4 inverted cells (9 total). -->
  <body id="triangle_r05_c01_left" x="-1521.250000" y="-727.306712" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c01_right" x="-1408.750000" y="-727.306712" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c01_base" x="-1465.000000" y="-613.845369" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c02_left" x="-1296.250000" y="-727.306712" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c02_right" x="-1183.750000" y="-727.306712" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c02_base" x="-1240.000000" y="-613.845369" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c03_left" x="-1071.250000" y="-727.306712" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c03_right" x="-958.750000" y="-727.306712" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c03_base" x="-1015.000000" y="-613.845369" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c04_left" x="-846.250000" y="-727.306712" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c04_right" x="-733.750000" y="-727.306712" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c04_base" x="-790.000000" y="-613.845369" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c05_left" x="-621.250000" y="-727.306712" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c05_right" x="-508.750000" y="-727.306712" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r05_c05_base" x="-565.000000" y="-613.845369" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Row 6: 6 upward and 5 inverted cells (11 total). -->
  <body id="triangle_r06_c01_left" x="-1633.750000" y="-500.384027" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c01_right" x="-1521.250000" y="-500.384027" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c01_base" x="-1577.500000" y="-386.922685" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c02_left" x="-1408.750000" y="-500.384027" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c02_right" x="-1296.250000" y="-500.384027" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c02_base" x="-1352.500000" y="-386.922685" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c03_left" x="-1183.750000" y="-500.384027" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c03_right" x="-1071.250000" y="-500.384027" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c03_base" x="-1127.500000" y="-386.922685" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c04_left" x="-958.750000" y="-500.384027" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c04_right" x="-846.250000" y="-500.384027" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c04_base" x="-902.500000" y="-386.922685" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c05_left" x="-733.750000" y="-500.384027" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c05_right" x="-621.250000" y="-500.384027" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c05_base" x="-677.500000" y="-386.922685" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c06_left" x="-508.750000" y="-500.384027" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c06_right" x="-396.250000" y="-500.384027" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r06_c06_base" x="-452.500000" y="-386.922685" rotation="0.000000" opacity="1" frame="box227" density="0.7" friction="1.6" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Row 7: 7 upward and 6 inverted cells (13 total). -->
  <body id="triangle_r07_c01_left" x="-1746.250000" y="-273.461342" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c01_right" x="-1633.750000" y="-273.461342" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c01_base" x="-1690.000000" y="-160.000000" rotation="0.000000" opacity="1" frame="box227" density="0" friction="2.0" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c02_left" x="-1521.250000" y="-273.461342" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c02_right" x="-1408.750000" y="-273.461342" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c02_base" x="-1465.000000" y="-160.000000" rotation="0.000000" opacity="1" frame="box227" density="0" friction="2.0" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c03_left" x="-1296.250000" y="-273.461342" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c03_right" x="-1183.750000" y="-273.461342" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c03_base" x="-1240.000000" y="-160.000000" rotation="0.000000" opacity="1" frame="box227" density="0" friction="2.0" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c04_left" x="-1071.250000" y="-273.461342" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c04_right" x="-958.750000" y="-273.461342" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c04_base" x="-1015.000000" y="-160.000000" rotation="0.000000" opacity="1" frame="box227" density="0" friction="2.0" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c05_left" x="-846.250000" y="-273.461342" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c05_right" x="-733.750000" y="-273.461342" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c05_base" x="-790.000000" y="-160.000000" rotation="0.000000" opacity="1" frame="box227" density="0" friction="2.0" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c06_left" x="-621.250000" y="-273.461342" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c06_right" x="-508.750000" y="-273.461342" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c06_base" x="-565.000000" y="-160.000000" rotation="0.000000" opacity="1" frame="box227" density="0" friction="2.0" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c07_left" x="-396.250000" y="-273.461342" rotation="-64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c07_right" x="-283.750000" y="-273.461342" rotation="64.426108" opacity="1" frame="box227" density="0.7" friction="1.8" restitution="0" isSensor="false" isCircle="false"/>
  <body id="triangle_r07_c07_base" x="-340.000000" y="-160.000000" rotation="0.000000" opacity="1" frame="box227" density="0" friction="2.0" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Task objects stand inside the bottom cells; the former gates, switches
       and expedition roads have all been removed. -->
  <wheels id="vehicle" x="-1126.887" y="-889.769" rotation="0" opacity="1"/>
  <ball id="cargo" x="-789.448" y="-687.334" rotation="0" opacity="1"/>
  <star id="goal" x="-448.76" y="-455.457" rotation="0" opacity="1"/>
</lv>