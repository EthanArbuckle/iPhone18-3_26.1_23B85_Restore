@interface CMStrideCalibrator
- (BOOL)checkValidTrack:(id)track associatedEntry:(const CLStepDistance *)entry;
- (id).cxx_construct;
- (id)initInUniverse:(id)universe stepCountDb:(shared_ptr<CLStepCountRecorderDb>)db;
- (shared_ptr<CMMobilityCal::GPSRawSpeedToKValueTable>)getSpdToKTable;
- (void)addLatestCalData:(id)data;
- (void)attemptForcedLocation;
- (void)checkForLocationStateTransition;
- (void)checkTimeToSendNewCAGPSCalibration;
- (void)dealloc;
- (void)feedBodyMetrics:(CLBodyMetrics *)metrics;
- (void)fsm:(id)fsm didTransitionFromState:(int)state toState:(int)toState;
- (void)fsm:(id)fsm didUpdateLocationAtTime:(double)time;
- (void)fsm:(id)fsm didYieldTrack:(id)track;
- (void)quitForcedLocationState;
- (void)sendGPSCoreAnalyticsAndUpdateTime;
- (void)setSession:(int64_t)session;
- (void)strideCalibrationDatabase:(id)database didInsertEntry:(CLStrideCalEntry *)entry;
- (void)tick:(double)tick;
- (void)updateCalibrationBins:(double)bins;
- (void)updateUserHeight:(int64_t)height;
@end

@implementation CMStrideCalibrator

- (void)checkForLocationStateTransition
{
  locationState = [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM locationState];
  if ([(CMStrideCalibrator *)self inOutdoorPedestrianSession]&& locationState <= 2)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v4 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      fCurrentSession = self->fCurrentSession;
      v10 = 134218242;
      v11 = fCurrentSession;
      v12 = 2080;
      v13 = [+[CMWorkout workoutName:](CMWorkout workoutName:{fCurrentSession), "UTF8String"}];
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "ForcingLocationDueToGizmoRequest,session,%ld,%s", &v10, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195B7E0(self);
    }

    [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:3];
  }

  else
  {
    sub_10001A3E8();
    if ((sub_10001CF3C() & 1) == 0 && [(CMStrideCalibrator *)self outOfSession]&& [(CMStrideCalibrationActivityBuffer *)self->fActivityBuffer isRunningStateInWindow])
    {
      if (locationState >= 2)
      {
        if (locationState > 2)
        {
          return;
        }
      }

      else if ([(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow]>= 0xB)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10195B06C();
        }

        v6 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          stepsInWindow = [(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow];
          v10 = 67109120;
          LODWORD(v11) = stepsInWindow;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "StepRunNotification,Pass,LeechingLocation,Steps,%d", &v10, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195B600(&self->fStepsBuffer);
        }

        [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:2];
      }

      if ([(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow]>= 0x65)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10195B16C();
        }

        v8 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          stepsInWindow2 = [(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow];
          v10 = 67109120;
          LODWORD(v11) = stepsInWindow2;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "StepRunNotification,Pass,AttemptingToForceLocation,Steps,%d", &v10, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195B6F0(&self->fStepsBuffer);
        }

        [(CMStrideCalibrator *)self attemptForcedLocation];
      }
    }
  }
}

- (void)checkTimeToSendNewCAGPSCalibration
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    lastGPSCalibrationUpdateTime = self->lastGPSCalibrationUpdateTime;
    v6 = 134218496;
    v7 = lastGPSCalibrationUpdateTime;
    v8 = 2048;
    v9 = Current;
    v10 = 2048;
    v11 = Current - lastGPSCalibrationUpdateTime;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Checking send time in checkTimeToSendNewCAGPSCalibration: LastTime: %0.3f, CurrentTime: %0.3f, Difference: %0.3f", &v6, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195B4D8(self, Current);
  }

  if (Current - self->lastGPSCalibrationUpdateTime >= 28800.0)
  {
    [(CMStrideCalibrator *)self sendGPSCoreAnalyticsAndUpdateTime];
  }
}

