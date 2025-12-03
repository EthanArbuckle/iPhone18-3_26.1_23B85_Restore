@interface ICCloudThrottlingPolicy
+ (void)resetSavedPolicyState;
- (ICCloudThrottlingLevel)currentLevel;
- (ICCloudThrottlingPolicy)initWithThrottlingLevels:(id)levels resetInterval:(double)interval;
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

- (ICCloudThrottlingPolicy)initWithThrottlingLevels:(id)levels resetInterval:(double)interval
{
  levelsCopy = levels;
  v17.receiver = self;
  v17.super_class = ICCloudThrottlingPolicy;
  v7 = [(ICCloudThrottlingPolicy *)&v17 init];
  if (v7)
  {
    v8 = objc_opt_new();
    [(ICCloudThrottlingPolicy *)v7 setIcUserDefaults:v8];

    [(ICCloudThrottlingPolicy *)v7 setThrottlingLevels:levelsCopy];
    [(ICCloudThrottlingPolicy *)v7 setResetInterval:interval];
    [(ICCloudThrottlingPolicy *)v7 loadSavedPolicyState];
    policyStartDate = [(ICCloudThrottlingPolicy *)v7 policyStartDate];
    [policyStartDate timeIntervalSinceNow];
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
  currentLevel = [(ICCloudThrottlingPolicy *)self currentLevel];
  if ([currentLevel numberOfBatches])
  {
    currentLevel2 = [(ICCloudThrottlingPolicy *)self currentLevel];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [currentLevel2 numberOfBatches]);
    stringValue = [v5 stringValue];
  }

  else
  {
    stringValue = @"unlimited";
  }

  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    currentBatchCount = [(ICCloudThrottlingPolicy *)self currentBatchCount];
    v9 = [(ICCloudThrottlingPolicy *)self currentLevelIndex]+ 1;
    throttlingLevels = [(ICCloudThrottlingPolicy *)self throttlingLevels];
    v11 = [throttlingLevels count];
    currentLevel3 = [(ICCloudThrottlingPolicy *)self currentLevel];
    *buf = 67110146;
    v16 = currentBatchCount;
    v17 = 2112;
    v18 = stringValue;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v11;
    v23 = 2112;
    v24 = currentLevel3;
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
  currentLevel = [(ICCloudThrottlingPolicy *)self currentLevel];
  if ([currentLevel numberOfBatches])
  {
    currentLevelIndex = [(ICCloudThrottlingPolicy *)self currentLevelIndex];
    throttlingLevels = [(ICCloudThrottlingPolicy *)self throttlingLevels];
    v5 = [throttlingLevels count] - 1;

    if (currentLevelIndex < v5)
    {
      currentBatchCount = [(ICCloudThrottlingPolicy *)self currentBatchCount];
      currentLevel2 = [(ICCloudThrottlingPolicy *)self currentLevel];
      numberOfBatches = [currentLevel2 numberOfBatches];

      if (currentBatchCount >= numberOfBatches)
      {
        [(ICCloudThrottlingPolicy *)self setCurrentLevelIndex:[(ICCloudThrottlingPolicy *)self currentLevelIndex]+ 1];
        [(ICCloudThrottlingPolicy *)self setCurrentBatchCount:0];
        v9 = +[REMLog cloudkit];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(ICCloudThrottlingPolicy *)self currentLevelIndex]+ 1;
          throttlingLevels2 = [(ICCloudThrottlingPolicy *)self throttlingLevels];
          v12 = [throttlingLevels2 count];
          currentLevel3 = [(ICCloudThrottlingPolicy *)self currentLevel];
          *buf = 67109634;
          v17 = v10;
          v18 = 1024;
          v19 = v12;
          v20 = 2112;
          v21 = currentLevel3;
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
  currentLevel = [(ICCloudThrottlingPolicy *)self currentLevel];
  [currentLevel batchInterval];
  v4 = v3;

  return v4;
}

- (ICCloudThrottlingLevel)currentLevel
{
  currentLevelIndex = [(ICCloudThrottlingPolicy *)self currentLevelIndex];
  throttlingLevels = [(ICCloudThrottlingPolicy *)self throttlingLevels];
  v5 = [throttlingLevels count] - 1;

  if (currentLevelIndex >= v5)
  {
    currentLevelIndex = v5;
  }

  throttlingLevels2 = [(ICCloudThrottlingPolicy *)self throttlingLevels];
  v7 = [throttlingLevels2 objectAtIndexedSubscript:currentLevelIndex];

  return v7;
}

- (void)resetPolicy
{
  policyResetTimer = [(ICCloudThrottlingPolicy *)self policyResetTimer];
  [policyResetTimer invalidate];

  [(ICCloudThrottlingPolicy *)self setPolicyResetTimer:0];
  [(ICCloudThrottlingPolicy *)self setCurrentLevelIndex:0];
  [(ICCloudThrottlingPolicy *)self setCurrentBatchCount:0];
  v4 = +[NSDate date];
  [(ICCloudThrottlingPolicy *)self setPolicyStartDate:v4];

  [(ICCloudThrottlingPolicy *)self startPolicyResetTimer];
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentLevel = [(ICCloudThrottlingPolicy *)self currentLevel];
    *buf = 138412290;
    v11 = currentLevel;
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
  userDefaults = [v3 userDefaults];
  [userDefaults removeObjectForKey:@"ThrottlingPolicyCurrentBatchCount"];
  [userDefaults removeObjectForKey:@"ThrottlingPolicyCurrentLevelIndex"];
  [userDefaults removeObjectForKey:@"ThrottlingPolicyStartTime"];
}

- (void)loadSavedPolicyState
{
  icUserDefaults = [(ICCloudThrottlingPolicy *)self icUserDefaults];
  userDefaults = [icUserDefaults userDefaults];

  v4 = [userDefaults objectForKey:@"ThrottlingPolicyCurrentBatchCount"];
  -[ICCloudThrottlingPolicy setCurrentBatchCount:](self, "setCurrentBatchCount:", [v4 unsignedIntegerValue]);

  v5 = [userDefaults objectForKey:@"ThrottlingPolicyCurrentLevelIndex"];
  -[ICCloudThrottlingPolicy setCurrentLevelIndex:](self, "setCurrentLevelIndex:", [v5 unsignedIntegerValue]);

  [userDefaults doubleForKey:@"ThrottlingPolicyStartTime"];
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
  icUserDefaults = [(ICCloudThrottlingPolicy *)self icUserDefaults];
  userDefaults = [icUserDefaults userDefaults];

  v4 = [NSNumber numberWithUnsignedInteger:[(ICCloudThrottlingPolicy *)self currentBatchCount]];
  [userDefaults setObject:v4 forKey:@"ThrottlingPolicyCurrentBatchCount"];

  v5 = [NSNumber numberWithUnsignedInteger:[(ICCloudThrottlingPolicy *)self currentLevelIndex]];
  [userDefaults setObject:v5 forKey:@"ThrottlingPolicyCurrentLevelIndex"];

  policyStartDate = [(ICCloudThrottlingPolicy *)self policyStartDate];
  [policyStartDate timeIntervalSinceReferenceDate];
  [userDefaults setDouble:@"ThrottlingPolicyStartTime" forKey:?];
}

@end