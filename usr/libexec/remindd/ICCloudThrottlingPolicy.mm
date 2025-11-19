@interface ICCloudThrottlingPolicy
+ (void)resetSavedPolicyState;
- (ICCloudThrottlingLevel)currentLevel;
- (ICCloudThrottlingPolicy)initWithThrottlingLevels:(id)a3 resetInterval:(double)a4;
- (double)batchInterval;
- (void)changeLevelIfNecessary;
- (void)dealloc;
- (void)incrementBatchCount;
- (void)loadSavedPolicyState;
- (void)resetPolicy;
- (void)savePolicyState;
- (void)startPolicyResetTimer;
@end

@implementation ICCloudThrottlingPolicy

- (ICCloudThrottlingPolicy)initWithThrottlingLevels:(id)a3 resetInterval:(double)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = ICCloudThrottlingPolicy;
  v7 = [(ICCloudThrottlingPolicy *)&v17 init];
  if (v7)
  {
    v8 = objc_opt_new();
    [(ICCloudThrottlingPolicy *)v7 setIcUserDefaults:v8];

    [(ICCloudThrottlingPolicy *)v7 setThrottlingLevels:v6];
    [(ICCloudThrottlingPolicy *)v7 setResetInterval:a4];
    [(ICCloudThrottlingPolicy *)v7 loadSavedPolicyState];
    v9 = [(ICCloudThrottlingPolicy *)v7 policyStartDate];
    [v9 timeIntervalSinceNow];
    v11 = -v10;
    [(ICCloudThrottlingPolicy *)v7 resetInterval];
    v13 = v12;

    if (v13 < v11)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100069B2C;
      block[3] = &unk_1008D9990;
      v16 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }

    [(ICCloudThrottlingPolicy *)v7 startPolicyResetTimer];
  }

  return v7;
}

- (void)dealloc
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100069BE8;
  v5[3] = &unk_1008D9990;
  v5[4] = self;
  performBlockOnMainThread(v5);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICCloudThrottlingPolicy;
  [(ICCloudThrottlingPolicy *)&v4 dealloc];
}

- (void)incrementBatchCount
{
  [(ICCloudThrottlingPolicy *)self setCurrentBatchCount:[(ICCloudThrottlingPolicy *)self currentBatchCount]+ 1];
  v3 = [(ICCloudThrottlingPolicy *)self currentLevel];
  if ([v3 numberOfBatches])
  {
    v4 = [(ICCloudThrottlingPolicy *)self currentLevel];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 numberOfBatches]);
    v6 = [v5 stringValue];
  }

  else
  {
    v6 = @"unlimited";
  }

  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(ICCloudThrottlingPolicy *)self currentBatchCount];
    v9 = [(ICCloudThrottlingPolicy *)self currentLevelIndex]+ 1;
    v10 = [(ICCloudThrottlingPolicy *)self throttlingLevels];
    v11 = [v10 count];
    v12 = [(ICCloudThrottlingPolicy *)self currentLevel];
    *buf = 67110146;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Processing cloud batch (%d of %@) in throttling level (%d of %d): %@", buf, 0x28u);
  }

  [(ICCloudThrottlingPolicy *)self changeLevelIfNecessary];
  v13 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069E5C;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v13, block);
}

- (void)changeLevelIfNecessary
{
  v15 = [(ICCloudThrottlingPolicy *)self currentLevel];
  if ([v15 numberOfBatches])
  {
    v3 = [(ICCloudThrottlingPolicy *)self currentLevelIndex];
    v4 = [(ICCloudThrottlingPolicy *)self throttlingLevels];
    v5 = [v4 count] - 1;

    if (v3 < v5)
    {
      v6 = [(ICCloudThrottlingPolicy *)self currentBatchCount];
      v7 = [(ICCloudThrottlingPolicy *)self currentLevel];
      v8 = [v7 numberOfBatches];

      if (v6 >= v8)
      {
        [(ICCloudThrottlingPolicy *)self setCurrentLevelIndex:[(ICCloudThrottlingPolicy *)self currentLevelIndex]+ 1];
        [(ICCloudThrottlingPolicy *)self setCurrentBatchCount:0];
        v9 = +[REMLog cloudkit];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(ICCloudThrottlingPolicy *)self currentLevelIndex]+ 1;
          v11 = [(ICCloudThrottlingPolicy *)self throttlingLevels];
          v12 = [v11 count];
          v13 = [(ICCloudThrottlingPolicy *)self currentLevel];
          *buf = 67109634;
          v17 = v10;
          v18 = 1024;
          v19 = v12;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Switching to cloud throttling level (%d of %d): %@", buf, 0x18u);
        }

        v14 = +[NSNotificationCenter defaultCenter];
        [v14 postNotificationName:@"ICCloudBatchIntervalDidChangeNotification" object:self];
      }
    }
  }

  else
  {
  }
}

