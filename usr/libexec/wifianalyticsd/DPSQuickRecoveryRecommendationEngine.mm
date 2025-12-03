@interface DPSQuickRecoveryRecommendationEngine
- (BOOL)checkAWDLActivity:(id)activity symptomsDnsStats:(id)stats;
- (BOOL)checkDpsStatus:(id)status currentSample:(id)sample qDpsStat:(id)stat;
- (BOOL)checkForPriorityNetwork;
- (BOOL)checkIfDPSResetRecoveryAllowed:(int64_t)allowed;
- (BOOL)checkParameterThresholds:(id)thresholds currentSample:(id)sample qDpsStat:(id)stat chipNumber:(id)number dpsSnapshot:(id)snapshot originalCCA:(unsigned int)a aggregateFailureSnaphot:(id)snaphot driverType:(int64_t)self0 nanEnabled:(BOOL)self1;
- (BOOL)isForegroundTrafficPresent;
- (BOOL)isGoodWiFiCondition:(id)condition;
- (BOOL)isHighAWDLActivity:(id)activity;
- (BOOL)isNANActivitySuspected:(id)suspected nanEnabled:(BOOL)enabled driverType:(int64_t)type;
- (BOOL)isPeerDiagnosticsTriggerAllowed:(unint64_t)allowed;
- (BOOL)isPriorityNetwork;
- (BOOL)isResetAllowedForKey:(id)key forPrefSelector:(SEL)selector;
- (BOOL)isResetAllowedForQuickDPS;
- (BOOL)isResetAllowedForSymptomsDPS;
- (BOOL)isScoreBelowThreshold:(id)threshold;
- (BOOL)isTriggerDisconnect:(id)disconnect currentSample:(id)sample aggregateFailureSnaphot:(id)snaphot driverType:(int64_t)type;
- (BOOL)tdSpecficFailures:(id)failures driverType:(int64_t)type rssiBin:(unsigned int)bin;
- (DPSQuickRecoveryRecommendationEngine)init;
- (id)computeFeatures:(id)features currentSample:(id)sample acList:(id)list;
- (id)updateDpsStats:(id)stats;
- (unint64_t)recommendReset:(id)reset currentSample:(id)sample acList:(id)list qDpsStat:(id)stat chipNumber:(id)number dpsSnapshot:(id)snapshot originalCCA:(unsigned int)a aggregateFailureSnaphot:(id)self0 driverType:(int64_t)self1 nanEnabled:(BOOL)self2;
- (unint64_t)recommendSymptomsDpsRecovery:(id)recovery symptomsDnsStats:(id)stats awdlState:(BOOL)state currentSymptomsCondition:(BOOL)condition isLANPingSuccessful:(BOOL)successful appUsage:(BOOL)usage averageCCA:(unsigned int)a driverType:(int64_t)self0;
- (unsigned)computeBin:(id)bin previousSample:(id)sample currentSample:(id)currentSample;
- (unsigned)totalFailureCount:(id)count;
- (void)addNumRecommendedScreenOffQuickRecoveryWD;
- (void)addNumRecommendedScreenOnQuickRecoveryWD;
- (void)addNumSuppressedScreenOffQuickRecoveryWD;
- (void)addNumSuppressedScreenOnQuickRecoveryWD;
- (void)updateFromPersistedBudget:(id)budget;
- (void)updateFromPersistedStats:(id)stats;
- (void)updateScreenState;
- (void)updateSymptomsDPSRecoveryWDStatsForKey:(id)key;
- (void)updateTimeSincePreviousTriggerForQuickDps:(id)dps;
- (void)updateTimeSincePreviousTriggerForStudy:(id)study msgKey:(id)key dictKey:(id)dictKey;
@end

@implementation DPSQuickRecoveryRecommendationEngine

- (DPSQuickRecoveryRecommendationEngine)init
{
  v13.receiver = self;
  v13.super_class = DPSQuickRecoveryRecommendationEngine;
  v2 = [(DPSQuickRecoveryRecommendationEngine *)&v13 init];
  if (!v2)
  {
    v7 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446466;
    v15 = "[DPSQuickRecoveryRecommendationEngine init]";
    v16 = 1024;
    v17 = 84;
    v8 = "%{public}s::%d:Error in super init failed";
LABEL_9:
    v9 = v7;
    v10 = 18;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    goto LABEL_13;
  }

  v3 = +[RecommendationPreferences sharedObject];
  preferences = v2->_preferences;
  v2->_preferences = v3;

  if (!v2->_preferences)
  {
    v7 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446466;
    v15 = "[DPSQuickRecoveryRecommendationEngine init]";
    v16 = 1024;
    v17 = 87;
    v8 = "%{public}s::%d:Error RecommendationPreferences init";
    goto LABEL_9;
  }

  v5 = notify_register_check("com.apple.springboard.hasBlankedScreen", &v2->screenStateToken);
  if (!v5)
  {
    return v2;
  }

  v11 = v5;
  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v15 = "[DPSQuickRecoveryRecommendationEngine init]";
    v16 = 1024;
    v17 = 90;
    v18 = 1024;
    v19 = v11;
    v8 = "%{public}s::%d:notify_register_check() for screenstate failed with %u";
    v9 = v7;
    v10 = 24;
    goto LABEL_12;
  }

LABEL_13:

  v12 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v15 = "[DPSQuickRecoveryRecommendationEngine init]";
    v16 = 1024;
    v17 = 98;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:FAILED to initialize!", buf, 0x12u);
  }

  return 0;
}

- (void)updateFromPersistedStats:(id)stats
{
  statsCopy = stats;
  v5 = statsCopy;
  if (self->_dpsStats)
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446466;
      v10 = "[DPSQuickRecoveryRecommendationEngine updateFromPersistedStats:]";
      v11 = 1024;
      v12 = 106;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:already have an active _dpsStats", &v9, 0x12u);
    }
  }

  else
  {
    if (statsCopy && [statsCopy count])
    {
      v6 = [v5 mutableCopy];
    }

    else
    {
      v6 = +[NSMutableDictionary dictionary];
    }

    dpsStats = self->_dpsStats;
    self->_dpsStats = v6;
  }
}

- (void)updateFromPersistedBudget:(id)budget
{
  budgetCopy = budget;
  v5 = budgetCopy;
  if (self->_dpsQuickRecoveryWDBudgetDict)
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446466;
      v10 = "[DPSQuickRecoveryRecommendationEngine updateFromPersistedBudget:]";
      v11 = 1024;
      v12 = 119;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:already have an active _dpsQuickRecoveryWDBudgetDict", &v9, 0x12u);
    }
  }

  else
  {
    if (budgetCopy && [budgetCopy count])
    {
      v6 = [v5 mutableCopy];
    }

    else
    {
      v6 = +[NSMutableDictionary dictionary];
    }

    dpsQuickRecoveryWDBudgetDict = self->_dpsQuickRecoveryWDBudgetDict;
    self->_dpsQuickRecoveryWDBudgetDict = v6;
  }
}

- (id)updateDpsStats:(id)stats
{
  statsCopy = stats;
  v5 = +[NSMutableDictionary dictionary];
  [v5 addEntriesFromDictionary:statsCopy];

  [v5 addEntriesFromDictionary:self->_dpsQuickRecoveryWDBudgetDict];
  [v5 addEntriesFromDictionary:self->_dpsStats];

  return v5;
}

- (void)addNumRecommendedScreenOnQuickRecoveryWD
{
  v3 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_numRecommendedScreenOnQuickRecoveryWD"];
  if (v3)
  {
    v4 = v3;
    v5 = [NSNumber numberWithInt:1];
  }

  else
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [0 intValue] + 1);
  }

  [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict setObject:v5 forKey:@"dps_numRecommendedScreenOnQuickRecoveryWD"];
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_numRecommendedScreenOnQuickRecoveryWD"];
    v8 = 136446722;
    v9 = "[DPSQuickRecoveryRecommendationEngine addNumRecommendedScreenOnQuickRecoveryWD]";
    v10 = 1024;
    v11 = 148;
    v12 = 1024;
    v13 = [v7 intValue] - 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:number screen-on fast resets triggered previously: %d", &v8, 0x18u);
  }
}

- (void)addNumRecommendedScreenOffQuickRecoveryWD
{
  v3 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_numRecommendedScreenOffQuickRecoveryWD"];
  if (v3)
  {
    v4 = v3;
    v5 = [NSNumber numberWithInt:1];
  }

  else
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [0 intValue] + 1);
  }

  [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict setObject:v5 forKey:@"dps_numRecommendedScreenOffQuickRecoveryWD"];
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_numRecommendedScreenOffQuickRecoveryWD"];
    v8 = 136446722;
    v9 = "[DPSQuickRecoveryRecommendationEngine addNumRecommendedScreenOffQuickRecoveryWD]";
    v10 = 1024;
    v11 = 160;
    v12 = 1024;
    v13 = [v7 intValue] - 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:number screen-off fast resets triggered previously: %d", &v8, 0x18u);
  }
}

- (void)addNumSuppressedScreenOnQuickRecoveryWD
{
  v3 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_numSuppressedScreenOnQuickRecoveryWD"];
  if (v3)
  {
    v4 = v3;
    v5 = [NSNumber numberWithInt:1];
  }

  else
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [0 intValue] + 1);
  }

  [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict setObject:v5 forKey:@"dps_numSuppressedScreenOnQuickRecoveryWD"];
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_numSuppressedScreenOnQuickRecoveryWD"];
    v8 = 136446722;
    v9 = "[DPSQuickRecoveryRecommendationEngine addNumSuppressedScreenOnQuickRecoveryWD]";
    v10 = 1024;
    v11 = 172;
    v12 = 1024;
    v13 = [v7 intValue] - 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:number screen-on fast resets suppressed previously: %d", &v8, 0x18u);
  }
}

- (void)addNumSuppressedScreenOffQuickRecoveryWD
{
  v3 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_numSuppressedScreenOffQuickRecoveryWD"];
  if (v3)
  {
    v4 = v3;
    v5 = [NSNumber numberWithInt:1];
  }

  else
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [0 intValue] + 1);
  }

  [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict setObject:v5 forKey:@"dps_numSuppressedScreenOffQuickRecoveryWD"];
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_numSuppressedScreenOffQuickRecoveryWD"];
    v8 = 136446722;
    v9 = "[DPSQuickRecoveryRecommendationEngine addNumSuppressedScreenOffQuickRecoveryWD]";
    v10 = 1024;
    v11 = 184;
    v12 = 1024;
    v13 = [v7 intValue] - 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:number screen-off fast resets suppressed previously: %d", &v8, 0x18u);
  }
}

- (BOOL)isForegroundTrafficPresent
{
  v2 = sub_100046EEC(kCFAllocatorDefault);
  if (!v2)
  {
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[DPSQuickRecoveryRecommendationEngine isForegroundTrafficPresent]";
      *&buf[12] = 1024;
      *&buf[14] = 195;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error managerClient init failed", buf, 0x12u);
    }

    goto LABEL_14;
  }

  Current = CFRunLoopGetCurrent();
  sub_100047004(v2, Current);
  v4 = sub_100047128(v2);
  if (!v4)
  {
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[DPSQuickRecoveryRecommendationEngine isForegroundTrafficPresent]";
      *&buf[12] = 1024;
      *&buf[14] = 200;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:No WiFi Devices present! Defaulting to screen state for decision!", buf, 0x12u);
    }

