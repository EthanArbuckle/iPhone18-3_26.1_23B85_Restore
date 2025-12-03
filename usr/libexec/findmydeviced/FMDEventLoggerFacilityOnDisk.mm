@interface FMDEventLoggerFacilityOnDisk
- (FMDEventLoggerFacilityOnDisk)init;
- (id)loggedEvents;
- (void)_logEvent:(id)event;
- (void)loadLogs;
- (void)logEvent:(id)event;
- (void)reset;
@end

@implementation FMDEventLoggerFacilityOnDisk

- (FMDEventLoggerFacilityOnDisk)init
{
  v15.receiver = self;
  v15.super_class = FMDEventLoggerFacilityOnDisk;
  v2 = [(FMDEventLoggerFacilityOnDisk *)&v15 init];
  if (v2)
  {
    v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 stringByAppendingPathComponent:@"com.apple.icloud.findmydeviced"];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.icloud.findmydeviced.eventlogger"];

    v7 = [NSURL URLWithString:v6];
    [(FMDEventLoggerFacilityOnDisk *)v2 setCachedLogFileURL:v7];

    v8 = [FMDataArchiver alloc];
    cachedLogFileURL = [(FMDEventLoggerFacilityOnDisk *)v2 cachedLogFileURL];
    v10 = [v8 initWithFileURL:cachedLogFileURL];
    [(FMDEventLoggerFacilityOnDisk *)v2 setArchiver:v10];

    archiver = [(FMDEventLoggerFacilityOnDisk *)v2 archiver];
    [archiver setBackedUp:0];

    archiver2 = [(FMDEventLoggerFacilityOnDisk *)v2 archiver];
    [archiver2 setCreateDirectories:1];

    v13 = dispatch_queue_create("FMDEventLoggerFacilityOnDisk.serialQueue", 0);
    [(FMDEventLoggerFacilityOnDisk *)v2 setSerialQueue:v13];

    [(FMDEventLoggerFacilityOnDisk *)v2 loadLogs];
  }

  return v2;
}

- (void)logEvent:(id)event
{
  eventCopy = event;
  objc_initWeak(&location, self);
  serialQueue = [(FMDEventLoggerFacilityOnDisk *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B4160;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_logEvent:(id)event
{
  eventCopy = event;
  if ([(FMDEventLoggerFacilityOnDisk *)self shouldLog])
  {
    logs = [(FMDEventLoggerFacilityOnDisk *)self logs];
    [logs addObject:eventCopy];
    v6 = [logs count];
    if (v6 > qword_100313450)
    {
      [logs removeObjectAtIndex:0];
    }

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022D614(logs, v7);
    }

    archiver = [(FMDEventLoggerFacilityOnDisk *)self archiver];
    v9 = [archiver saveArray:logs];

    if (v9)
    {
      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022D68C(v9, v10);
      }
    }
  }
}

- (void)reset
{
  v3 = +[NSFileManager defaultManager];
  cachedLogFileURL = [(FMDEventLoggerFacilityOnDisk *)self cachedLogFileURL];
  path = [cachedLogFileURL path];
  v8 = 0;
  [v3 removeItemAtPath:path error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100228DE0(self, v6, v7);
    }
  }

  [(FMDEventLoggerFacilityOnDisk *)self loadLogs];
}

- (id)loggedEvents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB34;
  v11 = sub_100002B64;
  v12 = 0;
  serialQueue = [(FMDEventLoggerFacilityOnDisk *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B44A4;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)loadLogs
{
  archiver = [(FMDEventLoggerFacilityOnDisk *)self archiver];
  v4 = [NSSet setWithObject:objc_opt_class()];
  v15 = 0;
  v5 = [archiver readArrayAndClasses:v4 error:&v15];
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
    [v8 sendError:v6 forEventName:@"FMDEventLoggerFacilityOnDiskFailedReadEventName"];

    v9 = 0;
  }

  else
  {
    v9 = [v5 mutableCopy];
  }

  objc_initWeak(buf, self);
  serialQueue = [(FMDEventLoggerFacilityOnDisk *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B4730;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v14, buf);
  v13 = v9;
  v11 = v9;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

@end