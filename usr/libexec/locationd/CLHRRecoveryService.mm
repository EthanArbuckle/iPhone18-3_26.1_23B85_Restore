@interface CLHRRecoveryService
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)shouldForceWriteSampleToHealthKit;
- (CLHRRecoveryService)init;
- (id).cxx_construct;
- (unint64_t)mapWorkoutTypeToHKWorkoutActivityType:(int64_t)type;
- (void)beginService;
- (void)endService;
- (void)forceWriteSampleToHealthKit:(const WorkoutEvent *)kit;
- (void)logBodyMetrics:(const CLBodyMetrics *)metrics;
- (void)logSessionStats:(const HRRecoveryResult *)stats;
- (void)logVO2MaxStats:(const VO2MaxResult *)stats;
- (void)onCatherineNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onHRRecoveryEstimate:(HRRecoveryResult *)estimate;
- (void)onHRRecoverySessionEnd;
- (void)onHRRecoverySessionStart;
- (void)onMotionStateMediatorNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onNatalimetryNotification:(const int *)notification data:(const void *)data;
- (void)sendAnalytics;
- (void)setUpAggregationOnTimer;
- (void)storeHRRecoveryToHealthKit:(const HRRecoveryResult *)kit;
@end

@implementation CLHRRecoveryService

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
  if (qword_102656468 != -1)
  {
    sub_101896D20();
  }

  return qword_102656460;
}

- (CLHRRecoveryService)init
{
  v3.receiver = self;
  v3.super_class = CLHRRecoveryService;
  return [(CLHRRecoveryService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLHRRecoveryServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLHRRecoveryServiceClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102656478 != -1)
  {
    sub_101896D34();
  }

  return byte_102656470;
}

- (void)beginService
{
  if (qword_1025D44F0 != -1)
  {
    sub_101896D48();
  }

  v2 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Starting up CLHRRecoveryService", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101896D5C();
  }

  sub_1004C5304();
}

- (void)endService
{
  if (qword_1025D44F0 != -1)
  {
    sub_101896D48();
  }

  v3 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down CLHRRecoveryService", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101896E78();
  }

  fAggregationTimer = self->fAggregationTimer;
  if (fAggregationTimer)
  {
    dispatch_source_cancel(fAggregationTimer);
    dispatch_release(self->fAggregationTimer);
    self->fAggregationTimer = 0;
  }

  self->fHkHealthStore = 0;
}

- (void)setUpAggregationOnTimer
{
  ptr = self->fInputHRAggregator.__ptr_;
  v5 = ptr[1];
  v4 = ptr[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *ptr) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_40;
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
      sub_10013E290(self->fInputHRAggregator.__ptr_, v10);
    }

    v11 = 24 * v7;
    *v11 = xmmword_101C79F40;
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
    *v5 = xmmword_101C79F40;
    v5[16] = 0;
    v6 = (v5 + 24);
  }

  ptr[1] = v6;
  v15 = self->fInputWRAggregator.__ptr_;
  v17 = v15[1];
  v16 = v15[2];
  if (v17 >= v16)
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v15) >> 3);
    v20 = v19 + 1;
    if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_40;
    }

    v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v15) >> 3);
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    if (v21 >= 0x555555555555555)
    {
      v22 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      sub_10013E290(self->fInputWRAggregator.__ptr_, v22);
    }

    v23 = 24 * v19;
    *v23 = xmmword_101C79F40;
    *(v23 + 16) = 0;
    v18 = 24 * v19 + 24;
    v24 = v15[1] - *v15;
    v25 = 24 * v19 - v24;
    memcpy((v23 - v24), *v15, v24);
    v26 = *v15;
    *v15 = v25;
    v15[1] = v18;
    v15[2] = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v17 = xmmword_101C79F40;
    v17[16] = 0;
    v18 = (v17 + 24);
  }

  v15[1] = v18;
  v27 = self->fSessionAggregator.__ptr_;
  v29 = v27[1];
  v28 = v27[2];
  if (v29 < v28)
  {
    *v29 = xmmword_101C79F50;
    v29[16] = 0;
    v30 = (v29 + 24);
    goto LABEL_37;
  }

  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *v27) >> 3);
  v32 = v31 + 1;
  if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_40:
    sub_10028C64C();
  }

  v33 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *v27) >> 3);
  if (2 * v33 > v32)
  {
    v32 = 2 * v33;
  }

  if (v33 >= 0x555555555555555)
  {
    v34 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v34 = v32;
  }

  if (v34)
  {
    sub_10013E290(self->fSessionAggregator.__ptr_, v34);
  }

  v35 = 24 * v31;
  *v35 = xmmword_101C79F50;
  *(v35 + 16) = 0;
  v30 = 24 * v31 + 24;
  v36 = v27[1] - *v27;
  v37 = 24 * v31 - v36;
  memcpy((v35 - v36), *v27, v36);
  v38 = *v27;
  *v27 = v37;
  v27[1] = v30;
  v27[2] = 0;
  if (v38)
  {
    operator delete(v38);
  }

