@interface CLLocationDerivedSpeedEstimator
+ (BOOL)isSupported;
+ (BOOL)isSupportedForAnalytics;
+ (BOOL)isSupportedForDerivedSpeedEstimate;
- ($1AB5FA073B851C12C2339EC22442E995)currentEstimate;
- (BOOL)_feedLocation:(id)a3;
- (BOOL)feedLocation:(const CLDaemonLocation *)a3;
- (CLLocationDerivedSpeedEstimator)init;
- (id).cxx_construct;
- (id)initInUniverse:(id)a3;
- (void)_onScanTimer;
- (void)clearStatusBarColorAndText;
- (void)dealloc;
- (void)handleMotionStateNotification:(NotificationData *)a3;
- (void)handleVehicularStateChanged;
- (void)invalidate;
- (void)logLatencyMetricsInternal;
- (void)onMotionStateNotification:(int)a3 data:(NotificationData *)a4;
- (void)onWifiServiceNotification:(int)a3 data:(NotificationData *)a4;
- (void)setStatusBarWithLabel:(id)a3;
- (void)startWsbClient;
- (void)stopWsbClient;
- (void)submitFalseDetectionMetricsWithType:(unint64_t)a3;
- (void)submitLatencyMetrics;
- (void)unregisterForNotifications;
- (void)updateStatusBarLabel;
- (void)updateWsbClient:(BOOL)a3;
@end

@implementation CLLocationDerivedSpeedEstimator

+ (BOOL)isSupportedForDerivedSpeedEstimate
{
  sub_10001A3E8();
  LODWORD(v2) = sub_10001CF04();
  if (v2)
  {
    return (sub_100023B30() >> 36) & 1;
  }

  return v2;
}

- ($1AB5FA073B851C12C2339EC22442E995)currentEstimate
{
  speed = self->_currentEstimate.speed;
  timestamp = self->_currentEstimate.timestamp;
  uncertainty = self->_currentEstimate.uncertainty;
  result.var2 = uncertainty;
  result.var1 = timestamp;
  result.var0 = speed;
  return result;
}

+ (BOOL)isSupported
{
  if ([objc_opt_class() isSupportedForDerivedSpeedEstimate])
  {
    return 1;
  }

  v3 = objc_opt_class();

  return [v3 isSupportedForAnalytics];
}

+ (BOOL)isSupportedForAnalytics
{
  if ([objc_opt_class() isSupportedForDerivedSpeedEstimate])
  {
    return 1;
  }

  sub_10001A3E8();

  return sub_10001CF3C();
}

- (CLLocationDerivedSpeedEstimator)init
{
  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CLLocationDerivedSpeedEstimator.mm" description:148, @"Use -initWithSilo:"];

  return 0;
}

