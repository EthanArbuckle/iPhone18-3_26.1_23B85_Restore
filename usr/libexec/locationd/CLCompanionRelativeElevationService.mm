@interface CLCompanionRelativeElevationService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLCompanionRelativeElevationService)init;
- (id).cxx_construct;
- (void)beginService;
- (void)calculateRelativeElevation;
- (void)endService;
- (void)logToCA;
- (void)onCompanionNotification:(int)notification data:(NotificationData *)data;
- (void)onKFFilteredPressure:(const CMKFFilteredPressureSample *)pressure;
- (void)registerForUpdates:(id)updates;
- (void)rotateCADaily;
- (void)rotateCAHourly;
- (void)unregisterForAlgorithmSources;
- (void)unregisterForUpdates:(id)updates;
- (void)updateRelativePressureCalibration;
@end

@implementation CLCompanionRelativeElevationService

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
  if (qword_102656850 != -1)
  {
    sub_1018AC878();
  }

  return qword_102656848;
}

- (CLCompanionRelativeElevationService)init
{
  v10.receiver = self;
  v10.super_class = CLCompanionRelativeElevationService;
  v2 = [(CLCompanionRelativeElevationService *)&v10 initWithInboundProtocol:&OBJC_PROTOCOL___CLCompanionRelativeElevationServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLCompanionRelativeElevationClientProtocol];
  v3 = v2;
  if (v2)
  {
    v2->_clients = 0;
    ptr = v2->fCompanionClient.__ptr_;
    v3->fCompanionClient.__ptr_ = 0;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }

    v5 = v3->fMotionActivityClient.__ptr_;
    v3->fMotionActivityClient.__ptr_ = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v3->fMotionStateCoprocessorDispatcher.__ptr_;
    v3->fMotionStateCoprocessorDispatcher.__ptr_ = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v3->fPressureBiasEstimateStat.__ptr_;
    v3->fPressureBiasEstimateStat.__ptr_ = 0;
    if (v7)
    {
      operator delete();
    }

    *&v3->fCurrentCalibrationEntry.companionPressure = 0u;
    *&v3->fCurrentCalibrationEntry.companionPressureUncertainty = 0u;
    *&v3->fCurrentCalibrationEntry.watchPressureTimestamp = 0u;
    *&v3->fCurrentCalibrationEntry.motionState = 0u;
    *&v3->fCurrentCalibrationEntry.isNearby = 0u;
    *&v3->fCurrentCalibrationEntry.isConnected = 0u;
    *&v3->fCurrentCalibrationEntry.pressureBiasMeasurement = 0u;
    *&v3->fCurrentCalibrationEntry.deltaPressure = 0u;
    *&v3->fCurrentCalibrationEntry.btRssi = 0u;
    v8 = v3->fCalibrationTable.__ptr_;
    v3->fCalibrationTable.__ptr_ = 0;
    if (v8)
    {
      sub_100503E30(&v3->fCalibrationTable, v8);
    }

    v3->fHourlyTimer = 0;
    v3->fDailyTimer = 0;
  }

  return v3;
}

- (void)beginService
{
  [(CLCompanionRelativeElevationService *)self silo];
  if (qword_1025D4440 != -1)
  {
    sub_1018AC88C();
  }

  v3 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] Starting service", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AC8A0();
  }

  [(CLCompanionRelativeElevationService *)self setClients:+[NSMutableSet set]];
  [(CLCompanionRelativeElevationService *)self registerForAlgorithmSources];
  operator new();
}

- (void)endService
{
  [(CLCompanionRelativeElevationService *)self silo];
  if (qword_1025D4440 != -1)
  {
    sub_1018AC88C();
  }

  v3 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] Ending service", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AC984();
  }

  fHourlyTimer = self->fHourlyTimer;
  if (fHourlyTimer)
  {
    [(NSTimer *)fHourlyTimer invalidate];
    self->fHourlyTimer = 0;
  }

  fDailyTimer = self->fDailyTimer;
  if (fDailyTimer)
  {
    [(NSTimer *)fDailyTimer invalidate];
    self->fDailyTimer = 0;
  }

  ptr = self->fCalibrationTable.__ptr_;
  if (ptr)
  {
    self->fCalibrationTable.__ptr_ = 0;
    sub_100503E30(&self->fCalibrationTable, ptr);
  }

  [(CLCompanionRelativeElevationService *)self unregisterForAlgorithmSources];
  [(CLCompanionRelativeElevationService *)self setClients:0];
}