LABEL_37:
  v27[1] = v30;
  v46 = 86400;
  v39 = sub_100011660();
  sub_100185AC0(v39, &v44);
  sub_10005BBE4(v44, "HRRecoveryAggregationTimeInterval", &v46);
  if (v45)
  {
    sub_100008080(v45);
  }

  v40 = 1000000000 * v46;
  v41 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [objc_msgSend(-[CLHRRecoveryService universe](self "universe")]);
  self->fAggregationTimer = v41;
  dispatch_source_set_timer(v41, 0, v40, 0xDF8475800uLL);
  fAggregationTimer = self->fAggregationTimer;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1004C23D0;
  v43[3] = &unk_102447418;
  v43[4] = self;
  dispatch_source_set_event_handler(fAggregationTimer, v43);
  dispatch_resume(self->fAggregationTimer);
}

- (void)onCatherineNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CLHRRecoveryService universe](self "universe")];
  if (*notification == 9)
  {
    ptr = self->fHRRecoveryEstimator.__ptr_;

    sub_1008D0F34(ptr, data);
  }

  else if (*notification == 7)
  {
    v7 = self->fHRRecoveryEstimator.__ptr_;
    v8 = *(data + 3);

    sub_1008D0E40(v7, v8);
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v10 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_ERROR))
    {
      v11 = *notification;
      v12[0] = 67109120;
      v12[1] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLHRRecoveryService: Unhandled notification type, %d", v12, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101897924(notification);
    }
  }
}

- (void)onMotionStateMediatorNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CLHRRecoveryService universe](self universe];
  if (*notification == 2)
  {
    sub_1008D1A30(self->fHRRecoveryEstimator.__ptr_, data);
    if (*(data + 2) == 1 && sub_1008D1D1C(self->fHRRecoveryEstimator.__ptr_, *(data + 12)) && sub_1008D1E10(self->fHRRecoveryEstimator.__ptr_, *(data + 26)) && [(CLHRRecoveryService *)self shouldForceWriteSampleToHealthKit])
    {

      [(CLHRRecoveryService *)self forceWriteSampleToHealthKit:data];
    }
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v10 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_ERROR))
    {
      v11 = *notification;
      v12[0] = 67109120;
      v12[1] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLHRRecoveryService: Unhandled notification type, %d", v12, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101897A1C(notification);
    }
  }
}

- (void)onNatalimetryNotification:(const int *)notification data:(const void *)data
{
  [-[CLHRRecoveryService universe](self "universe")];
  v7 = *notification;
  if (*notification == 9)
  {
    ptr = self->fHRRecoveryEstimator.__ptr_;
    v9 = *(data + 2);
    v10 = *(data + 26);
    v11 = *(data + 12);
    v12 = *(data + 4);
    v13 = *(data + 22);
    v14 = *(data + 39);

    sub_1008D17D4(ptr, v10, v13, v9, v14, v11, v12);
  }

  else if (v7 == 6)
  {

    [(CLHRRecoveryService *)self logVO2MaxStats:data];
  }

  else if (v7 == 2)
  {
    sub_1008D0CE8(self->fHRRecoveryEstimator.__ptr_, data);

    [(CLHRRecoveryService *)self logBodyMetrics:data];
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v15 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_ERROR))
    {
      v16 = *notification;
      v17[0] = 67109120;
      v17[1] = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLHRRecoveryService: Unhandled notification type, %d", v17, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101897B14(notification);
    }
  }
}

