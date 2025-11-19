@interface _OSInactivityPredictorTwoStage
+ (id)alternatePredictor;
+ (id)evaluator;
+ (id)predictor;
- (id)longInactivityPredictionResultAtDate:(id)a3 withLockHistory:(id)a4 withOptions:(int64_t)a5 withError:(id *)a6;
- (id)longInactivityPredictionResultAtDate:(id)a3 withTimeSinceInactive:(double)a4 withOptions:(int64_t)a5 withError:(id *)a6;
- (void)updateTrialParameters:(BOOL)a3;
@end

@implementation _OSInactivityPredictorTwoStage

- (void)updateTrialParameters:(BOOL)a3
{
  v3 = a3;
  [(TRIClient *)self->_trialClient refresh];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005A824();
  }

  v40 = v3;
  if (v3)
  {
    v5 = @"alternateInactivityEngageModel";
  }

  else
  {
    v5 = @"defaultInactivityEngageModel";
  }

  v6 = [(TRIClient *)self->_trialClient levelForFactor:v5 withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v7 = [v6 directoryValue];
  v8 = [v7 path];

  v9 = [(TRIClient *)self->_trialClient levelForFactor:@"inactivityDurationModel" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v10 = [v9 directoryValue];
  v11 = [v10 path];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loading compiled models", buf, 2u);
  }

  v13 = [OSIntelligenceUtilities loadCompiledModelFromPath:v8];
  engageModel = self->_engageModel;
  self->_engageModel = v13;

  v15 = [OSIntelligenceUtilities loadCompiledModelFromPath:v11];
  durationModel = self->_durationModel;
  self->_durationModel = v15;

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005BFB4();
  }

  v17 = [(MLModel *)self->_engageModel modelDescription];
  v18 = [v17 metadata];
  v19 = [v18 objectForKeyedSubscript:MLModelCreatorDefinedKey];
  v20 = [v19 objectForKeyedSubscript:@"recommended_wait_time"];
  [v20 doubleValue];
  v22 = v21;

  [(_OSInactivityPredictor *)self setRecommendedWaitTime:fmax(v22, 1800.0)];
  v23 = [(MLModel *)self->_engageModel modelDescription];
  v24 = [v23 metadata];
  v25 = [v24 objectForKeyedSubscript:MLModelCreatorDefinedKey];
  v26 = [v25 objectForKeyedSubscript:@"long_threshold"];
  [v26 doubleValue];
  [(_OSInactivityPredictor *)self setLongThreshold:?];

  v27 = [(MLModel *)self->_engageModel modelDescription];
  v28 = [v27 metadata];
  v29 = [v28 objectForKeyedSubscript:MLModelCreatorDefinedKey];
  v30 = [v29 objectForKeyedSubscript:@"model_version"];
  v31 = [v30 description];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = @"None";
  }

  [(_OSInactivityPredictor *)self setModelVersion:v33];

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005BFF4();
  }

  if (v40)
  {
    v34 = @"alternateConfidenceThreshold";
  }

  else
  {
    v34 = @"defaultConfidenceThreshold";
  }

  v35 = [(TRIClient *)self->_trialClient levelForFactor:v34 withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v35 doubleValue];
  [(_OSInactivityPredictor *)self setConfidenceThresholdStrict:?];

  v36 = [(TRIClient *)self->_trialClient levelForFactor:@"multiplicativeLeewayStrict" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v36 doubleValue];
  self->_multiplicativeLeewayStrict = v37;

  v38 = [(TRIClient *)self->_trialClient levelForFactor:@"multiplicativeLeewayRelaxed" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v38 doubleValue];
  self->_multiplicativeLeewayRelaxed = v39;
}

+ (id)predictor
{
  v2 = [objc_alloc(objc_opt_class()) initWithAlternateModel:0 inEvaluationMode:0];

  return v2;
}

+ (id)alternatePredictor
{
  v2 = [objc_alloc(objc_opt_class()) initWithAlternateModel:1 inEvaluationMode:0];

  return v2;
}

+ (id)evaluator
{
  v2 = [objc_alloc(objc_opt_class()) initWithAlternateModel:0 inEvaluationMode:1];

  return v2;
}

- (id)longInactivityPredictionResultAtDate:(id)a3 withTimeSinceInactive:(double)a4 withOptions:(int64_t)a5 withError:(id *)a6
{
  v9 = a3;
  v10 = os_transaction_create();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000324C;
  v31 = sub_100003568;
  v32 = 0;
  queue = self->_queue;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10001E21C;
  v22 = &unk_100094E60;
  v12 = v9;
  v23 = v12;
  v24 = self;
  v25 = &v27;
  v26 = a5;
  dispatch_sync(queue, &v19);
  if (v28[5])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v34 = a5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "(%ld) Returning Cached output", buf, 0xCu);
    }
  }

  else
  {
    v14 = [_OSLockHistory sharedInstance:v19];
    v15 = [(_OSInactivityPredictorTwoStage *)self longInactivityPredictionResultAtDate:v12 withLockHistory:v14 withOptions:a5 withError:a6];
    v16 = v28[5];
    v28[5] = v15;
  }

  v17 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (id)longInactivityPredictionResultAtDate:(id)a3 withLockHistory:(id)a4 withOptions:(int64_t)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10000324C;
  v33 = sub_100003568;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000324C;
  v27 = sub_100003568;
  v28 = 0;
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001E598;
  v17[3] = &unk_100094EB0;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = &v23;
  v21 = &v29;
  v22 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_sync(queue, v17);
  *a6 = v24[5];
  v15 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

@end