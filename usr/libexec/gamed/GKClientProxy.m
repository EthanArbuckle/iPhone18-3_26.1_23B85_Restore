@interface GKClientProxy
+ (BOOL)getDebugModeForBundleID:(id)a3;
+ (BOOL)isExtensionBundleID:(id)a3;
+ (BOOL)isGameCenterDashboardForegroundRunning;
+ (NSArray)clients;
+ (id)_clientLookup;
+ (id)_existingManagedObjectContextForPlayerID:(id)a3;
+ (id)_newManagedObjectContextWithCacheURL:(id)a3 environment:(int64_t)a4 psc:(id)a5 storeOptions:(id)a6;
+ (id)bundleIDsToBeInitializedInDebugMode;
+ (id)cacheDatabaseURLForBundleID:(id)a3 playerID:(id)a4 language:(id)a5 name:(id)a6 fileManager:(id)a7;
+ (id)cacheDirectoryForBundleID:(id)a3;
+ (id)cacheFileQueue;
+ (id)clientForBundleID:(id)a3 bundle:(id)a4 pid:(int)a5 createIfNecessary:(BOOL)a6 connectionEntitlements:(id)a7;
+ (id)clientForInviteSessionToken:(id)a3;
+ (id)clientForMatchmakingRID:(id)a3;
+ (id)clientForProcessIdentifier:(int)a3;
+ (id)contextKeyForPlayerID:(id)a3;
+ (id)createPersistentStoreCoordinator;
+ (id)factoryQueue;
+ (id)foregroundClient;
+ (id)getParentBundleIDPrefixWithChildBundleID:(id)a3 parentBundleID:(id)a4;
+ (id)insecureDatabaseDirectoryURLForBundleID:(id)a3 language:(id)a4 playerID:(id)a5;
+ (id)insecureDatabaseFileURLForBundleID:(id)a3 language:(id)a4 playerID:(id)a5 name:(id)a6;
+ (id)lastKnownAppInitStateForClientWithBundleID:(id)a3 pid:(int)a4;
+ (id)managedObjectModel;
+ (id)newManagedObjectContextForPlayerID:(id)a3 bundleID:(id)a4 language:(id)a5 environment:(int64_t)a6;
+ (id)nonGameCenterForegroundClient;
+ (id)storeAndForwardDirectoryPathForEnvironment:(int64_t)a3;
+ (id)syncQueue;
+ (void)closeDatabaseFromManagedObjectContextForMOC:(id)a3;
+ (void)closeDatabaseFromManagedObjectContextForPlayerID:(id)a3;
+ (void)enumerateClientsUsingBlock:(id)a3;
+ (void)migrateInsecureDatabaseToSecureDatabaseURL:(id)a3 usingPersistantStoreCoordinator:(id)a4 fileManager:(id)a5 options:(id)a6 playerID:(id)a7 bundleID:(id)a8 language:(id)a9 name:(id)a10;
+ (void)migrateSecurityApplicationGroupDatabaseToSecureDatabaseURL:(id)a3 usingPersistantStoreCoordinator:(id)a4 fileManager:(id)a5 options:(id)a6 playerID:(id)a7 bundleID:(id)a8 language:(id)a9 name:(id)a10;
+ (void)performDelayedRequestsForEnvironment:(int64_t)a3;
+ (void)removeAllCachesWithHandler:(id)a3;
+ (void)removeCacheForPlayerID:(id)a3 completion:(id)a4;
+ (void)removeClient:(id)a3;
+ (void)saveAppInitState:(id)a3 forBundleID:(id)a4 pid:(int)a5;
+ (void)setDebugMode:(BOOL)a3 bundleID:(id)a4;
- (BOOL)clientHasAnyPrivateEntitlement;
- (BOOL)isAppDistributorThirdParty;
- (BOOL)isDevSignedForBundleID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGameCenter;
- (BOOL)notifyAboutScoreSubmissions;
- (BOOL)processMatchResponse:(id)a3;
- (GKClientProxy)initWithBundleIdentifier:(id)a3 bundle:(id)a4 pid:(int)a5 connectionEntitlements:(id)a6;
- (GKGameInternal)currentGame;
- (GKPeerDiscovery)peerDiscovery;
- (GKUIViewService)viewService;
- (GKViceroyNearbyDiscovery)nearbyDiscovery;
- (NSDictionary)gameDescriptor;
- (NSLocale)locale;
- (NSString)description;
- (NSString)parentBundleIdentifier;
- (NSString)protocolVersion;
- (id)_delayedRequestWriterWithCacheWriterClass:(Class)a3 cacheReaderClass:(Class)a4 networkWriterClass:(Class)a5 bagKey:(id)a6 batchSubmissionInterval:(int64_t)a7 credential:(id)a8;
- (id)appSessionForCredential:(id)a3;
- (id)appSessionForPlayer:(id)a3;
- (id)appTerminateRequestWithBackgroundFlag:(BOOL)a3;
- (id)connectionProxyForUseCase:(id)a3;
- (id)credentialForPlayer:(id)a3;
- (id)credentialForPlayerID:(id)a3;
- (id)deletePlayerPhotoWriterWithCredential:(id)a3;
- (id)fetchOrCreateInviteSession;
- (id)gameServicesActorSystem;
- (id)managedObjectContextForPlayerID:(id)a3;
- (id)missingTransitionFromState:(id)a3 toState:(id)a4;
- (id)parsedBundleIDFromPartyURL:(id)a3;
- (id)removeGameWriterWithCredential:(id)a3;
- (id)requestsCacheForEnvironment:(int64_t)a3;
- (id)rootOrService;
- (id)serviceForClass:(Class)a3 transport:(id)a4 client:(id)a5 credential:(id)a6;
- (id)setPlayerPhotoWriterWithCredential:(id)a3;
- (id)setPlayerStatusWriterWithCredential:(id)a3;
- (id)storeAndForwardDirectoryPathForEnvironment:(int64_t)a3;
- (id)transactionGroupIfCacheExistsForPlayerID:(id)a3;
- (id)transactionGroupWithName:(id)a3 forPlayerID:(id)a4;
- (id)transportWithCredential:(id)a3;
- (id)verifyAuthorized;
- (int64_t)appSignatureType;
- (unint64_t)hash;
- (void)_removeDelayedRequestStore;
- (void)_setupDelayedRequestsWriters;
- (void)acceptInviteWithNotification:(id)a3;
- (void)acceptMultiplayerGameInvite;
- (void)achievementSelected:(id)a3;
- (void)addAppSession:(id)a3 forCredential:(id)a4;
- (void)authenticatedPlayersDidChange:(id)a3 authenticatingBundleID:(id)a4 reply:(id)a5;
- (void)backgroundWithCompletionHandler:(id)a3;
- (void)beginNetworkActivity;
- (void)bgInitializeWithCredential:(id)a3 completionHandler:(id)a4;
- (void)cancelGameInvite:(id)a3;
- (void)cancelInvitationForSession:(id)a3 playerID:(id)a4 pushTokens:(id)a5 handler:(id)a6;
- (void)cancelInviteWithNotification:(id)a3;
- (void)cancelOutstandingCheckMatchStatus;
- (void)challengeCompleted:(id)a3;
- (void)challengeReceived:(id)a3;
- (void)checkMatchStatus;
- (void)clearDiscoveryInfo;
- (void)completedChallengeSelected:(id)a3;
- (void)dealloc;
- (void)declineInviteWithNotification:(id)a3;
- (void)deleteInviteSession;
- (void)deliverEncodedGameActivityInstance:(id)a3;
- (void)deliverGameActivityAsInternal:(id)a3;
- (void)deliverMostRecentPendingGameActivityInstance;
- (void)didConnectToParticipantWithID:(id)a3;
- (void)didDisconnectFromParticipantWithID:(id)a3;
- (void)didEnterForeground;
- (void)didReceiveData:(id)a3 reliably:(BOOL)a4 forRecipients:(id)a5 fromSender:(id)a6;
- (void)endNetworkActivity;
- (void)fetchTurnBasedData;
- (void)friendRequestSelected:(id)a3;
- (void)getAccountNameWithHandler:(id)a3;
- (void)getAuthenticatedLocalPlayersWithStatus:(unint64_t)a3 handler:(id)a4;
- (void)getAuthenticatedPlayerCredential:(id)a3;
- (void)getAuthenticatedPlayerIDWithHandler:(id)a3;
- (void)getAuthenticatedPlayerInfo:(id)a3;
- (void)getGamedFiredUpWithHandler:(id)a3;
- (void)getPreferenceForKey:(id)a3 handler:(id)a4;
- (void)getPrivateServicesForPID:(int)a3 localPlayer:(id)a4 reply:(id)a5;
- (void)getPrivateServicesWithTransport:(id)a3 forClient:(id)a4 reply:(id)a5;
- (void)getServicesForPID:(int)a3 localPlayer:(id)a4 reply:(id)a5;
- (void)getServicesWithTransport:(id)a3 forClient:(id)a4 reply:(id)a5;
- (void)handleCloudKitShareMetadata:(id)a3 completionHandler:(id)a4;
- (void)initializeInitializationStateMachine;
- (void)initializeWithCredential:(id)a3 completionHandler:(id)a4;
- (void)invokeGameServices:(id)a3 completionHandler:(id)a4;
- (void)localPlayerAgeCategoryWithCompletion:(id)a3;
- (void)localizedMessageFromDictionary:(id)a3 forBundleID:(id)a4 handler:(id)a5;
- (void)messagesDidReceiveGameCenterURL:(id)a3 senderHandle:(id)a4 contactID:(id)a5;
- (void)metricsValuesChanged;
- (void)nearbyDataReceivedForPlayerID:(id)a3 deviceID:(id)a4 data:(id)a5;
- (void)nearbyPlayerFoundForPlayerID:(id)a3 deviceID:(id)a4 discoveryInfo:(id)a5;
- (void)nearbyPlayerLostForPlayerID:(id)a3 deviceID:(id)a4;
- (void)onChallengeUpdateReceivedWithUserInfo:(id)a3;
- (void)onGameActivityOpenedWithPartyURL:(id)a3 creatorPlayerID:(id)a4;
- (void)onGameActivityReceivedWithPartyURL:(id)a3 creatorPlayerID:(id)a4;
- (void)onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:(id)a3 activityProperties:(id)a4 bundleID:(id)a5 referenceLeaderboardID:(id)a6 referenceAchievementDescriptionID:(id)a7;
- (void)onServerCacheInvalidationReceivedWithBagKey:(id)a3 playerID:(id)a4;
- (void)performAsync:(id)a3;
- (void)performDelayedRequestsForCredential:(id)a3;
- (void)performDelayedRequestsForEnvironment:(int64_t)a3;
- (void)performSync:(id)a3;
- (void)playerFound:(id)a3 deviceID:(id)a4 discoveryInfo:(id)a5;
- (void)playerLost:(id)a3 deviceID:(id)a4;
- (void)presentBannerWithNotification:(id)a3;
- (void)receivedChallengeSelected:(id)a3;
- (void)receivedData:(id)a3 deviceID:(id)a4 data:(id)a5;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (void)refreshPendingDataTypes;
- (void)relayPushNotification:(id)a3;
- (void)requestSandboxExtension:(id)a3;
- (void)resetLoginCancelCount;
- (void)resetNetworkActivity;
- (void)respondedToNearbyInvite:(id)a3;
- (void)scoreSelected:(id)a3;
- (void)sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:(id)a3 completionHandler:(id)a4;
- (void)setBadgeCount:(unint64_t)a3 forType:(unint64_t)a4;
- (void)setCheckMatchStatusTimer:(id)a3;
- (void)setCurrentGame:(id)a3 serverEnvironment:(int64_t)a4 reply:(id)a5;
- (void)setDebugMode:(BOOL)a3 bundleID:(id)a4 reply:(id)a5;
- (void)setExtensionProxy:(id)a3 forBundleID:(id)a4;
- (void)setHostPID:(int)a3 reply:(id)a4;
- (void)setLaunchEvent:(unint64_t)a3 withContext:(id)a4;
- (void)setPreferencesValues:(id)a3;
- (void)setTestGame:(id)a3 protocolVersion:(id)a4 reply:(id)a5;
- (void)stateDidChange;
- (void)terminateWithCompletionHandler:(id)a3;
- (void)updateAppInitState;
- (void)updateIfMissingConnectionEntitlements:(id)a3 bundleID:(id)a4;
- (void)updateIfRecentlyInstalled;
- (void)updateInviteWithNotification:(id)a3;
- (void)updatePreferencesFromBag:(id)a3;
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
  v3 = [(GKClientProxy *)self applicationRecord];
  if (v3)
  {
    v4 = [(GKClientProxy *)self bundleIdentifier];
    v5 = [(GKClientProxy *)self applicationRecord];
    v6 = [v5 appClipMetadata];
    v7 = [v6 parentApplicationIdentifiers];
    v8 = [v7 firstObject];
    v9 = [GKClientProxy getParentBundleIDPrefixWithChildBundleID:v4 parentBundleID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSLocale)locale
{
  v2 = [(GKClientProxy *)self language];
  if (v2)
  {
    v3 = [[NSLocale alloc] initWithLocaleIdentifier:v2];
  }

  else
  {
    v3 = +[NSLocale currentLocale];
  }

  v4 = v3;

  return v4;
}

+ (id)getParentBundleIDPrefixWithChildBundleID:(id)a3 parentBundleID:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (a4)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  sub_1000052E0(v5, v7, v8, a4);
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
  v4 = [(GKClientProxy *)self bundleIdentifier];
  v5 = [(GKClientProxy *)self bundleShortVersion];
  v6 = [(GKClientProxy *)self bundleVersion];
  pid = self->_pid;
  v8 = [(GKClientProxy *)self originalBundleIdentifier];
  v9 = [NSString stringWithFormat:@"%@ (identifier:%@ bundleShortVersion:%@ bundleVersion:%@ pid:%d, originalBundleIdentifier:%@)", v3, v4, v5, v6, pid, v8];

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
    v6 = [(GKClientProxy *)self bundleIdentifier];
    *buf = 138412290;
    v14 = v6;
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
  v12 = self;
  v9 = v11;
  [v9 performAsync:v10];
}

