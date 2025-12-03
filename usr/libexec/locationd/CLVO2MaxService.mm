@interface CLVO2MaxService
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)updateRetrocomputeLastTimestampToHealthKit:(double)kit;
- (BOOL)validateBodyMetrics;
- (CLVO2MaxService)init;
- (id).cxx_construct;
- (int)getIndexInHealthKitSamples:(const void *)samples forSessionAttributes:(const VO2MaxSessionAttributes *)attributes withStartIndex:(int)index;
- (unsigned)retrocomputeForSamples:(const void *)samples withRetrocomputeHistory:(VO2MaxRetrocomputeHistory *)history;
- (unsigned)retrocomputeSession:(const VO2MaxSessionAttributes *)session withHealthKitSample:(VO2MaxHealthKitSample *)sample withRetrocomputeHistory:;
- (unsigned)updateRetrocomputeHistoryPostProcessing:(VO2MaxRetrocomputeHistory *)processing;
- (void)beginService;
- (void)calculatePrior:(BOOL *)prior;
- (void)deleteHealthKitSamples:(BOOL)samples;
- (void)deleteSessionsFromHealthKit:()vector<VO2MaxStagingLostEstimate withRetry:(std:(BOOL)retry :allocator<VO2MaxStagingLostEstimate>> *)a3;
- (void)endService;
- (void)executeRetrocomputePreprocessing:(id)preprocessing;
- (void)forceClearHistoryDatabase;
- (void)getLatestVO2MaxValueForBodyMetrics:(const CLBodyMetrics *)metrics sinceTime:(double)time withReply:(id)reply;
- (void)handlePriorRepeatingTask:(id)task;
- (void)handleRetryHealthKitDeleteSamples:(id)samples;
- (void)handleRetryTriggerRetrocompute:(id)retrocompute;
- (void)markXpcActivityDone:(id)done;
- (void)onRetrocomputeHealthKitSampleFailed:(id)failed;
- (void)onRetrocomputeHealthKitSampleSavedWithStartTime:(double)time activity:(id)activity;
- (void)onRetrocomputePreprocessingActivity:(id)activity;
- (void)onRetryHealthKitDeleteSamples:(id)samples;
- (void)onRetryTriggerRetrocompute:(id)retrocompute;
- (void)onUserInfoUpdate:(const int *)update data:(const void *)data;
- (void)persistLostEstimateToStagingTables:(const void *)tables;
- (void)persistRetrocomputeResultsToStagingTables:(VO2MaxRetrocomputeSessionResult *)tables;
- (void)promoteStagingData:(id)data;
- (void)queryVO2MaxRetrocomputeStatusWithReply:(id)reply;
- (void)registerForRetrocomputeStatusUpdates:(id)updates;
- (void)registerPriorRepeatingTask;
- (void)resetRetrocomputePreProcessingActivity:(id)activity withDelay:(int64_t)delay;
- (void)retryHealthKitDeleteSamples;
- (void)retryTriggerRetrocompute;
- (void)savePrior:(VO2MaxPrior *)prior;
- (void)saveStagingOutputToHealthKit:(VO2MaxStagingOutput *)kit activity:;
- (void)scheduleRetrocomputePreprocessing;
- (void)sendRetroComputeAnalytics;
- (void)submitPriorRepeatingTask;
- (void)triggerRetrocomputeWithReply:(id)reply;
- (void)unregisterForRetrocomputeStatusUpdates:(id)updates;
- (void)updateBypassParameters;
- (void)updateRetrocomputeHistory:(VO2MaxRetrocomputeHistory *)history withResult:(VO2MaxRetrocomputeSessionResult *)result;
- (void)updateRetrocomputeStatus:(int)status unavailableReasons:(unsigned int)reasons;
@end

@implementation CLVO2MaxService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656E58 != -1)
  {
    sub_1018BE054();
  }

  return qword_102656E50;
}

- (void)updateBypassParameters
{
  v3 = sub_100011660();
  sub_100185AC0(v3, &v12);
  sub_10001CB4C(v12, "VO2MaxRetrocomputeMinMeanDelta_Bypass", &self->fShouldBypassMinDelta);
  if (v13)
  {
    sub_100008080(v13);
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v4 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    fShouldBypassMinDelta = self->fShouldBypassMinDelta;
    LODWORD(v12) = 67240192;
    HIDWORD(v12) = fShouldBypassMinDelta;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Updated fShouldBypassMinDelta to %{public}d", &v12, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE090(&self->fShouldBypassMinDelta);
  }

  v6 = sub_100011660();
  sub_100185AC0(v6, &v12);
  sub_10001CB4C(v12, "VO2MaxRetrocomputeMinPrevAlgSampleInterval_Bypass", &self->fShouldBypassPreviousSampleInternal);
  if (v13)
  {
    sub_100008080(v13);
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    fShouldBypassPreviousSampleInternal = self->fShouldBypassPreviousSampleInternal;
    LODWORD(v12) = 67240192;
    HIDWORD(v12) = fShouldBypassPreviousSampleInternal;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Updated fShouldBypassPreviousSampleInternal to %{public}d", &v12, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE18C(&self->fShouldBypassPreviousSampleInternal);
  }

  v9 = sub_100011660();
  sub_100185AC0(v9, &v12);
  sub_10001CB4C(v12, "VO2MaxRetrocomputeMinEstimatesUpdatedRatio_Bypass", &self->fShouldBypassMinEstimatesUpdatedRatio);
  if (v13)
  {
    sub_100008080(v13);
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v10 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    fShouldBypassMinEstimatesUpdatedRatio = self->fShouldBypassMinEstimatesUpdatedRatio;
    LODWORD(v12) = 67240192;
    HIDWORD(v12) = fShouldBypassMinEstimatesUpdatedRatio;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Updated fShouldBypassMinEstimatesUpdatedRatio to %{public}d", &v12, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE288(&self->fShouldBypassMinEstimatesUpdatedRatio);
  }
}

- (void)forceClearHistoryDatabase
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "Force clearing history database", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE398();
  }

  sub_10105499C(self->fRetrocomputeDb.__ptr_ + 9);
}

- (CLVO2MaxService)init
{
  v3.receiver = self;
  v3.super_class = CLVO2MaxService;
  return [(CLVO2MaxService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLVO2MaxServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLVO2MaxServiceClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102656E68 != -1)
  {
    sub_1018BE47C();
  }

  return byte_102656E60;
}

- (void)beginService
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Starting up CLVO2MaxService", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE490();
  }

  sub_10001A3E8();
  if (sub_10001CF04())
  {
    sub_1004E1D6C();
  }

  sub_10001A3E8();
  if (sub_10071C8FC())
  {
    sub_1008FC5E0(buf);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    cntrl = self->fPriorDb.__cntrl_;
    self->fPriorDb = v4;
    if (cntrl)
    {
      sub_100008080(cntrl);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }
    }
  }

  sub_10001A3E8();
  if (sub_10001CF04())
  {
    [(CLVO2MaxService *)self registerPriorRepeatingTask];
    [(CLVO2MaxService *)self submitPriorRepeatingTask];
  }
}

- (void)endService
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down CLVO2MaxService", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE57C();
  }

  fHkHealthStore = self->fHkHealthStore;
  if (fHkHealthStore)
  {

    self->fHkHealthStore = 0;
  }

  if ([(CLVO2MaxService *)self retrocomputeStatusClients])
  {
  }
}

- (void)registerForRetrocomputeStatusUpdates:(id)updates
{
  if (sub_10001CF04())
  {
    [(NSMutableSet *)[(CLVO2MaxService *)self retrocomputeStatusClients] addObject:updates];
    sub_10000FF38(v12, "com.apple.locationd.VO2MaxService.Retrocompute", 0);
    *buf = 0;
    v14 = 0;
    v15 = 4;
    v21 = 0;
    v16 = 0u;
    memset(v17, 0, sizeof(v17));
    v18 = 0u;
    v19 = 0u;
    memset(v20, 0, sizeof(v20));
    if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, buf) == 100)
    {
      v5 = [NSDate alloc];
      v6 = [v5 initWithTimeIntervalSinceReferenceDate:*(&v16 + 4)];
      v7 = [NSDate alloc];
      v8 = [v7 initWithTimeIntervalSinceReferenceDate:*&v17[1]];
      v9 = [NSNumber alloc];
      v10 = [v9 initWithDouble:*&v18];
      [updates onRetrocomputeStatusUpdate:{objc_msgSend([CMVO2MaxRetrocomputeState alloc], "initWithStatus:startDate:endDate:meanDelta:", v16, v6, v8, v10)}];
    }

    sub_10001A420(v12);
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v11 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "registerForRetrocomputeStatusUpdates is only supported on phone", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BE660();
    }
  }
}

- (void)unregisterForRetrocomputeStatusUpdates:(id)updates
{
  if (sub_10001CF04())
  {
    retrocomputeStatusClients = [(CLVO2MaxService *)self retrocomputeStatusClients];

    [(NSMutableSet *)retrocomputeStatusClients removeObject:updates];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "unregisterForRetrocomputeStatusUpdates is only supported on phone", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BE74C();
    }
  }
}

- (void)sendRetroComputeAnalytics
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    if ((atomic_load_explicit(&qword_102656E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656E88))
    {
      *&v22[16] = xmmword_101C7E8DC;
      *&v22[32] = unk_101C7E8EC;
      *&v22[44] = unk_101C7E8F8;
      *buf = xmmword_101C7E8BC;
      *v22 = unk_101C7E8CC;
      qword_102656E78 = 0;
      unk_102656E80 = 0;
      qword_102656E70 = 0;
      sub_1003F6D44(&qword_102656E70, buf, &v22[60], 0x13uLL);
      __cxa_atexit(sub_1003F5F88, &qword_102656E70, dword_100000000);
      __cxa_guard_release(&qword_102656E88);
    }

    memset(buf, 0, sizeof(buf));
    *v22 = 4;
    v26 = 0;
    memset(&v22[4], 0, 44);
    v23 = 0u;
    v24 = 0u;
    memset(v25, 0, 28);
    if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, buf) != 109)
    {
      v6 = _NSConcreteStackBlock;
      v7 = 3221225472;
      v17 = v24;
      v18 = *v25;
      v19 = *&v25[16];
      v13 = *&v22[16];
      v14 = *&v22[32];
      v15 = *&v22[48];
      v16 = v23;
      v11 = *buf;
      v8 = sub_100556770;
      v9 = &unk_10245EA00;
      selfCopy = self;
      v20 = v26;
      v12 = *v22;
      AnalyticsSendEventLazy();
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v3 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Succesfully accessed history table, sent Core Analytics event", v5, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BE830();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Retro-compute, not sending analytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BE91C();
    }
  }
}

