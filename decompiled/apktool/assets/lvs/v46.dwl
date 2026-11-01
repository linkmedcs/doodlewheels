<?xml version="1.0" encoding="utf-8"?><lv w="4000" h="1200">
  <!--Original expansion course 46: 借重弹射-->
  <script><![CDATA[function init()
    gate = find "stone_gate"
    color(gate, 0.2, 0.8, 0.3)
    color(find("bridge"), 0.35, 0.55, 0.85)
    released = false
end

function release()
    if released then return end
    released = true
    -- Release the stone three seconds after activating the switch.
    remove(gate, 3.0)
end]]></script>
  <body id="start_outer" x="-724.500" y="70.000" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="start_inner" x="-408.000" y="70.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="start_backstop" x="-846.136" y="13.183" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Shift the support right along the resting plank to increase left-arm travel. -->
  <body id="fulcrum" x="50.000" y="-4.326" rotation="0.000" opacity="1" frame="circle20" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="true"/>
  <body id="closed_stop" x="-160.000" y="94.000" rotation="-25.000" opacity="1" frame="box73" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="bridge" x="0.000" y="0.000" rotation="-25.000" opacity="1" frame="box406" density="40" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="catch_block" x="165.000" y="135.000" rotation="35.000" opacity="1" frame="box73" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="stone_gate" x="160.000" y="-187.000" rotation="0.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="stone" x="160.000" y="-255.000" rotation="0.000" opacity="1" frame="circle114" density="50" friction="0.5" restitution="0" isSensor="false" isCircle="true"/>
  <body id="trap_floor" x="278.000" y="125.000" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="trap_right" x="351.000" y="91.000" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="finish_road" x="-450.000" y="-150.000" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <body id="finish_backstop" x="-568.000" y="-215.000" rotation="90.000" opacity="1" frame="box134" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <wheels id="vehicle" x="-650.000" y="27.500" rotation="0.000" opacity="1"/>
  <ball id="cargo" x="-415.000" y="34.500" rotation="0.000" opacity="1"/>
  <star id="goal" x="-450.000" y="-190.000" rotation="0.000" opacity="1"/>
  <switch id="release_switch" x="-777.000" y="58.500" rotation="0.000" opacity="1" script="release"/>
</lv>