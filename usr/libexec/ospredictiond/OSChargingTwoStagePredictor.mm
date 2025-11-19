@interface OSChargingTwoStagePredictor
- (BOOL)isSufficientDataAvailable;
- (MLModel)durationModel;
- (MLModel)engageModel;
- (OSChargingTwoStagePredictor)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5;
- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7;
- (double)adjustedChargingDecision:(unint64_t)a3 withPluginDate:(id)a4 withPluginBatteryLevel:(double)a5 forDate:(id)a6 forStatus:(BOOL)a7;
- (double)getHourBinID:(id)a3 forHourBin:(unint64_t)a4;
- (double)loadAdjustedHoursForModel:(id)a3;
- (double)loadMinInputChargeDuration;
- (double)loadThresholdForModel:(id)a3;
- (id)arrayWithShape:(id)a3 values:(id)a4 type:(int64_t)a5;
- (id)compileModel:(id)a3;
- (id)convertInputFeaturesToNeuralFeatures:(id)a3;
- (id)durationModelBoltID;
- (id)engagementModelBoltID;
- (id)getInputFeaturesWithPluginDate:(id)a3 withPluginBatteryLevel:(double)a4 forDate:(id)a5 withLog:(id)a6;
- (id)loadModelWithModelNameString:(id)a3;
- (id)predictFullChargeDateWithBatteryLevel:(unint64_t)a3;
- (id)timeStringFromDate:(id)a3;
- (void)deleteCompiledModels;
- (void)deleteUpdatedModels;
- (void)loadDurationModelFromURL:(id)a3;
- (void)loadEngagementModelFromURL:(id)a3;
- (void)loadTrial;
- (void)resetSavedDeadline;
- (void)setPluginDate:(id)a3;
@end

@implementation OSChargingTwoStagePredictor

- (MLModel)engageModel
{
  os_unfair_lock_lock(&self->_loadModelLock);
  if (self->_engageModel)
  {
    goto LABEL_39;
  }

  self->_modelExecutionPath = [(OSIntelligenceTrialManager *)self->_trialManager longFactorForName:@"modelExecutionPath"];
  v3 = [OSIntelligenceUtilities numberForPreferenceKey:@"modelExecutionPathOverride" inDomain:self->_defaultsDomain];
  v4 = v3;
  if (v3)
  {
    self->_modelExecutionPath = [v3 intValue];
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_modelExecutionPath override loaded", buf, 2u);
    }
  }

  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    modelExecutionPath = self->_modelExecutionPath;
    *buf = 134217984;
    v54 = modelExecutionPath;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_modelExecutionPath: %ld", buf, 0xCu);
  }

  v8 = self->_modelExecutionPath;
  if (v8 == 2)
  {
    v11 = 0;
    v13 = 0;
LABEL_15:
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loading baseline updatable classifier model.", buf, 2u);
    }

    v16 = [(OSChargingTwoStagePredictor *)self compileModel:@"updatable_model_classifier"];

    objc_storeStrong(&self->_compiledClassifier, v16);
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v16 description];
      *buf = 138412290;
      v54 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Model asset path: %@", buf, 0xCu);
    }

    v51 = 0;
    v20 = [MLModel modelWithContentsOfURL:v16 error:&v51];
    v21 = v51;
    engageModel = self->_engageModel;
    self->_engageModel = v20;

    if (v21 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005E094();
    }

    v11 = v16;
    goto LABEL_27;
  }

  if (v8 == 1)
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loading updated classifier model.", buf, 2u);
    }

    v61[0] = @"/var/mobile/Library/OSIntelligence";
    v61[1] = @"updatedClassifier.modelc";
    v10 = [NSArray arrayWithObjects:v61 count:2];
    v11 = [NSURL fileURLWithPathComponents:v10];

    objc_storeStrong(&self->_compiledClassifier, v11);
    v52 = 0;
    v12 = [MLModel modelWithContentsOfURL:v11 error:&v52];
    v13 = v52;
    v14 = self->_engageModel;
    self->_engageModel = v12;

    if (v13)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10005E020();
      }

      goto LABEL_15;
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Loading non-updatable classifier model.", buf, 2u);
    }

    v24 = [(OSIntelligenceTrialManager *)self->_trialManager loadTrialEngageModelByDeletingExistingModel:0];
    v25 = self->_engageModel;
    self->_engageModel = v24;

    v11 = 0;
  }

  v21 = 0;
