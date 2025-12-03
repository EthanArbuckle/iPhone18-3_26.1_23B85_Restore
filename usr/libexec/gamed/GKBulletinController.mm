@interface GKBulletinController
+ (id)allowedPersistedClasses;
+ (id)bulletinQueue;
+ (id)notPersistedBulletinClasses;
+ (id)persistedBulletinClasses;
+ (id)sharedController;
+ (void)startBulletinController;
- (id)bulletinStorageFilePath;
- (id)categoryWithIdentifier:(id)identifier acceptActionTitle:(id)title acceptActionIcon:(id)icon declineActionTitle:(id)actionTitle declineActionIcon:(id)actionIcon viewActionTitle:(id)viewActionTitle viewActionIcon:(id)viewActionIcon;
- (id)categoryWithIdentifier:(id)identifier defaultActionTitle:(id)title defaultActionIcon:(id)icon dismissActionTitle:(id)actionTitle dismissActionIcon:(id)actionIcon;
- (id)getBulletinsOfType:(Class)type;
- (id)initForTests:(BOOL)tests;
- (id)notificationRequestFromBulletin:(id)bulletin;
- (id)registeredCategories;
- (id)userInfoFromBulletin:(id)bulletin;
- (void)clearChallengeBulletinsForChallengeID:(id)d;
- (void)clearSavedBulletins;
- (void)clearTurnBasedBulletinsForMatchID:(id)d;
- (void)dealloc;
- (void)expireBulletin:(id)bulletin;
- (void)loadBulletins;
- (void)presentBulletin:(id)bulletin;
- (void)registerUserNotifications;
- (void)removeAllBulletins;
- (void)removeBulletin:(id)bulletin;
- (void)updateSavedBulletins;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)withdrawBulletin:(id)bulletin;
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
  block[4] = self;
  if (qword_1003B9470 != -1)
  {
    dispatch_once(&qword_1003B9470, block);
  }

  v2 = qword_1003B9468;

  return v2;
}

