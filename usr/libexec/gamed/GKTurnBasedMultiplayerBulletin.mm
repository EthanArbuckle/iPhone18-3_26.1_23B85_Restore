@interface GKTurnBasedMultiplayerBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKTurnBasedMultiplayerBulletin)initWithCoder:(id)a3;
- (GKTurnBasedMultiplayerBulletin)initWithPushNotification:(id)a3;
- (id)bulletinMessage;
- (id)description;
- (void)acceptTurnBasedTurn;
- (void)assembleBulletin;
- (void)declineTurnBasedInviteWithReason:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)expireAndLoadCaches;
- (void)handleAcceptAction;
- (void)handleAction:(id)a3;
- (void)invalidateTurnCache;
- (void)loadDataWithHandler:(id)a3;
- (void)removePreviousTurnBulletins;
- (void)saveTurnBasedEvent;
- (void)update;
- (void)updateBadgeCount;
@end

@implementation GKTurnBasedMultiplayerBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 46, "+[GKTurnBasedMultiplayerBulletin loadBulletinsForPushNotification:withHandler:]");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100187B38;
  v11[3] = &unk_1003638C8;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [GKActivity named:v8 execute:v11];
}

- (void)update
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin update:", v5, 2u);
  }

  [(GKTurnBasedMultiplayerBulletin *)self updateBadgeCount];
  [(GKTurnBasedMultiplayerBulletin *)self expireAndLoadCaches];
}

- (GKTurnBasedMultiplayerBulletin)initWithPushNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin initWithPushNotification:", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = GKTurnBasedMultiplayerBulletin;
  v7 = [(GKMultiplayerBulletin *)&v22 initWithPushNotification:v4];
  if (v7)
  {
    v8 = +[GKPreferences shared];
    v9 = [v8 shouldAllowCustomCommunication];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:@"m"];
      [(GKBulletin *)v7 setMessage:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"s"];
    matchID = v7->_matchID;
    v7->_matchID = v11;

    v13 = [v4 objectForKeyedSubscript:@"lm"];
    localizableMessage = v7->_localizableMessage;
    v7->_localizableMessage = v13;

    v15 = [v4 objectForKeyedSubscript:@"x"];
    exchangeID = v7->_exchangeID;
    v7->_exchangeID = v15;

    v17 = [v4 objectForKeyedSubscript:@"t"];
    turnCount = v7->_turnCount;
    v7->_turnCount = v17;

    v19 = [v4 objectForKeyedSubscript:@"g"];
    guestID = v7->_guestID;
    v7->_guestID = v19;
  }

  return v7;
}

