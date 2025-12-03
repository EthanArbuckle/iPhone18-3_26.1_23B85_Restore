@interface FMDAccessoryPlaySoundAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDAccessoryPlaySoundAction)initWithAccessory:(id)accessory accessoryRegistry:(id)registry channels:(id)channels;
- (FMDAccessoryRegistry)accessoryRegistry;
- (NSNumber)inEarDetectionTimeout;
- (NSNumber)timeout;
- (id)commandStatusForInternalAccessoryAudioSafetyStatus:(unint64_t)status;
- (void)_executePlaySoundUsingExtensions;
- (void)_playSoundEnd:(id)end withCode:(int64_t)code;
- (void)_playSoundNow:(id)now;
- (void)_stopDiscoveryForExtAccessory;
- (void)accessoryDidUpdate:(id)update;
- (void)cancelTimer;
- (void)dealloc;
- (void)discardEarlyDiscovery;
- (void)executePlaySound;
- (void)notifyCompletionWithStatus:(id)status;
- (void)runWithCompletion:(id)completion;
- (void)setBluetoothManager:(id)manager;
- (void)stopSoundFromUnexpectedPanning;
- (void)terminate;
- (void)willCancelAction;
@end

@implementation FMDAccessoryPlaySoundAction

- (FMDAccessoryPlaySoundAction)initWithAccessory:(id)accessory accessoryRegistry:(id)registry channels:(id)channels
{
  accessoryCopy = accessory;
  registryCopy = registry;
  channelsCopy = channels;
  v15.receiver = self;
  v15.super_class = FMDAccessoryPlaySoundAction;
  v11 = [(FMDAccessoryPlaySoundAction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(FMDAccessoryPlaySoundAction *)v11 setAccessory:accessoryCopy];
    [(FMDAccessoryPlaySoundAction *)v12 setAccessoryRegistry:registryCopy];
    [(FMDAccessoryPlaySoundAction *)v12 setChannels:channelsCopy];
    [(FMDAccessoryPlaySoundAction *)v12 setBypassInEarCheck:0];
    [(FMDAccessoryPlaySoundAction *)v12 setForceConnection:1];
    [(FMDAccessoryPlaySoundAction *)v12 setPlayingSound:0];
    [(FMDAccessoryPlaySoundAction *)v12 setTerminated:0];
    v13 = dispatch_queue_create("FMDAccessoryPlaySoundActionQueue", 0);
    [(FMDAccessoryPlaySoundAction *)v12 setSerialQueue:v13];
  }

  return v12;
}

- (void)setBluetoothManager:(id)manager
{
  managerCopy = manager;
  accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
  category = [accessory category];

  if (category != 3)
  {
    objc_storeStrong(&self->_bluetoothManager, manager);
    if (managerCopy)
    {
      earlyDiscovery = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];

      if (!earlyDiscovery)
      {
        newDiscovery = [managerCopy newDiscovery];
        [(FMDAccessoryPlaySoundAction *)self setEarlyDiscovery:newDiscovery];

        v10 = sub_100002880();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          earlyDiscovery2 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
          v14 = 134218242;
          selfCopy = self;
          v16 = 2112;
          v17 = earlyDiscovery2;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(0x%lX) - earlyDiscovery %@", &v14, 0x16u);
        }

        earlyDiscovery3 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
        duration = [(FMDAccessoryPlaySoundAction *)self duration];
        [duration doubleValue];
        [earlyDiscovery3 startDiscoveryForDuration:?];
      }
    }
  }
}

- (void)willCancelAction
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) will cancel.", &v4, 0xCu);
  }

  [(FMDAccessoryPlaySoundAction *)self notifyCompletionWithStatus:&off_1002E7A50];
  [(FMDAccessoryPlaySoundAction *)self terminate];
  [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
}

- (NSNumber)timeout
{
  if (self->_timeout)
  {
    return self->_timeout;
  }

  else
  {
    return &off_1002E7D50;
  }
}

