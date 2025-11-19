@interface RegisterAction
+ (id)_deviceRestartRegisterIntervalConfigPrefKeyForAccount:(id)a3;
+ (id)_lastDeviceRestartRegisterTimePrefKeyForAccount:(id)a3;
+ (id)_lastForcedRegisterTimePrefKeyForAccount:(id)a3;
+ (id)_registerDigestPrefKeyForAccount:(id)a3;
+ (id)sharedregisterDigestSerialQueue;
+ (void)deleteRegisterDigestForAccount:(id)a3;
- (BOOL)_registerDeviceWithCause:(id)a3 completion:(id)a4;
- (BOOL)_shouldThrottleDeviceRestartRegister;
- (BOOL)shouldCancelAction:(id)a3;
- (BOOL)shouldWaitForAction:(id)a3;
- (FMDServiceProvider)provider;
- (id)_extraRegistrationInformation;
- (id)_reasonForStartupRegister;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation RegisterAction

+ (id)sharedregisterDigestSerialQueue
{
  if (qword_100314A78 != -1)
  {
    sub_10022F968();
  }

  v3 = qword_100314A80;

  return v3;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RegisterAction *)self reason];
  if (!v5)
  {
    v5 = [(RegisterAction *)self _reasonForStartupRegister];
  }

  if ([(RegisterAction *)self force])
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Register %@ is being forced", buf, 0xCu);
    }

    if (v5)
    {
      v7 = [NSString stringWithFormat:@"Forced-%@", v5];

      v5 = v7;
    }

    else
    {
      v5 = @"Forced";
    }

    v8 = [(RegisterAction *)self provider];
    v9 = [v8 account];
    v10 = [RegisterAction _lastForcedRegisterTimePrefKeyForAccount:v9];

    v11 = +[NSDate date];
    [FMPreferencesUtil setDate:v11 forKey:v10 inDomain:kFMDNotBackedUpPrefDomain];
  }

  v12 = [(RegisterAction *)self _registerDeviceWithCause:v5 completion:v4];
  if (v4 && (v12 & 1) == 0)
  {
    v4[2](v4);
  }
}

- (void)willCancelAction
{
  objc_initWeak(&location, self);
  v2 = +[RegisterAction sharedregisterDigestSerialQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001E3BF0;
  v3[3] = &unk_1002CD518;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  v5 = [v4 actionType];
  v6 = [v5 isEqual:@"RegisterAction"];
  if (qword_100314A68)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138413058;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = self;
      v14 = 2112;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) shouldCancelAction: %@(0x%lX)", &v10, 0x2Au);
    }
  }

  return v7;
}

- (BOOL)shouldWaitForAction:(id)a3
{
  v4 = a3;
  v5 = [v4 actionType];
  v6 = [v5 isEqual:@"RegisterAction"];

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(RegisterAction *)self reason];
      v10 = 138412802;
      v11 = v8;
      v12 = 2048;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) RegisterAction shouldWaitForAction: %@", &v10, 0x20u);
    }
  }

  return v6;
}

- (id)_reasonForStartupRegister
{
  v2 = [(RegisterAction *)self provider];
  v3 = [v2 account];

  v4 = v3;
  v5 = [v4 lastUnregisterFailedTime];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [v4 lastUnregisterFailedTime];
  v8 = +[FMDDaemon sharedInstance];
  v9 = [v8 startTime];
  v10 = [v7 compare:v9];

  if (v10 == 1)
  {
    v11 = @"UnregisterFailure";
  }

  else
  {
LABEL_4:
    v12 = [v4 accountAddTime];
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = v12;
    v14 = [v4 accountAddTime];
    v15 = +[FMDDaemon sharedInstance];
    v16 = [v15 startTime];
    v17 = [v14 compare:v16];

    if (v17 == -1)
    {
LABEL_7:
      v18 = +[FMDDaemon sharedInstance];
      v19 = [v18 isFirstRunAfterBoot];
      v20 = @"FMDRestart";
      if (v19)
      {
        v20 = @"DeviceRestart";
      }

      v11 = v20;
    }

    else
    {
      v11 = [NSString stringWithFormat:@"AccountAdded"];
    }
  }

  return v11;
}

- (id)_extraRegistrationInformation
{
  v2 = [(RegisterAction *)self provider];
  v3 = [v2 account];

  v4 = +[NSMutableDictionary dictionary];
  v5 = [RegisterAction _lastForcedRegisterTimePrefKeyForAccount:v3];
  v6 = [FMPreferencesUtil dateForKey:v5 inDomain:kFMDNotBackedUpPrefDomain];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"%@", v6];
  }

  else
  {
    v7 = @"null";
  }

  [v4 setObject:v7 forKeyedSubscript:@"lastForcedTime"];
  v8 = [v3 authToken];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"null";
  }

  [v4 setObject:v10 forKeyedSubscript:@"authToken"];

  return v4;
}

