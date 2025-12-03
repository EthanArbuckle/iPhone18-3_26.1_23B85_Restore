@interface _OSInactivityNotificationManager
- (_OSInactivityNotificationManager)init;
- (id)currentlyInInactivityNotification:(id)notification;
- (id)engagedUntilDateRequest:(id)request inactivityOptions:(int64_t)options;
- (id)iconForOptions:(int64_t)options;
- (id)inactivityEngagedContentUntil:(id)until inactivityOptions:(int64_t)options;
- (id)inactivityPreviouslyEngagedContentFrom:(id)from until:(id)until inactivityOptions:(int64_t)options;
- (id)postEngagedUntilDate:(id)date inactivityOptions:(int64_t)options;
- (id)previouslyEngagedFrom:(id)from until:(id)until inactivityOptions:(int64_t)options;
- (id)titleForOptions:(int64_t)options;
- (id)ttrURLforEnagedFrom:(id)from until:(id)until interrupted:(BOOL)interrupted inactivityOptions:(int64_t)options;
- (void)removeAllNotificationsForInactivityOptions:(int64_t)options;
@end

@implementation _OSInactivityNotificationManager

- (_OSInactivityNotificationManager)init
{
  v12.receiver = self;
  v12.super_class = _OSInactivityNotificationManager;
  v2 = [(_OSInactivityNotificationManager *)&v12 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "inactivity.notifications");
    log = v2->_log;
    v2->_log = v3;

    v5 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.osintelligence.inactivity.notifications"];
    unCenter = v2->_unCenter;
    v2->_unCenter = v5;

    [(UNUserNotificationCenter *)v2->_unCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_unCenter setWantsNotificationResponsesDelivered];
    out_token = 0;
    v7 = dispatch_get_global_queue(-32768, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008A64;
    v9[3] = &unk_100094900;
    v10 = v2;
    notify_register_dispatch("com.apple.osintelligence.inactivity.notifications", &out_token, v7, v9);
  }

  return v2;
}

- (id)ttrURLforEnagedFrom:(id)from until:(id)until interrupted:(BOOL)interrupted inactivityOptions:(int64_t)options
{
  interruptedCopy = interrupted;
  if (options)
  {
    v9 = @"[Sleep Suppression]";
  }

  else
  {
    v9 = @"[Core Smart Power Nap]";
  }

  untilCopy = until;
  fromCopy = from;
  if (interruptedCopy)
  {
    v12 = @"Potential False Suppression";
  }

  else
  {
    v12 = @"Potential Insufficient Suppression";
  }

  if (interruptedCopy)
  {
    v13 = @"* What were you doing immediately prior to suppression?\n\n* Do you typically leave your device inactive at this time?\n\n* Was your device in a dimly-lit environment prior to suppression? If so, please describe the environment.";
  }

  else
  {
    v13 = @"* How much sooner than the start of suppression do you think you stopped using your device?\n\n* How much later than when suppression ended did you start using your device?\n\n* Do you typically leave your device inactive around this time?";
  }

  v14 = [NSString stringWithFormat:@"%@ %@", v9, v12];
  v15 = objc_alloc_init(NSDateFormatter);
  [v15 setDateStyle:0];
  [v15 setTimeStyle:1];
  v16 = [v15 stringFromDate:fromCopy];

  v17 = [v15 stringFromDate:untilCopy];

  v18 = [v14 stringByAppendingFormat:@" (%@ - %@)", v16, v17];

  v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"tap-to-radar://new?Title=%s&Classification=Serious Bug&ComponentID=1407046&ComponentName=OSIntelligence&ComponentVersion=Inactivity&Reproducible=Sometimes&Description=PLEASE ANSWER THESE QUESTIONS TO AID DEBUGGING:\n\n%s", [v18 UTF8String], -[__CFString UTF8String](v13, "UTF8String"));
  v20 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v21 = [v19 stringByAddingPercentEncodingWithAllowedCharacters:v20];

  v22 = [NSURL URLWithString:v21];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v22;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "TTR URL is %@", buf, 0xCu);
  }

  return v22;
}

