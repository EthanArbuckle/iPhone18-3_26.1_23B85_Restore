@interface SystemDiagnosticLogAgent
+ (BOOL)_runBlock:(id)a3 withTimeout:(double)a4;
+ (BOOL)_runDispatchBlock:(id)a3 withTimeout:(double)a4 onQueue:(id)a5;
+ (id)logAgentWithTaskType:(int)a3;
+ (id)stringForReqType:(int)a3;
- (BOOL)ACLogsTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)ASPMagazineTaskForDir:(id)a3 withTimeout:(double)a4;
- (BOOL)ASPToolGenericWithTimeout:(double)a3 forFile:(id)a4 andBlock:(id)a5;
- (BOOL)ASPToolSnapshotForDir:(id)a3 withTimeout:(double)a4;
- (BOOL)ASPToolTaskForDir:(id)a3 withTimeout:(double)a4;
- (BOOL)DSCSYMTaskForDir:(id)a3 withTimeout:(double)a4;
- (BOOL)FDRDiagnosticTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)HIDCrashlogsTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)PersonalizationTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)RRDTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)_backgroundPowerTaskForDir:(id)a3 withTimeout:(double)a4;
- (BOOL)_extendedPowerTaskForDir:(id)a3;
- (BOOL)_libNotifyTaskAtLocation:(id)a3 andTimeout:(double)a4;
- (BOOL)_memoryExceptionsListLogsTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)_powerTaskForDir:(id)a3 withTimeout:(double)a4;
- (BOOL)_runBlockForCurrentUser:(id)a3 withTimeout:(double)a4;
- (BOOL)batteryHealthTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)batteryUITaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)centauriTaskWithDir:(id)a3 withTimeout:(double)a4 withRequest:(id)a5;
- (BOOL)coreRepairDiagnosticTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)getCloudKitPreferences:(id)a3 withTimeout:(double)a4;
- (BOOL)getPreferences:(id)a3 withTimeout:(double)a4;
- (BOOL)getPreferencesInternal:(id)a3 withTimeout:(double)a4;
- (BOOL)isBTProfileInstalled;
- (BOOL)isWifiProfileInstalled;
- (BOOL)osEligibilityDumpToDir:(id)a3 withTimeout:(double)a4;
- (BOOL)parseLogAgentRequest:(id)a3 outputPath:(id *)a4 timeout:(double *)a5 taskType:(int *)a6 startTimeClockNS:(int64_t *)a7;
- (BOOL)proactiveInputPredictionsTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)profileAccessTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)runningBoardTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)setRootMode;
- (BOOL)setUserMode;
- (BOOL)tailspinInfoTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)tailspinSaveNoSymbolicateTSTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)tailspinSaveSpiWrapperForReason:(id)a3 forPath:(id)a4 collectAriadne:(BOOL)a5 withTimeout:(double)a6;
- (BOOL)timezoneTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)trialTaskWithDir:(id)a3 withTimeout:(double)a4;
- (BOOL)unifiedAssetTaskWithDir:(id)a3 withTimeout:(double)a4;
- (id)_memoryExceptionsTaskWithTimeout:(double)a3;
- (id)coreCaptureConfigTask:(double)a3;
- (id)excResourcePathsWithTimeout:(double)a3;
- (id)getPreferencesForDomain:(id)a3 withKeys:(id)a4 currentUser:(BOOL)a5;
- (id)intelligencePlatformTaskWithDir:(id)a3 withTimeout:(double)a4;
- (id)tailspinAugmentTaskWithDir:(id)a3 withTimeout:(double)a4;
- (id)tailspinKeychordTaskWithDir:(id)a3 withTimeout:(double)a4;
- (int64_t)_logItemForType:(int)a3;
- (void)processMessage:(id)a3 replyWith:(id)a4;
@end

@implementation SystemDiagnosticLogAgent

+ (id)logAgentWithTaskType:(int)a3
{
  v4 = objc_alloc_init(SystemDiagnosticLogAgentiOS);
  v5 = sub_100004378(a3);
  v6 = os_log_create("com.apple.sysdiagnose", [v5 UTF8String]);
  [(SystemDiagnosticLogAgent *)v4 setLogHandle:v6];

  return v4;
}

- (void)processMessage:(id)a3 replyWith:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[SystemDiagnosticLogAgent processMessage:replyWith:]", "SystemDiagnosticLogAgent.m", 204, "0 && Should call this from subclass only");
}

- (BOOL)centauriTaskWithDir:(id)a3 withTimeout:(double)a4 withRequest:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!&_collectClientLogsWithSizeAndOverride)
  {
    v19 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "CentauriDiagnostic framework not found on this platform, failing centauriTaskWithDir", buf, 2u);
    }

    goto LABEL_21;
  }

  int64 = xpc_dictionary_get_int64(v9, "containerSizeCap");
  if (!int64)
  {
    v21 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003B6BC();
    }

