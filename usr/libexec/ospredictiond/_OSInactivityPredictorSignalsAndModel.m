@interface _OSInactivityPredictorSignalsAndModel
+ (id)predictorWithPredictor:(id)a3;
- (_OSInactivityPredictorSignalsAndModel)init;
- (_OSInactivityPredictorSignalsAndModel)initWithPredictor:(id)a3;
- (id)inferInputDateAndWaitTimeToQueryModelWithOptions:(int64_t)a3 withError:(id *)a4;
- (id)longInactivityPredictionResultAtDate:(id)a3 withTimeSinceInactive:(double)a4 withOptions:(int64_t)a5 withError:(id *)a6;
- (id)longInactivityPredictionResultWithOptions:(int64_t)a3 withError:(id *)a4;
- (id)predictorType;
- (id)sleepSuppresionPredictionResultWithError:(id *)a3;
- (void)updateTrialParameters;
@end

@implementation _OSInactivityPredictorSignalsAndModel

- (_OSInactivityPredictorSignalsAndModel)init
{
  v3 = objc_alloc(objc_opt_class());
  v4 = +[_OSInactivityPredictorTwoStage predictor];
  v5 = [v3 initWithPredictor:v4];

  return v5;
}

- (_OSInactivityPredictorSignalsAndModel)initWithPredictor:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = _OSInactivityPredictorSignalsAndModel;
  v6 = [(_OSInactivityPredictor *)&v26 init];
  if (v6)
  {
    v7 = objc_alloc_init(OSIDNDMonitor);
    dndMonitor = v6->_dndMonitor;
    v6->_dndMonitor = v7;

    v9 = objc_alloc_init(OSIAlarmMonitor);
    alarmMonitor = v6->_alarmMonitor;
    v6->_alarmMonitor = v9;

    objc_storeStrong(&v6->_baseModel, a3);
    v11 = [TRIClient clientWithIdentifier:293];
    trialClient = v6->_trialClient;
    v6->_trialClient = v11;

    [(_OSInactivityPredictorSignalsAndModel *)v6 updateTrialParameters];
    objc_initWeak(&location, v6);
    v13 = v6->_trialClient;
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100016B88;
    v23 = &unk_1000948D8;
    objc_copyWeak(&v24, &location);
    v14 = [(TRIClient *)v13 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:&v20];
    v15 = [OSIntelligenceAnalyticsManager sharedInstanceWithTrialClient:v6->_trialClient withNamespace:@"COREOS_PREDICTION_INACTIVITY", v20, v21, v22, v23];
    analyticsManager = v6->_analyticsManager;
    v6->_analyticsManager = v15;

    v17 = os_log_create("com.apple.osintelligence", "inactivity.model.signals");
    log = v6->_log;
    v6->_log = v17;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)updateTrialParameters
{
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"requeryDelta" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_requeryDelta = [v3 longValue];

  v4 = [(TRIClient *)self->_trialClient levelForFactor:@"snapDND" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_useDND = [v4 BOOLeanValue];

  v5 = [(TRIClient *)self->_trialClient levelForFactor:@"snapAlarm" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_useAlarm = [v5 BOOLeanValue];

  v6 = [(TRIClient *)self->_trialClient levelForFactor:@"alarmLeeway" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v6 doubleValue];
  self->_alarmLeeway = v7;

  v8 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsAlarmOffset" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v8 doubleValue];
  self->_alarmOffset = v9;

  v10 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsDNDOffset" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v10 doubleValue];
  self->_dndOffset = v11;

  v12 = [(TRIClient *)self->_trialClient levelForFactor:@"accelerateLookahead" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v12 doubleValue];
  self->_accelerateLookahead = v13;

  v14 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsUseTimeRestriction" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_rarelyUsedTimeRestriction = [v14 BOOLeanValue];

  v15 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsTimeRestrictionEarlyHour" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_rarelyUsedTimeRestrictionEarlyHour = [v15 longValue];

  v16 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsTimeRestrictionLateHour" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_rarelyUsedTimeRestrictionLateHour = [v16 longValue];

  v17 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsTimeRestrictionLateHourForSleepSuppression" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_rarelyUsedTimeRestrictionEarlyHourForSleepSuppression = [v17 longValue];

  v18 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsTimeRestrictionEarlyHourForSleepSuppression" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_rarelyUsedTimeRestrictionLateHourForSleepSuppression = [v18 longValue];

  v20 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsRarelyUsedMaxDuration" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v20 doubleValue];
  self->_rarelyUsedMaxPredictionDuration = v19;
}

+ (id)predictorWithPredictor:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPredictor:v3];

  return v4;
}

