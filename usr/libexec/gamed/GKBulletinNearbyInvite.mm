@interface GKBulletinNearbyInvite
- (GKBulletinNearbyInvite)initWithPlayer:(id)player localizedGameName:(id)name inviteDictionary:(id)dictionary;
- (void)handleAction:(id)action;
@end

@implementation GKBulletinNearbyInvite

- (GKBulletinNearbyInvite)initWithPlayer:(id)player localizedGameName:(id)name inviteDictionary:(id)dictionary
{
  playerCopy = player;
  nameCopy = name;
  dictionaryCopy = dictionary;
  v11 = +[GKReporter reporter];
  [v11 reportEvent:GKReporterDomainInviteInitiateType type:GKNearbyInviteInitiate];

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKBulletinNearbyInvite: initWithPlayer: localizedGameName: inviteDictionary", buf, 2u);
  }

  v36.receiver = self;
  v36.super_class = GKBulletinNearbyInvite;
  v14 = [(GKMultiplayerBulletin *)&v36 initWithPushNotification:&__NSDictionary0__struct];
  if (v14)
  {
    v15 = [dictionaryCopy objectForKey:@"adamID"];
    v16 = [dictionaryCopy objectForKey:@"bundleID"];
    v17 = [dictionaryCopy objectForKey:@"inviteMessage"];
    v35 = [playerCopy displayNameWithOptions:0];
    [(GKBulletin *)v14 setMessage:v17];
    [(GKBulletin *)v14 setGameName:nameCopy];
    [(GKGameplayBulletin *)v14 setOriginatorPlayer:playerCopy];
    [(GKMultiplayerBulletin *)v14 setGameInviteMessage];
    message = [(GKBulletin *)v14 message];

    if (message)
    {
      v33 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings GAME_INVITE_NOTIFICATION_TITLE];
      v34 = v17;
      v19 = v15;
      v20 = +[NSDate date];
      [(GKBulletin *)v14 setDate:v20];

      v21 = [NSDate dateWithTimeIntervalSinceNow:600.0];
      [(GKBulletin *)v14 setExpirationDate:v21];

      [(GKBulletin *)v14 setHasSound:1];
      v22 = [(GKMultiplayerBulletin *)v14 customInviteSoundPathForBundleID:v16];
      [(GKBulletin *)v14 setSoundPath:v22];

      [(GKBulletin *)v14 setTitle:v33];
      objc_storeStrong(&v14->_inviteDictionary, dictionary);
      v23 = objc_alloc_init(GKBulletinAction);
      [(GKBulletinAction *)v23 setType:1];
      v24 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ACCEPT_INVITE_BUTTON_TITLE];
      [(GKBulletinAction *)v23 setTitle:v24];

      [(GKBulletinAction *)v23 setAdamID:v15];
      [(GKBulletinAction *)v23 setBundleID:v16];
      v25 = objc_alloc_init(GKBulletinAction);
      [(GKBulletinAction *)v25 setType:0];
      v26 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings DECLINE_INVITE_BUTTON_TITLE];
      [(GKBulletinAction *)v25 setTitle:v26];

      v15 = v19;
      v17 = v34;
      [(GKBulletinAction *)v25 setInfo:&stru_100374F10];
      [(GKBulletin *)v14 setCategoryIdentifier:@"GKNotificationCategoryActionsAcceptDecline"];
      [(GKBulletin *)v14 setDefaultAction:v23];
      [(GKBulletin *)v14 setDeclineAction:v25];
      [(GKBulletin *)v14 setBulletinType:600];

      v27 = v35;
    }

    else
    {
      v28 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v29 = GKOSLoggers();
        v28 = os_log_GKGeneral;
      }

      v27 = v35;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_1002962BC(v28);
      }

      v30 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
        v30 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v38 = v35;
        v39 = 2112;
        v40 = nameCopy;
        v41 = 2112;
        v42 = v17;
        v43 = 2112;
        v44 = dictionaryCopy;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "no message in nearby invite -- displayName:%@ gameName:%@ message:%@ from dict:%@", buf, 0x2Au);
      }
    }
  }

  return v14;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinNearbyInvite: handleAction:", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = GKBulletinNearbyInvite;
  [(GKBulletin *)&v16 handleAction:actionCopy];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle nearby invite action: %@", buf, 0xCu);
  }

  inviteDictionary = [(GKBulletinNearbyInvite *)self inviteDictionary];
  v10 = [inviteDictionary objectForKey:@"bundleID"];
  v11 = [GKClientProxy clientForBundleID:v10];
  if (v11)
  {
    if ([actionCopy isEqualToString:@"GKAccepted"])
    {
      v12 = 1;
    }

    else
    {
      v12 = [actionCopy isEqualToString:@"GKDefault"];
    }

    v13 = [inviteDictionary mutableCopy];
    v14 = [NSNumber numberWithBool:v12];
    [v13 setObject:v14 forKey:@"accepted"];

    if ((v12 & 1) == 0)
    {
      v15 = [NSNumber numberWithInteger:1];
      [v13 setObject:v15 forKey:@"declineReason"];
    }

    [v11 respondedToNearbyInvite:v13];
  }
}

@end