LABEL_27:
  v26 = self->_engageModel;
  v27 = self->_log;
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v28)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Trial engage model found!", buf, 2u);
    }
  }

  else
  {
    if (v28)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Trial engage model not found...falling back to default model", buf, 2u);
    }

    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 pathForResource:@"engageModel" ofType:@"mlmodelc"];
    v31 = [NSURL fileURLWithPath:v30];

    v50 = 0;
    v32 = [MLModel modelWithContentsOfURL:v31 error:&v50];
    v21 = v50;
    v33 = self->_engageModel;
    self->_engageModel = v32;

    if (v21 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005E094();
    }

    v11 = v31;
  }

  [(OSChargingTwoStagePredictor *)self loadThresholdForModel:self->_engageModel];
  self->_threshold = v34;
  v35 = self->_log;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = self->_engageModel;
    log = v35;
    v48 = [(MLModel *)v36 modelDescription];
    v47 = [v48 metadata];
    [v47 objectForKeyedSubscript:MLModelCreatorDefinedKey];
    v37 = v49 = v21;
    v38 = [v37 objectForKeyedSubscript:@"model_version"];
    v39 = [(MLModel *)self->_engageModel modelDescription];
    v40 = [v39 metadata];
    v41 = [v40 objectForKeyedSubscript:MLModelCreatorDefinedKey];
    v42 = [v41 objectForKeyedSubscript:@"bolt_id"];
    v43 = [NSNumber numberWithDouble:self->_threshold];
    *buf = 138413058;
    v54 = @"engageModel";
    v55 = 2112;
    v56 = v38;
    v57 = 2112;
    v58 = v42;
    v59 = 2112;
    v60 = v43;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Engagement model: %@.%@ from bolt job = %@ (threshold = %@)", buf, 0x2Au);

    v21 = v49;
  }

LABEL_39:
  os_unfair_lock_unlock(&self->_loadModelLock);
  v44 = self->_engageModel;

  return v44;
}

- (MLModel)durationModel
{
  os_unfair_lock_lock(&self->_loadModelLock);
  if (self->_durationModel)
  {
    goto LABEL_38;
  }

  self->_modelExecutionPath = [(OSIntelligenceTrialManager *)self->_trialManager longFactorForName:@"modelExecutionPath"];
  v3 = [OSIntelligenceUtilities numberForPreferenceKey:@"modelExecutionPathOverride" inDomain:self->_defaultsDomain];
  v4 = v3;
  if (v3)
  {
    self->_modelExecutionPath = [v3 intValue];
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_modelExecutionPath override loaded", buf, 2u);
    }
  }

  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    modelExecutionPath = self->_modelExecutionPath;
    *buf = 134217984;
    v57 = modelExecutionPath;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_modelExecutionPath: %ld", buf, 0xCu);
  }

  v8 = self->_modelExecutionPath;
  if (v8 == 2)
  {
    v11 = 0;
    v13 = 0;
LABEL_15:
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loading baseline updatable duration model.", buf, 2u);
    }

    v16 = [(OSChargingTwoStagePredictor *)self compileModel:@"updatable_model_regress"];

    objc_storeStrong(&self->_compiledRegressor, v16);
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v16 description];
      *buf = 138412290;
      v57 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Model asset path: %@", buf, 0xCu);
    }

    v54 = 0;
    v20 = [MLModel modelWithContentsOfURL:v16 error:&v54];
    v21 = v54;
    durationModel = self->_durationModel;
    self->_durationModel = v20;

    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_durationModel;
      v25 = v23;
      v26 = [(MLModel *)v24 modelDescription];
      *buf = 138412290;
      v57 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "duration model description: %@", buf, 0xCu);
    }

    if (v21 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005E094();
    }

    v11 = v16;
    goto LABEL_29;
  }

  if (v8 == 1)
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loading updated duration model.", buf, 2u);
    }

    v64[0] = @"/var/mobile/Library/OSIntelligence";
    v64[1] = @"updatedRegressor.modelc";
    v10 = [NSArray arrayWithObjects:v64 count:2];
    v11 = [NSURL fileURLWithPathComponents:v10];

    objc_storeStrong(&self->_compiledRegressor, v11);
    v55 = 0;
    v12 = [MLModel modelWithContentsOfURL:v11 error:&v55];
    v13 = v55;
    v14 = self->_durationModel;
    self->_durationModel = v12;

    if (v13)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10005E020();
      }

      goto LABEL_15;
    }
  }

  else
  {
    v27 = self->_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Loading non-updatable duration model.", buf, 2u);
    }

    v28 = [(OSIntelligenceTrialManager *)self->_trialManager loadTrialDurationModelByDeletingExistingModel:0];
    v29 = self->_durationModel;
    self->_durationModel = v28;

    v11 = 0;
  }

  v21 = 0;
