@interface GKClientProxy
+ (BOOL)getDebugModeForBundleID:(id)d;
+ (BOOL)isExtensionBundleID:(id)d;
+ (BOOL)isGameCenterDashboardForegroundRunning;
+ (NSArray)clients;
+ (id)_clientLookup;
+ (id)_existingManagedObjectContextForPlayerID:(id)d;
+ (id)_newManagedObjectContextWithCacheURL:(id)l environment:(int64_t)environment psc:(id)psc storeOptions:(id)options;
+ (id)bundleIDsToBeInitializedInDebugMode;
+ (id)cacheDatabaseURLForBundleID:(id)d playerID:(id)iD language:(id)language name:(id)name fileManager:(id)manager;
+ (id)cacheDirectoryForBundleID:(id)d;
+ (id)cacheFileQueue;
+ (id)clientForBundleID:(id)d bundle:(id)bundle pid:(int)pid createIfNecessary:(BOOL)necessary connectionEntitlements:(id)entitlements;
+ (id)clientForInviteSessionToken:(id)token;
+ (id)clientForMatchmakingRID:(id)d;
+ (id)clientForProcessIdentifier:(int)identifier;
+ (id)contextKeyForPlayerID:(id)d;
+ (id)createPersistentStoreCoordinator;
+ (id)factoryQueue;
+ (id)foregroundClient;
+ (id)getParentBundleIDPrefixWithChildBundleID:(id)d parentBundleID:(id)iD;
+ (id)insecureDatabaseDirectoryURLForBundleID:(id)d language:(id)language playerID:(id)iD;
+ (id)insecureDatabaseFileURLForBundleID:(id)d language:(id)language playerID:(id)iD name:(id)name;
+ (id)lastKnownAppInitStateForClientWithBundleID:(id)d pid:(int)pid;
+ (id)managedObjectModel;
+ (id)newManagedObjectContextForPlayerID:(id)d bundleID:(id)iD language:(id)language environment:(int64_t)environment;
+ (id)nonGameCenterForegroundClient;
+ (id)storeAndForwardDirectoryPathForEnvironment:(int64_t)environment;
+ (id)syncQueue;
+ (void)closeDatabaseFromManagedObjectContextForMOC:(id)c;
+ (void)closeDatabaseFromManagedObjectContextForPlayerID:(id)d;
+ (void)enumerateClientsUsingBlock:(id)block;
+ (void)migrateInsecureDatabaseToSecureDatabaseURL:(id)l usingPersistantStoreCoordinator:(id)coordinator fileManager:(id)manager options:(id)options playerID:(id)d bundleID:(id)iD language:(id)language name:(id)self0;
+ (void)migrateSecurityApplicationGroupDatabaseToSecureDatabaseURL:(id)l usingPersistantStoreCoordinator:(id)coordinator fileManager:(id)manager options:(id)options playerID:(id)d bundleID:(id)iD language:(id)language name:(id)self0;
+ (void)performDelayedRequestsForEnvironment:(int64_t)environment;
+ (void)removeAllCachesWithHandler:(id)handler;
+ (void)removeCacheForPlayerID:(id)d completion:(id)completion;
+ (void)removeClient:(id)client;
+ (void)saveAppInitState:(id)state forBundleID:(id)d pid:(int)pid;
+ (void)setDebugMode:(BOOL)mode bundleID:(id)d;
- (BOOL)clientHasAnyPrivateEntitlement;
- (BOOL)isAppDistributorThirdParty;
- (BOOL)isDevSignedForBundleID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGameCenter;
- (BOOL)notifyAboutScoreSubmissions;
- (BOOL)processMatchResponse:(id)response;
- (GKClientProxy)initWithBundleIdentifier:(id)identifier bundle:(id)bundle pid:(int)pid connectionEntitlements:(id)entitlements;
- (GKGameInternal)currentGame;
- (GKPeerDiscovery)peerDiscovery;
- (GKUIViewService)viewService;
- (GKViceroyNearbyDiscovery)nearbyDiscovery;
- (NSDictionary)gameDescriptor;
- (NSLocale)locale;
- (NSString)description;
- (NSString)parentBundleIdentifier;
- (NSString)protocolVersion;
- (id)_delayedRequestWriterWithCacheWriterClass:(Class)class cacheReaderClass:(Class)readerClass networkWriterClass:(Class)writerClass bagKey:(id)key batchSubmissionInterval:(int64_t)interval credential:(id)credential;
- (id)appSessionForCredential:(id)credential;
- (id)appSessionForPlayer:(id)player;
- (id)appTerminateRequestWithBackgroundFlag:(BOOL)flag;
- (id)connectionProxyForUseCase:(id)case;
- (id)credentialForPlayer:(id)player;
- (id)credentialForPlayerID:(id)d;
- (id)deletePlayerPhotoWriterWithCredential:(id)credential;
- (id)fetchOrCreateInviteSession;
- (id)gameServicesActorSystem;
- (id)managedObjectContextForPlayerID:(id)d;
- (id)missingTransitionFromState:(id)state toState:(id)toState;
- (id)parsedBundleIDFromPartyURL:(id)l;
- (id)removeGameWriterWithCredential:(id)credential;
- (id)requestsCacheForEnvironment:(int64_t)environment;
- (id)rootOrService;
- (id)serviceForClass:(Class)class transport:(id)transport client:(id)client credential:(id)credential;
- (id)setPlayerPhotoWriterWithCredential:(id)credential;
- (id)setPlayerStatusWriterWithCredential:(id)credential;
- (id)storeAndForwardDirectoryPathForEnvironment:(int64_t)environment;
- (id)transactionGroupIfCacheExistsForPlayerID:(id)d;
- (id)transactionGroupWithName:(id)name forPlayerID:(id)d;
- (id)transportWithCredential:(id)credential;
- (id)verifyAuthorized;
- (int64_t)appSignatureType;
- (unint64_t)hash;
- (void)_removeDelayedRequestStore;
- (void)_setupDelayedRequestsWriters;
- (void)acceptInviteWithNotification:(id)notification;
- (void)acceptMultiplayerGameInvite;
- (void)achievementSelected:(id)selected;
- (void)addAppSession:(id)session forCredential:(id)credential;
- (void)authenticatedPlayersDidChange:(id)change authenticatingBundleID:(id)d reply:(id)reply;
- (void)backgroundWithCompletionHandler:(id)handler;
- (void)beginNetworkActivity;
- (void)bgInitializeWithCredential:(id)credential completionHandler:(id)handler;
- (void)cancelGameInvite:(id)invite;
- (void)cancelInvitationForSession:(id)session playerID:(id)d pushTokens:(id)tokens handler:(id)handler;
- (void)cancelInviteWithNotification:(id)notification;
- (void)cancelOutstandingCheckMatchStatus;
- (void)challengeCompleted:(id)completed;
- (void)challengeReceived:(id)received;
- (void)checkMatchStatus;
- (void)clearDiscoveryInfo;
- (void)completedChallengeSelected:(id)selected;
- (void)dealloc;
- (void)declineInviteWithNotification:(id)notification;
- (void)deleteInviteSession;
- (void)deliverEncodedGameActivityInstance:(id)instance;
- (void)deliverGameActivityAsInternal:(id)internal;
- (void)deliverMostRecentPendingGameActivityInstance;
- (void)didConnectToParticipantWithID:(id)d;
- (void)didDisconnectFromParticipantWithID:(id)d;
- (void)didEnterForeground;
- (void)didReceiveData:(id)data reliably:(BOOL)reliably forRecipients:(id)recipients fromSender:(id)sender;
- (void)endNetworkActivity;
- (void)fetchTurnBasedData;
- (void)friendRequestSelected:(id)selected;
- (void)getAccountNameWithHandler:(id)handler;
- (void)getAuthenticatedLocalPlayersWithStatus:(unint64_t)status handler:(id)handler;
- (void)getAuthenticatedPlayerCredential:(id)credential;
- (void)getAuthenticatedPlayerIDWithHandler:(id)handler;
- (void)getAuthenticatedPlayerInfo:(id)info;
- (void)getGamedFiredUpWithHandler:(id)handler;
- (void)getPreferenceForKey:(id)key handler:(id)handler;
- (void)getPrivateServicesForPID:(int)d localPlayer:(id)player reply:(id)reply;
- (void)getPrivateServicesWithTransport:(id)transport forClient:(id)client reply:(id)reply;
- (void)getServicesForPID:(int)d localPlayer:(id)player reply:(id)reply;
- (void)getServicesWithTransport:(id)transport forClient:(id)client reply:(id)reply;
- (void)handleCloudKitShareMetadata:(id)metadata completionHandler:(id)handler;
- (void)initializeInitializationStateMachine;
- (void)initializeWithCredential:(id)credential completionHandler:(id)handler;
- (void)invokeGameServices:(id)services completionHandler:(id)handler;
- (void)localPlayerAgeCategoryWithCompletion:(id)completion;
- (void)localizedMessageFromDictionary:(id)dictionary forBundleID:(id)d handler:(id)handler;
- (void)messagesDidReceiveGameCenterURL:(id)l senderHandle:(id)handle contactID:(id)d;
- (void)metricsValuesChanged;
- (void)nearbyDataReceivedForPlayerID:(id)d deviceID:(id)iD data:(id)data;
- (void)nearbyPlayerFoundForPlayerID:(id)d deviceID:(id)iD discoveryInfo:(id)info;
- (void)nearbyPlayerLostForPlayerID:(id)d deviceID:(id)iD;
- (void)onChallengeUpdateReceivedWithUserInfo:(id)info;
- (void)onGameActivityOpenedWithPartyURL:(id)l creatorPlayerID:(id)d;
- (void)onGameActivityReceivedWithPartyURL:(id)l creatorPlayerID:(id)d;
- (void)onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:(id)identifier activityProperties:(id)properties bundleID:(id)d referenceLeaderboardID:(id)iD referenceAchievementDescriptionID:(id)descriptionID;
- (void)onServerCacheInvalidationReceivedWithBagKey:(id)key playerID:(id)d;
- (void)performAsync:(id)async;
- (void)performDelayedRequestsForCredential:(id)credential;
- (void)performDelayedRequestsForEnvironment:(int64_t)environment;
- (void)performSync:(id)sync;
- (void)playerFound:(id)found deviceID:(id)d discoveryInfo:(id)info;
- (void)playerLost:(id)lost deviceID:(id)d;
- (void)presentBannerWithNotification:(id)notification;
- (void)receivedChallengeSelected:(id)selected;
- (void)receivedData:(id)data deviceID:(id)d data:(id)a5;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)refreshPendingDataTypes;
- (void)relayPushNotification:(id)notification;
- (void)requestSandboxExtension:(id)extension;
- (void)resetLoginCancelCount;
- (void)resetNetworkActivity;
- (void)respondedToNearbyInvite:(id)invite;
- (void)scoreSelected:(id)selected;
- (void)sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:(id)d completionHandler:(id)handler;
- (void)setBadgeCount:(unint64_t)count forType:(unint64_t)type;
- (void)setCheckMatchStatusTimer:(id)timer;
- (void)setCurrentGame:(id)game serverEnvironment:(int64_t)environment reply:(id)reply;
- (void)setDebugMode:(BOOL)mode bundleID:(id)d reply:(id)reply;
- (void)setExtensionProxy:(id)proxy forBundleID:(id)d;
- (void)setHostPID:(int)d reply:(id)reply;
- (void)setLaunchEvent:(unint64_t)event withContext:(id)context;
- (void)setPreferencesValues:(id)values;
- (void)setTestGame:(id)game protocolVersion:(id)version reply:(id)reply;
- (void)stateDidChange;
- (void)terminateWithCompletionHandler:(id)handler;
- (void)updateAppInitState;
- (void)updateIfMissingConnectionEntitlements:(id)entitlements bundleID:(id)d;
- (void)updateIfRecentlyInstalled;
- (void)updateInviteWithNotification:(id)notification;
- (void)updatePreferencesFromBag:(id)bag;
@end

@implementation GKClientProxy

+ (id)factoryQueue
{
  if (qword_1003B9290 != -1)
  {
    sub_100007440();
  }

  v3 = qword_1003B9288;

  return v3;
}

+ (id)_clientLookup
{
  if (qword_1003B92A0 != -1)
  {
    sub_1002913B8();
  }

  v3 = qword_1003B9298;

  return v3;
}

- (void)initializeInitializationStateMachine
{
  v3 = objc_alloc_init(_GKStateMachine);
  v8[0] = @"GKAppInitInProgress";
  v7[0] = @"GKAppInitUnknown";
  v7[1] = @"GKAppInitInProgress";
  v6[0] = @"GKAppInitialized";
  v6[1] = @"GKAppInitUnknown";
  v4 = [NSArray arrayWithObjects:v6 count:2];
  v7[2] = @"GKAppInitialized";
  v8[1] = v4;
  v8[2] = @"GKAppInitUnknown";
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v3 setValidTransitions:v5];

  [v3 setCurrentState:@"GKAppInitUnknown"];
  [v3 setDelegate:self];
  [v3 setShouldLogStateTransitions:1];
  [(GKClientProxy *)self setAppInitStateMachine:v3];
}

+ (id)bundleIDsToBeInitializedInDebugMode
{
  if (qword_1003B92B0 != -1)
  {
    sub_1002913CC();
  }

  v3 = qword_1003B92A8;

  return v3;
}

- (NSString)parentBundleIdentifier
{
  applicationRecord = [(GKClientProxy *)self applicationRecord];
  if (applicationRecord)
  {
    bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
    applicationRecord2 = [(GKClientProxy *)self applicationRecord];
    appClipMetadata = [applicationRecord2 appClipMetadata];
    parentApplicationIdentifiers = [appClipMetadata parentApplicationIdentifiers];
    firstObject = [parentApplicationIdentifiers firstObject];
    v9 = [GKClientProxy getParentBundleIDPrefixWithChildBundleID:bundleIdentifier parentBundleID:firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSLocale)locale
{
  language = [(GKClientProxy *)self language];
  if (language)
  {
    v3 = [[NSLocale alloc] initWithLocaleIdentifier:language];
  }

  else
  {
    v3 = +[NSLocale currentLocale];
  }

  v4 = v3;

  return v4;
}

+ (id)getParentBundleIDPrefixWithChildBundleID:(id)d parentBundleID:(id)iD
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (iD)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    iD = v9;
  }

  else
  {
    v8 = 0;
  }

  sub_1000052E0(v5, v7, v8, iD);
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)description
{
  v11.receiver = self;
  v11.super_class = GKClientProxy;
  v3 = [(GKClientProxy *)&v11 description];
  bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
  bundleShortVersion = [(GKClientProxy *)self bundleShortVersion];
  bundleVersion = [(GKClientProxy *)self bundleVersion];
  pid = self->_pid;
  originalBundleIdentifier = [(GKClientProxy *)self originalBundleIdentifier];
  v9 = [NSString stringWithFormat:@"%@ (identifier:%@ bundleShortVersion:%@ bundleVersion:%@ pid:%d, originalBundleIdentifier:%@)", v3, bundleIdentifier, bundleShortVersion, bundleVersion, pid, originalBundleIdentifier];

  return v9;
}