LABEL_14:

    v5 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  if (![v4 count])
  {
LABEL_18:
    v10 = 1;
    goto LABEL_19;
  }

  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[DPSQuickRecoveryRecommendationEngine isForegroundTrafficPresent]";
      *&buf[12] = 1024;
      *&buf[14] = 204;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:DeviceClient not present! Defaulting to screen state for decision!", buf, 0x12u);
    }

    goto LABEL_18;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = off_10010DE58;
  v18 = off_10010DE58;
  if (!off_10010DE58)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10004DFB4;
    v20 = &unk_1000EDA60;
    v21 = &v15;
    v8 = sub_10004DD90();
    v9 = dlsym(v8, "WiFiDeviceClientGetAppState");
    *(v21[1] + 24) = v9;
    off_10010DE58 = *(v21[1] + 24);
    v7 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v7)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v10 = v7(v6) != 0;
LABEL_19:
  v13 = CFRunLoopGetCurrent();
  sub_10004723C(v2, v13);
  if (v2)
  {
    CFRelease(v2);
  }

  return v10;
}

- (void)updateScreenState
{
  state64 = 0;
  notify_get_state(self->screenStateToken, &state64);
  v3 = state64;
  isForegroundTrafficPresent = [(DPSQuickRecoveryRecommendationEngine *)self isForegroundTrafficPresent];
  if (v3 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = isForegroundTrafficPresent;
  }

  self->screenON = v5;
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NOT DETECTED";
    screenON = self->screenON;
    v11 = "[DPSQuickRecoveryRecommendationEngine updateScreenState]";
    *buf = 136446722;
    if (screenON)
    {
      v7 = "DETECTED";
    }

    v12 = 1024;
    v13 = 225;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS Fast Reset Recommendation Engine: (screenON & foreGrnd traffic) is %s", buf, 0x1Cu);
  }
}

- (void)updateSymptomsDPSRecoveryWDStatsForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:keyCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [NSNumber numberWithInt:1];
  }

  else
  {
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [0 intValue] + 1);
  }

  [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict setObject:v7 forKey:keyCopy];
  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    intValue = [v7 intValue];
    dpsQuickRecoveryWDBudgetDict = self->_dpsQuickRecoveryWDBudgetDict;
    v11 = 136447234;
    v12 = "[DPSQuickRecoveryRecommendationEngine updateSymptomsDPSRecoveryWDStatsForKey:]";
    v13 = 1024;
    v14 = 237;
    v15 = 2112;
    v16 = keyCopy;
    v17 = 1024;
    v18 = intValue;
    v19 = 2112;
    v20 = dpsQuickRecoveryWDBudgetDict;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added key: %@ value:%d dict:%@", &v11, 0x2Cu);
  }
}

- (BOOL)isPriorityNetwork
{
  v2 = sub_100046EEC(kCFAllocatorDefault);
  if (!v2)
  {
    v5 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136446466;
    *&buf[4] = "[DPSQuickRecoveryRecommendationEngine isPriorityNetwork]";
    *&buf[12] = 1024;
    *&buf[14] = 249;
    v17 = "%{public}s::%d:Error managerClient init failed";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v17, buf, 0x12u);
    goto LABEL_26;
  }

  Current = CFRunLoopGetCurrent();
  sub_100047004(v2, Current);
  v4 = sub_100047128(v2);
  if (!v4)
  {
    v5 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136446466;
    *&buf[4] = "[DPSQuickRecoveryRecommendationEngine isPriorityNetwork]";
    *&buf[12] = 1024;
    *&buf[14] = 254;
    v17 = "%{public}s::%d:No WiFi Devices present! Defaulting to screen state for decision!";
    goto LABEL_21;
  }

  v5 = v4;
  if (![v4 count])
  {
    v10 = 0;
    goto LABEL_10;
  }

  v6 = [v5 objectAtIndexedSubscript:0];

  if (v6)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v7 = off_10010DE68;
    v22 = off_10010DE68;
    if (!off_10010DE68)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10004E054;
      v24 = &unk_1000EDA60;
      v25 = &v19;
      v8 = sub_10004DD90();
      v9 = dlsym(v8, "WiFiDeviceClientCopyCurrentNetwork");
      *(v25[1] + 24) = v9;
      off_10010DE68 = *(v25[1] + 24);
      v7 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v7)
    {
      goto LABEL_27;
    }

    v10 = v7(v6);
LABEL_10:
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v11 = off_10010DE70;
    v22 = off_10010DE70;
    if (!off_10010DE70)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10004E0A4;
      v24 = &unk_1000EDA60;
      v25 = &v19;
      v12 = sub_10004DD90();
      v13 = dlsym(v12, "WiFiNetworkIsPriorityNetworkWrapper");
      *(v25[1] + 24) = v13;
      off_10010DE70 = *(v25[1] + 24);
      v11 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (v11)
    {
      v14 = v11(v10) != 0;
      goto LABEL_14;
    }

LABEL_27:
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v18 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "[DPSQuickRecoveryRecommendationEngine isPriorityNetwork]";
    *&buf[12] = 1024;
    *&buf[14] = 258;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:DeviceClient not present! Defaulting to screen state for decision!", buf, 0x12u);
  }

LABEL_26:
  v14 = 0;
LABEL_14:

  v15 = CFRunLoopGetCurrent();
  sub_10004723C(v2, v15);
  if (v2)
  {
    CFRelease(v2);
  }

  return v14;
}

- (BOOL)checkForPriorityNetwork
{
  if ([(RecommendationPreferences *)self->_preferences disable_slow_wifi_dps_is_priority_network])
  {
    isPriorityNetwork = 1;
  }

  else
  {
    isPriorityNetwork = [(DPSQuickRecoveryRecommendationEngine *)self isPriorityNetwork];
  }

  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    disable_slow_wifi_dps_is_priority_network = [(RecommendationPreferences *)self->_preferences disable_slow_wifi_dps_is_priority_network];
    v6 = "NO";
    v10 = "[DPSQuickRecoveryRecommendationEngine checkForPriorityNetwork]";
    v11 = 1024;
    v12 = 283;
    if (disable_slow_wifi_dps_is_priority_network)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v9 = 136446978;
    v14 = v7;
    v13 = 2080;
    if (isPriorityNetwork)
    {
      v6 = "YES";
    }

    v15 = 2080;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Priority Network Check Disabled: %s IsPriorityNetwork: %s", &v9, 0x26u);
  }

  return isPriorityNetwork;
}

- (BOOL)isResetAllowedForSymptomsDPS
{
  if (self->screenON)
  {
    v3 = [(DPSQuickRecoveryRecommendationEngine *)self isResetAllowedForKey:@"symptomsDps_lastScreenOnRecoveryWD" forPrefSelector:"minutes_between_symptoms_dps_wd_screen_on"];
    v4 = v3;
    v5 = @"symptomsDps_numSuppressedScreenOnRecoveryWD";
    v6 = @"symptomsDps_numRecommendedScreenOnRecoveryWD";
  }

  else
  {
    v3 = [(DPSQuickRecoveryRecommendationEngine *)self isResetAllowedForKey:@"symptomsDps_lastScreenOffRecoveryWD" forPrefSelector:"minutes_between_symptoms_dps_wd_screen_off"];
    v4 = v3;
    v5 = @"symptomsDps_numSuppressedScreenOffRecoveryWD";
    v6 = @"symptomsDps_numRecommendedScreenOffRecoveryWD";
  }

  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  [(DPSQuickRecoveryRecommendationEngine *)self updateSymptomsDPSRecoveryWDStatsForKey:v7];
  return v4;
}

- (BOOL)isResetAllowedForQuickDPS
{
  if (!self->screenON)
  {
    if ([(DPSQuickRecoveryRecommendationEngine *)self isResetAllowedForKey:@"dps_lastScreenOffQuickRecoveryWD" forPrefSelector:"minutes_between_fast_dps_wd_screen_off"])
    {
      goto LABEL_6;
    }

    if (![(DPSQuickRecoveryRecommendationEngine *)self isResetAllowedForKey:@"dps_lastScreenOnQuickRecoveryWD" forPrefSelector:"minutes_between_fast_dps_wd_screen_on"])
    {
      [(DPSQuickRecoveryRecommendationEngine *)self addNumSuppressedScreenOffQuickRecoveryWD];
      return 0;
    }

LABEL_8:
    [(DPSQuickRecoveryRecommendationEngine *)self addNumRecommendedScreenOnQuickRecoveryWD];
    return 1;
  }

  if ([(DPSQuickRecoveryRecommendationEngine *)self isResetAllowedForKey:@"dps_lastScreenOnQuickRecoveryWD" forPrefSelector:"minutes_between_fast_dps_wd_screen_on"])
  {
    goto LABEL_8;
  }

  if ([(DPSQuickRecoveryRecommendationEngine *)self isResetAllowedForKey:@"dps_lastScreenOffQuickRecoveryWD" forPrefSelector:"minutes_between_fast_dps_wd_screen_off"])
  {
LABEL_6:
    [(DPSQuickRecoveryRecommendationEngine *)self addNumRecommendedScreenOffQuickRecoveryWD];
    return 1;
  }

  [(DPSQuickRecoveryRecommendationEngine *)self addNumSuppressedScreenOnQuickRecoveryWD];
  return 0;
}

- (BOOL)isResetAllowedForKey:(id)key forPrefSelector:(SEL)selector
{
  keyCopy = key;
  v7 = +[NSDate date];
  v8 = [(RecommendationPreferences *)self->_preferences methodForSelector:selector];
  v9 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:keyCopy];
  if (v9 && ([v7 timeIntervalSinceDate:v9], (v10 / 60.0) < v8(self->_preferences, selector)))
  {
    v11 = 0;
  }

  else
  {
    [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict setObject:v7 forKey:keyCopy];
    v11 = 1;
  }

  v12 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "[DPSQuickRecoveryRecommendationEngine isResetAllowedForKey:forPrefSelector:]";
    v13 = "NO";
    v17 = 1024;
    v18 = 357;
    v15 = 136447490;
    if (v11)
    {
      v13 = "YES";
    }

    v19 = 2112;
    v20 = keyCopy;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v7;
    v25 = 2080;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:key:%@ previousWD_TS:%@ currentWD_TS:%@ recommendation:%s", &v15, 0x3Au);
  }

  return v11;
}