LABEL_29:
  v30 = self->_durationModel;
  v31 = self->_log;
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Trial duration model found!", buf, 2u);
    }
  }

  else
  {
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Trial duration model not found...falling back to default model", buf, 2u);
    }

    v33 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v33 pathForResource:@"durationModel" ofType:@"mlmodelc"];
    v35 = [NSURL fileURLWithPath:v34];

    v36 = [MLModel modelWithContentsOfURL:v35 error:0];
    v37 = self->_durationModel;
    self->_durationModel = v36;

    v11 = v35;
  }

  [(OSChargingTwoStagePredictor *)self loadAdjustedHoursForModel:self->_durationModel];
  self->_adjustedDuration = v38;
  v39 = self->_log;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = self->_durationModel;
    log = v39;
    v52 = [(MLModel *)v40 modelDescription];
    v51 = [v52 metadata];
    [v51 objectForKeyedSubscript:MLModelCreatorDefinedKey];
    v41 = v53 = v21;
    v42 = [v41 objectForKeyedSubscript:@"model_version"];
    v43 = [(MLModel *)self->_durationModel modelDescription];
    v44 = [v43 metadata];
    v45 = [v44 objectForKeyedSubscript:MLModelCreatorDefinedKey];
    v46 = [v45 objectForKeyedSubscript:@"bolt_id"];
    v47 = [NSNumber numberWithDouble:self->_adjustedDuration];
    *buf = 138413058;
    v57 = @"durationModel";
    v58 = 2112;
    v59 = v42;
    v60 = 2112;
    v61 = v46;
    v62 = 2112;
    v63 = v47;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Duration model: %@.%@ from bolt job = %@ (adjusted duration = %@)", buf, 0x2Au);

    v21 = v53;
  }

LABEL_38:
  os_unfair_lock_unlock(&self->_loadModelLock);
  v48 = self->_durationModel;

  return v48;
}

- (id)timeStringFromDate:(id)a3
{
  v3 = qword_1000B6A80;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10005E0FC();
  }

  v5 = [qword_1000B6A88 stringFromDate:v4];

  return v5;
}

- (OSChargingTwoStagePredictor)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = OSChargingTwoStagePredictor;
  v12 = [(OSChargingTwoStagePredictor *)&v26 init];
  v13 = v12;
  if (v12)
  {
    v12->_loadModelLock._os_unfair_lock_opaque = 0;
    v14 = os_log_create("com.apple.osintelligence.chargeprediction", "mltwostagemodelpredictor");
    log = v13->_log;
    v13->_log = v14;

    v16 = os_log_create("com.apple.osintelligence.chargeprediction", "mltwostagemodelpredictorStatusLog");
    statusLog = v13->_statusLog;
    v13->_statusLog = v16;

    objc_storeStrong(&v13->_defaultsDomain, a3);
    objc_storeStrong(&v13->_context, a4);
    v18 = [OSIntelligenceUtilities dateForPreferenceKey:@"twoStageModelOutput" inDomain:v13->_defaultsDomain];
    deadline = v13->_deadline;
    v13->_deadline = v18;

    v20 = [OSIntelligenceUtilities numberForPreferenceKey:@"twoStageModelEngagementResult" inDomain:v13->_defaultsDomain];
    [v20 doubleValue];
    v13->_lastEngagementResult = v21;

    v22 = [OSIntelligenceUtilities numberForPreferenceKey:@"twoStageModelDurationResult" inDomain:v13->_defaultsDomain];
    [v22 doubleValue];
    v13->_lastDurationResult = v23;

    objc_storeStrong(&v13->_trialManager, a5);
    [(OSChargingTwoStagePredictor *)v13 loadMinInputChargeDuration];
    v13->_minInputChargeDuration = v24;
    v13->_threshold = 1.0;
  }

  return v13;
}