- (void)didEnterForeground
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
    *buf = 138412290;
    v14 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "did enter foreground: %@", buf, 0xCu);
  }

  v7 = +[GKPreferences shared];
  [v7 invalidate];

  if ([(GKClientProxy *)self isGameCenter])
  {
    [(GKClientProxy *)self refreshPendingDataTypes];
  }

  else
  {
    v8 = +[GKDataRequestManager sharedManager];
    [v8 setAuthenticatingWithSettingsBundleID:0];
  }

  [(GKClientProxy *)self inviteSession];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014B0C0;
  v11 = v10[3] = &unk_1003610B8;
  selfCopy = self;
  v9 = v11;
  [v9 performAsync:v10];
}

- (BOOL)isGameCenter
{
  bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:GKGameCenterIdentifier];

  return v3;
}

- (void)updateIfRecentlyInstalled
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKClientProxy: updateIfRecentlyInstalled", buf, 2u);
  }

  if (![(GKClientProxy *)self installed])
  {
    v5 = +[GKApplicationWorkspace defaultWorkspace];
    bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
    v7 = [v5 applicationProxyForBundleID:bundleIdentifier];

    if (v7)
    {
      if (!os_log_GKGeneral)
      {
        v8 = GKOSLoggers();
      }

      v9 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKClientProxy: updateIfRecentlyInstalled - workspace and appProxy exist, updating", v14, 2u);
      }

      bundleVersion = [v7 bundleVersion];
      [(GKClientProxy *)self setBundleVersion:bundleVersion];

      bundleShortVersion = [v7 bundleShortVersion];
      [(GKClientProxy *)self setBundleShortVersion:bundleShortVersion];

      adamID = [v7 adamID];
      [(GKClientProxy *)self setAdamID:adamID];

      externalVersion = [v7 externalVersion];
      [(GKClientProxy *)self setExternalVersion:externalVersion];

      [(GKClientProxy *)self setInstalled:1];
    }
  }
}

- (void)invokeGameServices:(id)services completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  servicesCopy = services;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100006F64(v8, v10, selfCopy, v6);
  _Block_release(v6);
  sub_1000072CC(v8, v10);
}

- (id)gameServicesActorSystem
{
  daemonGameServices = [(GKClientProxy *)self daemonGameServices];
  actorSystem = [daemonGameServices actorSystem];

  return actorSystem;
}

- (void)refreshPendingDataTypes
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
    *buf = 138412290;
    v15 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Refreshing pending data types for %@", buf, 0xCu);
  }

  pendingDataTypesForRefresh = [(GKClientProxy *)self pendingDataTypesForRefresh];
  objc_sync_enter(pendingDataTypesForRefresh);
  pendingDataTypesForRefresh2 = [(GKClientProxy *)self pendingDataTypesForRefresh];
  v9 = [pendingDataTypesForRefresh2 count];

  if (v9)
  {
    pendingDataTypesForRefresh3 = [(GKClientProxy *)self pendingDataTypesForRefresh];
    v11 = [pendingDataTypesForRefresh3 copy];

    pendingDataTypesForRefresh4 = [(GKClientProxy *)self pendingDataTypesForRefresh];
    [pendingDataTypesForRefresh4 removeAllObjects];
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(pendingDataTypesForRefresh);

  if (v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001438BC;
    v13[3] = &unk_100368320;
    v13[4] = self;
    [v11 enumerateObjectsUsingBlock:v13];
  }
}

- (id)credentialForPlayerID:(id)d
{
  dCopy = d;
  v5 = +[GKPlayerCredentialController sharedController];
  v6 = [v5 credentialForPlayerID:dCopy environment:{-[GKClientProxy environment](self, "environment")}];

  return v6;
}

- (GKClientProxy)initWithBundleIdentifier:(id)identifier bundle:(id)bundle pid:(int)pid connectionEntitlements:(id)entitlements
{
  v7 = *&pid;
  identifierCopy = identifier;
  bundleCopy = bundle;
  entitlementsCopy = entitlements;
  v14 = [(GKClientProxy *)self init];
  if (!v14)
  {
    goto LABEL_34;
  }

  context = objc_autoreleasePoolPush();
  v72 = entitlementsCopy;
  if (!identifierCopy)
  {
    v15 = [NSString stringWithFormat:@"GKClientProxy MUST have a bundleIdentifier"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    lastPathComponent = [v16 lastPathComponent];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (bundleIdentifier != nil)\n[%s (%s:%d)]", v15, "-[GKClientProxy initWithBundleIdentifier:bundle:pid:connectionEntitlements:]", [lastPathComponent UTF8String], 184, context);

    [NSException raise:@"GameKit Exception" format:@"%@", v18];
  }

  objc_storeStrong(&v14->_connectionEntitlements, entitlements);
  v19 = +[GKApplicationWorkspace defaultWorkspace];
  v20 = [v19 applicationProxyForBundleID:identifierCopy];
  v21 = v20;
  v14->_installed = v20 != 0;
  if (!bundleCopy)
  {
    bundleCopy = [v20 bundle];
  }

  bundleVersion = [v21 bundleVersion];
  if ([identifierCopy isEqualToString:GKGameCenterIdentifier])
  {
    v23 = GKGameCenterBundleVersion;

    bundleVersion = v23;
  }

  if (!bundleVersion)
  {
    bundleVersion = [bundleCopy _gkBundleVersion];
  }

  bundleShortVersion = [v21 bundleShortVersion];
  if ((bundleShortVersion || ([bundleCopy _gkBundleShortVersion], (bundleShortVersion = objc_claimAutoreleasedReturnValue()) != 0)) && !bundleVersion)
  {
    bundleVersion = bundleShortVersion;
  }

  else if (!bundleVersion || bundleShortVersion)
  {
    goto LABEL_17;
  }

  bundleVersion = bundleVersion;
  bundleShortVersion = bundleVersion;
LABEL_17:
  v14->_pid = v7;
  objc_storeStrong(&v14->_bundleIdentifier, identifier);
  v25 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];
  applicationRecord = v14->_applicationRecord;
  v14->_applicationRecord = v25;

  objc_storeStrong(&v14->_bundleVersion, bundleVersion);
  objc_storeStrong(&v14->_bundleShortVersion, bundleShortVersion);
  adamID = [v21 adamID];
  adamID = v14->_adamID;
  v14->_adamID = adamID;

  externalVersion = [v21 externalVersion];
  externalVersion = v14->_externalVersion;
  v14->_externalVersion = externalVersion;

  v31 = +[NSBundle _gkPreferredSystemLanguage];
  language = v14->_language;
  v14->_language = v31;

  if (!v14->_language)
  {
    v33 = GKGetPreferredLanguage();
    v34 = [NSLocale canonicalLanguageIdentifierFromString:v33];
    v35 = v14->_language;
    v14->_language = v34;
  }

  v14->_applicationState = GKGetApplicationStateForBundleID(v14->_bundleIdentifier);
  v36 = dispatch_queue_create("com.apple.gamecenter.clientproxy.authQueue", 0);
  authQueue = v14->_authQueue;
  v14->_authQueue = v36;

  v38 = dispatch_queue_create("com.apple.gamecenter.clientproxy.checkMatchStatusQueue", 0);
  checkMatchStatusQueue = v14->_checkMatchStatusQueue;
  v14->_checkMatchStatusQueue = v38;

  v40 = dispatch_queue_create("com.apple.gamecenter.clientproxy.replyQueue", 0);
  replyQueue = v14->_replyQueue;
  v14->_replyQueue = v40;

  v42 = dispatch_queue_create("com.apple.gamecenter.clientproxy.taskQueue", &_dispatch_queue_attr_concurrent);
  taskQueue = v14->_taskQueue;
  v14->_taskQueue = v42;

  [(GKClientProxy *)v14 initializeInitializationStateMachine];
  v44 = dispatch_queue_create("com.apple.gamecenter.clientproxy.cacheQueue", 0);
  cacheQueue = v14->_cacheQueue;
  v14->_cacheQueue = v44;

  v46 = dispatch_queue_create("com.apple.gamecenter.clientproxy.delayedRequestsQueue", 0);
  delayedRequestsQueue = v14->_delayedRequestsQueue;
  v14->_delayedRequestsQueue = v46;

  v48 = +[GKDataRequestManager sharedManager];
  v14->_environment = [v48 currentEnvironment];
  v49 = objc_alloc_init(NSMutableArray);
  pendingDataTypesForRefresh = v14->_pendingDataTypesForRefresh;
  v14->_pendingDataTypesForRefresh = v49;

  v51 = [GKThreadsafeDictionary alloc];
  v52 = [NSString stringWithFormat:@"com.apple.gamed.gk-app-sessions-%@-%d", identifierCopy, v7];
  v53 = [v51 initWithName:v52];
  appSessions = v14->_appSessions;
  v14->_appSessions = v53;

  v14->_achievementsRateLimitingCurrentNumberOfRequests = 0;
  v14->_achievementsRateLimitedCurrentState = 0;
  v55 = +[NSDate date];
  achievementsRateLimitingStartDate = v14->_achievementsRateLimitingStartDate;
  v14->_achievementsRateLimitingStartDate = v55;

  v14->_scoresRateLimitingCurrentNumberOfRequests = 0;
  v14->_scoresRateLimitedCurrentState = 0;
  v57 = +[NSDate date];
  scoresRateLimitingStartDate = v14->_scoresRateLimitingStartDate;
  v14->_scoresRateLimitingStartDate = v57;

  v59 = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:5 capacity:6];
  extensionProxies = v14->_extensionProxies;
  v14->_extensionProxies = v59;

  v61 = objc_alloc_init(NSMutableDictionary);
  [(GKClientProxy *)v14 setAlreadyCoalescingNetworkRequests:v61];

  if (bundleCopy)
  {
    if ([bundleCopy _gkIsEligibleForNearbyAdvertising])
    {
      v14->_supportsNearbyAdvertising = 1;
      if (!os_log_GKGeneral)
      {
        v62 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        sub_100290CDC();
      }
    }

    else
    {
      v14->_supportsNearbyAdvertising = 0;
      if (!os_log_GKGeneral)
      {
        v64 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        sub_100290C70();
      }
    }
  }

  else
  {
    v14->_supportsNearbyAdvertising = 0;
    if (!os_log_GKGeneral)
    {
      v63 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_100290D48();
    }
  }

  v14->_isInDebugMode = [GKClientProxy getDebugModeForBundleID:v14->_bundleIdentifier];
  v65 = [_TtC14GameDaemonCore20GKDaemonGameServices alloc];
  v66 = +[GKLibraryDependencies shared];
  v67 = v65;
  entitlementsCopy = v72;
  v68 = [(GKDaemonGameServices *)v67 initWithClientProxy:v14 bundleID:identifierCopy entitlements:v72 libraryDependencies:v66];
  daemonGameServices = v14->_daemonGameServices;
  v14->_daemonGameServices = v68;

  objc_autoreleasePoolPop(context);
LABEL_34:

  return v14;
}

- (GKViceroyNearbyDiscovery)nearbyDiscovery
{
  v3 = +[GKPreferences shared];
  disableViceroyNearby = [v3 disableViceroyNearby];

  if (disableViceroyNearby)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (![(GKClientProxy *)self supportsNearbyAdvertising])
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_100290DBC(v12);
    }

    goto LABEL_14;
  }

  nearbyDiscovery = self->_nearbyDiscovery;
  if (!nearbyDiscovery)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_100290E4C(v7);
    }

    v8 = objc_alloc_init(GKViceroyNearbyDiscovery);
    v9 = self->_nearbyDiscovery;
    self->_nearbyDiscovery = v8;

    nearbyDiscovery = self->_nearbyDiscovery;
  }

  v10 = nearbyDiscovery;
LABEL_15:

  return v10;
}

- (GKPeerDiscovery)peerDiscovery
{
  if ([(GKClientProxy *)self supportsNearbyAdvertising])
  {
    peerDiscovery = self->_peerDiscovery;
    if (!peerDiscovery)
    {
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
      }

      v5 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        sub_100290F6C(v5);
      }

      v6 = +[GKPlayerCredentialController sharedController];
      v7 = [v6 pushCredentialForEnvironment:{-[GKClientProxy environment](self, "environment")}];
      playerInternal = [v7 playerInternal];

      v9 = +[GKDataRequestManager sharedManager];
      pushToken = [v9 pushToken];

      if (pushToken && ([playerInternal playerID], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
      {
        v12 = +[GKPreferences shared];
        fastSyncTransportEnabled = [v12 fastSyncTransportEnabled];

        if (fastSyncTransportEnabled)
        {
          v14 = [GKPeerDiscovery alloc];
          playerID = [playerInternal playerID];
          v16 = [(GKPeerDiscovery *)v14 initWithDelegate:self localPlayerID:playerID localPushToken:pushToken];
          v17 = self->_peerDiscovery;
          self->_peerDiscovery = v16;
        }
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v21 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_100290FFC();
        }
      }

      peerDiscovery = self->_peerDiscovery;
    }

    v20 = peerDiscovery;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_100290EDC(v19);
    }

    v20 = 0;
  }

  return v20;
}

- (void)clearDiscoveryInfo
{
  if (self->_nearbyDiscovery)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_100291038();
    }

    [(GKViceroyNearbyDiscovery *)self->_nearbyDiscovery stopBrowsing];
    [(GKViceroyNearbyDiscovery *)self->_nearbyDiscovery stopAdvertising];
    nearbyDiscovery = self->_nearbyDiscovery;
    self->_nearbyDiscovery = 0;
  }

  if (self->_peerDiscovery)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_100291074();
    }

    v6 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 344, "[GKClientProxy clearDiscoveryInfo]"];
    v7 = [GKDispatchGroup dispatchGroupWithName:v6];

    [v7 enter];
    peerDiscovery = self->_peerDiscovery;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100140CDC;
    v15[3] = &unk_100361770;
    v9 = v7;
    v16 = v9;
    [(GKPeerDiscovery *)peerDiscovery stopListeningWithCompletionHandler:v15];
    [v9 enter];
    v10 = self->_peerDiscovery;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100140D48;
    v13[3] = &unk_100361770;
    v14 = v9;
    v11 = v9;
    [(GKPeerDiscovery *)v10 stopBrowsingWithCompletionHandler:v13];
    [v11 wait];
    v12 = self->_peerDiscovery;
    self->_peerDiscovery = 0;
  }
}

- (BOOL)isAppDistributorThirdParty
{
  applicationRecord = [(GKClientProxy *)self applicationRecord];
  iTunesMetadata = [applicationRecord iTunesMetadata];
  distributorInfo = [iTunesMetadata distributorInfo];
  distributorIsThirdParty = [distributorInfo distributorIsThirdParty];

  return distributorIsThirdParty;
}

