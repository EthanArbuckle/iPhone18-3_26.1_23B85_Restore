@interface OSIntelligenceAnalyticsManager
+ (id)currentBootSessionUUID;
+ (id)logWithCategory:(id)a3;
+ (id)sharedInstanceWithTrialClient:(id)a3 withNamespace:(id)a4;
+ (int)bucketLuxValue:(int)a3;
- (OSIntelligenceAnalyticsManager)initWithTrialClient:(id)a3 withNamespace:(id)a4;
- (void)handleNewExitState;
- (void)handleNewInterruptNotificationStart:(BOOL)a3;
- (void)handleNewSPNState:(unint64_t)a3;
- (void)queryHistoricalInactivityState;
- (void)saveNextAlarmInterval:(id)a3 nextDNDInterval:(id)a4 predictionInterval:(id)a5 recommendedWait:(id)a6 deadlineSetter:(id)a7 modelConfidenceLevel:(int64_t)a8 withPredictor:(id)a9;
@end

@implementation OSIntelligenceAnalyticsManager

+ (id)logWithCategory:(id)a3
{
  v3 = [NSString stringWithFormat:@"inactivity.%@", a3];
  v4 = os_log_create("com.apple.osintelligence", [v3 UTF8String]);

  return v4;
}

+ (id)currentBootSessionUUID
{
  size = 0;
  sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0);
  v2 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctlbyname("kern.bootsessionuuid", v2, &size, 0, 0);
  v3 = [NSString stringWithUTF8String:v2];
  free(v2);

  return v3;
}

- (OSIntelligenceAnalyticsManager)initWithTrialClient:(id)a3 withNamespace:(id)a4
{
  v7 = a3;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = OSIntelligenceAnalyticsManager;
  v9 = [(OSIntelligenceAnalyticsManager *)&v38 init];
  if (v9)
  {
    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerd.smartpowernap"];
    defaults = v9->_defaults;
    v9->_defaults = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.SPN.queue", v12);
    queue = v9->_queue;
    v9->_queue = v13;

    v15 = objc_alloc_init(OSIAmbientLightMonitor);
    lightMonitor = v9->_lightMonitor;
    v9->_lightMonitor = v15;

    v17 = objc_alloc_init(OSIAlarmMonitor);
    alarmMonitor = v9->_alarmMonitor;
    v9->_alarmMonitor = v17;

    v19 = objc_alloc_init(OSIMotionMonitor);
    motionMonitor = v9->_motionMonitor;
    v9->_motionMonitor = v19;

    objc_storeStrong(&v9->_trialClient, a3);
    objc_storeStrong(&v9->_trialNamespace, a4);
    v9->_dataLock._os_unfair_lock_opaque = 0;
    v21 = [(NSUserDefaults *)v9->_defaults stringForKey:@"lastBootUUID"];
    v22 = +[OSIntelligenceAnalyticsManager currentBootSessionUUID];
    [(NSUserDefaults *)v9->_defaults setObject:v22 forKey:@"lastBootUUID"];
    v23 = [v22 isEqualToString:v21] ^ 1;
    v24 = [(OSIntelligenceAnalyticsManager *)v9 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002AA98;
    block[3] = &unk_100095198;
    v25 = v9;
    v36 = v25;
    v37 = v23;
    dispatch_sync(v24, block);

    out_token = 0;
    v26 = dispatch_get_global_queue(-32768, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002AD3C;
    handler[3] = &unk_100094900;
    v27 = v25;
    v33 = v27;
    notify_register_dispatch("com.apple.powerd.smartpowernap", &out_token, v26, handler);

    v31 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002AEA0;
    v29[3] = &unk_100094900;
    v30 = v27;
    notify_register_dispatch("com.apple.powerd.smartpowernap.interruption", &v31, v26, v29);
  }

  return v9;
}

+ (id)sharedInstanceWithTrialClient:(id)a3 withNamespace:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B108;
  block[3] = &unk_1000951E8;
  v15 = a4;
  v16 = a1;
  v14 = v6;
  v7 = qword_1000B6A68;
  v8 = v15;
  v9 = v6;
  if (v7 != -1)
  {
    dispatch_once(&qword_1000B6A68, block);
  }

  v10 = qword_1000B6A70;
  v11 = qword_1000B6A70;

  return v10;
}

- (void)handleNewSPNState:(unint64_t)a3
{
  v5 = +[NSDate now];
  v6 = v5;
  if (!a3)
  {
    v13 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"disabledDate"];

    if (!v13)
    {
      [(OSIntelligenceAnalyticsManager *)self handleNewExitState];
    }

    v14 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"transientDisabledDate"];

    if (v14)
    {
      v15 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"transientDisabledDate"];
      [(NSMutableDictionary *)self->_analytics setObject:v15 forKeyedSubscript:@"disabledDate"];

      analytics = self->_analytics;
LABEL_12:
      [(NSMutableDictionary *)analytics setObject:0 forKeyedSubscript:@"transientDisabledDate"];
      goto LABEL_19;
    }

    [v6 timeIntervalSinceReferenceDate];
    v10 = [NSNumber numberWithDouble:?];
    v11 = self->_analytics;
    v12 = @"disabledDate";
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    [v5 timeIntervalSinceReferenceDate];
    v10 = [NSNumber numberWithDouble:?];
    v11 = self->_analytics;
    v12 = @"transientDisabledDate";
