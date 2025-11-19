@interface _OSLastLockPredictorRuleBasedModel
+ (id)predictor;
- (_OSLastLockPredictorRuleBasedModel)init;
- (id)lastLockPredictionResultAtDate:(id)a3 withTimeSinceActive:(double)a4 withError:(id *)a5;
- (void)initializeParameters;
@end

@implementation _OSLastLockPredictorRuleBasedModel

- (_OSLastLockPredictorRuleBasedModel)init
{
  v6.receiver = self;
  v6.super_class = _OSLastLockPredictorRuleBasedModel;
  v2 = [(_OSLastLockPredictor *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "lastlock.ruleBasedPredictor");
    v4 = qword_1000B6A50;
    qword_1000B6A50 = v3;

    [(_OSLastLockPredictor *)v2 setPredictorType:@"ruleBased"];
    [(_OSLastLockPredictor *)v2 setQueryingMechanism:@"anytime"];
    [(_OSLastLockPredictorRuleBasedModel *)v2 initializeParameters];
    [(_OSLastLockPredictor *)v2 setConfidenceThresholdStrict:1.0];
    [(_OSLastLockPredictor *)v2 setConfidenceThresholdRelaxed:0.5];
    [(_OSLastLockPredictor *)v2 setRequireEnoughHistory:0];
  }

  return v2;
}

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)initializeParameters
{
  [(_OSLastLockPredictor *)self setRecommendedRequeryTime:1800.0];
  self->_useTimeRestriction = 1;
  self->_coreTimeRestrictionBedtimeHour = 1;
  self->_coreTimeRestrictionWakeupHour = 6;
  self->_maxPredictionDurationHours = 6.0;
}

- (id)lastLockPredictionResultAtDate:(id)a3 withTimeSinceActive:(double)a4 withError:(id *)a5
{
  v6 = a3;
  if (!self->_useTimeRestriction)
  {
    maxPredictionDurationHours = self->_maxPredictionDurationHours;
LABEL_9:
    [(_OSLastLockPredictor *)self confidenceThresholdStrict];
    v13 = v15;
    goto LABEL_10;
  }

  coreTimeRestrictionBedtimeHour = self->_coreTimeRestrictionBedtimeHour;
  coreTimeRestrictionWakeupHour = self->_coreTimeRestrictionWakeupHour;
  v9 = qword_1000B6A50;
  if (os_log_type_enabled(qword_1000B6A50, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67109376;
    v22[1] = coreTimeRestrictionBedtimeHour;
    v23 = 1024;
    v24 = coreTimeRestrictionWakeupHour;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restricting entry between %d to %d", v22, 0xEu);
  }

  v10 = [OSIntelligenceUtilities isInputDateInTimeRange:v6 withEarlyTimeOfDay:coreTimeRestrictionBedtimeHour andLateTimeOfDay:coreTimeRestrictionWakeupHour];
  [OSIntelligenceUtilities secondsUntilHour:coreTimeRestrictionWakeupHour fromDate:v6];
  maxPredictionDurationHours = 0.0;
  v13 = 0.0;
  if (v10)
  {
    v14 = v11 / 3600.0;
    if (self->_maxPredictionDurationHours >= v14)
    {
      maxPredictionDurationHours = v14;
    }

    else
    {
      maxPredictionDurationHours = self->_maxPredictionDurationHours;
    }

    goto LABEL_9;
  }

LABEL_10:
  v16 = [_OSLastLockPredictorOutput alloc];
  [(_OSLastLockPredictor *)self confidenceThresholdRelaxed];
  v18 = v17;
  [(_OSLastLockPredictor *)self confidenceThresholdStrict];
  v20 = [v16 initWithConfidenceValue:1 andRelaxedThreshold:v13 andStrictThreshold:v18 andPredictedDuration:v19 andReason:maxPredictionDurationHours];

  return v20;
}

@end