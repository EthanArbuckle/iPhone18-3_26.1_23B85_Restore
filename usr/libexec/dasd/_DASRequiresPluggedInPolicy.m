@interface _DASRequiresPluggedInPolicy
+ (BOOL)isWirelessCharger:(id)a3;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)isExternallyPowered;
- (BOOL)requiresPluginForActivity:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (NSDate)lastPredictionTimelineUpdate;
- (_DASPredictionTimeline)pluginTimeline;
- (_DASRequiresPluggedInPolicy)init;
- (double)predictedScoreForActivity:(id)a3 atDate:(id)a4;
- (double)scoreForActivity:(id)a3 isPluggedIn:(BOOL)a4;
- (double)scoreForActivity:(id)a3 withBatteryStatus:(id)a4 withTopOffStatus:(unint64_t)a5 timeSincePluginStateChange:(double)a6 atDate:(id)a7 rationale:(id)a8;
- (double)weightForActivity:(id)a3;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (unint64_t)notChargingReason;
- (void)computeAndRecordPolicyDurationStatsWhilePluggedIn:(BOOL)a3 considerPluggedIn:(BOOL)a4 atDate:(id)a5;
- (void)setLastPredictionTimelineUpdate:(id)a3;
- (void)updateRationaleForTransferSize:(id)a3 withActivity:(id)a4;
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
  v6 = [(_DASRequiresPluggedInPolicy *)self lastPredictionTimelineUpdate];
  LODWORD(predictionManager) = [(_DASPredictionManager *)predictionManager isPredictionTimeline:v4 validAtDate:v5 lastUpdatedAt:v6];

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastPredictionTimelineUpdate;
  objc_sync_exit(v2);

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

    v13 = [(_DASRequiresPluggedInPolicy *)v3 pluginTimeline];
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

    v26 = [(_DASRequiresPluggedInPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v26;
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

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin"])
  {
    v8 = +[_CDContextQueries keyPathForPluginStatus];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v9 BOOLValue];

    self = +[_DASPLLogger sharedInstance];
    [(_DASRequiresPluggedInPolicy *)self reportNewStatus:v10 forTrigger:off_10020ACD0];

    LOBYTE(self) = v10 ^ 1;
  }

  else if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.pluggedinpolicy.batteryStatus"])
  {
    LOBYTE(self) = 1;
  }

  else if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.pluggedinpolicy.watchispluggedin"])
  {
    v11 = [v7 objectForKeyedSubscript:self->_watchIsPluggedInKeyPath];
    LODWORD(self) = [v11 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 fastPass];

  if (v4)
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
    LODWORD(v5) = [v3 beforeDaysFirstActivity] ^ 1;
  }

  return v5;
}

