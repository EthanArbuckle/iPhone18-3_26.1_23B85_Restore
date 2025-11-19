@interface _DASActivityDurationTracker
+ (id)sharedInstance;
- (_DASActivityDurationTracker)init;
- (double)runtimeForActivity:(id)a3 inLastNumDays:(unint64_t)a4;
- (void)activityCanceled:(id)a3;
- (void)activityCompleted:(id)a3;
- (void)addTimeInterval:(double)a3 forActivity:(id)a4;
- (void)deleteOldDurations;
- (void)loadState;
- (void)saveState;
@end

@implementation _DASActivityDurationTracker

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011AB5C;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B9A0 != -1)
  {
    dispatch_once(&qword_10020B9A0, block);
  }

  v2 = qword_10020B9A8;

  return v2;
}

- (void)saveState
{
  dayToDurationsList = self->_dayToDurationsList;
  v9 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:dayToDurationsList requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10012DCEC(v5, log);
    }

    v7 = +[NSMutableArray array];
    v8 = self->_dayToDurationsList;
    self->_dayToDurationsList = v7;
  }

  [v4 writeToFile:@"/var/mobile/Library/DuetActivityScheduler/activityDayDurations.data" atomically:1];
}

- (_DASActivityDurationTracker)init
{
  v27.receiver = self;
  v27.super_class = _DASActivityDurationTracker;
  v2 = [(_DASActivityDurationTracker *)&v27 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dasd.activityDurationManager", v3);
    v5 = *(v2 + 2);
    *(v2 + 2) = v4;

    v6 = [_DASDaemonLogger logForCategory:@"activityDurationTracker"];
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.activityDurationTracker"];
    v9 = *(v2 + 5);
    *(v2 + 5) = v8;

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 2));
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    v12 = *(v2 + 3);
    v13 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 86400000000000);
    dispatch_source_set_timer(v12, v13, 0x4E94914F0000uLL, 0xD18C2E2800uLL);
    v14 = *(v2 + 3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10011A848;
    handler[3] = &unk_1001B5668;
    v15 = v2;
    v26 = v15;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_activate(*(v2 + 3));
    v15[2] = 0;
    v16 = v15 + 2;
    v17 = *(v2 + 2);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10011A850;
    v23[3] = &unk_1001B5B78;
    v18 = v15;
    v24 = v18;
    notify_register_dispatch("com.apple.dasd.testActivityDayDurationsDelete", v16, v17, v23);
    v19 = *(v2 + 2);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10011A858;
    v21[3] = &unk_1001B5B78;
    v22 = v18;
    notify_register_dispatch("com.apple.dasd.testActivityDayDurationsLoad", v16, v19, v21);
  }

  return v2;
}

- (void)loadState
{
  v3 = [NSData dataWithContentsOfFile:@"/var/mobile/Library/DuetActivityScheduler/activityDayDurations.data"];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v4, v5, v6, v7, v8, objc_opt_class(), 0];
    v18 = 0;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v3 error:&v18];
    v11 = v18;
    dayToDurationsList = self->_dayToDurationsList;
    self->_dayToDurationsList = v10;

    if (v11)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10012DC74(v11, log);
      }

      v14 = +[NSMutableArray array];
      v15 = self->_dayToDurationsList;
      self->_dayToDurationsList = v14;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_dayToDurationsList;
    *buf = 138412290;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Loaded day to durations data %@", buf, 0xCu);
  }
}

- (void)deleteOldDurations
{
  v3 = [(NSArray *)self->_dayToDurationsList mutableCopy];
  v10 = +[NSMutableIndexSet indexSet];
  if ([(NSArray *)v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)v3 objectAtIndexedSubscript:v4];
      v6 = [v5 date];
      [v6 timeIntervalSinceNow];
      v8 = v7;

      if (v8 <= 0xFFFFFFFFFFF573FFLL)
      {
        [v10 addIndex:v4];
      }

      ++v4;
    }

    while (v4 < [(NSArray *)v3 count]);
  }

  [(NSArray *)v3 removeObjectsAtIndexes:v10];
  dayToDurationsList = self->_dayToDurationsList;
  self->_dayToDurationsList = v3;
}

- (void)addTimeInterval:(double)a3 forActivity:(id)a4
{
  v25 = [a4 name];
  dayToDurationsList = self->_dayToDurationsList;
  if (!dayToDurationsList)
  {
    [(_DASActivityDurationTracker *)self loadState];
    dayToDurationsList = self->_dayToDurationsList;
  }

  v7 = [(NSArray *)dayToDurationsList mutableCopy];
  if (!v7)
  {
    v7 = +[NSMutableArray array];
  }

  v8 = [v7 lastObject];
  if (v8)
  {
    v9 = +[NSCalendar currentCalendar];
    v10 = [v8 date];
    v11 = +[NSDate date];
    v12 = [v9 isDate:v10 inSameDayAsDate:v11];

    if (v12)
    {
      goto LABEL_9;
    }

    [(_DASActivityDurationTracker *)self deleteOldDurations];
    v13 = [(NSArray *)self->_dayToDurationsList mutableCopy];

    v7 = v13;
  }

  v14 = [_DASActivityDayToDurations alloc];
  v15 = +[NSDate date];
  v16 = +[NSMutableDictionary dictionary];
  v17 = [(_DASActivityDayToDurations *)v14 initWithDate:v15 activityDurations:v16];

  [v7 addObject:v17];
  v8 = v17;
LABEL_9:
  v18 = [v8 activityDurations];
  v19 = [v18 mutableCopy];

  v20 = [v19 objectForKeyedSubscript:v25];
  [v20 doubleValue];
  v22 = [NSNumber numberWithInteger:(v21 + a3)];
  [v19 setObject:v22 forKeyedSubscript:v25];

  [v8 setActivityDurations:v19];
  v23 = [v7 copy];
  v24 = self->_dayToDurationsList;
  self->_dayToDurationsList = v23;

  [(_DASActivityDurationTracker *)self saveState];
}

- (void)activityCanceled:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011AE60;
  v7[3] = &unk_1001B56E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)activityCompleted:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011AF7C;
  v7[3] = &unk_1001B56E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (double)runtimeForActivity:(id)a3 inLastNumDays:(unint64_t)a4
{
  v5 = a3;
  dayToDurationsList = self->_dayToDurationsList;
  v7 = 0.0;
  if (dayToDurationsList)
  {
    if ([(NSArray *)dayToDurationsList count])
    {
      [(NSArray *)self->_dayToDurationsList count];
      if ([(NSArray *)self->_dayToDurationsList count])
      {
        v8 = 0;
        do
        {
          v9 = [(NSArray *)self->_dayToDurationsList objectAtIndexedSubscript:v8];
          v10 = [v9 activityDurations];
          v11 = [v5 name];
          v12 = [v10 objectForKeyedSubscript:v11];

          if (v12)
          {
            v13 = [v9 activityDurations];
            v14 = [v5 name];
            v15 = [v13 objectForKeyedSubscript:v14];
            [v15 doubleValue];
            v17 = v16;

            v7 = v7 + v17;
          }

          ++v8;
        }

        while (v8 < [(NSArray *)self->_dayToDurationsList count]);
      }
    }
  }

  return v7;
}

@end