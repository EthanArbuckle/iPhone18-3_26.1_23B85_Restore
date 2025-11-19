@interface GKBulletinController
+ (id)allowedPersistedClasses;
+ (id)bulletinQueue;
+ (id)notPersistedBulletinClasses;
+ (id)persistedBulletinClasses;
+ (id)sharedController;
+ (void)startBulletinController;
- (id)bulletinStorageFilePath;
- (id)categoryWithIdentifier:(id)a3 acceptActionTitle:(id)a4 acceptActionIcon:(id)a5 declineActionTitle:(id)a6 declineActionIcon:(id)a7 viewActionTitle:(id)a8 viewActionIcon:(id)a9;
- (id)categoryWithIdentifier:(id)a3 defaultActionTitle:(id)a4 defaultActionIcon:(id)a5 dismissActionTitle:(id)a6 dismissActionIcon:(id)a7;
- (id)getBulletinsOfType:(Class)a3;
- (id)initForTests:(BOOL)a3;
- (id)notificationRequestFromBulletin:(id)a3;
- (id)registeredCategories;
- (id)userInfoFromBulletin:(id)a3;
- (void)clearChallengeBulletinsForChallengeID:(id)a3;
- (void)clearSavedBulletins;
- (void)clearTurnBasedBulletinsForMatchID:(id)a3;
- (void)dealloc;
- (void)expireBulletin:(id)a3;
- (void)loadBulletins;
- (void)presentBulletin:(id)a3;
- (void)registerUserNotifications;
- (void)removeAllBulletins;
- (void)removeBulletin:(id)a3;
- (void)updateSavedBulletins;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)withdrawBulletin:(id)a3;
@end

@implementation GKBulletinController

+ (id)persistedBulletinClasses
{
  if (qword_1003B9450 != -1)
  {
    sub_100296300();
  }

  v3 = qword_1003B9448;

  return v3;
}

+ (id)notPersistedBulletinClasses
{
  if (qword_1003B9460 != -1)
  {
    sub_100296314();
  }

  v3 = qword_1003B9458;

  return v3;
}

+ (id)allowedPersistedClasses
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019EA04;
  block[3] = &unk_100368998;
  block[4] = a1;
  if (qword_1003B9470 != -1)
  {
    dispatch_once(&qword_1003B9470, block);
  }

  v2 = qword_1003B9468;

  return v2;
}

- (id)getBulletinsOfType:(Class)a3
{
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(GKBulletinController *)self bulletins];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(GKBulletinController *)self bulletins];
        v12 = [v11 objectForKey:v10];

        if (objc_opt_isKindOfClass())
        {
          [v4 setObject:v12 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)bulletinQueue
{
  if (qword_1003B9478 != -1)
  {
    sub_100296328();
  }

  v3 = qword_1003B9480;

  return v3;
}

- (id)bulletinStorageFilePath
{
  v2 = GKSupportDataRoot();
  v3 = [v2 stringByAppendingPathComponent:@"Bulletins.bulletins"];

  return v3;
}

- (void)clearSavedBulletins
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKBulletinController+Common clearSavedBulletins", buf, 2u);
  }

  v5 = [objc_opt_class() bulletinQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019EE44;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_sync(v5, block);
}

- (void)updateSavedBulletins
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKBulletinController+Common updateSavedBulletins", buf, 2u);
  }

  v5 = [objc_opt_class() bulletinQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F160;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_sync(v5, block);
}

- (void)loadBulletins
{
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKBulletinController+Common loadBulletins", buf, 2u);
  }

  v6 = [objc_opt_class() bulletinQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019F550;
  v7[3] = &unk_1003676D8;
  v7[4] = self;
  v7[5] = a2;
  dispatch_sync(v6, v7);
}

- (void)clearTurnBasedBulletinsForMatchID:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinController+Common clearTurnBasedBulletinsForMatchID:", buf, 2u);
  }

  v7 = [(GKBulletinController *)self getBulletinsOfType:objc_opt_class()];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019FF80;
  v9[3] = &unk_10036A4C8;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)clearChallengeBulletinsForChallengeID:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinController+Common clearChallengeBulletinsForChallengeID:", buf, 2u);
  }

  v7 = [(GKBulletinController *)self getBulletinsOfType:objc_opt_class()];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A011C;
  v9[3] = &unk_10036A4F0;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

