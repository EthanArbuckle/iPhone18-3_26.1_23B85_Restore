@interface _OSLastLockPredictorActivityClassifier
+ (id)predictor;
- (_OSLastLockPredictorActivityClassifier)init;
- (double)determineTimeSinceActiveWithInputDate:(id)date andInputTimeSinceActive:(double)active;
- (double)extrapolatedUserPresenceDurationsAtDate:(id)date;
- (id)lastLockPredictionResultAtDate:(id)date withTimeSinceActive:(double)active withError:(id *)error;
- (void)loadFactors;
@end

@implementation _OSLastLockPredictorActivityClassifier

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (_OSLastLockPredictorActivityClassifier)init
{
  v8.receiver = self;
  v8.super_class = _OSLastLockPredictorActivityClassifier;
  v2 = [(_OSLastLockPredictor *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "lastlock.activityClassifier");
    log = v2->_log;
    v2->_log = v3;

    [(_OSLastLockPredictor *)v2 setPredictorType:@"XGBClassifier_v0"];
    [(_OSLastLockPredictor *)v2 setQueryingMechanism:@"inchworm"];
    [(_OSLastLockPredictor *)v2 setRequireEnoughHistory:1];
    [(_OSLastLockPredictor *)v2 setLongThreshold:14400.0];
    [(_OSLastLockPredictorActivityClassifier *)v2 loadFactors];
    v5 = +[_OSLastLockAnalyticsManager sharedInstance];
    analyticsManager = v2->_analyticsManager;
    v2->_analyticsManager = v5;
  }

  return v2;
}

- (void)loadFactors
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"xgb_last_lock_model" ofType:@"mlmodelc"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B99C(v4, log);
  }

  v6 = [OSIntelligenceUtilities loadCompiledModelFromPath:v4];
  [(_OSLastLockPredictorActivityClassifier *)self setClassifier:v6];

  [(_OSLastLockPredictor *)self setModelVersion:@"v0"];
  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10005BA14(v7);
  }

  [(_OSLastLockPredictor *)self setRecommendedRequeryTime:1800.0];
  [(_OSLastLockPredictorActivityClassifier *)self setChunkEngageDuration:1800.0];
  [(_OSLastLockPredictor *)self setConfidenceThresholdStrict:0.3];
  [(_OSLastLockPredictor *)self setConfidenceThresholdRelaxed:0.2];
}

- (double)extrapolatedUserPresenceDurationsAtDate:(id)date
{
  dateCopy = date;
  v4 = +[_OSUserPresenceHistory sharedInstance];
  v5 = [v4 historicalSecondsSincePresentAtDate:dateCopy whichStrata:3];
  v6 = [v4 historicalSecondsSincePresentAtDate:dateCopy whichStrata:1];
  v7 = [v4 historicalSecondsSincePresentAtDate:dateCopy whichStrata:2];

  [OSIntelligenceUtilities medianOf:v5];
  v8 = [NSNumber numberWithDouble:?];
  [OSIntelligenceUtilities medianOf:v6];
  v9 = [NSNumber numberWithDouble:?];
  [OSIntelligenceUtilities medianOf:v7];
  v10 = [NSNumber numberWithDouble:?];
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:3];
  [OSIntelligenceUtilities medianOf:v11];
  v13 = v12;

  return v13;
}

- (double)determineTimeSinceActiveWithInputDate:(id)date andInputTimeSinceActive:(double)active
{
  dateCopy = date;
  v7 = *&dateCopy;
  if (active >= 0.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = active / 60.0;
      v11 = "Input timeSinceActive is explicitly set to %.2f min";
      v13 = log;
      v14 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v11, &v18, v14);
    }
  }

  else
  {
    if (!dateCopy)
    {
      +[NSDate now];
      v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    }

    [*&v7 timeIntervalSinceNow];
    if (v8 <= 900.0)
    {
      if (v8 >= -900.0)
      {
        [(_OSLastLockPredictor *)self presentDuration];
        active = v16;
        v10 = self->_log;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2048;
          v21 = active / 60.0;
          v11 = "Querying near now at %@. Real-time timeSinceActive = %.2f min";
          goto LABEL_14;
        }
      }

      else
      {
        [OSIntelligenceUtilities secondsSinceBecomingPresentAtDate:*&v7];
        active = v15;
        v10 = self->_log;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2048;
          v21 = active / 60.0;
          v11 = "Querying into the past at %@. Historical timeSinceActive = %.2f min";
          goto LABEL_14;
        }
      }
    }

    else
    {
      [(_OSLastLockPredictorActivityClassifier *)self extrapolatedUserPresenceDurationsAtDate:*&v7];
      active = v9;
      v10 = self->_log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v7;
        v20 = 2048;
        v21 = active / 60.0;
        v11 = "Querying into the future at %@. Extrapolated timeSinceActive = %.2f min";
LABEL_14:
        v13 = v10;
        v14 = 22;
        goto LABEL_15;
      }
    }
  }

  return active;
}