LABEL_14:
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    goto LABEL_19;
  }

  if (a3 != 2)
  {
    goto LABEL_19;
  }

  v7 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"transientDisabledDate"];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"transientDisabledDate"];

    if (!v8)
    {
      goto LABEL_19;
    }

    analytics = self->_analytics;
    goto LABEL_12;
  }

  [v6 timeIntervalSinceReferenceDate];
  v16 = [NSNumber numberWithDouble:?];
  [(NSMutableDictionary *)self->_analytics setObject:v16 forKeyedSubscript:@"enabledDate"];

  v17 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"recommendedWait"];
  [(NSMutableDictionary *)self->_analytics setObject:v17 forKeyedSubscript:@"recommendedWait"];

  v18 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"nextAlarmInterval"];
  [(NSMutableDictionary *)self->_analytics setObject:v18 forKeyedSubscript:@"nextAlarmInterval"];

  v19 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"nextDNDInterval"];
  [(NSMutableDictionary *)self->_analytics setObject:v19 forKeyedSubscript:@"nextDNDInterval"];

  v20 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"prediction"];
  [(NSMutableDictionary *)self->_analytics setObject:v20 forKeyedSubscript:@"prediction"];

  v21 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"predictorType"];
  [(NSMutableDictionary *)self->_analytics setObject:v21 forKeyedSubscript:@"predictorType"];

  v22 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"queryingMechanism"];
  [(NSMutableDictionary *)self->_analytics setObject:v22 forKeyedSubscript:@"queryingMechanism"];

  v23 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"longThreshold"];
  [(NSMutableDictionary *)self->_analytics setObject:v23 forKeyedSubscript:@"longThreshold"];

  v24 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"deadlineSetter"];
  [(NSMutableDictionary *)self->_analytics setObject:v24 forKeyedSubscript:@"deadlineSetter"];

  v25 = [(NSMutableDictionary *)self->_currentData objectForKeyedSubscript:@"modelConfidenceLevel"];
  [(NSMutableDictionary *)self->_analytics setObject:v25 forKeyedSubscript:@"modelConfidenceLevel"];

  [(NSMutableDictionary *)self->_analytics setObject:0 forKeyedSubscript:@"transientDisabledDate"];
  [(NSMutableDictionary *)self->_analytics setObject:0 forKeyedSubscript:@"disabledDate"];
  [(NSMutableDictionary *)self->_analytics setObject:&off_10009B670 forKeyedSubscript:@"interruptionCount"];
  if (+[OSIntelligenceUtilities isDeviceRarelyUsedRecently])
  {
    v26 = @"mostly idle";
  }

  else
  {
    v26 = @"rarely idle";
  }

  [(NSMutableDictionary *)self->_analytics setObject:v26 forKeyedSubscript:@"deviceIdleFrequency"];
  v27 = [NSNumber numberWithInt:[(OSIAmbientLightMonitor *)self->_lightMonitor currentAmbientLightLevel]];
  [(NSMutableDictionary *)self->_analytics setObject:v27 forKeyedSubscript:@"startLuxValue"];

  v28 = [(TRIClient *)self->_trialClient levelForFactor:@"stationaryLookback" withNamespaceName:self->_trialNamespace];
  [v28 doubleValue];
  v30 = v29;

  [(OSIMotionMonitor *)self->_motionMonitor percentStationaryOverDuration:v30];
  v31 = [NSNumber numberWithDouble:?];
  [(NSMutableDictionary *)self->_analytics setObject:v31 forKeyedSubscript:@"startMotionValue"];

  currentData = self->_currentData;
  self->_currentData = 0;

  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"currentData"];