- (BOOL)isGameCenter
{
  v2 = [(GKClientProxy *)self bundleIdentifier];
  v3 = [v2 isEqualToString:GKGameCenterIdentifier];

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
    v6 = [(GKClientProxy *)self bundleIdentifier];
    v7 = [v5 applicationProxyForBundleID:v6];

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

      v10 = [v7 bundleVersion];
      [(GKClientProxy *)self setBundleVersion:v10];

      v11 = [v7 bundleShortVersion];
      [(GKClientProxy *)self setBundleShortVersion:v11];

      v12 = [v7 adamID];
      [(GKClientProxy *)self setAdamID:v12];

      v13 = [v7 externalVersion];
      [(GKClientProxy *)self setExternalVersion:v13];

      [(GKClientProxy *)self setInstalled:1];
    }
  }
}

- (void)invokeGameServices:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100006F64(v8, v10, v11, v6);
  _Block_release(v6);
  sub_1000072CC(v8, v10);
}

- (id)gameServicesActorSystem
{
  v2 = [(GKClientProxy *)self daemonGameServices];
  v3 = [v2 actorSystem];

  return v3;
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
    v6 = [(GKClientProxy *)self bundleIdentifier];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Refreshing pending data types for %@", buf, 0xCu);
  }

  v7 = [(GKClientProxy *)self pendingDataTypesForRefresh];
  objc_sync_enter(v7);
  v8 = [(GKClientProxy *)self pendingDataTypesForRefresh];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(GKClientProxy *)self pendingDataTypesForRefresh];
    v11 = [v10 copy];

    v12 = [(GKClientProxy *)self pendingDataTypesForRefresh];
    [v12 removeAllObjects];
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(v7);

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

- (id)credentialForPlayerID:(id)a3
{
  v4 = a3;
  v5 = +[GKPlayerCredentialController sharedController];
  v6 = [v5 credentialForPlayerID:v4 environment:{-[GKClientProxy environment](self, "environment")}];

  return v6;
}