- (void)onHRRecoverySessionStart
{
  [*(self->fCatherineClient.__ptr_ + 2) register:*(self->fCatherineClient.__ptr_ + 1) forNotification:9 registrationInfo:0];
  ptr = self->fNatalimetryClient.__ptr_;
  v5 = *(ptr + 1);
  v4 = *(ptr + 2);

  [v4 register:v5 forNotification:9 registrationInfo:0];
}

- (void)onHRRecoverySessionEnd
{
  [*(self->fNatalimetryClient.__ptr_ + 2) unregister:*(self->fNatalimetryClient.__ptr_ + 1) forNotification:9];
  self->fSessionStats.biologicalSex = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *&self->fSessionStats.age = _D0;
  self->fSessionStats.betaBlockerUse = 0;
  self->fSessionStats.status = 0;
  *&self->fSessionStats.diffTimeRecoveryOnsetWorkout = vdupq_n_s64(0xC7EFFFFFE0000000);
  *&self->fSessionStats.hrRecovery = -1;
  __asm { FMOV            V2.4S, #-1.0 }

  *&self->fSessionStats.peakHR = xmmword_101C79F60;
  *&self->fSessionStats.recoveryLoad = _Q2;
  *&self->fSessionStats.recoveryMetsStdDev = _D0;
  self->fSessionStats.isOtherwiseEligibleForLongitudinal = 0;
  *&self->fSessionStats.hrRecoveryReference = _Q2;
  self->fSessionStats.isEligibleForHK = 0;
  *&self->fSessionStats.minHRAfterWorkoutEnd = _Q2;
  *&self->fSessionStats.hrmax = _D0;
  *&self->fSessionStats.estimationStatus = -14;
  *&self->fSessionStats.lambda = _D0;
  *&self->fSessionStats.explainedVarianceScore = 3212836864;
  self->fSessionStats.workoutType = 0;
  *&self->fSessionStats.sessionDuration = 0x1BF800000;
}

- (void)onHRRecoveryEstimate:(HRRecoveryResult *)estimate
{
  [(CLHRRecoveryService *)self logSessionStats:?];
  if ((estimate->var0 == 1 || estimate->var34) && estimate->var27)
  {

    [(CLHRRecoveryService *)self storeHRRecoveryToHealthKit:estimate];
  }
}

- (void)storeHRRecoveryToHealthKit:(const HRRecoveryResult *)kit
{
  if (objc_opt_class())
  {
    v5 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRateRecoveryOneMinute];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:kit->var1];
    v7 = [HKQuantity quantityWithUnit:[HKUnit unitFromString:@"count/min"] doubleValue:kit->var2];
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:&off_10254E990 forKeyedSubscript:HKMetadataKeyAlgorithmVersion];
    [v8 setObject:&off_10254E9A8 forKeyedSubscript:HKMetadataKeyHeartRateRecoveryTestType];
    [v8 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", -[CLHRRecoveryService mapWorkoutTypeToHKWorkoutActivityType:](self, "mapWorkoutTypeToHKWorkoutActivityType:", kit->var4)), HKMetadataKeyHeartRateRecoveryActivityType}];
    [v8 setObject:+[HKQuantity quantityWithUnit:doubleValue:](HKQuantity forKeyedSubscript:{"quantityWithUnit:doubleValue:", +[HKUnit secondUnit](HKUnit, "secondUnit"), kit->var3), HKMetadataKeyHeartRateRecoveryActivityDuration}];
    if (kit->var17 > 0.0)
    {
      [v8 setObject:+[HKQuantity quantityWithUnit:doubleValue:](HKQuantity forKeyedSubscript:{"quantityWithUnit:doubleValue:", +[HKUnit unitFromString:](HKUnit, "unitFromString:", @"count/min", kit->var17), HKMetadataKeyHeartRateRecoveryMaxObservedRecoveryHeartRate}];
    }

    if (kit->var21)
    {
      v9 = &off_10254E9C0;
    }

    else
    {
      v9 = &off_10254E9A8;
    }

    [v8 setObject:v9 forKeyedSubscript:HKMetadataKeyUserMotionContext];
    if (kit->var5)
    {
      v10 = &__kCFBooleanTrue;
    }

    else
    {
      v10 = &__kCFBooleanFalse;
    }

    [v8 setObject:v10 forKeyedSubscript:_HKPrivateMetadataKeyUserOnBetaBlocker];
    if (kit->var0 == 1 && kit->var22 > 0.0)
    {
      [v8 setObject:+[HKQuantity quantityWithUnit:doubleValue:](HKQuantity forKeyedSubscript:{"quantityWithUnit:doubleValue:", +[HKUnit unitFromString:](HKUnit, "unitFromString:", @"count/min", kit->var22), HKMetadataKeySessionEstimate}];
    }

    v11 = [HKQuantitySample quantitySampleWithType:v5 quantity:v7 startDate:v6 endDate:v6 metadata:v8];
    fHkHealthStore = self->fHkHealthStore;
    v13 = v11;
    [(HKHealthStore *)fHkHealthStore saveObjects:[NSArray withCompletion:"arrayWithObjects:count:" arrayWithObjects:1 count:?], &stru_102457CC0];
  }
}

- (unint64_t)mapWorkoutTypeToHKWorkoutActivityType:(int64_t)type
{
  result = type;
  if (type <= 14)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        return 37;
      }

      return 3000;
    }
  }

  else if (type != 15)
  {
    if (type == 24)
    {
      return result;
    }

    if (type == 17)
    {
      return 37;
    }

    return 3000;
  }

  return 52;
}

