@interface FMDAccessoryPlaySoundAction
- (BOOL)shouldCancelAction:(id)a3;
- (FMDAccessoryPlaySoundAction)initWithAccessory:(id)a3 accessoryRegistry:(id)a4 channels:(id)a5;
- (FMDAccessoryRegistry)accessoryRegistry;
- (NSNumber)inEarDetectionTimeout;
- (NSNumber)timeout;
- (id)commandStatusForInternalAccessoryAudioSafetyStatus:(unint64_t)a3;
- (void)_executePlaySoundUsingExtensions;
- (void)_playSoundEnd:(id)a3 withCode:(int64_t)a4;
- (void)_playSoundNow:(id)a3;
- (void)_stopDiscoveryForExtAccessory;
- (void)accessoryDidUpdate:(id)a3;
- (void)cancelTimer;
- (void)dealloc;
- (void)discardEarlyDiscovery;
- (void)executePlaySound;
- (void)notifyCompletionWithStatus:(id)a3;
- (void)runWithCompletion:(id)a3;
- (void)setBluetoothManager:(id)a3;
- (void)stopSoundFromUnexpectedPanning;
- (void)terminate;
- (void)willCancelAction;
@end

@implementation FMDAccessoryPlaySoundAction

- (FMDAccessoryPlaySoundAction)initWithAccessory:(id)a3 accessoryRegistry:(id)a4 channels:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FMDAccessoryPlaySoundAction;
  v11 = [(FMDAccessoryPlaySoundAction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(FMDAccessoryPlaySoundAction *)v11 setAccessory:v8];
    [(FMDAccessoryPlaySoundAction *)v12 setAccessoryRegistry:v9];
    [(FMDAccessoryPlaySoundAction *)v12 setChannels:v10];
    [(FMDAccessoryPlaySoundAction *)v12 setBypassInEarCheck:0];
    [(FMDAccessoryPlaySoundAction *)v12 setForceConnection:1];
    [(FMDAccessoryPlaySoundAction *)v12 setPlayingSound:0];
    [(FMDAccessoryPlaySoundAction *)v12 setTerminated:0];
    v13 = dispatch_queue_create("FMDAccessoryPlaySoundActionQueue", 0);
    [(FMDAccessoryPlaySoundAction *)v12 setSerialQueue:v13];
  }

  return v12;
}

- (void)setBluetoothManager:(id)a3
{
  v5 = a3;
  v6 = [(FMDAccessoryPlaySoundAction *)self accessory];
  v7 = [v6 category];

  if (v7 != 3)
  {
    objc_storeStrong(&self->_bluetoothManager, a3);
    if (v5)
    {
      v8 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];

      if (!v8)
      {
        v9 = [v5 newDiscovery];
        [(FMDAccessoryPlaySoundAction *)self setEarlyDiscovery:v9];

        v10 = sub_100002880();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
          v14 = 134218242;
          v15 = self;
          v16 = 2112;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(0x%lX) - earlyDiscovery %@", &v14, 0x16u);
        }

        v12 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
        v13 = [(FMDAccessoryPlaySoundAction *)self duration];
        [v13 doubleValue];
        [v12 startDiscoveryForDuration:?];
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
    v5 = self;
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

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:@"FMDAccessoryPlaySoundActionActivity"];

  [(FMDAccessoryPlaySoundAction *)self setCompletion:v4];
  v6 = [(FMDAccessoryPlaySoundAction *)self timeout];
  [v6 doubleValue];
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
      v29 = self;
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

    v16 = [(FMDAccessoryPlaySoundAction *)self timeoutTimer];
    [v16 start];

    v17 = [(FMDAccessoryPlaySoundAction *)self bluetoothManager];
    v18 = [v17 newDiscovery];
    [(FMDAccessoryPlaySoundAction *)self setDiscovery:v18];

    v19 = [(FMDAccessoryPlaySoundAction *)self discovery];
    v20 = [(FMDAccessoryPlaySoundAction *)self duration];
    [v20 doubleValue];
    [v19 startDiscoveryForDuration:?];

    v21 = [(FMDAccessoryPlaySoundAction *)self discovery];
    LODWORD(v19) = v21 == 0;

    if (v19)
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
      v24 = [(FMDAccessoryPlaySoundAction *)self discovery];
      *buf = 134218242;
      v29 = self;
      v30 = 2112;
      v31 = *&v24;
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
      v29 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) the given command expired before starting.", buf, 0xCu);
    }

    v11 = [NSNumber numberWithInteger:qword_100312B18];
    [(FMDAccessoryPlaySoundAction *)self notifyCompletionWithStatus:v11];

    [(FMDAccessoryPlaySoundAction *)self terminate];
  }
}