- (GKClientProxy)initWithBundleIdentifier:(id)a3 bundle:(id)a4 pid:(int)a5 connectionEntitlements:(id)a6
{
  v7 = *&a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [(GKClientProxy *)self init];
  if (!v14)
  {
    goto LABEL_34;
  }

  context = objc_autoreleasePoolPush();
  v72 = v13;
  if (!v11)
  {
    v15 = [NSString stringWithFormat:@"GKClientProxy MUST have a bundleIdentifier"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    v17 = [v16 lastPathComponent];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (bundleIdentifier != nil)\n[%s (%s:%d)]", v15, "-[GKClientProxy initWithBundleIdentifier:bundle:pid:connectionEntitlements:]", [v17 UTF8String], 184, context);

    [NSException raise:@"GameKit Exception" format:@"%@", v18];
  }

  objc_storeStrong(&v14->_connectionEntitlements, a6);
  v19 = +[GKApplicationWorkspace defaultWorkspace];
  v20 = [v19 applicationProxyForBundleID:v11];
  v21 = v20;
  v14->_installed = v20 != 0;
  if (!v12)
  {
    v12 = [v20 bundle];
  }

  v22 = [v21 bundleVersion];
  if ([v11 isEqualToString:GKGameCenterIdentifier])
  {
    v23 = GKGameCenterBundleVersion;

    v22 = v23;
  }

  if (!v22)
  {
    v22 = [v12 _gkBundleVersion];
  }

  v24 = [v21 bundleShortVersion];
  if ((v24 || ([v12 _gkBundleShortVersion], (v24 = objc_claimAutoreleasedReturnValue()) != 0)) && !v22)
  {
    v22 = v24;
  }

  else if (!v22 || v24)
  {
    goto LABEL_17;
  }

  v22 = v22;
  v24 = v22;
LABEL_17:
  v14->_pid = v7;
  objc_storeStrong(&v14->_bundleIdentifier, a3);
  v25 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v11 allowPlaceholder:0 error:0];
  applicationRecord = v14->_applicationRecord;
  v14->_applicationRecord = v25;

  objc_storeStrong(&v14->_bundleVersion, v22);
  objc_storeStrong(&v14->_bundleShortVersion, v24);
  v27 = [v21 adamID];
  adamID = v14->_adamID;
  v14->_adamID = v27;

  v29 = [v21 externalVersion];
  externalVersion = v14->_externalVersion;
  v14->_externalVersion = v29;

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
  v52 = [NSString stringWithFormat:@"com.apple.gamed.gk-app-sessions-%@-%d", v11, v7];
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

  if (v12)
  {
    if ([v12 _gkIsEligibleForNearbyAdvertising])
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
  v13 = v72;
  v68 = [(GKDaemonGameServices *)v67 initWithClientProxy:v14 bundleID:v11 entitlements:v72 libraryDependencies:v66];
  daemonGameServices = v14->_daemonGameServices;
  v14->_daemonGameServices = v68;

  objc_autoreleasePoolPop(context);
LABEL_34:

  return v14;
}

- (GKViceroyNearbyDiscovery)nearbyDiscovery
{
  v3 = +[GKPreferences shared];
  v4 = [v3 disableViceroyNearby];

  if (v4)
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
      v8 = [v7 playerInternal];

      v9 = +[GKDataRequestManager sharedManager];
      v10 = [v9 pushToken];

      if (v10 && ([v8 playerID], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
      {
        v12 = +[GKPreferences shared];
        v13 = [v12 fastSyncTransportEnabled];

        if (v13)
        {
          v14 = [GKPeerDiscovery alloc];
          v15 = [v8 playerID];
          v16 = [(GKPeerDiscovery *)v14 initWithDelegate:self localPlayerID:v15 localPushToken:v10];
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
  v2 = [(GKClientProxy *)self applicationRecord];
  v3 = [v2 iTunesMetadata];
  v4 = [v3 distributorInfo];
  v5 = [v4 distributorIsThirdParty];

  return v5;
}

- (void)updateIfMissingConnectionEntitlements:(id)a3 bundleID:(id)a4
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
    v10 = v9;
    v11 = [(GKClientProxy *)self connectionEntitlements];
    v16 = 138412802;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKClientProxy: updateIfMissingConnectionEntitlements: %@, bundleID: %@, self.connectionEntitlements: %@", &v16, 0x20u);
  }

  if (v6)
  {
    v12 = [(GKClientProxy *)self connectionEntitlements];

    if (!v12)
    {
      [(GKClientProxy *)self setConnectionEntitlements:v6];
      v13 = [_TtC14GameDaemonCore20GKDaemonGameServices alloc];
      v14 = +[GKLibraryDependencies shared];
      v15 = [(GKDaemonGameServices *)v13 initWithClientProxy:self bundleID:v7 entitlements:v6 libraryDependencies:v14];
      [(GKClientProxy *)self setDaemonGameServices:v15];
    }
  }
}

- (void)dealloc
{
  v3 = [(GKClientProxy *)self viewService];
  [v3 setHostClient:0];

  [(GKClientProxy *)self setViewService:0];
  v4 = [(GKClientProxy *)self sandboxExtensionToken];

  if (v4)
  {
    v5 = [(GKClientProxy *)self sandboxExtensionToken];
    [v5 longLongValue];
    sandbox_extension_release();
  }

  [(NSMapTable *)self->_extensionProxies removeAllObjects];
  v6.receiver = self;
  v6.super_class = GKClientProxy;
  [(GKClientProxy *)&v6 dealloc];
}

- (id)transportWithCredential:(id)a3
{
  v4 = a3;
  v5 = +[GKDataRequestManager sharedManager];
  v6 = [v5 storeBag];
  v7 = [GKDataTransport transportWithBag:v6 clientProxy:self credential:v4];

  return v7;
}

- (id)credentialForPlayer:(id)a3
{
  v4 = a3;
  v5 = [v4 accountName];

  if (v5)
  {
    v6 = +[GKPlayerCredentialController sharedController];
    v7 = [v4 accountName];
    v8 = [v6 credentialForUsername:v7 environment:{-[GKClientProxy environment](self, "environment")}];
  }

  else
  {
    v9 = [v4 playerID];

    v6 = +[GKPlayerCredentialController sharedController];
    v10 = [(GKClientProxy *)self environment];
    if (v9)
    {
      [v6 credentialForPlayer:v4 environment:v10];
    }

    else
    {
      [v6 primaryCredentialForEnvironment:v10];
    }
    v8 = ;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(GKClientProxy *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 bundleIdentifier];
    v7 = [(GKClientProxy *)self bundleIdentifier];
    v8 = [v6 isEqual:v7];

    if (v8 && ([v5 bundleVersion], v9 = objc_claimAutoreleasedReturnValue(), -[GKClientProxy bundleVersion](self, "bundleVersion"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11))
    {
      v12 = [v5 bundleShortVersion];
      v13 = [(GKClientProxy *)self bundleShortVersion];
      v14 = [v12 isEqual:v13];
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
  v4 = [(GKClientProxy *)self adamID];
  if (v4)
  {
    v5 = v4;
    v6 = [(GKClientProxy *)self adamID];
    v7 = [v6 integerValue];

    if (v7 >= 1)
    {
      v8 = [(GKClientProxy *)self adamID];
      [v3 setObject:v8 forKey:@"adam-id"];
    }
  }

  v9 = [(GKClientProxy *)self externalVersion];

  if (v9)
  {
    v10 = [(GKClientProxy *)self externalVersion];
    [v3 setObject:v10 forKey:@"external-version"];
  }

  v11 = [(GKClientProxy *)self bundleIdentifier];

  if (v11)
  {
    v12 = [(GKClientProxy *)self bundleIdentifier];
    [v3 setObject:v12 forKey:@"bundle-id"];
  }

  v13 = [(GKClientProxy *)self parentBundleIdentifier];

  if (v13)
  {
    v14 = [(GKClientProxy *)self parentBundleIdentifier];
    [v3 setObject:v14 forKey:@"parent-bundle-id"];
  }

  v15 = [(GKClientProxy *)self bundleVersion];

  if (v15)
  {
    v16 = [(GKClientProxy *)self bundleVersion];
    [v3 setObject:v16 forKey:@"bundle-version"];
  }

  v17 = [(GKClientProxy *)self bundleShortVersion];

  if (v17)
  {
    v18 = [(GKClientProxy *)self bundleShortVersion];
    [v3 setObject:v18 forKey:@"short-bundle-version"];
  }

  v19 = [(GKClientProxy *)self bundleIdentifier];
  v20 = [GKGameDescriptor stringForPlatform:[GKApplicationWorkspace getPlatformForBundleID:v19]];
  [v3 setObject:v20 forKeyedSubscript:@"platform"];

  return v3;
}

- (int64_t)appSignatureType
{
  v3 = [(GKClientProxy *)self pid];
  v4 = [(GKClientProxy *)self connection];
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = [GKClientAppSigningStatus appSignatureType:v3 auditToken:v8];

  return v6;
}

- (BOOL)isDevSignedForBundleID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = +[GKDataRequestManager sharedManager];
  v5 = [v4 isDevSignedForBundleID:v3];

  return v5;
}

- (NSString)protocolVersion
{
  v2 = +[GKPreferences shared];
  [v2 useTestProtocols];
  v3 = GKGetProtocolVersionString();

  return v3;
}

- (void)setExtensionProxy:(id)a3 forBundleID:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    if (v10)
    {
      v7 = [(GKClientProxy *)self preferencesFromBag];

      if (v7)
      {
        v8 = [(GKClientProxy *)self preferencesFromBag];
        [v10 setPreferencesValues:v8];
      }

      v9 = [(GKClientProxy *)self extensionProxies];
      [v9 setObject:v10 forKey:v6];
    }

    else
    {
      v9 = [(GKClientProxy *)self extensionProxies];
      [v9 removeObjectForKey:v6];
    }
  }
}

- (void)updatePreferencesFromBag:(id)a3
{
  v4 = a3;
  [(GKClientProxy *)self setPreferencesFromBag:v4];
  [(GKClientProxy *)self setPreferencesValues:v4];
}

- (BOOL)notifyAboutScoreSubmissions
{
  v3 = +[GKPreferences shared];
  if ([v3 notifyAboutScoreSubmissions])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(GKClientProxy *)self isInDebugMode];
  }

  return v4;
}

- (void)deliverGameActivityAsInternal:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
  {
    sub_100291128();
  }

  [(GKClientProxy *)self deliverEncodedGameActivityInstance:v4];
}

- (void)deliverMostRecentPendingGameActivityInstance
{
  v3 = [(GKClientProxy *)self bundleIdentifier];
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
    v5 = [(GKClientProxy *)self daemonGameServices];
    v6 = [(GKClientProxy *)self bundleIdentifier];
    [v5 deliverMostRecentPendingGameActivityInstanceWithBundleID:v6];
  }
}

- (void)setLaunchEvent:(unint64_t)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [(GKClientProxy *)self launchEvent];
  if (!v7)
  {
    v7 = objc_alloc_init(GKEventTuple);
  }

  [(GKEventTuple *)v7 setEventType:a3];
  [(GKEventTuple *)v7 setContext:v6];

  [(GKClientProxy *)self setLaunchEvent:v7];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [(GKEventTuple *)v7 eventType];
    v12 = [(GKEventTuple *)v7 context];
    v13[0] = 67109634;
    v13[1] = v11;
    v14 = 2112;
    v15 = v12;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "New launch event(%d) context %@ for client %@", v13, 0x1Cu);
  }
}

- (BOOL)clientHasAnyPrivateEntitlement
{
  v3 = [(GKClientProxy *)self viewService];

  if (v3)
  {
    v4 = [(GKClientProxy *)self viewService];
  }

  else
  {
    v6 = [(GKClientProxy *)self extensionProxies];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(GKClientProxy *)self extensionProxies];
      v9 = [v8 objectEnumerator];
      v5 = [v9 nextObject];

      goto LABEL_6;
    }

    v4 = self;
  }

  v5 = v4;
LABEL_6:
  v10 = [v5 entitlements];
  v11 = [v10 hasAnyPrivateEntitlement];

  return v11;
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

- (void)performSync:(id)a3
{
  block = a3;
  v3 = [objc_opt_class() syncQueue];
  v4 = dispatch_get_current_queue();

  if (v4 == v3)
  {
    label = dispatch_queue_get_label(v3);
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s invoked on the same queue(%s), would deadlock at %@", "[GKClientProxy performSync:]", label, v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (dispatch_get_current_queue() != queue)\n[%s (%s:%d)]", v7, "-[GKClientProxy performSync:]", [v9 UTF8String], 661);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  dispatch_sync(v3, block);
}

- (void)performAsync:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() syncQueue];
  dispatch_async(v4, v3);
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

  v4 = [(GKClientProxy *)self currentMatchResponse];
  if ([v4 transitionToState:3])
  {
    v5 = [v4 sequence];
    v6 = [v4 matchingGroup];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100141FDC;
    v11[3] = &unk_1003682D0;
    v12 = v4;
    v13 = self;
    v15 = v5;
    v14 = v6;
    v7 = v6;
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

- (BOOL)processMatchResponse:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self currentMatchResponse];
  v6 = v5;
  if (!v5)
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

  if ([v5 isFinished])
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
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_44:
    v19 = 0;
    goto LABEL_45;
  }

  if (!v4)
  {
    goto LABEL_44;
  }

