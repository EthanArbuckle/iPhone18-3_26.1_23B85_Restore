@interface _DASThunderingHerdPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASThunderingHerdPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)handleTriggerEvent;
- (void)setRecentTriggerEvent:(BOOL)event;
- (void)setWaitingForInactivity:(BOOL)inactivity;
@end

@implementation _DASThunderingHerdPolicy

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForKeybagLockStatus];
  v3 = [_CDContextualPredicate predicateForKeyPath:v2 equalToValue:&off_1001C9B38 withMinimumDurationInPreviousState:14400.0];

  v4 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v5 = [NSPredicate predicateWithValue:1];
  v6 = [NSPredicate predicateWithFormat:@"self.value == %@", &off_1001C9B38];
  v7 = [_CDContextualPredicate predicateForKeyPath:v4 withPredicate:v5 withPredicateForPreviousState:v6 withMinimumDurationInPreviousState:14400.0];

  v14[0] = @"identifier";
  v14[1] = @"predicate";
  v15[0] = @"com.apple.duetactivityscheduler.thpolicy.lengthyLock";
  v15[1] = v3;
  v14[2] = @"deviceSet";
  v14[3] = @"mustWake";
  v15[2] = &off_1001C9B50;
  v15[3] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v16[0] = v8;
  v12[0] = @"identifier";
  v12[1] = @"predicate";
  v13[0] = @"com.apple.duetactivityscheduler.thpolicy.lengthyNoNetwork";
  v13[1] = v7;
  v12[2] = @"deviceSet";
  v12[3] = @"mustWake";
  v13[2] = &off_1001C9B50;
  v13[3] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
  v16[1] = v9;
  v10 = [NSArray arrayWithObjects:v16 count:2];

  return v10;
}

- (_DASThunderingHerdPolicy)init
{
  v31.receiver = self;
  v31.super_class = _DASThunderingHerdPolicy;
  v2 = [(_DASThunderingHerdPolicy *)&v31 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Thundering Herd Policy";

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.dasd.thunderingHerdPolicy.syncQueue", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3->_queue);
    shortTermTimer = v3->_shortTermTimer;
    v3->_shortTermTimer = v8;

    initializeTriggers = [(_DASThunderingHerdPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;

    dispatch_source_set_timer(v3->_shortTermTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xE8D4A51000uLL);
    v12 = v3->_shortTermTimer;
    dispatch_set_qos_class_fallback();
    v13 = v3->_shortTermTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000730D8;
    handler[3] = &unk_1001B5668;
    v14 = v3;
    v30 = v14;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_activate(v3->_shortTermTimer);
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3->_queue);
    v16 = v14[7];
    v14[7] = v15;

    dispatch_source_set_timer(v14[7], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xE8D4A51000uLL);
    v17 = v14[7];
    dispatch_set_qos_class_fallback();
    v18 = v14[7];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000730E4;
    v27[3] = &unk_1001B5668;
    v19 = v14;
    v28 = v19;
    dispatch_source_set_event_handler(v18, v27);
    dispatch_activate(v14[7]);
    v20 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    *(v19 + 10) = [v20 BOOLForKey:@"ignoreTH"];

    if (*(v19 + 10) == 1)
    {
      v21 = [_DASDaemonLogger logForCategory:@"thpolicy"];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring TH triggers!", buf, 2u);
      }
    }

    v22 = v3->_queue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000730F0;
    v24[3] = &unk_1001B5B78;
    v25 = v19;
    notify_register_dispatch("com.apple.dasd.thunderingHerdTrigger", &unk_10020B468, v22, v24);
  }

  return v3;
}

- (void)setRecentTriggerEvent:(BOOL)event
{
  eventCopy = event;
  self->_recentTriggerEvent = event;
  v4 = [_DASDaemonLogger logForCategory:@"thpolicy"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = eventCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting recent trigger event to %u", v5, 8u);
  }
}

