@interface CARUserAlerts
- (CARUserAlerts)init;
- (CARUserAlerts)initWithNotificationCenter:(id)center;
- (id)_alertsOfClass:(Class)class;
- (void)_injectAlert:(id)alert;
- (void)_showBulletin:(id)bulletin;
- (void)dealloc;
- (void)dismissAlert:(id)alert;
- (void)dismissAlertsOfClass:(Class)class;
- (void)postBannerWithTitle:(id)title message:(id)message destinations:(unint64_t)destinations;
- (void)postIconBannerWithTitle:(id)title message:(id)message defaultActionURL:(id)l destinations:(unint64_t)destinations;
- (void)showDNDEndNotificationWithText:(id)text completion:(id)completion;
- (void)showDNDEnterGeofenceWithCompletion:(id)completion;
- (void)showDNDExitGeofenceWithCompletion:(id)completion;
- (void)showDNDNotDrivingAlertWithCompletion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation CARUserAlerts

- (CARUserAlerts)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v20.receiver = self;
  v20.super_class = CARUserAlerts;
  v6 = [(CARUserAlerts *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, center);
    notificationCenter = [(CARUserAlerts *)v7 notificationCenter];
    [notificationCenter setDelegate:v7];

    notificationCenter2 = [(CARUserAlerts *)v7 notificationCenter];
    [notificationCenter2 setWantsNotificationResponsesDelivered];

    v10 = +[NSMutableArray array];
    presentedBulletins = v7->_presentedBulletins;
    v7->_presentedBulletins = v10;

    v12 = +[NSMutableSet set];
    if (CRIsInternalInstall())
    {
      v13 = +[(CRBulletin *)CRDNDEndAlert];
      v21[0] = v13;
      v14 = +[(CRBulletin *)CRDNDEnteredGeofenceAlert];
      v21[1] = v14;
      v15 = +[(CRBulletin *)CRDNDExitedGeofenceAlert];
      v21[2] = v15;
      v16 = +[(CRBulletin *)CRDNDNotDrivingAlert];
      v21[3] = v16;
      v17 = [NSArray arrayWithObjects:v21 count:4];
      [v12 addObjectsFromArray:v17];
    }

    notificationCenter3 = [(CARUserAlerts *)v7 notificationCenter];
    [notificationCenter3 setNotificationCategories:v12];
  }

  return v7;
}

- (CARUserAlerts)init
{
  v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.CarKit.notifications"];
  v4 = [(CARUserAlerts *)self initWithNotificationCenter:v3];

  return v4;
}

- (void)dealloc
{
  [(UNUserNotificationCenter *)self->_notificationCenter removeAllDeliveredNotifications];
  v3.receiver = self;
  v3.super_class = CARUserAlerts;
  [(CARUserAlerts *)&v3 dealloc];
}

- (void)_showBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  presentedBulletins = [(CARUserAlerts *)self presentedBulletins];
  objc_sync_enter(presentedBulletins);
  presentedBulletins2 = [(CARUserAlerts *)self presentedBulletins];
  [presentedBulletins2 addObject:bulletinCopy];

  objc_sync_exit(presentedBulletins);
  v7 = CarDNDWDLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    title = [bulletinCopy title];
    recordID = [bulletinCopy recordID];
    *buf = 138412802;
    v16 = bulletinCopy;
    v17 = 2114;
    v18 = title;
    v19 = 2112;
    v20 = recordID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting bulletin %@ %{public}@ %@", buf, 0x20u);
  }

  notificationCenter = [(CARUserAlerts *)self notificationCenter];
  notificationRequest = [bulletinCopy notificationRequest];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000335C;
  v13[3] = &unk_1000DD348;
  v14 = bulletinCopy;
  v12 = bulletinCopy;
  [notificationCenter addNotificationRequest:notificationRequest withCompletionHandler:v13];
}

