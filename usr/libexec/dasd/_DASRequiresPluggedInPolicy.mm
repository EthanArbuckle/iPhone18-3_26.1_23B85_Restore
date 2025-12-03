@interface _DASRequiresPluggedInPolicy
+ (BOOL)isWirelessCharger:(id)charger;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)isExternallyPowered;
- (BOOL)requiresPluginForActivity:(id)activity;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (NSDate)lastPredictionTimelineUpdate;
- (_DASPredictionTimeline)pluginTimeline;
- (_DASRequiresPluggedInPolicy)init;
- (double)predictedScoreForActivity:(id)activity atDate:(id)date;
- (double)scoreForActivity:(id)activity isPluggedIn:(BOOL)in;
- (double)scoreForActivity:(id)activity withBatteryStatus:(id)status withTopOffStatus:(unint64_t)offStatus timeSincePluginStateChange:(double)change atDate:(id)date rationale:(id)rationale;
- (double)weightForActivity:(id)activity;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
- (unint64_t)notChargingReason;
- (void)computeAndRecordPolicyDurationStatsWhilePluggedIn:(BOOL)in considerPluggedIn:(BOOL)pluggedIn atDate:(id)date;
- (void)setLastPredictionTimelineUpdate:(id)update;
- (void)updateRationaleForTransferSize:(id)size withActivity:(id)activity;
@end

@implementation _DASRequiresPluggedInPolicy