- (id)initInUniverse:(id)a3
{
  if (!a3)
  {
    sub_1018E1C0C();
  }

  if ([objc_opt_class() isSupported])
  {
    v19.receiver = self;
    v19.super_class = CLLocationDerivedSpeedEstimator;
    v5 = [(CLLocationDerivedSpeedEstimator *)&v19 init];
    v6 = v5;
    if (v5)
    {
      v5->_valid = 1;
      v5->_universe = a3;
      v7 = [a3 silo];
      *&v6->_showActivityVehicular = 0;
      v6->_vehicleStateProxy = 0;
      v6->_silo = v7;
      sub_10001A3E8();
      if (sub_100328630())
      {
        sub_10001CAF4(buf);
        sub_10001CB4C(*buf, "ShowActivityVehicular", &v6->_showActivityVehicular);
        if (*&buf[8])
        {
          sub_100008080(*&buf[8]);
        }

        sub_10001CAF4(buf);
        sub_10001CB4C(*buf, "ShowActivityVehicularMounted", &v6->_showActivityVehicularMounted);
        if (*&buf[8])
        {
          sub_100008080(*&buf[8]);
        }
      }

      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v8 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
      {
        showActivityVehicular = v6->_showActivityVehicular;
        showActivityVehicularMounted = v6->_showActivityVehicularMounted;
        *buf = 136315906;
        *&buf[4] = "ShowActivityVehicular";
        *&buf[12] = 1024;
        *&buf[14] = showActivityVehicular;
        v21 = 2080;
        v22 = "ShowActivityVehicularMounted";
        v23 = 1024;
        v24 = showActivityVehicularMounted;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "%s, %d, %s, %d", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E1C94();
      }

      v6->_statusBarAssertion = 0;
      v6->_vehicularHints = 0;
      *&v6->_visualIndicatorActive = 0;
      v6->_motionVehicular = 0;
      v6->_prevLoc = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      *&v6->_currentEstimate.speed = _Q0;
      v6->_currentEstimate.uncertainty = -1.0;
      v6->_prevVehicularHints = 0;
      v6->_hintsAvailable = 21;
      *&v6->_vehicularStartTime = 0u;
      *&v6->_vehicularLastBTHintTime = 0u;
      *&v6->_accelDetectionLatency = _Q0;
      *&v6->_basebandDetectionLatency = _Q0;
      *&v6->_btDetectionLatency = _Q0;
      *&v6->_vehicularDurationExitFromNoHints = _Q0;
      v6->_vehicularDurationLastBTHintFromLastMotionHint = -1.0;
      v6->_sequentialVehicularIndex = 0;
      *&v6->_numMotionExitsWithBT = 0;
      v6->_numConsecutiveVehicularSpeedObservations = 0;
      v6->_wsbClientStartTime = 0;
      v6->_lastElapsedTime = 0.0;
      v6->_lastDistanceMoved = 0.0;
      [(CLLocationDerivedSpeedEstimator *)v6 registerForNotifications];
      v16 = [(CLSilo *)v6->_silo newTimer];
      v6->_scanTimer = v16;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1005EFD30;
      v18[3] = &unk_102447418;
      v18[4] = v6;
      [(CLTimer *)v16 setHandler:v18];
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)startWsbClient
{
  if (!self->_wsbClientStartTime)
  {
    v9 = v3;
    v10 = v2;
    v11 = v4;
    v12 = v5;
    v6 = 3600;
    v7 = 257;
    v8 = "dndwd";
    sub_1005F3624();
  }
}

- (void)stopWsbClient
{
  if (self->_wsbClientStartTime)
  {
    [*(self->_wifiServiceClient.__ptr_ + 2) unregister:*(self->_wifiServiceClient.__ptr_ + 1) forNotification:12];

    self->_wsbClientStartTime = 0;
    if (qword_1025D4250 != -1)
    {
      sub_1018E1EA8();
    }

    v3 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "stopWsbClient", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E1EBC();
    }
  }
}

- (void)updateWsbClient:(BOOL)a3
{
  if (a3)
  {
    [(CLLocationDerivedSpeedEstimator *)self stopWsbClient];
  }

  else
  {
    [(CLLocationDerivedSpeedEstimator *)self startWsbClient];
  }
}

- (void)unregisterForNotifications
{
  ptr = self->_wifiServiceClient.__ptr_;
  if (ptr)
  {
    self->_wifiServiceClient.__ptr_ = 0;
    (*(*ptr + 8))(ptr, a2);
    v4 = self->_wifiServiceClient.__ptr_;
    self->_wifiServiceClient.__ptr_ = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = self->_motionStateClient.__ptr_;
  if (v5)
  {
    self->_motionStateClient.__ptr_ = 0;
    (*(*v5 + 8))(v5, a2);
    v6 = self->_motionStateClient.__ptr_;
    self->_motionStateClient.__ptr_ = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (notify_is_valid_token(self->_vehicularToken))
  {
    notify_cancel(self->_vehicularToken);
    self->_vehicularToken = -1;
  }
}

- (void)invalidate
{
  [(CLLocationDerivedSpeedEstimator *)self unregisterForNotifications];

  [(CLLocationDerivedSpeedEstimator *)self _invalidateSpeedEstimate];
}

- (void)dealloc
{
  [(CLLocationDerivedSpeedEstimator *)self clearStatusBarColorAndText];
  [(CLLocationDerivedSpeedEstimator *)self invalidate];
  [(CLTimer *)self->_scanTimer invalidate];

  self->_scanTimer = 0;
  self->_prevLoc = 0;

  self->_silo = 0;
  self->_universe = 0;

  self->_vehicleStateProxy = 0;
  v3.receiver = self;
  v3.super_class = CLLocationDerivedSpeedEstimator;
  [(CLLocationDerivedSpeedEstimator *)&v3 dealloc];
}

- (BOOL)feedLocation:(const CLDaemonLocation *)a3
{
  v5 = [CLLocation alloc];
  rawCoordinate = a3->rawCoordinate;
  v12[6] = *&a3->lifespan;
  v12[7] = rawCoordinate;
  v13[0] = *&a3->rawCourse;
  *(v13 + 12) = *&a3->integrity;
  v7 = *&a3->speed;
  v12[2] = *&a3->altitude;
  v12[3] = v7;
  v8 = *&a3->timestamp;
  v12[4] = *&a3->course;
  v12[5] = v8;
  v9 = *&a3->coordinate.longitude;
  v12[0] = *&a3->suitability;
  v12[1] = v9;
  v10 = [v5 initWithClientLocation:v12];
  LOBYTE(self) = [(CLLocationDerivedSpeedEstimator *)self _feedLocation:v10];

  return self;
}

- (void)_onScanTimer
{
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v3 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "VEHICULAR: start extra scan", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1F98();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v17 = 14;
  strcpy(__p, "speedestimator");
  sub_100183FDC(buf, 4, 1, __p, Current);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = [-[CLIntersiloUniverse vendor](self->_universe "vendor")];
  v6 = *buf;
  v7 = v19;
  if (SHIBYTE(v21) < 0)
  {
    sub_100007244(&v8, v20, *(&v20 + 1));
  }

  else
  {
    v8 = v20;
    v9 = v21;
  }

  v11 = v23;
  v12 = v24;
  v13[0] = v25[0];
  *(v13 + 12) = *(v25 + 12);
  v10 = v22;
  if (SHIBYTE(v27) < 0)
  {
    sub_100007244(&v14, v26, *(&v26 + 1));
  }

  else
  {
    v14 = v26;
    v15 = v27;
  }

  [v5 requestLocationUpdateWithParameters:sub_1005F06B8(&v6)];
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }
}

- (BOOL)_feedLocation:(id)a3
{
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v5 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *v56 = [objc_msgSend(a3 "description")];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "VEHICULAR: leeched location, %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E207C(a3);
  }

  if ([a3 type] == 1)
  {
    self->_hintsAvailable |= 2uLL;
  }

  if ([a3 type] == 4)
  {
    self->_hintsAvailable |= 8uLL;
  }

  if ([a3 type] == 4)
  {
    if (-[CLLocationDerivedSpeedEstimator prevLoc](self, "prevLoc") && [objc_msgSend(objc_msgSend(a3 "timestamp")])
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v6 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "VEHICULAR: location timestamp out of order", buf, 2u);
      }

      v7 = sub_10000A100(121, 2);
      if (v7)
      {
        sub_1018E2284();
LABEL_62:
        LOBYTE(v7) = 0;
        return v7;
      }

      return v7;
    }

    [a3 horizontalAccuracy];
    if (v10 > 150.0)
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v11 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        [a3 horizontalAccuracy];
        *buf = 134217984;
        *v56 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "VEHICULAR: disqualified leeched location, horizontal accuracy, %f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E2C94(a3);
      }

      goto LABEL_61;
    }

    [objc_msgSend(a3 "timestamp")];
    *&v13 = v13;
    v14 = fabsf(*&v13);
    if (v14 > 180.0)
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v15 = v14;
      v16 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v56 = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "VEHICULAR: disqualified leeched location, age, %f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E2B94(v15);
      }

      goto LABEL_61;
    }

    if (qword_1025D4250 != -1)
    {
      sub_1018E1C6C();
    }

    v17 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [a3 type];
      *buf = 67109120;
      *v56 = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "VEHICULAR: qualified leeched location, type, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E2360(a3);
    }

    if (![(CLLocationDerivedSpeedEstimator *)self prevLoc])
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v21 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "VEHICULAR: first qualifying location", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E2AB8();
      }

      goto LABEL_60;
    }

    [objc_msgSend(a3 "timestamp")];
    if (v19 > 240.0)
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v20 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v56 = 0x406E000000000000;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "VEHICULAR: renew previous location older than age of %f seconds", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E29C4();
      }

