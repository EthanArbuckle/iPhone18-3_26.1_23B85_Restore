@interface FMDEventLoggerFacilityOnDiskStats
- (FMDEventLoggerFacilityOnDiskStats)init;
- (id)loggedEvents;
- (id)loggedEventsForEventName:(id)a3;
- (void)_logEvent:(id)a3;
- (void)loadLogs;
- (void)logEvent:(id)a3;
- (void)reset;
@end

@implementation FMDEventLoggerFacilityOnDiskStats

- (FMDEventLoggerFacilityOnDiskStats)init
{
  v15.receiver = self;
  v15.super_class = FMDEventLoggerFacilityOnDiskStats;
  v2 = [(FMDEventLoggerFacilityOnDiskStats *)&v15 init];
  if (v2)
  {
    v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 stringByAppendingPathComponent:@"com.apple.icloud.findmydeviced"];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.icloud.findmydeviced.eventlogger.stats"];

    v7 = [NSURL URLWithString:v6];
    [(FMDEventLoggerFacilityOnDiskStats *)v2 setCachedLogFileURL:v7];

    v8 = [FMDataArchiver alloc];
    v9 = [(FMDEventLoggerFacilityOnDiskStats *)v2 cachedLogFileURL];
    v10 = [v8 initWithFileURL:v9];
    [(FMDEventLoggerFacilityOnDiskStats *)v2 setArchiver:v10];

    v11 = [(FMDEventLoggerFacilityOnDiskStats *)v2 archiver];
    [v11 setBackedUp:0];

    v12 = [(FMDEventLoggerFacilityOnDiskStats *)v2 archiver];
    [v12 setCreateDirectories:1];

    v13 = dispatch_queue_create("FMDEventLoggerFacilityOnDisk.serialQueue", 0);
    [(FMDEventLoggerFacilityOnDiskStats *)v2 setSerialQueue:v13];

    [(FMDEventLoggerFacilityOnDiskStats *)v2 loadLogs];
  }

  return v2;
}

- (void)logEvent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDEventLoggerFacilityOnDiskStats *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100160990;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_logEvent:(id)a3
{
  v4 = a3;
  if ([(FMDEventLoggerFacilityOnDiskStats *)self shouldLog])
  {
    v5 = [(FMDEventLoggerFacilityOnDiskStats *)self logs];
    v6 = [v4 userInfo];
    v7 = [v4 groupByKey];
    v8 = [v6 objectForKey:v7];
    [v8 doubleValue];
    v10 = v9;

    v11 = [v4 eventName];
    v12 = [v4 eventName];
    v13 = [v5 objectForKey:v12];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_10000AA24;
    v34 = sub_100002ADC;
    v35 = 0;
    if (v13)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100160D54;
      v26[3] = &unk_1002CF0F8;
      v29 = v10;
      v27 = v4;
      v28 = &v30;
      [v13 enumerateObjectsUsingBlock:v26];
    }

    else
    {
      v13 = +[NSMutableArray array];
      [v5 setObject:v13 forKey:v11];
    }

    v14 = v31[5];
    if (v14)
    {
      v15 = [v14 statValue];
      v16 = [v15 integerValue];

      v17 = [NSNumber numberWithInteger:v16 + 1];
      [v31[5] setStatValue:v17];
    }

    else
    {
      v18 = [[FMDEventLoggerEventStat alloc] initWithEventName:v11];
      v19 = v31[5];
      v31[5] = v18;

      [v31[5] setStatValue:&off_1002E7B58];
      v20 = [NSNumber numberWithDouble:v10];
      [v31[5] setGroupValue:v20];

      [v13 addObject:v31[5]];
    }

    v21 = [v13 count];
    if (v21 > qword_100312CB8)
    {
      [v13 removeObjectAtIndex:0];
    }

    v22 = sub_100002880();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100228CF0(v5, v22);
    }

    v23 = [(FMDEventLoggerFacilityOnDiskStats *)self archiver];
    v24 = [v23 saveDictionary:v5];

    if (v24)
    {
      v25 = sub_100002880();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100228D68(v24, v25);
      }
    }

    _Block_object_dispose(&v30, 8);
  }
}

- (void)reset
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(FMDEventLoggerFacilityOnDiskStats *)self cachedLogFileURL];
  v5 = [v4 path];
  v8 = 0;
  [v3 removeItemAtPath:v5 error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100228DE0(self, v6, v7);
    }
  }

  [(FMDEventLoggerFacilityOnDiskStats *)self loadLogs];
}

- (id)loggedEvents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AA24;
  v11 = sub_100002ADC;
  v12 = 0;
  v3 = [(FMDEventLoggerFacilityOnDiskStats *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100161010;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)loggedEventsForEventName:(id)a3
{
  v4 = a3;
  v5 = [(FMDEventLoggerFacilityOnDiskStats *)self logs];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 copy];

  return v7;
}

- (void)loadLogs
{
  v3 = [(FMDEventLoggerFacilityOnDiskStats *)self archiver];
  v4 = [NSSet setWithObject:objc_opt_class()];
  v15 = 0;
  v5 = [v3 readDictionaryAndClasses:v4 error:&v15];
  v6 = v15;

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FMDEventLoggerFacilityOnDisk read error %@", buf, 0xCu);
    }

    v8 = +[FMDEventLoggerGeneral sharedInstance];
    [v8 sendError:v6 forEventName:@"FMDEventLoggerFacilityOnDiskStatsFailedReadEventName"];

    v9 = 0;
  }

  else
  {
    v9 = [v5 mutableCopy];
  }

  objc_initWeak(buf, self);
  v10 = [(FMDEventLoggerFacilityOnDiskStats *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161328;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v14, buf);
  v13 = v9;
  v11 = v9;
  dispatch_async(v10, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

@end