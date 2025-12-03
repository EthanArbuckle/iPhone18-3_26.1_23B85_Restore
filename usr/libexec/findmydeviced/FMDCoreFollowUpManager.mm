@interface FMDCoreFollowUpManager
+ (FMDCoreFollowUpManager)sharedInstance;
- (id)_getDeviceClassesFromCoverage:(unint64_t)coverage;
- (void)_forceTheftAndLossCFU;
- (void)_getTheftAndLossFollowUpStringsWithCompletion:(id)completion;
- (void)_handleTheftAndLossReminderBackgroundTask;
- (void)_registerTheftAndLossCFUBackgroundTask;
- (void)clearTheftAndLossCFU;
- (void)handleNDOCoverageUpdate;
- (void)registerAndSubmitBGSTForFirstUnlock;
- (void)requestTheftAndLossCFU:(unint64_t)u;
- (void)submitTheftAndLossReminderBackgroundTask:(id)task;
@end

@implementation FMDCoreFollowUpManager

+ (FMDCoreFollowUpManager)sharedInstance
{
  if (qword_100314690 != -1)
  {
    sub_10022AA78();
  }

  v3 = qword_100314688;

  return v3;
}

- (id)_getDeviceClassesFromCoverage:(unint64_t)coverage
{
  v4 = +[FMDSystemConfig sharedInstance];
  deviceClass = [v4 deviceClass];

  if (coverage <= 2)
  {
    if (coverage == 1)
    {
      v6 = deviceClass - 1;
      if (deviceClass - 1) < 6 && ((0x2Bu >> v6))
      {
        v7 = off_1002CF800;
        return v7[v6];
      }
    }

    else if (coverage == 2)
    {
      return @"Watch";
    }
  }

  else
  {
    switch(coverage)
    {
      case 3uLL:
        v6 = deviceClass - 1;
        if (deviceClass - 1) < 6 && ((0x2Bu >> v6))
        {
          v7 = off_1002CF860;
          return v7[v6];
        }

        break;
      case 4uLL:
        return @"Watches";
      case 5uLL:
        v6 = deviceClass - 1;
        if (deviceClass - 1) < 6 && ((0x2Bu >> v6))
        {
          v7 = off_1002CF830;
          return v7[v6];
        }

        break;
    }
  }

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10022AAD0();
  }

  return 0;
}

- (void)_forceTheftAndLossCFU
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10017A4F8;
  v2[3] = &unk_1002CF748;
  v2[4] = self;
  [(FMDCoreFollowUpManager *)self _getTheftAndLossFollowUpStringsWithCompletion:v2];
}

- (void)_getTheftAndLossFollowUpStringsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[FMDSharedConfigurationManager sharedInstance];
  serialNumber = [(FMDCoreFollowUpManager *)self serialNumber];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017A7B8;
  v8[3] = &unk_1002CF770;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v5 getTheftAndLossCoverageWithSerialNumber:serialNumber timeout:v8 completion:120.0];
}

- (void)_handleTheftAndLossReminderBackgroundTask
{
  v3 = +[FMDSharedConfiguration sharedInstance];
  readFindMySignOutTimeFromFile = [v3 readFindMySignOutTimeFromFile];

  if (readFindMySignOutTimeFromFile)
  {

    [(FMDCoreFollowUpManager *)self _forceTheftAndLossCFU];
  }

  else
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = @"com.apple.findmy.theftandlosscfu";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Task %@ ran but there's no record of a last Find My iPhone Sign out", &v6, 0xCu);
    }
  }
}

- (void)submitTheftAndLossReminderBackgroundTask:(id)task
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017AA6C;
  v5[3] = &unk_1002CF748;
  taskCopy = task;
  v4 = taskCopy;
  [(FMDCoreFollowUpManager *)self _getTheftAndLossFollowUpStringsWithCompletion:v5];
}

