@interface FMDRatchetManager
+ (BOOL)isFeatureEnabled;
+ (id)ratchetErrorDeniedWithUnderlyingError:(id)a3;
+ (id)ratchetManagerTurnOffFMIP;
+ (id)ratchetManageriCloudSignOut;
- (FMDRatchetManager)initWithIdentifier:(id)a3;
- (id)ratchetOptions;
- (void)armRatchetIfNeeded;
- (void)evaluateOperation;
- (void)handleRatchetError:(id)a3;
@end

@implementation FMDRatchetManager

+ (BOOL)isFeatureEnabled
{
  v2 = +[LARatchetManager sharedInstance];
  v3 = [v2 isFeatureEnabled];

  return v3;
}

+ (id)ratchetErrorDeniedWithUnderlyingError:(id)a3
{
  v3 = off_100312B78;
  if (a3)
  {
    v8 = NSUnderlyingErrorKey;
    v9 = a3;
    v4 = a3;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
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

- (FMDRatchetManager)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FMDRatchetManager;
  v6 = [(FMDRatchetManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ratchetIdentifier, a3);
  }

  return v7;
}

- (void)evaluateOperation
{
  v3 = [(FMDRatchetManager *)self currentTask];

  if (!v3)
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
  v3 = [(FMDRatchetManager *)self localizedReason];
  v13[0] = v3;
  v12[1] = &off_1002E7A98;
  v4 = [(FMDRatchetManager *)self localizedCalloutReason];
  v13[1] = v4;
  v12[2] = &off_1002E7AB0;
  v5 = [(FMDRatchetManager *)self deepLinkURL];
  v13[2] = v5;
  v12[3] = &off_1002E7AC8;
  v6 = [(FMDRatchetManager *)self localizedBeginTitle];
  v13[3] = v6;
  v12[4] = &off_1002E7AE0;
  v7 = [(FMDRatchetManager *)self localizedBeginBody];
  v13[4] = v7;
  v12[5] = &off_1002E7AF8;
  v8 = [(FMDRatchetManager *)self localizedCountdownBody];
  v13[5] = v8;
  v12[6] = &off_1002E7B10;
  v9 = [NSNumber numberWithBool:[(FMDRatchetManager *)self fallbackToNoAuthentication]];
  v13[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

- (void)armRatchetIfNeeded
{
  v3 = [(FMDRatchetManager *)self ratchet];

  if (v3)
  {
    v4 = sub_10017DEB4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(FMDRatchetManager *)self ratchetIdentifier];
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ratchet already initialized %@.", buf, 0xCu);
    }
  }

  else
  {
    v6 = [LARatchet alloc];
    v7 = [(FMDRatchetManager *)self ratchetIdentifier];
    v4 = [v6 initWithIdentifier:v7];

    [(FMDRatchetManager *)self setRatchet:v4];
    v8 = [(FMDRatchetManager *)self ratchetOptions];
    v9 = sub_10017DEB4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(FMDRatchetManager *)self ratchetIdentifier];
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Arming ratchet %@ with options %@.", buf, 0x16u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100158E0C;
    v11[3] = &unk_1002CD7C0;
    v11[4] = self;
    [v4 armWithOptions:v8 completion:v11];
  }
}

- (void)handleRatchetError:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:LARatchetErrorUserInfoKeyState];

  if (v6)
  {
    v7 = v6;
    v8 = [v4 code];
    v9 = sub_10017DEB4();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v10)
      {
        v11 = [(FMDRatchetManager *)self ratchetIdentifier];
        v12 = [v7 rawValue];
        v13 = [v4 localizedDescription];
        v19 = 138412802;
        v20 = v11;
        v21 = 2048;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        v14 = "Unexpected failure to arm ratchet %@ state %li, error: %@.";
LABEL_12:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v14, &v19, 0x20u);
      }
    }

    else if (v10)
    {
      v11 = [(FMDRatchetManager *)self ratchetIdentifier];
      v18 = [v7 rawValue];
      v13 = [v4 localizedDescription];
      v19 = 138412802;
      v20 = v11;
      v21 = 2048;
      v22 = v18;
      v23 = 2112;
      v24 = v13;
      v14 = "Failed to arm ratchet %@ state %li, error: %@.";
      goto LABEL_12;
    }

    v16 = [(FMDRatchetManager *)self currentTask];
    v17 = [FMDRatchetManager ratchetErrorDeniedWithUnderlyingError:v4];
    [v16 finishWithError:v17];

    goto LABEL_10;
  }

  v15 = sub_10017DEB4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100228718(self, v4);
  }

  v7 = [(FMDRatchetManager *)self currentTask];
  v16 = [FMDRatchetManager ratchetErrorDeniedWithUnderlyingError:v4];
  [v7 finishWithError:v16];
LABEL_10:
}

@end