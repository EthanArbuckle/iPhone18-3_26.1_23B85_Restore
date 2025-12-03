@interface SystemDiagnostic
- (id)_copyProxiedDeviceCrashLogsContainer;
- (id)_iOSgetLogCopyingContainers;
- (id)getAutogenLogGenerationContainers;
- (id)getAutogenTimeSensitiveContainers;
- (void)TSProcessSpecific_preprocess:(id)specific_preprocess;
- (void)filecoordination_postprocess:(id)filecoordination_postprocess withContainerArray:(id)array;
- (void)footprintAll_postprocess:(id)all_postprocess withContainerArray:(id)array;
- (void)systemInfoTimeSensitive_postprocess:(id)sensitive_postprocess withContainerArray:(id)array;
@end

@implementation SystemDiagnostic

- (id)getAutogenTimeSensitiveContainers
{
  v3 = +[NSMutableArray array];
  v4 = [SDTask taskWithCommand:@"/usr/bin/ltop" arguments:0 outputFile:@"ltop.txt"];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  v6 = [SDComplexContainer complexContainerWithTasks:v5 withTimeout:&__NSArray0__struct withRules:0 atDestination:self withDelegate:1 isConcurrent:10.0];
  v7 = v6;
  if (v6)
  {
    [v6 setName:@"utilities-timeSensitive-embedded"];
    [v7 setRuntimeChecks:32];
    [v7 setSizeCap:25];
    [v3 addObject:v7];
  }

  return v3;
}

