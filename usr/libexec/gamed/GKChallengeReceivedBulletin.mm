@interface GKChallengeReceivedBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKChallengeReceivedBulletin)init;
- (void)assembleBulletin;
- (void)handleAction:(id)action;
- (void)handleDeclineAction;
- (void)notifyClient:(id)client;
@end

@implementation GKChallengeReceivedBulletin

- (GKChallengeReceivedBulletin)init
{
  v3.receiver = self;
  v3.super_class = GKChallengeReceivedBulletin;
  return [(GKChallengeBulletin *)&v3 init];
}

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKChallengeReceivedBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  [self expireChallengeList];
  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountChallengeReceived];

  v11 = [notificationCopy objectForKey:@"di"];
  v12 = [v11 _gkValuesForKeyPath:@"ci"];
  v13 = [NSSet setWithArray:v12];

  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v15 = +[GKClientProxy gameCenterClient];
  v16 = [(GKService *)GKChallengeService serviceWithTransport:0 forClient:v15 localPlayer:0];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKChallengeBulletin.m", 504, "+[GKChallengeReceivedBulletin loadBulletinsForPushNotification:withHandler:]");
  v18 = [GKDispatchGroup dispatchGroupWithName:v17];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100199898;
  v28[3] = &unk_100361BF8;
  v19 = v16;
  v29 = v19;
  v20 = v13;
  v30 = v20;
  v21 = notificationCopy;
  v31 = v21;
  v22 = v18;
  v32 = v22;
  v23 = v14;
  v33 = v23;
  [v22 perform:v28];
  if (handlerCopy)
  {
    replyQueue = [v15 replyQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100199E6C;
    v25[3] = &unk_100360EB0;
    v27 = handlerCopy;
    v26 = v23;
    [v22 notifyOnQueue:replyQueue block:v25];
  }
}

- (void)notifyClient:(id)client
{
  clientCopy = client;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKChallengeReceivedBulletin notifyClient:", v8, 2u);
  }

  challenge = [(GKChallengeBulletin *)self challenge];
  [clientCopy challengeReceived:challenge];
}

- (void)assembleBulletin
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeReceivedBulletin assembleBulletin", buf, 2u);
  }

  v23.receiver = self;
  v23.super_class = GKChallengeReceivedBulletin;
  [(GKChallengeBulletin *)&v23 assembleBulletin];
  v5 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v5 setType:1];
  gameDescriptor = [(GKChallengeBulletin *)self gameDescriptor];
  adamID = [gameDescriptor adamID];
  [(GKBulletinAction *)v5 setAdamID:adamID];

  gameDescriptor2 = [(GKChallengeBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor2 bundleIdentifier];
  [(GKBulletinAction *)v5 setBundleID:bundleIdentifier];

  if ([(GKGameplayBulletin *)self gameLocation]== 2)
  {
    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_LAUNCH_STORE];
    v11 = &GKNotificationCategoryActionsAppStoreDecline;
  }

  else
  {
    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_LAUNCH_GAME];
    v11 = &GKNotificationCategoryActionsLaunchGameDecline;
  }

  [(GKBulletinAction *)v5 setTitle:v10];

  [(GKBulletin *)self setCategoryIdentifier:*v11];
  v12 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v12 setType:0];
  v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_DECLINE];
  [(GKBulletinAction *)v12 setTitle:v13];

  [(GKBulletinAction *)v12 setIsDestructive:1];
  [(GKBulletinAction *)v12 setInfo:&stru_100374F10];
  v14 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v14 setType:0];
  v15 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_IGNORE];
  [(GKBulletinAction *)v14 setTitle:v15];

  [(GKBulletinAction *)v14 setInfo:&stru_100374F10];
  [(GKBulletin *)self setDefaultAction:v5];
  [(GKBulletin *)self setDeclineAction:v12];
  [(GKBulletin *)self setDismissAction:v14];
  originatorPlayer = [(GKChallengeBulletin *)self originatorPlayer];
  v17 = [originatorPlayer displayNameWithOptions:0];

  challenge = [(GKChallengeBulletin *)self challenge];
  message = [challenge message];

  if ([message length])
  {
    v20 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_CHALLENGE_RECEIVED_OUT_OF_GAME_BANNER_1_PLAYER_2_CUSTOM_MESSAGE_FORMAT];
    [NSString localizedStringWithFormat:v20, v17, message];
  }

  else
  {
    v20 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_CHALLENGE_RECEIVED_OUT_OF_GAME_BANNER_FORMAT];
    [NSString localizedStringWithFormat:v20, v17, v22];
  }
  v21 = ;
  [(GKBulletin *)self setMessage:v21];

  [(GKBulletin *)self setBulletinType:801];
}

- (void)handleAction:(id)action
{
  actionCopy = action;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKChallengeReceivedBulletin handleAction:", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = GKChallengeReceivedBulletin;
  [(GKBulletin *)&v9 handleAction:actionCopy];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle challenge action: %@", buf, 0xCu);
  }

  if (([actionCopy isEqualToString:@"GKAccepted"] & 1) != 0 || objc_msgSend(actionCopy, "isEqualToString:", @"GKDefault"))
  {
    [(GKChallengeBulletin *)self handleAcceptAction];
  }

  else if ([actionCopy isEqualToString:@"GKDeclined"])
  {
    [(GKChallengeReceivedBulletin *)self handleDeclineAction];
  }
}

- (void)handleDeclineAction
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeReceivedBulletin handleDeclineAction", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "challenge received handling decline action %@", buf, 0xCu);
  }

  challenge = [(GKChallengeBulletin *)self challenge];
  if (challenge)
  {
    gameDescriptor = [(GKChallengeBulletin *)self gameDescriptor];
    bundleIdentifier = [gameDescriptor bundleIdentifier];
    v10 = [GKClientProxy clientForBundleID:bundleIdentifier];

    v11 = [(GKService *)GKChallengeService serviceWithTransport:0 forClient:v10 localPlayer:0];
    v13 = challenge;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [v11 abortChallenges:v12 handler:0];
  }
}

@end