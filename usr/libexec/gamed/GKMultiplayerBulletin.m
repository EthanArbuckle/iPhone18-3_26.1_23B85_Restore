@interface GKMultiplayerBulletin
+ (BOOL)shouldProcessNotification;
- (GKMultiplayerBulletin)initWithPushNotification:(id)a3;
- (id)customInviteSoundPathForBundleID:(id)a3;
- (void)loadLocalizedGameNameForBundleID:(id)a3 handler:(id)a4;
- (void)setGameInviteMessage;
@end

@implementation GKMultiplayerBulletin

+ (BOOL)shouldProcessNotification
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin shouldProcessNotification", buf, 2u);
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___GKMultiplayerBulletin;
  if (!objc_msgSendSuper2(&v8, "shouldProcessNotification"))
  {
    return 0;
  }

  v5 = +[GKPreferences shared];
  v6 = [v5 multiplayerAllowedPlayerType] != 0;

  return v6;
}

- (GKMultiplayerBulletin)initWithPushNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin initWithPushNotification:", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = GKMultiplayerBulletin;
  v7 = [(GKBulletin *)&v18 initWithPushNotification:v4];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"g"];
    [(GKGameplayBulletin *)v7 setReceiverGuestPlayerID:v8];

    v9 = [v4 objectForKeyedSubscript:@"i"];
    [(GKGameplayBulletin *)v7 setReceiverPlayerID:v9];

    v10 = [v4 objectForKeyedSubscript:@"I"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 firstObject];
      [(GKGameplayBulletin *)v7 setOriginatorPlayerID:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(GKGameplayBulletin *)v7 setOriginatorPlayerID:v10];
      }
    }

    v12 = [v4 objectForKeyedSubscript:@"G"];
    [(GKGameplayBulletin *)v7 setOriginatorGuestPlayerID:v12];

    v13 = [v4 objectForKeyedSubscript:@"d"];
    v14 = [[GKGameDescriptor alloc] initWithPushDictionary:v13];
    [(GKBulletin *)v7 setGameDescriptor:v14];

    v15 = [v13 objectForKeyedSubscript:GKInviteCompatibleVersionsKey];
    [(GKGameplayBulletin *)v7 setCompatibleVersions:v15];

    v16 = [v13 objectForKeyedSubscript:GKInviteCompatibleShortVersionsKey];
    [(GKGameplayBulletin *)v7 setCompatibleShortVersions:v16];
  }

  return v7;
}

- (void)loadLocalizedGameNameForBundleID:(id)a3 handler:(id)a4
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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin loadLocalizedGameNameForBundleID: handler:", buf, 2u);
  }

  if (v7)
  {
    v10 = +[GKClientProxy gameCenterClient];
    v11 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:v10 localPlayer:0];
    v20 = v6;
    v12 = [NSArray arrayWithObjects:&v20 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10018589C;
    v15[3] = &unk_100361A58;
    v16 = v6;
    v17 = self;
    v18 = v7;
    [v11 getGameMetadataForBundleIDs:v12 handler:v15];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10029511C(v6, v14);
    }
  }
}

- (void)setGameInviteMessage
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [(GKBulletin *)self message];
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin setGameInviteMessage original message:  %@", buf, 0xCu);
  }

  v7 = [(GKBulletin *)self gameName];
  v8 = [(GKGameplayBulletin *)self originatorPlayer];
  v9 = [v8 displayNameWithOptions:0];

  if (![v9 length] || !objc_msgSend(v7, "length"))
  {
    [(GKBulletin *)self setMessage:0];
  }

  v10 = [(GKGameplayBulletin *)self gameLocation];
  v11 = [(GKBulletin *)self message];
  v12 = [v11 length];
  if (v10 == 2)
  {
    if (v12)
    {
      +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_1_INIVITER_2_MESSAGE_STORE_FORMAT];
    }

    else
    {
      +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_1_INIVITER_STORE_FORMAT];
    }
  }

  else if (v12)
  {
    +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_1_INIVITER_2_MESSAGE_FORMAT];
  }

  else
  {
    +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_1_INIVITER_FORMAT];
  }
  v13 = ;
  v14 = v13;

  v15 = [(GKBulletin *)self message];
  v16 = [NSString stringWithFormat:v14, v9, v15];
  [(GKBulletin *)self setMessage:v16];

  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = [(GKBulletin *)self message];
    *buf = 138412290;
    v22 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin setGameInviteMessage: %@", buf, 0xCu);
  }
}

- (id)customInviteSoundPathForBundleID:(id)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin customInviteSoundPathForBundleID:", v13, 2u);
  }

  v6 = GKGetBundlePathForIdentifier();
  v7 = [NSBundle bundleWithPath:v6];
  v8 = [v7 _gkPathForInviteSound];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_100374F10;
  }

  v11 = v10;

  return v10;
}

@end