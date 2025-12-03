@interface HRCArbiterAlgorithms
- (HRCArbiterAlgorithms)initWithDelegate:(id)delegate onQueue:(id)queue forceFitNotification:(BOOL)notification fitNotificationThreshold:(id)threshold fitNotificationMinDuration:(id)duration fitNotificationMinHrCount:(id)count analyticsReporter:(id)reporter;
- (HRCArbiterAlgorithms)initWithDelegate:(id)delegate onQueue:(id)queue processingQueue:(id)processingQueue forceFitNotification:(BOOL)notification fitNotificationThreshold:(id)threshold fitNotificationMinDuration:(id)duration fitNotificationMinHrCount:(id)count analyticsReporter:(id)self0;
- (HRCArbiterAlgorithmsDelegate)delegate;
- (id).cxx_construct;
- (void)_arbitrateHeartRate:(id)rate;
- (void)_cleanupStaleSources;
- (void)_disableUserFitComputation;
- (void)_enableUserFitComputation;
- (void)_handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count;
- (void)_handleHeartRateOutput:(HrArbOut *)output;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)_handleStreamingModeUpdate:(unint64_t)update;
- (void)_handleWorkoutActivityTypeUpdate:(unint64_t)update;
- (void)_updateSourceList:(const HRCSourceUpdate *)list;
- (void)arbitrateHeartRate:(id)rate;
- (void)handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count;
- (void)handleHeartRateOutput:(HrArbOut *)output;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)handleStreamingModeUpdate:(unint64_t)update;
- (void)handleWorkoutActivityTypeUpdate:(unint64_t)update;
@end

@implementation HRCArbiterAlgorithms

- (HRCArbiterAlgorithms)initWithDelegate:(id)delegate onQueue:(id)queue forceFitNotification:(BOOL)notification fitNotificationThreshold:(id)threshold fitNotificationMinDuration:(id)duration fitNotificationMinHrCount:(id)count analyticsReporter:(id)reporter
{
  notificationCopy = notification;
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  reporterCopy = reporter;
  countCopy = count;
  durationCopy = duration;
  thresholdCopy = threshold;
  queueCopy = queue;
  delegateCopy = delegate;
  v21 = dispatch_queue_create("com.apple.heartratecoordinator.algorithms", v14);

  v22 = [(HRCArbiterAlgorithms *)self initWithDelegate:delegateCopy onQueue:queueCopy processingQueue:v21 forceFitNotification:notificationCopy fitNotificationThreshold:thresholdCopy fitNotificationMinDuration:durationCopy fitNotificationMinHrCount:countCopy analyticsReporter:reporterCopy];
  return v22;
}

- (HRCArbiterAlgorithms)initWithDelegate:(id)delegate onQueue:(id)queue processingQueue:(id)processingQueue forceFitNotification:(BOOL)notification fitNotificationThreshold:(id)threshold fitNotificationMinDuration:(id)duration fitNotificationMinHrCount:(id)count analyticsReporter:(id)self0
{
  delegateCopy = delegate;
  queueCopy = queue;
  processingQueueCopy = processingQueue;
  thresholdCopy = threshold;
  countCopy = count;
  reporterCopy = reporter;
  v34.receiver = self;
  v34.super_class = HRCArbiterAlgorithms;
  v20 = [(HRCArbiterAlgorithms *)&v34 init];
  objc_storeWeak(&v20->_delegate, delegateCopy);
  objc_storeStrong(&v20->_delegateQueue, queue);
  objc_storeStrong(&v20->_analyticsReporter, reporter);
  objc_storeStrong(&v20->_processingQueue, processingQueue);
  processingQueue = v20->_processingQueue;
  if (processingQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C8B0;
    block[3] = &unk_100040FB8;
    v22 = v20;
    v30 = v22;
    notificationCopy = notification;
    v31 = thresholdCopy;
    v32 = countCopy;
    dispatch_sync(processingQueue, block);
    v23 = sub_100024BD4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "HRCArbiterAlgorithms init", buf, 2u);
    }

    v24 = v22;
    p_super = &v30->super;
  }

  else
  {
    p_super = sub_100024BD4();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      sub_10001F830(p_super);
    }

    v24 = 0;
  }

  return v24;
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)update
{
  v5 = update->var0;
  var1 = update->var1;
  v7 = update->var2;
  v8 = update->var3;
  v9 = *&update->var4;
  processingQueue = self->_processingQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_10001CA68;
  v14[3] = &unk_100040D78;
  v14[4] = self;
  v15 = v5;
  v16 = var1;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v5;
  dispatch_async(processingQueue, v14);
}