- (NSNumber)inEarDetectionTimeout
{
  if (self->_inEarDetectionTimeout)
  {
    return self->_inEarDetectionTimeout;
  }

  else
  {
    return &off_1002E7D60;
  }
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:@"FMDAccessoryPlaySoundActionActivity"];

  [(FMDAccessoryPlaySoundAction *)self setCompletion:completionCopy];
  timeout = [(FMDAccessoryPlaySoundAction *)self timeout];
  [timeout doubleValue];
  v8 = v7;

  v9 = [NSDate dateWithTimeIntervalSinceNow:v8];
  [(FMDAccessoryPlaySoundAction *)self setTimeoutDate:v9];

  if (v8 >= 0.0)
  {
    objc_initWeak(&location, self);
    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      selfCopy3 = self;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) will timeout after %f", buf, 0x16u);
    }

    v13 = [FMDispatchTimer alloc];
    v14 = &_dispatch_main_q;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10014C940;
    v25[3] = &unk_1002CD288;
    objc_copyWeak(&v26, &location);
    v25[4] = self;
    v15 = [v13 initWithQueue:&_dispatch_main_q timeout:v25 completion:v8];
    [(FMDAccessoryPlaySoundAction *)self setTimeoutTimer:v15];

    timeoutTimer = [(FMDAccessoryPlaySoundAction *)self timeoutTimer];
    [timeoutTimer start];

    bluetoothManager = [(FMDAccessoryPlaySoundAction *)self bluetoothManager];
    newDiscovery = [bluetoothManager newDiscovery];
    [(FMDAccessoryPlaySoundAction *)self setDiscovery:newDiscovery];

    discovery = [(FMDAccessoryPlaySoundAction *)self discovery];
    duration = [(FMDAccessoryPlaySoundAction *)self duration];
    [duration doubleValue];
    [discovery startDiscoveryForDuration:?];

    discovery2 = [(FMDAccessoryPlaySoundAction *)self discovery];
    LODWORD(discovery) = discovery2 == 0;

    if (discovery)
    {
      v22 = sub_100002880();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10022767C();
      }
    }

    v23 = sub_100002880();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      discovery3 = [(FMDAccessoryPlaySoundAction *)self discovery];
      *buf = 134218242;
      selfCopy3 = self;
      v30 = 2112;
      v31 = *&discovery3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(0x%lX) - init newDiscovery %@", buf, 0x16u);
    }

    [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
    [(FMDAccessoryPlaySoundAction *)self executePlaySound];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) the given command expired before starting.", buf, 0xCu);
    }

    v11 = [NSNumber numberWithInteger:qword_100312B18];
    [(FMDAccessoryPlaySoundAction *)self notifyCompletionWithStatus:v11];

    [(FMDAccessoryPlaySoundAction *)self terminate];
  }
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)executePlaySound
{
  objc_initWeak(&location, self);
  serialQueue = [(FMDAccessoryPlaySoundAction *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014CC10;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_stopDiscoveryForExtAccessory
{
  accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
  if (accessory)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      statusController = [(FMDAccessoryPlaySoundAction *)self statusController];

      if (statusController)
      {
        v4 = +[FMDExtConfigurationRegistry sharedInstance];
        accessoryType = [accessory accessoryType];
        v6 = [v4 configForAccessoryType:accessoryType];

        v7 = [v6 infoForFeature:@"availability"];
        statusController2 = [(FMDAccessoryPlaySoundAction *)self statusController];
        accessoryIdentifier = [accessory accessoryIdentifier];
        stringValue = [accessoryIdentifier stringValue];
        [statusController2 stopDiscoveryForAccessory:stringValue info:v7 withCompletion:&stru_1002CE2F8];
      }
    }
  }
}

- (void)_executePlaySoundUsingExtensions
{
  v3 = sub_10017DBC8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSDate date];
    timeoutDate = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
    [timeoutDate timeIntervalSinceNow];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "started at time = %@ with timeout = %f", buf, 0x16u);
  }

  accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
  if (accessory)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessoryIdentifier = [accessory accessoryIdentifier];
      stringValue = [accessoryIdentifier stringValue];

      v9 = +[FMDExtConfigurationRegistry sharedInstance];
      accessoryType = [accessory accessoryType];
      v11 = [v9 configForAccessoryType:accessoryType];

      v81 = [v11 flavorForFeature:@"sound"];
      v75 = [v11 flavorForFeature:@"availability"];
      v12 = [v11 flavorForFeature:@"connection"];
      accessoryRegistry = [(FMDAccessoryPlaySoundAction *)self accessoryRegistry];
      v78 = [v11 infoForFeature:@"sound"];
      v76 = [v11 infoForFeature:@"availability"];
      group = dispatch_group_create();
      if (!v12 || !v81)
      {
        v22 = sub_10017DBC8();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1002279E0();
        }

        [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Unssuported device" withCode:qword_100312B30];
        goto LABEL_74;
      }

      channels = [(FMDAccessoryPlaySoundAction *)self channels];
      v14 = [channels count] == 0;

      if (v14)
      {
        [(FMDAccessoryPlaySoundAction *)self cancelTimer];
        v23 = sub_10017DBC8();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          name = [accessory name];
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = name;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "PlaySoundAction (0x%lX) Stopping sound for accessory %@", buf, 0x16u);
        }

        v25 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"sound" flavor:v81];
        if (v25)
        {
          channels2 = [(FMDAccessoryPlaySoundAction *)self channels];
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3221225472;
          v105[2] = sub_10014ECA8;
          v105[3] = &unk_1002CD4C8;
          v105[4] = self;
          [accessoryRegistry updateAccessory:accessory playbackChannels:channels2 completion:v105];

          v27 = sub_10017DBC8();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v25;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "daemon stop sound controller = %@", buf, 0xCu);
          }

          rampDownDuration = [(FMDAccessoryPlaySoundAction *)self rampDownDuration];
          [rampDownDuration doubleValue];
          v30 = v29;
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_10014ED10;
          v102[3] = &unk_1002CE320;
          v103 = accessory;
          selfCopy = self;
          [v25 stopSoundForAccessory:stringValue info:v78 rampDownDuration:v102 withCompletion:v30];
        }

        else
        {
          v31 = sub_10017DBC8();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_1002279A4();
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"unable to get sound controller" withCode:qword_100312B30];
        }

        goto LABEL_74;
      }

      v98 = 0;
      v99 = &v98;
      v100 = 0x2020000000;
      v101 = [accessory connectionState] != 0;
      if ((v99[3] & 1) == 0 && [(FMDAccessoryPlaySoundAction *)self forceConnection])
      {
        v15 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"connection" flavor:v12];
        if (!v15)
        {
          v32 = sub_10017DBC8();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            name2 = [accessory name];
            sub_100227848(name2, buf, v32);
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Not able to get connectionController" withCode:qword_100312B30];
          goto LABEL_73;
        }

        v16 = v15;
        dispatch_group_enter(group);
        v17 = [v11 infoForFeature:@"connection"];
        v95[0] = _NSConcreteStackBlock;
        v95[1] = 3221225472;
        v95[2] = sub_10014ED80;
        v95[3] = &unk_1002CE348;
        v97 = &v98;
        v18 = group;
        v96 = v18;
        [v16 forceConnectToAccessory:stringValue info:v17 withCompletion:v95];
        v74 = v16;

        timeoutDate2 = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
        [timeoutDate2 timeIntervalSinceNow];
        v21 = v20;

        if (v21 < 0.0)
        {
          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"timeout occured before we can try to connect" withCode:qword_100312B18];