- (BOOL)shouldCancelAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)executePlaySound
{
  objc_initWeak(&location, self);
  v3 = [(FMDAccessoryPlaySoundAction *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014CC10;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_stopDiscoveryForExtAccessory
{
  v11 = [(FMDAccessoryPlaySoundAction *)self accessory];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(FMDAccessoryPlaySoundAction *)self statusController];

      if (v3)
      {
        v4 = +[FMDExtConfigurationRegistry sharedInstance];
        v5 = [v11 accessoryType];
        v6 = [v4 configForAccessoryType:v5];

        v7 = [v6 infoForFeature:@"availability"];
        v8 = [(FMDAccessoryPlaySoundAction *)self statusController];
        v9 = [v11 accessoryIdentifier];
        v10 = [v9 stringValue];
        [v8 stopDiscoveryForAccessory:v10 info:v7 withCompletion:&stru_1002CE2F8];
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
    v5 = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
    [v5 timeIntervalSinceNow];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "started at time = %@ with timeout = %f", buf, 0x16u);
  }

  v7 = [(FMDAccessoryPlaySoundAction *)self accessory];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 accessoryIdentifier];
      v80 = [v8 stringValue];

      v9 = +[FMDExtConfigurationRegistry sharedInstance];
      v10 = [v7 accessoryType];
      v11 = [v9 configForAccessoryType:v10];

      v81 = [v11 flavorForFeature:@"sound"];
      v75 = [v11 flavorForFeature:@"availability"];
      v12 = [v11 flavorForFeature:@"connection"];
      v79 = [(FMDAccessoryPlaySoundAction *)self accessoryRegistry];
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

      v13 = [(FMDAccessoryPlaySoundAction *)self channels];
      v14 = [v13 count] == 0;

      if (v14)
      {
        [(FMDAccessoryPlaySoundAction *)self cancelTimer];
        v23 = sub_10017DBC8();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v7 name];
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "PlaySoundAction (0x%lX) Stopping sound for accessory %@", buf, 0x16u);
        }

        v25 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"sound" flavor:v81];
        if (v25)
        {
          v26 = [(FMDAccessoryPlaySoundAction *)self channels];
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3221225472;
          v105[2] = sub_10014ECA8;
          v105[3] = &unk_1002CD4C8;
          v105[4] = self;
          [v79 updateAccessory:v7 playbackChannels:v26 completion:v105];

          v27 = sub_10017DBC8();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v25;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "daemon stop sound controller = %@", buf, 0xCu);
          }

          v28 = [(FMDAccessoryPlaySoundAction *)self rampDownDuration];
          [v28 doubleValue];
          v30 = v29;
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_10014ED10;
          v102[3] = &unk_1002CE320;
          v103 = v7;
          v104 = self;
          [v25 stopSoundForAccessory:v80 info:v78 rampDownDuration:v102 withCompletion:v30];
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
      v101 = [v7 connectionState] != 0;
      if ((v99[3] & 1) == 0 && [(FMDAccessoryPlaySoundAction *)self forceConnection])
      {
        v15 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"connection" flavor:v12];
        if (!v15)
        {
          v32 = sub_10017DBC8();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = [v7 name];
            sub_100227848(v33, buf, v32);
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
        [v16 forceConnectToAccessory:v80 info:v17 withCompletion:v95];
        v74 = v16;

        v19 = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
        [v19 timeIntervalSinceNow];
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
            v70 = [v7 name];
            sub_100227910(v70, v106, v69);
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
        [v36 safetyAlertForAccessory:v80 info:v63 withCompletion:v87];

        v64 = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
        [v64 timeIntervalSinceNow];
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

        v49 = v88;
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
      v44 = [(FMDAccessoryPlaySoundAction *)self statusController];
      v45 = v44 == 0;

      if (v45)
      {
        v46 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"availability" flavor:v75 withDelegate:v79];
        [(FMDAccessoryPlaySoundAction *)self setStatusController:v46];
      }

      v47 = [(FMDAccessoryPlaySoundAction *)self statusController];
      v48 = [(FMDAccessoryPlaySoundAction *)self duration];
      [v48 doubleValue];
      [v47 startDiscoveryForAccessory:v80 duration:v76 info:&stru_1002CE390 withCompletion:?];

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

      v49 = [(FMDAccessoryPlaySoundAction *)self channels];
      v50 = sub_10017DBC8();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 138412290;
        *v107 = v49;
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
      v52 = [(FMDAccessoryPlaySoundAction *)self duration];
      [v52 doubleValue];
      v54 = v53;
      v55 = [(FMDAccessoryPlaySoundAction *)self rampDownDuration];
      [v55 doubleValue];
      v57 = v56;
      v58 = [(FMDAccessoryPlaySoundAction *)self channels];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_10014EFB4;
      v82[3] = &unk_1002CE3E0;
      v82[4] = self;
      objc_copyWeak(&v85, &location);
      v83 = v79;
      v84 = v7;
      [v36 playSoundForAccessory:v80 info:v78 duration:v58 rampUpDuration:v82 channels:v54 withCompletion:v57];

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