- (void)arbitrateHeartRate:(id)rate
{
  rateCopy = rate;
  processingQueue = self->_processingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CB40;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = rateCopy;
  v6 = rateCopy;
  dispatch_async(processingQueue, v7);
}

- (void)handleStreamingModeUpdate:(unint64_t)update
{
  processingQueue = self->_processingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001CBC0;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = update;
  dispatch_async(processingQueue, v4);
}

- (void)handleWorkoutActivityTypeUpdate:(unint64_t)update
{
  processingQueue = self->_processingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001CC40;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = update;
  dispatch_async(processingQueue, v4);
}

- (void)handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count
{
  processingQueue = self->_processingQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001CCC8;
  v5[3] = &unk_100040840;
  v5[4] = self;
  thresholdCopy = threshold;
  countCopy = count;
  dispatch_async(processingQueue, v5);
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = sub_100024BD4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    var0 = update->var0;
    var4 = update->var4;
    var5 = update->var5;
    var3 = update->var3;
    *buf = 138413058;
    *&buf[4] = var0;
    *&buf[12] = 1024;
    *&buf[14] = var4;
    *&buf[18] = 1024;
    *&buf[20] = var5;
    *&buf[24] = 2114;
    *&buf[26] = var3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "arbiter algs received source update with timestamp : %@ , sourceType : %d , streamingMode : %d , uuid : %{public}@", buf, 0x22u);
  }

  v10 = update->var4;
  if (v10 == 3)
  {
    goto LABEL_6;
  }

  if (v10 == 2)
  {
    v15 = 0;
LABEL_15:
    memset(&buf[8], 0, 24);
    buf[25] = v15;
    [update->var0 timeIntervalSince1970];
    *buf = (v16 * 1000000.0);
    [update->var3 getUUIDBytes:&buf[8]];
    v17 = update->var5;
    if (v17 == 3)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2 * (v17 == 2);
    }

    buf[24] = v18;
    *v21 = *&buf[1];
    *&v21[15] = *&buf[16];
    algsWrapper = self->_algsWrapper;
    v20 = buf[0];
    [(HRCArbiterAlgorithmsWrapper *)algsWrapper handleSourceUpdate:&v20];
    [(HRCArbiterAlgorithms *)self _updateSourceList:update];
    return;
  }

  if (update->var4)
  {
    v15 = 1;
    goto LABEL_15;
  }

LABEL_6:
  v11 = sub_100024BD4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67174657;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "no algs mapping for HRCSourceType : %{private}d", buf, 8u);
  }

  v12 = sub_100024BD4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = update->var4;
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "algs does not support sourceType : %d", buf, 8u);
  }

  v14 = sub_100024BD4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ignoring source update received in arbiter algs", buf, 2u);
  }
}