LABEL_15:
  v10 = [v4 objectForKey:@"rid"];
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
    v14 = [v6 serverRequest];
    v15 = [v14 mutableCopy];

    [v15 setObject:v10 forKey:@"rid"];
    [v6 setServerRequest:v15];
  }

  v16 = [v4 objectForKey:@"match-id"];
  v17 = [v4 objectForKeyedSubscript:@"status"];
  v18 = [v17 integerValue];

  v19 = v18 != 5067;
  if (v18 == 5067)
  {
    [v6 transitionToState:6];
  }

  else if (v16)
  {
    if ([v6 transitionToState:4])
    {
      [(GKClientProxy *)self cancelOutstandingCheckMatchStatus];
      v20 = [v4 objectForKey:@"matches"];
      [v6 setMatches:v20];

      v21 = [v4 objectForKeyedSubscript:@"match-id"];
      [v6 setMatchID:v21];

      v22 = [v4 objectForKey:@"rid"];
      [v6 setRid:v22];

      v23 = [v4 objectForKey:@"session-token"];
      [v6 setSessionToken:v23];

      v24 = [v4 objectForKey:@"ticket"];
      [v6 setCdxTicket:v24];

      v25 = GKSuggestedTransportVersionKey;
      v26 = [v4 objectForKeyedSubscript:GKSuggestedTransportVersionKey];

      if (v26)
      {
        v27 = [v4 objectForKeyedSubscript:v25];
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
        v31 = [v6 matches];
        *buf = 138412290;
        v60 = v31;
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
      v36 = [v35 playerInternal];
      v37 = [v36 playerID];
      v38 = [(GKClientProxy *)self transactionGroupWithName:v33 forPlayerID:v37];

      v39 = [v38 context];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100142D1C;
      v55[3] = &unk_1003610B8;
      v56 = v38;
      v57 = self;
      v40 = v38;
      [v39 performBlockAndWait:v55];

      v16 = v53;
      v10 = v54;
    }
  }

  else
  {
    v41 = [v4 objectForKey:@"poll-delay-ms"];
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
      v50 = [v6 matchingGroup];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_100142AEC;
      v58[3] = &unk_100361B40;
      v58[4] = self;
      v58[5] = v44;
      [v50 perform:v58];
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

- (void)setCheckMatchStatusTimer:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  v6 = [(GKClientProxy *)self checkMatchStatusQueue];

  if (v5 != v6)
  {
    label = dispatch_queue_get_label(v5);
    v8 = [(GKClientProxy *)self checkMatchStatusQueue];
    v9 = dispatch_queue_get_label(v8);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKClientProxy setCheckMatchStatusTimer:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.checkMatchStatusQueue)\n[%s (%s:%d)]", v11, "-[GKClientProxy setCheckMatchStatusTimer:]", [v13 UTF8String], 811);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  checkMatchStatusTimer = self->_checkMatchStatusTimer;
  if (checkMatchStatusTimer)
  {
    dispatch_source_cancel(checkMatchStatusTimer);
  }

  v16 = self->_checkMatchStatusTimer;
  self->_checkMatchStatusTimer = v4;
}

- (void)cancelOutstandingCheckMatchStatus
{
  v3 = [(GKClientProxy *)self checkMatchStatusQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100143018;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)cancelInvitationForSession:(id)a3 playerID:(id)a4 pushTokens:(id)a5 handler:(id)a6
{
  v31 = a3;
  v9 = a4;
  v10 = a5;
  v29 = a6;
  v11 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v10;
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
        v48[0] = v9;
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
  v46[0] = v31;
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
  v24 = [v19 storeBag];
  v25 = [v30 _gkPlistXMLDataForAppSession:v23];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100143460;
  v36[3] = &unk_1003682F8;
  v38 = v39;
  v26 = v20;
  v37 = v26;
  [v24 writeDataForBagKey:@"gk-invitation-cancel" postData:v25 client:self credential:v22 completion:v36];

  v27 = [(GKClientProxy *)self replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001434FC;
  block[3] = &unk_1003680A0;
  v34 = v29;
  v35 = v39;
  v28 = v29;
  dispatch_group_notify(v26, v27, block);

  _Block_object_dispose(v39, 8);
}

- (id)fetchOrCreateInviteSession
{
  v3 = [(GKClientProxy *)self inviteSession];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [(GKClientProxy *)self inviteSession];
      v8 = [(GKClientProxy *)self inviteSession];
      v9 = [v8 sessionToken];
      v19 = 134218242;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
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
      v13 = [(GKClientProxy *)self inviteSession];
      v14 = [(GKClientProxy *)self inviteSession];
      v15 = [v14 sessionToken];
      v16 = +[NSThread callStackSymbols];
      v19 = 134218498;
      v20 = v13;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Created a new GKInviteSession(%p), token: %@. Thread: %@", &v19, 0x20u);

      goto LABEL_10;
    }
  }

  v17 = [(GKClientProxy *)self inviteSession];

  return v17;
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
    v6 = [(GKClientProxy *)self inviteSession];
    v10 = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKClientProxy - deleteInviteSession, self.inviteSession: %p", &v10, 0xCu);
  }

  v7 = [(GKClientProxy *)self inviteSession];
  v8 = [v7 shareRecordID];

  if (v8)
  {
    v9 = +[GKCloudKitMultiplayerUtils privateDatabase];
    [GKCloudKitMultiplayer deleteInviteRecordWithRecordID:v8 fromDatabase:v9];
  }

  [(GKClientProxy *)self setInviteSession:0];
}

- (void)playerFound:(id)a3 deviceID:(id)a4 discoveryInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "PeerDiscovery player found: %@, deviceID: %@, discoveryInfo: %@", &v13, 0x20u);
  }

  [(GKClientProxy *)self nearbyPlayerFoundForPlayerID:v8 deviceID:v9 discoveryInfo:v10];
}

- (void)playerLost:(id)a3 deviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PeerDiscovery player lost: %@, deviceID: %@", &v10, 0x16u);
  }

  [(GKClientProxy *)self nearbyPlayerLostForPlayerID:v6 deviceID:v7];
}

- (void)receivedData:(id)a3 deviceID:(id)a4 data:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "PeerDiscovery data received from player: %@, deviceID: %@", &v13, 0x16u);
  }

  [(GKClientProxy *)self nearbyDataReceivedForPlayerID:v8 deviceID:v9 data:v10];
}

- (id)rootOrService
{
  v2 = [(GKClientProxy *)self daemonGameServices];
  v3 = [v2 rootOrService];

  return v3;
}

- (void)onChallengeUpdateReceivedWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self daemonGameServices];
  [v5 onChallengeUpdateReceivedWithUserInfo:v4];
}

- (void)onGameActivityOpenedWithPartyURL:(id)a3 creatorPlayerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKClientProxy *)self daemonGameServices];
  [v8 onGameActivityOpenedWithPartyURL:v7 creatorPlayerID:v6];
}

- (void)onGameActivityReceivedWithPartyURL:(id)a3 creatorPlayerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKClientProxy *)self daemonGameServices];
  [v8 onGameActivityReceivedWithPartyURL:v7 creatorPlayerID:v6];
}

- (void)onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:(id)a3 activityProperties:(id)a4 bundleID:(id)a5 referenceLeaderboardID:(id)a6 referenceAchievementDescriptionID:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(GKClientProxy *)self daemonGameServices];
  [v17 onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:v16 activityProperties:v15 bundleID:v14 referenceLeaderboardID:v13 referenceAchievementDescriptionID:v12];
}

- (void)onServerCacheInvalidationReceivedWithBagKey:(id)a3 playerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKClientProxy *)self daemonGameServices];
  [v8 onServerCacheInvalidationReceivedWithBagKey:v7 playerID:v6];
}

- (GKUIViewService)viewService
{
  WeakRetained = objc_loadWeakRetained(&self->_viewService);

  return WeakRetained;
}

+ (id)clientForProcessIdentifier:(int)a3
{
  v3 = *&a3;
  v5 = [NSBundle _gkBundleWithPID:?];
  v6 = [v5 bundleIdentifier];
  v7 = [a1 clientForBundleID:v6 bundle:v5 pid:v3 createIfNecessary:1 connectionEntitlements:0];

  return v7;
}

+ (BOOL)isExtensionBundleID:(id)a3
{
  v3 = qword_1003B92C0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1002913E0();
  }

  v5 = [qword_1003B92B8 containsObject:v4];

  return v5;
}

+ (id)clientForBundleID:(id)a3 bundle:(id)a4 pid:(int)a5 createIfNecessary:(BOOL)a6 connectionEntitlements:(id)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKClientProxy: clientForBundleID: %@, pid: %d", buf, 0x12u);
  }

  if (v12 || !v9)
  {
    if (v12)
    {
LABEL_13:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v33 = sub_100143448;
      v34 = sub_100143458;
      v35 = 0;
      v19 = [a1 factoryQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100144A94;
      v24[3] = &unk_1003683C8;
      v28 = buf;
      v29 = a1;
      v30 = v9;
      v25 = v12;
      v26 = v14;
      v31 = a6;
      v27 = v13;
      v20 = v12;
      dispatch_sync(v19, v24);

      v21 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_19;
    }
  }

  else
  {
    v12 = [NSBundle _gkBundleIdentifierOrProcessNameForPID:v9];
    if (v12)
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v12;
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

+ (id)clientForInviteSessionToken:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
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
  v7 = v4;
  v11 = v7;
  p_buf = &buf;
  [a1 enumerateClientsUsingBlock:v10];
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v8;
}

+ (id)clientForMatchmakingRID:(id)a3
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
  v4 = a3;
  v8 = v4;
  [a1 enumerateClientsUsingBlock:v7];
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
  v3 = [a1 factoryQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001460D8;
  v6[3] = &unk_100368490;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (void)enumerateClientsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [a1 clients];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014629C;
  v7[3] = &unk_1003684B8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

+ (void)removeClient:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 pid]);
    v9 = [v4 bundleIdentifier];
    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removing client from gamed. PID: %@, bundleID: %@", buf, 0x16u);
  }

  v10 = [v4 originalBundleIdentifier];
  if (v10 || ([v4 bundleIdentifier], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    [v4 setConnection:0];
    v12 = [a1 factoryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001464A0;
    block[3] = &unk_1003615B0;
    v17 = a1;
    v15 = v11;
    v16 = v4;
    v13 = v11;
    dispatch_async(v12, block);
  }
}

+ (BOOL)getDebugModeForBundleID:(id)a3
{
  v4 = a3;
  v5 = [a1 bundleIDsToBeInitializedInDebugMode];
  v6 = [v5 objectForKey:v4];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

+ (void)setDebugMode:(BOOL)a3 bundleID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [a1 bundleIDsToBeInitializedInDebugMode];
  v8 = v7;
  if (v4)
  {
    [v7 setObject:&__kCFBooleanTrue forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (id)serviceForClass:(Class)a3 transport:(id)a4 client:(id)a5 credential:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"Assertion failed"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    v15 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([serviceClass isSubclassOfClass:[GKService class]])\n[%s (%s:%d)]", v13, "-[GKClientProxy(GKDaemonProtocol) serviceForClass:transport:client:credential:]", [v15 UTF8String], 1412);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  v17 = [(GKClientProxy *)self entitlements];
  if ([v17 hasEntitlements:{-[objc_class requiredEntitlements](a3, "requiredEntitlements")}])
  {
    v18 = [(objc_class *)a3 serviceWithTransport:v10 forClient:v11 credential:v12];
  }

  else
  {
    v18 = 0;
  }

  if ([v18 requiresAuthentication] && (objc_msgSend(v17, "hasEntitlements:", &_mh_execute_header) & 1) == 0 && !-[GKClientProxy isUIService](self, "isUIService") && !-[GKClientProxy isExtension](self, "isExtension"))
  {
    v19 = [GKAuthenticationWrapperService authenticationWrapperForService:v18];

    v18 = v19;
  }

  return v18;
}

- (void)setHostPID:(int)a3 reply:(id)a4
{
  if (a4)
  {
    dispatch_async(self->_replyQueue, a4);
  }
}

- (void)messagesDidReceiveGameCenterURL:(id)a3 senderHandle:(id)a4 contactID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 absoluteString];
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v67 = v9;
      v68 = 2112;
      v69 = v10;
      v70 = 2112;
      v71 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Received URL from %@ (%@) : %@", buf, 0x20u);
    }

    if (!v11)
    {
      goto LABEL_35;
    }

    v53 = self;
    v57 = v11;
    v56 = [[NSURLComponents alloc] initWithURL:v8 resolvingAgainstBaseURL:0];
    v14 = [v56 queryItems];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (!v15)
    {
      goto LABEL_34;
    }

    v16 = v15;
    v54 = v9;
    v55 = v10;
    v17 = 0;
    v18 = *v62;
    v19 = GKFriendRequestURLZippedData;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v61 + 1) + 8 * i);
        v22 = [v21 name];
        v23 = [v22 isEqualToString:v19];

        if (v23)
        {
          v24 = v21;

          v17 = v24;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v16);
    v9 = v54;
    v10 = v55;
    if (!v17)
    {
LABEL_34:

      v11 = v57;
LABEL_35:

      goto LABEL_36;
    }

    v25 = [NSData alloc];
    v26 = [v17 value];
    v27 = [v25 initWithBase64EncodedString:v26 options:0];

    v28 = [v27 _gkZippedDictionaryValue];
    v29 = [v28 mutableCopy];

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
      v10 = v55;
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
        [(GKClientProxy *)v53 getAuthenticatedLocalPlayersWithStatus:1 handler:v58];
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