- (void)scheduleRetrocomputePreprocessing
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = sub_100011660();
  sub_100185AC0(v4, &v14);
  v13 = 0.0;
  sub_1000B9370(v14, "VO2MaxRetrocomputeNextPreprocessingTime", &v13);
  v5 = v13;
  if (v13 > Current + XPC_ACTIVITY_INTERVAL_1_DAY)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "VO2MaxRetrocomputeNextPreprocessingTime";
      v24 = 2050;
      v25 = v13;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "%{public}s is too far in the future (%{public}.2f). Resetting!", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BEA08(buf);
      v16 = 136446466;
      v17 = "VO2MaxRetrocomputeNextPreprocessingTime";
      v18 = 2050;
      v19 = v13;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService scheduleRetrocomputePreprocessing]", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    sub_1004FA8B8(v14, "VO2MaxRetrocomputeNextPreprocessingTime", 0xFFFFFFFFLL);
    v13 = 0.0;
    v5 = 0.0;
  }

  v7 = v5 - Current;
  if (XPC_ACTIVITY_INTERVAL_30_MIN <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = XPC_ACTIVITY_INTERVAL_30_MIN;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v9 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v23 = "com.apple.locationd.VO2Max.RetrocomputePreprocessing";
    v24 = 2050;
    v25 = v13;
    v26 = 2050;
    v27 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Registering XPC Activity with nextPreprocessingTime=(%{public}.2f) and delay=(%{public}lld)", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BEA08(buf);
    v16 = 136446722;
    v17 = "com.apple.locationd.VO2Max.RetrocomputePreprocessing";
    v18 = 2050;
    v19 = v13;
    v20 = 2050;
    v21 = v8;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService scheduleRetrocomputePreprocessing]", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputePreprocessing");
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100556E2C;
  handler[3] = &unk_102450188;
  handler[4] = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  handler[5] = v8;
  xpc_activity_register("com.apple.locationd.VO2Max.RetrocomputePreprocessing", XPC_ACTIVITY_CHECK_IN, handler);
  if (v15)
  {
    sub_100008080(v15);
  }
}

- (void)resetRetrocomputePreProcessingActivity:(id)activity withDelay:(int64_t)delay
{
  v6 = CFAbsoluteTimeGetCurrent() + delay;
  v9 = v6;
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "VO2MaxRetrocomputeNextPreprocessingTime";
    *&buf[12] = 2050;
    *&buf[14] = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Resetting next activity time to: %{public}.1f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BED6C();
  }

  v8 = sub_100011660();
  sub_100185AC0(v8, buf);
  sub_100116D68(*buf, "VO2MaxRetrocomputeNextPreprocessingTime", &v9);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  [(CLVO2MaxService *)self markXpcActivityDone:activity];
  [(CLVO2MaxService *)self scheduleRetrocomputePreprocessing];
}

- (void)onRetrocomputePreprocessingActivity:(id)activity
{
  if (activity)
  {
    state = xpc_activity_get_state(activity);
    if (state == 4 || (v6 = state, state == 2))
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v7 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Preparing to execute VO2MaxRetrocomputePreProcessing", &v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEE8C();
      }

      [(CLVO2MaxService *)self executeRetrocomputePreprocessing:activity];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        v11 = v6;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Unexpected VO2MaxRetrocomputePreProcessing activity state: %ld", &v10, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BEF70();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BF060();
    }
  }
}

- (void)queryVO2MaxRetrocomputeStatusWithReply:(id)reply
{
  if (sub_10001CF04())
  {
    *buf = 0;
    v22 = 0;
    v23 = 4;
    v29 = 0;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v5 = sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, buf);
    if (v5 == 100)
    {
      v6 = [NSDate alloc];
      v7 = [v6 initWithTimeIntervalSinceReferenceDate:*(&v24 + 4)];
      v8 = [NSDate alloc];
      v9 = [v8 initWithTimeIntervalSinceReferenceDate:*&v25[1]];
      v10 = [NSNumber alloc];
      v11 = [v10 initWithDouble:*&v26];
      v12 = [[CMVO2MaxRetrocomputeState alloc] initWithStatus:v24 startDate:v7 endDate:v9 meanDelta:v11];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v13 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        v17 = 67109378;
        v18 = 4;
        v19 = 2080;
        v20 = [objc_msgSend(v12 "description")];
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Queried VO2MaxRetrocomputeHistory for algVersion = %d and received %s", &v17, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BF318();
      }

      (*(reply + 2))(reply, v12, 100);
    }

    else
    {
      v15 = v5;
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v16 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v17 = 67109120;
        v18 = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "Error querying VO2MaxRetrocomputeHistory: %u", &v17, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BF228(v15);
      }

      (*(reply + 2))(reply, 0, v15);
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v14 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "queryVO2MaxRetrocomputeStatusWithReply is only supported on phone", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BF144();
    }

    (*(reply + 2))(reply, 0, 109);
  }
}

- (void)executeRetrocomputePreprocessing:(id)preprocessing
{
  if (objc_opt_class())
  {
    sub_100156634();
  }

  [(CLVO2MaxService *)self markXpcActivityDone:preprocessing];

  [(CLVO2MaxService *)self sendRetroComputeAnalytics];
}

- (void)markXpcActivityDone:(id)done
{
  if (!xpc_activity_set_state(done, 5))
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
    {
      v5 = 134349056;
      state = xpc_activity_get_state(done);
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Failed to mark activity as done. Current state is %{public}ld", &v5, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BF91C();
    }
  }
}

- (unsigned)retrocomputeForSamples:(const void *)samples withRetrocomputeHistory:(VO2MaxRetrocomputeHistory *)history
{
  if (*samples == *(samples + 1))
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v34 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "There are no VO2Max HealthKit samples to retrocompute", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BFA1C();
    }

    return 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v6 = sub_10104516C();
    sub_101045F44(v6, &v44);
    v8 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v45 - v44) >> 4));
    if (v45 == v44)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    sub_100562214(v44, v45, v9, 1, v7);
    v11 = v44;
    v10 = v45;
    if (v44 == v45)
    {
      v33 = 0;
LABEL_43:
      if (0x8E38E38E38E38E39 * ((*(samples + 1) - *samples) >> 3) > v33)
      {
        v35 = 72 * v33 + 24;
        do
        {
          v36 = [[NSUUID alloc] initWithUUIDBytes:*samples + v35];
          if (qword_1025D4450 != -1)
          {
            sub_1018BE068();
          }

          v37 = qword_1025D4458;
          if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
          {
            uUIDString = [v36 UUIDString];
            *buf = 138477827;
            v57 = uUIDString;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "Retrocompute encountered HealthKit sample with no SessionAttributes for sessionId %{private}@", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018BEA08(buf);
            uUIDString2 = [v36 UUIDString];
            v65[0].n128_u32[0] = 138477827;
            *(v65[0].n128_u64 + 4) = uUIDString2;
            v40 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeForSamples:withRetrocomputeHistory:]", "%s\n", v40);
            if (v40 != buf)
            {
              free(v40);
            }
          }

          ++history->var15;
          ++v33;
          v35 += 72;
        }

        while (0x8E38E38E38E38E39 * ((*(samples + 1) - *samples) >> 3) > v33);
      }

      v32 = [(CLVO2MaxService *)self updateRetrocomputeHistoryPostProcessing:history];
    }

    else
    {
      v12 = 0;
      v42 = v45;
      while (1)
      {
        v65[0] = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v11[4];
        v65[3] = v11[3];
        v65[4] = v15;
        v65[1] = v13;
        v65[2] = v14;
        v62 = 0uLL;
        *v63 = 0xBFF0000000000000;
        *&v63[24] = 0;
        sub_10000EC00(&__src, "");
        v16 = [(CLVO2MaxService *)self getIndexInHealthKitSamples:samples forSessionAttributes:v65 withStartIndex:v12];
        v17 = v16;
        if ((v16 & 0x80000000) == 0)
        {
          if (v12 < v16)
          {
            v18 = 72 * v12;
            v19 = v16 - v12;
            do
            {
              v20 = [[NSUUID alloc] initWithUUIDBytes:*samples + v18 + 24];
              var4 = history->var4;
              v22 = var4 > 0.0 && *(*samples + v18) > var4;
              if (qword_1025D4450 != -1)
              {
                sub_1018BE068();
              }

              v23 = qword_1025D4458;
              if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString3 = [v20 UUIDString];
                v25 = *(*samples + v18);
                *buf = 138478339;
                v57 = uUIDString3;
                v58 = 2049;
                v59 = v25;
                v60 = 1026;
                v61 = v22;
                _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "Retrocompute encountered HealthKit sample with no SessionAttributes for sessionId %{private}@, startTime:%{private}f, isLostEstimate:%{public}d", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018BEA08(buf);
                uUIDString4 = [v20 UUIDString];
                v27 = *(*samples + v18);
                v50 = 138478339;
                v51 = uUIDString4;
                v52 = 2049;
                v53 = v27;
                v54 = 1026;
                v55 = v22;
                v28 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeForSamples:withRetrocomputeHistory:]", "%s\n", v28);
                if (v28 != buf)
                {
                  free(v28);
                }
              }

              if (v22)
              {
                ++history->var14;
                [(CLVO2MaxService *)self persistLostEstimateToStagingTables:*samples + v18];
              }

              v18 += 72;
              --v19;
            }

            while (v19);
            LODWORD(v12) = v17;
            v10 = v42;
          }

          v29 = *samples + 72 * v17;
          v30 = *(v29 + 28);
          v31 = *(v29 + 16);
          v62 = *v29;
          *v63 = v31;
          *&v63[12] = v30;
          std::string::operator=(&__src, (v29 + 48));
          v12 = (v12 + 1);
        }

        v47 = v62;
        v48[0] = *v63;
        *(v48 + 12) = *&v63[12];
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&__p, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = __src;
        }

        v32 = [(CLVO2MaxService *)self retrocomputeSession:v65 withHealthKitSample:&v47 withRetrocomputeHistory:history];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          break;
        }

        v11 += 5;
        if (v11 == v10)
        {
          v33 = v12;
          goto LABEL_43;
        }
      }
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }
  }

  return v32;
}