+ (void)startBulletinController
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKBulletinController startBulletinController", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Starting up the bulletin controller", buf, 2u);
  }

  v7 = +[GKDevice currentDevice];
  v8 = [v7 isFocusDevice];

  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A0330;
    block[3] = &unk_100368998;
    block[4] = a1;
    dispatch_async(v9, block);
  }

  else
  {
    v9 = [a1 sharedController];
    [v9 loadBulletins];
  }
}

+ (id)sharedController
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKBulletinController sharedController", v6, 2u);
  }

  if (qword_1003B9490 != -1)
  {
    sub_10029668C();
  }

  v4 = qword_1003B9488;

  return v4;
}

- (void)dealloc
{
  [(UNUserNotificationCenter *)self->_userNotificationCenter removeAllPendingNotificationRequests];
  [(UNUserNotificationCenter *)self->_userNotificationCenter removeAllDeliveredNotifications];
  [(UNUserNotificationCenter *)self->_userNotificationCenter setDelegate:0];
  v3.receiver = self;
  v3.super_class = GKBulletinController;
  [(GKBulletinController *)&v3 dealloc];
}

- (id)initForTests:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = GKBulletinController;
  v4 = [(GKBulletinController *)&v14 init];
  if (v4)
  {
    v5 = [objc_opt_class() bulletinQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A0604;
    block[3] = &unk_100361770;
    v6 = v4;
    v13 = v6;
    dispatch_sync(v5, block);

    if (!a3)
    {
      v7 = objc_alloc_init(GKAcceptedInviteManager);
      acceptedInviteManager = v6->_acceptedInviteManager;
      v6->_acceptedInviteManager = v7;
    }

    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
    {
      sub_1002966B4(a3, v10);
    }
  }

  return v4;
}

- (void)registerUserNotifications
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKBulletinController registerUserNotifications", v12, 2u);
  }

  v5 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.gamecenter"];
  [(GKBulletinController *)self setUserNotificationCenter:v5];

  v6 = [(GKBulletinController *)self userNotificationCenter];
  [v6 setDelegate:self];

  v7 = [(GKBulletinController *)self userNotificationCenter];
  [v7 setWantsNotificationResponsesDelivered];

  v8 = [(GKBulletinController *)self registeredCategories];
  [(GKBulletinController *)self setNotificationCategories:v8];

  v9 = [(GKBulletinController *)self userNotificationCenter];
  v10 = [(GKBulletinController *)self notificationCategories];
  [v9 setNotificationCategories:v10];

  v11 = [(GKBulletinController *)self userNotificationCenter];
  [v11 requestAuthorizationWithOptions:71 completionHandler:&stru_10036A558];
}

