@interface GKAuthenticationWrapperService
+ (id)authenticationWrapperForService:(id)service;
+ (id)serviceForBundleID:(id)d player:(id)player;
+ (id)serviceForClient:(id)client player:(id)player;
- (GKAuthenticationWrapperService)initWithClient:(id)client;
- (GKAuthenticationWrapperService)initWithService:(id)service queue:(id)queue;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_buildSignatureLookupForProtocol:(id)protocol;
- (void)accountCreated:(id)created playerID:(id)d authenticationToken:(id)token alias:(id)alias altDSID:(id)iD finished:(BOOL)finished handler:(id)handler;
- (void)accountCreated:(id)created playerID:(id)d authenticationToken:(id)token alias:(id)alias finished:(BOOL)finished handler:(id)handler;
- (void)accountEdited:(id)edited alias:(id)alias firstName:(id)name lastName:(id)lastName handler:(id)handler;
- (void)assertPrivateProtocol;
- (void)assertProtocol;
- (void)authenticatePlayerWithExistingCredentialsWithHandler:(id)handler;
- (void)authenticatePlayerWithUsername:(id)username password:(id)password altDSID:(id)d isGame:(BOOL)game usingFastPath:(BOOL)path handler:(id)handler;
- (void)authenticatePlayerWithUsername:(id)username password:(id)password handler:(id)handler;
- (void)authenticatePlayerWithUsername:(id)username password:(id)password usingFastPath:(BOOL)path displayAuthUI:(BOOL)i handler:(id)handler;
- (void)authenticateWithService:(id)service username:(id)username password:(id)password altDSID:(id)d isGame:(BOOL)game usingFastPath:(BOOL)path displayAuthUI:(BOOL)i handler:(id)self0;
- (void)checkActivitySharingRepromptWithCompletion:(id)completion;
- (void)didShowFullscreenSignIn;
- (void)didShowSignInBanner;
- (void)fetchItemsForIdentityVerificationSignature:(id)signature;
- (void)forwardInvocation:(id)invocation;
- (void)generateIdentityVerificationSignatureWithCompletionHandler:(id)handler;
- (void)getAccountAgeCategoryForPlayerID:(id)d withCompletion:(id)completion;
- (void)getAccountAuthTokenWithHandler:(id)handler;
- (void)getDevicePushTokenWithHandler:(id)handler;
- (void)getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getOnboardingInfoForPlayerID:(id)d withCompletion:(id)completion;
- (void)isAppDistributorThirdParty:(id)party;
- (void)isICloudAvailableWithHandler:(id)handler;
- (void)localPlayerAgeCategoryWithCompletion:(id)completion;
- (void)notifyClient:(id)client playerAuthenticatedFromClient:(id)fromClient;
- (void)notifyWidgetPlayerAuthenticationUpdated;
- (void)renewCredentialsForAccountWithUsername:(id)username ttl:(double)ttl withCompletion:(id)completion;
- (void)resetCredentialsWithHandler:(id)handler;
- (void)setActivitySharingRepromptLastTriggerDate:(id)date;
- (void)setCrossUseLinkedDSIDForSignedInPlayer:(int64_t)player;
- (void)setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:(id)player;
- (void)setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:(id)player;
- (void)setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:(int64_t)player;
- (void)setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:(int64_t)player;
- (void)setLastPersonalizationVersionDisplayedForSignedInPlayer:(id)player;
- (void)setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:(unint64_t)player;
- (void)setLastProfilePrivacyVersionDisplayedForSignedInPlayer:(id)player;
- (void)setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:(unint64_t)player;
- (void)setLoginStatus:(unint64_t)status handler:(id)handler;
- (void)setupAccountForParameters:(id)parameters handler:(id)handler;
- (void)signOutPlayerWithOptOut:(BOOL)out handler:(id)handler;
- (void)validateAccountWithUsername:(id)username password:(id)password handler:(id)handler;
@end

@implementation GKAuthenticationWrapperService