- (id)initInUniverse:(id)universe stepCountDb:(shared_ptr<CLStepCountRecorderDb>)db
{
  ptr = db.__ptr_;
  sub_10001A3E8();
  if (sub_10001CF04() & 1) != 0 || (sub_10001A3E8(), (sub_10001CF3C()))
  {
    v25.receiver = self;
    v25.super_class = CMStrideCalibrator;
    v7 = [(CMStrideCalibrator *)&v25 init];
    if (v7)
    {
      *(v7 + 11) = universe;
      v9 = *ptr;
      v8 = *(ptr + 1);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(v7 + 22);
      *(v7 + 21) = v9;
      *(v7 + 22) = v8;
      if (v10)
      {
        sub_100008080(v10);
      }

      *(v7 + 35) = 0;
      [+[CMPedometerTableRawSpeedToKValue sharedInstance](CMPedometerTableRawSpeedToKValue logBins];
      [+[CMPedometerTableStepCadenceToStrideLength sharedInstance](CMPedometerTableStepCadenceToStrideLength logBins];
      v11 = objc_alloc_init(CMStrideCalLocationFSM);
      *(v7 + 19) = v11;
      [(CMStrideCalLocationFSM *)v11 setDelegate:v7];
      *(v7 + 184) = xmmword_101CB1C08;
      *(v7 + 200) = unk_101CB1C18;
      *(v7 + 216) = xmmword_101CB1C28;
      *(v7 + 228) = *(&xmmword_101CB1C28 + 12);
      sub_10001A3E8();
      if ((sub_10001CF3C() & 1) != 0 || (sub_10001A3E8(), sub_10001CF04()))
      {
        v24 = 1;
        sub_10085F234();
      }

      v19 = *(v7 + 33);
      *(v7 + 32) = 0;
      *(v7 + 33) = 0;
      if (v19)
      {
        sub_100008080(v19);
      }

      *(v7 + 31) = CFAbsoluteTimeGetCurrent();
      *(v7 + 14) = objc_alloc_init(CMStrideCalibrationElevationBuffer);
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v12 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "AutomaticStrideCalibration,Pass,CreatingDaemonCacheForCalibrationBins", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195B194();
      }

      sub_10001A3E8();
      if (sub_10001CF3C())
      {
        *(v7 + 17) = objc_alloc_init(CMStrideCalibrationStats);
      }

      else
      {
        sub_10001A3E8();
        if ((sub_100023B30() & 0x4000000) != 0)
        {
          *(v7 + 13) = objc_alloc_init(CMStrideCalibrationActivityBuffer);
          v14 = [objc_msgSend(*(v7 + 11) "silo")];
          *(v7 + 12) = v14;
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10085CB88;
          v23[3] = &unk_102447418;
          v23[4] = v7;
          [v14 setHandler:v23];
        }
      }

      sub_10001A3E8();
      if ((sub_100023B30() & 0x4000000) != 0)
      {
        *(v7 + 20) = objc_alloc_init(NSMutableArray);
        *(v7 + 16) = objc_alloc_init(CMStrideCalibrationStepCountBuffer);
        v15 = -[CMStrideCalibrationDatabase initWithSilo:]([CMStrideCalibrationDatabase alloc], "initWithSilo:", [*(v7 + 11) silo]);
        *(v7 + 18) = v15;
        [(CMStrideCalibrationDatabase *)v15 setDelegate:v7];
        [*(v7 + 18) registerStrideCalDbForColdStorage:{objc_msgSend(objc_msgSend(*(v7 + 11), "vendor"), "proxyForService:", @"CMHealthColdStorageService"}];
      }

      if (+[CMStrideCalibrationRunningFormBuffer isAvailable])
      {
        *(v7 + 15) = objc_alloc_init(CMStrideCalibrationRunningFormBuffer);
      }

      [v7 setupCLNotifiers];
      v7[288] = 0;
      v16 = sub_100011660();
      sub_100185AC0(v16, &v21);
      sub_10001CB4C(v21, "MotionLoggerLogPedometer", v7 + 288);
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v17 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "AutomaticStrideCalibration,Success,AllChecksPassed", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195B280(buf);
        v20 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator initInUniverse:stepCountDb:]", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      if (v22)
      {
        sub_100008080(v22);
      }
    }
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v13 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Not companion or watch. Returning.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195B080();
    }

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  [(CMStrideCalibrator *)self teardownCLNotifiers];
  [(CLTimer *)self->fStopOpportunisticCalibrationTimer invalidate];

  self->fStopOpportunisticCalibrationTimer = 0;
  cntrl = self->fStepCountDb.__cntrl_;
  self->fStepCountDb.__ptr_ = 0;
  self->fStepCountDb.__cntrl_ = 0;
  if (cntrl)
  {
    sub_100008080(cntrl);
  }

  v4.receiver = self;
  v4.super_class = CMStrideCalibrator;
  [(CMStrideCalibrator *)&v4 dealloc];
}

- (void)setSession:(int64_t)session
{
  if (self->fCurrentSession != session)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v5 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      fCurrentSession = self->fCurrentSession;
      v7 = 134218240;
      v8 = fCurrentSession;
      v9 = 2048;
      sessionCopy = session;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "setSession,oldSession,%ld,newSession,%ld", &v7, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195B2C4(&self->fCurrentSession, session);
    }

    self->fCurrentSession = session;
    if (![(CMStrideCalibrator *)self inOutdoorPedestrianSession])
    {
      [(CMStrideCalibrator *)self quitForcedLocationState];
    }

    [(CMStrideCalibrator *)self checkForLocationStateTransition];
  }
}