- (id)registeredCategories
{
  v3 = objc_alloc_init(NSMutableSet);
  v4 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings APP_STORE];
  v5 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_IGNORE];
  v6 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsAppStoreClose" defaultActionTitle:v4 defaultActionIcon:@"appstore.app" dismissActionTitle:v5 dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v6];

  v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings PLAY_TURN_BASED_TURN_BUTTON_TITLE];
  v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_IGNORE];
  v9 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsPlayClose" defaultActionTitle:v7 defaultActionIcon:@"play" dismissActionTitle:v8 dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v9];

  v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings APP_STORE];
  v11 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings DECLINE_INVITE_BUTTON_TITLE];
  v12 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsAppStoreDecline" defaultActionTitle:v10 defaultActionIcon:@"appstore.app" dismissActionTitle:v11 dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v12];

  v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ACCEPT_INVITE_BUTTON_TITLE];
  v14 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings DECLINE_INVITE_BUTTON_TITLE];
  v15 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsAcceptDecline" defaultActionTitle:v13 defaultActionIcon:@"checkmark.circle" dismissActionTitle:v14 dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v15];

  v16 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings APP_STORE];
  v17 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_IGNORE];
  v18 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsAppStoreIgnore" defaultActionTitle:v16 defaultActionIcon:@"appstore.app" dismissActionTitle:v17 dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v18];

  v19 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_LAUNCH_GAME];
  v20 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_IGNORE];
  v21 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsLaunchGameIgnore" defaultActionTitle:v19 defaultActionIcon:@"play" dismissActionTitle:v20 dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v21];

  v22 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_LAUNCH_GAME];
  v23 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_DECLINE];
  v24 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsLaunchGameDecline" defaultActionTitle:v22 defaultActionIcon:@"play" dismissActionTitle:v23 dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v24];

  v25 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_VIEW];
  v26 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_IGNORE];
  v27 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsViewIgnore" defaultActionTitle:v25 defaultActionIcon:@"play" dismissActionTitle:v26 dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v27];

  v28 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsTTRInitiation" defaultActionTitle:@"File a radar" defaultActionIcon:@"ant.circle" dismissActionTitle:@"Not for now" dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v28];

  v29 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationCategoryActionsTTRUploadRequest" defaultActionTitle:@"Upload in Tap-to-Radar" defaultActionIcon:@"ant.circle" dismissActionTitle:@"Not for now" dismissActionIcon:@"xmark.circle"];
  [v3 addObject:v29];

  v30 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_ACCEPT];
  v31 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_IGNORE];
  v32 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_VIEW_PROFILE];
  v33 = [(GKBulletinController *)self categoryWithIdentifier:@"GKNotificationsCategoryActionsFriendRequest" acceptActionTitle:v30 acceptActionIcon:@"checkmark" declineActionTitle:v31 declineActionIcon:@"xmark" viewActionTitle:v32 viewActionIcon:@"arrow.up.forward.app"];
  [v3 addObject:v33];

  return v3;
}

- (id)categoryWithIdentifier:(id)a3 defaultActionTitle:(id)a4 defaultActionIcon:(id)a5 dismissActionTitle:(id)a6 dismissActionIcon:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  if ([v12 length])
  {
    v16 = [UNNotificationActionIcon iconWithSystemImageName:v12];
    v17 = [UNNotificationAction actionWithIdentifier:@"GKDefault" title:v11 options:0 icon:v16];
  }

  else
  {
    v17 = [UNNotificationAction actionWithIdentifier:@"GKDefault" title:v11 options:0 icon:0];
  }

  if ([v14 length])
  {
    v18 = [UNNotificationActionIcon iconWithSystemImageName:v14];
    v19 = [UNNotificationAction actionWithIdentifier:@"GKDismissed" title:v13 options:0 icon:v18];
  }

  else
  {
    v19 = [UNNotificationAction actionWithIdentifier:@"GKDismissed" title:v13 options:0 icon:0];
  }

  v23[0] = v17;
  v23[1] = v19;
  v20 = [NSArray arrayWithObjects:v23 count:2];
  v21 = [UNNotificationCategory categoryWithIdentifier:v15 actions:v20 intentIdentifiers:&__NSArray0__struct options:1];

  return v21;
}