- (int)getIndexInHealthKitSamples:(const void *)samples forSessionAttributes:(const VO2MaxSessionAttributes *)attributes withStartIndex:(int)index
{
  v5 = *&index;
  v8 = *(samples + 1);
  v9 = *samples + 72 * index;
  if (v9 != v8)
  {
    v10 = *samples + 72 * index;
    while (uuid_compare(attributes->var2, (v10 + 24)))
    {
      v10 += 72;
      v9 += 72;
      if (v10 == v8)
      {
        v9 = v8;
        break;
      }
    }
  }

  v11 = [[NSUUID alloc] initWithUUIDBytes:attributes->var2];
  if (*(samples + 1) == v9)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v16 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      uUIDString = [v11 UUIDString];
      v20 = 1026;
      v21 = v5;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLVO2MaxService::getIndexInHealthKitSamples - index not found for sessionId: %{private}@, startIndex: %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BFB08(v11, v5);
    }

    LODWORD(v13) = -1;
  }

  else
  {
    v12 = (v9 - *samples) >> 3;
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v13 = 0x8E38E38E38E38E39 * v12;
    v14 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478339;
      uUIDString = [v11 UUIDString];
      v20 = 1026;
      v21 = v5;
      v22 = 2050;
      v23 = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLVO2MaxService::getIndexInHealthKitSamples - sessionId: %{private}@, startIndex: %{public}d, index: %{public}zu", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      [v11 UUIDString];
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService getIndexInHealthKitSamples:forSessionAttributes:withStartIndex:]", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  return v13;
}

- (unsigned)retrocomputeSession:(const VO2MaxSessionAttributes *)session withHealthKitSample:(VO2MaxHealthKitSample *)sample withRetrocomputeHistory:
{
  v5 = v4;
  if ([(CLVO2MaxService *)self validateBodyMetrics])
  {
    *&dst[8] = 0;
    *dst = 0;
    *&dst[16] = session->var1;
    dst[24] = session->var6;
    v105 = 0u;
    memset(v106, 0, 156);
    v9 = *&sample->var0;
    v10 = *&sample->var2;
    *(v108 + 12) = *&sample->var3[4];
    v108[0] = v10;
    v107 = v9;
    if (*(&sample->var5.__rep_.__l + 23) < 0)
    {
      sub_100007244(&v109, sample->var5.__rep_.__l.__data_, sample->var5.__rep_.__l.__size_);
    }

    else
    {
      v109 = *sample->var5.__rep_.__s.__data_;
      v110 = *(&sample->var5.__rep_.__l + 2);
    }

    var7 = session->var7;
    uuid_copy(dst, session->var2);
    memset(uu, 0, sizeof(uu));
    uuid_copy(uu, session->var2);
    sub_101110AD0(self->fStagingOutputStore.__ptr_, uu);
    sub_1011109E0(self->fStagingOutputStore.__ptr_, uu);
    sub_101110E6C(self->fStagingOutputStore.__ptr_, uu);
    sub_10102F350(uu, self->fInputStore.__ptr_, &v75);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v13 = sub_10104516C();
    if (!sub_101046048(v13, uu, &v72))
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v18 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "Query for pre-existing session summary for current session failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        *out = 0;
        v62 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v62);
        if (v62 != buf)
        {
          free(v62);
        }
      }

      v12 = 2;
      goto LABEL_99;
    }

    memset(out, 0, 37);
    uuid_unparse(session->var2, out);
    if (v72 == v73)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v19 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = out;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Current session summary missing from VO2MaxSummary table, cannot retrocompute for sessionId %s", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_91;
      }

      sub_1018BEA08(buf);
      LODWORD(v96[0]) = 136315138;
      *(v96 + 4) = out;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v17);
      goto LABEL_33;
    }

    if (*(v72 + 46))
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v14 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v72 + 46);
        *buf = 136315394;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Platform source for sessionId %s is not watchOS, retrocompute is not supported, platform source, %d", buf, 0x12u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_91;
      }

      sub_1018BEA08(buf);
      v16 = *(v72 + 46);
      LODWORD(v96[0]) = 136315394;
      *(v96 + 4) = out;
      WORD2(v96[1]) = 1024;
      *(&v96[1] + 6) = v16;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v17);
LABEL_33:
      if (v17 != buf)
      {
        free(v17);
      }

LABEL_91:
      v77[0] = *dst;
      *(v77 + 9) = *&dst[9];
      v79 = 0;
      v80 = 0;
      v78 = 0;
      sub_10056474C(&v78, v105, *(&v105 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v105 + 1) - v105) >> 6));
      v87 = *&v106[104];
      v88 = *&v106[120];
      v89 = *&v106[136];
      v90 = *&v106[152];
      v83 = *&v106[40];
      v84 = *&v106[56];
      v85 = *&v106[72];
      v86 = *&v106[88];
      v81 = *&v106[8];
      v82 = *&v106[24];
      v91 = v107;
      v92[0] = v108[0];
      *(v92 + 12) = *(v108 + 12);
      if (SHIBYTE(v110) < 0)
      {
        sub_100007244(&v93, v109, *(&v109 + 1));
      }

      else
      {
        v93 = v109;
        v94 = v110;
      }

      v95 = var7;
      [(CLVO2MaxService *)self updateRetrocomputeHistory:v5 withResult:v77];
      if (SHIBYTE(v94) < 0)
      {
        operator delete(v93);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      v12 = 0;
LABEL_99:
      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (SHIBYTE(v110) < 0)
      {
        operator delete(v109);
      }

      if (v105)
      {
        *(&v105 + 1) = v105;
        operator delete(v105);
      }

      return v12;
    }

    __src = 0;
    __dst = 0;
    v71 = 0;
    v20 = *&dst[16] + -7776000.0;
    if (*(v5 + 32) == 0.0)
    {
      v21 = sub_10104516C();
      if (!sub_101046084(v21, &__src, 1))
      {
        if (qword_1025D4450 != -1)
        {
          sub_1018BE068();
        }

        v22 = qword_1025D4458;
        if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "Query for historical summaries failed due to device lock", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018BEA08(buf);
          LOWORD(v96[0]) = 0;
          v23 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }

LABEL_86:
        v60 = 0;
        v12 = 2;
        goto LABEL_88;
      }

LABEL_80:
      if (v75 != v76)
      {
        v58 = *(v72 + 8);
        self->fUserInfo.hrmax = v58;
        self->fUserInfo.betaBlockerUse = session->var6;
        v65 = ((session->var5 - 82) & 0xFFFFFFF9) == 0;
        v64 = 1;
        v59 = sub_100011660();
        sub_100185AC0(v59, buf);
        sub_10005BBE4(*buf, "VO2MaxMinPreviousEstimatesForHealthKitWrite", &v64);
        if (*&buf[8])
        {
          sub_100008080(*&buf[8]);
        }

        *buf = 0;
        v96[0] = 0;
        sub_1005651C8();
      }

      v12 = 2;
      v60 = 1;