- (void)loadTrial
{
  v3 = [(OSIntelligenceTrialManager *)self->_trialManager loadTrialEngageModelByDeletingExistingModel:1];
  engageModel = self->_engageModel;
  self->_engageModel = v3;

  v5 = [(OSIntelligenceTrialManager *)self->_trialManager loadTrialDurationModelByDeletingExistingModel:1];
  durationModel = self->_durationModel;
  self->_durationModel = v5;

  [(OSChargingTwoStagePredictor *)self loadThresholdForModel:self->_engageModel];
  self->_threshold = v7;
  [(OSChargingTwoStagePredictor *)self loadAdjustedHoursForModel:self->_durationModel];
  self->_adjustedDuration = v8;
  [(OSChargingTwoStagePredictor *)self loadMinInputChargeDuration];
  self->_minInputChargeDuration = v9;

  [(OSChargingTwoStagePredictor *)self resetSavedDeadline];
}

- (double)loadThresholdForModel:(id)a3
{
  v4 = a3;
  [(OSIntelligenceTrialManager *)self->_trialManager loadTrialThreshold];
  v6 = v5;
  if (v5 <= 0.0)
  {
    v7 = [v4 modelDescription];
    v8 = [v7 metadata];
    v9 = [v8 objectForKeyedSubscript:MLModelCreatorDefinedKey];
    v10 = [v9 objectForKeyedSubscript:@"threshold"];
    [v10 doubleValue];
    v6 = v11;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial threshold. Falling back to default %lf", &v14, 0xCu);
    }
  }

  return v6;
}

- (double)loadAdjustedHoursForModel:(id)a3
{
  v4 = a3;
  [(OSIntelligenceTrialManager *)self->_trialManager loadTrialAdjustedHours];
  v6 = v5;
  if (v5 <= 0.0)
  {
    v7 = [v4 modelDescription];
    v8 = [v7 metadata];
    v9 = [v8 objectForKeyedSubscript:MLModelCreatorDefinedKey];
    v10 = [v9 objectForKeyedSubscript:@"leeway"];
    [v10 doubleValue];
    v6 = v11;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial adjusted hours. Falling back to default %lf", &v14, 0xCu);
    }
  }

  return v6;
}

- (double)loadMinInputChargeDuration
{
  [(OSIntelligenceTrialManager *)self->_trialManager loadTrialMinInputChargeDuration];
  v4 = v3;
  if (v3 <= 0.0)
  {
    log = self->_log;
    v4 = 600.0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = 0x4082C00000000000;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial minimum duration for model input. Falling back to default %lf", &v7, 0xCu);
    }
  }

  return v4;
}

- (id)arrayWithShape:(id)a3 values:(id)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if (!v8)
    {
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
      v18 = v11;
      v8 = [NSArray arrayWithObjects:&v18 count:1];
    }

    v12 = [[MLMultiArray alloc] initWithShape:v8 dataType:a5 error:0];
    if (v12 && [v10 count])
    {
      v13 = 0;
      do
      {
        v14 = [v10 objectAtIndexedSubscript:v13];
        [v12 setObject:v14 atIndexedSubscript:v13];

        ++v13;
      }

      while (v13 < [v10 count]);
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Values not present", v17, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)engagementModelBoltID
{
  v3 = [(OSChargingTwoStagePredictor *)self engageModel];
  v4 = [v3 modelDescription];
  v5 = [v4 metadata];
  v6 = [v5 objectForKeyedSubscript:MLModelCreatorDefinedKey];
  v7 = [v6 objectForKeyedSubscript:@"model_version"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Engagement model bolt ID is %@", &v11, 0xCu);
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Unknown";
  }

  return v9;
}

- (id)durationModelBoltID
{
  v3 = [(OSChargingTwoStagePredictor *)self durationModel];
  v4 = [v3 modelDescription];
  v5 = [v4 metadata];
  v6 = [v5 objectForKeyedSubscript:MLModelCreatorDefinedKey];
  v7 = [v6 objectForKeyedSubscript:@"model_version"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Duration model bolt ID is %@", &v11, 0xCu);
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Unknown";
  }

  return v9;
}

- (void)setPluginDate:(id)a3
{
  v5 = a3;
  [OSIntelligenceUtilities batteryLevelAtDate:v5];
  self->_pluginBatteryLevel = v6;
  objc_storeStrong(&self->_pluginDate, a3);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    pluginDate = self->_pluginDate;
    v9 = log;
    v10 = [(OSChargingTwoStagePredictor *)self timeStringFromDate:pluginDate];
    v11 = [NSNumber numberWithDouble:self->_pluginBatteryLevel];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Plugin date set to %@, plugin battery level to %@", &v12, 0x16u);
  }
}

