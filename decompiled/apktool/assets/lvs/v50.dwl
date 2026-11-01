<?xml version="1.0" encoding="utf-8"?><lv w="5000" h="2400">
  <!--Original expansion course 50: 石雨升梯-->
  <!--Redesign draft: upper stone hopper, lower flat platform and one release button.-->
  <script><![CDATA[function init()
    armed = false
    color(find("hopper_gate"), 1, 0.2, 0.2)
end
function release_stones()
    if armed then return end
    armed = true
    remove(find("hopper_gate"), 0)
end]]></script>
  <body id="cargo_road" x="450" y="500" frame="box406" rotation="0" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false" opacity="1"/>
  <body id="hopper_gate" x="450" y="180" frame="box227" rotation="0" density="0" friction="0.02" restitution="0" isSensor="false" isCircle="false" opacity="1"/>
  <body id="hopper_left" x="336" y="65" frame="box227" rotation="90" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false" opacity="1"/>
  <body id="hopper_right" x="564" y="65" frame="box227" rotation="90" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_0_0" x="365" y="152" frame="circle20" rotation="0" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_0_1" x="397" y="152" frame="circle20" rotation="13" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_0_2" x="429" y="152" frame="circle20" rotation="26" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_0_3" x="461" y="152" frame="circle20" rotation="39" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_0_4" x="493" y="152" frame="circle20" rotation="52" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_0_5" x="525" y="152" frame="circle20" rotation="65" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_1_0" x="370" y="124" frame="circle20" rotation="17" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_1_1" x="402" y="124" frame="circle20" rotation="30" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_1_2" x="434" y="124" frame="circle20" rotation="43" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_1_3" x="466" y="124" frame="circle20" rotation="56" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_1_4" x="498" y="124" frame="circle20" rotation="69" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_1_5" x="530" y="124" frame="circle20" rotation="2" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_2_0" x="365" y="96" frame="circle20" rotation="34" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_2_1" x="397" y="96" frame="circle20" rotation="47" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_2_2" x="429" y="96" frame="circle20" rotation="60" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_2_3" x="461" y="96" frame="circle20" rotation="73" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_2_4" x="493" y="96" frame="circle20" rotation="6" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_2_5" x="525" y="96" frame="circle20" rotation="19" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_3_0" x="370" y="68" frame="circle20" rotation="51" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_3_1" x="402" y="68" frame="circle20" rotation="64" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_3_2" x="434" y="68" frame="circle20" rotation="77" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_3_3" x="466" y="68" frame="circle20" rotation="10" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_3_4" x="498" y="68" frame="circle20" rotation="23" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_3_5" x="530" y="68" frame="circle20" rotation="36" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_4_0" x="365" y="40" frame="circle20" rotation="68" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_4_1" x="397" y="40" frame="circle20" rotation="1" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_4_2" x="429" y="40" frame="circle20" rotation="14" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_4_3" x="461" y="40" frame="circle20" rotation="27" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_4_4" x="493" y="40" frame="circle20" rotation="40" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <body id="pebble_4_5" x="525" y="40" frame="circle20" rotation="53" density="5" friction="2.5" restitution="0.02" isSensor="false" isCircle="false" opacity="1"/>
  <wheels id="vehicle" x="300" y="458" rotation="0" opacity="1"/>
  <ball id="cargo" x="1077.925" y="407.647" rotation="0" opacity="1"/>
  <star id="goal" x="1173.266" y="404.77" rotation="0" opacity="1"/>
  <switch id="release_button" x="395" y="477" rotation="0" opacity="1" script="release_stones"/>

  <body id="editor_mvxyo6q6_5" x="847.432" y="499.987" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mvxyoja1_6" x="1231.303" y="443.593" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mvxyp6in_8" x="1039.466" y="471.391" rotation="90" opacity="1" frame="box73" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mvxyulw2_1" x="142.295" y="500.348" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/></lv>