- (void)setTestGame:(id)a3 protocolVersion:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = v6;
  if (v6)
  {
    replyQueue = self->_replyQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001470F8;
    block[3] = &unk_100360FA0;
    v10 = v6;
    dispatch_async(replyQueue, block);
  }
}

- (void)getServicesWithTransport:(id)a3 forClient:(id)a4 reply:(id)a5
{
  v34 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v11 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v12 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v33 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v26 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v13 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v14 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v28 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v30 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v15 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];

  queue = [(GKClientProxy *)self replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001474C8;
  block[3] = &unk_100368550;
  v45 = v15;
  v46 = v34;
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
  v23 = v34;
  dispatch_async(queue, block);
}

- (void)getPrivateServicesWithTransport:(id)a3 forClient:(id)a4 reply:(id)a5
{
  v34 = a5;
  v8 = a4;
  v9 = a3;
  v33 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v10 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v11 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v12 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v32 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v13 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v14 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v25 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v27 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v29 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];
  v15 = [(GKClientProxy *)self serviceForClass:objc_opt_class() transport:v9 client:v8 credential:0];

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
  v47 = v34;
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
  v22 = v34;
  dispatch_async(queue, block);
}

- (void)getServicesForPID:(int)a3 localPlayer:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v26) = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKClientProxy: client requests services for pid %d", buf, 8u);
  }

  if (self->_pid != a3)
  {
    v12 = [NSString stringWithFormat:@"Assertion failed"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    v14 = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (pid == _pid)\n[%s (%s:%d)]", v12, "-[GKClientProxy(GKDaemonProtocol) getServicesForPID:localPlayer:reply:]", [v14 UTF8String], 1580);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  [(GKClientProxy *)self updateAppInitState];
  v16 = [(GKClientProxy *)self credentialForPlayer:v8];
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
    v23 = [v8 alias];
    v24 = [v8 accountName];
    *buf = 138412546;
    v26 = v23;
    v27 = 2112;
    v28 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "alloc services for %@:%@", buf, 0x16u);
  }

  [(GKClientProxy *)self getServicesWithTransport:v19 forClient:self reply:v9];
}

- (void)getPrivateServicesForPID:(int)a3 localPlayer:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v24) = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKClientProxy: client requests private services for pid %d", buf, 8u);
  }

  if (self->_pid != a3)
  {
    v12 = [NSString stringWithFormat:@"Assertion failed"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy.m"];
    v14 = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (pid == _pid)\n[%s (%s:%d)]", v12, "-[GKClientProxy(GKDaemonProtocol) getPrivateServicesForPID:localPlayer:reply:]", [v14 UTF8String], 1596);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  [(GKClientProxy *)self updateAppInitState];
  v16 = [(GKClientProxy *)self credentialForPlayer:v8];
  v17 = [(GKClientProxy *)self transportWithCredential:v16];
  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = [v8 alias];
    v22 = [v8 accountName];
    *buf = 138412546;
    v24 = v21;
    v25 = 2112;
    v26 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "alloc private services for %@:%@", buf, 0x16u);
  }

  [(GKClientProxy *)self getPrivateServicesWithTransport:v17 forClient:self reply:v9];
}

- (void)getAuthenticatedPlayerInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_100143448;
    v17[4] = sub_100143458;
    v18 = 0;
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1622, "[GKClientProxy(GKDaemonProtocol) getAuthenticatedPlayerInfo:]"];
    v6 = [GKDispatchGroup dispatchGroupWithName:v5];

    v7 = [(GKClientProxy *)self entitlements];
    v8 = [v7 hasEntitlements:0x10000];

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

    v9 = [(GKClientProxy *)self replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014821C;
    v11[3] = &unk_100360EB0;
    v13 = v4;
    v10 = v6;
    v12 = v10;
    [v10 notifyOnQueue:v9 block:v11];

    _Block_object_dispose(v17, 8);
  }
}

- (void)getAuthenticatedPlayerCredential:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_100143448;
    v17[4] = sub_100143458;
    v18 = 0;
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1655, "[GKClientProxy(GKDaemonProtocol) getAuthenticatedPlayerCredential:]"];
    v6 = [GKDispatchGroup dispatchGroupWithName:v5];

    v7 = [(GKClientProxy *)self entitlements];
    v8 = [v7 hasEntitlements:0x200000000];

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

    v9 = [(GKClientProxy *)self replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001485F8;
    v11[3] = &unk_100360EB0;
    v13 = v4;
    v10 = v6;
    v12 = v10;
    [v10 notifyOnQueue:v9 block:v11];

    _Block_object_dispose(v17, 8);
  }
}

- (void)localPlayerAgeCategoryWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[GKClientProxy gameCenterClient];
    v5 = [(GKService *)GKAccountServicePrivate serviceWithTransport:0 forClient:v4 localPlayer:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100148734;
    v6[3] = &unk_1003685C8;
    v7 = v3;
    [v5 localPlayerAgeCategoryWithCompletion:v6];
  }
}

- (void)getGamedFiredUpWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v19 = v4;
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
    v18 = [(GKClientProxy *)self replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100148F20;
    v20[3] = &unk_100360FA0;
    v5 = v19;
    v21 = v19;
    [v7 notifyOnQueue:v18 block:v20];
  }
}

- (void)getAuthenticatedLocalPlayersWithStatus:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = +[GKPlayerCredentialController sharedController];
  v8 = [(GKClientProxy *)self environment];
  v9 = [v7 allCredentialsForEnvironment:v8];
  v10 = [v7 primaryCredentialForEnvironment:v8];
  if (v10)
  {
    v11 = [(GKClientProxy *)self bundleIdentifier];
    v12 = [v11 isEqualToString:@"com.apple.gamecenter"];

    if ((v12 & 1) == 0)
    {
      v13 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1795, "[GKClientProxy(GKDaemonProtocol) getAuthenticatedLocalPlayersWithStatus:handler:]"];
      v14 = [v10 playerInternal];
      v15 = [v14 playerID];
      v16 = [(GKClientProxy *)self transactionGroupWithName:v13 forPlayerID:v15];
    }
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100149254;
  v29[3] = &unk_100368658;
  v17 = v10;
  v31 = self;
  v32 = a3;
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
  v28 = self;
  [v18 enumerateObjectsUsingBlock:v26];
  if (v6)
  {
    v22 = [(GKClientProxy *)self replyQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100149C1C;
    v23[3] = &unk_100360EB0;
    v25 = v6;
    v24 = v21;
    [v24 notifyOnQueue:v22 block:v23];
  }
}

- (void)getAccountNameWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 1945, "[GKClientProxy(GKDaemonProtocol) getAccountNameWithHandler:]"];
    v6 = [GKDispatchGroup dispatchGroupWithName:v5];

    v7 = [(GKClientProxy *)self entitlements];
    v8 = [v7 hasEntitlements:0x10000];

    if (v8)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100149E28;
      v14[3] = &unk_100361620;
      v15 = v6;
      [v15 perform:v14];
    }

    v9 = [(GKClientProxy *)self replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100149EC4;
    v11[3] = &unk_100360EB0;
    v12 = v6;
    v13 = v4;
    v10 = v6;
    [v10 notifyOnQueue:v9 block:v11];
  }
}

- (void)getAuthenticatedPlayerIDWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100149FC0;
    v6[3] = &unk_100361C68;
    v7 = v4;
    [(GKClientProxy *)self getAuthenticatedPlayerInfo:v6];
  }
}

- (void)localizedMessageFromDictionary:(id)a3 forBundleID:(id)a4 handler:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = [NSBundle _gkLocalizedMessageFromDictionary:a3 forBundleID:a4];
    v10 = [(GKClientProxy *)self replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10014A10C;
    v12[3] = &unk_100360EB0;
    v13 = v9;
    v14 = v8;
    v11 = v9;
    dispatch_async(v10, v12);
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
  v5 = [v4 signInVisibilityManager];
  [v5 reset];
}

- (void)handleCloudKitShareMetadata:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [GKActivity named:@"handleCloudKitShareMetadata"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014A2AC;
  v10[3] = &unk_100361270;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 execute:v10];
}

- (void)setDebugMode:(BOOL)a3 bundleID:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [(GKClientProxy *)self replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A3F0;
  block[3] = &unk_100360FA0;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2018, "[GKClientProxy(Authentication) sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:completionHandler:]"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014A53C;
  v11[3] = &unk_100360FC8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [GKActivity named:v8 execute:v11];
}