- (GKAuthenticationWrapperService)initWithClient:(id)client
{
  v4 = [NSString stringWithFormat:@"initWithClient: is not the designated initialier for GKAuthenticationWrapperService, use initWithService:queue: instead."];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKAuthenticationWrapperService initWithClient:]", [lastPathComponent UTF8String], 31);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
  return 0;
}

- (void)_buildSignatureLookupForProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = objc_alloc_init(NSMutableDictionary);
  outCount = 0;
  v6 = protocol_copyMethodDescriptionList(protocolCopy, 1, 1, &outCount);
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
  v12 = protocol_copyMethodDescriptionList(protocolCopy, 0, 1, &outCount);
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

- (GKAuthenticationWrapperService)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  queueCopy = queue;
  transport = [serviceCopy transport];
  clientProxy = [serviceCopy clientProxy];
  localPlayer = [serviceCopy localPlayer];
  credential = [serviceCopy credential];
  v16.receiver = self;
  v16.super_class = GKAuthenticationWrapperService;
  v13 = [(GKService *)&v16 initWithTransport:transport forClient:clientProxy localPlayer:localPlayer credential:credential];

  if (v13)
  {
    objc_storeStrong(&v13->_service, service);
    objc_storeStrong(&v13->_authQueue, queue);
    v14 = [objc_msgSend(objc_opt_class() "interfaceClass")];
    [(GKAuthenticationWrapperService *)v13 _buildSignatureLookupForProtocol:v14];
  }

  return v13;
}

+ (id)authenticationWrapperForService:(id)service
{
  serviceCopy = service;
  clientProxy = [serviceCopy clientProxy];

  if (clientProxy)
  {
    v5 = objc_alloc(objc_opt_class());
    clientProxy2 = [serviceCopy clientProxy];
    authQueue = [clientProxy2 authQueue];
    v8 = [v5 initWithService:serviceCopy queue:authQueue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)serviceForClient:(id)client player:(id)player
{
  player = [NSString stringWithFormat:@"serviceForClient: is not a valid factory for GKAuthenticationWrapperService, use authenticationWrapperForService:queue: instead.", player];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", player, "+[GKAuthenticationWrapperService serviceForClient:player:]", [lastPathComponent UTF8String], 85);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
  return 0;
}

+ (id)serviceForBundleID:(id)d player:(id)player
{
  player = [NSString stringWithFormat:@"serviceForBundleID: is not a valid factory for GKAuthenticationWrapperService, use authenticationWrapperForService:queue: instead.", player];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", player, "+[GKAuthenticationWrapperService serviceForBundleID:player:]", [lastPathComponent UTF8String], 91);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
  return 0;
}

- (void)isAppDistributorThirdParty:(id)party
{
  partyCopy = party;
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F0674;
  v8[3] = &unk_100360EB0;
  v8[4] = self;
  v9 = partyCopy;
  v7 = partyCopy;
  dispatch_async(replyQueue, v8);
}

- (void)authenticatePlayerWithExistingCredentialsWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  transport = [(GKService *)self->_service transport];
  clientProxy = [(GKService *)self->_service clientProxy];
  v6 = [(GKService *)GKAccountServicePrivate serviceWithTransport:transport forClient:clientProxy localPlayer:0];
  [(GKAuthenticationWrapperService *)self authenticateWithService:v6 username:0 password:0 handler:handlerCopy];
}

- (void)generateIdentityVerificationSignatureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(authQueue, v9);
}