- (id)getAutogenLogGenerationContainers
{
  v3 = +[NSMutableArray array];
  v4 = [SDTaskDepotContainer containerWithName:@"SEP Util" destination:0 withTimeout:1 withConcurrency:self withDelegate:5.0];
  v5 = v4;
  if (v4)
  {
    [v4 setRuntimeChecks:17];
    v6 = [SDTask taskWithCommand:@"/usr/libexec/seputil" arguments:&off_1000B4570 outputFile:@"sep_util.log"];
    v230 = v6;
    v7 = [NSArray arrayWithObjects:&v230 count:1];
    [v5 addSDTasksToContainer:v7];

    [v3 addObject:v5];
  }

  v8 = [SDComplexContainer complexContainerWithSPITask:40 withTimeout:@"logs/ProactiveInputPredictions" atDestination:self withDelegate:5.0];
  v9 = v8;
  if (v8)
  {
    [v8 setName:@"ProactiveInputPredictions"];
    [v9 setRuntimeChecks:16];
    [v3 addObject:v9];
  }

  v10 = [SDTaskDepotContainer containerWithName:@"umtool" destination:@"logs/UserManagement" withTimeout:1 withConcurrency:self withDelegate:5.0];
  v11 = v10;
  if (v10)
  {
    [v10 setRuntimeChecks:16];
    v12 = [SDTask taskWithCommand:@"/usr/bin/umtool" arguments:&off_1000B4588 outputFile:@"umtool.txt"];
    startDiagnosticTime = v12;
    v13 = [NSArray arrayWithObjects:&startDiagnosticTime count:1];
    [v11 addSDTasksToContainer:v13];

    [v3 addObject:v11];
  }

  v14 = [SDTaskDepotContainer containerWithName:@"testIOMFBGPO" destination:@"logs" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v15 = v14;
  if (v14)
  {
    [v14 setRuntimeChecks:17];
    v16 = [SDTask taskWithCommand:@"/usr/local/bin/testIOMFBGPO" arguments:0 outputFile:@"testIOMFBGPO.txt"];
    v228 = v16;
    v17 = [NSArray arrayWithObjects:&v228 count:1];
    [v15 addSDTasksToContainer:v17];

    [v3 addObject:v15];
  }

  v18 = [SDTask taskWithCommand:@"/usr/bin/afktool" arguments:&off_1000B45A0 outputFile:0];
  v227 = v18;
  v19 = [NSArray arrayWithObjects:&v227 count:1];

  v20 = [SDComplexContainer complexContainerWithTasks:v19 withTimeout:&__NSArray0__struct withRules:@"logs/AFK" atDestination:self withDelegate:1 isConcurrent:5.0];
  v21 = v20;
  if (v20)
  {
    [v20 setName:@"AFK"];
    [v21 setRuntimeChecks:16];
    [v3 addObject:v21];
  }

  v22 = [SDComplexContainer complexContainerWithSPITask:10 withTimeout:@"logs/BatteryHealth" atDestination:self withDelegate:5.0];
  v23 = v22;
  if (v22)
  {
    [v22 setName:@"BatteryHealth"];
    [v23 setRuntimeChecks:16];
    [v3 addObject:v23];
  }

  v24 = [SDTaskDepotContainer containerWithName:@"AMSToolCookieExports" destination:@"logs/AMSTool" withTimeout:1 withConcurrency:self withDelegate:2.0];
  v25 = v24;
  if (v24)
  {
    [v24 setRuntimeChecks:17];
    v26 = [SDTask taskWithCommand:@"/usr/local/bin/amstool" arguments:&off_1000B45B8 outputFile:@"amstool_cookies_list.txt"];
    v226 = v26;
    v27 = [NSArray arrayWithObjects:&v226 count:1];
    [v25 addSDTasksToContainer:v27];

    [v3 addObject:v25];
  }

  v28 = [SDComplexContainer complexContainerWithSPITask:31 withTimeout:@"crashes_and_spins/MemoryExceptions" atDestination:self withDelegate:5.0];
  v29 = v28;
  if (v28)
  {
    [v28 setName:@"ReportMemoryExceptions"];
    [v29 setRuntimeChecks:16];
    [v29 setSizeCap:45];
    [v3 addObject:v29];
  }

  v30 = [SDTaskDepotContainer containerWithName:@"usbctl" destination:@"logs/usbctl" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v31 = v30;
  if (v30)
  {
    [v30 setRuntimeChecks:17];
    v32 = [SDTask taskWithCommand:@"/usr/local/bin/usbctl" arguments:&off_1000B45D0 outputFile:@"usbctl_list.txt"];
    v225 = v32;
    v33 = [NSArray arrayWithObjects:&v225 count:1];
    [v31 addSDTasksToContainer:v33];

    [v3 addObject:v31];
  }

  v34 = [SDTaskDepotContainer containerWithName:@"assistantd state dump" destination:@"logs/assistantd" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v35 = v34;
  if (v34)
  {
    [v34 setRuntimeChecks:17];
    v36 = [SDTask taskWithCommand:@"/usr/local/bin/assistant_tool" arguments:&off_1000B45E8 outputFile:@"assistant_tool_dump_state.txt"];
    v224 = v36;
    v37 = [NSArray arrayWithObjects:&v224 count:1];
    [v35 addSDTasksToContainer:v37];

    [v3 addObject:v35];
  }

  v38 = [SDComplexContainer complexContainerWithSPITask:65 withTimeout:@"logs/UnifiedAsset" atDestination:self withDelegate:2.0];
  v39 = v38;
  if (v38)
  {
    [v38 setName:@"UnifiedAssetLogs"];
    [v39 setRuntimeChecks:16];
    [v3 addObject:v39];
  }

  v40 = [SDComplexContainer complexContainerWithSPITask:32 withTimeout:@"crashes_and_spins/MemoryExceptions" atDestination:self withDelegate:2.0];
  v41 = v40;
  if (v40)
  {
    [v40 setName:@"ReportMemoryExceptionsListLogs"];
    [v41 setRuntimeChecks:16];
    [v41 setSizeCap:1];
    [v3 addObject:v41];
  }

  v42 = [SDTaskDepotContainer containerWithName:@"benchrun_validate" destination:@"logs/benchrun" withTimeout:1 withConcurrency:self withDelegate:2.0];
  v43 = v42;
  if (v42)
  {
    [v42 setRuntimeChecks:17];
    v44 = [SDTask taskWithCommand:@"/usr/local/bin/benchrun" arguments:&off_1000B4600 outputFile:@"benchrun_validate.txt"];
    v223 = v44;
    v45 = [NSArray arrayWithObjects:&v223 count:1];
    [v43 addSDTasksToContainer:v45];

    [v3 addObject:v43];
  }

  v46 = [SDTaskDepotContainer containerWithName:@"pmudiagnose" destination:@"logs/pmudiagnose" withTimeout:1 withConcurrency:self withDelegate:2.0];
  v47 = v46;
  if (v46)
  {
    [v46 setRuntimeChecks:16];
    v48 = [SDTask taskWithCommand:@"/usr/libexec/pmudiagnose/pmudiagnose" arguments:0 outputFile:@"pmudiagnose.txt"];
    v222 = v48;
    v49 = [NSArray arrayWithObjects:&v222 count:1];
    [v47 addSDTasksToContainer:v49];

    [v3 addObject:v47];
  }

  v50 = [SDTaskDepotContainer containerWithName:@"IOSADiagnose" destination:@"logs/IOSADiagnose" withTimeout:1 withConcurrency:self withDelegate:5.0];
  v51 = v50;
  if (v50)
  {
    [v50 setRuntimeChecks:16];
    v52 = [SDTask taskWithCommand:@"/System/Library/PrivateFrameworks/IOSurfaceAccelerator.framework/Resources/IOSADiagnose" arguments:0 outputFile:@"IOSADiagnose.log"];
    v221 = v52;
    v53 = [NSArray arrayWithObjects:&v221 count:1];
    [v51 addSDTasksToContainer:v53];

    [v3 addObject:v51];
  }

  v54 = [SDTaskDepotContainer containerWithName:@"IOPowerSources" destination:@"logs/IOPowerSources" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v55 = v54;
  if (v54)
  {
    [v54 setRuntimeChecks:17];
    v56 = [SDTask taskWithCommand:@"/usr/local/bin/iopsutil" arguments:&off_1000B4618 outputFile:@"iopsutil-all-dump.txt"];
    v220 = v56;
    v57 = [NSArray arrayWithObjects:&v220 count:1];
    [v55 addSDTasksToContainer:v57];

    [v3 addObject:v55];
  }

  v58 = [SDTaskDepotContainer containerWithName:@"CoreAnalytics" destination:@"logs/CoreAnalytics" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v59 = v58;
  if (v58)
  {
    [v58 setRuntimeChecks:17];
    v60 = [SDTask taskWithCommand:@"/usr/local/bin/analytics_tool" arguments:&off_1000B4630 outputFile:@"analytics_transform_counts.txt"];
    v219 = v60;
    v61 = [NSArray arrayWithObjects:&v219 count:1];
    [v59 addSDTasksToContainer:v61];

    [v3 addObject:v59];
  }

  v62 = [SDTaskDepotContainer containerWithName:@"cryptexctl" destination:@"logs/libcryptex" withTimeout:1 withConcurrency:self withDelegate:2.0];
  v63 = v62;
  if (v62)
  {
    [v62 setRuntimeChecks:16];
    v64 = [SDTask taskWithCommand:@"/usr/bin/cryptexctl" arguments:&off_1000B4648 outputFile:@"cryptexctl-dumpstate.txt"];
    v218 = v64;
    v65 = [NSArray arrayWithObjects:&v218 count:1];
    [v63 addSDTasksToContainer:v65];

    [v3 addObject:v63];
  }

  v66 = [SDComplexContainer complexContainerWithSPITask:28 withTimeout:@"logs/IntelligencePlatform" atDestination:self withDelegate:2.0];
  v67 = v66;
  if (v66)
  {
    [v66 setName:@"IntelligencePlatform"];
    [v67 setRuntimeChecks:17];
    [v67 setSizeCap:1];
    [v3 addObject:v67];
  }

  v68 = [SDTaskDepotContainer containerWithName:@"profilectl" destination:@"logs" withTimeout:1 withConcurrency:self withDelegate:5.0];
  v69 = v68;
  if (v68)
  {
    [v68 setRuntimeChecks:17];
    v70 = [SDTask taskWithCommand:@"/usr/local/bin/profilectl" arguments:&off_1000B4660 outputFile:@"profilectl_list.txt"];
    v217 = v70;
    v71 = [NSArray arrayWithObjects:&v217 count:1];
    [v69 addSDTasksToContainer:v71];

    [v3 addObject:v69];
  }

  v72 = [SDTaskDepotContainer containerWithName:@"dastool" destination:0 withTimeout:1 withConcurrency:self withDelegate:5.0];
  v73 = v72;
  if (v72)
  {
    [v72 setRuntimeChecks:17];
    v74 = [SDTask taskWithCommand:@"/usr/local/bin/dastool" arguments:&off_1000B4678 outputFile:@"dastool.txt"];
    v216[0] = v74;
    v75 = [SDTask taskWithCommand:@"/usr/local/bin/dastool" arguments:&off_1000B4690 outputFile:@"logs/dastool/dastool_activity_summary.txt"];
    v216[1] = v75;
    v76 = [NSArray arrayWithObjects:v216 count:2];
    [v73 addSDTasksToContainer:v76];

    [v3 addObject:v73];
  }

  v77 = [SDTask taskWithCommand:@"/usr/libexec/atcrtcomm" arguments:&off_1000B46A8 outputFile:@"atcrtcomm.txt"];
  v215 = v77;
  v78 = [NSArray arrayWithObjects:&v215 count:1];

  v79 = [SDComplexContainer complexContainerWithTasks:v78 withTimeout:&__NSArray0__struct withRules:@"logs/atcrtcomm" atDestination:self withDelegate:1 isConcurrent:5.0];
  v80 = v79;
  if (v79)
  {
    [v79 setName:@"AppleTypeCRetimerLogs"];
    [v80 setRuntimeChecks:16];
    [v80 setSizeCap:1];
    [v3 addObject:v80];
  }

  v81 = [SDTaskDepotContainer containerWithName:@"suggestToolTasks" destination:@"logs/suggest_tool" withTimeout:0 withConcurrency:self withDelegate:10.0];
  v82 = v81;
  if (v81)
  {
    [v81 setRuntimeChecks:17];
    v193 = [SDTask taskWithCommand:@"/usr/appleinternal/bin/suggest_tool" arguments:&off_1000B46C0 outputFile:@"dbStats.txt"];
    v214[0] = v193;
    v83 = [SDTask taskWithCommand:@"/usr/appleinternal/bin/suggest_tool" arguments:&off_1000B46D8 outputFile:@"fileSystemMetadata.txt"];
    v214[1] = v83;
    v84 = [SDTask taskWithCommand:@"/usr/appleinternal/bin/suggest_tool" arguments:&off_1000B46F0 outputFile:@"dbSchema.txt"];
    v214[2] = v84;
    [SDTask taskWithCommand:@"/usr/appleinternal/bin/suggest_tool" arguments:&off_1000B4708 outputFile:@"assetVersion.txt"];
    v85 = v194 = v3;
    v214[3] = v85;
    v86 = [SDTask taskWithCommand:@"/usr/appleinternal/bin/suggest_tool" arguments:&off_1000B4720 outputFile:@"DictionaryExtractions.txt"];
    v214[4] = v86;
    v87 = [SDTask taskWithCommand:@"/usr/appleinternal/bin/suggest_tool" arguments:&off_1000B4738 outputFile:@"DictionaryInteractions.txt"];
    v214[5] = v87;
    v88 = [SDTask taskWithCommand:@"/usr/appleinternal/bin/suggest_tool" arguments:&off_1000B4750 outputFile:@"DictionaryInteractionsSummary.txt"];
    v214[6] = v88;
    v89 = [NSArray arrayWithObjects:v214 count:7];
    [v82 addSDTasksToContainer:v89];

    v3 = v194;
    [v194 addObject:v82];
  }

  v90 = [SDTaskDepotContainer containerWithName:@"diagpipectl" destination:@"logs/diagpipectl" withTimeout:1 withConcurrency:self withDelegate:5.0];
  v91 = v90;
  if (v90)
  {
    [v90 setRuntimeChecks:17];
    v92 = [SDTask taskWithCommand:@"/usr/local/bin/diagpipectl" arguments:&off_1000B4768 outputFile:@"diagpipectl.txt"];
    v213 = v92;
    v93 = [NSArray arrayWithObjects:&v213 count:1];
    [v91 addSDTasksToContainer:v93];

    [v3 addObject:v91];
  }

  v94 = [SDTask taskWithCommand:@"/System/Library/Frameworks/SensorKit.framework/Support/srsupporttool" arguments:&off_1000B4780 outputFile:@"errors/srsupport_tool_errors.txt"];
  v212 = v94;
  v95 = [NSArray arrayWithObjects:&v212 count:1];

  v96 = [SDComplexContainer complexContainerWithTasks:v95 withTimeout:&__NSArray0__struct withRules:@"logs/SensorKit" atDestination:self withDelegate:1 isConcurrent:5.0];
  v97 = v96;
  if (v96)
  {
    [v96 setName:@"SensorKit"];
    [v97 setRuntimeChecks:16];
    [v3 addObject:v97];
  }

  v98 = [SDTaskDepotContainer containerWithName:@"ppmctrl" destination:@"logs/ppmctrl" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v99 = v98;
  if (v98)
  {
    [v98 setRuntimeChecks:17];
    v100 = [SDTask taskWithCommand:@"/usr/local/bin/ppmctrl" arguments:&off_1000B4798 outputFile:@"ppmctrl_getClientState.txt"];
    v211 = v100;
    v101 = [NSArray arrayWithObjects:&v211 count:1];
    [v99 addSDTasksToContainer:v101];

    [v3 addObject:v99];
  }

  v102 = [SDTaskDepotContainer containerWithName:@"CoreBrightness" destination:@"logs/CoreBrightness" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v103 = v102;
  if (v102)
  {
    [v102 setRuntimeChecks:17];
    v104 = [SDTask taskWithCommand:@"/usr/libexec/corebrightnessdiag" arguments:&off_1000B47B0 outputFile:@"status_info.plist"];
    v210 = v104;
    v105 = [NSArray arrayWithObjects:&v210 count:1];
    [v103 addSDTasksToContainer:v105];

    [v3 addObject:v103];
  }

  v106 = [SDTaskDepotContainer containerWithName:@"nightshift" destination:0 withTimeout:1 withConcurrency:self withDelegate:1.0];
  v107 = v106;
  if (v106)
  {
    [v106 setRuntimeChecks:16];
    v108 = [SDTask taskWithCommand:@"/usr/libexec/corebrightnessdiag" arguments:&off_1000B47C8 outputFile:@"night-shift.log"];
    v209 = v108;
    v109 = [NSArray arrayWithObjects:&v209 count:1];
    [v107 addSDTasksToContainer:v109];

    [v3 addObject:v107];
  }

  v110 = [SDComplexContainer complexContainerWithSPITask:17 withTimeout:@"logs/CoreRepair" atDestination:self withDelegate:5.0];
  v111 = v110;
  if (v110)
  {
    [v110 setName:@"CoreRepair"];
    [v111 setRuntimeChecks:17];
    [v111 setSizeCap:1];
    [v3 addObject:v111];
  }

  v112 = [SDComplexContainer complexContainerWithSPITask:34 withTimeout:@"logs/OSEligibility" atDestination:self withDelegate:2.0];
  v113 = v112;
  if (v112)
  {
    [v112 setName:@"OSEligibility"];
    [v113 setRuntimeChecks:16];
    [v113 setSizeCap:1];
    [v3 addObject:v113];
  }

  v114 = [SDTaskDepotContainer containerWithName:@"ffctl" destination:0 withTimeout:1 withConcurrency:self withDelegate:5.0];
  v115 = v114;
  if (v114)
  {
    [v114 setRuntimeChecks:17];
    v116 = [SDTask taskWithCommand:@"/usr/local/bin/ffctl" arguments:&off_1000B47E0 outputFile:@"ffctl.json"];
    v208[0] = v116;
    v117 = [SDTask taskWithCommand:@"/usr/local/bin/ffctl" arguments:&off_1000B47F8 outputFile:@"ffctl.txt"];
    v208[1] = v117;
    v118 = [SDTask taskWithCommand:@"/usr/local/bin/ffctl" arguments:&off_1000B4810 outputFile:@"ffctl_changed.txt"];
    v208[2] = v118;
    v119 = [SDTask taskWithCommand:@"/usr/local/bin/ffctl" arguments:&off_1000B4828 outputFile:@"ffctl_featureset_list.txt"];
    v208[3] = v119;
    v120 = [NSArray arrayWithObjects:v208 count:4];
    [v115 addSDTasksToContainer:v120];

    [v3 addObject:v115];
  }

  v121 = [SDTaskDepotContainer containerWithName:@"ModelManager" destination:@"logs/ModelManager" withTimeout:1 withConcurrency:self withDelegate:2.0];
  v122 = v121;
  if (v121)
  {
    [v121 setRuntimeChecks:16];
    v123 = [SDTask taskWithCommand:@"/usr/bin/modelmanagerdump" arguments:0 outputFile:@"model_manager_dump.json"];
    v207 = v123;
    v124 = [NSArray arrayWithObjects:&v207 count:1];
    [v122 addSDTasksToContainer:v124];

    [v3 addObject:v122];
  }

  v125 = [SDComplexContainer complexContainerWithSPITask:13 withTimeout:@"Preferences" atDestination:self withDelegate:1.0];
  v126 = v125;
  if (v125)
  {
    [v125 setName:@"CloudKitPreferences"];
    [v126 setRuntimeChecks:17];
    [v126 setSizeCap:1];
    [v3 addObject:v126];
  }

  v127 = [SDComplexContainer complexContainerWithSPITask:8 withTimeout:@"logs/powerlogs" atDestination:self withDelegate:2.0];
  v128 = v127;
  if (v127)
  {
    [v127 setName:@"BackgroundPowerlog"];
    [v128 setRuntimeChecks:16];
    [v128 setSizeCap:30];
    [v3 addObject:v128];
  }

  v129 = [SDComplexContainer complexContainerWithSPITask:27 withTimeout:@"logs/HIDCrashlogs" atDestination:self withDelegate:5.0];
  v130 = v129;
  if (v129)
  {
    [v129 setName:@"HIDCrashlogs"];
    [v130 setRuntimeChecks:16];
    [v3 addObject:v130];
  }

  v131 = [SDComplexContainer complexContainerWithSPITask:47 withTimeout:@"logs/Siri/Enrollment" atDestination:self withDelegate:2.0];
  v132 = v131;
  if (v131)
  {
    [v131 setName:@"SiriEnrollment"];
    [v132 setRuntimeChecks:16];
    [v132 setSizeCap:3];
    [v3 addObject:v132];
  }

  v133 = [SDTaskDepotContainer containerWithName:@"agx_util" destination:0 withTimeout:1 withConcurrency:self withDelegate:5.0];
  v134 = v133;
  if (v133)
  {
    [v133 setRuntimeChecks:17];
    v135 = [SDTask taskWithCommand:@"/usr/local/bin/agx_util" arguments:&off_1000B4840 outputFile:@"agx_util.txt"];
    v206[0] = v135;
    v136 = [SDTask taskWithCommand:@"/usr/local/bin/agx_util" arguments:&off_1000B4858 outputFile:@"agx_diagnosis_report.txt"];
    v206[1] = v136;
    v137 = [NSArray arrayWithObjects:v206 count:2];
    [v134 addSDTasksToContainer:v137];

    [v3 addObject:v134];
  }

  v138 = [SDTaskDepotContainer containerWithName:@"LocalAuthentication" destination:@"logs/LocalAuthentication" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v139 = v138;
  if (v138)
  {
    [v138 setRuntimeChecks:16401];
    v140 = [SDTask taskWithCommand:@"/usr/local/bin/latool" arguments:&off_1000B4870 outputFile:@"latool.log"];
    v205 = v140;
    v141 = [NSArray arrayWithObjects:&v205 count:1];
    [v139 addSDTasksToContainer:v141];

    [v3 addObject:v139];
  }

  v142 = [SDTaskDepotContainer containerWithName:@"ModelCatalog" destination:@"logs/ModelCatalog" withTimeout:1 withConcurrency:self withDelegate:2.0];
  v143 = v142;
  if (v142)
  {
    [v142 setRuntimeChecks:16];
    v144 = [SDTask taskWithCommand:@"/usr/bin/modelcatalogdump" arguments:0 outputFile:@"model_catalog_dump.txt"];
    v204 = v144;
    v145 = [NSArray arrayWithObjects:&v204 count:1];
    [v143 addSDTasksToContainer:v145];

    [v3 addObject:v143];
  }

  v146 = [SDTaskDepotContainer containerWithName:@"CloudSubscriptionFeatures" destination:@"logs/CloudSubscriptionFeatures" withTimeout:1 withConcurrency:self withDelegate:2.0];
  v147 = v146;
  if (v146)
  {
    [v146 setRuntimeChecks:16];
    v148 = [SDTask taskWithCommand:@"/usr/bin/csfdiagnose" arguments:&off_1000B4888 outputFile:@"csfdiagnose.json"];
    v203 = v148;
    v149 = [NSArray arrayWithObjects:&v203 count:1];
    [v147 addSDTasksToContainer:v149];

    [v3 addObject:v147];
  }

  v150 = [SDComplexContainer complexContainerWithSPITask:25 withTimeout:@"logs/GenerativeExperiences" atDestination:self withDelegate:3.0];
  v151 = v150;
  if (v150)
  {
    [v150 setName:@"GEAvailability"];
    [v151 setRuntimeChecks:16];
    [v151 setSizeCap:1];
    [v3 addObject:v151];
  }

  v152 = [SDTaskDepotContainer containerWithName:@"ProtectedApps" destination:@"logs/ProtectedApps" withTimeout:1 withConcurrency:self withDelegate:1.0];
  v153 = v152;
  if (v152)
  {
    [v152 setRuntimeChecks:16];
    v154 = [SDTask taskWithCommand:@"/usr/bin/appprotectiondiagnose" arguments:&off_1000B48A0 outputFile:@"appprotectiondiagnose_diagnostics.json"];
    v202 = v154;
    v155 = [NSArray arrayWithObjects:&v202 count:1];
    [v153 addSDTasksToContainer:v155];

    [v3 addObject:v153];
  }

  v156 = [SDTask taskWithCommand:@"/usr/bin/IOAccelMemory" arguments:&off_1000B48B8 outputFile:@"IOAccelMemory.txt"];
  v201 = v156;
  v157 = [NSArray arrayWithObjects:&v201 count:1];

  v158 = [SDComplexContainer complexContainerWithTasks:v157 withTimeout:&__NSArray0__struct withRules:@"logs/IOAccelMemory" atDestination:self withDelegate:1 isConcurrent:5.0];
  v159 = v158;
  if (v158)
  {
    [v158 setName:@"IOAccelMemory"];
    [v159 setRuntimeChecks:17];
    [v159 setSizeCap:2];
    [v3 addObject:v159];
  }

  v160 = [SDTask taskWithCommand:@"/usr/local/bin/asclient" arguments:&off_1000B48D0 outputFile:0];
  v200[0] = v160;
  v161 = [SDTask taskWithCommand:@"/bin/sleep" arguments:&off_1000B48E8 outputFile:0];
  v200[1] = v161;
  v162 = [SDTask taskWithCommand:@"/usr/local/bin/asclient" arguments:&off_1000B4900 outputFile:@"asclient_dump.txt"];
  v200[2] = v162;
  v163 = [NSArray arrayWithObjects:v200 count:3];
    v204 = ;
    v392[0] = v204;
    v205 = [SDUnitLogGlob logRuleWithGlob:@"/private/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric/Archived/pairing_metric*.plist" withDate:0 withFilter:0 newestFileCount:10 atInternalDirectory:@"Archived" withRuntimeChecks:0];
    v392[1] = v205;
    v206 = [NSArray arrayWithObjects:v392 count:2];
    [v203 addRules:v206];

    [v3 addObject:v203];
  }

  v207 = [SDLogCollectionContainer containerWithName:@"HomePodSetUp" destination:@"logs/HomePodSetUp" withDelegate:self];
  v208 = v207;
  if (v207)
  {
    [v207 setRuntimeChecks:9];
    v209 = [SDUnitLogGlob logRuleWithGlob:@"/private/var/mobile/Library/Logs/com.apple.HomePodLEDPairingData*.bin"];
    v391 = v209;
    v210 = [NSArray arrayWithObjects:&v391 count:1];
    [v208 addRules:v210];

    [v3 addObject:v208];
  }

  v211 = [SDLogCollectionContainer containerWithName:@"Frametracer" destination:@"logs/Frametracer" withDelegate:self];
  v212 = v211;
  if (v211)
  {
    v217 = [v211 setRuntimeChecks:9];
    v389 = v217;
    v218 = [NSArray arrayWithObjects:&v389 count:1];
    [v216 addRules:v218];

    [v3 addObject:v216];
  }

  v219 = [SDLogCollectionContainer containerWithName:@"ForceResetTailspins" destination:@"logs/ForceResetTailspins" withDelegate:self];
  v220 = v219;
  if (v219)
  {
    [v219 setRuntimeChecks:8];
    v221 = [SDUnitLogDirectory logRuleWithDirectory:@"/private/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins"];
    v388 = v221;
    v222 = [NSArray arrayWithObjects:&v388 count:1];
    [v220 addRules:v222];

    [v3 addObject:v220];
  }

  v223 = [SDLogCollectionContainer containerWithName:@"TetheredRestore" destination:@"logs/TetheredRestore" withDelegate:self];
  v224 = v223;
  if (v223)
  {
    [v223 setRuntimeChecks:9];
    v225 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4AE0];
    v387 = v225;
    v226 = [NSArray arrayWithObjects:&v387 count:1];
    [v224 addRules:v226];

    [v3 addObject:v224];
  }

  v227 = [SDLogCollectionContainer containerWithName:@"MobileObliteration" destination:@"logs/MobileObliteration" withDelegate:self];
  v228 = v227;
  if (v227)
  {
    [v227 setRuntimeChecks:9];
    startDiagnosticTime = [(SystemDiagnostic *)self startDiagnosticTime];
    v230 = [startDiagnosticTime dateByAddingTimeInterval:-432000.0];
    v231 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4AF8 withDate:v230 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
    v386 = v231;
    v232 = [NSArray arrayWithObjects:&v386 count:1];
    [v228 addRules:v232];

    [v3 addObject:v228];
  }

  v233 = [SDLogCollectionContainer containerWithName:@"OTAUpdateLogs" destination:@"logs/OTAUpdateLogs" withDelegate:self];
  v234 = v233;
  if (v233)
  {
    [v233 setRuntimeChecks:8];
    v235 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4B10];
    v385 = v235;
    v236 = [NSArray arrayWithObjects:&v385 count:1];
    [v234 addRules:v236];

    [v3 addObject:v234];
  }

  v237 = [SDLogCollectionContainer containerWithName:@"CommandAndControl" destination:@"logs/AccessibilityPrefs" withDelegate:self];
  v238 = v237;
  if (v237)
  {
    [v237 setRuntimeChecks:8];
    v239 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4B28];
    v384 = v239;
    v240 = [NSArray arrayWithObjects:&v384 count:1];
    [v238 addRules:v240];

    [v3 addObject:v238];
  }

  v241 = [SDLogCollectionContainer containerWithName:@"SiriTextToSpeech" destination:@"logs/SiriTextToSpeech" withDelegate:self];
  v242 = v241;
  if (v241)
  {
    [v241 setRuntimeChecks:9];
    v243 = [SDUnitLogDirectory logRuleWithDirectory:@"/private/var/mobile/Library/Logs/CrashReporter/SiriTTS_AudioDump"];
    v383 = v243;
    v244 = [NSArray arrayWithObjects:&v383 count:1];
    [v242 addRules:v244];

    [v3 addObject:v242];
  }

  v245 = [SDLogCollectionContainer containerWithName:@"LivabilityApp" destination:@"logs/LivabilityApp" withDelegate:self];
  v246 = v245;
  if (v245)
  {
    [v245 setRuntimeChecks:9];
    v247 = [SDUnitLogDirectory logRuleWithDirectory:@"/private/var/mobile/Library/Preferences/com.apple.Livability.plist"];
    v382 = v247;
    v248 = [NSArray arrayWithObjects:&v382 count:1];
    [v246 addRules:v248];

    [v3 addObject:v246];
  }

  v249 = [SDLogCollectionContainer containerWithName:@"MobileSlideShow" destination:@"logs/MobileSlideShow" withDelegate:self];
  v250 = v249;
  if (v249)
  {
    [v249 setRuntimeChecks:8];
    [v250 setSizeCap:1];
    v251 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4B40];
    v381[0] = v251;
    v252 = [SDUnitLogDirectory logRuleWithDirectory:@"/private/var/mobile/Library/Preferences/com.apple.mobileslideshow.plist"];
    v381[1] = v252;
    v253 = [NSArray arrayWithObjects:v381 count:2];
    [v250 addRules:v253];

    [v3 addObject:v250];
  }

  v254 = [SDLogCollectionContainer containerWithName:@"AlishaLogs" destination:@"logs/AlishaLogs" withDelegate:self];
  v255 = v254;
  if (v254)
  {
    [v254 setRuntimeChecks:9];
    v256 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4B58];
    v380 = v256;
    v257 = [NSArray arrayWithObjects:&v380 count:1];
    [v255 addRules:v257];

    [v3 addObject:v255];
  }

  v258 = [SDLogCollectionContainer containerWithName:@"MobileStoreDemo" destination:@"logs/MobileStoreDemo" withDelegate:self];
  v259 = v258;
  if (v258)
  {
    [v258 setRuntimeChecks:8];
    v260 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4B70];
    v379 = v260;
    v261 = [NSArray arrayWithObjects:&v379 count:1];
    [v259 addRules:v261];

    [v3 addObject:v259];
  }

  v262 = [SDLogCollectionContainer containerWithName:@"SleepCycler" destination:@"logs/SleepCycler" withDelegate:self];
  v263 = v262;
  if (v262)
  {
    [v262 setRuntimeChecks:9];
    v264 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4B88];
    v378 = v264;
    v265 = [NSArray arrayWithObjects:&v378 count:1];
    [v263 addRules:v265];

    [v3 addObject:v263];
  }

  v266 = [SDLogCollectionContainer containerWithName:@"Resource Exhaustion" destination:@"resource_exhaustion" withDelegate:self];
  v267 = v266;
  if (v266)
  {
    [v266 setRuntimeChecks:9];
    startDiagnosticTime2 = [(SystemDiagnostic *)self startDiagnosticTime];
    v269 = [startDiagnosticTime2 dateByAddingTimeInterval:-3600.0];
    v270 = [SDUnitLogGlob logRuleWithGlob:@"/private/var/db/spindump/Exhaustion*" withDate:v269 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
    v377 = v270;
    v271 = [NSArray arrayWithObjects:&v377 count:1];
    [v267 addRules:v271];

    [v3 addObject:v267];
  }

  v272 = [SDLogCollectionContainer containerWithName:@"SystemVersion" destination:@"logs/SystemVersion" withDelegate:self];
  v273 = v272;
  if (v272)
  {
    [v272 setRuntimeChecks:8];
    v274 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4BA0];
    v376 = v274;
    v275 = [NSArray arrayWithObjects:&v376 count:1];
    [v273 addRules:v275];

    [v3 addObject:v273];
  }

  v276 = [SDLogCollectionContainer containerWithName:@"Recoverylogd" destination:@"logs/recoverylogd" withDelegate:self];
  v277 = v276;
  if (v276)
  {
    [v276 setRuntimeChecks:8];
    v278 = [SDUnitLogDirectory logRuleWithDirectory:@"/private/var/mobile/Library/Logs/recoverylogd"];
    v375[0] = v278;
    v279 = [SDUnitLogDirectory logRuleWithDirectory:@"/System/Volumes/Hardware/recoverylogd"];
    v375[1] = v279;
    v280 = [NSArray arrayWithObjects:v375 count:2];
    [v277 addRules:v280];

    [v3 addObject:v277];
  }

  v281 = [SDLogCollectionContainer containerWithName:@"RunningBoard" destination:@"logs/RunningBoard" withDelegate:self];
  v282 = v281;
  if (v281)
  {
    [v281 setRuntimeChecks:9];
    [v282 setSizeCap:20];
    startDiagnosticTime3 = [(SystemDiagnostic *)self startDiagnosticTime];
    v284 = [startDiagnosticTime3 dateByAddingTimeInterval:-600.0];
    v285 = [SDUnitLogGlob logRuleWithGlob:@"/private/var/tmp/com.apple.runningboardd/ts-*.tailspin" withDate:v284 withFilter:0 newestFileCount:1 atInternalDirectory:0 withRuntimeChecks:0];
    v374 = v285;
    v286 = [NSArray arrayWithObjects:&v374 count:1];
    [v282 addRules:v286];

    [v3 addObject:v282];
  }

  v287 = [SDLogCollectionContainer containerWithName:@"CacheDeleteHistory" destination:@"logs/CacheDelete" withDelegate:self];
  v288 = v287;
  if (v287)
  {
    [v287 setRuntimeChecks:8];
    [v288 setSizeCap:10];
    v289 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4BB8];
    v373 = v289;
    v290 = [NSArray arrayWithObjects:&v373 count:1];
    [v288 addRules:v290];

    [v3 addObject:v288];
  }

  v291 = [SDLogCollectionContainer containerWithName:@"SpaceAttributionTelemetry" destination:@"logs/SpaceAttribution" withDelegate:self];
  v292 = v291;
  if (v291)
  {
    [v291 setRuntimeChecks:9];
    [v292 setSizeCap:2];
    v293 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4BD0];
    v372 = v293;
    v294 = [NSArray arrayWithObjects:&v372 count:1];
    [v292 addRules:v294];

    [v3 addObject:v292];
  }

  v295 = [SDLogCollectionContainer containerWithName:@"AUDeveloperSettings" destination:@"logs/AUDeveloperSettings" withDelegate:self];
  v296 = v295;
  if (v295)
  {
    [v295 setRuntimeChecks:9];
    [v296 setSizeCap:1];
    v297 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4BE8];
    v371 = v297;
    v298 = [NSArray arrayWithObjects:&v371 count:1];
    [v296 addRules:v298];

    [v3 addObject:v296];
  }

  v299 = [SDLogCollectionContainer containerWithName:@"copySpringBoardStateDump" destination:@"logs/SpringBoard" withDelegate:self];
  v300 = v299;
  if (v299)
  {
    [v299 setRuntimeChecks:9];
    [v300 setSizeCap:1];
    v301 = [SDUnitLogPathArray logRuleWithPaths:&off_1000B4C00];
    v370 = v301;
    v302 = [NSArray arrayWithObjects:&v370 count:1];
    [v300 addRules:v302];

    [v3 addObject:v300];
  }

  v303 = [SDLogCollectionContainer containerWithName:@"WindowServerHangs" destination:@"logs/WindowServer" withDelegate:self];
  v304 = v303;
  if (v303)
  {
    [v303 setRuntimeChecks:9];
    [v304 setSizeCap:50];
    startDiagnosticTime4 = [(SystemDiagnostic *)self startDiagnosticTime];
    v306 = [startDiagnosticTime4 dateByAddingTimeInterval:-1800.0];
    v307 = [SDUnitLogDirectory logRuleWithDirectory:@"/Library/Logs/WindowServer" withDepth:0 withDate:v306 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
    v369 = v307;
    v308 = [NSArray arrayWithObjects:&v369 count:1];
    [v304 addRules:v308];

    [v3 addObject:v304];
  }

  v309 = [SDLogCollectionContainer containerWithName:@"UARPEndpointPacketCaptures" destination:@"logs/UARPEndpointPacketCaptures" withDelegate:self];
  v310 = v309;
  if (v309)
  {
    [v309 setRuntimeChecks:8];
    [v310 setSizeCap:10];
    v311 = [SDUnitLogDirectory logRuleWithDirectory:@"/private/var/db/accessoryupdater/uarp/pcapfiles"];
    v368[0] = v311;
    v312 = [SDUnitLogDirectory logRuleWithDirectory:@"/private/var/db/accessoryupdater/uarpd/pcapfiles"];
    v368[1] = v312;
    v313 = [NSArray arrayWithObjects:v368 count:2];
    [v310 addRules:v313];

    [v3 addObject:v310];
  }

  v314 = [SDLogCollectionContainer containerWithName:@"CameraCaptureStateDumps" destination:@"logs/CameraCapture" withDelegate:self];
  v315 = v314;
  if (v314)
  {
    [v314 setRuntimeChecks:8];
    v340 = [v315 setSizeCap:3];
    v361 = v340;
    v341 = [NSArray arrayWithObjects:&v361 count:1];
    [v339 addRules:v341];

    [v3 addObject:v339];
  }

  v342 = [SDLogCollectionContainer containerWithName:@"MCUPanicLogs" destination:@"logs/MCUPanics" withDelegate:self];
  v343 = v342;
  if (v342)
  {
    [v342 setRuntimeChecks:4104];
    [v343 setSizeCap:1];
    v344 = [SDUnitLogGlob logRuleWithGlob:@"/private/var/tmp/manta-cores/*soc_mcu*/*soc-mcu*-panic-bkupsram.txt"];
    v360 = v344;
    v345 = [NSArray arrayWithObjects:&v360 count:1];
    [v343 addRules:v345];

    [v3 addObject:v343];
  }

  v346 = [SDLogCollectionContainer containerWithName:@"NERDArchive" destination:@"logs/MSU" withDelegate:self];
  v347 = v346;
  if (v346)
  {
    [v346 setRuntimeChecks:8];
    [v347 setSizeCap:20];
    v348 = +[SDUnitLogGlob logRuleWithGlob:withDate:withFilter:newestFileCount:atInternalDirectory:withRuntimeChecks:](SDUnitLogGlob, "logRuleWithGlob:withDate:withFilter:newestFileCount:atInternalDirectory:withRuntimeChecks:", @"/private/var/MobileSoftwareUpdate/Controller/NeRD/RecoveryOS-[0-9-]*.logarchive.zip", 0, 0, 1, 0, 0);
    v359 = v348;
    v349 = [NSArray arrayWithObjects:&v359 count:1];
    [v347 addRules:v349];

    [v3 addObject:v347];
  }

  v350 = v3;
  return v3;
}

