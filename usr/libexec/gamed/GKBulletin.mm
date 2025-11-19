@interface GKBulletin
+ (BOOL)playerIsLocal:(id)a3;
+ (BOOL)shouldProcessNotification;
+ (NSDictionary)bulletinClassForPushCommand;
+ (id)cacheTransactionGroup;
+ (id)syncQueue;
+ (void)bulletinsForPushNotification:(id)a3 withHandler:(id)a4;
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
+ (void)performAsync:(id)a3;
- (GKBulletin)initWithCoder:(id)a3;
- (GKBulletin)initWithPushNotification:(id)a3;
- (NSString)metricsBundleID;
- (id)dataFrom64String:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)executeBulletinWithBulletinController:(id)a3;
- (void)handleAction:(id)a3;
- (void)launchBulletinWithCompletionHandler:(id)a3;
- (void)reportMetricsForActionID:(id)a3 withAdditionalFields:(id)a4;
- (void)reportMetricsWithEventType:(id)a3 additionalFields:(id)a4;
- (void)reportMetricsWithHostAppBundleId:(id)a3 fields:(id)a4;
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

+ (void)bulletinsForPushNotification:(id)a3 withHandler:(id)a4
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
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKBulletin bulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v10 = [v6 objectForKey:GKPushCommandKey];
  v11 = [a1 bulletinClassForPushCommand];
  v12 = [v11 objectForKeyedSubscript:v10];

  if ([v12 shouldProcessNotification])
  {
    [v12 loadBulletinsForPushNotification:v6 withHandler:v7];
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

    if (v7)
    {
      v7[2](v7, 0);
    }
  }
}

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100294B0C(v10, a1, a2);
  }
}

- (GKBulletin)initWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin initWithCoder:", buf, 2u);
  }

  v44.receiver = self;
  v44.super_class = GKBulletin;
  v7 = [(GKBulletin *)&v44 init];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushCommand"];
    v7->_pushCommand = [v8 integerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    recordID = v7->_recordID;
    v7->_recordID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v7->_title;
    v7->_title = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v7->_message;
    v7->_message = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v7->_date;
    v7->_date = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v7->_expirationDate;
    v7->_expirationDate = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasSound"];
    v7->_hasSound = [v19 BOOLValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"soundPath"];
    soundPath = v7->_soundPath;
    v7->_soundPath = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acceptAction"];
    acceptAction = v7->_acceptAction;
    v7->_acceptAction = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultAction"];
    defaultAction = v7->_defaultAction;
    v7->_defaultAction = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dismissAction"];
    dismissAction = v7->_dismissAction;
    v7->_dismissAction = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"declineAction"];
    declineAction = v7->_declineAction;
    v7->_declineAction = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showInListOnly"];
    v7->_showInListOnly = [v30 BOOLValue];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gameName"];
    gameName = v7->_gameName;
    v7->_gameName = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gameIcon"];
    gameIcon = v7->_gameIcon;
    v7->_gameIcon = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gameDescriptor"];
    gameDescriptor = v7->_gameDescriptor;
    v7->_gameDescriptor = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
    categoryIdentifier = v7->_categoryIdentifier;
    v7->_categoryIdentifier = v37;

    v39 = objc_opt_class();
    v40 = [NSSet setWithObjects:v39, objc_opt_class(), 0];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"attachments"];
    attachments = v7->_attachments;
    v7->_attachments = v41;
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
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin encodeWithCoder:", v25, 2u);
  }

  v7 = [NSNumber numberWithInt:[(GKBulletin *)self pushCommand]];
  [v4 encodeObject:v7 forKey:@"pushCommand"];

  v8 = [(GKBulletin *)self recordID];
  [v4 encodeObject:v8 forKey:@"recordID"];

  v9 = [(GKBulletin *)self title];
  [v4 encodeObject:v9 forKey:@"title"];

  v10 = [(GKBulletin *)self message];
  [v4 encodeObject:v10 forKey:@"message"];

  v11 = [(GKBulletin *)self date];
  [v4 encodeObject:v11 forKey:@"date"];

  v12 = [(GKBulletin *)self expirationDate];
  [v4 encodeObject:v12 forKey:@"expirationDate"];

  v13 = [NSNumber numberWithBool:[(GKBulletin *)self hasSound]];
  [v4 encodeObject:v13 forKey:@"hasSound"];

  v14 = [(GKBulletin *)self soundPath];
  [v4 encodeObject:v14 forKey:@"soundPath"];

  v15 = [(GKBulletin *)self acceptAction];
  [v4 encodeObject:v15 forKey:@"acceptAction"];

  v16 = [(GKBulletin *)self defaultAction];
  [v4 encodeObject:v16 forKey:@"defaultAction"];

  v17 = [(GKBulletin *)self dismissAction];
  [v4 encodeObject:v17 forKey:@"dismissAction"];

  v18 = [(GKBulletin *)self declineAction];
  [v4 encodeObject:v18 forKey:@"declineAction"];

  v19 = [NSNumber numberWithBool:[(GKBulletin *)self showInListOnly]];
  [v4 encodeObject:v19 forKey:@"showInListOnly"];

  v20 = [(GKBulletin *)self gameName];
  [v4 encodeObject:v20 forKey:@"gameName"];

  v21 = [(GKBulletin *)self gameIcon];
  [v4 encodeObject:v21 forKey:@"gameIcon"];

  v22 = [(GKBulletin *)self gameDescriptor];
  [v4 encodeObject:v22 forKey:@"gameDescriptor"];

  v23 = [(GKBulletin *)self categoryIdentifier];
  [v4 encodeObject:v23 forKey:@"categoryIdentifier"];

  v24 = [(GKBulletin *)self attachments];
  [v4 encodeObject:v24 forKey:@"attachments"];
}

