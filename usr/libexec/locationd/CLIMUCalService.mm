@interface CLIMUCalService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLIMUCalService)init;
- (id).cxx_construct;
- (void)beginService;
- (void)dealloc;
- (void)endService;
- (void)handleOutdoorServiceNotification:(const OutdoorUpdate *)notification;
- (void)insertEstimate:(SensorParameterEstimate *)estimate intervalBeforeCurrentTimeSec:(double)sec;
- (void)onDeviceImpactEvent:(DeviceImpactEvent *)event;
- (void)onSensorParameterEstimate:(SensorParameterEstimate *)estimate;
- (void)sendEstimatesToAOPAndAOP2ForParam:(int)param atTime:(double)time;
- (void)sendNotification:(int)notification;
@end

@implementation CLIMUCalService

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
  if (qword_10265A678 != -1)
  {
    sub_101953888();
  }

  return qword_10265A670;
}

- (CLIMUCalService)init
{
  v7.receiver = self;
  v7.super_class = CLIMUCalService;
  v2 = [(CLIMUCalService *)&v7 initWithInboundProtocol:&OBJC_PROTOCOL___CLIMUCalServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLIMUCalServiceClientProtocol];
  v2->_isIndoor = 1;
  v2->_relativeHumidityOutside = NAN;
  v2->_temperatureOutside = NAN;
  v2->fAdapterOutdoorUpdate = [[CLIMUCalServiceAdapterOutdoorUpdate alloc] initWithController:v2];
  v3 = [objc_msgSend(-[CLIMUCalService universe](v2 "universe")];
  v2->fOutdoorServiceProxy = v3;
  if (v3)
  {
    -[CLOutdoorServiceProtocol registerDelegate:inSilo:](v3, "registerDelegate:inSilo:", v2->fAdapterOutdoorUpdate, [-[CLIMUCalService universe](v2 "universe")]);
    [(CLOutdoorServiceProtocol *)v2->fOutdoorServiceProxy setDelegateEntityName:"CLIMUCalServiceAdapterOutdoorUpdate"];
    if (qword_1025D4680 != -1)
    {
      sub_10195389C();
    }

    v4 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
    {
      v6[0] = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Registered for outdoor service notification", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019538C4();
    }
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = CLIMUCalService;
  [(CLIMUCalService *)&v5 dealloc];
  fOutdoorServiceProxy = self->fOutdoorServiceProxy;
  if (fOutdoorServiceProxy)
  {

    self->fOutdoorServiceProxy = 0;
  }

  fAdapterOutdoorUpdate = self->fAdapterOutdoorUpdate;
  if (fAdapterOutdoorUpdate)
  {

    self->fAdapterOutdoorUpdate = 0;
  }
}

- (void)beginService
{
  [-[CLIMUCalService universe](self "universe")];
  if (!self->_sensorParameterEstimateDispatcher.__ptr_)
  {
    [-[CLIMUCalService universe](self "universe")];
    operator new();
  }

  if (!self->_deviceImpactDispatcher.__ptr_)
  {
    [-[CLIMUCalService universe](self "universe")];
    operator new();
  }

  sub_10001A3E8();
  if (sub_100316E74())
  {
    v3 = sub_100BC9FB0(0);
    sub_100BCA21C(v3, 0);
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(CLIMUCalService *)self sendEstimatesToAOPAndAOP2ForParam:2 atTime:?];
  [(CLIMUCalService *)self sendEstimatesToAOPAndAOP2ForParam:0 atTime:Current];
  v6 = 0;
  sub_100126E84(v7, "EnableInFieldIMUCalibrationNotifications", &v6, 0);
  self->_enableInFieldIMUCalibrationNotifications = v7[1];
  if (self->fAdapterOutdoorUpdate)
  {
    fOutdoorServiceProxy = self->fOutdoorServiceProxy;
    if (fOutdoorServiceProxy)
    {
      [(CLOutdoorServiceProtocol *)fOutdoorServiceProxy registerForUpdates:?];
    }
  }
}

- (void)endService
{
  [-[CLIMUCalService universe](self "universe")];
  if (self->_sensorParameterEstimateDispatcher.__ptr_)
  {
    v3 = sub_10017C7AC(0);
    sub_10095D9F8(v3, 53, self->_sensorParameterEstimateDispatcher.__ptr_);
    ptr = self->_sensorParameterEstimateDispatcher.__ptr_;
    self->_sensorParameterEstimateDispatcher.__ptr_ = 0;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }
  }

  if (self->_deviceImpactDispatcher.__ptr_)
  {
    v5 = sub_10017C7AC(0);
    sub_10095D9F8(v5, 52, self->_sensorParameterEstimateDispatcher.__ptr_);
    v6 = self->_deviceImpactDispatcher.__ptr_;
    self->_deviceImpactDispatcher.__ptr_ = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (self->fAdapterOutdoorUpdate)
  {
    fOutdoorServiceProxy = self->fOutdoorServiceProxy;
    if (fOutdoorServiceProxy)
    {

      [(CLOutdoorServiceProtocol *)fOutdoorServiceProxy unregisterForUpdates:?];
    }
  }
}

- (void)handleOutdoorServiceNotification:(const OutdoorUpdate *)notification
{
  if (notification->var3 == 3)
  {
    var2 = notification->var2;
    if (var2)
    {
      v5 = var2 == 1;
      if (self->_isIndoor != v5)
      {
        self->_isIndoor = v5;
        if (qword_1025D45D0 != -1)
        {
          sub_1019539C4();
        }

        v6 = qword_1025D45D8;
        if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
        {
          isIndoor = self->_isIndoor;
          v8[0] = 67240192;
          v8[1] = isIndoor;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[IMUCal] Received high confidence indoor/outdoor update, isIndoor, %{public}d", v8, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019539D8(&self->_isIndoor);
        }
      }
    }
  }
}

- (void)onSensorParameterEstimate:(SensorParameterEstimate *)estimate
{
  sub_10083F9E0(&self->_dataStore, estimate, self->_isIndoor, self->_relativeHumidityOutside, self->_temperatureOutside, 0.0);
  if (self->_enableInFieldIMUCalibrationNotifications && (estimate->var1 | 2) == 2 && *(&estimate->var4 + 2) != 0)
  {

    [(CLIMUCalService *)self sendNotification:?];
  }
}

- (void)onDeviceImpactEvent:(DeviceImpactEvent *)event
{
  if (COERCE_FLOAT(v3 >> 8) > 25.6)
  {
    sub_100840BEC();
  }
}

- (void)insertEstimate:(SensorParameterEstimate *)estimate intervalBeforeCurrentTimeSec:(double)sec
{
  if (sec == 0.0)
  {
    v15 = v4;
    v16 = v5;
    v6 = *&estimate->var3[4];
    v13[2] = *&estimate->var3[2];
    v14[0] = v6;
    *(v14 + 10) = *(&estimate->var3[5] + 2);
    v7 = *estimate->var3;
    v13[0] = *&estimate->var0;
    v13[1] = v7;
    [(CLIMUCalService *)self onSensorParameterEstimate:v13];
  }

  else
  {
    isIndoor = self->_isIndoor;
    relativeHumidityOutside = self->_relativeHumidityOutside;
    temperatureOutside = self->_temperatureOutside;
    p_dataStore = &self->_dataStore;

    sub_10083F9E0(p_dataStore, estimate, isIndoor, relativeHumidityOutside, temperatureOutside, sec);
  }
}

- (void)sendEstimatesToAOPAndAOP2ForParam:(int)param atTime:(double)time
{
  sub_100840F78(param, &v45, time);
  sub_1008410C0(&v45, &v41);
  if (v44 == 1)
  {
    LOBYTE(__p) = 86;
    BYTE1(__p) = param;
    *(&__p + 2) = v42;
    *(&__p + 10) = v43;
    if (sub_10017C7AC(0))
    {
      if (qword_1025D45D0 != -1)
      {
        sub_101953AEC();
      }

      v5 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = sub_100840544(&v41);
        *buf = 67240450;
        v53 = BYTE1(__p);
        v54 = 2114;
        v55 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[IMUCal] sending to AOP param,%{public}u,%{public}@", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101953B14(buf);
        v37 = sub_100840544(&v41);
        v51[0] = 67240450;
        v51[1] = BYTE1(__p);
        LOWORD(v51[2]) = 2114;
        *(&v51[2] + 2) = v37;
        v38 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLIMUCalService sendEstimatesToAOPAndAOP2ForParam:atTime:]", "%s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      v7 = sub_10017C7AC(0);
      sub_1005ADCE4(v7, &__p);
    }
  }

  sub_10001A3E8();
  if (sub_100316E74())
  {
    if (param)
    {
      if (param != 2)
      {
        goto LABEL_51;
      }

      v8 = 6;
    }

    else
    {
      v8 = 2;
    }

    __p = 0uLL;
    v40 = 0;
    v9 = v45;
    v10 = -1227133513 * ((v46 - v45) >> 4);
    if (v10 < 1)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (v10 - 1);
        v14 = &v9[112 * v13 + 88];
        while (*(v14 - 1))
        {
          v14 -= 112;
          v15 = v10;
          --v13;
          --v10;
          if (v15 <= 1)
          {
            goto LABEL_38;
          }
        }

        if (*v14)
        {
          break;
        }

        if (v12 >= v40)
        {
          v16 = v12 - v11;
          v17 = (v12 - v11) >> 3;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v19 = v40 - v11;
          if ((v40 - v11) >> 2 > v18)
          {
            v18 = v19 >> 2;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            sub_1000B9708(&__p, v20);
          }

          v21 = (v12 - v11) >> 3;
          v22 = (8 * v17);
          v23 = (8 * v17 - 8 * v21);
          *v22 = v13;
          v12 = (v22 + 1);
          memcpy(v23, v11, v16);
          v24 = __p;
          *&__p = v23;
          *(&__p + 1) = v12;
          v40 = 0;
          if (v24)
          {
            operator delete(v24);
            v11 = __p;
          }

          else
          {
            v11 = v23;
          }
        }

        else
        {
          *v12 = v13;
          v12 += 8;
        }

        *(&__p + 1) = v12;
        if (v8 == (v12 - v11) >> 3 || v10 < 2)
        {
          goto LABEL_38;
        }

        v9 = v45;
        --v10;
      }

      v36 = sub_100BC9FB0(0);
      sub_100BCA6A8(v36, param);
      v12 = *(&__p + 1);
      v11 = __p;
    }

LABEL_38:
    if (((v12 - v11) >> 3) >= 1)
    {
      v25 = (((v12 - v11) >> 3) & 0x7FFFFFFF) - 1;
      do
      {
        v26 = *(__p + 8 * v25);
        memset(v51, 0, 74);
        BYTE1(v51[0]) = param;
        v27 = v45 + 112 * v26;
        *(v51 + 2) = *(v27 + 4);
        *(&v51[2] + 2) = *(v27 + 3);
        *(&v51[3] + 2) = *(v27 + 2);
        *(&v51[5] + 2) = *(v27 + 3);
        *(&v51[7] + 2) = *(v27 + 4);
        *(&v51[9] + 2) = *(v27 + 5);
        *(&v51[11] + 2) = *(v27 + 6);
        *(&v51[13] + 2) = *(v27 + 7);
        *(&v51[15] + 2) = *(v27 + 18);
        *(&v51[16] + 2) = *(v27 + 10);
        if (qword_1025D45D0 != -1)
        {
          sub_101953AEC();
        }

        v28 = qword_1025D45D8;
        if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
        {
          v29 = BYTE1(v51[0]);
          v30 = sub_100840544(v45 + 28 * v26);
          *buf = 67240450;
          v53 = v29;
          v54 = 2114;
          v55 = v30;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "[IMUCal] Sending to AOP2 param,%{public}u,%{public}@", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101953B14(buf);
          v33 = BYTE1(v51[0]);
          v34 = sub_100840544(v45 + 28 * v26);
          v47 = 67240450;
          v48 = v33;
          v49 = 2114;
          v50 = v34;
          v35 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLIMUCalService sendEstimatesToAOPAndAOP2ForParam:atTime:]", "%s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        v31 = sub_100BC9FB0(0);
        sub_100BCA4A0(v31, v51);
        v32 = v25-- + 1;
      }

      while (v32 > 1);
      v11 = __p;
    }

    if (v11)
    {
      *(&__p + 1) = v11;
      operator delete(v11);
    }
  }