LABEL_21:
    v18 = 0;
    goto LABEL_24;
  }

  v12 = int64;
  if (xpc_dictionary_get_BOOL(v10, "BTProfileInstalled"))
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = xpc_dictionary_get_BOOL(v10, "wifiProfileInstalled");
  v15 = [(SystemDiagnosticLogAgent *)self logHandle];
  v16 = v13 | v14;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Using size: %lld and flags %d for CentauriDiagnostic", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v32 = 0;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100005A38;
  v26 = &unk_100074B30;
  v28 = buf;
  v27 = v8;
  v29 = v12;
  v30 = v16;
  v17 = [SystemDiagnosticLogAgent _runBlock:&v23 withTimeout:a4];
  if (v17 && (*(*&buf[8] + 24) & 1) != 0)
  {
    v18 = 1;
  }

  else
  {
    v20 = [(SystemDiagnosticLogAgent *)self logHandle:v23];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003B638(v17, &buf[8], v20);
    }

    if (v17)
    {
      v18 = *(*&buf[8] + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_24:

  return v18 & 1;
}

- (BOOL)HIDCrashlogsTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  if (objc_opt_class())
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005BDC;
    v11[3] = &unk_100074B58;
    v12 = v6;
    v7 = [SystemDiagnosticLogAgent _runBlock:v11 withTimeout:a4];
    if (!v7)
    {
      v8 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HIDCrashlogsTaskWithDir SPI timed out", buf, 2u);
      }
    }

    v9 = v12;
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AppleDeviceManagementHIDDiagnostics class not found on this platform, failing HIDCrashlogsTaskWithDir", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)DSCSYMTaskForDir:(id)a3 withTimeout:(double)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005D40;
  v11[3] = &unk_1000748E0;
  v13 = &v14;
  v6 = a3;
  v12 = v6;
  if (![SystemDiagnosticLogAgent _runBlock:v11 withTimeout:a4])
  {
    v7 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DSCSYM task timed out", v10, 2u);
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (BOOL)ACLogsTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  if (objc_opt_class())
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = sub_100005FB8;
    v21 = sub_100005FC8;
    v22 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005FD0;
    v13[3] = &unk_100074A58;
    v15 = buf;
    v13[4] = self;
    v14 = v6;
    v16 = &v23;
    if ([SystemDiagnosticLogAgent _runBlock:v13 withTimeout:a4])
    {
      v7 = *(v24 + 24);
    }

    else
    {
      v9 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ACLogsTaskWithDir SPI timed out", v12, 2u);
      }

      v10 = *(v18 + 5);
      if (v10)
      {
        [v10 endSession];
      }

      v7 = 0;
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v8 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NFHardwareManager class not found on this platform, failing ACLogsTaskWithDir", buf, 2u);
    }

    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)RRDTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (&_rrd_store_config_sysdiagnose)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006390;
    v12[3] = &unk_100074A80;
    v13 = v6;
    v14 = self;
    v15 = &v16;
    if ([SystemDiagnosticLogAgent _runBlock:v12 withTimeout:a4])
    {
      v8 = *(v17 + 24);
    }

    else
    {
      v10 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10003B6F0();
      }

      v8 = 0;
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003B724();
    }

    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)profileAccessTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  if (objc_opt_class())
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_100005FB8;
    v18 = sub_100005FC8;
    v19 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000066CC;
    v13[3] = &unk_100074908;
    v13[4] = self;
    v13[5] = buf;
    if ([SystemDiagnosticLogAgent _runBlock:v13 withTimeout:a4])
    {
      if (*(v15 + 5))
      {
        v7 = [v6 stringByAppendingPathComponent:@"diagnostics.txt"];
        if (v7)
        {
          v8 = +[NSFileManager defaultManager];
          v9 = [*(v15 + 5) dataUsingEncoding:4];
          v10 = [v8 createFileAtPath:v7 contents:v9 attributes:0];
        }

        else
        {
          v8 = [(SystemDiagnosticLogAgent *)self logHandle];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10003B818();
          }

          v10 = 0;
        }

        goto LABEL_18;
      }

      v7 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003B84C();
      }
    }

    else
    {
      v7 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003B7E4();
      }
    }

    v10 = 0;
LABEL_18:

    _Block_object_dispose(buf, 8);
    goto LABEL_19;
  }

  v11 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Profile Access SPI not available", buf, 2u);
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (id)intelligencePlatformTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  if (objc_opt_class())
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = sub_100005FB8;
    v27 = sub_100005FC8;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100006BA8;
    v18[3] = &unk_100074BA8;
    v18[4] = self;
    v18[5] = buf;
    v18[6] = &v19;
    if ([SystemDiagnosticLogAgent _runBlock:v18 withTimeout:a4])
    {
      if (v20[3])
      {
        v7 = [v6 stringByAppendingPathComponent:@"intelligence_platform_status.json"];
        v8 = *(v24 + 5);
        v17 = 0;
        v9 = [v8 writeToFile:v7 atomically:0 encoding:4 error:&v17];
        v10 = v17;
        if (v9)
        {
          v29 = v7;
          v11 = [NSArray arrayWithObjects:&v29 count:1];
        }

        else
        {
          v14 = [(SystemDiagnosticLogAgent *)self logHandle];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v10 localizedDescription];
            *v30 = 138412546;
            v31 = v7;
            v32 = 2112;
            v33 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to write intelligence platform data to '%@' with error: %@", v30, 0x16u);
          }

          v11 = &__NSArray0__struct;
        }

        goto LABEL_19;
      }

      v10 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        v13 = "Intelligence platform SPI did not succeed";
        goto LABEL_13;
      }
    }

    else
    {
      v10 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        v13 = "Intelligence platform SPI timed out";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v13, v30, 2u);
      }
    }

    v11 = &__NSArray0__struct;