- (double)weightForActivity:(id)a3
{
  v4 = a3;
  v5 = 20.0;
  if (![(_DASRequiresPluggedInPolicy *)self requiresPluginForActivity:v4])
  {
    if (([v4 requestsApplicationLaunch] & 1) != 0 || (objc_msgSend(v4, "relatedApplications"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
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

- (double)scoreForActivity:(id)a3 isPluggedIn:(BOOL)a4
{
  result = 1.0;
  if (!a4)
  {
    v5 = [(_DASRequiresPluggedInPolicy *)self requiresPluginForActivity:a3, 1.0];
    result = 0.5;
    if (v5)
    {
      return 0.0;
    }
  }

  return result;
}

- (BOOL)requiresPluginForActivity:(id)a3
{
  v3 = a3;
  if ([v3 requiresPlugin])
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

+ (BOOL)isWirelessCharger:(id)a3
{
  v3 = a3;
  v4 = +[_CDContextQueries batteryAdapterIsWirelessKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)computeAndRecordPolicyDurationStatsWhilePluggedIn:(BOOL)a3 considerPluggedIn:(BOOL)a4 atDate:(id)a5
{
  v8 = a5;
  v9 = os_transaction_create();
  statsRecordingQueue = self->_statsRecordingQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006A368;
  v13[3] = &unk_1001B6C88;
  v17 = a3;
  v18 = a4;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
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
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v6 = [_DASDaemonLogger logForCategory:@"pluggedinpolicy"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120AFC(v4, v6);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isExternallyPowered
{
  v3 = +[_CDClientContext userContext];
  v4 = [v3 objectForKeyedSubscript:self->_batteryStatusKeyPath];
  v5 = +[_CDContextQueries batteryExternalConnectedKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = +[_CDContextQueries batteryIsChargingKey];
    v9 = [v4 objectForKeyedSubscript:v8];
    v10 = [v9 BOOLValue];

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
    v18 = [v17 unsignedIntegerValue];

    if ((v18 - 2) < 3)
    {
      v19 = 1;
    }

    else
    {
      v19 = v10;
    }

    if ((v19 & 1) != 0 || v13)
    {
      qword_10020B3C8 = 0;
      v14 = 1;
    }

    else if ([_DASRequiresPluggedInPolicy isWirelessCharger:v4]&& [(_DASRequiresPluggedInPolicy *)self deviceIsToppingOff:v18])
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

- (double)scoreForActivity:(id)a3 withBatteryStatus:(id)a4 withTopOffStatus:(unint64_t)a5 timeSincePluginStateChange:(double)a6 atDate:(id)a7 rationale:(id)a8
{
  v13 = a3;
  v14 = a4;
  v59 = a7;
  v62 = a8;
  v15 = +[_CDContextQueries batteryExternalConnectedKey];
  v16 = [v14 objectForKeyedSubscript:v15];
  v63 = [v16 BOOLValue];

  v17 = +[_CDContextQueries batteryIsChargingKey];
  v18 = [v14 objectForKeyedSubscript:v17];
  v19 = [v18 BOOLValue];

  v20 = +[_CDContextQueries batteryFullyChargedKey];
  v21 = [v14 objectForKeyedSubscript:v20];
  if ([v21 BOOLValue])
  {
    v22 = 1;
  }

  else
  {
    v23 = +[_CDContextQueries batteryPercentageKey];
    v24 = [v14 objectForKeyedSubscript:v23];
    v22 = [v24 intValue] == 100;
  }

  v25 = +[_CDContextQueries batteryVoltageKey];
  v26 = [v14 objectForKeyedSubscript:v25];
  v27 = [v26 integerValue];

  v28 = +[_CDContextQueries batteryTemperatureKey];
  v29 = [v14 objectForKeyedSubscript:v28];
  v30 = [v29 integerValue];

  v31 = +[_CDContextQueries batteryPercentageKey];
  v32 = [v14 objectForKeyedSubscript:v31];
  v58 = [v32 integerValue];

  v33 = v63;
  if (([v13 hasMagneticSensitivity] & v63) == 1)
  {
    v34 = [NSPredicate predicateWithFormat:@"hasMagneticSensitivity == YES AND isPluggedIn == YES"];
    v35 = v62;
    [v62 addRationaleWithCondition:v34];

    v36 = 0.0;
    v37 = v59;
    goto LABEL_39;
  }

  if (a5 - 2 < 3)
  {
    v38 = @"topOffProtectionEngaged == %@";
    v39 = v63;
LABEL_8:
    v40 = [NSPredicate predicateWithFormat:v38, &__kCFBooleanTrue];
    [v62 addRationaleWithCondition:v40];

    goto LABEL_9;
  }

  ignoreIsCharging = self->_ignoreIsCharging;
  if ([_DASRequiresPluggedInPolicy isWirelessCharger:v14]&& [(_DASRequiresPluggedInPolicy *)self deviceIsToppingOff:a5])
  {
    v39 = 0;
    v38 = @"deviceTopOff == %@";
    goto LABEL_8;
  }

  v39 = v63;
  if (!v63 || (v39 = v63, ignoreIsCharging))
  {
LABEL_9:
    v33 = +[_CDContextQueries batteryExternalConnectedKey];
    v41 = [NSNumber numberWithBool:v39];
    v42 = [NSPredicate predicateWithFormat:@"%@ == %@", v33, v41];
    v35 = v62;
    [v62 addRationaleWithCondition:v42];

    LODWORD(v33) = v63;
    v37 = v59;
    v43 = self;
    [(_DASRequiresPluggedInPolicy *)self computeAndRecordPolicyDurationStatsWhilePluggedIn:v63 considerPluggedIn:v39 atDate:v59];
    v36 = 1.0;
    if (v39)
    {
      goto LABEL_39;
    }

    goto LABEL_10;
  }

  if ((v22 | v19))
  {
    v37 = v59;
    v47 = self;
    self->_lastNotChargingReason = 0;
    v48 = v63;
    v35 = v62;
  }

  else
  {
    v37 = v59;
    v47 = self;
    if (!self->_lastNotChargingReason)
    {
      self->_lastNotChargingReason = [(_DASRequiresPluggedInPolicy *)self notChargingReason];
    }

    v48 = v63;
    v35 = v62;
    if (([objc_opt_class() isIgnorableNotChargingReason:self->_lastNotChargingReason] & 1) == 0)
    {
      v49 = [NSNumber numberWithUnsignedInteger:self->_lastNotChargingReason];
      v50 = [NSPredicate predicateWithFormat:@"isCharging == NO AND notChargingReason == %@", v49];
      [v62 addRationaleWithCondition:v50];

      v47 = self;
      v33 = v63;
      v48 = 0;
    }
  }

  if (v47->_isIpad && v27 >= 4200 && v30 >= 3500 && !v47->_deficitProcessing)
  {
    v51 = [v13 userInfo];
    v52 = [v51 objectForKeyedSubscript:_DASCTSBypassBatteryAgingProtectionKey];
    if ([v52 BOOLValue])
    {
LABEL_32:

      goto LABEL_33;
    }

    v60 = [v13 backlogged];

    if ((v60 & 1) == 0)
    {
      v53 = [NSNumber numberWithInteger:v27];
      v35 = v62;
      v52 = [NSNumber numberWithInteger:v30];
      v54 = [NSPredicate predicateWithFormat:@"voltage == %@ AND temperature == %@", v53, v52];
      [v62 addRationaleWithCondition:v54];

      v51 = v53;
      v48 = 0;
      goto LABEL_32;
    }
  }

LABEL_33:
  if (((byte_10020B3B0 & 1) != 0 || ([v13 backlogged] & 1) == 0 && +[_DASRequiresPluggedInPolicy isWirelessCharger:](_DASRequiresPluggedInPolicy, "isWirelessCharger:", v14) && v58 <= 79) && a6 > 0.0 && a6 < 900.0)
  {
    v55 = [NSNumber numberWithDouble:a6 / 60.0];
    v56 = [NSPredicate predicateWithFormat:@"timeSincePlugin == %@", v55];
    [v35 addRationaleWithCondition:v56];

    [(_DASRequiresPluggedInPolicy *)self computeAndRecordPolicyDurationStatsWhilePluggedIn:v63 considerPluggedIn:0 atDate:v37];
LABEL_11:
    v44 = [v13 name];
    v45 = [v44 containsString:@"spotlightknowledged.task.priority"];

    v43 = self;
    v36 = 0.0;
    if (v45)
    {
      goto LABEL_39;
    }

    goto LABEL_12;
  }

  v43 = self;
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
  if ([(_DASRequiresPluggedInPolicy *)v43 requiresPluginForActivity:v13])
  {
    [(_DASRequiresPluggedInPolicy *)v43 updateRationaleForTransferSize:v35 withActivity:v13];
    v36 = 0.0;
  }

LABEL_39:

  return v36;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if ([v6 targetDevice])
  {
    v9 = self->_watchIsPluggedInKeyPath;
    v10 = [v7 objectForKeyedSubscript:v9];
    v11 = [v10 BOOLValue];

    [(_DASRequiresPluggedInPolicy *)self scoreForActivity:v6 isPluggedIn:v11];
    v13 = v12;
    if (v12 == 0.0)
    {
      [(_DASRequiresPluggedInPolicy *)self updateRationaleForTransferSize:v8 withActivity:v6];
      v14 = [NSNumber numberWithBool:v11];
      v15 = [NSPredicate predicateWithFormat:@"%@ == %@", v9, v14];

      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v15];
    }

    v16 = [_DASPolicyResponse policyResponseWithScore:v8 validityDuration:v13 rationale:0x384uLL];
  }

  else
  {
    v9 = +[NSDate date];
    v17 = +[_CDContextQueries keyPathForPluginStatus];
    v18 = [v7 lastModifiedDateForContextualKeyPath:v17];

    if (v18)
    {
      [(_CDContextualKeyPath *)v9 timeIntervalSinceDate:v18];
      v20 = v19;
    }

    else
    {
      v20 = 901.0;
    }

    v21 = [v7 objectForKeyedSubscript:self->_topOffCheckpointKeypath];
    v22 = [v21 unsignedIntegerValue];

    v23 = [v7 objectForKeyedSubscript:self->_batteryStatusKeyPath];
    if (+[_DASRequiresPluggedInPolicy isWirelessCharger:](_DASRequiresPluggedInPolicy, "isWirelessCharger:", v23) && (v24 = [v6 schedulingPriority], v24 < _DASSchedulingPriorityUtility) && -[_DASRequiresPluggedInPolicy deviceIsToppingOff:](self, "deviceIsToppingOff:", v22))
    {
      v25 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"priority == %llu && topOffStatus == %llu", [v6 schedulingPriority], v22);
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v25];
      v16 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v8 rationale:0x384uLL];
    }

    else
    {
      [(_DASRequiresPluggedInPolicy *)self scoreForActivity:v6 withBatteryStatus:v23 withTopOffStatus:v22 timeSincePluginStateChange:v9 atDate:v8 rationale:v20];
      v16 = [_DASPolicyResponse policyResponseWithScore:"policyResponseWithScore:validityDuration:rationale:" validityDuration:v8 rationale:?];
    }
  }

  return v16;
}

- (double)predictedScoreForActivity:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0.5;
  if ([v6 targetDevice] != 1 && objc_msgSend(v6, "targetDevice") != 2)
  {
    v9 = [(_DASRequiresPluggedInPolicy *)self pluginTimeline];
    v10 = [v9 valueAtDate:v7];

    if (v10)
    {
      [v10 doubleValue];
      v12 = v11;
      [(_DASRequiresPluggedInPolicy *)self scoreForActivity:v6 isPluggedIn:v11 > 0.0];
      v8 = v12 * v13;
    }

    else
    {
      [(_DASRequiresPluggedInPolicy *)self scoreForActivity:v6 isPluggedIn:0];
      v8 = v14;
    }
  }

  return v8;
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