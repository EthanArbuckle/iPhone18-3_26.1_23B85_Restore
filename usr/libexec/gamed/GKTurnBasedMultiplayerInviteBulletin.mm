@interface GKTurnBasedMultiplayerInviteBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (void)assembleBulletin;
- (void)handleAcceptAction;
- (void)handleAction:(id)a3;
- (void)handleDeclineAction;
- (void)loadDataWithHandler:(id)a3;
@end

@implementation GKTurnBasedMultiplayerInviteBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 487, "+[GKTurnBasedMultiplayerInviteBulletin loadBulletinsForPushNotification:withHandler:]");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018AEF8;
  v10[3] = &unk_100361270;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [GKActivity named:v7 execute:v10];
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerInviteBulletin assembleBulletin", buf, 2u);
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
  v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CLOSE_TURN_BASED_ALERT_BUTTON_TITLE];
  [(GKBulletinAction *)v12 setTitle:v13];

  [(GKBulletinAction *)v12 setInfo:&stru_100374F10];
  v14 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v14 setType:0];
  v15 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings DECLINE_INVITE_BUTTON_TITLE];
  [(GKBulletinAction *)v14 setTitle:v15];

  [(GKBulletinAction *)v14 setInfo:&stru_100374F10];
  [(GKBulletinAction *)v14 setIsDestructive:1];
  [(GKBulletin *)self setHasSound:1];
  v16 = [(GKBulletin *)self gameDescriptor];
  v17 = [v16 bundleIdentifier];
  v18 = [(GKMultiplayerBulletin *)self customInviteSoundPathForBundleID:v17];
  [(GKBulletin *)self setSoundPath:v18];

  v19 = [(GKBulletin *)self expirationDate];

  if (!v19)
  {
    v20 = [NSDate dateWithTimeIntervalSinceNow:2592000.0];
    [(GKBulletin *)self setExpirationDate:v20];
  }

  [(GKBulletin *)self setDefaultAction:v5];
  [(GKBulletin *)self setDismissAction:v12];
  [(GKBulletin *)self setDeclineAction:v14];
  v21 = +[NSDate date];
  [(GKBulletin *)self setDate:v21];

  [(GKBulletin *)self setBulletinType:200];
  v22 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_TITLE];
  v23 = [(GKBulletin *)self gameName];
  v24 = [NSString localizedStringWithFormat:v22, v23];
  [(GKBulletin *)self setTitle:v24];
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerInviteBulletin handleAction:", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = GKTurnBasedMultiplayerInviteBulletin;
  [(GKTurnBasedMultiplayerBulletin *)&v10 handleAction:v4];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle multiplayer action: %@", buf, 0xCu);
  }

  if (([v4 isEqualToString:@"GKAccepted"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"GKDefault"))
  {
    [(GKTurnBasedMultiplayerInviteBulletin *)self handleAcceptAction];
  }

  else if ([v4 isEqualToString:@"GKDeclined"])
  {
    [(GKTurnBasedMultiplayerInviteBulletin *)self handleDeclineAction];
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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerInviteBulletin handleAcceptAction", buf, 2u);
  }

  v5 = +[GKReporter reporter];
  [v5 reportEvent:GKReporterDomainTurnBased type:GKReporterTurnBasedAccept];

  v6.receiver = self;
  v6.super_class = GKTurnBasedMultiplayerInviteBulletin;
  [(GKTurnBasedMultiplayerBulletin *)&v6 acceptTurnBasedTurn];
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerInviteBulletin handleDeclineAction", v5, 2u);
  }

  [(GKTurnBasedMultiplayerBulletin *)self declineTurnBasedInviteWithReason:1];
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerInviteBulletin loadDataWithHandler:", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 643, "[GKTurnBasedMultiplayerInviteBulletin loadDataWithHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = +[GKClientProxy gameCenterClient];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10018BFF8;
  v20[3] = &unk_100360FF0;
  v20[4] = self;
  v10 = v8;
  v21 = v10;
  [v10 perform:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10018C178;
  v18[3] = &unk_100360FF0;
  v18[4] = self;
  v11 = v10;
  v19 = v11;
  [v11 perform:v18];
  v12 = [v9 replyQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10018C3A4;
  v15[3] = &unk_100360EB0;
  v16 = v11;
  v17 = v4;
  v13 = v11;
  v14 = v4;
  [v13 notifyOnQueue:v12 block:v15];
}

@end