LABEL_19:

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_20;
  }

  v12 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService class not found on this platform, failing intelligencePlatformTaskWithTimeout", buf, 2u);
  }

  v11 = &__NSArray0__struct;
LABEL_20:

  return v11;
}

- (BOOL)PersonalizationTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  [v6 stringByAppendingPathComponent:@"PersonalizationPortrait.log"];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006E4C;
  v12[3] = &unk_1000749A0;
  v12[4] = self;
  v7 = v14 = &v15;
  v13 = v7;
  if ([SystemDiagnosticLogAgent _runBlock:v12 withTimeout:a4]&& (v16[3] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Personalization SPI timed out or couldn't create the dest file", v11, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (BOOL)batteryUITaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = v6;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (&_PLSysdiagnoseCopyBatteryUILogs)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007174;
    v12[3] = &unk_100074BD0;
    v15 = &v17;
    v13 = v6;
    v14 = self;
    if ([SystemDiagnosticLogAgent _runBlock:v12 withTimeout:a4]&& (v18[3] & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Battery UI logs timedout / resulted an error", buf, 2u);
      }

      v8 = 0;
    }

    v10 = v13;
  }

  else
  {
    v10 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PLSysdiagnoseCopyBatteryUILogs SPI not found", buf, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (BOOL)proactiveInputPredictionsTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  [v6 stringByAppendingPathComponent:@"ProactiveInputPredictions.log"];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000073F8;
  v12[3] = &unk_1000749A0;
  v12[4] = self;
  v7 = v14 = &v15;
  v13 = v7;
  if ([SystemDiagnosticLogAgent _runBlock:v12 withTimeout:a4]&& (v16[3] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ProactiveInputPredictions SPI timed out or couldn't create the dest file", v11, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (BOOL)batteryHealthTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (&_IOPSCopyPowerSourcesByTypePrecise)
  {
    [v6 stringByAppendingPathComponent:@"BatteryHealth.log"];
    *v17 = 0;
    v18 = v17;
    v19 = 0x2020000000;
    v20 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100007788;
    v14[3] = &unk_1000749A0;
    v14[4] = self;
    v8 = v16 = v17;
    v15 = v8;
    v9 = [SystemDiagnosticLogAgent _runBlock:v14 withTimeout:a4];
    if (v9 && (v18[24] & 1) != 0)
    {
      v10 = 1;
    }

    else
    {
      v11 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v18[24];
        *buf = 67109376;
        v22 = v9;
        v23 = 1024;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "IOKitPS SPI timed out (%d) or couldn't create the dest file (%d)", buf, 0xEu);
      }

      v10 = 0;
    }

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v8 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IOPSCopyPowerSourcesByTypePrecise SPI not found", v17, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)timezoneTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  [v6 stringByAppendingPathComponent:@"tzDataVersion.log"];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007C70;
  v12[3] = &unk_1000748E0;
  v7 = v14 = &v15;
  v13 = v7;
  if ([SystemDiagnosticLogAgent _runBlock:v12 withTimeout:a4]&& (v16[3] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SPI timed out or couldn't create the dest file", v11, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (BOOL)runningBoardTaskWithDir:(id)a3 withTimeout:(double)a4
{
  if (&_RBSCaptureStateToFile)
  {
    [a3 stringByAppendingPathComponent:@"RunningBoard_state.log"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100007EBC;
    v6 = v10[3] = &unk_100074B58;
    v11 = v6;
    v7 = [SystemDiagnosticLogAgent _runBlock:v10 withTimeout:a4];
    if (!v7)
    {
      v8 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RunningBoard SPI timed out or couldn't create the dest file", buf, 2u);
      }
    }
  }

  else
  {
    v6 = [(SystemDiagnosticLogAgent *)self logHandle:a3];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RunningBoard SPI not found", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)_logItemForType:(int)a3
{
  v3 = 56;
  if (a3)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return 79;
  }

  else
  {
    return v3;
  }
}

- (BOOL)unifiedAssetTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  if (objc_opt_class())
  {
    [v6 stringByAppendingPathComponent:@"unified_asset_manager.log"];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000085F4;
    v11[3] = &unk_1000749A0;
    v11[4] = self;
    v7 = v13 = &v14;
    v12 = v7;
    if ([SystemDiagnosticLogAgent _runBlock:v11 withTimeout:a4]&& (v15[3] & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003B9F8();
      }

      v8 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003BA2C();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)trialTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  if (objc_opt_class())
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10000882C;
    v14 = &unk_100074C20;
    v15 = v6;
    v16 = self;
    v7 = [SystemDiagnosticLogAgent _runBlock:&v11 withTimeout:a4];
    if (!v7)
    {
      v8 = [(SystemDiagnosticLogAgent *)self logHandle:v11];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003BBA8();
      }
    }

    v9 = v15;
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003BBDC();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_backgroundPowerTaskForDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (&_PLSysdiagnoseCopyLogs)
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100008AD0;
    v15[3] = &unk_100074C48;
    v18 = a4;
    v16 = v6;
    v17 = buf;
    v8 = [SystemDiagnosticLogAgent _runBlock:v15 withTimeout:a4];
    if ((v8 & 1) == 0)
    {
      v9 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Background powerlogs timed out", v14, 2u);
      }
    }

    if ((v20[24] & 1) == 0)
    {
      v10 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Background powerlogs did not succeed", v14, 2u);
      }
    }

    if (v8)
    {
      v11 = v20[24];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Background powerlog SPI not found", buf, 2u);
    }

    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)_powerTaskForDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  [(SystemDiagnosticLogAgent *)self _extendedPowerTaskForDir:v6];
  if (&_PLSysdiagnoseCopyPowerlog)
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008D40;
    v14[3] = &unk_100074C70;
    v18 = a4;
    v15 = v6;
    v16 = self;
    v17 = buf;
    v7 = [SystemDiagnosticLogAgent _runBlock:v14 withTimeout:a4];
    if ((v7 & 1) == 0)
    {
      v8 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Power logs timed out", v13, 2u);
      }
    }

    if ((v20[24] & 1) == 0)
    {
      v9 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Power logs did not succeed", v13, 2u);
      }
    }

    if (v7)
    {
      v10 = v20[24];
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PowerTask SPI not found", buf, 2u);
    }

    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)_extendedPowerTaskForDir:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (&_PLSysdiagnoseCopyExtendedPersistenceLog)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000090E0;
    v13[3] = &unk_100074908;
    v14 = v4;
    v15 = buf;
    v6 = [SystemDiagnosticLogAgent _runBlock:v13 withTimeout:5.0];
    if ((v6 & 1) == 0)
    {
      v7 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Powerlog Extended Persistence SPI timed out", v12, 2u);
      }
    }

    if ((v17[24] & 1) == 0)
    {
      v8 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Powerlog Extended Persistence SPI response did not contain path key", v12, 2u);
      }
    }

    if (v6)
    {
      v9 = v17[24];
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Powerlog Extended Persistence SPI not found", buf, 2u);
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (id)excResourcePathsWithTimeout:(double)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005FB8;
  v16 = sub_100005FC8;
  v17 = 0;
  if (&_ExcResourceReportPaths)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009340;
    v10[3] = &unk_100074C98;
    v10[4] = &v12;
    if (![SystemDiagnosticLogAgent _runBlock:v10 withTimeout:a3]|| (v4 = v13[5]) == 0)
    {
      v5 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to get paths for ExcResource logs.", buf, 2u);
      }

      v4 = v13[5];
    }

    v6 = sub_100009388(v4);
    v7 = v13[5];
    v13[5] = v6;
  }

  else
  {
    v7 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CoreDiagnostics SPI not available.", buf, 2u);
    }
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)_memoryExceptionsTaskWithTimeout:(double)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005FB8;
  v16 = sub_100005FC8;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000095D4;
  v11[3] = &unk_100074C98;
  v11[4] = &v12;
  if (![SystemDiagnosticLogAgent _runBlock:v11 withTimeout:a3]|| (v4 = v13[5]) == 0)
  {
    v5 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to get ReportMemoryException logs.", v10, 2u);
    }

    v4 = v13[5];
  }

  v6 = sub_100009388(v4);
  v7 = v13[5];
  v13[5] = v6;

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (BOOL)_memoryExceptionsListLogsTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  [v6 stringByAppendingPathComponent:@"ReportMemoryExceptionTool_listLogs.txt"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000097F8;
  v13[3] = &unk_1000749A0;
  v13[4] = self;
  v7 = v15 = &v16;
  v14 = v7;
  v8 = [SystemDiagnosticLogAgent _runBlock:v13 withTimeout:a4];
  if (v8 && (v17[3] & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v17 + 24);
      *buf = 67109376;
      v21 = v8;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "RMECacheEnumerator getLogPathsSortedByTime timed out !(%d) or failed to create dest file !(%d)", buf, 0xEu);
    }

    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

