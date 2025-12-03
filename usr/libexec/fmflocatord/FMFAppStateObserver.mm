@interface FMFAppStateObserver
+ (id)sharedInstance;
- (FMFAppStateObserver)init;
- (void)dealloc;
- (void)detectedAppInstallStateChanged:(id)changed;
@end

@implementation FMFAppStateObserver

+ (id)sharedInstance
{
  if (qword_1000702D0 != -1)
  {
    sub_100038300();
  }

  v3 = qword_1000702C8;

  return v3;
}

- (FMFAppStateObserver)init
{
  v5.receiver = self;
  v5.super_class = FMFAppStateObserver;
  v2 = [(FMFAppStateObserver *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"detectedAppInstallStateChanged:" name:off_10006FA80 object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:off_10006FA80 object:0];

  v4.receiver = self;
  v4.super_class = FMFAppStateObserver;
  [(FMFAppStateObserver *)&v4 dealloc];
}

- (void)detectedAppInstallStateChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"bundleIDs"];

  userInfo2 = [changedCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"isPlaceholder"];
  bOOLValue = [v7 BOOLValue];

  if (([v5 fm_any:&stru_10005DE10] & 1) != 0 || !bOOLValue)
  {
    v9 = +[SystemConfig sharedInstance];
    isFMFAppRemoved = [v9 isFMFAppRemoved];

    v11 = sub_100002830();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = isFMFAppRemoved ^ 1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMFAppStateObserver: Detected install state change event for Find My app - installed: %d.", v12, 8u);
    }
  }
}

@end