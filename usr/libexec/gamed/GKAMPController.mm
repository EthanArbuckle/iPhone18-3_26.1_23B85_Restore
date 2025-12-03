@interface GKAMPController
+ (id)computeMetadataWithLocalPlayer:(id)player;
+ (id)controller;
- (BOOL)isSetup;
- (GKAMPController)initWithHasAcknowledgedLatestGDPRBlock:(id)block bagChanged:(id)changed;
- (NSDictionary)metadata;
- (void)createBagIfNecessary;
- (void)getBagWithCompletion:(id)completion;
- (void)reportFriendInviteActivityEventAtStage:(unint64_t)stage hostApp:(id)app;
- (void)reportGamesMappingEventWithGamesUserId:(id)id gameCenterUserId:(id)userId actionType:(id)type hostAppBundleId:(id)bundleId additionalFields:(id)fields;
- (void)reportLoadUrlMetricsEventWithMetricsFields:(id)fields;
- (void)reportMetricsEventWithTopic:(id)topic hostAppBundleId:(id)id shouldFlush:(id)flush metricsFields:(id)fields;
- (void)reportMultiplayerActivityEventWithHostAppBundleId:(id)id metricsFields:(id)fields;
- (void)reportURLSessionEventWithTask:(id)task metrics:(id)metrics;
- (void)setupAsyncWithStoreBag:(id)bag withCompletion:(id)completion;
- (void)setupMetricsIfNecessary;
- (void)tearDown;
- (void)updateMetadataWithLocalPlayer:(id)player;
@end

@implementation GKAMPController

+ (id)controller
{
  if (qword_1003B93F0 != -1)
  {
    sub_1002938FC();
  }

  v3 = qword_1003B93E8;

  return v3;
}

- (GKAMPController)initWithHasAcknowledgedLatestGDPRBlock:(id)block bagChanged:(id)changed
{
  blockCopy = block;
  changedCopy = changed;
  v23.receiver = self;
  v23.super_class = GKAMPController;
  v8 = [(GKAMPController *)&v23 init];
  if (v8)
  {
    v9 = objc_retainBlock(blockCopy);
    hasAcknowledgedLatestGDPRBlock = v8->_hasAcknowledgedLatestGDPRBlock;
    v8->_hasAcknowledgedLatestGDPRBlock = v9;

    v11 = objc_retainBlock(changedCopy);
    bagChanged = v8->_bagChanged;
    v8->_bagChanged = v11;

    playerMetadata = v8->_playerMetadata;
    v8->_playerMetadata = &off_100383258;

    v24[0] = @"hardwareModel";
    v14 = +[GKDevice currentDevice];
    deviceType = [v14 deviceType];
    v24[1] = @"osBuildNumber";
    v25[0] = deviceType;
    v16 = +[GKDevice currentDevice];
    buildVersion = [v16 buildVersion];
    v25[1] = buildVersion;
    v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    systemMetadata = v8->_systemMetadata;
    v8->_systemMetadata = v18;

    v20 = dispatch_queue_create("com.apple.GameKit.ampController.serialQueue", 0);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v20;
  }

  return v8;
}

- (void)getBagWithCompletion:(id)completion
{
  completionCopy = completion;
  serialQueue = [(GKAMPController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016A894;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, v7);
}

- (void)createBagIfNecessary
{
  v3 = dispatch_get_current_queue();
  serialQueue = [(GKAMPController *)self serialQueue];

  if (v3 != serialQueue)
  {
    label = dispatch_queue_get_label(v3);
    serialQueue2 = [(GKAMPController *)self serialQueue];
    v7 = dispatch_queue_get_label(serialQueue2);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKAMPController createBagIfNecessary]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/AMP/GKAMPController.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKAMPController createBagIfNecessary]", [lastPathComponent UTF8String], 102);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = [(GKAMPController *)self bag];

  if (!v13)
  {
    v14 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
      v14 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Creating bag", buf, 2u);
    }

    v16 = [AMSBag bagForProfile:@"GameCenterD" profileVersion:@"1"];
    [(GKAMPController *)self setBag:v16];

    bagChanged = [(GKAMPController *)self bagChanged];
    bagChanged[2]();
  }
}

