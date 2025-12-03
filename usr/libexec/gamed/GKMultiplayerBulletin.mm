@interface GKMultiplayerBulletin
+ (BOOL)shouldProcessNotification;
- (GKMultiplayerBulletin)initWithPushNotification:(id)notification;
- (id)customInviteSoundPathForBundleID:(id)d;
- (void)loadLocalizedGameNameForBundleID:(id)d handler:(id)handler;
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

  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___GKMultiplayerBulletin;
  if (!objc_msgSendSuper2(&v8, "shouldProcessNotification"))
  {
    return 0;
  }

  v5 = +[GKPreferences shared];
  v6 = [v5 multiplayerAllowedPlayerType] != 0;

  return v6;
}

- (GKMultiplayerBulletin)initWithPushNotification:(id)notification
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin initWithPushNotification:", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = GKMultiplayerBulletin;
  v7 = [(GKBulletin *)&v18 initWithPushNotification:notificationCopy];
  if (v7)
  {
    v8 = [notificationCopy objectForKeyedSubscript:@"g"];
    [(GKGameplayBulletin *)v7 setReceiverGuestPlayerID:v8];

    v9 = [notificationCopy objectForKeyedSubscript:@"i"];
    [(GKGameplayBulletin *)v7 setReceiverPlayerID:v9];

    v10 = [notificationCopy objectForKeyedSubscript:@"I"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [v10 firstObject];
      [(GKGameplayBulletin *)v7 setOriginatorPlayerID:firstObject];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(GKGameplayBulletin *)v7 setOriginatorPlayerID:v10];
      }
    }

    v12 = [notificationCopy objectForKeyedSubscript:@"G"];
    [(GKGameplayBulletin *)v7 setOriginatorGuestPlayerID:v12];

    v13 = [notificationCopy objectForKeyedSubscript:@"d"];
    v14 = [[GKGameDescriptor alloc] initWithPushDictionary:v13];
    [(GKBulletin *)v7 setGameDescriptor:v14];

    v15 = [v13 objectForKeyedSubscript:GKInviteCompatibleVersionsKey];
    [(GKGameplayBulletin *)v7 setCompatibleVersions:v15];

    v16 = [v13 objectForKeyedSubscript:GKInviteCompatibleShortVersionsKey];
    [(GKGameplayBulletin *)v7 setCompatibleShortVersions:v16];
  }

  return v7;
}

- (void)loadLocalizedGameNameForBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    v10 = +[GKClientProxy gameCenterClient];
    v11 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:v10 localPlayer:0];
    v20 = dCopy;
    v12 = [NSArray arrayWithObjects:&v20 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10018589C;
    v15[3] = &unk_100361A58;
    v16 = dCopy;
    selfCopy = self;
    v18 = handlerCopy;
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
      sub_10029511C(dCopy, v14);
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
    message = [(GKBulletin *)self message];
    *buf = 138412290;
    v22 = message;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin setGameInviteMessage original message:  %@", buf, 0xCu);
  }

  gameName = [(GKBulletin *)self gameName];
  originatorPlayer = [(GKGameplayBulletin *)self originatorPlayer];
  v9 = [originatorPlayer displayNameWithOptions:0];

  if (![v9 length] || !objc_msgSend(gameName, "length"))
  {
    [(GKBulletin *)self setMessage:0];
  }

  gameLocation = [(GKGameplayBulletin *)self gameLocation];
  message2 = [(GKBulletin *)self message];
  v12 = [message2 length];
  if (gameLocation == 2)
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

  message3 = [(GKBulletin *)self message];
  v16 = [NSString stringWithFormat:v14, v9, message3];
  [(GKBulletin *)self setMessage:v16];

  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    message4 = [(GKBulletin *)self message];
    *buf = 138412290;
    v22 = message4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "GKMultiplayerBulletin setGameInviteMessage: %@", buf, 0xCu);
  }
}

- (id)customInviteSoundPathForBundleID:(id)d
{
  dCopy = d;
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
  _gkPathForInviteSound = [v7 _gkPathForInviteSound];
  v9 = _gkPathForInviteSound;
  if (_gkPathForInviteSound)
  {
    v10 = _gkPathForInviteSound;
  }

  else
  {
    v10 = &stru_100374F10;
  }

  v11 = v10;

  return v10;
}

@end