- (BOOL)_registerDeviceWithCause:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v61 = v6;
    v9 = *&buf[4];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request to send register %@", buf, 0x20u);
  }

  v10 = [(RegisterAction *)self provider];
  v11 = [v10 essentialServerInfoMissingError];
  if (v11 != 1196379972)
  {
    v25 = sub_100002880();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [NSString stringWithFourCC:v11];
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Ignoring register %@. Server info '%@' missing", buf, 0x16u);
    }

    v27 = v11 == 1480675411;
    v28 = +[FMSystemInfo sharedInstance];
    LODWORD(v11) = [v28 isInternalBuild];

    if (v27)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v29 = sub_100002880();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Service not functional. APS token unavailable.", buf, 2u);
      }
    }

    else
    {
      if (v11)
      {
        v30 = sub_100002880();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Service not functional. Auth credentials unavailable.", buf, 2u);
        }
      }

      [v10 tryToFetchAuthToken];
    }

    LOBYTE(v11) = 0;
    goto LABEL_22;
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v61 = sub_10000AB84;
  v62 = sub_100002B8C;
  v63 = 0;
  v11 = +[RegisterAction sharedregisterDigestSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E4E58;
  block[3] = &unk_1002D1488;
  block[4] = self;
  v48 = buf;
  v12 = v6;
  v47 = v12;
  v49 = &v50;
  dispatch_sync(v11, block);

  LOBYTE(v11) = *(v51 + 24);
  if (v11)
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *v54 = 138412802;
      v55 = v14;
      v56 = 2048;
      v57 = self;
      v58 = 2112;
      v59 = v12;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending register %@", v54, 0x20u);
    }

    v16 = [FMDActingRequestDecorator alloc];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001E5264;
    v43[3] = &unk_1002CDF18;
    v44 = v10;
    v17 = v12;
    v45 = v17;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001E52F0;
    v41[3] = &unk_1002CD580;
    v18 = v44;
    v42 = v18;
    v32 = [(FMDActingRequestDecorator *)v16 initWithDeviceContextGenerator:v43 deviceInfoGenerator:v41 serverContextGenerator:0 requestHeaderGenerator:0];
    v19 = [FMDRequestRegister alloc];
    v20 = [v18 account];
    v21 = [(FMDRequest *)v19 initWithAccount:v20];

    [(FMDRequest *)v21 setDecorator:v32];
    v22 = [v18 account];
    v23 = [RegisterAction _registerDigestPrefKeyForAccount:v22];
    [(FMDRequestRegister *)v21 setDigestKey:v23];

    [(FMDRequestRegister *)v21 setDigestData:*(*&buf[8] + 40)];
    objc_initWeak(v54, v18);
    objc_initWeak(&location, self);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1001E536C;
    v38[3] = &unk_1002D14B0;
    objc_copyWeak(&v39, &location);
    [(FMDRequest *)v21 setWillSendHandler:v38];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001E555C;
    v33[3] = &unk_1002D14F8;
    objc_copyWeak(&v36, &location);
    objc_copyWeak(&v37, v54);
    v33[4] = self;
    v34 = v17;
    v35 = v7;
    [(FMDRequest *)v21 setCompletionHandler:v33];
    [(RegisterAction *)self setRequest:v21];
    v24 = [v18 serverInteractionController];
    [v24 enqueueRequest:v21];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
    objc_destroyWeak(v54);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v50, 8);
LABEL_22:

  return v11;
}

- (BOOL)_shouldThrottleDeviceRestartRegister
{
  v3 = [FMPreferencesUtil stringForKey:@"DeviceRestartRegisterInterval" inDomain:kFMDNotBackedUpPrefDomain];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v8 = [v4 longLongValue];

    goto LABEL_5;
  }

  v5 = [(RegisterAction *)self provider];
  v6 = [v5 account];
  v7 = [RegisterAction _deviceRestartRegisterIntervalConfigPrefKeyForAccount:v6];

  v4 = [FMPreferencesUtil stringForKey:v7 inDomain:kFMDNotBackedUpPrefDomain];

  if (v4)
  {
    goto LABEL_4;
  }

  v8 = 86400.0;
LABEL_5:
  v9 = [(RegisterAction *)self provider];
  v10 = [v9 account];
  v11 = [RegisterAction _lastDeviceRestartRegisterTimePrefKeyForAccount:v10];

  v12 = [FMPreferencesUtil dateForKey:v11 inDomain:kFMDNotBackedUpPrefDomain];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 fm_epoch];
    v15 = +[NSDate date];
    v16 = [v15 fm_epoch];

    v17 = (v16 - v14) / 1000.0 < v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100002880();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109120;
    v20[1] = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Should throttle register on device restart : %i", v20, 8u);
  }

  return v17;
}

+ (id)_registerDigestPrefKeyForAccount:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 authId];

  v6 = [NSString stringWithFormat:@"RegisterDigest-%@-%@", v4, v5];

  return v6;
}

+ (id)_lastForcedRegisterTimePrefKeyForAccount:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 authId];

  v6 = [NSString stringWithFormat:@"LastForcedRegisterTime-%@-%@", v4, v5];

  return v6;
}

+ (id)_lastDeviceRestartRegisterTimePrefKeyForAccount:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 authId];

  v6 = [NSString stringWithFormat:@"LastDeviceRestartRegisterTime-%@-%@", v4, v5];

  return v6;
}

+ (id)_deviceRestartRegisterIntervalConfigPrefKeyForAccount:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 authId];

  v6 = [NSString stringWithFormat:@"DeviceRestartRegisterIntervalConfig-%@-%@", v4, v5];

  return v6;
}

+ (void)deleteRegisterDigestForAccount:(id)a3
{
  v3 = a3;
  v4 = +[RegisterAction sharedregisterDigestSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E6500;
  block[3] = &unk_1002CD4C8;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end