- (id)computeFeatures:(id)features currentSample:(id)sample acList:(id)list
{
  featuresCopy = features;
  sampleCopy = sample;
  listCopy = list;
  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 362;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Computing features for ML model...", buf, 0x12u);
  }

  v370 = 0u;
  v371 = 0u;
  v368 = 0u;
  v369 = 0u;
  v9 = listCopy;
  v10 = [v9 countByEnumeratingWithState:&v368 objects:v384 count:16];
  if (v10)
  {
    v11 = *v369;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v369 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v368 + 1) + 8 * i);
        v14 = [v13 fieldForKey:@"DPSN_symptom"];
        int32Value = [v14 int32Value];

        if (!int32Value)
        {
          v19 = [v13 fieldForKey:@"DPSN_problemAC"];
          uint32Value = [v19 uint32Value];

          v17 = (uint32Value >> 1) & 1;
          v18 = uint32Value & 1;
          v16 = (uint32Value >> 2) & 1;
          v307 = uint32Value;
          LODWORD(v10) = (uint32Value >> 3) & 1;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v368 objects:v384 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v307 = 0;
LABEL_13:

  v21 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447746;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 385;
    v378 = 1024;
    *v379 = v307;
    *&v379[4] = 1024;
    *&v379[6] = v18;
    LOWORD(v380) = 1024;
    *(&v380 + 2) = v17;
    HIWORD(v380) = 1024;
    v381 = v16;
    v382 = 1024;
    v383 = v10;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:problemAC: %u dpsBE:%d dpsBK:%d dpsVO:%d dpsVI:%d", buf, 0x30u);
  }

  v22 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue = [v22 subMessageValue];
  v24 = [subMessageValue fieldForKey:@"NWAPS_ccas"];
  repeatableValues = [v24 repeatableValues];
  v26 = [repeatableValues count];

  v27 = 0.0;
  v306 = v9;
  if (v26)
  {
    v318 = v26 - 1;
    if (v26 != 1)
    {
      v316 = v26;
      v28 = 0;
      v29 = 0;
      while (1)
      {
        v355 = v29;
        v348 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
        subMessageValue2 = [v348 subMessageValue];
        v330 = [subMessageValue2 fieldForKey:@"NWAPS_ccas"];
        repeatableValues2 = [v330 repeatableValues];
        v31 = [repeatableValues2 objectAtIndex:v28];
        v32 = [v31 fieldForKey:@"NWASB_residentTime"];
        objc = [v32 uint64Value];
        v33 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
        subMessageValue3 = [v33 subMessageValue];
        v35 = [subMessageValue3 fieldForKey:@"NWAPS_ccas"];
        repeatableValues3 = [v35 repeatableValues];
        v37 = [repeatableValues3 objectAtIndex:v28];
        v38 = [v37 fieldForKey:@"NWASB_residentTime"];
        uint64Value = [v38 uint64Value];

        if (objc != uint64Value)
        {
          break;
        }

        v28 = v355 + 1;
        v29 = v355 + 1;
        if (v318 <= v28)
        {
          goto LABEL_22;
        }
      }

      v27 = v355;
LABEL_22:
      v26 = v316;
    }
  }

  v40 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 401;
    v378 = 2048;
    *v379 = v26;
    *&v379[8] = 2048;
    v380 = v27;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:ccaBinCount:%llu ccaBin:%.2f", buf, 0x26u);
  }

  v41 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue4 = [v41 subMessageValue];
  v43 = [subMessageValue4 fieldForKey:@"NWAPS_rssis"];
  repeatableValues4 = [v43 repeatableValues];
  v45 = [repeatableValues4 count];

  v46 = 0.0;
  v319 = v45;
  if (v45 >= 2)
  {
    v47 = 0;
    v48 = 1;
    while (1)
    {
      v356 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
      subMessageValue5 = [v356 subMessageValue];
      v339 = [subMessageValue5 fieldForKey:@"NWAPS_rssis"];
      repeatableValues5 = [v339 repeatableValues];
      v49 = [repeatableValues5 objectAtIndex:v48];
      v50 = [v49 fieldForKey:@"NWASB_residentTime"];
      objd = [v50 uint64Value];
      v51 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
      subMessageValue6 = [v51 subMessageValue];
      v53 = [subMessageValue6 fieldForKey:@"NWAPS_rssis"];
      repeatableValues6 = [v53 repeatableValues];
      v55 = [repeatableValues6 objectAtIndex:v48];
      v56 = [v55 fieldForKey:@"NWASB_residentTime"];
      uint64Value2 = [v56 uint64Value];

      if (objd != uint64Value2)
      {
        break;
      }

      v48 = v47 + 2;
      ++v47;
      if (v319 <= v48)
      {
        goto LABEL_31;
      }
    }

    v46 = v47;
  }

LABEL_31:
  v58 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 415;
    v378 = 2048;
    *v379 = v319;
    *&v379[8] = 2048;
    v380 = v46;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:rssiBinCount:%llu rssiBin:%.2f", buf, 0x26u);
  }

  v59 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue7 = [v59 subMessageValue];
  v61 = [subMessageValue7 fieldForKey:@"NWAPS_snrs"];
  repeatableValues7 = [v61 repeatableValues];
  v63 = [repeatableValues7 count];

  v64 = 0.0;
  v320 = v63;
  if (v63 >= 2)
  {
    v65 = 0;
    v66 = 1;
    while (1)
    {
      v357 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
      subMessageValue8 = [v357 subMessageValue];
      v340 = [subMessageValue8 fieldForKey:@"NWAPS_snrs"];
      repeatableValues8 = [v340 repeatableValues];
      v67 = [repeatableValues8 objectAtIndex:v66];
      v68 = [v67 fieldForKey:@"NWASB_residentTime"];
      obje = [v68 uint64Value];
      v69 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
      subMessageValue9 = [v69 subMessageValue];
      v71 = [subMessageValue9 fieldForKey:@"NWAPS_snrs"];
      repeatableValues9 = [v71 repeatableValues];
      v73 = [repeatableValues9 objectAtIndex:v66];
      v74 = [v73 fieldForKey:@"NWASB_residentTime"];
      uint64Value3 = [v74 uint64Value];

      if (obje != uint64Value3)
      {
        break;
      }

      v66 = v65 + 2;
      ++v65;
      if (v320 <= v66)
      {
        goto LABEL_39;
      }
    }

    v64 = v65;
  }