LABEL_60:
      [(CLLocationDerivedSpeedEstimator *)self setPrevLoc:a3];
LABEL_61:
      [(CLLocationDerivedSpeedEstimator *)self _invalidateSpeedEstimate];
      goto LABEL_62;
    }

    if (qword_1025D4250 != -1)
    {
      sub_1018E1C6C();
    }

    v22 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
    {
      v23 = [[(CLLocationDerivedSpeedEstimator *)self prevLoc] type];
      v24 = [-[CLLocation description](-[CLLocationDerivedSpeedEstimator prevLoc](self "prevLoc")];
      *buf = 67109378;
      *v56 = v23;
      *&v56[4] = 2080;
      *&v56[6] = v24;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "VEHICULAR: previous location, type, %d, %s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E2460(self);
    }

    [[(CLLocationDerivedSpeedEstimator *)self prevLoc] distanceFromLocation:a3];
    v26 = v25;
    -[NSDate timeIntervalSinceDate:](-[CLLocation timestamp](-[CLLocationDerivedSpeedEstimator prevLoc](self, "prevLoc"), "timestamp"), "timeIntervalSinceDate:", [a3 timestamp]);
    v28 = v27;
    [[(CLLocationDerivedSpeedEstimator *)self prevLoc] horizontalAccuracy];
    v30 = v29 * v29;
    [a3 horizontalAccuracy];
    v32 = sqrt(v30 + v31 * v31);
    if (v26 <= v32)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v26 - v32;
    }

    if (qword_1025D4250 != -1)
    {
      sub_1018E1C6C();
    }

    v34 = fabs(v28);
    v35 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *v56 = v26;
      *&v56[8] = 2048;
      *&v56[10] = v34;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "VEHICULAR: distanceMoved, %f, elapsedTime, %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E2594(v26, v34);
    }

    if (v34 <= 60.0)
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v43 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v56 = 0x404E000000000000;
        _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "VEHICULAR: drop leeched location within %f sec", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E26A4();
      }

      goto LABEL_61;
    }

    if (qword_1025D4250 != -1)
    {
      sub_1018E1C6C();
    }

    v36 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [a3 type];
      *buf = 67109120;
      *v56 = v37;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "VEHICULAR: accept qualified leeched location, type, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E2798(a3);
    }

    if (v28 == 0.0)
    {
      [(CLLocationDerivedSpeedEstimator *)self _invalidateSpeedEstimate];
      [(CLLocationDerivedSpeedEstimator *)self setPrevLoc:a3];
      goto LABEL_62;
    }

    v38 = v33 / v34;
    v39 = v32 / v34;
    if (v38 > 45.0)
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v40 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [a3 type];
        *buf = 134219264;
        *v56 = v38;
        *&v56[8] = 2048;
        *&v56[10] = v26 / v34;
        *&v56[18] = 2048;
        *&v56[20] = v39;
        *&v56[28] = 2048;
        *&v56[30] = v26;
        v57 = 2048;
        v58 = v34;
        v59 = 1024;
        v60 = v41;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "VEHICULAR: outlier, conservativeSpeed, %f, effectiveSpeed, %f, speedUncertainty, %f, distanceMoved, %f, elapsedTime, %f, type, %d", buf, 0x3Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4250 != -1)
        {
          sub_1018E1C6C();
        }

        [a3 type];
        v42 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLLocationDerivedSpeedEstimator _feedLocation:]", "%s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      goto LABEL_61;
    }

    [objc_msgSend(a3 "timestamp")];
    [(CLLocationDerivedSpeedEstimator *)self setCurrentEstimate:v26 / v34, v44, v39];
    if (v38 <= 6.7)
    {
      self->_numConsecutiveVehicularSpeedObservations = 0;
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v51 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [a3 type];
        *buf = 134219264;
        *v56 = v38;
        *&v56[8] = 2048;
        *&v56[10] = v26 / v34;
        *&v56[18] = 2048;
        *&v56[20] = v39;
        *&v56[28] = 2048;
        *&v56[30] = v26;
        v57 = 2048;
        v58 = v34;
        v59 = 1024;
        v60 = v52;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEFAULT, "VEHICULAR: conservativeSpeed, %f, effectiveSpeed, %f, speedUncertainty, %f, distanceMoved, %f, elapsedTime, %f, type, %d", buf, 0x3Au);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_125;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4250 == -1)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v45 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        numConsecutiveVehicularSpeedObservations = self->_numConsecutiveVehicularSpeedObservations;
        lastElapsedTime = self->_lastElapsedTime;
        *buf = 67109888;
        *v56 = numConsecutiveVehicularSpeedObservations;
        *&v56[4] = 2048;
        *&v56[6] = v34;
        *&v56[14] = 2048;
        *&v56[16] = lastElapsedTime;
        *&v56[24] = 2048;
        *&v56[26] = v34 - lastElapsedTime;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "VEHICULAR: vehicular speed detected, consecutive observations, %d, elapsedTime, %f, lastElapsedTime, %f, delta, %f", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E2898(self, v34);
      }

      v48 = self->_numConsecutiveVehicularSpeedObservations;
      if (v48 <= 0)
      {
        self->_numConsecutiveVehicularSpeedObservations = v48 + 1;
        self->_lastElapsedTime = v34;
        self->_lastDistanceMoved = v26;
        [(CLLocationDerivedSpeedEstimator *)self _invalidateSpeedEstimate];
        [(CLTimer *)[(CLLocationDerivedSpeedEstimator *)self scanTimer] setNextFireDelay:15.0];
        goto LABEL_62;
      }

      if (v34 - self->_lastElapsedTime < 15.0)
      {
        goto LABEL_61;
      }

      [(CLTimer *)[(CLLocationDerivedSpeedEstimator *)self scanTimer] setNextFireDelay:1.79769313e308];
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v49 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [a3 type];
        *buf = 134219264;
        *v56 = v38;
        *&v56[8] = 2048;
        *&v56[10] = v26 / v34;
        *&v56[18] = 2048;
        *&v56[20] = v39;
        *&v56[28] = 2048;
        *&v56[30] = v26;
        v57 = 2048;
        v58 = v34;
        v59 = 1024;
        v60 = v50;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "VEHICULAR: conservativeSpeed, %f, effectiveSpeed, %f, speedUncertainty, %f, distanceMoved, %f, elapsedTime, %f, type, %d", buf, 0x3Au);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_125:
        [(CLLocationDerivedSpeedEstimator *)self setPrevLoc:a3];
        LOBYTE(v7) = 1;
        return v7;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4250 == -1)
      {
LABEL_128:
        [a3 type];
        v53 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLLocationDerivedSpeedEstimator _feedLocation:]", "%s\n", v53);
        if (v53 != buf)
        {
          free(v53);
        }

        goto LABEL_125;
      }
    }

    sub_1018E1C6C();
    goto LABEL_128;
  }

  if (qword_1025D4250 != -1)
  {
    sub_1018E1C6C();
  }

  v8 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
  {
    v9 = [a3 type];
    *buf = 67109120;
    *v56 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "VEHICULAR: disqualified leeched location, type, %d", buf, 8u);
  }

  v7 = sub_10000A100(121, 2);
  if (v7)
  {
    sub_1018E2184(a3);
    goto LABEL_62;
  }

  return v7;
}