- (void)_playSoundEnd:(id)a3 withCode:(int64_t)a4
{
  v6 = a3;
  v7 = sub_10017DBC8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(FMDAccessoryPlaySoundAction *)self accessory];
    v9 = [v8 name];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "play sound failed for %@ with %@", &v11, 0x16u);
  }

  [(FMDAccessoryPlaySoundAction *)self cancelTimer];
  v10 = [NSNumber numberWithInteger:a4];
  [(FMDAccessoryPlaySoundAction *)self notifyCompletionWithStatus:v10];

  [(FMDAccessoryPlaySoundAction *)self terminate];
}

- (void)notifyCompletionWithStatus:(id)a3
{
  v4 = a3;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v26 = self;
    v27 = 2048;
    v28 = [v4 integerValue];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) did finish %li", buf, 0x16u);
  }

  [(FMDAccessoryPlaySoundAction *)self setTerminated:1];
  v23 = @"status";
  v24 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v7 = [v6 mutableCopy];

  v8 = [(FMDAccessoryPlaySoundAction *)self safetyAlertType];
  [v7 fm_safeSetObject:v8 forKey:@"safetyAlertType"];

  v9 = [(FMDAccessoryPlaySoundAction *)self timeoutError];
  [v7 fm_safeSetObject:v9 forKey:@"timeoutError"];

  v10 = [(FMDAccessoryPlaySoundAction *)self future];
  [(FMDAccessoryPlaySoundAction *)self setFuture:0];
  v11 = [v4 integerValue];
  if (v11 == qword_100312B18)
  {
    v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.icloud.findmydeviced.FMDAccessoryPlaySoundAction", [v4 integerValue], 0);
    [v10 finishWithError:v12];
  }

  else
  {
    [v10 finishWithResult:v7];
  }

  v13 = [v4 integerValue];
  if (v13 == qword_100312B18 || (v14 = [v4 integerValue], v14 == qword_100312B20) || (v15 = objc_msgSend(v4, "integerValue"), v15 == qword_100312B28) || (v16 = objc_msgSend(v4, "integerValue"), v16 == qword_100312B40) || (v17 = objc_msgSend(v4, "integerValue"), v17 == qword_100312B38) || (v18 = objc_msgSend(v4, "integerValue"), v18 == qword_100312B48) || (v19 = objc_msgSend(v4, "integerValue"), v19 == qword_100312B50))
  {
    v20 = [(FMDAccessoryPlaySoundAction *)self discovery];
    [v20 stopDiscovery];
  }

  v21 = [(FMDAccessoryPlaySoundAction *)self actionCompletion];

  if (v21)
  {
    v22 = [(FMDAccessoryPlaySoundAction *)self actionCompletion];
    (v22)[2](v22, v7);

    [(FMDAccessoryPlaySoundAction *)self setActionCompletion:0];
  }
}

- (void)cancelTimer
{
  v3 = [(FMDAccessoryPlaySoundAction *)self inEarTimer];
  [v3 cancel];

  [(FMDAccessoryPlaySoundAction *)self setInEarTimer:0];
  v4 = [(FMDAccessoryPlaySoundAction *)self timeoutTimer];
  [v4 cancel];

  [(FMDAccessoryPlaySoundAction *)self setTimeoutTimer:0];
}