LABEL_39:
  v76 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 429;
    v378 = 2048;
    *v379 = v320;
    *&v379[8] = 2048;
    v380 = v64;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:snrBinCount:%llu snrBin:%.2f", buf, 0x26u);
  }

  v366 = 0u;
  v367 = 0u;
  v364 = 0u;
  v365 = 0u;
  v77 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue10 = [v77 subMessageValue];
  v79 = [subMessageValue10 fieldForKey:@"NWAPS_acCompletions"];
  repeatableValues10 = [v79 repeatableValues];

  obj = repeatableValues10;
  v341 = [repeatableValues10 countByEnumeratingWithState:&v364 objects:v373 count:16];
  if (v341)
  {
    v321 = 0;
    v317 = 0;
    v314 = 0;
    v315 = 0;
    v312 = 0;
    v313 = 0;
    v310 = 0;
    v311 = 0;
    v309 = 0;
    v333 = *v365;
    do
    {
      for (j = 0; j != v341; j = j + 1)
      {
        if (*v365 != v333)
        {
          objc_enumerationMutation(obj);
        }

        v82 = *(*(&v364 + 1) + 8 * j);
        v360 = 0u;
        v361 = 0u;
        v362 = 0u;
        v363 = 0u;
        v83 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
        subMessageValue11 = [v83 subMessageValue];
        v85 = [subMessageValue11 fieldForKey:@"NWAPS_acCompletions"];
        repeatableValues11 = [v85 repeatableValues];

        v87 = [repeatableValues11 countByEnumeratingWithState:&v360 objects:v372 count:16];
        if (v87)
        {
          v88 = v87;
          v358 = j;
          v89 = *v361;
          while (2)
          {
            for (k = 0; k != v88; k = k + 1)
            {
              if (*v361 != v89)
              {
                objc_enumerationMutation(repeatableValues11);
              }

              v91 = *(*(&v360 + 1) + 8 * k);
              v92 = [v82 fieldForKey:@"NWAPACTC_ac"];
              int32Value2 = [v92 int32Value];

              v94 = [v91 fieldForKey:@"NWAPACTC_ac"];
              int32Value3 = [v94 int32Value];

              if (int32Value3 == int32Value2)
              {
                v96 = [v91 fieldForKey:@"NWAPACTC_expiredComp"];
                uint32Value2 = [v96 uint32Value];
                v98 = [v82 fieldForKey:@"NWAPACTC_expiredComp"];
                v351 = uint32Value2 - [v98 uint32Value];

                v99 = [v91 fieldForKey:@"NWAPACTC_failedComp"];
                uint32Value3 = [v99 uint32Value];
                v101 = [v82 fieldForKey:@"NWAPACTC_failedComp"];
                v102 = uint32Value3 - [v101 uint32Value];

                v103 = [v91 fieldForKey:@"NWAPACTC_noAckComp"];
                uint32Value4 = [v103 uint32Value];
                v105 = [v82 fieldForKey:@"NWAPACTC_noAckComp"];
                v106 = uint32Value4 - [v105 uint32Value];

                v107 = [v91 fieldForKey:@"NWAPACTC_otherErrComp"];
                uint32Value5 = [v107 uint32Value];
                v109 = [v82 fieldForKey:@"NWAPACTC_otherErrComp"];
                v110 = uint32Value5 - [v109 uint32Value];

                if (int32Value2 > 3)
                {
                  if (int32Value2 == 4)
                  {
                    v321 = v110;
                    HIDWORD(v315) = v106;
                    HIDWORD(v313) = v102;
                    HIDWORD(v311) = v351;
                  }

                  else if (int32Value2 == 5)
                  {
                    v317 = v110;
                    HIDWORD(v314) = v106;
                    HIDWORD(v312) = v102;
                    HIDWORD(v310) = v351;
                  }
                }

                else if (int32Value2 == 2)
                {
                  LODWORD(v315) = v110;
                  LODWORD(v313) = v106;
                  LODWORD(v311) = v102;
                  HIDWORD(v309) = v351;
                }

                else if (int32Value2 == 3)
                {
                  LODWORD(v314) = v110;
                  LODWORD(v312) = v106;
                  LODWORD(v310) = v102;
                  LODWORD(v309) = v351;
                }

                goto LABEL_64;
              }
            }

            v88 = [repeatableValues11 countByEnumeratingWithState:&v360 objects:v372 count:16];
            if (v88)
            {
              continue;
            }

            break;
          }

LABEL_64:
          j = v358;
        }
      }

      v341 = [obj countByEnumeratingWithState:&v364 objects:v373 count:16];
    }

    while (v341);
  }

  else
  {
    v321 = 0;
    v317 = 0;
    v314 = 0;
    v315 = 0;
    v312 = 0;
    v313 = 0;
    v310 = 0;
    v311 = 0;
    v309 = 0;
  }

  v111 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 489;
    v378 = 1024;
    *v379 = v309;
    *&v379[4] = 1024;
    *&v379[6] = HIDWORD(v309);
    LOWORD(v380) = 1024;
    *(&v380 + 2) = HIDWORD(v310);
    HIWORD(v380) = 1024;
    v381 = HIDWORD(v311);
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:txBEExpComp: %u txBKExpComp: %u txVIExpComp: %u txVOExpComp: %u", buf, 0x2Au);
  }

  v112 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 491;
    v378 = 1024;
    *v379 = v310;
    *&v379[4] = 1024;
    *&v379[6] = v311;
    LOWORD(v380) = 1024;
    *(&v380 + 2) = HIDWORD(v312);
    HIWORD(v380) = 1024;
    v381 = HIDWORD(v313);
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:txBEFailComp: %u txBKFailComp: %u txVIFailComp: %u txVOFailComp: %u", buf, 0x2Au);
  }

  v113 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 493;
    v378 = 1024;
    *v379 = v312;
    *&v379[4] = 1024;
    *&v379[6] = v313;
    LOWORD(v380) = 1024;
    *(&v380 + 2) = HIDWORD(v314);
    HIWORD(v380) = 1024;
    v381 = HIDWORD(v315);
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:txBENoAckComp: %u txBKNoAckComp: %u txVINoAckComp: %u txVONoAckComp: %u", buf, 0x2Au);
  }

  v114 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 495;
    v378 = 1024;
    *v379 = v314;
    *&v379[4] = 1024;
    *&v379[6] = v315;
    LOWORD(v380) = 1024;
    *(&v380 + 2) = v317;
    HIWORD(v380) = 1024;
    v381 = v321;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:txBEOErrComp: %u txBKOErrComp: %u txVIOErrComp: %u txVOOErrComp: %u", buf, 0x2Au);
  }

  v352 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue12 = [v352 subMessageValue];
  v116 = [subMessageValue12 fieldForKey:@"NWAPS_completions"];
  subMessageValue13 = [v116 subMessageValue];
  v118 = [subMessageValue13 fieldForKey:@"NWATC_chipmodeerror"];
  uint32Value6 = [v118 uint32Value];
  v120 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue14 = [v120 subMessageValue];
  v122 = [subMessageValue14 fieldForKey:@"NWAPS_completions"];
  subMessageValue15 = [v122 subMessageValue];
  v124 = [subMessageValue15 fieldForKey:@"NWATC_chipmodeerror"];
  v359 = uint32Value6 - [v124 uint32Value];

  v334 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  objf = [v334 subMessageValue];
  v125 = [objf fieldForKey:@"NWAPS_completions"];
  subMessageValue16 = [v125 subMessageValue];
  v127 = [subMessageValue16 fieldForKey:@"NWATC_expired"];
  uint32Value7 = [v127 uint32Value];
  v128 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue17 = [v128 subMessageValue];
  v130 = [subMessageValue17 fieldForKey:@"NWAPS_completions"];
  subMessageValue18 = [v130 subMessageValue];
  v132 = [subMessageValue18 fieldForKey:@"NWATC_expired"];
  uint32Value8 = [v132 uint32Value];

  v303 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue19 = [v303 subMessageValue];
  v134 = [subMessageValue19 fieldForKey:@"NWAPS_completions"];
  subMessageValue20 = [v134 subMessageValue];
  v136 = [subMessageValue20 fieldForKey:@"NWATC_internalerror"];
  uint32Value9 = [v136 uint32Value];
  v137 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue21 = [v137 subMessageValue];
  v139 = [subMessageValue21 fieldForKey:@"NWAPS_completions"];
  subMessageValue22 = [v139 subMessageValue];
  v141 = [subMessageValue22 fieldForKey:@"NWATC_internalerror"];
  obja = [v141 uint32Value];

  v298 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue23 = [v298 subMessageValue];
  v143 = [subMessageValue23 fieldForKey:@"NWAPS_completions"];
  subMessageValue24 = [v143 subMessageValue];
  v145 = [subMessageValue24 fieldForKey:@"NWATC_ioerror"];
  uint32Value10 = [v145 uint32Value];
  v146 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue25 = [v146 subMessageValue];
  v148 = [subMessageValue25 fieldForKey:@"NWAPS_completions"];
  subMessageValue26 = [v148 subMessageValue];
  v150 = [subMessageValue26 fieldForKey:@"NWATC_ioerror"];
  uint32Value11 = [v150 uint32Value];

  v293 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue27 = [v293 subMessageValue];
  v152 = [subMessageValue27 fieldForKey:@"NWAPS_completions"];
  subMessageValue28 = [v152 subMessageValue];
  v154 = [subMessageValue28 fieldForKey:@"NWATC_noack"];
  uint32Value12 = [v154 uint32Value];
  v155 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue29 = [v155 subMessageValue];
  v157 = [subMessageValue29 fieldForKey:@"NWAPS_completions"];
  subMessageValue30 = [v157 subMessageValue];
  v159 = [subMessageValue30 fieldForKey:@"NWATC_noack"];
  uint32Value13 = [v159 uint32Value];

  v288 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue31 = [v288 subMessageValue];
  v161 = [subMessageValue31 fieldForKey:@"NWAPS_completions"];
  subMessageValue32 = [v161 subMessageValue];
  v163 = [subMessageValue32 fieldForKey:@"NWATC_nobuf"];
  uint32Value14 = [v163 uint32Value];
  v164 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue33 = [v164 subMessageValue];
  v166 = [subMessageValue33 fieldForKey:@"NWAPS_completions"];
  subMessageValue34 = [v166 subMessageValue];
  v168 = [subMessageValue34 fieldForKey:@"NWATC_nobuf"];
  uint32Value15 = [v168 uint32Value];

  v283 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue35 = [v283 subMessageValue];
  v169 = [subMessageValue35 fieldForKey:@"NWAPS_completions"];
  subMessageValue36 = [v169 subMessageValue];
  v171 = [subMessageValue36 fieldForKey:@"NWATC_noremotepeer"];
  uint32Value16 = [v171 uint32Value];
  v172 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue37 = [v172 subMessageValue];
  v174 = [subMessageValue37 fieldForKey:@"NWAPS_completions"];
  subMessageValue38 = [v174 subMessageValue];
  v176 = [subMessageValue38 fieldForKey:@"NWATC_noremotepeer"];
  uint32Value17 = [v176 uint32Value];

  v177 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue39 = [v177 subMessageValue];
  v179 = [subMessageValue39 fieldForKey:@"NWAPS_completions"];
  subMessageValue40 = [v179 subMessageValue];
  v181 = [subMessageValue40 fieldForKey:@"NWATC_noresources"];
  uint32Value18 = [v181 uint32Value];
  v182 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue41 = [v182 subMessageValue];
  v184 = [subMessageValue41 fieldForKey:@"NWAPS_completions"];
  subMessageValue42 = [v184 subMessageValue];
  v186 = [subMessageValue42 fieldForKey:@"NWATC_noresources"];
  uint32Value19 = [v186 uint32Value];

  v187 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue43 = [v187 subMessageValue];
  v189 = [subMessageValue43 fieldForKey:@"NWAPS_completions"];
  subMessageValue44 = [v189 subMessageValue];
  v191 = [subMessageValue44 fieldForKey:@"NWATC_txfailure"];
  uint32Value20 = [v191 uint32Value];
  v192 = [featuresCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue45 = [v192 subMessageValue];
  v194 = [subMessageValue45 fieldForKey:@"NWAPS_completions"];
  subMessageValue46 = [v194 subMessageValue];
  v196 = [subMessageValue46 fieldForKey:@"NWATC_txfailure"];
  uint32Value21 = [v196 uint32Value];

  v197 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 517;
    v378 = 1024;
    *v379 = v359;
    _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:chipModeError: %u", buf, 0x18u);
  }

  v198 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 518;
    v378 = 1024;
    *v379 = uint32Value7 - uint32Value8;
    _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:expired: %u", buf, 0x18u);
  }

  v199 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 519;
    v378 = 1024;
    *v379 = uint32Value9 - obja;
    _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:internalError: %u", buf, 0x18u);
  }

  v200 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 520;
    v378 = 1024;
    *v379 = uint32Value10 - uint32Value11;
    _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:ioError: %u", buf, 0x18u);
  }

  v201 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 521;
    v378 = 1024;
    *v379 = uint32Value12 - uint32Value13;
    _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:noAck: %u", buf, 0x18u);
  }

  v202 = uint32Value14 - uint32Value15;

  v203 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 522;
    v378 = 1024;
    *v379 = uint32Value14 - uint32Value15;
    _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:noBuf: %u", buf, 0x18u);
  }

  v204 = uint32Value16 - uint32Value17;

  v205 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 523;
    v378 = 1024;
    *v379 = uint32Value16 - uint32Value17;
    _os_log_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:noRemotePeer: %u", buf, 0x18u);
  }

  v206 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 524;
    v378 = 1024;
    *v379 = uint32Value18 - uint32Value19;
    _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:noResources: %u", buf, 0x18u);
  }

  v290 = uint32Value18 - uint32Value19;
  v292 = v204;
  v295 = v202;
  v297 = uint32Value12 - uint32Value13;
  v300 = uint32Value10 - uint32Value11;
  v302 = uint32Value9 - obja;
  v305 = uint32Value7 - uint32Value8;

  v207 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 525;
    v378 = 1024;
    *v379 = uint32Value20 - uint32Value21;
    _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:txFailure: %u", buf, 0x18u);
  }

  v287 = uint32Value20 - uint32Value21;

  v343 = [sampleCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue47 = [v343 subMessageValue];
  v209 = [subMessageValue47 fieldForKey:@"NWACS_scanActivity"];
  subMessageValue48 = [v209 subMessageValue];
  v211 = [subMessageValue48 fieldForKey:@"NWASA_roamDur"];
  uint32Value22 = [v211 uint32Value];
  v213 = [featuresCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue49 = [v213 subMessageValue];
  v215 = [subMessageValue49 fieldForKey:@"NWACS_scanActivity"];
  subMessageValue50 = [v215 subMessageValue];
  v217 = [subMessageValue50 fieldForKey:@"NWASA_roamDur"];
  v354 = uint32Value22 - [v217 uint32Value];

  v218 = [sampleCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue51 = [v218 subMessageValue];
  v220 = [subMessageValue51 fieldForKey:@"NWACS_scanActivity"];
  subMessageValue52 = [v220 subMessageValue];
  v222 = [subMessageValue52 fieldForKey:@"NWASA_roamCount"];
  uint32Value23 = [v222 uint32Value];
  v223 = [featuresCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue53 = [v223 subMessageValue];
  v225 = [subMessageValue53 fieldForKey:@"NWACS_scanActivity"];
  subMessageValue54 = [v225 subMessageValue];
  v227 = [subMessageValue54 fieldForKey:@"NWASA_roamCount"];
  uint32Value24 = [v227 uint32Value];

  v228 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 533;
    v378 = 1024;
    *v379 = v354;
    _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:roamDuration: %u", buf, 0x18u);
  }

  v229 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 534;
    v378 = 1024;
    *v379 = uint32Value23 - uint32Value24;
    _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:roamCount: %u", buf, 0x18u);
  }

  v285 = uint32Value23 - uint32Value24;

  v345 = [sampleCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue55 = [v345 subMessageValue];
  v231 = [subMessageValue55 fieldForKey:@"NWACS_btCoex"];
  subMessageValue56 = [v231 subMessageValue];
  v233 = [subMessageValue56 fieldForKey:@"NWABC_btabort"];
  uint32Value25 = [v233 uint32Value];
  v235 = [featuresCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue57 = [v235 subMessageValue];
  v237 = [subMessageValue57 fieldForKey:@"NWACS_btCoex"];
  subMessageValue58 = [v237 subMessageValue];
  v239 = [subMessageValue58 fieldForKey:@"NWABC_btabort"];
  v282 = uint32Value25 - [v239 uint32Value];

  objg = [sampleCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue59 = [objg subMessageValue];
  v240 = [subMessageValue59 fieldForKey:@"NWACS_btCoex"];
  subMessageValue60 = [v240 subMessageValue];
  v242 = [subMessageValue60 fieldForKey:@"NWABC_grant"];
  uint32Value26 = [v242 uint32Value];
  v243 = [featuresCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue61 = [v243 subMessageValue];
  v245 = [subMessageValue61 fieldForKey:@"NWACS_btCoex"];
  subMessageValue62 = [v245 subMessageValue];
  v247 = [subMessageValue62 fieldForKey:@"NWABC_grant"];
  uint32Value27 = [v247 uint32Value];

  v248 = [sampleCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue63 = [v248 subMessageValue];
  v250 = [subMessageValue63 fieldForKey:@"NWACS_btCoex"];
  subMessageValue64 = [v250 subMessageValue];
  v252 = [subMessageValue64 fieldForKey:@"NWABC_request"];
  objb = [v252 uint32Value];
  v253 = [featuresCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue65 = [v253 subMessageValue];
  v255 = [subMessageValue65 fieldForKey:@"NWACS_btCoex"];
  subMessageValue66 = [v255 subMessageValue];
  v257 = [subMessageValue66 fieldForKey:@"NWABC_request"];
  uint32Value28 = [v257 uint32Value];

  v258 = [sampleCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue67 = [v258 subMessageValue];
  v260 = [subMessageValue67 fieldForKey:@"NWACS_btCoex"];
  subMessageValue68 = [v260 subMessageValue];
  v262 = [subMessageValue68 fieldForKey:@"NWABC_ucodehighlatency"];
  uint32Value29 = [v262 uint32Value];
  v263 = [featuresCopy fieldForKey:@"DPSCS_controllerStats"];
  subMessageValue69 = [v263 subMessageValue];
  v265 = [subMessageValue69 fieldForKey:@"NWACS_btCoex"];
  subMessageValue70 = [v265 subMessageValue];
  v267 = [subMessageValue70 fieldForKey:@"NWABC_ucodehighlatency"];
  uint32Value30 = [v267 uint32Value];

  v268 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 544;
    v378 = 1024;
    *v379 = v282;
    _os_log_impl(&_mh_execute_header, v268, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:bt_abort: %u", buf, 0x18u);
  }

  v269 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 545;
    v378 = 1024;
    *v379 = uint32Value26 - uint32Value27;
    _os_log_impl(&_mh_execute_header, v269, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:bt_grant: %u", buf, 0x18u);
  }

  v270 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 546;
    v378 = 1024;
    *v379 = objb - uint32Value28;
    _os_log_impl(&_mh_execute_header, v270, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:bt_request: %u", buf, 0x18u);
  }

  v271 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v375 = "[DPSQuickRecoveryRecommendationEngine computeFeatures:currentSample:acList:]";
    v376 = 1024;
    v377 = 547;
    v378 = 1024;
    *v379 = uint32Value29 - uint32Value30;
    _os_log_impl(&_mh_execute_header, v271, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:bt_uch_latency: %u", buf, 0x18u);
  }

  v272 = [[WiFiStallDetectInput alloc] initWithAC_problem_bitfield:v307 TxBE_expiredCompletions:v309 TxBE_failedCompletions:v310 TxBE_noAckCompletions:v312 TxBE_otherErrCompletions:v314 TxBK_expiredCompletions:HIDWORD(v309) TxBK_failedCompletions:v311 TxBK_noAckCompletions:v313 TxBK_otherErrCompletions:v315 TxVI_expiredCompletions:HIDWORD(v310) TxVI_failedCompletions:HIDWORD(v312) TxVI_noAckCompletions:HIDWORD(v314) TxVI_otherErrCompletions:v317 TxVO_expiredCompletions:HIDWORD(v311) TxVO_failedCompletions:HIDWORD(v313) TxVO_noAckCompletions:HIDWORD(v315) TxVO_otherErrCompletions:v321 bt_abort:v282 bt_grant:(uint32Value26 - uint32Value27) bt_request:(objb - uint32Value28) bt_uch_latency:(uint32Value29 - uint32Value30) cca_bin:*&v27 completions_chipmodeerror:v359 completions_expired:v305 completions_internalerror:v302 completions_ioerror:v300 completions_noack:v297 completions_nobuf:v295 completions_noremotepeer:v292 completions_noresources:v290 completions_txfailure:v287 roam_count:v285 roam_duration:v354 rssi_bin:*&v46 snr_bin:*&v64];

  return v272;
}

- (BOOL)checkDpsStatus:(id)status currentSample:(id)sample qDpsStat:(id)stat
{
  statusCopy = status;
  sampleCopy = sample;
  statCopy = stat;
  if ([(RecommendationPreferences *)self->_preferences disable_fast_dps_wd])
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v41 = "[DPSQuickRecoveryRecommendationEngine checkDpsStatus:currentSample:qDpsStat:]";
      v42 = 1024;
      v43 = 594;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Quick DPS Reset Recovery is disabled", buf, 0x12u);
    }

    v11 = [statCopy fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
    v12 = v11;
    v13 = 3;
    goto LABEL_27;
  }

  if ([(RecommendationPreferences *)self->_preferences disable_fast_dps_validation_for_test])
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v41 = "[DPSQuickRecoveryRecommendationEngine checkDpsStatus:currentSample:qDpsStat:]";
      v42 = 1024;
      v43 = 601;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Bypassing Quick DPS validation for Quick Reset Recovery", buf, 0x12u);
    }

    v14 = 1;
    goto LABEL_28;
  }

  v15 = [statusCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue = [v15 subMessageValue];
  v17 = [subMessageValue fieldForKey:@"NWAPS_acCompletions"];
  repeatableValues = [v17 repeatableValues];
  v19 = [repeatableValues count];

  v20 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v41 = "[DPSQuickRecoveryRecommendationEngine checkDpsStatus:currentSample:qDpsStat:]";
    v42 = 1024;
    v43 = 607;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:DPS Fast Reset Recovery Enabled, Validation Starts...", buf, 0x12u);
  }

  if (v19 < 5)
  {
    if (!v19)
    {
      v35 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "acCompletions not populated, so this DPS trigger cannot be validated", buf, 2u);
      }

      if ([(DPSQuickRecoveryRecommendationEngine *)self computeBin:@"NWAPS_ccas" previousSample:statusCopy currentSample:sampleCopy]!= 0xFFFF)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v21 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v41 = v19;
      _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Out of range acCount found in NWAPS_acCompletions: %llu", buf, 0xCu);
    }

    LODWORD(v19) = 4;
  }

  selfCopy = self;
  v37 = statusCopy;
  v38 = statCopy;
  v22 = 0;
  while (1)
  {
    v23 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
    subMessageValue2 = [v23 subMessageValue];
    v25 = [subMessageValue2 fieldForKey:@"NWAPS_acCompletions"];
    repeatableValues2 = [v25 repeatableValues];
    v27 = [repeatableValues2 objectAtIndex:v22];
    v28 = [v27 fieldForKey:@"NWAPACTC_durSinceLastSuccessfulComp"];
    uint32Value = [v28 uint32Value];

    v30 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v41 = "[DPSQuickRecoveryRecommendationEngine checkDpsStatus:currentSample:qDpsStat:]";
      v42 = 1024;
      v43 = 619;
      v44 = 1024;
      v45 = v22;
      v46 = 1024;
      v47 = uint32Value;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC:%u NWAPACTC_durSinceLastSuccessfulComp[@6s] %u", buf, 0x1Eu);
    }

    v31 = uint32Value >> 2;
    v14 = uint32Value >> 2 > 0x658;
    if (v31 <= 0x658)
    {
      break;
    }

    if (++v22 >= v19)
    {
      goto LABEL_22;
    }
  }

  v32 = [v38 fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
  [v32 setInt32Value:9];

LABEL_22:
  statusCopy = v37;
  statCopy = v38;
  if ([(DPSQuickRecoveryRecommendationEngine *)selfCopy computeBin:@"NWAPS_ccas" previousSample:v37 currentSample:sampleCopy]== 0xFFFF)
  {
LABEL_23:
    v33 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Instances populated with the same values, CCA not found (QuickDPS)", buf, 2u);
    }

LABEL_26:
    v11 = [statCopy fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
    v12 = v11;
    v13 = 10;
LABEL_27:
    [v11 setInt32Value:v13];
    v14 = 0;
LABEL_28:
  }

  return v14;
}

- (unsigned)computeBin:(id)bin previousSample:(id)sample currentSample:(id)currentSample
{
  binCopy = bin;
  sampleCopy = sample;
  currentSampleCopy = currentSample;
  v31 = sampleCopy;
  v9 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];
  subMessageValue = [v9 subMessageValue];
  v32 = binCopy;
  v11 = [subMessageValue fieldForKey:binCopy];
  repeatableValues = [v11 repeatableValues];
  v13 = [repeatableValues count];

  v29 = v13;
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v33 = v15;
      v37 = [currentSampleCopy fieldForKey:@"DPSCS_peerStats"];
      subMessageValue2 = [v37 subMessageValue];
      v35 = [subMessageValue2 fieldForKey:v32];
      repeatableValues2 = [v35 repeatableValues];
      v17 = [repeatableValues2 objectAtIndex:v14];
      v18 = [v17 fieldForKey:@"NWASB_residentTime"];
      uint64Value = [v18 uint64Value];
      v19 = [v31 fieldForKey:@"DPSCS_peerStats"];
      subMessageValue3 = [v19 subMessageValue];
      v21 = [subMessageValue3 fieldForKey:v32];
      repeatableValues3 = [v21 repeatableValues];
      v23 = [repeatableValues3 objectAtIndex:v14];
      v24 = [v23 fieldForKey:@"NWASB_residentTime"];
      uint64Value2 = [v24 uint64Value];

      if (uint64Value != uint64Value2)
      {
        break;
      }

      v14 = v33 + 1;
      v15 = v33 + 1;
      if (v29 <= v14)
      {
        goto LABEL_5;
      }
    }

    v26 = v33;
  }

  else
  {
LABEL_5:
    v26 = 0xFFFF;
  }

  v27 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v39 = "[DPSQuickRecoveryRecommendationEngine computeBin:previousSample:currentSample:]";
    v40 = 1024;
    v41 = 656;
    v42 = 2112;
    v43 = v32;
    v44 = 2048;
    v45 = v29;
    v46 = 1024;
    v47 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:key:%@ binCount:%llu bin:%u", buf, 0x2Cu);
  }

  return v26;
}