- (void)updateIfMissingConnectionEntitlements:(id)entitlements bundleID:(id)d
{
  entitlementsCopy = entitlements;
  dCopy = d;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    connectionEntitlements = [(GKClientProxy *)self connectionEntitlements];
    v16 = 138412802;
    v17 = entitlementsCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = connectionEntitlements;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKClientProxy: updateIfMissingConnectionEntitlements: %@, bundleID: %@, self.connectionEntitlements: %@", &v16, 0x20u);
  }

  if (entitlementsCopy)
  {
    connectionEntitlements2 = [(GKClientProxy *)self connectionEntitlements];

    if (!connectionEntitlements2)
    {
      [(GKClientProxy *)self setConnectionEntitlements:entitlementsCopy];
      v13 = [_TtC14GameDaemonCore20GKDaemonGameServices alloc];
      v14 = +[GKLibraryDependencies shared];
      v15 = [(GKDaemonGameServices *)v13 initWithClientProxy:self bundleID:dCopy entitlements:entitlementsCopy libraryDependencies:v14];
      [(GKClientProxy *)self setDaemonGameServices:v15];
    }
  }
}

- (void)dealloc
{
  viewService = [(GKClientProxy *)self viewService];
  [viewService setHostClient:0];

  [(GKClientProxy *)self setViewService:0];
  sandboxExtensionToken = [(GKClientProxy *)self sandboxExtensionToken];

  if (sandboxExtensionToken)
  {
    sandboxExtensionToken2 = [(GKClientProxy *)self sandboxExtensionToken];
    [sandboxExtensionToken2 longLongValue];
    sandbox_extension_release();
  }

  [(NSMapTable *)self->_extensionProxies removeAllObjects];
  v6.receiver = self;
  v6.super_class = GKClientProxy;
  [(GKClientProxy *)&v6 dealloc];
}

- (id)transportWithCredential:(id)credential
{
  credentialCopy = credential;
  v5 = +[GKDataRequestManager sharedManager];
  storeBag = [v5 storeBag];
  v7 = [GKDataTransport transportWithBag:storeBag clientProxy:self credential:credentialCopy];

  return v7;
}

- (id)credentialForPlayer:(id)player
{
  playerCopy = player;
  accountName = [playerCopy accountName];

  if (accountName)
  {
    v6 = +[GKPlayerCredentialController sharedController];
    accountName2 = [playerCopy accountName];
    v8 = [v6 credentialForUsername:accountName2 environment:{-[GKClientProxy environment](self, "environment")}];
  }

  else
  {
    playerID = [playerCopy playerID];

    v6 = +[GKPlayerCredentialController sharedController];
    environment = [(GKClientProxy *)self environment];
    if (playerID)
    {
      [v6 credentialForPlayer:playerCopy environment:environment];
    }

    else
    {
      [v6 primaryCredentialForEnvironment:environment];
    }
    v8 = ;
  }

  return v8;
}

- (unint64_t)hash
{
  bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleIdentifier = [v5 bundleIdentifier];
    bundleIdentifier2 = [(GKClientProxy *)self bundleIdentifier];
    v8 = [bundleIdentifier isEqual:bundleIdentifier2];

    if (v8 && ([v5 bundleVersion], v9 = objc_claimAutoreleasedReturnValue(), -[GKClientProxy bundleVersion](self, "bundleVersion"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11))
    {
      bundleShortVersion = [v5 bundleShortVersion];
      bundleShortVersion2 = [(GKClientProxy *)self bundleShortVersion];
      v14 = [bundleShortVersion isEqual:bundleShortVersion2];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSDictionary)gameDescriptor
{
  v3 = +[NSMutableDictionary dictionary];
  adamID = [(GKClientProxy *)self adamID];
  if (adamID)
  {
    v5 = adamID;
    adamID2 = [(GKClientProxy *)self adamID];
    integerValue = [adamID2 integerValue];

    if (integerValue >= 1)
    {
      adamID3 = [(GKClientProxy *)self adamID];
      [v3 setObject:adamID3 forKey:@"adam-id"];
    }
  }

  externalVersion = [(GKClientProxy *)self externalVersion];

  if (externalVersion)
  {
    externalVersion2 = [(GKClientProxy *)self externalVersion];
    [v3 setObject:externalVersion2 forKey:@"external-version"];
  }

  bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(GKClientProxy *)self bundleIdentifier];
    [v3 setObject:bundleIdentifier2 forKey:@"bundle-id"];
  }

  parentBundleIdentifier = [(GKClientProxy *)self parentBundleIdentifier];

  if (parentBundleIdentifier)
  {
    parentBundleIdentifier2 = [(GKClientProxy *)self parentBundleIdentifier];
    [v3 setObject:parentBundleIdentifier2 forKey:@"parent-bundle-id"];
  }

  bundleVersion = [(GKClientProxy *)self bundleVersion];

  if (bundleVersion)
  {
    bundleVersion2 = [(GKClientProxy *)self bundleVersion];
    [v3 setObject:bundleVersion2 forKey:@"bundle-version"];
  }

  bundleShortVersion = [(GKClientProxy *)self bundleShortVersion];

  if (bundleShortVersion)
  {
    bundleShortVersion2 = [(GKClientProxy *)self bundleShortVersion];
    [v3 setObject:bundleShortVersion2 forKey:@"short-bundle-version"];
  }

  bundleIdentifier3 = [(GKClientProxy *)self bundleIdentifier];
  v20 = [GKGameDescriptor stringForPlatform:[GKApplicationWorkspace getPlatformForBundleID:bundleIdentifier3]];
  [v3 setObject:v20 forKeyedSubscript:@"platform"];

  return v3;
}

- (int64_t)appSignatureType
{
  v3 = [(GKClientProxy *)self pid];
  connection = [(GKClientProxy *)self connection];
  v5 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = [GKClientAppSigningStatus appSignatureType:v3 auditToken:v8];

  return v6;
}

- (BOOL)isDevSignedForBundleID:(id)d
{
  if (!d)
  {
    return 0;
  }

  dCopy = d;
  v4 = +[GKDataRequestManager sharedManager];
  v5 = [v4 isDevSignedForBundleID:dCopy];

  return v5;
}

- (NSString)protocolVersion
{
  v2 = +[GKPreferences shared];
  [v2 useTestProtocols];
  v3 = GKGetProtocolVersionString();

  return v3;
}

- (void)setExtensionProxy:(id)proxy forBundleID:(id)d
{
  proxyCopy = proxy;
  dCopy = d;
  if (dCopy)
  {
    if (proxyCopy)
    {
      preferencesFromBag = [(GKClientProxy *)self preferencesFromBag];

      if (preferencesFromBag)
      {
        preferencesFromBag2 = [(GKClientProxy *)self preferencesFromBag];
        [proxyCopy setPreferencesValues:preferencesFromBag2];
      }

      extensionProxies = [(GKClientProxy *)self extensionProxies];
      [extensionProxies setObject:proxyCopy forKey:dCopy];
    }

    else
    {
      extensionProxies = [(GKClientProxy *)self extensionProxies];
      [extensionProxies removeObjectForKey:dCopy];
    }
  }
}

- (void)updatePreferencesFromBag:(id)bag
{
  bagCopy = bag;
  [(GKClientProxy *)self setPreferencesFromBag:bagCopy];
  [(GKClientProxy *)self setPreferencesValues:bagCopy];
}

- (BOOL)notifyAboutScoreSubmissions
{
  v3 = +[GKPreferences shared];
  if ([v3 notifyAboutScoreSubmissions])
  {
    isInDebugMode = 1;
  }

  else
  {
    isInDebugMode = [(GKClientProxy *)self isInDebugMode];
  }

  return isInDebugMode;
}

- (void)deliverGameActivityAsInternal:(id)internal
{
  internalCopy = internal;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
  {
    sub_100291128();
  }

  [(GKClientProxy *)self deliverEncodedGameActivityInstance:internalCopy];
}

- (void)deliverMostRecentPendingGameActivityInstance
{
  bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
  {
    sub_100291198();
  }

  if (![(GKClientProxy *)self isGameCenter])
  {
    daemonGameServices = [(GKClientProxy *)self daemonGameServices];
    bundleIdentifier2 = [(GKClientProxy *)self bundleIdentifier];
    [daemonGameServices deliverMostRecentPendingGameActivityInstanceWithBundleID:bundleIdentifier2];
  }
}

- (void)setLaunchEvent:(unint64_t)event withContext:(id)context
{
  contextCopy = context;
  launchEvent = [(GKClientProxy *)self launchEvent];
  if (!launchEvent)
  {
    launchEvent = objc_alloc_init(GKEventTuple);
  }

  [(GKEventTuple *)launchEvent setEventType:event];
  [(GKEventTuple *)launchEvent setContext:contextCopy];

  [(GKClientProxy *)self setLaunchEvent:launchEvent];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    eventType = [(GKEventTuple *)launchEvent eventType];
    context = [(GKEventTuple *)launchEvent context];
    v13[0] = 67109634;
    v13[1] = eventType;
    v14 = 2112;
    v15 = context;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "New launch event(%d) context %@ for client %@", v13, 0x1Cu);
  }
}

- (BOOL)clientHasAnyPrivateEntitlement
{
  viewService = [(GKClientProxy *)self viewService];

  if (viewService)
  {
    selfCopy = [(GKClientProxy *)self viewService];
  }

  else
  {
    extensionProxies = [(GKClientProxy *)self extensionProxies];
    v7 = [extensionProxies count];

    if (v7)
    {
      extensionProxies2 = [(GKClientProxy *)self extensionProxies];
      objectEnumerator = [extensionProxies2 objectEnumerator];
      nextObject = [objectEnumerator nextObject];

      goto LABEL_6;
    }

    selfCopy = self;
  }

  nextObject = selfCopy;
LABEL_6:
  entitlements = [nextObject entitlements];
  hasAnyPrivateEntitlement = [entitlements hasAnyPrivateEntitlement];

  return hasAnyPrivateEntitlement;
}

+ (id)syncQueue
{
  if (qword_1003B9280 != -1)
  {
    sub_100291208();
  }

  v3 = qword_1003B9278;

  return v3;
}

- (void)performSync:(id)sync
{
  block = sync;
  syncQueue = [objc_opt_class() syncQueue];
  v4 = dispatch_get_current_queue();

  if (v4 == syncQueue)
  {
    label = dispatch_queue_get_label(syncQueue);
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s invoked on the same queue(%s), would deadlock at %@", "[GKClientProxy performSync:]", label, v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (dispatch_get_current_queue() != queue)\n[%s (%s:%d)]", v7, "-[GKClientProxy performSync:]", [lastPathComponent UTF8String], 661);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  dispatch_sync(syncQueue, block);
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  syncQueue = [objc_opt_class() syncQueue];
  dispatch_async(syncQueue, asyncCopy);
}

- (void)checkMatchStatus
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_10029121C();
  }

  currentMatchResponse = [(GKClientProxy *)self currentMatchResponse];
  if ([currentMatchResponse transitionToState:3])
  {
    sequence = [currentMatchResponse sequence];
    matchingGroup = [currentMatchResponse matchingGroup];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100141FDC;
    v11[3] = &unk_1003682D0;
    v12 = currentMatchResponse;
    selfCopy = self;
    v15 = sequence;
    v14 = matchingGroup;
    v7 = matchingGroup;
    [v7 perform:v11];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "checkMatchStatus: cannot transition to checking state.", v10, 2u);
    }
  }
}

- (BOOL)processMatchResponse:(id)response
{
  responseCopy = response;
  currentMatchResponse = [(GKClientProxy *)self currentMatchResponse];
  v6 = currentMatchResponse;
  if (!currentMatchResponse)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_10029137C();
    }

    goto LABEL_44;
  }

  if ([currentMatchResponse isFinished])
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_100291340();
    }

    goto LABEL_44;
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_100291258();
    if (responseCopy)
    {
      goto LABEL_15;
    }

LABEL_44:
    v19 = 0;
    goto LABEL_45;
  }

  if (!responseCopy)
  {
    goto LABEL_44;
  }

LABEL_15:
  v10 = [responseCopy objectForKey:@"rid"];
  v11 = [v6 rid];

  if (!v11)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v60 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "rid not found, updating the request with rid: %@", buf, 0xCu);
    }

    [v6 setRid:v10];
    serverRequest = [v6 serverRequest];
    v15 = [serverRequest mutableCopy];

    [v15 setObject:v10 forKey:@"rid"];
    [v6 setServerRequest:v15];
  }

  v16 = [responseCopy objectForKey:@"match-id"];
  v17 = [responseCopy objectForKeyedSubscript:@"status"];
  integerValue = [v17 integerValue];

  v19 = integerValue != 5067;
  if (integerValue == 5067)
  {
    [v6 transitionToState:6];
  }

  else if (v16)
  {
    if ([v6 transitionToState:4])
    {
      [(GKClientProxy *)self cancelOutstandingCheckMatchStatus];
      v20 = [responseCopy objectForKey:@"matches"];
      [v6 setMatches:v20];

      v21 = [responseCopy objectForKeyedSubscript:@"match-id"];
      [v6 setMatchID:v21];

      v22 = [responseCopy objectForKey:@"rid"];
      [v6 setRid:v22];

      v23 = [responseCopy objectForKey:@"session-token"];
      [v6 setSessionToken:v23];

      v24 = [responseCopy objectForKey:@"ticket"];
      [v6 setCdxTicket:v24];

      v25 = GKSuggestedTransportVersionKey;
      v26 = [responseCopy objectForKeyedSubscript:GKSuggestedTransportVersionKey];

      if (v26)
      {
        v27 = [responseCopy objectForKeyedSubscript:v25];
        [v6 setTransportVersionToUse:v27];
      }

      if (!os_log_GKGeneral)
      {
        v28 = GKOSLoggers();
      }

      v29 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v30 = v29;
        matches = [v6 matches];
        *buf = 138412290;
        v60 = matches;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "SUCCESS matches: %@", buf, 0xCu);
      }

      if (!os_log_GKGeneral)
      {
        v32 = GKOSLoggers();
      }

      v53 = v16;
      v54 = v10;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        sub_1002912C8();
      }

      v33 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 796, "[GKClientProxy processMatchResponse:]"];
      v34 = +[GKPlayerCredentialController sharedController];
      v35 = [v34 pushCredentialForEnvironment:{-[GKClientProxy environment](self, "environment")}];
      playerInternal = [v35 playerInternal];
      playerID = [playerInternal playerID];
      v38 = [(GKClientProxy *)self transactionGroupWithName:v33 forPlayerID:playerID];

      context = [v38 context];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100142D1C;
      v55[3] = &unk_1003610B8;
      v56 = v38;
      selfCopy = self;
      v40 = v38;
      [context performBlockAndWait:v55];

      v16 = v53;
      v10 = v54;
    }
  }

  else
  {
    v41 = [responseCopy objectForKey:@"poll-delay-ms"];
    [v41 doubleValue];
    v43 = v42 / 1000.0;

    v44 = dispatch_time(0, (v43 * 1000000000.0));
    if (!os_log_GKGeneral)
    {
      v45 = GKOSLoggers();
    }

    v46 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v47 = v10;
      v48 = v46;
      v49 = [NSNumber numberWithDouble:v43];
      *buf = 138412290;
      v60 = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "CONTINUE matching after delay: %@", buf, 0xCu);

      v10 = v47;
      v16 = 0;
    }

    if ([v6 transitionToState:2])
    {
      matchingGroup = [v6 matchingGroup];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_100142AEC;
      v58[3] = &unk_100361B40;
      v58[4] = self;
      v58[5] = v44;
      [matchingGroup perform:v58];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v52 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        sub_100291304();
      }
    }
  }