- (double)getHourBinID:(id)a3 forHourBin:(unint64_t)a4
{
  v5 = a3;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:32 fromDate:v5];

  v8 = [v7 hour] / a4;
  return v8;
}

- (BOOL)isSufficientDataAvailable
{
  v3 = +[NSDate now];
  v4 = [OSIntelligenceUtilities pluginEventsBefore:v3 withMinimumDuration:self->_minInputChargeDuration withMinimumPlugoutBatteryLevel:80.0];
  if ([v4 count] <= 8)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = log;
      v18 = 134218240;
      v19 = COERCE_DOUBLE([v4 count]);
      v20 = 2048;
      v21 = 9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not enough charging events: %lu < %lu", &v18, 0x16u);
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = [v4 firstObject];
  v8 = [v7 startDate];
  [v3 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 <= 1209600.0)
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v4 firstObject];
      v15 = [v14 startDate];
      [v3 timeIntervalSinceDate:v15];
      v18 = 134217984;
      v19 = v16 / 86400.0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not enough days of history: %f", &v18, 0xCu);
    }

    goto LABEL_8;
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (id)predictFullChargeDateWithBatteryLevel:(unint64_t)a3
{
  if (self->_deadline)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      deadline = self->_deadline;
      v16 = 138412290;
      v17 = deadline;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Returning saved deadline: %@", &v16, 0xCu);
    }
  }

  else
  {
    pluginDate = self->_pluginDate;
    pluginBatteryLevel = self->_pluginBatteryLevel;
    v9 = +[NSDate date];
    [(OSChargingTwoStagePredictor *)self adjustedChargingDecision:a3 withPluginDate:pluginDate withPluginBatteryLevel:v9 forDate:0 forStatus:pluginBatteryLevel];
    v11 = v10;

    v12 = [NSDate dateWithTimeIntervalSinceNow:v11];
    v13 = self->_deadline;
    self->_deadline = v12;

    [OSIntelligenceUtilities setDate:self->_deadline forPreferenceKey:@"twoStageModelOutput" inDomain:self->_defaultsDomain];
  }

  v14 = self->_deadline;

  return v14;
}

- (double)adjustedChargingDecision:(unint64_t)a3 withPluginDate:(id)a4 withPluginBatteryLevel:(double)a5 forDate:(id)a6 forStatus:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = 88;
  if (v7)
  {
    v13 = 96;
  }

  v14 = *(&self->super.isa + v13);
  [(OSChargingTwoStagePredictor *)self chargingDecision:a3 withPluginDate:a4 withPluginBatteryLevel:v12 forDate:v14 withLog:a5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MLTwoStageModel output %f hours", buf, 0xCu);
  }

  v15 = 0.0 - self->_adjustedDuration;
  v16 = v14;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v15 < 0.0)
    {
      v17 = @"Distant Past";
    }

    else
    {
      v17 = [v12 dateByAddingTimeInterval:v15 * 3600.0];
    }

    adjustedDuration = self->_adjustedDuration;
    *buf = 138412802;
    v22 = v17;
    v23 = 2048;
    v24 = adjustedDuration;
    v25 = 2048;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SmartCharge: %@ duration post adjustment of %f hours, is %f hours", buf, 0x20u);
    if (v15 >= 0.0)
    {
    }
  }

  if (!v7)
  {
    self->_lastDurationResult = v15;
    v19 = [NSNumber numberWithDouble:v15];
    [OSIntelligenceUtilities setNumber:v19 forPreferenceKey:@"twoStageModelDurationResult" inDomain:self->_defaultsDomain];
  }

  return v15 * 3600.0;
}

