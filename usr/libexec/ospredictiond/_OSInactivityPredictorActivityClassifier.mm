@interface _OSInactivityPredictorActivityClassifier
+ (id)predictor;
- (_OSInactivityPredictorActivityClassifier)init;
- (double)determineTimeSinceInactiveWithInputDate:(id)date andInputTimeSinceInactive:(double)inactive;
- (double)extrapolatedWaitdDurationsAtDate:(id)date;
- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error;
- (id)longInactivityPredictionResultWithOptions:(int64_t)options withError:(id *)error;
- (void)loadTrialFactors;
@end

@implementation _OSInactivityPredictorActivityClassifier

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (_OSInactivityPredictorActivityClassifier)init
{
  v18.receiver = self;
  v18.super_class = _OSInactivityPredictorActivityClassifier;
  v2 = [(_OSInactivityPredictor *)&v18 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "inactivity.activityClassifier");
    v4 = *(v2 + 15);
    *(v2 + 15) = v3;

    [v2 setPredictorType:@"XGBClassifier_v1"];
    [v2 setQueryingMechanism:@"inchworm"];
    [v2 setRequireEnoughHistory:1];
    if (os_log_type_enabled(*(v2 + 15), OS_LOG_TYPE_DEBUG))
    {
      sub_10005A7A8();
    }

    v5 = [TRIClient clientWithIdentifier:293];
    v6 = *(v2 + 10);
    *(v2 + 10) = v5;

    [v2 loadTrialFactors];
    objc_initWeak(&location, v2);
    v7 = *(v2 + 10);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000A01C;
    v15 = &unk_1000948D8;
    objc_copyWeak(&v16, &location);
    v8 = [v7 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:&v12];
    v9 = [OSIntelligenceAnalyticsManager sharedInstanceWithTrialClient:*(v2 + 10) withNamespace:@"COREOS_PREDICTION_INACTIVITY", v12, v13, v14, v15];
    v10 = *(v2 + 16);
    *(v2 + 16) = v9;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)loadTrialFactors
{
  [(TRIClient *)self->_trialClient refresh];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005A824();
  }

  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"macInactivityClassifier" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  directoryValue = [v3 directoryValue];
  path = [directoryValue path];

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005A8A4();
  }

  v6 = [OSIntelligenceUtilities loadCompiledModelFromPath:path];
  [(_OSInactivityPredictorActivityClassifier *)self setClassifier:v6];

  [(_OSInactivityPredictor *)self setModelVersion:@"y9eiznriuc"];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005A918();
  }

  trialClient = self->_trialClient;
  if (trialClient)
  {
    v8 = [(TRIClient *)trialClient levelForFactor:@"macRecommendedWaitTime" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    [v8 doubleValue];
    [(_OSInactivityPredictor *)self setRecommendedWaitTime:?];
  }

  else
  {
    [(_OSInactivityPredictor *)self setRecommendedWaitTime:7200.0];
  }

  v9 = self->_trialClient;
  if (v9)
  {
    v10 = [(TRIClient *)v9 levelForFactor:@"macChunkEngageDuration" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    [v10 doubleValue];
    [(_OSInactivityPredictor *)self setLongThreshold:?];
  }

  else
  {
    [(_OSInactivityPredictor *)self setLongThreshold:14400.0];
  }

  v11 = self->_trialClient;
  if (v11)
  {
    v12 = [(TRIClient *)v11 levelForFactor:@"macChunkEngageDuration" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    [v12 doubleValue];
    [(_OSInactivityPredictorActivityClassifier *)self setChunkEngageDuration:?];
  }

  else
  {
    [(_OSInactivityPredictorActivityClassifier *)self setChunkEngageDuration:14400.0];
  }

  v13 = self->_trialClient;
  if (v13)
  {
    v14 = [(TRIClient *)v13 levelForFactor:@"macConfidenceThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    [v14 doubleValue];
    [(_OSInactivityPredictor *)self setConfidenceThresholdStrict:?];
  }

  else
  {
    [(_OSInactivityPredictor *)self setConfidenceThresholdStrict:0.95];
  }

  [(_OSInactivityPredictor *)self setConfidenceThresholdRelaxed:0.1];
  [(_OSInactivityPredictor *)self confidenceThresholdStrict];
  v16 = v15;
  [(_OSInactivityPredictor *)self confidenceThresholdRelaxed];
  if (v16 <= v17)
  {
    [(_OSInactivityPredictor *)self setConfidenceThresholdStrict:0.95];
  }

  v18 = self->_trialClient;
  if (v18)
  {
    v19 = [(TRIClient *)v18 levelForFactor:@"macMaxChunksPerSession" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    -[_OSInactivityPredictorActivityClassifier setMaxChunksPerSession:](self, "setMaxChunksPerSession:", [v19 longValue]);
  }

  else
  {
    [(_OSInactivityPredictorActivityClassifier *)self setMaxChunksPerSession:3];
  }

  v20 = self->_trialClient;
  if (v20)
  {
    v21 = [(TRIClient *)v20 levelForFactor:@"macRequeryInterval" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    [v21 doubleValue];
    [(_OSInactivityPredictorActivityClassifier *)self setRequeryInterval:?];
  }

  else
  {
    [(_OSInactivityPredictorActivityClassifier *)self setRequeryInterval:7200.0];
  }

  v22 = self->_trialClient;
  if (v22)
  {
    v23 = [(TRIClient *)v22 levelForFactor:@"macCooldownDuration" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    [v23 doubleValue];
    [(_OSInactivityPredictorActivityClassifier *)self setCooldownDuration:?];
  }

  else
  {
    [(_OSInactivityPredictorActivityClassifier *)self setCooldownDuration:7200.0];
  }
}

- (id)longInactivityPredictionResultWithOptions:(int64_t)options withError:(id *)error
{
  v7 = +[NSDate now];
  [(_OSInactivityPredictor *)self waitedDuration];
  if (self->_maxChunksPerSession)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = v7;
    while (1)
    {
      v13 = [(_OSInactivityPredictorActivityClassifier *)self longInactivityPredictionResultAtDate:v12 withTimeSinceInactive:options withOptions:error withError:v9];
      v14 = v13;
      if (!v11)
      {
        v11 = v13;
        [v11 setPredictedDuration:0.0];
      }

      if ([v14 confidenceLevel] <= 1)
      {
        break;
      }

      [v14 predictedDuration];
      v16 = v15;
      [v11 predictedDuration];
      [v11 setPredictedDuration:v16 + v17];
      [v14 predictedDuration];
      v19 = v18 * 3600.0;
      v7 = [v12 dateByAddingTimeInterval:v18 * 3600.0];

      v9 = v9 + v19;
      ++v10;
      v12 = v7;
      if (v10 >= self->_maxChunksPerSession)
      {
        goto LABEL_10;
      }
    }

    v7 = v12;
  }

  else
  {
    v11 = 0;
  }

LABEL_10:

  return v11;
}

- (double)extrapolatedWaitdDurationsAtDate:(id)date
{
  dateCopy = date;
  v4 = +[_OSActivityHistory sharedInstance];
  v5 = [v4 historicalSecondsSinceInactiveAtDate:dateCopy whichStrata:3];
  v6 = [v4 historicalSecondsSinceInactiveAtDate:dateCopy whichStrata:1];
  v7 = [v4 historicalSecondsSinceInactiveAtDate:dateCopy whichStrata:2];

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

- (double)determineTimeSinceInactiveWithInputDate:(id)date andInputTimeSinceInactive:(double)inactive
{
  dateCopy = date;
  v7 = *&dateCopy;
  if (inactive >= 0.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = inactive / 60.0;
      v11 = "Input timeSinceInactive is explicitly set to %.2f min";
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
        [(_OSInactivityPredictor *)self waitedDuration];
        inactive = v16;
        v10 = self->_log;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2048;
          v21 = inactive / 60.0;
          v11 = "Querying near now at %@. Real-time timeSinceInactive = %.2f min";
          goto LABEL_14;
        }
      }

      else
      {
        [OSIntelligenceUtilities secondsSinceBecomingInactiveAtDate:*&v7];
        inactive = v15;
        v10 = self->_log;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2048;
          v21 = inactive / 60.0;
          v11 = "Querying into the past at %@. Historical timeSinceInactive = %.2f min";
          goto LABEL_14;
        }
      }
    }

    else
    {
      [(_OSInactivityPredictorActivityClassifier *)self extrapolatedWaitdDurationsAtDate:*&v7];
      inactive = v9;
      v10 = self->_log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v7;
        v20 = 2048;
        v21 = inactive / 60.0;
        v11 = "Querying into the future at %@. Extrapolated timeSinceInactive = %.2f min";
LABEL_14:
        v13 = v10;
        v14 = 22;
        goto LABEL_15;
      }
    }
  }

  return inactive;
}

- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error
{
  dateCopy = date;
  v10 = os_transaction_create();
  if (!self->_classifier)
  {
    *error = [NSError errorWithDomain:@"com.apple.OSIntelligence.InactivityPredictorActivityClassifier" code:6 userInfo:&off_10009CAC0];
    initInvalidOutput = [[_OSInactivityPredictorOutput alloc] initInvalidOutput];
LABEL_7:
    v20 = initInvalidOutput;
    goto LABEL_13;
  }

  [dateCopy timeIntervalSinceNow];
  if (v11 > 43260.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Querying way too far into the future. Returning medium confidence by default.", buf, 2u);
    }

    v13 = [_OSInactivityPredictorOutput alloc];
    [(_OSInactivityPredictor *)self confidenceThresholdRelaxed];
    v15 = v14 + 0.01;
    [(_OSInactivityPredictor *)self confidenceThresholdRelaxed];
    v17 = v16;
    [(_OSInactivityPredictor *)self confidenceThresholdStrict];
    initInvalidOutput = [v13 initWithConfidenceValue:1 andRelaxedThreshold:v15 andStrictThreshold:v17 andPredictedDuration:v18 andReason:2.0];
    goto LABEL_7;
  }

  [(_OSInactivityPredictorActivityClassifier *)self determineTimeSinceInactiveWithInputDate:dateCopy andInputTimeSinceInactive:inactive];
  v22 = v21;
  modelDescription = [(MLModel *)self->_classifier modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  allKeys = [inputDescriptionsByName allKeys];

  v26 = +[_OSActivityHistory sharedInstance];
  v52 = @"time_since_inactive";
  v27 = [NSNumber numberWithDouble:v22 / 3600.0];
  v53 = v27;
  v28 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v29 = [_OSInactivityFeatureFactory inputFeaturesWithNames:allKeys atDate:dateCopy withIntervalHistory:v26 withContext:v28];

  v30 = self->_log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    dictionary = [v29 dictionary];
    [dictionary description];
    v49 = v29;
    v33 = v10;
    v34 = v26;
    v36 = v35 = allKeys;
    *buf = 138412290;
    v51 = v36;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Features: %@", buf, 0xCu);

    allKeys = v35;
    v26 = v34;
    v10 = v33;
    v29 = v49;
  }

  v37 = [(MLModel *)self->_classifier predictionFromFeatures:v29 error:error];
  v38 = [v37 featureValueForName:@"classProbability"];
  dictionaryValue = [v38 dictionaryValue];

  v40 = [dictionaryValue objectForKeyedSubscript:&off_10009B538];
  [v40 doubleValue];
  v42 = v41;

  v43 = v42 * self->_chunkEngageDuration / 3600.0;
  v44 = [_OSInactivityPredictorOutput alloc];
  [(_OSInactivityPredictor *)self confidenceThresholdRelaxed];
  v46 = v45;
  [(_OSInactivityPredictor *)self confidenceThresholdStrict];
  v20 = [v44 initWithConfidenceValue:1 andRelaxedThreshold:v42 andStrictThreshold:v46 andPredictedDuration:v47 andReason:v43];
  if (![v20 confidenceLevel])
  {
    [v20 setPredictedDuration:0.0];
  }

  [(OSIntelligenceAnalyticsManager *)self->_analyticsManager submitPredictionEventForInactivityWithOutput:v20];

LABEL_13:

  return v20;
}

@end