- (void)dismissAlert:(id)alert
{
  alertCopy = alert;
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    recordID = [alertCopy recordID];
    *buf = 138412546;
    v18 = alertCopy;
    v19 = 2112;
    v20 = recordID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing banner %@ %@", buf, 0x16u);
  }

  notificationCenter = [(CARUserAlerts *)self notificationCenter];
  recordID2 = [alertCopy recordID];
  v16 = recordID2;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  [notificationCenter removeDeliveredNotificationsWithIdentifiers:v9];

  notificationCenter2 = [(CARUserAlerts *)self notificationCenter];
  recordID3 = [alertCopy recordID];
  v15 = recordID3;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  [notificationCenter2 removePendingNotificationRequestsWithIdentifiers:v12];

  presentedBulletins = [(CARUserAlerts *)self presentedBulletins];
  objc_sync_enter(presentedBulletins);
  presentedBulletins2 = [(CARUserAlerts *)self presentedBulletins];
  [presentedBulletins2 removeObject:alertCopy];

  objc_sync_exit(presentedBulletins);
}

- (void)dismissAlertsOfClass:(Class)class
{
  presentedBulletins = [(CARUserAlerts *)self presentedBulletins];
  objc_sync_enter(presentedBulletins);
  presentedBulletins2 = [(CARUserAlerts *)self presentedBulletins];
  v7 = [presentedBulletins2 copy];

  objc_sync_exit(presentedBulletins);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000036A4;
  v8[3] = &unk_1000DD370;
  v8[4] = self;
  v8[5] = class;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)postBannerWithTitle:(id)title message:(id)message destinations:(unint64_t)destinations
{
  titleCopy = title;
  messageCopy = message;
  v10 = CarGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = titleCopy;
    v14 = 2112;
    v15 = messageCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Internal: Presenting banner with title: %@, message: %@", &v12, 0x16u);
  }

  v11 = [[CRBulletin alloc] initWithTitle:titleCopy message:messageCopy destinations:destinations];
  [(CARUserAlerts *)self _showBulletin:v11];
}

- (void)postIconBannerWithTitle:(id)title message:(id)message defaultActionURL:(id)l destinations:(unint64_t)destinations
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  v13 = CarGeneralLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = titleCopy;
    v18 = 2112;
    v19 = messageCopy;
    v20 = 2112;
    v21 = lCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Presenting icon banner with title: %@, message: %@, defaultAction: %@", &v16, 0x20u);
  }

  v14 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.CarPlayApp"];
  v15 = [[CRBulletin alloc] initWithTitle:titleCopy message:messageCopy icon:v14 defaultActionURL:lCopy destinations:destinations];
  [(CARUserAlerts *)self _showBulletin:v15];
}

- (void)showDNDEnterGeofenceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Internal: Presenting enter geofence notification", v7, 2u);
  }

  v6 = [CRDNDGeofenceAlert alertForEnteringGeofence:1];
  [v6 setActionHandler:completionCopy];

  [(CARUserAlerts *)self _showBulletin:v6];
}

- (void)showDNDExitGeofenceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Internal: Presenting exit geofence notification", v7, 2u);
  }

  v6 = [CRDNDGeofenceAlert alertForEnteringGeofence:0];
  [v6 setActionHandler:completionCopy];

  [(CARUserAlerts *)self _showBulletin:v6];
}

- (void)showDNDEndNotificationWithText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  v8 = CarDNDWDLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Internal: Presenting Driving end notification", v10, 2u);
  }

  [(CARUserAlerts *)self dismissAlertsOfClass:objc_opt_class()];
  v9 = [[CRDNDEndAlert alloc] initWithText:textCopy];

  [(CRBulletin *)v9 setActionHandler:completionCopy];
  [(CARUserAlerts *)self _showBulletin:v9];
}