- (BOOL)isBTProfileInstalled
{
  if (objc_opt_class())
  {
    v3 = +[MCProfileConnection sharedConnection];
    v4 = [v3 installedProfileIdentifiers];

    if (v4)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = v4;
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v12 + 1) + 8 * i) containsString:{@"bluetooth.logging", v12}])
            {

              v9 = 1;
              goto LABEL_19;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v10 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10003BC9C();
      }
    }
  }

  else
  {
    v4 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT profile SPI not found, assuming not installed", buf, 2u);
    }
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (BOOL)isWifiProfileInstalled
{
  if (objc_opt_class())
  {
    v3 = +[W5Client sharedClient];
    v4 = v3;
    if (v3)
    {
      v12 = 0;
      v5 = [v3 queryDebugConfigurationForPeer:0 error:&v12];
      v6 = v12;
      v7 = [(SystemDiagnosticLogAgent *)self logHandle];
      v8 = v7;
      if (v5)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v9 = [v5 megaWiFiProfile];
          *buf = 134217984;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "W5DebugState: %lu", buf, 0xCu);
        }

        v10 = [v5 megaWiFiProfile] == 1;
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10003BCD0(v6);
        }

        v10 = 0;
      }
    }

    else
    {
      v6 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003BD5C();
      }

      v10 = 0;
    }
  }

  else
  {
    v4 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "W5Client SPI not found, assuming profile not installed", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)coreCaptureConfigTask:(double)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009F78;
  v11[3] = &unk_100074BA8;
  v11[4] = self;
  v11[5] = &v16;
  v11[6] = &v12;
  v4 = [SystemDiagnosticLogAgent _runBlock:v11 withTimeout:a3];
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v6 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v13 + 24);
      v8 = *(v17 + 24);
      *buf = 67109376;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found profile status of wifi: %d, bt: %d", buf, 0xEu);
    }

    xpc_dictionary_set_BOOL(v5, "coreCaptureConfigWifiProfileCheck", *(v13 + 24));
    xpc_dictionary_set_BOOL(v5, "coreCaptureConfigBTProfileCheck", *(v17 + 24));
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003BD90();
    }
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v5;
}

