<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="25008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">25.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Extpad" Type="Folder">
			<Item Name="config.properties" Type="Document" URL="../Extpad/config.properties"/>
			<Item Name="CppUnit.dll" Type="Document" URL="../Extpad/CppUnit.dll"/>
			<Item Name="Extpad.exe" Type="Document" URL="../Extpad/Extpad.exe"/>
			<Item Name="Extpad5GController.exe" Type="Document" URL="../Extpad/Extpad5GController.exe"/>
			<Item Name="extpad_connector.dll" Type="Document" URL="../Extpad/extpad_connector.dll"/>
			<Item Name="ExtPaRfGui.exe" Type="Document" URL="../Extpad/ExtPaRfGui.exe"/>
			<Item Name="ftd2xx.dll" Type="Document" URL="../Extpad/ftd2xx.dll"/>
			<Item Name="libcrypto-1_1.dll" Type="Document" URL="../Extpad/libcrypto-1_1.dll"/>
			<Item Name="LibFT4222.dll" Type="Document" URL="../Extpad/LibFT4222.dll"/>
			<Item Name="libprotobuf-lite.dll" Type="Document" URL="../Extpad/libprotobuf-lite.dll"/>
			<Item Name="libprotobuf.dll" Type="Document" URL="../Extpad/libprotobuf.dll"/>
			<Item Name="libprotoc.dll" Type="Document" URL="../Extpad/libprotoc.dll"/>
			<Item Name="libssl-1_1.dll" Type="Document" URL="../Extpad/libssl-1_1.dll"/>
			<Item Name="logging.properties" Type="Document" URL="../Extpad/logging.properties"/>
			<Item Name="PocoCrypto.dll" Type="Document" URL="../Extpad/PocoCrypto.dll"/>
			<Item Name="PocoData.dll" Type="Document" URL="../Extpad/PocoData.dll"/>
			<Item Name="PocoDataSQLite.dll" Type="Document" URL="../Extpad/PocoDataSQLite.dll"/>
			<Item Name="PocoDNSSD.dll" Type="Document" URL="../Extpad/PocoDNSSD.dll"/>
			<Item Name="PocoEncodings.dll" Type="Document" URL="../Extpad/PocoEncodings.dll"/>
			<Item Name="PocoFoundation.dll" Type="Document" URL="../Extpad/PocoFoundation.dll"/>
			<Item Name="PocoJSON.dll" Type="Document" URL="../Extpad/PocoJSON.dll"/>
			<Item Name="PocoNet.dll" Type="Document" URL="../Extpad/PocoNet.dll"/>
			<Item Name="PocoNetSSL.dll" Type="Document" URL="../Extpad/PocoNetSSL.dll"/>
			<Item Name="PocoUtil.dll" Type="Document" URL="../Extpad/PocoUtil.dll"/>
			<Item Name="PocoXML.dll" Type="Document" URL="../Extpad/PocoXML.dll"/>
			<Item Name="PocoZip.dll" Type="Document" URL="../Extpad/PocoZip.dll"/>
			<Item Name="Version.txt" Type="Document" URL="../Extpad/Version.txt"/>
			<Item Name="zlib1.dll" Type="Document" URL="../Extpad/zlib1.dll"/>
		</Item>
		<Item Name="Interface Functions.lvlib" Type="Library" URL="../Interface Functions/Interface Functions.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Comms Plugin PPL" Type="Packed Library">
				<Property Name="Bld_buildCacheID" Type="Str">{A83D8F0F-EF7C-497E-A34C-01D4A8EC64A2}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Comms Plugin PPL</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/TDS Test/TDS Plugin Builds/L3_Extpad_Comms</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{7BE2B770-D6A8-4563-AFCF-B2473B0D21A8}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">L3_Extpad_Comms.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/C/TDS Test/TDS Plugin Builds/L3_Extpad_Comms/L3_Extpad_Comms.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/TDS Test/TDS Plugin Builds/L3_Extpad_Comms/Extpad</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{99B887F3-5A12-471D-BD5E-4671849E05B3}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Interface Functions.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Extpad</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">Creation Technologies</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Comms Plugin PPL</Property>
				<Property Name="TgtF_internalName" Type="Str">Comms Plugin PPL</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 Creation Technologies</Property>
				<Property Name="TgtF_productName" Type="Str">Comms Plugin PPL</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{10CB6520-FEBC-499F-A67D-54C897901B34}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">L3_Extpad_Comms.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Comms Plugin Source Zip" Type="Zip File">
				<Property Name="Absolute[0]" Type="Bool">false</Property>
				<Property Name="BuildName" Type="Str">Comms Plugin Source Zip</Property>
				<Property Name="Comments" Type="Str"></Property>
				<Property Name="DestinationID[0]" Type="Str">{32AF4953-AF5C-4717-8642-4F5FCF137B33}</Property>
				<Property Name="DestinationItemCount" Type="Int">1</Property>
				<Property Name="DestinationName[0]" Type="Str">Destination Directory</Property>
				<Property Name="IncludedItemCount" Type="Int">1</Property>
				<Property Name="IncludedItems[0]" Type="Ref">/My Computer</Property>
				<Property Name="IncludeProject" Type="Bool">true</Property>
				<Property Name="Path[0]" Type="Path">../../../TDS Plugin Builds/L3_Extpad_Comms/L3_Extpad_Comms Source.zip</Property>
				<Property Name="ZipBase" Type="Str">NI_zipbasedefault</Property>
			</Item>
		</Item>
	</Item>
</Project>