LABEL_19:
  v33 = +[OSIntelligenceAnalyticsManager log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [NSNumber numberWithUnsignedLongLong:a3];
    v35 = self->_analytics;
    v37 = 138412546;
    v38 = v34;
    v39 = 2112;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SPN state %@ - analytics is %@", &v37, 0x16u);
  }

  v36 = self->_analytics;
  if (v36)
  {
    [(NSUserDefaults *)self->_defaults setObject:v36 forKey:@"analytics"];
  }
}

- (void)queryHistoricalInactivityState
{
  v3 = +[NSDate now];
  v4 = [v3 dateByAddingTimeInterval:-3600.0];
  v5 = [v3 dateByAddingTimeInterval:-88200.0];
  v6 = [v3 dateByAddingTimeInterval:-84600.0];
  v7 = +[_OSLockHistory sharedInstance];
  v8 = [v7 unlockEventsIntersectingDateRangeFrom:v5 to:v6];
  [OSIntelligenceUtilities sumDurationsOfEvents:v8 intersectingDateRangeFrom:v5 to:v6];
  v10 = v9;
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
  [(NSMutableDictionary *)self->_analytics setObject:v11 forKeyedSubscript:@"activityCountYesterday"];

  v12 = [NSNumber numberWithDouble:v10];
  [(NSMutableDictionary *)self->_analytics setObject:v12 forKeyedSubscript:@"activityDurationYesterday"];

  v13 = +[OSIntelligenceAnalyticsManager log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v22 = [NSNumber numberWithDouble:v10];
    *buf = 138413058;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v23;
    v30 = 2112;
    v31 = v22;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Activity yesterday same hour (%@ - %@) count = %@, cumulative duration = %@.", buf, 0x2Au);
  }

  v14 = [v7 unlockEventsIntersectingDateRangeFrom:v4 to:v3];
  [OSIntelligenceUtilities sumDurationsOfEvents:v14 intersectingDateRangeFrom:v4 to:v3];
  v16 = v15;
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
  [(NSMutableDictionary *)self->_analytics setObject:v17 forKeyedSubscript:@"activityCountLastHour"];

  v18 = [NSNumber numberWithDouble:v16];
  [(NSMutableDictionary *)self->_analytics setObject:v18 forKeyedSubscript:@"activityDurationLastHour"];

  v19 = +[OSIntelligenceAnalyticsManager log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
    v21 = [NSNumber numberWithDouble:v16];
    *buf = 138413058;
    v25 = v4;
    v26 = 2112;
    v27 = v3;
    v28 = 2112;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Activity last hour (%@ - %@) count = %@, cumulative duration = %@.", buf, 0x2Au);
  }
}

