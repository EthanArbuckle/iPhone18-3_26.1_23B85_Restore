@interface GKRealTimeMultiplayerInitiateBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKRealTimeMultiplayerInitiateBulletin)initWithCoder:(id)coder;
- (GKRealTimeMultiplayerInitiateBulletin)initWithPushNotification:(id)notification;
- (void)assembleBulletin;
- (void)encodeWithCoder:(id)coder;
- (void)handleAcceptAction;
- (void)handleAction:(id)action;
- (void)handleDeclineAction;
- (void)loadDataWithHandler:(id)handler;
- (void)parseClientData:(id)data;
@end

@implementation GKRealTimeMultiplayerInitiateBulletin

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 300, "+[GKRealTimeMultiplayerInitiateBulletin loadBulletinsForPushNotification:withHandler:]");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018F684;
  v10[3] = &unk_100361270;
  v11 = notificationCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = notificationCopy;
  [GKActivity named:v7 execute:v10];
}

- (GKRealTimeMultiplayerInitiateBulletin)initWithPushNotification:(id)notification
{
  notificationCopy = notification;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin initWithPushNotification:", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = GKRealTimeMultiplayerInitiateBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v10 initWithPushNotification:notificationCopy];
  if (v7)
  {
    v8 = [notificationCopy objectForKeyedSubscript:GKInviteIsReinvite];
    v7->_isReconnect = [v8 BOOLValue];
  }

  return v7;
}

- (GKRealTimeMultiplayerInitiateBulletin)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin initWithCoder:", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = GKRealTimeMultiplayerInitiateBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v10 initWithCoder:coderCopy];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isReconnect"];
    v7->_isReconnect = [v8 BOOLValue];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin encodeWithCoder:", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = GKRealTimeMultiplayerInitiateBulletin;
  [(GKRealTimeMultiplayerBulletin *)&v8 encodeWithCoder:coderCopy];
  v7 = [NSNumber numberWithBool:[(GKRealTimeMultiplayerInitiateBulletin *)self isReconnect]];
  [coderCopy encodeObject:v7 forKey:@"isReconnect"];
}

- (void)parseClientData:(id)data
{
  dataCopy = data;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v13[0] = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin parseClientData:", v13, 2u);
  }

  if ([dataCopy length] >= 2)
  {
    -[GKRealTimeMultiplayerBulletin setServerHosted:](self, "setServerHosted:", *([dataCopy bytes] + 1));
    v7 = [dataCopy length];
    v8 = [(GKRealTimeMultiplayerBulletin *)self inviteVersionFromMessage:dataCopy];
    if (!v8)
    {
      v9 = v7 - 2;
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v9 = v7 - 4;
    v10 = [NSNumber numberWithUnsignedChar:v8];
    [(GKRealTimeMultiplayerBulletin *)self setInviteVersion:v10];

    if (v9)
    {
LABEL_8:
      v11 = [dataCopy subdataWithRange:{2, v9}];
      v12 = [[NSString alloc] initWithData:v11 encoding:4];
      [(GKBulletin *)self setMessage:v12];
    }
  }

LABEL_9:
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin assembleBulletin:", buf, 2u);
  }

  v5 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v5 setType:1];
  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  adamID = [gameDescriptor adamID];
  [(GKBulletinAction *)v5 setAdamID:adamID];

  gameDescriptor2 = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor2 bundleIdentifier];
  [(GKBulletinAction *)v5 setBundleID:bundleIdentifier];

  if ([(GKGameplayBulletin *)self gameLocation]== 2)
  {
    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings APP_STORE];
    v11 = &GKNotificationCategoryActionsAppStoreDecline;
  }

  else
  {
    if ([(GKGameplayBulletin *)self gameLocation]!= 1)
    {
      goto LABEL_10;
    }

    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ACCEPT_INVITE_BUTTON_TITLE];
    v11 = &GKNotificationCategoryActionsAcceptDecline;
  }

  [(GKBulletinAction *)v5 setTitle:v10];

  [(GKBulletin *)self setCategoryIdentifier:*v11];
