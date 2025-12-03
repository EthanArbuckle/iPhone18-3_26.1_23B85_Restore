@interface _DASDefaultPairedPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (NSArray)triggers;
- (NSDate)lastPredictionTimelineUpdate;
- (_DASDefaultPairedPolicy)init;
- (_DASPredictionTimeline)deviceNearbyTimeline;
- (double)scoreForActivity:(id)activity atDate:(id)date;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)setLastPredictionTimelineUpdate:(id)update;
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

    deviceNearbyTimeline = [(_DASDefaultPairedPolicy *)v3 deviceNearbyTimeline];
  }

  return v3;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  stateCopy = state;
  if ([trigger isEqualToString:@"com.apple.duetactivityscheduler.defaultpairedpolicy.nearbystatus"])
  {
    v6 = +[_CDContextQueries keyPathForDefaultPairedDeviceNearbyStatus];
    v7 = [stateCopy objectForKeyedSubscript:v6];
    v8 = [v7 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy targetDevice] == 1)
  {
    startDate = [activityCopy startDate];
    v5 = startDate == 0;
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
  block[4] = self;
  if (qword_10020B130 != -1)
  {
    dispatch_once(&qword_10020B130, block);
  }

  v2 = qword_10020B138;

  return v2;
}

- (double)scoreForActivity:(id)activity atDate:(id)date
{
  activityCopy = activity;
  dateCopy = date;
  deviceNearbyTimeline = [(_DASDefaultPairedPolicy *)self deviceNearbyTimeline];
  duration = [activityCopy duration];
  if (duration <= _DASActivityDurationModerate)
  {
    v17 = [deviceNearbyTimeline valueAtDate:dateCopy];
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
    v10 = duration;
    v11 = 0.0;
    v12 = 1.0;
    v13 = dateCopy;
    do
    {
      v14 = [deviceNearbyTimeline valueAtDate:v13];
      v15 = v14;
      v16 = 0.0025;
      if (v14)
      {
        [v14 doubleValue];
      }

      v12 = v12 * v16;
      dateCopy = [v13 dateByAddingTimeInterval:900.0];

      v11 = v11 + 900.0;
      v13 = dateCopy;
    }

    while (v11 < v10);
  }

  return v12;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = +[_CDContextQueries keyPathForDefaultPairedDeviceNearbyStatus];
  v9 = [stateCopy objectForKeyedSubscript:v8];

  LOBYTE(stateCopy) = [v9 BOOLValue];
  if (stateCopy)
  {
    v10 = +[NSDate date];
    [(_DASDefaultPairedPolicy *)self scoreForActivity:activityCopy atDate:v10];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  triggers = selfCopy->_triggers;
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
    v9 = selfCopy->_triggers;
    selfCopy->_triggers = v8;

    v4 = selfCopy->_triggers;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (NSDate)lastPredictionTimelineUpdate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastPredictionTimelineUpdate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLastPredictionTimelineUpdate:(id)update
{
  updateCopy = update;
  obj = self;
  objc_sync_enter(obj);
  lastPredictionTimelineUpdate = obj->_lastPredictionTimelineUpdate;
  obj->_lastPredictionTimelineUpdate = updateCopy;

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
  lastPredictionTimelineUpdate = [(_DASDefaultPairedPolicy *)self lastPredictionTimelineUpdate];
  LOBYTE(predictionManager) = [(_DASPredictionManager *)predictionManager isPredictionTimeline:v3 validAtDate:v5 lastUpdatedAt:lastPredictionTimelineUpdate];

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