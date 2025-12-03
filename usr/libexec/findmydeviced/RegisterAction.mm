@interface RegisterAction
+ (id)_deviceRestartRegisterIntervalConfigPrefKeyForAccount:(id)account;
+ (id)_lastDeviceRestartRegisterTimePrefKeyForAccount:(id)account;
+ (id)_lastForcedRegisterTimePrefKeyForAccount:(id)account;
+ (id)_registerDigestPrefKeyForAccount:(id)account;
+ (id)sharedregisterDigestSerialQueue;
+ (void)deleteRegisterDigestForAccount:(id)account;
- (BOOL)_registerDeviceWithCause:(id)cause completion:(id)completion;
- (BOOL)_shouldThrottleDeviceRestartRegister;
- (BOOL)shouldCancelAction:(id)action;
- (BOOL)shouldWaitForAction:(id)action;
- (FMDServiceProvider)provider;
- (id)_extraRegistrationInformation;
- (id)_reasonForStartupRegister;
- (void)runWithCompletion:(id)completion;
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

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  reason = [(RegisterAction *)self reason];
  if (!reason)
  {
    reason = [(RegisterAction *)self _reasonForStartupRegister];
  }

  if ([(RegisterAction *)self force])
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = reason;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Register %@ is being forced", buf, 0xCu);
    }

    if (reason)
    {
      v7 = [NSString stringWithFormat:@"Forced-%@", reason];

      reason = v7;
    }

    else
    {
      reason = @"Forced";
    }

    provider = [(RegisterAction *)self provider];
    account = [provider account];
    v10 = [RegisterAction _lastForcedRegisterTimePrefKeyForAccount:account];

    v11 = +[NSDate date];
    [FMPreferencesUtil setDate:v11 forKey:v10 inDomain:kFMDNotBackedUpPrefDomain];
  }

  v12 = [(RegisterAction *)self _registerDeviceWithCause:reason completion:completionCopy];
  if (completionCopy && (v12 & 1) == 0)
  {
    completionCopy[2](completionCopy);
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

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  actionType = [actionCopy actionType];
  v6 = [actionType isEqual:@"RegisterAction"];
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
      selfCopy = self;
      v14 = 2112;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = actionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) shouldCancelAction: %@(0x%lX)", &v10, 0x2Au);
    }
  }

  return v7;
}

- (BOOL)shouldWaitForAction:(id)action
{
  actionCopy = action;
  actionType = [actionCopy actionType];
  v6 = [actionType isEqual:@"RegisterAction"];

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      reason = [(RegisterAction *)self reason];
      v10 = 138412802;
      v11 = reason;
      v12 = 2048;
      selfCopy = self;
      v14 = 2112;
      v15 = actionCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) RegisterAction shouldWaitForAction: %@", &v10, 0x20u);
    }
  }

  return v6;
}

