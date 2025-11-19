@interface GKAuthenticationWrapperService
+ (id)authenticationWrapperForService:(id)a3;
+ (id)serviceForBundleID:(id)a3 player:(id)a4;
+ (id)serviceForClient:(id)a3 player:(id)a4;
- (GKAuthenticationWrapperService)initWithClient:(id)a3;
- (GKAuthenticationWrapperService)initWithService:(id)a3 queue:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_buildSignatureLookupForProtocol:(id)a3;
- (void)accountCreated:(id)a3 playerID:(id)a4 authenticationToken:(id)a5 alias:(id)a6 altDSID:(id)a7 finished:(BOOL)a8 handler:(id)a9;
- (void)accountCreated:(id)a3 playerID:(id)a4 authenticationToken:(id)a5 alias:(id)a6 finished:(BOOL)a7 handler:(id)a8;
- (void)accountEdited:(id)a3 alias:(id)a4 firstName:(id)a5 lastName:(id)a6 handler:(id)a7;
- (void)assertPrivateProtocol;
- (void)assertProtocol;
- (void)authenticatePlayerWithExistingCredentialsWithHandler:(id)a3;
- (void)authenticatePlayerWithUsername:(id)a3 password:(id)a4 altDSID:(id)a5 isGame:(BOOL)a6 usingFastPath:(BOOL)a7 handler:(id)a8;
- (void)authenticatePlayerWithUsername:(id)a3 password:(id)a4 handler:(id)a5;
- (void)authenticatePlayerWithUsername:(id)a3 password:(id)a4 usingFastPath:(BOOL)a5 displayAuthUI:(BOOL)a6 handler:(id)a7;
- (void)authenticateWithService:(id)a3 username:(id)a4 password:(id)a5 altDSID:(id)a6 isGame:(BOOL)a7 usingFastPath:(BOOL)a8 displayAuthUI:(BOOL)a9 handler:(id)a10;
- (void)checkActivitySharingRepromptWithCompletion:(id)a3;
- (void)didShowFullscreenSignIn;
- (void)didShowSignInBanner;
- (void)fetchItemsForIdentityVerificationSignature:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)generateIdentityVerificationSignatureWithCompletionHandler:(id)a3;
- (void)getAccountAgeCategoryForPlayerID:(id)a3 withCompletion:(id)a4;
- (void)getAccountAuthTokenWithHandler:(id)a3;
- (void)getDevicePushTokenWithHandler:(id)a3;
- (void)getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getOnboardingInfoForPlayerID:(id)a3 withCompletion:(id)a4;
- (void)isAppDistributorThirdParty:(id)a3;
- (void)isICloudAvailableWithHandler:(id)a3;
- (void)localPlayerAgeCategoryWithCompletion:(id)a3;
- (void)notifyClient:(id)a3 playerAuthenticatedFromClient:(id)a4;
- (void)notifyWidgetPlayerAuthenticationUpdated;
- (void)renewCredentialsForAccountWithUsername:(id)a3 ttl:(double)a4 withCompletion:(id)a5;
- (void)resetCredentialsWithHandler:(id)a3;
- (void)setActivitySharingRepromptLastTriggerDate:(id)a3;
- (void)setCrossUseLinkedDSIDForSignedInPlayer:(int64_t)a3;
- (void)setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:(id)a3;
- (void)setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:(id)a3;
- (void)setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:(int64_t)a3;
- (void)setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:(int64_t)a3;
- (void)setLastPersonalizationVersionDisplayedForSignedInPlayer:(id)a3;
- (void)setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:(unint64_t)a3;
- (void)setLastProfilePrivacyVersionDisplayedForSignedInPlayer:(id)a3;
- (void)setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:(unint64_t)a3;
- (void)setLoginStatus:(unint64_t)a3 handler:(id)a4;
- (void)setupAccountForParameters:(id)a3 handler:(id)a4;
- (void)signOutPlayerWithOptOut:(BOOL)a3 handler:(id)a4;
- (void)validateAccountWithUsername:(id)a3 password:(id)a4 handler:(id)a5;
@end