- (void)addLatestCalData:(id)data
{
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = [objc_msgSend(data "description")];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "A new calData is added: %s", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195B3D4(data);
  }

  [(NSMutableArray *)self->fLatestCalDataArray addObject:data];
}

- (void)tick:(double)tick
{
  [(CMStrideCalibrator *)self updateCalibrationBins:tick];
  [(CMStrideCalibrator *)self checkForLocationStateTransition];

  [(CMStrideCalibrator *)self checkTimeToSendNewCAGPSCalibration];
}

- (void)attemptForcedLocation
{
  if (![(CMStrideCalibrator *)self outOfSession])
  {
    sub_10195B8FC();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = Current;
  v4 = sub_1000206B4();
  if (sub_1000B9370(v4, "StrideCalibrationLastCalibration", &v11) && Current - v11 < 2400.0)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v5 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v13 = Current - v11;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "AttemptForcedLocation,Fail,NotSufficientTimeSinceLastCalibrationSuccess,TimeSinceLastCalibrationSuccess,%0.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195BDA0();
    }
  }

  else
  {
    v6 = sub_1000206B4();
    if (sub_1000B9370(v6, "StrideCalibrationLastCalibrationAttempt", &v11) && Current - v11 < 1200.0)
    {
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v7 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v13 = Current - v11;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "AttemptForcedLocation,Fail,NotSufficientTimeSinceLastCalibrationAttempt,TimeSinceLastCalibrationAttempt,%0.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195BCA8();
      }
    }

    else
    {
      v8 = sub_1000206B4();
      if (sub_1000B9370(v8, "LastStrideCalibrationConverge", &v11) && Current - v11 < 2592000.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10195B16C();
        }

        v9 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v13 = Current - v11;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "AttemptForcedLocation,Fail,NotSufficientTimeSinceLastConverged,TimeSinceLastCalibrationAttempt,%0.3f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195BBB0();
        }
      }

      else
      {
        if (qword_1025D4270 != -1)
        {
          sub_10195B16C();
        }

        v10 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "AttemptForcedLocation,Success,AllChecksPassed", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195BACC();
        }

        [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:3];
      }
    }
  }
}

- (void)quitForcedLocationState
{
  if ([(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM locationState]== 3)
  {
    v3 = sub_1000206B4();
    Current = CFAbsoluteTimeGetCurrent();
    sub_100116D68(v3, "StrideCalibrationLastCalibrationAttempt", &Current);
    [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:2];
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v4 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Terminated forced calibration.", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195BE98();
    }
  }
}