- (BOOL)ASPToolGenericWithTimeout:(double)a3 forFile:(id)a4 andBlock:(id)a5
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000A0EC;
  v14[3] = &unk_100074CC0;
  v15 = a4;
  v16 = self;
  v17 = a5;
  v8 = v17;
  v9 = v15;
  v10 = [SystemDiagnosticLogAgent _runBlock:v14 withTimeout:a3];
  if (!v10)
  {
    v11 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ASPTool task timed out", v13, 2u);
    }
  }

  return v10;
}

- (BOOL)ASPToolSnapshotForDir:(id)a3 withTimeout:(double)a4
{
  v6 = [a3 stringByAppendingPathComponent:@"asptool_snapshot_timesensitive.csv"];
  LOBYTE(self) = [(SystemDiagnosticLogAgent *)self ASPToolGenericWithTimeout:v6 forFile:&stru_100074CE0 andBlock:a4];

  return self;
}

- (BOOL)ASPToolTaskForDir:(id)a3 withTimeout:(double)a4
{
  v6 = [a3 stringByAppendingPathComponent:@"asptool_snapshot.log"];
  LOBYTE(self) = [(SystemDiagnosticLogAgent *)self ASPToolGenericWithTimeout:v6 forFile:&stru_100074D00 andBlock:a4];

  return self;
}

- (BOOL)FDRDiagnosticTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (&_ZhuGeCopyValue)
  {
    v26[0] = v6;
    v26[1] = @"FDRDiagnosticReport.plist";
    v8 = [NSArray arrayWithObjects:v26 count:2];
    v9 = [NSURL fileURLWithPathComponents:v8];

    *v18 = 0;
    v19 = v18;
    v20 = 0x3032000000;
    v21 = sub_100005FB8;
    v22 = sub_100005FC8;
    v23 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A5FC;
    v17[3] = &unk_1000748E0;
    v17[4] = self;
    v17[5] = v18;
    if ([SystemDiagnosticLogAgent _runBlock:v17 withTimeout:a4])
    {
      v10 = *(v19 + 5);
      if (v10)
      {
        v16 = 0;
        v11 = [v10 writeToURL:v9 error:&v16];
        v12 = v16;
        if (v11)
        {
          v13 = [(SystemDiagnosticLogAgent *)self logHandle];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FDRDiagnostic report generated successfully at %@", buf, 0xCu);
          }

          v14 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not write FDRDiagnostic report: %@", buf, 0xCu);
      }
    }

    else
    {
      v13 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ZhuGe SPI timed out", buf, 2u);
      }

      v12 = 0;
    }

    v14 = 0;