- (id)missingTransitionFromState:(id)a3 toState:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  return v6;
}

- (void)stateDidChange
{
  if (self->_pid && self->_bundleIdentifier)
  {
    v3 = objc_opt_class();
    v4 = [(_GKStateMachine *)self->_appInitStateMachine currentState];
    [v3 saveAppInitState:v4 forBundleID:self->_bundleIdentifier pid:self->_pid];
  }
}

- (id)verifyAuthorized
{
  v3 = +[GKPreferences shared];
  v4 = [v3 isGameCenterRestricted];

  if (v4)
  {
    v5 = 10;
LABEL_7:
    v9 = [NSError userErrorForCode:v5 underlyingError:0];
    goto LABEL_8;
  }

  v6 = +[GKPreferences shared];
  v7 = [v6 lockedDown];

  if (v7)
  {
    v5 = 36;
    goto LABEL_7;
  }

  v8 = [(GKClientProxy *)self appInitState];

  if (v8 != @"GKAppInitialized")
  {
    v5 = 6;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)lastKnownAppInitStateForClientWithBundleID:(id)a3 pid:(int)a4
{
  v5 = a3;
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
  v13 = a4;
  v11 = v5;
  v12 = &v14;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

+ (void)saveAppInitState:(id)a3 forBundleID:(id)a4 pid:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = GKSavedAuthentiactionStateQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014AD38;
  block[3] = &unk_100368758;
  v13 = v7;
  v14 = v8;
  v15 = a5;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)updateAppInitState
{
  if (self->_pid)
  {
    if (self->_bundleIdentifier)
    {
      v3 = [(_GKStateMachine *)self->_appInitStateMachine currentState];
      v4 = [v3 isEqualToString:@"GKAppInitUnknown"];

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

- (id)connectionProxyForUseCase:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014B3F8;
  v9[3] = &unk_100361108;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (void)metricsValuesChanged
{
  v2 = [(GKClientProxy *)self connectionProxyForUseCase:@"metricsValuesChanged"];
  [v2 metricsValuesChanged];
}

- (void)presentBannerWithNotification:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"presentBannerWithNotification"];
  [v5 presentBannerWithNotification:v4];
}

- (void)requestSandboxExtension:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"requestSandboxExtension"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014B5E0;
  v7[3] = &unk_100368780;
  v8 = v4;
  v6 = v4;
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

- (void)respondedToNearbyInvite:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"respondedToNearbyInvite"];
  [v5 respondedToNearbyInvite:v4];
}

- (void)friendRequestSelected:(id)a3
{
  v7 = a3;
  v4 = [(GKClientProxy *)self connectionProxyForUseCase:@"friendRequestSelected"];
  v5 = [(GKClientProxy *)self bundleIdentifier];
  v6 = [v5 isEqualToString:GKGameCenterIdentifier];

  if (v6)
  {
    [v4 friendRequestSelected:v7];
  }
}

- (void)deliverEncodedGameActivityInstance:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"deliverGameActivityWithInstance"];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
  {
    sub_100291830();
  }

  [v5 deliverEncodedGameActivityInstance:v4];
}

- (void)receivedChallengeSelected:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"receivedChallengeSelected"];
  [v5 receivedChallengeSelected:v4];
}

- (void)completedChallengeSelected:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"completedChallengeSelected"];
  [v5 completedChallengeSelected:v4];
}

- (void)challengeReceived:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"challengeReceived"];
  [v5 challengeReceived:v4];
}

- (void)challengeCompleted:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"challengeCompleted"];
  [v5 challengeCompleted:v4];
}

- (void)scoreSelected:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"scoreSelected"];
  [v5 scoreSelected:v4];
}

- (void)achievementSelected:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"achievement"];
  [v5 achievementSelected:v4];
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
  v3 = [(GKClientProxy *)self viewService];
  [v3 acceptMultiplayerGameInvite];

  v4 = [(GKClientProxy *)self extensionProxies];
  [v4 _gkEnumerateKeysAndObjectsUsingBlock:&stru_1003687C0];
}

- (void)acceptInviteWithNotification:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"acceptInviteWithNotification"];
  [v5 acceptInviteWithNotification:v4];
  v6 = [(GKClientProxy *)self viewService];
  [v6 acceptInviteWithNotification:v4];

  v7 = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014BCD0;
  v9[3] = &unk_1003687E8;
  v10 = v4;
  v8 = v4;
  [v7 _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)declineInviteWithNotification:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"declineInviteWithNotification"];
  [v5 declineInviteWithNotification:v4];
  v6 = [(GKClientProxy *)self viewService];
  [v6 declineInviteWithNotification:v4];

  v7 = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014BDD4;
  v9[3] = &unk_1003687E8;
  v10 = v4;
  v8 = v4;
  [v7 _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)updateInviteWithNotification:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_100368808];

  if (v6)
  {
    [v6 updateInviteWithNotification:v4];
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

- (void)cancelInviteWithNotification:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"cancelInviteWithNotification"];
  [v5 cancelInviteWithNotification:v4];
  v6 = [(GKClientProxy *)self viewService];
  [v6 cancelInviteWithNotification:v4];

  v7 = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014C008;
  v9[3] = &unk_1003687E8;
  v10 = v4;
  v8 = v4;
  [v7 _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)cancelGameInvite:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"cancelGameInvite"];
  [v5 cancelGameInvite:v4];
  v6 = [(GKClientProxy *)self viewService];
  [v6 cancelGameInvite:v4];

  v7 = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014C10C;
  v9[3] = &unk_1003687E8;
  v10 = v4;
  v8 = v4;
  [v7 _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)nearbyPlayerFoundForPlayerID:(id)a3 deviceID:(id)a4 discoveryInfo:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKClientProxy *)self connectionProxyForUseCase:@"nearbyPlayerFound"];
  [v11 nearbyPlayerFoundForPlayerID:v10 deviceID:v9 discoveryInfo:v8];
}

- (void)nearbyPlayerLostForPlayerID:(id)a3 deviceID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKClientProxy *)self connectionProxyForUseCase:@"nearbyPlayerLost"];
  [v8 nearbyPlayerLostForPlayerID:v7 deviceID:v6];
}

- (void)nearbyDataReceivedForPlayerID:(id)a3 deviceID:(id)a4 data:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKClientProxy *)self connectionProxyForUseCase:@"nearbyDataReceived"];
  [v11 nearbyDataReceivedForPlayerID:v10 deviceID:v9 data:v8];
}

- (void)relayPushNotification:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"relayPushNotification"];
  [v5 relayPushNotification:v4];
  v6 = [(GKClientProxy *)self viewService];
  [v6 relayPushNotification:v4];

  v7 = [(GKClientProxy *)self extensionProxies];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014C3C4;
  v9[3] = &unk_1003687E8;
  v10 = v4;
  v8 = v4;
  [v7 _gkEnumerateKeysAndObjectsUsingBlock:v9];
}

- (void)didConnectToParticipantWithID:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"didConnectToParticipantWithID"];
  [v5 didConnectToParticipantWithID:v4];
}

- (void)didDisconnectFromParticipantWithID:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connectionProxyForUseCase:@"didDisconnectFromParticipantWithID"];
  [v5 didDisconnectFromParticipantWithID:v4];
}

- (void)didReceiveData:(id)a3 reliably:(BOOL)a4 forRecipients:(id)a5 fromSender:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(GKClientProxy *)self connectionProxyForUseCase:@"didReceiveData"];
  [v13 didReceiveData:v12 reliably:v7 forRecipients:v11 fromSender:v10];
}

- (void)setBadgeCount:(unint64_t)a3 forType:(unint64_t)a4
{
  v6 = [(GKClientProxy *)self connectionProxyForUseCase:@"setBadgeCount:forType:"];
  [v6 setBadgeCount:a3 forType:a4];
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v6 = a4;
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
    [(GKRefreshData *)v7 setUserInfo:v6];
    v14 = [(GKClientProxy *)self pendingDataTypesForRefresh];
    objc_sync_enter(v14);
    v17 = [(GKClientProxy *)self pendingDataTypesForRefresh];
    [v17 addObject:v7];

    objc_sync_exit(v14);
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
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKRefreshContents - refreshing contents for dataType: %@ userInfo: %@", buf, 0x16u);
    }

    [(GKRefreshData *)v7 refreshContentsForDataType:v4 userInfo:v6];
    v12 = [(GKClientProxy *)self viewService];
    [v12 refreshContentsForDataType:v4 userInfo:v6];

    v13 = [(GKClientProxy *)self extensionProxies];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10014C89C;
    v18[3] = &unk_100368830;
    v20 = v4;
    v19 = v6;
    [v13 _gkEnumerateKeysAndObjectsUsingBlock:v18];

    v14 = v19;
  }
}

- (void)setPreferencesValues:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connection];
  v6 = [v5 remoteObjectProxy];

  [v6 setPreferencesValues:v4];
  v7 = [(GKClientProxy *)self viewService];
  [v7 setPreferencesValues:v4];

  v8 = [(GKClientProxy *)self extensionProxies];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014C9B0;
  v10[3] = &unk_1003687E8;
  v11 = v4;
  v9 = v4;
  [v8 _gkEnumerateKeysAndObjectsUsingBlock:v10];
}

- (void)getPreferenceForKey:(id)a3 handler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v9 = v5;
    v6 = CFPreferencesCopyAppValue(a3, GKGameCenterIdentifier);
    v7 = v9;
    if (v6)
    {
      v8 = [v6 BOOLValue];
      v7 = v9;
    }

    else
    {
      v8 = 0;
    }

    v7[2](v9, v8, v6 != 0);

    v5 = v9;
  }
}