- (id)getInputFeaturesWithPluginDate:(id)a3 withPluginBatteryLevel:(double)a4 forDate:(id)a5 withLog:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = +[NSCalendar currentCalendar];
  v14 = [v13 components:32 fromDate:v12];

  v15 = [v14 hour];
  [v10 timeIntervalSinceDate:v12];
  v17 = v16;

  v18 = [OSIntelligenceUtilities pluginEventsBefore:v10 withMinimumDuration:self->_minInputChargeDuration withMinimumPlugoutBatteryLevel:80.0];
  v19 = v11;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
    v23 = 138412290;
    v24 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found %@ events for featurization", &v23, 0xCu);
  }

  v21 = [(OSChargingTwoStagePredictor *)self getInputFeatures:v18 events:a4 pluginBatteryLevel:v10 timeFromPlugin:v19 pluginDate:v15 withLog:-v17];

  return v21;
}

- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7
{
  v13 = a5;
  v14 = a7;
  v15 = a8;
  v16 = os_transaction_create();
  v17 = [(OSChargingTwoStagePredictor *)self getInputFeaturesWithPluginDate:v13 withPluginBatteryLevel:v14 forDate:v15 withLog:a6];
  *&retstr->var0 = 0;
  *&retstr->var1 = vdupq_n_s64(0xC0F869F000000000);
  v18 = [(OSChargingTwoStagePredictor *)self engageModel];
  v19 = [v18 modelDescription];
  v20 = [v19 isUpdatable];

  v94 = v17;
  if (v20)
  {
    v21 = [(OSChargingTwoStagePredictor *)self convertInputFeaturesToNeuralFeatures:v17];
    if (!v21)
    {
      goto LABEL_46;
    }

    v22 = v21;
    v84 = self;
    v86 = v16;
    v90 = v14;
    v92 = v13;
    v23 = [(OSChargingTwoStagePredictor *)self engageModel];
    v83 = v22;
    v24 = [v23 predictionFromFeatures:v22 error:0];

    v88 = v15;
    v25 = v15;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [v24 featureNames];
      v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v105 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "outfeature names: %@", buf, 0xCu);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v27 = v24;
    v28 = [v24 featureNames];
    v29 = [v28 countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v100;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v100 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v99 + 1) + 8 * i);
          v34 = v25;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            [v27 featureValueForName:*&v33];
            v35 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v105 = v33;
            v106 = 2112;
            v107 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "  outfeatures: %@ - %@", buf, 0x16u);
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v99 objects:v108 count:16];
      }

      while (v30);
    }

    v36 = v27;
    v37 = [v27 featureValueForName:@"Identity"];
    v38 = [v37 dictionaryValue];

    v39 = v25;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      [v38 description];
      v40 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v105 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Neural engagement model raw output %@", buf, 0xCu);

      v36 = v27;
    }

    v41 = [v38 objectForKeyedSubscript:@"1"];
    [v41 doubleValue];
    v43 = v42;

    v13 = v92;
    v15 = v88;
    v14 = v90;
    self = v84;
    v16 = v86;
    v44 = v83;
  }

  else
  {
    v45 = [(OSChargingTwoStagePredictor *)self engageModel];
    v44 = [v45 predictionFromFeatures:v17 error:0];

    v46 = [v44 featureValueForName:@"classProbability"];
    v36 = [v46 dictionaryValue];

    v47 = v15;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      [v36 description];
      v48 = v36;
      v49 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v105 = v49;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Engagement model raw output %@", buf, 0xCu);

      v36 = v48;
    }

    v38 = [v36 objectForKeyedSubscript:&off_10009B700];
    [v38 doubleValue];
    v43 = v50;
  }

  if (self->_statusLog != v15)
  {
    self->_lastEngagementResult = v43;
    v51 = [NSNumber numberWithDouble:v43];
    [OSIntelligenceUtilities setNumber:v51 forPreferenceKey:@"twoStageModelEngagementResult" inDomain:self->_defaultsDomain];
  }

  retstr->var2 = v43;
  threshold = self->_threshold;
  v53 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  v17 = v94;
  if (v43 <= threshold)
  {
    if (v53)
    {
      v56 = self->_threshold;
      *buf = 134218240;
      v105 = v43;
      v106 = 2048;
      v107 = v56;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Engagement model says NO (Prob %lf < Threshold %lf)", buf, 0x16u);
    }

    v55 = 0;
  }

  else
  {
    if (v53)
    {
      v54 = self->_threshold;
      *buf = 134218240;
      v105 = v43;
      v106 = 2048;
      v107 = v54;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Engagement model says YES (Prob %lf > Threshold %lf)", buf, 0x16u);
    }

    v55 = 1;
  }

  retstr->var0 = v55;
  v57 = [(OSChargingTwoStagePredictor *)self durationModel];
  v58 = [v57 modelDescription];
  v59 = [v58 isUpdatable];

  if (v59)
  {
    v60 = [(OSChargingTwoStagePredictor *)self convertInputFeaturesToNeuralFeatures:v94];
    if (v60)
    {
      v61 = v60;
      v87 = v16;
      v91 = v14;
      v93 = v13;
      v62 = [(OSChargingTwoStagePredictor *)self durationModel];
      v63 = [v62 predictionFromFeatures:v61 error:0];

      v89 = v15;
      v64 = v15;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        [v63 featureNames];
        v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v105 = v65;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "outfeature names: %@", buf, 0xCu);
      }

      v85 = v61;

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v66 = [v63 featureNames];
      v67 = [v66 countByEnumeratingWithState:&v95 objects:v103 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v96;
        do
        {
          for (j = 0; j != v68; j = j + 1)
          {
            if (*v96 != v69)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v95 + 1) + 8 * j);
            v72 = v64;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              [v63 featureValueForName:*&v71];
              v73 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412546;
              v105 = v71;
              v106 = 2112;
              v107 = v73;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "  outfeatures: %@ - %@", buf, 0x16u);
            }
          }

          v68 = [v66 countByEnumeratingWithState:&v95 objects:v103 count:16];
        }

        while (v68);
      }

      v74 = [v63 featureValueForName:@"Identity"];
      v75 = [v74 multiArrayValue];

      v76 = [v75 objectAtIndexedSubscript:0];
      [v76 doubleValue];
      v78 = v77;

      v13 = v93;
      v15 = v89;
      v14 = v91;
      v79 = v85;
      v16 = v87;
      v17 = v94;
      goto LABEL_44;
    }