- (BOOL)shouldForceWriteSampleToHealthKit
{
  v6 = 0;
  v2 = sub_100011660();
  sub_100185AC0(v2, &v4);
  sub_10001CB4C(v4, "ForceWriteHRRToHealthKit", &v6);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_10001A3E8();
  return sub_100328630() & v6;
}

- (void)forceWriteSampleToHealthKit:(const WorkoutEvent *)kit
{
  v47 = 0x4039000000000000;
  v5 = sub_100011660();
  sub_100185AC0(v5, buf);
  sub_1000B9370(*buf, "FakeHRRValue", &v47);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v46 = 0x4057C00000000000;
  v6 = sub_100011660();
  sub_100185AC0(v6, buf);
  sub_1000B9370(*buf, "FakeHRRMaxObservedRecoveryHR", &v46);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  ptr = self->fHRRecoveryEstimator.__ptr_;
  v21 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v22 = Current;
  v10 = v46;
  v9 = v47;
  v11 = kit->var1 - kit->var0;
  v23 = v47;
  v24 = v11;
  var2 = kit->var5.var2;
  v25 = var2;
  v13 = *(ptr + 144);
  v26 = v13;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  v30 = _Q1;
  v31 = 0u;
  v32 = 0u;
  v33 = v46;
  v45 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v37 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  if (qword_1025D44F0 != -1)
  {
    sub_101897DF0();
  }

  v19 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134284801;
    *&buf[4] = Current;
    *&buf[12] = 2049;
    *&buf[14] = v9;
    v61 = 2050;
    v62 = var2;
    v63 = 2050;
    v64 = v11;
    v65 = 2049;
    v66 = v10;
    v67 = 1025;
    v68 = v13;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Forcing a fake HR Recovery sample to HealthKit: timeOfEstimate, %{private}f, hrRecovery, %{private}f, workoutType, %{public}ld, activityDuration, %{public}f, maxRecoveryHR, %{private}f, betaBlockerUse, %{private}d", buf, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44F0 != -1)
    {
      sub_101897DF0();
    }

    v48 = 134284801;
    v49 = Current;
    v50 = 2049;
    v51 = v9;
    v52 = 2050;
    v53 = var2;
    v54 = 2050;
    v55 = v11;
    v56 = 2049;
    v57 = v10;
    v58 = 1025;
    v59 = v13;
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLHRRecoveryService forceWriteSampleToHealthKit:]", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  [(CLHRRecoveryService *)self storeHRRecoveryToHealthKit:&v21];
}

- (void)logBodyMetrics:(const CLBodyMetrics *)metrics
{
  [-[CLHRRecoveryService universe](self "universe")];
  self->fSessionStats.age = metrics->age;
  self->fSessionStats.biologicalSex = metrics->biologicalSex;
  self->fSessionStats.betaBlockerUse = metrics->betaBlockerUse;
  weightKG = metrics->weightKG;
  if (weightKG != 0.0)
  {
    heightM = metrics->heightM;
    if (heightM != 0.0)
    {
      self->fSessionStats.userBMI = weightKG / (heightM * heightM);
    }
  }

  self->fSessionStats.hrmax = metrics->hrmax;
}