LABEL_18:

    _Block_object_dispose(v18, 8);
    goto LABEL_19;
  }

  v9 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ZhuGe SPI not found", v18, 2u);
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (BOOL)coreRepairDiagnosticTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  if (&_CRGenerateRepairReport)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = sub_100005FB8;
    v24 = sub_100005FC8;
    v25 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000AA00;
    v19[3] = &unk_100074908;
    v19[4] = self;
    v19[5] = buf;
    if ([SystemDiagnosticLogAgent _runBlock:v19 withTimeout:a4])
    {
      if (*(v21 + 5))
      {
        v27[0] = v6;
        v27[1] = @"RepairReport.plist";
        v7 = [NSArray arrayWithObjects:v27 count:2];
        v8 = [NSURL fileURLWithPathComponents:v7];

        v9 = *(v21 + 5);
        v18 = 0;
        v10 = [v9 writeToURL:v8 error:&v18];
        v11 = v18;
        v12 = v11;
        if ((v10 & 1) == 0)
        {
          if (v11)
          {
            v13 = [v11 localizedDescription];
          }

          else
          {
            v13 = @"nil";
          }

          v15 = [(SystemDiagnosticLogAgent *)self logHandle];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = v13;
            sub_10003BDF8([(__CFString *)v13 UTF8String], v26, v15);
          }
        }

        goto LABEL_20;
      }

      v8 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003BE40();
      }
    }

    else
    {
      v8 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003BDC4();
      }
    }

    v10 = 0;
LABEL_20:

    _Block_object_dispose(buf, 8);
    goto LABEL_21;
  }

  v14 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CoreRepair SPI not found", buf, 2u);
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (BOOL)tailspinInfoTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  if (&_tailspin_config_create_with_current_state)
  {
    v7 = &_tailspin_config_copy_description == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = [(SystemDiagnosticLogAgent *)self logHandle];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tailspin SPI not found", buf, 2u);
    }

    v11 = 0;
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tailspin info task starting", buf, 2u);
    }

    v28[0] = v6;
    v28[1] = @"tailspin-info.txt";
    v12 = [NSArray arrayWithObjects:v28 count:2];
    v13 = [NSURL fileURLWithPathComponents:v12];

    *buf = 0;
    v25 = buf;
    v26 = 0x2020000000;
    v27 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000AE04;
    v20[3] = &unk_1000749A0;
    v9 = v13;
    v22 = self;
    v23 = buf;
    v21 = v9;
    v14 = [SystemDiagnosticLogAgent _runBlock:v20 withTimeout:a4];
    v15 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Tailspin info task ending", v19, 2u);
    }

    if ((v14 & 1) == 0)
    {
      v16 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Tailspin Info SPI timed out", v19, 2u);
      }
    }

    if ((v25[24] & 1) == 0)
    {
      v17 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Tailspin Info SPI failed to create dest file", v19, 2u);
      }
    }

    if (v14)
    {
      v11 = v25[24];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  return v11 & 1;
}

- (BOOL)tailspinSaveSpiWrapperForReason:(id)a3 forPath:(id)a4 collectAriadne:(BOOL)a5 withTimeout:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(SystemDiagnosticLogAgent *)self logHandle];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!&_tailspin_dump_output_with_options_sync)
  {
    if (v13)
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tailspin SPI not found", &buf, 2u);
    }

    goto LABEL_16;
  }

  if (v13)
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tailspin save task starting", &buf, 2u);
  }

  v14 = open([v11 fileSystemRepresentation], 2562, 420);
  if (v14 == -1)
  {
    v20 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003BF20();
    }

LABEL_16:
    v19 = 0;
    goto LABEL_27;
  }

  v15 = v14;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000B2F4;
  v28[3] = &unk_100074D28;
  v16 = v10;
  v32 = a5;
  v29 = v16;
  v30 = &v33;
  v31 = v15;
  v17 = [SystemDiagnosticLogAgent _runBlock:v28 withTimeout:a6];
  v18 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Tailspin save task ending", &buf, 2u);
  }

  fsync(v15);
  if (v17)
  {
    if (v34[3])
    {
      v19 = 1;
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
      if (fstat(v15, &buf))
      {
        v24 = 0;
      }

      else
      {
        v24 = buf.st_size == 0;
      }

      v19 = !v24;
      if (v24)
      {
        v25 = [(SystemDiagnosticLogAgent *)self logHandle];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing empty tailspin-trace file", v26, 2u);
        }

        unlink([v11 fileSystemRepresentation]);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  close(v15);
  if ((v17 & 1) == 0)
  {
    v21 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Tailspin Save No Symbolicate SPI timed out", &buf, 2u);
    }
  }

  if ((v34[3] & 1) == 0)
  {
    v22 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Tailspin Save No Symbolicate SPI failed to create dest file", &buf, 2u);
    }
  }

  _Block_object_dispose(&v33, 8);
LABEL_27:

  return v19;
}

- (BOOL)tailspinSaveNoSymbolicateTSTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = [a3 stringByAppendingPathComponent:@"tailspin-trace.tailspin"];
  LOBYTE(self) = [(SystemDiagnosticLogAgent *)self tailspinSaveSpiWrapperForReason:@"sysdiagnose" forPath:v6 collectAriadne:1 withTimeout:a4];

  return self;
}

