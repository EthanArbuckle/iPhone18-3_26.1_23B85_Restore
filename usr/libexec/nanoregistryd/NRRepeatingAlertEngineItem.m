@interface NRRepeatingAlertEngineItem
- (BOOL)presentAlertWithString:(id)a3;
- (BOOL)shouldTriggerAlertNow;
- (NRRepeatingAlertEngineItem)initWithName:(id)a3 strings:(id)a4 maxAcknowledgementCount:(int64_t)a5 reoccurrenceInterval:(double)a6 localizedStrings:(BOOL)a7 userNotificationCenter:(id)a8;
- (id)_localizedString:(unint64_t)a3;
- (id)string:(unint64_t)a3 localized:(BOOL)a4;
- (void)_dismissAlert;
- (void)alertResponseWithResponseFlags:(unint64_t)a3;
- (void)clearNotifications;
- (void)defaultButtonWasPressed;
- (void)dismissAlert;
- (void)dismissAlertAsync;
- (void)loadFromDefaults;
- (void)logAcknowledgement;
- (void)notificationDismissed;
- (void)presentAlertIfEnabledWithString:(id)a3;
- (void)presentUINotifictaionWithString:(id)a3;
- (void)recordButtonPress:(unint64_t)a3;
- (void)resetState;
- (void)saveToDefaults;
- (void)setEnabled:(BOOL)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation NRRepeatingAlertEngineItem

- (NRRepeatingAlertEngineItem)initWithName:(id)a3 strings:(id)a4 maxAcknowledgementCount:(int64_t)a5 reoccurrenceInterval:(double)a6 localizedStrings:(BOOL)a7 userNotificationCenter:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v23.receiver = self;
  v23.super_class = NRRepeatingAlertEngineItem;
  v17 = [(NRRepeatingAlertEngineItem *)&v23 init];
  v18 = nr_daemon_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v20 = nr_daemon_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "initWithName: %@", buf, 0xCu);
    }
  }

  if (v17)
  {
    if (qword_1001B3AB0 != -1)
    {
      sub_1001037DC();
    }

    objc_storeStrong(&v17->_name, a3);
    objc_storeStrong(&v17->_strings, a4);
    v17->_maxAcknowledgementCount = a5;
    v17->_reoccurrenceInterval = a6;
    v17->_localizedStrings = a7;
    objc_storeStrong(&v17->_notificationCenter, a8);
    [(NRRepeatingAlertEngineItem *)v17 loadFromDefaults];
    [v16 setDelegate:v17];
  }

  return v17;
}