LABEL_88:
      if (__src)
      {
        __dst = __src;
        operator delete(__src);
      }

      if ((v60 & 1) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_91;
    }

    memset(v96, 0, sizeof(v96));
    if (sub_101110B20(self->fStagingOutputStore.__ptr_, v96, 1) == 109)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v24 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "Query for staged summaries failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        LOWORD(__p) = 0;
        v25 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }
    }

    else
    {
      if (v96[0] != v96[1])
      {
        v26 = v96[0] + 104;
        do
        {
          *buf = 0;
          *&buf[8] = *(v26 - 12);
          LODWORD(v99) = 0;
          *&buf[16] = 0;
          *&buf[24] = 0;
          *(&v99 + 1) = *(v26 - 8);
          *v100 = *(v26 - 7);
          *&v100[8] = *(v26 - 3);
          *&v100[24] = *(v26 - 2);
          *&v100[40] = *(v26 - 1);
          *&v100[56] = *v26;
          *&v100[72] = *(v26 + 1);
          *&v100[88] = *(v26 + 4);
          *v101 = 0;
          *&v101[8] = *(v26 + 3);
          *&v101[24] = *(v26 + 8);
          *&v102 = *(v26 + 9);
          DWORD2(v102) = *(v26 + 20);
          uuid_copy(&buf[20], v26 - 84);
          v27 = __dst;
          if (__dst >= v71)
          {
            v38 = __src;
            v39 = __dst - __src;
            v40 = 0xAAAAAAAAAAAAAAABLL * ((__dst - __src) >> 6);
            v41 = v40 + 1;
            if (v40 + 1 > 0x155555555555555)
            {
              sub_10028C64C();
            }

            if (0x5555555555555556 * ((v71 - __src) >> 6) > v41)
            {
              v41 = 0x5555555555555556 * ((v71 - __src) >> 6);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v71 - __src) >> 6) >= 0xAAAAAAAAAAAAAALL)
            {
              v41 = 0x155555555555555;
            }

            if (v41)
            {
              sub_1005642D8(&__src, v41);
            }

            v42 = ((__dst - __src) >> 6 << 6);
            v43 = *buf;
            v44 = *&buf[16];
            v45 = *v100;
            v42[2] = v99;
            v42[3] = v45;
            *v42 = v43;
            v42[1] = v44;
            v46 = *&v100[16];
            v47 = *&v100[32];
            v48 = *&v100[64];
            v42[6] = *&v100[48];
            v42[7] = v48;
            v42[4] = v46;
            v42[5] = v47;
            v49 = *&v100[80];
            v50 = *v101;
            v51 = v102;
            v42[10] = *&v101[16];
            v42[11] = v51;
            v42[8] = v49;
            v42[9] = v50;
            v37 = (192 * v40 + 192);
            v52 = (192 * v40 - v39);
            memcpy(v42 - v39, v38, v39);
            v53 = __src;
            __src = v52;
            __dst = v37;
            v71 = 0;
            if (v53)
            {
              operator delete(v53);
            }
          }

          else
          {
            v28 = *buf;
            v29 = *&buf[16];
            v30 = *v100;
            *(__dst + 2) = v99;
            v27[3] = v30;
            *v27 = v28;
            v27[1] = v29;
            v31 = *&v100[16];
            v32 = *&v100[32];
            v33 = *&v100[64];
            v27[6] = *&v100[48];
            v27[7] = v33;
            v27[4] = v31;
            v27[5] = v32;
            v34 = *&v100[80];
            v35 = *v101;
            v36 = v102;
            v27[10] = *&v101[16];
            v27[11] = v36;
            v27[8] = v34;
            v27[9] = v35;
            v37 = v27 + 12;
          }

          __dst = v37;
          v54 = v26 + 88;
          v26 += 192;
        }

        while (v54 != v96[1]);
      }

      if (v20 >= *(v5 + 32))
      {
        goto LABEL_78;
      }

      __p = 0;
      v67 = 0;
      v68 = 0;
      v55 = sub_10104516C();
      v56 = sub_101046084(v55, &__p, 1);
      if (v56)
      {
        sub_100564330(&__src, __dst, __p, v67, 0xAAAAAAAAAAAAAAABLL * ((v67 - __p) >> 6));
      }

      else
      {
        if (qword_1025D4450 != -1)
        {
          sub_1018BE068();
        }

        v57 = qword_1025D4458;
        if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEFAULT, "Query for historical summaries failed due to device lock", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018BEA08(buf);
          v63 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v63);
          if (v63 != buf)
          {
            free(v63);
          }
        }
      }

      if (__p)
      {
        v67 = __p;
        operator delete(__p);
      }

      if (v56)
      {
LABEL_78:
        if (v96[0])
        {
          v96[1] = v96[0];
          operator delete(v96[0]);
        }

        goto LABEL_80;
      }
    }

    if (v96[0])
    {
      v96[1] = v96[0];
      operator delete(v96[0]);
    }

    goto LABEL_86;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v11 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Will not attempt retrocompute pre-processing, body metrics changed significantly.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BFC2C();
  }

  *(v5 + 136) |= 0x200u;
  [(CLVO2MaxService *)self updateRetrocomputeStatus:0 unavailableReasons:?];
  [(CLVO2MaxService *)self sendRetroComputeAnalytics];
  sub_1003FC6DC(self->fRetrocomputeBodyMetricsDb.__ptr_);
  return 4;
}

- (void)persistRetrocomputeResultsToStagingTables:(VO2MaxRetrocomputeSessionResult *)tables
{
  var0 = tables->var3.var0;
  var1 = tables->var3.var1;
  if (var0 != var1)
  {
    v7 = (var0 + 184);
    do
    {
      v10[0] = 0;
      v11 = 0;
      v15 = 0x7FEFFFFFFFFFFFFFLL;
      memset(v16, 0, sizeof(v16));
      LODWORD(v17) = 1;
      v10[1] = *(v7 - 22);
      uuid_copy(v12, v7 - 164);
      v11 = *(v7 - 42);
      v15 = *(v7 - 18);
      *&v16[0] = *(v7 - 17);
      *(v16 + 8) = *(v7 - 8);
      *(&v16[1] + 8) = *(v7 - 7);
      *(&v16[2] + 8) = *(v7 - 6);
      *(&v16[3] + 8) = *(v7 - 5);
      *(&v16[4] + 8) = *(v7 - 4);
      *(&v16[5] + 8) = *(v7 - 3);
      *(&v16[6] + 8) = *(v7 - 2);
      *(&v16[7] + 1) = *(v7 - 2);
      v17 = *(v7 - 1);
      LODWORD(v18) = *v7;
      sub_1011109E4(self->fStagingOutputStore.__ptr_, v10);
      v8 = (v7 + 2);
      v7 += 48;
    }

    while (v8 != var1);
  }

  if (tables->var4.var2 > 0.0)
  {
    var2 = 0.0;
    memset(&v16[4] + 8, 0, 24);
    *(&v16[6] + 4) = 4;
    BYTE12(v16[6]) = 0;
    sub_10000EC00(&v16[7], "");
    v18 = -1.0;
    var2 = tables->var4.var2;
    uuid_copy(&v16[1] + 8, tables->var4.var8);
    var3 = tables->var4.var3;
    LODWORD(v15) = tables->var4.var4;
    v16[0] = *&tables->var4.var5;
    *&v16[1] = tables->var4.var7;
    *(&v16[2] + 8) = *&tables->var4.var9;
    DWORD2(v16[3]) = tables->var4.var11;
    WORD6(v16[3]) = *&tables->var4.var12;
    LODWORD(v16[4]) = tables->var4.var14;
    *(&v16[4] + 8) = *&tables->var4.var15;
    v9 = tables->var5.var4 + 1;
    DWORD1(v16[6]) = 4;
    DWORD2(v16[6]) = v9;
    BYTE12(v16[6]) = tables->var2;
    std::string::operator=(&v16[7], &tables->var5.var5);
    v18 = tables->var5.var2;
    LODWORD(v16[6]) = tables->var4.var18;
    sub_1011108F8(self->fStagingOutputStore.__ptr_, v10);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*&v16[7]);
    }
  }
}

- (void)persistLostEstimateToStagingTables:(const void *)tables
{
  v4[0] = 0;
  v4[1] = *tables;
  uuid_copy(v5, tables + 24);
  sub_101110D80(self->fStagingOutputStore.__ptr_, v4);
}

- (void)updateRetrocomputeHistory:(VO2MaxRetrocomputeHistory *)history withResult:(VO2MaxRetrocomputeSessionResult *)result
{
  var1 = result->var1;
  history->var8 = var1;
  uuid_copy(history->var9, result->var0);
  if (result->var4.var2 <= 0.0)
  {
    if (history->var4 > 0.0 && result->var5.var2 > -1.0)
    {
      ++history->var14;
      [(CLVO2MaxService *)self persistLostEstimateToStagingTables:&result->var5];
    }
  }

  else
  {
    if (*result[1].var0 <= 3)
    {
      if (history->var4 == 0.0)
      {
        history->var4 = var1;
      }

      history->var7 = var1;
    }

    history->var6 = var1;
    var2 = result->var5.var2;
    if (var2 == -1.0)
    {
      ++history->var13;
    }

    else
    {
      v9.f64[0] = result->var4.var3 - var2;
      var12 = history->var12;
      v11 = var12++;
      history->var12 = var12;
      v9.f64[1] = v9.f64[0] / var2;
      *&history->var10 = vdivq_f64(vmlaq_n_f64(v9, *&history->var10, v11), vdupq_lane_s64(COERCE__INT64(var12), 0));
    }
  }

  if (history->var5 == 0.0)
  {
    var0 = result->var3.var0;
    if (var0 != result->var3.var1)
    {
      history->var5 = *(var0 + 1);
    }
  }

  v13 = [[NSUUID alloc] initWithUUIDBytes:history->var9];
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v14 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v16 = history->var1;
    v17 = history->var2;
    var3 = history->var3;
    var8 = history->var8;
    uUIDString = [v13 UUIDString];
    var4 = history->var4;
    var6 = history->var6;
    var7 = history->var7;
    var10 = history->var10;
    var11 = history->var11;
    v26 = history->var12;
    var13 = history->var13;
    var14 = history->var14;
    *buf = 134286595;
    v31 = v16;
    self = selfCopy;
    v32 = 1025;
    v33 = v17;
    v34 = 1025;
    v35 = var3;
    v36 = 2049;
    v37 = var8;
    v38 = 2113;
    v39 = uUIDString;
    v40 = 2049;
    v41 = var4;
    v42 = 2049;
    v43 = var6;
    v44 = 2049;
    v45 = var7;
    v46 = 2049;
    v47 = var10;
    v48 = 2049;
    v49 = var11;
    v50 = 1025;
    v51 = v26;
    v52 = 1025;
    v53 = var13;
    v54 = 1025;
    v55 = var14;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Updating VO2MaxRetrocomputeHistory: startTime,%{private}f,algVersion,%{private}d,status,%{private}d,lastSessionTimestamp,%{private}f,lastSessionId,%{private}@,firstSampleDate,%{private}f,lastSampleDate,%{private}f,lastSampleDatePrevAlg,%{private}f,meanDelta,%{private}f,meanPercentileDelta,%{private}f,numUpdatedEstimates,%{private}d,numNewEstimates,%{private}d,numLostEstimates,%{private}d", buf, 0x70u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    [v13 UUIDString];
    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService updateRetrocomputeHistory:withResult:]", "%s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  sub_1007B855C(self->fRetrocomputeDb.__ptr_, history, history->var0);
}

