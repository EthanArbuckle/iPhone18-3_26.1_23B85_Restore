@interface _DASDeviceActivityPolicy
+ (BOOL)isDeviceInUse:(id)a3;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)backgroundTaskAllowedWithType:(id)a3 withRequiredFileProtection:(id)a4 withRationale:(id)a5 withState:(id)a6;
- (BOOL)consideredNonDiscretionary:(id)a3 withContext:(id)a4;
- (BOOL)requiresDeviceInactivityForActivity:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (NSDate)lastPredictionTimelineUpdate;
- (_DASDeviceActivityPolicy)init;
- (_DASPredictionTimeline)deviceActivityTimeline;
- (double)scoreForActivity:(id)a3 atDate:(id)a4;
- (double)weightForActivity:(id)a3;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (void)handleEarlyThermalNotification:(BOOL)a3;
- (void)initializeTimelines;
- (void)printLowLikelihoodRegions;
- (void)registerForEarlyThermalNotifications;
- (void)setLastPredictionTimelineUpdate:(id)a3;
- (void)updateRationaleForTransferSize:(id)a3 withActivity:(id)a4;
@end

@implementation _DASDeviceActivityPolicy

- (_DASPredictionTimeline)deviceActivityTimeline
{
  if (qword_10020B160 != -1)
  {
    sub_10011F300();
  }

  v3 = [(_DASPredictionManager *)self->_predictionManager objectForKeyedSubscript:@"kDeviceActivityTimelineKey"];
  predictionManager = self->_predictionManager;
  v5 = +[NSDate now];
  v6 = [(_DASDeviceActivityPolicy *)self lastPredictionTimelineUpdate];
  LOBYTE(predictionManager) = [(_DASPredictionManager *)predictionManager isPredictionTimeline:v3 validAtDate:v5 lastUpdatedAt:v6];

  if ((predictionManager & 1) == 0)
  {
    v7 = atomic_load(byte_10020B168);
    if (v7)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        sub_10011F314(log);
      }
    }

    else
    {
      atomic_store(1u, byte_10020B168);
      v9 = self->_predictionManager;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004EB14;
      v11[3] = &unk_1001B5668;
      v11[4] = self;
      [(_DASPredictionManager *)v9 asyncDo:v11];
    }
  }

  return v3;
}

- (NSDate)lastPredictionTimelineUpdate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastPredictionTimelineUpdate;
  objc_sync_exit(v2);

  return v3;
}

- (void)printLowLikelihoodRegions
{
  v3 = [(_DASDeviceActivityPolicy *)self deviceActivityTimeline];
  v4 = [v3 lowLikelihoodPeriod];

  v5 = +[NSLocale currentLocale];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = log;
    v8 = [v4 startDate];
    v9 = [v8 descriptionWithLocale:v5];
    v10 = [v4 endDate];
    v11 = [v10 descriptionWithLocale:v5];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Low Likelihood is from %@ to %@", &v12, 0x16u);
  }
}

- (id)initializeTriggers
{
  v2 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_inUseStatus];
  v6[0] = @"identifier";
  v6[1] = @"predicate";
  v7[0] = @"com.apple.duetactivityscheduler.deviceactivitypolicy.inusestatus";
  v7[1] = v2;
  v6[2] = @"deviceSet";
  v6[3] = @"mustWake";
  v7[2] = &off_1001C9970;
  v7[3] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];

  return v4;
}