LABEL_46:
    v78 = -99999.0;
    goto LABEL_47;
  }

  v80 = [(OSChargingTwoStagePredictor *)self durationModel];
  v79 = [v80 predictionFromFeatures:v94 error:0];

  v63 = [v79 featureValueForName:@"duration_pred"];
  [v63 doubleValue];
  v78 = v81;
LABEL_44:

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v105 = v78;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Regression model output: %lf", buf, 0xCu);
  }

LABEL_47:
  retstr->var1 = v78;

  return result;
}

- (id)convertInputFeaturesToNeuralFeatures:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Convert model input features for neural model", buf, 2u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v7 = [v4 dictionary];
  v8 = [(OSChargingTwoStagePredictor *)self getMultiArrayForFeatureDict:v7];

  [v6 setObject:v8 forKeyedSubscript:@"layer1_input"];
  v13 = 0;
  v9 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v6 error:&v13];
  v10 = v13;
  if (v10)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005E110();
    }

    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

- (void)resetSavedDeadline
{
  deadline = self->_deadline;
  self->_deadline = 0;

  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_lastEngagementResult = _Q0;
  [OSIntelligenceUtilities setDate:self->_deadline forPreferenceKey:@"twoStageModelOutput" inDomain:self->_defaultsDomain];
  v9 = [NSNumber numberWithDouble:self->_lastEngagementResult];
  [OSIntelligenceUtilities setNumber:v9 forPreferenceKey:@"twoStageModelEngagementResult" inDomain:self->_defaultsDomain];

  v10 = [NSNumber numberWithDouble:self->_lastDurationResult];
  [OSIntelligenceUtilities setNumber:v10 forPreferenceKey:@"twoStageModelDurationResult" inDomain:self->_defaultsDomain];
}

- (void)deleteCompiledModels
{
  v3 = os_transaction_create();
  v4 = [(OSIntelligenceTrialManager *)self->_trialManager loadTrialEngageModelByDeletingExistingModel:1];
  if (v4)
  {
    os_unfair_lock_lock(&self->_loadModelLock);
    objc_storeStrong(&self->_engageModel, v4);
    [(OSChargingTwoStagePredictor *)self loadThresholdForModel:self->_engageModel];
    self->_threshold = v5;
    os_unfair_lock_unlock(&self->_loadModelLock);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      threshold = self->_threshold;
      v8 = log;
      v9 = [NSNumber numberWithDouble:threshold];
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Trial engage model found! Threshold: %@", &v16, 0xCu);
    }
  }

  v10 = [(OSIntelligenceTrialManager *)self->_trialManager loadTrialDurationModelByDeletingExistingModel:1];

  if (v10)
  {
    os_unfair_lock_lock(&self->_loadModelLock);
    objc_storeStrong(&self->_durationModel, v10);
    [(OSChargingTwoStagePredictor *)self loadAdjustedHoursForModel:self->_durationModel];
    self->_adjustedDuration = v11;
    os_unfair_lock_unlock(&self->_loadModelLock);
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      adjustedDuration = self->_adjustedDuration;
      v14 = v12;
      v15 = [NSNumber numberWithDouble:adjustedDuration];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Trial duration model found! adjustedDuration = %@", &v16, 0xCu);
    }
  }
}