- (void)_arbitrateHeartRate:(id)rate
{
  rateCopy = rate;
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = sub_100024BD4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    timestamp = [rateCopy timestamp];
    [rateCopy heartRate];
    v7 = v6;
    confidence = [rateCopy confidence];
    hrContext = [rateCopy hrContext];
    uuid = [rateCopy uuid];
    confidenceLevel = [rateCopy confidenceLevel];
    arbitrationStatus = [rateCopy arbitrationStatus];
    sourceType = [rateCopy sourceType];
    streamingThrottleStatus = [rateCopy streamingThrottleStatus];
    timestamp2 = [rateCopy timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    *buf = 138545667;
    *&buf[4] = timestamp;
    *&buf[12] = 2053;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    *v43 = confidence;
    *&v43[8] = 2048;
    *&v43[10] = hrContext;
    *&v43[18] = 2113;
    *&v43[20] = uuid;
    *&v43[28] = 1024;
    *&v43[30] = confidenceLevel;
    v44 = 1024;
    v45 = arbitrationStatus;
    v46 = 1024;
    v47 = sourceType;
    v48 = 1024;
    v49 = streamingThrottleStatus;
    v50 = 2050;
    v51 = v15;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "arbiter algs received hr with timestamp : %{public}@ , heartRate : %{sensitive}f , confidence : %@ , context : %lu , uuid : %{private}@ , confidenceLevel : %d , arbitrationStatus : %d , sourceType : %d , streamingThrottleStatus : %d , secondsSinceReferenceDate : %{public}f ", buf, 0x56u);
  }

  sourceType2 = [rateCopy sourceType];
  if (sourceType2 <= 1)
  {
    if (sourceType2)
    {
      if (sourceType2 == 1)
      {
        algsWrapper = self->_algsWrapper;
        v18 = rateCopy;
        timestamp3 = [v18 timestamp];
        [timestamp3 timeIntervalSince1970];
        v21 = v20;

        memset(v43, 0, 24);
        *&buf[8] = 0u;
        *buf = (v21 * 1000000.0);
        deviceUuid = [v18 deviceUuid];
        [deviceUuid getUUIDBytes:&buf[8]];

        uuid2 = [v18 uuid];
        [uuid2 getUUIDBytes:v43];

        [v18 heartRate];
        v43[16] = v24;
        confidence2 = [v18 confidence];
        [confidence2 floatValue];
        v43[17] = (v26 * 255.0);

        v43[18] = [v18 sensorLocation];
        *&v43[20] = [v18 flags];

        [(HRCArbiterAlgorithmsWrapper *)algsWrapper handleAacpHr:buf];
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (sourceType2 == 2)
  {
    v30 = self->_algsWrapper;
    v31 = rateCopy;
    timestamp4 = [v31 timestamp];
    [timestamp4 timeIntervalSince1970];
    v34 = v33;

    memset(v43, 0, 32);
    *&buf[8] = 0u;
    *buf = (v34 * 1000000.0);
    deviceUuid2 = [v31 deviceUuid];
    [deviceUuid2 getUUIDBytes:&buf[8]];

    uuid3 = [v31 uuid];
    [uuid3 getUUIDBytes:v43];

    [v31 heartRate];
    *&v37 = v37;
    *&v43[16] = LODWORD(v37);
    confidence3 = [v31 confidence];
    [confidence3 floatValue];
    *&v43[20] = v39;

    v43[24] = [v31 confidenceLevel] == 2;
    v43[25] = [v31 streamingThrottleStatus] == 3;

    [(HRCArbiterAlgorithmsWrapper *)v30 handleWatchHr:buf];
    goto LABEL_13;
  }

  if (sourceType2 == 3)
  {
LABEL_9:
    v27 = sub_100024BD4();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sourceType3 = [rateCopy sourceType];
      uuid4 = [rateCopy uuid];
      sub_10001F874(sourceType3, uuid4, buf, v27);
    }
  }

LABEL_13:
}

- (void)_cleanupStaleSources
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v3 = +[NSDate date];
  begin = self->_sourceList.__begin_;
  end = self->_sourceList.__end_;
  v14 = v3;
  v15 = &v14;
  while (1)
  {
    if (begin == end)
    {
      begin = end;
      goto LABEL_6;
    }

    if (sub_10001F2F4(&v15, begin))
    {
      break;
    }

    ++begin;
  }

  if (begin != end)
  {
    for (i = begin + 1; i != end; ++i)
    {
      if (!sub_10001F2F4(&v15, i))
      {
        var0 = i->var0;
        i->var0 = 0;
        v8 = begin->var0;
        begin->var0 = var0;

        var1 = i->var1;
        var2 = i->var2;
        i->var2 = 0;
        v11 = begin->var2;
        begin->var1 = var1;
        begin->var2 = var2;

        var3 = i->var3;
        i->var3 = 0;
        v13 = begin->var3;
        begin->var3 = var3;

        *&begin->var4 = *&i->var4;
        ++begin;
      }
    }
  }

LABEL_6:
  sub_10001F16C(&self->_sourceList, begin, self->_sourceList.__end_);
}