- (GKTurnBasedMultiplayerBulletin)initWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin initWithCoder:", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = GKTurnBasedMultiplayerBulletin;
  v7 = [(GKGameplayBulletin *)&v20 initWithCoder:v4];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchID"];
    matchID = v7->_matchID;
    v7->_matchID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"turnCount"];
    turnCount = v7->_turnCount;
    v7->_turnCount = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userTapped"];
    v7->_userTapped = [v12 BOOLValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizableMessage"];
    localizableMessage = v7->_localizableMessage;
    v7->_localizableMessage = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exchangeID"];
    exchangeID = v7->_exchangeID;
    v7->_exchangeID = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guestID"];
    guestID = v7->_guestID;
    v7->_guestID = v17;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin encodeWithCoder:", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = GKTurnBasedMultiplayerBulletin;
  [(GKGameplayBulletin *)&v13 encodeWithCoder:v4];
  v7 = [(GKTurnBasedMultiplayerBulletin *)self matchID];
  [v4 encodeObject:v7 forKey:@"matchID"];

  v8 = [(GKTurnBasedMultiplayerBulletin *)self turnCount];
  [v4 encodeObject:v8 forKey:@"turnCount"];

  v9 = [NSNumber numberWithBool:[(GKTurnBasedMultiplayerBulletin *)self userTapped]];
  [v4 encodeObject:v9 forKey:@"userTapped"];

  v10 = [(GKTurnBasedMultiplayerBulletin *)self localizableMessage];
  [v4 encodeObject:v10 forKey:@"localizableMessage"];

  v11 = [(GKTurnBasedMultiplayerBulletin *)self exchangeID];
  [v4 encodeObject:v11 forKey:@"exchangeID"];

  v12 = [(GKTurnBasedMultiplayerBulletin *)self guestID];
  [v4 encodeObject:v12 forKey:@"guestID"];
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin loadDataWithHandler:", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 200, "[GKTurnBasedMultiplayerBulletin loadDataWithHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = +[GKClientProxy gameCenterClient];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100188CE4;
  v23[3] = &unk_100360FF0;
  v23[4] = self;
  v10 = v8;
  v24 = v10;
  [v10 perform:v23];
  v11 = [(GKGameplayBulletin *)self originatorPlayerID];

  if (v11)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100188E64;
    v21[3] = &unk_100360FF0;
    v21[4] = self;
    v22 = v10;
    [v22 perform:v21];
  }

  v12 = [(GKTurnBasedMultiplayerBulletin *)self matchID];

  if (v12)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100188FBC;
    v19[3] = &unk_100360FF0;
    v19[4] = self;
    v20 = v10;
    [v20 perform:v19];
  }

  v13 = [v9 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001892E0;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = v4;
  v14 = v10;
  v15 = v4;
  [v14 notifyOnQueue:v13 block:v16];
}

- (void)updateBadgeCount
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin updateBadgeCount", v10, 2u);
  }

  v5 = [(GKBulletin *)self gameDescriptor];
  v6 = [v5 bundleIdentifier];

  v7 = [(GKTurnBasedMultiplayerBulletin *)self turnCount];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = +[GKBadgeController sharedController];
    [v9 setBadgeCount:objc_msgSend(v8 forBundleID:"unsignedIntegerValue") badgeType:{v6, 2}];
  }
}

- (void)saveTurnBasedEvent
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin saveTurnBasedEvent", v7, 2u);
  }

  v5 = +[GKBulletinController sharedController];
  v6 = [v5 acceptedInviteManager];

  [v6 addTurnBasedEvent:self];
}

- (void)invalidateTurnCache
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin invalidateTurnCache", buf, 2u);
  }

  v5 = [(GKBulletin *)self gameDescriptor];
  v6 = [v5 bundleIdentifier];

  v7 = +[GKClientProxy gameCenterClient];
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 279, "[GKTurnBasedMultiplayerBulletin invalidateTurnCache]"];
  v9 = +[GKPlayerCredentialController sharedController];
  v10 = [v9 pushCredentialForEnvironment:{objc_msgSend(v7, "environment")}];
  v11 = [v10 playerInternal];
  v12 = [v11 playerID];
  v13 = [v7 transactionGroupWithName:v8 forPlayerID:v12];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100189714;
  v15[3] = &unk_100361708;
  v16 = v6;
  v17 = self;
  v14 = v6;
  [v13 performOnManagedObjectContext:v15];
}

- (void)acceptTurnBasedTurn
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin acceptTurnBasedTurn", buf, 2u);
  }

  [(GKTurnBasedMultiplayerBulletin *)self invalidateTurnCache];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Accept Turn Based Invite", v12, 2u);
  }

  v7 = +[GKBulletinController sharedController];
  v8 = [v7 acceptedInviteManager];

  [v8 addTurnBasedEvent:self];
  if ([(GKGameplayBulletin *)self gameLocation]== 1)
  {
    v9 = [(GKBulletin *)self gameDescriptor];
    v10 = [v9 bundleIdentifier];
    v11 = [GKClientProxy clientForBundleID:v10];

    [v11 fetchTurnBasedData];
  }
}