@implementation GKAuthenticationWrapperService

- (GKAuthenticationWrapperService)initWithClient:(id)a3
{
  v4 = [NSString stringWithFormat:@"initWithClient: is not the designated initialier for GKAuthenticationWrapperService, use initWithService:queue: instead."];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
  v6 = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKAuthenticationWrapperService initWithClient:]", [v6 UTF8String], 31);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
  return 0;
}

- (void)_buildSignatureLookupForProtocol:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  outCount = 0;
  v6 = protocol_copyMethodDescriptionList(v4, 1, 1, &outCount);
  v7 = v6;
  if (outCount)
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v10 = NSStringFromSelector(v9->name);
      v11 = [NSMethodSignature signatureWithObjCTypes:v9->types];
      [(NSDictionary *)v5 setObject:v11 forKeyedSubscript:v10];

      ++v8;
      ++v9;
    }

    while (v8 < outCount);
  }

  free(v7);
  v12 = protocol_copyMethodDescriptionList(v4, 0, 1, &outCount);
  v13 = v12;
  if (outCount)
  {
    v14 = 0;
    v15 = v12;
    do
    {
      v16 = NSStringFromSelector(v15->name);
      v17 = [NSMethodSignature signatureWithObjCTypes:v15->types];
      [(NSDictionary *)v5 setObject:v17 forKeyedSubscript:v16];

      ++v14;
      ++v15;
    }

    while (v14 < outCount);
  }

  free(v13);
  signatureLookup = self->_signatureLookup;
  self->_signatureLookup = v5;
}

- (GKAuthenticationWrapperService)initWithService:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 transport];
  v10 = [v7 clientProxy];
  v11 = [v7 localPlayer];
  v12 = [v7 credential];
  v16.receiver = self;
  v16.super_class = GKAuthenticationWrapperService;
  v13 = [(GKService *)&v16 initWithTransport:v9 forClient:v10 localPlayer:v11 credential:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_service, a3);
    objc_storeStrong(&v13->_authQueue, a4);
    v14 = [objc_msgSend(objc_opt_class() "interfaceClass")];
    [(GKAuthenticationWrapperService *)v13 _buildSignatureLookupForProtocol:v14];
  }

  return v13;
}

+ (id)authenticationWrapperForService:(id)a3
{
  v3 = a3;
  v4 = [v3 clientProxy];

  if (v4)
  {
    v5 = objc_alloc(objc_opt_class());
    v6 = [v3 clientProxy];
    v7 = [v6 authQueue];
    v8 = [v5 initWithService:v3 queue:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)serviceForClient:(id)a3 player:(id)a4
{
  v4 = [NSString stringWithFormat:@"serviceForClient: is not a valid factory for GKAuthenticationWrapperService, use authenticationWrapperForService:queue: instead.", a4];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
  v6 = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "+[GKAuthenticationWrapperService serviceForClient:player:]", [v6 UTF8String], 85);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
  return 0;
}

+ (id)serviceForBundleID:(id)a3 player:(id)a4
{
  v4 = [NSString stringWithFormat:@"serviceForBundleID: is not a valid factory for GKAuthenticationWrapperService, use authenticationWrapperForService:queue: instead.", a4];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
  v6 = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "+[GKAuthenticationWrapperService serviceForBundleID:player:]", [v6 UTF8String], 91);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
  return 0;
}

- (void)isAppDistributorThirdParty:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F0674;
  v8[3] = &unk_100360EB0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)authenticatePlayerWithExistingCredentialsWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v7 = [(GKService *)self->_service transport];
  v5 = [(GKService *)self->_service clientProxy];
  v6 = [(GKService *)GKAccountServicePrivate serviceWithTransport:v7 forClient:v5 localPlayer:0];
  [(GKAuthenticationWrapperService *)self authenticateWithService:v6 username:0 password:0 handler:v4];
}

- (void)generateIdentityVerificationSignatureWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "wrapper generateIdentityVerificationSignatureWithCompletionHandler:", buf, 2u);
  }

  [(GKAuthenticationWrapperService *)self assertProtocol];
  authQueue = self->_authQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F08AC;
  v9[3] = &unk_100361270;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(authQueue, v9);
}

- (void)fetchItemsForIdentityVerificationSignature:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "wrapper fetchItemsForIdentityVerificationSignature:", buf, 2u);
  }

  [(GKAuthenticationWrapperService *)self assertProtocol];
  authQueue = self->_authQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F0AE4;
  v9[3] = &unk_100361270;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(authQueue, v9);
}

- (void)didShowSignInBanner
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  service = self->_service;

  [(GKService *)service didShowSignInBanner];
}

- (void)didShowFullscreenSignIn
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  service = self->_service;

  [(GKService *)service didShowFullscreenSignIn];
}

- (void)signOutPlayerWithOptOut:(BOOL)a3 handler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "wrapper signOutPlayerWithOptOut:%lu", buf, 0xCu);
  }

  if (([(GKService *)self->_service conformsToProtocol:&OBJC_PROTOCOL___GKAccountService]& 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"Wrapped service must conform to the GKAccountServicePrivate protocol!"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([_service conformsToProtocol:@protocol(GKAccountService)])\n[%s (%s:%d)]", v9, "-[GKAuthenticationWrapperService signOutPlayerWithOptOut:handler:]", [v11 UTF8String], 159);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  authQueue = self->_authQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F0EAC;
  block[3] = &unk_1003660D8;
  v17 = v4;
  block[4] = self;
  v16 = v6;
  v14 = v6;
  dispatch_barrier_async(authQueue, block);
}

- (void)setupAccountForParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "wrapper setupAccountForParameters:handler:", buf, 2u);
  }

  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  service = self->_service;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F1310;
  v12[3] = &unk_100361CB8;
  v13 = v7;
  v11 = v7;
  [(GKService *)service setupAccountForParameters:v6 handler:v12];
}

- (void)authenticateWithService:(id)a3 username:(id)a4 password:(id)a5 altDSID:(id)a6 isGame:(BOOL)a7 usingFastPath:(BOOL)a8 displayAuthUI:(BOOL)a9 handler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a10;
  if (!os_log_GKGeneral)
  {
    v21 = GKOSLoggers();
  }

  v22 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "wrapper authenticateWithService:", buf, 2u);
  }

  v23 = v16;
  v24 = [(GKService *)v23 credential];

  v25 = v23;
  if (v24)
  {
    v26 = [GKAccountServicePrivate alloc];
    v27 = [(GKService *)self clientProxy];
    v25 = [(GKService *)v26 initWithoutCredentialWithTransport:0 forClient:v27];
  }

  Current = CFAbsoluteTimeGetCurrent();
  authQueue = self->_authQueue;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000F154C;
  v35[3] = &unk_100366628;
  v36 = v25;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v43 = a7;
  v44 = a8;
  v40 = self;
  v41 = v20;
  v42 = Current;
  v30 = v20;
  v31 = v19;
  v32 = v18;
  v33 = v17;
  v34 = v25;
  dispatch_barrier_async(authQueue, v35);
}

- (void)authenticatePlayerWithUsername:(id)a3 password:(id)a4 usingFastPath:(BOOL)a5 displayAuthUI:(BOOL)a6 handler:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a4;
  v15 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  LOBYTE(v14) = a6;
  [(GKAuthenticationWrapperService *)self authenticateWithService:self->_service username:v15 password:v13 altDSID:0 isGame:1 usingFastPath:v8 displayAuthUI:v14 handler:v12];
}

- (void)authenticatePlayerWithUsername:(id)a3 password:(id)a4 altDSID:(id)a5 isGame:(BOOL)a6 usingFastPath:(BOOL)a7 handler:(id)a8
{
  v8 = a7;
  v9 = a6;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v18 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  LOBYTE(v17) = 0;
  [(GKAuthenticationWrapperService *)self authenticateWithService:self->_service username:v18 password:v16 altDSID:v15 isGame:v9 usingFastPath:v8 displayAuthUI:v17 handler:v14];
}

