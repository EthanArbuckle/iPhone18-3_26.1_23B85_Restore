@interface _OSInactivityPredictorBackupBasedModel
+ (id)predictor;
- (BOOL)showsSignificantInactivity:(id)inactivity;
- (_OSInactivityPredictorBackupBasedModel)init;
- (double)computeInactivityHoursFromBackupForDate:(id)date;
- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error;
- (void)updateTrialParameters;
@end

@implementation _OSInactivityPredictorBackupBasedModel

- (_OSInactivityPredictorBackupBasedModel)init
{
  v19.receiver = self;
  v19.super_class = _OSInactivityPredictorBackupBasedModel;
  v2 = [(_OSInactivityPredictor *)&v19 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "inactivity.model.backup");
    log = v2->_log;
    v2->_log = v3;

    [(_OSInactivityPredictor *)v2 setPredictorType:@"backup"];
    [(_OSInactivityPredictor *)v2 setQueryingMechanism:@"anytime"];
    v5 = [TRIClient clientWithIdentifier:293];
    trialClient = v2->_trialClient;
    v2->_trialClient = v5;

    [(_OSInactivityPredictorBackupBasedModel *)v2 updateTrialParameters];
    objc_initWeak(&location, v2);
    v7 = v2->_trialClient;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100037CB0;
    v16 = &unk_1000948D8;
    objc_copyWeak(&v17, &location);
    v8 = [(TRIClient *)v7 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:&v13];
    [(_OSInactivityPredictor *)v2 setLongThreshold:10800.0, v13, v14, v15, v16];
    [(_OSInactivityPredictor *)v2 setConfidenceThresholdStrict:0.9];
    [(_OSInactivityPredictor *)v2 setConfidenceThresholdRelaxed:0.4];
    [(_OSInactivityPredictor *)v2 setRequireEnoughHistory:0];
    v9 = objc_alloc_init(_OSInactivityPredictionBackupManager);
    hydrateBackup = [(_OSInactivityPredictionBackupManager *)v9 hydrateBackup];
    hourToEntry = v2->_hourToEntry;
    v2->_hourToEntry = hydrateBackup;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)updateTrialParameters
{
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"backupRecommendedWaitTime" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v3 doubleValue];
  [(_OSInactivityPredictor *)self setRecommendedWaitTime:?];

  v4 = [(TRIClient *)self->_trialClient levelForFactor:@"backupAverageDurationMultiplier" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v4 doubleValue];
  self->_averageDurationMultiplier = v5;

  v6 = [(TRIClient *)self->_trialClient levelForFactor:@"backupPCTLongThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v6 doubleValue];
  self->_pctLongThreshold = v7;

  v8 = [(TRIClient *)self->_trialClient levelForFactor:@"backupNumLongThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_numLongThreshold = [v8 longValue];

  v10 = [(TRIClient *)self->_trialClient levelForFactor:@"backupMaxDurationHours" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v10 doubleValue];
  self->_maxPredictionDurationHours = v9;
}

- (BOOL)showsSignificantInactivity:(id)inactivity
{
  inactivityCopy = inactivity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [inactivityCopy pctLong];
    v6 = v5;

    if (v6 > self->_pctLongThreshold)
    {
      return 1;
    }
  }

  else
  {
    [inactivityCopy count];

    numLongThreshold = self->_numLongThreshold;
  }

  return 0;
}

- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error
{
  [(_OSInactivityPredictorBackupBasedModel *)self computeInactivityHoursFromBackupForDate:date, options, error, inactive];
  if (v7 >= self->_maxPredictionDurationHours)
  {
    maxPredictionDurationHours = self->_maxPredictionDurationHours;
  }

  else
  {
    maxPredictionDurationHours = v7;
  }

  v9 = [_OSInactivityPredictorOutput alloc];
  v10 = v9;
  if (maxPredictionDurationHours <= 0.0)
  {
    v14 = kInvalidPredictedDuration;
    v12 = 0.0;
    v13 = 0;
    v15 = 0;
  }

  else
  {
    [(_OSInactivityPredictor *)self confidenceThresholdStrict];
    v12 = v11 + 0.01;
    v9 = v10;
    v13 = 2;
    v14 = maxPredictionDurationHours;
    v15 = 1;
  }

  v16 = [v9 initWithConfidenceLevel:v13 andConfidenceValue:v15 andPredictedDuration:v12 andReason:v14];

  return v16;
}

- (double)computeInactivityHoursFromBackupForDate:(id)date
{
  dateCopy = date;
  if ([(NSDictionary *)self->_hourToEntry count])
  {
    v5 = +[NSCalendar currentCalendar];
    v6 = [v5 components:60 fromDate:dateCopy];
    v7 = [v5 dateFromComponents:v6];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x2020000000;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10005DFD8(v32, [v6 hour], v8);
    }

    hourToEntry = self->_hourToEntry;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000382F4;
    v20[3] = &unk_100095470;
    v20[4] = self;
    v10 = v6;
    v21 = v10;
    v11 = v5;
    v22 = v11;
    v12 = v7;
    v23 = v12;
    p_buf = &buf;
    v25 = &v26;
    [(NSDictionary *)hourToEntry enumerateKeysAndObjectsUsingBlock:v20];
    v13 = *(v27 + 6);
    if (v13)
    {
      v14 = *(*(&buf + 1) + 24) / v13 * self->_averageDurationMultiplier;
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v19 = kInvalidPredictedDuration;
        *v30 = 134217984;
        v31 = kInvalidPredictedDuration;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No backup entry was summed up; predicting %.1fh duration", v30, 0xCu);
        v14 = v19;
      }

      else
      {
        v14 = kInvalidPredictedDuration;
      }
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = kInvalidPredictedDuration;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = kInvalidPredictedDuration;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "No backup entry found at all; predicting %.1fh duration", &buf, 0xCu);
      v14 = v18;
    }

    else
    {
      v14 = kInvalidPredictedDuration;
    }
  }

  return v14;
}

@end