- (void)declineTurnBasedInviteWithReason:(int)a3
{
  v3 = *&a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin declineTurnBasedInviteWithReason:", v23, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Decline Turn Based Invite", v23, 2u);
  }

  v9 = [(GKTurnBasedMultiplayerBulletin *)self guestID];
  if (v9)
  {
    v26[0] = @"session-id";
    v10 = [(GKTurnBasedMultiplayerBulletin *)self matchID];
    v27[0] = v10;
    v26[1] = @"reason";
    v11 = [NSNumber numberWithUnsignedInt:v3];
    v26[2] = @"guest-id";
    v27[1] = v11;
    v27[2] = v9;
    v12 = v27;
    v13 = v26;
    v14 = 3;
  }

  else
  {
    v24[0] = @"session-id";
    v10 = [(GKTurnBasedMultiplayerBulletin *)self matchID];
    v24[1] = @"reason";
    v25[0] = v10;
    v11 = [NSNumber numberWithUnsignedInt:v3];
    v25[1] = v11;
    v12 = v25;
    v13 = v24;
    v14 = 2;
  }

  v15 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
  v16 = [NSPropertyListSerialization dataWithPropertyList:v15 format:100 options:0 error:0];

  v17 = +[GKClientProxy gameCenterClient];
  v18 = +[GKDataRequestManager sharedManager];
  v19 = [v18 storeBag];
  v20 = +[GKPlayerCredentialController sharedController];
  v21 = [v20 pushCredentialForEnvironment:{objc_msgSend(v17, "environment")}];
  [v19 writeDataForBagKey:@"gk-tb-decline" postData:v16 client:0 credential:v21 completion:0];

  v22 = +[GKReporter reporter];
  [v22 reportEvent:GKReporterDomainTurnBased type:GKReporterTurnBasedDecline];
}

- (void)removePreviousTurnBulletins
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin removePreviousTurnBulletins", buf, 2u);
  }

  v5 = +[GKBulletinController sharedController];
  v6 = [v5 getBulletinsOfType:objc_opt_class()];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKey:*(*(&v15 + 1) + 8 * v10)];
        v12 = [v11 matchID];
        v13 = [(GKTurnBasedMultiplayerBulletin *)self matchID];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          [v5 withdrawBulletin:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }
}

- (id)bulletinMessage
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin bulletinMessage", buf, 2u);
  }

  v5 = [(GKGameplayBulletin *)self receiverGuestPlayerID];
  v6 = [v5 length];

  if (v6)
  {
    +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_TURN_BASED_YOUR_GUESTS_TURN_NOTIFICATION_MESSAGE_FORMAT];
  }

  else
  {
    +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_TURN_BASED_YOUR_TURN_NOTIFICATION_MESSAGE_FORMAT];
  }
  v7 = ;
  v8 = [(GKBulletin *)self message];
  v9 = [NSString localizedStringWithFormat:v7, v8];

  return v9;
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin assembleBulletin", buf, 2u);
  }

  [(GKTurnBasedMultiplayerBulletin *)self removePreviousTurnBulletins];
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
    v11 = &GKNotificationCategoryActionsAppStoreClose;
  }

  else
  {
    if ([(GKGameplayBulletin *)self gameLocation]!= 1)
    {
      goto LABEL_10;
    }

    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings PLAY_TURN_BASED_TURN_BUTTON_TITLE];
    v11 = &GKNotificationCategoryActionsPlayClose;
  }

  [(GKBulletinAction *)v5 setTitle:v10];

  [(GKBulletin *)self setCategoryIdentifier:*v11];
LABEL_10:
  v12 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v12 setType:0];
  v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CLOSE_TURN_BASED_ALERT_BUTTON_TITLE];
  [(GKBulletinAction *)v12 setTitle:v13];

  [(GKBulletinAction *)v12 setInfo:&stru_100374F10];
  v14 = [(GKTurnBasedMultiplayerBulletin *)self localizableMessage];
  v15 = [(GKBulletin *)self gameDescriptor];
  v16 = [v15 bundleIdentifier];
  v17 = [NSBundle _gkLocalizedMessageFromPushDictionary:v14 forBundleID:v16];

  if ([v17 length])
  {
    v18 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_NOTIFICATION_CUSTOM_1_GAME_2_MESSAGE];
    v19 = [(GKBulletin *)self gameName];
    v20 = [NSString localizedStringWithFormat:v18, v19, v17];
