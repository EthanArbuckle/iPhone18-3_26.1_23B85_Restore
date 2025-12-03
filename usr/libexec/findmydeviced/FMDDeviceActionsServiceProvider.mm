@interface FMDDeviceActionsServiceProvider
- (BOOL)setPasscodeLock:(id)lock statusCode:(int64_t *)code;
- (void)accountAdded;
- (void)accountRemoveRequestedWithCompletion:(id)completion;
- (void)deregisterCommonNotifications;
- (void)didAddNewTrackedLocation:(id)location;
- (void)didMakeProviderActive;
- (void)registerCommonNotifications;
- (void)sendLostModeExitAuthWithToken:(id)token;
- (void)sendTrackedLocations:(id)locations withCurrentLocation:(id)location;
- (void)willMakeProviderInactive;
@end

@implementation FMDDeviceActionsServiceProvider

- (void)didMakeProviderActive
{
  v3 = [[FMDLocationTracker alloc] initWithType:0];
  [(FMDDeviceActionsServiceProvider *)self setLocationTracker:v3];

  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  [locationTracker registerDelegate:self];
}

- (void)willMakeProviderInactive
{
  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  [locationTracker deregisterDelegate:self];

  [(FMDDeviceActionsServiceProvider *)self setLocationTracker:0];
}

- (void)accountAdded
{
  [(FMDDeviceActionsServiceProvider *)self _cleanupFMIPPreferences];
  v3.receiver = self;
  v3.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v3 accountAdded];
}

- (void)accountRemoveRequestedWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FMDDeviceActionsServiceProvider *)self _cleanupFMIPPreferences];
  v5 = +[FMDProtectedContextManager sharedManager];
  [v5 cleanupAllContextsForKey:@"serverContextHeaderContext"];

  v6.receiver = self;
  v6.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v6 accountRemoveRequestedWithCompletion:completionCopy];
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

- (BOOL)setPasscodeLock:(id)lock statusCode:(int64_t *)code
{
  lockCopy = lock;
  *code = qword_100312AF8;
  v6 = objc_autoreleasePoolPush();
  v7 = +[FMDSystemConfig sharedInstance];
  isPasscodeSet = [v7 isPasscodeSet];

  if (!lockCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![lockCopy length])
  {
    localizedDescriptionOfCurrentPasscodeConstraints = sub_100002880();
    v11 = os_log_type_enabled(localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT);
    if (isPasscodeSet)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Passcode is already set - Locking device only", buf, 2u);
      }

      *code = qword_100312B00;
      goto LABEL_12;
    }

    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Invalid passcode state - locking device only", buf, 2u);
    }

    LOBYTE(localizedDescriptionOfCurrentPasscodeConstraints) = 0;
    v12 = &qword_100312AE0;
    goto LABEL_16;
  }

  if (isPasscodeSet)
  {
    *code = qword_100312B08;
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Passcode already set.  Ignoring new passcode and locking device", buf, 2u);
    }

LABEL_12:
    LOBYTE(localizedDescriptionOfCurrentPasscodeConstraints) = 1;
    goto LABEL_17;
  }

  v15 = +[MCProfileConnection sharedConnection];
  v16 = [v15 passcode:lockCopy meetsCurrentConstraintsOutError:0];

  v17 = +[MCProfileConnection sharedConnection];
  v18 = v17;
  if (v16)
  {
    LODWORD(localizedDescriptionOfCurrentPasscodeConstraints) = [v17 isPasscodeModificationAllowed];

    if (localizedDescriptionOfCurrentPasscodeConstraints)
    {
      localizedDescriptionOfCurrentPasscodeConstraints = sub_100002880();
      if (os_log_type_enabled(localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Setting new lock passcode", buf, 2u);
      }

      v19 = +[MCProfileConnection sharedConnection];
      v30 = 0;
      LOBYTE(localizedDescriptionOfCurrentPasscodeConstraints) = [v19 changePasscodeFrom:0 to:lockCopy outError:&v30];
      v20 = v30;

      if ((localizedDescriptionOfCurrentPasscodeConstraints & 1) == 0)
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

        *code = qword_100312AE8;
      }

      v24 = [CDPStateController alloc];
      v25 = +[CDPContext contextForPrimaryAccount];
      v26 = [v24 initWithContext:v25];

      v27 = +[MCProfileConnection sharedConnection];
      v28 = [v27 unlockScreenTypeForPasscode:lockCopy outSimplePasscodeType:0];

      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      [v26 localSecretChangedTo:lockCopy secretType:v29 completion:&stru_1002CE108];

      goto LABEL_17;
    }

    v12 = &qword_100312AF0;
LABEL_16:
    *code = *v12;
    goto LABEL_17;
  }

  localizedDescriptionOfCurrentPasscodeConstraints = [v17 localizedDescriptionOfCurrentPasscodeConstraints];

  v23 = sub_100002880();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = lockCopy;
    v33 = 2112;
    v34 = localizedDescriptionOfCurrentPasscodeConstraints;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Remote Lock: New passcode %@ does not meet current policy: %@", buf, 0x16u);
  }

  *code = qword_100312AD8;
  LOBYTE(localizedDescriptionOfCurrentPasscodeConstraints) = 0;
LABEL_17:
  v13 = +[MCProfileConnection sharedConnection];
  [v13 lockDeviceImmediately:1];

  objc_autoreleasePoolPop(v6);
  return localizedDescriptionOfCurrentPasscodeConstraints;
}

- (void)sendLostModeExitAuthWithToken:(id)token
{
  tokenCopy = token;
  v5 = [[FMDRequestLostModeExitAuth alloc] initWithProvider:self lostModeExitAuthToken:tokenCopy];

  [(FMDRequest *)v5 setCompletionHandler:&stru_1002CE128];
  [(FMDServiceProvider *)self enqueueRequest:v5];
}

- (void)didAddNewTrackedLocation:(id)location
{
  locationCopy = location;
  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  if ([locationTracker trackNotifyEnabled])
  {

LABEL_4:
    locationTracker2 = [(FMDDeviceActionsServiceProvider *)self locationTracker];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100147FF8;
    v9[3] = &unk_1002CE150;
    v10 = locationCopy;
    selfCopy = self;
    [locationTracker2 actOnTrackedLocationsUsingBlock:v9];

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

- (void)sendTrackedLocations:(id)locations withCurrentLocation:(id)location
{
  locationCopy = location;
  locationsCopy = locations;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10014833C;
  v16[3] = &unk_1002CD580;
  v16[4] = self;
  v8 = [[FMDActingRequestDecorator alloc] initWithDeviceContextGenerator:&stru_1002CE170 deviceInfoGenerator:v16 serverContextGenerator:0 requestHeaderGenerator:0];
  v9 = [FMDRequestTrackedLocations alloc];
  account = [(FMDServiceProvider *)self account];
  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  v12 = [(FMDRequestTrackedLocations *)v9 initWithAccount:account currentLocation:locationCopy trackedLocations:locationsCopy locationTracker:locationTracker];

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