LABEL_72:
          goto LABEL_73;
        }

        v34 = dispatch_time(0, (v21 * 1000000000.0));
        if (dispatch_group_wait(v18, v34))
        {
          v35 = sub_10017DBC8();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_1002277D8();
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"timeout occured before we can connect" withCode:qword_100312B18];
          goto LABEL_72;
        }
      }

      if ((v99[3] & 1) == 0)
      {
        [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Unable to Connect" withCode:qword_100312B18];
LABEL_73:
        _Block_object_dispose(&v98, 8);
LABEL_74:

        goto LABEL_75;
      }

      v74 = [v11 flavorForFeature:@"safetyAlert"];
      v91 = 0;
      v92 = &v91;
      v93 = 0x2020000000;
      v94 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v111 = sub_10000A9F4;
      v112 = sub_100002AC4;
      v113 = 0;
      if ([(FMDAccessoryPlaySoundAction *)self bypassInEarCheck])
      {
LABEL_36:
        *(v92 + 24) = 1;
        v36 = sub_10017DBC8();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v106 = 0;
          v37 = "warning safety alert disabled";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, v106, 2u);
          goto LABEL_46;
        }

        goto LABEL_46;
      }

      v38 = +[FMSystemInfo sharedInstance];
      if ([v38 isInternalBuild])
      {
        v39 = [FMPreferencesUtil BOOLForKey:@"DisableInEarCheck" inDomain:kFMDNotBackedUpPrefDomain];

        if (v39)
        {
          goto LABEL_36;
        }
      }

      else
      {
      }

      if ([v74 isEqualToString:@"ALWAYS"])
      {
        *(v92 + 24) = 0;
        v36 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = @"ALWAYS";
        goto LABEL_46;
      }

      if (v74)
      {
        v36 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"safetyAlert" flavor:?];
        if (!v36)
        {
          v69 = sub_10017DBC8();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            name3 = [accessory name];
            sub_100227910(name3, v106, v69);
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Not safe to play" withCode:qword_100312B30];
          goto LABEL_71;
        }

        dispatch_group_enter(group);
        v63 = [v11 infoForFeature:@"safetyAlert"];
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_10014EDF0;
        v87[3] = &unk_1002CE370;
        v89 = &v91;
        v90 = buf;
        v73 = group;
        v88 = v73;
        [v36 safetyAlertForAccessory:stringValue info:v63 withCompletion:v87];

        timeoutDate3 = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
        [timeoutDate3 timeIntervalSinceNow];
        v66 = v65;

        v67 = sub_10017DBC8();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *v106 = 134217984;
          *v107 = v66;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "safety check timeout = %f", v106, 0xCu);
        }

        if (v66 >= 0.0)
        {
          v71 = dispatch_time(0, (v66 * 1000000000.0));
          if (!dispatch_group_wait(v73, v71))
          {

            goto LABEL_46;
          }

          v72 = sub_10017DBC8();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            sub_1002278A0();
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"timeout occured while doing safety check" withCode:qword_100312B18];
        }

        else
        {
          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"timeout occured before we can try to check safety status" withCode:qword_100312B18];
        }

        channels3 = v88;
        goto LABEL_57;
      }

      *(v92 + 24) = 1;
      v36 = sub_10017DBC8();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 0;
        v37 = "warning safet alert feature not found";
        goto LABEL_38;
      }

