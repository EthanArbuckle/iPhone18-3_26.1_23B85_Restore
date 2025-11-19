@interface CLPredictedWalkDistanceServiceCompanion
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLPredictedWalkDistanceServiceCompanion)init;
- (id).cxx_construct;
- (void)beginService;
- (void)completeActivity:(id)a3 withNextEstimateTime:(double)a4;
- (void)endService;
- (void)getSixMinuteWalkDistancePrediction:(id)a3;
- (void)onP6MWDActivity:(id)a3;
- (void)onUserInfoUpdate:(const int *)a3 data:(const void *)a4;
- (void)receivePredictedWalkDistanceBout:(id)a3;
- (void)scheduleEstimate;
- (void)sendAnalyticsWeeklyEstimate:(CLPredictedWalkDistanceEstimate *)a3 strideCalInfo:(StrideCalInfo *)a4 walkingWorkoutPaceStats:(CLRunningStat *)a5 runningWorkoutPaceStats:(CLRunningStat *)a6 userInfo:(CLBodyMetrics *)a7;
- (void)sendToCoreAnalyticsWeeklyEstimate:(const CLPredictedWalkDistanceEstimateAnalytics *)a3;
- (void)setUpAggregationOnTimer;
- (void)writeToHealthKitPrediction:(double)a3 estimateTime:(double)a4 earliestTimeUsed:(double)a5 calibrationStatus:(BOOL)a6;
@end

@implementation CLPredictedWalkDistanceServiceCompanion

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656210 != -1)
  {
    sub_10187CE14();
  }

  return qword_102656208;
}

- (CLPredictedWalkDistanceServiceCompanion)init
{
  v3.receiver = self;
  v3.super_class = CLPredictedWalkDistanceServiceCompanion;
  return [(CLPredictedWalkDistanceServiceCompanion *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLPredictedWalkDistanceServiceCompanionProtocol outboundProtocol:&OBJC_PROTOCOL___CLPredictedWalkDistanceServiceCompanionClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102656220 != -1)
  {
    sub_10187CE28();
  }

  return byte_102656218;
}

- (void)beginService
{
  if (qword_1025D4430 != -1)
  {
    sub_10187CE3C();
  }

  v2 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Starting up CLPredictedWalkDistanceServiceCompanion", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187CE50();
  }

  LOBYTE(v3) = 0;
  sub_1003F72AC();
}

- (void)endService
{
  fAggregationTimer = self->fAggregationTimer;
  if (fAggregationTimer)
  {
    dispatch_source_cancel(fAggregationTimer);
    dispatch_release(self->fAggregationTimer);
    self->fAggregationTimer = 0;
  }

  self->fHkHealthStore = 0;
}