- (id)categoryWithIdentifier:(id)a3 acceptActionTitle:(id)a4 acceptActionIcon:(id)a5 declineActionTitle:(id)a6 declineActionIcon:(id)a7 viewActionTitle:(id)a8 viewActionIcon:(id)a9
{
  v14 = a4;
  v15 = a5;
  v31 = a6;
  v16 = a7;
  v29 = a8;
  v17 = a9;
  v18 = a3;
  if ([v15 length])
  {
    v19 = [UNNotificationActionIcon iconWithSystemImageName:v15];
    v20 = [UNNotificationAction actionWithIdentifier:@"GKAccepted" title:v14 options:0 icon:v19];
  }

  else
  {
    v20 = [UNNotificationAction actionWithIdentifier:@"GKAccepted" title:v14 options:0 icon:0];
  }

  v30 = v14;
  if ([v16 length])
  {
    v21 = [UNNotificationActionIcon iconWithSystemImageName:v16];
    v22 = [UNNotificationAction actionWithIdentifier:@"GKDeclined" title:v31 options:0 icon:v21];
  }

  else
  {
    v22 = [UNNotificationAction actionWithIdentifier:@"GKDeclined" title:v31 options:0 icon:0];
  }

  if ([v17 length])
  {
    v23 = [UNNotificationActionIcon iconWithSystemImageName:v17];
    v24 = v29;
    v25 = [UNNotificationAction actionWithIdentifier:@"GKView" title:v29 options:0 icon:v23];
  }

  else
  {
    v24 = v29;
    v25 = [UNNotificationAction actionWithIdentifier:@"GKView" title:v29 options:0 icon:0];
  }

  v32[0] = v20;
  v32[1] = v22;
  v32[2] = v25;
  v26 = [NSArray arrayWithObjects:v32 count:3];
  v27 = [UNNotificationCategory categoryWithIdentifier:v18 actions:v26 intentIdentifiers:&__NSArray0__struct options:0];

  return v27;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v47 = a3;
  v7 = a4;
  v48 = a5;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKBulletinControlleriOS userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:", &buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "response: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_1001A1904;
  v59 = sub_1001A1914;
  v60 = 0;
  v12 = [objc_opt_class() bulletinQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A191C;
  block[3] = &unk_100363D80;
  p_buf = &buf;
  block[4] = self;
  v13 = v7;
  v51 = v13;
  dispatch_sync(v12, block);

  if (*(*(&buf + 1) + 40))
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = *(*(&buf + 1) + 40);
      *v54 = 138412290;
      v55 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "bulletin: %@", v54, 0xCu);
    }

    v46 = [v13 actionIdentifier];
    v17 = [v13 notification];
    v18 = [v17 request];
    v19 = [v18 content];
    v20 = [v19 expirationDate];
    if (v20)
    {
      v21 = [v13 notification];
      v22 = [v21 request];
      v23 = [v22 content];
      v24 = [v23 expirationDate];
      [v24 timeIntervalSinceNow];
      v26 = v25 > 0.0;

      if (!v26)
      {
        v27 = &GKBulletinExpiredActionID;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v33 = [v13 actionIdentifier];
    v34 = [v33 isEqualToString:UNNotificationDefaultActionIdentifier];

    if (v34)
    {
      v27 = &GKBulletinDefaultActionID;
    }

    else
    {
      v35 = [v13 actionIdentifier];
      v36 = [v35 isEqualToString:UNNotificationDismissActionIdentifier];

      if (!v36)
      {
        v37 = v46;
        if (v46)
        {
          goto LABEL_27;
        }

LABEL_29:
        v29 = v37;
        if (!os_log_GKGeneral)
        {
          v43 = GKOSLoggers();
        }

        v44 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v45 = *(*(&buf + 1) + 40);
          *v54 = 138412290;
          v55 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "no action for bulletin: %@", v54, 0xCu);
        }

        goto LABEL_33;
      }

      v27 = &GKBulletinDismissedActionID;
    }

LABEL_26:
    v37 = *v27;

    if (v37)
    {
LABEL_27:
      v29 = v37;
      [*(*(&buf + 1) + 40) handleAction:v37];
      v38 = [(GKBulletinController *)self userNotificationCenter];
      v39 = [v13 notification];
      v40 = [v39 request];
      v41 = [v40 identifier];
      v53 = v41;
      v42 = [NSArray arrayWithObjects:&v53 count:1];
      [v38 removeDeliveredNotificationsWithIdentifiers:v42];

      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (!os_log_GKGeneral)
  {
    v28 = GKOSLoggers();
  }

  v29 = os_log_GKMatch;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [v13 notification];
    v31 = [v30 request];
    v32 = [v31 identifier];
    *v54 = 138412290;
    v55 = v32;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "no bulletin for ID: %@", v54, 0xCu);
  }

LABEL_33:

  v48[2]();
  _Block_object_dispose(&buf, 8);
}