- (void)unregisterForAlgorithmSources
{
  ptr = self->fCompanionClient.__ptr_;
  if (ptr)
  {
    [*(ptr + 2) unregister:*(ptr + 1) forNotification:12];
    [*(self->fCompanionClient.__ptr_ + 2) unregister:*(self->fCompanionClient.__ptr_ + 1) forNotification:13];
  }

  v4 = self->fMotionActivityClient.__ptr_;
  if (v4)
  {
    [*(v4 + 2) unregister:*(v4 + 1) forNotification:1];
  }

  if (self->fMotionStateCoprocessorDispatcher.__ptr_)
  {
    v5 = sub_100023ED4(0);
    sub_10095D9F8(v5, 30, self->fMotionStateCoprocessorDispatcher.__ptr_);
    v6 = sub_100023ED4(0);
    sub_10095D9F8(v6, 0, self->fMotionStateCoprocessorDispatcher.__ptr_);
    v7 = self->fMotionStateCoprocessorDispatcher.__ptr_;
    self->fMotionStateCoprocessorDispatcher.__ptr_ = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if (self->fPressureBiasEstimateStat.__ptr_)
  {
    self->fPressureBiasEstimateStat.__ptr_ = 0;

    operator delete();
  }
}

- (void)registerForUpdates:(id)updates
{
  [(NSMutableSet *)[(CLCompanionRelativeElevationService *)self clients] addObject:updates];
  if (qword_1025D4440 != -1)
  {
    sub_1018AC88C();
  }

  v4 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = [(NSMutableSet *)[(CLCompanionRelativeElevationService *)self clients] count];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] Client registerForUpdates, client count %lu", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ACA60(self);
  }
}

- (void)unregisterForUpdates:(id)updates
{
  [(NSMutableSet *)[(CLCompanionRelativeElevationService *)self clients] removeObject:updates];
  if (qword_1025D4440 != -1)
  {
    sub_1018AC88C();
  }

  v4 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = [(NSMutableSet *)[(CLCompanionRelativeElevationService *)self clients] count];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] Client unregisterForUpdates, client count %lu", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ACB6C(self);
  }
}