- (id)tailspinAugmentTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = [v6 stringByAppendingPathComponent:@"tailspin-trace-unsymbolicated.tailspin"];
  v8 = [v6 stringByAppendingPathComponent:@"tailspin-trace.tailspin"];

  v9 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tailspin augment task starting", buf, 2u);
  }

  v10 = [(SystemDiagnosticLogAgent *)self tailspinAugmentSpiWrapperForPath:v7 withDestName:v8 collectAriadne:1 withTimeout:a4];
  v11 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Tailspin save task ending", v13, 2u);
  }

  return v10;
}

- (id)tailspinKeychordTaskWithDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  sub_100004C28(v12, 0x400uLL, "tailspin", "no-symbols", "tailspin");
  v7 = [NSString stringWithUTF8String:v12];
  v8 = [v6 stringByAppendingPathComponent:v7];

  if (v8)
  {
    if (![(SystemDiagnosticLogAgent *)self tailspinSaveSpiWrapperForReason:@"tailspin keychord" forPath:v8 collectAriadne:0 withTimeout:a4])
    {
      goto LABEL_8;
    }

    v9 = [v8 stringByReplacingOccurrencesOfString:@"-no-symbols" withString:&stru_100075E38];
    v10 = [(SystemDiagnosticLogAgent *)self tailspinAugmentSpiWrapperForPath:v8 withDestName:v9 collectAriadne:0 withTimeout:a4];

    v8 = v10;
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003BFB0();
    }

    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (BOOL)ASPMagazineTaskForDir:(id)a3 withTimeout:(double)a4
{
  v6 = [a3 stringByAppendingPathComponent:@"asptool_magazine_stats.log"];
  LOBYTE(self) = [(SystemDiagnosticLogAgent *)self ASPToolGenericWithTimeout:v6 forFile:&stru_100074D70 andBlock:a4];

  return self;
}

- (BOOL)_libNotifyTaskAtLocation:(id)a3 andTimeout:(double)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BE08;
  v8[3] = &unk_100074B58;
  v9 = a3;
  v5 = v9;
  v6 = [SystemDiagnosticLogAgent _runBlock:v8 withTimeout:a4];

  return v6;
}

- (BOOL)setUserMode
{
  v3 = getpwnam([@"mobile" UTF8String]);
  if (v3)
  {
    v4 = v3;
    pw_uid = v3->pw_uid;
    if (!pw_uid)
    {
      v9 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003C044();
      }

      goto LABEL_11;
    }

    pw_gid = v4->pw_gid;
  }

  else
  {
    pw_uid = 501;
    pw_gid = 501;
  }

  if (pthread_setugid_np(pw_uid, pw_gid) != -1)
  {
    return 1;
  }

  v8 = *__error();
  v9 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10003C078(v8);
  }

LABEL_11:

  return 0;
}

- (BOOL)setRootMode
{
  v3 = getuid();
  v4 = v3 | getgid();
  v5 = v4 != 0;
  if (v4)
  {
    if (pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B) == -1)
    {
      sub_10003C138(&v8, v9);
    }
  }

  else
  {
    v6 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10003C0F8();
    }
  }

  return v5;
}

- (id)getPreferencesForDomain:(id)a3 withKeys:(id)a4 currentUser:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = @"mobile";
    getpwnam([@"mobile" UTF8String]);
  }

  else
  {
    v10 = kCFPreferencesCurrentUser;
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = kCFPreferencesAnyApplication;
  }

  v12 = CFPreferencesCopyMultiple(v9, v11, v10, kCFPreferencesAnyHost);
  v13 = CFGetTypeID(v12);
  if (v13 == CFDictionaryGetTypeID())
  {
    v14 = [NSDictionary dictionaryWithDictionary:v12];
  }

  else
  {
    v15 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to get preferences: Domain: %@, keys: %@.", &v17, 0x16u);
    }

    v14 = &__NSDictionary0__struct;
  }

  CFRelease(v12);

  return v14;
}

- (BOOL)getPreferences:(id)a3 withTimeout:(double)a4
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C63C;
  v11[3] = &unk_100074C20;
  v11[4] = self;
  v12 = a3;
  v6 = v12;
  v7 = [SystemDiagnosticLogAgent _runBlock:v11 withTimeout:a4];
  if (!v7)
  {
    v8 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preferences did not return in time.", v10, 2u);
    }
  }

  return v7;
}

- (BOOL)osEligibilityDumpToDir:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (&_os_eligibility_dump_sysdiagnose_data_to_dir)
  {
    *buf = 0;
    v18 = buf;
    v19 = 0x2020000000;
    v20 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000C970;
    v13[3] = &unk_100074A80;
    v14 = v6;
    v15 = self;
    v16 = buf;
    if ([SystemDiagnosticLogAgent _runBlock:v13 withTimeout:a4])
    {
      v8 = v18[24];
    }

    else
    {
      v10 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "os eligibility task timed out", v12, 2u);
      }

      v8 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "os eligibility SPI not found", buf, 2u);
    }

    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)getPreferencesInternal:(id)a3 withTimeout:(double)a4
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000CAF4;
  v11[3] = &unk_100074C20;
  v11[4] = self;
  v12 = a3;
  v6 = v12;
  v7 = [SystemDiagnosticLogAgent _runBlock:v11 withTimeout:a4];
  if (!v7)
  {
    v8 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preferences did not return in time.", v10, 2u);
    }
  }

  return v7;
}