- (void)_handleStreamingModeUpdate:(unint64_t)update
{
  dispatch_assert_queue_V2(self->_processingQueue);
  if (self->_currentStreamingMode != update)
  {
    if (!update)
    {
      analyticsReporter = self->_analyticsReporter;
      algsWrapper = self->_algsWrapper;
      if (algsWrapper)
      {
        [(HRCArbiterAlgorithmsWrapper *)algsWrapper retrieveAnalytics];
        v6 = v55;
      }

      else
      {
        v6 = 0;
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
      }

      lastComputationResult = self->_lastComputationResult;
      v61[0] = @"duration_s_watch";
      v54 = [NSNumber numberWithInt:v6];
      *&buf = v54;
      v61[1] = @"duration_s_bud";
      v52 = [NSNumber numberWithInt:DWORD1(v55)];
      *(&buf + 1) = v52;
      v61[2] = @"duration_s_dual_arbitration";
      v51 = [NSNumber numberWithInt:DWORD2(v55)];
      v63 = v51;
      v61[3] = @"packet_gap_bud_1p5s_percentage";
      v50 = [NSNumber numberWithChar:SBYTE12(v55)];
      v64 = v50;
      v61[4] = @"packet_gap_bud_5s_percentage";
      v49 = [NSNumber numberWithChar:SBYTE13(v55)];
      v65 = v49;
      v61[5] = @"packet_gap_bud_10s_percentage";
      v48 = [NSNumber numberWithChar:SBYTE14(v55)];
      v66 = v48;
      v61[6] = @"hr_10_percentile_watch";
      v47 = [NSNumber numberWithChar:SHIBYTE(v55)];
      v67 = v47;
      v61[7] = @"hr_10_percentile_bud";
      v46 = [NSNumber numberWithChar:v56];
      v68 = v46;
      v61[8] = @"hr_10_percentile_dual_arbitration";
      v45 = [NSNumber numberWithChar:SBYTE1(v56)];
      v69 = v45;
      v61[9] = @"hr_50_percentile_watch";
      v44 = [NSNumber numberWithChar:SBYTE2(v56)];
      v70 = v44;
      v61[10] = @"hr_50_percentile_bud";
      v43 = [NSNumber numberWithChar:SBYTE3(v56)];
      v71 = v43;
      v61[11] = @"hr_50_percentile_dual_arbitration";
      v42 = [NSNumber numberWithChar:SBYTE4(v56)];
      v72 = v42;
      v61[12] = @"hr_90_percentile_watch";
      v41 = [NSNumber numberWithChar:SBYTE5(v56)];
      v73 = v41;
      v61[13] = @"hr_90_percentile_bud";
      v40 = [NSNumber numberWithChar:SBYTE6(v56)];
      v74 = v40;
      v61[14] = @"hr_90_percentile_dual_arbitration";
      v39 = [NSNumber numberWithChar:SBYTE7(v56)];
      v75 = v39;
      v61[15] = @"no_report_percentage_dual_arbitration";
      v38 = [NSNumber numberWithChar:SBYTE8(v56)];
      v76 = v38;
      v61[16] = @"no_report_30s_percentage_watch";
      v37 = [NSNumber numberWithChar:SBYTE9(v56)];
      v77 = v37;
      v61[17] = @"no_report_30s_percentage_bud";
      v36 = [NSNumber numberWithChar:SBYTE10(v56)];
      v78 = v36;
      v61[18] = @"no_report_30s_percentage_dual_arbitration";
      v35 = [NSNumber numberWithChar:SBYTE11(v56)];
      v79 = v35;
      v61[19] = @"no_report_90s_percentage_watch";
      v34 = [NSNumber numberWithChar:SBYTE12(v56)];
      v80 = v34;
      v61[20] = @"no_report_90s_percentage_bud";
      v33 = [NSNumber numberWithChar:SBYTE13(v56)];
      v81 = v33;
      v61[21] = @"no_report_90s_percentage_dual_arbitration";
      v32 = [NSNumber numberWithChar:SBYTE14(v56)];
      v82 = v32;
      v61[22] = @"no_report_180s_percentage_watch";
      v31 = [NSNumber numberWithChar:SHIBYTE(v56)];
      v83 = v31;
      v61[23] = @"no_report_180s_percentage_bud";
      v30 = [NSNumber numberWithChar:v57];
      v84 = v30;
      v61[24] = @"no_report_180s_percentage_dual_arbitration";
      v29 = [NSNumber numberWithChar:SBYTE1(v57)];
      v85 = v29;
      v61[25] = @"no_report_300s_percentage_watch";
      v28 = [NSNumber numberWithChar:SBYTE2(v57)];
      v86 = v28;
      v61[26] = @"no_report_300s_percentage_bud";
      v27 = [NSNumber numberWithChar:SBYTE3(v57)];
      v87 = v27;
      v61[27] = @"no_report_300s_percentage_dual_arbitration";
      v53 = [NSNumber numberWithChar:SBYTE4(v57)];
      v88 = v53;
      v61[28] = @"dual_arbitration_bud_selection_percentage";
      v26 = [NSNumber numberWithChar:SBYTE5(v57)];
      v89 = v26;
      v61[29] = @"publishable_percentage_watch";
      v25 = [NSNumber numberWithChar:SBYTE6(v57)];
      v90 = v25;
      v61[30] = @"publishable_percentage_bud";
      v24 = [NSNumber numberWithChar:SBYTE7(v57)];
      v91 = v24;
      v61[31] = @"publishable_percentage_dual_arbitration";
      v23 = [NSNumber numberWithChar:SBYTE8(v57)];
      v92 = v23;
      v61[32] = @"from_session_start_to_first_confident_s_watch";
      v22 = [NSNumber numberWithInt:HIDWORD(v57)];
      v93 = v22;
      v61[33] = @"from_session_start_to_first_confident_s_bud";
      v21 = [NSNumber numberWithInt:v58];
      v94 = v21;
      v61[34] = @"from_session_start_to_first_confident_s_dual_arbitration";
      v20 = [NSNumber numberWithInt:DWORD1(v58)];
      v95 = v20;
      v61[35] = @"mean_time_between_timeouts_s_watch";
      v19 = [NSNumber numberWithInt:DWORD2(v58)];
      v96 = v19;
      v61[36] = @"mean_time_between_timeouts_s_bud";
      v18 = [NSNumber numberWithInt:HIDWORD(v58)];
      v97 = v18;
      v61[37] = @"mean_time_between_arbitration_single_dual_mode_changes";
      v8 = [NSNumber numberWithInt:v59];
      v98 = v8;
      v61[38] = @"mean_time_between_new_device_s_watch";
      v9 = [NSNumber numberWithInt:DWORD1(v59)];
      v99 = v9;
      v61[39] = @"mean_time_between_new_device_s_bud";
      v10 = [NSNumber numberWithInt:DWORD2(v59)];
      v100 = v10;
      v61[40] = @"mean_hr_jump_after_arbitration";
      v11 = [NSNumber numberWithShort:SWORD6(v59)];
      v101 = v11;
      v61[41] = @"max_hr_jump_after_arbitration";
      v12 = [NSNumber numberWithShort:SHIWORD(v59)];
      v102 = v12;
      v61[42] = @"mean_avg_confidence_diff_after_arbitration";
      v13 = [NSNumber numberWithChar:v60];
      v103 = v13;
      v61[43] = @"session_lead_to_notification";
      v14 = [NSNumber numberWithInt:lastComputationResult];
      v104 = v14;
      v16 = [NSDictionary dictionaryWithObjects:&buf forKeys:v61 count:44];

      [(HRCAnalyticsReporter *)analyticsReporter handleAlgsAnalytics:v16];
      [(HRCAnalyticsReporter *)self->_analyticsReporter finalizeComputation];
    }

    v15 = sub_100024BD4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = update;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "arbiter algs received streaming mode update : %lu", &buf, 0xCu);
    }

    if (update)
    {
      if (!self->_currentStreamingMode)
      {
        [(HRCArbiterAlgorithms *)self reset];
      }
    }

    self->_currentStreamingMode = update;
  }
}