- (void)fetchItemsForIdentityVerificationSignature:(id)signature
{
  signatureCopy = signature;
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
  v10 = signatureCopy;
  v8 = signatureCopy;
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

- (void)signOutPlayerWithOptOut:(BOOL)out handler:(id)handler
{
  outCopy = out;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v19 = outCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "wrapper signOutPlayerWithOptOut:%lu", buf, 0xCu);
  }

  if (([(GKService *)self->_service conformsToProtocol:&OBJC_PROTOCOL___GKAccountService]& 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"Wrapped service must conform to the GKAccountServicePrivate protocol!"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([_service conformsToProtocol:@protocol(GKAccountService)])\n[%s (%s:%d)]", v9, "-[GKAuthenticationWrapperService signOutPlayerWithOptOut:handler:]", [lastPathComponent UTF8String], 159);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  authQueue = self->_authQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F0EAC;
  block[3] = &unk_1003660D8;
  v17 = outCopy;
  block[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  dispatch_barrier_async(authQueue, block);
}

- (void)setupAccountForParameters:(id)parameters handler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
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
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(GKService *)service setupAccountForParameters:parametersCopy handler:v12];
}

- (void)authenticateWithService:(id)service username:(id)username password:(id)password altDSID:(id)d isGame:(BOOL)game usingFastPath:(BOOL)path displayAuthUI:(BOOL)i handler:(id)self0
{
  serviceCopy = service;
  usernameCopy = username;
  passwordCopy = password;
  dCopy = d;
  handlerCopy = handler;
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

  v23 = serviceCopy;
  credential = [(GKService *)v23 credential];

  v25 = v23;
  if (credential)
  {
    v26 = [GKAccountServicePrivate alloc];
    clientProxy = [(GKService *)self clientProxy];
    v25 = [(GKService *)v26 initWithoutCredentialWithTransport:0 forClient:clientProxy];
  }

  Current = CFAbsoluteTimeGetCurrent();
  authQueue = self->_authQueue;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000F154C;
  v35[3] = &unk_100366628;
  v36 = v25;
  v37 = usernameCopy;
  v38 = passwordCopy;
  v39 = dCopy;
  gameCopy = game;
  pathCopy = path;
  selfCopy = self;
  v41 = handlerCopy;
  v42 = Current;
  v30 = handlerCopy;
  v31 = dCopy;
  v32 = passwordCopy;
  v33 = usernameCopy;
  v34 = v25;
  dispatch_barrier_async(authQueue, v35);
}

- (void)authenticatePlayerWithUsername:(id)username password:(id)password usingFastPath:(BOOL)path displayAuthUI:(BOOL)i handler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  passwordCopy = password;
  usernameCopy = username;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  LOBYTE(v14) = i;
  [(GKAuthenticationWrapperService *)self authenticateWithService:self->_service username:usernameCopy password:passwordCopy altDSID:0 isGame:1 usingFastPath:pathCopy displayAuthUI:v14 handler:handlerCopy];
}

- (void)authenticatePlayerWithUsername:(id)username password:(id)password altDSID:(id)d isGame:(BOOL)game usingFastPath:(BOOL)path handler:(id)handler
{
  pathCopy = path;
  gameCopy = game;
  handlerCopy = handler;
  dCopy = d;
  passwordCopy = password;
  usernameCopy = username;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  LOBYTE(v17) = 0;
  [(GKAuthenticationWrapperService *)self authenticateWithService:self->_service username:usernameCopy password:passwordCopy altDSID:dCopy isGame:gameCopy usingFastPath:pathCopy displayAuthUI:v17 handler:handlerCopy];
}

- (void)authenticatePlayerWithUsername:(id)username password:(id)password handler:(id)handler
{
  handlerCopy = handler;
  passwordCopy = password;
  usernameCopy = username;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKAuthenticationWrapperService *)self authenticateWithService:self->_service username:usernameCopy password:passwordCopy handler:handlerCopy];
}

- (void)validateAccountWithUsername:(id)username password:(id)password handler:(id)handler
{
  handlerCopy = handler;
  passwordCopy = password;
  usernameCopy = username;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  service = self->_service;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F2048;
  v13[3] = &unk_100361C68;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(GKService *)service validateAccountWithUsername:usernameCopy password:passwordCopy handler:v13];
}

- (void)getAccountAuthTokenWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKService *)self->_service getAccountAuthTokenWithHandler:handlerCopy];
}

- (void)getDevicePushTokenWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKService *)self->_service getDevicePushTokenWithHandler:handlerCopy];
}

