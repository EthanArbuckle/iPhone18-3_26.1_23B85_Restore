@interface FMDRatchetManager
+ (BOOL)isFeatureEnabled;
+ (id)ratchetErrorDeniedWithUnderlyingError:(id)error;
+ (id)ratchetManagerTurnOffFMIP;
+ (id)ratchetManageriCloudSignOut;
- (FMDRatchetManager)initWithIdentifier:(id)identifier;
- (id)ratchetOptions;
- (void)armRatchetIfNeeded;
- (void)evaluateOperation;
- (void)handleRatchetError:(id)error;
@end

@implementation FMDRatchetManager

+ (BOOL)isFeatureEnabled
{
  v2 = +[LARatchetManager sharedInstance];
  isFeatureEnabled = [v2 isFeatureEnabled];

  return isFeatureEnabled;
}

+ (id)ratchetErrorDeniedWithUnderlyingError:(id)error
{
  v3 = off_100312B78;
  if (error)
  {
    v8 = NSUnderlyingErrorKey;
    errorCopy = error;
    errorCopy2 = error;
    v5 = [NSDictionary dictionaryWithObjects:&errorCopy forKeys:&v8 count:1];
    v6 = [NSError errorWithDomain:v3 code:1 userInfo:v5];
  }

  else
  {
    v5 = 0;
    v6 = [NSError errorWithDomain:v3 code:1 userInfo:0];
  }

  return v6;
}

+ (id)ratchetManageriCloudSignOut
{
  v2 = [[FMDRatchetManager alloc] initWithIdentifier:@"com.apple.findmydevice.ratchet.turnOff"];
  v3 = [@"FM_RATCHET_REASON_SIGNOUT" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedReason:v3];

  v4 = [@"FM_RATCHET_BEGIN_TITLE_SIGNOUT" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedBeginTitle:v4];

  v5 = [@"FM_RATCHET_BEGIN_SIGNOUT" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedBeginBody:v5];

  v6 = [@"FM_RATCHET_COUNTDOWN_SIGNOUT" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedCountdownBody:v6];

  v7 = [@"FM_RATCHET_CALLOUT_REASON_SIGNOUT" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedCalloutReason:v7];

  v8 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  [(FMDRatchetManager *)v2 setDeepLinkURL:v8];

  [(FMDRatchetManager *)v2 setFallbackToNoAuthentication:1];

  return v2;
}

+ (id)ratchetManagerTurnOffFMIP
{
  v2 = [[FMDRatchetManager alloc] initWithIdentifier:@"com.apple.findmydevice.ratchet.turnOff"];
  v3 = [@"FM_RATCHET_REASON_TURN_OFF" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedReason:v3];

  v4 = [@"FM_RATCHET_BEGIN_TITLE_TURN_OFF" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedBeginTitle:v4];

  v5 = [@"FM_RATCHET_BEGIN_TURN_OFF" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedBeginBody:v5];

  v6 = [@"FM_RATCHET_COUNTDOWN_TURN_OFF" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedCountdownBody:v6];

  v7 = [@"FM_RATCHET_CALLOUT_REASON_TURN_OFF" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDRatchetManager *)v2 setLocalizedCalloutReason:v7];

  v8 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=LOCATION_SHARING/FindMyDevice-Settings"];
  [(FMDRatchetManager *)v2 setDeepLinkURL:v8];

  [(FMDRatchetManager *)v2 setFallbackToNoAuthentication:1];

  return v2;
}

- (FMDRatchetManager)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FMDRatchetManager;
  v6 = [(FMDRatchetManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ratchetIdentifier, identifier);
  }

  return v7;
}