LABEL_45:
  return v19;
}

- (void)setCheckMatchStatusTimer:(id)timer
{
  timerCopy = timer;
  v5 = dispatch_get_current_queue();
  checkMatchStatusQueue = [(GKClientProxy *)self checkMatchStatusQueue];

  if (v5 != checkMatchStatusQueue)
  {
    label = dispatch_queue_get_label(v5);
    checkMatchStatusQueue2 = [(GKClientProxy *)self checkMatchStatusQueue];
    v9 = dispatch_queue_get_label(checkMatchStatusQueue2);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKClientProxy setCheckMatchStatusTimer:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.checkMatchStatusQueue)\n[%s (%s:%d)]", v11, "-[GKClientProxy setCheckMatchStatusTimer:]", [lastPathComponent UTF8String], 811);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  checkMatchStatusTimer = self->_checkMatchStatusTimer;
  if (checkMatchStatusTimer)
  {
    dispatch_source_cancel(checkMatchStatusTimer);
  }

  v16 = self->_checkMatchStatusTimer;
  self->_checkMatchStatusTimer = timerCopy;
}

- (void)cancelOutstandingCheckMatchStatus
{
  checkMatchStatusQueue = [(GKClientProxy *)self checkMatchStatusQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100143018;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(checkMatchStatusQueue, block);
}

- (void)cancelInvitationForSession:(id)session playerID:(id)d pushTokens:(id)tokens handler:(id)handler
{
  sessionCopy = session;
  dCopy = d;
  tokensCopy = tokens;
  handlerCopy = handler;
  v11 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = tokensCopy;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v13)
  {
    v14 = *v42;
    do
    {
      v15 = 0;
      do
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v41 + 1) + 8 * v15);
        v47[0] = @"id";
        v47[1] = @"push-token";
        v48[0] = dCopy;
        v48[1] = v16;
        v17 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
        [v11 addObject:v17];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v13);
  }

  v45[0] = @"session-token";
  v45[1] = @"peers";
  v46[0] = sessionCopy;
  v46[1] = v11;
  v45[2] = @"reason";
  v18 = [NSNumber numberWithInteger:0];
  v46[2] = v18;
  v30 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];

  v19 = +[GKDataRequestManager sharedManager];
  v20 = dispatch_group_create();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100143448;
  v39[4] = sub_100143458;
  v40 = 0;
  dispatch_group_enter(v20);
  v21 = +[GKPlayerCredentialController sharedController];
  v22 = [v21 pushCredentialForEnvironment:{-[GKClientProxy environment](self, "environment")}];

  v23 = [(GKClientProxy *)self appSessionForCredential:v22];
  storeBag = [v19 storeBag];
  v25 = [v30 _gkPlistXMLDataForAppSession:v23];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100143460;
  v36[3] = &unk_1003682F8;
  v38 = v39;
  v26 = v20;
  v37 = v26;
  [storeBag writeDataForBagKey:@"gk-invitation-cancel" postData:v25 client:self credential:v22 completion:v36];

  replyQueue = [(GKClientProxy *)self replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001434FC;
  block[3] = &unk_1003680A0;
  v34 = handlerCopy;
  v35 = v39;
  v28 = handlerCopy;
  dispatch_group_notify(v26, replyQueue, block);

  _Block_object_dispose(v39, 8);
}

- (id)fetchOrCreateInviteSession
{
  inviteSession = [(GKClientProxy *)self inviteSession];

  if (inviteSession)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      inviteSession2 = [(GKClientProxy *)self inviteSession];
      inviteSession3 = [(GKClientProxy *)self inviteSession];
      sessionToken = [inviteSession3 sessionToken];
      v19 = 134218242;
      v20 = inviteSession2;
      v21 = 2112;
      v22 = sessionToken;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Already have GKInviteSession(%p), token: %@", &v19, 0x16u);

LABEL_10:
    }
  }

  else
  {
    v10 = objc_alloc_init(GKInviteSession);
    [(GKClientProxy *)self setInviteSession:v10];

    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v6 = v12;
      inviteSession4 = [(GKClientProxy *)self inviteSession];
      inviteSession5 = [(GKClientProxy *)self inviteSession];
      sessionToken2 = [inviteSession5 sessionToken];
      v16 = +[NSThread callStackSymbols];
      v19 = 134218498;
      v20 = inviteSession4;
      v21 = 2112;
      v22 = sessionToken2;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Created a new GKInviteSession(%p), token: %@. Thread: %@", &v19, 0x20u);

      goto LABEL_10;
    }
  }

  inviteSession6 = [(GKClientProxy *)self inviteSession];

  return inviteSession6;
}

- (void)deleteInviteSession
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    inviteSession = [(GKClientProxy *)self inviteSession];
    v10 = 134217984;
    v11 = inviteSession;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKClientProxy - deleteInviteSession, self.inviteSession: %p", &v10, 0xCu);
  }

  inviteSession2 = [(GKClientProxy *)self inviteSession];
  shareRecordID = [inviteSession2 shareRecordID];

  if (shareRecordID)
  {
    v9 = +[GKCloudKitMultiplayerUtils privateDatabase];
    [GKCloudKitMultiplayer deleteInviteRecordWithRecordID:shareRecordID fromDatabase:v9];
  }

  [(GKClientProxy *)self setInviteSession:0];
}

- (void)playerFound:(id)found deviceID:(id)d discoveryInfo:(id)info
{
  foundCopy = found;
  dCopy = d;
  infoCopy = info;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = foundCopy;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "PeerDiscovery player found: %@, deviceID: %@, discoveryInfo: %@", &v13, 0x20u);
  }

  [(GKClientProxy *)self nearbyPlayerFoundForPlayerID:foundCopy deviceID:dCopy discoveryInfo:infoCopy];
}

- (void)playerLost:(id)lost deviceID:(id)d
{
  lostCopy = lost;
  dCopy = d;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = lostCopy;
    v12 = 2112;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PeerDiscovery player lost: %@, deviceID: %@", &v10, 0x16u);
  }

  [(GKClientProxy *)self nearbyPlayerLostForPlayerID:lostCopy deviceID:dCopy];
}

- (void)receivedData:(id)data deviceID:(id)d data:(id)a5
{
  dataCopy = data;
  dCopy = d;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = dataCopy;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "PeerDiscovery data received from player: %@, deviceID: %@", &v13, 0x16u);
  }

  [(GKClientProxy *)self nearbyDataReceivedForPlayerID:dataCopy deviceID:dCopy data:v10];
}

- (id)rootOrService
{
  daemonGameServices = [(GKClientProxy *)self daemonGameServices];
  rootOrService = [daemonGameServices rootOrService];

  return rootOrService;
}

- (void)onChallengeUpdateReceivedWithUserInfo:(id)info
{
  infoCopy = info;
  daemonGameServices = [(GKClientProxy *)self daemonGameServices];
  [daemonGameServices onChallengeUpdateReceivedWithUserInfo:infoCopy];
}

- (void)onGameActivityOpenedWithPartyURL:(id)l creatorPlayerID:(id)d
{
  dCopy = d;
  lCopy = l;
  daemonGameServices = [(GKClientProxy *)self daemonGameServices];
  [daemonGameServices onGameActivityOpenedWithPartyURL:lCopy creatorPlayerID:dCopy];
}

- (void)onGameActivityReceivedWithPartyURL:(id)l creatorPlayerID:(id)d
{
  dCopy = d;
  lCopy = l;
  daemonGameServices = [(GKClientProxy *)self daemonGameServices];
  [daemonGameServices onGameActivityReceivedWithPartyURL:lCopy creatorPlayerID:dCopy];
}

- (void)onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:(id)identifier activityProperties:(id)properties bundleID:(id)d referenceLeaderboardID:(id)iD referenceAchievementDescriptionID:(id)descriptionID
{
  descriptionIDCopy = descriptionID;
  iDCopy = iD;
  dCopy = d;
  propertiesCopy = properties;
  identifierCopy = identifier;
  daemonGameServices = [(GKClientProxy *)self daemonGameServices];
  [daemonGameServices onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:identifierCopy activityProperties:propertiesCopy bundleID:dCopy referenceLeaderboardID:iDCopy referenceAchievementDescriptionID:descriptionIDCopy];
}

- (void)onServerCacheInvalidationReceivedWithBagKey:(id)key playerID:(id)d
{
  dCopy = d;
  keyCopy = key;
  daemonGameServices = [(GKClientProxy *)self daemonGameServices];
  [daemonGameServices onServerCacheInvalidationReceivedWithBagKey:keyCopy playerID:dCopy];
}

- (GKUIViewService)viewService
{
  WeakRetained = objc_loadWeakRetained(&self->_viewService);

  return WeakRetained;
}

+ (id)clientForProcessIdentifier:(int)identifier
{
  v3 = *&identifier;
  v5 = [NSBundle _gkBundleWithPID:?];
  bundleIdentifier = [v5 bundleIdentifier];
  v7 = [self clientForBundleID:bundleIdentifier bundle:v5 pid:v3 createIfNecessary:1 connectionEntitlements:0];

  return v7;
}

+ (BOOL)isExtensionBundleID:(id)d
{
  v3 = qword_1003B92C0;
  dCopy = d;
  if (v3 != -1)
  {
    sub_1002913E0();
  }

  v5 = [qword_1003B92B8 containsObject:dCopy];

  return v5;
}

