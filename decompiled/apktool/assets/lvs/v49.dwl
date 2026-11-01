<?xml version="1.0" encoding="utf-8"?><lv w="5000" h="2200">
  <!--Original expansion course 49: 双跳接力-->
  <script><![CDATA[function init()
    color(find("spring"), 1, 0.1, 0.2)
end]]></script>
  <!--Push cargo down the slope; cargo and vehicle bounce off the same elastic board, then finish the delivery on the right bank.-->
  <body id="start" x="-563.714" y="-8.955" frame="box406" rotation="0" density="0" friction="0.7" restitution="0.05" isCircle="false" isSensor="false" opacity="1"/>
  <body id="slope" x="-165.66" y="18.88" frame="box406" rotation="8" density="0" friction="0.7" restitution="0.05" isCircle="false" isSensor="false" opacity="1"/>
  <body id="spring" x="305.325" y="321.384" frame="box406" rotation="0" density="0" friction="0" restitution="1.2" isCircle="false" isSensor="false" opacity="1"/>
  <body id="landing_0" x="753.177" y="140.953" frame="box406" rotation="-15" density="0" friction="1" restitution="0" isCircle="false" isSensor="false" opacity="1"/>
  <body id="landing_1" x="1144.92" y="89.508" frame="box406" rotation="0" density="0" friction="1" restitution="0" isCircle="false" isSensor="false" opacity="1"/>
  
  
  
  
  
  <body id="backstop" x="1336.554" y="29.686" frame="box134" rotation="90" density="0" friction="0.7" restitution="0" isCircle="false" isSensor="false" opacity="1"/>
  <wheels id="vehicle" x="-673.714" y="-65.955" rotation="0" opacity="1"/>
  <ball id="cargo" x="-513.714" y="-40.955" rotation="0" opacity="1"/>
  <star id="goal" x="1276.55" y="38.843" rotation="0" opacity="1"/>
</lv>