LABEL_46:

      if ((v92[3] & 1) == 0)
      {
        v59 = sub_10017DBC8();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = *(v99 + 24);
          v61 = *(v92 + 24);
          v62 = *(*&buf[8] + 40);
          *v106 = 67109634;
          *v107 = v60;
          *&v107[4] = 1024;
          *&v107[6] = v61;
          v108 = 2112;
          v109 = v62;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "returning playing sound connected = %d safe = %d safetyAlertType = %@", v106, 0x18u);
        }

        [(FMDAccessoryPlaySoundAction *)self setSafetyAlertType:*(*&buf[8] + 40)];
        [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Not safe to play" withCode:qword_100312B28];
        goto LABEL_71;
      }

      v40 = sub_10017DBC8();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(v99 + 24);
        v42 = *(v92 + 24);
        v43 = *(*&buf[8] + 40);
        *v106 = 67109634;
        *v107 = v41;
        *&v107[4] = 1024;
        *&v107[6] = v42;
        v108 = 2112;
        v109 = v43;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "playing sound with connected = %d safe = %d safetyAlertType = %@", v106, 0x18u);
      }

      v36 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"sound" flavor:v81];
      statusController = [(FMDAccessoryPlaySoundAction *)self statusController];
      v45 = statusController == 0;

      if (v45)
      {
        v46 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"availability" flavor:v75 withDelegate:accessoryRegistry];
        [(FMDAccessoryPlaySoundAction *)self setStatusController:v46];
      }

      statusController2 = [(FMDAccessoryPlaySoundAction *)self statusController];
      duration = [(FMDAccessoryPlaySoundAction *)self duration];
      [duration doubleValue];
      [statusController2 startDiscoveryForAccessory:stringValue duration:v76 info:&stru_1002CE390 withCompletion:?];

      if (!v36)
      {
        v68 = sub_10017DBC8();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_100227968();
        }

        [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"unable to get sound controller" withCode:qword_100312B30];
        goto LABEL_70;
      }

      channels3 = [(FMDAccessoryPlaySoundAction *)self channels];
      v50 = sub_10017DBC8();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 138412290;
        *v107 = channels3;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "channel Array = %@", v106, 0xCu);
      }

      objc_initWeak(&location, self);
      v51 = sub_10017DBC8();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 138412290;
        *v107 = v36;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "daemon play sound controller = %@", v106, 0xCu);
      }

      [(FMDAccessoryPlaySoundAction *)self setPlaySoundRetryCounter:[(FMDAccessoryPlaySoundAction *)self playSoundRetryCounter]+ 1];
      duration2 = [(FMDAccessoryPlaySoundAction *)self duration];
      [duration2 doubleValue];
      v54 = v53;
      rampDownDuration2 = [(FMDAccessoryPlaySoundAction *)self rampDownDuration];
      [rampDownDuration2 doubleValue];
      v57 = v56;
      channels4 = [(FMDAccessoryPlaySoundAction *)self channels];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_10014EFB4;
      v82[3] = &unk_1002CE3E0;
      v82[4] = self;
      objc_copyWeak(&v85, &location);
      v83 = accessoryRegistry;
      v84 = accessory;
      [v36 playSoundForAccessory:stringValue info:v78 duration:channels4 rampUpDuration:v82 channels:v54 withCompletion:v57];

      objc_destroyWeak(&v85);
      objc_destroyWeak(&location);