- (unsigned)updateRetrocomputeHistoryPostProcessing:(VO2MaxRetrocomputeHistory *)processing
{
  v77 = 0;
  v78 = 0;
  v79 = 0;
  if (sub_101110B2C(self->fStagingOutputStore.__ptr_, &v77) == 100)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    if (sub_101110B98(self->fStagingOutputStore.__ptr_, &v74) == 100)
    {
      __src = 0;
      v72 = 0;
      v73 = 0;
      v5 = v78;
      if (v77 == v78)
      {
        processing->var17 = 0.0;
        v44 = 0.0;
        v43 = 0.0;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v8 = v77 + 10;
        v9 = 0.0;
        v10 = 0.0;
        v66 = 0.0;
        v67 = 0.0;
        v11 = 0.0;
        v12 = 0.0;
        do
        {
          v13 = *(v8 - 9);
          *buf = *(v8 - 10);
          *&buf[16] = v13;
          v14 = *(v8 - 8);
          v15 = *(v8 - 7);
          v16 = *(v8 - 5);
          v102 = *(v8 - 6);
          v103 = v16;
          *v101 = v14;
          *&v101[16] = v15;
          v17 = *(v8 - 4);
          v18 = *(v8 - 3);
          v19 = *(v8 - 2);
          *v107 = *(v8 - 2);
          v105 = v18;
          v106 = v19;
          v104 = v17;
          v20 = *(v8 - 12);
          v108 = *(v8 - 4);
          *&v107[4] = v20;
          if (*(v8 + 23) < 0)
          {
            sub_100007244(&__p, *v8, *(v8 + 1));
          }

          else
          {
            v21 = *v8;
            v110 = *(v8 + 2);
            __p = v21;
          }

          v22 = v8 - 10;
          v23 = *(v8 + 3);
          v111 = v23;
          if (v23 <= 0.0)
          {
            v29 = v12;
            v25 = v11;
            v26 = v10;
            v27 = v9;
          }

          else
          {
            v24 = v7 + 1;
            v25 = 0.0;
            v26 = 0.0;
            v27 = v23;
            if (v7)
            {
              v27 = v9 + (v23 - v9) / v24;
              v26 = v10 + (v23 - v9) * (v23 - v27);
              v67 = v26;
            }

            v28 = v6 + 1;
            v29 = *v101;
            if (v6)
            {
              v29 = v12 + (*v101 - v12) / v28;
              v25 = v11 + (*v101 - v12) * (*v101 - v29);
              v66 = v25;
            }

            v30 = *v101 - v23;
            v31 = v72;
            if (v72 >= v73)
            {
              v33 = __src;
              v34 = v72 - __src;
              v35 = (v72 - __src) >> 3;
              v36 = v35 + 1;
              if ((v35 + 1) >> 61)
              {
                sub_10028C64C();
              }

              v37 = v73 - __src;
              if ((v73 - __src) >> 2 > v36)
              {
                v36 = v37 >> 2;
              }

              v38 = v37 >= 0x7FFFFFFFFFFFFFF8;
              v39 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v38)
              {
                v39 = v36;
              }

              if (v39)
              {
                sub_1000B9708(&__src, v39);
              }

              *(8 * v35) = v30;
              v32 = 8 * v35 + 8;
              memcpy(0, v33, v34);
              v40 = __src;
              __src = 0;
              v72 = v32;
              v73 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v72 = v30;
              v32 = (v31 + 1);
            }

            v72 = v32;
            v7 = v24;
            v6 = v28;
          }

          if (SHIBYTE(v110) < 0)
          {
            operator delete(__p);
          }

          v8 += 12;
          v9 = v27;
          v10 = v26;
          v11 = v25;
          v12 = v29;
        }

        while (v22 + 12 != v5);
        v41 = 0.0;
        v42 = 0.0;
        if (__src != v72)
        {
          v42 = sub_1010BD760(&__src, 90);
        }

        processing->var17 = v42;
        if (v6 >= 2)
        {
          v41 = v66 / (v6 - 1);
        }

        v43 = 0.0;
        v44 = sqrt(v41);
        if (v7 >= 2)
        {
          v43 = v67 / (v7 - 1);
        }
      }

      processing->var18 = v44 - sqrt(v43);
      v70 = 15552000.0;
      v48 = sub_100011660();
      sub_100185AC0(v48, buf);
      sub_1000B9370(*buf, "VO2MaxRetrocomputeMinPrevAlgSampleInterval", &v70);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      v49 = processing->var7 - processing->var4;
      if (v49 >= v70 || self->fShouldBypassPreviousSampleInternal)
      {
        v50 = 0;
      }

      else
      {
        processing->var19 |= 8u;
        v50 = 1;
      }

      v69 = 0.9;
      v51 = sub_100011660();
      sub_100185AC0(v51, buf);
      sub_1000B9370(*buf, "VO2MaxRetrocomputeMinEstimatesUpdatedRatio", &v69);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      v52 = processing->var12 / (processing->var14 + processing->var12 + processing->var15);
      if (!processing->var3 && v52 < v69 && !self->fShouldBypassMinEstimatesUpdatedRatio)
      {
        processing->var19 |= 0x10u;
        v50 = 1;
      }

      v68 = 1.0;
      v53 = sub_100011660();
      sub_100185AC0(v53, buf);
      sub_1000B9370(*buf, "VO2MaxRetrocomputeMinMeanDelta", &v68);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (!processing->var3 && fabs(processing->var10) < v68 && !self->fShouldBypassMinDelta)
      {
        processing->var19 |= 0x20u;
        v50 = 1;
      }

      v54 = v74;
      v55 = v75;
      if (v74 != v75)
      {
        processing->var19 |= 0x40u;
        v50 = 1;
      }

      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v56 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        var10 = processing->var10;
        var3 = processing->var3;
        *buf = 134285825;
        *&buf[4] = v49;
        *&buf[12] = 2049;
        *&buf[14] = v70;
        *&buf[22] = 2049;
        *&buf[24] = v52;
        *v101 = 2049;
        *&v101[2] = v69;
        *&v101[10] = 2049;
        *&v101[12] = var10;
        *&v101[20] = 2049;
        *&v101[22] = v68;
        *&v101[30] = 1026;
        LODWORD(v102) = v54 != v55;
        WORD2(v102) = 1025;
        *(&v102 + 6) = v50;
        WORD5(v102) = 1026;
        HIDWORD(v102) = var3;
        LOWORD(v103) = 1026;
        *(&v103 + 2) = v50 ^ 1;
        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEFAULT, "VO2MaxRetrocomputeHistory data checks: prevAlgSampleInterval,%{private}f,minPrevAlgSampleInterval,%{private}f,estimatesUpdatedRatio,%{private}f,minEstimatesUpdatedRatio,%{private}f,meanDelta,%{private}f,minMeanDelta,%{private}f,badStagingDataExists,%{public}d,failedDataCheck,%{private}d,oldRetrocomputeStatus,%{public}d,newRetrocomputeStatus,%{public}d", buf, 0x56u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        v63 = processing->var10;
        v64 = processing->var3;
        v80 = 134285825;
        v81 = v49;
        v82 = 2049;
        v83 = v70;
        v84 = 2049;
        v85 = v52;
        v86 = 2049;
        v87 = v69;
        v88 = 2049;
        v89 = v63;
        v90 = 2049;
        v91 = v68;
        v92 = 1026;
        v93 = v54 != v55;
        v94 = 1025;
        v95 = v50;
        v96 = 1026;
        v97 = v64;
        v98 = 1026;
        v99 = v50 ^ 1;
        v65 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService updateRetrocomputeHistoryPostProcessing:]", "%s\n", v65);
        if (v65 != buf)
        {
          free(v65);
        }
      }

      if (processing->var3 == 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = v50;
      }

      if ((v59 & 1) == 0)
      {
        processing->var20 = CFAbsoluteTimeGetCurrent();
      }

      processing->var3 = v50 ^ 1;
      sub_1007B855C(self->fRetrocomputeDb.__ptr_, processing, processing->var0);
      if (__src)
      {
        v72 = __src;
        operator delete(__src);
      }

      v46 = 0;
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v47 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "Unable to check for bad staging data due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        LOWORD(v80) = 0;
        v62 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService updateRetrocomputeHistoryPostProcessing:]", "%s\n", v62);
        if (v62 != buf)
        {
          free(v62);
        }
      }

      v46 = 2;
    }

    *buf = &v74;
    sub_1005648F0(buf);
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v45 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "Unable to query for staging output due to device lock", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      LOWORD(v80) = 0;
      v61 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService updateRetrocomputeHistoryPostProcessing:]", "%s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    v46 = 2;
  }

  *buf = &v77;
  sub_1005648F0(buf);
  return v46;
}

- (void)triggerRetrocomputeWithReply:(id)reply
{
  if (sub_10001CF04())
  {
    sub_10000FF38(v23, "com.apple.locationd.VO2MaxService.Retrocompute", 0);
    self->fTriggerRetrocomputeInProgress = 1;
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Retrocompute triggered", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      LOWORD(v30) = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService triggerRetrocomputeWithReply:]", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    [(CLVO2MaxService *)self updateRetrocomputeStatus:2 unavailableReasons:0];
    self->fUpdateRetrocomputedDataSuccess = 0;
    self->fUpdateRetrocomputedDataAttempts = 0;
    self->fDeleteHealthKitSamplesSuccess = 0;
    self->fDeleteHealthKitSamplesAttempts = 0;
    sub_10055CAE4(&self->fPendingHealthKitWrites);
    v6 = sub_101110B2C(self->fStagingOutputStore.__ptr_, &self->fPendingHealthKitWrites);
    if (v6 == 100)
    {
      (*(reply + 2))(reply, 100);
      end = self->fPendingHealthKitWrites.__end_;
      if (self->fPendingHealthKitWrites.__begin_ != end)
      {
        v8 = *end[-1].var1;
        v24[0] = *(&end[-2].var22.__rep_.__l + 1);
        v24[1] = v8;
        v9 = *&end[-1].var2;
        v10 = *&end[-1].var4;
        v11 = *end[-1].var8;
        v24[4] = *&end[-1].var6;
        v24[5] = v11;
        v24[2] = v9;
        v24[3] = v10;
        v12 = *&end[-1].var9;
        v13 = *&end[-1].var11;
        v14 = *&end[-1].var15;
        *v25 = end[-1].var17;
        v24[7] = v13;
        v24[8] = v14;
        v24[6] = v12;
        v15 = *(&end[-1].var17 + 4);
        var19 = end[-1].var19;
        *&v25[4] = v15;
        if (end[-1].var22.__rep_.__s.__data_[15] < 0)
        {
          sub_100007244(&__p, *&end[-1].var20, end[-1].var22.__rep_.__l.__data_);
        }

        else
        {
          v16 = *&end[-1].var20;
          size = end[-1].var22.__rep_.__l.__size_;
          __p = v16;
        }

        v29 = *(&end[-1].var22.__rep_.__l + 2);
        [(CLVO2MaxService *)self saveStagingOutputToHealthKit:v24 activity:0];
        if (SHIBYTE(size) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_34;
      }

      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v19 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "No staging data found", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        LOWORD(v30) = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService triggerRetrocomputeWithReply:]", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      [(CLVO2MaxService *)self updateRetrocomputeStatus:3 unavailableReasons:0];
      sub_1003FC6DC(self->fRetrocomputeBodyMetricsDb.__ptr_);
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v18 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v33 = v6;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "Unable to query for staging output: %d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BEA08(buf);
        v30 = 67109120;
        v31 = v6;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService triggerRetrocomputeWithReply:]", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      [(CLVO2MaxService *)self updateRetrocomputeStatus:1 unavailableReasons:0];
      (*(reply + 2))(reply, v6);
    }

    self->fTriggerRetrocomputeInProgress = 0;
LABEL_34:
    sub_10001A420(v23);
    return;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v17 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Retrocompute is only available on phone", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BFD18();
  }

  (*(reply + 2))(reply, 109);
}

