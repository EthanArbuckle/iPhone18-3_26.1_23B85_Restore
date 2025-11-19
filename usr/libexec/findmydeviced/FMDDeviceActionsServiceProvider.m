@interface FMDDeviceActionsServiceProvider
- (BOOL)setPasscodeLock:(id)a3 statusCode:(int64_t *)a4;
- (void)accountAdded;
- (void)accountRemoveRequestedWithCompletion:(id)a3;
- (void)deregisterCommonNotifications;
- (void)didAddNewTrackedLocation:(id)a3;
- (void)didMakeProviderActive;
- (void)registerCommonNotifications;
- (void)sendLostModeExitAuthWithToken:(id)a3;
- (void)sendTrackedLocations:(id)a3 withCurrentLocation:(id)a4;
- (void)willMakeProviderInactive;
@end

@implementation FMDDeviceActionsServiceProvider

- (void)didMakeProviderActive
{
  v3 = [[FMDLocationTracker alloc] initWithType:0];
  [(FMDDeviceActionsServiceProvider *)self setLocationTracker:v3];

  v4 = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  [v4 registerDelegate:self];
}

- (void)willMakeProviderInactive
{
  v3 = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  [v3 deregisterDelegate:self];

  [(FMDDeviceActionsServiceProvider *)self setLocationTracker:0];
}

- (void)accountAdded
{
  [(FMDDeviceActionsServiceProvider *)self _cleanupFMIPPreferences];
  v3.receiver = self;
  v3.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v3 accountAdded];
}

- (void)accountRemoveRequestedWithCompletion:(id)a3
{
  v4 = a3;
  [(FMDDeviceActionsServiceProvider *)self _cleanupFMIPPreferences];
  v5 = +[FMDProtectedContextManager sharedManager];
  [v5 cleanupAllContextsForKey:@"serverContextHeaderContext"];

  v6.receiver = self;
  v6.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v6 accountRemoveRequestedWithCompletion:v4];
}

- (void)registerCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"lostModeDisabled:" name:@"com.apple.AOSNotification.LostModeDisabled" object:0];

  v4.receiver = self;
  v4.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v4 registerCommonNotifications];
}

- (void)deregisterCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.AOSNotification.LostModeDisabled" object:0];

  v4.receiver = self;
  v4.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v4 deregisterCommonNotifications];
}

- (BOOL)setPasscodeLock:(id)a3 statusCode:(int64_t *)a4
{
  v5 = a3;
  *a4 = qword_100312AF8;
  v6 = objc_autoreleasePoolPush();
  v7 = +[FMDSystemConfig sharedInstance];
  v8 = [v7 isPasscodeSet];

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v5 length])
  {
    v10 = sub_100002880();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Passcode is already set - Locking device only", buf, 2u);
      }

      *a4 = qword_100312B00;
      goto LABEL_12;
    }

    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Invalid passcode state - locking device only", buf, 2u);
    }

    LOBYTE(v10) = 0;
    v12 = &qword_100312AE0;
    goto LABEL_16;
  }

  if (v8)
  {
    *a4 = qword_100312B08;
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Passcode already set.  Ignoring new passcode and locking device", buf, 2u);
    }

LABEL_12:
    LOBYTE(v10) = 1;
    goto LABEL_17;
  }

  v15 = +[MCProfileConnection sharedConnection];
  v16 = [v15 passcode:v5 meetsCurrentConstraintsOutError:0];

  v17 = +[MCProfileConnection sharedConnection];
  v18 = v17;
  if (v16)
  {
    LODWORD(v10) = [v17 isPasscodeModificationAllowed];

    if (v10)
    {
      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Setting new lock passcode", buf, 2u);
      }

      v19 = +[MCProfileConnection sharedConnection];
      v30 = 0;
      LOBYTE(v10) = [v19 changePasscodeFrom:0 to:v5 outError:&v30];
      v20 = v30;

      if ((v10 & 1) == 0)
      {
        v21 = sub_100002880();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        if (v20)
        {
          if (v22)
          {
            sub_100227394(v20, v21);
          }
        }

        else if (v22)
        {
          sub_10022740C(v21);
        }

        *a4 = qword_100312AE8;
      }

      v24 = [CDPStateController alloc];
      v25 = +[CDPContext contextForPrimaryAccount];
      v26 = [v24 initWithContext:v25];

      v27 = +[MCProfileConnection sharedConnection];
      v28 = [v27 unlockScreenTypeForPasscode:v5 outSimplePasscodeType:0];

      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      [v26 localSecretChangedTo:v5 secretType:v29 completion:&stru_1002CE108];

      goto LABEL_17;
    }

    v12 = &qword_100312AF0;
LABEL_16:
    *a4 = *v12;
    goto LABEL_17;
  }

  v10 = [v17 localizedDescriptionOfCurrentPasscodeConstraints];

  v23 = sub_100002880();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v5;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Remote Lock: New passcode %@ does not meet current policy: %@", buf, 0x16u);
  }

  *a4 = qword_100312AD8;
  LOBYTE(v10) = 0;
LABEL_17:
  v13 = +[MCProfileConnection sharedConnection];
  [v13 lockDeviceImmediately:1];

  objc_autoreleasePoolPop(v6);
  return v10;
}

- (void)sendLostModeExitAuthWithToken:(id)a3
{
  v4 = a3;
  v5 = [[FMDRequestLostModeExitAuth alloc] initWithProvider:self lostModeExitAuthToken:v4];

  [(FMDRequest *)v5 setCompletionHandler:&stru_1002CE128];
  [(FMDServiceProvider *)self enqueueRequest:v5];
}

- (void)didAddNewTrackedLocation:(id)a3
{
  v4 = a3;
  v5 = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  if ([v5 trackNotifyEnabled])
  {

LABEL_4:
    v7 = [(FMDDeviceActionsServiceProvider *)self locationTracker];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100147FF8;
    v9[3] = &unk_1002CE150;
    v10 = v4;
    v11 = self;
    [v7 actOnTrackedLocationsUsingBlock:v9];

    v8 = v10;
    goto LABEL_5;
  }

  v6 = +[FMDPreferencesMgr overriddenTrackNotifyEnabled];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not informing provider about change to trackedLocations because trackNotifyEnabled is false", buf, 2u);
  }

LABEL_5:
}

- (void)sendTrackedLocations:(id)a3 withCurrentLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10014833C;
  v16[3] = &unk_1002CD580;
  v16[4] = self;
  v8 = [[FMDActingRequestDecorator alloc] initWithDeviceContextGenerator:&stru_1002CE170 deviceInfoGenerator:v16 serverContextGenerator:0 requestHeaderGenerator:0];
  v9 = [FMDRequestTrackedLocations alloc];
  v10 = [(FMDServiceProvider *)self account];
  v11 = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  v12 = [(FMDRequestTrackedLocations *)v9 initWithAccount:v10 currentLocation:v6 trackedLocations:v7 locationTracker:v11];

  [(FMDRequest *)v12 setDecorator:v8];
  [(FMDRequest *)v12 setCompletionHandler:&stru_1002CE190];
  ct_green_tea_logger_create_static();
  v13 = getCTGreenTeaOsLogHandle();
  v14 = v13;
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Transmitting Location.", v15, 2u);
  }

  [(FMDServiceProvider *)self enqueueRequest:v12];
}

@end