- (void)setWaitingForInactivity:(BOOL)inactivity
{
  inactivityCopy = inactivity;
  self->_waitingForInactivity = inactivity;
  v4 = [_DASDaemonLogger logForCategory:@"thpolicy"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = inactivityCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set waiting for user inactivity to %u", v5, 8u);
  }
}

+ (id)policyInstance
{
  if (qword_10020B470 != -1)
  {
    sub_100121CAC();
  }

  v3 = qword_10020B478;

  return v3;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy budgeted])
  {
    fileProtection = [activityCopy fileProtection];
    v5 = +[_DASFileProtection complete];
    if ([fileProtection isEqual:v5])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = [activityCopy requestsImmediateRuntime] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)handleTriggerEvent
{
  [(_DASThunderingHerdPolicy *)self setRecentTriggerEvent:1];
  [(_DASThunderingHerdPolicy *)self setWaitingForInactivity:1];
  shortTermTimer = self->_shortTermTimer;
  v4 = dispatch_walltime(0, 60000000000);
  dispatch_source_set_timer(shortTermTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
  longTermTimer = self->_longTermTimer;
  v6 = dispatch_walltime(0, 180000000000);

  dispatch_source_set_timer(longTermTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  if (([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.thpolicy.lengthyLock"] & 1) != 0 || objc_msgSend(triggerCopy, "isEqualToString:", @"com.apple.duetactivityscheduler.thpolicy.lengthyNoNetwork"))
  {
    [(_DASThunderingHerdPolicy *)self handleTriggerEvent];
    [_DASMetricRecorder recordOccurrenceForKey:@"com.apple.dasd.thunderingHerdTrigger"];
    objc_storeStrong(&self->_recentTriggerReason, trigger);
  }

  return 1;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  waitingForInactivity = self->_waitingForInactivity;
  if (self->_recentTriggerEvent)
  {
    if (!self->_waitingForInactivity)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (self->_waitingForInactivity)
  {
LABEL_5:
    if (![_DASDeviceActivityPolicy isDeviceInUse:stateCopy])
    {
      [(_DASThunderingHerdPolicy *)self setWaitingForInactivity:0];
    }

LABEL_7:
    if (self->_ignoreTH)
    {
      goto LABEL_8;
    }

    v10 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Thundering Herd Policy"];
    if (self->_recentTriggerEvent)
    {
      [NSPredicate predicateWithFormat:@"timeSinceThunderingHerdTriggerEvent < %@", &off_1001C9B68, v20];
    }

    else
    {
      if (!self->_waitingForInactivity || ![_DASDeviceActivityPolicy isDeviceInUse:stateCopy])
      {
        v13 = 0;
        v14 = 0;
        goto LABEL_16;
      }

      [NSPredicate predicateWithFormat:@"deviceInUse == %u and timeSinceThunderingHerdTriggerEvent < %@", 1, &off_1001C9B80];
    }
    v11 = ;
    [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v11];

    v12 = [NSPredicate predicateWithFormat:@"recentTriggerReason == %@", self->_recentTriggerReason];
    [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v12];

    v13 = 1;
    v14 = 33;
LABEL_16:
    v21 = @"ThunderingHerd";
    v15 = [NSNumber numberWithBool:v13];
    v22 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    v17 = +[_DASPPSDataManager sharedInstance];
    [v17 sendDataToPPS:v16 subsystem:@"BackgroundProcessing" category:@"SystemConditionsOther"];

    if ([_DASPhotosPolicy isActivity:activityCopy consideredNonDiscretionary:stateCopy])
    {
      v18 = [NSPredicate predicateWithFormat:@"isPhotosConsideredNonDiscretionary == 1"];
      [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v18];

      [_DASPolicyResponse policyResponseWithScore:v10 validityDuration:0.8 rationale:0x384uLL];
    }

    else
    {
      [_DASPolicyResponse policyResponseWithDecision:v14 validityDuration:v10 rationale:0x384uLL];
    }
    v9 = ;

    goto LABEL_20;
  }

LABEL_8:
  v9 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:0 rationale:0x384uLL];
LABEL_20:

  return v9;
}

@end