- (void)setCurrentGame:(id)a3 serverEnvironment:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_group_create();
  v11 = [(GKClientProxy *)self bundleVersion];
  if (v11)
  {
    [v8 setBundleVersion:v11];
  }

  v12 = [(GKClientProxy *)self bundleShortVersion];
  if (v12)
  {
    [v8 setShortBundleVersion:v12];
  }

  [(GKClientProxy *)self setCurrentGame:v8];
  v13 = [(GKClientProxy *)self connection];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10014CD20;
  v28[3] = &unk_100361108;
  v14 = v10;
  v29 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v28];

  if (v15)
  {
    dispatch_group_enter(v14);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10014CDB0;
    v26[3] = &unk_100361770;
    v27 = v14;
    [v15 setCurrentGame:v8 serverEnvironment:a4 reply:v26];
  }

  v16 = [(GKClientProxy *)self viewService];
  v17 = v16;
  if (v16)
  {
    [v16 setCurrentGame:v8 serverEnvironment:a4 reply:&stru_100368850];
  }

  v18 = [(GKClientProxy *)self extensionProxies];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10014CDBC;
  v23[3] = &unk_100368898;
  v19 = v8;
  v24 = v19;
  v25 = a4;
  [v18 _gkEnumerateKeysAndObjectsUsingBlock:v23];

  if (v9)
  {
    replyQueue = self->_replyQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10014CDD8;
    v21[3] = &unk_100360FA0;
    v22 = v9;
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
    v5 = [(GKClientProxy *)self bundleIdentifier];
    [(GKGameInternal *)v3 setBundleIdentifier:v5];

    v6 = [(GKClientProxy *)self bundleVersion];
    [(GKGameInternal *)v3 setBundleVersion:v6];

    v7 = [(GKClientProxy *)self bundleShortVersion];
    [(GKGameInternal *)v3 setShortBundleVersion:v7];

    v8 = [(GKClientProxy *)self bundleIdentifier];
    [(GKGameInternal *)v3 setName:v8];

    v9 = [(GKClientProxy *)self bundleIdentifier];
    if (v9)
    {
      v10 = [(GKClientProxy *)self bundleIdentifier];
      [(GKGameInternal *)v3 setPlatform:[GKApplicationWorkspace getPlatformForBundleID:v10]];
    }

    else
    {
      [(GKGameInternal *)v3 setPlatform:+[GKGameDescriptor currentPlatform]];
    }
  }

  return v3;
}

- (void)authenticatedPlayersDidChange:(id)a3 authenticatingBundleID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2575, "[GKClientProxy(GKClientInterface) authenticatedPlayersDidChange:authenticatingBundleID:reply:]"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10014D064;
  v15[3] = &unk_100360F78;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [GKActivity named:v11 execute:v15];
}

- (id)appTerminateRequestWithBackgroundFlag:(BOOL)a3
{
  v9[0] = @"background";
  v3 = [NSNumber numberWithBool:a3];
  v10[0] = v3;
  v9[1] = @"timestamp";
  v4 = +[NSDate _gkServerTimestamp];
  v10[1] = v4;
  v9[2] = @"udid";
  v5 = +[GKDevice currentDevice];
  v6 = [v5 udid];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (void)terminateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2621, "[GKClientProxy(GKClientInterface) terminateWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  if ([(GKClientProxy *)self initialized])
  {
    v7 = [(GKClientProxy *)self appTerminateRequestWithBackgroundFlag:0];
    v8 = [(GKThreadsafeDictionary *)self->_appSessions dictionaryCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10014D740;
    v14[3] = &unk_100368950;
    v15 = v6;
    v16 = self;
    v17 = v7;
    v9 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
  }

  if (v4)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014DA70;
    v11[3] = &unk_100360EB0;
    v13 = v4;
    v12 = v6;
    [v12 notifyOnQueue:v10 block:v11];
  }
}

- (void)backgroundWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKClientProxy.m", 2654, "[GKClientProxy(GKClientInterface) backgroundWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  if ([(GKClientProxy *)self initialized])
  {
    v7 = [(GKClientProxy *)self appTerminateRequestWithBackgroundFlag:1];
    v8 = [(GKThreadsafeDictionary *)self->_appSessions dictionaryCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10014DCBC;
    v14[3] = &unk_100368950;
    v15 = v6;
    v16 = self;
    v17 = v7;
    v9 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
  }

  if (v4)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014DFEC;
    v11[3] = &unk_100360EB0;
    v13 = v4;
    v12 = v6;
    [v12 notifyOnQueue:v10 block:v11];
  }
}

- (void)addAppSession:(id)a3 forCredential:(id)a4
{
  if (a3)
  {
    appSessions = self->_appSessions;
    v11[0] = a3;
    v11[1] = a4;
    v6 = a4;
    v7 = a3;
    v8 = [NSArray arrayWithObjects:v11 count:2];
    v9 = [v6 playerInternal];
    v10 = [v9 playerID];
    [(GKThreadsafeDictionary *)appSessions setObject:v8 forKey:v10];
  }
}

- (id)appSessionForPlayer:(id)a3
{
  appSessions = self->_appSessions;
  v4 = [a3 playerID];
  v5 = [(GKThreadsafeDictionary *)appSessions objectForKey:v4];

  v6 = [v5 firstObject];

  return v6;
}

- (id)appSessionForCredential:(id)a3
{
  v4 = [a3 playerInternal];
  v5 = [(GKClientProxy *)self appSessionForPlayer:v4];

  return v5;
}

- (void)initializeWithCredential:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = [v12 udid];
  v29[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10014E4E0;
  v24[3] = &unk_100361F90;
  v24[4] = self;
  v15 = v9;
  v25 = v15;
  v26 = v6;
  v27 = v14;
  v16 = v14;
  v17 = v6;
  [v15 perform:v24];
  v18 = dispatch_get_global_queue(0, 0);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10014E9EC;
  v21[3] = &unk_100361068;
  v22 = v15;
  v23 = v7;
  v21[4] = self;
  v19 = v15;
  v20 = v7;
  [v19 notifyOnQueue:v18 block:v21];
}

- (void)bgInitializeWithCredential:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = v6;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v9;
  v22 = v14;
  [v14 perform:v19];
  if (v7)
  {
    v15 = dispatch_get_global_queue(0, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10014EE6C;
    v16[3] = &unk_100360EB0;
    v18 = v7;
    v17 = v14;
    [v17 notifyOnQueue:v15 block:v16];
  }
}

+ (id)storeAndForwardDirectoryPathForEnvironment:(int64_t)a3
{
  v4 = GKSupportDataRoot();
  v5 = v4;
  if (a3 == 5)
  {
    v6 = [v4 stringByAppendingPathComponent:@"DelayedRequests"];
  }

  else
  {
    v7 = [GKPreferences displayNameForEnvironment:a3];
    v8 = [NSString stringWithFormat:@"DelayedRequests-%@", v7];
    v6 = [v5 stringByAppendingPathComponent:v8];

    v5 = v7;
  }

  return v6;
}

- (id)storeAndForwardDirectoryPathForEnvironment:(int64_t)a3
{
  v4 = [objc_opt_class() storeAndForwardDirectoryPathForEnvironment:a3];
  v5 = [v4 stringByAppendingPathComponent:self->_bundleIdentifier];

  return v5;
}

- (id)requestsCacheForEnvironment:(int64_t)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(GKClientProxy *)self storeAndForwardDirectoryPathForEnvironment:a3];
  [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
  v7 = [GKPreferences displayNameForEnvironment:a3];
  v8 = [NSString stringWithFormat:@"%@.delayedRequests", v7];
  v9 = [v6 stringByAppendingPathComponent:v8];

  LOBYTE(v8) = [v5 fileExistsAtPath:v9];
  v10 = [GKDatabaseConnection connectionWithDatabasePath:v9];
  if ((v8 & 1) == 0)
  {
    v11 = [@"delayed_requests.schema" stringByDeletingPathExtension];
    v12 = [@"delayed_requests.schema" pathExtension];
    v13 = GKGameCenterFoundationBundle();
    v14 = [v13 pathForResource:v11 ofType:v12];

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
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _delayedRequestsQueue)\n[%s (%s:%d)]", v9, "-[GKClientProxy(DelayedRequests) _setupDelayedRequestsWriters]", [v11 UTF8String], 2886);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  if (!self->_delayedRequestsDBConnection)
  {
    v13 = [(GKClientProxy *)self requestsCacheForEnvironment:[(GKClientProxy *)self environment]];
    [(GKClientProxy *)self setDelayedRequestsDBConnection:v13];
  }

  v14 = [(GKClientProxy *)self delayedRequestsDBConnection];
  [v14 checkAndOpenDatabase];
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
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _delayedRequestsQueue)\n[%s (%s:%d)]", v9, "-[GKClientProxy(DelayedRequests) _removeDelayedRequestStore]", [v11 UTF8String], 2899);

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

- (id)_delayedRequestWriterWithCacheWriterClass:(Class)a3 cacheReaderClass:(Class)a4 networkWriterClass:(Class)a5 bagKey:(id)a6 batchSubmissionInterval:(int64_t)a7 credential:(id)a8
{
  v14 = a6;
  v15 = a8;
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
  v25 = a3;
  v26 = a4;
  v21[4] = self;
  v22 = v15;
  v23 = v14;
  v24 = &v29;
  v27 = a5;
  v28 = a7;
  v17 = v14;
  v18 = v15;
  dispatch_sync(delayedRequestsQueue, v21);
  v19 = v30[5];

  _Block_object_dispose(&v29, 8);

  return v19;
}

- (id)setPlayerStatusWriterWithCredential:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [(GKClientProxy *)self _delayedRequestWriterWithCacheWriterClass:v5 cacheReaderClass:v6 networkWriterClass:objc_opt_class() bagKey:@"gk-set-player-status" batchSubmissionInterval:0 credential:v4];

  return v7;
}

- (id)setPlayerPhotoWriterWithCredential:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [(GKClientProxy *)self _delayedRequestWriterWithCacheWriterClass:v5 cacheReaderClass:v6 networkWriterClass:objc_opt_class() bagKey:@"gk-get-image-upload-url" batchSubmissionInterval:0 credential:v4];

  return v7;
}

- (id)deletePlayerPhotoWriterWithCredential:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [(GKClientProxy *)self _delayedRequestWriterWithCacheWriterClass:v5 cacheReaderClass:v6 networkWriterClass:objc_opt_class() bagKey:@"gk-delete-profile-image" batchSubmissionInterval:0 credential:v4];

  return v7;
}

- (id)removeGameWriterWithCredential:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [(GKClientProxy *)self _delayedRequestWriterWithCacheWriterClass:v5 cacheReaderClass:v6 networkWriterClass:objc_opt_class() bagKey:@"gk-remove-game" batchSubmissionInterval:0 credential:v4];

  return v7;
}