- (void)setupMetricsIfNecessary
{
  v3 = dispatch_get_current_queue();
  serialQueue = [(GKAMPController *)self serialQueue];

  if (v3 != serialQueue)
  {
    label = dispatch_queue_get_label(v3);
    serialQueue2 = [(GKAMPController *)self serialQueue];
    v7 = dispatch_queue_get_label(serialQueue2);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKAMPController setupMetricsIfNecessary]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/AMP/GKAMPController.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKAMPController setupMetricsIfNecessary]", [lastPathComponent UTF8String], 114);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  if (![(GKAMPController *)self isSetup])
  {
    [(GKAMPController *)self createBagIfNecessary];
    v13 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
      v13 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Setting up metrics", buf, 2u);
    }

    v15 = objc_alloc_init(GKNetworkConnectionTypeProvider);
    [(GKAMPController *)self setNetworkConnectionTypeProvider:v15];

    v16 = objc_alloc_init(GKPlayerInternalProvider);
    v17 = [_TtC14GameDaemonCore17GKMetricsPipeline alloc];
    v18 = [(GKAMPController *)self bag];
    localPlayer = [(GKPlayerInternalProvider *)v16 localPlayer];
    playerID = [localPlayer playerID];
    localPlayer2 = [(GKPlayerInternalProvider *)v16 localPlayer];
    v22 = -[GKMetricsPipeline initWithBag:localPlayerId:isUnderage:](v17, "initWithBag:localPlayerId:isUnderage:", v18, playerID, [localPlayer2 ageCategory] == 3);
    [(GKAMPController *)self setMetricsPipeline:v22];

    v23 = [AMSMetrics alloc];
    v24 = [(GKAMPController *)self bag];
    v25 = [v23 initWithContainerID:@"com.apple.game-center-client" bag:v24];
    [(GKAMPController *)self setMetrics:v25];

    metrics = [(GKAMPController *)self metrics];
    [metrics setFlushTimerEnabled:1];
  }
}

- (void)setupAsyncWithStoreBag:(id)bag withCompletion:(id)completion
{
  bagCopy = bag;
  completionCopy = completion;
  serialQueue = [(GKAMPController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016AFC8;
  block[3] = &unk_100360FC8;
  block[4] = self;
  v12 = bagCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = bagCopy;
  dispatch_async(serialQueue, block);
}

- (void)updateMetadataWithLocalPlayer:(id)player
{
  playerCopy = player;
  serialQueue = [(GKAMPController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016B134;
  v7[3] = &unk_1003610B8;
  v7[4] = self;
  v8 = playerCopy;
  v6 = playerCopy;
  dispatch_async(serialQueue, v7);
}

+ (id)computeMetadataWithLocalPlayer:(id)player
{
  playerCopy = player;
  if (playerCopy)
  {
    v4 = [[GKMetricsIntBucketer alloc] initWithBuckets:&off_100383478];
    v5 = [[GKMetricsIntBucketer alloc] initWithBuckets:&off_100383490];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = @"needsAuthentication";
      v7 = @"false";
    }

    else
    {
      isArcadeSubscriber = [playerCopy isArcadeSubscriber];
      v10 = @"notSubscribed";
      if (isArcadeSubscriber)
      {
        v10 = @"subscribed";
      }

      v6 = v10;
      v7 = @"true";
    }

    v14[0] = @"friendCount";
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[GKMetricsIntBucketer clamp:](v4, "clamp:", [playerCopy numberOfFriends]));
    v15[0] = v11;
    v14[1] = @"gameCount";
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[GKMetricsIntBucketer clamp:](v5, "clamp:", [playerCopy numberOfGames]));
    v15[1] = v12;
    v15[2] = v7;
    v14[2] = @"isSignedIn";
    v14[3] = @"subscriptionStatus";
    v15[3] = v6;
    v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  }

  else
  {
    v8 = &off_100383280;
  }

  return v8;
}

- (NSDictionary)metadata
{
  systemMetadata = [(GKAMPController *)self systemMetadata];
  v4 = [NSMutableDictionary dictionaryWithDictionary:systemMetadata];

  playerMetadata = [(GKAMPController *)self playerMetadata];
  [v4 addEntriesFromDictionary:playerMetadata];

  networkConnectionTypeProvider = [(GKAMPController *)self networkConnectionTypeProvider];
  connectionType = [networkConnectionTypeProvider connectionType];

  if (connectionType)
  {
    [v4 setObject:connectionType forKeyedSubscript:@"connectionType"];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)tearDown
{
  v3 = dispatch_get_current_queue();
  serialQueue = [(GKAMPController *)self serialQueue];

  if (v3 != serialQueue)
  {
    label = dispatch_queue_get_label(v3);
    serialQueue2 = [(GKAMPController *)self serialQueue];
    v7 = dispatch_queue_get_label(serialQueue2);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKAMPController tearDown]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/AMP/GKAMPController.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKAMPController tearDown]", [lastPathComponent UTF8String], 206);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  if ([(GKAMPController *)self isSetup])
  {
    v13 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
      v13 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Tearing down metrics", buf, 2u);
    }

    [(GKAMPController *)self setMetricsPipeline:0];
    [(GKAMPController *)self setMetrics:0];
  }
}

