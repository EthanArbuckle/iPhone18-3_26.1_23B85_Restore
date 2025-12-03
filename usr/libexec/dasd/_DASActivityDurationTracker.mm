@interface _DASActivityDurationTracker
+ (id)sharedInstance;
- (_DASActivityDurationTracker)init;
- (double)runtimeForActivity:(id)activity inLastNumDays:(unint64_t)days;
- (void)activityCanceled:(id)canceled;
- (void)activityCompleted:(id)completed;
- (void)addTimeInterval:(double)interval forActivity:(id)activity;
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
  block[4] = self;
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
      date = [v5 date];
      [date timeIntervalSinceNow];
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

- (void)addTimeInterval:(double)interval forActivity:(id)activity
{
  name = [activity name];
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

  lastObject = [v7 lastObject];
  if (lastObject)
  {
    v9 = +[NSCalendar currentCalendar];
    date = [lastObject date];
    v11 = +[NSDate date];
    v12 = [v9 isDate:date inSameDayAsDate:v11];

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
  lastObject = v17;
LABEL_9:
  activityDurations = [lastObject activityDurations];
  v19 = [activityDurations mutableCopy];

  v20 = [v19 objectForKeyedSubscript:name];
  [v20 doubleValue];
  v22 = [NSNumber numberWithInteger:(v21 + interval)];
  [v19 setObject:v22 forKeyedSubscript:name];

  [lastObject setActivityDurations:v19];
  v23 = [v7 copy];
  v24 = self->_dayToDurationsList;
  self->_dayToDurationsList = v23;

  [(_DASActivityDurationTracker *)self saveState];
}

- (void)activityCanceled:(id)canceled
{
  canceledCopy = canceled;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011AE60;
  v7[3] = &unk_1001B56E0;
  v8 = canceledCopy;
  selfCopy = self;
  v6 = canceledCopy;
  dispatch_sync(queue, v7);
}

- (void)activityCompleted:(id)completed
{
  completedCopy = completed;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011AF7C;
  v7[3] = &unk_1001B56E0;
  v8 = completedCopy;
  selfCopy = self;
  v6 = completedCopy;
  dispatch_sync(queue, v7);
}

- (double)runtimeForActivity:(id)activity inLastNumDays:(unint64_t)days
{
  activityCopy = activity;
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
          activityDurations = [v9 activityDurations];
          name = [activityCopy name];
          v12 = [activityDurations objectForKeyedSubscript:name];

          if (v12)
          {
            activityDurations2 = [v9 activityDurations];
            name2 = [activityCopy name];
            v15 = [activityDurations2 objectForKeyedSubscript:name2];
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