- (void)saveToDefaults
{
  v3 = CFPreferencesCopyAppValue(@"alertStatus", @"com.apple.NanoRegistry");
  v4 = [v3 mutableCopy];

  if (self->_enabled)
  {
    if (!v4)
    {
      v4 = +[NSMutableDictionary dictionary];
    }

    v9[0] = @"acknowledgementCount";
    v5 = [NSNumber numberWithInteger:self->_acknowledgementCount];
    v9[1] = @"lastAcknowledgedDate";
    v10[0] = v5;
    [(NSDate *)self->_lastAcknowledgedDate timeIntervalSinceReferenceDate];
    v6 = [NSNumber numberWithDouble:?];
    v10[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    [v4 setObject:v7 forKeyedSubscript:self->_name];

LABEL_5:
    CFPreferencesSetAppValue(@"alertStatus", v4, @"com.apple.NanoRegistry");
    CFPreferencesAppSynchronize(@"com.apple.NanoRegistry");
    goto LABEL_10;
  }

  if (v4)
  {
    v8 = [v4 objectForKeyedSubscript:self->_name];

    if (v8)
    {
      [v4 removeObjectForKey:self->_name];
      if (![v4 count])
      {

        v4 = 0;
      }

      goto LABEL_5;
    }
  }

LABEL_10:
}

- (void)loadFromDefaults
{
  v10 = CFPreferencesCopyAppValue(@"alertStatus", @"com.apple.NanoRegistry");
  v3 = [v10 objectForKeyedSubscript:self->_name];
  v4 = v3;
  if (v3)
  {
    self->_enabled = 1;
    v5 = [v3 objectForKeyedSubscript:@"acknowledgementCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 integerValue];
    }

    else
    {
      v6 = 0;
    }

    self->_acknowledgementCount = v6;
    v7 = [v4 objectForKeyedSubscript:@"lastAcknowledgedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v8 = 0;
    }

    lastAcknowledgedDate = self->_lastAcknowledgedDate;
    self->_lastAcknowledgedDate = v8;
  }

  else
  {
    self->_enabled = 0;
    v5 = self->_lastAcknowledgedDate;
    self->_acknowledgementCount = 0;
    self->_lastAcknowledgedDate = 0;
  }
}

- (BOOL)shouldTriggerAlertNow
{
  if (!self->_enabled || self->_alert)
  {
    return 0;
  }

  if (self->_acknowledgementCount >= self->_maxAcknowledgementCount || self->_lastAcknowledgedDate && (+[NSDate date](NSDate, "date"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceDate:self->_lastAcknowledgedDate], v6 = fabs(v5), v7 = self->_reoccurrenceInterval, v4, v6 <= v7))
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = +[NSDate date];
        [v11 timeIntervalSinceDate:self->_lastAcknowledgedDate];
        reoccurrenceInterval = self->_reoccurrenceInterval;
        acknowledgementCount = self->_acknowledgementCount;
        maxAcknowledgementCount = self->_maxAcknowledgementCount;
        v16 = 134218752;
        v17 = fabs(v12);
        v18 = 2048;
        v19 = reoccurrenceInterval;
        v20 = 2048;
        v21 = acknowledgementCount;
        v22 = 2048;
        v23 = maxAcknowledgementCount;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping enabled alert. Time since last ack: %f; reoccurrenceInterval: %f; ack count: %ld; - maxAckCount - %ld", &v16, 0x2Au);
      }
    }

    return 0;
  }

  return 1;
}

- (void)presentAlertIfEnabledWithString:(id)a3
{
  if (self->_enabled)
  {
    [(NRRepeatingAlertEngineItem *)self presentAlertWithString:a3];
  }
}

- (void)resetState
{
  [(NRRepeatingAlertEngineItem *)self dismissAlert];
  self->_enabled = 0;
  lastAcknowledgedDate = self->_lastAcknowledgedDate;
  self->_acknowledgementCount = 0;
  self->_lastAcknowledgedDate = 0;

  [(NRRepeatingAlertEngineItem *)self saveToDefaults];
}

- (id)_localizedString:(unint64_t)a3
{
  v3 = [(NSArray *)self->_strings objectAtIndexedSubscript:a3];
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.private.NanoRegistry"];
  v5 = +[NSLocale _deviceLanguage];
  v6 = [v4 localizations];
  v17 = v5;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v8 = [NSBundle preferredLocalizationsFromArray:v6 forPreferences:v7];

  v9 = [v8 firstObject];
  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Language to load: %@", &v15, 0xCu);
    }
  }

  v13 = [v4 localizedStringForKey:v3 value:0 table:@"Localizable-tinker" localization:v9];

  return v13;
}

- (id)string:(unint64_t)a3 localized:(BOOL)a4
{
  if (a4)
  {
    [(NRRepeatingAlertEngineItem *)self _localizedString:a3];
  }

  else
  {
    [(NSArray *)self->_strings objectAtIndexedSubscript:a3];
  }
  v4 = ;

  return v4;
}