- (void)updateRelativePressureCalibration
{
  if (self->fPressureBiasEstimateStat.__ptr_)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = vabdd_f64(Current, self->fCurrentCalibrationEntry.nearbyTimestamp);
    companionPressure = self->fCurrentCalibrationEntry.companionPressure;
    v6 = vabdd_f64(Current, self->fCurrentCalibrationEntry.companionPressureTimestamp);
    watchPressure = self->fCurrentCalibrationEntry.watchPressure;
    v8 = vabdd_f64(Current, self->fCurrentCalibrationEntry.watchPressureTimestamp);
    isNearby = self->fCurrentCalibrationEntry.isNearby;
    v10 = *&qword_102656838;
    v11 = vabdd_f64(companionPressure, watchPressure);
    if (isNearby)
    {
      v12 = v6 < *&qword_102656838;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 && v8 < *&qword_102656838;
    if (v13 && v11 < 1000.0)
    {
      self->fCurrentCalibrationEntry.pressureBiasMeasurement = companionPressure - watchPressure;
      sub_100502850(self->fPressureBiasEstimateStat.__ptr_, companionPressure - watchPressure);
      ptr = self->fPressureBiasEstimateStat.__ptr_;
      if (*ptr < 1)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = *(ptr + 2);
      }

      self->fCurrentCalibrationEntry.pressureBiasEstimate = v15;
      if ((atomic_load_explicit(&qword_102656860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656860))
      {
        qword_102656858 = CFAbsoluteTimeGetCurrent();
        __cxa_guard_release(&qword_102656860);
      }

      v21 = CFAbsoluteTimeGetCurrent();
      self->fCurrentCalibrationEntry.timeSinceLastCalibration = CFAbsoluteTimeGetCurrent() - *&qword_102656858;
      qword_102656858 = *&v21;
      if (qword_1025D4440 != -1)
      {
        sub_1018AC88C();
      }

      v22 = qword_1025D4448;
      if (!os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      v23 = self->fCurrentCalibrationEntry.watchPressure;
      v24 = self->fCurrentCalibrationEntry.companionPressure;
      pressureBiasMeasurement = self->fCurrentCalibrationEntry.pressureBiasMeasurement;
      pressureBiasEstimate = self->fCurrentCalibrationEntry.pressureBiasEstimate;
      v27 = 68290306;
      *v28 = 2082;
      *&v28[2] = "";
      *&v28[10] = 2050;
      *&v28[12] = v23;
      *&v28[20] = 2050;
      *&v28[22] = v24;
      *&v28[30] = 2050;
      *&v28[32] = pressureBiasMeasurement;
      *&v28[40] = 2050;
      *&v28[42] = pressureBiasEstimate;
      *&v28[50] = 2050;
      *&v28[52] = v4;
      v18 = "{msg%{public}.0s:[CLCompanionRelativeElevation] Pressure bias sync valid, watchPressure:%{public}f, companionPressure:%{public}f, pressureBiasMeasurement:%{public}f, pressureBiasEstimate:%{public}f, proximityAge:%{public}f}";
      v19 = v22;
      v20 = 68;
    }

    else
    {
      if (qword_1025D4440 != -1)
      {
        sub_1018AC88C();
      }

      v17 = qword_1025D4448;
      if (!os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      v27 = 68290306;
      *v28 = 2082;
      *&v28[2] = "";
      *&v28[10] = 1026;
      *&v28[12] = isNearby != 0;
      *&v28[16] = 1026;
      *&v28[18] = v6 < v10;
      *&v28[22] = 1026;
      *&v28[24] = v8 < v10;
      *&v28[28] = 1026;
      *&v28[30] = v11 < 1000.0;
      *&v28[34] = 2050;
      *&v28[36] = v4;
      v18 = "{msg%{public}.0s:[CLCompanionRelativeElevation] Pressure bias sync not valid, isInProximityValid:%{public}hhd, isPhonePressureDurationValid:%{public}hhd, isWatchPressureDurationValid:%{public}hhd, isPressureBiasValid:%{public}hhd, proximityAge:%{public}f}";
      v19 = v17;
      v20 = 52;
    }

    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, v18, &v27, v20);
LABEL_30:
    [(CLCompanionRelativeElevationService *)self logToCA:v27];
    return;
  }

  if (qword_1025D4440 != -1)
  {
    sub_1018AC88C();
  }

  v16 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v27) = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[CLCompanionRelativeElevation] fPressureBiasEstimateStat is null", &v27, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018ACC78();
  }
}

