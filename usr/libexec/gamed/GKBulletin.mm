@interface GKBulletin
+ (BOOL)playerIsLocal:(id)local;
+ (BOOL)shouldProcessNotification;
+ (NSDictionary)bulletinClassForPushCommand;
+ (id)cacheTransactionGroup;
+ (id)syncQueue;
+ (void)bulletinsForPushNotification:(id)notification withHandler:(id)handler;
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
+ (void)performAsync:(id)async;
- (GKBulletin)initWithCoder:(id)coder;
- (GKBulletin)initWithPushNotification:(id)notification;
- (NSString)metricsBundleID;
- (id)dataFrom64String:(id)string;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)executeBulletinWithBulletinController:(id)controller;
- (void)handleAction:(id)action;
- (void)launchBulletinWithCompletionHandler:(id)handler;
- (void)reportMetricsForActionID:(id)d withAdditionalFields:(id)fields;
- (void)reportMetricsWithEventType:(id)type additionalFields:(id)fields;
- (void)reportMetricsWithHostAppBundleId:(id)id fields:(id)fields;
@end

@implementation GKBulletin

+ (id)syncQueue
{
  if (qword_1003B9420 != -1)
  {
    sub_100294AE4();
  }

  v3 = qword_1003B9418;

  return v3;
}

+ (NSDictionary)bulletinClassForPushCommand
{
  if (qword_1003B9430 != -1)
  {
    sub_100294AF8();
  }

  v3 = qword_1003B9428;

  return v3;
}

+ (void)bulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKBulletin bulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v10 = [notificationCopy objectForKey:GKPushCommandKey];
  bulletinClassForPushCommand = [self bulletinClassForPushCommand];
  v12 = [bulletinClassForPushCommand objectForKeyedSubscript:v10];

  if ([v12 shouldProcessNotification])
  {
    [v12 loadBulletinsForPushNotification:notificationCopy withHandler:handlerCopy];
  }

  else
  {
    if (!v12)
    {
      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      v14 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PUSH FAILED: Invalid payload", v15, 2u);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100294B0C(v10, self, a2);
  }
}