- (void)saveNextAlarmInterval:(id)a3 nextDNDInterval:(id)a4 predictionInterval:(id)a5 recommendedWait:(id)a6 deadlineSetter:(id)a7 modelConfidenceLevel:(int64_t)a8 withPredictor:(id)a9
{
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  currentData = self->_currentData;
  if (currentData)
  {
    v23 = currentData;
  }

  else
  {
    v23 = +[NSMutableDictionary dictionary];
  }

  v24 = self->_currentData;
  self->_currentData = v23;

  [(NSMutableDictionary *)self->_currentData setObject:v21 forKeyedSubscript:@"nextAlarmInterval"];
  [(NSMutableDictionary *)self->_currentData setObject:v20 forKeyedSubscript:@"nextDNDInterval"];

  [(NSMutableDictionary *)self->_currentData setObject:v19 forKeyedSubscript:@"prediction"];
  [(NSMutableDictionary *)self->_currentData setObject:v18 forKeyedSubscript:@"recommendedWait"];

  v25 = [v16 predictorType];
  [(NSMutableDictionary *)self->_currentData setObject:v25 forKeyedSubscript:@"predictorType"];

  v26 = [v16 queryingMechanism];
  [(NSMutableDictionary *)self->_currentData setObject:v26 forKeyedSubscript:@"queryingMechanism"];

  [v16 longThreshold];
  v27 = [NSNumber numberWithDouble:?];
  [(NSMutableDictionary *)self->_currentData setObject:v27 forKeyedSubscript:@"longThreshold"];

  v28 = [v16 modelVersion];

  [(NSMutableDictionary *)self->_currentData setObject:v28 forKeyedSubscript:@"modelVersion"];
  [(NSMutableDictionary *)self->_currentData setObject:v17 forKeyedSubscript:@"deadlineSetter"];

  v29 = [NSNumber numberWithInteger:a8];
  [(NSMutableDictionary *)self->_currentData setObject:v29 forKeyedSubscript:@"modelConfidenceLevel"];

  [(NSUserDefaults *)self->_defaults setObject:self->_currentData forKey:@"currentData"];
  v30 = +[OSIntelligenceAnalyticsManager log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = self->_currentData;
    v32 = 138412290;
    v33 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Saving prediction state %@", &v32, 0xCu);
  }

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)handleNewInterruptNotificationStart:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSDate now];
  [v5 timeIntervalSinceReferenceDate];
  p_analytics = &self->_analytics;
  analytics = self->_analytics;
  if (!v3)
  {
    v18 = v6;
    v19 = [(NSMutableDictionary *)analytics objectForKeyedSubscript:@"interruption"];

    if (!v19)
    {
      goto LABEL_67;
    }

    v12 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"interruption"];
    v20 = [v12 objectForKeyedSubscript:@"interruptStartInterval"];

    if (!v20)
    {
      v41 = +[OSIntelligenceAnalyticsManager log];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10005CFD8(v41);
      }

      goto LABEL_66;
    }

    v21 = +[NSMutableDictionary dictionary];
    v22 = [v12 objectForKeyedSubscript:@"interruptStartInterval"];
    [v22 doubleValue];
    v24 = v23;

    v25 = [NSNumber numberWithDouble:v18 - v24];
    [v21 setObject:v25 forKeyedSubscript:@"interruptionDuration"];

    v26 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"recommendedWait"];
    v27 = v26;
    v28 = &off_10009B688;
    if (v26)
    {
      v28 = v26;
    }

    v29 = v28;

    [v29 doubleValue];
    v31 = v30;

    v32 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"enabledDate"];
    v33 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"prediction"];
    v111 = v32;
    if (v32)
    {
      [v32 doubleValue];
      v35 = v34 - v31;
      v36 = (v24 - (v34 - v31)) / 3600.0;
      v37 = v36;
      *&v36 = v37;
      v38 = [NSNumber numberWithFloat:v36];
      [v21 setObject:v38 forKeyedSubscript:@"intrTimeSinceInactivityStart"];

      if (v33)
      {
        [v33 doubleValue];
        *&v39 = v37 / ((v39 - v35) / 3600.0);
        if (*&v39 >= 0.0)
        {
          v40 = [NSNumber numberWithFloat:?];
          [v21 setObject:v40 forKeyedSubscript:@"intrPctInSession"];
        }

        else
        {
          v40 = +[OSIntelligenceAnalyticsManager log];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_10005CF5C(&self->_analytics, v40);
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      [v21 setObject:&off_10009B6A0 forKeyedSubscript:@"intrTimeSinceInactivityStart"];
      if (v33)
      {
LABEL_24:
        [v33 doubleValue];
        v44 = (v43 - v24) / 3600.0;
        *&v44 = v44;
        v45 = [NSNumber numberWithFloat:v44];
        [v21 setObject:v45 forKeyedSubscript:@"intrTimeUntilPredictionEnd"];

        goto LABEL_25;
      }
    }

    [v21 setObject:&off_10009B6A0 forKeyedSubscript:@"intrTimeUntilPredictionEnd"];
LABEL_25:
    v110 = v33;
    v46 = [v12 objectForKeyedSubscript:@"intrLuxValue"];
    if (v46)
    {
      v47 = [v12 objectForKeyedSubscript:@"intrLuxValue"];
      v48 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v47 intValue]);
      [v21 setObject:v48 forKeyedSubscript:@"intrLuxValue"];
    }

    else
    {
      [v21 setObject:&off_10009B6A0 forKeyedSubscript:@"intrLuxValue"];
    }

    v49 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"nextAlarmInterval"];

    if (v49)
    {
      v50 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"nextAlarmInterval"];
      [v50 doubleValue];
      v52 = v51;

      v53 = (v52 - v24) / 3600.0;
      *&v53 = v53;
      v54 = [NSNumber numberWithFloat:v53];
      [v21 setObject:v54 forKeyedSubscript:@"intrTimeUntilNextAlarm"];
    }

    else
    {
      [v21 setObject:&off_10009B6A0 forKeyedSubscript:@"intrTimeUntilNextAlarm"];
    }

    v55 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"nextDNDInterval"];
    v109 = v55;
    if (v55)
    {
      [v55 doubleValue];
      v57 = (v56 - v24) / 3600.0;
      *&v57 = v57;
      v58 = [NSNumber numberWithFloat:v57];
      [v21 setObject:v58 forKeyedSubscript:@"intrTimeUntilEndOfDnd"];
    }

    else
    {
      [v21 setObject:&off_10009B6A0 forKeyedSubscript:@"intrTimeUntilEndOfDnd"];
    }

    v59 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"activityCountYesterday", v12];
    v60 = v59;
    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = &off_10009B6A0;
    }

    [v21 setObject:v61 forKeyedSubscript:@"intrActivityCountYesterdaySameHour"];

    v62 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"activityDurationYesterday"];
    v63 = v62;
    if (v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = &off_10009B6A0;
    }

    [v21 setObject:v64 forKeyedSubscript:@"intrActivityDurationYesterdaySameHour"];

    v65 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"activityCountLastHour"];
    v66 = v65;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = &off_10009B6A0;
    }

    [v21 setObject:v67 forKeyedSubscript:@"intrActivityCountLastHour"];

    v68 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"activityDurationLastHour"];
    v69 = v68;
    if (v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = &off_10009B6A0;
    }

    [v21 setObject:v70 forKeyedSubscript:@"intrActivityDurationLastHour"];

    v71 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"predictorType"];
    [v21 setObject:v71 forKeyedSubscript:@"predictorType"];

    v72 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"longThreshold"];
    [v21 setObject:v72 forKeyedSubscript:@"longThreshold"];

    v73 = [(TRIClient *)self->_trialClient treatmentIdWithNamespaceName:self->_trialNamespace];
    v74 = [v73 description];

    if (v74)
    {
      v75 = v74;
    }

    else
    {
      v75 = @"None";
    }

    [v21 setObject:v75 forKeyedSubscript:@"treatmentId"];
    v76 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:self->_trialNamespace];
    v77 = [v76 description];

    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = @"None";
    }

    [v21 setObject:v78 forKeyedSubscript:@"rolloutId"];
    v79 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:self->_trialNamespace];
    v80 = [v79 description];

    v108 = v80;
    if (v80)
    {
      v81 = v80;
    }

    else
    {
      v81 = @"None";
    }

    [v21 setObject:v81 forKeyedSubscript:@"experimentId"];
    v82 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"interruptionCount"];
    [v21 setObject:v82 forKeyedSubscript:@"interruptionIndex"];

    v83 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"modelVersion"];
    v84 = v83;
    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = @"None";
    }

    [v21 setObject:v85 forKeyedSubscript:@"modelVersion"];

    [v21 setObject:@"ospredictiond" forKeyedSubscript:@"processName"];
    v86 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"deviceIdleFrequency"];
    [v21 setObject:v86 forKeyedSubscript:@"deviceIdleFrequency"];

    v87 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"queryingMechanism"];
    [v21 setObject:v87 forKeyedSubscript:@"queryType"];

    v88 = +[NSMutableDictionary dictionary];
    v89 = [v21 objectForKeyedSubscript:@"interruptionDuration"];
    [v88 setObject:v89 forKeyedSubscript:@"interruptionDuration"];

    v90 = [v21 objectForKeyedSubscript:@"intrLuxValue"];
    [v88 setObject:v90 forKeyedSubscript:@"intrLuxValue"];

    v91 = [v21 objectForKeyedSubscript:@"intrTimeUntilNextAlarm"];
    [v91 doubleValue];
    v93 = [NSNumber numberWithDouble:round(v92)];
    [v88 setObject:v93 forKeyedSubscript:@"intrTimeUntilNextAlarm"];

    v94 = [v21 objectForKeyedSubscript:@"intrTimeUntilEndOfDnd"];
    [v94 doubleValue];
    v96 = [NSNumber numberWithDouble:round(v95)];
    [v88 setObject:v96 forKeyedSubscript:@"intrTimeUntilEndOfDnd"];

    v97 = [v21 objectForKeyedSubscript:@"intrActivityDurationYesterdaySameHour"];
    [v88 setObject:v97 forKeyedSubscript:@"intrActivityDurationYesterdaySameHour"];

    v98 = [v21 objectForKeyedSubscript:@"intrActivityDurationLastHour"];
    [v88 setObject:v98 forKeyedSubscript:@"intrActivityDurationLastHour"];

    v99 = [v21 objectForKeyedSubscript:@"intrActivityCountYesterdaySameHour"];
    [v88 setObject:v99 forKeyedSubscript:@"intrActivityCountYesterdaySameHour"];

    v100 = [v21 objectForKeyedSubscript:@"intrActivityCountLastHour"];
    [v88 setObject:v100 forKeyedSubscript:@"intrActivityCountLastHour"];

    v101 = [v21 objectForKeyedSubscript:@"deviceIdleFrequency"];
    if ([v101 isEqualToString:@"rarely idle"])
    {
      v102 = &off_10009B670;
    }

    else
    {
      v102 = &off_10009B6B8;
    }

    [v88 setObject:v102 forKeyedSubscript:@"deviceIdleFrequency"];

    v41 = v21;
    AnalyticsSendEventLazy();
    v103 = [v88 copy];
    PLLogRegisteredEvent();

    v104 = +[OSIntelligenceAnalyticsManager log];
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = *p_analytics;
      *buf = 138412546;
      v113 = v41;
      v114 = 2112;
      v115 = v105;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Logging CA %@ from %@", buf, 0x16u);
    }

    v106 = [objc_opt_class() logWithCategory:@"powerlog"];
    v12 = v107;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v113 = v88;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Logging to Power Log: %@", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_analytics setObject:0 forKeyedSubscript:@"interruption"];
    [(NSUserDefaults *)self->_defaults setObject:self->_analytics forKey:@"analytics"];

    goto LABEL_66;
  }

  v9 = [(NSMutableDictionary *)analytics objectForKeyedSubscript:@"enabledDate"];
  if (v9)
  {
    v10 = v9;
    v11 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"interruption"];

    if (!v11)
    {
      v12 = +[NSMutableDictionary dictionary];
      [v5 timeIntervalSinceReferenceDate];
      v13 = [NSNumber numberWithDouble:?];
      [v12 setObject:v13 forKeyedSubscript:@"interruptStartInterval"];

      v14 = [NSNumber numberWithInt:[(OSIAmbientLightMonitor *)self->_lightMonitor currentAmbientLightLevel]];
      [v12 setObject:v14 forKeyedSubscript:@"intrLuxValue"];

      [(NSMutableDictionary *)self->_analytics setObject:v12 forKeyedSubscript:@"interruption"];
      v15 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"interruptionCount"];
      if (v15)
      {
        v16 = [(NSMutableDictionary *)*p_analytics objectForKeyedSubscript:@"interruptionCount"];
        v17 = [v16 intValue] + 1;
      }

      else
      {
        v17 = 1;
      }

      v42 = [NSNumber numberWithInt:v17];
      [(NSMutableDictionary *)self->_analytics setObject:v42 forKeyedSubscript:@"interruptionCount"];

      [(NSUserDefaults *)self->_defaults setObject:self->_analytics forKey:@"interruption"];
      [(OSIntelligenceAnalyticsManager *)self queryHistoricalInactivityState];
      v41 = +[OSIntelligenceAnalyticsManager log];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v113 = v12;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Start interrupt with interrupt states %@", buf, 0xCu);
      }