- (void)handleVehicularStateChanged
{
  if (!self->_showActivityVehicularMounted)
  {
    vehicleStateProxy = self->_vehicleStateProxy;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1005F168C;
    v3[3] = &unk_1024636B0;
    v3[4] = self;
    [(CLVehicleStateNotifierProtocol *)vehicleStateProxy fetchVehicularDndStateAndHintsWithReply:v3];
  }
}

- (void)handleMotionStateNotification:(NotificationData *)a3
{
  v7 = *(a3 + 7);
  v66 = *(a3 + 6);
  v67 = v7;
  v68 = *(a3 + 16);
  v8 = *(a3 + 3);
  *&v64.isStanding = *(a3 + 2);
  *&v64.isVehicleConnected = v8;
  v9 = *(a3 + 5);
  *&v64.vehicleType = *(a3 + 4);
  v65 = v9;
  v10 = *(a3 + 1);
  *&v64.type = *a3;
  *&v64.mountedConfidence = v10;
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v11 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
  {
    type = v64.type;
    v13 = CLMotionActivity::activityTypeToString();
    confidence = v64.confidence;
    isMounted = CLMotionActivity::isMounted(&v64);
    *buf = 136316162;
    v70 = v13;
    v71 = 1024;
    v72 = type;
    v73 = 1024;
    v74 = confidence;
    v75 = 1024;
    v76 = isMounted;
    v77 = 2048;
    v78 = v65;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "MotionState, %s, type, %d, conf, %d, mounted, %d, startTime, %f", buf, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E2D98(&v64);
  }

  v16 = CLMotionActivity::isInVehicle(&v64);
  p_vehicularStartTime = &self->_vehicularStartTime;
  vehicularStartTime = self->_vehicularStartTime;
  if (v16)
  {
    if (vehicularStartTime == 0.0)
    {
      v19 = *&v65;
      *&self->_vehicularStartTime = v65;
      if (vabdd_f64(v19, self->_lastSeenVehicularTime) >= 180.0)
      {
        v20 = 0;
      }

      else
      {
        v20 = self->_sequentialVehicularIndex + 1;
      }

      self->_sequentialVehicularIndex = v20;
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v40 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *p_vehicularStartTime;
        sequentialVehicularIndex = self->_sequentialVehicularIndex;
        *buf = 134218240;
        v70 = v41;
        v71 = 1024;
        v72 = sequentialVehicularIndex;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "VEHICULAR: vehicularStartTime, %f, seq, %d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E30CC();
      }

      vehicleStateProxy = self->_vehicleStateProxy;
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v60 = v65;
      v61 = v66;
      v62 = v67;
      v59 = v64;
      v58[2] = sub_1005F1D5C;
      v58[3] = &unk_1024636D8;
      v63 = v68;
      v58[4] = self;
      [(CLVehicleStateNotifierProtocol *)vehicleStateProxy fetchVehicularFalsePositiveSuppressionStatusWithReply:v58];
      vehicularStartTime = self->_vehicularStartTime;
    }

    v44 = *&v65;
    v45 = *&v65 - vehicularStartTime;
    v46 = v66;
    if (v66)
    {
      vehicularHints = self->_vehicularHints;
      if ((vehicularHints & 1) == 0)
      {
        self->_accelDetectionLatency = v45;
      }

      self->_vehicularHints = vehicularHints | 1;
      v48 = 1;
      if ((v46 & 2) == 0)
      {
LABEL_59:
        if ((v46 & 4) != 0)
        {
          v53 = self->_vehicularHints;
          if ((v53 & 4) == 0)
          {
            self->_basebandDetectionLatency = v45;
          }

          self->_vehicularHints = v53 | 4;
          v48 |= 4uLL;
          if ((v46 & 8) == 0)
          {
LABEL_61:
            if ((v46 & 0x10) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_79;
          }
        }

        else if ((v46 & 8) == 0)
        {
          goto LABEL_61;
        }

        v54 = self->_vehicularHints;
        if ((v54 & 8) == 0)
        {
          self->_wifiDetectionLatency = v45;
        }

        self->_vehicularHints = v54 | 8;
        v48 |= 8uLL;
        if ((v46 & 0x10) == 0)
        {
LABEL_62:
          if ((self->_prevVehicularHints & 0x10) != 0)
          {
            self->_vehicularLastBTHintTime = v44;
          }

          if (!v48)
          {
            p_vehicularLastNoHintsTime = &self->_vehicularLastNoHintsTime;
            if (self->_vehicularLastNoHintsTime == 0.0)
            {
              *p_vehicularLastNoHintsTime = v44;
              if (qword_1025D4250 != -1)
              {
                sub_1018E1C6C();
              }

              v51 = qword_1025D4258;
              if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
              {
                v52 = *p_vehicularLastNoHintsTime;
                *buf = 134217984;
                v70 = v52;
                _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_INFO, "VEHICULAR: vehicularLastNoHintsTime, %f", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018E31DC(&self->_vehicularLastNoHintsTime);
              }
            }

            v48 = 0;
            goto LABEL_83;
          }

LABEL_82:
          self->_vehicularLastNoHintsTime = 0.0;
LABEL_83:
          self->_prevVehicularHints = v48;
          goto LABEL_84;
        }

LABEL_79:
        v55 = self->_vehicularHints;
        if ((v55 & 0x10) == 0)
        {
          self->_btDetectionLatency = v45;
        }

        self->_vehicularHints = v55 | 0x10;
        v48 |= 0x10uLL;
        goto LABEL_82;
      }
    }

    else if ((self->_prevVehicularHints & 1) != 0 && (*&self->_vehicularLastMotionHintTime = v65, (v46 & 0x10) != 0))
    {
      v48 = 0;
      ++self->_numMotionExitsWithBT;
      if ((v46 & 2) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v48 = 0;
      if ((v46 & 2) == 0)
      {
        goto LABEL_59;
      }
    }

    v49 = self->_vehicularHints;
    if ((v49 & 2) == 0)
    {
      self->_gpsDetectionLatency = v45;
    }

    self->_vehicularHints = v49 | 2;
    v48 |= 2uLL;
    goto LABEL_59;
  }

  if (vehicularStartTime > 0.0)
  {
    v21 = *&v65;
    v22 = *&v65 - vehicularStartTime;
    v23 = *&v65;
    vehicularLastNoHintsTime = self->_vehicularLastNoHintsTime;
    vehicularLastBTHintTime = self->_vehicularLastBTHintTime;
    v26 = *&v65 - vehicularLastNoHintsTime;
    _ZF = vehicularLastNoHintsTime == 0.0;
    v27 = -1.0;
    if (_ZF)
    {
      v26 = -1.0;
    }

    self->_vehicularDuration = v22;
    self->_vehicularDurationExitFromNoHints = v26;
    self->_lastSeenVehicularTime = v23;
    v28 = v21 - vehicularLastBTHintTime;
    if (vehicularLastBTHintTime == 0.0)
    {
      v28 = -1.0;
    }

    self->_vehicularDurationExitFromLastBTHint = v28;
    if (vehicularLastBTHintTime != 0.0)
    {
      vehicularLastMotionHintTime = self->_vehicularLastMotionHintTime;
      _ZF = vehicularLastBTHintTime <= vehicularLastMotionHintTime || vehicularLastMotionHintTime == 0.0;
      v31 = vehicularLastBTHintTime - vehicularLastMotionHintTime;
      v27 = -1.0;
      if (!_ZF)
      {
        v27 = v31;
      }
    }

    seenNonVehicularState = self->_seenNonVehicularState;
    self->_vehicularDurationLastBTHintFromLastMotionHint = v27;
    if (seenNonVehicularState)
    {
      [(CLLocationDerivedSpeedEstimator *)self logLatencyMetricsInternal];
      [(CLLocationDerivedSpeedEstimator *)self submitLatencyMetrics];
    }

    else
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v33 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v34 = self->_seenNonVehicularState;
        *buf = 67109120;
        LODWORD(v70) = v34;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "VEHICULAR: skipping LatencyMetrics, seenNonVehicularState, %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E2EFC(&self->_seenNonVehicularState);
      }
    }

    self->_vehicularHints = 0;
    self->_prevVehicularHints = 0;
    *p_vehicularStartTime = 0u;
    *&self->_vehicularLastBTHintTime = 0u;
    self->_numMotionExitsWithBT = 0;
    self->_hintsAvailable = 21;
    __asm { FMOV            V0.2D, #-1.0 }

    *&self->_accelDetectionLatency = _Q0;
    *&self->_basebandDetectionLatency = _Q0;
    *&self->_btDetectionLatency = _Q0;
    *&self->_vehicularDurationExitFromNoHints = _Q0;
    self->_vehicularDurationLastBTHintFromLastMotionHint = -1.0;
    if (qword_1025D4250 != -1)
    {
      sub_1018E1C6C();
    }

    v39 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_INFO, "VEHICULAR: reset vehicular latency measures", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E2FF0();
    }
  }

  self->_seenNonVehicularState = 1;