LABEL_57:

LABEL_70:
LABEL_71:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v91, 8);
      goto LABEL_72;
    }
  }

LABEL_75:
}

- (void)_playSoundEnd:(id)end withCode:(int64_t)code
{
  endCopy = end;
  v7 = sub_10017DBC8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
    name = [accessory name];
    v11 = 138412546;
    v12 = name;
    v13 = 2112;
    v14 = endCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "play sound failed for %@ with %@", &v11, 0x16u);
  }

  [(FMDAccessoryPlaySoundAction *)self cancelTimer];
  v10 = [NSNumber numberWithInteger:code];
  [(FMDAccessoryPlaySoundAction *)self notifyCompletionWithStatus:v10];

  [(FMDAccessoryPlaySoundAction *)self terminate];
}

- (void)notifyCompletionWithStatus:(id)status
{
  statusCopy = status;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v27 = 2048;
    integerValue = [statusCopy integerValue];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) did finish %li", buf, 0x16u);
  }

  [(FMDAccessoryPlaySoundAction *)self setTerminated:1];
  v23 = @"status";
  v24 = statusCopy;
  v6 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v7 = [v6 mutableCopy];

  safetyAlertType = [(FMDAccessoryPlaySoundAction *)self safetyAlertType];
  [v7 fm_safeSetObject:safetyAlertType forKey:@"safetyAlertType"];

  timeoutError = [(FMDAccessoryPlaySoundAction *)self timeoutError];
  [v7 fm_safeSetObject:timeoutError forKey:@"timeoutError"];

  future = [(FMDAccessoryPlaySoundAction *)self future];
  [(FMDAccessoryPlaySoundAction *)self setFuture:0];
  integerValue2 = [statusCopy integerValue];
  if (integerValue2 == qword_100312B18)
  {
    v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.icloud.findmydeviced.FMDAccessoryPlaySoundAction", [statusCopy integerValue], 0);
    [future finishWithError:v12];
  }

  else
  {
    [future finishWithResult:v7];
  }

  integerValue3 = [statusCopy integerValue];
  if (integerValue3 == qword_100312B18 || (v14 = [statusCopy integerValue], v14 == qword_100312B20) || (v15 = objc_msgSend(statusCopy, "integerValue"), v15 == qword_100312B28) || (v16 = objc_msgSend(statusCopy, "integerValue"), v16 == qword_100312B40) || (v17 = objc_msgSend(statusCopy, "integerValue"), v17 == qword_100312B38) || (v18 = objc_msgSend(statusCopy, "integerValue"), v18 == qword_100312B48) || (v19 = objc_msgSend(statusCopy, "integerValue"), v19 == qword_100312B50))
  {
    discovery = [(FMDAccessoryPlaySoundAction *)self discovery];
    [discovery stopDiscovery];
  }

  actionCompletion = [(FMDAccessoryPlaySoundAction *)self actionCompletion];

  if (actionCompletion)
  {
    actionCompletion2 = [(FMDAccessoryPlaySoundAction *)self actionCompletion];
    (actionCompletion2)[2](actionCompletion2, v7);

    [(FMDAccessoryPlaySoundAction *)self setActionCompletion:0];
  }
}