- (void)scheduleEstimate
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = sub_100011660();
  sub_100185AC0(v4, &v14);
  v13 = 0.0;
  sub_1000B9370(v14, "kP6MWDNextEstimateTime", &v13);
  v5 = v13;
  if (v13 > Current + 604800.0)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v6 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "kP6MWDNextEstimateTime";
      v24 = 2050;
      v25 = v13;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "%{public}s is too far in the future (%{public}.2f). Resetting!", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187CF5C(buf);
      v16 = 136446466;
      v17 = "kP6MWDNextEstimateTime";
      v18 = 2050;
      v19 = v13;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLPredictedWalkDistanceServiceCompanion scheduleEstimate]", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    sub_1004FA8B8(v14, "kP6MWDNextEstimateTime", 0xFFFFFFFFLL);
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

  if (qword_1025D4430 != -1)
  {
    sub_10187CF34();
  }

  v9 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v23 = "com.apple.locationd.P6MWD";
    v24 = 2050;
    v25 = v13;
    v26 = 2050;
    v27 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Registering XPC Activity with nextEstimateTime=(%{public}.2f) and delay=(%{public}lld)", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187CF5C(buf);
    v16 = 136446722;
    v17 = "com.apple.locationd.P6MWD";
    v18 = 2050;
    v19 = v13;
    v20 = 2050;
    v21 = v8;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion scheduleEstimate]", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  xpc_activity_unregister("com.apple.locationd.P6MWD");
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1003EF2F0;
  handler[3] = &unk_102450188;
  handler[4] = [objc_msgSend(-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")];
  handler[5] = v8;
  xpc_activity_register("com.apple.locationd.P6MWD", XPC_ACTIVITY_CHECK_IN, handler);
  if (v15)
  {
    sub_100008080(v15);
  }
}

- (void)setUpAggregationOnTimer
{
  ptr = self->fBoutAggregator.__ptr_;
  v5 = ptr[1];
  v4 = ptr[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *ptr) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *ptr) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_10013E290(self->fBoutAggregator.__ptr_, v10);
    }

    v11 = 24 * v7;
    *v11 = xmmword_101C76360;
    *(v11 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = ptr[1] - *ptr;
    v13 = 24 * v7 - v12;
    memcpy((v11 - v12), *ptr, v12);
    v14 = *ptr;
    *ptr = v13;
    ptr[1] = v6;
    ptr[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = xmmword_101C76360;
    v5[16] = 0;
    v6 = (v5 + 24);
  }

  ptr[1] = v6;
  v22 = 86400;
  v15 = sub_100011660();
  sub_100185AC0(v15, &v20);
  sub_10005BBE4(v20, "P6MWDAggregationTimeInterval", &v22);
  if (v21)
  {
    sub_100008080(v21);
  }

  v16 = 1000000000 * v22;
  v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [objc_msgSend(-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")]);
  self->fAggregationTimer = v17;
  dispatch_source_set_timer(v17, 0, v16, 0xDF8475800uLL);
  fAggregationTimer = self->fAggregationTimer;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003EF870;
  v19[3] = &unk_102447418;
  v19[4] = self;
  dispatch_source_set_event_handler(fAggregationTimer, v19);
  dispatch_resume(self->fAggregationTimer);
}

- (void)onP6MWDActivity:(id)a3
{
  if (a3)
  {
    state = xpc_activity_get_state(a3);
    if (state == 4 || (v6 = state, state == 2))
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v7 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Preparing to make weekly 6MWD prediction", &v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187D6FC();
      }

      [(CLPredictedWalkDistanceServiceCompanion *)self getSixMinuteWalkDistancePrediction:a3];
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v9 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        v11 = v6;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Unexpected activity state: %ld", &v10, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187D7D8();
      }
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v8 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187D8D0();
    }
  }
}