- (void)presentUINotifictaionWithString:(id)a3
{
  self->_alertBeingShown = 1;
  v4 = objc_alloc_init(UNMutableNotificationContent);
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138412290;
      v27 = name;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Posting UINotification from Repeating Engine with name %@", buf, 0xCu);
    }
  }

  v9 = [(NRRepeatingAlertEngineItem *)self string:4 localized:self->_localizedStrings];
  [v4 setTitle:v9];

  v10 = [(NRRepeatingAlertEngineItem *)self string:5 localized:self->_localizedStrings];
  [v4 setSubtitle:v10];

  v11 = [(NRRepeatingAlertEngineItem *)self string:1 localized:self->_localizedStrings];
  [v4 setBody:v11];

  [v4 setCategoryIdentifier:@"NRUserNotifications"];
  v12 = [objc_opt_class() launchURL];
  v13 = [NSURL URLWithString:v12];
  v14 = nr_daemon_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = nr_daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LaunchURL: %@", buf, 0xCu);
    }
  }

  if (v13)
  {
    [v4 setDefaultActionURL:v13];
  }

  [v4 setShouldBackgroundDefaultAction:1];
  v17 = [UNNotificationCategory categoryWithIdentifier:@"DefaultNRCategory" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  [v4 setCategoryIdentifier:@"DefaultNRCategory"];
  v18 = [NSSet setWithObject:v17];
  [(UNUserNotificationCenter *)self->_notificationCenter setNotificationCategories:v18];

  v19 = nr_daemon_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    v21 = nr_daemon_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(UNUserNotificationCenter *)self->_notificationCenter notificationCategories];
      *buf = 138412290;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Categories %@", buf, 0xCu);
    }
  }

  v23 = [UNNotificationRequest requestWithIdentifier:self->_name content:v4 trigger:0];
  notificationCenter = self->_notificationCenter;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000D1B00;
  v25[3] = &unk_100175A10;
  v25[4] = self;
  [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v23 withCompletionHandler:v25];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "userNotificationCenter delegate called with response: %@", &v28, 0xCu);
    }
  }

  v12 = [(NRRepeatingAlertEngineItem *)v7 actionIdentifier];
  v13 = [v12 isEqualToString:UNNotificationDefaultActionIdentifier];

  if (v13)
  {
    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Got UNNotificationDefaultActionIdentifier action : %@", &v28, 0xCu);
      }
    }

    [(NRRepeatingAlertEngineItem *)self defaultButtonWasPressed];
  }

  else
  {
    v17 = [(NRRepeatingAlertEngineItem *)v7 actionIdentifier];
    v18 = [v17 isEqualToString:UNNotificationDismissActionIdentifier];

    if (v18)
    {
      v19 = nr_daemon_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v21 = nr_daemon_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = self;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Got UNNotificationDismissActionIdentifier action: %@", &v28, 0xCu);
        }
      }

      [(NRRepeatingAlertEngineItem *)self notificationDismissed];
    }

    else
    {
      v22 = [(NRRepeatingAlertEngineItem *)v7 actionIdentifier];
      v23 = [v22 isEqualToString:@"MigrationAlertNext"];

      if ((v23 & 1) == 0)
      {
        v24 = nr_daemon_log();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

        if (v25)
        {
          v26 = nr_daemon_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [(NRRepeatingAlertEngineItem *)v7 actionIdentifier];
            v28 = 138412290;
            v29 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Got unhandled action: %@", &v28, 0xCu);
          }
        }
      }
    }
  }

  [(NRRepeatingAlertEngineItem *)self logAcknowledgement];
  self->_alertBeingShown = 0;
  v8[2](v8);
}

