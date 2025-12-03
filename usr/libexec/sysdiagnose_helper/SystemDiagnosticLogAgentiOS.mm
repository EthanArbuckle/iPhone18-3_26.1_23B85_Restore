@interface SystemDiagnosticLogAgentiOS
- (BOOL)ASPToolTrace:(id)trace withTimeout:(double)timeout;
- (BOOL)GEAvailabilityTaskWithDir:(id)dir withTimeout:(double)timeout;
- (BOOL)_BTPHYTaskWithTimeout:(double)timeout;
- (BOOL)_basebandTSTriggerWithTimeout:(double)timeout;
- (BOOL)_getSysctls:(id)sysctls withTimeout:(double)timeout;
- (BOOL)_networkRelayTaskWithTimeout:(double)timeout atDirectory:(id)directory;
- (BOOL)_proximityTaskWithTimeout:(double)timeout;
- (BOOL)getAccessibilityPreferences:(id)preferences withTimeout:(double)timeout;
- (BOOL)getKeyboardPreferences:(id)preferences withTimeout:(double)timeout;
- (BOOL)springBoardStateDumpTaskWithTimeout:(double)timeout;
- (BOOL)takeStackshotWithFlags:(unsigned int)flags withTimeout:(double)timeout;
- (id)eSIMSetupTaskWithTimeout:(double)timeout;
- (id)fetchSiriEnrollmentLogsWithTimeout:(double)timeout;
- (id)getLockdownModeState;
- (void)processMessage:(id)message replyWith:(id)with;
@end

@implementation SystemDiagnosticLogAgentiOS

- (BOOL)_proximityTaskWithTimeout:(double)timeout
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = dlopen(0, 2);
  if (!v5)
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "couldn't get handle", buf, 2u);
    }

    goto LABEL_16;
  }

  dlerror();
  v6 = dlsym(v5, "PRCollectLogs");
  if (!v6)
  {
    logHandle2 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Proximity API not found", buf, 2u);
    }

    dlclose(v5);
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  logHandle3 = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Proximity API found", buf, 2u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001D5C;
  v13[3] = &unk_100074878;
  v13[4] = &v15;
  v13[5] = v6;
  if (![SystemDiagnosticLogAgent _runBlock:v13 withTimeout:timeout])
  {
    logHandle4 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Proxmitiy SPI timed out", buf, 2u);
    }
  }

  dlclose(v5);
  v9 = *(v16 + 24);
LABEL_17:
  _Block_object_dispose(&v15, 8);
  return v9 & 1;
}

- (BOOL)springBoardStateDumpTaskWithTimeout:(double)timeout
{
  if (objc_opt_class())
  {
    if ([SystemDiagnosticLogAgent _runBlock:&stru_1000748B8 withTimeout:timeout])
    {
      return 1;
    }

    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003B298();
    }
  }

  else
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003B2CC();
    }
  }

  return 0;
}

- (id)fetchSiriEnrollmentLogsWithTimeout:(double)timeout
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100002034;
  v13 = sub_100002044;
  v14 = &__NSArray0__struct;
  if (objc_opt_class())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000204C;
    v8[3] = &unk_1000748E0;
    v8[4] = self;
    v8[5] = &v9;
    if ([SystemDiagnosticLogAgent _runBlock:v8 withTimeout:timeout])
    {
      goto LABEL_8;
    }

    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003B300();
    }
  }

  else
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003B334();
    }
  }

LABEL_8:
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (BOOL)_BTPHYTaskWithTimeout:(double)timeout
{
  if (&_CoreCaptureControlCreate)
  {
    *buf = 0;
    v12 = buf;
    v13 = 0x2020000000;
    v14 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002284;
    v10[3] = &unk_100074908;
    v10[4] = self;
    v10[5] = buf;
    v4 = [SystemDiagnosticLogAgent _runBlock:v10 withTimeout:timeout];
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Finished corecapture BTPHY SPI", v9, 2u);
    }

    v6 = (v12[24] != 0) & v4;
    _Block_object_dispose(buf, 8);
  }

  else
  {
    logHandle2 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "CoreCapture SPI not available", buf, 2u);
    }

    return 0;
  }

  return v6;
}

