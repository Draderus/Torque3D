<?xml version="1.0" encoding="Windows-1252"?>
<VisualStudioProject
	ProjectType="Visual C++"
	Version="9.00"
	Name="{$projName}"
	RootNamespace="{$projName}"
    TargetFrameworkVersion="131072"
	ProjectGUID="{$GUID}">
	<Platforms>
		<Platform
			Name="Win32"
		/>
	</Platforms>
	<ToolFiles>
	</ToolFiles>
	<Configurations>
		<Configuration
			Name="Debug|Win32"
			OutputDirectory="{$projectOffset}../Link/VC2k8.$(ConfigurationName).$(PlatformName)"
			IntermediateDirectory="$(OutDir)/$(ProjectName)"
			ConfigurationType="2"
			InheritedPropertySheets="$(VCInstallDir)VCProjectDefaults\UpgradeFromVC71.vsprops"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="false"
			>
			<Tool
				Name="VCPreBuildEventTool"
			/>
			<Tool
				Name="VCCustomBuildTool"
			/>
			<Tool
				Name="VCXMLDataGeneratorTool"
			/>
			<Tool
				Name="VCWebServiceProxyGeneratorTool"
			/>
			<Tool
				Name="VCMIDLTool"
				TypeLibraryName="$(IntDir)/Torque 3D.tlb"
				HeaderFileName=""
			/>
			<Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="/MP4"
				Optimization="0"
				EnableIntrinsicFunctions="1"
				AdditionalIncludeDirectories="{foreach item=def from=$projIncludes}{$def};{/foreach}"
				PreprocessorDefinitions="{foreach item=def from=$projDefines}{$def};{/foreach}TORQUE_DEBUG;TORQUE_DEBUG_GUARD;D3D_DEBUG_INFO;TORQUE_NET_STATS;UNICODE;_CRT_SECURE_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS"
				ExceptionHandling="1"
				BasicRuntimeChecks="0"
				StringPooling="true"
				RuntimeLibrary="{$projRuntimeDebug}"
				BufferSecurityCheck="false"
				EnableFunctionLevelLinking="true"
				TreatWChar_tAsBuiltInType="false"
				RuntimeTypeInfo="true"
				UsePrecompiledHeader="0"
				AssemblerListingLocation="$(OutDir)"
				ProgramDataBaseFileName="$(OutDir)/$(ProjectName)_DEBUG.pdb"
				WarningLevel="4"
				SuppressStartupBanner="true"
				DebugInformationFormat="4"
				CompileAs="0"
				DisableSpecificWarnings="{foreach item=def from=$projDisabledWarnings}{$def};{/foreach}4018;4100;4121;4127;4130;4244;4245;4389;4511;4512;4800"
			/>
			<Tool
				Name="VCManagedResourceCompilerTool"
			/>
			<Tool
				Name="VCResourceCompilerTool"
				PreprocessorDefinitions="_DEBUG"
				Culture="1033"
				AdditionalIncludeDirectories="{foreach item=def from=$projIncludes}{$def};{/foreach}"
			/>
			<Tool
				Name="VCPreLinkEventTool"
			/>
			<Tool
				Name="VCLinkerTool"
				AdditionalDependencies="{foreach item=def from=$projLibsDebug}{$def} {/foreach}"
            
            {if $uniformOutputFile eq 1}
				   OutputFile="{$projectOffset}../../{$gameFolder}/{$projOutName}.dll"
            {else}
               OutputFile="{$projectOffset}../../{$gameFolder}/{$projOutName}_DEBUG.dll"
            {/if}
            
				LinkIncremental="2"
				SuppressStartupBanner="true"
				AdditionalLibraryDirectories="{foreach item=def from=$projLibDirs}{$def};{/foreach}{$projectOffset}../Link/VC2k8.$(ConfigurationName).$(PlatformName);"
				IgnoreDefaultLibraryNames="LIBC,LIBCD{foreach item=def from=$projLibsIgnore},{$def}{/foreach}"
				ModuleDefinitionFile="{$projModuleDefinitionFile}"
				GenerateDebugInformation="true"
				ProgramDatabaseFile="$(OutDir)/$(ProjectName)_DEBUG.pdb"
				SubSystem="2"
				TargetMachine="1"
				RandomizedBaseAddress="1"
				DataExecutionPrevention="0"        
			/>
			<Tool
				Name="VCALinkTool"
			/>
			<Tool
				Name="VCManifestTool"
			/>
			<Tool
				Name="VCXDCMakeTool"
			/>
			<Tool
				Name="VCBscMakeTool"
			/>
			<Tool
				Name="VCFxCopTool"
			/>
			<Tool
				Name="VCAppVerifierTool"
			/>
			<Tool
				Name="VCWebDeploymentTool"
			/>
			<Tool
				Name="VCPostBuildEventTool"
			/>
		</Configuration>
      <Configuration
			Name="Optimized Debug|Win32"
			OutputDirectory="{$projectOffset}../Link/VC2k8.$(ConfigurationName).$(PlatformName)"
			IntermediateDirectory="$(OutDir)/$(ProjectName)"
			ConfigurationType="2"
			InheritedPropertySheets="$(VCInstallDir)VCProjectDefaults\UpgradeFromVC71.vsprops"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="false"
			>
         <Tool
				Name="VCPreBuildEventTool"
			/>
         <Tool
				Name="VCCustomBuildTool"
			/>
         <Tool
				Name="VCXMLDataGeneratorTool"
			/>
         <Tool
				Name="VCWebServiceProxyGeneratorTool"
			/>
         <Tool
				Name="VCMIDLTool"
				TypeLibraryName="$(IntDir)/Torque 3D.tlb"
				HeaderFileName=""
			/>
         <Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="/MP4"
				Optimization="3"
				InlineFunctionExpansion="2"
				EnableIntrinsicFunctions="1"
				AdditionalIncludeDirectories="{foreach item=def from=$projIncludes}{$def};{/foreach}"
				PreprocessorDefinitions="{foreach item=def from=$projDefines}{$def};{/foreach}TORQUE_DEBUG;TORQUE_DEBUG_GUARD;D3D_DEBUG_INFO;TORQUE_NET_STATS;UNICODE;_CRT_SECURE_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS"
				ExceptionHandling="1"
				BasicRuntimeChecks="0"
				StringPooling="true"
				RuntimeLibrary="{$projRuntimeDebug}"
				BufferSecurityCheck="false"
				EnableFunctionLevelLinking="true"
				TreatWChar_tAsBuiltInType="false"
				RuntimeTypeInfo="true"
				UsePrecompiledHeader="0"
				AssemblerListingLocation="$(OutDir)"
				ProgramDataBaseFileName="$(OutDir)/$(ProjectName)_OPTIMIZEDDEBUG.pdb"
				WarningLevel="4"
				SuppressStartupBanner="true"
				DebugInformationFormat="3"
				CompileAs="0"
				DisableSpecificWarnings="{foreach item=def from=$projDisabledWarnings}{$def};{/foreach}4018;4100;4121;4127;4130;4244;4245;4389;4511;4512;4800"
			/>
         <Tool
				Name="VCManagedResourceCompilerTool"
			/>
         <Tool
				Name="VCResourceCompilerTool"
				PreprocessorDefinitions="_DEBUG"
				Culture="1033"
				AdditionalIncludeDirectories="{foreach item=def from=$projIncludes}{$def};{/foreach}"
			/>
         <Tool
				Name="VCPreLinkEventTool"
			/>
         <Tool
				Name="VCLinkerTool"
				AdditionalDependencies="{foreach item=def from=$projLibsDebug}{$def} {/foreach}"
            
            {if $uniformOutputFile eq 1}
				   OutputFile="{$projectOffset}../../{$gameFolder}/{$projOutName}.dll"
            {else}
               OutputFile="{$projectOffset}../../{$gameFolder}/{$projOutName}_OPTIMIZEDDEBUG.dll"
            {/if}

              LinkIncremental="1"
              SuppressStartupBanner="true"
              AdditionalLibraryDirectories="{foreach item=def from=$projLibDirs}{$def};{/foreach}{$projectOffset}../Link/VC2k8.$(ConfigurationName).$(PlatformName);"
              IgnoreDefaultLibraryNames="LIBC,LIBCD{foreach item=def from=$projLibsIgnore},{$def}{/foreach}"
              ModuleDefinitionFile="{$projModuleDefinitionFile}"
              GenerateDebugInformation="true"
              ProgramDatabaseFile="$(OutDir)/$(ProjectName)_OPTIMIZEDDEBUG.pdb"
              SubSystem="2"
              TargetMachine="1"
              RandomizedBaseAddress="1"
              DataExecutionPrevention="0"
        />
        <Tool
				Name="VCALinkTool"
			/>
         <Tool
				Name="VCManifestTool"
			/>
         <Tool
				Name="VCXDCMakeTool"
			/>
         <Tool
				Name="VCBscMakeTool"
			/>
         <Tool
				Name="VCFxCopTool"
			/>
         <Tool
				Name="VCAppVerifierTool"
			/>
         <Tool
				Name="VCWebDeploymentTool"
			/>
         <Tool
				Name="VCPostBuildEventTool"
			/>
      </Configuration>
		<Configuration
			Name="Release|Win32"
			OutputDirectory="{$projectOffset}../Link/VC2k8.$(ConfigurationName).$(PlatformName)"
			IntermediateDirectory="$(OutDir)/$(ProjectName)"
			ConfigurationType="2"
			InheritedPropertySheets="$(VCInstallDir)VCProjectDefaults\UpgradeFromVC71.vsprops"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="false"
			>
			<Tool
				Name="VCPreBuildEventTool"
			/>
			<Tool
				Name="VCCustomBuildTool"
			/>
			<Tool
				Name="VCXMLDataGeneratorTool"
			/>
			<Tool
				Name="VCWebServiceProxyGeneratorTool"
			/>
			<Tool
				Name="VCMIDLTool"
				TypeLibraryName="$(IntDir)/Torque 3D.tlb"
				HeaderFileName=""
			/>
			<Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="/MP4"
				Optimization="3"
				InlineFunctionExpansion="2"
				EnableIntrinsicFunctions="1"
				AdditionalIncludeDirectories="{foreach item=def from=$projIncludes}{$def};{/foreach}"
				PreprocessorDefinitions="{foreach item=def from=$projDefines}{$def};{/foreach}UNICODE;_CRT_SECURE_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS"
				ExceptionHandling="1"
				BasicRuntimeChecks="0"
				StringPooling="true"
				RuntimeLibrary="{$projRuntimeRelease}"
				BufferSecurityCheck="false"
				EnableFunctionLevelLinking="true"
				TreatWChar_tAsBuiltInType="false"
				RuntimeTypeInfo="true"
				UsePrecompiledHeader="0"
				AssemblerListingLocation="$(OutDir)"
				ProgramDataBaseFileName="$(OutDir)/$(ProjectName).pdb"
				WarningLevel="4"
				SuppressStartupBanner="true"
				DebugInformationFormat="0"
				CompileAs="0"
				DisableSpecificWarnings="{foreach item=def from=$projDisabledWarnings}{$def};{/foreach}4018;4100;4121;4127;4130;4244;4245;4389;4511;4512;4800"
			/>
			<Tool
				Name="VCManagedResourceCompilerTool"
			/>
			<Tool
				Name="VCResourceCompilerTool"
				PreprocessorDefinitions="NDEBUG"
				Culture="1033"
            AdditionalIncludeDirectories="{foreach item=def from=$projIncludes}{$def};{/foreach}"
			/>
			<Tool
				Name="VCPreLinkEventTool"
			/>
			<Tool
				Name="VCLinkerTool"
				AdditionalDependencies="{foreach item=def from=$projLibs}{$def} {/foreach}"
				OutputFile="{$projectOffset}../../{$gameFolder}/{$projOutName}.dll"
				LinkIncremental="1"
				SuppressStartupBanner="true"
				AdditionalLibraryDirectories="{foreach item=def from=$projLibDirs}{$def};{/foreach}{$projectOffset}../Link/VC2k8.$(ConfigurationName).$(PlatformName);"
				IgnoreDefaultLibraryNames="LIBC,LIBCD{foreach item=def from=$projLibsIgnore},{$def}{/foreach}"
				ModuleDefinitionFile="{$projModuleDefinitionFile}"
				GenerateDebugInformation="false"
				ProgramDatabaseFile="$(OutDir)/$(ProjectName).pdb"
				SubSystem="2"
				TargetMachine="1"
				RandomizedBaseAddress="1"
				DataExecutionPrevention="0"

			/>
			<Tool
				Name="VCALinkTool"
			/>
			<Tool
				Name="VCManifestTool"
			/>
			<Tool
				Name="VCXDCMakeTool"
			/>
			<Tool
				Name="VCBscMakeTool"
			/>
			<Tool
				Name="VCFxCopTool"
			/>
			<Tool
				Name="VCAppVerifierTool"
			/>
			<Tool
				Name="VCWebDeploymentTool"
			/>
			<Tool
				Name="VCPostBuildEventTool"
			/>
		</Configuration>
	</Configurations>
	<References>
	</References>
	<Files>
		<Filter
			Name="Source Files"
			Filter="cpp;c;cxx;rc;def;r;odl;idl;hpj;bat;cc">
			<File
				RelativePath=".\Torque.rc">
			</File>
{assign var="dirWalk" value=$fileArray}
{include file="vc2k8_fileRecurse.tpl" dirWalk=$dirWalk depth=2 dirPath=$projOutput->base_dir}
		</Filter>
	</Files>
	<Globals>
	</Globals>
</VisualStudioProject>