- (void)cancelTimer
{
  inEarTimer = [(FMDAccessoryPlaySoundAction *)self inEarTimer];
  [inEarTimer cancel];

  [(FMDAccessoryPlaySoundAction *)self setInEarTimer:0];
  timeoutTimer = [(FMDAccessoryPlaySoundAction *)self timeoutTimer];
  [timeoutTimer cancel];

  [(FMDAccessoryPlaySoundAction *)self setTimeoutTimer:0];
}

- (void)terminate
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) will terminate.", &v6, 0xCu);
  }

  [(FMDAccessoryPlaySoundAction *)self setPlaySoundRetryCounter:0];
  [(FMDAccessoryPlaySoundAction *)self cancelTimer];
  completion = [(FMDAccessoryPlaySoundAction *)self completion];
  [(FMDAccessoryPlaySoundAction *)self setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:@"FMDAccessoryPlaySoundActionActivity"];

  [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
  [(FMDAccessoryPlaySoundAction *)self _stopDiscoveryForExtAccessory];
}

- (void)discardEarlyDiscovery
{
  earlyDiscovery = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];

  if (earlyDiscovery)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      earlyDiscovery2 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = earlyDiscovery2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(0x%lX) - discard earlyDiscovery %@", &v7, 0x16u);
    }

    earlyDiscovery3 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
    [earlyDiscovery3 stopDiscovery];

    [(FMDAccessoryPlaySoundAction *)self setEarlyDiscovery:0];
  }
}