- (void)authenticatePlayerWithUsername:(id)a3 password:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKAuthenticationWrapperService *)self authenticateWithService:self->_service username:v10 password:v9 handler:v8];
}

- (void)validateAccountWithUsername:(id)a3 password:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  service = self->_service;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F2048;
  v13[3] = &unk_100361C68;
  v14 = v8;
  v12 = v8;
  [(GKService *)service validateAccountWithUsername:v10 password:v9 handler:v13];
}

- (void)getAccountAuthTokenWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKService *)self->_service getAccountAuthTokenWithHandler:v4];
}

- (void)getDevicePushTokenWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKService *)self->_service getDevicePushTokenWithHandler:v4];
}

- (void)isICloudAvailableWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKService *)self->_service isICloudAvailableWithHandler:v4];
}

- (void)notifyClient:(id)a3 playerAuthenticatedFromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKService *)self->_service notifyClient:v7 playerAuthenticatedFromClient:v6];
}

- (void)resetCredentialsWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 signOutPlayerWithOptOut:0 handler:v4];
}

- (void)setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:(unint64_t)a3
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:a3];
}

- (void)getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:v4];
}

- (void)setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:(unint64_t)a3
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:a3];
}

- (void)setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:(int64_t)a3
{
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:a3];
}

- (void)setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:(int64_t)a3
{
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:a3];
}

- (void)getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:v4];
}

- (void)setLastPersonalizationVersionDisplayedForSignedInPlayer:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastPersonalizationVersionDisplayedForSignedInPlayer:v4];
}

- (void)getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:v4];
}

- (void)setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:v4];
}

- (void)getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:v4];
}

- (void)setLastProfilePrivacyVersionDisplayedForSignedInPlayer:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastProfilePrivacyVersionDisplayedForSignedInPlayer:v4];
}

- (void)getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:v4];
}

- (void)setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:v4];
}

- (void)getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:v4];
}

- (void)setCrossUseLinkedDSIDForSignedInPlayer:(int64_t)a3
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setCrossUseLinkedDSIDForSignedInPlayer:a3];
}

- (void)getOnboardingInfoForPlayerID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v8 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v8 getOnboardingInfoForPlayerID:v7 withCompletion:v6];
}

- (void)notifyWidgetPlayerAuthenticationUpdated
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v3 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v3 notifyWidgetPlayerAuthenticationUpdated];
}

- (void)localPlayerAgeCategoryWithCompletion:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 localPlayerAgeCategoryWithCompletion:v4];
}

- (void)getAccountAgeCategoryForPlayerID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v8 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v8 getAccountAgeCategoryForPlayerID:v7 withCompletion:v6];
}

- (void)checkActivitySharingRepromptWithCompletion:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 checkActivitySharingRepromptWithCompletion:v4];
}

- (void)setActivitySharingRepromptLastTriggerDate:(id)a3
{
  v4 = a3;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setActivitySharingRepromptLastTriggerDate:v4];
}

- (void)accountCreated:(id)a3 playerID:(id)a4 authenticationToken:(id)a5 alias:(id)a6 finished:(BOOL)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  v20 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "wrapper accountCreated:", buf, 2u);
  }

  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  authQueue = self->_authQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2D3C;
  block[3] = &unk_100366650;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v33 = a7;
  v31 = v17;
  v32 = v18;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  dispatch_barrier_async(authQueue, block);
}

- (void)accountCreated:(id)a3 playerID:(id)a4 authenticationToken:(id)a5 alias:(id)a6 altDSID:(id)a7 finished:(BOOL)a8 handler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  if (!os_log_GKGeneral)
  {
    v21 = GKOSLoggers();
  }

  v22 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "wrapper accountCreated:", buf, 2u);
  }

  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  authQueue = self->_authQueue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000F334C;
  v30[3] = &unk_1003666A0;
  v30[4] = self;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v37 = a8;
  v36 = v20;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  dispatch_barrier_async(authQueue, v30);
}

