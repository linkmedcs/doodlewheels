<?xml version="1.0" encoding="utf-8"?><lv w="7000" h="1800">
  <script><![CDATA[function init()
    gap_open = false
    color(find("editor_mw6jhcgw_5"), 0.85, 0.25, 0.18)
end

function open_middle_gap()
    if gap_open then return end
    gap_open = true
    remove(find("editor_mw6jhcgw_5"), 0)
end]]></script>
  <!--Original expansion course 56: 回旋登台-->
  <body id="object_001" x="-1601.000" y="-160.000" rotation="0.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_002" x="-1206.023" y="-194.556" rotation="-10.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  
  <body id="object_004" x="-595.070" y="-194.556" rotation="10.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_005" x="-289.593" y="-160.000" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="object_006" x="17.424" y="-184.252" rotation="-7.000" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  
  
  
  <wheels id="vehicle" x="-1690.000" y="-217.000" rotation="0.000" opacity="1"/>
  <ball id="cargo" x="-1470.000" y="-208.000" rotation="0.000" opacity="1"/>
  <star id="goal" x="-302.17" y="-282.713" rotation="0.000" opacity="1"/>
  
  <body id="object_014" x="-1899.711" y="-159.999" rotation="0.000" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  
  

  <body id="editor_mw6hs8w2_1" x="-2287.211" y="-181.999" rotation="21.33" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6hshac_2" x="-2377.211" y="-252.999" rotation="54.213" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6hssjx_3" x="-2411.211" y="-365" rotation="90.407" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6ht39k_4" x="-2382.21" y="-479.999" rotation="-61.555" opacity="1" frame="box134" density="0" friction="0.2" restitution="0" isSensor="false" isCircle="false"/>
  <body id="editor_mw6htfe5_5" x="-2303.211" y="-570.999" rotation="-36.221" opacity="1" frame="box134" density="0" friction="0.3" restitution="0.1" isSensor="false" isCircle="false"/>
  <body id="editor_mw6hu4gg_8" x="-2091.602" y="-337.632" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6huhva_9" x="-1874.932" y="-337.174" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <body id="editor_mw6jhcgw_5" x="-903.469" y="-307.744" rotation="90" opacity="1" frame="box134" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
  <!-- Switch stays on the original floating platform, reached by landing after the jump. -->
  <switch id="summit_gap_switch" x="-2009.556" y="-360.632" rotation="0" opacity="1" script="open_middle_gap"/>

  <!-- Level-4 style: longer straight run-up, then the original five-board curve.
       Curve angles and friction/restitution values are copied from level 4.
       Its last segment launches right and upward toward the untouched platforms. -->
  <body id="left_runup_extension" x="-2122.71100" y="-159.999" rotation="0" opacity="1" frame="box227" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false"/>
</lv>