- (_DASPredictionTimeline)pluginTimeline
{
  if (qword_10020B3D8 != -1)
  {
    sub_100120B74();
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10006B854;
  v17 = sub_10006B864;
  v18 = [(_DASPredictionManager *)self->_predictionManager objectForKeyedSubscript:@"plugin"];
  predictionManager = self->_predictionManager;
  v4 = v14[5];
  v5 = +[NSDate now];
  lastPredictionTimelineUpdate = [(_DASRequiresPluggedInPolicy *)self lastPredictionTimelineUpdate];
  LODWORD(predictionManager) = [(_DASPredictionManager *)predictionManager isPredictionTimeline:v4 validAtDate:v5 lastUpdatedAt:lastPredictionTimelineUpdate];

  if (!predictionManager)
  {
    v7 = atomic_load(byte_10020B3D0);
    if (v7)
    {
      v8 = [_DASDaemonLogger logForCategory:@"prediction"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10011F314(v8);
      }
    }

    else
    {
      atomic_store(1u, byte_10020B3D0);
      v9 = self->_predictionManager;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10006B86C;
      v12[3] = &unk_1001B5708;
      v12[4] = self;
      v12[5] = &v13;
      [(_DASPredictionManager *)v9 asyncDo:v12];
    }
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (NSDate)lastPredictionTimelineUpdate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastPredictionTimelineUpdate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)initializeTriggers
{
  v3 = +[_CDContextQueries keyPathForPluginStatus];
  v13 = [_CDContextualPredicate predicateForChangeAtKeyPath:v3];

  v12 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_batteryStatusKeyPath];
  v10 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_watchIsPluggedInKeyPath];
  v11 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_topOffCheckpointKeypath];
  v20[0] = @"identifier";
  v20[1] = @"predicate";
  v21[0] = @"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin";
  v21[1] = v13;
  v20[2] = @"deviceSet";
  v20[3] = @"mustWake";
  v21[2] = &off_1001C9AC0;
  v21[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  v22[0] = v4;
  v18[0] = @"identifier";
  v18[1] = @"predicate";
  v19[0] = @"com.apple.duetactivityscheduler.pluggedinpolicy.batteryStatus";
  v19[1] = v12;
  v18[2] = @"deviceSet";
  v18[3] = @"mustWake";
  v19[2] = &off_1001C9AC0;
  v19[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  v22[1] = v5;
  v16[0] = @"identifier";
  v16[1] = @"predicate";
  v17[0] = @"com.apple.duetactivityscheduler.pluggedinpolicy.watchispluggedin";
  v17[1] = v10;
  v16[2] = @"deviceSet";
  v16[3] = @"mustWake";
  v17[2] = &off_1001C9AC0;
  v17[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
  v22[2] = v6;
  v14[0] = @"identifier";
  v14[1] = @"predicate";
  v15[0] = @"com.apple.das.top.checkpointStatus";
  v15[1] = v11;
  v14[2] = @"deviceSet";
  v14[3] = @"mustWake";
  v15[2] = &off_1001C9AC0;
  v15[3] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v22[3] = v7;
  v8 = [NSArray arrayWithObjects:v22 count:4];

  return v8;
}

- (_DASRequiresPluggedInPolicy)init
{
  v29.receiver = self;
  v29.super_class = _DASRequiresPluggedInPolicy;
  v2 = [(_DASRequiresPluggedInPolicy *)&v29 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Charger Plugged In Policy";

    v5 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
    batteryStatusKeyPath = v3->_batteryStatusKeyPath;
    v3->_batteryStatusKeyPath = v5;

    v7 = +[_CDContextQueries keyPathForDefaultPairedDevicePluginStatus];
    watchIsPluggedInKeyPath = v3->_watchIsPluggedInKeyPath;
    v3->_watchIsPluggedInKeyPath = v7;

    v9 = +[_DASPredictionManager sharedManager];
    predictionManager = v3->_predictionManager;
    v3->_predictionManager = v9;

    v11 = +[_DASPredictionManager sharedTimelinePredictor];
    predictor = v3->_predictor;
    v3->_predictor = v11;

    pluginTimeline = [(_DASRequiresPluggedInPolicy *)v3 pluginTimeline];
    v3->_isIpad = +[_DASConfig isiPad];
    v14 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    byte_10020B3B0 = [v14 BOOLForKey:@"imposePluginDelay"];

    v15 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    v3->_ignoreIsCharging = [v15 BOOLForKey:@"ignoreIsCharging"];

    v16 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler.plugin"];
    pluginStatusDefaults = v3->_pluginStatusDefaults;
    v3->_pluginStatusDefaults = v16;

    v18 = [_CDContextualKeyPath keyPathWithKey:@"/charging/topOffCheckpoint"];
    topOffCheckpointKeypath = v3->_topOffCheckpointKeypath;
    v3->_topOffCheckpointKeypath = v18;

    v3->_deficitProcessing = [(NSUserDefaults *)v3->_pluginStatusDefaults BOOLForKey:@"deficitProcessing"];
    v20 = [_DASDaemonLogger logForCategory:@"stats"];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      deficitProcessing = v3->_deficitProcessing;
      *buf = 67109120;
      v31 = deficitProcessing;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Deficit Processing=%u", buf, 8u);
    }

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("com.apple.dasd.pluginStatsRecording", v22);
    statsRecordingQueue = v3->_statsRecordingQueue;
    v3->_statsRecordingQueue = v23;

    v25 = [_DASDaemonLogger logForCategory:@"predictions"];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_100120A0C(v3, v25);
    }

    initializeTriggers = [(_DASRequiresPluggedInPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B3B8 != -1)
  {
    sub_100120AA4();
  }

  v3 = qword_10020B3C0;

  return v3;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  stateCopy = state;
  if ([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin"])
  {
    v8 = +[_CDContextQueries keyPathForPluginStatus];
    v9 = [stateCopy objectForKeyedSubscript:v8];
    bOOLValue = [v9 BOOLValue];

    self = +[_DASPLLogger sharedInstance];
    [(_DASRequiresPluggedInPolicy *)self reportNewStatus:bOOLValue forTrigger:off_10020ACD0];

    LOBYTE(self) = bOOLValue ^ 1;
  }

  else if ([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.pluggedinpolicy.batteryStatus"])
  {
    LOBYTE(self) = 1;
  }

  else if ([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.pluggedinpolicy.watchispluggedin"])
  {
    v11 = [stateCopy objectForKeyedSubscript:self->_watchIsPluggedInKeyPath];
    LODWORD(self) = [v11 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  fastPass = [activityCopy fastPass];

  if (fastPass)
  {
    v5 = [_DASDaemonLogger logForCategory:@"pluggedinpolicy"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100120AB8(v5);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    LODWORD(v5) = [activityCopy beforeDaysFirstActivity] ^ 1;
  }

  return v5;
}

- (double)weightForActivity:(id)activity
{
  activityCopy = activity;
  v5 = 20.0;
  if (![(_DASRequiresPluggedInPolicy *)self requiresPluginForActivity:activityCopy])
  {
    if (([activityCopy requestsApplicationLaunch] & 1) != 0 || (objc_msgSend(activityCopy, "relatedApplications"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
    {
      v5 = 2.0;
    }

    else
    {
      v5 = 10.0;
    }
  }

  return v5;
}

- (double)scoreForActivity:(id)activity isPluggedIn:(BOOL)in
{
  result = 1.0;
  if (!in)
  {
    v5 = [(_DASRequiresPluggedInPolicy *)self requiresPluginForActivity:activity, 1.0];
    result = 0.5;
    if (v5)
    {
      return 0.0;
    }
  }

  return result;
}

- (BOOL)requiresPluginForActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy requiresPlugin])
  {
    v4 = 1;
  }

  else if (+[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", activityCopy) && [activityCopy transferSizeType] == 30)
  {
    schedulingPriority = [activityCopy schedulingPriority];
    v4 = schedulingPriority < _DASSchedulingPriorityUserInitiated;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateRationaleForTransferSize:(id)size withActivity:(id)activity
{
  sizeCopy = size;
  if ([activity transferSizeType] == 30)
  {
    [sizeCopy setResponseOptions:{objc_msgSend(sizeCopy, "responseOptions") | 1}];
  }
}

+ (BOOL)isWirelessCharger:(id)charger
{
  chargerCopy = charger;
  v4 = +[_CDContextQueries batteryAdapterIsWirelessKey];
  v5 = [chargerCopy objectForKeyedSubscript:v4];

  LOBYTE(chargerCopy) = [v5 BOOLValue];
  return chargerCopy;
}

- (void)computeAndRecordPolicyDurationStatsWhilePluggedIn:(BOOL)in considerPluggedIn:(BOOL)pluggedIn atDate:(id)date
{
  dateCopy = date;
  v9 = os_transaction_create();
  statsRecordingQueue = self->_statsRecordingQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006A368;
  v13[3] = &unk_1001B6C88;
  inCopy = in;
  pluggedInCopy = pluggedIn;
  v14 = v9;
  selfCopy = self;
  v16 = dateCopy;
  v11 = dateCopy;
  v12 = v9;
  dispatch_async(statsRecordingQueue, v13);
}

- (unint64_t)notChargingReason
{
  v2 = +[_DASBatteryTemperatureReader batteryProperties];
  v3 = [v2 objectForKeyedSubscript:@"ChargerData"];
  v4 = [v3 objectForKeyedSubscript:@"NotChargingReason"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    v6 = [_DASDaemonLogger logForCategory:@"pluggedinpolicy"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120AFC(v4, v6);
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (BOOL)isExternallyPowered
{
  v3 = +[_CDClientContext userContext];
  v4 = [v3 objectForKeyedSubscript:self->_batteryStatusKeyPath];
  v5 = +[_CDContextQueries batteryExternalConnectedKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = +[_CDContextQueries batteryIsChargingKey];
    v9 = [v4 objectForKeyedSubscript:v8];
    bOOLValue2 = [v9 BOOLValue];

    v11 = +[_CDContextQueries batteryFullyChargedKey];
    v12 = [v4 objectForKeyedSubscript:v11];
    if ([v12 BOOLValue])
    {
      v13 = 1;
    }

    else
    {
      v15 = +[_CDContextQueries batteryPercentageKey];
      v16 = [v4 objectForKeyedSubscript:v15];
      v13 = [v16 intValue] == 100;
    }

    v17 = [v3 objectForKeyedSubscript:self->_topOffCheckpointKeypath];
    unsignedIntegerValue = [v17 unsignedIntegerValue];

    if ((unsignedIntegerValue - 2) < 3)
    {
      v19 = 1;
    }

    else
    {
      v19 = bOOLValue2;
    }

    if ((v19 & 1) != 0 || v13)
    {
      qword_10020B3C8 = 0;
      v14 = 1;
    }

    else if ([_DASRequiresPluggedInPolicy isWirelessCharger:v4]&& [(_DASRequiresPluggedInPolicy *)self deviceIsToppingOff:unsignedIntegerValue])
    {
      v14 = 0;
    }

    else
    {
      if (!qword_10020B3C8)
      {
        qword_10020B3C8 = [(_DASRequiresPluggedInPolicy *)self notChargingReason];
      }

      v14 = [objc_opt_class() isIgnorableNotChargingReason:qword_10020B3C8];
    }
  }

  else
  {
    v14 = 0;
    qword_10020B3C8 = 0;
  }

  return v14;
}

- (double)scoreForActivity:(id)activity withBatteryStatus:(id)status withTopOffStatus:(unint64_t)offStatus timeSincePluginStateChange:(double)change atDate:(id)date rationale:(id)rationale
{
  activityCopy = activity;
  statusCopy = status;
  dateCopy = date;
  rationaleCopy = rationale;
  v15 = +[_CDContextQueries batteryExternalConnectedKey];
  v16 = [statusCopy objectForKeyedSubscript:v15];
  bOOLValue = [v16 BOOLValue];

  v17 = +[_CDContextQueries batteryIsChargingKey];
  v18 = [statusCopy objectForKeyedSubscript:v17];
  bOOLValue2 = [v18 BOOLValue];

  v20 = +[_CDContextQueries batteryFullyChargedKey];
  v21 = [statusCopy objectForKeyedSubscript:v20];
  if ([v21 BOOLValue])
  {
    v22 = 1;
  }

  else
  {
    v23 = +[_CDContextQueries batteryPercentageKey];
    v24 = [statusCopy objectForKeyedSubscript:v23];
    v22 = [v24 intValue] == 100;
  }

  v25 = +[_CDContextQueries batteryVoltageKey];
  v26 = [statusCopy objectForKeyedSubscript:v25];
  integerValue = [v26 integerValue];

  v28 = +[_CDContextQueries batteryTemperatureKey];
  v29 = [statusCopy objectForKeyedSubscript:v28];
  integerValue2 = [v29 integerValue];

  v31 = +[_CDContextQueries batteryPercentageKey];
  v32 = [statusCopy objectForKeyedSubscript:v31];
  integerValue3 = [v32 integerValue];

  v33 = bOOLValue;
  if (([activityCopy hasMagneticSensitivity] & bOOLValue) == 1)
  {
    v34 = [NSPredicate predicateWithFormat:@"hasMagneticSensitivity == YES AND isPluggedIn == YES"];
    v35 = rationaleCopy;
    [rationaleCopy addRationaleWithCondition:v34];

    v36 = 0.0;
    v37 = dateCopy;
    goto LABEL_39;
  }

  if (offStatus - 2 < 3)
  {
    v38 = @"topOffProtectionEngaged == %@";
    v39 = bOOLValue;
LABEL_8:
    v40 = [NSPredicate predicateWithFormat:v38, &__kCFBooleanTrue];
    [rationaleCopy addRationaleWithCondition:v40];

    goto LABEL_9;
  }

  ignoreIsCharging = self->_ignoreIsCharging;
  if ([_DASRequiresPluggedInPolicy isWirelessCharger:statusCopy]&& [(_DASRequiresPluggedInPolicy *)self deviceIsToppingOff:offStatus])
  {
    v39 = 0;
    v38 = @"deviceTopOff == %@";
    goto LABEL_8;
  }

  v39 = bOOLValue;
  if (!bOOLValue || (v39 = bOOLValue, ignoreIsCharging))
  {
LABEL_9:
    v33 = +[_CDContextQueries batteryExternalConnectedKey];
    v41 = [NSNumber numberWithBool:v39];
    v42 = [NSPredicate predicateWithFormat:@"%@ == %@", v33, v41];
    v35 = rationaleCopy;
    [rationaleCopy addRationaleWithCondition:v42];

    LODWORD(v33) = bOOLValue;
    v37 = dateCopy;
    selfCopy6 = self;
    [(_DASRequiresPluggedInPolicy *)self computeAndRecordPolicyDurationStatsWhilePluggedIn:bOOLValue considerPluggedIn:v39 atDate:dateCopy];
    v36 = 1.0;
    if (v39)
    {
      goto LABEL_39;
    }

    goto LABEL_10;
  }

  if ((v22 | bOOLValue2))
  {
    v37 = dateCopy;
    selfCopy4 = self;
    self->_lastNotChargingReason = 0;
    v48 = bOOLValue;
    v35 = rationaleCopy;
  }

  else
  {
    v37 = dateCopy;
    selfCopy4 = self;
    if (!self->_lastNotChargingReason)
    {
      self->_lastNotChargingReason = [(_DASRequiresPluggedInPolicy *)self notChargingReason];
    }

    v48 = bOOLValue;
    v35 = rationaleCopy;
    if (([objc_opt_class() isIgnorableNotChargingReason:self->_lastNotChargingReason] & 1) == 0)
    {
      v49 = [NSNumber numberWithUnsignedInteger:self->_lastNotChargingReason];
      v50 = [NSPredicate predicateWithFormat:@"isCharging == NO AND notChargingReason == %@", v49];
      [rationaleCopy addRationaleWithCondition:v50];

      selfCopy4 = self;
      v33 = bOOLValue;
      v48 = 0;
    }
  }

  if (selfCopy4->_isIpad && integerValue >= 4200 && integerValue2 >= 3500 && !selfCopy4->_deficitProcessing)
  {
    userInfo = [activityCopy userInfo];
    v52 = [userInfo objectForKeyedSubscript:_DASCTSBypassBatteryAgingProtectionKey];
    if ([v52 BOOLValue])
    {
LABEL_32:

      goto LABEL_33;
    }

    backlogged = [activityCopy backlogged];

    if ((backlogged & 1) == 0)
    {
      v53 = [NSNumber numberWithInteger:integerValue];
      v35 = rationaleCopy;
      v52 = [NSNumber numberWithInteger:integerValue2];
      v54 = [NSPredicate predicateWithFormat:@"voltage == %@ AND temperature == %@", v53, v52];
      [rationaleCopy addRationaleWithCondition:v54];

      userInfo = v53;
      v48 = 0;
      goto LABEL_32;
    }
  }

LABEL_33:
  if (((byte_10020B3B0 & 1) != 0 || ([activityCopy backlogged] & 1) == 0 && +[_DASRequiresPluggedInPolicy isWirelessCharger:](_DASRequiresPluggedInPolicy, "isWirelessCharger:", statusCopy) && integerValue3 <= 79) && change > 0.0 && change < 900.0)
  {
    v55 = [NSNumber numberWithDouble:change / 60.0];
    v56 = [NSPredicate predicateWithFormat:@"timeSincePlugin == %@", v55];
    [v35 addRationaleWithCondition:v56];

    [(_DASRequiresPluggedInPolicy *)self computeAndRecordPolicyDurationStatsWhilePluggedIn:bOOLValue considerPluggedIn:0 atDate:v37];
LABEL_11:
    name = [activityCopy name];
    v45 = [name containsString:@"spotlightknowledged.task.priority"];

    selfCopy6 = self;
    v36 = 0.0;
    if (v45)
    {
      goto LABEL_39;
    }

    goto LABEL_12;
  }

  selfCopy6 = self;
  [(_DASRequiresPluggedInPolicy *)self computeAndRecordPolicyDurationStatsWhilePluggedIn:v33 considerPluggedIn:v48 atDate:v37];
  v36 = 1.0;
  if (v48)
  {
    goto LABEL_39;
  }

LABEL_10:
  if (v33)
  {
    goto LABEL_11;
  }

LABEL_12:
  v36 = 0.5;
  if ([(_DASRequiresPluggedInPolicy *)selfCopy6 requiresPluginForActivity:activityCopy])
  {
    [(_DASRequiresPluggedInPolicy *)selfCopy6 updateRationaleForTransferSize:v35 withActivity:activityCopy];
    v36 = 0.0;
  }

LABEL_39:

  return v36;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if ([activityCopy targetDevice])
  {
    v9 = self->_watchIsPluggedInKeyPath;
    v10 = [stateCopy objectForKeyedSubscript:v9];
    bOOLValue = [v10 BOOLValue];

    [(_DASRequiresPluggedInPolicy *)self scoreForActivity:activityCopy isPluggedIn:bOOLValue];
    v13 = v12;
    if (v12 == 0.0)
    {
      [(_DASRequiresPluggedInPolicy *)self updateRationaleForTransferSize:v8 withActivity:activityCopy];
      v14 = [NSNumber numberWithBool:bOOLValue];
      v15 = [NSPredicate predicateWithFormat:@"%@ == %@", v9, v14];

      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v15];
    }

    v16 = [_DASPolicyResponse policyResponseWithScore:v8 validityDuration:v13 rationale:0x384uLL];
  }

  else
  {
    v9 = +[NSDate date];
    v17 = +[_CDContextQueries keyPathForPluginStatus];
    v18 = [stateCopy lastModifiedDateForContextualKeyPath:v17];

    if (v18)
    {
      [(_CDContextualKeyPath *)v9 timeIntervalSinceDate:v18];
      v20 = v19;
    }

    else
    {
      v20 = 901.0;
    }

    v21 = [stateCopy objectForKeyedSubscript:self->_topOffCheckpointKeypath];
    unsignedIntegerValue = [v21 unsignedIntegerValue];

    v23 = [stateCopy objectForKeyedSubscript:self->_batteryStatusKeyPath];
    if (+[_DASRequiresPluggedInPolicy isWirelessCharger:](_DASRequiresPluggedInPolicy, "isWirelessCharger:", v23) && (v24 = [activityCopy schedulingPriority], v24 < _DASSchedulingPriorityUtility) && -[_DASRequiresPluggedInPolicy deviceIsToppingOff:](self, "deviceIsToppingOff:", unsignedIntegerValue))
    {
      v25 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"priority == %llu && topOffStatus == %llu", [activityCopy schedulingPriority], unsignedIntegerValue);
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v25];
      v16 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v8 rationale:0x384uLL];
    }

    else
    {
      [(_DASRequiresPluggedInPolicy *)self scoreForActivity:activityCopy withBatteryStatus:v23 withTopOffStatus:unsignedIntegerValue timeSincePluginStateChange:v9 atDate:v8 rationale:v20];
      v16 = [_DASPolicyResponse policyResponseWithScore:"policyResponseWithScore:validityDuration:rationale:" validityDuration:v8 rationale:?];
    }
  }

  return v16;
}

- (double)predictedScoreForActivity:(id)activity atDate:(id)date
{
  activityCopy = activity;
  dateCopy = date;
  v8 = 0.5;
  if ([activityCopy targetDevice] != 1 && objc_msgSend(activityCopy, "targetDevice") != 2)
  {
    pluginTimeline = [(_DASRequiresPluggedInPolicy *)self pluginTimeline];
    v10 = [pluginTimeline valueAtDate:dateCopy];

    if (v10)
    {
      [v10 doubleValue];
      v12 = v11;
      [(_DASRequiresPluggedInPolicy *)self scoreForActivity:activityCopy isPluggedIn:v11 > 0.0];
      v8 = v12 * v13;
    }

    else
    {
      [(_DASRequiresPluggedInPolicy *)self scoreForActivity:activityCopy isPluggedIn:0];
      v8 = v14;
    }
  }

  return v8;
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

@end