- (void)_handleWorkoutActivityTypeUpdate:(unint64_t)update
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = sub_100024BD4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    updateCopy = update;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "HRCArbiterAlgorithms received workout activity update : %{public}lu", &v7, 0xCu);
  }

  workoutActivityType = self->_workoutActivityType;
  if (workoutActivityType != update)
  {
    self->_workoutActivityType = update;
    if (!update || !workoutActivityType)
    {
      if (update)
      {
        [(HRCArbiterAlgorithms *)self _enableUserFitComputation];
      }

      else
      {
        [(HRCArbiterAlgorithms *)self _disableUserFitComputation];
      }
    }
  }
}

- (void)_enableUserFitComputation
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v3 = sub_100024BD4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    notificationThreshold = self->_userFitParameters.notificationThreshold;
    minimumPacketCounts = self->_userFitParameters.minimumPacketCounts;
    forceFitNotification = self->_forceFitNotification;
    *buf = 134349568;
    v20 = notificationThreshold;
    v21 = 1026;
    v22 = minimumPacketCounts;
    v23 = 1026;
    v24 = forceFitNotification;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "enabling user fit computation with threshold : %{public}f , minHrCount : %{public}d forceNotification : %{BOOL, public}d", buf, 0x18u);
  }

  p_activeAacpSource = &self->_activeAacpSource;
  if (self->_activeAacpSource)
  {
    v8 = sub_100024BD4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      bluetoothIdentifier = [(HRCDevice *)*p_activeAacpSource bluetoothIdentifier];
      sub_10001F8E0(bluetoothIdentifier, buf, v8);
    }

    v10 = *p_activeAacpSource;
    *p_activeAacpSource = 0;
  }

  algsWrapper = [(HRCArbiterAlgorithms *)self algsWrapper];
  [algsWrapper enableUserFitComputation:&self->_userFitParameters];

  begin = self->_sourceList.__begin_;
  for (i = self->_sourceList.__end_; begin != i; ++begin)
  {
    if (begin->var4 == 1 && begin->var5 == 3)
    {
      objc_storeStrong(p_activeAacpSource, begin->var2);
      v15 = sub_100024BD4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        model = [(HRCDevice *)*p_activeAacpSource model];
        *v17 = 138543362;
        v18 = model;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "new active aacp source uuid : %{public}@", v17, 0xCu);
      }
    }
  }
}

