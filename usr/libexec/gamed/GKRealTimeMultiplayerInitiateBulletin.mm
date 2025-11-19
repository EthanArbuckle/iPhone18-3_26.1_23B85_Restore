@interface GKRealTimeMultiplayerInitiateBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKRealTimeMultiplayerInitiateBulletin)initWithCoder:(id)a3;
- (GKRealTimeMultiplayerInitiateBulletin)initWithPushNotification:(id)a3;
- (void)assembleBulletin;
- (void)encodeWithCoder:(id)a3;
- (void)handleAcceptAction;
- (void)handleAction:(id)a3;
- (void)handleDeclineAction;
- (void)loadDataWithHandler:(id)a3;
- (void)parseClientData:(id)a3;
@end

@implementation GKRealTimeMultiplayerInitiateBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 300, "+[GKRealTimeMultiplayerInitiateBulletin loadBulletinsForPushNotification:withHandler:]");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018F684;
  v10[3] = &unk_100361270;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [GKActivity named:v7 execute:v10];
}

- (GKRealTimeMultiplayerInitiateBulletin)initWithPushNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin initWithPushNotification:", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = GKRealTimeMultiplayerInitiateBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v10 initWithPushNotification:v4];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:GKInviteIsReinvite];
    v7->_isReconnect = [v8 BOOLValue];
  }

  return v7;
}

- (GKRealTimeMultiplayerInitiateBulletin)initWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin initWithCoder:", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = GKRealTimeMultiplayerInitiateBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v10 initWithCoder:v4];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isReconnect"];
    v7->_isReconnect = [v8 BOOLValue];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin encodeWithCoder:", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = GKRealTimeMultiplayerInitiateBulletin;
  [(GKRealTimeMultiplayerBulletin *)&v8 encodeWithCoder:v4];
  v7 = [NSNumber numberWithBool:[(GKRealTimeMultiplayerInitiateBulletin *)self isReconnect]];
  [v4 encodeObject:v7 forKey:@"isReconnect"];
}

- (void)parseClientData:(id)a3
{
  v4 = a3;
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

  if ([v4 length] >= 2)
  {
    -[GKRealTimeMultiplayerBulletin setServerHosted:](self, "setServerHosted:", *([v4 bytes] + 1));
    v7 = [v4 length];
    v8 = [(GKRealTimeMultiplayerBulletin *)self inviteVersionFromMessage:v4];
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
      v11 = [v4 subdataWithRange:{2, v9}];
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
  v6 = [(GKBulletin *)self gameDescriptor];
  v7 = [v6 adamID];
  [(GKBulletinAction *)v5 setAdamID:v7];

  v8 = [(GKBulletin *)self gameDescriptor];
  v9 = [v8 bundleIdentifier];
  [(GKBulletinAction *)v5 setBundleID:v9];

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
  v18 = [(GKBulletin *)self gameDescriptor];
  v19 = [v18 bundleIdentifier];
  v20 = [(GKRealTimeMultiplayerBulletin *)self customInviteSoundPathForBundleID:v19];
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
  v26 = [(GKBulletin *)self gameName];
  v27 = [NSString localizedStringWithFormat:v25, v26];
  [(GKBulletin *)self setTitle:v27];
}

- (void)handleAction:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin handleAction:", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = GKRealTimeMultiplayerInitiateBulletin;
  [(GKBulletin *)&v10 handleAction:v4];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle multiplayer action: %@ bulletin: %@", buf, 0x16u);
  }

  if (([v4 isEqualToString:@"GKAccepted"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"GKDefault"))
  {
    [(GKRealTimeMultiplayerInitiateBulletin *)self handleAcceptAction];
  }

  else if (([v4 isEqualToString:@"GKDeclined"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"GKDismissed"))
  {
    [(GKRealTimeMultiplayerInitiateBulletin *)self handleDeclineAction];
  }

  else if ([v4 isEqualToString:@"GKExpired"])
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

  v5 = [(GKBulletin *)self gameDescriptor];
  v6 = [v5 bundleIdentifier];
  v7 = [GKClientProxy clientForBundleID:v6];

  v8 = +[GKBulletinController sharedController];
  v9 = [v8 acceptedInviteManager];

  if ([(GKGameplayBulletin *)self gameLocation]== 1)
  {
    v10 = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];
    v11 = [v10 integerValue];
    v12 = +[GKPreferences shared];
    v13 = [v12 maximumInviteVersionSupported];

    if (v11 <= v13)
    {
      [v9 addMultiplayerInvite:self];
      v19 = +[GKReporter reporter];
      [v19 reportEvent:GKReporterDomainInvite type:GKReporterInviteAcceptUser];

      [v7 acceptMultiplayerGameInvite];
    }

    else
    {
      [(GKRealTimeMultiplayerBulletin *)self declineInviteWithReason:5];
      v14 = [(GKRealTimeMultiplayerBulletin *)self clientNotification];
      [v7 declineInviteWithNotification:v14];

      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        v18 = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Cannot handle an invite with invite version: (%@).", &v20, 0xCu);
      }

      [v9 declineMultiplayerInvite:self];
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

- (void)loadDataWithHandler:(id)a3
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
  v12 = [v9 replyQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001917F8;
  v15[3] = &unk_100360EB0;
  v16 = v11;
  v17 = v4;
  v13 = v11;
  v14 = v4;
  [v13 notifyOnQueue:v12 block:v15];
}

@end