- (void)dealloc
{
  [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
  [(FMDAccessoryPlaySoundAction *)self _stopDiscoveryForExtAccessory];
  v3.receiver = self;
  v3.super_class = FMDAccessoryPlaySoundAction;
  [(FMDAccessoryPlaySoundAction *)&v3 dealloc];
}

- (void)_playSoundNow:(id)now
{
  nowCopy = now;
  if ([(FMDAccessoryPlaySoundAction *)self playingSound])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) already playing - ignoring.", buf, 0xCu);
    }
  }

  [(FMDAccessoryPlaySoundAction *)self setPlayingSound:1];
  [(FMDAccessoryPlaySoundAction *)self cancelTimer];
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v27 = 2112;
    v28 = nowCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) Playing sound for accessory %@", buf, 0x16u);
  }

  channels = [(FMDAccessoryPlaySoundAction *)self channels];
  duration = [(FMDAccessoryPlaySoundAction *)self duration];
  rampUpDuration = [(FMDAccessoryPlaySoundAction *)self rampUpDuration];
  if ([FMPreferencesUtil BOOLForKey:@"CustomRampUpDurationEnabled" inDomain:kFMDPrefDomain])
  {
    v10 = [NSNumber numberWithInteger:[FMPreferencesUtil integerForKey:@"CustomRampUpDuration" inDomain:kFMDPrefDomain]];

    rampUpDuration = v10;
  }

  [(FMDAccessoryPlaySoundAction *)self setPlaySoundRetryCounter:[(FMDAccessoryPlaySoundAction *)self playSoundRetryCounter]+ 1];
  objc_initWeak(buf, self);
  v11 = +[FMDFMIPManager sharedInstance];
  [duration doubleValue];
  v13 = v12;
  [rampUpDuration doubleValue];
  v15 = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100150040;
  v19[3] = &unk_1002CE430;
  objc_copyWeak(&v24, buf);
  v16 = nowCopy;
  v20 = v16;
  selfCopy3 = self;
  v17 = channels;
  v22 = v17;
  v18 = duration;
  v23 = v18;
  [v11 startPlayingSoundForAccessory:v16 duration:v17 rampUpDuration:v19 channels:v13 completion:v15];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (id)commandStatusForInternalAccessoryAudioSafetyStatus:(unint64_t)status
{
  if (status <= 7)
  {
    self = [NSNumber numberWithInteger:*off_1002CE450[status], v3];
  }

  return self;
}

- (void)accessoryDidUpdate:(id)update
{
  updateCopy = update;
  accessoryIdentifier = [updateCopy accessoryIdentifier];
  accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
  accessoryIdentifier2 = [accessory accessoryIdentifier];
  v8 = [accessoryIdentifier isEqual:accessoryIdentifier2];

  if (v8)
  {
    [(FMDAccessoryPlaySoundAction *)self setAccessory:updateCopy];
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218498;
      selfCopy = self;
      v13 = 2112;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = updateCopy;
      v10 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(%lu) playsound accessoryDidUpdate %@(%lu)", &v11, 0x20u);
    }

    [(FMDAccessoryPlaySoundAction *)self executePlaySound];
    [(FMDAccessoryPlaySoundAction *)self stopSoundFromUnexpectedPanning];
  }
}

- (void)stopSoundFromUnexpectedPanning
{
  if ([(FMDAccessoryPlaySoundAction *)self terminated]|| [(FMDAccessoryPlaySoundAction *)self playingSound])
  {
    accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
    if (objc_opt_respondsToSelector())
    {
      accessory2 = [(FMDAccessoryPlaySoundAction *)self accessory];
      v4 = [accessory2 conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory];

      if (v4)
      {
        accessory3 = [(FMDAccessoryPlaySoundAction *)self accessory];
        if ([accessory3 shouldStopSoundNow])
        {
          v6 = sub_100002880();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stop sound from panning", buf, 2u);
          }

          [accessory3 updatePlaybackChannels:&__NSArray0__struct];
          v7 = +[FMDFMIPManager sharedInstance];
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_100150C00;
          v9[3] = &unk_1002CD868;
          v9[4] = self;
          [v7 stopPlayingSoundForAccessory:accessory3 rampDownDuration:v9 completion:1.0];
        }
      }
    }

    else
    {
    }
  }
}

- (FMDAccessoryRegistry)accessoryRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryRegistry);

  return WeakRetained;
}

@end