LABEL_66:
    }
  }

LABEL_67:
}

- (void)handleNewExitState
{
  v3 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"prediction"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v5 timeIntervalSinceNow];
    v7 = v6;
    v8 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"enabledDate"];

    if (v8)
    {
      v9 = +[NSMutableDictionary dictionary];
      [v9 setObject:&off_10009B670 forKeyedSubscript:@"suppressedDurationWithAlarm"];
      [v9 setObject:&off_10009B670 forKeyedSubscript:@"suppressedDurationWithDND"];
      [v9 setObject:&off_10009B670 forKeyedSubscript:@"suppressedDurationWithNoSignal"];
      v10 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"deadlineSetter"];
      [v9 setObject:v10 forKeyedSubscript:@"deadlineSetter"];

      v11 = [NSNumber numberWithBool:v7 > 0.0];
      [v9 setObject:v11 forKeyedSubscript:@"overPredicted"];

      v12 = [NSNumber numberWithInt:v7 <= 0.0];
      [v9 setObject:v12 forKeyedSubscript:@"underPredicted"];

      [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"overPredictedWithAlarm"];
      [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"overPredictedWithDND"];
      [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"overPredictedWithNoSignal"];
      v13 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"predictorType"];
      [v9 setObject:v13 forKeyedSubscript:@"predictorType"];

      v14 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"queryingMechanism"];
      [v9 setObject:v14 forKeyedSubscript:@"queryType"];

      v15 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"longThreshold"];
      [v9 setObject:v15 forKeyedSubscript:@"longThreshold"];

      v16 = [(TRIClient *)self->_trialClient treatmentIdWithNamespaceName:self->_trialNamespace];
      v17 = [v16 description];

      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = @"None";
      }

      [v9 setObject:v18 forKeyedSubscript:@"treatmentId"];
      v19 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:self->_trialNamespace];
      v20 = [v19 description];

      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = @"None";
      }

      [v9 setObject:v21 forKeyedSubscript:@"rolloutId"];
      v22 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:self->_trialNamespace];
      v23 = [v22 description];

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = @"None";
      }

      [v9 setObject:v24 forKeyedSubscript:@"experimentId"];
      v25 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"modelConfidenceLevel"];
      [v9 setObject:v25 forKeyedSubscript:@"modelConfidenceLevel"];

      v26 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"startLuxValue"];
      if (v26)
      {
        v27 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"startLuxValue"];
        v28 = [v27 intValue];
      }

      else
      {
        v28 = 0xFFFFFFFFLL;
      }

      v29 = [NSNumber numberWithInt:v28];
      [v9 setObject:v29 forKeyedSubscript:@"entryAmbientLightLevel"];

      v30 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"startMotionValue"];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = &off_10009B6A0;
      }

      [v9 setObject:v32 forKeyedSubscript:{@"entryStationaryLevel", v5}];

      v33 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"recommendedWait"];
      [v9 setObject:v33 forKeyedSubscript:@"eligibleTimeout"];

      v34 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"deviceIdleFrequency"];
      [v9 setObject:v34 forKeyedSubscript:@"deviceIdleFrequency"];

      v35 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"recommendedWait"];
      [v9 setObject:v35 forKeyedSubscript:@"eligibleTimeout"];

      v36 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"modelVersion"];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = @"None";
      }

      [v9 setObject:v38 forKeyedSubscript:@"modelVersion"];

      [v9 setObject:@"ospredictiond" forKeyedSubscript:@"processName"];
      v39 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"enabledDate"];
      [v39 doubleValue];
      v41 = v40;

      v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:v41];
      [v42 timeIntervalSinceNow];
      v44 = v43 / -3600.0;
      v45 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"nextAlarmInterval"];

      if (v45)
      {
        *&v46 = v44;
        v47 = [NSNumber numberWithFloat:v46];
        [v9 setObject:v47 forKeyedSubscript:@"suppressedDurationWithAlarm"];
        v48 = @"overPredictedWithAlarm";
      }

      else
      {
        v49 = [(NSMutableDictionary *)self->_analytics objectForKeyedSubscript:@"nextDNDInterval"];

        *&v50 = v44;
        v47 = [NSNumber numberWithFloat:v50];
        if (v49)
        {
          [v9 setObject:v47 forKeyedSubscript:@"suppressedDurationWithDND"];
          v48 = @"overPredictedWithDND";
        }

        else
        {
          [v9 setObject:v47 forKeyedSubscript:@"suppressedDurationWithNoSignal"];
          v48 = @"overPredictedWithNoSignal";
        }
      }

      v51 = [NSNumber numberWithBool:v7 > 0.0];
      [v9 setObject:v51 forKeyedSubscript:v48];

      v52 = +[OSIntelligenceAnalyticsManager log];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v9;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Logging SPN Exit Metrics %@", buf, 0xCu);
      }

      v55 = v9;
      v53 = v9;
      AnalyticsSendEventLazy();

      v5 = v54;
    }

    else
    {
      v23 = +[OSIntelligenceAnalyticsManager log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005D01C(v23);
      }
    }
  }
}

+ (int)bucketLuxValue:(int)a3
{
  if (a3 < 0x3D)
  {
    v3 = 6;
  }

  else
  {
    v3 = 7;
  }

  if (a3 >= 0x29)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a3 >= 0x15)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  if (a3 >= 0xB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (a3 >= 6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a3 >= 0)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

@end