- (void)isICloudAvailableWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKService *)self->_service isICloudAvailableWithHandler:handlerCopy];
}

- (void)notifyClient:(id)client playerAuthenticatedFromClient:(id)fromClient
{
  fromClientCopy = fromClient;
  clientCopy = client;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  [(GKService *)self->_service notifyClient:clientCopy playerAuthenticatedFromClient:fromClientCopy];
}

- (void)resetCredentialsWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 signOutPlayerWithOptOut:0 handler:handlerCopy];
}

- (void)setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:(unint64_t)player
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:player];
}

- (void)getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:handlerCopy];
}

- (void)setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:(unint64_t)player
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:player];
}

- (void)setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:(int64_t)player
{
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:player];
}

- (void)setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:(int64_t)player
{
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:player];
}

- (void)getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:handlerCopy];
}

- (void)setLastPersonalizationVersionDisplayedForSignedInPlayer:(id)player
{
  playerCopy = player;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastPersonalizationVersionDisplayedForSignedInPlayer:playerCopy];
}

- (void)getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:handlerCopy];
}

- (void)setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:(id)player
{
  playerCopy = player;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:playerCopy];
}

- (void)getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:handlerCopy];
}

- (void)setLastProfilePrivacyVersionDisplayedForSignedInPlayer:(id)player
{
  playerCopy = player;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastProfilePrivacyVersionDisplayedForSignedInPlayer:playerCopy];
}

- (void)getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:handlerCopy];
}

- (void)setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:(id)player
{
  playerCopy = player;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:playerCopy];
}

- (void)getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:handlerCopy];
}

- (void)setCrossUseLinkedDSIDForSignedInPlayer:(int64_t)player
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setCrossUseLinkedDSIDForSignedInPlayer:player];
}

- (void)getOnboardingInfoForPlayerID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v8 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v8 getOnboardingInfoForPlayerID:dCopy withCompletion:completionCopy];
}

- (void)notifyWidgetPlayerAuthenticationUpdated
{
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v3 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v3 notifyWidgetPlayerAuthenticationUpdated];
}

- (void)localPlayerAgeCategoryWithCompletion:(id)completion
{
  completionCopy = completion;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 localPlayerAgeCategoryWithCompletion:completionCopy];
}

- (void)getAccountAgeCategoryForPlayerID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(GKAuthenticationWrapperService *)self assertPrivateProtocol];
  v8 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v8 getAccountAgeCategoryForPlayerID:dCopy withCompletion:completionCopy];
}

- (void)checkActivitySharingRepromptWithCompletion:(id)completion
{
  completionCopy = completion;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 checkActivitySharingRepromptWithCompletion:completionCopy];
}

- (void)setActivitySharingRepromptLastTriggerDate:(id)date
{
  dateCopy = date;
  [(GKAuthenticationWrapperService *)self assertProtocol];
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 setActivitySharingRepromptLastTriggerDate:dateCopy];
}

- (void)accountCreated:(id)created playerID:(id)d authenticationToken:(id)token alias:(id)alias finished:(BOOL)finished handler:(id)handler
{
  createdCopy = created;
  dCopy = d;
  tokenCopy = token;
  aliasCopy = alias;
  handlerCopy = handler;
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
  v28 = createdCopy;
  v29 = dCopy;
  v30 = tokenCopy;
  finishedCopy = finished;
  v31 = aliasCopy;
  v32 = handlerCopy;
  v22 = handlerCopy;
  v23 = aliasCopy;
  v24 = tokenCopy;
  v25 = dCopy;
  v26 = createdCopy;
  dispatch_barrier_async(authQueue, block);
}