- (void)evaluateOperation
{
  currentTask = [(FMDRatchetManager *)self currentTask];

  if (!currentTask)
  {
    v4 = objc_alloc_init(FMFuture);
    [(FMDRatchetManager *)self permittedOperationBlock];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100158A28;
    v14 = v13[3] = &unk_1002CD748;
    v5 = v14;
    v6 = [v4 addSuccessBlock:v13];
    [(FMDRatchetManager *)self deniedOperationBlock];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100158A40;
    v12 = v11[3] = &unk_1002CD770;
    v7 = v12;
    v8 = [v4 addFailureBlock:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100158A58;
    v10[3] = &unk_1002CD798;
    v10[4] = self;
    v9 = [v4 addCompletionBlock:v10];
    [(FMDRatchetManager *)self setCurrentTask:v4];
    [(FMDRatchetManager *)self armRatchetIfNeeded];
  }
}

- (id)ratchetOptions
{
  v12[0] = &off_1002E7A80;
  localizedReason = [(FMDRatchetManager *)self localizedReason];
  v13[0] = localizedReason;
  v12[1] = &off_1002E7A98;
  localizedCalloutReason = [(FMDRatchetManager *)self localizedCalloutReason];
  v13[1] = localizedCalloutReason;
  v12[2] = &off_1002E7AB0;
  deepLinkURL = [(FMDRatchetManager *)self deepLinkURL];
  v13[2] = deepLinkURL;
  v12[3] = &off_1002E7AC8;
  localizedBeginTitle = [(FMDRatchetManager *)self localizedBeginTitle];
  v13[3] = localizedBeginTitle;
  v12[4] = &off_1002E7AE0;
  localizedBeginBody = [(FMDRatchetManager *)self localizedBeginBody];
  v13[4] = localizedBeginBody;
  v12[5] = &off_1002E7AF8;
  localizedCountdownBody = [(FMDRatchetManager *)self localizedCountdownBody];
  v13[5] = localizedCountdownBody;
  v12[6] = &off_1002E7B10;
  v9 = [NSNumber numberWithBool:[(FMDRatchetManager *)self fallbackToNoAuthentication]];
  v13[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

- (void)armRatchetIfNeeded
{
  ratchet = [(FMDRatchetManager *)self ratchet];

  if (ratchet)
  {
    v4 = sub_10017DEB4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      ratchetIdentifier = [(FMDRatchetManager *)self ratchetIdentifier];
      *buf = 138412290;
      v13 = ratchetIdentifier;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ratchet already initialized %@.", buf, 0xCu);
    }
  }

  else
  {
    v6 = [LARatchet alloc];
    ratchetIdentifier2 = [(FMDRatchetManager *)self ratchetIdentifier];
    v4 = [v6 initWithIdentifier:ratchetIdentifier2];

    [(FMDRatchetManager *)self setRatchet:v4];
    ratchetOptions = [(FMDRatchetManager *)self ratchetOptions];
    v9 = sub_10017DEB4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      ratchetIdentifier3 = [(FMDRatchetManager *)self ratchetIdentifier];
      *buf = 138412546;
      v13 = ratchetIdentifier3;
      v14 = 2112;
      v15 = ratchetOptions;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Arming ratchet %@ with options %@.", buf, 0x16u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100158E0C;
    v11[3] = &unk_1002CD7C0;
    v11[4] = self;
    [v4 armWithOptions:ratchetOptions completion:v11];
  }
}

- (void)handleRatchetError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:LARatchetErrorUserInfoKeyState];

  if (v6)
  {
    currentTask2 = v6;
    code = [errorCopy code];
    v9 = sub_10017DEB4();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (code)
    {
      if (v10)
      {
        ratchetIdentifier = [(FMDRatchetManager *)self ratchetIdentifier];
        rawValue = [currentTask2 rawValue];
        localizedDescription = [errorCopy localizedDescription];
        v19 = 138412802;
        v20 = ratchetIdentifier;
        v21 = 2048;
        v22 = rawValue;
        v23 = 2112;
        v24 = localizedDescription;
        v14 = "Unexpected failure to arm ratchet %@ state %li, error: %@.";
LABEL_12:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v14, &v19, 0x20u);
      }
    }

    else if (v10)
    {
      ratchetIdentifier = [(FMDRatchetManager *)self ratchetIdentifier];
      rawValue2 = [currentTask2 rawValue];
      localizedDescription = [errorCopy localizedDescription];
      v19 = 138412802;
      v20 = ratchetIdentifier;
      v21 = 2048;
      v22 = rawValue2;
      v23 = 2112;
      v24 = localizedDescription;
      v14 = "Failed to arm ratchet %@ state %li, error: %@.";
      goto LABEL_12;
    }

    currentTask = [(FMDRatchetManager *)self currentTask];
    v17 = [FMDRatchetManager ratchetErrorDeniedWithUnderlyingError:errorCopy];
    [currentTask finishWithError:v17];

    goto LABEL_10;
  }

  v15 = sub_10017DEB4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100228718(self, errorCopy);
  }

  currentTask2 = [(FMDRatchetManager *)self currentTask];
  currentTask = [FMDRatchetManager ratchetErrorDeniedWithUnderlyingError:errorCopy];
  [currentTask2 finishWithError:currentTask];
LABEL_10:
}

@end