- (void)removeBulletin:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinController removeBulletin:", buf, 2u);
  }

  v7 = [(GKBulletinController *)self userNotificationCenter];
  v8 = [v4 recordID];
  v23 = v8;
  v9 = [NSArray arrayWithObjects:&v23 count:1];
  [v7 removeDeliveredNotificationsWithIdentifiers:v9];

  v10 = [(GKBulletinController *)self userNotificationCenter];
  v11 = [v4 recordID];
  v22 = v11;
  v12 = [NSArray arrayWithObjects:&v22 count:1];
  [v10 removePendingNotificationRequestsWithIdentifiers:v12];

  v13 = [objc_opt_class() bulletinQueue];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001A1BC8;
  v18 = &unk_1003610B8;
  v19 = self;
  v20 = v4;
  v14 = v4;
  dispatch_sync(v13, &v15);

  [(GKBulletinController *)self updateSavedBulletins:v15];
}

- (void)withdrawBulletin:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinControlleriOS withdrawBullentin", v7, 2u);
  }

  [(GKBulletinController *)self removeBulletin:v4];
}

- (void)expireBulletin:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinControlleriOS expireBulletin:", v7, 2u);
  }

  [(GKBulletinController *)self removeBulletin:v4];
}

- (id)userInfoFromBulletin:(id)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKBulletinController userInfoFromBulletin:", v27, 2u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v7 = [v3 acceptAction];

  if (v7)
  {
    v8 = [v3 acceptAction];
    v9 = [v8 actionDictionary];
    [v6 setObject:v9 forKey:GKBulletinActionDictionaryAcceptKey];

    v10 = &GKBulletinActionDictionaryDefaultKey;
  }

  else
  {
    v11 = [v3 defaultAction];

    if (!v11)
    {
      goto LABEL_10;
    }

    v10 = &GKBulletinActionDictionaryAcceptKey;
  }

  v12 = [v3 defaultAction];
  v13 = [v12 actionDictionary];
  [v6 setObject:v13 forKey:*v10];

LABEL_10:
  v14 = [v3 defaultAction];

  if (v14)
  {
    v15 = [v3 defaultAction];
    v16 = [v15 actionDictionary];
    [v6 setObject:v16 forKey:GKBulletinActionDictionaryDefaultKey];
  }

  v17 = [v3 declineAction];

  if (v17)
  {
    v18 = [v3 declineAction];
  }

  else
  {
    v19 = [v3 dismissAction];

    if (!v19)
    {
      goto LABEL_17;
    }

    v18 = [v3 dismissAction];
  }

  v20 = v18;
  v21 = [v18 actionDictionary];
  [v6 setObject:v21 forKey:GKBulletinActionDictionaryDeclineKey];

LABEL_17:
  v22 = [v3 recordID];

  if (v22)
  {
    v23 = [v3 recordID];
    [v6 setObject:v23 forKey:GKBulletinRecordIDUserDataKey];
  }

  v24 = [v3 categoryIdentifier];

  if (v24)
  {
    v25 = [v3 categoryIdentifier];
    [v6 setObject:v25 forKey:GKBulletinCategoryIDUserDataKey];
  }

  return v6;
}