- (void)TSProcessSpecific_preprocess:(id)specific_preprocess
{
  specific_preprocessCopy = specific_preprocess;
  requestSource = [(SystemDiagnostic *)self requestSource];
  targetPIDs = [(SystemDiagnostic *)self targetPIDs];
  v6 = [targetPIDs count];

  if (v6)
  {
    if ([(SystemDiagnostic *)self quickMode]|| [(SystemDiagnostic *)self requestSource]== 1)
    {
      v7 = [NSMutableArray arrayWithObjects:@"-v", @"-w", 0];
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      targetPIDs2 = [(SystemDiagnostic *)self targetPIDs];
      v9 = [targetPIDs2 countByEnumeratingWithState:&v75 objects:v87 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v76;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v76 != v11)
            {
              objc_enumerationMutation(targetPIDs2);
            }

            stringValue = [*(*(&v75 + 1) + 8 * i) stringValue];
            [v7 addObject:stringValue];
          }

          v10 = [targetPIDs2 countByEnumeratingWithState:&v75 objects:v87 count:16];
        }

        while (v10);
      }

      v14 = [SDTaskDepotContainer containerWithName:@"process footprint" destination:0 withTimeout:1 withConcurrency:self withDelegate:25.0];
      v15 = v14;
      if (v14)
      {
        [v14 setRuntimeChecks:32];
        v16 = [SDTask taskWithCommand:@"/usr/local/bin/footprint" arguments:v7 outputFile:@"footprint.txt"];
        v86 = v16;
        v17 = [NSArray arrayWithObjects:&v86 count:1];
        [v15 addSDTasksToContainer:v17];

        [specific_preprocessCopy addObject:v15];
      }
    }

    targetPIDs3 = [(SystemDiagnostic *)self targetPIDs];
    v19 = [targetPIDs3 count];

    targetPIDs4 = [(SystemDiagnostic *)self targetPIDs];
    v21 = [targetPIDs4 count];

    if ((v19 & 0xFFFFFFFFFFFFFFFELL) >= v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v85 = v22;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Number of process specific time-sensitive groups: %d", buf, 8u);
    }

    v59 = v19 >> 1;
    v23 = +[SDResourceManager sharedResourceManager];
    [v23 log:{@"Number of process specific time-sensitive groups: %d", v22}];

    v24 = 0;
    v25 = 30;
    if (requestSource == 2)
    {
      v25 = 120;
    }

    v58 = v25;
    v26 = &NSClassFromString_ptr;
    selfCopy = self;
    v60 = v22;
    do
    {
      v27 = v59 * v24;
      v28 = (v59 * v24 + v59);
      targetPIDs5 = [(SystemDiagnostic *)self targetPIDs];
      v30 = [targetPIDs5 count];

      if (v28 > v30)
      {
        targetPIDs6 = [(SystemDiagnostic *)self targetPIDs];
        v28 = [targetPIDs6 count];
      }

      v61 = &v28[-v27];
      v63 = v24 + 1;
      v62 = [v26[408] stringWithFormat:@"Process specific container group: %d", v24 + 1];
      v32 = &__NSArray0__struct;
      v65 = v28;
      do
      {
        v74 = v32;
        targetPIDs7 = [(SystemDiagnostic *)self targetPIDs];
        v34 = [targetPIDs7 objectAtIndex:v27];
        intValue = [v34 intValue];

        v36 = [v26[408] stringWithFormat:@"%d", intValue];
        pidIndices = [(SystemDiagnostic *)self pidIndices];
        v73 = v27;
        if (pidIndices && (v38 = pidIndices, -[SystemDiagnostic pidIndices](self, "pidIndices"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 count], v39, v38, v40))
        {
          pidIndices2 = [(SystemDiagnostic *)self pidIndices];
          v42 = [pidIndices2 objectAtIndex:v27];
          intValue2 = [v42 intValue];

          v44 = [&stru_1000A67D8 stringByAppendingFormat:@"%s", -[SystemDiagnostic processes](self, "processes") + 136 * intValue2 + 48];
        }

        else
        {
          v44 = &stru_1000A67D8;
        }

        v72 = [v26[408] stringWithFormat:@"<TMPOUTPUTDIR>/graph-%d-%@.memgraph", intValue, v44];
        v71 = [v26[408] stringWithFormat:@"errors/leaks_ts_%d_errors.txt", intValue];
        v82[0] = @"-outputGraph";
        v82[1] = v72;
        v82[2] = v36;
        v82[3] = @"-forkCorpse";
        v70 = [NSArray arrayWithObjects:v82 count:4];
        v69 = [SDTask taskWithCommand:@"/usr/bin/leaks" arguments:v70 outputFile:v71];
        v83[0] = v69;
        v81[0] = @"-v";
        v81[1] = @"-k";
        v81[2] = v36;
        v67 = [NSArray arrayWithObjects:v81 count:3];
        v66 = [v26[408] stringWithFormat:@"ddt-%u-%@.txt", intValue, v44];
        v45 = [SDTask taskWithCommand:@"/usr/local/bin/ddt" arguments:v67 outputFile:v66 withRuntimeChecks:1];
        v83[1] = v45;
        v80[0] = @"procinfo";
        v80[1] = v36;
        v46 = [NSArray arrayWithObjects:v80 count:2];
        [v26[408] stringWithFormat:@"launchctl-procinfo-%u-%@.txt", intValue, v44];
        v47 = v36;
        v68 = v36;
        v49 = v48 = v26;
        v50 = [SDTask taskWithCommand:@"/bin/launchctl" arguments:v46 outputFile:v49];
        v83[2] = v50;
        v79[0] = @"dump-concurrency";
        v79[1] = v47;
        v51 = [NSArray arrayWithObjects:v79 count:2];
        v52 = [v48[408] stringWithFormat:@"swift-inspect-%u-%@.txt", intValue, v44];
        v53 = [SDTask taskWithCommand:@"/usr/bin/swift-inspect" arguments:v51 outputFile:v52];
        v83[3] = v53;
        v54 = [NSArray arrayWithObjects:v83 count:4];

        v26 = v48;
        v32 = [v74 arrayByAddingObjectsFromArray:v54];

        v27 = v73 + 1;
        self = selfCopy;
      }

      while (v73 + 1 < v65);
      v55 = [SDComplexContainer complexContainerWithTasks:v32 withTimeout:&__NSArray0__struct withRules:&stru_1000A67D8 atDestination:selfCopy withDelegate:0 isConcurrent:(v61 * v58)];
      v56 = v55;
      if (v55)
      {
        [v55 setName:v62];
        [specific_preprocessCopy addObject:v56];
      }

      v24 = v63;
    }

    while (v63 != v60);
  }
}