- (unsigned)totalFailureCount:(id)count
{
  countCopy = count;
  dropped = [countCopy dropped];
  v5 = [countCopy noBuf] + dropped;
  noResources = [countCopy noResources];
  v7 = v5 + noResources + [countCopy noAck];
  chipModeError = [countCopy chipModeError];
  v9 = chipModeError + [countCopy expired];
  v10 = v7 + v9 + [countCopy txFailure];
  firmwareFreePacket = [countCopy firmwareFreePacket];
  v12 = firmwareFreePacket + [countCopy maxRetries];
  forceLifetimeExp = [countCopy forceLifetimeExp];

  return v10 + v12 + forceLifetimeExp;
}

- (BOOL)tdSpecficFailures:(id)failures driverType:(int64_t)type rssiBin:(unsigned int)bin
{
  failuresCopy = failures;
  if (failuresCopy)
  {
    v9 = [(DPSQuickRecoveryRecommendationEngine *)self totalFailureCount:failuresCopy];
    noAck = [failuresCopy noAck];
    v11 = [failuresCopy expired] + noAck;
    if (type == 3)
    {
      v11 += [failuresCopy maxRetries];
    }

    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136447746;
      v21 = "[DPSQuickRecoveryRecommendationEngine tdSpecficFailures:driverType:rssiBin:]";
      v22 = 1024;
      v23 = 681;
      v24 = 1024;
      *v25 = v9;
      *&v25[4] = 1024;
      *&v25[6] = v11;
      v26 = 1024;
      noAck2 = [failuresCopy noAck];
      v28 = 1024;
      expired = [failuresCopy expired];
      v30 = 1024;
      maxRetries = [failuresCopy maxRetries];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:TotalFailures:%d TargetFailures:%d (NA:%d EXP:%d MRET:%d)\n", &v20, 0x30u);
    }

    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      reset_rssi_bin_threshold = [(RecommendationPreferences *)self->_preferences reset_rssi_bin_threshold];
      v20 = 136446722;
      v21 = "[DPSQuickRecoveryRecommendationEngine tdSpecficFailures:driverType:rssiBin:]";
      v22 = 1024;
      v23 = 682;
      v24 = 2048;
      *v25 = reset_rssi_bin_threshold;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:rssi-bin threshold:%ld", &v20, 0x1Cu);
    }

    v17 = [(RecommendationPreferences *)self->_preferences reset_rssi_bin_threshold]>= bin && v11 != 0 && v11 == v9;
  }

  else
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446466;
      v21 = "[DPSQuickRecoveryRecommendationEngine tdSpecficFailures:driverType:rssiBin:]";
      v22 = 1024;
      v23 = 670;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:txCompletionSnaphot is nil: by-passing tdSpecficFailures check...", &v20, 0x12u);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)isTriggerDisconnect:(id)disconnect currentSample:(id)sample aggregateFailureSnaphot:(id)snaphot driverType:(int64_t)type
{
  snaphotCopy = snaphot;
  sampleCopy = sample;
  v12 = [(DPSQuickRecoveryRecommendationEngine *)self computeBin:@"NWAPS_rssis" previousSample:disconnect currentSample:sampleCopy];
  v13 = [sampleCopy fieldForKey:@"DPSCS_peerStats"];

  subMessageValue = [v13 subMessageValue];
  v15 = [subMessageValue fieldForKey:@"NWAPS_rssiValue"];
  int32Value = [v15 int32Value];

  v17 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136446978;
    v24 = "[DPSQuickRecoveryRecommendationEngine isTriggerDisconnect:currentSample:aggregateFailureSnaphot:driverType:]";
    v25 = 1024;
    v26 = 695;
    v27 = 1024;
    LODWORD(v28[0]) = v12;
    WORD2(v28[0]) = 1024;
    *(v28 + 6) = int32Value;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RSSI-bin:%d raw-RSSI:%d\n", &v23, 0x1Eu);
  }

  if (int32Value <= [(RecommendationPreferences *)self->_preferences quick_dps_rssi_threshold]|| [(DPSQuickRecoveryRecommendationEngine *)self tdSpecficFailures:snaphotCopy driverType:type rssiBin:v12])
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      reset_rssi_bin_threshold = [(RecommendationPreferences *)self->_preferences reset_rssi_bin_threshold];
      v23 = 136446722;
      v24 = "[DPSQuickRecoveryRecommendationEngine isTriggerDisconnect:currentSample:aggregateFailureSnaphot:driverType:]";
      v25 = 1024;
      v26 = 701;
      v27 = 2048;
      v28[0] = reset_rssi_bin_threshold;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:rssi-bin threshold: %ld", &v23, 0x1Cu);
    }

    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136446466;
      v24 = "[DPSQuickRecoveryRecommendationEngine isTriggerDisconnect:currentSample:aggregateFailureSnaphot:driverType:]";
      v25 = 1024;
      v26 = 702;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Trigger Disconnect suspected!", &v23, 0x12u);
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)isHighAWDLActivity:(id)activity
{
  activityCopy = activity;
  v5 = [activityCopy fieldForKey:@"DPSS_awdlSnapshot"];
  subMessageValue = [v5 subMessageValue];
  v7 = [subMessageValue fieldForKey:@"DPSAWDLS_sdb"];
  uint32Value = [v7 uint32Value];

  v9 = [activityCopy fieldForKey:@"DPSS_awdlSnapshot"];
  subMessageValue2 = [v9 subMessageValue];
  v11 = [subMessageValue2 fieldForKey:@"DPSAWDLS_use"];
  uint32Value2 = [v11 uint32Value];

  v13 = [activityCopy fieldForKey:@"DPSS_awdlSnapshot"];

  subMessageValue3 = [v13 subMessageValue];
  v15 = [subMessageValue3 fieldForKey:@"DPSAWDLS_ts"];
  uint64Value = [v15 uint64Value];

  v17 = +[NSDate date];
  [v17 timeIntervalSince1970];
  v19 = v18;

  v20 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    reset_awdl_activity_threshold = [(RecommendationPreferences *)self->_preferences reset_awdl_activity_threshold];
    v25 = 136447490;
    v26 = "[DPSQuickRecoveryRecommendationEngine isHighAWDLActivity:]";
    v27 = 1024;
    v28 = 719;
    v29 = 2048;
    v30 = reset_awdl_activity_threshold;
    v31 = 1024;
    v32 = uint32Value2;
    v33 = 1024;
    v34 = uint32Value;
    v35 = 2048;
    v36 = v19 - uint64Value / 0x3E8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:awdl activity threshold: %ld, awdl usage: %u, sdb: %u, updated before:%llu seconds", &v25, 0x32u);
  }

  if (uint32Value)
  {
    return 0;
  }

  reset_awdl_activity_threshold2 = [(RecommendationPreferences *)self->_preferences reset_awdl_activity_threshold];
  result = 0;
  if (reset_awdl_activity_threshold2 < uint32Value2 && v19 - uint64Value / 0x3E8 <= 0xF)
  {
    v24 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136446466;
      v26 = "[DPSQuickRecoveryRecommendationEngine isHighAWDLActivity:]";
      v27 = 1024;
      v28 = 722;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:High AWDL Activity suspected!", &v25, 0x12u);
    }

    return 1;
  }

  return result;
}