- (BOOL)_networkRelayTaskWithTimeout:(double)timeout atDirectory:(id)directory
{
  directoryCopy = directory;
  v7 = directoryCopy;
  if (&_NRDiagnosticSaveNetworkRelayStatusToDirectory)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000025E0;
    v19 = &unk_1000748E0;
    v21 = buf;
    v20 = directoryCopy;
    if ([SystemDiagnosticLogAgent _runBlock:&v16 withTimeout:timeout])
    {
      v8 = [(SystemDiagnosticLogAgent *)self logHandle:v16];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v23[24];
        *v26 = 67109120;
        v27 = v9;
        v10 = "Did NRDiagnosticSaveNetworkRelayStatusToDirectory succeed %d";
        v11 = v8;
        v12 = 8;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, v26, v12);
      }
    }

    else
    {
      v8 = [(SystemDiagnosticLogAgent *)self logHandle:v16];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        v10 = "NRDiagnosticSaveNetworkRelayStatusToDirectory timed out.";
        v11 = v8;
        v12 = 2;
        goto LABEL_10;
      }
    }

    v14 = v23[24];
    _Block_object_dispose(buf, 8);
    goto LABEL_12;
  }

  logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "NetworkRelay SPI not available", buf, 2u);
  }

  v14 = 0;
LABEL_12:

  return v14 & 1;
}

- (id)eSIMSetupTaskWithTimeout:(double)timeout
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100002034;
  v13 = sub_100002044;
  v14 = &__NSArray0__struct;
  if (&_WISServerConsolidateDeviceDiagnostics)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000027B0;
    v7[3] = &unk_100074908;
    v7[4] = self;
    v7[5] = &v9;
    if ([SystemDiagnosticLogAgent _runBlock:v7 withTimeout:timeout])
    {
      goto LABEL_8;
    }

    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003B3E0();
    }
  }

  else
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "eSIM setup SPI not available", buf, 2u);
    }
  }

LABEL_8:
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (BOOL)_basebandTSTriggerWithTimeout:(double)timeout
{
  if (&_PLSysdiagnoseTimeSensitivePhase)
  {
    if ([SystemDiagnosticLogAgent _runBlock:&stru_100074950 withTimeout:timeout])
    {
      return 1;
    }

    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v6 = "PLSysdiagnoseTimeSensitivePhase timed out.";
      v7 = &v8;
      goto LABEL_8;
    }
  }

  else
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v6 = "PLSysdiagnoseTimeSensitivePhase SPI not available";
      v7 = &v9;
LABEL_8:
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  return 0;
}

- (BOOL)GEAvailabilityTaskWithDir:(id)dir withTimeout:(double)timeout
{
  dirCopy = dir;
  [dirCopy stringByAppendingPathComponent:@"GEAvailability.log"];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002C04;
  v12[3] = &unk_1000749A0;
  v12[4] = self;
  v7 = v14 = &v15;
  v13 = v7;
  if ([SystemDiagnosticLogAgent _runBlock:v12 withTimeout:timeout]&& (v16[3] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "GEAvailability task SPI not available, timed out or couldn't create the dest file", v11, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (BOOL)takeStackshotWithFlags:(unsigned int)flags withTimeout:(double)timeout
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003004;
  v5[3] = &unk_1000749C8;
  v5[4] = self;
  flagsCopy = flags;
  return [SystemDiagnosticLogAgent _runBlock:v5 withTimeout:timeout];
}

- (BOOL)ASPToolTrace:(id)trace withTimeout:(double)timeout
{
  v6 = [trace stringByAppendingPathComponent:@"asptool_trace.log"];
  LOBYTE(self) = [(SystemDiagnosticLogAgent *)self ASPToolGenericWithTimeout:v6 forFile:&stru_100074A08 andBlock:timeout];

  return self;
}

- (BOOL)getKeyboardPreferences:(id)preferences withTimeout:(double)timeout
{
  preferencesCopy = preferences;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100002034;
  v33 = sub_100002044;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100002034;
  v27 = sub_100002044;
  v28 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003478;
  v18[3] = &unk_100074A30;
  v18[4] = self;
  v19 = &off_100076C10;
  v21 = &v29;
  v22 = &v23;
  v20 = &off_100076C28;
  v7 = [SystemDiagnosticLogAgent _runBlock:v18 withTimeout:timeout];
  if ((v7 & 1) == 0)
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Couldn't retrieve the preferences within the required time", v17, 2u);
    }
  }

  if ([v30[5] count] || objc_msgSend(v24[5], "count"))
  {
    v9 = [v30[5] description];
    v10 = [@"com.apple.Preferences:\n" stringByAppendingString:v9];

    v11 = [v24[5] description];
    v12 = [@"GlobalPreferences:\n" stringByAppendingString:v11];
    v13 = [v10 stringByAppendingString:v12];
  }

  else
  {
    v13 = @"Could not retrieve keyboard preferences.";
  }

  v14 = sub_100004F98(preferencesCopy, @"Keyboard_Preferences.txt", v13);
  if ((v14 & 1) == 0)
  {
    logHandle2 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Couldn't write keyboard preferences.", v17, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v7 & v14;
}

- (BOOL)getAccessibilityPreferences:(id)preferences withTimeout:(double)timeout
{
  preferencesCopy = preferences;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100002034;
  v30 = sub_100002044;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100002034;
  v24 = sub_100002044;
  v25 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000037B8;
  v16[3] = &unk_100074A58;
  v16[4] = self;
  v17 = &off_100076C40;
  v18 = &v26;
  v19 = &v20;
  v7 = [SystemDiagnosticLogAgent _runBlock:v16 withTimeout:timeout];
  if ((v7 & 1) == 0)
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Could not retrieve accessibility preferences within the required time", buf, 2u);
    }
  }

  if ([v27[5] count])
  {
    v9 = [v27[5] description];
    v10 = [@"com.apple.Accessibility:" stringByAppendingString:v9];
  }

  else
  {
    v10 = @"Could not retrieve accessibility preferences.";
  }

  if ([v21[5] count])
  {
    v11 = [v21[5] description];
    v12 = [(__CFString *)v10 stringByAppendingFormat:@"com.apple.Accessibility.TouchAccommodations:\n%s", [(__CFString *)v11 UTF8String]];

    v10 = v11;
  }

  else
  {
    v12 = [(__CFString *)v10 stringByAppendingString:@"Could not retrieve touch accommodations preferences."];
  }

  v13 = sub_100004F98(preferencesCopy, @"Accessibility_Preferences.txt", v12);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v7 & v13;
}