- (void)calculateRelativeElevation
{
  ptr = self->fPressureBiasEstimateStat.__ptr_;
  if (ptr)
  {
    if (*ptr)
    {
      p_fCurrentCalibrationEntry = &self->fCurrentCalibrationEntry;
      companionPressure = self->fCurrentCalibrationEntry.companionPressure;
      v6 = self->fCurrentCalibrationEntry.watchPressure + self->fCurrentCalibrationEntry.pressureBiasEstimate;
      v7 = companionPressure;
      v8 = sub_1000A6C00(v7, 101320.0);
      v9 = v6;
      v10 = sub_1000A6C00(v9, 101320.0);
      p_fCurrentCalibrationEntry->deltaPressure = v6 - companionPressure;
      p_fCurrentCalibrationEntry->deltaElevation = (v10 - v8);
      if (qword_1025D4440 != -1)
      {
        sub_1018AC88C();
      }

      v11 = qword_1025D4448;
      if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
      {
        watchPressure = p_fCurrentCalibrationEntry->watchPressure;
        v13 = p_fCurrentCalibrationEntry->companionPressure;
        pressureBiasMeasurement = p_fCurrentCalibrationEntry->pressureBiasMeasurement;
        pressureBiasEstimate = p_fCurrentCalibrationEntry->pressureBiasEstimate;
        deltaPressure = p_fCurrentCalibrationEntry->deltaPressure;
        deltaElevation = p_fCurrentCalibrationEntry->deltaElevation;
        buf = 68290562;
        v34 = 2082;
        v35 = "";
        v36 = 2050;
        v37 = pressureBiasEstimate;
        v38 = 2050;
        v39 = watchPressure;
        v40 = 2050;
        v41 = v13;
        v42 = 2050;
        v43 = pressureBiasMeasurement;
        v44 = 2050;
        v45 = deltaPressure;
        v46 = 2050;
        v47 = deltaElevation;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:[CLCompanionRelativeElevation] calculateRelativeElevationWithCompanionPressure, pressureBiasEstimate:%{public}f, watchPressure:%{public}f, companionPressure:%{public}f, pressureBiasMeasurement:%{public}f, deltaPressure:%{public}f, deltaElevation:%{public}f}", &buf, 0x4Eu);
      }

      watchPressureTimestamp = p_fCurrentCalibrationEntry->watchPressureTimestamp;
      v19 = p_fCurrentCalibrationEntry->deltaPressure;
      v20 = p_fCurrentCalibrationEntry->deltaElevation;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      clients = [(CLCompanionRelativeElevationService *)self clients];
      v22 = [(NSMutableSet *)clients countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(clients);
            }

            [*(*(&v28 + 1) + 8 * i) onCompanionRelativeElevationUpdate:{watchPressureTimestamp, v19, v20}];
          }

          v23 = [(NSMutableSet *)clients countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v23);
      }
    }

    else
    {
      if (qword_1025D4440 != -1)
      {
        sub_1018AC88C();
      }

      v27 = qword_1025D4448;
      if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] pressureBiasEstimate not ready, skipping calculateRelativeElevation", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018ACD64();
      }
    }
  }

  else
  {
    if (qword_1025D4440 != -1)
    {
      sub_1018AC88C();
    }

    v26 = qword_1025D4448;
    if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "[CLCompanionRelativeElevation] fPressureBiasEstimateStat is null", &buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018ACE40();
    }
  }
}