- (_DASDeviceActivityPolicy)init
{
  v19.receiver = self;
  v19.super_class = _DASDeviceActivityPolicy;
  v2 = [(_DASDeviceActivityPolicy *)&v19 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Device Activity Policy";

    v5 = +[_CDContextQueries keyPathForInUseStatus];
    inUseStatus = v3->_inUseStatus;
    v3->_inUseStatus = v5;

    v7 = [(_DASDeviceActivityPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v7;

    v9 = +[_DASPredictionManager sharedManager];
    predictionManager = v3->_predictionManager;
    v3->_predictionManager = v9;

    lastPredictionTimelineUpdate = v3->_lastPredictionTimelineUpdate;
    v3->_lastPredictionTimelineUpdate = 0;

    v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    v3->_considerAlwaysActive = [v12 BOOLForKey:@"deviceInUse"];

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.duet.activityscheduler.deviceactivitypolicy.queue", v13);
    queue = v3->_queue;
    v3->_queue = v14;

    v16 = os_log_create("com.apple.DuetActivityScheduler", "DeviceActivityPolicy");
    log = v3->_log;
    v3->_log = v16;

    [(_DASDeviceActivityPolicy *)v3 initializeTimelines];
    [(_DASDeviceActivityPolicy *)v3 registerForEarlyThermalNotifications];
  }

  return v3;
}

- (void)initializeTimelines
{
  v3 = [_DASDaemonLogger logForCategory:@"predictions"];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F268(self, v3);
  }

  v4 = [(_DASDeviceActivityPolicy *)self deviceActivityTimeline];

  if (v4)
  {
    v5 = +[_DASPLLogger sharedInstance];
    v6 = [(_DASDeviceActivityPolicy *)self deviceActivityTimeline];
    [v5 recordPrediction:v6 key:@"deviceActivityPrediction" valueMultiplier:100];
  }
}

- (void)registerForEarlyThermalNotifications
{
  v3 = [@"com.apple.system.earlythermalnotification" UTF8String];
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004DE60;
  handler[3] = &unk_1001B5B78;
  handler[4] = self;
  notify_register_dispatch(v3, &self->_earlyThermalNotificationToken, queue, handler);
}

- (void)handleEarlyThermalNotification:(BOOL)a3
{
  self->_deviceWarm = a3;
  if (a3)
  {
    v3 = +[_DASDaemon sharedInstance];
    v5 = @"com.apple.system.earlythermalnotification";
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    [v3 handleTriggersBatched:v4];
  }
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E020;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B150 != -1)
  {
    dispatch_once(&qword_10020B150, block);
  }

  v2 = qword_10020B158;

  return v2;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"com.apple.duetactivityscheduler.deviceactivitypolicy.inusestatus"])
  {
    v6 = +[_CDContextQueries keyPathForInUseStatus];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)appliesToActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceWarm)
  {
    goto LABEL_2;
  }

  v7 = [v4 fileProtection];
  v8 = +[_DASFileProtection complete];
  if ([v7 isEqual:v8])
  {

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v9 = [v5 fastPass];

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_2:
  v6 = 1;
LABEL_7:

  return v6;
}

- (double)weightForActivity:(id)a3
{
  v4 = a3;
  v5 = 20.0;
  if (![(_DASDeviceActivityPolicy *)self requiresDeviceInactivityForActivity:v4])
  {
    if ([v4 requestsApplicationLaunch])
    {
      v5 = 5.0;
    }

    else
    {
      v5 = 10.0;
    }
  }

  return v5;
}

- (double)scoreForActivity:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASDeviceActivityPolicy *)self deviceActivityTimeline];
  if (v8)
  {
    v9 = [v6 duration];
    if (v9 <= _DASActivityDurationModerate)
    {
      v17 = [v8 valueAtDate:v7];
      v18 = v17;
      if (v17)
      {
        [v17 doubleValue];
        v13 = 1.0 - v19;
      }

      else
      {
        v13 = 0.9975;
      }
    }

    else
    {
      v10 = v9;
      v11 = 0.0;
      v12 = v7;
      v13 = 1.0;
      do
      {
        v14 = [v8 valueAtDate:v12];
        v15 = v14;
        v16 = 0.0025;
        if (v14)
        {
          [v14 doubleValue];
        }

        v13 = v13 * (1.0 - v16);
        v7 = [v12 dateByAddingTimeInterval:900.0];

        v11 = v11 + 900.0;
        v12 = v7;
      }

      while (v11 < v10);
    }
  }

  else
  {
    v13 = 1.0;
  }

  return v13;
}