- (id)getLockdownModeState
{
  v9 = 0;
  v8 = 4;
  v3 = sysctlbyname("security.mac.lockdown_mode_state", &v9, &v8, 0, 0);
  if (v3)
  {
    v4 = v3;
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003B51C(v4, logHandle);
    }

    v6 = 0;
  }

  else
  {
    v6 = [NSString stringWithFormat:@"%s : %d", "security.mac.lockdown_mode_state", v9];
  }

  return v6;
}

- (BOOL)_getSysctls:(id)sysctls withTimeout:(double)timeout
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003A8C;
  v12[3] = &unk_100074A80;
  v12[4] = self;
  sysctlsCopy = sysctls;
  v13 = sysctlsCopy;
  v14 = &v15;
  v7 = [SystemDiagnosticLogAgent _runBlock:v12 withTimeout:timeout];
  if ((v16[3] & 1) == 0)
  {
    logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003B594();
    }
  }

  if (v7)
  {
    v9 = *(v16 + 24);
  }

  else
  {
    logHandle2 = [(SystemDiagnosticLogAgent *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      sub_10003B5C8();
    }

    v9 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v9 & 1;
}

- (void)processMessage:(id)message replyWith:(id)with
{
  messageCopy = message;
  withCopy = with;
  v40 = -1;
  v38 = 0;
  v39 = 0.0;
  v37 = 0;
  LODWORD(logHandle) = [(SystemDiagnosticLogAgent *)self parseLogAgentRequest:messageCopy outputPath:&v37 timeout:&v39 taskType:&v40 startTimeClockNS:&v38];
  v9 = v37;
  v10 = v9;
  if (logHandle)
  {
    v11 = 0;
    v12 = 0;
    LOBYTE(logHandle) = 0;
    switch(v40)
    {
      case 1:
        v13 = [(SystemDiagnosticLogAgentiOS *)self getAccessibilityPreferences:v9 withTimeout:v39];
        goto LABEL_76;
      case 2:
        v13 = [(SystemDiagnosticLogAgent *)self ACLogsTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 4:
        v13 = [(SystemDiagnosticLogAgent *)self ASPToolTaskForDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 5:
        v13 = [(SystemDiagnosticLogAgent *)self ASPMagazineTaskForDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 6:
        v13 = [(SystemDiagnosticLogAgent *)self ASPToolSnapshotForDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 7:
        v13 = [(SystemDiagnosticLogAgentiOS *)self ASPToolTrace:v9 withTimeout:v39];
        goto LABEL_76;
      case 8:
        v13 = [(SystemDiagnosticLogAgent *)self _backgroundPowerTaskForDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 9:
        v13 = [(SystemDiagnosticLogAgentiOS *)self _basebandTSTriggerWithTimeout:v39];
        goto LABEL_76;
      case 10:
        v13 = [(SystemDiagnosticLogAgent *)self batteryHealthTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 11:
        v13 = [(SystemDiagnosticLogAgent *)self batteryUITaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 12:
        v13 = [(SystemDiagnosticLogAgentiOS *)self _BTPHYTaskWithTimeout:v39];
        goto LABEL_76;
      case 13:
        v13 = [(SystemDiagnosticLogAgent *)self getCloudKitPreferences:v9 withTimeout:v39];
        goto LABEL_76;
      case 14:
        v18 = v39;
        selfCopy2 = self;
        v20 = v10;
        v21 = 1;
        goto LABEL_45;
      case 15:
        logHandle = [(SystemDiagnosticLogAgent *)self coreCaptureConfigTask:v39];
        if (!logHandle)
        {
          break;
        }

        xpc_dictionary_set_value(withCopy, "replyDictionary", logHandle);

        v11 = 0;
        v12 = 0;
        goto LABEL_63;
      case 16:
        v18 = v39;
        selfCopy2 = self;
        v20 = v10;
        v21 = 0;
LABEL_45:
        v13 = [(SystemDiagnosticLogAgent *)selfCopy2 coreCaptureTaskWithDir:v20 withTimeout:v21 ofType:v18];
        goto LABEL_76;
      case 17:
        v13 = [(SystemDiagnosticLogAgent *)self coreRepairDiagnosticTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 19:
        v13 = [(SystemDiagnosticLogAgent *)self DSCSYMTaskForDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 21:
        v14 = [(SystemDiagnosticLogAgentiOS *)self eSIMSetupTaskWithTimeout:v39];
        goto LABEL_52;
      case 22:
        v14 = [(SystemDiagnosticLogAgent *)self excResourcePathsWithTimeout:v39];
        goto LABEL_52;
      case 23:
        v13 = [(SystemDiagnosticLogAgent *)self FDRDiagnosticTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 25:
        v13 = [(SystemDiagnosticLogAgentiOS *)self GEAvailabilityTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 27:
        v13 = [(SystemDiagnosticLogAgent *)self HIDCrashlogsTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 28:
        v14 = [(SystemDiagnosticLogAgent *)self intelligencePlatformTaskWithDir:v9 withTimeout:v39];
        goto LABEL_52;
      case 29:
        v13 = [(SystemDiagnosticLogAgentiOS *)self getKeyboardPreferences:v9 withTimeout:v39];
        goto LABEL_76;
      case 30:
        v13 = [(SystemDiagnosticLogAgent *)self _libNotifyTaskAtLocation:v9 andTimeout:v39];
        goto LABEL_76;
      case 31:
        v14 = [(SystemDiagnosticLogAgent *)self _memoryExceptionsTaskWithTimeout:v39];
        goto LABEL_52;
      case 32:
        v13 = [(SystemDiagnosticLogAgent *)self _memoryExceptionsListLogsTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 33:
        v13 = [(SystemDiagnosticLogAgentiOS *)self _networkRelayTaskWithTimeout:v9 atDirectory:v39];
        goto LABEL_76;
      case 34:
        v13 = [(SystemDiagnosticLogAgent *)self osEligibilityDumpToDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 35:
        v13 = [(SystemDiagnosticLogAgent *)self PersonalizationTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 37:
        v13 = [(SystemDiagnosticLogAgent *)self _powerTaskForDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 38:
        v13 = [(SystemDiagnosticLogAgent *)self getPreferences:v9 withTimeout:v39];
        goto LABEL_76;
      case 39:
        v13 = [(SystemDiagnosticLogAgent *)self getPreferencesInternal:v9 withTimeout:v39];
        goto LABEL_76;
      case 40:
        v13 = [(SystemDiagnosticLogAgent *)self proactiveInputPredictionsTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 41:
        v13 = [(SystemDiagnosticLogAgent *)self profileAccessTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 43:
        v13 = [(SystemDiagnosticLogAgentiOS *)self _proximityTaskWithTimeout:v39];
        goto LABEL_76;
      case 44:
        goto LABEL_78;
      case 45:
        v13 = [(SystemDiagnosticLogAgent *)self RRDTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 46:
        v13 = [(SystemDiagnosticLogAgent *)self runningBoardTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 47:
        v14 = [(SystemDiagnosticLogAgentiOS *)self fetchSiriEnrollmentLogsWithTimeout:v39];
LABEL_52:
        v11 = v14;
        LOBYTE(logHandle) = 0;
        v12 = 0;
        if (v14)
        {
          goto LABEL_53;
        }

        goto LABEL_78;
      case 48:
        v13 = [(SystemDiagnosticLogAgentiOS *)self springBoardStateDumpTaskWithTimeout:v39];
        goto LABEL_76;
      case 49:
        v15 = v39;
        selfCopy4 = self;
        v17 = 0x8000;
        goto LABEL_47;
      case 50:
        v15 = v39;
        selfCopy4 = self;
        v17 = 0;
LABEL_47:
        v13 = [(SystemDiagnosticLogAgentiOS *)selfCopy4 takeStackshotWithFlags:v17 withTimeout:v15];
        goto LABEL_76;
      case 51:
        v13 = [(SystemDiagnosticLogAgentiOS *)self _getSysctls:v9 withTimeout:v39];
        goto LABEL_76;
      case 56:
        v13 = [(SystemDiagnosticLogAgent *)self tailspinInfoTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 57:
        v12 = [(SystemDiagnosticLogAgent *)self tailspinKeychordTaskWithDir:v9 withTimeout:v39];
        LOBYTE(logHandle) = 0;
        goto LABEL_70;
      case 58:
        v22 = [v9 stringByAppendingPathComponent:@"sysdiagnose_logarchive_timeout_nosymbols.tailspin"];

        v23 = v39;
        v24 = @"logarchive timeout";
        goto LABEL_68;
      case 59:
        v22 = [v9 stringByAppendingPathComponent:@"sysdiagnose_outputdir_timeout_nosymbols.tailspin"];

        v23 = v39;
        v24 = @"Output Dir timeout";
LABEL_68:
        if ([(SystemDiagnosticLogAgent *)self tailspinSaveSpiWrapperForReason:v24 forPath:v22 collectAriadne:1 withTimeout:v23])
        {
          v12 = v22;
          LOBYTE(logHandle) = 1;
          v10 = v12;
LABEL_70:
          if (v12)
          {
            v42 = v12;
            v11 = [NSArray arrayWithObjects:&v42 count:1];
            if (v11)
            {
LABEL_53:
              v25 = xpc_array_create(0, 0);
              if ([v11 count])
              {
                v34 = 0u;
                v35 = 0u;
                v32 = 0u;
                v33 = 0u;
                v26 = v11;
                v27 = [v26 countByEnumeratingWithState:&v32 objects:v41 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v33;
                  do
                  {
                    for (i = 0; i != v28; i = i + 1)
                    {
                      if (*v33 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v31 = *(*(&v32 + 1) + 8 * i);
                      xpc_array_set_string(v25, 0xFFFFFFFFFFFFFFFFLL, [v31 fileSystemRepresentation]);
                    }

                    v28 = [v26 countByEnumeratingWithState:&v32 objects:v41 count:16];
                  }

                  while (v28);
                }
              }

              xpc_dictionary_set_value(withCopy, "resultPaths", v25);

LABEL_63:
              LOBYTE(logHandle) = 1;
            }
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
          v12 = 0;
          LOBYTE(logHandle) = 0;
          v10 = v22;
        }

        goto LABEL_78;
      case 60:
        v13 = [(SystemDiagnosticLogAgent *)self tailspinSaveNoSymbolicateTSTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 61:
        v13 = [(SystemDiagnosticLogAgent *)self timezoneTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 62:
        v13 = [(SystemDiagnosticLogAgent *)self trialTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 65:
        v13 = [(SystemDiagnosticLogAgent *)self unifiedAssetTaskWithDir:v9 withTimeout:v39];
        goto LABEL_76;
      case 66:
        v13 = [(SystemDiagnosticLogAgent *)self centauriTaskWithDir:v9 withTimeout:messageCopy withRequest:v39];
LABEL_76:
        LOBYTE(logHandle) = v13;
        break;
      default:
        logHandle = [(SystemDiagnosticLogAgent *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Not a valid request type for sysdiagnose_agent", buf, 2u);
        }

        v11 = 0;
        v12 = 0;
        LOBYTE(logHandle) = 0;
        goto LABEL_78;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_78:
  xpc_dictionary_set_BOOL(withCopy, "result", logHandle);
}

@end