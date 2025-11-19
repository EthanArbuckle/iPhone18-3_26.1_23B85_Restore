@interface _DASNotificationManager
+ (id)sharedManager;
- (_DASNotificationManager)init;
- (id)defaultNotifcationRequest;
- (void)postNotificationAtDate:(id)a3 withTitle:(id)a4 withTextContent:(id)a5 icon:(id)a6 url:(id)a7 expirationDate:(id)a8;
@end

@implementation _DASNotificationManager

- (_DASNotificationManager)init
{
  v10.receiver = self;
  v10.super_class = _DASNotificationManager;
  v2 = [(_DASNotificationManager *)&v10 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.dasd-notifications"];
    unCenter = v2->_unCenter;
    v2->_unCenter = v3;

    [(UNUserNotificationCenter *)v2->_unCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_unCenter setWantsNotificationResponsesDelivered];
    out_token = 0;
    v5 = dispatch_get_global_queue(-32768, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000612A4;
    v7[3] = &unk_1001B5B78;
    v8 = v2;
    notify_register_dispatch("com.apple.dasd.notifications", &out_token, v5, v7);
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000613B8;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B2C8 != -1)
  {
    dispatch_once(&qword_10020B2C8, block);
  }

  v2 = qword_10020B2D0;

  return v2;
}

- (id)defaultNotifcationRequest
{
  v2 = objc_alloc_init(UNMutableNotificationContent);
  [v2 setTitle:@"Hello DAS!"];
  [v2 setBody:@"I seek to be sentient..."];
  v3 = [UNNotificationIcon iconForSystemImageNamed:@"brain"];
  [v2 setIcon:v3];

  [v2 setCategoryIdentifier:@"dasInfoCategory"];
  v4 = [UNNotificationRequest requestWithIdentifier:@"com.apple.dasd.test" content:v2 trigger:0];
  [v4 setDestinations:15];

  return v4;
}

- (void)postNotificationAtDate:(id)a3 withTitle:(id)a4 withTextContent:(id)a5 icon:(id)a6 url:(id)a7 expirationDate:(id)a8
{
  v26 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (+[_DASConfig isInternalBuild])
  {
    v19 = objc_alloc_init(UNMutableNotificationContent);
    [v19 setCategoryIdentifier:@"dasInfoCategory"];
    [v19 setTitle:v14];
    [v19 setBody:v15];
    if ([(__CFString *)v16 isEqualToString:@"TTR"])
    {
      v20 = @"ant.fill";
    }

    else if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = @"brain";
    }

    v21 = [UNNotificationIcon iconForSystemImageNamed:v20];
    [v19 setIcon:v21];

    if (v18)
    {
      [v19 setExpirationDate:v18];
    }

    if (v17)
    {
      [v19 setDefaultActionURL:v17];
    }

    if (v26)
    {
      [v26 timeIntervalSinceNow];
      v22 = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:0 repeats:?];
    }

    else
    {
      v22 = 0;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v24 = [NSString stringWithFormat:@"com.apple.dasd-notifications:%lf", v23];
    v25 = [UNNotificationRequest requestWithIdentifier:v24 content:v19 trigger:v22];

    [v25 setDestinations:15];
    [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v25 withCompletionHandler:0];
  }
}

@end