- (BOOL)isNANActivitySuspected:(id)suspected nanEnabled:(BOOL)enabled driverType:(int64_t)type
{
  if (type != 3)
  {
    return 0;
  }

  enabledCopy = enabled;
  suspectedCopy = suspected;
  v8 = [suspectedCopy fieldForKey:@"DPSS_nanSnapshot"];
  subMessageValue = [v8 subMessageValue];
  v10 = [subMessageValue fieldForKey:@"DPSNANS_sdb"];
  uint32Value = [v10 uint32Value];

  v12 = [suspectedCopy fieldForKey:@"DPSS_nanSnapshot"];
  subMessageValue2 = [v12 subMessageValue];
  v14 = [subMessageValue2 fieldForKey:@"DPSNANS_use"];
  uint32Value2 = [v14 uint32Value];

  v16 = [suspectedCopy fieldForKey:@"DPSS_nanSnapshot"];

  subMessageValue3 = [v16 subMessageValue];
  v18 = [subMessageValue3 fieldForKey:@"DPSNANS_ts"];
  uint64Value = [v18 uint64Value];

  v20 = +[NSDate date];
  [v20 timeIntervalSince1970];
  v22 = v21;

  v23 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v24 = "Enabled";
    }

    else
    {
      v24 = "Disabled";
    }

    reset_nan_activity_threshold = [(RecommendationPreferences *)self->_preferences reset_nan_activity_threshold];
    v29 = 136447746;
    v30 = "[DPSQuickRecoveryRecommendationEngine isNANActivitySuspected:nanEnabled:driverType:]";
    v31 = 1024;
    v32 = 744;
    v33 = 2080;
    v34 = v24;
    v35 = 2048;
    v36 = reset_nan_activity_threshold;
    v37 = 1024;
    v38 = uint32Value2;
    v39 = 1024;
    v40 = uint32Value;
    v41 = 2048;
    v42 = v22 - uint64Value / 0x3E8;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NAN Status:%s NAN activity threshold: %ld, awdl usage: %u, sdb: %u, updated before:%llu seconds", &v29, 0x3Cu);
  }

  if (!enabledCopy)
  {
    if (!uint32Value)
    {
      reset_nan_activity_threshold2 = [(RecommendationPreferences *)self->_preferences reset_nan_activity_threshold];
      result = 0;
      if (reset_nan_activity_threshold2 >= uint32Value2 || v22 - uint64Value / 0x3E8 > 0xF)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v26 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136446466;
    v30 = "[DPSQuickRecoveryRecommendationEngine isNANActivitySuspected:nanEnabled:driverType:]";
    v31 = 1024;
    v32 = 748;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NAN Activity suspected!", &v29, 0x12u);
  }

  return 1;
}

