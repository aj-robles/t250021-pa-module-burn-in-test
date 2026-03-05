<?xml version="1.0" encoding="utf-8"?>
<styleLibrary>
  <annotation>
    <lastModified>2024-07-25T11:15:28</lastModified>
  </annotation>
  <styleSets defaultStyleSet="Default">
    <styleSet name="Default">
      <componentStyles>
        <componentStyle name="UltraButton" useOsThemes="True" />
        <componentStyle name="UltraCombo" buttonStyle="Borderless" useFlatMode="True" />
        <componentStyle name="UltraDockManager" useOsThemes="False">
          <properties>
            <property name="GroupPaneTabStyle" colorCategory="{Default}">PropertyPageFlat</property>
            <property name="UnpinnedTabStyle" colorCategory="{Default}">Excel</property>
            <property name="WindowStyle" colorCategory="{Default}">Windows</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraExplorerBar" useOsThemes="False" useFlatMode="True" />
        <componentStyle name="UltraPanel" useOsThemes="False" useFlatMode="True" />
        <componentStyle name="UltraSplitter" useFlatMode="True">
          <properties>
            <property name="UseHotTracking" colorCategory="{Default}">True</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabbedMdiManager" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="HotTrack" colorCategory="{Default}">True</property>
            <property name="TabStyle" colorCategory="{Default}">Flat</property>
            <property name="ViewStyle" colorCategory="{Default}">VisualStudio2005</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabControl" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="Style" colorCategory="{Default}">VisualStudio</property>
            <property name="ViewStyle" colorCategory="{Default}">Standard</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabStripControl" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="Style" colorCategory="{Default}">Office2007Ribbon</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTilePanel" useFlatMode="True">
          <properties>
            <property name="ShowShadows" colorCategory="{Default}">False</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraToolbarsManager" resolutionOrder="ControlThenApplication" useOsThemes="True" useFlatMode="True">
          <properties>
            <property name="GrabHandleStyle" colorCategory="{Default}">Office2003</property>
            <property name="Style" colorCategory="{Default}">Office2013</property>
            <property name="ToolSeparatorColor" colorCategory="{Default}">174, 174, 174</property>
          </properties>
        </componentStyle>
      </componentStyles>
      <styles>
        <style role="Base">
          <states>
            <state name="Normal" backColor="251, 251, 251" foreColor="22, 22, 23" backGradientStyle="None" themedElementAlpha="Transparent" backHatchStyle="None" />
            <state name="Selected" backColor="204, 235, 224" foreColor="Black" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="Button" buttonStyle="Flat" />
        <style role="ControlArea">
          <states>
            <state name="Normal" backColor="WhiteSmoke" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockAreaSplitterBar">
          <states>
            <state name="Normal" borderColor="Transparent" borderColor2="Transparent" />
          </states>
        </style>
        <style role="DockAreaSplitterBarHorizontal">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" />
          </states>
        </style>
        <style role="DockAreaSplitterBarVertical">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="14, 0, 0, 0" />
          </states>
        </style>
        <style role="DockManagerPane">
          <states>
            <state name="Normal" backColor="251, 251, 251" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="DockManagerPaneContentArea">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockPaneCaption">
          <states>
            <state name="Normal" backColor="251, 251, 251" borderColor="Transparent" fontName="Segoe UI" imageBackgroundStyle="Stretched" fontSize="14" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" imageBackgroundStretchMargins="0, 3, 0, 0" borderColor2="Transparent" />
            <state name="Active" backColor="251, 251, 251" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="DockPaneCaptionButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" borderColor="3, 181, 133" borderColor2="3, 181, 133" />
          </states>
        </style>
        <style role="DockPaneCaptionHorizontal">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockPanePinButton">
          <states>
            <state name="Normal">
              <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAswAAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAVUlEQVQ4T+2MQQoAIAgEe4X9/6VbSUXZBkmHLi0M6LAaAFxBpQcqPVApErHDdqelyxx2XPzStULlf0CPG7Y7LV0OKUd11CxdK1QOefPAA5UeqDwHIQEIS2DFSOaaVAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
            </state>
          </states>
        </style>
        <style role="DropDownButton" buttonStyle="Flat">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" backColor="204, 235, 224" borderColor="171, 171, 171" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="EditorControl">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ExplorerBarControlArea">
          <states>
            <state name="Normal" backColor="251, 251, 251" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="ExplorerBarGroupHeader">
          <states>
            <state name="Normal" backColor="251, 251, 251" fontBold="False" fontSize="10" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaInner">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaOuter">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridColumnHeader">
          <states>
            <state name="Normal" foreColor="129, 131, 134" />
          </states>
        </style>
        <style role="GridRow">
          <states>
            <state name="Normal" borderColor="224, 225, 225" />
          </states>
        </style>
        <style role="GroupPaneSplitterBarHorizontal">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 14, 0, 0" />
          </states>
        </style>
        <style role="GroupPaneSplitterBarVertical">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="14, 0, 0, 0" />
          </states>
        </style>
        <style role="Header">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" borderColor3DBase="Transparent" imageBackgroundStretchMargins="0, 2, 0, 2" borderColor2="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAzwAAAAKJUE5HDQoaCgAAAA1JSERSAAAAxgAAAB4IBgAAAHf2YR8AAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAAcUlEQVR4Xu3cMRHAMBDAsPCn12vI/JDOuRqCBkHw6vW8+wC3NTMHuAkDgjAgCAOCMCAIA4IwIAgDgjAgCAOCMCAIA4IwIAgDgjAgCAOCMCAIA4IwIAgDgjAgCAOCMCAIA4IwIAgDgjAgCAOCqTP87PMBT4WwIwZl6FQAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="ListViewControlArea">
          <states>
            <state name="Normal" borderColor="Transparent" borderColor3DBase="Transparent" borderColor2="Transparent" />
          </states>
        </style>
        <style role="MainMenubarHorizontal">
          <states>
            <state name="Normal" backColor="37, 37, 38" fontSize="10" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="MdiSplitterBarHorizontal">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 14, 0, 0" />
          </states>
        </style>
        <style role="MdiSplitterBarVertical">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="14, 0, 0, 0" />
          </states>
        </style>
        <style role="MenuItem">
          <states>
            <state name="HotTracked" backColor="204, 235, 224" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="NotificationBadge">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="ScrollBarArrow">
          <states>
            <state name="Normal" backColor="240, 240, 240" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" backColor="218, 218, 218" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarThumb">
          <states>
            <state name="Normal" backColor="205, 205, 205" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" backColor="166, 166, 166" backGradientStyle="None" backHatchStyle="None" />
            <state name="Pressed" backColor="96, 96, 96" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarTrackSection">
          <states>
            <state name="Normal" backColor="240, 240, 240" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="SplitterBar">
          <states>
            <state name="Normal" backColor="230, 230, 230" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="TabButton">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="TabClientAreaHorizontal">
          <states>
            <state name="Normal" borderColor="Transparent" borderColor3DBase="Transparent" borderColor2="Transparent" />
          </states>
        </style>
        <style role="TabCloseButton">
          <states>
            <state name="HotTracked" borderColor="3, 181, 133" borderColor3DBase="3, 181, 133" borderColor2="3, 181, 133" />
          </states>
        </style>
        <style role="TabItem">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" fontBold="False" backGradientStyle="None" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="TabItemAreaHorizontalBottom">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" borderColor3DBase="Transparent" imageBackgroundStretchMargins="0, 3, 0, 0" borderColor2="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAzgAAAAKJUE5HDQoaCgAAAA1JSERSAAAAyAAAAB4IBgAAAGk/UawAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAAcElEQVR4Xu3TQQ3AMBDAsPJntw3OPToCbRA4kiFkbUnX1vc+GzhbM7OBM4NAMAgEg0AwCASDQDAIBINAMAgEg0AwCASDQDAIBINAMAgEg0AwCASDQDAIBINAMAgEg0AwCASDQDAIBINAMAgEg8DV7B8tTPeeRAlCmQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="TabItemAreaHorizontalTop">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" borderColor3DBase="Transparent" imageBackgroundStretchMargins="0, 0, 0, 3" borderColor2="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAzgAAAAKJUE5HDQoaCgAAAA1JSERSAAAAyAAAAB4IBgAAAGk/UawAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAAcElEQVR4Xu3TQQ3AMBDAsPJntw1OHzcCbRA4kiFk7b0HODMIBINAMAgEg0AwCASDQDAIBINAMAgEg0AwCASDQDAIBINAMAgEg0AwCASDQDAIBINAMAgEg0AwCASDQDAIBINAMAiE9b3PAGdrJF2a+QE23/eeMlF3ZAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="TabItemAreaVerticalLeft">
          <states>
            <state name="Normal" backColor="241, 241, 242" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 0, 3, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAVgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAAU4IBgAAAHr+FuIAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAA+ElEQVR4Xu3RoRGAQBDAQPqv9KjhxDMDNSwqYnVErt09f7lnXkWJolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlOopVZQqShWlilJFqaJUUaooVZQqShWlilJFqaJUUaooVZT6onMe/yVxLUm64EwAAAAASUVORK5CYIILAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="TabItemAreaVerticalRight">
          <states>
            <state name="Normal" backColor="241, 241, 242" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="3, 0, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAARQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAAU4IBgAAAHr+FuIAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAA50lEQVR4Xu3NMREAIRAAsfevlNdwBQwilipF6nz/WvuamWekKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKGpp9AFYScS26pvhLAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="TabItemHorizontalBottom">
          <states>
            <state name="Selected" backColor="251, 251, 251" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 3, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAvAAAAAKJUE5HDQoaCgAAAA1JSERSAAAAyAAAABcIBgAAAE4wAGQAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAAXklEQVR4Xu3ToQHAIBDAQMbvSN3tBRW1kAlOnInPWu+zgYtjBH4zs4Ezg0AwCASDQDAIBINAMAgEg0AwCASDQDAIBINAMAgEg0AwCASDQDAIBINAMAgEg0AwCFzN/gANTx/tcxKVzwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="Active" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 3, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAvwAAAAKJUE5HDQoaCgAAAA1JSERSAAAAyAAAABcIBgAAAE4wAGQAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAAYUlEQVR4Xu3TIQGAMAAAwcUnEiEIMU+IIbDbJzhx5v2PcV8LONhG4Pe8cwF7BoFgEAgGgWAQCAaBYBAIBoFgEAgGgWAQCAaBYBAIBoFgEAgGgWAQCAaBYBAIBoFgEDia6wOCrVsDflysagAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="TabItemHorizontalTop">
          <states>
            <state name="Selected" backColor="251, 251, 251" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 0, 0, 3">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAvAAAAAKJUE5HDQoaCgAAAA1JSERSAAAAyAAAABcIBgAAAE4wAGQAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAAXklEQVR4Xu3TMQHAIBDAQOQjqd5+oBVAo+CGW7JnzcwB7gwCwSAQDALBIBAMAsEgEAwCwSAQDALBIBAMAsEgEAwCwSAQDALBIBAMAsEgEAwCwSAQ1nr2AX5cI/DZ5wUkfh/tI8zAOAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="Active" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 0, 0, 3">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAvwAAAAKJUE5HDQoaCgAAAA1JSERSAAAAyAAAABcIBgAAAE4wAGQAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAAYUlEQVR4Xu3TMQGAMADAsMmfJEQggh8RGwJGFeTI07/jfp8FnBkEgkEgGASCQSAYBIJBIBgEgkEgGASCQSAYBIJBIBgEgkEgGASCQSAYBIJBIBgEgkEgjHHNBfw4RuAz1wZvNlsDcTU0kgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="TabListButton">
          <states>
            <state name="HotTracked" borderColor="3, 181, 133" borderColor3DBase="3, 181, 133" borderColor2="3, 181, 133" />
          </states>
        </style>
        <style role="TileHeader">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="ToolbarBase">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarCloseButton" buttonStyle="Flat">
          <states>
            <state name="HotTracked" backColor="Transparent" borderColor="3, 181, 133" backGradientStyle="None" borderColor3DBase="3, 181, 133" backHatchStyle="None" borderColor2="3, 181, 133" />
          </states>
        </style>
        <style role="ToolbarDockArea">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="ToolbarDockAreaTop">
          <states>
            <state name="Normal" backColor="241, 241, 242" imageBackgroundStyle="Stretched" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" imageBackgroundStretchMargins="0, 0, 0, 3" />
          </states>
        </style>
        <style role="ToolbarDockAreaVertical">
          <states>
            <state name="Normal" backColor="241, 241, 242" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarFloatingCaption">
          <states>
            <state name="Normal" backColor="WhiteSmoke" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarHorizontal">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItem">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" backColor="150, 150, 150" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
            <state name="Pressed" backColor="204, 235, 224" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TreeControlArea" borderStyle="None">
          <states>
            <state name="Normal" backColor="251, 251, 251" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="UltraComboEditor" borderStyle="Solid" buttonStyle="FlatBorderless" />
        <style role="UltraLabelBase">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraPanel">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraSplitter">
          <states>
            <state name="Normal" backColor="230, 230, 230" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="UltraSplitterHorizontal">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 3, 0, 0" borderColor2="Transparent" />
            <state name="HotTracked" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraSplitterVertical">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 0, 0, 0" />
            <state name="HotTracked" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraTabControlBase">
          <states>
            <state name="Normal" borderColor="Transparent" borderColor3DBase="Transparent" borderColor2="Transparent" />
          </states>
        </style>
        <style role="UltraTile">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraTilePanel">
          <states>
            <state name="Normal" backColor="251, 251, 251" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabAreaLeft">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 0, 3, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAVgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAAU4IBgAAAHr+FuIAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAA+ElEQVR4Xu3RoRGAQBDAQPqv9KjhxDMDNSwqYnVErt09f7lnXkWJolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlCpKFaWKUkWpolRRqihVlOopVZQqShWlilJFqaJUUaooVZQqShWlilJFqaJUUaooVZT6onMe/yVxLUm64EwAAAAASUVORK5CYIILAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabAreaRight">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 0, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAARQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAAU4IBgAAAHr+FuIAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7CAAAOwgEVKEqAAAAA50lEQVR4Xu3NMREAIRAAsfevlNdwBQwilipF6nz/WvuamWekKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKmpKmpClpSpqSpqQpaUqakqakKWlKGpp9AFYScS26pvhLAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
      </styles>
      <targetComponents>
        <targetComponent name="UltraGroupBox" />
        <targetComponent name="UltraScrollBar" />
        <targetComponent name="UltraSplitter" />
        <targetComponent name="UltraTabbedMdiManager" />
        <targetComponent name="UltraTabControl" />
        <targetComponent name="UltraTabStripControl" />
        <targetComponent name="UltraToolbarsManager" />
        <targetComponent name="UltraTree" />
        <targetComponent name="UltraDockManager" />
        <targetComponent name="UltraExplorerBar" />
        <targetComponent name="UltraTilePanel" />
        <targetComponent name="UltraTile" />
        <targetComponent name="UltraStatusBar" />
        <targetComponent name="UltraPanel" />
        <targetComponent name="UltraListView" />
        <targetComponent name="UltraFormManager" />
        <targetComponent name="UltraButton" />
        <targetComponent name="UltraCombo" />
        <targetComponent name="UltraComboEditor" />
        <targetComponent name="UltraGrid" />
        <targetComponent name="UltraLabel" />
      </targetComponents>
    </styleSet>
  </styleSets>
</styleLibrary>