- (GKBulletin)initWithCoder:(id)coder
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin initWithCoder:", buf, 2u);
  }

  v44.receiver = self;
  v44.super_class = GKBulletin;
  v7 = [(GKBulletin *)&v44 init];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushCommand"];
    v7->_pushCommand = [v8 integerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    recordID = v7->_recordID;
    v7->_recordID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v7->_title;
    v7->_title = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v7->_message;
    v7->_message = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v7->_date;
    v7->_date = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v7->_expirationDate;
    v7->_expirationDate = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasSound"];
    v7->_hasSound = [v19 BOOLValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"soundPath"];
    soundPath = v7->_soundPath;
    v7->_soundPath = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acceptAction"];
    acceptAction = v7->_acceptAction;
    v7->_acceptAction = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultAction"];
    defaultAction = v7->_defaultAction;
    v7->_defaultAction = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dismissAction"];
    dismissAction = v7->_dismissAction;
    v7->_dismissAction = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"declineAction"];
    declineAction = v7->_declineAction;
    v7->_declineAction = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showInListOnly"];
    v7->_showInListOnly = [v30 BOOLValue];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gameName"];
    gameName = v7->_gameName;
    v7->_gameName = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gameIcon"];
    gameIcon = v7->_gameIcon;
    v7->_gameIcon = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gameDescriptor"];
    gameDescriptor = v7->_gameDescriptor;
    v7->_gameDescriptor = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
    categoryIdentifier = v7->_categoryIdentifier;
    v7->_categoryIdentifier = v37;

    v39 = objc_opt_class();
    v40 = [NSSet setWithObjects:v39, objc_opt_class(), 0];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"attachments"];
    attachments = v7->_attachments;
    v7->_attachments = v41;
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
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin encodeWithCoder:", v25, 2u);
  }

  v7 = [NSNumber numberWithInt:[(GKBulletin *)self pushCommand]];
  [coderCopy encodeObject:v7 forKey:@"pushCommand"];

  recordID = [(GKBulletin *)self recordID];
  [coderCopy encodeObject:recordID forKey:@"recordID"];

  title = [(GKBulletin *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  message = [(GKBulletin *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  date = [(GKBulletin *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  expirationDate = [(GKBulletin *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  v13 = [NSNumber numberWithBool:[(GKBulletin *)self hasSound]];
  [coderCopy encodeObject:v13 forKey:@"hasSound"];

  soundPath = [(GKBulletin *)self soundPath];
  [coderCopy encodeObject:soundPath forKey:@"soundPath"];

  acceptAction = [(GKBulletin *)self acceptAction];
  [coderCopy encodeObject:acceptAction forKey:@"acceptAction"];

  defaultAction = [(GKBulletin *)self defaultAction];
  [coderCopy encodeObject:defaultAction forKey:@"defaultAction"];

  dismissAction = [(GKBulletin *)self dismissAction];
  [coderCopy encodeObject:dismissAction forKey:@"dismissAction"];

  declineAction = [(GKBulletin *)self declineAction];
  [coderCopy encodeObject:declineAction forKey:@"declineAction"];

  v19 = [NSNumber numberWithBool:[(GKBulletin *)self showInListOnly]];
  [coderCopy encodeObject:v19 forKey:@"showInListOnly"];

  gameName = [(GKBulletin *)self gameName];
  [coderCopy encodeObject:gameName forKey:@"gameName"];

  gameIcon = [(GKBulletin *)self gameIcon];
  [coderCopy encodeObject:gameIcon forKey:@"gameIcon"];

  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  [coderCopy encodeObject:gameDescriptor forKey:@"gameDescriptor"];

  categoryIdentifier = [(GKBulletin *)self categoryIdentifier];
  [coderCopy encodeObject:categoryIdentifier forKey:@"categoryIdentifier"];

  attachments = [(GKBulletin *)self attachments];
  [coderCopy encodeObject:attachments forKey:@"attachments"];
}

- (id)dataFrom64String:(id)string
{
  stringCopy = string;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKBulletin dataFrom64String:", v8, 2u);
  }

  if (stringCopy)
  {
    v6 = [[NSData alloc] initWithBase64EncodedString:stringCopy options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (GKBulletin)initWithPushNotification:(id)notification
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin initWithPushNotification:", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = GKBulletin;
  v7 = [(GKBulletin *)&v13 init];
  if (v7)
  {
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];
    recordID = v7->_recordID;
    v7->_recordID = uUIDString;

    v11 = [notificationCopy objectForKey:GKPushCommandKey];
    v7->_pushCommand = [v11 integerValue];

    v7->_bulletinType = 0;
  }

  return v7;
}

+ (BOOL)shouldProcessNotification
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKBulletin shouldProcessNotification", v7, 2u);
  }

  v4 = +[GKPreferences shared];
  isGameCenterRestricted = [v4 isGameCenterRestricted];

  return isGameCenterRestricted ^ 1;
}

- (void)executeBulletinWithBulletinController:(id)controller
{
  controllerCopy = controller;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin executeBulletinWithBulletinController:", v7, 2u);
  }

  [controllerCopy presentBulletin:self];
}

+ (void)performAsync:(id)async
{
  asyncCopy = async;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin performAsync:", v8, 2u);
  }

  syncQueue = [self syncQueue];
  dispatch_async(syncQueue, asyncCopy);
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin handleAction:", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle action: %@", buf, 0xCu);
  }

  if (([actionCopy isEqualToString:@"GKDefault"] & 1) != 0 || objc_msgSend(actionCopy, "isEqualToString:", @"GKAccepted"))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10017D4C8;
    v9[3] = &unk_100369E90;
    v9[4] = self;
    v10 = actionCopy;
    [(GKBulletin *)self launchBulletinWithCompletionHandler:v9];
  }

  else
  {
    [(GKBulletin *)self reportMetricsForActionID:actionCopy withAdditionalFields:0];
  }
}

- (void)launchBulletinWithCompletionHandler:(id)handler
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin launchBulletinWithCompletionHandler:", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Launching: %@", buf, 0xCu);
  }

  v9 = self->_acceptAction;
  if (!v9)
  {
    v9 = self->_defaultAction;
  }

  type = [(GKBulletinAction *)v9 type];
  if (type == 2)
  {
    info = [(GKBulletinAction *)v9 info];
    v20 = [info length];

    if (v20)
    {
      v31[0] = GKRemoteAlertDeeplinkActionPlayerProfileValue;
      v30[0] = GKRemoteAlertDeeplinkActionKey;
      v30[1] = GKRemoteAlertDeeplinkPlayerIdentifierKey;
      info2 = [(GKBulletinAction *)v9 info];
      v31[1] = info2;
      v12 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    }

    else
    {
      v12 = 0;
    }

    v26 = +[GKClientProxy gameCenterClient];
    v13 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v26 credential:0];

    v27 = +[GKGameInternal createGamedGameInternal];
    [v13 openDashboardAsRemoteAlertForGame:v27 hostPID:getpid() deeplink:v12 launchContext:GKDashboardLaunchContextPushNotification];

    handlerCopy[2](handlerCopy, 0);
LABEL_32:

    goto LABEL_33;
  }

  if (type == 1)
  {
    appLaunchTrampolineURL = [(GKBulletinAction *)v9 appLaunchTrampolineURL];

    if (appLaunchTrampolineURL)
    {
      v12 = +[GKClientProxy gameCenterClient];
      v13 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v12 localPlayer:0];
      if (!os_log_GKGeneral)
      {
        v14 = GKOSLoggers();
      }

      v15 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        appLaunchTrampolineURL2 = [(GKBulletinAction *)v9 appLaunchTrampolineURL];
        *buf = 138412290;
        selfCopy = appLaunchTrampolineURL2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Invoking AppLaunchTrampoline with URL: %@", buf, 0xCu);
      }

      appLaunchTrampolineURL3 = [(GKBulletinAction *)v9 appLaunchTrampolineURL];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10017D9F0;
      v28[3] = &unk_100369EB8;
      v29 = handlerCopy;
      [v13 invokeASCAppLaunchTrampolineWithURL:appLaunchTrampolineURL3 handler:v28];

      goto LABEL_32;
    }

    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100294BE4(v25);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_100294C28(v9, v23);
    }
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_33:
}