- (void)saveStagingOutputToHealthKit:(VO2MaxStagingOutput *)kit activity:
{
  v4 = v3;
  v7 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierVO2Max];
  var2 = kit->var2;
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:var2];
  v10 = [HKQuantity quantityWithUnit:[HKUnit unitFromString:@"ml/(kg*min)"] doubleValue:round(kit->var3 * 100.0) / 100.0];
  v11 = [[NSUUID alloc] initWithUUIDBytes:kit->var8];
  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:&off_10254EAB0 forKeyedSubscript:HKMetadataKeyVO2MaxTestType];
  if (kit->var21)
  {
    v13 = &__kCFBooleanTrue;
  }

  else
  {
    v13 = &__kCFBooleanFalse;
  }

  [v12 setObject:v13 forKeyedSubscript:_HKPrivateMetadataKeyUserOnBetaBlocker];
  [v12 setObject:objc_msgSend(v11 forKeyedSubscript:{"UUIDString"), HKMetadataKeySyncIdentifier}];
  [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", kit->var20), HKMetadataKeySyncVersion}];
  v14 = [HKQuantitySample quantitySampleWithType:v7 quantity:v10 startDate:v9 endDate:v9 metadata:v12];
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v15 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    uUIDString = [v11 UUIDString];
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Adding retrocomputed sample to HKHealthStore: %{public}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BFE04();
  }

  v16 = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  if ((*(&kit->var22.__rep_.__l + 23) & 0x8000000000000000) != 0)
  {
    if (kit->var22.__rep_.__l.__size_)
    {
      goto LABEL_12;
    }

LABEL_16:
    fHkHealthStore = self->fHkHealthStore;
    v38 = v14;
    v19 = [NSArray arrayWithObjects:&v38 count:1];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10055CF0C;
    v33 = &unk_10245EA90;
    v34 = v16;
    v35 = v4;
    v36 = var2;
    v20 = &v30;
    v21 = fHkHealthStore;
    goto LABEL_17;
  }

  if (!*(&kit->var22.__rep_.__l + 23))
  {
    goto LABEL_16;
  }

LABEL_12:
  p_var22 = &kit->var22;
  v18 = objc_alloc_init(HKHealthStore);
  if (*(&kit->var22.__rep_.__l + 23) < 0)
  {
    p_var22 = p_var22->__rep_.__l.__data_;
  }

  [(HKHealthStore *)v18 setSourceBundleIdentifier:[NSString stringWithUTF8String:p_var22]];
  [(HKHealthStore *)v18 resume];
  v37 = v14;
  v19 = [NSArray arrayWithObjects:&v37 count:1];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10055D070;
  v26 = &unk_10245EA90;
  v27 = v16;
  v28 = v4;
  v29 = var2;
  v20 = &v23;
  v21 = v18;
LABEL_17:
  [(HKHealthStore *)v21 saveObjects:v19 withCompletion:v20, v23, v24, v25, v26, v27, v28, *&v29, v30, v31, v32, v33, v34, v35, *&v36];
}

- (void)onRetrocomputeHealthKitSampleSavedWithStartTime:(double)time activity:(id)activity
{
  p_fPendingHealthKitWrites = &self->fPendingHealthKitWrites;
  end = self->fPendingHealthKitWrites.__end_;
  if (self->fPendingHealthKitWrites.__begin_ != end && *&end[-1].var1[8] == time)
  {
    if (![(CLVO2MaxService *)self updateRetrocomputeLastTimestampToHealthKit:time])
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v13 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134283521;
        timeCopy = time;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Failed to update retrocompute history record with lastTimestampToHealthKit (%{private}f). Will attempt to proceed with remaining HealthKit writes.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C00D8();
      }
    }

    self->fUpdateRetrocomputedDataAttempts = 0;
    v14 = p_fPendingHealthKitWrites->__end_;
    if (v14[-1].var22.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&v14[-1].var20);
    }

    p_fPendingHealthKitWrites->__end_ = (v14 - 192);
    if (p_fPendingHealthKitWrites->__begin_ == (&v14[-2].var22.__rep_.__l + 1))
    {
      [(CLVO2MaxService *)self promoteStagingData:activity];
    }

    else
    {
      v15 = *&v14[-2].var0;
      v28[0] = *&v14[-3].var22.__rep_.__l.__size_;
      v28[1] = v15;
      v16 = *&v14[-2].var1[8];
      v17 = *&v14[-2].var3;
      v18 = *&v14[-2].var7;
      v28[4] = *&v14[-2].var5;
      v28[5] = v18;
      v28[2] = v16;
      v28[3] = v17;
      v19 = *&v14[-2].var8[8];
      v20 = *&v14[-2].var10;
      v21 = *&v14[-2].var14;
      *v29 = v14[-2].var16;
      v28[7] = v20;
      v28[8] = v21;
      v28[6] = v19;
      v22 = *(&v14[-2].var16 + 4);
      v30 = BYTE4(v14[-2].var17);
      *&v29[4] = v22;
      if (v14[-2].var22.__rep_.__s.__data_[7] < 0)
      {
        sub_100007244(&__p, *&v14[-2].var18, *&v14[-2].var20);
      }

      else
      {
        v23 = *&v14[-2].var18;
        data = v14[-2].var22.__rep_.__l.__data_;
        __p = v23;
      }

      size = v14[-2].var22.__rep_.__l.__size_;
      [(CLVO2MaxService *)self saveStagingOutputToHealthKit:v28 activity:activity];
      if (SHIBYTE(data) < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v10 = p_fPendingHealthKitWrites->__end_;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - p_fPendingHealthKitWrites->__begin_) >> 6);
      if (v10 == p_fPendingHealthKitWrites->__begin_)
      {
        v12 = 0;
      }

      else
      {
        v12 = *&v10[-1].var1[8];
      }

      *buf = 134349569;
      timeCopy = *&v11;
      v42 = 2049;
      timeCopy2 = time;
      v44 = 2049;
      v45 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Will retry retrocompute trigger due to unexpected state. fPendingHealthKitWrites count: %{public}lu, expected sample startTime: %{private}f, actual sample startTime: %{private}f", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v24 = p_fPendingHealthKitWrites->__end_;
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - p_fPendingHealthKitWrites->__begin_) >> 6);
      if (v24 == p_fPendingHealthKitWrites->__begin_)
      {
        v26 = 0;
      }

      else
      {
        v26 = *&v24[-1].var1[8];
      }

      v34 = 134349569;
      v35 = v25;
      v36 = 2049;
      timeCopy3 = time;
      v38 = 2049;
      v39 = v26;
      v27 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService onRetrocomputeHealthKitSampleSavedWithStartTime:activity:]", "%s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    if (activity)
    {
      [(CLVO2MaxService *)self markXpcActivityDone:activity];
    }

    else
    {
      [(CLVO2MaxService *)self retryTriggerRetrocompute];
    }
  }
}

- (void)onRetrocomputeHealthKitSampleFailed:(id)failed
{
  if (failed)
  {
    [(CLVO2MaxService *)self markXpcActivityDone:?];
  }

  else
  {
    [(CLVO2MaxService *)self retryTriggerRetrocompute];
  }
}

- (void)promoteStagingData:(id)data
{
  v5 = sub_101110B28(self->fStagingOutputStore.__ptr_, a2);
  if (v5 != 100)
  {
    v6 = v5;
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Could not promote staging data: %d", v8, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C01E4(v6);
      if (data)
      {
        goto LABEL_10;
      }
    }

    else if (data)
    {
      goto LABEL_10;
    }

    [(CLVO2MaxService *)self retryTriggerRetrocompute];
    return;
  }

  [(CLVO2MaxService *)self updateRetrocomputeStatus:3 unavailableReasons:0];
  self->fUpdateRetrocomputedDataSuccess = 1;
  sub_1003FC6DC(self->fRetrocomputeBodyMetricsDb.__ptr_);
  [(CLVO2MaxService *)self deleteHealthKitSamples:1];
  self->fTriggerRetrocomputeInProgress = 0;
  if (data)
  {
LABEL_10:
    [(CLVO2MaxService *)self markXpcActivityDone:data];
  }
}

- (void)retryTriggerRetrocompute
{
  self->fTriggerRetrocomputeInProgress = 1;
  self->fUpdateRetrocomputedDataSuccess = 0;
  self->fUpdateRetrocomputedDataAttempts = 0;
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = "com.apple.locationd.VO2Max.RetrocomputeRetryTrigger";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Setting up %{public}s activity", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C02D4();
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputeRetryTrigger");
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10055D984;
  handler[3] = &unk_10245EAB8;
  handler[4] = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  xpc_activity_register("com.apple.locationd.VO2Max.RetrocomputeRetryTrigger", v4, handler);
  xpc_release(v4);
}

