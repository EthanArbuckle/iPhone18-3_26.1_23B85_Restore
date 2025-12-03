@interface NEKNotificationCenter
- (NEKNotificationCenter)init;
- (id)_tapToRadarUrl;
- (void)requestDiagnosticNotificationForDeviceID:(id)d;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation NEKNotificationCenter

- (NEKNotificationCenter)init
{
  v15.receiver = self;
  v15.super_class = NEKNotificationCenter;
  v2 = [(NEKNotificationCenter *)&v15 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.eventkitsync.notifications"];
    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = v3;

    v5 = [UNNotificationAction actionWithIdentifier:@"OPEN_TAP_TO_RADAR" title:@"Launch Tap-To-Radar" options:0];
    v6 = [UNNotificationAction actionWithIdentifier:@"IGNORE_FOR_ONE_WEEK" title:@"Ignore for One Week" options:0];
    v17[0] = v5;
    v17[1] = v6;
    v7 = [NSArray arrayWithObjects:v17 count:2];
    v8 = [UNNotificationCategory categoryWithIdentifier:@"OPEN_TAP_TO_RADAR" actions:v7 intentIdentifiers:&__NSArray0__struct options:0];

    v9 = v2->_userNotificationCenter;
    v16 = v8;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    v11 = [NSSet setWithArray:v10];
    [(UNUserNotificationCenter *)v9 setNotificationCategories:v11];

    [(UNUserNotificationCenter *)v2->_userNotificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter setPrivateDelegate:v2];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter setWantsNotificationResponsesDelivered];
    v12 = objc_alloc_init(NEKBGSystemTaskScheduler);
    bgSystemTaskScheduler = v2->_bgSystemTaskScheduler;
    v2->_bgSystemTaskScheduler = v12;
  }

  return v2;
}

- (void)requestDiagnosticNotificationForDeviceID:(id)d
{
  objc_storeStrong(&self->_pairedDeviceID, d);
  dCopy = d;
  v9 = objc_opt_new();
  [v9 setTitle:@"Slow Calendar Sync Detected"];
  [v9 setBody:@"Tap to file Radar"];
  v6 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.TapToRadar"];
  [v9 setIcon:v6];

  _tapToRadarUrl = [(NEKNotificationCenter *)self _tapToRadarUrl];
  [v9 setDefaultActionURL:_tapToRadarUrl];

  [v9 setCategoryIdentifier:@"OPEN_TAP_TO_RADAR"];
  v8 = [UNNotificationRequest requestWithIdentifier:@"com.apple.usernotifications.delegate.com.apple.eventkitsync.diagnostic" content:v9 trigger:0];
  [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v8 withCompletionHandler:&stru_1000B5210];
}

- (id)_tapToRadarUrl
{
  v23 = objc_alloc_init(NSDateFormatter);
  [v23 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
  v3 = +[NSDate now];
  v22 = [v23 stringFromDate:v3];

  v4 = objc_alloc_init(NSURLComponents);
  [v4 setScheme:@"tap-to-radar"];
  [v4 setHost:@"new"];
  v21 = [[NSURLQueryItem alloc] initWithName:@"TimeOfIssue" value:v22];
  v24[0] = v21;
  v20 = [[NSURLQueryItem alloc] initWithName:@"IncludeDevicePrefixInTitle" value:@"1"];
  v24[1] = v20;
  v19 = [[NSURLQueryItem alloc] initWithName:@"Title" value:@"Calendar Sync Taking Longer than Expected"];
  v24[2] = v19;
  v18 = [[NSURLQueryItem alloc] initWithName:@"Description" value:@"Summary:\nCalendar sync between iPhone and Apple Watch is taking longer than expected.\n\nPlease file this Tap-to-Radar bug to help the Apple Watch team improve the underlying sync functionality.\n\nNotes:\nPlease ensure that both an iPhone and Apple Watch sysdiagnose are attached to this bug report.\n\nImportant: No user sensitive or confidential calendar data will be attached to this bug report."];
  v24[3] = v18;
  v17 = [[NSURLQueryItem alloc] initWithName:@"BundleID" value:@"com.apple.eventkitsyncd"];
  v24[4] = v17;
  v16 = [[NSURLQueryItem alloc] initWithName:@"ComponentName" value:@"EventKitSync"];
  v24[5] = v16;
  v5 = [[NSURLQueryItem alloc] initWithName:@"ComponentVersion" value:@"watchOS"];
  v24[6] = v5;
  v6 = [[NSURLQueryItem alloc] initWithName:@"ComponentID" value:@"560446"];
  v24[7] = v6;
  v7 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:@"Other Bug"];
  v24[8] = v7;
  v8 = [[NSURLQueryItem alloc] initWithName:@"Reproducibility" value:@"Not Applicable"];
  v24[9] = v8;
  v9 = [[NSURLQueryItem alloc] initWithName:@"DeviceIDs" value:self->_pairedDeviceID];
  v24[10] = v9;
  v10 = [[NSURLQueryItem alloc] initWithName:@"DeviceClasses" value:@"Watch"];
  v24[11] = v10;
  v11 = [[NSURLQueryItem alloc] initWithName:@"RemoteDeviceSelections" value:@"Nearby"];
  v24[12] = v11;
  v12 = [[NSURLQueryItem alloc] initWithName:@"ExtensionIdentifiers" value:{@"com.apple.DiagnosticExtensions.EventKitSync, com.apple.eventkit.CalendarDiagnosticExtension"}];
  v24[13] = v12;
  v13 = [NSArray arrayWithObjects:v24 count:14];
  [v4 setQueryItems:v13];

  v14 = [v4 URL];

  return v14;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  v10 = [actionIdentifier isEqualToString:@"OPEN_TAP_TO_RADAR"];

  if (v10)
  {
    _tapToRadarUrl = [(NEKNotificationCenter *)self _tapToRadarUrl];
    v12 = +[LSApplicationWorkspace defaultWorkspace];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100023DF0;
    v24[3] = &unk_1000B5238;
    v25 = _tapToRadarUrl;
    selfCopy = self;
    v13 = _tapToRadarUrl;
    [v12 openURL:v13 configuration:0 completionHandler:v24];

LABEL_7:
    goto LABEL_10;
  }

  actionIdentifier2 = [responseCopy actionIdentifier];
  v15 = [actionIdentifier2 isEqualToString:@"IGNORE_FOR_ONE_WEEK"];

  if (v15)
  {
    v16 = +[NSCalendar autoupdatingCurrentCalendar];
    v17 = +[NSDate now];
    v13 = [v16 dateByAddingUnit:16 value:7 toDate:v17 options:0];

    [v13 timeIntervalSinceReferenceDate];
    v19 = v18;
    v20 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Notification didReceiveNotificationResponse to ignore until: %@", buf, 0xCu);
    }

    v21 = +[NEKEnvironment instance];
    tinyStore = [v21 tinyStore];
    [tinyStore setDoubleValue:@"diagnosticNotificationIgnoreUntil" forKey:v19];

    goto LABEL_7;
  }

  v23 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100070DBC(v23, responseCopy);
  }

LABEL_10:
  handlerCopy[2](handlerCopy);
}

- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response
{
  v6 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    actionIdentifier = [response actionIdentifier];
    v9 = 138412290;
    v10 = actionIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Notification didOpenApplicationForResponse: %@", &v9, 0xCu);
  }

  [(NEKNotificationCenter *)self requestResetSync];
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [settings debugDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Notification didChangeSettings: %@", &v8, 0xCu);
  }
}

@end