- (BOOL)isSetup
{
  metricsPipeline = [(GKAMPController *)self metricsPipeline];
  if (metricsPipeline)
  {
    metrics = [(GKAMPController *)self metrics];
    v5 = metrics != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reportMetricsEventWithTopic:(id)topic hostAppBundleId:(id)id shouldFlush:(id)flush metricsFields:(id)fields
{
  topicCopy = topic;
  idCopy = id;
  flushCopy = flush;
  fieldsCopy = fields;
  v14 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
    v14 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Metrics event added to queue", v17, 2u);
  }

  metricsPipeline = [(GKAMPController *)self metricsPipeline];
  [metricsPipeline processEventWithTopic:topicCopy shouldFlush:objc_msgSend(flushCopy metricsFields:"BOOLValue") hostAppBundleId:fieldsCopy completionHandler:{idCopy, &stru_100369978}];
}

- (void)reportMultiplayerActivityEventWithHostAppBundleId:(id)id metricsFields:(id)fields
{
  idCopy = id;
  fieldsCopy = fields;
  mafEventFilter = [(GKAMPController *)self mafEventFilter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016BA48;
  v10[3] = &unk_1003677C8;
  v10[4] = self;
  v11 = idCopy;
  v9 = idCopy;
  [mafEventFilter filterEventWithMetricsFields:fieldsCopy completionHandler:v10];
}

- (void)reportGamesMappingEventWithGamesUserId:(id)id gameCenterUserId:(id)userId actionType:(id)type hostAppBundleId:(id)bundleId additionalFields:(id)fields
{
  fieldsCopy = fields;
  bundleIdCopy = bundleId;
  typeCopy = type;
  userIdCopy = userId;
  idCopy = id;
  metricsPipeline = [(GKAMPController *)self metricsPipeline];
  [metricsPipeline processGamesMappingEventWithGamesUserId:idCopy gameCenterUserId:userIdCopy action:typeCopy hostAppBundleId:bundleIdCopy additionalFields:fieldsCopy completionHandler:&stru_1003699B8];
}

- (void)reportLoadUrlMetricsEventWithMetricsFields:(id)fields
{
  v4 = [NSMutableDictionary dictionaryWithDictionary:fields];
  metadata = [(GKAMPController *)self metadata];
  [v4 addEntriesFromDictionary:metadata];

  v6 = GKDaemonIdentifier;
  v9[0] = @"app";
  v9[1] = @"topic";
  v7 = GKReporterGCPerformanceTopic;
  v10[0] = GKDaemonIdentifier;
  v10[1] = GKReporterGCPerformanceTopic;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 addEntriesFromDictionary:v8];

  [(GKAMPController *)self reportMetricsEventWithTopic:v7 hostAppBundleId:v6 shouldFlush:&__kCFBooleanFalse metricsFields:v4];
}

- (void)reportFriendInviteActivityEventAtStage:(unint64_t)stage hostApp:(id)app
{
  appCopy = app;
  v7 = [GKFriendInviteActivityEvent metricsFieldsForStage:stage hostApp:appCopy];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKFriending;
  if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [GKFriendInviteActivityEvent stringForStage:stage];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKAMPController: Reporting inviteActivity stage %@", &v12, 0xCu);
  }

  [(GKAMPController *)self reportClickStreamEventWithHostAppBundleId:appCopy metricsFields:v7];
}

- (void)reportURLSessionEventWithTask:(id)task metrics:(id)metrics
{
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  sub_10026A9B4(taskCopy, metricsCopy);
}

@end