LABEL_84:
  if (self->_showActivityVehicularMounted)
  {
    v56 = CLMotionActivity::isInVehicle(&v64);
    if (v56)
    {
      LOBYTE(v56) = CLMotionActivity::isMounted(&v64);
    }

    self->_motionVehicular = v56;
    [(CLLocationDerivedSpeedEstimator *)self updateStatusBarLabel];
  }

  else if (self->_showActivityVehicular && self->_visualIndicatorActive)
  {
    v57 = self->_vehicularHints;
    [(SBSStatusBarStyleOverridesAssertion *)self->_statusBarAssertion setStatusString:[NSString stringWithFormat:@"In-Vehicle(Motion:%d, GPS:%d, BB:%d, WiFi:%d, BT:%d, M:%d)", v57 & 1, (v57 >> 1) & 1, (v57 >> 2) & 1, (v57 >> 3) & 1, (v57 >> 4) & 1, CLMotionActivity::isMounted(&v64)]];
  }
}

- (void)onWifiServiceNotification:(int)a3 data:(NotificationData *)a4
{
  if (a3 == 6)
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018E1EA8();
    }

    v8 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a4 + 96) == 1 && *(a4 + 12) > 0;
      v12 = 67109120;
      v13 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "VEHICULAR: wifi associated state, %d", &v12, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E32D4(a4);
    }

    v11 = *(a4 + 96) == 1 && *(a4 + 12) > 0;
    [(CLLocationDerivedSpeedEstimator *)self updateWsbClient:v11];
  }

  else
  {
    v4 = *&a3;
    if (a3 == 12)
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1EA8();
      }

      v5 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        v13 = 12;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "VEHICULAR: notification ScanCache received %d", &v12, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E33E8();
      }
    }

    else
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1EA8();
      }

      v10 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_ERROR))
      {
        v12 = 67109120;
        v13 = v4;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "VEHICULAR: received unhandled WifiService notification %d", &v12, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E34D8(v4);
      }
    }
  }
}