- (void)_disableUserFitComputation
{
  dispatch_assert_queue_V2(self->_processingQueue);
  algsWrapper = [(HRCArbiterAlgorithms *)self algsWrapper];
  endUserFitComputation = [algsWrapper endUserFitComputation];

  self->_lastComputationResult = (self->_forceFitNotification | endUserFitComputation) & 1;
  activeAacpSource = self->_activeAacpSource;
  if (activeAacpSource)
  {
    bluetoothIdentifier = [(HRCDevice *)activeAacpSource bluetoothIdentifier];

    if (bluetoothIdentifier)
    {
      if ((self->_forceFitNotification | endUserFitComputation))
      {
        v7 = sub_100024BD4();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          bluetoothIdentifier2 = [(HRCDevice *)self->_activeAacpSource bluetoothIdentifier];
          *buf = 138543362;
          v17 = bluetoothIdentifier2;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "generating user fit notification for device with bluetooth identifier : %{public}@", buf, 0xCu);
        }

        bluetoothIdentifier3 = [(HRCDevice *)self->_activeAacpSource bluetoothIdentifier];
        delegateQueue = self->_delegateQueue;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001E698;
        v14[3] = &unk_100040BC8;
        v14[4] = self;
        v15 = bluetoothIdentifier3;
        v11 = bluetoothIdentifier3;
        dispatch_async(delegateQueue, v14);
      }
    }

    else
    {
      v13 = sub_100024BD4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_10001F938(v13);
      }
    }

    v12 = self->_activeAacpSource;
    self->_activeAacpSource = 0;
  }

  else
  {
    v12 = sub_100024BD4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "no aacp streaming source was active for the duration of the workout", buf, 2u);
    }
  }
}

