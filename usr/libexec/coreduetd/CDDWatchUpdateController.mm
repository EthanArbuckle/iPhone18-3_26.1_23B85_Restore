@interface CDDWatchUpdateController
- (CDDWatchUpdateController)initWithCDDinstance:(id)dinstance;
- (id)formatDate:(id)date;
- (id)nextResetTime;
- (id)watchUpdateLog;
- (int64_t)hoursBetween:(id)between and:(id)and;
- (void)dailyResetTimer;
- (void)dealloc;
- (void)loadDefaults;
- (void)receiveWatchfaceInfo:(id)info device:(id)device;
- (void)resetPushLimits;
- (void)setupNextResetTimer:(id)timer;
- (void)timeZoneOrTimeChanged:(id)changed;
@end

@implementation CDDWatchUpdateController

- (CDDWatchUpdateController)initWithCDDinstance:(id)dinstance
{
  dinstanceCopy = dinstance;
  v17.receiver = self;
  v17.super_class = CDDWatchUpdateController;
  v6 = [(CDDWatchUpdateController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->cdd, dinstance);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.watchUpdates", v8);
    watchupdateQueue = v7->watchupdateQueue;
    v7->watchupdateQueue = v9;

    watchUpdateLog = [(CDDWatchUpdateController *)v7 watchUpdateLog];
    log = v7->log;
    v7->log = watchUpdateLog;

    timer = v7->timer;
    v7->timer = 0;

    [(CDDWatchUpdateController *)v7 loadDefaults];
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"timeZoneOrTimeChanged:" name:NSSystemTimeZoneDidChangeNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, sub_1000024F8, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    if (!notify_register_dispatch("com.apple.coreduetd.watchischarging", &v7->watchchargetoken, v7->watchupdateQueue, &stru_10003CA30))
    {
      notify_set_state(v7->watchchargetoken, 0);
      notify_post("com.apple.coreduetd.watchischarging");
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  notify_cancel(self->watchchargetoken);
  v5.receiver = self;
  v5.super_class = CDDWatchUpdateController;
  [(CDDWatchUpdateController *)&v5 dealloc];
}

- (id)watchUpdateLog
{
  if (qword_100044550 != -1)
  {
    sub_100021ECC();
  }

  v3 = qword_100044548;

  return v3;
}

- (int64_t)hoursBetween:(id)between and:(id)and
{
  andCopy = and;
  betweenCopy = between;
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 components:32 fromDate:betweenCopy toDate:andCopy options:0];

  hour = [v8 hour];
  if (hour >= 0)
  {
    v10 = hour;
  }

  else
  {
    v10 = -hour;
  }

  return v10;
}

- (void)loadDefaults
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreduet.complications.pushLimits"];
  pushLimits = self->pushLimits;
  self->pushLimits = v3;

  v5 = self->pushLimits;
  if (v5)
  {
    v6 = [(NSUserDefaults *)v5 objectForKey:@"lastResetDate"];
    if (v6)
    {
      dictionaryRepresentation = [(NSUserDefaults *)self->pushLimits dictionaryRepresentation];
      nextResetTime = [(CDDWatchUpdateController *)self nextResetTime];
      log = self->log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = log;
        v11 = [(CDDWatchUpdateController *)self formatDate:v6];
        v12 = [(CDDWatchUpdateController *)self formatDate:nextResetTime];
        v13 = [dictionaryRepresentation objectForKey:@"complicationPushLimits"];
        v19 = 138412802;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Last reset time: %@\n Next reset time: %@\n Push limits: %@\n", &v19, 0x20u);
      }

      v14 = +[NSDate date];
      v15 = [(CDDWatchUpdateController *)self hoursBetween:v6 and:v14];

      if (v15 >= 25)
      {
        v16 = self->log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "More than 24 hours since last reset => forcing now.\n", &v19, 2u);
        }

        [(CDDWatchUpdateController *)self resetPushLimits];
      }

      [(CDDWatchUpdateController *)self setupNextResetTimer:nextResetTime];
    }

    else
    {
      v18 = self->log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initializing push limit defaults.\n", &v19, 2u);
      }

      [(CDDWatchUpdateController *)self resetPushLimits];
      dictionaryRepresentation = [(CDDWatchUpdateController *)self nextResetTime];
      [(CDDWatchUpdateController *)self setupNextResetTimer:dictionaryRepresentation];
    }
  }

  else
  {
    v17 = self->log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100021EE0(v17);
    }
  }
}