- (void)logVO2MaxStats:(const VO2MaxResult *)stats
{
  [-[CLHRRecoveryService universe](self "universe")];
  v5 = llround(stats->var2);
  var13 = stats->var13;
  self->fSessionStats.estimationStatus = stats->var12;
  self->fSessionStats.vo2MaxValue = v5;
  self->fSessionStats.sessionType = var13;
}

- (void)logSessionStats:(const HRRecoveryResult *)stats
{
  [-[CLHRRecoveryService universe](self "universe")];
  self->fSessionStats.status = stats->var0;
  var3 = stats->var3;
  self->fSessionStats.sessionDuration = var3;
  self->fSessionStats.workoutType = stats->var4;
  var6 = stats->var6;
  self->fSessionStats.diffTimeRecoveryOnsetWorkout = stats->var7 - var6;
  self->fSessionStats.diffTimeTDropWorkoutEnd = stats->var13 - var6;
  self->fSessionStats.hrRecovery = llround(stats->var2);
  self->fSessionStats.hrRecoverySession = llround(stats->var22);
  var29 = stats->var29;
  v8.f64[0] = stats->var14;
  var15 = stats->var15;
  v8.f64[1] = var29 - var15;
  *&self->fSessionStats.peakHR = vcvt_hight_f32_f64(vcvt_f32_f64(*&stats->var8), v8);
  *&self->fSessionStats.recoveryLoad = vcvt_hight_f32_f64(vcvt_f32_f64(*&stats->var16), *&stats->var18);
  var20 = stats->var20;
  self->fSessionStats.recoveryMetsStdDev = var20;
  var24 = stats->var24;
  self->fSessionStats.biasAdjustment = var24;
  self->fSessionStats.isOtherwiseEligibleForLongitudinal = stats->var34;
  v12 = var15;
  *&var29 = var29;
  self->fSessionStats.hrRecoveryReference = v12;
  self->fSessionStats.hrRecoveryReferencePeak = *&var29;
  var28 = stats->var28;
  self->fSessionStats.hrOneMinPostRecovery = var28;
  var30 = stats->var30;
  self->fSessionStats.hrOneMinExponential = var30;
  self->fSessionStats.isEligibleForHK = stats->var27;
  v15.f64[0] = stats->var33;
  v15.f64[1] = stats->var35;
  *&self->fSessionStats.minHRAfterWorkoutEnd = vcvt_hight_f32_f64(vcvt_f32_f64(*&stats->var31), v15);
  var23 = stats->var23;
  self->fSessionStats.peakHrOneMinusFhr = var23;
  *&self->fSessionStats.lambda = vcvt_f32_f64(*&stats->var10);
  var12 = stats->var12;
  self->fSessionStats.explainedVarianceScore = var12;
  if (qword_1025D44F0 != -1)
  {
    sub_101896D48();
  }

  v18 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEBUG))
  {
    age = self->fSessionStats.age;
    biologicalSex = self->fSessionStats.biologicalSex;
    betaBlockerUse = self->fSessionStats.betaBlockerUse;
    userBMI = self->fSessionStats.userBMI;
    sevenDayRestingHR = self->fSessionStats.sevenDayRestingHR;
    hrmax = self->fSessionStats.hrmax;
    status = self->fSessionStats.status;
    diffTimeRecoveryOnsetWorkout = self->fSessionStats.diffTimeRecoveryOnsetWorkout;
    diffTimeTDropWorkoutEnd = self->fSessionStats.diffTimeTDropWorkoutEnd;
    hrRecovery = self->fSessionStats.hrRecovery;
    hrRecoverySession = self->fSessionStats.hrRecoverySession;
    peakHR = self->fSessionStats.peakHR;
    steadyStateHR = self->fSessionStats.steadyStateHR;
    hrMinAdjusted = self->fSessionStats.hrMinAdjusted;
    observedHRRecovery = self->fSessionStats.observedHRRecovery;
    recoveryLoad = self->fSessionStats.recoveryLoad;
    maxRecoveryHR = self->fSessionStats.maxRecoveryHR;
    minRecoveryHR = self->fSessionStats.minRecoveryHR;
    recoveryMetsMean = self->fSessionStats.recoveryMetsMean;
    recoveryMetsStdDev = self->fSessionStats.recoveryMetsStdDev;
    biasAdjustment = self->fSessionStats.biasAdjustment;
    isOtherwiseEligibleForLongitudinal = self->fSessionStats.isOtherwiseEligibleForLongitudinal;
    hrRecoveryReference = self->fSessionStats.hrRecoveryReference;
    hrRecoveryReferencePeak = self->fSessionStats.hrRecoveryReferencePeak;
    hrOneMinPostRecovery = self->fSessionStats.hrOneMinPostRecovery;
    hrOneMinExponential = self->fSessionStats.hrOneMinExponential;
    isEligibleForHK = self->fSessionStats.isEligibleForHK;
    minHRAfterWorkoutEnd = self->fSessionStats.minHRAfterWorkoutEnd;
    maxHRAfterWorkoutEnd = self->fSessionStats.maxHRAfterWorkoutEnd;
    oneMinusFHRAfterWorkoutEnd = self->fSessionStats.oneMinusFHRAfterWorkoutEnd;
    peakHrOneMinusFhr = self->fSessionStats.peakHrOneMinusFhr;
    estimationStatus = self->fSessionStats.estimationStatus;
    vo2MaxValue = self->fSessionStats.vo2MaxValue;
    lambda = self->fSessionStats.lambda;
    meanSquaredError = self->fSessionStats.meanSquaredError;
    explainedVarianceScore = self->fSessionStats.explainedVarianceScore;
    sessionType = self->fSessionStats.sessionType;
    workoutType = self->fSessionStats.workoutType;
    sessionDuration = self->fSessionStats.sessionDuration;
    hrRecoveryAlgorithmVersion = self->fSessionStats.hrRecoveryAlgorithmVersion;
    *buf = 134227968;
    v61 = age;
    v62 = 1024;
    v63 = biologicalSex;
    v64 = 1024;
    v65 = betaBlockerUse;
    v66 = 2048;
    v67 = userBMI;
    v68 = 2048;
    v69 = sevenDayRestingHR;
    v70 = 2048;
    v71 = hrmax;
    v72 = 1024;
    v73 = status;
    v74 = 2048;
    v75 = diffTimeRecoveryOnsetWorkout;
    v76 = 2048;
    v77 = diffTimeTDropWorkoutEnd;
    v78 = 1024;
    v79 = hrRecovery;
    v80 = 1024;
    v81 = hrRecoverySession;
    v82 = 2048;
    v83 = peakHR;
    v84 = 2048;
    v85 = steadyStateHR;
    v86 = 2048;
    v87 = hrMinAdjusted;
    v88 = 2048;
    v89 = observedHRRecovery;
    v90 = 2048;
    v91 = recoveryLoad;
    v92 = 2048;
    v93 = maxRecoveryHR;
    v94 = 2048;
    v95 = minRecoveryHR;
    v96 = 2048;
    v97 = recoveryMetsMean;
    v98 = 2048;
    v99 = recoveryMetsStdDev;
    v100 = 2048;
    v101 = biasAdjustment;
    v102 = 1024;
    v103 = isOtherwiseEligibleForLongitudinal;
    v104 = 2048;
    v105 = hrRecoveryReference;
    v106 = 2048;
    v107 = hrRecoveryReferencePeak;
    v108 = 2048;
    v109 = hrOneMinPostRecovery;
    v110 = 2048;
    v111 = hrOneMinExponential;
    v112 = 1024;
    v113 = isEligibleForHK;
    v114 = 2048;
    v115 = minHRAfterWorkoutEnd;
    v116 = 2048;
    v117 = maxHRAfterWorkoutEnd;
    v118 = 2048;
    v119 = oneMinusFHRAfterWorkoutEnd;
    v120 = 2048;
    v121 = peakHrOneMinusFhr;
    v122 = 1024;
    v123 = estimationStatus;
    v124 = 1024;
    v125 = vo2MaxValue;
    v126 = 2048;
    v127 = lambda;
    v128 = 2048;
    v129 = meanSquaredError;
    v130 = 2048;
    v131 = explainedVarianceScore;
    v132 = 1024;
    v133 = sessionType;
    v134 = 1024;
    v135 = workoutType;
    v136 = 2048;
    v137 = sessionDuration;
    v138 = 1024;
    v139 = hrRecoveryAlgorithmVersion;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "HRRecovery Analytics,age,%.2f,biologicalSex,%d,useBetaBlocker,%d,userBMI,%.2f,sevenDayRestingHR,%.2f,hrmax,%.2f,status,%d,diffTimeRecoveryOnsetWorkout,%.2f,diffTimeTDropWorkoutEnd,%.2f,hrRecovery,%d,hrRecoverySession,%d,peakHR,%.2f,steadyStateHR,%.2f,hrMinAdjusted,%.2f,observedHRRecovery,%.2f,recoveryLoad,%.2f,maxRecoveryHR,%.2f,minRecoveryHR,%.2f,recoveryMetsMean,%.2f,recoveryMetsStdDev,%.2f,biasAdjustment,%.2f,isOtherwiseEligibleForLongitudinal,%d,hrRecoveryReference,%.2f,hrRecoveryReferencePeak,%.2f,hrOneMinPostRecovery,%.2f,hrOneMinExponential,%.2f,isEligibleForHK,%d,minHRAfterWorkoutEnd,%.2f,maxHRAfterWorkoutEnd,%.2f,oneMinusFHRAfterWorkoutEnd,%.2f,peakHrOneMinusFhr,%.2f,vo2MaxestimationStatus,%d,vo2MaxValue,%d,lambda,%.2f,mse,%.2f,evs,%.2f,sessionType,%d,workoutType,%d,sessionDuration,%.2f,hrRecoveryAlgorithmVersion,%d", buf, 0x162u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44F0 != -1)
    {
      sub_101897DF0();
    }

    v59 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLHRRecoveryService logSessionStats:]", "%s\n", v59);
    if (v59 != buf)
    {
      free(v59);
    }
  }

  [(CLHRRecoveryService *)self sendAnalytics];
}