- (id)iconForOptions:(int64_t)options
{
  if (options)
  {
    v3 = @"moon.circle.fill";
  }

  else
  {
    v3 = @"moon.circle";
  }

  v4 = [UNNotificationIcon iconForSystemImageNamed:v3];

  return v4;
}

- (id)titleForOptions:(int64_t)options
{
  if (options)
  {
    return @"Sleep Suppression";
  }

  else
  {
    return @"Core Smart Power Nap";
  }
}

- (id)inactivityEngagedContentUntil:(id)until inactivityOptions:(int64_t)options
{
  untilCopy = until;
  v7 = objc_alloc_init(UNMutableNotificationContent);
  [v7 setCategoryIdentifier:@"engaged"];
  [v7 setShouldIgnoreDowntime:1];
  [v7 setShouldIgnoreDoNotDisturb:1];
  [v7 setShouldHideDate:0];
  [v7 setShouldSuppressScreenLightUp:1];
  v8 = [(_OSInactivityNotificationManager *)self titleForOptions:options];
  [v7 setTitle:v8];

  v9 = [(_OSInactivityNotificationManager *)self iconForOptions:options];
  [v7 setIcon:v9];

  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setDateStyle:0];
  [v10 setTimeStyle:1];
  v11 = +[NSLocale currentLocale];
  [v10 setLocale:v11];

  v12 = [v10 stringFromDate:untilCopy];
  v13 = [NSString stringWithFormat:@"Inactivity predicted until %@", v12];
  [v7 setBody:v13];

  [v7 setExpirationDate:untilCopy];
  v14 = +[OSIntelligenceDefines inactivityUserDefaults];
  LODWORD(v12) = [v14 BOOLForKey:@"showNotifications.ttrURL"];

  if (v12)
  {
    v15 = +[NSDate now];
    v16 = [(_OSInactivityNotificationManager *)self ttrURLforEnagedFrom:v15 until:untilCopy interrupted:1 inactivityOptions:options];
    [v7 setDefaultActionURL:v16];
  }

  return v7;
}

- (id)inactivityPreviouslyEngagedContentFrom:(id)from until:(id)until inactivityOptions:(int64_t)options
{
  fromCopy = from;
  untilCopy = until;
  v10 = objc_alloc_init(UNMutableNotificationContent);
  [v10 setCategoryIdentifier:@"engaged"];
  [v10 setShouldIgnoreDowntime:1];
  [v10 setShouldIgnoreDoNotDisturb:1];
  [v10 setShouldHideDate:1];
  [v10 setShouldSuppressScreenLightUp:1];
  v11 = [(_OSInactivityNotificationManager *)self titleForOptions:options];
  [v10 setTitle:v11];

  v12 = [(_OSInactivityNotificationManager *)self iconForOptions:options];
  [v10 setIcon:v12];

  v13 = objc_alloc_init(NSDateFormatter);
  [v13 setDateStyle:0];
  [v13 setTimeStyle:1];
  v14 = +[NSLocale currentLocale];
  [v13 setLocale:v14];

  v15 = [v13 stringFromDate:fromCopy];
  v16 = [v13 stringFromDate:untilCopy];
  v17 = [NSString stringWithFormat:@"Inactivity was predicted from %@ until %@.", v15, v16];
  [v10 setBody:v17];

  v18 = +[OSIntelligenceDefines inactivityUserDefaults];
  [v18 doubleForKey:@"showNowtifications.expirationDelay"];
  v20 = v19;

  v21 = 14400.0;
  if (v20 >= 1.0)
  {
    v21 = v20;
  }

  v22 = [untilCopy dateByAddingTimeInterval:v21];
  [v10 setExpirationDate:v22];

  v23 = +[OSIntelligenceDefines inactivityUserDefaults];
  v24 = [v23 BOOLForKey:@"showNotifications.ttrURL"];

  if (v24)
  {
    v25 = [(_OSInactivityNotificationManager *)self ttrURLforEnagedFrom:fromCopy until:untilCopy interrupted:0 inactivityOptions:options];
    [v10 setDefaultActionURL:v25];
  }

  return v10;
}