- (void)onRetryTriggerRetrocompute:(id)retrocompute
{
  if (retrocompute)
  {
    state = xpc_activity_get_state(retrocompute);
    if (state == 4 || (v6 = state, state == 2))
    {

      [(CLVO2MaxService *)self handleRetryTriggerRetrocompute:retrocompute];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v6;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Unexpected activity state: %ld", &v9, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C04EC();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C05DC();
    }
  }
}

- (void)handleRetryTriggerRetrocompute:(id)retrocompute
{
  sub_10000FF38(v17, "com.apple.locationd.VO2MaxService.Retrocompute", 0);
  v29[0] = 0;
  v29[1] = 0;
  v30 = 4;
  v35[4] = 0.0;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 28);
  if (self->fUpdateRetrocomputedDataSuccess)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Retrying retrocompute trigger already succeeded, cancelling activity", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_7;
    }

    sub_1018BEA08(buf);
    LOWORD(v21) = 0;
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

  if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, v29) == 109)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Unable to query for retrocompute history due to device lock", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_15;
    }

    sub_1018BEA08(buf);
    LOWORD(v21) = 0;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v14);
    if (v14 == buf)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  if (v31 != 2)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      v26 = v31;
      v27 = 1026;
      v28 = v30;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Will not attempt to retry retrocompute trigger, status: %{public}d, algVersion: %{public}d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_7;
    }

    sub_1018BEA08(buf);
    v21 = 67240448;
    v22 = v31;
    v23 = 1026;
    v24 = v30;
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_7;
    }

LABEL_49:
    free(v13);
LABEL_7:
    [(CLVO2MaxService *)self markXpcActivityDone:retrocompute];
    xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputeRetryTrigger");
LABEL_8:
    self->fTriggerRetrocomputeInProgress = 0;
    goto LABEL_16;
  }

  if (self->fUpdateRetrocomputedDataAttempts >= 3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Giving up attempting to retry retrocompute trigger", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      LOWORD(v21) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    [(CLVO2MaxService *)self markXpcActivityDone:retrocompute];
    xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputeRetryHealthKitDelete");
    if (v35[0] == 0.0)
    {
      [(CLVO2MaxService *)self updateRetrocomputeStatus:1 unavailableReasons:0, v35[0]];
    }

    goto LABEL_8;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v9 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Retrying retrocompute trigger", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BEA08(buf);
    LOWORD(v21) = 0;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  ++self->fUpdateRetrocomputedDataAttempts;
  self->fDeleteHealthKitSamplesSuccess = 0;
  self->fDeleteHealthKitSamplesAttempts = 0;
  sub_10055CAE4(&self->fPendingHealthKitWrites);
  v10 = sub_101110B2C(self->fStagingOutputStore.__ptr_, &self->fPendingHealthKitWrites);
  if (v10 != 100)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v12 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v26 = v10;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Unable to query for staging output: %d", buf, 8u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_15;
    }

    sub_1018BEA08(buf);
    v21 = 67109120;
    v22 = v10;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v14);
    if (v14 == buf)
    {
      goto LABEL_15;
    }

LABEL_51:
    free(v14);
LABEL_15:
    [(CLVO2MaxService *)self markXpcActivityDone:retrocompute];
    goto LABEL_16;
  }

  end = self->fPendingHealthKitWrites.__end_;
  if (self->fPendingHealthKitWrites.__begin_ == end)
  {
    [(CLVO2MaxService *)self promoteStagingData:retrocompute];
  }

  else
  {
    sub_100564858(v18, (&end[-2].var22.__rep_.__l + 1));
    [(CLVO2MaxService *)self saveStagingOutputToHealthKit:v18 activity:retrocompute];
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_16:
  sub_10001A420(v17);
}

- (void)deleteHealthKitSamples:(BOOL)samples
{
  samplesCopy = samples;
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Attempting to delete samples without estimates in HKHealthStore", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C06C0();
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (sub_101110E74(self->fStagingOutputStore.__ptr_, &v14) == 100)
  {
    if (v14 == v15)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v7 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "No sessions to delete from HKHealthStore", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        v13 = 0;
        v9 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService deleteHealthKitSamples:]", "%s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    else
    {
      __p = 0;
      v11 = 0;
      v12 = 0;
      sub_100564944(&__p, v14, v15, (v15 - v14) >> 5);
      [(CLVO2MaxService *)self deleteSessionsFromHealthKit:&__p withRetry:samplesCopy];
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Unable to fetch sessions without estimates", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      v13 = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService deleteHealthKitSamples:]", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    if (samplesCopy)
    {
      [(CLVO2MaxService *)self retryHealthKitDeleteSamples];
    }
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

- (void)retryHealthKitDeleteSamples
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "Setting up activity to attempt deleting sessions without estimates from HKHealthStore", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C07AC();
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, 30);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10055EA2C;
  handler[3] = &unk_10245EAB8;
  handler[4] = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  xpc_activity_register("com.apple.locationd.VO2Max.RetrocomputeRetryHealthKitDelete", v4, handler);
  xpc_release(v4);
}

- (void)onRetryHealthKitDeleteSamples:(id)samples
{
  if (samples)
  {
    state = xpc_activity_get_state(samples);
    if (state == 4 || (v6 = state, state == 2))
    {
      sub_10000FF38(&v9, "com.apple.locationd.VO2MaxService.Retrocompute", 0);
      [(CLVO2MaxService *)self handleRetryHealthKitDeleteSamples:samples];
      sub_10001A420(&v9);
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v6;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Unexpected activity state: %ld", &v9, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C0990();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C0A88();
    }
  }
}

- (void)handleRetryHealthKitDeleteSamples:(id)samples
{
  if (self->fDeleteHealthKitSamplesSuccess)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "HealthKit samples without an estimate have been deleted, cancelling activity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C0D3C();
    }

LABEL_22:
    [(CLVO2MaxService *)self markXpcActivityDone:samples];
    xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputeRetryHealthKitDelete");
    return;
  }

  if (self->fDeleteHealthKitSamplesAttempts > 2)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Giving up attempting to delete HealthKit samples without an estimate", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C0B74();
    }

    goto LABEL_22;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v6 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Attempting to retry deleting HealthKit samples without an estimate", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C0C58();
  }

  ++self->fDeleteHealthKitSamplesAttempts;
  [(CLVO2MaxService *)self deleteHealthKitSamples:0];
  [(CLVO2MaxService *)self markXpcActivityDone:samples];
}

- (void)deleteSessionsFromHealthKit:()vector<VO2MaxStagingLostEstimate withRetry:(std:(BOOL)retry :allocator<VO2MaxStagingLostEstimate>> *)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 != var1)
  {
    do
    {
      v8 = *(var0 + 1);
      *v26 = *var0;
      v27 = v8;
      v9 = [[NSUUID alloc] initWithUUIDBytes:&v27];
      [v5 addObject:{objc_msgSend(v9, "UUIDString")}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v10 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        uUIDString = [v9 UUIDString];
        *buf = 138412290;
        v25 = uUIDString;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Deleting session %@ from HKHealthStore", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C0E20(&v22, v9, &v23);
      }

      var0 = (var0 + 32);
    }

    while (var0 != var1);
  }

  if ([v5 count])
  {
    v12 = [objc_msgSend(objc_msgSend(v18 "universe")];
    v13 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierVO2Max];
    v14 = [HKSampleQuery predicateForObjectsWithMetadataKey:HKMetadataKeySyncIdentifier allowedValues:v5];
    v15 = v18[1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10055F190;
    v20[3] = &unk_10245EAE0;
    retryCopy = retry;
    v20[4] = v18;
    v20[5] = v12;
    [v15 deleteObjectsOfType:v13 predicate:v14 withCompletion:v20];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v16 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "No sessions found without estimates to delete from HKHealthStore", v26, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C0F44();
    }
  }
}

- (void)updateRetrocomputeStatus:(int)status unavailableReasons:(unsigned int)reasons
{
  v25[0] = 0;
  v25[1] = 0;
  v26 = 4;
  v32 = 0;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, 28);
  if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, v25) == 100)
  {
    v7 = v27;
    LODWORD(v27) = status;
    DWORD2(v31[1]) = reasons;
    sub_1007B855C(self->fRetrocomputeDb.__ptr_, v25, v25[0]);
    if (v7 != status)
    {
      v8 = [NSDate alloc];
      v9 = [v8 initWithTimeIntervalSinceReferenceDate:*(&v27 + 4)];
      v10 = [NSDate alloc];
      v11 = [v10 initWithTimeIntervalSinceReferenceDate:*&v28[1]];
      v12 = [NSNumber alloc];
      v13 = [v12 initWithDouble:*&v29];
      v14 = [[CMVO2MaxRetrocomputeState alloc] initWithStatus:v27 startDate:v9 endDate:v11 meanDelta:v13];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      retrocomputeStatusClients = [(CLVO2MaxService *)self retrocomputeStatusClients];
      v16 = [(NSMutableSet *)retrocomputeStatusClients countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(retrocomputeStatusClients);
            }

            [*(*(&v20 + 1) + 8 * v19) onRetrocomputeStatusUpdate:v14];
            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [(NSMutableSet *)retrocomputeStatusClients countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v17);
      }

      if (status == 3)
      {
        [objc_msgSend(objc_msgSend(-[CLVO2MaxService universe](self "universe")];
      }
    }
  }
}

- (BOOL)updateRetrocomputeLastTimestampToHealthKit:(double)kit
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 4;
  v10 = 0;
  v8 = 0u;
  memset(v9, 0, 28);
  memset(&v9[44], 0, 60);
  if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, v6) != 100)
  {
    return 0;
  }

  *&v9[76] = kit;
  return sub_1007B855C(self->fRetrocomputeDb.__ptr_, v6, v6[0]);
}