- (void)accountEdited:(id)a3 alias:(id)a4 firstName:(id)a5 lastName:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "wrapper accountEdited:", buf, 2u);
  }

  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  service = self->_service;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000F3910;
  v21[3] = &unk_100360FA0;
  v22 = v16;
  v20 = v16;
  [(GKService *)service accountEdited:v12 alias:v13 firstName:v14 lastName:v15 handler:v21];
}

- (void)setLoginStatus:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "wrapper setLoginStatus:", buf, 2u);
  }

  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  service = self->_service;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F3A44;
  v11[3] = &unk_100361CB8;
  v12 = v6;
  v10 = v6;
  [(GKService *)service setLoginStatus:a3 handler:v11];
}

- (void)renewCredentialsForAccountWithUsername:(id)a3 ttl:(double)a4 withCompletion:(id)a5
{
  service = self->_service;
  v9 = a5;
  v10 = a3;
  if (([(GKService *)service conformsToProtocol:&OBJC_PROTOCOL___GKAccountServicePrivate]& 1) == 0)
  {
    v11 = [NSString stringWithFormat:@"Wrapped service must conform to the GKAccountService protocol!"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([_service conformsToProtocol:@protocol(GKAccountServicePrivate)])\n[%s (%s:%d)]", v11, "-[GKAuthenticationWrapperService renewCredentialsForAccountWithUsername:ttl:withCompletion:]", [v13 UTF8String], 639);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v15 renewCredentialsForAccountWithUsername:v10 ttl:v9 withCompletion:a4];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v12.receiver = self;
  v12.super_class = GKAuthenticationWrapperService;
  v5 = [(GKAuthenticationWrapperService *)&v12 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = NSStringFromSelector(a3);
    v7 = [(NSDictionary *)self->_signatureLookup objectForKeyedSubscript:v6];
    if (!v7)
    {
      v13 = @"selector";
      v14 = v6;
      v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v10 = [NSException exceptionWithName:@"GKNoSuchServiceException" reason:@"Attempted to dispatch a selector which is not recognized by any service" userInfo:v9];
      v11 = v10;

      objc_exception_throw(v10);
    }

    v5 = v7;
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if (-[GKService requiresAuthenticationForSelector:](self->_service, "requiresAuthenticationForSelector:", [v4 selector]))
  {
    [v4 retainArguments];
    authQueue = self->_authQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F3DE8;
    v6[3] = &unk_1003610B8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(authQueue, v6);
  }

  else
  {
    [v4 invokeWithTarget:self->_service];
  }
}

- (void)assertProtocol
{
  if (([(GKService *)self->_service conformsToProtocol:&OBJC_PROTOCOL___GKAccountService]& 1) == 0)
  {
    v2 = [NSString stringWithFormat:@"Wrapped service must conform to the GKAccountService protocol!"];
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
    v4 = [v3 lastPathComponent];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([_service conformsToProtocol:@protocol(GKAccountService)])\n[%s (%s:%d)]", v2, "-[GKAuthenticationWrapperService assertProtocol]", [v4 UTF8String], 689);

    [NSException raise:@"GameKit Exception" format:@"%@", v5];
  }
}

- (void)assertPrivateProtocol
{
  if (([(GKService *)self->_service conformsToProtocol:&OBJC_PROTOCOL___GKAccountServicePrivate]& 1) == 0)
  {
    v2 = [NSString stringWithFormat:@"Wrapped service must conform to the GKAccountServicePrivate protocol!"];
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
    v4 = [v3 lastPathComponent];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([_service conformsToProtocol:@protocol(GKAccountServicePrivate)])\n[%s (%s:%d)]", v2, "-[GKAuthenticationWrapperService assertPrivateProtocol]", [v4 UTF8String], 693);

    [NSException raise:@"GameKit Exception" format:@"%@", v5];
  }
}

@end