- (shared_ptr<CMMobilityCal::GPSRawSpeedToKValueTable>)getSpdToKTable
{
  cntrl = self->fGPSCalibrationTable.__cntrl_;
  *v2 = self->fGPSCalibrationTable.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)strideCalibrationDatabase:(id)database didInsertEntry:(CLStrideCalEntry *)entry
{
  if ([database isCalibrationConvergedStdForBinWithSpeed:entry->speed])
  {
    v6 = sub_1000206B4();
    *&v11[0] = CFAbsoluteTimeGetCurrent();
    sub_100116D68(v6, "LastStrideCalibrationConverge", v11);
  }

  [(CMStrideCalibrationStats *)self->fStats activityLoggerLogStrideCalEntry:entry];
  if ([(CMStrideCalibrator *)self calibrationTrackCallback])
  {
    calibrationTrackCallback = [(CMStrideCalibrator *)self calibrationTrackCallback];
    v8 = *&entry->percentGrade;
    v11[4] = *&entry->steps;
    v11[5] = v8;
    v11[6] = *&entry->timestamp;
    v12 = *&entry->runningFormStrideLengthMetrics;
    v9 = *&entry->endTime;
    v11[2] = *&entry->kvalueTrack;
    v11[3] = v9;
    v10 = *&entry->pacebin;
    v11[0] = *&entry->recordId;
    v11[1] = v10;
    calibrationTrackCallback[2](calibrationTrackCallback, v11);
  }
}

- (void)fsm:(id)fsm didTransitionFromState:(int)state toState:(int)toState
{
  v5 = *&toState;
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v8 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109376;
    v9[1] = state;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "LocationStateOld,%d,LocationStateNew,%d", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195BF7C(state, v5);
  }

  if (v5 <= 1)
  {
    [(CMStrideCalibrator *)self stopLeechingLocation];
    [(CMStrideCalibrator *)self stopGpsOdometerSpectatorUpdates];
    [(CMStrideCalibrator *)self stopElevationSpectatorUpdates];
    goto LABEL_12;
  }

  self->fLastGoodLocFix = CFAbsoluteTimeGetCurrent();
  [(CMStrideCalibrator *)self startLeechingLocation];
  [(CMStrideCalibrator *)self startGpsOdometerSpectatorUpdates];
  [(CMStrideCalibrator *)self startElevationSpectatorUpdates];
  if (v5 == 2)
  {
LABEL_12:
    [(CMStrideCalibrator *)self stopLocationUpdates];
    [(CMStrideCalibrator *)self stopGpsOdometerUpdates];
    [(CMStrideCalibrator *)self stopElevationUpdates];
    return;
  }

  [(CMStrideCalibrator *)self startLocationUpdates];
  [(CMStrideCalibrator *)self startGpsOdometerUpdates];
  [(CMStrideCalibrator *)self startElevationUpdates];
  if ([(CMStrideCalibrator *)self outOfSession])
  {
    [(CLTimer *)self->fStopOpportunisticCalibrationTimer setNextFireDelay:360.0];
  }
}

- (void)fsm:(id)fsm didYieldTrack:(id)track
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = sub_1000206B4();
  sub_100116D68(v6, "StrideCalibrationLastCalibration", &Current);
  v7 = [[CMStrideCalDataContainer alloc] initWithTrack:track session:[(CMStrideCalibrator *)self currentSession]];
  [(CMStrideCalibrator *)self addLatestCalData:v7];
}