- (BOOL)validateBodyMetrics
{
  p_fOriginalBodyMetrics = &self->fOriginalBodyMetrics;
  p_fUserInfo = &self->fUserInfo;
  if (self->fOriginalBodyMetrics.biologicalSex == self->fUserInfo.biologicalSex && vabds_f32(self->fOriginalBodyMetrics.age, self->fUserInfo.age) <= 3.0 && vabds_f32(self->fOriginalBodyMetrics.heightM, self->fUserInfo.heightM) <= 0.0254 && vabds_f32(self->fOriginalBodyMetrics.weightKG, self->fUserInfo.weightKG) <= 9.08)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      biologicalSex = p_fUserInfo->biologicalSex;
      age = p_fUserInfo->age;
      heightM = p_fUserInfo->heightM;
      weightKG = p_fUserInfo->weightKG;
      v9 = p_fOriginalBodyMetrics->biologicalSex;
      v10 = p_fOriginalBodyMetrics->age;
      v11 = p_fOriginalBodyMetrics->heightM;
      v12 = p_fOriginalBodyMetrics->weightKG;
      *buf = 67176449;
      v17 = biologicalSex;
      v18 = 2049;
      v19 = age;
      v20 = 2049;
      v21 = heightM;
      v22 = 2049;
      v23 = weightKG;
      v24 = 1025;
      v25 = v9;
      v26 = 2049;
      v27 = v10;
      v28 = 2049;
      v29 = v11;
      v30 = 2049;
      v31 = v12;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Significant change in BodyMetrics during pre-processing. Original values -- biologicalSex: %{private}d, age: %{private}f, height: %{private}f, weight: %{private}f\n\nCurrent values -- biologicalSex: %{private}d, age: %{private}f, height: %{private}f, weight: %{private}f", buf, 0x4Au);
    }

    v13 = sub_10000A100(121, 2);
    if (v13)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService validateBodyMetrics]", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }

      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (void)onUserInfoUpdate:(const int *)update data:(const void *)data
{
  [-[CLVO2MaxService universe](self "universe")];
  if (*update == 2)
  {
    v8 = *(data + 1);
    v7 = *(data + 2);
    v9 = *data;
    *&self->fUserInfo.runVo2max = *(data + 44);
    *&self->fUserInfo.vo2max = v8;
    *&self->fUserInfo.hronset = v7;
    *&self->fUserInfo.gender = v9;
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v10 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      isAgeSet = self->fUserInfo._isAgeSet;
      age = self->fUserInfo.age;
      biologicalSex = self->fUserInfo.biologicalSex;
      isHeightSet = self->fUserInfo._isHeightSet;
      heightM = self->fUserInfo.heightM;
      isWeightSet = self->fUserInfo._isWeightSet;
      weightKG = self->fUserInfo.weightKG;
      v20 = 67241729;
      v21 = isAgeSet;
      v22 = 2049;
      v23 = age;
      v24 = 1025;
      v25 = biologicalSex;
      v26 = 1026;
      v27 = isHeightSet;
      v28 = 2049;
      v29 = heightM;
      v30 = 1026;
      v31 = isWeightSet;
      v32 = 2049;
      v33 = weightKG;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLVO2MaxService: Received user info update. IsAgeSet,%{public}d,Age,%{private}f,BiologicalSex,%{private}d,IsHeightSet,%{public}d,Height,%{private}f,IsWeightSet,%{public}d,Weight,%{private}f", &v20, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C1200(&self->fUserInfo);
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v18 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *update;
      v20 = 67109120;
      v21 = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled notification type, %d", &v20, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C110C(update);
    }
  }
}

- (void)getLatestVO2MaxValueForBodyMetrics:(const CLBodyMetrics *)metrics sinceTime:(double)time withReply:(id)reply
{
  v6 = objc_alloc_init(NSMutableDictionary);
  v40 = 0;
  v42 = 0;
  v44 = 0;
  v43 = 0;
  v7 = sub_10104516C();
  if (sub_101045B90(v7, v39))
  {
    if (v41 < 10.0 || v41 > 100.0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxWatchEstimate";
        *&buf[12] = 2049;
        *&buf[14] = v41;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C1364();
      }
    }

    else
    {
      [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v41), @"VO2MaxWatchEstimate"}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v10 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxWatchEstimate";
        *&buf[12] = 2049;
        *&buf[14] = v41;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C146C();
      }
    }
  }

  v34 = 0;
  v36 = 0;
  v38 = 0;
  v37 = 0;
  v11 = sub_10104516C();
  if (sub_101045CAC(v11, v33))
  {
    if (v35 < 10.0 || v35 > 100.0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v13 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxPhoneEstimate";
        *&buf[12] = 2049;
        *&buf[14] = v35;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C1574();
      }
    }

    else
    {
      [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v35), @"VO2MaxPhoneEstimate"}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v12 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxPhoneEstimate";
        *&buf[12] = 2049;
        *&buf[14] = v35;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C167C();
      }
    }
  }

  ptr = self->fPriorDb.__ptr_;
  if (ptr)
  {
    memset(&v30[5], 0, 24);
    sub_1008FE1C0(ptr);
  }

  if (metrics)
  {
    v15 = *&metrics->vo2max;
    *buf = *&metrics->gender;
    *&buf[16] = v15;
    v32[0] = *&metrics->hronset;
    *(v32 + 12) = *&metrics->runVo2max;
    sub_10062AADC(buf);
    v17 = v16 * 3.5;
    v18 = v17;
    if (v17 < 10.0 || v17 > 100.0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v20 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxJacksonFallback";
        *&buf[12] = 2049;
        *&buf[14] = v18;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C1784();
      }
    }

    else
    {
      [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v17), @"VO2MaxJacksonFallback"}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v21 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxJacksonFallback";
        *&buf[12] = 2049;
        *&buf[14] = v18;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics setting key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C1890();
      }
    }

    sub_100D9AB28(metrics, buf);
    CHVO2MaxPrior::estimatePhoneBasedPrior();
    v23 = v22;
    if (v22 < 10.0 || v22 > 100.0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v25 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxDemographicsOnlyFallback";
        *&buf[12] = 2049;
        *&buf[14] = v23;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C199C();
      }
    }

    else
    {
      [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v22), @"VO2MaxDemographicsOnlyFallback"}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v24 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxDemographicsOnlyFallback";
        *&buf[12] = 2049;
        *&buf[14] = v23;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics setting key, %{public}@  value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C1AA8();
      }
    }
  }

  v26 = [NSMutableString stringWithString:@"getLatestVO2MaxValueForBodyMetrics results:"];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100560ACC;
  v30[3] = &unk_10245EB08;
  v30[4] = v26;
  [v6 enumerateKeysAndObjectsUsingBlock:v30];
  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v27 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v26;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C1BB4();
  }

  if (reply)
  {
    (*(reply + 2))();
  }
}

- (void)savePrior:(VO2MaxPrior *)prior
{
  ptr = self->fPriorDb.__ptr_;
  if (ptr)
  {
    sub_100560C48(ptr, prior, 0);
    sub_1008FD864(self->fPriorDb.__ptr_);
    [objc_msgSend(objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  }
}

- (void)registerPriorRepeatingTask
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100560DD0;
  v2[3] = &unk_10245EB30;
  v2[4] = self;
  [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
}

- (void)submitPriorRepeatingTask
{
  if (![+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")])
  {
    v4 = 0;
    v2 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.locationd.VO2MaxPriorUpdate"];
    [v2 setRequiresNetworkConnectivity:0];
    [v2 setRequiresExternalPower:0];
    [v2 setInterval:86400.0];
    [v2 setMinDurationBetweenInstances:82800.0];
    if (([+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")] & 1) == 0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v3 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v6 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Failed to submit task with error: %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C1D90();
      }
    }
  }
}

- (void)handlePriorRepeatingTask:(id)task
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100561244;
  v8[3] = &unk_10245AE50;
  v8[4] = &v9;
  [task setExpirationHandler:v8];
  [(CLVO2MaxService *)self calculatePrior:v10 + 3];
  v7 = 0;
  if (*(v10 + 24) == 1)
  {
    if ([task setTaskExpiredWithRetryAfter:&v7 error:0.0])
    {
      if (v10[3])
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v5 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Failed to expire task with error: %@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BEA08(buf);
        v13 = 138412290;
        v14 = v7;
        v6 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService handlePriorRepeatingTask:]", "%s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }
    }
  }

  [task setTaskCompleted];
LABEL_11:
  _Block_object_dispose(&v9, 8);
}

- (void)calculatePrior:(BOOL *)prior
{
  sub_10000FF38(v17, "VO2MaxService.calcPrior", 0);
  if (sub_10001CF04())
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "calculatePrior triggered", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      LOWORD(__p) = 0;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService calculatePrior:]", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_101206658(&__p, &self->fPhonePriorDailyInputRecorderDb, &self->fStepCountDb.__ptr_);
    if (prior && *prior)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v6 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Asked to interrupt background activity by dasd. Aborting...", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        v7 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService calculatePrior:]", "%s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }

    else
    {
      if (__p != v15)
      {
        sub_100D9AB28(&self->fUserInfo, buf);
        CHVO2MaxPrior::estimatePhoneBasedPriorFromDailyInputs();
        v9 = v8;
        Current = CFAbsoluteTimeGetCurrent();
        *buf = 0;
        v19 = Current;
        v20 = v9;
        v21 = 1;
        v22 = 0;
        v23 = 0;
        [(CLVO2MaxService *)self savePrior:buf];
      }

      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v11 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Aggregating PhonePriorDailyInputHistory", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService calculatePrior:]", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      sub_100561758(self->fPhonePriorDailyInputHistoryAggregator.__ptr_);
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  sub_10001A420(v17);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 24) = 0;
  *(self + 41) = 0;
  *(self + 42) = 0;
  *(self + 40) = 0;
  *(self + 43) = 0;
  return self;
}

@end