- (void)getSixMinuteWalkDistancePrediction:(id)a3
{
  if (objc_opt_class() && ![(CLPredictedWalkDistanceServiceCompanion *)self isWheelchairMode])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v126 = 0.0;
    v7 = sub_100011660();
    sub_100185AC0(v7, buf);
    sub_1000B9370(*buf, "kP6MWDNextEstimateTime", &v126);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (Current >= v126)
    {
      v125 = *self->fP6MWDEstimator.__ptr_;
      v9 = sub_100011660();
      sub_100185AC0(v9, buf);
      v10 = sub_10005BBE4(*buf, "P6MWDActivityHistoryDuration", &v125);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      v11 = v125;
      if (v10)
      {
        *self->fP6MWDEstimator.__ptr_ = v125;
      }

      v12 = +[NSDate date];
      v13 = [(NSDate *)v12 dateByAddingTimeInterval:v11 * -86400.0];
      v14 = dispatch_group_create();
      v123[0] = 0;
      v123[1] = v123;
      v123[2] = 0x2020000000;
      v124 = 0;
      v121[0] = 0;
      v121[1] = v121;
      v121[2] = 0x2020000000;
      v122 = 0;
      v117[0] = 0;
      v117[1] = v117;
      v117[2] = 0x4812000000;
      v117[3] = sub_1000473E0;
      v117[4] = sub_1000483B4;
      v117[5] = &unk_10238AE8B;
      v120 = 0;
      v118 = 0;
      v119 = 0;
      v113[0] = 0;
      v113[1] = v113;
      v113[2] = 0x4812000000;
      v113[3] = sub_1003F118C;
      v113[4] = sub_1003F11B0;
      v113[5] = &unk_10238AE8B;
      v116 = 0;
      v114 = 0;
      v115 = 0;
      v109[0] = 0;
      v109[1] = v109;
      v109[2] = 0x4812000000;
      v109[3] = sub_1003F118C;
      v109[4] = sub_1003F11B0;
      v109[5] = &unk_10238AE8B;
      v112 = 0;
      v110 = 0;
      v111 = 0;
      v105[0] = 0;
      v105[1] = v105;
      v105[2] = 0x4812000000;
      v105[3] = sub_1003F118C;
      v105[4] = sub_1003F11B0;
      v105[5] = &unk_10238AE8B;
      v108 = 0;
      v106 = 0;
      v107 = 0;
      v101[0] = 0;
      v101[1] = v101;
      v101[2] = 0x4812000000;
      v101[3] = sub_1003F118C;
      v101[4] = sub_1003F11B0;
      v101[5] = &unk_10238AE8B;
      v104 = 0;
      v102 = 0;
      v103 = 0;
      v97[0] = 0;
      v97[1] = v97;
      v97[2] = 0x4812000000;
      v97[3] = sub_1003F118C;
      v97[4] = sub_1003F11B0;
      v97[5] = &unk_10238AE8B;
      v100 = 0;
      v98 = 0;
      v99 = 0;
      v93[0] = 0;
      v93[1] = v93;
      v93[2] = 0x4812000000;
      v93[3] = sub_1003F11C8;
      v93[4] = sub_1003F11EC;
      v93[5] = &unk_10238AE8B;
      v96 = 0;
      v94 = 0;
      v95 = 0;
      v89[0] = 0;
      v89[1] = v89;
      v89[2] = 0x4812000000;
      v89[3] = sub_1003F1204;
      v89[4] = sub_1003F1228;
      v89[5] = &unk_10238AE8B;
      v92 = 0;
      v90 = 0;
      v91 = 0;
      v85[0] = 0;
      v85[1] = v85;
      v85[2] = 0x4812000000;
      v85[3] = sub_1003F1204;
      v85[4] = sub_1003F1228;
      v85[5] = &unk_10238AE8B;
      v88 = 0;
      v86 = 0;
      v87 = 0;
      v81[0] = 0;
      v81[1] = v81;
      v81[2] = 0x4812000000;
      v81[3] = sub_1003F1240;
      v81[4] = sub_1003F1264;
      v81[5] = &unk_10238AE8B;
      v84 = 0;
      __p = 0;
      v83 = 0;
      v77[0] = 0;
      v77[1] = v77;
      v77[2] = 0x5812000000;
      v77[3] = sub_1003F127C;
      v77[4] = nullsub_100;
      v77[5] = &unk_10238AE8B;
      v78 = 0;
      v79 = 0u;
      v80 = 0u;
      v73[0] = 0;
      v73[1] = v73;
      v73[2] = 0x5812000000;
      v73[3] = sub_1003F127C;
      v73[4] = nullsub_100;
      v73[5] = &unk_10238AE8B;
      v74 = 0;
      v75 = 0u;
      v76 = 0u;
      dispatch_group_enter(v14);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003F1294;
      block[3] = &unk_1024501B0;
      block[4] = self;
      v54 = v13;
      block[5] = v13;
      block[8] = v117;
      block[9] = v123;
      block[6] = v12;
      block[7] = v14;
      dispatch_async(global_queue, block);
      v16 = [objc_msgSend(objc_msgSend(objc_msgSend(-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")];
      v63 = 0;
      v64 = &v63;
      v65 = 0x7012000000;
      v66 = sub_1003F1494;
      v67 = nullsub_101;
      v68 = &unk_10238AE8B;
      v69 = xmmword_101C763B0;
      v70 = unk_101C763C0;
      v71[0] = xmmword_101C763D0;
      *(v71 + 12) = *(&xmmword_101C763D0 + 12);
      v17 = [v16 objectForKey:CMNatalimeterSetUserAgeYr];
      if (v17)
      {
        v18 = v64;
        [v17 floatValue];
        *(v18 + 104) = 1;
        *(v18 + 17) = v19;
      }

      v20 = [v16 objectForKey:CMNatalimeterSetUserHeightMeter];
      if (v20)
      {
        v21 = v64;
        [v20 floatValue];
        *(v21 + 105) = 1;
        *(v21 + 14) = v22;
      }

      [objc_msgSend(v16 objectForKey:{CMNatalimeterSetUserWeightKG), "floatValue"}];
      *(v64 + 15) = v23;
      v24 = [objc_msgSend(v16 objectForKey:{CMNatalimeterSetUserBiologicalSex), "intValue"}];
      *(v64 + 13) = v24;
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v25 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(v64 + 17);
        v27 = *(v64 + 14);
        v28 = *(v64 + 15);
        *buf = 134284033;
        *&buf[4] = v26;
        *&buf[12] = 2049;
        *&buf[14] = v27;
        v135 = 2049;
        v136 = v28;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Retrieved demographics: age=%{private}.0f, height=%{private}.2f, weight=%{private}.1f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187CF5C(buf);
        v46 = *(v64 + 17);
        v47 = *(v64 + 14);
        v48 = *(v64 + 15);
        v128 = 134284033;
        v129 = v46;
        v130 = 2049;
        v131 = v47;
        v132 = 2049;
        v133 = v48;
        v49 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]", "%s\n", v49);
        if (v49 != buf)
        {
          free(v49);
        }
      }

      v29 = objc_alloc_init(CMPedometer);
      dispatch_group_enter(v14);
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_1003F14B4;
      v62[3] = &unk_1024501D8;
      v62[5] = v89;
      v62[4] = v14;
      [v29 queryRemoteStepCadenceToStrideLengthBinsWithHandler:v62];
      dispatch_group_enter(v14);
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_1003F17CC;
      v61[3] = &unk_1024501D8;
      v61[5] = v85;
      v61[4] = v14;
      [v29 queryStepCadenceToStrideLengthBinsWithHandler:v61];
      dispatch_group_enter(v14);
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_1003F1AE4;
      v60[3] = &unk_102450200;
      v60[4] = self;
      v60[5] = v12;
      v60[8] = v123;
      v60[7] = v81;
      v60[6] = v14;
      dispatch_async(global_queue, v60);
      v30 = [(NSDate *)v54 dateByAddingTimeInterval:-86400.0];
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v31 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        [(NSDate *)v30 timeIntervalSinceReferenceDate];
        v33 = v32;
        [(NSDate *)v12 timeIntervalSinceReferenceDate];
        *buf = 134349312;
        *&buf[4] = v33;
        *&buf[12] = 2050;
        *&buf[14] = v34;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "HealthKit queries from %{public}.0f to %{public}.0f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187CF5C(buf);
        [(NSDate *)v30 timeIntervalSinceReferenceDate];
        v51 = v50;
        [(NSDate *)v12 timeIntervalSinceReferenceDate];
        v128 = 134349312;
        v129 = v51;
        v130 = 2050;
        v131 = v52;
        v53 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]", "%s\n", v53);
        if (v53 != buf)
        {
          free(v53);
        }
      }

      v35 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
      v36 = [(NSCalendar *)v35 components:30 fromDate:v30];
      [(NSDateComponents *)v36 setCalendar:v35];
      v37 = [(NSCalendar *)v35 components:30 fromDate:v12];
      [(NSDateComponents *)v37 setCalendar:v35];
      v38 = [HKQuery predicateForActivitySummariesBetweenStartDateComponents:v36 endDateComponents:v37];
      dispatch_group_enter(v14);
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1003F1CC4;
      v59[3] = &unk_102450250;
      v59[6] = v123;
      v59[7] = v113;
      v59[8] = v105;
      v59[9] = v101;
      v59[4] = self;
      v59[5] = v14;
      v39 = [[HKActivitySummaryQuery alloc] initWithPredicate:v38 resultsHandler:v59];
      [(HKHealthStore *)self->fHkHealthStore executeQuery:v39];

      v40 = [HKQuery predicateForSamplesWithStartDate:v30 endDate:v12 options:3];
      v41 = +[HKQuery _predicateForObjectsFromAppleWatches];
      v127[0] = v40;
      v127[1] = v41;
      v42 = [NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:v127 count:2]];
      dispatch_group_enter(v14);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1003F24EC;
      v58[3] = &unk_102450278;
      v58[6] = v123;
      v58[7] = v93;
      v58[8] = v77;
      v58[9] = v73;
      v58[4] = self;
      v58[5] = v14;
      v43 = [[HKSampleQuery alloc] initWithSampleType:+[HKSampleType workoutType](HKSampleType predicate:"workoutType") limit:v42 sortDescriptors:0 resultsHandler:{0, v58}];
      [(HKHealthStore *)self->fHkHealthStore executeQuery:v43];

      dispatch_group_enter(v14);
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1003F2CBC;
      v57[3] = &unk_1024502C8;
      v57[6] = v123;
      v57[7] = v97;
      v57[4] = self;
      v57[5] = v14;
      v44 = [[HKSampleQuery alloc] initWithSampleType:+[HKObjectType categoryTypeForIdentifier:](HKObjectType predicate:"categoryTypeForIdentifier:" limit:HKCategoryTypeIdentifierAppleStandHour) sortDescriptors:v42 resultsHandler:{0, 0, v57}];
      [(HKHealthStore *)self->fHkHealthStore executeQuery:v44];

      dispatch_group_enter(v14);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1003F3250;
      v56[3] = &unk_102450318;
      v56[6] = v123;
      v56[7] = v121;
      v56[8] = v109;
      v56[4] = self;
      v56[5] = v14;
      v45 = [[HKSampleQuery alloc] initWithSampleType:+[HKSampleType quantityTypeForIdentifier:](HKSampleType predicate:"quantityTypeForIdentifier:" limit:HKQuantityTypeIdentifierFlightsClimbed) sortDescriptors:v40 resultsHandler:{0, 0, v56}];
      [(HKHealthStore *)self->fHkHealthStore executeQuery:v45];

      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1003F38EC;
      v55[3] = &unk_102450340;
      v55[4] = v14;
      v55[5] = a3;
      v55[8] = v123;
      v55[9] = v117;
      v55[6] = self;
      v55[7] = v12;
      v55[10] = v113;
      v55[11] = v97;
      v55[12] = v89;
      v55[13] = &v63;
      v55[14] = v85;
      v55[15] = v81;
      v55[16] = v121;
      v55[17] = v109;
      v55[18] = v101;
      v55[19] = v105;
      v55[20] = v93;
      v55[21] = v77;
      v55[22] = v73;
      dispatch_group_notify(v14, [objc_msgSend(-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")], v55);
      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(v73, 8);
      _Block_object_dispose(v77, 8);
      _Block_object_dispose(v81, 8);
      if (__p)
      {
        v83 = __p;
        operator delete(__p);
      }

      _Block_object_dispose(v85, 8);
      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }

      _Block_object_dispose(v89, 8);
      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      _Block_object_dispose(v93, 8);
      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      _Block_object_dispose(v97, 8);
      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      _Block_object_dispose(v101, 8);
      if (v102)
      {
        v103 = v102;
        operator delete(v102);
      }

      _Block_object_dispose(v105, 8);
      if (v106)
      {
        v107 = v106;
        operator delete(v106);
      }

      _Block_object_dispose(v109, 8);
      if (v110)
      {
        v111 = v110;
        operator delete(v110);
      }

      _Block_object_dispose(v113, 8);
      if (v114)
      {
        v115 = v114;
        operator delete(v114);
      }

      _Block_object_dispose(v117, 8);
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      _Block_object_dispose(v121, 8);
      _Block_object_dispose(v123, 8);
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v8 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "kP6MWDNextEstimateTime";
        *&buf[12] = 2050;
        *&buf[14] = v126;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Estimate should not be made now. %{public}s is in the future (%{public}.2f). Resetting!", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187D9B4();
      }

      [(CLPredictedWalkDistanceServiceCompanion *)self completeActivity:a3 withNextEstimateTime:v126];
    }
  }

  else
  {
    v5 = CFAbsoluteTimeGetCurrent() + self->fP6MWDPredictionInterval;

    [(CLPredictedWalkDistanceServiceCompanion *)self completeActivity:a3 withNextEstimateTime:v5];
  }
}