- (void)onMotionStateNotification:(int)a3 data:(NotificationData *)a4
{
  if (a3 == 4)
  {

    [(CLLocationDerivedSpeedEstimator *)self handleMotionStateNotification:a4];
  }

  else
  {
    v7 = *&a3;
    if (qword_1025D4250 != -1)
    {
      sub_1018E1EA8();
    }

    v8 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "VEHICULAR: received unhandled notification %d", v9, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E35D4(v7);
    }
  }
}

- (void)updateStatusBarLabel
{
  if (self->_motionVehicular)
  {
    if (self->_visualIndicatorActive)
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1EA8();
      }

      v3 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
      {
        v4 = 136315138;
        v5 = [@"Apple Internal: In-Vehicle" UTF8String];
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "update status bar label, %s", &v4, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E36D0();
      }

      [(SBSStatusBarStyleOverridesAssertion *)self->_statusBarAssertion setStatusString:@"Apple Internal: In-Vehicle"];
    }

    else
    {

      [(CLLocationDerivedSpeedEstimator *)self setStatusBarWithLabel:@"Apple Internal: In-Vehicle"];
    }
  }

  else if (self->_visualIndicatorActive)
  {

    [(CLLocationDerivedSpeedEstimator *)self clearStatusBarColorAndText];
  }
}