- (void)fsm:(id)fsm didUpdateLocationAtTime:(double)time
{
  [(CMStrideCalibrator *)self tickleArrow:fsm];
  if ([(CMStrideCalibrator *)self outOfSession])
  {
    locationState = [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM locationState];
    Current = CFAbsoluteTimeGetCurrent();
    v17 = Current;
    v7 = Current - self->fLastGoodLocFix > 30.0 && locationState == 3;
    v8 = v7;
    if (v7)
    {
      [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:2];
      if (qword_1025D4270 != -1)
      {
        sub_10195B06C();
      }

      v9 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        v10 = Current - self->fLastGoodLocFix;
        *buf = 134217984;
        v19 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "TrackClose,Pass,LocationTimeout,TimeSinceLastPosition,%0.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195C088();
      }

LABEL_17:
      p_fStepsBuffer = &self->fStepsBuffer;
      if ([(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow]<= 0x63)
      {
        [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:2];
        if (qword_1025D4270 != -1)
        {
          sub_10195B16C();
        }

        v12 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          stepsInWindow = [(CMStrideCalibrationStepCountBuffer *)*p_fStepsBuffer stepsInWindow];
          *buf = 67109120;
          LODWORD(v19) = stepsInWindow;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TrackClose,Pass,ForcedNotSufficientSteps,Steps,%d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195C180(&self->fStepsBuffer);
        }

        v8 = 1;
      }

      if ([(CMStrideCalibrationStepCountBuffer *)*p_fStepsBuffer stepsInWindow]>= 0xA)
      {
        if (!v8)
        {
          return;
        }

        goto LABEL_33;
      }

LABEL_26:
      [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:1];
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        stepsInWindow2 = [(CMStrideCalibrationStepCountBuffer *)*p_fStepsBuffer stepsInWindow];
        *buf = 67109120;
        LODWORD(v19) = stepsInWindow2;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "TrackClose,Pass,EnabledNotSufficientSteps,Steps,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195C270(p_fStepsBuffer);
      }

LABEL_33:
      v16 = sub_1000206B4();
      sub_100116D68(v16, "StrideCalibrationLastCalibrationAttempt", &v17);
      return;
    }

    if (locationState >= 3)
    {
      goto LABEL_17;
    }

    if (locationState == 2)
    {
      p_fStepsBuffer = &self->fStepsBuffer;
      if ([(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow]<= 9)
      {
        goto LABEL_26;
      }
    }
  }
}

- (BOOL)checkValidTrack:(id)track associatedEntry:(const CLStepDistance *)entry
{
  [objc_msgSend(track "start")];
  v8 = v7;
  [objc_msgSend(track "stop")];
  v10 = v9;
  [track distanceRawPed];
  if (v11 <= 0.0)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v19 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v40 = v8;
      v41 = 2048;
      v42 = v10;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "TrackCalibration,Fail,Pedometer distance is zero,startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195C360(v8, v10);
    }

    fStats = self->fStats;
    var1 = entry->var1;
    v22 = @"ZeroDistance";
    v23 = 7;
    goto LABEL_23;
  }

  [track distanceRawPed];
  v13 = v12 / (v10 - v8);
  if (![+[CMPedometerTableRawSpeedToKValue isRawSpeedValid:"isRawSpeedValid:"]
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v24 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v40 = v13;
      v41 = 2048;
      v42 = v8;
      v43 = 2048;
      v44 = v10;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "TrackCalibration,Fail,rawSpeed %f out of bounds,startTime,%f,endTime,%f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator checkValidTrack:associatedEntry:]", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    fStats = self->fStats;
    var1 = entry->var1;
    v22 = @"SpeedOutOfBounds";
    v23 = 6;
LABEL_23:
    [(CMStrideCalibrationStats *)fStats awdLogDistance:v23 status:v22 description:var1];
LABEL_24:
    LOBYTE(v25) = 0;
    return v25;
  }

  [track distanceGps];
  v15 = v14;
  [track distanceRawPed];
  v17 = v15 / v16;
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    if (v17 <= 1.4 && v17 >= 0.5)
    {
      goto LABEL_28;
    }
  }

  else if (v17 <= 2.0 && v17 >= 0.666666667)
  {
LABEL_28:
    LOBYTE(v25) = 1;
    return v25;
  }

  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v26 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v40 = COERCE_DOUBLE([objc_msgSend(track "description")]);
    v41 = 2048;
    v42 = v17;
    v43 = 2048;
    v44 = v13;
    v45 = 2048;
    v46 = v8;
    v47 = 2048;
    v48 = v10;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "TrackCalibration,Fail,KFactorOutOfBounds,%s,KFactor,%0.4f,RawSpeed,%f,startTime,%f,endTime,%f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    [objc_msgSend(track "description")];
    v37 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator checkValidTrack:associatedEntry:]", "%s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  [(CMStrideCalibrationStats *)self->fStats awdLogDistance:5 status:@"GainOutOfBounds" description:entry->var1];
  [track distanceGps];
  v28 = v27;
  v29 = self->fStats;
  v30 = entry->var1;
  if (v28 >= 70.0)
  {
    [(CMStrideCalibrationStats *)v29 awdLogDistance:3 status:@"GainOutOfBounds" description:v30];
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v33 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      v34 = entry->var1;
      *buf = 134218496;
      v40 = v34;
      v41 = 2048;
      v42 = v8;
      v43 = 2048;
      v44 = v10;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "SessionMetrics,Fail,Pedometer,GainOutOfBounds,DistanceFusion,%0.6f,startTime,%f,endTime,%f", buf, 0x20u);
    }

    v25 = sub_10000A100(121, 2);
    if (v25)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 == -1)
      {
        goto LABEL_48;
      }

      goto LABEL_58;
    }
  }

  else
  {
    [(CMStrideCalibrationStats *)v29 awdLogDistance:2 status:@"GainOutOfBounds" description:v30];
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v31 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      v32 = entry->var1;
      *buf = 134218496;
      v40 = v32;
      v41 = 2048;
      v42 = v8;
      v43 = 2048;
      v44 = v10;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "SessionMetrics,Fail,GPS,GainOutOfBounds,DistanceFusion,%0.6f,startTime,%f,endTime,%f", buf, 0x20u);
    }

    v25 = sub_10000A100(121, 2);
    if (v25)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 == -1)
      {
LABEL_48:
        v35 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator checkValidTrack:associatedEntry:]", "%s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }

        goto LABEL_24;
      }

