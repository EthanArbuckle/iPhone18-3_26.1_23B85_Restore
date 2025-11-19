@interface _APRSBiomeEventAnalyzer
+ (id)sharedInstance;
- (_APRSBiomeEventAnalyzer)init;
- (id)allAppActivationTimeInfo;
- (id)allAppKillsInfo;
- (id)appActivationPublisherForEventsFrom:(id)a3;
- (id)appActivationTimeInfoStartingAtDate:(id)a3 withBookmarkKey:(id)a4;
- (id)appKillsInfoPublisherForEventsFrom:(id)a3;
- (id)appKillsInfoStartingAtDate:(id)a3 withBookmarkKey:(id)a4;
- (id)meanDeltaTimeBetweenColdLaunchAndResume;
- (id)meanDeltaTimeBetweenColdLaunchAndResumeStartingAtDate:(id)a3 withBookmarkKey:(id)a4;
- (void)logCompletion:(id)a3 forAnalysisName:(id)a4;
- (void)setupDailyTask;
@end

@implementation _APRSBiomeEventAnalyzer

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055EC4;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B218 != -1)
  {
    dispatch_once(&qword_10020B218, block);
  }

  v2 = qword_10020B220;

  return v2;
}

- (_APRSBiomeEventAnalyzer)init
{
  v8.receiver = self;
  v8.super_class = _APRSBiomeEventAnalyzer;
  v2 = [(_APRSBiomeEventAnalyzer *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.aprs", "appResume.BiomeAnalyzer");
    log = v2->_log;
    v2->_log = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    bookmarkDictionary = v2->_bookmarkDictionary;
    v2->_bookmarkDictionary = v5;

    [(NSMutableDictionary *)v2->_bookmarkDictionary setObject:0 forKeyedSubscript:@"appKillBookmark"];
    [(NSMutableDictionary *)v2->_bookmarkDictionary setObject:0 forKeyedSubscript:@"appActivationInfoBookmark"];
    [(NSMutableDictionary *)v2->_bookmarkDictionary setObject:0 forKeyedSubscript:@"appActivationMeanBookmark"];
    [(_APRSBiomeEventAnalyzer *)v2 setupDailyTask];
  }

  return v2;
}

- (void)logCompletion:(id)a3 forAnalysisName:(id)a4
{
  v6 = a4;
  v7 = [a3 state];
  log = self->_log;
  if (v7)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011FBCC();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011FC40();
  }
}

- (void)setupDailyTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100056218;
  v12[3] = &unk_1001B5770;
  v12[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.dasd.appResumeDaily" usingQueue:0 launchHandler:v12];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:@"com.apple.dasd.appResumeDaily"];

  if (!v5)
  {
    v6 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.dasd.appResumeDaily"];
    [v6 setPriority:1];
    [v6 setInterval:86400.0];
    v7 = +[BGSystemTaskScheduler sharedScheduler];
    v11 = 0;
    v8 = [v7 submitTaskRequest:v6 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (id)meanDeltaTimeBetweenColdLaunchAndResume
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:-1814400.0];
  v4 = [(_APRSBiomeEventAnalyzer *)self meanDeltaTimeBetweenColdLaunchAndResumeStartingAtDate:v3 withBookmarkKey:@"appActivationMeanBookmark"];

  return v4;
}

- (id)meanDeltaTimeBetweenColdLaunchAndResumeStartingAtDate:(id)a3 withBookmarkKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = [NSString stringWithFormat:@"App Activation Metrics - Mean calculation - start date: %@", v6];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000568A4;
  v25 = sub_1000568B4;
  v26 = objc_alloc_init(NSMutableDictionary);
  v10 = +[_APRSBiomeBase sharedEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000568BC;
  block[3] = &unk_1001B67F8;
  block[4] = self;
  v17 = v7;
  v18 = v6;
  v19 = v9;
  v20 = &v21;
  v11 = v9;
  v12 = v6;
  v13 = v7;
  dispatch_sync(v10, block);
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

- (id)allAppActivationTimeInfo
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:-1814400.0];
  v4 = [(_APRSBiomeEventAnalyzer *)self appActivationTimeInfoStartingAtDate:v3 withBookmarkKey:@"appActivationInfoBookmark"];

  return v4;
}

- (id)appActivationTimeInfoStartingAtDate:(id)a3 withBookmarkKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = [NSString stringWithFormat:@"App Activation Metrics - Info calculation - start date: %@", v6];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000568A4;
  v25 = sub_1000568B4;
  v26 = 0;
  v10 = +[_APRSBiomeBase sharedEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056DF4;
  block[3] = &unk_1001B67F8;
  block[4] = self;
  v17 = v7;
  v18 = v6;
  v19 = v9;
  v20 = &v21;
  v11 = v9;
  v12 = v6;
  v13 = v7;
  dispatch_sync(v10, block);
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

- (id)appActivationPublisherForEventsFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [(_APRSBiomeBase *)_APRSBiomeAppLaunchTimeEvent publisherForEventsStartingFromDate:v3];

  v6 = [v5 filterWithIsIncluded:&stru_1001B6818];
  v7 = [v6 reduceWithInitial:v4 nextPartialResult:&stru_1001B6858];

  return v7;
}

- (id)allAppKillsInfo
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:-1814400.0];
  v4 = [(_APRSBiomeEventAnalyzer *)self appKillsInfoStartingAtDate:v3 withBookmarkKey:@"appKillBookmark"];

  return v4;
}

- (id)appKillsInfoStartingAtDate:(id)a3 withBookmarkKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = [NSString stringWithFormat:@"App Kill Metrics - Info calculation - start date: %@", v6];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000568A4;
  v25 = sub_1000568B4;
  v26 = 0;
  v10 = +[_APRSBiomeBase sharedEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057460;
  block[3] = &unk_1001B67F8;
  block[4] = self;
  v17 = v7;
  v18 = v6;
  v19 = v9;
  v20 = &v21;
  v11 = v9;
  v12 = v6;
  v13 = v7;
  dispatch_sync(v10, block);
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

- (id)appKillsInfoPublisherForEventsFrom:(id)a3
{
  v3 = [(_APRSBiomeBase *)_APRSBiomeAppKillEvent publisherForEventsStartingFromDate:a3];
  v4 = [v3 filterWithIsIncluded:&stru_1001B68B8];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 reduceWithInitial:v5 nextPartialResult:&stru_1001B68D8];

  return v6;
}

@end