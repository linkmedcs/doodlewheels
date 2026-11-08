<?xml version="1.0" encoding="utf-8"?><lv w="7000" h="1800">
  <!--Original expansion course 51: 落块抢行-->
  <script><![CDATA[function init()
    released = false
    color(find("editor_mw4m1gex_6"), 0.85, 0.32, 0.18)
    color(find("editor_mw6h11na_1"), 0.25, 0.72, 0.38)
    color(find("temporary_catch"), 0.85, 0.65, 0.2)
end

function release_block()
    if released then return end
    released = true
    -- Remove the upper shelf immediately, letting the solid block fall.
    remove(find("editor_mw6h11na_1"), 0)
    -- The lower shelf briefly catches it at road height, then gives way.
    -- Both timers start at the switch: gravity determines the arrival time.
    remove(find("temporary_catch"), 3.3)
end
-- LEVEL_LAB_GENERATED_BEGIN
local editor_previous_init=init
function init()
  if editor_previous_init then editor_previous_init() end
  color(find("editor_mw4m1gex_6"),1.0,1.0,1.0)
end
-- LEVEL_LAB_GENERATED_END]]></script>
  <body id="object_001" x="-1601.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_002" x="-1203.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <!-- Narrow the user's missing track to a 150-unit opening. The 119-unit
       block collision shape leaves small wheel/ball-sized seams on both sides. -->
  <body id="gap_left_approach" x="-936.595" y="-160" rotation="0" opacity="1" frame="box134" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  
  <body id="object_004" x="-433.795" y="-160" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_005" x="-126.778" y="-184.252" rotation="-7" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  
  <body id="object_007" x="264.818" y="-261.259" rotation="-15" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <wheels id="vehicle" x="-1690.000" y="-217.000" rotation="0.000" opacity="1"/>
  <ball id="cargo" x="-1470.000" y="-208.000" rotation="0.000" opacity="1"/>
  <star id="goal" x="399.882" y="-360.31" rotation="0" opacity="1"/>
  <body id="finish_backstop" x="450.998" y="-370.022" rotation="90" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  
  
  

  
  
  
  
  <!-- The block remains a real dynamic body after both shelves disappear. -->
  <body id="editor_mw4m1gex_6" x="-709.955" y="-674.997" rotation="0" opacity="1" frame="box123" density="12" friction="0.8" restitution="0" isSensor="false" isCircle="false"/>
  
  
  <body id="editor_mw6h11na_1" x="-710.09" y="-590.451" rotation="0" opacity="1" frame="box134" density="0" friction="0.9" restitution="0" isSensor="false" isCircle="false"/>
  <!-- Catch height puts the top of the block just below the track surface. -->
  <body id="temporary_catch" x="-709.955" y="-38.5" rotation="0" opacity="1" frame="box134" density="0" friction="0.8" restitution="0" isSensor="false" isCircle="false"/>
  <switch id="release_block_switch" x="-1110" y="-183" rotation="0" opacity="1" script="release_block"/>
<!--level-lab-editor:{"mechanisms":[],"actions":{},"colors":{"editor_mw4m1gex_6":"#ffffff"}}--></lv>