- (void)setStatusBarWithLabel:(id)a3
{
  if (!self->_visualIndicatorActive)
  {
    if (self->_showActivityVehicularMounted)
    {
      v5 = 0x8000;
    }

    else
    {
      v5 = 4;
    }

    if (qword_1025D4250 != -1)
    {
      sub_1018E1EA8();
    }

    v6 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = [a3 UTF8String];
      v13 = 2048;
      v14 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "set status bar label, %s, style, %llu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E37D0();
    }

    self->_visualIndicatorActive = 1;
    v7 = [SBSStatusBarStyleOverridesAssertion assertionWithStatusBarStyleOverrides:v5 forPID:getpid() exclusive:1 showsWhenForeground:1];
    self->_statusBarAssertion = v7;
    [(SBSStatusBarStyleOverridesAssertion *)v7 setStatusString:a3];
    statusBarAssertion = self->_statusBarAssertion;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005F24C8;
    v10[3] = &unk_10245C2C8;
    v10[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005F2628;
    v9[3] = &unk_102447418;
    v9[4] = self;
    [(SBSStatusBarStyleOverridesAssertion *)statusBarAssertion acquireWithHandler:v10 invalidationHandler:v9];
  }
}

- (void)clearStatusBarColorAndText
{
  self->_visualIndicatorActive = 0;
  [(SBSStatusBarStyleOverridesAssertion *)self->_statusBarAssertion invalidate];

  self->_statusBarAssertion = 0;
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v3 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "clear status bar label", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E3AB8();
  }
}

- (void)logLatencyMetricsInternal
{
  sub_10001A3E8();
  if (sub_100328630())
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1005F29CC;
    v16[3] = &unk_102463728;
    v16[4] = self;
    v3 = off_1025D75B8(@"212", @"VehicleConnection_NOT_A_CRASH", 0, 0, v16);
    if (qword_1025D4250 != -1)
    {
      sub_1018E1C6C();
    }

    v4 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      accelDetectionLatency = self->_accelDetectionLatency;
      gpsDetectionLatency = self->_gpsDetectionLatency;
      basebandDetectionLatency = self->_basebandDetectionLatency;
      wifiDetectionLatency = self->_wifiDetectionLatency;
      vehicularDurationExitFromNoHints = self->_vehicularDurationExitFromNoHints;
      vehicularDurationExitFromLastBTHint = self->_vehicularDurationExitFromLastBTHint;
      vehicularDurationLastBTHintFromLastMotionHint = self->_vehicularDurationLastBTHintFromLastMotionHint;
      numMotionExitsWithBT = self->_numMotionExitsWithBT;
      sequentialVehicularIndex = self->_sequentialVehicularIndex;
      btDetectionLatency = self->_btDetectionLatency;
      vehicularDuration = self->_vehicularDuration;
      *buf = 134220800;
      v18 = accelDetectionLatency;
      v19 = 2048;
      v20 = gpsDetectionLatency;
      v21 = 2048;
      v22 = basebandDetectionLatency;
      v23 = 2048;
      v24 = wifiDetectionLatency;
      v25 = 2048;
      v26 = btDetectionLatency;
      v27 = 2048;
      v28 = vehicularDurationExitFromNoHints;
      v29 = 2048;
      v30 = vehicularDurationExitFromLastBTHint;
      v31 = 2048;
      v32 = vehicularDurationLastBTHintFromLastMotionHint;
      v33 = 1024;
      v34 = numMotionExitsWithBT;
      v35 = 1024;
      v36 = sequentialVehicularIndex;
      v37 = 2048;
      v38 = vehicularDuration;
      v39 = 1024;
      v40 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "VEHICULAR: logLatencyMetricsInternal, accel, %f, gps, %f, bb, %f, wifi, %f, bt, %f, exitFromNoHints, %f, exitFromLastBTHint, %f, BTHintFromLastMotionHintDuration, %f, motionExitsWithBTCount, %d, sequentialVehicularIndex, %d, duration, %f, success, %d", buf, 0x6Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E3B94(self, v3);
    }
  }
}

- (void)submitFalseDetectionMetricsWithType:(unint64_t)a3
{
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v4 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "VEHICULAR: false positive detected, hint, %lu", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E3D14(a3);
  }

  AnalyticsSendEvent();
  if (a3 <= 3)
  {
    if (a3 == 1 || a3 == 2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a3 == 4)
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018E1C6C();
      }

      v5 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 67109120;
        LODWORD(v7) = 6488064;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "VEHICULAR: submit baseband false detection metric, id, %u", &v6, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E3E08();
      }

      AWDPostSimpleMetric();
      goto LABEL_22;
    }

    if (a3 == 8 || a3 == 16)
    {
LABEL_22:
      AnalyticsSendEvent();
    }
  }
}