+ (id)clientForBundleID:(id)d bundle:(id)bundle pid:(int)pid createIfNecessary:(BOOL)necessary connectionEntitlements:(id)entitlements
{
  v9 = *&pid;
  dCopy = d;
  bundleCopy = bundle;
  entitlementsCopy = entitlements;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = dCopy;
    *&buf[12] = 1024;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKClientProxy: clientForBundleID: %@, pid: %d", buf, 0x12u);
  }

  if (dCopy || !v9)
  {
    if (dCopy)
    {
LABEL_13:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v33 = sub_100143448;
      v34 = sub_100143458;
      v35 = 0;
      factoryQueue = [self factoryQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100144A94;
      v24[3] = &unk_1003683C8;
      v28 = buf;
      selfCopy = self;
      v30 = v9;
      v25 = dCopy;
      v26 = entitlementsCopy;
      necessaryCopy = necessary;
      v27 = bundleCopy;
      v20 = dCopy;
      dispatch_sync(factoryQueue, v24);

      v21 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_19;
    }
  }

  else
  {
    dCopy = [NSBundle _gkBundleIdentifierOrProcessNameForPID:v9];
    if (dCopy)
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = dCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "GKClientProxy: clientForBundleID: - Obtained bundleID: %@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

  if (!os_log_GKGeneral)
  {
    v22 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_1002913F4();
  }

  v21 = 0;
LABEL_19:

  return v21;
}

+ (id)foregroundClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100143448;
  v9 = sub_100143458;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001454D4;
  v4[3] = &unk_1003683F0;
  v4[4] = &v5;
  [GKClientProxy enumerateClientsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (id)nonGameCenterForegroundClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100143448;
  v9 = sub_100143458;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100145658;
  v4[3] = &unk_1003683F0;
  v4[4] = &v5;
  [GKClientProxy enumerateClientsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (BOOL)isGameCenterDashboardForegroundRunning
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100145860;
  v7[3] = &unk_1003683F0;
  v7[4] = &v8;
  [GKClientProxy enumerateClientsUsingBlock:v7];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    if (*(v9 + 24))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "isGameCenterDashboardForegroundRunning: %@", buf, 0xCu);
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

+ (id)clientForInviteSessionToken:(id)token
{
  tokenCopy = token;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = tokenCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "clientForInviteSessionToken: incoming session token %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = sub_100143448;
  v16 = sub_100143458;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100145C5C;
  v10[3] = &unk_1003611C0;
  v7 = tokenCopy;
  v11 = v7;
  p_buf = &buf;
  [self enumerateClientsUsingBlock:v10];
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v8;
}

+ (id)clientForMatchmakingRID:(id)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100143448;
  v14 = sub_100143458;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100145EF4;
  v7[3] = &unk_100368418;
  v9 = &v10;
  dCopy = d;
  v8 = dCopy;
  [self enumerateClientsUsingBlock:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

+ (NSArray)clients
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100143448;
  v11 = sub_100143458;
  v12 = objc_alloc_init(NSMutableArray);
  factoryQueue = [self factoryQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001460D8;
  v6[3] = &unk_100368490;
  v6[4] = &v7;
  v6[5] = self;
  dispatch_sync(factoryQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (void)enumerateClientsUsingBlock:(id)block
{
  blockCopy = block;
  clients = [self clients];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014629C;
  v7[3] = &unk_1003684B8;
  v8 = blockCopy;
  v6 = blockCopy;
  [clients enumerateObjectsUsingBlock:v7];
}

+ (void)removeClient:(id)client
{
  clientCopy = client;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [clientCopy pid]);
    bundleIdentifier = [clientCopy bundleIdentifier];
    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removing client from gamed. PID: %@, bundleID: %@", buf, 0x16u);
  }

  originalBundleIdentifier = [clientCopy originalBundleIdentifier];
  if (originalBundleIdentifier || ([clientCopy bundleIdentifier], (originalBundleIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = originalBundleIdentifier;
    [clientCopy setConnection:0];
    factoryQueue = [self factoryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001464A0;
    block[3] = &unk_1003615B0;
    selfCopy = self;
    v15 = v11;
    v16 = clientCopy;
    v13 = v11;
    dispatch_async(factoryQueue, block);
  }
}

+ (BOOL)getDebugModeForBundleID:(id)d
{
  dCopy = d;
  bundleIDsToBeInitializedInDebugMode = [self bundleIDsToBeInitializedInDebugMode];
  v6 = [bundleIDsToBeInitializedInDebugMode objectForKey:dCopy];

  LOBYTE(dCopy) = [v6 BOOLValue];
  return dCopy;
}

+ (void)setDebugMode:(BOOL)mode bundleID:(id)d
{
  modeCopy = mode;
  dCopy = d;
  bundleIDsToBeInitializedInDebugMode = [self bundleIDsToBeInitializedInDebugMode];
  v8 = bundleIDsToBeInitializedInDebugMode;
  if (modeCopy)
  {
    [bundleIDsToBeInitializedInDebugMode setObject:&__kCFBooleanTrue forKey:dCopy];
  }

  else
  {
    [bundleIDsToBeInitializedInDebugMode removeObjectForKey:dCopy];
  }
}

- (id)serviceForClass:(Class)class transport:(id)transport client:(id)client credential:(id)credential
{
  transportCopy = transport;
  clientCopy = client;
  credentialCopy = credential;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"Assertion failed"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    lastPathComponent = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([serviceClass isSubclassOfClass:[GKService class]])\n[%s (%s:%d)]", v13, "-[GKClientProxy(GKDaemonProtocol) serviceForClass:transport:client:credential:]", [lastPathComponent UTF8String], 1412);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  entitlements = [(GKClientProxy *)self entitlements];
  if ([entitlements hasEntitlements:{-[objc_class requiredEntitlements](class, "requiredEntitlements")}])
  {
    v18 = [(objc_class *)class serviceWithTransport:transportCopy forClient:clientCopy credential:credentialCopy];
  }

  else
  {
    v18 = 0;
  }

  if ([v18 requiresAuthentication] && (objc_msgSend(entitlements, "hasEntitlements:", &_mh_execute_header) & 1) == 0 && !-[GKClientProxy isUIService](self, "isUIService") && !-[GKClientProxy isExtension](self, "isExtension"))
  {
    v19 = [GKAuthenticationWrapperService authenticationWrapperForService:v18];

    v18 = v19;
  }

  return v18;
}

- (void)setHostPID:(int)d reply:(id)reply
{
  if (reply)
  {
    dispatch_async(self->_replyQueue, reply);
  }
}

- (void)messagesDidReceiveGameCenterURL:(id)l senderHandle:(id)handle contactID:(id)d
{
  lCopy = l;
  handleCopy = handle;
  dCopy = d;
  if (lCopy)
  {
    absoluteString = [lCopy absoluteString];
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v67 = handleCopy;
      v68 = 2112;
      v69 = dCopy;
      v70 = 2112;
      v71 = absoluteString;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Received URL from %@ (%@) : %@", buf, 0x20u);
    }

    if (!absoluteString)
    {
      goto LABEL_35;
    }

    selfCopy = self;
    v57 = absoluteString;
    v56 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
    queryItems = [v56 queryItems];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v15 = [queryItems countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (!v15)
    {
      goto LABEL_34;
    }

    v16 = v15;
    v54 = handleCopy;
    v55 = dCopy;
    v17 = 0;
    v18 = *v62;
    v19 = GKFriendRequestURLZippedData;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(queryItems);
        }

        v21 = *(*(&v61 + 1) + 8 * i);
        name = [v21 name];
        v23 = [name isEqualToString:v19];

        if (v23)
        {
          v24 = v21;

          v17 = v24;
        }
      }

      v16 = [queryItems countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v16);
    handleCopy = v54;
    dCopy = v55;
    if (!v17)
    {
LABEL_34:

      absoluteString = v57;
LABEL_35:

      goto LABEL_36;
    }

    v25 = [NSData alloc];
    value = [v17 value];
    v27 = [v25 initWithBase64EncodedString:value options:0];

    _gkZippedDictionaryValue = [v27 _gkZippedDictionaryValue];
    v29 = [_gkZippedDictionaryValue mutableCopy];

    v30 = [v29 objectForKeyedSubscript:GKFriendRequestURLFriendCode];
    v49 = [v29 objectForKeyedSubscript:GKFriendRequestURLSenderAlias];
    v50 = [v29 objectForKeyedSubscript:GKFriendRequestURLSenderPlayerID];
    v48 = [v57 dataUsingEncoding:4];
    v51 = [v48 base64EncodedStringWithOptions:0];
    v31 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v32 = GKOSLoggers();
      v31 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v67 = v30;
      v68 = 2112;
      v69 = v49;
      v70 = 2112;
      v71 = v51;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "New friend request with code: %@, senderAlias: %@, decoded url to %@", buf, 0x20u);
      if (v30)
      {
        goto LABEL_21;
      }
    }

    else if (v30)
    {
LABEL_21:
      v52 = v30;
      v46 = v27;
      [v29 setObject:v51 forKeyedSubscript:GKFriendRequestURL];
      [v29 setObject:v54 forKeyedSubscript:GKFriendRequestURLSenderHandle];
      [v29 setObject:v55 forKeyedSubscript:GKFriendRequestURLContactID];
      v33 = +[NSDate now];
      [v29 setObject:v33 forKeyedSubscript:GKFriendRequestTimestamp];

      os_unfair_lock_lock(+[GKFriendServicePrivate messageInboxEntriesLock]);
      v34 = +[GKFriendServicePrivate messageInboxLocation];
      v35 = [NSDictionary dictionaryWithContentsOfFile:v34];
      if (!v35)
      {
        v35 = objc_alloc_init(NSDictionary);
      }

      v36 = [[NSMutableDictionary alloc] initWithDictionary:v35];
      [v36 setObject:v29 forKeyedSubscript:v52];
      v45 = v36;
      v47 = v34;
      v37 = [v36 writeToFile:v34 atomically:1];
      dCopy = v55;
      v44 = v37;
      if ((v37 & 1) == 0)
      {
        if (!os_log_GKGeneral)
        {
          v38 = GKOSLoggers();
        }

        v39 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v67 = v47;
          v68 = 2112;
          v69 = v29;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Failed to write message inbox: %@ value of: %@", buf, 0x16u);
        }
      }

      os_unfair_lock_unlock(+[GKFriendServicePrivate messageInboxEntriesLock]);
      v40 = [v35 objectForKeyedSubscript:v52];

      if (!v40)
      {
        v41 = [v52 componentsSeparatedByString:@"|"];
        v42 = [v41 objectAtIndexedSubscript:0];

        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_100146E90;
        v58[3] = &unk_100368508;
        v59 = v50;
        v60 = v42;
        v43 = v42;
        [(GKClientProxy *)selfCopy getAuthenticatedLocalPlayersWithStatus:1 handler:v58];
      }

      v27 = v46;
      if (v44)
      {
        [GKClientProxy enumerateClientsUsingBlock:&stru_100368528];
      }

      v30 = v52;
    }

    goto LABEL_34;
  }

LABEL_36:
}

- (void)setTestGame:(id)game protocolVersion:(id)version reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (replyCopy)
  {
    replyQueue = self->_replyQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001470F8;
    block[3] = &unk_100360FA0;
    v10 = replyCopy;
    dispatch_async(replyQueue, block);
  }
}

- (void)getServicesWithTransport:(id)transport forClient:(id)client reply:(id)reply
{
  replyCopy = reply;
  clientCopy = client;
  transportCopy = transport;
  v10 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v11 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v12 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v33 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v26 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v13 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v14 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v28 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v30 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v15 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];

  queue = [(GKClientProxy *)self replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001474C8;
  block[3] = &unk_100368550;
  v45 = v15;
  v46 = replyCopy;
  v16 = v10;
  v36 = v10;
  v37 = v11;
  v17 = v12;
  v38 = v12;
  v39 = v33;
  v40 = v26;
  v41 = v13;
  v42 = v14;
  v43 = v28;
  v44 = v30;
  v32 = v15;
  v31 = v30;
  v29 = v28;
  v25 = v14;
  v18 = v13;
  v27 = v26;
  v19 = v33;
  v20 = v17;
  v21 = v11;
  v22 = v16;
  v23 = replyCopy;
  dispatch_async(queue, block);
}

- (void)getPrivateServicesWithTransport:(id)transport forClient:(id)client reply:(id)reply
{
  replyCopy = reply;
  clientCopy = client;
  transportCopy = transport;
  v33 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v10 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v11 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v12 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v32 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v13 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v14 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v25 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v27 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v29 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];
  v15 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:transportCopy client:clientCopy credential:0];

  queue = [(GKClientProxy *)self replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147914;
  block[3] = &unk_100368578;
  v36 = v33;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v40 = v32;
  v41 = v13;
  v42 = v14;
  v43 = v25;
  v44 = v27;
  v45 = v29;
  v46 = v15;
  v47 = replyCopy;
  v31 = v15;
  v30 = v29;
  v28 = v27;
  v26 = v25;
  v24 = v14;
  v16 = v13;
  v17 = v32;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v33;
  v22 = replyCopy;
  dispatch_async(queue, block);
}

- (void)getServicesForPID:(int)d localPlayer:(id)player reply:(id)reply
{
  playerCopy = player;
  replyCopy = reply;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v26) = d;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKClientProxy: client requests services for pid %d", buf, 8u);
  }

  if (self->_pid != d)
  {
    v12 = [NSString stringWithFormat:@"Assertion failed"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (pid == _pid)\n[%s (%s:%d)]", v12, "-[GKClientProxy(GKDaemonProtocol) getServicesForPID:localPlayer:reply:]", [lastPathComponent UTF8String], 1580);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  [(GKClientProxy *)self updateAppInitState];
  v16 = [(GKClientProxy *)self credentialForPlayer:playerCopy];
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "credential: %@", buf, 0xCu);
  }

  v19 = [(GKClientProxy *)self transportWithCredential:v16];
  if (!os_log_GKGeneral)
  {
    v20 = GKOSLoggers();
  }

  v21 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v22 = v21;
    alias = [playerCopy alias];
    accountName = [playerCopy accountName];
    *buf = 138412546;
    v26 = alias;
    v27 = 2112;
    v28 = accountName;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "alloc services for %@:%@", buf, 0x16u);
  }

  [(GKClientProxy *)self getServicesWithTransport:v19 forClient:self reply:replyCopy];
}

- (void)getPrivateServicesForPID:(int)d localPlayer:(id)player reply:(id)reply
{
  playerCopy = player;
  replyCopy = reply;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v24) = d;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKClientProxy: client requests private services for pid %d", buf, 8u);
  }

  if (self->_pid != d)
  {
    v12 = [NSString stringWithFormat:@"Assertion failed"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (pid == _pid)\n[%s (%s:%d)]", v12, "-[GKClientProxy(GKDaemonProtocol) getPrivateServicesForPID:localPlayer:reply:]", [lastPathComponent UTF8String], 1596);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  [(GKClientProxy *)self updateAppInitState];
  v16 = [(GKClientProxy *)self credentialForPlayer:playerCopy];
  v17 = [(GKClientProxy *)self transportWithCredential:v16];
  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    alias = [playerCopy alias];
    accountName = [playerCopy accountName];
    *buf = 138412546;
    v24 = alias;
    v25 = 2112;
    v26 = accountName;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "alloc private services for %@:%@", buf, 0x16u);
  }

  [(GKClientProxy *)self getPrivateServicesWithTransport:v17 forClient:self reply:replyCopy];
}

- (void)getAuthenticatedPlayerInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_100143448;
    v17[4] = sub_100143458;
    v18 = 0;
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1622, "[GKClientProxy(GKDaemonProtocol) getAuthenticatedPlayerInfo:]"];
    v6 = [GKDispatchGroup dispatchGroupWithName:v5];

    entitlements = [(GKClientProxy *)self entitlements];
    v8 = [entitlements hasEntitlements:0x10000];

    if (v8)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100148114;
      v14[3] = &unk_1003685A0;
      v14[4] = self;
      v16 = v17;
      v15 = v6;
      [v15 perform:v14];
    }

    replyQueue = [(GKClientProxy *)self replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014821C;
    v11[3] = &unk_100360EB0;
    v13 = infoCopy;
    v10 = v6;
    v12 = v10;
    [v10 notifyOnQueue:replyQueue block:v11];

    _Block_object_dispose(v17, 8);
  }
}

- (void)getAuthenticatedPlayerCredential:(id)credential
{
  credentialCopy = credential;
  if (credentialCopy)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_100143448;
    v17[4] = sub_100143458;
    v18 = 0;
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1655, "[GKClientProxy(GKDaemonProtocol) getAuthenticatedPlayerCredential:]"];
    v6 = [GKDispatchGroup dispatchGroupWithName:v5];

    entitlements = [(GKClientProxy *)self entitlements];
    v8 = [entitlements hasEntitlements:0x200000000];

    if (v8)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001484A0;
      v14[3] = &unk_1003685A0;
      v14[4] = self;
      v16 = v17;
      v15 = v6;
      [v15 perform:v14];
    }

    replyQueue = [(GKClientProxy *)self replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001485F8;
    v11[3] = &unk_100360EB0;
    v13 = credentialCopy;
    v10 = v6;
    v12 = v10;
    [v10 notifyOnQueue:replyQueue block:v11];

    _Block_object_dispose(v17, 8);
  }
}

- (void)localPlayerAgeCategoryWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = +[GKClientProxy gameCenterClient];
    v5 = [(GKService *)GKAccountServicePrivate serviceWithTransport:0 forClient:v4 localPlayer:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100148734;
    v6[3] = &unk_1003685C8;
    v7 = completionCopy;
    [v5 localPlayerAgeCategoryWithCompletion:v6];
  }
}

- (void)getGamedFiredUpWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v19 = handlerCopy;
    v6 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1729, "[GKClientProxy(GKDaemonProtocol) getGamedFiredUpWithHandler:]"];
    v7 = [GKDispatchGroup dispatchGroupWithName:v6];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [&off_100383400 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(&off_100383400);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100148AE4;
          v27[3] = &unk_100360FF0;
          v27[4] = v12;
          v27[5] = self;
          [v7 perform:v27];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [&off_100383400 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v13 = [&off_100383418 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(&off_100383418);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100148C4C;
          v22[3] = &unk_100360FF0;
          v22[4] = self;
          v22[5] = v17;
          [v7 perform:v22];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [&off_100383418 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v14);
    }

    [v7 perform:&stru_100368608];
    replyQueue = [(GKClientProxy *)self replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100148F20;
    v20[3] = &unk_100360FA0;
    v5 = v19;
    v21 = v19;
    [v7 notifyOnQueue:replyQueue block:v20];
  }
}

- (void)getAuthenticatedLocalPlayersWithStatus:(unint64_t)status handler:(id)handler
{
  handlerCopy = handler;
  v7 = +[GKPlayerCredentialController sharedController];
  environment = [(GKClientProxy *)self environment];
  v9 = [v7 allCredentialsForEnvironment:environment];
  v10 = [v7 primaryCredentialForEnvironment:environment];
  if (v10)
  {
    bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
    v12 = [bundleIdentifier isEqualToString:@"com.apple.gamecenter"];

    if ((v12 & 1) == 0)
    {
      v13 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1795, "[GKClientProxy(GKDaemonProtocol) getAuthenticatedLocalPlayersWithStatus:handler:]"];
      playerInternal = [v10 playerInternal];
      playerID = [playerInternal playerID];
      v16 = [(GKClientProxy *)self transactionGroupWithName:v13 forPlayerID:playerID];
    }
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100149254;
  v29[3] = &unk_100368658;
  v17 = v10;
  selfCopy = self;
  statusCopy = status;
  v30 = v17;
  v18 = [v9 _gkFilterWithBlock:v29];
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1853, "[GKClientProxy(GKDaemonProtocol) getAuthenticatedLocalPlayersWithStatus:handler:]"];
  v20 = [GKDispatchGroup dispatchGroupWithName:v19];

  [v20 setObject:v18 forKeyedSubscript:@"players"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100149454;
  v26[3] = &unk_1003686A8;
  v21 = v20;
  v27 = v21;
  selfCopy2 = self;
  [v18 enumerateObjectsUsingBlock:v26];
  if (handlerCopy)
  {
    replyQueue = [(GKClientProxy *)self replyQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100149C1C;
    v23[3] = &unk_100360EB0;
    v25 = handlerCopy;
    v24 = v21;
    [v24 notifyOnQueue:replyQueue block:v23];
  }
}

- (void)getAccountNameWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1945, "[GKClientProxy(GKDaemonProtocol) getAccountNameWithHandler:]"];
    v6 = [GKDispatchGroup dispatchGroupWithName:v5];

    entitlements = [(GKClientProxy *)self entitlements];
    v8 = [entitlements hasEntitlements:0x10000];

    if (v8)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100149E28;
      v14[3] = &unk_100361620;
      v15 = v6;
      [v15 perform:v14];
    }

    replyQueue = [(GKClientProxy *)self replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100149EC4;
    v11[3] = &unk_100360EB0;
    v12 = v6;
    v13 = handlerCopy;
    v10 = v6;
    [v10 notifyOnQueue:replyQueue block:v11];
  }
}

- (void)getAuthenticatedPlayerIDWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100149FC0;
    v6[3] = &unk_100361C68;
    v7 = handlerCopy;
    [(GKClientProxy *)self getAuthenticatedPlayerInfo:v6];
  }
}

- (void)localizedMessageFromDictionary:(id)dictionary forBundleID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = [NSBundle _gkLocalizedMessageFromDictionary:dictionary forBundleID:d];
    replyQueue = [(GKClientProxy *)self replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10014A10C;
    v12[3] = &unk_100360EB0;
    v13 = v9;
    v14 = handlerCopy;
    v11 = v9;
    dispatch_async(replyQueue, v12);
  }
}

- (void)resetLoginCancelCount
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "resetCancelledLogins: user will be presented with fullscreen sheet if they are not signed in", v6, 2u);
  }

  v4 = +[GKPlayerCredentialController sharedController];
  signInVisibilityManager = [v4 signInVisibilityManager];
  [signInVisibilityManager reset];
}

- (void)handleCloudKitShareMetadata:(id)metadata completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  v7 = [GKActivity named:@"handleCloudKitShareMetadata"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014A2AC;
  v10[3] = &unk_100361270;
  v11 = metadataCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = metadataCopy;
  [v7 execute:v10];
}

- (void)setDebugMode:(BOOL)mode bundleID:(id)d reply:(id)reply
{
  replyCopy = reply;
  replyQueue = [(GKClientProxy *)self replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A3F0;
  block[3] = &unk_100360FA0;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(replyQueue, block);
}

- (void)sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2018, "[GKClientProxy(Authentication) sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:completionHandler:]"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014A53C;
  v11[3] = &unk_100360FC8;
  v11[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  [GKActivity named:v8 execute:v11];
}

- (id)missingTransitionFromState:(id)state toState:(id)toState
{
  stateCopy = state;
  toStateCopy = toState;
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10029173C();
  }

  return toStateCopy;
}

- (void)stateDidChange
{
  if (self->_pid && self->_bundleIdentifier)
  {
    v3 = objc_opt_class();
    currentState = [(_GKStateMachine *)self->_appInitStateMachine currentState];
    [v3 saveAppInitState:currentState forBundleID:self->_bundleIdentifier pid:self->_pid];
  }
}

- (id)verifyAuthorized
{
  v3 = +[GKPreferences shared];
  isGameCenterRestricted = [v3 isGameCenterRestricted];

  if (isGameCenterRestricted)
  {
    v5 = 10;
LABEL_7:
    v9 = [NSError userErrorForCode:v5 underlyingError:0];
    goto LABEL_8;
  }

  v6 = +[GKPreferences shared];
  lockedDown = [v6 lockedDown];

  if (lockedDown)
  {
    v5 = 36;
    goto LABEL_7;
  }

  appInitState = [(GKClientProxy *)self appInitState];

  if (appInitState != @"GKAppInitialized")
  {
    v5 = 6;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)lastKnownAppInitStateForClientWithBundleID:(id)d pid:(int)pid
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100143448;
  v18 = sub_100143458;
  v19 = @"GKAppInitUnknown";
  v6 = GKSavedAuthentiactionStateQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014AA3C;
  block[3] = &unk_100368730;
  pidCopy = pid;
  v11 = dCopy;
  v12 = &v14;
  v7 = dCopy;
  dispatch_sync(v6, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

+ (void)saveAppInitState:(id)state forBundleID:(id)d pid:(int)pid
{
  stateCopy = state;
  dCopy = d;
  v9 = GKSavedAuthentiactionStateQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014AD38;
  block[3] = &unk_100368758;
  v13 = stateCopy;
  v14 = dCopy;
  pidCopy = pid;
  v10 = dCopy;
  v11 = stateCopy;
  dispatch_async(v9, block);
}

- (void)updateAppInitState
{
  if (self->_pid)
  {
    if (self->_bundleIdentifier)
    {
      currentState = [(_GKStateMachine *)self->_appInitStateMachine currentState];
      v4 = [currentState isEqualToString:@"GKAppInitUnknown"];

      if (v4)
      {
        v5 = [objc_opt_class() lastKnownAppInitStateForClientWithBundleID:self->_bundleIdentifier pid:self->_pid];
        if ([v5 isEqualToString:@"GKAppInitialized"])
        {
          [(_GKStateMachine *)self->_appInitStateMachine setCurrentState:@"GKAppInitialized"];
        }
      }
    }
  }
}

- (id)connectionProxyForUseCase:(id)case
{
  caseCopy = case;
  connection = [(GKClientProxy *)self connection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014B3F8;
  v9[3] = &unk_100361108;
  v10 = caseCopy;
  v6 = caseCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (void)metricsValuesChanged
{
  v2 = [(GKClientProxy *)self connectionProxyForUseCase:@"metricsValuesChanged"];
  [v2 metricsValuesChanged];
}

- (void)presentBannerWithNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"presentBannerWithNotification"];
  [v5 presentBannerWithNotification:notificationCopy];
}

- (void)requestSandboxExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"requestSandboxExtension"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014B5E0;
  v7[3] = &unk_100368780;
  v8 = extensionCopy;
  v6 = extensionCopy;
  [v5 requestSandboxExtension:v7];
}

- (void)beginNetworkActivity
{
  v2 = [(GKClientProxy *)self connectionProxyForUseCase:@"beginNetworkActivity"];
  [v2 beginNetworkActivity];
}

- (void)endNetworkActivity
{
  v2 = [(GKClientProxy *)self connectionProxyForUseCase:@"endNetworkActivity"];
  [v2 endNetworkActivity];
}

- (void)resetNetworkActivity
{
  v2 = [(GKClientProxy *)self connectionProxyForUseCase:@"resetNetworkActivity"];
  [v2 resetNetworkActivity];
}

- (void)respondedToNearbyInvite:(id)invite
{
  inviteCopy = invite;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"respondedToNearbyInvite"];
  [v5 respondedToNearbyInvite:inviteCopy];
}

- (void)friendRequestSelected:(id)selected
{
  selectedCopy = selected;
  v4 = [(GKClientProxy *)self connectionProxyForUseCase:@"friendRequestSelected"];
  bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:GKGameCenterIdentifier];

  if (v6)
  {
    [v4 friendRequestSelected:selectedCopy];
  }
}

- (void)deliverEncodedGameActivityInstance:(id)instance
{
  instanceCopy = instance;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"deliverGameActivityWithInstance"];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
  {
    sub_100291830();
  }

  [v5 deliverEncodedGameActivityInstance:instanceCopy];
}

- (void)receivedChallengeSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"receivedChallengeSelected"];
  [v5 receivedChallengeSelected:selectedCopy];
}

- (void)completedChallengeSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"completedChallengeSelected"];
  [v5 completedChallengeSelected:selectedCopy];
}

- (void)challengeReceived:(id)received
{
  receivedCopy = received;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"challengeReceived"];
  [v5 challengeReceived:receivedCopy];
}

- (void)challengeCompleted:(id)completed
{
  completedCopy = completed;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"challengeCompleted"];
  [v5 challengeCompleted:completedCopy];
}

- (void)scoreSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"scoreSelected"];
  [v5 scoreSelected:selectedCopy];
}

- (void)achievementSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"achievement"];
  [v5 achievementSelected:selectedCopy];
}

- (void)fetchTurnBasedData
{
  v3 = [(GKClientProxy *)self connectionProxyForUseCase:@"fetchTurnBasedData"];
  [v3 fetchTurnBasedData];
  [(GKClientProxy *)self refreshContentsForDataType:14 userInfo:0];
}

- (void)acceptMultiplayerGameInvite
{
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"acceptMultiplayerGameInvite"];
  [v5 acceptMultiplayerGameInvite];
  viewService = [(GKClientProxy *)self viewService];
  [viewService acceptMultiplayerGameInvite];

  extensionProxies = [(GKClientProxy *)self extensionProxies];
  [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:&stru_1003687C0];
}

- (void)acceptInviteWithNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"acceptInviteWithNotification"];
  [v5 acceptInviteWithNotification:notificationCopy];
  viewService = [(GKClientProxy *)self viewService];
  [viewService acceptInviteWithNotification:notificationCopy];

  extensionProxies = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014BCD0;
  v9[3] = &unk_1003687E8;
  v10 = notificationCopy;
  v8 = notificationCopy;
  [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)declineInviteWithNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"declineInviteWithNotification"];
  [v5 declineInviteWithNotification:notificationCopy];
  viewService = [(GKClientProxy *)self viewService];
  [viewService declineInviteWithNotification:notificationCopy];

  extensionProxies = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014BDD4;
  v9[3] = &unk_1003687E8;
  v10 = notificationCopy;
  v8 = notificationCopy;
  [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)updateInviteWithNotification:(id)notification
{
  notificationCopy = notification;
  connection = [(GKClientProxy *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&stru_100368808];

  if (v6)
  {
    [v6 updateInviteWithNotification:notificationCopy];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002918A0();
    }
  }
}

- (void)cancelInviteWithNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"cancelInviteWithNotification"];
  [v5 cancelInviteWithNotification:notificationCopy];
  viewService = [(GKClientProxy *)self viewService];
  [viewService cancelInviteWithNotification:notificationCopy];

  extensionProxies = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014C008;
  v9[3] = &unk_1003687E8;
  v10 = notificationCopy;
  v8 = notificationCopy;
  [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)cancelGameInvite:(id)invite
{
  inviteCopy = invite;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"cancelGameInvite"];
  [v5 cancelGameInvite:inviteCopy];
  viewService = [(GKClientProxy *)self viewService];
  [viewService cancelGameInvite:inviteCopy];

  extensionProxies = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014C10C;
  v9[3] = &unk_1003687E8;
  v10 = inviteCopy;
  v8 = inviteCopy;
  [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)nearbyPlayerFoundForPlayerID:(id)d deviceID:(id)iD discoveryInfo:(id)info
{
  infoCopy = info;
  iDCopy = iD;
  dCopy = d;
  v11 = [(GKClientProxy *)self connectionProxyForUseCase:@"nearbyPlayerFound"];
  [v11 nearbyPlayerFoundForPlayerID:dCopy deviceID:iDCopy discoveryInfo:infoCopy];
}

- (void)nearbyPlayerLostForPlayerID:(id)d deviceID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = [(GKClientProxy *)self connectionProxyForUseCase:@"nearbyPlayerLost"];
  [v8 nearbyPlayerLostForPlayerID:dCopy deviceID:iDCopy];
}

- (void)nearbyDataReceivedForPlayerID:(id)d deviceID:(id)iD data:(id)data
{
  dataCopy = data;
  iDCopy = iD;
  dCopy = d;
  v11 = [(GKClientProxy *)self connectionProxyForUseCase:@"nearbyDataReceived"];
  [v11 nearbyDataReceivedForPlayerID:dCopy deviceID:iDCopy data:dataCopy];
}

- (void)relayPushNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"relayPushNotification"];
  [v5 relayPushNotification:notificationCopy];
  viewService = [(GKClientProxy *)self viewService];
  [viewService relayPushNotification:notificationCopy];

  extensionProxies = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014C3C4;
  v9[3] = &unk_1003687E8;
  v10 = notificationCopy;
  v8 = notificationCopy;
  [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)didConnectToParticipantWithID:(id)d
{
  dCopy = d;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"didConnectToParticipantWithID"];
  [v5 didConnectToParticipantWithID:dCopy];
}

- (void)didDisconnectFromParticipantWithID:(id)d
{
  dCopy = d;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"didDisconnectFromParticipantWithID"];
  [v5 didDisconnectFromParticipantWithID:dCopy];
}

- (void)didReceiveData:(id)data reliably:(BOOL)reliably forRecipients:(id)recipients fromSender:(id)sender
{
  reliablyCopy = reliably;
  senderCopy = sender;
  recipientsCopy = recipients;
  dataCopy = data;
  v13 = [(GKClientProxy *)self connectionProxyForUseCase:@"didReceiveData"];
  [v13 didReceiveData:dataCopy reliably:reliablyCopy forRecipients:recipientsCopy fromSender:senderCopy];
}

- (void)setBadgeCount:(unint64_t)count forType:(unint64_t)type
{
  v6 = [(GKClientProxy *)self connectionProxyForUseCase:@"setBadgeCount:forType:"];
  [v6 setBadgeCount:count forType:type];
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  infoCopy = info;
  if (([(GKClientProxy *)self applicationState]== 2 || [(GKClientProxy *)self applicationState]== 4) && ![(GKClientProxy *)self isExtension]&& ![(GKClientProxy *)self isUIService])
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "App is backgrounded, defering refresh until app is running in foreground for data type = %i", buf, 8u);
    }

    v7 = objc_alloc_init(GKRefreshData);
    [(GKRefreshData *)v7 setDataType:v4];
    [(GKRefreshData *)v7 setUserInfo:infoCopy];
    pendingDataTypesForRefresh = [(GKClientProxy *)self pendingDataTypesForRefresh];
    objc_sync_enter(pendingDataTypesForRefresh);
    pendingDataTypesForRefresh2 = [(GKClientProxy *)self pendingDataTypesForRefresh];
    [pendingDataTypesForRefresh2 addObject:v7];

    objc_sync_exit(pendingDataTypesForRefresh);
  }

  else
  {
    v7 = [(GKClientProxy *)self connectionProxyForUseCase:@"refreshContentsForDataType"];
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = GKRefreshDataTypeAsString();
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = infoCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKRefreshContents - refreshing contents for dataType: %@ userInfo: %@", buf, 0x16u);
    }

    [(GKRefreshData *)v7 refreshContentsForDataType:v4 userInfo:infoCopy];
    viewService = [(GKClientProxy *)self viewService];
    [viewService refreshContentsForDataType:v4 userInfo:infoCopy];

    extensionProxies = [(GKClientProxy *)self extensionProxies];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10014C89C;
    v18[3] = &unk_100368830;
    v20 = v4;
    v19 = infoCopy;
    [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:v18];

    pendingDataTypesForRefresh = v19;
  }
}