- (void)filecoordination_postprocess:(id)filecoordination_postprocess withContainerArray:(id)array
{
  filecoordination_postprocessCopy = filecoordination_postprocess;
  arrayCopy = array;
  if (filecoordination_postprocessCopy)
  {
    collectionContainer = [filecoordination_postprocessCopy collectionContainer];

    if (collectionContainer)
    {
      collectionContainer2 = [filecoordination_postprocessCopy collectionContainer];
      [collectionContainer2 setDestination:0];
    }
  }
}

- (void)footprintAll_postprocess:(id)all_postprocess withContainerArray:(id)array
{
  all_postprocessCopy = all_postprocess;
  arrayCopy = array;
  if ([(SystemDiagnostic *)self quickMode]|| [(SystemDiagnostic *)self requestSource]== 1)
  {
    if (all_postprocessCopy)
    {
      [arrayCopy removeObject:all_postprocessCopy];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Creating footprint...", v9, 2u);
    }

    v8 = +[SDResourceManager sharedResourceManager];
    [v8 log:@"Creating footprint..."];
  }
}

- (void)systemInfoTimeSensitive_postprocess:(id)sensitive_postprocess withContainerArray:(id)array
{
  if (sensitive_postprocess)
  {
    sensitive_postprocessCopy = sensitive_postprocess;
    v5 = [SDTask taskWithCommand:@"/usr/bin/kbdebug" arguments:0 outputFile:@"kbdebug.txt"];
    v7 = v5;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [sensitive_postprocessCopy addSDTasksToContainer:v6];
  }
}