- (void)logToCA
{
  if (byte_102656829 == 1)
  {
    p_fCurrentCalibrationEntry = &self->fCurrentCalibrationEntry;
    if (self->fCurrentCalibrationEntry.isNearby)
    {
      p_fCalibrationHourBuffer = &self->fCalibrationHourBuffer;
      p_end = &self->fCalibrationHourBuffer.__end_;
      if (0x8E38E38E38E38E39 * ((self->fCalibrationHourBuffer.__end_ - self->fCalibrationHourBuffer.__begin_) >> 4) <= 4)
      {
        if (qword_1025D4440 != -1)
        {
          sub_1018AC88C();
        }

        v5 = qword_1025D4448;
        if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
        {
          v6 = 0x8E38E38E38E38E39 * ((p_fCalibrationHourBuffer->__end_ - p_fCalibrationHourBuffer->__begin_) >> 4);
          v30 = 134217984;
          v31 = v6;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] Adding CA entry to fCalibrationHourBuffer, index %zu", &v30, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018ACF24(p_end, p_fCalibrationHourBuffer);
        }

        end = p_fCalibrationHourBuffer->__end_;
        cap = p_fCalibrationHourBuffer->__cap_;
        if (end >= cap)
        {
          v16 = 0x8E38E38E38E38E39 * ((end - p_fCalibrationHourBuffer->__begin_) >> 4);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1C71C71C71C71C7)
          {
            sub_10028C64C();
          }

          v18 = 0x8E38E38E38E38E39 * ((cap - p_fCalibrationHourBuffer->__begin_) >> 4);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0xE38E38E38E38E3)
          {
            v19 = 0x1C71C71C71C71C7;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            sub_100503B9C(p_fCalibrationHourBuffer, v19);
          }

          v20 = 144 * v16;
          *v20 = *&p_fCurrentCalibrationEntry->companionPressure;
          v21 = *&p_fCurrentCalibrationEntry->companionPressureUncertainty;
          v22 = *&p_fCurrentCalibrationEntry->watchPressureTimestamp;
          v23 = *&p_fCurrentCalibrationEntry->isNearby;
          *(v20 + 48) = *&p_fCurrentCalibrationEntry->motionState;
          *(v20 + 64) = v23;
          *(v20 + 16) = v21;
          *(v20 + 32) = v22;
          v24 = *&p_fCurrentCalibrationEntry->isConnected;
          v25 = *&p_fCurrentCalibrationEntry->pressureBiasMeasurement;
          v26 = *&p_fCurrentCalibrationEntry->btRssi;
          *(v20 + 112) = *&p_fCurrentCalibrationEntry->deltaPressure;
          *(v20 + 128) = v26;
          *(v20 + 80) = v24;
          *(v20 + 96) = v25;
          v15 = 144 * v16 + 144;
          v27 = p_fCalibrationHourBuffer->__end_ - p_fCalibrationHourBuffer->__begin_;
          v28 = (144 * v16 - v27);
          memcpy((v20 - v27), p_fCalibrationHourBuffer->__begin_, v27);
          begin = p_fCalibrationHourBuffer->__begin_;
          p_fCalibrationHourBuffer->__begin_ = v28;
          p_fCalibrationHourBuffer->__end_ = v15;
          p_fCalibrationHourBuffer->__cap_ = 0;
          if (begin)
          {
            operator delete(begin);
          }
        }

        else
        {
          *end = *&p_fCurrentCalibrationEntry->companionPressure;
          v9 = *&p_fCurrentCalibrationEntry->companionPressureUncertainty;
          v10 = *&p_fCurrentCalibrationEntry->watchPressureTimestamp;
          v11 = *&p_fCurrentCalibrationEntry->isNearby;
          *(end + 3) = *&p_fCurrentCalibrationEntry->motionState;
          *(end + 4) = v11;
          *(end + 1) = v9;
          *(end + 2) = v10;
          v12 = *&p_fCurrentCalibrationEntry->isConnected;
          v13 = *&p_fCurrentCalibrationEntry->pressureBiasMeasurement;
          v14 = *&p_fCurrentCalibrationEntry->btRssi;
          *(end + 7) = *&p_fCurrentCalibrationEntry->deltaPressure;
          *(end + 8) = v14;
          *(end + 5) = v12;
          *(end + 6) = v13;
          v15 = (end + 144);
        }

        *p_end = v15;
      }
    }
  }
}

- (void)rotateCAHourly
{
  if (self->fCalibrationTable.__ptr_)
  {
    p_fCalibrationHourBuffer = &self->fCalibrationHourBuffer;
    begin = self->fCalibrationHourBuffer.__begin_;
    end = self->fCalibrationHourBuffer.__end_;
    if (begin == end)
    {
      if (qword_1025D4440 != -1)
      {
        sub_1018AC88C();
      }

      v10 = qword_1025D4448;
      if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] fCalibrationHourBuffer is empty, nothing to send this hour.", v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018AD124();
      }
    }

    else
    {
      v6 = begin + 1;
      v7 = self->fCalibrationHourBuffer.__begin_;
      if (&begin[1] != end)
      {
        v7 = self->fCalibrationHourBuffer.__begin_;
        do
        {
          if (vabdd_f64(v6->watchPressureTimestamp, v6->nearbyTimestamp) < vabdd_f64(v7->watchPressureTimestamp, v7->nearbyTimestamp))
          {
            v7 = v6;
          }

          ++v6;
        }

        while (v6 != end);
      }

      if (v7 != end)
      {
        if (qword_1025D4440 != -1)
        {
          sub_1018AC88C();
        }

        v8 = qword_1025D4448;
        if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] Adding hourly CA entry to fCalibrationTable", v11, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018AD040();
        }

        sub_100503078(self->fCalibrationTable.__ptr_, v7);
        begin = p_fCalibrationHourBuffer->__begin_;
      }

      p_fCalibrationHourBuffer->__end_ = begin;
    }
  }

  else
  {
    if (qword_1025D4440 != -1)
    {
      sub_1018AC88C();
    }

    v9 = qword_1025D4448;
    if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "[CLCompanionRelativeElevation] fCalibrationTable is null", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AD208();
    }
  }
}