- (void)accountCreated:(id)created playerID:(id)d authenticationToken:(id)token alias:(id)alias altDSID:(id)iD finished:(BOOL)finished handler:(id)handler
{
  createdCopy = created;
  dCopy = d;
  tokenCopy = token;
  aliasCopy = alias;
  iDCopy = iD;
  handlerCopy = handler;
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
  v31 = createdCopy;
  v32 = dCopy;
  v33 = tokenCopy;
  v34 = aliasCopy;
  v35 = iDCopy;
  finishedCopy = finished;
  v36 = handlerCopy;
  v24 = handlerCopy;
  v25 = iDCopy;
  v26 = aliasCopy;
  v27 = tokenCopy;
  v28 = dCopy;
  v29 = createdCopy;
  dispatch_barrier_async(authQueue, v30);
}

- (void)accountEdited:(id)edited alias:(id)alias firstName:(id)name lastName:(id)lastName handler:(id)handler
{
  editedCopy = edited;
  aliasCopy = alias;
  nameCopy = name;
  lastNameCopy = lastName;
  handlerCopy = handler;
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
  v22 = handlerCopy;
  v20 = handlerCopy;
  [(GKService *)service accountEdited:editedCopy alias:aliasCopy firstName:nameCopy lastName:lastNameCopy handler:v21];
}

- (void)setLoginStatus:(unint64_t)status handler:(id)handler
{
  handlerCopy = handler;
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
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(GKService *)service setLoginStatus:status handler:v11];
}

- (void)renewCredentialsForAccountWithUsername:(id)username ttl:(double)ttl withCompletion:(id)completion
{
  service = self->_service;
  completionCopy = completion;
  usernameCopy = username;
  if (([(GKService *)service conformsToProtocol:&OBJC_PROTOCOL___GKAccountServicePrivate]& 1) == 0)
  {
    v11 = [NSString stringWithFormat:@"Wrapped service must conform to the GKAccountService protocol!"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([_service conformsToProtocol:@protocol(GKAccountServicePrivate)])\n[%s (%s:%d)]", v11, "-[GKAuthenticationWrapperService renewCredentialsForAccountWithUsername:ttl:withCompletion:]", [lastPathComponent UTF8String], 639);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v15 renewCredentialsForAccountWithUsername:usernameCopy ttl:completionCopy withCompletion:ttl];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v12.receiver = self;
  v12.super_class = GKAuthenticationWrapperService;
  v5 = [(GKAuthenticationWrapperService *)&v12 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = NSStringFromSelector(selector);
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

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (-[GKService requiresAuthenticationForSelector:](self->_service, "requiresAuthenticationForSelector:", [invocationCopy selector]))
  {
    [invocationCopy retainArguments];
    authQueue = self->_authQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F3DE8;
    v6[3] = &unk_1003610B8;
    v6[4] = self;
    v7 = invocationCopy;
    dispatch_async(authQueue, v6);
  }

  else
  {
    [invocationCopy invokeWithTarget:self->_service];
  }
}

- (void)assertProtocol
{
  if (([(GKService *)self->_service conformsToProtocol:&OBJC_PROTOCOL___GKAccountService]& 1) == 0)
  {
    v2 = [NSString stringWithFormat:@"Wrapped service must conform to the GKAccountService protocol!"];
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
    lastPathComponent = [v3 lastPathComponent];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([_service conformsToProtocol:@protocol(GKAccountService)])\n[%s (%s:%d)]", v2, "-[GKAuthenticationWrapperService assertProtocol]", [lastPathComponent UTF8String], 689);

    [NSException raise:@"GameKit Exception" format:@"%@", v5];
  }
}

- (void)assertPrivateProtocol
{
  if (([(GKService *)self->_service conformsToProtocol:&OBJC_PROTOCOL___GKAccountServicePrivate]& 1) == 0)
  {
    v2 = [NSString stringWithFormat:@"Wrapped service must conform to the GKAccountServicePrivate protocol!"];
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAuthenticationWrapperService.m"];
    lastPathComponent = [v3 lastPathComponent];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([_service conformsToProtocol:@protocol(GKAccountServicePrivate)])\n[%s (%s:%d)]", v2, "-[GKAuthenticationWrapperService assertPrivateProtocol]", [lastPathComponent UTF8String], 693);

    [NSException raise:@"GameKit Exception" format:@"%@", v5];
  }
}

@end