LABEL_51:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

- (void)sendNotification:(int)notification
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_100840F78(notification, &__p, Current);
  sub_1008410C0(&__p, v31);
  if ((v33 & 1) == 0)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_101953AEC();
    }

    v13 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      notificationCopy3 = notification;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[IMUCal] Could not get last robust param,%{public}u", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_39;
    }

    sub_101953B14(buf);
    v36 = 67240192;
    notificationCopy4 = notification;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLIMUCalService sendNotification:]", "%s\n", v14);
LABEL_45:
    if (v14 != buf)
    {
      free(v14);
    }

    goto LABEL_39;
  }

  if (qword_1025D45D0 != -1)
  {
    sub_101953AEC();
  }

  v5 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100840544(v31);
    *buf = 67240450;
    notificationCopy3 = notification;
    v42 = 2114;
    v43 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[IMUCal] notifying param,%{public}u,%{public}@", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101953B14(buf);
    v29 = sub_100840544(v31);
    v36 = 67240450;
    notificationCopy4 = notification;
    v38 = 2114;
    v39 = v29;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLIMUCalService sendNotification:]", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  AudioServicesPlaySystemSound(0x596u);
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:+[NSString stringWithFormat:](NSString forKeyedSubscript:{"stringWithFormat:", @"In-field IMU Calibration", kCFUserNotificationAlertHeaderKey}];
  [v7 setObject:@"Dismiss" forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  if (!notification)
  {
    [v9 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Accel-Bias"}];
    [v10 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"mg"}];
    *&v12 = 1000.0;
    goto LABEL_17;
  }

  v11 = 1.0;
  if (notification == 2)
  {
    [v9 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Gyro-Scale"}];
    [v10 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%%"}];
    *&v12 = 100.0;
LABEL_17:
    v11 = *&v12;
  }

  [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [%@]", v9, v10)}];
  if (v33 != 1 || ([v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n\nAverage of %zu Most Recent Candidates:", v32)}], (v33 & 1) == 0))
  {
    sub_100173BA0();
  }

  [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n{ %+.2f, %+.2f, %+.2f }", (v11 * *&v31[1]), (v11 * *&v31[2]), (v11 * *&v31[3]))}];
  v15 = objc_alloc_init(NSDateFormatter);
  [v15 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n\nCandidates:"}];
  v16 = 0x6DB6DB6DB6DB6DB7 * ((v35 - __p) >> 4);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v16 & 0x7FFFFFFF;
    v19 = v18 + 1;
    v20 = 112 * v18;
    do
    {
      v21 = (__p + v20);
      if (!*(__p + v20 - 32))
      {
        v22 = *(v21 - 6);
        v23 = *(v21 - 10);
        [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n{ %+.2f, %+.2f, %+.2f }", (v11 * *(v21 - 27)), (v11 * *(v21 - 26)), (v11 * *(v21 - 25)))}];
        [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n%@, %.0fC", objc_msgSend(v15, "stringFromDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v22)), roundf(v23))}];
        if (++v17 == 10)
        {
          break;
        }
      }

      --v19;
      v20 -= 112;
    }

    while (v19 > 1);
  }

  [v7 setObject:v8 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  v24 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v7);

  if (!v24)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_101953AEC();
    }

    v27 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "[IMUCal] Could not create InFieldIMUCalibration user notification", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  CFRetain(v24);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v24, 0, 0);
  if (RunLoopSource)
  {
    v26 = sub_100107858();
    CFRunLoopAddSource(v26, RunLoopSource, kCFRunLoopCommonModes);
    CFRelease(RunLoopSource);
    CFRelease(v24);
    goto LABEL_39;
  }

  if (qword_1025D45D0 != -1)
  {
    sub_101953AEC();
  }

  v28 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "[IMUCal] Could not create runloop source for InFieldIMUCalibration user notification", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
LABEL_44:
    sub_101953B14(buf);
    LOWORD(v36) = 0;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "[CLIMUCalService sendNotification:]", "%s\n", v14);
    goto LABEL_45;
  }

LABEL_39:
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 7) = 0;
  return self;
}

@end