- (id)engagedUntilDateRequest:(id)request inactivityOptions:(int64_t)options
{
  v5 = [(_OSInactivityNotificationManager *)self inactivityEngagedContentUntil:request inactivityOptions:?];
  if (v5)
  {
    v6 = [NSNumber numberWithInteger:options];
    v7 = +[NSDate date];
    v8 = [NSString stringWithFormat:@"%@-inactivityEngaged-%@", v6, v7];

    v9 = +[OSIntelligenceDefines inactivityUserDefaults];
    [v9 doubleForKey:@"showNowtifications.displayDelta"];
    v11 = v10;

    v12 = 300.0;
    if (v11 >= 1.0)
    {
      v12 = v11;
    }

    v13 = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:0 repeats:v12];
    v14 = [UNNotificationRequest requestWithIdentifier:v8 content:v5 trigger:v13];
    [v14 setDestinations:2];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)previouslyEngagedFrom:(id)from until:(id)until inactivityOptions:(int64_t)options
{
  untilCopy = until;
  v9 = [(_OSInactivityNotificationManager *)self inactivityPreviouslyEngagedContentFrom:from until:untilCopy inactivityOptions:options];
  if (v9)
  {
    v10 = [NSNumber numberWithInteger:options];
    v11 = +[NSDate date];
    v12 = [NSString stringWithFormat:@"%@-inactivityPreviouslyEngaged-%@", v10, v11];

    [untilCopy timeIntervalSinceNow];
    if (v13 <= 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:0 repeats:?];
    }

    v15 = [UNNotificationRequest requestWithIdentifier:v12 content:v9 trigger:v14];
    [v15 setDestinations:2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)postEngagedUntilDate:(id)date inactivityOptions:(int64_t)options
{
  dateCopy = date;
  [(_OSInactivityNotificationManager *)self removeAllNotificationsForInactivityOptions:options];
  v7 = [(_OSInactivityNotificationManager *)self engagedUntilDateRequest:dateCopy inactivityOptions:options];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v7 withCompletionHandler:0];
  unCenter = self->_unCenter;
  v9 = +[NSDate now];
  v10 = [(_OSInactivityNotificationManager *)self previouslyEngagedFrom:v9 until:dateCopy inactivityOptions:options];

  [(UNUserNotificationCenter *)unCenter addNotificationRequest:v10 withCompletionHandler:0];
  identifier = [v7 identifier];

  return identifier;
}

- (void)removeAllNotificationsForInactivityOptions:(int64_t)options
{
  unCenter = self->_unCenter;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009698;
  v8[3] = &unk_1000949A0;
  v8[4] = self;
  v8[5] = options;
  [(UNUserNotificationCenter *)unCenter getDeliveredNotificationsWithCompletionHandler:v8];
  v6 = self->_unCenter;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000990C;
  v7[3] = &unk_1000949A0;
  v7[4] = self;
  v7[5] = options;
  [(UNUserNotificationCenter *)v6 getPendingNotificationRequestsWithCompletionHandler:v7];
  if (options == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UNUserNotificationCenter *)self->_unCenter removeAllDeliveredNotifications];
    [(UNUserNotificationCenter *)self->_unCenter removeAllPendingNotificationRequests];
  }
}

- (id)currentlyInInactivityNotification:(id)notification
{
  notificationCopy = notification;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000031FC;
  v13 = sub_100003540;
  v14 = 0;
  unCenter = self->_unCenter;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009C54;
  v8[3] = &unk_1000949C8;
  v8[4] = &v9;
  [(UNUserNotificationCenter *)unCenter getDeliveredNotificationsWithCompletionHandler:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end