- (void)rotateCADaily
{
  if (self->fCalibrationTable.__ptr_)
  {
    if (qword_1025D4440 != -1)
    {
      sub_1018AC88C();
    }

    v3 = qword_1025D4448;
    if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(self->fCalibrationTable.__ptr_ + 4);
      *buf = 134217984;
      v8 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] Submitting daily CA logs, size %zu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AD2F4(&self->fCalibrationTable);
    }

    if (*(self->fCalibrationTable.__ptr_ + 4))
    {
      v5 = 0;
      do
      {
        AnalyticsSendEventLazy();
        ++v5;
      }

      while (*(self->fCalibrationTable.__ptr_ + 4) > v5);
    }
  }

  else
  {
    if (qword_1025D4440 != -1)
    {
      sub_1018AC88C();
    }

    v6 = qword_1025D4448;
    if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CLCompanionRelativeElevation] fCalibrationTable is null", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AD3F8();
    }
  }
}

- (void)onCompanionNotification:(int)notification data:(NotificationData *)data
{
  if (notification == 13)
  {
    p_fCurrentCalibrationEntry = &self->fCurrentCalibrationEntry;
    self->fCurrentCalibrationEntry.isConnected = *data;
    self->fCurrentCalibrationEntry.isNearby = *(data + 1);
    self->fCurrentCalibrationEntry.isActive = *(data + 2);
    self->fCurrentCalibrationEntry.nearbyTimestamp = *(data + 1);
    if (qword_1025D4440 != -1)
    {
      sub_1018AC88C();
    }

    v10 = qword_1025D4448;
    if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
    {
      isNearby = p_fCurrentCalibrationEntry->isNearby;
      isConnected = p_fCurrentCalibrationEntry->isConnected;
      isActive = p_fCurrentCalibrationEntry->isActive;
      *buf = 67109632;
      *v17 = isConnected;
      *&v17[4] = 1024;
      *&v17[6] = isNearby;
      LOWORD(v18) = 1024;
      *(&v18 + 2) = isActive;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] kNotificationCompanionDetailedConnectionUpdate, connected %d, nearby %d, active %d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4440 != -1)
      {
        sub_1018AD4DC();
      }

      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLCompanionRelativeElevationService onCompanionNotification:data:]", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else if (notification == 12)
  {
    v5 = &self->fCurrentCalibrationEntry;
    *&self->fCurrentCalibrationEntry.companionPressure = *data;
    self->fCurrentCalibrationEntry.companionPressureUncertainty = *(data + 2);
    if (qword_1025D4440 != -1)
    {
      sub_1018AC88C();
    }

    v6 = qword_1025D4448;
    if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
    {
      companionPressure = v5->companionPressure;
      companionPressureUncertainty = self->fCurrentCalibrationEntry.companionPressureUncertainty;
      *buf = 134218240;
      *v17 = companionPressure;
      *&v17[8] = 2048;
      v18 = companionPressureUncertainty;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "[CLCompanionRelativeElevation] kNotificationCompanionFilteredPressure, pressure %f, unc %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AD504(&self->fCurrentCalibrationEntry, &self->fCurrentCalibrationEntry.companionPressureUncertainty);
    }

    if (self->fPressureBiasEstimateStat.__ptr_)
    {
      [(CLCompanionRelativeElevationService *)self updateRelativePressureCalibration];
      [(CLCompanionRelativeElevationService *)self calculateRelativeElevation];
    }

    else
    {
      if (qword_1025D4440 != -1)
      {
        sub_1018AD4DC();
      }

      v15 = qword_1025D4448;
      if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "[CLCompanionRelativeElevation] fPressureBiasEstimateStat is not ready", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AD620();
      }
    }
  }
}

- (void)onKFFilteredPressure:(const CMKFFilteredPressureSample *)pressure
{
  if (pressure)
  {
    var1 = pressure->var1;
    self->fCurrentCalibrationEntry.watchPressure = pressure->var2;
    self->fCurrentCalibrationEntry.watchPressureTimestamp = var1;
    self->fCurrentCalibrationEntry.watchPressureUncertainty = pressure->var4;
    if ([(NSMutableSet *)[(CLCompanionRelativeElevationService *)self clients] count])
    {

      [(CLCompanionRelativeElevationService *)self calculateRelativeElevation];
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 23) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  return self;
}

@end