- (BOOL)presentAlertWithString:(id)a3
{
  v4 = a3;
  v5 = CFPreferencesCopyAppValue(@"alertStatus", @"com.apple.NanoRegistry");
  v6 = [v5 mutableCopy];

  if (v4)
  {
    if (!v6)
    {
      v6 = +[NSMutableDictionary dictionary];
    }

    v7 = [(NSString *)self->_name stringByAppendingString:@".string"];
    [v6 setObject:v4 forKeyedSubscript:v7];

    CFPreferencesSetAppValue(@"alertStatus", v6, @"com.apple.NanoRegistry");
    CFPreferencesAppSynchronize(@"com.apple.NanoRegistry");
  }

  else
  {
    v8 = [(NSString *)self->_name stringByAppendingString:@".string"];
    v4 = [v6 objectForKeyedSubscript:v8];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D20A0;
  block[3] = &unk_1001796A8;
  v13 = v4;
  v14 = &v15;
  block[4] = self;
  v9 = v4;
  dispatch_sync(&_dispatch_main_q, block);
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (void)dismissAlert
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D28A4;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)dismissAlertAsync
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2920;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_dismissAlert
{
  if (self->_alertRunLoopSource)
  {
    v3 = +[NSRunLoop mainRunLoop];
    CFRunLoopRemoveSource([v3 getCFRunLoop], self->_alertRunLoopSource, kCFRunLoopCommonModes);

    CFRelease(self->_alertRunLoopSource);
    self->_alertRunLoopSource = 0;
  }

  if (self->_alert)
  {
    v4 = [NSValue valueWithPointer:?];
    [qword_1001B3A88 removeObjectForKey:v4];
    CFUserNotificationCancel(self->_alert);
    CFRelease(self->_alert);
    self->_alert = 0;
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)alertResponseWithResponseFlags:(unint64_t)a3
{
  v3 = a3;
  [(NRRepeatingAlertEngineItem *)self _dismissAlert];

  [(NRRepeatingAlertEngineItem *)self recordButtonPress:v3 & 3];
}

- (void)recordButtonPress:(unint64_t)a3
{
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (a3 == 2)
  {
    if (v6)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v15 = 138412290;
        v16 = name;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Alert %@ response- Other button", &v15, 0xCu);
      }
    }

    [(NRRepeatingAlertEngineItem *)self logAcknowledgement];
    [(NRRepeatingAlertEngineItem *)self otherButtonWasPressed];
  }

  else if (a3 == 1)
  {
    if (v6)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_name;
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Alert %@ response- Alternate button", &v15, 0xCu);
      }
    }

    [(NRRepeatingAlertEngineItem *)self logAcknowledgement];
    [(NRRepeatingAlertEngineItem *)self alternateButtonWasPressed];
  }

  else if (a3)
  {
    if (v6)
    {
      v13 = nr_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_name;
        v15 = 138412546;
        v16 = v14;
        v17 = 2048;
        v18 = a3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Alert %@ response- unknown response type (%lu)", &v15, 0x16u);
      }
    }

    [(NRRepeatingAlertEngineItem *)self logAcknowledgement];
  }

  else
  {
    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_name;
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Alert %@ response- Default button", &v15, 0xCu);
      }
    }

    [(NRRepeatingAlertEngineItem *)self logAcknowledgement];
    [(NRRepeatingAlertEngineItem *)self defaultButtonWasPressed];
  }
}

- (void)logAcknowledgement
{
  ++self->_acknowledgementCount;
  v3 = +[NSDate date];
  lastAcknowledgedDate = self->_lastAcknowledgedDate;
  self->_lastAcknowledgedDate = v3;

  if (self->_acknowledgementCount >= self->_maxAcknowledgementCount)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        acknowledgementCount = self->_acknowledgementCount;
        maxAcknowledgementCount = self->_maxAcknowledgementCount;
        v11 = 138412802;
        v12 = name;
        v13 = 2048;
        v14 = acknowledgementCount;
        v15 = 2048;
        v16 = maxAcknowledgementCount;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Alert %@- clearing enable flag as the max acknowledgement count has been reached _acknowledgementCount: %ld _maxAcknowledgementCount: %ld", &v11, 0x20u);
      }
    }

    self->_enabled = 0;
  }

  [(NRRepeatingAlertEngineItem *)self saveToDefaults];
}

- (void)defaultButtonWasPressed
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "default defaultButtonWasPressed", v5, 2u);
    }
  }
}

- (void)notificationDismissed
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "default notificationDismissed ", v5, 2u);
    }
  }
}

- (void)clearNotifications
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138412290;
      v11 = name;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clear notification for: %@", buf, 0xCu);
    }
  }

  notificationCenter = self->_notificationCenter;
  if (notificationCenter)
  {
    if (self->_name)
    {
      v9 = self->_name;
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v8];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    if (a3)
    {
      lastAcknowledgedDate = self->_lastAcknowledgedDate;
      self->_acknowledgementCount = 0;
      self->_lastAcknowledgedDate = 0;
    }

    else
    {
      [(NRRepeatingAlertEngineItem *)self dismissAlert];
    }

    [(NRRepeatingAlertEngineItem *)self saveToDefaults];
  }
}

@end