- (void)completeActivity:(id)a3 withNextEstimateTime:(double)a4
{
  v9 = a4;
  v6 = sub_100011660();
  sub_100185AC0(v6, buf);
  sub_100116D68(*buf, "kP6MWDNextEstimateTime", &v9);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (!xpc_activity_set_state(a3, 5))
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v7 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_FAULT))
    {
      state = xpc_activity_get_state(a3);
      *buf = 136446466;
      *&buf[4] = "com.apple.locationd.P6MWD";
      *&buf[12] = 2050;
      *&buf[14] = state;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as Done. Current state is %{public}ld", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187ED94(a3);
    }
  }

  [(CLPredictedWalkDistanceServiceCompanion *)self scheduleEstimate];
}

- (void)writeToHealthKitPrediction:(double)a3 estimateTime:(double)a4 earliestTimeUsed:(double)a5 calibrationStatus:(BOOL)a6
{
  v6 = a6;
  if (objc_opt_class())
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v11 = round(a3);
    v12 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134350081;
      v32 = a4;
      v33 = 2050;
      v34 = a4;
      v35 = 2049;
      v36 = v11;
      v37 = 1025;
      v38 = v6;
      v39 = 2049;
      v40 = a5;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Writing predicted 6MWD to HealthKit, startTime: %{public}f, endTime: %{public}f, prediction: %{private}f, calibrationStatus: %{private}d, earliestTimeUsed: %{private}f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v21 = 134350081;
      v22 = a4;
      v23 = 2050;
      v24 = a4;
      v25 = 2049;
      v26 = v11;
      v27 = 1025;
      v28 = v6;
      v29 = 2049;
      v30 = a5;
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion writeToHealthKitPrediction:estimateTime:earliestTimeUsed:calibrationStatus:]", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v13 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierSixMinuteWalkTestDistance];
    v14 = objc_opt_new();
    v15 = v14;
    if (v6)
    {
      v16 = &__kCFBooleanTrue;
    }

    else
    {
      v16 = &__kCFBooleanFalse;
    }

    [v14 setObject:v16 forKeyedSubscript:HKMetadataKeyAppleDeviceCalibrated];
    if (a5 != 0.0)
    {
      [v15 setObject:+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate forKeyedSubscript:{"dateWithTimeIntervalSinceReferenceDate:", a5), HKMetadataKeyDateOfEarliestDataUsedForEstimate}];
    }

    v17 = [HKQuantitySample quantitySampleWithType:v13 quantity:[HKQuantity quantityWithUnit:[HKUnit unitFromString:@"m"] doubleValue:v11] startDate:[NSDate dateWithTimeIntervalSinceReferenceDate:a4] endDate:[NSDate dateWithTimeIntervalSinceReferenceDate:a4] metadata:v15];
    fHkHealthStore = self->fHkHealthStore;
    v20 = v17;
    [(HKHealthStore *)fHkHealthStore saveObjects:[NSArray withCompletion:"arrayWithObjects:count:" arrayWithObjects:1 count:?], &stru_102450380];
  }
}