LABEL_10:
  v12 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v12 setType:0];
  v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings DECLINE_INVITE_BUTTON_TITLE];
  [(GKBulletinAction *)v12 setTitle:v13];

  [(GKBulletinAction *)v12 setInfo:&stru_100374F10];
  [(GKBulletinAction *)v12 setInAlertView:0];
  [(GKBulletinAction *)v12 setIsDestructive:1];
  v14 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v14 setType:0];
  v15 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings DECLINE_INVITE_BUTTON_TITLE];
  [(GKBulletinAction *)v14 setTitle:v15];

  [(GKBulletinAction *)v14 setInfo:&stru_100374F10];
  [(GKBulletinAction *)v14 setIsDestructive:1];
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "assembleBulletin: - Bulletin Action Set", v29, 2u);
  }

  [(GKBulletin *)self setHasSound:1];
  gameDescriptor3 = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier2 = [gameDescriptor3 bundleIdentifier];
  v20 = [(GKRealTimeMultiplayerBulletin *)self customInviteSoundPathForBundleID:bundleIdentifier2];
  [(GKBulletin *)self setSoundPath:v20];

  v21 = [NSDate dateWithTimeIntervalSinceNow:600.0];
  [(GKBulletin *)self setExpirationDate:v21];

  [(GKBulletin *)self setDefaultAction:v5];
  [(GKBulletin *)self setDeclineAction:v12];
  [(GKBulletin *)self setDismissAction:v14];
  v22 = +[NSDate date];
  [(GKBulletin *)self setDate:v22];

  [(GKBulletin *)self setBulletinType:400];
  if (!os_log_GKGeneral)
  {
    v23 = GKOSLoggers();
  }

  v24 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "assembleBulletin: - Bulletin Data Set", v28, 2u);
  }

  if ([(GKRealTimeMultiplayerInitiateBulletin *)self isReconnect])
  {
    +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_RECONNECT_NOTIFICATION_TITLE];
  }

  else
  {
    +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_TITLE];
  }
  v25 = ;
  gameName = [(GKBulletin *)self gameName];
  v27 = [NSString localizedStringWithFormat:v25, gameName];
  [(GKBulletin *)self setTitle:v27];
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin handleAction:", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = GKRealTimeMultiplayerInitiateBulletin;
  [(GKBulletin *)&v10 handleAction:actionCopy];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = actionCopy;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle multiplayer action: %@ bulletin: %@", buf, 0x16u);
  }

  if (([actionCopy isEqualToString:@"GKAccepted"] & 1) != 0 || objc_msgSend(actionCopy, "isEqualToString:", @"GKDefault"))
  {
    [(GKRealTimeMultiplayerInitiateBulletin *)self handleAcceptAction];
  }

  else if (([actionCopy isEqualToString:@"GKDeclined"] & 1) != 0 || objc_msgSend(actionCopy, "isEqualToString:", @"GKDismissed"))
  {
    [(GKRealTimeMultiplayerInitiateBulletin *)self handleDeclineAction];
  }

  else if ([actionCopy isEqualToString:@"GKExpired"])
  {
    v9 = +[GKBulletinController sharedController];
    [v9 expireBulletin:self];
  }
}

- (void)handleAcceptAction
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin handleAcceptAction", &v20, 2u);
  }

  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor bundleIdentifier];
  v7 = [GKClientProxy clientForBundleID:bundleIdentifier];

  v8 = +[GKBulletinController sharedController];
  acceptedInviteManager = [v8 acceptedInviteManager];

  if ([(GKGameplayBulletin *)self gameLocation]== 1)
  {
    inviteVersion = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];
    integerValue = [inviteVersion integerValue];
    v12 = +[GKPreferences shared];
    maximumInviteVersionSupported = [v12 maximumInviteVersionSupported];

    if (integerValue <= maximumInviteVersionSupported)
    {
      [acceptedInviteManager addMultiplayerInvite:self];
      v19 = +[GKReporter reporter];
      [v19 reportEvent:GKReporterDomainInvite type:GKReporterInviteAcceptUser];

      [v7 acceptMultiplayerGameInvite];
    }

    else
    {
      [(GKRealTimeMultiplayerBulletin *)self declineInviteWithReason:5];
      clientNotification = [(GKRealTimeMultiplayerBulletin *)self clientNotification];
      [v7 declineInviteWithNotification:clientNotification];

      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        inviteVersion2 = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];
        v20 = 138412290;
        v21 = inviteVersion2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Cannot handle an invite with invite version: (%@).", &v20, 0xCu);
      }

      [acceptedInviteManager declineMultiplayerInvite:self];
    }
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
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin handleDeclineAction", v5, 2u);
  }

  [(GKRealTimeMultiplayerBulletin *)self declineInviteWithReason:1];
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin loadDataWithHandler:", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 570, "[GKRealTimeMultiplayerInitiateBulletin loadDataWithHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = +[GKClientProxy gameCenterClient];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10019144C;
  v20[3] = &unk_100360FF0;
  v20[4] = self;
  v10 = v8;
  v21 = v10;
  [v10 perform:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001915CC;
  v18[3] = &unk_100360FF0;
  v18[4] = self;
  v11 = v10;
  v19 = v11;
  [v11 perform:v18];
  replyQueue = [v9 replyQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001917F8;
  v15[3] = &unk_100360EB0;
  v16 = v11;
  v17 = handlerCopy;
  v13 = v11;
  v14 = handlerCopy;
  [v13 notifyOnQueue:replyQueue block:v15];
}

@end