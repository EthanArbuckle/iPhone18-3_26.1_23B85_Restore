@interface _DASDefaultPairedPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (NSArray)triggers;
- (NSDate)lastPredictionTimelineUpdate;
- (_DASDefaultPairedPolicy)init;
- (_DASPredictionTimeline)deviceNearbyTimeline;
- (double)scoreForActivity:(id)a3 atDate:(id)a4;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (void)setLastPredictionTimelineUpdate:(id)a3;
@end

@implementation _DASDefaultPairedPolicy

- (_DASDefaultPairedPolicy)init
{
  v9.receiver = self;
  v9.super_class = _DASDefaultPairedPolicy;
  v2 = [(_DASDefaultPairedPolicy *)&v9 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Default Paired Nearby Policy";

    v5 = +[_DASPredictionManager sharedManager];
    predictionManager = v3->_predictionManager;
    v3->_predictionManager = v5;

    v7 = [(_DASDefaultPairedPolicy *)v3 deviceNearbyTimeline];
  }

  return v3;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"com.apple.duetactivityscheduler.defaultpairedpolicy.nearbystatus"])
  {
    v6 = +[_CDContextQueries keyPathForDefaultPairedDeviceNearbyStatus];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([v3 targetDevice] == 1)
  {
    v4 = [v3 startDate];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D0C8;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B130 != -1)
  {
    dispatch_once(&qword_10020B130, block);
  }

  v2 = qword_10020B138;

  return v2;
}

- (double)scoreForActivity:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASDefaultPairedPolicy *)self deviceNearbyTimeline];
  v9 = [v6 duration];
  if (v9 <= _DASActivityDurationModerate)
  {
    v17 = [v8 valueAtDate:v7];
    v18 = v17;
    if (v17)
    {
      [v17 doubleValue];
      v12 = v19;
    }

    else
    {
      v12 = 0.0025;
    }
  }

  else
  {
    v10 = v9;
    v11 = 0.0;
    v12 = 1.0;
    v13 = v7;
    do
    {
      v14 = [v8 valueAtDate:v13];
      v15 = v14;
      v16 = 0.0025;
      if (v14)
      {
        [v14 doubleValue];
      }

      v12 = v12 * v16;
      v7 = [v13 dateByAddingTimeInterval:900.0];

      v11 = v11 + 900.0;
      v13 = v7;
    }

    while (v11 < v10);
  }

  return v12;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_CDContextQueries keyPathForDefaultPairedDeviceNearbyStatus];
  v9 = [v7 objectForKeyedSubscript:v8];

  LOBYTE(v7) = [v9 BOOLValue];
  if (v7)
  {
    v10 = +[NSDate date];
    [(_DASDefaultPairedPolicy *)self scoreForActivity:v6 atDate:v10];
    v12 = v11;

    v13 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Default Paired Nearby Policy"];
    v14 = [NSNumber numberWithDouble:v12];
    v15 = [NSPredicate predicateWithFormat:@"defaultPaired.likelihood == %@", v14];
    [(_DASPolicyResponseRationale *)v13 addRationaleWithCondition:v15];

    [_DASPolicyResponse policyResponseWithScore:0 validityDuration:fmax(v12 rationale:0.01), 0x384uLL];
  }

  else
  {
    v13 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Default Paired Nearby Policy"];
    v16 = [NSNumber numberWithBool:0];
    v17 = [NSPredicate predicateWithFormat:@"defaultPairedIsNearby == %@", v16];
    [(_DASPolicyResponseRationale *)v13 addRationaleWithCondition:v17];

    [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v13 rationale:0x384uLL];
  }
  v18 = ;

  return v18;
}

- (NSArray)triggers
{
  v2 = self;
  objc_sync_enter(v2);
  triggers = v2->_triggers;
  if (triggers)
  {
    v4 = triggers;
  }

  else
  {
    v5 = +[_CDContextQueries keyPathForDefaultPairedDeviceNearbyStatus];
    v6 = [_CDContextualPredicate predicateForChangeAtKeyPath:v5];

    v11[0] = @"identifier";
    v11[1] = @"predicate";
    v12[0] = @"com.apple.duetactivityscheduler.defaultpairedpolicy.nearbystatus";
    v12[1] = v6;
    v11[2] = @"deviceSet";
    v11[3] = @"mustWake";
    v12[2] = &off_1001C9958;
    v12[3] = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    v13 = v7;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v9 = v2->_triggers;
    v2->_triggers = v8;

    v4 = v2->_triggers;
  }

  objc_sync_exit(v2);

  return v4;
}

- (NSDate)lastPredictionTimelineUpdate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastPredictionTimelineUpdate;
  objc_sync_exit(v2);

  return v3;
}

- (void)setLastPredictionTimelineUpdate:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  lastPredictionTimelineUpdate = obj->_lastPredictionTimelineUpdate;
  obj->_lastPredictionTimelineUpdate = v4;

  objc_sync_exit(obj);
}

- (_DASPredictionTimeline)deviceNearbyTimeline
{
  if (qword_10020B148 != -1)
  {
    sub_10011F254();
  }

  v3 = [(_DASPredictionManager *)self->_predictionManager objectForKeyedSubscript:@"deviceNearby"];
  predictionManager = self->_predictionManager;
  v5 = +[NSDate now];
  v6 = [(_DASDefaultPairedPolicy *)self lastPredictionTimelineUpdate];
  LOBYTE(predictionManager) = [(_DASPredictionManager *)predictionManager isPredictionTimeline:v3 validAtDate:v5 lastUpdatedAt:v6];

  if ((predictionManager & 1) == 0)
  {
    v7 = atomic_load(byte_10020B140);
    if ((v7 & 1) == 0)
    {
      atomic_store(1u, byte_10020B140);
      v8 = self->_predictionManager;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10004D7F4;
      v10[3] = &unk_1001B5668;
      v10[4] = self;
      [(_DASPredictionManager *)v8 asyncDo:v10];
    }
  }

  return v3;
}

@end