- (void)_registerTheftAndLossCFUBackgroundTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = [v3 taskRequestForIdentifier:@"com.apple.findmy.theftandlosscfu"];

  if (v4)
  {
    readFindMySignOutTimeFromFile = sub_100002880();
    if (os_log_type_enabled(readFindMySignOutTimeFromFile, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = @"com.apple.findmy.theftandlosscfu";
      _os_log_impl(&_mh_execute_header, readFindMySignOutTimeFromFile, OS_LOG_TYPE_DEFAULT, "%@ already submitted", buf, 0xCu);
    }
  }

  else
  {
    v6 = +[FMDSharedConfiguration sharedInstance];
    readFindMySignOutTimeFromFile = [v6 readFindMySignOutTimeFromFile];

    if (readFindMySignOutTimeFromFile)
    {
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = readFindMySignOutTimeFromFile;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Last FMiP signout: %@", buf, 0xCu);
      }

      v8 = +[BGSystemTaskScheduler sharedScheduler];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10017AFCC;
      v14[3] = &unk_1002CF798;
      v14[4] = self;
      [v8 registerForTaskWithIdentifier:@"com.apple.findmy.theftandlosscfu" usingQueue:0 launchHandler:v14];

      v9 = +[FMDSharedConfiguration sharedInstance];
      localeString = [v9 localeString];

      v11 = +[FMDSharedConfigurationManager sharedInstance];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10017B020;
      v12[3] = &unk_1002CE320;
      v12[4] = self;
      readFindMySignOutTimeFromFile = readFindMySignOutTimeFromFile;
      v13 = readFindMySignOutTimeFromFile;
      [v11 downloadSharedConfigurationWithLocale:localeString reply:v12];
    }
  }
}

- (void)registerAndSubmitBGSTForFirstUnlock
{
  v3 = +[FMDSharedConfiguration sharedInstance];
  readFindMySignOutTimeFromFile = [v3 readFindMySignOutTimeFromFile];

  if (readFindMySignOutTimeFromFile)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = readFindMySignOutTimeFromFile;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User signed out of FMIP %@", buf, 0xCu);
    }

    v6 = +[BGSystemTaskScheduler sharedScheduler];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10017B300;
    v28[3] = &unk_1002CF798;
    v28[4] = self;
    v7 = [v6 registerForTaskWithIdentifier:@"com.apple.findmy.theftandlosscfu.firstunlock" usingQueue:0 launchHandler:v28];

    if (v7)
    {
      v8 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.findmy.theftandlosscfu.firstunlock"];
      [v8 setRequiresNetworkConnectivity:1];
      [v8 setRequiresExternalPower:0];
      [v8 setScheduleAfter:0.0];
      [v8 setPriority:2];
      [v8 setRequiresProtectionClass:4];
      v9 = +[BGSystemTaskScheduler sharedScheduler];
      v27 = 0;
      v10 = [v9 submitTaskRequest:v8 error:&v27];

      v11 = sub_100002880();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = @"com.apple.findmy.theftandlosscfu.firstunlock";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Submitted task %@ to run after first unlock", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10022AD9C(v12, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    else
    {
      v8 = sub_100002880();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10022AD24(v8, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }
}

- (void)requestTheftAndLossCFU:(unint64_t)u
{
  if (u <= 2)
  {
    if (u == 1)
    {
      v9 = +[FMDSharedConfigurationManager sharedInstance];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10017B56C;
      v12[3] = &unk_1002CF7C0;
      v12[4] = self;
      [v9 getTheftAndLossCoverageWithSerialNumber:0 completion:v12];

      return;
    }

    if (u != 2)
    {
      goto LABEL_14;
    }

LABEL_10:
    v5 = +[FMDSystemConfig sharedInstance];
    unlockState = [v5 unlockState];

    if (unlockState == 1)
    {
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Before first unlock. Submit reminder TnL task.", v11, 2u);
      }

      [(FMDCoreFollowUpManager *)self registerAndSubmitBGSTForFirstUnlock];
    }

    else
    {
      [(FMDCoreFollowUpManager *)self _registerTheftAndLossCFUBackgroundTask];
    }

    return;
  }

  if (u != 3)
  {
    if (u != 4)
    {
LABEL_14:
      v8 = sub_100002880();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10022AE14();
      }

      return;
    }

    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "First unlock. Register for TnL CFU.", v11, 2u);
    }

    goto LABEL_10;
  }

  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User signed out, clearing CFU", v11, 2u);
  }

  [(FMDCoreFollowUpManager *)self clearTheftAndLossCFU];
}

- (void)clearTheftAndLossCFU
{
  v2 = +[FMDSharedConfigurationManager sharedInstance];
  [v2 clearTheftAndLossCFUWithCompletion:&stru_1002CF7E0];

  v3 = +[FMDSharedConfiguration sharedInstance];
  [v3 clearFindMySignOutTimeFile];
}

- (void)handleNDOCoverageUpdate
{
  v3 = +[FMDSharedConfigurationManager sharedInstance];
  serialNumber = [(FMDCoreFollowUpManager *)self serialNumber];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017B840;
  v5[3] = &unk_1002CF7C0;
  v5[4] = self;
  [v3 getTheftAndLossCoverageWithSerialNumber:serialNumber completion:v5];
}

@end