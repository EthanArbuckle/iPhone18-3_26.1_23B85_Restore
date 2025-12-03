@interface GKRealTimeMultiplayerActionBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (void)assembleBulletin;
- (void)loadDataWithHandler:(id)handler;
- (void)setInvitedPlayerRespondedWithCompletionHandler:(id)handler;
@end

@implementation GKRealTimeMultiplayerActionBulletin

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 624, "+[GKRealTimeMultiplayerActionBulletin loadBulletinsForPushNotification:withHandler:]");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001919A4;
  v11[3] = &unk_1003638C8;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = notificationCopy;
  v9 = handlerCopy;
  v10 = notificationCopy;
  [GKActivity named:v8 execute:v11];
}

- (void)loadDataWithHandler:(id)handler
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerActionBulletin loadDataWithHandler", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 662, "[GKRealTimeMultiplayerActionBulletin loadDataWithHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = +[GKClientProxy gameCenterClient];
  sessionToken = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
  v11 = [GKClientProxy clientForInviteSessionToken:sessionToken];

  if (!v11)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295AB0();
      if (!handlerCopy)
      {
        goto LABEL_12;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_12;
    }

    v18 = [NSError errorWithDomain:@"GKMultiplayerInvite" code:0 userInfo:0];
    handlerCopy[2](handlerCopy, v18);

    goto LABEL_12;
  }

  bundleIdentifier = [v11 bundleIdentifier];
  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  [gameDescriptor setBundleIdentifier:bundleIdentifier];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100192334;
  v24[3] = &unk_100360FF0;
  v24[4] = self;
  v14 = v8;
  v25 = v14;
  [v14 perform:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001924B4;
  v22[3] = &unk_100360FF0;
  v22[4] = self;
  v15 = v14;
  v23 = v15;
  [v15 perform:v22];
  replyQueue = [v9 replyQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100192600;
  v19[3] = &unk_100360EB0;
  v21 = handlerCopy;
  v20 = v15;
  [v20 notifyOnQueue:replyQueue block:v19];

LABEL_12:
}

- (void)setInvitedPlayerRespondedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerActionBulletin: setInvitedPlayerRespondedWithCompletionHandler", buf, 2u);
  }

  sessionToken = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
  v9 = [GKClientProxy clientForInviteSessionToken:sessionToken];

  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 710, "[GKRealTimeMultiplayerActionBulletin setInvitedPlayerRespondedWithCompletionHandler:]"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100192890;
  v17[3] = &unk_100362A60;
  v12 = v9;
  v18 = v12;
  selfCopy = self;
  v13 = v11;
  v20 = v13;
  v21 = a2;
  [v13 perform:v17];
  if (handlerCopy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001937E0;
    v14[3] = &unk_100360EB0;
    v16 = handlerCopy;
    v15 = v13;
    [v15 notifyOnMainQueueWithBlock:v14];
  }
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
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerActionBulletin: assembleBulletin", v10, 2u);
  }

  sessionToken = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
  v6 = [GKClientProxy clientForInviteSessionToken:sessionToken];

  [(GKBulletin *)self setHasSound:1];
  bundleIdentifier = [v6 bundleIdentifier];
  v8 = [(GKRealTimeMultiplayerBulletin *)self customInviteSoundPathForBundleID:bundleIdentifier];
  [(GKBulletin *)self setSoundPath:v8];

  v9 = +[NSDate date];
  [(GKBulletin *)self setDate:v9];

  [(GKBulletin *)self setBulletinType:401];
}

@end