- (double)batchInterval
{
  v2 = [(ICCloudThrottlingPolicy *)self currentLevel];
  [v2 batchInterval];
  v4 = v3;

  return v4;
}

- (ICCloudThrottlingLevel)currentLevel
{
  v3 = [(ICCloudThrottlingPolicy *)self currentLevelIndex];
  v4 = [(ICCloudThrottlingPolicy *)self throttlingLevels];
  v5 = [v4 count] - 1;

  if (v3 >= v5)
  {
    v3 = v5;
  }

  v6 = [(ICCloudThrottlingPolicy *)self throttlingLevels];
  v7 = [v6 objectAtIndexedSubscript:v3];

  return v7;
}

- (void)resetPolicy
{
  v3 = [(ICCloudThrottlingPolicy *)self policyResetTimer];
  [v3 invalidate];

  [(ICCloudThrottlingPolicy *)self setPolicyResetTimer:0];
  [(ICCloudThrottlingPolicy *)self setCurrentLevelIndex:0];
  [(ICCloudThrottlingPolicy *)self setCurrentBatchCount:0];
  v4 = +[NSDate date];
  [(ICCloudThrottlingPolicy *)self setPolicyStartDate:v4];

  [(ICCloudThrottlingPolicy *)self startPolicyResetTimer];
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICCloudThrottlingPolicy *)self currentLevel];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting cloud throttling policy to the first level: %@", buf, 0xCu);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"ICCloudBatchIntervalDidChangeNotification" object:self];

  v8 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A314;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)startPolicyResetTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A390;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (void)resetSavedPolicyState
{
  v3 = objc_opt_new();
  v2 = [v3 userDefaults];
  [v2 removeObjectForKey:@"ThrottlingPolicyCurrentBatchCount"];
  [v2 removeObjectForKey:@"ThrottlingPolicyCurrentLevelIndex"];
  [v2 removeObjectForKey:@"ThrottlingPolicyStartTime"];
}

- (void)loadSavedPolicyState
{
  v3 = [(ICCloudThrottlingPolicy *)self icUserDefaults];
  v8 = [v3 userDefaults];

  v4 = [v8 objectForKey:@"ThrottlingPolicyCurrentBatchCount"];
  -[ICCloudThrottlingPolicy setCurrentBatchCount:](self, "setCurrentBatchCount:", [v4 unsignedIntegerValue]);

  v5 = [v8 objectForKey:@"ThrottlingPolicyCurrentLevelIndex"];
  -[ICCloudThrottlingPolicy setCurrentLevelIndex:](self, "setCurrentLevelIndex:", [v5 unsignedIntegerValue]);

  [v8 doubleForKey:@"ThrottlingPolicyStartTime"];
  if (v6 == 0.0)
  {
    +[NSDate date];
  }

  else
  {
    [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }
  v7 = ;
  [(ICCloudThrottlingPolicy *)self setPolicyStartDate:v7];
}

- (void)savePolicyState
{
  v3 = [(ICCloudThrottlingPolicy *)self icUserDefaults];
  v7 = [v3 userDefaults];

  v4 = [NSNumber numberWithUnsignedInteger:[(ICCloudThrottlingPolicy *)self currentBatchCount]];
  [v7 setObject:v4 forKey:@"ThrottlingPolicyCurrentBatchCount"];

  v5 = [NSNumber numberWithUnsignedInteger:[(ICCloudThrottlingPolicy *)self currentLevelIndex]];
  [v7 setObject:v5 forKey:@"ThrottlingPolicyCurrentLevelIndex"];

  v6 = [(ICCloudThrottlingPolicy *)self policyStartDate];
  [v6 timeIntervalSinceReferenceDate];
  [v7 setDouble:@"ThrottlingPolicyStartTime" forKey:?];
}

@end