+ (BOOL)isDeviceInUse:(id)a3
{
  v3 = a3;
  v4 = +[_CDContextQueries keyPathForInUseStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  LOBYTE(v4) = ([v5 unsignedLongLongValue] & 5) != 0;
  return v4;
}

- (BOOL)backgroundTaskAllowedWithType:(id)a3 withRequiredFileProtection:(id)a4 withRationale:(id)a5 withState:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (([v9 isEqualToString:_DASLaunchReasonBackgroundProcessing] & 1) == 0)
  {
    if (![v9 isEqualToString:_DASLaunchReasonHealthResearch])
    {
      goto LABEL_9;
    }

    v13 = +[_DASFileProtection complete];
    if ([v10 isEqual:v13])
    {
      v15 = 1;
      goto LABEL_7;
    }

    v16 = +[_DASFileProtection completeUnlessOpen];
    v17 = [v10 isEqual:v16];

    if (v17)
    {
      goto LABEL_9;
    }
  }

  if (![objc_opt_class() isDeviceInUse:v12])
  {
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  v13 = [NSNumber numberWithBool:1];
  v14 = [NSPredicate predicateWithFormat:@"launchType == PROCESSING AND deviceActive == %@", v13];
  [v11 addRationaleWithCondition:v14];

  v15 = 0;
LABEL_7:

LABEL_10:
  return v15;
}

- (BOOL)requiresDeviceInactivityForActivity:(id)a3
{
  v3 = a3;
  if ([v3 requiresDeviceInactivity])
  {
    v4 = 1;
  }

  else if (+[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", v3) && [v3 transferSizeType] == 30)
  {
    v5 = [v3 schedulingPriority];
    v4 = v5 < _DASSchedulingPriorityUserInitiated;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateRationaleForTransferSize:(id)a3 withActivity:(id)a4
{
  v5 = a3;
  if ([a4 transferSizeType] == 30)
  {
    [v5 setResponseOptions:{objc_msgSend(v5, "responseOptions") | 1}];
  }
}

- (BOOL)consideredNonDiscretionary:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 schedulingPriority];
  if (v7 >= _DASSchedulingPriorityUserInitiated || ([v5 userRequestedBackupTask] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = [_DASPhotosPolicy isActivity:v5 consideredNonDiscretionary:v6];
  }

  return v8;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Device Activity Policy"];
  if (self->_considerAlwaysActive && [(_DASDeviceActivityPolicy *)self requiresDeviceInactivityForActivity:v6])
  {
    v9 = [NSPredicate predicateWithFormat:@"considerAlwaysActive == YES && requiresDeviceInactivity == YES"];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v9];

    [(_DASDeviceActivityPolicy *)self updateRationaleForTransferSize:v8 withActivity:v6];
    v10 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v8 rationale:0x384uLL];
    goto LABEL_26;
  }

  v11 = +[_CDContextQueries keyPathForInUseStatus];
  v12 = [v7 objectForKeyedSubscript:v11];

  if ([(_DASDeviceActivityPolicy *)self requiresDeviceInactivityForActivity:v6]&& [_DASDeviceActivityPolicy isDeviceInUse:v7])
  {
    v13 = [NSPredicate predicateWithFormat:@"deviceActivity == %@", v12];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v13];

    [(_DASDeviceActivityPolicy *)self updateRationaleForTransferSize:v8 withActivity:v6];
LABEL_23:
    v23 = 0x384uLL;
    goto LABEL_24;
  }

  if ([v6 requestsApplicationLaunch] && (objc_msgSend(v6, "isContactTracingBackgroundActivity") & 1) == 0)
  {
    v19 = [v6 launchReason];
    v20 = [v6 fileProtection];
    v21 = [(_DASDeviceActivityPolicy *)self backgroundTaskAllowedWithType:v19 withRequiredFileProtection:v20 withRationale:v8 withState:v7];

    if ((v21 & 1) == 0)
    {
      v23 = 86400.0;
LABEL_24:
      v18 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v8 rationale:v23];
      goto LABEL_25;
    }

    if (([v12 unsignedIntValue] & 4) != 0)
    {
      v26 = [NSPredicate predicateWithFormat:@"deviceActivity == %@", v12];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v26];

      goto LABEL_23;
    }

    v15 = +[NSDate date];
    [(_DASDeviceActivityPolicy *)self scoreForActivity:v6 atDate:v15];
    v17 = 1.0 - v22;
  }

  else
  {
    if ([_DASDeviceActivityPolicy isDeviceInUse:v7]&& self->_deviceWarm && ![(_DASDeviceActivityPolicy *)self consideredNonDiscretionary:v6 withContext:v7])
    {
      v24 = [NSNumber numberWithBool:self->_deviceWarm];
      v25 = [NSPredicate predicateWithFormat:@"deviceActivity == %@ AND deviceWarm == %@", v12, v24];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v25];

      [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 2];
      goto LABEL_23;
    }

    if ([v12 BOOLValue])
    {
      v14 = 0.1;
    }

    else
    {
      v14 = 0.5;
    }

    v15 = +[NSDate date];
    [(_DASDeviceActivityPolicy *)self scoreForActivity:v6 atDate:v15];
    v17 = v14 + v16 * 0.5;
  }

  v18 = [_DASPolicyResponse policyResponseWithScore:0 validityDuration:fmax(v17 rationale:0.05), 0x384uLL];
LABEL_25:
  v10 = v18;

LABEL_26:

  return v10;
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

@end