- (id)notificationRequestFromBulletin:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinController userNotificationFromBulletin:", buf, 2u);
  }

  v7 = objc_alloc_init(UNMutableNotificationContent);
  v8 = [v4 date];
  [v7 setDate:v8];

  v9 = [v4 expirationDate];
  [v7 setExpirationDate:v9];

  v10 = [v4 message];
  [v7 setBody:v10];

  v11 = [v4 title];
  [v7 setTitle:v11];

  v12 = [(GKBulletinController *)self userInfoFromBulletin:v4];
  [v7 setUserInfo:v12];

  [v7 setShouldBackgroundDefaultAction:1];
  v13 = +[GKApplicationWorkspace defaultWorkspace];
  LODWORD(v11) = [v13 applicationIsInstalled:@"com.apple.gamecenter.widgets"];

  if (v11)
  {
    v14 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.gamecenter.widgets"];
    [v7 setIcon:v14];
  }

  v15 = [v4 categoryIdentifier];
  v16 = [v15 length];

  if (v16)
  {
    v17 = [v4 categoryIdentifier];
    [v7 setCategoryIdentifier:v17];
  }

  if ([v4 hasSound])
  {
    v18 = [UNMutableNotificationSound soundWithAlertType:17];
    if ([v4 bulletinType] != 2)
    {
      v19 = [v4 soundPath];
      v20 = [v19 length];

      if (v20)
      {
        v21 = [v4 soundPath];
      }

      else
      {
        v22 = GKGameCenterNotificationsBundle();
        v21 = [v22 pathForResource:@"GKInvite" ofType:@"caf"];
      }

      v23 = [NSURL fileURLWithPath:v21];
      [v18 setToneFileURL:v23];
    }

    [v7 setSound:v18];
  }

  v24 = [v4 gameIcon];
  if (v24)
  {
    v25 = v24;
    v26 = [v4 gameIcon];
    v27 = [v26 absoluteString];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [v4 gameIcon];
      v30 = [v29 absoluteString];
      v31 = [UNNotificationIcon iconAtPath:v30];

      [v7 setIcon:v31];
      [v7 setShouldShowSubordinateIcon:1];
    }
  }

  v32 = [v4 bulletinType];
  if (v32 <= 399)
  {
    if ((v32 - 200) >= 2 && v32 != 2)
    {
      goto LABEL_27;
    }

LABEL_26:
    [v7 setInterruptionLevel:2];
    goto LABEL_27;
  }

  if (v32 == 400 || v32 == 1700 || v32 == 600)
  {
    goto LABEL_26;
  }

LABEL_27:
  v33 = objc_opt_new();
  v34 = [v4 attachments];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001A24EC;
  v39[3] = &unk_10036A580;
  v40 = v33;
  v35 = v33;
  [v34 enumerateObjectsUsingBlock:v39];

  [v7 setAttachments:v35];
  v36 = [v4 recordID];
  v37 = [UNNotificationRequest requestWithIdentifier:v36 content:v7 trigger:0];

  return v37;
}

- (void)presentBulletin:(id)a3
{
  v4 = a3;
  v5 = [(GKBulletinController *)self userNotificationCenter];
  v6 = [v5 notificationSettings];
  v7 = [v6 authorizationStatus];

  if (v7 > 1)
  {
    v10 = [(GKBulletinController *)self notificationCategories];
    v11 = [v4 updatedNotificationCategoriesOrNil:v10];

    if (v11)
    {
      [(GKBulletinController *)self setNotificationCategories:v11];
      v12 = [(GKBulletinController *)self userNotificationCenter];
      v13 = [(GKBulletinController *)self notificationCategories];
      [v12 setNotificationCategories:v13];
    }

    [v4 reportMetricsForPresented];
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "GKBulletinControlleriOS presentBulletin:", buf, 2u);
    }

    v16 = [objc_opt_class() bulletinQueue];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1001A2978;
    v25 = &unk_1003610B8;
    v26 = self;
    v17 = v4;
    v27 = v17;
    dispatch_sync(v16, &v22);

    [(GKBulletinController *)self updateSavedBulletins:v22];
    v18 = [(GKBulletinController *)self notificationRequestFromBulletin:v17];
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "GKBulletinController: presenting notification request:%@", buf, 0xCu);
    }

    v21 = [(GKBulletinController *)self userNotificationCenter];
    [v21 addNotificationRequest:v18 withCompletionHandler:0];
  }

  else
  {
    v8 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Not displaying notification because notifications are not authorized", buf, 2u);
    }
  }
}

- (void)removeAllBulletins
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKBulletinControlleriOS removeAllBulletins", buf, 2u);
  }

  v5 = [(GKBulletinController *)self userNotificationCenter];
  [v5 removeAllDeliveredNotifications];

  v6 = [objc_opt_class() bulletinQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A2AFC;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_sync(v6, block);

  [(GKBulletinController *)self clearSavedBulletins];
}

@end