- (NSString)metricsBundleID
{
  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor bundleIdentifier];

  return bundleIdentifier;
}

- (void)reportMetricsForActionID:(id)d withAdditionalFields:(id)fields
{
  v10 = @"actionType";
  dCopy = d;
  fieldsCopy = fields;
  dCopy2 = d;
  v8 = [NSDictionary dictionaryWithObjects:&dCopy forKeys:&v10 count:1];

  v9 = [v8 _gkAddEntriesFrom:fieldsCopy];

  [(GKBulletin *)self reportMetricsWithEventType:@"click" additionalFields:v9];
}

- (void)reportMetricsWithEventType:(id)type additionalFields:(id)fields
{
  fieldsCopy = fields;
  typeCopy = type;
  metricsBundleID = [(GKBulletin *)self metricsBundleID];
  v9 = metricsBundleID;
  if (metricsBundleID)
  {
    v10 = metricsBundleID;
  }

  else
  {
    v10 = &stru_100374F10;
  }

  v15[0] = typeCopy;
  v14[0] = @"eventType";
  v14[1] = @"pageId";
  v11 = [NSNumber numberWithShort:[(GKBulletin *)self pushCommand]];
  v14[2] = @"pageType";
  v15[1] = v11;
  v15[2] = @"notification";
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  v13 = [v12 _gkAddEntriesFrom:fieldsCopy];

  [(GKBulletin *)self reportMetricsWithHostAppBundleId:v10 fields:v13];
}

- (void)reportMetricsWithHostAppBundleId:(id)id fields:(id)fields
{
  fieldsCopy = fields;
  idCopy = id;
  v7 = +[GKAMPController controller];
  [v7 reportClickStreamEventWithHostAppBundleId:idCopy metricsFields:fieldsCopy];
}

+ (BOOL)playerIsLocal:(id)local
{
  localCopy = local;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKBulletin playerIsLocal:", buf, 2u);
  }

  v6 = +[GKPlayerCredentialController sharedController];
  v7 = +[GKDataRequestManager sharedManager];
  v8 = [v6 allCredentialsForEnvironment:{objc_msgSend(v7, "currentEnvironment")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        playerInternal = [*(*(&v17 + 1) + 8 * i) playerInternal];
        playerID = [playerInternal playerID];
        v15 = [playerID isEqualToString:localCopy];

        if (v15)
        {
          LOBYTE(v10) = 1;
          goto LABEL_15;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v10;
}

- (id)description
{
  v19.receiver = self;
  v19.super_class = GKBulletin;
  v18 = [(GKBulletin *)&v19 description];
  recordID = [(GKBulletin *)self recordID];
  title = [(GKBulletin *)self title];
  message = [(GKBulletin *)self message];
  date = [(GKBulletin *)self date];
  expirationDate = [(GKBulletin *)self expirationDate];
  v4 = @"NO";
  if ([(GKBulletin *)self hasSound])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  soundPath = [(GKBulletin *)self soundPath];
  defaultAction = [(GKBulletin *)self defaultAction];
  acceptAction = [(GKBulletin *)self acceptAction];
  dismissAction = [(GKBulletin *)self dismissAction];
  declineAction = [(GKBulletin *)self declineAction];
  if ([(GKBulletin *)self showInListOnly])
  {
    v4 = @"YES";
  }

  categoryIdentifier = [(GKBulletin *)self categoryIdentifier];
  v13 = [v18 stringByAppendingFormat:@"\nrecordID:%@\ntitle:%@\nmessage:%@\ndate:%@\nexpirationDate:%@\nhasSound:%@\nsoundPath:%@\ndefaultAction:%@\nacceptAction:%@\ndismissAction:%@\ndeclineAction:%@\nshowInListOnly:%@\ncategoryIdentifier:%@", recordID, title, message, date, expirationDate, v5, soundPath, defaultAction, acceptAction, dismissAction, declineAction, v4, categoryIdentifier];

  return v13;
}

+ (id)cacheTransactionGroup
{
  v2 = +[GKClientProxy gameCenterClient];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKSystemBulletin.m", 58, "+[GKBulletin(CacheTransactionGroup) cacheTransactionGroup]");
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = [v4 pushCredentialForEnvironment:{objc_msgSend(v2, "environment")}];
  playerInternal = [v5 playerInternal];
  playerID = [playerInternal playerID];
  v8 = [v2 transactionGroupWithName:v3 forPlayerID:playerID];

  return v8;
}

@end