LABEL_14:

    goto LABEL_15;
  }

  v21 = [(GKBulletin *)self message];
  v22 = [v21 length];

  if (v22)
  {
    v18 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_NOTIFICATION_CUSTOM_1_GAME_2_MESSAGE];
    v19 = [(GKBulletin *)self gameName];
    v23 = [(GKBulletin *)self message];
    v20 = [NSString localizedStringWithFormat:v18, v19, v23];

    goto LABEL_14;
  }

  v20 = [(GKTurnBasedMultiplayerBulletin *)self bulletinMessage];
LABEL_15:
  [(GKBulletin *)self setMessage:v20];
  [(GKBulletin *)self setHasSound:1];
  v24 = [(GKBulletin *)self gameDescriptor];
  v25 = [v24 bundleIdentifier];
  v26 = [(GKMultiplayerBulletin *)self customInviteSoundPathForBundleID:v25];
  [(GKBulletin *)self setSoundPath:v26];

  v27 = +[NSDate date];
  [(GKBulletin *)self setDate:v27];

  v28 = [(GKBulletin *)self expirationDate];

  if (!v28)
  {
    v29 = [NSDate dateWithTimeIntervalSinceNow:2592000.0];
    [(GKBulletin *)self setExpirationDate:v29];
  }

  [(GKBulletin *)self setDefaultAction:v5];
  [(GKBulletin *)self setDismissAction:v12];
  v30 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GENERAL_NOTIFICATION_TITLE];
  v31 = [(GKBulletin *)self gameName];
  v32 = [NSString localizedStringWithFormat:v30, v31];
  [(GKBulletin *)self setTitle:v32];
}

- (void)expireAndLoadCaches
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin expireAndLoadCaches", buf, 2u);
  }

  v5 = [(GKBulletin *)self gameDescriptor];
  v6 = [v5 bundleIdentifier];
  v7 = [GKClientProxy clientForBundleID:v6];

  v8 = +[GKClientProxy gameCenterClient];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 410, "[GKTurnBasedMultiplayerBulletin expireAndLoadCaches]"];
  v10 = +[GKPlayerCredentialController sharedController];
  v11 = [v10 pushCredentialForEnvironment:{objc_msgSend(v7, "environment")}];
  v12 = [v11 playerInternal];
  v13 = [v12 playerID];
  v14 = [v8 transactionGroupWithName:v9 forPlayerID:v13];

  v15 = [(GKService *)GKTurnBasedService serviceWithTransport:0 forClient:v7 localPlayer:0];
  [(GKService *)GKTurnBasedService serviceWithTransport:0 forClient:v8 localPlayer:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10018A6B8;
  v19[3] = &unk_1003626D8;
  v19[4] = self;
  v20 = v8;
  v22 = v21 = v15;
  v16 = v22;
  v17 = v15;
  v18 = v8;
  [v14 performOnManagedObjectContext:v19];
  [v14 wait];
}

- (void)handleAcceptAction
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin handleAcceptAction", v4, 2u);
  }
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin handleAction:", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = GKTurnBasedMultiplayerBulletin;
  [(GKBulletin *)&v9 handleAction:v4];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle turn based action: %@", buf, 0xCu);
  }

  if (([v4 isEqualToString:@"GKAccepted"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"GKDefault"))
  {
    [(GKTurnBasedMultiplayerBulletin *)self setUserTapped:1];
    [(GKTurnBasedMultiplayerBulletin *)self handleAcceptAction];
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = GKTurnBasedMultiplayerBulletin;
  v3 = [(GKBulletin *)&v7 description];
  v4 = [(GKTurnBasedMultiplayerBulletin *)self matchID];
  v5 = [v3 stringByAppendingFormat:@"\nmatchID:%@\n", v4];

  return v5;
}

@end