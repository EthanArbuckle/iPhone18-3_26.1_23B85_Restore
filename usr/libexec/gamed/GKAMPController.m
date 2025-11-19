@interface GKAMPController
+ (id)computeMetadataWithLocalPlayer:(id)a3;
+ (id)controller;
- (BOOL)isSetup;
- (GKAMPController)initWithHasAcknowledgedLatestGDPRBlock:(id)a3 bagChanged:(id)a4;
- (NSDictionary)metadata;
- (void)createBagIfNecessary;
- (void)getBagWithCompletion:(id)a3;
- (void)reportFriendInviteActivityEventAtStage:(unint64_t)a3 hostApp:(id)a4;
- (void)reportGamesMappingEventWithGamesUserId:(id)a3 gameCenterUserId:(id)a4 actionType:(id)a5 hostAppBundleId:(id)a6 additionalFields:(id)a7;
- (void)reportLoadUrlMetricsEventWithMetricsFields:(id)a3;
- (void)reportMetricsEventWithTopic:(id)a3 hostAppBundleId:(id)a4 shouldFlush:(id)a5 metricsFields:(id)a6;
- (void)reportMultiplayerActivityEventWithHostAppBundleId:(id)a3 metricsFields:(id)a4;
- (void)reportURLSessionEventWithTask:(id)a3 metrics:(id)a4;
- (void)setupAsyncWithStoreBag:(id)a3 withCompletion:(id)a4;
- (void)setupMetricsIfNecessary;
- (void)tearDown;
- (void)updateMetadataWithLocalPlayer:(id)a3;
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

- (GKAMPController)initWithHasAcknowledgedLatestGDPRBlock:(id)a3 bagChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = GKAMPController;
  v8 = [(GKAMPController *)&v23 init];
  if (v8)
  {
    v9 = objc_retainBlock(v6);
    hasAcknowledgedLatestGDPRBlock = v8->_hasAcknowledgedLatestGDPRBlock;
    v8->_hasAcknowledgedLatestGDPRBlock = v9;

    v11 = objc_retainBlock(v7);
    bagChanged = v8->_bagChanged;
    v8->_bagChanged = v11;

    playerMetadata = v8->_playerMetadata;
    v8->_playerMetadata = &off_100383258;

    v24[0] = @"hardwareModel";
    v14 = +[GKDevice currentDevice];
    v15 = [v14 deviceType];
    v24[1] = @"osBuildNumber";
    v25[0] = v15;
    v16 = +[GKDevice currentDevice];
    v17 = [v16 buildVersion];
    v25[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    systemMetadata = v8->_systemMetadata;
    v8->_systemMetadata = v18;

    v20 = dispatch_queue_create("com.apple.GameKit.ampController.serialQueue", 0);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v20;
  }

  return v8;
}

- (void)getBagWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GKAMPController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016A894;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)createBagIfNecessary
{
  v3 = dispatch_get_current_queue();
  v4 = [(GKAMPController *)self serialQueue];

  if (v3 != v4)
  {
    label = dispatch_queue_get_label(v3);
    v6 = [(GKAMPController *)self serialQueue];
    v7 = dispatch_queue_get_label(v6);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKAMPController createBagIfNecessary]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/AMP/GKAMPController.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKAMPController createBagIfNecessary]", [v11 UTF8String], 102);

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

    v17 = [(GKAMPController *)self bagChanged];
    v17[2]();
  }
}

- (void)setupMetricsIfNecessary
{
  v3 = dispatch_get_current_queue();
  v4 = [(GKAMPController *)self serialQueue];

  if (v3 != v4)
  {
    label = dispatch_queue_get_label(v3);
    v6 = [(GKAMPController *)self serialQueue];
    v7 = dispatch_queue_get_label(v6);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKAMPController setupMetricsIfNecessary]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/AMP/GKAMPController.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKAMPController setupMetricsIfNecessary]", [v11 UTF8String], 114);

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
    v19 = [(GKPlayerInternalProvider *)v16 localPlayer];
    v20 = [v19 playerID];
    v21 = [(GKPlayerInternalProvider *)v16 localPlayer];
    v22 = -[GKMetricsPipeline initWithBag:localPlayerId:isUnderage:](v17, "initWithBag:localPlayerId:isUnderage:", v18, v20, [v21 ageCategory] == 3);
    [(GKAMPController *)self setMetricsPipeline:v22];

    v23 = [AMSMetrics alloc];
    v24 = [(GKAMPController *)self bag];
    v25 = [v23 initWithContainerID:@"com.apple.game-center-client" bag:v24];
    [(GKAMPController *)self setMetrics:v25];

    v26 = [(GKAMPController *)self metrics];
    [v26 setFlushTimerEnabled:1];
  }
}