- (BOOL)getCloudKitPreferences:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100005FB8;
  v32 = sub_100005FC8;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100005FB8;
  v26 = sub_100005FC8;
  v27 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000CDB0;
  v16[3] = &unk_100074DC0;
  v16[4] = self;
  v17 = @"com.apple.CloudKit";
  v18 = @"BehaviorOptions";
  v19 = &off_100076C70;
  v20 = &v28;
  v21 = &v22;
  if (![SystemDiagnosticLogAgent _runBlock:v16 withTimeout:a4])
  {
    v12 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v13 = "Couldn't retrieve the preferences within the required time";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v15, 2u);
    }

LABEL_9:

    v11 = 0;
    goto LABEL_10;
  }

  v7 = [v29[5] description];
  v8 = sub_100004F98(v6, @"CloudKit_SelectBehaviorOptions_Global.txt", v7);

  v9 = [v23[5] description];
  v10 = v8 & sub_100004F98(v6, @"CloudKit_SelectBehaviorOptions_CurrentUser.txt", v9);

  if ((v10 & 1) == 0)
  {
    v12 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v13 = "Couldn't write CloudKit preferences";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v11 = 1;
LABEL_10:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v11;
}

+ (BOOL)_runDispatchBlock:(id)a3 withTimeout:(double)a4 onQueue:(id)a5
{
  v7 = a3;
  dispatch_async(a5, v7);
  if (a4 == -1.0)
  {
    v8 = -1;
LABEL_5:
    v9 = dispatch_block_wait(v7, v8) == 0;
    goto LABEL_6;
  }

  if (a4 > 0.0)
  {
    v8 = dispatch_time(0, (a4 * 1000000000.0));
    goto LABEL_5;
  }

  v9 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown value for timeout specified. Returning", v11, 2u);
    v9 = 0;
  }

LABEL_6:

  return v9;
}

+ (BOOL)_runBlock:(id)a3 withTimeout:(double)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CFF8;
  block[3] = &unk_100074DE8;
  v11 = a3;
  v6 = v11;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v8 = dispatch_get_global_queue(0, 0);
  LOBYTE(a1) = [a1 _runDispatchBlock:v7 withTimeout:v8 onQueue:a4];

  return a1;
}

- (BOOL)_runBlockForCurrentUser:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = dispatch_queue_create("com.apple.sysdiagnose_helper.userModeQueue", 0);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10000D0F4;
  v14 = &unk_100074E10;
  v15 = self;
  v16 = v6;
  v8 = v6;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v11);
  LOBYTE(self) = [objc_opt_class() _runDispatchBlock:v9 withTimeout:v7 onQueue:{a4, v11, v12, v13, v14, v15}];

  return self;
}

+ (id)stringForReqType:(int)a3
{
  v3 = sub_100004378(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  }

  else
  {
    v5 = @"<UNKNOWN>";
  }

  return v5;
}

- (BOOL)parseLogAgentRequest:(id)a3 outputPath:(id *)a4 timeout:(double *)a5 taskType:(int *)a6 startTimeClockNS:(int64_t *)a7
{
  v12 = a3;
  int64 = xpc_dictionary_get_int64(v12, "taskType");
  v23 = [SystemDiagnosticLogAgent stringForReqType:int64];
  v14 = xpc_dictionary_get_double(v12, "taskTimeout");
  string = xpc_dictionary_get_string(v12, "taskOutputDir");
  if (string || xpc_dictionary_get_BOOL(v12, "taskNoOutputDir"))
  {
    v16 = xpc_dictionary_get_int64(v12, "startTimeClockNS");
    if (!v16)
    {
      v17 = [(SystemDiagnosticLogAgent *)self logHandle];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "sysdiagnose_agent: No sysdiagnoseStartTimeClockNS provided)", buf, 2u);
      }
    }

    v18 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "sysdiagnose_agent: Received message with task type: %@", buf, 0xCu);
    }

    if (string)
    {
      v19 = [NSString stringWithUTF8String:string];
      if (!a4)
      {
LABEL_12:
        if (a5)
        {
          *a5 = v14;
        }

        if (a6)
        {
          *a6 = int64;
        }

        if (a7)
        {
          *a7 = v16;
        }

        v20 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v19 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    v19 = v19;
    *a4 = v19;
    goto LABEL_12;
  }

  v22 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v23;
    v26 = 2080;
    v27 = "taskNoOutputDir";
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "sysdiagnose_agent: No output dir for task type %@, without %s being set", buf, 0x16u);
  }

  v20 = 0;
  v19 = 0;
LABEL_19:

  return v20;
}

@end