<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Property Name="NI.Project.SaveVersion" Type="Str">Editor version</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Controls" Type="Folder">
			<Item Name="Keypad_Typedef.ctl" Type="VI" URL="../Keypad_Typedef.ctl"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="helloworld" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{CDF43C5C-99DD-4AC4-80D3-5CF2B089512B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{220A71E0-F30A-42D9-AA28-772939FBE4E4}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{AFA9362A-3956-412C-9EF1-C449D76C8B06}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">helloworld</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/labview-build/helloworld_[VersionNumber]</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{DAD1B719-0558-4C7F-90DA-60BDEAF3E256}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">helloworld[VersionNumber].exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/labview-build/helloworld_[VersionNumber]/helloworld[VersionNumber].exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/labview-build/helloworld_[VersionNumber]/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D3DEE5B8-3A02-4D2B-BC96-C6E1769B4D5C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Actualmente no dispongo de empresa</Property>
				<Property Name="TgtF_fileDescription" Type="Str">helloworld</Property>
				<Property Name="TgtF_internalName" Type="Str">helloworld</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 Actualmente no dispongo de empresa</Property>
				<Property Name="TgtF_productName" Type="Str">helloworld</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{BB331959-2808-4AA3-AF59-1270E8BC5D4A}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">helloworld[VersionNumber].exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