- (void)setupAsyncWithStoreBag:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKAMPController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016AFC8;
  block[3] = &unk_100360FC8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)updateMetadataWithLocalPlayer:(id)a3
{
  v4 = a3;
  v5 = [(GKAMPController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016B134;
  v7[3] = &unk_1003610B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)computeMetadataWithLocalPlayer:(id)a3
{
  v3 = a3;
  if (v3)
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
      v9 = [v3 isArcadeSubscriber];
      v10 = @"notSubscribed";
      if (v9)
      {
        v10 = @"subscribed";
      }

      v6 = v10;
      v7 = @"true";
    }

    v14[0] = @"friendCount";
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[GKMetricsIntBucketer clamp:](v4, "clamp:", [v3 numberOfFriends]));
    v15[0] = v11;
    v14[1] = @"gameCount";
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[GKMetricsIntBucketer clamp:](v5, "clamp:", [v3 numberOfGames]));
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
  v3 = [(GKAMPController *)self systemMetadata];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

  v5 = [(GKAMPController *)self playerMetadata];
  [v4 addEntriesFromDictionary:v5];

  v6 = [(GKAMPController *)self networkConnectionTypeProvider];
  v7 = [v6 connectionType];

  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"connectionType"];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)tearDown
{
  v3 = dispatch_get_current_queue();
  v4 = [(GKAMPController *)self serialQueue];

  if (v3 != v4)
  {
    label = dispatch_queue_get_label(v3);
    v6 = [(GKAMPController *)self serialQueue];
    v7 = dispatch_queue_get_label(v6);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKAMPController tearDown]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/AMP/GKAMPController.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKAMPController tearDown]", [v11 UTF8String], 206);

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
  v3 = [(GKAMPController *)self metricsPipeline];
  if (v3)
  {
    v4 = [(GKAMPController *)self metrics];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reportMetricsEventWithTopic:(id)a3 hostAppBundleId:(id)a4 shouldFlush:(id)a5 metricsFields:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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

  v16 = [(GKAMPController *)self metricsPipeline];
  [v16 processEventWithTopic:v10 shouldFlush:objc_msgSend(v12 metricsFields:"BOOLValue") hostAppBundleId:v13 completionHandler:{v11, &stru_100369978}];
}

- (void)reportMultiplayerActivityEventWithHostAppBundleId:(id)a3 metricsFields:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKAMPController *)self mafEventFilter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016BA48;
  v10[3] = &unk_1003677C8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 filterEventWithMetricsFields:v7 completionHandler:v10];
}

- (void)reportGamesMappingEventWithGamesUserId:(id)a3 gameCenterUserId:(id)a4 actionType:(id)a5 hostAppBundleId:(id)a6 additionalFields:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(GKAMPController *)self metricsPipeline];
  [v17 processGamesMappingEventWithGamesUserId:v16 gameCenterUserId:v15 action:v14 hostAppBundleId:v13 additionalFields:v12 completionHandler:&stru_1003699B8];
}

- (void)reportLoadUrlMetricsEventWithMetricsFields:(id)a3
{
  v4 = [NSMutableDictionary dictionaryWithDictionary:a3];
  v5 = [(GKAMPController *)self metadata];
  [v4 addEntriesFromDictionary:v5];

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

- (void)reportFriendInviteActivityEventAtStage:(unint64_t)a3 hostApp:(id)a4
{
  v6 = a4;
  v7 = [GKFriendInviteActivityEvent metricsFieldsForStage:a3 hostApp:v6];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKFriending;
  if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [GKFriendInviteActivityEvent stringForStage:a3];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKAMPController: Reporting inviteActivity stage %@", &v12, 0xCu);
  }

  [(GKAMPController *)self reportClickStreamEventWithHostAppBundleId:v6 metricsFields:v7];
}

- (void)reportURLSessionEventWithTask:(id)a3 metrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10026A9B4(v6, v7);
}

@end