- (void)receivePredictedWalkDistanceBout:(id)a3
{
  if (qword_1025D4430 != -1)
  {
    sub_10187CE3C();
  }

  v5 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Received message in CLPredictedWalkDistanceServiceCompanion", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187F08C();
  }

  *buf = 0;
  *&buf[8] = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v27 = 0uLL;
  v29 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  [a3 getBytes:buf length:120];
  if (qword_1025D4430 != -1)
  {
    sub_10187CF34();
  }

  v6 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 134283777;
    *&v34[4] = *&buf[8];
    *&v34[12] = 2049;
    *&v34[14] = v25;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Received bout from watch...,startTime,%{private}f,endTime,%{private}f", v34, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187F170(&buf[8]);
  }

  sub_1003F5018(self->fBoutDb.__ptr_, buf, 0);
  if (DWORD2(v30) == 1)
  {
    operator new();
  }

  if (self->fPendingWatchBouts.__size_)
  {
    while (1)
    {
      next = self->fPendingWatchBouts.__end_.__next_;
      v8 = next[1];
      v9 = next[2];
      v10 = next[4];
      v35 = next[3];
      v36 = v10;
      v11 = next[5];
      v12 = next[7];
      v38 = next[6];
      v39 = v12;
      v40 = *(next + 16);
      v37 = v11;
      ptr = self->fGaitMetricsDb.__ptr_;
      v14 = ptr + 416;
      v15 = ptr == 0;
      v16 = self->fWalkingSpeedCalDb.__ptr_;
      v17 = v15 ? 0 : v14;
      v18 = v16 ? v16 + 368 : 0;
      *v34 = v8;
      *&v34[16] = v9;
      if (sub_1006267A8(v34, v17, v18) == 109)
      {
        break;
      }

      v19 = self->fPendingWatchBouts.__end_.__next_;
      v21 = *v19;
      v20 = v19[1];
      *(v21 + 8) = v20;
      *v20 = v21;
      --self->fPendingWatchBouts.__size_;
      operator delete(v19);
      if (!self->fPendingWatchBouts.__size_)
      {
        return;
      }
    }

    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v22 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Gait Metrics unavailable, likely because device is locked.", v23, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F284();
    }
  }
}

