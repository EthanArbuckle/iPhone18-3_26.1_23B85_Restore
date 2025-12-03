@interface _OSInactivityPredictor
+ (id)logWithCategory:(id)category;
+ (id)predictor;
+ (unint64_t)readEvaluatedPredictorTypeFromDefaults;
- (NSString)description;
- (_OSInactivityPredictor)init;
- (double)waitedDuration;
- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error;
- (id)longInactivityPredictionResultWithOptions:(int64_t)options withError:(id *)error;
- (id)metadata;
- (unint64_t)modelTypeFromPredictorName:(id)name;
@end

@implementation _OSInactivityPredictor

- (double)waitedDuration
{
  v3 = +[OSIntelligenceUtilities lastLockDate];
  v4 = +[OSIntelligenceUtilities lastPluggedInDate];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    [(_OSInactivityPredictor *)self recommendedWaitTime];
    v10 = v7;
  }

  else
  {
    v8 = [v3 laterDate:v4];
    [v8 timeIntervalSinceNow];
    v10 = -v9;
  }

  return v10;
}

- (_OSInactivityPredictor)init
{
  v8.receiver = self;
  v8.super_class = _OSInactivityPredictor;
  v2 = [(_OSInactivityPredictor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    predictorType = v2->predictorType;
    v2->predictorType = @"basic";

    modelVersion = v3->modelVersion;
    v3->modelVersion = @"None";

    queryingMechanism = v3->queryingMechanism;
    v3->queryingMechanism = @"single";

    *&v3->recommendedWaitTime = xmmword_1000706B0;
    *&v3->confidenceThresholdStrict = xmmword_1000706A0;
    v3->requireEnoughHistory = 0;
  }

  return v3;
}

+ (id)predictor
{
  v3 = os_transaction_create();
  v4 = +[OSIntelligenceDefines inactivityUserDefaults];
  v5 = [v4 objectForKey:@"modelType"];

  if (v5)
  {
    v6 = [v4 integerForKey:@"modelType"];
    v7 = [self log];
    v8 = v7;
    if (v6 > 2)
    {
      if (v6 == 4)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has overridden device to only use backup-based model", v23, 2u);
        }

        if (!+[_OSInactivityPredictionBackupManager hasBackup])
        {
          v11 = [self log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            v12 = "User does not have a backup so falling back to rule-based.";
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        goto LABEL_42;
      }

      if (v6 == 3)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has overridden device to only use rule-based model", v23, 2u);
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v6 == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has overridden device to only use ML-based model", v23, 2u);
        }

        if (+[OSIntelligenceUtilities hasEnoughInactivityHistory])
        {
          goto LABEL_47;
        }

        v9 = [self log];
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
LABEL_46:

LABEL_47:
          v19 = _OSInactivityPredictorTwoStage;
          goto LABEL_53;
        }

        *v23 = 0;
        v18 = "User does not have enough inactivity history so performance may be worse than expected by a customer";
LABEL_45:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v18, v23, 2u);
        goto LABEL_46;
      }

      if (v6 == 2)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has overridden device to only use alternate model", v23, 2u);
        }

        if (+[OSIntelligenceUtilities hasEnoughInactivityHistory])
        {
          goto LABEL_31;
        }

        v9 = [self log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          v10 = "User does not have enough inactivity history so performance may be worse than expected by a customer";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v23, 2u);
          goto LABEL_30;
        }

        goto LABEL_30;
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10005B924(v6, v8);
    }
  }

  if (+[OSIntelligenceUtilities hasEnoughInactivityHistory])
  {
    if (+[OSIntelligenceUtilities hasRecentTravelHistory])
    {
      v11 = [self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        v12 = "User has recently traveled across time-zones; using the rule-based model.";
LABEL_50:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v23, 2u);
        goto LABEL_51;
      }

      goto LABEL_51;
    }

    readEvaluatedPredictorTypeFromDefaults = [self readEvaluatedPredictorTypeFromDefaults];
    v9 = [self log];
    v16 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (readEvaluatedPredictorTypeFromDefaults == 2)
    {
      if (v16)
      {
        *v23 = 0;
        v10 = "User has enough inactivity history and has sporadic behavior; using alternate ML model.";
        goto LABEL_29;
      }

LABEL_30:

LABEL_31:
      predictor = +[_OSInactivityPredictorTwoStage alternatePredictor];
      goto LABEL_54;
    }

    if (!v16)
    {
      goto LABEL_46;
    }

    *v23 = 0;
    v18 = "User has enough inactivity history; using two stage ML model.";
    goto LABEL_45;
  }

  v13 = +[_OSInactivityPredictionBackupManager hasBackup];
  v11 = [self log];
  v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v14)
    {
      *v23 = 0;
      v12 = "User has neither enough history nor backup; using the rule-based model.";
      goto LABEL_50;
    }

LABEL_51:

LABEL_52:
    v19 = _OSInactivityPredictorRuleBasedModel;
    goto LABEL_53;
  }

  if (v14)
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User does not have enough inactivity history but has backup; using the backup model.", v23, 2u);
  }

LABEL_42:
  v19 = _OSInactivityPredictorBackupBasedModel;
LABEL_53:
  predictor = [(__objc2_class *)v19 predictor];
LABEL_54:
  v20 = predictor;
  v21 = [_OSInactivityPredictorSignalsAndModel predictorWithPredictor:predictor];

  return v21;
}

- (unint64_t)modelTypeFromPredictorName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"ruleBased"])
  {
    v4 = 3;
  }

  else if ([nameCopy isEqualToString:@"backup"])
  {
    v4 = 4;
  }

  else if ([nameCopy hasSuffix:@"_alt"])
  {
    v4 = 2;
  }

  else if ([nameCopy hasPrefix:@"twoStage"])
  {
    v4 = 1;
  }

  else if ([nameCopy containsString:@"lassifier"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)readEvaluatedPredictorTypeFromDefaults
{
  v2 = +[OSIntelligenceDefines inactivityUserDefaults];
  v3 = [v2 integerForKey:@"predictorType"];

  return v3;
}

+ (id)logWithCategory:(id)category
{
  category = [NSString stringWithFormat:@"inactivity.%@", category];
  v4 = os_log_create("com.apple.osintelligence", [category UTF8String]);

  return v4;
}

- (id)longInactivityPredictionResultWithOptions:(int64_t)options withError:(id *)error
{
  v7 = +[NSDate now];
  [(_OSInactivityPredictor *)self waitedDuration];
  v8 = [(_OSInactivityPredictor *)self longInactivityPredictionResultAtDate:v7 withTimeSinceInactive:options withOptions:error withError:?];

  return v8;
}

- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error
{
  dateCopy = date;
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "This should not be called...Subclass must override this function!", buf, 2u);
  }

  v8 = [NSString stringWithFormat:@"%s must be overridden in a subclass", "[_OSInactivityPredictor longInactivityPredictionResultAtDate:withTimeSinceInactive:withOptions:withError:]"];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (NSString)description
{
  metadata = [(_OSInactivityPredictor *)self metadata];
  v3 = [metadata description];

  return v3;
}

- (id)metadata
{
  v2 = [[_OSInactivityPredictorMetadata alloc] initWithProtocolConformer:self];

  return v2;
}

@end