- (void)setPreferencesValues:(id)values
{
  valuesCopy = values;
  connection = [(GKClientProxy *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  [remoteObjectProxy setPreferencesValues:valuesCopy];
  viewService = [(GKClientProxy *)self viewService];
  [viewService setPreferencesValues:valuesCopy];

  extensionProxies = [(GKClientProxy *)self extensionProxies];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014C9B0;
  v10[3] = &unk_1003687E8;
  v11 = valuesCopy;
  v9 = valuesCopy;
  [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:v10];
}

- (void)getPreferenceForKey:(id)key handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = handlerCopy;
    v6 = CFPreferencesCopyAppValue(key, GKGameCenterIdentifier);
    v7 = v9;
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
      v7 = v9;
    }

    else
    {
      bOOLValue = 0;
    }

    v7[2](v9, bOOLValue, v6 != 0);

    handlerCopy = v9;
  }
}

- (void)setCurrentGame:(id)game serverEnvironment:(int64_t)environment reply:(id)reply
{
  gameCopy = game;
  replyCopy = reply;
  v10 = dispatch_group_create();
  bundleVersion = [(GKClientProxy *)self bundleVersion];
  if (bundleVersion)
  {
    [gameCopy setBundleVersion:bundleVersion];
  }

  bundleShortVersion = [(GKClientProxy *)self bundleShortVersion];
  if (bundleShortVersion)
  {
    [gameCopy setShortBundleVersion:bundleShortVersion];
  }

  [(GKClientProxy *)self setCurrentGame:gameCopy];
  connection = [(GKClientProxy *)self connection];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10014CD20;
  v28[3] = &unk_100361108;
  v14 = v10;
  v29 = v14;
  v15 = [connection remoteObjectProxyWithErrorHandler:v28];

  if (v15)
  {
    dispatch_group_enter(v14);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10014CDB0;
    v26[3] = &unk_100361770;
    v27 = v14;
    [v15 setCurrentGame:gameCopy serverEnvironment:environment reply:v26];
  }

  viewService = [(GKClientProxy *)self viewService];
  v17 = viewService;
  if (viewService)
  {
    [viewService setCurrentGame:gameCopy serverEnvironment:environment reply:&stru_100368850];
  }

  extensionProxies = [(GKClientProxy *)self extensionProxies];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10014CDBC;
  v23[3] = &unk_100368898;
  v19 = gameCopy;
  v24 = v19;
  environmentCopy = environment;
  [extensionProxies _gkEnumerateKeysAndObjectsUsingBlock:v23];

  if (replyCopy)
  {
    replyQueue = self->_replyQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10014CDD8;
    v21[3] = &unk_100360FA0;
    v22 = replyCopy;
    dispatch_group_notify(v14, replyQueue, v21);
  }
}

- (GKGameInternal)currentGame
{
  currentGame = self->_currentGame;
  if (currentGame)
  {
    v3 = currentGame;
  }

  else
  {
    v3 = objc_opt_new();
    bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
    [(GKGameInternal *)v3 setBundleIdentifier:bundleIdentifier];

    bundleVersion = [(GKClientProxy *)self bundleVersion];
    [(GKGameInternal *)v3 setBundleVersion:bundleVersion];

    bundleShortVersion = [(GKClientProxy *)self bundleShortVersion];
    [(GKGameInternal *)v3 setShortBundleVersion:bundleShortVersion];

    bundleIdentifier2 = [(GKClientProxy *)self bundleIdentifier];
    [(GKGameInternal *)v3 setName:bundleIdentifier2];

    bundleIdentifier3 = [(GKClientProxy *)self bundleIdentifier];
    if (bundleIdentifier3)
    {
      bundleIdentifier4 = [(GKClientProxy *)self bundleIdentifier];
      [(GKGameInternal *)v3 setPlatform:[GKApplicationWorkspace getPlatformForBundleID:bundleIdentifier4]];
    }

    else
    {
      [(GKGameInternal *)v3 setPlatform:+[GKGameDescriptor currentPlatform]];
    }
  }

  return v3;
}

- (void)authenticatedPlayersDidChange:(id)change authenticatingBundleID:(id)d reply:(id)reply
{
  changeCopy = change;
  dCopy = d;
  replyCopy = reply;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2575, "[GKClientProxy(GKClientInterface) authenticatedPlayersDidChange:authenticatingBundleID:reply:]"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10014D064;
  v15[3] = &unk_100360F78;
  v15[4] = self;
  v16 = changeCopy;
  v17 = dCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = dCopy;
  v14 = changeCopy;
  [GKActivity named:v11 execute:v15];
}

- (id)appTerminateRequestWithBackgroundFlag:(BOOL)flag
{
  v9[0] = @"background";
  v3 = [NSNumber numberWithBool:flag];
  v10[0] = v3;
  v9[1] = @"timestamp";
  v4 = +[NSDate _gkServerTimestamp];
  v10[1] = v4;
  v9[2] = @"udid";
  v5 = +[GKDevice currentDevice];
  udid = [v5 udid];
  v10[2] = udid;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (void)terminateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2621, "[GKClientProxy(GKClientInterface) terminateWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  if ([(GKClientProxy *)self initialized])
  {
    v7 = [(GKClientProxy *)self appTerminateRequestWithBackgroundFlag:0];
    dictionaryCopy = [(GKThreadsafeDictionary *)self->_appSessions dictionaryCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10014D740;
    v14[3] = &unk_100368950;
    v15 = v6;
    selfCopy = self;
    v17 = v7;
    v9 = v7;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v14];
  }

  if (handlerCopy)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014DA70;
    v11[3] = &unk_100360EB0;
    v13 = handlerCopy;
    v12 = v6;
    [v12 notifyOnQueue:v10 block:v11];
  }
}

- (void)backgroundWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2654, "[GKClientProxy(GKClientInterface) backgroundWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  if ([(GKClientProxy *)self initialized])
  {
    v7 = [(GKClientProxy *)self appTerminateRequestWithBackgroundFlag:1];
    dictionaryCopy = [(GKThreadsafeDictionary *)self->_appSessions dictionaryCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10014DCBC;
    v14[3] = &unk_100368950;
    v15 = v6;
    selfCopy = self;
    v17 = v7;
    v9 = v7;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v14];
  }

  if (handlerCopy)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014DFEC;
    v11[3] = &unk_100360EB0;
    v13 = handlerCopy;
    v12 = v6;
    [v12 notifyOnQueue:v10 block:v11];
  }
}

- (void)addAppSession:(id)session forCredential:(id)credential
{
  if (session)
  {
    appSessions = self->_appSessions;
    v11[0] = session;
    v11[1] = credential;
    credentialCopy = credential;
    sessionCopy = session;
    v8 = [NSArray arrayWithObjects:v11 count:2];
    playerInternal = [credentialCopy playerInternal];
    playerID = [playerInternal playerID];
    [(GKThreadsafeDictionary *)appSessions setObject:v8 forKey:playerID];
  }
}

- (id)appSessionForPlayer:(id)player
{
  appSessions = self->_appSessions;
  playerID = [player playerID];
  v5 = [(GKThreadsafeDictionary *)appSessions objectForKey:playerID];

  firstObject = [v5 firstObject];

  return firstObject;
}

- (id)appSessionForCredential:(id)credential
{
  playerInternal = [credential playerInternal];
  v5 = [(GKClientProxy *)self appSessionForPlayer:playerInternal];

  return v5;
}

- (void)initializeWithCredential:(id)credential completionHandler:(id)handler
{
  credentialCopy = credential;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2712, "[GKClientProxy(GKClientInterface) initializeWithCredential:completionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v28[0] = @"background";
  v10 = [NSNumber numberWithBool:[(GKClientProxy *)self wasAppBackgrounded]];
  v29[0] = v10;
  v28[1] = @"timestamp";
  v11 = +[NSDate _gkServerTimestamp];
  v29[1] = v11;
  v28[2] = @"udid";
  v12 = +[GKDevice currentDevice];
  udid = [v12 udid];
  v29[2] = udid;
  v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10014E4E0;
  v24[3] = &unk_100361F90;
  v24[4] = self;
  v15 = v9;
  v25 = v15;
  v26 = credentialCopy;
  v27 = v14;
  v16 = v14;
  v17 = credentialCopy;
  [v15 perform:v24];
  v18 = dispatch_get_global_queue(0, 0);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10014E9EC;
  v21[3] = &unk_100361068;
  v22 = v15;
  v23 = handlerCopy;
  v21[4] = self;
  v19 = v15;
  v20 = handlerCopy;
  [v19 notifyOnQueue:v18 block:v21];
}

- (void)bgInitializeWithCredential:(id)credential completionHandler:(id)handler
{
  credentialCopy = credential;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2795, "[GKClientProxy(GKClientInterface) bgInitializeWithCredential:completionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v23 = @"timestamp";
  v10 = +[NSDate _gkServerTimestamp];
  v24 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014ECC4;
  v19[3] = &unk_100361F90;
  v19[4] = self;
  v12 = credentialCopy;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v9;
  v22 = v14;
  [v14 perform:v19];
  if (handlerCopy)
  {
    v15 = dispatch_get_global_queue(0, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10014EE6C;
    v16[3] = &unk_100360EB0;
    v18 = handlerCopy;
    v17 = v14;
    [v17 notifyOnQueue:v15 block:v16];
  }
}

+ (id)storeAndForwardDirectoryPathForEnvironment:(int64_t)environment
{
  v4 = GKSupportDataRoot();
  v5 = v4;
  if (environment == 5)
  {
    v6 = [v4 stringByAppendingPathComponent:@"DelayedRequests"];
  }

  else
  {
    v7 = [GKPreferences displayNameForEnvironment:environment];
    v8 = [NSString stringWithFormat:@"DelayedRequests-%@", v7];
    v6 = [v5 stringByAppendingPathComponent:v8];

    v5 = v7;
  }

  return v6;
}

- (id)storeAndForwardDirectoryPathForEnvironment:(int64_t)environment
{
  v4 = [objc_opt_class() storeAndForwardDirectoryPathForEnvironment:environment];
  v5 = [v4 stringByAppendingPathComponent:self->_bundleIdentifier];

  return v5;
}

- (id)requestsCacheForEnvironment:(int64_t)environment
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(GKClientProxy *)self storeAndForwardDirectoryPathForEnvironment:environment];
  [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
  v7 = [GKPreferences displayNameForEnvironment:environment];
  v8 = [NSString stringWithFormat:@"%@.delayedRequests", v7];
  v9 = [v6 stringByAppendingPathComponent:v8];

  LOBYTE(v8) = [v5 fileExistsAtPath:v9];
  v10 = [GKDatabaseConnection connectionWithDatabasePath:v9];
  if ((v8 & 1) == 0)
  {
    stringByDeletingPathExtension = [@"delayed_requests.schema" stringByDeletingPathExtension];
    pathExtension = [@"delayed_requests.schema" pathExtension];
    v13 = GKGameCenterFoundationBundle();
    v14 = [v13 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

    v15 = [GKSQLRunner runnerWithConnection:v10];
    [v15 runSQLFromFileAtPath:v14];
  }

  return v10;
}

- (void)_setupDelayedRequestsWriters
{
  v3 = dispatch_get_current_queue();
  v4 = v3;
  delayedRequestsQueue = self->_delayedRequestsQueue;
  if (v3 != delayedRequestsQueue)
  {
    label = dispatch_queue_get_label(v3);
    v7 = dispatch_queue_get_label(delayedRequestsQueue);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKClientProxy(DelayedRequests) _setupDelayedRequestsWriters]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _delayedRequestsQueue)\n[%s (%s:%d)]", v9, "-[GKClientProxy(DelayedRequests) _setupDelayedRequestsWriters]", [lastPathComponent UTF8String], 2886);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  if (!self->_delayedRequestsDBConnection)
  {
    v13 = [(GKClientProxy *)self requestsCacheForEnvironment:[(GKClientProxy *)self environment]];
    [(GKClientProxy *)self setDelayedRequestsDBConnection:v13];
  }

  delayedRequestsDBConnection = [(GKClientProxy *)self delayedRequestsDBConnection];
  [delayedRequestsDBConnection checkAndOpenDatabase];
}

- (void)_removeDelayedRequestStore
{
  v3 = dispatch_get_current_queue();
  v4 = v3;
  delayedRequestsQueue = self->_delayedRequestsQueue;
  if (v3 != delayedRequestsQueue)
  {
    label = dispatch_queue_get_label(v3);
    v7 = dispatch_queue_get_label(delayedRequestsQueue);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKClientProxy(DelayedRequests) _removeDelayedRequestStore]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _delayedRequestsQueue)\n[%s (%s:%d)]", v9, "-[GKClientProxy(DelayedRequests) _removeDelayedRequestStore]", [lastPathComponent UTF8String], 2899);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [(GKClientProxy *)self storeAndForwardDirectoryPathForEnvironment:[(GKClientProxy *)self environment]];
  v15 = [v14 stringByAppendingString:@".doomed"];
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100291B44();
  }

  v27 = 0;
  v17 = [v13 moveItemAtPath:v14 toPath:v15 error:&v27];
  v18 = v27;
  if (v17)
  {
    [(GKClientProxy *)self setDelayedRequestsDBConnection:0];
    v26 = v18;
    v19 = [v13 removeItemAtPath:v15 error:&v26];
    v20 = v26;

    if (v19)
    {
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
      }

      v22 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Deleted delayed request store file at path %@", buf, 0xCu);
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v25 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100291BB4();
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v24 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v18;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to move delayed requests store %@ to %@. ERROR: %@", buf, 0x20u);
    }

    v20 = v18;
  }
}

- (id)_delayedRequestWriterWithCacheWriterClass:(Class)class cacheReaderClass:(Class)readerClass networkWriterClass:(Class)writerClass bagKey:(id)key batchSubmissionInterval:(int64_t)interval credential:(id)credential
{
  keyCopy = key;
  credentialCopy = credential;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100143448;
  v33 = sub_100143458;
  v34 = 0;
  delayedRequestsQueue = self->_delayedRequestsQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10014F84C;
  v21[3] = &unk_100368978;
  classCopy = class;
  readerClassCopy = readerClass;
  v21[4] = self;
  v22 = credentialCopy;
  v23 = keyCopy;
  v24 = &v29;
  writerClassCopy = writerClass;
  intervalCopy = interval;
  v17 = keyCopy;
  v18 = credentialCopy;
  dispatch_sync(delayedRequestsQueue, v21);
  v19 = v30[5];

  _Block_object_dispose(&v29, 8);

  return v19;
}

