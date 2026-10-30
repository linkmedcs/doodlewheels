<?xml version="1.0"?>
<lv w="4000" h="1200">
	<script><![CDATA[function init()
	go17=find "go17"
	go16=find "go16"
	go18=find "go18"
	opacity(go17,0)
	joint=createjoint10(go16,go18)
end

function act()
	active10(go16,joint)
end]]></script>
	<body id="go13" x="-1527" y="421" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<label id="go14" x="-988" y="321" rotation="0" opacity="1" text="s28" fontsize="20" />
	<body id="go19" x="96" y="-79" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<star id="go20" x="241" y="-124" rotation="0" opacity="1" />
	<wheels id="go21" x="-1651" y="359" rotation="0" opacity="1" />
	<ball id="go22" x="-1325" y="361" rotation="0" opacity="1" />
	<body id="go33" x="-463" y="287" rotation="0" opacity="1" frame="box73" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<body id="go34" x="-465" y="159" rotation="0" opacity="1" frame="box73" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<body id="go35" x="-470" y="22" rotation="0" opacity="1" frame="box73" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<body id="go36" x="-459" y="399" rotation="0" opacity="1" frame="box73" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<body id="go15" x="-1125" y="421" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<body id="go18" x="-306" y="-79" rotation="0" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<body id="go15" x="-457" y="497" rotation="0" opacity="1" frame="box73" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<body id="go16" x="-708" y="524" rotation="0.1" opacity="1" frame="box406" density="0" friction="0.9" restitution="0.3" isSensor="false" isCircle="false" />
	<switch id="go17" script="act" x="-679" y="503" rotation="0" opacity="1" />
</lv>