- (id)dataFrom64String:(id)a3
{
  v3 = a3;
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

  if (v3)
  {
    v6 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (GKBulletin)initWithPushNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin initWithPushNotification:", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = GKBulletin;
  v7 = [(GKBulletin *)&v13 init];
  if (v7)
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    recordID = v7->_recordID;
    v7->_recordID = v9;

    v11 = [v4 objectForKey:GKPushCommandKey];
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
  v5 = [v4 isGameCenterRestricted];

  return v5 ^ 1;
}

- (void)executeBulletinWithBulletinController:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletin executeBulletinWithBulletinController:", v7, 2u);
  }

  [v4 presentBulletin:self];
}

+ (void)performAsync:(id)a3
{
  v4 = a3;
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

  v7 = [a1 syncQueue];
  dispatch_async(v7, v4);
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
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle action: %@", buf, 0xCu);
  }

  if (([v4 isEqualToString:@"GKDefault"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"GKAccepted"))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10017D4C8;
    v9[3] = &unk_100369E90;
    v9[4] = self;
    v10 = v4;
    [(GKBulletin *)self launchBulletinWithCompletionHandler:v9];
  }

  else
  {
    [(GKBulletin *)self reportMetricsForActionID:v4 withAdditionalFields:0];
  }
}

- (void)launchBulletinWithCompletionHandler:(id)a3
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
    v33 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Launching: %@", buf, 0xCu);
  }

  v9 = self->_acceptAction;
  if (!v9)
  {
    v9 = self->_defaultAction;
  }

  v10 = [(GKBulletinAction *)v9 type];
  if (v10 == 2)
  {
    v19 = [(GKBulletinAction *)v9 info];
    v20 = [v19 length];

    if (v20)
    {
      v31[0] = GKRemoteAlertDeeplinkActionPlayerProfileValue;
      v30[0] = GKRemoteAlertDeeplinkActionKey;
      v30[1] = GKRemoteAlertDeeplinkPlayerIdentifierKey;
      v21 = [(GKBulletinAction *)v9 info];
      v31[1] = v21;
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

    v4[2](v4, 0);
LABEL_32:

    goto LABEL_33;
  }

  if (v10 == 1)
  {
    v11 = [(GKBulletinAction *)v9 appLaunchTrampolineURL];

    if (v11)
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
        v17 = [(GKBulletinAction *)v9 appLaunchTrampolineURL];
        *buf = 138412290;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Invoking AppLaunchTrampoline with URL: %@", buf, 0xCu);
      }

      v18 = [(GKBulletinAction *)v9 appLaunchTrampolineURL];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10017D9F0;
      v28[3] = &unk_100369EB8;
      v29 = v4;
      [v13 invokeASCAppLaunchTrampolineWithURL:v18 handler:v28];

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

  v4[2](v4, 0);
LABEL_33:
}