- (void)sendAnalytics
{
  [-[CLHRRecoveryService universe](self "universe")];
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    if ((atomic_load_explicit(&qword_102656498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656498))
    {
      LODWORD(v5) = 1153138688;
      *buf = xmmword_101C79F88;
      qword_102656488 = 0;
      unk_102656490 = 0;
      qword_102656480 = 0;
      sub_1003F6D44(&qword_102656480, buf, &v5 + 4, 5uLL);
      __cxa_atexit(sub_1003F5F88, &qword_102656480, dword_100000000);
      __cxa_guard_release(&qword_102656498);
    }

    if ((atomic_load_explicit(&qword_1026564B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026564B8))
    {
      v6 = 1118961664;
      *buf = xmmword_101C79F9C;
      v5 = unk_101C79FAC;
      qword_1026564A8 = 0;
      unk_1026564B0 = 0;
      qword_1026564A0 = 0;
      sub_1003F6D44(&qword_1026564A0, buf, &v7, 9uLL);
      __cxa_atexit(sub_1003F5F88, &qword_1026564A0, dword_100000000);
      __cxa_guard_release(&qword_1026564B8);
    }

    if ((atomic_load_explicit(&qword_1026564D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026564D8))
    {
      LODWORD(v5) = 1108056474;
      *buf = xmmword_101C79FC0;
      qword_1026564C8 = 0;
      unk_1026564D0 = 0;
      qword_1026564C0 = 0;
      sub_1003F6D44(&qword_1026564C0, buf, &v5 + 4, 5uLL);
      __cxa_atexit(sub_1003F5F88, &qword_1026564C0, dword_100000000);
      __cxa_guard_release(&qword_1026564D8);
    }

    AnalyticsSendEventLazy();
    if (qword_1025D44F0 != -1)
    {
      sub_101897DF0();
    }

    v2 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Sent Core Analytics event", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897E18();
    }
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v3 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "HRRecovery, not sending analytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897EFC();
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 11) = 0;
  *(self + 24) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(self + 100) = _D0;
  *(self + 108) = 0;
  *(self + 28) = 0;
  *(self + 120) = vdupq_n_s64(0xC7EFFFFFE0000000);
  *(self + 17) = -1;
  __asm { FMOV            V2.4S, #-1.0 }

  *(self + 9) = xmmword_101C79F60;
  *(self + 10) = _Q2;
  *(self + 22) = _D0;
  *(self + 184) = 0;
  *(self + 188) = _Q2;
  *(self + 204) = 0;
  *(self + 13) = _Q2;
  *(self + 28) = _D0;
  *(self + 29) = -14;
  *(self + 30) = _D0;
  *(self + 33) = 0x1BF800000;
  *(self + 31) = 3212836864;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 32) = 0;
  *(self + 36) = 0;
  return self;
}

@end