LABEL_58:
      sub_10195B16C();
      goto LABEL_48;
    }
  }

  return v25;
}

- (void)sendGPSCoreAnalyticsAndUpdateTime
{
  self->lastGPSCalibrationUpdateTime = CFAbsoluteTimeGetCurrent();
  if (self->fGPSCalibrationTable.__ptr_)
  {
    if (objc_opt_class() && [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")])
    {
      if (qword_1025D4270 != -1)
      {
        sub_10195B06C();
      }

      v3 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Correctly sending core analytics and updating latest time in gps calibration", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195C478();
      }

      sub_1003E9734(self->fGPSCalibrationTable.__ptr_, &self->fCLBodyMetrics.gender);
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_10195B06C();
      }

      v4 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Not sending gps core analytics, no IHA permission", v5, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195C55C();
      }
    }
  }
}

- (void)updateCalibrationBins:(double)bins
{
  v44 = +[NSMutableArray array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  fLatestCalDataArray = self->fLatestCalDataArray;
  v6 = [(NSMutableArray *)fLatestCalDataArray countByEnumeratingWithState:&v48 objects:v66 count:16];
  if (v6)
  {
    v7 = *v49;
    do
    {
      v8 = 0;
      do
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(fLatestCalDataArray);
        }

        v9 = *(*(&v48 + 1) + 8 * v8);
        [objc_msgSend(objc_msgSend(v9 "track")];
        v11 = v10;
        [objc_msgSend(objc_msgSend(v9 "track")];
        v13 = v12;
        v14 = bins - v12;
        if (bins - v12 >= 60.0)
        {
          [(CMStrideCalibrationElevationBuffer *)self->fElevationBuffer updateGradient:v9];
          [v44 addObject:v9];
          if (v14 < 1800.0)
          {
            if (qword_1025D4270 != -1)
            {
              sub_10195B16C();
            }

            v15 = qword_1025D4278;
            if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
            {
              v16 = [objc_msgSend(v9 "description")];
              *buf = 136315394;
              *&buf[4] = v16;
              *&buf[12] = 2048;
              *&buf[14] = bins;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CalData, %s, stepEntryEpochTime, %f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4270 != -1)
              {
                sub_10195B16C();
              }

              v40 = [objc_msgSend(v9 "description")];
              *v52 = 136315394;
              *&v52[4] = v40;
              *&v52[12] = 2048;
              *&v52[14] = bins;
              v41 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator updateCalibrationBins:]", "%s\n", v41);
              if (v41 != buf)
              {
                free(v41);
              }
            }

            v47 = 0;
            v46 = 0u;
            memset(v45, 0, sizeof(v45));
            sub_101369004(self->fStepCountDb.__ptr_, 1, v45, v11, v13);
            if ([v9 gradientValidity])
            {
              if (!-[CMStrideCalibrator checkValidTrack:associatedEntry:](self, "checkValidTrack:associatedEntry:", [v9 track], v45))
              {
                goto LABEL_49;
              }

              if (qword_1025D4270 != -1)
              {
                sub_10195B16C();
              }

              v17 = qword_1025D4278;
              if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109376;
                *&buf[4] = v46;
                *&buf[8] = 1024;
                *&buf[10] = DWORD1(v46);
                _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "FloorsAscended,%d,FloorsDescended,%d", buf, 0xEu);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4270 != -1)
                {
                  sub_10195B16C();
                }

                *v52 = 67109376;
                *&v52[4] = v46;
                *&v52[8] = 1024;
                *&v52[10] = DWORD1(v46);
                v42 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator updateCalibrationBins:]", "%s\n", v42);
                if (v42 != buf)
                {
                  free(v42);
                }
              }

              [objc_msgSend(v9 "track")];
              v19 = v18;
              sub_10001A3E8();
              if (sub_10001CF3C())
              {
                inOutdoorPedestrianSession = [(CMStrideCalibrator *)self inOutdoorPedestrianSession];
              }

              else
              {
                inOutdoorPedestrianSession = 0;
              }

              v23 = sub_10001A3E8();
              v24 = v19 / (v13 - v11);
              if (((**v23)(v23) & 1) == 0)
              {
                sub_10001A3E8();
                outOfSession = sub_10001CF04();
                if (!outOfSession)
                {
                  goto LABEL_37;
                }
              }

              if (![(CMStrideCalibrator *)self inOutdoorPedestrianSession])
              {
                outOfSession = [(CMStrideCalibrator *)self outOfSession];
                if (outOfSession)
                {
                  outOfSession = [+[CMPedometerTableRawSpeedToKValue sharedInstance](CMPedometerTableRawSpeedToKValue isRawSpeedRun:"isRawSpeedRun:", v24];
                }

LABEL_37:
                if (((inOutdoorPedestrianSession | outOfSession) & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              v26 = COERCE_DOUBLE(-[CMStrideCalibrationRunningFormBuffer strideLengthFromStartDate:endDate:](self->fFormBuffer, "strideLengthFromStartDate:endDate:", [objc_msgSend(v9 "track")], objc_msgSend(objc_msgSend(v9, "track"), "stop")));
              v28 = v27;
              -[CMPedometerTableRawSpeedToKValue updateBinsWithTrack:](+[CMPedometerTableRawSpeedToKValue sharedInstance](CMPedometerTableRawSpeedToKValue, "sharedInstance"), "updateBinsWithTrack:", [v9 track]);
              -[CMPedometerTableStepCadenceToStrideLength updateBinsWithTrack:](+[CMPedometerTableStepCadenceToStrideLength sharedInstance](CMPedometerTableStepCadenceToStrideLength, "sharedInstance"), "updateBinsWithTrack:", [v9 track]);
              ptr = self->fGPSCalibrationTable.__ptr_;
              if (ptr)
              {
                sub_1003E8F88(ptr, [v9 track]);
              }

              [(CMStrideCalibrator *)self sendGPSCoreAnalyticsAndUpdateTime];
              v65 = 0;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              *&buf[16] = 0u;
              v60 = 0u;
              *buf = 0;
              *&buf[8] = v11;
              [+[CMPedometerTableRawSpeedToKValue sharedInstance](CMPedometerTableRawSpeedToKValue kValueForRawSpeed:"kValueForRawSpeed:", v24];
              *&buf[24] = v30;
              [objc_msgSend(v9 "track")];
              v32 = v31;
              [objc_msgSend(v9 "track")];
              *&v60 = v32 / v33;
              *(&v60 + 1) = 0;
              *&v61 = v13;
              [objc_msgSend(v9 "track")];
              *(&v61 + 1) = v34;
              [objc_msgSend(v9 "track")];
              LODWORD(v62) = v35;
              DWORD1(v62) = [v9 session];
              *(&v62 + 1) = v24;
              [v9 gradient];
              *&v63 = v36;
              v37 = [objc_msgSend(v9 "track")];
              v38 = v26;
              DWORD2(v63) = v37;
              *&v64 = 0;
              if ((v28 & dword_100000000) == 0)
              {
                v38 = 0.0;
              }

              *(&v64 + 1) = v38;
              LODWORD(v65) = v28;
              if (self->fLogPedometer)
              {
                sub_10159953C(buf, v52);
                if (qword_102637F48 != -1)
                {
                  sub_10195C640();
                }

                if (qword_102637F50)
                {
                  operator new();
                }

                PB::Base::~Base(v52);
              }

              fDatabase = self->fDatabase;
              v55 = v62;
              v56 = v63;
              v57 = v64;
              v58 = v65;
              *v52 = *buf;
              *&v52[16] = *&buf[16];
              v53 = v60;
              v54 = v61;
              [(CMStrideCalibrationDatabase *)fDatabase addEntry:v52];
              [(CMStrideCalibrationStats *)self->fStats awdMotionFitnessStrideCalibration:buf];
              [(CMStrideCalibrationStats *)self->fStats awdLogDistance:0 status:@"Yay!" description:*(v45 + 1)];
              goto LABEL_49;
            }

            [(CMStrideCalibrationStats *)self->fStats awdLogDistance:4 status:@"GradientOutOfBounds" description:*(v45 + 1)];
            if (qword_1025D4270 != -1)
            {
              sub_10195B16C();
            }

            v21 = qword_1025D4278;
            if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              *&buf[4] = v11;
              *&buf[12] = 2048;
              *&buf[14] = v13;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "SessionMetrics,Fail,Gradient,DistanceFusion,startTime,%f,endTime,%f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4270 != -1)
              {
                sub_10195B16C();
              }

              *v52 = 134218240;
              *&v52[4] = v11;
              *&v52[12] = 2048;
              *&v52[14] = v13;
              v22 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator updateCalibrationBins:]", "%s\n", v22);
              if (v22 != buf)
              {
                free(v22);
              }
            }
          }
        }

LABEL_49:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v43 = [(NSMutableArray *)fLatestCalDataArray countByEnumeratingWithState:&v48 objects:v66 count:16];
      v6 = v43;
    }

    while (v43);
  }

  [(NSMutableArray *)self->fLatestCalDataArray removeObjectsInArray:v44];
}

- (void)updateUserHeight:(int64_t)height
{
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Correctly calling update user height in stride calibrator.", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195C668();
  }

  [(CMStrideCalibrationStats *)self->fStats updateUserHeight:height];
}

- (void)feedBodyMetrics:(CLBodyMetrics *)metrics
{
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Correctly feeding body metrics in stride calibrator.", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195C74C();
  }

  v6 = *&metrics->gender;
  v7 = *&metrics->vo2max;
  v8 = *&metrics->hronset;
  *&self->fCLBodyMetrics.runVo2max = *&metrics->runVo2max;
  *&self->fCLBodyMetrics.hronset = v8;
  *&self->fCLBodyMetrics.vo2max = v7;
  *&self->fCLBodyMetrics.gender = v6;
  [(CMStrideCalibrator *)self updateUserHeight:llroundf(metrics->heightM * 100.0)];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 32) = 0;
  *(self + 33) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  return self;
}

@end