- (NSString)metricsBundleID
{
  v2 = [(GKBulletin *)self gameDescriptor];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)reportMetricsForActionID:(id)a3 withAdditionalFields:(id)a4
{
  v10 = @"actionType";
  v11 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v9 = [v8 _gkAddEntriesFrom:v6];

  [(GKBulletin *)self reportMetricsWithEventType:@"click" additionalFields:v9];
}

- (void)reportMetricsWithEventType:(id)a3 additionalFields:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKBulletin *)self metricsBundleID];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_100374F10;
  }

  v15[0] = v7;
  v14[0] = @"eventType";
  v14[1] = @"pageId";
  v11 = [NSNumber numberWithShort:[(GKBulletin *)self pushCommand]];
  v14[2] = @"pageType";
  v15[1] = v11;
  v15[2] = @"notification";
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  v13 = [v12 _gkAddEntriesFrom:v6];

  [(GKBulletin *)self reportMetricsWithHostAppBundleId:v10 fields:v13];
}

- (void)reportMetricsWithHostAppBundleId:(id)a3 fields:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[GKAMPController controller];
  [v7 reportClickStreamEventWithHostAppBundleId:v6 metricsFields:v5];
}

+ (BOOL)playerIsLocal:(id)a3
{
  v3 = a3;
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

        v13 = [*(*(&v17 + 1) + 8 * i) playerInternal];
        v14 = [v13 playerID];
        v15 = [v14 isEqualToString:v3];

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
  v17 = [(GKBulletin *)self recordID];
  v16 = [(GKBulletin *)self title];
  v3 = [(GKBulletin *)self message];
  v15 = [(GKBulletin *)self date];
  v14 = [(GKBulletin *)self expirationDate];
  v4 = @"NO";
  if ([(GKBulletin *)self hasSound])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(GKBulletin *)self soundPath];
  v7 = [(GKBulletin *)self defaultAction];
  v8 = [(GKBulletin *)self acceptAction];
  v9 = [(GKBulletin *)self dismissAction];
  v10 = [(GKBulletin *)self declineAction];
  if ([(GKBulletin *)self showInListOnly])
  {
    v4 = @"YES";
  }

  v11 = [(GKBulletin *)self categoryIdentifier];
  v13 = [v18 stringByAppendingFormat:@"\nrecordID:%@\ntitle:%@\nmessage:%@\ndate:%@\nexpirationDate:%@\nhasSound:%@\nsoundPath:%@\ndefaultAction:%@\nacceptAction:%@\ndismissAction:%@\ndeclineAction:%@\nshowInListOnly:%@\ncategoryIdentifier:%@", v17, v16, v3, v15, v14, v5, v6, v7, v8, v9, v10, v4, v11];

  return v13;
}

+ (id)cacheTransactionGroup
{
  v2 = +[GKClientProxy gameCenterClient];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKSystemBulletin.m", 58, "+[GKBulletin(CacheTransactionGroup) cacheTransactionGroup]");
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = [v4 pushCredentialForEnvironment:{objc_msgSend(v2, "environment")}];
  v6 = [v5 playerInternal];
  v7 = [v6 playerID];
  v8 = [v2 transactionGroupWithName:v3 forPlayerID:v7];

  return v8;
}

@end