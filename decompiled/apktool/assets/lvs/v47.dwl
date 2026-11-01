<?xml version="1.0" encoding="utf-8"?><lv w="4000" h="1200">
  <!--Original expansion course 47: 链摆渡球-->

  <script><![CDATA[function init()
    -- Same rope-link API as level 26; two hanging chains share one deck.
    create26("left_anchor", "left_c1", "left_link1")
    create26("left_link1", "left_c2", "left_link2")
    create26("left_link2", "left_c3", "left_link3")
    create26("left_link3", "left_c4", "ferry")
    create26("ferry", "right_c4", "right_link3")
    create26("right_link3", "right_c3", "right_link2")
    create26("right_link2", "right_c2", "right_link1")
    create26("right_link1", "right_c1", "right_anchor")
    color(find("ferry"), 0.3, 0.6, 0.8)
end]]></script>
  <body id="start_outer" x="-695.000" y="45.000" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.7" restitution="0" isSensor="false" isCircle="false"/>
  <body id="start_inner" x="-381.000" y="45.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.7" restitution="0" isSensor="false" isCircle="false"/>
  <body id="start_backstop" x="-816.679" y="-12.27" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.7" restitution="0" isSensor="false" isCircle="false"/>
  <body id="suspension_beam" x="59.018" y="-407.411" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.7" restitution="0" isSensor="false" isCircle="false"/>

  <body id="left_anchor" x="17.418" y="-362.411" rotation="112.000" opacity="1" frame="box87" density="0" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="left_c1" x="-5.358" y="-306.039" rotation="0.000" opacity="1" frame="circle20" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="left_link1" x="-28.134" y="-249.666" rotation="112.000" opacity="1" frame="box87" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="left_c2" x="-50.910" y="-193.293" rotation="0.000" opacity="1" frame="circle20" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="left_link2" x="-73.686" y="-136.920" rotation="112.000" opacity="1" frame="box87" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="left_c3" x="-96.462" y="-80.547" rotation="0.000" opacity="1" frame="circle20" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="left_link3" x="-119.238" y="-24.175" rotation="112.000" opacity="1" frame="box87" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="left_c4" x="-142.015" y="32.198" rotation="0.000" opacity="1" frame="circle20" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="right_anchor" x="100.618" y="-362.411" rotation="-68.000" opacity="1" frame="box87" density="0" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="right_c1" x="77.842" y="-306.039" rotation="0.000" opacity="1" frame="circle20" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="right_link1" x="55.066" y="-249.666" rotation="-68.000" opacity="1" frame="box87" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="right_c2" x="32.290" y="-193.293" rotation="0.000" opacity="1" frame="circle20" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="right_link2" x="9.514" y="-136.920" rotation="-68.000" opacity="1" frame="box87" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="right_c3" x="-13.262" y="-80.547" rotation="0.000" opacity="1" frame="circle20" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="right_link3" x="-36.038" y="-24.175" rotation="-68.000" opacity="1" frame="box87" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="right_c4" x="-58.815" y="32.198" rotation="0.000" opacity="1" frame="circle20" density="0.2" friction="0.7" restitution="0" isSensor="true" isCircle="false"/>
  <body id="ferry" x="-107.607" y="50.000" rotation="0.000" opacity="1" frame="box227" density="1" friction="1" restitution="0" isSensor="false" isCircle="false"/>
  <body id="finish_road" x="451.000" y="90.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.7" restitution="0" isSensor="false" isCircle="false"/>
  <body id="finish_backstop" x="643.368" y="31.272" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.7" restitution="0" isSensor="false" isCircle="false"/>
  <wheels id="vehicle" x="-410.000" y="2.500" rotation="0.000" opacity="1"/>
  <ball id="cargo" x="-260.000" y="9.500" rotation="0.000" opacity="1"/>
  <star id="goal" x="395.000" y="50.000" rotation="0.000" opacity="1"/>
</lv>