+ (void)performDelayedRequestsForEnvironment:(int64_t)a3
{
  if (GKAtomicCompareAndSwap32Barrier())
  {
    v5 = [a1 cacheFileQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014FDB4;
    block[3] = &unk_100368998;
    block[4] = a3;
    dispatch_async(v5, block);
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

- (void)performDelayedRequestsForEnvironment:(int64_t)a3
{
  v5 = +[GKPlayerCredentialController sharedController];
  v6 = [v5 allCredentialsForEnvironment:a3];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015007C;
  v7[3] = &unk_1003689C0;
  v7[4] = self;
  [v6 enumerateObjectsUsingBlock:v7];
}

- (void)performDelayedRequestsForCredential:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(9, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100150140;
  v7[3] = &unk_1003610B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

+ (id)contextKeyForPlayerID:(id)a3
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return @"<global>";
  }
}

+ (id)_existingManagedObjectContextForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() contextKeyForPlayerID:v3];

  v5 = [qword_1003B92E0 objectForKey:v4];

  return v5;
}

- (id)managedObjectContextForPlayerID:(id)a3
{
  v4 = a3;
  if (qword_1003B92E8 != -1)
  {
    sub_100291C5C();
  }

  v5 = [objc_opt_class() contextKeyForPlayerID:v4];
  v6 = qword_1003B92E0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100150E28;
  v10[3] = &unk_100368A80;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  v8 = [v6 objectForKey:v5 objectProducerBlock:v10];

  return v8;
}

- (id)transactionGroupWithName:(id)a3 forPlayerID:(id)a4
{
  v6 = a3;
  v7 = [(GKClientProxy *)self managedObjectContextForPlayerID:a4];
  v8 = [GKCacheTransactionGroup transactionGroupWithName:v6 context:v7 client:self];

  return v8;
}

- (id)transactionGroupIfCacheExistsForPlayerID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _existingManagedObjectContextForPlayerID:v4];

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

+ (id)cacheDirectoryForBundleID:(id)a3
{
  v3 = a3;
  v4 = GKInsecureCacheRoot();
  v5 = [v4 stringByAppendingPathComponent:@"Data"];

  if (v3)
  {
    v6 = [v5 stringByAppendingPathComponent:v3];

    v5 = v6;
  }

  return v5;
}

+ (id)insecureDatabaseDirectoryURLForBundleID:(id)a3 language:(id)a4 playerID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 cacheDirectoryForBundleID:a3];
  v11 = @"global";
  if (v8)
  {
    v11 = v8;
  }

  v12 = [NSString stringWithFormat:@"%@-%@.gcdata", v9, v11];

  v13 = [v10 stringByAppendingPathComponent:v12];

  v14 = [NSURL fileURLWithPath:v13 isDirectory:1];

  return v14;
}

+ (id)insecureDatabaseFileURLForBundleID:(id)a3 language:(id)a4 playerID:(id)a5 name:(id)a6
{
  v10 = a6;
  v11 = [a1 insecureDatabaseDirectoryURLForBundleID:a3 language:a4 playerID:a5];
  v12 = [v11 URLByAppendingPathComponent:v10 isDirectory:0];

  return v12;
}

+ (void)removeCacheForPlayerID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 contextKeyForPlayerID:v6];
  v9 = [a1 cacheFileQueue];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKClientProxy+Cache.m", 145, "+[GKClientProxy(Cache) removeCacheForPlayerID:completion:]");
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1001515E4;
  v34[3] = &unk_100361FB8;
  v12 = v6;
  v35 = v12;
  v37 = a1;
  v13 = v8;
  v36 = v13;
  [v11 performOnQueue:v9 block:v34];
  v14 = [a1 gameCenterClient];
  v15 = +[NSFileManager defaultManager];
  if (v14)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10015168C;
    v31[3] = &unk_100360FF0;
    v32 = v14;
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
  v29 = v14;
  v30 = v9;
  v17 = v9;
  v18 = v14;
  v19 = v12;
  [v11 perform:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100151A4C;
  v25[3] = &unk_100361620;
  v26 = v15;
  v20 = v15;
  [v11 performOnQueue:v17 block:v25];
  v21 = [v18 taskQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100151B68;
  v23[3] = &unk_100360FA0;
  v24 = v7;
  v22 = v7;
  [v11 notifyOnQueue:v21 block:v23];
}

+ (void)removeAllCachesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [qword_1003B92E0 dictionaryCopy];
  v6 = qword_1003B92E0;
  v7 = [v5 allKeys];
  [v6 removeObjectsForKeys:v7];

  v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v9 = [v8 entityCacheProvider];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100151C94;
  v12[3] = &unk_1003638C8;
  v14 = v4;
  v15 = a1;
  v13 = v5;
  v10 = v4;
  v11 = v5;
  [v9 deleteAllCachesWithCompletionHandler:v12];
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

+ (void)migrateInsecureDatabaseToSecureDatabaseURL:(id)a3 usingPersistantStoreCoordinator:(id)a4 fileManager:(id)a5 options:(id)a6 playerID:(id)a7 bundleID:(id)a8 language:(id)a9 name:(id)a10
{
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [a1 insecureDatabaseFileURLForBundleID:v16 language:a9 playerID:a7 name:a10];
  v22 = [[GKDatabaseMigrator alloc] initWithOldDatabaseURL:v21 newDatabaseURL:v20 persistentStoreCoordinator:v19 options:v17];

  [(GKDatabaseMigrator *)v22 migrate];
  v25 = 0;
  [GKDatabaseMigrator removeInsecureOldDatabaseFoldersWithFileManager:v18 oldDatabaseURL:v21 bundleID:v16 error:&v25];

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

+ (void)migrateSecurityApplicationGroupDatabaseToSecureDatabaseURL:(id)a3 usingPersistantStoreCoordinator:(id)a4 fileManager:(id)a5 options:(id)a6 playerID:(id)a7 bundleID:(id)a8 language:(id)a9 name:(id)a10
{
  v15 = a3;
  v32 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [GKSecureFileLocator securityApplicationGroupLocatorWithFileManager:v16];
  if (v22)
  {
    v30 = v17;
    v31 = v15;
    v29 = v20;
    if ([v18 length])
    {
      [v22 databaseFileWithBundleID:v19 language:v20 contextID:v18 name:v21 createDirectory:0];
    }

    else
    {
      [v22 globalDatabaseFileWithBundleID:v19 language:v20 name:v21 createDirectory:0];
    }
    v23 = ;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001525D4;
    v33[3] = &unk_100361F68;
    v24 = v16;
    v34 = v24;
    v25 = v23;
    v35 = v25;
    v36 = v19;
    v26 = objc_retainBlock(v33);
    v27 = [v31 path];
    LODWORD(v24) = [v24 fileExistsAtPath:v27];

    if (v24)
    {
      (v26[2])(v26);
      v17 = v30;
    }

    else
    {
      v17 = v30;
      v28 = [[GKDatabaseMigrator alloc] initWithOldDatabaseURL:v25 newDatabaseURL:v31 persistentStoreCoordinator:v32 options:v30];
      [(GKDatabaseMigrator *)v28 migrate];
      (v26[2])(v26);
    }

    v15 = v31;
    v20 = v29;
  }
}

+ (id)_newManagedObjectContextWithCacheURL:(id)a3 environment:(int64_t)a4 psc:(id)a5 storeOptions:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = dispatch_get_current_queue();
  v14 = [a1 cacheFileQueue];

  if (v13 != v14)
  {
    label = dispatch_queue_get_label(v13);
    v16 = [a1 cacheFileQueue];
    v17 = dispatch_queue_get_label(v16);
    +[NSThread callStackSymbols];
    v18 = v38 = a4;
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s invoked on the wrong queue (got:%s expected:%s) at %@", "+[GKClientProxy(Cache) _newManagedObjectContextWithCacheURL:environment:psc:storeOptions:]", label, v17, v18);
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKClientProxy+Cache.m"];
    v21 = [v20 lastPathComponent];
    v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == [self cacheFileQueue])\n[%s (%s:%d)]", v19, "+[GKClientProxy(Cache) _newManagedObjectContextWithCacheURL:environment:psc:storeOptions:]", [v21 UTF8String], 396);

    a4 = v38;
    [NSException raise:@"GameKit Exception" format:@"%@", v22];
  }

  v23 = +[NSFileManager defaultManager];
  v24 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  v25 = +[GKPlayerCredentialController sharedController];
  v26 = [v25 primaryCredentialForEnvironment:a4];
  v27 = [v26 playerInternal];
  v28 = [v27 playerID];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100152960;
  v39[3] = &unk_100361F40;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v43 = v23;
  v29 = v24;
  v44 = v29;
  v45 = v28;
  v30 = v28;
  v31 = v23;
  v32 = v12;
  v33 = v11;
  v34 = v10;
  [v29 performBlockAndWait:v39];
  v35 = v45;
  v36 = v29;

  return v36;
}

+ (id)newManagedObjectContextForPlayerID:(id)a3 bundleID:(id)a4 language:(id)a5 environment:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100152E4C;
  v30 = sub_100152E5C;
  v31 = 0;
  v13 = [a1 cacheFileQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100152E64;
  v19[3] = &unk_100368B08;
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v23 = &v26;
  v24 = a1;
  v25 = a6;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_sync(v13, v19);

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

+ (id)cacheDatabaseURLForBundleID:(id)a3 playerID:(id)a4 language:(id)a5 name:(id)a6 fileManager:(id)a7
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = +[GKSecureFileLocator shared];
  if ([v10 length])
  {
    [v14 databaseFileWithBundleID:v13 language:v12 contextID:v10 name:v11 createDirectory:1];
  }

  else
  {
    [v14 globalDatabaseFileWithBundleID:v13 language:v12 name:v11 createDirectory:1];
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

+ (void)closeDatabaseFromManagedObjectContextForPlayerID:(id)a3
{
  v4 = [a1 _existingManagedObjectContextForPlayerID:a3];
  [a1 closeDatabaseFromManagedObjectContextForMOC:v4];
}

+ (void)closeDatabaseFromManagedObjectContextForMOC:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001532B4;
  v4[3] = &unk_100361770;
  v5 = a3;
  v3 = v5;
  [v3 performBlockAndWait:v4];
}

- (id)parsedBundleIDFromPartyURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
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