- (id)predictorType
{
  v2 = [(_OSInactivityPredictor *)self->_baseModel predictorType];
  v3 = [NSString stringWithFormat:@"%@ (with heuristics)", v2];

  return v3;
}

- (id)inferInputDateAndWaitTimeToQueryModelWithOptions:(int64_t)a3 withError:(id *)a4
{
  v7 = +[_CDClientContext userContext];
  v8 = [OSIntelligenceUtilities isPluggedInWithContext:v7];

  v9 = 0.0;
  if (v8)
  {
    [(_OSInactivityPredictor *)self waitedDuration];
    v9 = v10;
    [(_OSInactivityPredictorSignalsAndModel *)self recommendedWaitTime];
    if (v9 >= v11)
    {
      v9 = v11;
    }
  }

  v12 = [NSDate dateWithTimeIntervalSinceNow:-v9];
  v13 = [(_OSInactivityPredictorSignalsAndModel *)self longInactivityPredictionResultAtDate:v12 withTimeSinceInactive:a3 withOptions:a4 withError:v9];
  [v13 safeSubtractWaitTimeFromPredictedDuration:v9];

  return v13;
}

- (id)longInactivityPredictionResultWithOptions:(int64_t)a3 withError:(id *)a4
{
  if (a3 == 2)
  {
    v8 = objc_alloc_init(_OSIInactivityEntrySignals);
    [(_OSInactivityPredictor *)self waitedDuration];
    v10 = v9;
    v11 = [(_OSInactivityPredictorSignalsAndModel *)self baseModel];
    v12 = [v11 predictorType];
    [(_OSIInactivityEntrySignals *)v8 checkSleepSignalsWithTimeSinceInactive:v12 andPredictorType:v10];

    v13 = [_OSInactivityPredictorOutput alloc];
    if ([(_OSIInactivityEntrySignals *)v8 areSleepHeuristicsMet])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(_OSIInactivityEntrySignals *)v8 areSleepHeuristicsMet];
    if ([(_OSIInactivityEntrySignals *)v8 areSleepHeuristicsMet])
    {
      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

    v7 = [v13 initWithConfidenceLevel:v14 andConfidenceValue:v16 andPredictedDuration:v15 andReason:0.0];
  }

  else if (a3 == 1)
  {
    v7 = [(_OSInactivityPredictorSignalsAndModel *)self sleepSuppresionPredictionResultWithError:a4];
  }

  else
  {
    self->_accelerateSuppression = 0;
    v17 = [_OSInactivityPredictorOutput alloc];
    [(_OSInactivityPredictor *)self->_baseModel confidenceThresholdRelaxed];
    v19 = [v17 initWithConfidenceLevel:0 andConfidenceValue:4 andPredictedDuration:v18 + -0.01 andReason:0.0];
    v20 = objc_alloc_init(_OSIInactivityEntrySignals);
    [(_OSInactivityPredictor *)self waitedDuration];
    if ([(_OSIInactivityEntrySignals *)v20 checkInactivitySignalsWithTimeSinceInactive:?])
    {
      v7 = [(_OSInactivityPredictorSignalsAndModel *)self inferInputDateAndWaitTimeToQueryModelWithOptions:a3 withError:a4];

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v7;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Model queried: %@", buf, 0xCu);
      }
    }

    else
    {
      v7 = v19;
    }

    v42[0] = &off_10009B598;
    v41[0] = @"AmbientLightLevel";
    v41[1] = @"StationaryLevel";
    [(_OSIInactivityEntrySignals *)v20 pctStationary];
    v40 = [NSNumber numberWithInt:(v22 * 100.0)];
    v42[1] = v40;
    v41[2] = @"CurrentPlayback";
    v39 = [NSNumber numberWithBool:[(_OSIInactivityEntrySignals *)v20 hasRecentPlaybackChange]];
    v42[2] = v39;
    v41[3] = @"DeadlineSetter";
    v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 outputReason]);
    v42[3] = v38;
    v41[4] = @"ModelType";
    v37 = [(_OSInactivityPredictor *)self->_baseModel predictorType];
    v23 = [NSString stringWithFormat:@"cpn_%@", v37];
    v42[4] = v23;
    v41[5] = @"ModelConfidence";
    [v7 confidenceValue];
    v25 = [NSNumber numberWithInt:(v24 * 100.0)];
    v42[5] = v25;
    v41[6] = @"ModelConfidenceLevel";
    v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 confidenceLevel]);
    v42[6] = v26;
    v41[7] = @"PredictedDuration";
    [v7 predictedDuration];
    v27 = [NSNumber numberWithDouble:?];
    v42[7] = v27;
    v41[8] = @"TreatmentID";
    v28 = [(TRIClient *)self->_trialClient treatmentIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &stru_100096C80;
    }

    v42[8] = v30;
    v41[9] = @"RolloutID";
    v31 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = &stru_100096C80;
    }

    v42[9] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:10];

    v35 = self->_log;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Logging sleep suppression query event to PL: %@", buf, 0xCu);
    }

    PLLogRegisteredEvent();
  }

  return v7;
}