- (id)lastLockPredictionResultAtDate:(id)date withTimeSinceActive:(double)active withError:(id *)error
{
  dateCopy = date;
  v9 = os_transaction_create();
  if (!self->_classifier)
  {
    *error = [NSError errorWithDomain:@"com.apple.OSIntelligence.LastLockPredictorActivityClassifier" code:6 userInfo:&off_10009CB38];
    initInvalidOutput = [[_OSLastLockPredictorOutput alloc] initInvalidOutput];
LABEL_7:
    v19 = initInvalidOutput;
    goto LABEL_15;
  }

  [dateCopy timeIntervalSinceNow];
  if (v10 > 43260.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Querying way too far into the future. Returning medium confidence by default.", buf, 2u);
    }

    v12 = [_OSLastLockPredictorOutput alloc];
    [(_OSLastLockPredictor *)self confidenceThresholdRelaxed];
    v14 = v13 + 0.01;
    [(_OSLastLockPredictor *)self confidenceThresholdRelaxed];
    v16 = v15;
    [(_OSLastLockPredictor *)self confidenceThresholdStrict];
    initInvalidOutput = [v12 initWithConfidenceValue:1 andRelaxedThreshold:v14 andStrictThreshold:v16 andPredictedDuration:v17 andReason:2.0];
    goto LABEL_7;
  }

  [(_OSLastLockPredictorActivityClassifier *)self determineTimeSinceActiveWithInputDate:dateCopy andInputTimeSinceActive:active];
  v21 = v20;
  modelDescription = [(MLModel *)self->_classifier modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  allKeys = [inputDescriptionsByName allKeys];

  v25 = +[_OSUserPresenceHistory sharedInstance];
  v57 = @"time_since_active";
  v26 = [NSNumber numberWithDouble:v21 / 3600.0];
  v58 = v26;
  v27 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v28 = [_OSLastLockFeatureFactory inputFeaturesWithNames:allKeys atDate:dateCopy withIntervalHistory:v25 withContext:v27];

  v29 = self->_log;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v29;
    dictionary = [v28 dictionary];
    [dictionary description];
    v50 = v28;
    v32 = v9;
    v34 = v33 = allKeys;
    *buf = 138412290;
    v52 = *&v34;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Features: %@", buf, 0xCu);

    allKeys = v33;
    v9 = v32;
    v28 = v50;
  }

  v35 = [(MLModel *)self->_classifier predictionFromFeatures:v28 error:error, v50];
  v36 = [v35 featureValueForName:@"classProbability"];
  dictionaryValue = [v36 dictionaryValue];

  v38 = [dictionaryValue objectForKeyedSubscript:&off_10009B5B0];
  [v38 doubleValue];
  v40 = v39;

  v41 = v40 * self->_chunkEngageDuration / 3600.0;
  v42 = self->_log;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v48 = v42;
    [(_OSLastLockPredictor *)self confidenceThresholdRelaxed];
    *buf = 134218496;
    v52 = v40;
    v53 = 2048;
    v54 = v41;
    v55 = 2048;
    v56 = v49;
    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Prediction %.2f : %.2f : %.2f", buf, 0x20u);
  }

  v43 = [_OSLastLockPredictorOutput alloc];
  [(_OSLastLockPredictor *)self confidenceThresholdRelaxed];
  v45 = v44;
  [(_OSLastLockPredictor *)self confidenceThresholdStrict];
  v19 = [v43 initWithConfidenceValue:1 andRelaxedThreshold:v40 andStrictThreshold:v45 andPredictedDuration:v46 andReason:v41];
  if (![v19 confidenceLevel])
  {
    [v19 setPredictedDuration:0.0];
  }

  [(_OSLastLockAnalyticsManager *)self->_analyticsManager submitPredictionEventForLastLockWithOutput:v19];
  [(_OSLastLockAnalyticsManager *)self->_analyticsManager submitTask];

LABEL_15:

  return v19;
}

@end