- (id)getBulletinsOfType:(Class)type
{
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  bulletins = [(GKBulletinController *)self bulletins];
  v6 = [bulletins countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(bulletins);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        bulletins2 = [(GKBulletinController *)self bulletins];
        v12 = [bulletins2 objectForKey:v10];

        if (objc_opt_isKindOfClass())
        {
          [v4 setObject:v12 forKey:v10];
        }
      }

      v7 = [bulletins countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  bulletinQueue = [objc_opt_class() bulletinQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019EE44;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_sync(bulletinQueue, block);
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

  bulletinQueue = [objc_opt_class() bulletinQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F160;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_sync(bulletinQueue, block);
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

  bulletinQueue = [objc_opt_class() bulletinQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019F550;
  v7[3] = &unk_1003676D8;
  v7[4] = self;
  v7[5] = a2;
  dispatch_sync(bulletinQueue, v7);
}

- (void)clearTurnBasedBulletinsForMatchID:(id)d
{
  dCopy = d;
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
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)clearChallengeBulletinsForChallengeID:(id)d
{
  dCopy = d;
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
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
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
  isFocusDevice = [v7 isFocusDevice];

  if (isFocusDevice)
  {
    sharedController = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A0330;
    block[3] = &unk_100368998;
    block[4] = self;
    dispatch_async(sharedController, block);
  }

  else
  {
    sharedController = [self sharedController];
    [sharedController loadBulletins];
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

- (id)initForTests:(BOOL)tests
{
  v14.receiver = self;
  v14.super_class = GKBulletinController;
  v4 = [(GKBulletinController *)&v14 init];
  if (v4)
  {
    bulletinQueue = [objc_opt_class() bulletinQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A0604;
    block[3] = &unk_100361770;
    v6 = v4;
    v13 = v6;
    dispatch_sync(bulletinQueue, block);

    if (!tests)
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
      sub_1002966B4(tests, v10);
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

  userNotificationCenter = [(GKBulletinController *)self userNotificationCenter];
  [userNotificationCenter setDelegate:self];

  userNotificationCenter2 = [(GKBulletinController *)self userNotificationCenter];
  [userNotificationCenter2 setWantsNotificationResponsesDelivered];

  registeredCategories = [(GKBulletinController *)self registeredCategories];
  [(GKBulletinController *)self setNotificationCategories:registeredCategories];

  userNotificationCenter3 = [(GKBulletinController *)self userNotificationCenter];
  notificationCategories = [(GKBulletinController *)self notificationCategories];
  [userNotificationCenter3 setNotificationCategories:notificationCategories];

  userNotificationCenter4 = [(GKBulletinController *)self userNotificationCenter];
  [userNotificationCenter4 requestAuthorizationWithOptions:71 completionHandler:&stru_10036A558];
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

- (id)categoryWithIdentifier:(id)identifier defaultActionTitle:(id)title defaultActionIcon:(id)icon dismissActionTitle:(id)actionTitle dismissActionIcon:(id)actionIcon
{
  titleCopy = title;
  iconCopy = icon;
  actionTitleCopy = actionTitle;
  actionIconCopy = actionIcon;
  identifierCopy = identifier;
  if ([iconCopy length])
  {
    v16 = [UNNotificationActionIcon iconWithSystemImageName:iconCopy];
    v17 = [UNNotificationAction actionWithIdentifier:@"GKDefault" title:titleCopy options:0 icon:v16];
  }

  else
  {
    v17 = [UNNotificationAction actionWithIdentifier:@"GKDefault" title:titleCopy options:0 icon:0];
  }

  if ([actionIconCopy length])
  {
    v18 = [UNNotificationActionIcon iconWithSystemImageName:actionIconCopy];
    v19 = [UNNotificationAction actionWithIdentifier:@"GKDismissed" title:actionTitleCopy options:0 icon:v18];
  }

  else
  {
    v19 = [UNNotificationAction actionWithIdentifier:@"GKDismissed" title:actionTitleCopy options:0 icon:0];
  }

  v23[0] = v17;
  v23[1] = v19;
  v20 = [NSArray arrayWithObjects:v23 count:2];
  v21 = [UNNotificationCategory categoryWithIdentifier:identifierCopy actions:v20 intentIdentifiers:&__NSArray0__struct options:1];

  return v21;
}

- (id)categoryWithIdentifier:(id)identifier acceptActionTitle:(id)title acceptActionIcon:(id)icon declineActionTitle:(id)actionTitle declineActionIcon:(id)actionIcon viewActionTitle:(id)viewActionTitle viewActionIcon:(id)viewActionIcon
{
  titleCopy = title;
  iconCopy = icon;
  actionTitleCopy = actionTitle;
  actionIconCopy = actionIcon;
  viewActionTitleCopy = viewActionTitle;
  viewActionIconCopy = viewActionIcon;
  identifierCopy = identifier;
  if ([iconCopy length])
  {
    v19 = [UNNotificationActionIcon iconWithSystemImageName:iconCopy];
    v20 = [UNNotificationAction actionWithIdentifier:@"GKAccepted" title:titleCopy options:0 icon:v19];
  }

  else
  {
    v20 = [UNNotificationAction actionWithIdentifier:@"GKAccepted" title:titleCopy options:0 icon:0];
  }

  v30 = titleCopy;
  if ([actionIconCopy length])
  {
    v21 = [UNNotificationActionIcon iconWithSystemImageName:actionIconCopy];
    v22 = [UNNotificationAction actionWithIdentifier:@"GKDeclined" title:actionTitleCopy options:0 icon:v21];
  }

  else
  {
    v22 = [UNNotificationAction actionWithIdentifier:@"GKDeclined" title:actionTitleCopy options:0 icon:0];
  }

  if ([viewActionIconCopy length])
  {
    v23 = [UNNotificationActionIcon iconWithSystemImageName:viewActionIconCopy];
    v24 = viewActionTitleCopy;
    v25 = [UNNotificationAction actionWithIdentifier:@"GKView" title:viewActionTitleCopy options:0 icon:v23];
  }

  else
  {
    v24 = viewActionTitleCopy;
    v25 = [UNNotificationAction actionWithIdentifier:@"GKView" title:viewActionTitleCopy options:0 icon:0];
  }

  v32[0] = v20;
  v32[1] = v22;
  v32[2] = v25;
  v26 = [NSArray arrayWithObjects:v32 count:3];
  v27 = [UNNotificationCategory categoryWithIdentifier:identifierCopy actions:v26 intentIdentifiers:&__NSArray0__struct options:0];

  return v27;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
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
    *(&buf + 4) = responseCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "response: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_1001A1904;
  v59 = sub_1001A1914;
  v60 = 0;
  bulletinQueue = [objc_opt_class() bulletinQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A191C;
  block[3] = &unk_100363D80;
  p_buf = &buf;
  block[4] = self;
  v13 = responseCopy;
  v51 = v13;
  dispatch_sync(bulletinQueue, block);

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

    actionIdentifier = [v13 actionIdentifier];
    notification = [v13 notification];
    request = [notification request];
    content = [request content];
    expirationDate = [content expirationDate];
    if (expirationDate)
    {
      notification2 = [v13 notification];
      request2 = [notification2 request];
      content2 = [request2 content];
      expirationDate2 = [content2 expirationDate];
      [expirationDate2 timeIntervalSinceNow];
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

    actionIdentifier2 = [v13 actionIdentifier];
    v34 = [actionIdentifier2 isEqualToString:UNNotificationDefaultActionIdentifier];

    if (v34)
    {
      v27 = &GKBulletinDefaultActionID;
    }

    else
    {
      actionIdentifier3 = [v13 actionIdentifier];
      v36 = [actionIdentifier3 isEqualToString:UNNotificationDismissActionIdentifier];

      if (!v36)
      {
        v37 = actionIdentifier;
        if (actionIdentifier)
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
      userNotificationCenter = [(GKBulletinController *)self userNotificationCenter];
      notification3 = [v13 notification];
      request3 = [notification3 request];
      identifier = [request3 identifier];
      v53 = identifier;
      v42 = [NSArray arrayWithObjects:&v53 count:1];
      [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v42];

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
    notification4 = [v13 notification];
    request4 = [notification4 request];
    identifier2 = [request4 identifier];
    *v54 = 138412290;
    v55 = identifier2;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "no bulletin for ID: %@", v54, 0xCu);
  }

LABEL_33:

  handlerCopy[2]();
  _Block_object_dispose(&buf, 8);
}

- (void)removeBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
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

  userNotificationCenter = [(GKBulletinController *)self userNotificationCenter];
  recordID = [bulletinCopy recordID];
  v23 = recordID;
  v9 = [NSArray arrayWithObjects:&v23 count:1];
  [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v9];

  userNotificationCenter2 = [(GKBulletinController *)self userNotificationCenter];
  recordID2 = [bulletinCopy recordID];
  v22 = recordID2;
  v12 = [NSArray arrayWithObjects:&v22 count:1];
  [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v12];

  bulletinQueue = [objc_opt_class() bulletinQueue];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001A1BC8;
  v18 = &unk_1003610B8;
  selfCopy = self;
  v20 = bulletinCopy;
  v14 = bulletinCopy;
  dispatch_sync(bulletinQueue, &v15);

  [(GKBulletinController *)self updateSavedBulletins:v15];
}

- (void)withdrawBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
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

  [(GKBulletinController *)self removeBulletin:bulletinCopy];
}

- (void)expireBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
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

  [(GKBulletinController *)self removeBulletin:bulletinCopy];
}

- (id)userInfoFromBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
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
  acceptAction = [bulletinCopy acceptAction];

  if (acceptAction)
  {
    acceptAction2 = [bulletinCopy acceptAction];
    actionDictionary = [acceptAction2 actionDictionary];
    [v6 setObject:actionDictionary forKey:GKBulletinActionDictionaryAcceptKey];

    v10 = &GKBulletinActionDictionaryDefaultKey;
  }

  else
  {
    defaultAction = [bulletinCopy defaultAction];

    if (!defaultAction)
    {
      goto LABEL_10;
    }

    v10 = &GKBulletinActionDictionaryAcceptKey;
  }

  defaultAction2 = [bulletinCopy defaultAction];
  actionDictionary2 = [defaultAction2 actionDictionary];
  [v6 setObject:actionDictionary2 forKey:*v10];

LABEL_10:
  defaultAction3 = [bulletinCopy defaultAction];

  if (defaultAction3)
  {
    defaultAction4 = [bulletinCopy defaultAction];
    actionDictionary3 = [defaultAction4 actionDictionary];
    [v6 setObject:actionDictionary3 forKey:GKBulletinActionDictionaryDefaultKey];
  }

  declineAction = [bulletinCopy declineAction];

  if (declineAction)
  {
    declineAction2 = [bulletinCopy declineAction];
  }

  else
  {
    dismissAction = [bulletinCopy dismissAction];

    if (!dismissAction)
    {
      goto LABEL_17;
    }

    declineAction2 = [bulletinCopy dismissAction];
  }

  v20 = declineAction2;
  actionDictionary4 = [declineAction2 actionDictionary];
  [v6 setObject:actionDictionary4 forKey:GKBulletinActionDictionaryDeclineKey];

LABEL_17:
  recordID = [bulletinCopy recordID];

  if (recordID)
  {
    recordID2 = [bulletinCopy recordID];
    [v6 setObject:recordID2 forKey:GKBulletinRecordIDUserDataKey];
  }

  categoryIdentifier = [bulletinCopy categoryIdentifier];

  if (categoryIdentifier)
  {
    categoryIdentifier2 = [bulletinCopy categoryIdentifier];
    [v6 setObject:categoryIdentifier2 forKey:GKBulletinCategoryIDUserDataKey];
  }

  return v6;
}

- (id)notificationRequestFromBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
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
  date = [bulletinCopy date];
  [v7 setDate:date];

  expirationDate = [bulletinCopy expirationDate];
  [v7 setExpirationDate:expirationDate];

  message = [bulletinCopy message];
  [v7 setBody:message];

  title = [bulletinCopy title];
  [v7 setTitle:title];

  v12 = [(GKBulletinController *)self userInfoFromBulletin:bulletinCopy];
  [v7 setUserInfo:v12];

  [v7 setShouldBackgroundDefaultAction:1];
  v13 = +[GKApplicationWorkspace defaultWorkspace];
  LODWORD(title) = [v13 applicationIsInstalled:@"com.apple.gamecenter.widgets"];

  if (title)
  {
    v14 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.gamecenter.widgets"];
    [v7 setIcon:v14];
  }

  categoryIdentifier = [bulletinCopy categoryIdentifier];
  v16 = [categoryIdentifier length];

  if (v16)
  {
    categoryIdentifier2 = [bulletinCopy categoryIdentifier];
    [v7 setCategoryIdentifier:categoryIdentifier2];
  }

  if ([bulletinCopy hasSound])
  {
    v18 = [UNMutableNotificationSound soundWithAlertType:17];
    if ([bulletinCopy bulletinType] != 2)
    {
      soundPath = [bulletinCopy soundPath];
      v20 = [soundPath length];

      if (v20)
      {
        soundPath2 = [bulletinCopy soundPath];
      }

      else
      {
        v22 = GKGameCenterNotificationsBundle();
        soundPath2 = [v22 pathForResource:@"GKInvite" ofType:@"caf"];
      }

      v23 = [NSURL fileURLWithPath:soundPath2];
      [v18 setToneFileURL:v23];
    }

    [v7 setSound:v18];
  }

  gameIcon = [bulletinCopy gameIcon];
  if (gameIcon)
  {
    v25 = gameIcon;
    gameIcon2 = [bulletinCopy gameIcon];
    absoluteString = [gameIcon2 absoluteString];
    v28 = [absoluteString length];

    if (v28)
    {
      gameIcon3 = [bulletinCopy gameIcon];
      absoluteString2 = [gameIcon3 absoluteString];
      v31 = [UNNotificationIcon iconAtPath:absoluteString2];

      [v7 setIcon:v31];
      [v7 setShouldShowSubordinateIcon:1];
    }
  }

  bulletinType = [bulletinCopy bulletinType];
  if (bulletinType <= 399)
  {
    if ((bulletinType - 200) >= 2 && bulletinType != 2)
    {
      goto LABEL_27;
    }

LABEL_26:
    [v7 setInterruptionLevel:2];
    goto LABEL_27;
  }

  if (bulletinType == 400 || bulletinType == 1700 || bulletinType == 600)
  {
    goto LABEL_26;
  }

LABEL_27:
  v33 = objc_opt_new();
  attachments = [bulletinCopy attachments];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001A24EC;
  v39[3] = &unk_10036A580;
  v40 = v33;
  v35 = v33;
  [attachments enumerateObjectsUsingBlock:v39];

  [v7 setAttachments:v35];
  recordID = [bulletinCopy recordID];
  v37 = [UNNotificationRequest requestWithIdentifier:recordID content:v7 trigger:0];

  return v37;
}

- (void)presentBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  userNotificationCenter = [(GKBulletinController *)self userNotificationCenter];
  notificationSettings = [userNotificationCenter notificationSettings];
  authorizationStatus = [notificationSettings authorizationStatus];

  if (authorizationStatus > 1)
  {
    notificationCategories = [(GKBulletinController *)self notificationCategories];
    v11 = [bulletinCopy updatedNotificationCategoriesOrNil:notificationCategories];

    if (v11)
    {
      [(GKBulletinController *)self setNotificationCategories:v11];
      userNotificationCenter2 = [(GKBulletinController *)self userNotificationCenter];
      notificationCategories2 = [(GKBulletinController *)self notificationCategories];
      [userNotificationCenter2 setNotificationCategories:notificationCategories2];
    }

    [bulletinCopy reportMetricsForPresented];
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

    bulletinQueue = [objc_opt_class() bulletinQueue];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1001A2978;
    v25 = &unk_1003610B8;
    selfCopy = self;
    v17 = bulletinCopy;
    v27 = v17;
    dispatch_sync(bulletinQueue, &v22);

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

    userNotificationCenter3 = [(GKBulletinController *)self userNotificationCenter];
    [userNotificationCenter3 addNotificationRequest:v18 withCompletionHandler:0];
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

  userNotificationCenter = [(GKBulletinController *)self userNotificationCenter];
  [userNotificationCenter removeAllDeliveredNotifications];

  bulletinQueue = [objc_opt_class() bulletinQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A2AFC;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_sync(bulletinQueue, block);

  [(GKBulletinController *)self clearSavedBulletins];
}

@end