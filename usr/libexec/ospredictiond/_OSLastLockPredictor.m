@interface _OSLastLockPredictor
+ (id)predictor;
+ (unint64_t)readEvaluatedPredictorTypeFromDefaults;
- (NSString)description;
- (_OSLastLockPredictor)init;
- (double)presentDuration;
- (id)lastLockPredictionResultAtDate:(id)a3 withTimeSinceActive:(double)a4 withError:(id *)a5;
- (id)lastLockPredictionResultWithError:(id *)a3;
- (id)metadata;
@end

@implementation _OSLastLockPredictor

- (_OSLastLockPredictor)init
{
  v9.receiver = self;
  v9.super_class = _OSLastLockPredictor;
  v2 = [(_OSLastLockPredictor *)&v9 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "lastLock.basepredictor");
    v4 = qword_1000B6AE0;
    qword_1000B6AE0 = v3;

    predictorType = v2->predictorType;
    v2->predictorType = @"basic";

    modelVersion = v2->modelVersion;
    v2->modelVersion = @"None";

    queryingMechanism = v2->queryingMechanism;
    v2->queryingMechanism = @"single";

    *&v2->recommendedRequeryTime = xmmword_1000707E0;
    *&v2->confidenceThresholdStrict = xmmword_1000706A0;
    v2->requireEnoughHistory = 0;
  }

  return v2;
}

+ (id)predictor
{
  v3 = os_transaction_create();
  v4 = +[OSIntelligenceDefines lastLockUserDefaults];
  if (+[OSIntelligenceUtilities isInternalBuild])
  {
    v5 = [v4 objectForKey:@"modelType"];

    if (v5)
    {
      v6 = [v4 integerForKey:@"modelType"];
      v7 = [a1 log];
      v8 = v7;
      if (v6 == 2)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has overridden device to only use classifier model", buf, 2u);
        }

        if (+[OSIntelligenceUtilities hasEnoughInactivityHistory])
        {
          v11 = off_100094440;
          goto LABEL_23;
        }

        v8 = [a1 log];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        *v22 = 0;
        v16 = "User does not have enough inactivity history so performance may be worse than expected by a customer";
        v17 = v22;
        goto LABEL_33;
      }

      if (v6 == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 0;
          v9 = "User has overridden device to only use rule-based model";
          v10 = &v24;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10005B924(v6, v8);
      }
    }
  }

  if (!+[OSIntelligenceUtilities hasEnoughInactivityHistory])
  {
    v8 = [a1 log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      v9 = "User does NOT have enough activity history; using the rule-based model.";
      v10 = v21;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (!+[OSIntelligenceUtilities isDeviceRarelyUsedRecently])
  {
    v14 = +[OSIntelligenceUtilities hasRecentTravelHistory];
    v8 = [a1 log];
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v19 = 0;
      v9 = "User has recently traveled across time-zones; using the rule-based model.";
      v10 = &v19;
      goto LABEL_20;
    }

    if (!v15)
    {
LABEL_34:
      v11 = off_100094440;
      goto LABEL_22;
    }

    LOWORD(v18) = 0;
    v16 = "User has enough activity history AND device used frequently recently; using the classifier model.";
    v17 = &v18;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
    goto LABEL_34;
  }

  v8 = [a1 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0;
    v9 = "Device is rarely used recently; using the rule-based model.";
    v10 = &v20;
    goto LABEL_20;
  }

LABEL_21:
  v11 = &off_100094448;
LABEL_22:

LABEL_23:
  v12 = [(__objc2_class *)*v11 predictor];

  return v12;
}

+ (unint64_t)readEvaluatedPredictorTypeFromDefaults
{
  v2 = +[OSIntelligenceDefines lastLockUserDefaults];
  v3 = [v2 integerForKey:@"predictorType"];

  return v3;
}

- (id)lastLockPredictionResultWithError:(id *)a3
{
  v5 = +[NSDate now];
  [(_OSLastLockPredictor *)self presentDuration];
  v6 = [(_OSLastLockPredictor *)self lastLockPredictionResultAtDate:v5 withTimeSinceActive:a3 withError:?];

  return v6;
}

- (double)presentDuration
{
  v2 = +[NSDate now];
  [OSIntelligenceUtilities secondsSinceBecomingPresentAtDate:v2];
  v4 = v3;

  return v4;
}

- (id)lastLockPredictionResultAtDate:(id)a3 withTimeSinceActive:(double)a4 withError:(id *)a5
{
  v5 = a3;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "This should not be called...Subclass must override this function!", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s must be overridden in a subclass", "[_OSLastLockPredictor lastLockPredictionResultAtDate:withTimeSinceActive:withError:]"];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (NSString)description
{
  v2 = [(_OSLastLockPredictor *)self metadata];
  v3 = [v2 description];

  return v3;
}

- (id)metadata
{
  v2 = [[_OSLastLockPredictorMetadata alloc] initWithProtocolConformer:self];

  return v2;
}

@end