@interface _OSInactivityPredictorRuleBasedModel
+ (id)predictor;
- (_OSInactivityPredictorRuleBasedModel)init;
- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error;
- (id)sleepSuppressionPredictionResultAtDate:(id)date withError:(id *)error;
- (void)updateTrialParameters;
@end

@implementation _OSInactivityPredictorRuleBasedModel

- (_OSInactivityPredictorRuleBasedModel)init
{
  v17.receiver = self;
  v17.super_class = _OSInactivityPredictorRuleBasedModel;
  v2 = [(_OSInactivityPredictor *)&v17 init];
  v3 = v2;
  if (v2)
  {
    [(_OSInactivityPredictor *)v2 setPredictorType:@"ruleBased"];
    [(_OSInactivityPredictor *)v3 setQueryingMechanism:@"anytime"];
    v4 = objc_alloc_init(OSIAmbientLightMonitor);
    lightMonitor = v3->_lightMonitor;
    v3->_lightMonitor = v4;

    v6 = [TRIClient clientWithIdentifier:293];
    trialClient = v3->_trialClient;
    v3->_trialClient = v6;

    [(_OSInactivityPredictorRuleBasedModel *)v3 updateTrialParameters];
    objc_initWeak(&location, v3);
    v8 = v3->_trialClient;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100023614;
    v14 = &unk_1000948D8;
    objc_copyWeak(&v15, &location);
    v9 = [(TRIClient *)v8 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:&v11];
    [(_OSInactivityPredictor *)v3 setLongThreshold:10800.0, v11, v12, v13, v14];
    [(_OSInactivityPredictor *)v3 setConfidenceThresholdStrict:0.8];
    [(_OSInactivityPredictor *)v3 setConfidenceThresholdRelaxed:0.5];
    [(_OSInactivityPredictor *)v3 setRequireEnoughHistory:0];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)updateTrialParameters
{
  [(TRIClient *)self->_trialClient refresh];
  trialClient = self->_trialClient;
  if (trialClient)
  {
    v4 = [(TRIClient *)trialClient levelForFactor:@"ruleBasedRecommendedWaitTime" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    [v4 doubleValue];
    self->recommendedWaitTime = v5;
  }

  else
  {
    self->recommendedWaitTime = 1800.0;
  }

  v6 = self->_trialClient;
  if (v6)
  {
    v7 = [(TRIClient *)v6 levelForFactor:@"ruleBasedUseTimeRestriction" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_useTimeRestriction = [v7 BOOLeanValue];
  }

  else
  {
    self->_useTimeRestriction = 1;
  }

  v8 = self->_trialClient;
  if (v8)
  {
    v9 = [(TRIClient *)v8 levelForFactor:@"ruleBasedEarlyHour" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_timeRestrictionEarlyHour = [v9 longValue];
  }

  else
  {
    self->_timeRestrictionEarlyHour = 11;
  }

  v10 = self->_trialClient;
  if (v10)
  {
    v11 = [(TRIClient *)v10 levelForFactor:@"ruleBasedLateHour" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_timeRestrictionLateHour = [v11 longValue];
  }

  else
  {
    self->_timeRestrictionLateHour = 18;
  }

  v12 = self->_trialClient;
  if (v12)
  {
    v13 = [(TRIClient *)v12 levelForFactor:@"initialRuleBasedEarlyHour" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_initialTimeRestrictionEarlyHour = [v13 longValue];
  }

  else
  {
    self->_initialTimeRestrictionEarlyHour = 7;
  }

  v14 = self->_trialClient;
  if (v14)
  {
    v15 = [(TRIClient *)v14 levelForFactor:@"initialRuleBasedLateHour" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_initialTimeRestrictionLateHour = [v15 longValue];
  }

  else
  {
    self->_initialTimeRestrictionLateHour = 21;
  }

  v16 = self->_trialClient;
  if (v16)
  {
    v17 = [(TRIClient *)v16 levelForFactor:@"coreRuleBasedBedtimeHour" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_coreTimeRestrictionBedtimeHour = [v17 longValue];
  }

  else
  {
    self->_coreTimeRestrictionBedtimeHour = 1;
  }

  v18 = self->_trialClient;
  if (v18)
  {
    v19 = [(TRIClient *)v18 levelForFactor:@"coreRuleBasedWakeupHour" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_coreTimeRestrictionWakeupHour = [v19 longValue];
  }

  else
  {
    self->_coreTimeRestrictionWakeupHour = 6;
  }

  v20 = self->_trialClient;
  if (v20)
  {
    v21 = [(TRIClient *)v20 levelForFactor:@"ruleBasedMaxDurationHours" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    [v21 doubleValue];
    self->_maxPredictionDurationHours = v22;
  }

  else
  {
    self->_maxPredictionDurationHours = 6.0;
  }

  v23 = self->_trialClient;
  if (v23)
  {
    v24 = [(TRIClient *)v23 levelForFactor:@"ruleBasedNegativeLuxPreventsEngagement" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_excludeNegativeLux = [v24 BOOLeanValue];
  }

  else
  {
    self->_excludeNegativeLux = 0;
  }

  v25 = self->_trialClient;
  if (v25)
  {
    v26 = [(TRIClient *)v25 levelForFactor:@"requeryDelta" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    self->_requeryDelta = [v26 longValue];
  }

  else
  {
    self->_requeryDelta = 900;
  }
}

- (id)sleepSuppressionPredictionResultAtDate:(id)date withError:(id *)error
{
  dateCopy = date;
  if (!self->_useTimeRestriction)
  {
    maxPredictionDurationHours = self->_maxPredictionDurationHours;
LABEL_13:
    [(_OSInactivityPredictor *)self confidenceThresholdStrict];
    v16 = v18 + 0.01;
    goto LABEL_14;
  }

  timeRestrictionLateHour = self->_timeRestrictionLateHour;
  timeRestrictionEarlyHour = self->_timeRestrictionEarlyHour;
  [(_OSInactivityPredictor *)self waitedDuration];
  v9 = v8;
  if (v8 < self->_requeryDelta)
  {
    timeRestrictionLateHour = self->_initialTimeRestrictionLateHour;
    timeRestrictionEarlyHour = self->_initialTimeRestrictionEarlyHour;
    sleepLog = [objc_opt_class() sleepLog];
    if (os_log_type_enabled(sleepLog, OS_LOG_TYPE_DEFAULT))
    {
      requeryDelta = self->_requeryDelta;
      v25 = 134218240;
      *v26 = v9;
      *&v26[8] = 1024;
      v27 = requeryDelta;
      _os_log_impl(&_mh_execute_header, sleepLog, OS_LOG_TYPE_DEFAULT, "Only waited %.2f seconds (<%d). Tighten time restrictions.", &v25, 0x12u);
    }
  }

  sleepLog2 = [objc_opt_class() sleepLog];
  if (os_log_type_enabled(sleepLog2, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 67109376;
    *v26 = timeRestrictionLateHour;
    *&v26[4] = 1024;
    *&v26[6] = timeRestrictionEarlyHour;
    _os_log_impl(&_mh_execute_header, sleepLog2, OS_LOG_TYPE_DEFAULT, "Restricting entry between %d to %d", &v25, 0xEu);
  }

  v13 = [OSIntelligenceUtilities isInputDateInTimeRange:dateCopy withEarlyTimeOfDay:timeRestrictionLateHour andLateTimeOfDay:timeRestrictionEarlyHour];
  [OSIntelligenceUtilities secondsUntilHour:timeRestrictionEarlyHour fromDate:dateCopy];
  maxPredictionDurationHours = 0.0;
  v16 = 0.0;
  if (v13)
  {
    v17 = v14 / 3600.0;
    if (self->_maxPredictionDurationHours >= v17)
    {
      maxPredictionDurationHours = v17;
    }

    else
    {
      maxPredictionDurationHours = self->_maxPredictionDurationHours;
    }

    goto LABEL_13;
  }

LABEL_14:
  v19 = [_OSInactivityPredictorOutput alloc];
  [(_OSInactivityPredictor *)self confidenceThresholdRelaxed];
  v21 = v20;
  [(_OSInactivityPredictor *)self confidenceThresholdStrict];
  v23 = [v19 initWithConfidenceValue:1 andRelaxedThreshold:v16 andStrictThreshold:v21 andPredictedDuration:v22 andReason:maxPredictionDurationHours];

  return v23;
}

- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error
{
  dateCopy = date;
  if (options == 1)
  {
    v10 = [(_OSInactivityPredictorRuleBasedModel *)self sleepSuppressionPredictionResultAtDate:dateCopy withError:error];
    goto LABEL_13;
  }

  if (self->_useTimeRestriction)
  {
    coreTimeRestrictionBedtimeHour = self->_coreTimeRestrictionBedtimeHour;
    coreTimeRestrictionWakeupHour = self->_coreTimeRestrictionWakeupHour;
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218496;
      optionsCopy = options;
      v28 = 1024;
      v29 = coreTimeRestrictionBedtimeHour;
      v30 = 1024;
      v31 = coreTimeRestrictionWakeupHour;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(%ld) Restricting entry between %d to %d", &v26, 0x18u);
    }

    v14 = [OSIntelligenceUtilities isInputDateInTimeRange:dateCopy withEarlyTimeOfDay:coreTimeRestrictionBedtimeHour andLateTimeOfDay:coreTimeRestrictionWakeupHour];
    [OSIntelligenceUtilities secondsUntilHour:coreTimeRestrictionWakeupHour fromDate:dateCopy];
    maxPredictionDurationHours = 0.0;
    v17 = 0.0;
    if (!v14)
    {
      goto LABEL_12;
    }

    v18 = v15 / 3600.0;
    if (self->_maxPredictionDurationHours >= v18)
    {
      maxPredictionDurationHours = v18;
    }

    else
    {
      maxPredictionDurationHours = self->_maxPredictionDurationHours;
    }
  }

  else
  {
    maxPredictionDurationHours = self->_maxPredictionDurationHours;
  }

  [(_OSInactivityPredictor *)self confidenceThresholdStrict];
  v17 = v19 + 0.01;
LABEL_12:
  v20 = [_OSInactivityPredictorOutput alloc];
  [(_OSInactivityPredictor *)self confidenceThresholdRelaxed];
  v22 = v21;
  [(_OSInactivityPredictor *)self confidenceThresholdStrict];
  v10 = [v20 initWithConfidenceValue:1 andRelaxedThreshold:v17 andStrictThreshold:v22 andPredictedDuration:v23 andReason:maxPredictionDurationHours];
LABEL_13:
  v24 = v10;

  return v24;
}

@end