- (void)deleteUpdatedModels
{
  v3 = +[NSFileManager defaultManager];
  v27[0] = @"/var/mobile/Library/OSIntelligence";
  v27[1] = @"updatedClassifier.modelc";
  v4 = [NSArray arrayWithObjects:v27 count:2];
  v5 = [NSURL fileURLWithPathComponents:v4];

  v6 = [v5 path];
  v21 = 0;
  v7 = [v3 removeItemAtPath:v6 error:&v21];
  v8 = v21;

  if ((v7 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = log;
      v11 = [v5 path];
      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
    }
  }

  v22[0] = @"/var/mobile/Library/OSIntelligence";
  v22[1] = @"updatedRegressor.modelc";
  v12 = [NSArray arrayWithObjects:v22 count:2];
  v13 = [NSURL fileURLWithPathComponents:v12];

  v14 = [v13 path];
  v20 = v8;
  v15 = [v3 removeItemAtPath:v14 error:&v20];
  v16 = v20;

  if ((v15 & 1) == 0)
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v13 path];
      *buf = 138412546;
      v24 = v19;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
    }
  }
}

- (id)compileModel:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:v4 withExtension:@"ml"];

  v21 = 0;
  [v6 checkResourceIsReachableAndReturnError:&v21];
  v7 = v21;
  log = self->_log;
  if (v7)
  {
    v9 = v7;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005E178();
    }

LABEL_5:
    v10 = 0;
    goto LABEL_19;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = log;
    v12 = [v6 description];
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "model url access success: %@", buf, 0xCu);
  }

  if (!v6)
  {
    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10005E248(v16);
    }

    goto LABEL_5;
  }

  v20 = 0;
  v13 = [MLModel compileModelAtURL:v6 error:&v20];
  v14 = v20;
  v15 = self->_log;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10005E1E0();
    }

    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v15;
      v18 = [v13 description];
      *buf = 138412290;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "compiled model URL: %@", buf, 0xCu);
    }

    v10 = v13;
  }

LABEL_19:

  return v10;
}

- (void)loadEngagementModelFromURL:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_loadModelLock);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Reload engagement model: %@", buf, 0xCu);
  }

  v11 = 0;
  v7 = [MLModel modelWithContentsOfURL:v5 error:&v11];
  v8 = v11;
  engageModel = self->_engageModel;
  self->_engageModel = v7;

  if (v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005E094();
    }
  }

  else
  {
    objc_storeStrong(&self->_compiledClassifier, a3);
    [(OSChargingTwoStagePredictor *)self loadThresholdForModel:self->_engageModel];
    self->_threshold = v10;
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
}

- (void)loadDurationModelFromURL:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_loadModelLock);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Reload duration model: %@", buf, 0xCu);
  }

  v11 = 0;
  v7 = [MLModel modelWithContentsOfURL:v5 error:&v11];
  v8 = v11;
  durationModel = self->_durationModel;
  self->_durationModel = v7;

  if (v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005E094();
    }
  }

  else
  {
    objc_storeStrong(&self->_compiledRegressor, a3);
    [(OSChargingTwoStagePredictor *)self loadAdjustedHoursForModel:self->_durationModel];
    self->_adjustedDuration = v10;
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
}

- (id)loadModelWithModelNameString:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_loadModelLock);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:v4 ofType:@"mlmodelc"];
  v7 = [NSURL fileURLWithPath:v6];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loading model %@ from disk at path %@", buf, 0x16u);
  }

  v12 = 0;
  v9 = [MLModel modelWithContentsOfURL:v7 error:&v12];
  v10 = v12;
  if (v10 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10005E094();
  }

  os_unfair_lock_unlock(&self->_loadModelLock);

  return v9;
}

@end