- (void)_updateSourceList:(const HRCSourceUpdate *)list
{
  dispatch_assert_queue_V2(self->_processingQueue);
  if (list->var4 == 1 && list->var5 == 3)
  {
    objc_storeStrong(&self->_activeAacpSource, list->var2);
  }

  begin = self->_sourceList.__begin_;
  end = self->_sourceList.__end_;
  if (begin != end)
  {
    while (([begin->var3 isEqual:list->var3] & 1) == 0)
    {
      if (++begin == end)
      {
        begin = end;
        break;
      }
    }

    end = self->_sourceList.__end_;
  }

  if (begin == end)
  {
    if (!list->var5)
    {
      v9 = sub_100024BD4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        var3 = list->var3;
        var5 = list->var5;
        var4 = list->var4;
        var0 = list->var0;
        v19 = 138544130;
        v20 = var3;
        v21 = 1026;
        v22 = var5;
        v23 = 1026;
        v24 = var4;
        v25 = 2114;
        v26 = var0;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "HRCArbiterAlgorithms unexpected source update with deviceUUID : %{public}@ , mode : %{public}d, sourceType : %{public}d , timestamp : %{public}@", &v19, 0x22u);
      }

      end = self->_sourceList.__end_;
    }

    if (end >= self->_sourceList.__cap_)
    {
      v10 = sub_10001F424(&self->_sourceList, list);
    }

    else
    {
      end->var0 = list->var0;
      end->var1 = list->var1;
      end->var2 = list->var2;
      end->var3 = list->var3;
      *&end->var4 = *&list->var4;
      v10 = end + 1;
    }

    self->_sourceList.__end_ = v10;
  }

  else
  {
    if (begin->var5 == list->var5)
    {
      v8 = sub_100024BD4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v11 = list->var3;
        v12 = list->var5;
        v13 = list->var4;
        v14 = list->var0;
        v19 = 138544130;
        v20 = v11;
        v21 = 1026;
        v22 = v12;
        v23 = 1026;
        v24 = v13;
        v25 = 2114;
        v26 = v14;
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "HRCArbiterAlgorithms received duplicate source update with deviceUUID : %{public}@ , mode : %{public}d, sourceType : %{public}d , timestamp : %{public}@", &v19, 0x22u);
      }
    }

    objc_storeStrong(&begin->var0, list->var0);
    begin->var1 = list->var1;
    objc_storeStrong(&begin->var2, list->var2);
    objc_storeStrong(&begin->var3, list->var3);
    *&begin->var4 = *&list->var4;
  }
}