- (id)nextResetTime
{
  v2 = +[NSDate date];
  v3 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v4 = +[NSTimeZone systemTimeZone];
  [v3 setTimeZone:v4];

  v5 = [v3 startOfDayForDate:v2];
  v6 = [v3 dateByAddingUnit:32 value:5 toDate:v5 options:0];
  if ([v2 compare:v6] == -1)
  {
    v7 = v6;
  }

  else
  {
    v7 = [v3 dateByAddingUnit:16 value:1 toDate:v6 options:0];
  }

  v8 = v7;

  return v8;
}

- (id)formatDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-LLL-dd HH:mm:ss ZZZZ"];
  v5 = +[NSTimeZone systemTimeZone];
  [v4 setTimeZone:v5];

  v6 = [v4 stringFromDate:dateCopy];

  return v6;
}

- (void)timeZoneOrTimeChanged:(id)changed
{
  watchupdateQueue = self->watchupdateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002C8C;
  v8[3] = &unk_10003CA78;
  v8[4] = self;
  v4 = v8;
  v5 = watchupdateQueue;
  v6 = os_transaction_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000359C;
  block[3] = &unk_10003CAA0;
  v10 = v6;
  v11 = v4;
  v7 = v6;
  dispatch_async(v5, block);
}

- (void)setupNextResetTimer:(id)timer
{
  timerCopy = timer;
  [timerCopy timeIntervalSince1970];
  when.tv_sec = v5;
  when.tv_nsec = 0;
  timer = self->timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v7 = self->timer;
    self->timer = 0;
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->watchupdateQueue);
  v9 = self->timer;
  self->timer = v8;

  v10 = self->timer;
  v11 = dispatch_walltime(&when, 0);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  v12 = self->timer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003050;
  handler[3] = &unk_10003CA78;
  handler[4] = self;
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(self->timer);
  log = self->log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14 = log;
    v15 = [(CDDWatchUpdateController *)self formatDate:timerCopy];
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Next reset time: %@\n", buf, 0xCu);
  }
}

- (void)dailyResetTimer
{
  watchupdateQueue = self->watchupdateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003158;
  v7[3] = &unk_10003CA78;
  v7[4] = self;
  v3 = v7;
  v4 = watchupdateQueue;
  v5 = os_transaction_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000359C;
  block[3] = &unk_10003CAA0;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  dispatch_async(v4, block);
}

- (void)resetPushLimits
{
  log = self->log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    pushLimits = self->pushLimits;
    v5 = log;
    v6 = [(NSUserDefaults *)pushLimits objectForKey:@"complicationPushLimits"];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting complication push limits, currently: %@\n", &v9, 0xCu);
  }

  [(NSUserDefaults *)self->pushLimits removeObjectForKey:@"complicationPushLimits"];
  v7 = self->pushLimits;
  v8 = +[NSDate date];
  [(NSUserDefaults *)v7 setObject:v8 forKey:@"lastResetDate"];

  [(NSUserDefaults *)self->pushLimits synchronize];
  notify_post(kComplicationPushLimitsResetNotification);
}

- (void)receiveWatchfaceInfo:(id)info device:(id)device
{
  infoCopy = info;
  v6 = [infoCopy objectForKey:&off_10003EF78];
  v7 = [infoCopy objectForKey:&off_10003EF90];

  if ([v6 integerValue] >= 90 && objc_msgSend(v7, "BOOLValue"))
  {
    watchupdateQueue = self->watchupdateQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000034AC;
    v14[3] = &unk_10003CA78;
    v14[4] = self;
    v9 = v14;
    v10 = watchupdateQueue;
    v11 = os_transaction_create();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000359C;
    block[3] = &unk_10003CAA0;
    v16 = v11;
    v17 = v9;
    v12 = v11;
    dispatch_async(v10, block);
  }

  watchchargetoken = self->watchchargetoken;
  if (watchchargetoken)
  {
    notify_set_state(watchchargetoken, [v7 BOOLValue]);
    notify_post("com.apple.coreduetd.watchischarging");
  }
}

@end