- (BOOL)checkParameterThresholds:(id)thresholds currentSample:(id)sample qDpsStat:(id)stat chipNumber:(id)number dpsSnapshot:(id)snapshot originalCCA:(unsigned int)a aggregateFailureSnaphot:(id)snaphot driverType:(int64_t)self0 nanEnabled:(BOOL)self1
{
  thresholdsCopy = thresholds;
  sampleCopy = sample;
  statCopy = stat;
  numberCopy = number;
  snapshotCopy = snapshot;
  snaphotCopy = snaphot;
  v22 = [(DPSQuickRecoveryRecommendationEngine *)self computeBin:@"NWAPS_ccas" previousSample:thresholdsCopy currentSample:sampleCopy];
  v23 = [&off_100103178 containsObject:numberCopy];
  preferences = self->_preferences;
  if (v23)
  {
    reset_legacy_chipset_cca_bin_threshold = [(RecommendationPreferences *)preferences reset_legacy_chipset_cca_bin_threshold];
  }

  else
  {
    reset_legacy_chipset_cca_bin_threshold = [(RecommendationPreferences *)preferences reset_cca_bin_threshold];
  }

  v26 = reset_legacy_chipset_cca_bin_threshold;
  v27 = (reset_legacy_chipset_cca_bin_threshold + 1) * 12.5;
  v28 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v37 = "[DPSQuickRecoveryRecommendationEngine checkParameterThresholds:currentSample:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
    v38 = 1024;
    v39 = 764;
    v40 = 1024;
    aCopy = a;
    v42 = 1024;
    v43 = v26;
    v44 = 2048;
    *v45 = v27;
    *&v45[8] = 2112;
    *&v45[10] = numberCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:notificationCCA: %d ccaThreshold:%d ccaFloatThreshold:%f set for chipset : %@", buf, 0x32u);
  }

  v29 = [statCopy fieldForKey:@"WFAAWDWAQDS_ccaThreshold"];
  [v29 setUint32Value:v26];

  if (v22 >= v26 || v27 <= a)
  {
    v31 = [statCopy fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
    [v31 setInt32Value:6];

    v30 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v37 = "[DPSQuickRecoveryRecommendationEngine checkParameterThresholds:currentSample:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
      v38 = 1024;
      v39 = 772;
      v40 = 1024;
      aCopy = v22;
      v42 = 1024;
      v43 = v26;
      v44 = 1024;
      *v45 = a;
      *&v45[4] = 2048;
      *&v45[6] = v27;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:CCA Threshold Suppression.. cca-bin: %d threshold: %d notificationCCA: %d CCALimit: %f", buf, 0x2Eu);
    }

    goto LABEL_12;
  }

  if ([(DPSQuickRecoveryRecommendationEngine *)self isTriggerDisconnect:thresholdsCopy currentSample:sampleCopy aggregateFailureSnaphot:snaphotCopy driverType:type])
  {
    v30 = [statCopy fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
    [v30 setInt32Value:7];
LABEL_12:
    v32 = snapshotCopy;
    goto LABEL_13;
  }

  v32 = snapshotCopy;
  if (![(DPSQuickRecoveryRecommendationEngine *)self isNANActivitySuspected:snapshotCopy nanEnabled:enabled driverType:type]&& ![(DPSQuickRecoveryRecommendationEngine *)self isHighAWDLActivity:snapshotCopy])
  {
    v33 = 1;
    goto LABEL_14;
  }

  v30 = [statCopy fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
  [v30 setInt32Value:8];
LABEL_13:

  v33 = 0;
LABEL_14:

  return v33;
}

- (unint64_t)recommendReset:(id)reset currentSample:(id)sample acList:(id)list qDpsStat:(id)stat chipNumber:(id)number dpsSnapshot:(id)snapshot originalCCA:(unsigned int)a aggregateFailureSnaphot:(id)self0 driverType:(int64_t)self1 nanEnabled:(BOOL)self2
{
  resetCopy = reset;
  sampleCopy = sample;
  listCopy = list;
  statCopy = stat;
  numberCopy = number;
  snapshotCopy = snapshot;
  snaphotCopy = snaphot;
  v80 = +[NSDate date];
  disable_fast_dps_validation_for_test = [(RecommendationPreferences *)self->_preferences disable_fast_dps_validation_for_test];
  v22 = [statCopy fieldForKey:@"WFAAWDWAQDS_isDpsValidationDisabled"];
  [v22 setBoolValue:disable_fast_dps_validation_for_test];

  [(DPSQuickRecoveryRecommendationEngine *)self updateTimeSincePreviousTriggerForStudy:statCopy msgKey:@"WFAAWDWAQDS_quickDpsTimeSincePreviousTriggerMinutes" dictKey:@"dps_lastQuickDpsTrigger"];
  [(DPSQuickRecoveryRecommendationEngine *)self updateScreenState];
  v23 = [statCopy fieldForKey:@"WFAAWDWAQDS_screenStateOn"];
  [v23 setBoolValue:self->screenON];

  if ([(DPSQuickRecoveryRecommendationEngine *)self checkDpsStatus:resetCopy currentSample:sampleCopy qDpsStat:statCopy])
  {
    if (self->model)
    {
      goto LABEL_3;
    }

    v42 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
      v87 = 1024;
      v88 = 804;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Model not yet loaded, loading...", buf, 0x12u);
    }

    v43 = +[WAUtil resourcePath];
    v44 = [NSString stringWithFormat:@"%@/%@.%@", v43, @"WiFiStallDetect", @"mlmodelc"];

    v45 = [NSURL fileURLWithPath:v44];
    modelUrl = self->modelUrl;
    self->modelUrl = v45;

    v47 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = self->modelUrl;
      *buf = 136446722;
      v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
      v87 = 1024;
      v88 = 809;
      v89 = 2112;
      v90 = *&v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:modelUrl is %@", buf, 0x1Cu);
    }

    v49 = [WiFiStallDetect alloc];
    v50 = self->modelUrl;
    v84 = 0;
    v51 = [(WiFiStallDetect *)v49 initWithContentsOfURL:v50 error:&v84];
    v52 = v84;
    model = self->model;
    self->model = v51;

    if (self->model)
    {
LABEL_3:
      if (!self->screenON)
      {
        goto LABEL_28;
      }

      v24 = [(DPSQuickRecoveryRecommendationEngine *)self computeFeatures:resetCopy currentSample:sampleCopy acList:listCopy];
      v25 = [(WiFiStallDetect *)self->model predictionFromFeatures:v24 error:0];
      v26 = WALogCategoryDefaultHandle();
      v27 = v26;
      if (v25)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          stall = [v25 stall];
          v29 = "WILL";
          v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
          *buf = 136446722;
          if (!stall)
          {
            v29 = "WILL NOT";
          }

          v87 = 1024;
          v88 = 827;
          v89 = 2080;
          v90 = *&v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS ML Prediction: The Stall '%s' last for more than 10 seconds", buf, 0x1Cu);
        }

        v30 = [[NSNumber alloc] initWithUnsignedLongLong:{objc_msgSend(v25, "stall")}];
        stallProbability = [v25 stallProbability];
        v32 = [stallProbability objectForKey:v30];
        [v32 doubleValue];
        v34 = v33;

        v35 = [statCopy fieldForKey:@"WFAAWDWAQDS_stallPrediction"];
        [v35 setBoolValue:{objc_msgSend(v25, "stall") > 0}];

        v36 = [statCopy fieldForKey:@"WFAAWDWAQDS_stallProbability"];
        v37 = v34 * 100.0;
        [v36 setUint32Value:v37];

        prediction_probability_threshold = [(RecommendationPreferences *)self->_preferences prediction_probability_threshold];
        v39 = [statCopy fieldForKey:@"WFAAWDWAQDS_probabilityThreshold"];
        [v39 setUint32Value:prediction_probability_threshold];

        if (disable_fast_dps_validation_for_test)
        {
          v40 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
            v87 = 1024;
            v88 = 844;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:simluated DPS: Overriding decision...do reset", buf, 0x12u);
          }

LABEL_27:
LABEL_28:
          LOBYTE(v78) = enabled;
          if (![(DPSQuickRecoveryRecommendationEngine *)self checkParameterThresholds:resetCopy currentSample:sampleCopy qDpsStat:statCopy chipNumber:numberCopy dpsSnapshot:snapshotCopy originalCCA:a aggregateFailureSnaphot:snaphotCopy driverType:type nanEnabled:v78]|| ![(DPSQuickRecoveryRecommendationEngine *)self checkForPriorityNetwork])
          {
            v59 = 0;
            disable_fast_dps_validation_for_test = 0;
LABEL_38:
            v61 = [statCopy fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
            v62 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v61 int32Value]);

            [(NSMutableDictionary *)self->_dpsStats setObject:v62 forKey:@"dps_lastQuickRecoverySuppressionReason"];
            if ((v59 & 1) == 0)
            {
              [(NSMutableDictionary *)self->_dpsStats setObject:v80 forKey:@"dps_lastQuickRecoverySuppressedWD"];
            }

            v63 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = "NO";
              v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
              *buf = 136446722;
              if (v59)
              {
                v64 = "YES";
              }

              v87 = 1024;
              v88 = 885;
              v89 = 2080;
              v90 = *&v64;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Recommendation for fast reset: %s", buf, 0x1Cu);
            }

            if ((v59 & 1) == 0)
            {
              v65 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                intValue = [v62 intValue];
                if (intValue >= 0xB)
                {
                  v67 = [NSString stringWithFormat:@"(unknown: %i)", intValue];
                }

                else
                {
                  v67 = off_1000EDC90[intValue];
                }

                *buf = 136446722;
                v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
                v87 = 1024;
                v88 = 887;
                v89 = 2112;
                v90 = *&v67;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:quickDPS: Suppressed Reason: %@", buf, 0x1Cu);
              }
            }

            v68 = [statCopy fieldForKey:@"WFAAWDWAQDS_quickDpsResetRecommendation"];
            [v68 setBoolValue:v59];

            v69 = [statCopy fieldForKey:@"WFAAWDWAQDS_rssiThreshold"];
            preferences = self->_preferences;
            p_preferences = &self->_preferences;
            [v69 setUint32Value:{-[RecommendationPreferences reset_rssi_bin_threshold](preferences, "reset_rssi_bin_threshold")}];

            v72 = [statCopy fieldForKey:@"WFAAWDWAQDS_screenOnThreshold"];
            [v72 setUint32Value:{-[RecommendationPreferences minutes_between_fast_dps_wd_screen_on](*p_preferences, "minutes_between_fast_dps_wd_screen_on")}];

            v73 = [statCopy fieldForKey:@"WFAAWDWAQDS_screenOffThreshold"];
            [v73 setUint32Value:{-[RecommendationPreferences minutes_between_fast_dps_wd_screen_off](*p_preferences, "minutes_between_fast_dps_wd_screen_off")}];

            v74 = [statCopy fieldForKey:@"WFAAWDWAQDS_awdlActivityThreshold"];
            [v74 setUint32Value:{-[RecommendationPreferences reset_awdl_activity_threshold](*p_preferences, "reset_awdl_activity_threshold")}];

            goto LABEL_52;
          }

          isResetAllowedForQuickDPS = [(DPSQuickRecoveryRecommendationEngine *)self isResetAllowedForQuickDPS];
          v58 = [statCopy fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
          v24 = v58;
          if (isResetAllowedForQuickDPS)
          {
            [v58 setInt32Value:0];
            disable_fast_dps_validation_for_test = 1;
            v59 = 1;
          }

          else
          {
            [v58 setInt32Value:5];
            v59 = 0;
            disable_fast_dps_validation_for_test = 2;
          }

LABEL_37:

          goto LABEL_38;
        }

        if ([v25 stall] < 1)
        {
          v56 = 1;
        }

        else
        {
          v54 = prediction_probability_threshold;
          v55 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446978;
            v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
            v87 = 1024;
            v88 = 847;
            v89 = 2048;
            v90 = v37;
            v91 = 2048;
            v92 = v54;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS ML Prediction probability: %lf threshold: %lf", buf, 0x26u);
          }

          if (v37 >= v54)
          {
            goto LABEL_27;
          }

          v56 = 2;
        }

        v60 = [statCopy fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
        [v60 setInt32Value:v56];
      }

      else
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
          v87 = 1024;
          v88 = 826;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:ML model output is nil", buf, 0x12u);
        }
      }

      v59 = 0;
      disable_fast_dps_validation_for_test = 0;
      goto LABEL_37;
    }

    v76 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
      v87 = 1024;
      v88 = 819;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error WiFiStallDetect init", buf, 0x12u);
    }

    v77 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v77, OS_LOG_TYPE_FAULT, "Error WiFiStallDetect init", buf, 2u);
    }
  }

  else
  {
    v41 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v86 = "[DPSQuickRecoveryRecommendationEngine recommendReset:currentSample:acList:qDpsStat:chipNumber:dpsSnapshot:originalCCA:aggregateFailureSnaphot:driverType:nanEnabled:]";
      v87 = 1024;
      v88 = 799;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS Fast Reset Recovery Validations Failed!", buf, 0x12u);
    }

    disable_fast_dps_validation_for_test = 0;
  }

LABEL_52:

  return disable_fast_dps_validation_for_test;
}

- (BOOL)isPeerDiagnosticsTriggerAllowed:(unint64_t)allowed
{
  v5 = +[NSDate date];
  preferences = self->_preferences;
  if (allowed)
  {
    minutes_between_peer_diagnostics_trigger_for_other_issues = [(RecommendationPreferences *)preferences minutes_between_peer_diagnostics_trigger_for_other_issues];
    v8 = @"pd_lastDiagnosticsTriggerForOtherIssues";
  }

  else
  {
    minutes_between_peer_diagnostics_trigger_for_other_issues = [(RecommendationPreferences *)preferences minutes_between_peer_diagnostics_trigger_for_dns_stall];
    v8 = @"pd_lastDiagnosticsTriggerForDNSStall";
  }

  v9 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:v8];
  if (v9 && ([v5 timeIntervalSinceDate:v9], v11 = (v10 / 60.0), minutes_between_peer_diagnostics_trigger_for_other_issues > v11))
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136447234;
      v16 = "[DPSQuickRecoveryRecommendationEngine isPeerDiagnosticsTriggerAllowed:]";
      v17 = 1024;
      v18 = 924;
      v19 = 2048;
      allowedCopy = allowed;
      v21 = 2048;
      v22 = v11;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: Trigger Not Allowed for type:%lu - Last trigger was %ld minutes ago at %@", &v15, 0x30u);
    }

    v13 = 0;
  }

  else
  {
    [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict setObject:v5 forKey:v8];
    v13 = 1;
  }

  return v13;
}

- (BOOL)isScoreBelowThreshold:(id)threshold
{
  thresholdCopy = threshold;
  v5 = [thresholdCopy objectForKey:@"NetScore"];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [thresholdCopy objectForKey:@"DataStallScore"];

  unsignedIntValue2 = [v7 unsignedIntValue];
  v9 = [(RecommendationPreferences *)self->_preferences reset_score_threshold]>= unsignedIntValue || [(RecommendationPreferences *)self->_preferences reset_score_threshold]>= unsignedIntValue2;
  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446978;
    v13 = "[DPSQuickRecoveryRecommendationEngine isScoreBelowThreshold:]";
    v14 = 1024;
    v15 = 947;
    v16 = 1024;
    v17 = unsignedIntValue;
    v18 = 1024;
    v19 = unsignedIntValue2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: netScore:%u dataStallScore:%u", &v12, 0x1Eu);
  }

  return v9;
}

- (BOOL)isGoodWiFiCondition:(id)condition
{
  conditionCopy = condition;
  v5 = [conditionCopy objectForKey:@"RSSI"];
  intValue = [v5 intValue];

  v7 = [conditionCopy objectForKey:@"CCA"];

  unsignedIntValue = [v7 unsignedIntValue];
  v9 = [(RecommendationPreferences *)self->_preferences reset_pd_rssi_threshold]<= intValue && [(RecommendationPreferences *)self->_preferences reset_pd_cca_threshold]>= unsignedIntValue;
  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446978;
    v13 = "[DPSQuickRecoveryRecommendationEngine isGoodWiFiCondition:]";
    v14 = 1024;
    v15 = 963;
    v16 = 2048;
    v17 = intValue;
    v18 = 2048;
    v19 = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: RSSI:%ld CCA:%ld", &v12, 0x26u);
  }

  return v9;
}

- (void)updateTimeSincePreviousTriggerForStudy:(id)study msgKey:(id)key dictKey:(id)dictKey
{
  studyCopy = study;
  keyCopy = key;
  dictKeyCopy = dictKey;
  v11 = +[NSDate date];
  v12 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:dictKeyCopy];
  if (v12)
  {
    [v11 timeIntervalSinceDate:v12];
    v14 = (v13 / 60.0);
    v15 = [studyCopy fieldForKey:keyCopy];
    [v15 setUint64Value:v14];
  }

  else
  {
    v14 = 0;
  }

  [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict setObject:v11 forKey:dictKeyCopy];
  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136447746;
    v18 = "[DPSQuickRecoveryRecommendationEngine updateTimeSincePreviousTriggerForStudy:msgKey:dictKey:]";
    v19 = 1024;
    v20 = 978;
    v21 = 2112;
    v22 = keyCopy;
    v23 = 2112;
    v24 = dictKeyCopy;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v11;
    v29 = 2048;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:msgkey:%@ dictKey:%@ previous_TS:%@ current_TS:%@ difference:%llu", &v17, 0x44u);
  }
}