- (void)_handleHeartRateOutput:(HrArbOut *)output
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = [[NSUUID alloc] initWithUUIDBytes:output->var1];
  begin = self->_sourceList.__begin_;
  end = self->_sourceList.__end_;
  if (begin != end)
  {
    while (([begin->var3 isEqual:v5] & 1) == 0)
    {
      if (++begin == end)
      {
        begin = end;
        break;
      }
    }

    end = self->_sourceList.__end_;
  }

  if (begin == end)
  {
    v29 = sub_100024BD4();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_10001F97C(v5, v29);
    }
  }

  else
  {
    var0 = output->var0.var0.var0;
    v9 = [HRCHeartRateData alloc];
    var4 = output->var4;
    *&v10 = output->var5;
    v12 = [NSNumber numberWithFloat:v10];
    if (output->var6)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = [NSDate dateWithTimeIntervalSince1970:var0 / 1000000.0];
    v15 = [[NSUUID alloc] initWithUUIDBytes:output->var2];
    v16 = v15;
    if (output->var8)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    HIDWORD(v31) = output->var7;
    LOBYTE(v31) = 0;
    BYTE1(v30) = v17;
    LOBYTE(v30) = begin->var4;
    v18 = [v9 initWithHeartRate:v12 confidence:v13 confidenceLevel:2 arbitrationStatus:2 context:2 hrContext:v14 timestamp:var4 sampleUuid:v15 sourceType:v30 streamingThrottleStatus:begin->var3 deviceUuid:begin->var2 device:v31 sensorLocation:? flags:?];

    v19 = sub_100024BD4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      timestamp = [v18 timestamp];
      [v18 heartRate];
      v21 = v20;
      confidence = [v18 confidence];
      hrContext = [v18 hrContext];
      uuid = [v18 uuid];
      confidenceLevel = [v18 confidenceLevel];
      arbitrationStatus = [v18 arbitrationStatus];
      sourceType = [v18 sourceType];
      streamingThrottleStatus = [v18 streamingThrottleStatus];
      timestamp2 = [v18 timestamp];
      [timestamp2 timeIntervalSinceReferenceDate];
      *buf = 138546179;
      v39 = timestamp;
      v40 = 2053;
      v41 = v21;
      v42 = 2112;
      v43 = confidence;
      v44 = 2048;
      v45 = hrContext;
      v46 = 2113;
      v47 = uuid;
      v48 = 1024;
      v49 = confidenceLevel;
      v50 = 1024;
      v51 = arbitrationStatus;
      v52 = 1024;
      v53 = sourceType;
      v54 = 1024;
      v55 = streamingThrottleStatus;
      v56 = 2050;
      v57 = v27;
      v58 = 1024;
      sensorLocation = [v18 sensorLocation];
      v60 = 1024;
      flags = [v18 flags];
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "algs sending hr with timestamp : %{public}@ , heartRate : %{sensitive}f , confidence : %@ , context : %lu , uuid : %{private}@ , confidenceLevel : %d , arbitrationStatus : %d , sourceType : %d , streamingThrottleStatus : %d , secondsSinceReferenceDate : %{public}f , location : %d , flags : %d", buf, 0x62u);
    }

    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EDF4;
    block[3] = &unk_100040BC8;
    block[4] = self;
    v37 = v18;
    v29 = v18;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v7 = sub_100024BD4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    notificationThreshold = self->_userFitParameters.notificationThreshold;
    minimumPacketCounts = self->_userFitParameters.minimumPacketCounts;
    v13 = 134218752;
    thresholdCopy2 = threshold;
    v15 = 1024;
    countCopy2 = count;
    v17 = 2048;
    v18 = notificationThreshold;
    v19 = 1024;
    v20 = minimumPacketCounts;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Got fit notification parameter update: %f %d (was %f %d)", &v13, 0x22u);
  }

  p_userFitParameters = &self->_userFitParameters;
  if (self->_userFitParameters.notificationThreshold != threshold || self->_userFitParameters.minimumPacketCounts != count)
  {
    v9 = sub_100024BD4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134349312;
      thresholdCopy2 = threshold;
      v15 = 1026;
      countCopy2 = count;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating fit notification parameters to %{public}f %{public}u", &v13, 0x12u);
    }

    self->_userFitParameters.notificationThreshold = threshold;
    self->_userFitParameters.minimumPacketCounts = count;
    algsWrapper = [(HRCArbiterAlgorithms *)self algsWrapper];
    [algsWrapper enableUserFitComputation:p_userFitParameters];
  }
}

- (void)handleHeartRateOutput:(HrArbOut *)output
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = *&output->var1[8];
  v7[0] = *&output->var0.var0.var0;
  v7[1] = v5;
  v6 = *&output->var5;
  v7[2] = *&output->var2[8];
  v7[3] = v6;
  [(HRCArbiterAlgorithms *)self _handleHeartRateOutput:v7];
}

- (HRCArbiterAlgorithmsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 84) = 0x12C3E99999ALL;
  return self;
}

@end