- (id)longInactivityPredictionResultAtDate:(id)a3 withTimeSinceInactive:(double)a4 withOptions:(int64_t)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = +[OSIntelligenceDefines inactivityUserDefaults];
  LODWORD(v12) = [v11 BOOLForKey:@"heuristicsOnly"];
  if (v12)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Using heuristics only.", buf, 2u);
    }

    v14 = [[_OSInactivityPredictorOutput alloc] initWithConfidenceLevel:2 andConfidenceValue:1 andPredictedDuration:1.0 andReason:12.0];
  }

  else
  {
    v15 = v10;
    if (a5 == 1 && self->_accelerateSuppression)
    {
      v81 = v11;
      v16 = [NSDate dateWithTimeIntervalSinceNow:self->_accelerateLookahead];

      v17 = self->_log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        accelerateLookahead = self->_accelerateLookahead;
        *buf = 134217984;
        v85 = *&accelerateLookahead;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Advancing query date to %.2f seconds from now to accelerate sleep suppression", buf, 0xCu);
      }

      v15 = v16;
      v12 = v10;
      v19 = v81;
    }

    else
    {
      v12 = v10;
      v19 = v11;
    }

    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v85 = a5;
      v86 = 2112;
      v87 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(%ld) Querying model with input date: %@", buf, 0x16u);
    }

    v14 = [(_OSInactivityPredictor *)self->_baseModel longInactivityPredictionResultAtDate:v15 withTimeSinceInactive:a5 withOptions:a6 withError:a4];
    self->_accelerateSuppression = 0;

    v11 = v19;
    v10 = v12;
    LOBYTE(v12) = 0;
  }

  if ([v14 confidenceLevel] != 2)
  {
    v14 = v14;
    v37 = v14;
    goto LABEL_71;
  }

  v82 = v11;
  [v14 predictedDuration];
  v22 = [v10 dateByAddingTimeInterval:v21 * 3600.0];
  v79 = +[NSDate now];
  v83 = [v10 laterDate:?];
  v23 = self->_log;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    [v14 predictedDuration];
    *buf = 134218498;
    v85 = v25;
    v86 = 2112;
    v87 = v10;
    v88 = 2112;
    v89 = v22;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Raw model confidently predicted %.2f hours of inactivity from %@ until %@", buf, 0x20u);
  }

  if (v12 & 1 | !self->_rarelyUsedTimeRestriction || !+[OSIntelligenceUtilities isDeviceRarelyUsedRecently])
  {
    v80 = 0;
  }

  else
  {
    [(_OSInactivityPredictorSignalsAndModel *)self setIsRarelyUsed:1];
    v80 = +[NSCalendar currentCalendar];
    v26 = [v80 components:60 fromDate:v83];
    v27 = [v26 hour];
    v28 = v27;
    v29 = &OBJC_IVAR____OSInactivityPredictorSignalsAndModel__rarelyUsedTimeRestrictionEarlyHourForSleepSuppression;
    if (!a5)
    {
      v29 = &OBJC_IVAR____OSInactivityPredictorSignalsAndModel__rarelyUsedTimeRestrictionEarlyHour;
    }

    v30 = &OBJC_IVAR____OSInactivityPredictorSignalsAndModel__rarelyUsedTimeRestrictionLateHourForSleepSuppression;
    if (!a5)
    {
      v30 = &OBJC_IVAR____OSInactivityPredictorSignalsAndModel__rarelyUsedTimeRestrictionLateHour;
    }

    v31 = *v29;
    v32 = *(&self->super.super.isa + v31);
    if (v27 < *(&self->super.super.isa + *v30) && v27 >= v32)
    {
      v33 = [_OSInactivityPredictorOutput alloc];
      [(_OSInactivityPredictor *)self->_baseModel confidenceThresholdStrict];
      v35 = [v33 initWithConfidenceLevel:1 andConfidenceValue:0 andPredictedDuration:v34 + -0.01 andReason:0.0];

      v36 = self->_log;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Restricting entry: Rarely-used device not in time range", buf, 2u);
      }

      v14 = v35;
      v37 = v14;
      v11 = v82;
      goto LABEL_70;
    }

    [v26 setHour:*(&self->super.super.isa + v31)];
    [v26 setMinute:0];
    [v26 setSecond:0];
    v63 = [v80 dateFromComponents:v26];
    v64 = v63;
    if (v28 > v32)
    {
      v65 = [v63 dateByAddingTimeInterval:86400.0];

      v64 = v65;
    }

    rarelyUsedMaxPredictionDuration = self->_rarelyUsedMaxPredictionDuration;
    [v64 timeIntervalSinceDate:v83];
    if (rarelyUsedMaxPredictionDuration * 3600.0 < v67)
    {
      v67 = rarelyUsedMaxPredictionDuration * 3600.0;
    }

    v68 = [v83 dateByAddingTimeInterval:v67];
    [v68 timeIntervalSinceDate:v22];
    if (v69 <= 0.0)
    {
      v70 = v68;
      v68 = v22;
      v22 = v70;
    }

    else
    {
      v70 = 0;
    }

    v80 = v70;
  }

  if (self->_useDND)
  {
    v38 = [(OSIDNDMonitor *)self->_dndMonitor scheduledDNDEndDate];
    v39 = v38;
    if (v38 && ([v38 timeIntervalSinceDate:v83], v40 > 0.0))
    {
      v26 = [v39 dateByAddingTimeInterval:-self->_dndOffset];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  alarmMonitor = self->_alarmMonitor;
  v42 = [v22 dateByAddingTimeInterval:self->_alarmLeeway];
  v43 = [(OSIAlarmMonitor *)alarmMonitor nextAlarmFireDateBetweenDate:v83 andDate:v42];

  v78 = v22;
  if (self->_useAlarm && v43)
  {
    v44 = [v43 dateByAddingTimeInterval:-self->_alarmOffset];

    if (v44)
    {
      v45 = self->_log;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Using alarm date: %@", buf, 0xCu);
      }

      v46 = v44;
      deadlineSetter = self->_deadlineSetter;
      self->_deadlineSetter = @"Alarm";

      if (a5)
      {
        v48 = v26;
        analyticsManager = self->_analyticsManager;
        [v46 timeIntervalSinceReferenceDate];
        v50 = [NSNumber numberWithDouble:?];
        [v46 timeIntervalSinceReferenceDate];
        v51 = [NSNumber numberWithDouble:?];
        [(_OSInactivityPredictorSignalsAndModel *)self recommendedWaitTime];
        v52 = [NSNumber numberWithDouble:?];
        -[OSIntelligenceAnalyticsManager saveNextAlarmInterval:nextDNDInterval:predictionInterval:recommendedWait:deadlineSetter:modelConfidenceLevel:withPredictor:](analyticsManager, "saveNextAlarmInterval:nextDNDInterval:predictionInterval:recommendedWait:deadlineSetter:modelConfidenceLevel:withPredictor:", v50, 0, v51, v52, self->_deadlineSetter, [v14 confidenceLevel], self);

        v53 = 2;
        v54 = v46;
LABEL_67:

        v26 = v48;
        goto LABEL_69;
      }

      v53 = 2;
      v54 = v46;
      goto LABEL_69;
    }
  }

  else
  {
  }

  if (!v26)
  {
    v59 = self->_log;
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
    if (v80)
    {
      if (v60)
      {
        *buf = 138412290;
        v85 = v80;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Using 'rarely-used' date: %@", buf, 0xCu);
      }

      v54 = v80;
      v61 = self->_deadlineSetter;
      v62 = @"RarelyUsed";
    }

    else
    {
      if (v60)
      {
        *buf = 138412290;
        v85 = v22;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Using model output: %@", buf, 0xCu);
      }

      v54 = v22;
      v61 = self->_deadlineSetter;
      v62 = @"Model";
    }

    self->_deadlineSetter = &v62->isa;

    if (!a5)
    {
      v46 = 0;
      v53 = 1;
      goto LABEL_69;
    }

    v48 = 0;
    v71 = self->_analyticsManager;
    [v54 timeIntervalSinceReferenceDate];
    v50 = [NSNumber numberWithDouble:?];
    [(_OSInactivityPredictorSignalsAndModel *)self recommendedWaitTime];
    v51 = [NSNumber numberWithDouble:?];
    -[OSIntelligenceAnalyticsManager saveNextAlarmInterval:nextDNDInterval:predictionInterval:recommendedWait:deadlineSetter:modelConfidenceLevel:withPredictor:](v71, "saveNextAlarmInterval:nextDNDInterval:predictionInterval:recommendedWait:deadlineSetter:modelConfidenceLevel:withPredictor:", 0, 0, v50, v51, self->_deadlineSetter, [v14 confidenceLevel], self);
    v46 = 0;
    v53 = 1;
    goto LABEL_67;
  }

  v55 = self->_log;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v85 = v26;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Using DND date: %@", buf, 0xCu);
  }

  v54 = v26;
  v56 = self->_deadlineSetter;
  self->_deadlineSetter = @"DND";

  if (a5)
  {
    v48 = v26;
    v57 = self->_analyticsManager;
    [v54 timeIntervalSinceReferenceDate];
    v50 = [NSNumber numberWithDouble:?];
    [v54 timeIntervalSinceReferenceDate];
    v51 = [NSNumber numberWithDouble:?];
    [(_OSInactivityPredictorSignalsAndModel *)self recommendedWaitTime];
    v58 = [NSNumber numberWithDouble:?];
    -[OSIntelligenceAnalyticsManager saveNextAlarmInterval:nextDNDInterval:predictionInterval:recommendedWait:deadlineSetter:modelConfidenceLevel:withPredictor:](v57, "saveNextAlarmInterval:nextDNDInterval:predictionInterval:recommendedWait:deadlineSetter:modelConfidenceLevel:withPredictor:", 0, v50, v51, v58, self->_deadlineSetter, [v14 confidenceLevel], self);

    v46 = 0;
    v53 = 3;
    goto LABEL_67;
  }

  v46 = 0;
  v53 = 3;