- (void)submitLatencyMetrics
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", self->_vehicularDuration), @"duration"}];
  [v3 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", self->_hintsAvailable), @"hintsAvailable"}];
  [v3 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", self->_vehicularHints), @"hintsDetected"}];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", self->_sequentialVehicularIndex), @"sequentialVehicularIndex"}];
  if (self->_vehicularDurationExitFromNoHints >= 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"durationExitFromNoHints"}];
  }

  vehicularHints = self->_vehicularHints;
  if (vehicularHints)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", self->_accelDetectionLatency), @"accel"}];
    accelDetectionLatency = self->_accelDetectionLatency;
    vehicularHints = self->_vehicularHints;
  }

  else
  {
    accelDetectionLatency = 1.79769313e308;
  }

  wifiDetectionLatency = accelDetectionLatency;
  if ((vehicularHints & 8) != 0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", self->_wifiDetectionLatency), @"wifi"}];
    if (self->_wifiDetectionLatency >= accelDetectionLatency)
    {
      wifiDetectionLatency = accelDetectionLatency;
    }

    else
    {
      wifiDetectionLatency = self->_wifiDetectionLatency;
    }

    vehicularHints = self->_vehicularHints;
  }

  if ((vehicularHints & 4) != 0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", self->_basebandDetectionLatency), @"baseband"}];
    basebandDetectionLatency = self->_basebandDetectionLatency;
    if (basebandDetectionLatency < accelDetectionLatency)
    {
      accelDetectionLatency = self->_basebandDetectionLatency;
    }

    if (basebandDetectionLatency >= wifiDetectionLatency)
    {
      v7 = wifiDetectionLatency;
    }

    else
    {
      v7 = self->_basebandDetectionLatency;
    }

    vehicularHints = self->_vehicularHints;
  }

  else
  {
    v7 = wifiDetectionLatency;
  }

  gpsDetectionLatency = v7;
  if ((vehicularHints & 2) != 0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", self->_gpsDetectionLatency), @"gps"}];
    if (self->_gpsDetectionLatency >= v7)
    {
      gpsDetectionLatency = v7;
    }

    else
    {
      gpsDetectionLatency = self->_gpsDetectionLatency;
    }

    vehicularHints = self->_vehicularHints;
  }

  if ((vehicularHints & 0x10) != 0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", self->_btDetectionLatency), @"bt"}];
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", self->_numMotionExitsWithBT), @"countMotionExitsWithBT"}];
    if (self->_vehicularDurationExitFromLastBTHint >= 0.0)
    {
      [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"durationExitFromLastBTHint"}];
    }

    if (self->_vehicularDurationLastBTHintFromLastMotionHint >= 0.0)
    {
      [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"durationBTHintFromLastMotionHint"}];
    }
  }

  if (wifiDetectionLatency < 1.79769313e308)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", wifiDetectionLatency), @"accelWifi"}];
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", accelDetectionLatency), @"accelBaseband"}];
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v7), @"accelWifiBaseband"}];
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", gpsDetectionLatency), @"accelWifiBasebandGPS"}];
  }

  AnalyticsSendEvent();
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v10 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138416386;
    v12 = [v3 objectForKeyedSubscript:@"accel"];
    v13 = 2112;
    v14 = [v3 objectForKeyedSubscript:@"gps"];
    v15 = 2112;
    v16 = [v3 objectForKeyedSubscript:@"baseband"];
    v17 = 2112;
    v18 = [v3 objectForKeyedSubscript:@"wifi"];
    v19 = 2112;
    v20 = [v3 objectForKeyedSubscript:@"bt"];
    v21 = 2112;
    v22 = [v3 objectForKeyedSubscript:@"accelWifi"];
    v23 = 2112;
    v24 = [v3 objectForKeyedSubscript:@"accelBaseband"];
    v25 = 2112;
    v26 = [v3 objectForKeyedSubscript:@"accelWifiBaseband"];
    v27 = 2112;
    v28 = [v3 objectForKeyedSubscript:@"accelWifiBasebandGPS"];
    v29 = 2112;
    v30 = [v3 objectForKeyedSubscript:@"durationExitFromNoHints"];
    v31 = 2112;
    v32 = [v3 objectForKeyedSubscript:@"durationExitFromLastBTHint"];
    v33 = 2112;
    v34 = [v3 objectForKeyedSubscript:@"durationBTHintFromLastMotionHint"];
    v35 = 2112;
    v36 = [v3 objectForKeyedSubscript:@"countMotionExitsWithBT"];
    v37 = 2112;
    v38 = [v3 objectForKeyedSubscript:@"sequentialVehicularIndex"];
    v39 = 2112;
    v40 = [v3 objectForKeyedSubscript:@"duration"];
    v41 = 2112;
    v42 = [v3 objectForKeyedSubscript:@"hintsAvailable"];
    v43 = 2112;
    v44 = [v3 objectForKeyedSubscript:@"hintsDetected"];
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "VEHICULAR: submitLatencyMetrics, accel, %@, gps, %@, baseband, %@, wifi, %@, bt, %@, accelWifi, %@, accelBaseband, %@, accelWifiBaseband, %@, accelWifiBasebandGPS, %@, exitFromNoHints, %@, durationExitFromLastBTHint, %@, durationBTHintFromLastMotionHint, %@, countMotionExitsWithBT, %@, sequentialVehicularIndex, %@, duration, %@, hintsAvailable, %@, hintsDetected, %@", buf, 0xACu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E3EF8(v3);
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end