- (void)updateTimeSincePreviousTriggerForQuickDps:(id)dps
{
  dpsCopy = dps;
  v4 = +[NSDate date];
  v5 = [(NSMutableDictionary *)self->_dpsQuickRecoveryWDBudgetDict valueForKey:@"dps_lastQuickDpsTrigger"];
  if (v5)
  {
    [v4 timeIntervalSinceDate:v5];
    v7 = (v6 / 60.0);
    v8 = [dpsCopy fieldForKey:@"WFAAWDWAQDS_quickDpsTimeSincePreviousTriggerMinutes"];
    [v8 setUint64Value:v7];
  }
}

- (BOOL)checkAWDLActivity:(id)activity symptomsDnsStats:(id)stats
{
  statsCopy = stats;
  activityCopy = activity;
  v7 = [activityCopy fieldForKey:@"DPSS_awdlSnapshot"];
  subMessageValue = [v7 subMessageValue];
  v9 = [subMessageValue fieldForKey:@"DPSAWDLS_sdb"];
  uint32Value = [v9 uint32Value];

  v11 = [activityCopy fieldForKey:@"DPSS_awdlSnapshot"];
  subMessageValue2 = [v11 subMessageValue];
  v13 = [subMessageValue2 fieldForKey:@"DPSAWDLS_use"];
  uint32Value2 = [v13 uint32Value];

  v15 = [activityCopy fieldForKey:@"DPSS_awdlSnapshot"];

  subMessageValue3 = [v15 subMessageValue];
  v17 = [subMessageValue3 fieldForKey:@"DPSAWDLS_ts"];
  uint64Value = [v17 uint64Value];

  v19 = +[NSDate date];
  [v19 timeIntervalSince1970];
  v21 = v20;

  v22 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136447234;
    v29 = "[DPSQuickRecoveryRecommendationEngine checkAWDLActivity:symptomsDnsStats:]";
    v30 = 1024;
    v31 = 1004;
    v32 = 1024;
    v33 = uint32Value2;
    v34 = 1024;
    v35 = uint32Value;
    v36 = 2048;
    v37 = v21 - uint64Value / 0x3E8;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:awdl activity detected, awdl usage: %u, sdb: %u, updated before:%llu seconds", &v28, 0x28u);
  }

  if (uint32Value2)
  {
    v23 = v21 - uint64Value / 0x3E8 >= 0x10;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (v24)
  {
    v25 = [statsCopy fieldForKey:@"WFAAWDWASDS_suppressedReason"];
    [v25 setInt32Value:4];

    v26 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136446466;
      v29 = "[DPSQuickRecoveryRecommendationEngine checkAWDLActivity:symptomsDnsStats:]";
      v30 = 1024;
      v31 = 1008;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AWDL Activity suspected!", &v28, 0x12u);
    }
  }

  return v24;
}

- (unint64_t)recommendSymptomsDpsRecovery:(id)recovery symptomsDnsStats:(id)stats awdlState:(BOOL)state currentSymptomsCondition:(BOOL)condition isLANPingSuccessful:(BOOL)successful appUsage:(BOOL)usage averageCCA:(unsigned int)a driverType:(int64_t)self0
{
  usageCopy = usage;
  successfulCopy = successful;
  stateCopy = state;
  recoveryCopy = recovery;
  statsCopy = stats;
  v18 = [statsCopy fieldForKey:@"WFAAWDWASDS_symptomsDnsRecommendation"];
  [v18 setInt32Value:0];

  [(DPSQuickRecoveryRecommendationEngine *)self updateTimeSincePreviousTriggerForStudy:statsCopy msgKey:@"WFAAWDWASDS_symptomsDnsTimeSincePreviousTriggerMinutes" dictKey:@"dps_lastSymptomsDpsTrigger"];
  v19 = [statsCopy fieldForKey:@"WFAAWDWASDS_suppressedReason"];
  [v19 setInt32Value:0];

  [(DPSQuickRecoveryRecommendationEngine *)self updateScreenState];
  v20 = [statsCopy fieldForKey:@"WFAAWDWASDS_symptomsDnsscreenStateOn"];
  selfCopy = self;
  [v20 setBoolValue:self->screenON];

  v21 = "DictionaryRef";
  if (usageCopy)
  {
    v56 = [statsCopy fieldForKey:@"WFAAWDWASDS_suppressedReason"];
    [v56 setInt32Value:5];

    v41 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 136446466;
    v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
    v69 = 1024;
    v70 = 1026;
    v45 = "%{public}s::%d:critical App In Use";
    goto LABEL_72;
  }

  if (!condition)
  {
    v57 = [statsCopy fieldForKey:@"WFAAWDWASDS_suppressedReason"];
    [v57 setInt32Value:2];

    v41 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 136446466;
    v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
    v69 = 1024;
    v70 = 1027;
    v45 = "%{public}s::%d:DNS symptoms Condition recovered";
    goto LABEL_72;
  }

  if ([(RecommendationPreferences *)self->_preferences dps_symptoms_average_cca_threshold]< a)
  {
    v58 = [statsCopy fieldForKey:@"WFAAWDWASDS_suppressedReason"];
    [v58 setInt32Value:7];

    v41 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 136446466;
    v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
    v69 = 1024;
    v70 = 1028;
    v45 = "%{public}s::%d:DNS symptoms Average CCA greater than threshold";
LABEL_72:
    v46 = v41;
    v47 = OS_LOG_TYPE_ERROR;
    goto LABEL_45;
  }

  v22 = WALogCategoryDefaultHandle();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (recoveryCopy)
  {
    if (v23)
    {
      *buf = 136446722;
      v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
      v69 = 1024;
      v70 = 1033;
      v71 = 2112;
      v72 = recoveryCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: all:%@", buf, 0x1Cu);
    }

    firstObject = [recoveryCopy firstObject];
    info = [firstObject info];
    v26 = [info objectForKeyedSubscript:@"PeerDiagnosticsResults"];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v22 = v26;
    v27 = [v22 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v27)
    {
      v28 = v27;
      v59 = successfulCopy;
      v60 = recoveryCopy;
      v29 = *v63;
      while (2)
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v63 != v29)
          {
            objc_enumerationMutation(v22);
          }

          v31 = *(*(&v62 + 1) + 8 * i);
          v32 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
            v69 = 1024;
            v70 = 1036;
            v71 = 2112;
            v72 = v31;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: parsing results...peer:%@", buf, 0x1Cu);
          }

          if (v31)
          {
            v33 = [v31 objectForKeyedSubscript:@"LQMSummary"];
            v34 = [v31 objectForKeyedSubscript:@"LocalDevice"];
            v35 = [v34 isEqualToString:@"YES"];

            v36 = WALogCategoryDefaultHandle();
            v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
            if (v35)
            {
              if (v37)
              {
                *buf = 136446466;
                v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
                v69 = 1024;
                v70 = 1041;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: self...", buf, 0x12u);
              }

              [(DPSQuickRecoveryRecommendationEngine *)selfCopy isScoreBelowThreshold:v33];
            }

            else
            {
              if (v37)
              {
                *buf = 136446466;
                v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
                v69 = 1024;
                v70 = 1047;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: peer...", buf, 0x12u);
              }

              if ([(DPSQuickRecoveryRecommendationEngine *)selfCopy isGoodWiFiCondition:v33]&& [(DPSQuickRecoveryRecommendationEngine *)selfCopy isScoreBelowThreshold:v33])
              {

                v40 = [statsCopy fieldForKey:@"WFAAWDWASDS_suppressedReason"];
                [v40 setInt32Value:3];

                v39 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446466;
                  v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
                  v69 = 1024;
                  v70 = 1059;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: Peer Devices are also experiencing issues", buf, 0x12u);
                }

                v38 = 1;
                recoveryCopy = v60;
                goto LABEL_33;
              }
            }
          }

          else
          {
            v33 = 0;
          }
        }

        v28 = [v22 countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }

      v38 = 0;
      v39 = v22;
      recoveryCopy = v60;
LABEL_33:
      v21 = "NCFDictionaryRef" + 3;
      successfulCopy = v59;
    }

    else
    {
      v38 = 0;
      v39 = v22;
    }
  }

  else
  {
    if (v23)
    {
      *buf = 136446466;
      v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
      v69 = 1024;
      v70 = 1031;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: Data not received from peerDiagnostics", buf, 0x12u);
    }

    v38 = 0;
  }

  if ((v38 & 1) == 0 && !stateCopy && [(DPSQuickRecoveryRecommendationEngine *)selfCopy checkForPriorityNetwork])
  {
    if (successfulCopy)
    {
      v41 = [statsCopy fieldForKey:@"WFAAWDWASDS_symptomsDnsRecommendation"];
      v42 = 2;
      [v41 setInt32Value:2];
      v43 = 0;
      v44 = "Reassoc";
    }

    else if (type == 3 || [(DPSQuickRecoveryRecommendationEngine *)selfCopy isResetAllowedForSymptomsDPS])
    {
      v41 = [statsCopy fieldForKey:@"WFAAWDWASDS_symptomsDnsRecommendation"];
      v42 = 1;
      [v41 setInt32Value:1];
      v43 = 0;
      v44 = "Reset";
    }

    else
    {
      v55 = [statsCopy fieldForKey:@"WFAAWDWASDS_suppressedReason"];
      [v55 setInt32Value:1];

      v41 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
        v69 = 1024;
        v70 = 1078;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: No budget", buf, 0x12u);
      }

      v43 = 0;
      v44 = "NoBudget";
      v42 = 3;
    }

    goto LABEL_47;
  }

  if ((v38 | !stateCopy))
  {
    v42 = 0;
    v44 = "NoBudget";
    v43 = 1;
    goto LABEL_48;
  }

  v41 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
    v69 = 1024;
    v70 = 1082;
    v45 = "%{public}s::%d:PeerDiagnostics: DNS symptoms recovery suppressed due to AWDL activity";
    v46 = v41;
    v47 = OS_LOG_TYPE_DEFAULT;
LABEL_45:
    _os_log_impl(&_mh_execute_header, v46, v47, v45, buf, 0x12u);
  }

LABEL_46:
  v42 = 0;
  v44 = "NoBudget";
  v43 = 1;
LABEL_47:

LABEL_48:
  v48 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = "None";
    *buf = *(v21 + 108);
    v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
    if (!v43)
    {
      v49 = v44;
    }

    v69 = 1024;
    v70 = 1089;
    v71 = 2080;
    v72 = v49;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: Recommendation for DNS Symptoms Recovery: %s", buf, 0x1Cu);
  }

  if (v43)
  {
    v50 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [statsCopy fieldForKey:@"WFAAWDWASDS_suppressedReason"];
      v52 = v51;
      if (v51 >= 0xB)
      {
        v53 = [NSString stringWithFormat:@"(unknown: %i)", v51];
      }

      else
      {
        v53 = off_1000EDCE8[v51 & 0xF];
      }

      *buf = *(v21 + 108);
      v68 = "[DPSQuickRecoveryRecommendationEngine recommendSymptomsDpsRecovery:symptomsDnsStats:awdlState:currentSymptomsCondition:isLANPingSuccessful:appUsage:averageCCA:driverType:]";
      v69 = 1024;
      v70 = 1091;
      v71 = 2112;
      v72 = v53;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: Suppressed Reason: %@", buf, 0x1Cu);
    }
  }

  return v42;
}

- (BOOL)checkIfDPSResetRecoveryAllowed:(int64_t)allowed
{
  if (allowed == 3)
  {
    return [(DPSQuickRecoveryRecommendationEngine *)self isResetAllowedForSymptomsDPS];
  }

  else
  {
    return 0;
  }
}

@end