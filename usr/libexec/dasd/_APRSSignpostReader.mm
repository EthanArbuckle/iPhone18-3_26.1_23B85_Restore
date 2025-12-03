@interface _APRSSignpostReader
- (_APRSSignpostReader)init;
- (void)logAppResumeAndLaunchesFrom:(id)from endDate:(id)date;
- (void)processSignpostInterval:(id)interval;
- (void)recordResumesAndLaunches;
- (void)updateLaunchesForProcess:(id)process withInterval:(id)interval;
- (void)updateResumesForProcess:(id)process withInterval:(id)interval;
@end

@implementation _APRSSignpostReader

- (_APRSSignpostReader)init
{
  v15.receiver = self;
  v15.super_class = _APRSSignpostReader;
  v2 = [(_APRSSignpostReader *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appResume.signpostReader", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.aprs", "appResume.signpostReader");
    log = v2->_log;
    v2->_log = v6;

    v8 = +[NSMutableDictionary dictionary];
    resumes = v2->_resumes;
    v2->_resumes = v8;

    v10 = +[NSMutableDictionary dictionary];
    launches = v2->_launches;
    v2->_launches = v10;

    v12 = objc_opt_new();
    dasDelegate = v2->_dasDelegate;
    v2->_dasDelegate = v12;
  }

  return v2;
}

- (void)logAppResumeAndLaunchesFrom:(id)from endDate:(id)date
{
  fromCopy = from;
  dateCopy = date;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005359C;
  block[3] = &unk_1001B56B8;
  block[4] = self;
  v12 = fromCopy;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = fromCopy;
  dispatch_sync(queue, block);
}

- (void)processSignpostInterval:(id)interval
{
  intervalCopy = interval;
  v5 = [intervalCopy objectForKeyedSubscript:@"ProcessName"];
  if (v5)
  {
    v6 = v5;
    v7 = [intervalCopy objectForKeyedSubscript:@"DurationSeconds"];
    if (v7)
    {
      v8 = v7;
      v9 = [intervalCopy objectForKeyedSubscript:@"BeginEvent"];

      if (v9)
      {
        v10 = [intervalCopy objectForKeyedSubscript:@"ProcessName"];
        v11 = [_DASAppResumePLLogger applicationBundleIDForExecutableName:v10];
        if (v11)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_10011F7AC();
          }

          v12 = [intervalCopy objectForKeyedSubscript:@"BeginEvent"];
          v13 = [v12 isEqualToString:@"AppLaunch"];

          if (v13)
          {
            [(_APRSSignpostReader *)self updateLaunchesForProcess:v11 withInterval:intervalCopy];
          }

          else
          {
            v15 = [intervalCopy objectForKeyedSubscript:@"BeginEvent"];
            v16 = [v15 isEqualToString:@"AppResume"];

            if (v16)
            {
              [(_APRSSignpostReader *)self updateResumesForProcess:v11 withInterval:intervalCopy];
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10011F820(log);
  }

LABEL_15:
}

- (void)updateResumesForProcess:(id)process withInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F864(log, intervalCopy);
  }

  v9 = [intervalCopy objectForKeyedSubscript:@"DurationSeconds"];
  [v9 floatValue];
  v11 = (v10 * 1000.0);

  if (v11 < 0x1389)
  {
    v12 = [(NSMutableDictionary *)self->_resumes objectForKeyedSubscript:processCopy];

    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_resumes objectForKeyedSubscript:processCopy];
      v14 = [NSNumber numberWithUnsignedLongLong:v11];
      [v13 addObject:v14];
    }

    else
    {
      v15 = objc_alloc_init(NSMutableArray);
      v16 = [NSNumber numberWithUnsignedLongLong:v11];
      [v15 addObject:v16];

      [(NSMutableDictionary *)self->_resumes setObject:v15 forKey:processCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F900();
  }
}

- (void)updateLaunchesForProcess:(id)process withInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F974(log, intervalCopy);
  }

  v9 = [intervalCopy objectForKeyedSubscript:@"DurationSeconds"];
  [v9 floatValue];
  v11 = (v10 * 1000.0);

  if (v11 < 0x1389)
  {
    v12 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:processCopy];

    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:processCopy];
      v14 = [NSNumber numberWithUnsignedLongLong:v11];
      [v13 addObject:v14];
    }

    else
    {
      v15 = objc_alloc_init(NSMutableArray);
      v16 = [NSNumber numberWithUnsignedLongLong:v11];
      [v15 addObject:v16];

      [(NSMutableDictionary *)self->_launches setObject:v15 forKey:processCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F900();
  }
}

- (void)recordResumesAndLaunches
{
  v3 = +[NSMutableArray array];
  v4 = objc_autoreleasePoolPush();
  resumes = self->_resumes;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100053EFC;
  v16[3] = &unk_1001B6688;
  v18 = 1;
  v6 = v3;
  v17 = v6;
  [(NSMutableDictionary *)resumes enumerateKeysAndObjectsUsingBlock:v16];
  launches = self->_launches;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100054070;
  v13 = &unk_1001B6688;
  v15 = 0;
  v8 = v6;
  v14 = v8;
  [(NSMutableDictionary *)launches enumerateKeysAndObjectsUsingBlock:&v10];

  objc_autoreleasePoolPop(v4);
  v9 = [_APRSMetricRecorder sharedInstance:v10];
  [v9 reportActivationTimes:v8];
}

@end