- (void)onUserInfoUpdate:(const int *)a3 data:(const void *)a4
{
  [-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")];
  if (*a3 == 2)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v7 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLPredictedWalkDistanceServiceCompanion: Received user info update", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F464();
    }

    v9 = *(a4 + 1);
    v8 = *(a4 + 2);
    v10 = *a4;
    *&self->fUserInfo.runVo2max = *(a4 + 44);
    *&self->fUserInfo.vo2max = v9;
    *&self->fUserInfo.hronset = v8;
    *&self->fUserInfo.gender = v10;
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v11 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a3;
      v13[0] = 67109120;
      v13[1] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled notification type, %d", v13, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F368(a3);
    }
  }
}

- (void)sendAnalyticsWeeklyEstimate:(CLPredictedWalkDistanceEstimate *)a3 strideCalInfo:(StrideCalInfo *)a4 walkingWorkoutPaceStats:(CLRunningStat *)a5 runningWorkoutPaceStats:(CLRunningStat *)a6 userInfo:(CLBodyMetrics *)a7
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    v13 = a3->var0 + -7862400.0;
    v14 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3->var0];
    v15 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v13];
    v35 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierSixMinuteWalkTestDistance];
    v16 = [HKQuery predicateForSamplesWithStartDate:v15 endDate:v14 options:3];
    v17 = [HKSampleQuery alloc];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1003F5540;
    v36[3] = &unk_1024503D0;
    v36[4] = self;
    v18 = *&a3->var34;
    v51 = *&a3->var32;
    v52 = v18;
    v19 = *&a3->var29;
    v49 = *&a3->var27;
    v50 = v19;
    v20 = *&a3->var21;
    v45 = *&a3->var19;
    v46 = v20;
    v21 = *&a3->var25;
    v47 = *&a3->var23;
    v48 = v21;
    v22 = *&a3->var10;
    v41 = *&a3->var8;
    v42 = v22;
    v23 = *&a3->var16;
    v43 = *&a3->var14;
    v44 = v23;
    v24 = *&a3->var2;
    v37 = *&a3->var0;
    v38 = v24;
    v25 = *&a3->var6;
    v39 = *&a3->var4;
    v40 = v25;
    v26 = *&a4->var7;
    v55 = *&a4->var5;
    v56 = v26;
    v27 = *&a4->var3;
    v53 = *&a4->var0;
    v54 = v27;
    var9 = a4->var9;
    v28 = *&a5->var2;
    v58 = *&a5->var0;
    v59 = v28;
    var4 = a5->var4;
    v30 = a6->var4;
    v31 = *&a6->var2;
    v61 = *&a6->var0;
    v62 = v31;
    v60 = var4;
    v63 = v30;
    *(v66 + 12) = *&a7->runVo2max;
    v32 = *&a7->hronset;
    v65 = *&a7->vo2max;
    v66[0] = v32;
    v64 = *&a7->gender;
    v33 = [v17 initWithSampleType:v35 predicate:v16 limit:0 sortDescriptors:0 resultsHandler:v36];
    [(HKHealthStore *)self->fHkHealthStore executeQuery:v33];
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v34 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "Not sending analytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F540();
    }
  }
}

