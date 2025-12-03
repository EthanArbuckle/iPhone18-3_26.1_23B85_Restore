@interface _OSIInactivityEntrySignals
- (BOOL)checkInactivitySignalsWithTimeSinceInactive:(double)inactive;
- (BOOL)checkSleepSignalsWithTimeSinceInactive:(double)inactive andPredictorType:(id)type;
- (_OSIInactivityEntrySignals)init;
- (double)dynamicMinPctStationaryThresholdSinceWait:(double)wait;
- (int)dynamicMaxDarkLuxThresholdSinceWait:(double)wait;
- (void)updateTrialParameters;
@end

@implementation _OSIInactivityEntrySignals

- (_OSIInactivityEntrySignals)init
{
  v23.receiver = self;
  v23.super_class = _OSIInactivityEntrySignals;
  v2 = [(_OSIInactivityEntrySignals *)&v23 init];
  if (v2)
  {
    v3 = objc_alloc_init(OSIAmbientLightMonitor);
    lightMonitor = v2->_lightMonitor;
    v2->_lightMonitor = v3;

    v5 = objc_alloc_init(OSIMotionMonitor);
    motionMonitor = v2->_motionMonitor;
    v2->_motionMonitor = v5;

    v7 = objc_alloc_init(OSIMediaPlaybackMonitor);
    mediaPlaybackMonitor = v2->_mediaPlaybackMonitor;
    v2->_mediaPlaybackMonitor = v7;

    v9 = objc_alloc_init(OSISleepScheduleMonitor);
    sleepScheduleMonitor = v2->_sleepScheduleMonitor;
    v2->_sleepScheduleMonitor = v9;

    v11 = objc_alloc_init(OSIBLSStateMonitor);
    blsStateMonitor = v2->_blsStateMonitor;
    v2->_blsStateMonitor = v11;

    v13 = [TRIClient clientWithIdentifier:293];
    trialClient = v2->_trialClient;
    v2->_trialClient = v13;

    [(_OSIInactivityEntrySignals *)v2 updateTrialParameters];
    objc_initWeak(&location, v2);
    v15 = v2->_trialClient;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000E71C;
    v20[3] = &unk_1000948D8;
    objc_copyWeak(&v21, &location);
    v16 = [(TRIClient *)v15 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:v20];
    v17 = os_log_create("com.apple.osintelligence", "sleep.signals");
    log = v2->_log;
    v2->_log = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)updateTrialParameters
{
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"requeryDelta" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_requeryDelta = [v3 longValue];

  v4 = [(TRIClient *)self->_trialClient levelForFactor:@"darkLuxThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_maxDarkLuxThreshold = [v4 longValue];

  v5 = [(TRIClient *)self->_trialClient levelForFactor:@"signalsNegativeLuxPreventsEngagement" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_excludeNegativeLux = [v5 BOOLeanValue];

  v6 = [(TRIClient *)self->_trialClient levelForFactor:@"immediateDarkLuxThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_immediateMaxDarkLuxThreshold = [v6 longValue];

  v7 = [(TRIClient *)self->_trialClient levelForFactor:@"initialDarkLuxThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_initialMaxDarkLuxThreshold = [v7 longValue];

  v8 = [(TRIClient *)self->_trialClient levelForFactor:@"pctStationary" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v8 doubleValue];
  self->_minPctStationaryThreshold = v9;

  v10 = [(TRIClient *)self->_trialClient levelForFactor:@"stationaryLookback" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v10 doubleValue];
  self->_stationaryLookbackSeconds = v11;

  v12 = [(TRIClient *)self->_trialClient levelForFactor:@"immediatePctStationary" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v12 doubleValue];
  self->_immediateMinPctStationaryThreshold = v13;

  v14 = [(TRIClient *)self->_trialClient levelForFactor:@"initialPctStationary" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v14 doubleValue];
  self->_initialMinPctStationaryThreshold = v15;

  v16 = [(TRIClient *)self->_trialClient levelForFactor:@"playbackThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v16 doubleValue];
  self->_maxPlaybackThreshold = v17;

  v18 = [(TRIClient *)self->_trialClient levelForFactor:@"playbackLookback" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v18 doubleValue];
  self->_playbackLookbackSeconds = v19;

  v20 = [(TRIClient *)self->_trialClient levelForFactor:@"useSleep" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  self->_useSleep = [v20 BOOLeanValue];

  v21 = [(TRIClient *)self->_trialClient levelForFactor:@"bedtimeOffset" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v21 doubleValue];
  self->_bedtimeOffset = v22;

  v24 = [(TRIClient *)self->_trialClient levelForFactor:@"wakeOffset" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v24 doubleValue];
  self->_wakeOffset = v23;
}

- (BOOL)checkSleepSignalsWithTimeSinceInactive:(double)inactive andPredictorType:(id)type
{
  typeCopy = type;
  v7 = +[NSDate date];
  v8 = [(_OSIInactivityEntrySignals *)self dynamicMaxDarkLuxThresholdSinceWait:inactive];
  self->_lux = [(OSIAmbientLightMonitor *)self->_lightMonitor currentAmbientLightLevel];
  v9 = MGGetBoolAnswer();
  self->_canAlwaysReadLux = v9;
  if (v9)
  {
    lux = self->_lux;
    if (lux >= v8 || (v11 = 1, lux < 0) && self->_excludeNegativeLux)
    {
      log = self->_log;
      v11 = 0;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_lux;
        v37 = 67109376;
        *v38 = v13;
        *&v38[4] = 1024;
        *&v38[6] = v8;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Restricting entry because lux is %d (>= %d)", &v37, 0xEu);
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  aodOffOrSuppressed = [(OSIBLSStateMonitor *)self->_blsStateMonitor aodOffOrSuppressed];
  self->_aodAlreadySuppressedOrOff = aodOffOrSuppressed;
  if (aodOffOrSuppressed)
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Restricting entry because already suppressed", &v37, 2u);
    }

    [(_OSIInactivityEntrySignals *)self dynamicMinPctStationaryThresholdSinceWait:inactive];
    v17 = v16;
    goto LABEL_14;
  }

  [(_OSIInactivityEntrySignals *)self dynamicMinPctStationaryThresholdSinceWait:inactive];
  v17 = v18;
  if (!v11)
  {
LABEL_14:
    v20 = 0;
    v19 = 1.0;
    goto LABEL_15;
  }

  [(OSIMotionMonitor *)self->_motionMonitor percentStationaryOverDuration:self->_stationaryLookbackSeconds];
  v20 = 1;
LABEL_15:
  self->_pctStationary = v19;
  currentlyInCar = [(OSIMotionMonitor *)self->_motionMonitor currentlyInCar];
  self->_inCar = currentlyInCar;
  if (self->_pctStationary < v17 || currentlyInCar)
  {
    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      pctStationary = self->_pctStationary;
      inCar = self->_inCar;
      v37 = 134218496;
      *v38 = pctStationary;
      *&v38[8] = 2048;
      v39 = v17;
      v40 = 1024;
      v41 = inCar;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Restricting entry because stationary for only %.2f (< %.2f) or Auto=%u", &v37, 0x1Cu);
    }

    goto LABEL_24;
  }

  if (!v20)
  {
LABEL_24:
    v25 = 0;
    self->_hasRecentPlaybackChange = 0;
LABEL_25:
    v29 = 1;
    goto LABEL_26;
  }

  v22 = [(OSIMediaPlaybackMonitor *)self->_mediaPlaybackMonitor hasPlaybackStateChangeRecently:self->_playbackLookbackSeconds];
  self->_hasRecentPlaybackChange = v22;
  if (v22)
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_playbackLookbackSeconds / 60.0;
      v37 = 134217984;
      *v38 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Restricting entry because of recent playback state change in the last %.1f minutes", &v37, 0xCu);
    }

    v25 = 0;
    goto LABEL_25;
  }

  v29 = [(OSISleepScheduleMonitor *)self->_sleepScheduleMonitor date:v7 inSleepWindowWithSecondsBeforeStart:self->_bedtimeOffset secondsBeforeEnd:self->_wakeOffset];
  v25 = 1;
LABEL_26:
  self->_inSleepWindow = v29;
  v30 = +[_CDClientContext userContext];
  self->_pluggedIn = [OSIntelligenceUtilities isPluggedInWithContext:v30];

  if (self->_useSleep && !self->_inSleepWindow && (([typeCopy isEqualToString:@"ruleBased"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"backup")))
  {
    v31 = self->_log;
    v25 = 0;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Restricting entry because not in scheduled sleep window", &v37, 2u);
      v25 = 0;
    }
  }

  self->_areSleepHeuristicsMet = v25;
  v32 = self->_log;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v32;
    v34 = [(_OSIInactivityEntrySignals *)self description];
    v37 = 138412290;
    *v38 = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@", &v37, 0xCu);
  }

  areSleepHeuristicsMet = self->_areSleepHeuristicsMet;

  return areSleepHeuristicsMet;
}

- (BOOL)checkInactivitySignalsWithTimeSinceInactive:(double)inactive
{
  [(OSIMotionMonitor *)self->_motionMonitor percentStationaryOverDuration:self->_stationaryLookbackSeconds];
  self->_pctStationary = v5;
  self->_inCar = [(OSIMotionMonitor *)self->_motionMonitor currentlyInCar];
  self->_hasRecentPlaybackChange = [(OSIMediaPlaybackMonitor *)self->_mediaPlaybackMonitor hasPlaybackStateChangeRecently:self->_playbackLookbackSeconds];
  [(_OSIInactivityEntrySignals *)self dynamicMinPctStationaryThresholdSinceWait:inactive];
  v7 = v6;
  if (self->_pctStationary < v6 || self->_inCar)
  {
    log = self->_log;
    v9 = 0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      pctStationary = self->_pctStationary;
      inCar = self->_inCar;
      v18 = 134218496;
      v19 = pctStationary;
      v20 = 2048;
      *v21 = v7;
      *&v21[8] = 1024;
      v22 = inCar;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Restricting inactivity entry because stationary for only %.2f (< %.2f) or Auto=%u", &v18, 0x1Cu);
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  if (self->_hasRecentPlaybackChange)
  {
    v12 = self->_log;
    v9 = 0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_playbackLookbackSeconds / 60.0;
      v18 = 134217984;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Restricting inactivity entry because of recent playback state change in the last %.1f minutes", &v18, 0xCu);
      v9 = 0;
    }
  }

  self->_areInactiveHeuristicsMet = v9;
  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->_pctStationary;
    hasRecentPlaybackChange = self->_hasRecentPlaybackChange;
    v18 = 134218496;
    v19 = v15;
    v20 = 1024;
    *v21 = hasRecentPlaybackChange;
    *&v21[4] = 1024;
    *&v21[6] = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Stationary = %.2f. Recent Playback Change = %u. | Heuristics Met = %u", &v18, 0x18u);
  }

  return self->_areInactiveHeuristicsMet;
}

- (int)dynamicMaxDarkLuxThresholdSinceWait:(double)wait
{
  v3 = self->_requeryDelta < wait || wait < 0.0;
  v4 = 36;
  if (v3)
  {
    v4 = 28;
  }

  return *(&self->super.isa + v4);
}

- (double)dynamicMinPctStationaryThresholdSinceWait:(double)wait
{
  if (wait >= 0.0)
  {
    if (wait >= 15.0)
    {
      v3 = 80;
      if (self->_requeryDelta > wait)
      {
        v3 = 104;
      }
    }

    else
    {
      v3 = 96;
    }
  }

  else
  {
    v3 = 80;
  }

  return *(&self->super.isa + v3);
}

@end