- (id)_iOSgetLogCopyingContainers
{
  v3 = +[NSMutableArray array];
  _getCrashesAndSpinsContainer = [(SystemDiagnostic *)self _getCrashesAndSpinsContainer];
  [v3 addObjectsFromArray:_getCrashesAndSpinsContainer];

  _copyOnDemandDaemonLogsContainer = [(SystemDiagnostic *)self _copyOnDemandDaemonLogsContainer];
  [v3 addObjectsFromArray:_copyOnDemandDaemonLogsContainer];

  _copyVideoProcessingLogs = [(SystemDiagnostic *)self _copyVideoProcessingLogs];
  [v3 addObjectsFromArray:_copyVideoProcessingLogs];

  _copyThermalLogs = [(SystemDiagnostic *)self _copyThermalLogs];
  [v3 addObjectsFromArray:_copyThermalLogs];

  copyCoreaudioReportingLogs = [(SystemDiagnostic *)self copyCoreaudioReportingLogs];
  [v3 addObjectsFromArray:copyCoreaudioReportingLogs];

  _copyAccessibilityPreferences = [(SystemDiagnostic *)self _copyAccessibilityPreferences];
  [v3 addObjectsFromArray:_copyAccessibilityPreferences];

  _copyAstroLogsContainer = [(SystemDiagnostic *)self _copyAstroLogsContainer];
  [v3 addObjectsFromArray:_copyAstroLogsContainer];

  _getMapsSyncJournalContainer = [(SystemDiagnostic *)self _getMapsSyncJournalContainer];
  [v3 addObjectsFromArray:_getMapsSyncJournalContainer];

  _copyCompanionSyncContainer = [(SystemDiagnostic *)self _copyCompanionSyncContainer];
  [v3 addObjectsFromArray:_copyCompanionSyncContainer];

  _getAGXMTLCompilerCrashLogs = [(SystemDiagnostic *)self _getAGXMTLCompilerCrashLogs];
  [v3 addObjectsFromArray:_getAGXMTLCompilerCrashLogs];

  _copyNanoPreferencesSyncLogs = [(SystemDiagnostic *)self _copyNanoPreferencesSyncLogs];
  [v3 addObjectsFromArray:_copyNanoPreferencesSyncLogs];

  _copyCoreCaptureBTLogsContainer = [(SystemDiagnostic *)self _copyCoreCaptureBTLogsContainer];
  [v3 addObjectsFromArray:_copyCoreCaptureBTLogsContainer];

  _getFscklogs = [(SystemDiagnostic *)self _getFscklogs];
  [v3 addObjectsFromArray:_getFscklogs];

  _copyMobileInstallationLogsContainer = [(SystemDiagnostic *)self _copyMobileInstallationLogsContainer];
  [v3 addObjectsFromArray:_copyMobileInstallationLogsContainer];

  _copyMobileActivationLogsContainer = [(SystemDiagnostic *)self _copyMobileActivationLogsContainer];
  [v3 addObjectsFromArray:_copyMobileActivationLogsContainer];

  _copyAppInstallationLogsContainer = [(SystemDiagnostic *)self _copyAppInstallationLogsContainer];
  [v3 addObjectsFromArray:_copyAppInstallationLogsContainer];

  _copyProxiedDeviceCrashLogsContainer = [(SystemDiagnostic *)self _copyProxiedDeviceCrashLogsContainer];
  [v3 addObjectsFromArray:_copyProxiedDeviceCrashLogsContainer];

  _copySiriLogsContainer = [(SystemDiagnostic *)self _copySiriLogsContainer];
  [v3 addObjectsFromArray:_copySiriLogsContainer];

  _copyMobileAssetHistoryLogs = [(SystemDiagnostic *)self _copyMobileAssetHistoryLogs];
  [v3 addObjectsFromArray:_copyMobileAssetHistoryLogs];

  _copySplunkHistoryLogs = [(SystemDiagnostic *)self _copySplunkHistoryLogs];
  [v3 addObjectsFromArray:_copySplunkHistoryLogs];

  _copyParsecdBagLogs = [(SystemDiagnostic *)self _copyParsecdBagLogs];
  [v3 addObjectsFromArray:_copyParsecdBagLogs];

  _getCloudKitBookmarksContainer = [(SystemDiagnostic *)self _getCloudKitBookmarksContainer];
  [v3 addObjectsFromArray:_getCloudKitBookmarksContainer];

  _copySiriAnalyticsDB = [(SystemDiagnostic *)self _copySiriAnalyticsDB];
  [v3 addObjectsFromArray:_copySiriAnalyticsDB];

  _copyHIDFWCrashLogs = [(SystemDiagnostic *)self _copyHIDFWCrashLogs];
  [v3 addObjectsFromArray:_copyHIDFWCrashLogs];

  _copySplatVersioningLogs = [(SystemDiagnostic *)self _copySplatVersioningLogs];
  [v3 addObjectsFromArray:_copySplatVersioningLogs];

  _copyHangTracerTailspinsContainer = [(SystemDiagnostic *)self _copyHangTracerTailspinsContainer];
  [v3 addObjectsFromArray:_copyHangTracerTailspinsContainer];

  _copySentryPlistsContainer = [(SystemDiagnostic *)self _copySentryPlistsContainer];
  [v3 addObjectsFromArray:_copySentryPlistsContainer];

  _copyMCLogs = [(SystemDiagnostic *)self _copyMCLogs];
  [v3 addObjectsFromArray:_copyMCLogs];

  _copyWatchdogTailspins = [(SystemDiagnostic *)self _copyWatchdogTailspins];
  [v3 addObjectsFromArray:_copyWatchdogTailspins];

  _copyWatchdogdDDTs = [(SystemDiagnostic *)self _copyWatchdogdDDTs];
  [v3 addObjectsFromArray:_copyWatchdogdDDTs];

  _copyTCCLogs = [(SystemDiagnostic *)self _copyTCCLogs];
  [v3 addObjectsFromArray:_copyTCCLogs];

  _getCalendarPrefLogs = [(SystemDiagnostic *)self _getCalendarPrefLogs];
  [v3 addObjectsFromArray:_getCalendarPrefLogs];

  _getSocialLayerPlist = [(SystemDiagnostic *)self _getSocialLayerPlist];
  [v3 addObjectsFromArray:_getSocialLayerPlist];

  return v3;
}

- (id)_copyProxiedDeviceCrashLogsContainer
{
  v3 = +[NSMutableArray array];
  v4 = [SDLogCollectionContainer containerWithName:@"process proxied device logs" destination:@"logs/ProxiedDevice" withDelegate:self];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 setRuntimeChecks:8];
@end