- (void)sendToCoreAnalyticsWeeklyEstimate:(const CLPredictedWalkDistanceEstimateAnalytics *)a3
{
  if ((atomic_load_explicit(&qword_102656240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656240))
  {
    v6 = 1119092736;
    *v3 = xmmword_101C763EC;
    *&v3[16] = unk_101C763FC;
    v4 = xmmword_101C7640C;
    v5 = unk_101C7641C;
    qword_102656230 = 0;
    unk_102656238 = 0;
    qword_102656228 = 0;
    sub_1003F6D44(&qword_102656228, v3, &v7, 0x11uLL);
    __cxa_atexit(sub_1003F5F88, &qword_102656228, dword_100000000);
    __cxa_guard_release(&qword_102656240);
  }

  if ((atomic_load_explicit(&qword_102656260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656260))
  {
    *v3 = xmmword_101C76430;
    *&v3[12] = *(&xmmword_101C76430 + 12);
    qword_102656250 = 0;
    unk_102656258 = 0;
    qword_102656248 = 0;
    sub_1003F6D44(&qword_102656248, v3, &v3[28], 7uLL);
    __cxa_atexit(sub_1003F5F88, &qword_102656248, dword_100000000);
    __cxa_guard_release(&qword_102656260);
  }

  if ((atomic_load_explicit(&qword_102656280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656280))
  {
    *v3 = xmmword_101C7644C;
    *&v3[12] = *(&xmmword_101C7644C + 12);
    qword_102656270 = 0;
    unk_102656278 = 0;
    qword_102656268 = 0;
    sub_1003F6D44(&qword_102656268, v3, &v3[28], 7uLL);
    __cxa_atexit(sub_1003F5F88, &qword_102656268, dword_100000000);
    __cxa_guard_release(&qword_102656280);
  }

  AnalyticsSendEventLazy();
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = self + 64;
  *(self + 9) = self + 64;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

@end