- (void)showDNDNotDrivingAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Internal: Presenting Not Driving Feedback Alert", v7, 2u);
  }

  [(CARUserAlerts *)self dismissAlertsOfClass:objc_opt_class()];
  v6 = objc_alloc_init(CRDNDNotDrivingAlert);
  [(CRBulletin *)v6 setActionHandler:completionCopy];

  [(CARUserAlerts *)self _showBulletin:v6];
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  notificationCopy = notification;
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    request = [notificationCopy request];
    v7 = 138412290;
    v8 = request;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User opened settings for %@", &v7, 0xCu);
  }
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  v8 = CarDNDWDLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will present notification %@", &v9, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  notification = [responseCopy notification];
  request = [notification request];
  identifier = [request identifier];

  v15 = CarDNDWDLogging();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = identifier;
    v41 = 2114;
    v42 = actionIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notification %@ response %{public}@", buf, 0x16u);
  }

  presentedBulletins = [(CARUserAlerts *)self presentedBulletins];
  objc_sync_enter(presentedBulletins);
  presentedBulletins2 = [(CARUserAlerts *)self presentedBulletins];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100004340;
  v37[3] = &unk_1000DD398;
  v18 = identifier;
  v38 = v18;
  v19 = [presentedBulletins2 indexOfObjectPassingTest:v37];

  objc_sync_exit(presentedBulletins);
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    presentedBulletins3 = [(CARUserAlerts *)self presentedBulletins];
    v22 = [presentedBulletins3 objectAtIndexedSubscript:v19];

    actionHandler = [v22 actionHandler];
    LODWORD(presentedBulletins3) = actionHandler == 0;

    if (presentedBulletins3)
    {
      v29 = CarDNDWDLogging();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Bulletin has no action handler. Assuming this is a custom action.", buf, 2u);
      }

      handlerCopy[2](handlerCopy);
      goto LABEL_20;
    }

    if ([actionIdentifier isEqualToString:UNNotificationDismissActionIdentifier])
    {
      v24 = CarDNDWDLogging();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "User dismissed bulletin.", buf, 2u);
      }

      v25 = 1;
    }

    else
    {
      v30 = [actionIdentifier isEqualToString:UNNotificationDefaultActionIdentifier];
      actionHandler2 = CarDNDWDLogging();
      v31 = os_log_type_enabled(actionHandler2, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v31)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, actionHandler2, OS_LOG_TYPE_DEFAULT, "User selected default bulletin action.", buf, 2u);
        }

        goto LABEL_15;
      }

      if (v31)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, actionHandler2, OS_LOG_TYPE_DEFAULT, "User selected custom action.", buf, 2u);
      }

      actions = [v22 actions];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100004384;
      v35[3] = &unk_1000DD3C0;
      v33 = actionIdentifier;
      v36 = v33;
      v25 = [actions indexOfObjectPassingTest:v35];

      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = CarDNDWDLogging();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_100081060(v33, v22, v34);
        }

        handlerCopy[2](handlerCopy);
        goto LABEL_20;
      }

      if (v25 == 5)
      {
LABEL_16:
        handlerCopy[2](handlerCopy);
LABEL_20:

        goto LABEL_21;
      }
    }

    v26 = CarDNDWDLogging();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [NSNumber numberWithInteger:v25];
      *buf = 138412290;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending additional action at index %@", buf, 0xCu);
    }

    actionHandler2 = [v22 actionHandler];
    (*(actionHandler2 + 16))(actionHandler2, v25);
LABEL_15:

    goto LABEL_16;
  }

  v20 = CarDNDWDLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    sub_1000810D8(v18, v20);
  }

  handlerCopy[2](handlerCopy);
LABEL_21:
}

- (id)_alertsOfClass:(Class)class
{
  presentedBulletins = [(CARUserAlerts *)self presentedBulletins];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000044BC;
  v10[3] = &unk_1000DD3E0;
  v10[4] = class;
  v6 = [presentedBulletins indexesOfObjectsPassingTest:v10];

  if ([v6 count])
  {
    presentedBulletins2 = [(CARUserAlerts *)self presentedBulletins];
    v8 = [presentedBulletins2 objectsAtIndexes:v6];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)_injectAlert:(id)alert
{
  alertCopy = alert;
  presentedBulletins = [(CARUserAlerts *)self presentedBulletins];
  [presentedBulletins addObject:alertCopy];
}

@end