- (void)terminate
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) will terminate.", &v6, 0xCu);
  }

  [(FMDAccessoryPlaySoundAction *)self setPlaySoundRetryCounter:0];
  [(FMDAccessoryPlaySoundAction *)self cancelTimer];
  v4 = [(FMDAccessoryPlaySoundAction *)self completion];
  [(FMDAccessoryPlaySoundAction *)self setCompletion:0];
  if (v4)
  {
    v4[2](v4);
  }

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:@"FMDAccessoryPlaySoundActionActivity"];

  [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
  [(FMDAccessoryPlaySoundAction *)self _stopDiscoveryForExtAccessory];
}

- (void)discardEarlyDiscovery
{
  v3 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];

  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
      v7 = 134218242;
      v8 = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(0x%lX) - discard earlyDiscovery %@", &v7, 0x16u);
    }

    v6 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
    [v6 stopDiscovery];

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

- (void)_playSoundNow:(id)a3
{
  v4 = a3;
  if ([(FMDAccessoryPlaySoundAction *)self playingSound])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) already playing - ignoring.", buf, 0xCu);
    }
  }

  [(FMDAccessoryPlaySoundAction *)self setPlayingSound:1];
  [(FMDAccessoryPlaySoundAction *)self cancelTimer];
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v26 = self;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) Playing sound for accessory %@", buf, 0x16u);
  }

  v7 = [(FMDAccessoryPlaySoundAction *)self channels];
  v8 = [(FMDAccessoryPlaySoundAction *)self duration];
  v9 = [(FMDAccessoryPlaySoundAction *)self rampUpDuration];
  if ([FMPreferencesUtil BOOLForKey:@"CustomRampUpDurationEnabled" inDomain:kFMDPrefDomain])
  {
    v10 = [NSNumber numberWithInteger:[FMPreferencesUtil integerForKey:@"CustomRampUpDuration" inDomain:kFMDPrefDomain]];

    v9 = v10;
  }

  [(FMDAccessoryPlaySoundAction *)self setPlaySoundRetryCounter:[(FMDAccessoryPlaySoundAction *)self playSoundRetryCounter]+ 1];
  objc_initWeak(buf, self);
  v11 = +[FMDFMIPManager sharedInstance];
  [v8 doubleValue];
  v13 = v12;
  [v9 doubleValue];
  v15 = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100150040;
  v19[3] = &unk_1002CE430;
  objc_copyWeak(&v24, buf);
  v16 = v4;
  v20 = v16;
  v21 = self;
  v17 = v7;
  v22 = v17;
  v18 = v8;
  v23 = v18;
  [v11 startPlayingSoundForAccessory:v16 duration:v17 rampUpDuration:v19 channels:v13 completion:v15];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (id)commandStatusForInternalAccessoryAudioSafetyStatus:(unint64_t)a3
{
  if (a3 <= 7)
  {
    self = [NSNumber numberWithInteger:*off_1002CE450[a3], v3];
  }

  return self;
}

- (void)accessoryDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryIdentifier];
  v6 = [(FMDAccessoryPlaySoundAction *)self accessory];
  v7 = [v6 accessoryIdentifier];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    [(FMDAccessoryPlaySoundAction *)self setAccessory:v4];
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218498;
      v12 = self;
      v13 = 2112;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = v4;
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
    v8 = [(FMDAccessoryPlaySoundAction *)self accessory];
    if (objc_opt_respondsToSelector())
    {
      v3 = [(FMDAccessoryPlaySoundAction *)self accessory];
      v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory];

      if (v4)
      {
        v5 = [(FMDAccessoryPlaySoundAction *)self accessory];
        if ([v5 shouldStopSoundNow])
        {
          v6 = sub_100002880();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stop sound from panning", buf, 2u);
          }

          [v5 updatePlaybackChannels:&__NSArray0__struct];
          v7 = +[FMDFMIPManager sharedInstance];
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_100150C00;
          v9[3] = &unk_1002CD868;
          v9[4] = self;
          [v7 stopPlayingSoundForAccessory:v5 rampDownDuration:v9 completion:1.0];
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