LABEL_69:
  v72 = [_OSInactivityPredictorOutput alloc];
  v73 = [v14 confidenceLevel];
  [v14 confidenceValue];
  v75 = v74;
  [v54 timeIntervalSinceDate:v10];
  v37 = [v72 initWithConfidenceLevel:v73 andConfidenceValue:v53 andPredictedDuration:v75 andReason:v76 / 3600.0];

  v11 = v82;
  v22 = v78;
LABEL_70:

LABEL_71:

  return v37;
}

- (id)sleepSuppresionPredictionResultWithError:(id *)a3
{
  self->_accelerateSuppression = 0;
  v5 = objc_alloc_init(_OSIInactivityEntrySignals);
  [(_OSInactivityPredictor *)self waitedDuration];
  v7 = v6;
  v8 = [(_OSInactivityPredictorSignalsAndModel *)self baseModel];
  v9 = [v8 predictorType];
  [(_OSIInactivityEntrySignals *)v5 checkSleepSignalsWithTimeSinceInactive:v9 andPredictorType:v7];

  v10 = [_OSInactivityPredictorOutput alloc];
  [(_OSInactivityPredictor *)self->_baseModel confidenceThresholdRelaxed];
  v12 = [v10 initWithConfidenceLevel:0 andConfidenceValue:4 andPredictedDuration:v11 + -0.01 andReason:0.0];
  if ([(_OSIInactivityEntrySignals *)v5 areSleepHeuristicsMet])
  {
    [(_OSIInactivityEntrySignals *)v5 secondsSinceWait];
    if (v13 < self->_requeryDelta)
    {
      v14 = [(_OSIInactivityEntrySignals *)v5 lux];
      if (v14 < [(_OSIInactivityEntrySignals *)v5 immediateMaxDarkLuxThreshold])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v16 = log;
          [(_OSIInactivityEntrySignals *)v5 secondsSinceWait];
          requeryDelta = self->_requeryDelta;
          *buf = 134218240;
          v58 = v18;
          v59 = 1024;
          v60 = requeryDelta;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Accelerating queries because waited %.2f seconds (<%d) in the dark", buf, 0x12u);
        }

        self->_accelerateSuppression = 1;
      }
    }

    v19 = [(_OSInactivityPredictorSignalsAndModel *)self inferInputDateAndWaitTimeToQueryModelWithOptions:1 withError:a3];

    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Model queried for sleep suppression: %@", buf, 0xCu);
    }
  }

  else
  {
    v19 = v12;
  }

  if (!self->_deadlineSetter)
  {
    self->_deadlineSetter = &stru_100096C80;
  }

  v55[0] = @"modelConfidenceLevel";
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 confidenceLevel]);
  v56[0] = v21;
  v55[1] = @"entryAmbientLightLevelBucketed";
  v22 = [NSNumber numberWithInt:[OSIntelligenceAnalyticsManager bucketLuxValue:[(_OSIInactivityEntrySignals *)v5 lux]]];
  v56[1] = v22;
  v55[2] = @"entryStationaryLevel";
  [(_OSIInactivityEntrySignals *)v5 pctStationary];
  v24 = [NSNumber numberWithDouble:round(v23 * 10.0)];
  v56[2] = v24;
  v55[3] = @"currentPlayback";
  [NSNumber numberWithBool:[(_OSIInactivityEntrySignals *)v5 hasRecentPlaybackChange]];
  v26 = v25 = v5;
  v56[3] = v26;
  v55[4] = @"deadlineSetter";
  v27 = [(_OSInactivityPredictorSignalsAndModel *)self deadlineSetter];
  v56[4] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:5];

  v29 = self->_log;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B7F0(v28, v29);
  }

  v50 = v28;
  AnalyticsSendEventLazy();
  v53[0] = @"AmbientLightLevel";
  v49 = [NSNumber numberWithInt:[(_OSIInactivityEntrySignals *)v25 lux]];
  v54[0] = v49;
  v53[1] = @"StationaryLevel";
  [(_OSIInactivityEntrySignals *)v25 pctStationary];
  v48 = [NSNumber numberWithInt:(v30 * 100.0)];
  v54[1] = v48;
  v53[2] = @"CurrentPlayback";
  v52 = v25;
  v47 = [NSNumber numberWithBool:[(_OSIInactivityEntrySignals *)v25 hasRecentPlaybackChange]];
  v54[2] = v47;
  v53[3] = @"DeadlineSetter";
  v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 outputReason]);
  v54[3] = v31;
  v53[4] = @"ModelType";
  v32 = [(_OSInactivityPredictor *)self->_baseModel predictorType];
  v54[4] = v32;
  v53[5] = @"ModelConfidence";
  [v19 confidenceValue];
  v34 = [NSNumber numberWithInt:(v33 * 100.0)];
  v54[5] = v34;
  v53[6] = @"ModelConfidenceLevel";
  v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 confidenceLevel]);
  v54[6] = v35;
  v53[7] = @"PredictedDuration";
  v51 = v19;
  [v19 predictedDuration];
  v36 = [NSNumber numberWithDouble:?];
  v54[7] = v36;
  v53[8] = @"TreatmentID";
  v37 = [(TRIClient *)self->_trialClient treatmentIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = &stru_100096C80;
  }

  v54[8] = v39;
  v53[9] = @"RolloutID";
  v40 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = &stru_100096C80;
  }

  v54[9] = v42;
  v43 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:10];

  v44 = self->_log;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v43;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Logging sleep suppression query event to PL: %@", buf, 0xCu);
  }

  PLLogRegisteredEvent();
  v45 = v51;

  return v51;
}

@end