- (id)setPlayerStatusWriterWithCredential:(id)credential
{
  credentialCopy = credential;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [(GKClientProxy *)self _delayedRequestWriterWithCacheWriterClass:v5 cacheReaderClass:v6 networkWriterClass:objc_opt_class() bagKey:@"gk-set-player-status" batchSubmissionInterval:0 credential:credentialCopy];

  return v7;
}

- (id)setPlayerPhotoWriterWithCredential:(id)credential
{
  credentialCopy = credential;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [(GKClientProxy *)self _delayedRequestWriterWithCacheWriterClass:v5 cacheReaderClass:v6 networkWriterClass:objc_opt_class() bagKey:@"gk-get-image-upload-url" batchSubmissionInterval:0 credential:credentialCopy];

  return v7;
}

- (id)deletePlayerPhotoWriterWithCredential:(id)credential
{
  credentialCopy = credential;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [(GKClientProxy *)self _delayedRequestWriterWithCacheWriterClass:v5 cacheReaderClass:v6 networkWriterClass:objc_opt_class() bagKey:@"gk-delete-profile-image" batchSubmissionInterval:0 credential:credentialCopy];

  return v7;
}

- (id)removeGameWriterWithCredential:(id)credential
{
  credentialCopy = credential;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [(GKClientProxy *)self _delayedRequestWriterWithCacheWriterClass:v5 cacheReaderClass:v6 networkWriterClass:objc_opt_class() bagKey:@"gk-remove-game" batchSubmissionInterval:0 credential:credentialCopy];

  return v7;
}

+ (void)performDelayedRequestsForEnvironment:(int64_t)environment
{
  if (GKAtomicCompareAndSwap32Barrier())
  {
    cacheFileQueue = [self cacheFileQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014FDB4;
    block[3] = &unk_100368998;
    block[4] = environment;
    dispatch_async(cacheFileQueue, block);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Game Center not sending store and forward as achievements or scores are being sent on another thread", v8, 2u);
    }
  }
}

- (void)performDelayedRequestsForEnvironment:(int64_t)environment
{
  v5 = +[GKPlayerCredentialController sharedController];
  v6 = [v5 allCredentialsForEnvironment:environment];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015007C;
  v7[3] = &unk_1003689C0;
  v7[4] = self;
  [v6 enumerateObjectsUsingBlock:v7];
}

- (void)performDelayedRequestsForCredential:(id)credential
{
  credentialCopy = credential;
  v5 = dispatch_get_global_queue(9, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100150140;
  v7[3] = &unk_1003610B8;
  v8 = credentialCopy;
  selfCopy = self;
  v6 = credentialCopy;
  dispatch_sync(v5, v7);
}

+ (id)contextKeyForPlayerID:(id)d
{
  if (d)
  {
    return d;
  }

  else
  {
    return @"<global>";
  }
}

+ (id)_existingManagedObjectContextForPlayerID:(id)d
{
  dCopy = d;
  v4 = [objc_opt_class() contextKeyForPlayerID:dCopy];

  v5 = [qword_1003B92E0 objectForKey:v4];

  return v5;
}

- (id)managedObjectContextForPlayerID:(id)d
{
  dCopy = d;
  if (qword_1003B92E8 != -1)
  {
    sub_100291C5C();
  }

  v5 = [objc_opt_class() contextKeyForPlayerID:dCopy];
  v6 = qword_1003B92E0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100150E28;
  v10[3] = &unk_100368A80;
  v10[4] = self;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [v6 objectForKey:v5 objectProducerBlock:v10];

  return v8;
}

- (id)transactionGroupWithName:(id)name forPlayerID:(id)d
{
  nameCopy = name;
  v7 = [(GKClientProxy *)self managedObjectContextForPlayerID:d];
  v8 = [GKCacheTransactionGroup transactionGroupWithName:nameCopy context:v7 client:self];

  return v8;
}

- (id)transactionGroupIfCacheExistsForPlayerID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() _existingManagedObjectContextForPlayerID:dCopy];

  if (v5)
  {
    v6 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy+Cache.m", 85, "[GKClientProxy(Cache) transactionGroupIfCacheExistsForPlayerID:]"];
    v7 = [GKCacheTransactionGroup transactionGroupWithName:v6 context:v5 client:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)cacheDirectoryForBundleID:(id)d
{
  dCopy = d;
  v4 = GKInsecureCacheRoot();
  v5 = [v4 stringByAppendingPathComponent:@"Data"];

  if (dCopy)
  {
    v6 = [v5 stringByAppendingPathComponent:dCopy];

    v5 = v6;
  }

  return v5;
}

+ (id)insecureDatabaseDirectoryURLForBundleID:(id)d language:(id)language playerID:(id)iD
{
  iDCopy = iD;
  languageCopy = language;
  v10 = [self cacheDirectoryForBundleID:d];
  v11 = @"global";
  if (iDCopy)
  {
    v11 = iDCopy;
  }

  v12 = [NSString stringWithFormat:@"%@-%@.gcdata", languageCopy, v11];

  v13 = [v10 stringByAppendingPathComponent:v12];

  v14 = [NSURL fileURLWithPath:v13 isDirectory:1];

  return v14;
}

+ (id)insecureDatabaseFileURLForBundleID:(id)d language:(id)language playerID:(id)iD name:(id)name
{
  nameCopy = name;
  v11 = [self insecureDatabaseDirectoryURLForBundleID:d language:language playerID:iD];
  v12 = [v11 URLByAppendingPathComponent:nameCopy isDirectory:0];

  return v12;
}

+ (void)removeCacheForPlayerID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [self contextKeyForPlayerID:dCopy];
  cacheFileQueue = [self cacheFileQueue];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKClientProxy+Cache.m", 145, "+[GKClientProxy(Cache) removeCacheForPlayerID:completion:]");
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1001515E4;
  v34[3] = &unk_100361FB8;
  v12 = dCopy;
  v35 = v12;
  selfCopy = self;
  v13 = v8;
  v36 = v13;
  [v11 performOnQueue:cacheFileQueue block:v34];
  gameCenterClient = [self gameCenterClient];
  v15 = +[NSFileManager defaultManager];
  if (gameCenterClient)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10015168C;
    v31[3] = &unk_100360FF0;
    v32 = gameCenterClient;
    v33 = v12;
    [v11 perform:v31];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100291C70();
    }
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001517D0;
  v27[3] = &unk_100360F00;
  v28 = v12;
  v29 = gameCenterClient;
  v30 = cacheFileQueue;
  v17 = cacheFileQueue;
  v18 = gameCenterClient;
  v19 = v12;
  [v11 perform:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100151A4C;
  v25[3] = &unk_100361620;
  v26 = v15;
  v20 = v15;
  [v11 performOnQueue:v17 block:v25];
  taskQueue = [v18 taskQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100151B68;
  v23[3] = &unk_100360FA0;
  v24 = completionCopy;
  v22 = completionCopy;
  [v11 notifyOnQueue:taskQueue block:v23];
}

+ (void)removeAllCachesWithHandler:(id)handler
{
  handlerCopy = handler;
  dictionaryCopy = [qword_1003B92E0 dictionaryCopy];
  v6 = qword_1003B92E0;
  allKeys = [dictionaryCopy allKeys];
  [v6 removeObjectsForKeys:allKeys];

  v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
  entityCacheProvider = [v8 entityCacheProvider];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100151C94;
  v12[3] = &unk_1003638C8;
  v14 = handlerCopy;
  selfCopy = self;
  v13 = dictionaryCopy;
  v10 = handlerCopy;
  v11 = dictionaryCopy;
  [entityCacheProvider deleteAllCachesWithCompletionHandler:v12];
}

+ (id)managedObjectModel
{
  if (qword_1003B92F0 != -1)
  {
    sub_100291FA0();
  }

  v3 = qword_1003B92F8;

  return v3;
}

+ (id)cacheFileQueue
{
  if (qword_1003B9300 != -1)
  {
    sub_100291FB4();
  }

  v3 = qword_1003B9308;

  return v3;
}

+ (void)migrateInsecureDatabaseToSecureDatabaseURL:(id)l usingPersistantStoreCoordinator:(id)coordinator fileManager:(id)manager options:(id)options playerID:(id)d bundleID:(id)iD language:(id)language name:(id)self0
{
  iDCopy = iD;
  optionsCopy = options;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  lCopy = l;
  v21 = [self insecureDatabaseFileURLForBundleID:iDCopy language:language playerID:d name:name];
  v22 = [[GKDatabaseMigrator alloc] initWithOldDatabaseURL:v21 newDatabaseURL:lCopy persistentStoreCoordinator:coordinatorCopy options:optionsCopy];

  [(GKDatabaseMigrator *)v22 migrate];
  v25 = 0;
  [GKDatabaseMigrator removeInsecureOldDatabaseFoldersWithFileManager:managerCopy oldDatabaseURL:v21 bundleID:iDCopy error:&v25];

  v23 = v25;
  if (v23)
  {
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100291FC8();
    }
  }
}

+ (void)migrateSecurityApplicationGroupDatabaseToSecureDatabaseURL:(id)l usingPersistantStoreCoordinator:(id)coordinator fileManager:(id)manager options:(id)options playerID:(id)d bundleID:(id)iD language:(id)language name:(id)self0
{
  lCopy = l;
  coordinatorCopy = coordinator;
  managerCopy = manager;
  optionsCopy = options;
  dCopy = d;
  iDCopy = iD;
  languageCopy = language;
  nameCopy = name;
  v22 = [GKSecureFileLocator securityApplicationGroupLocatorWithFileManager:managerCopy];
  if (v22)
  {
    v30 = optionsCopy;
    v31 = lCopy;
    v29 = languageCopy;
    if ([dCopy length])
    {
      [v22 databaseFileWithBundleID:iDCopy language:languageCopy contextID:dCopy name:nameCopy createDirectory:0];
    }

    else
    {
      [v22 globalDatabaseFileWithBundleID:iDCopy language:languageCopy name:nameCopy createDirectory:0];
    }
    v23 = ;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001525D4;
    v33[3] = &unk_100361F68;
    v24 = managerCopy;
    v34 = v24;
    v25 = v23;
    v35 = v25;
    v36 = iDCopy;
    v26 = objc_retainBlock(v33);
    path = [v31 path];
    LODWORD(v24) = [v24 fileExistsAtPath:path];

    if (v24)
    {
      (v26[2])(v26);
      optionsCopy = v30;
    }

    else
    {
      optionsCopy = v30;
      v28 = [[GKDatabaseMigrator alloc] initWithOldDatabaseURL:v25 newDatabaseURL:v31 persistentStoreCoordinator:coordinatorCopy options:v30];
      [(GKDatabaseMigrator *)v28 migrate];
      (v26[2])(v26);
    }

    lCopy = v31;
    languageCopy = v29;
  }
}

+ (id)_newManagedObjectContextWithCacheURL:(id)l environment:(int64_t)environment psc:(id)psc storeOptions:(id)options
{
  lCopy = l;
  pscCopy = psc;
  optionsCopy = options;
  v13 = dispatch_get_current_queue();
  cacheFileQueue = [self cacheFileQueue];

  if (v13 != cacheFileQueue)
  {
    label = dispatch_queue_get_label(v13);
    cacheFileQueue2 = [self cacheFileQueue];
    v17 = dispatch_queue_get_label(cacheFileQueue2);
    +[NSThread callStackSymbols];
    v18 = v38 = environment;
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s invoked on the wrong queue (got:%s expected:%s) at %@", "+[GKClientProxy(Cache) _newManagedObjectContextWithCacheURL:environment:psc:storeOptions:]", label, v17, v18);
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy+Cache.m"];
    lastPathComponent = [v20 lastPathComponent];
    v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == [self cacheFileQueue])\n[%s (%s:%d)]", v19, "+[GKClientProxy(Cache) _newManagedObjectContextWithCacheURL:environment:psc:storeOptions:]", [lastPathComponent UTF8String], 396);

    environment = v38;
    [NSException raise:@"GameKit Exception" format:@"%@", v22];
  }

  v23 = +[NSFileManager defaultManager];
  v24 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  v25 = +[GKPlayerCredentialController sharedController];
  v26 = [v25 primaryCredentialForEnvironment:environment];
  playerInternal = [v26 playerInternal];
  playerID = [playerInternal playerID];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100152960;
  v39[3] = &unk_100361F40;
  v40 = lCopy;
  v41 = pscCopy;
  v42 = optionsCopy;
  v43 = v23;
  v29 = v24;
  v44 = v29;
  v45 = playerID;
  v30 = playerID;
  v31 = v23;
  v32 = optionsCopy;
  v33 = pscCopy;
  v34 = lCopy;
  [v29 performBlockAndWait:v39];
  v35 = v45;
  v36 = v29;

  return v36;
}

+ (id)newManagedObjectContextForPlayerID:(id)d bundleID:(id)iD language:(id)language environment:(int64_t)environment
{
  dCopy = d;
  iDCopy = iD;
  languageCopy = language;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100152E4C;
  v30 = sub_100152E5C;
  v31 = 0;
  cacheFileQueue = [self cacheFileQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100152E64;
  v19[3] = &unk_100368B08;
  v20 = dCopy;
  v21 = languageCopy;
  v22 = iDCopy;
  v23 = &v26;
  selfCopy = self;
  environmentCopy = environment;
  v14 = iDCopy;
  v15 = languageCopy;
  v16 = dCopy;
  dispatch_sync(cacheFileQueue, v19);

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

+ (id)cacheDatabaseURLForBundleID:(id)d playerID:(id)iD language:(id)language name:(id)name fileManager:(id)manager
{
  iDCopy = iD;
  nameCopy = name;
  languageCopy = language;
  dCopy = d;
  v14 = +[GKSecureFileLocator shared];
  if ([iDCopy length])
  {
    [v14 databaseFileWithBundleID:dCopy language:languageCopy contextID:iDCopy name:nameCopy createDirectory:1];
  }

  else
  {
    [v14 globalDatabaseFileWithBundleID:dCopy language:languageCopy name:nameCopy createDirectory:1];
  }
  v15 = ;

  return v15;
}

+ (id)createPersistentStoreCoordinator
{
  CFAbsoluteTimeGetCurrent();
  v2 = [NSPersistentStoreCoordinator alloc];
  v3 = +[GKClientProxy managedObjectModel];
  v4 = [v2 initWithManagedObjectModel:v3];

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100292380(v6);
  }

  return v4;
}

+ (void)closeDatabaseFromManagedObjectContextForPlayerID:(id)d
{
  v4 = [self _existingManagedObjectContextForPlayerID:d];
  [self closeDatabaseFromManagedObjectContextForMOC:v4];
}

+ (void)closeDatabaseFromManagedObjectContextForMOC:(id)c
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001532B4;
  v4[3] = &unk_100361770;
  cCopy = c;
  v3 = cCopy;
  [v3 performBlockAndWait:v4];
}

- (id)parsedBundleIDFromPartyURL:(id)l
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  GKClientProxy.parsedBundleID(_:)();
  v10 = v9;

  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end