- (id)_reasonForStartupRegister
{
  provider = [(RegisterAction *)self provider];
  account = [provider account];

  v4 = account;
  lastUnregisterFailedTime = [v4 lastUnregisterFailedTime];
  if (!lastUnregisterFailedTime)
  {
    goto LABEL_4;
  }

  v6 = lastUnregisterFailedTime;
  lastUnregisterFailedTime2 = [v4 lastUnregisterFailedTime];
  v8 = +[FMDDaemon sharedInstance];
  startTime = [v8 startTime];
  v10 = [lastUnregisterFailedTime2 compare:startTime];

  if (v10 == 1)
  {
    v11 = @"UnregisterFailure";
  }

  else
  {
LABEL_4:
    accountAddTime = [v4 accountAddTime];
    if (!accountAddTime)
    {
      goto LABEL_7;
    }

    v13 = accountAddTime;
    accountAddTime2 = [v4 accountAddTime];
    v15 = +[FMDDaemon sharedInstance];
    startTime2 = [v15 startTime];
    v17 = [accountAddTime2 compare:startTime2];

    if (v17 == -1)
    {
LABEL_7:
      v18 = +[FMDDaemon sharedInstance];
      isFirstRunAfterBoot = [v18 isFirstRunAfterBoot];
      v20 = @"FMDRestart";
      if (isFirstRunAfterBoot)
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
  provider = [(RegisterAction *)self provider];
  account = [provider account];

  v4 = +[NSMutableDictionary dictionary];
  v5 = [RegisterAction _lastForcedRegisterTimePrefKeyForAccount:account];
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
  authToken = [account authToken];
  v9 = authToken;
  if (authToken)
  {
    v10 = authToken;
  }

  else
  {
    v10 = @"null";
  }

  [v4 setObject:v10 forKeyedSubscript:@"authToken"];

  return v4;
}

- (BOOL)_registerDeviceWithCause:(id)cause completion:(id)completion
{
  causeCopy = cause;
  completionCopy = completion;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v61 = causeCopy;
    v9 = *&buf[4];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request to send register %@", buf, 0x20u);
  }

  provider = [(RegisterAction *)self provider];
  essentialServerInfoMissingError = [provider essentialServerInfoMissingError];
  if (essentialServerInfoMissingError != 1196379972)
  {
    v25 = sub_100002880();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [NSString stringWithFourCC:essentialServerInfoMissingError];
      *buf = 138412546;
      *&buf[4] = causeCopy;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Ignoring register %@. Server info '%@' missing", buf, 0x16u);
    }

    v27 = essentialServerInfoMissingError == 1480675411;
    v28 = +[FMSystemInfo sharedInstance];
    LODWORD(essentialServerInfoMissingError) = [v28 isInternalBuild];

    if (v27)
    {
      if (!essentialServerInfoMissingError)
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
      if (essentialServerInfoMissingError)
      {
        v30 = sub_100002880();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Service not functional. Auth credentials unavailable.", buf, 2u);
        }
      }

      [provider tryToFetchAuthToken];
    }

    LOBYTE(essentialServerInfoMissingError) = 0;
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
  essentialServerInfoMissingError = +[RegisterAction sharedregisterDigestSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E4E58;
  block[3] = &unk_1002D1488;
  block[4] = self;
  v48 = buf;
  v12 = causeCopy;
  v47 = v12;
  v49 = &v50;
  dispatch_sync(essentialServerInfoMissingError, block);

  LOBYTE(essentialServerInfoMissingError) = *(v51 + 24);
  if (essentialServerInfoMissingError)
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *v54 = 138412802;
      v55 = v14;
      v56 = 2048;
      selfCopy = self;
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
    v44 = provider;
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
    account = [v18 account];
    v21 = [(FMDRequest *)v19 initWithAccount:account];

    [(FMDRequest *)v21 setDecorator:v32];
    account2 = [v18 account];
    v23 = [RegisterAction _registerDigestPrefKeyForAccount:account2];
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
    v35 = completionCopy;
    [(FMDRequest *)v21 setCompletionHandler:v33];
    [(RegisterAction *)self setRequest:v21];
    serverInteractionController = [v18 serverInteractionController];
    [serverInteractionController enqueueRequest:v21];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
    objc_destroyWeak(v54);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v50, 8);
LABEL_22:

  return essentialServerInfoMissingError;
}

- (BOOL)_shouldThrottleDeviceRestartRegister
{
  v3 = [FMPreferencesUtil stringForKey:@"DeviceRestartRegisterInterval" inDomain:kFMDNotBackedUpPrefDomain];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    longLongValue = [v4 longLongValue];

    goto LABEL_5;
  }

  provider = [(RegisterAction *)self provider];
  account = [provider account];
  v7 = [RegisterAction _deviceRestartRegisterIntervalConfigPrefKeyForAccount:account];

  v4 = [FMPreferencesUtil stringForKey:v7 inDomain:kFMDNotBackedUpPrefDomain];

  if (v4)
  {
    goto LABEL_4;
  }

  longLongValue = 86400.0;
LABEL_5:
  provider2 = [(RegisterAction *)self provider];
  account2 = [provider2 account];
  v11 = [RegisterAction _lastDeviceRestartRegisterTimePrefKeyForAccount:account2];

  v12 = [FMPreferencesUtil dateForKey:v11 inDomain:kFMDNotBackedUpPrefDomain];
  v13 = v12;
  if (v12)
  {
    fm_epoch = [v12 fm_epoch];
    v15 = +[NSDate date];
    fm_epoch2 = [v15 fm_epoch];

    v17 = (fm_epoch2 - fm_epoch) / 1000.0 < longLongValue;
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

+ (id)_registerDigestPrefKeyForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_opt_class();
  authId = [accountCopy authId];

  v6 = [NSString stringWithFormat:@"RegisterDigest-%@-%@", v4, authId];

  return v6;
}

+ (id)_lastForcedRegisterTimePrefKeyForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_opt_class();
  authId = [accountCopy authId];

  v6 = [NSString stringWithFormat:@"LastForcedRegisterTime-%@-%@", v4, authId];

  return v6;
}

+ (id)_lastDeviceRestartRegisterTimePrefKeyForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_opt_class();
  authId = [accountCopy authId];

  v6 = [NSString stringWithFormat:@"LastDeviceRestartRegisterTime-%@-%@", v4, authId];

  return v6;
}

+ (id)_deviceRestartRegisterIntervalConfigPrefKeyForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_opt_class();
  authId = [accountCopy authId];

  v6 = [NSString stringWithFormat:@"DeviceRestartRegisterIntervalConfig-%@-%@", v4, authId];

  return v6;
}

+ (void)deleteRegisterDigestForAccount:(id)account
{
  accountCopy = account;
  v4 = +[RegisterAction sharedregisterDigestSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E6500;
  block[3] = &unk_1002CD4C8;
  v7 = accountCopy;
  v5 = accountCopy;
  dispatch_async(v4, block);
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end