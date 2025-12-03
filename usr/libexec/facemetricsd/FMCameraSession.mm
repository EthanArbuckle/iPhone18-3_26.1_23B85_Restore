@interface FMCameraSession
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_cmTimeForMetrics:(SEL)metrics;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_retrieveCmTimeForAbsoluteTimestamp:(SEL)timestamp;
- (AVCaptureDevice)device;
- (BOOL)_isPacketWithinRangeForTimestamp:(id *)timestamp withSessionStartTime:(id *)time andSessionStopTime:(id *)stopTime;
- (FMCameraSession)initWithQueue:(id)queue;
- (FMCameraSessionDelegate)delegate;
- (id)_packetFromMetrics:(id)metrics;
- (unint64_t)_machContinuousTimeForMetrics:(id)metrics;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)generateMessageSessionIdWithSessionStartTimestamp:(double)timestamp;
- (void)generateUnlockSessionIdWithSessionStartTimestamp:(id *)timestamp;
- (void)reportCameraSessionLatency;
- (void)resetMessageSessionId;
- (void)resetUnlockSessionId;
- (void)startCameraSession;
- (void)stop;
- (void)updateMessageSessionWithSessionStopTimestamp:(double)timestamp;
- (void)updateUnlockSessionWithSessionStopTimestamp:(id *)timestamp;
@end

@implementation FMCameraSession

- (FMCameraSession)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = FMCameraSession;
  v5 = [(FMCameraSession *)&v8 init];
  queue = v5->_queue;
  v5->_queue = queueCopy;

  return v5;
}

- (void)startCameraSession
{
  dispatch_assert_queue_V2(self->_queue);
  self->_cameraSessionRequestTimestampNanoSeconds = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  mach_timebase_info(&self->_timeReference.machTimebase);
  self->_timeReference.continuousTime = mach_continuous_time();
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&__buf, HostTimeClock);
  self->_timeReference.mediaTime = __buf;
  __buf.value = 0;
  arc4random_buf(&__buf, 8uLL);
  self->_cameraSessionId = __buf.value;
  v6 = objc_alloc_init(AVCaptureSession);
  session = self->_session;
  self->_session = v6;

  session = [(FMCameraSession *)self session];
  [session beginConfiguration];

  device = [(FMCameraSession *)self device];
  if (device)
  {
    session7 = [[AVCaptureDeviceInput alloc] initWithDevice:device error:0];
    if (session7)
    {
      session2 = [(FMCameraSession *)self session];
      [session2 addInput:session7];

      deviceType = [device deviceType];
      v13 = [deviceType isEqualToString:AVCaptureDeviceTypeBuiltInTrueDepthCamera];

      if (v13)
      {
        v14 = sub_100004784();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__buf.value) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "device type is true depth: configuring depth format and frame rate", &__buf, 2u);
        }

        [device lockForConfiguration:0];
        activeFormat = [device activeFormat];
        supportedDepthDataFormats = [activeFormat supportedDepthDataFormats];
        lastObject = [supportedDepthDataFormats lastObject];
        [device setActiveDepthDataFormat:lastObject];

        CMTimeMake(&v26, 1, 15);
        __buf = v26;
        [device setActiveDepthDataMinFrameDuration:&__buf];
        [device unlockForConfiguration];
      }

      session6 = objc_opt_new();
      [session6 setMetadataObjectsDelegate:self queue:self->_queue];
      session3 = [(FMCameraSession *)self session];
      [session3 addOutput:session6];

      if ([session6 isFaceTrackingSupported])
      {
        [session6 setFaceTrackingMetadataObjectTypesAvailable:1];
        v28 = AVMetadataObjectTypeTrackedFaces;
        v20 = [NSArray arrayWithObjects:&v28 count:1];
        [session6 setMetadataObjectTypes:v20];

        [session6 setFaceTrackingMaxFaces:1];
        [session6 setFaceTrackingPlusEnabled:1];
        session4 = [(FMCameraSession *)self session];
        [session4 commitConfiguration];

        session5 = [(FMCameraSession *)self session];
        [session5 startRunning];
      }

      else
      {
        v25 = sub_100004784();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          sub_1000058B4();
        }

        session5 = [(FMCameraSession *)self session];
        [session5 commitConfiguration];
      }
    }

    else
    {
      v24 = sub_100004784();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_1000058E8();
      }

      session6 = [(FMCameraSession *)self session];
      [session6 commitConfiguration];
    }
  }

  else
  {
    v23 = sub_100004784();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_10000591C();
    }

    session7 = [(FMCameraSession *)self session];
    [session7 commitConfiguration];
  }
}

- (void)generateUnlockSessionIdWithSessionStartTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v6 = *timestamp;
  v7 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  [(FMCameraSession *)self setUnlockSessionStats:&__buf];
}

- (void)updateUnlockSessionWithSessionStopTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = *&timestamp->var0;
  self->_unlockSessionStats.unlockSessionStopTime.epoch = timestamp->var3;
  *&self->_unlockSessionStats.unlockSessionStopTime.value = v5;
}

- (void)resetUnlockSessionId
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  v6 = v4;
  v7 = epoch;
  v3 = 0;
  [(FMCameraSession *)self setUnlockSessionStats:&v3];
}

- (void)generateMessageSessionIdWithSessionStartTimestamp:(double)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  memset(&v7[8], 0, 48);
  *v7 = HAFacialMetricsGenerateHashForTimestamp();
  [(FMCameraSession *)self _retrieveCmTimeForAbsoluteTimestamp:timestamp];
  *&v7[48] = kCMTimeInvalid.epoch;
  *&v7[32] = *&kCMTimeInvalid.value;
  v5[0] = *v7;
  v5[1] = *&v7[16];
  v5[2] = *&v7[32];
  v6 = *&v7[48];
  [(FMCameraSession *)self setMessageAppSessionStats:v5];
}

- (void)updateMessageSessionWithSessionStopTimestamp:(double)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  [(FMCameraSession *)self _retrieveCmTimeForAbsoluteTimestamp:timestamp];
  self->_messageAppSessionStats.messageSessionStopTime = v5;
}

- (void)resetMessageSessionId
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  v6 = v4;
  v7 = epoch;
  v3 = 0;
  [(FMCameraSession *)self setMessageAppSessionStats:&v3];
}

- (AVCaptureDevice)device
{
  v2 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInTrueDepthCamera mediaType:AVMediaTypeVideo position:2];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100004784();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v5 = "using true depth camera";
      v6 = &v8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v3 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:2];
    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = sub_100004784();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "true depth not available: using wide angle camera";
      v6 = buf;
      goto LABEL_7;
    }
  }

LABEL_9:

  return v3;
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  objectsCopy = objects;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_firstPacketReceived)
  {
    self->_cameraSessionFirstPacketTimestampNanoSeconds = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    self->_firstPacketReceived = 1;
    [(FMCameraSession *)self reportCameraSessionLatency];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = objectsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = AVMetadataObjectTypeTrackedFaces;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      type = [v13 type];
      v15 = [type isEqualToString:v11];

      if (v15)
      {
        break;
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    payload = [v13 payload];

    if (!payload)
    {
      goto LABEL_16;
    }

    v17 = [(FMCameraSession *)self _packetFromMetrics:payload];
    if (v17)
    {
      delegate = [(FMCameraSession *)self delegate];
      [delegate handleFacialMetricsPacket:v17 withTimestamp:{-[FMCameraSession _machContinuousTimeForMetrics:](self, "_machContinuousTimeForMetrics:", payload)}];
    }
  }

  else
  {
LABEL_11:

LABEL_16:
    payload = sub_100004784();
    if (os_log_type_enabled(payload, OS_LOG_TYPE_ERROR))
    {
      sub_100005950();
    }
  }
}

- (id)_packetFromMetrics:(id)metrics
{
  metricsCopy = metrics;
  dispatch_assert_queue_V2(self->_queue);
  memset(&v36, 0, sizeof(v36));
  [(FMCameraSession *)self _cmTimeForMetrics:metricsCopy];
  v5 = sub_100004784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100005990();
  }

  [(FMCameraSession *)self unlockSessionStats];
  if (v35 && ([(FMCameraSession *)self unlockSessionStats], time = v33, [(FMCameraSession *)self unlockSessionStats], rhs = v31, lhs = v36, [(FMCameraSession *)self _isPacketWithinRangeForTimestamp:&lhs withSessionStartTime:&time andSessionStopTime:&rhs]))
  {
    [(FMCameraSession *)self unlockSessionStats];
    rhs = v29;
    lhs = v36;
    CMTimeSubtract(&time, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    [(FMCameraSession *)self unlockSessionStats];
    v7 = v28;
  }

  else
  {
    [(FMCameraSession *)self unlockSessionStats];
    Seconds = -1.0;
    if (v27)
    {
      [(FMCameraSession *)self unlockSessionStats];
      time = v26;
      rhs = v36;
      if (CMTimeCompare(&time, &rhs) < 0)
      {
        v8 = sub_100004784();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_1000059C4();
        }

        [(FMCameraSession *)self resetUnlockSessionId];
      }
    }

    v7 = 0;
  }

  v9 = sub_100004784();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000059F8();
  }

  [(FMCameraSession *)self messageAppSessionStats];
  if (v25 && ([(FMCameraSession *)self messageAppSessionStats], time = v24, [(FMCameraSession *)self messageAppSessionStats], rhs = v23, lhs = v36, [(FMCameraSession *)self _isPacketWithinRangeForTimestamp:&lhs withSessionStartTime:&time andSessionStopTime:&rhs]))
  {
    [(FMCameraSession *)self messageAppSessionStats];
    rhs = v22;
    lhs = v36;
    CMTimeSubtract(&time, &lhs, &rhs);
    v10 = CMTimeGetSeconds(&time);
    [(FMCameraSession *)self messageAppSessionStats];
    v11 = v21;
  }

  else
  {
    [(FMCameraSession *)self messageAppSessionStats];
    v10 = -1.0;
    if (v20)
    {
      [(FMCameraSession *)self messageAppSessionStats];
      time = v19;
      rhs = v36;
      if (CMTimeCompare(&time, &rhs) < 0)
      {
        v12 = sub_100004784();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_100005A2C();
        }

        [(FMCameraSession *)self resetMessageSessionId];
      }
    }

    v11 = 0;
  }

  if (v11 | v7)
  {
    v13 = [FMMetricsDistiller packetFromMetrics:metricsCopy withSessionId:self->_cameraSessionId andUnlockSessionId:v7 withSecondsFromStart:Seconds andMessageSessionId:v10 withSecondsFromStart:?];
    if (v13)
    {
      if (!self->_metricsArePublishable)
      {
        self->_metricsArePublishable = 1;
        v14 = sub_100004784();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(time.value) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "metrics are now publishable", &time, 2u);
        }
      }

      v13 = v13;
      v15 = v13;
    }

    else
    {
      v16 = sub_100004784();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100005AA0();
      }

      if (self->_metricsArePublishable)
      {
        self->_metricsArePublishable = 0;
        v17 = sub_100004784();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(time.value) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "metrics are no longer publishable", &time, 2u);
        }
      }

      v15 = 0;
    }
  }

  else
  {
    v13 = sub_100004784();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100005A60();
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)_isPacketWithinRangeForTimestamp:(id *)timestamp withSessionStartTime:(id *)time andSessionStopTime:(id *)stopTime
{
  if ((time->var2 & 1) == 0 || (timestamp->var2 & 1) == 0)
  {
    v6 = sub_100004784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100005AD4();
    }

    goto LABEL_5;
  }

  time1 = *time;
  v10 = *timestamp;
  if (CMTimeCompare(&time1, &v10) >= 1)
  {
    v6 = sub_100004784();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return 0;
    }

    LOWORD(time1.value) = 0;
    v9 = "packet timestamp is before sessionStartTime";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, &time1, 2u);
    goto LABEL_5;
  }

  if (stopTime->var2)
  {
    time1 = *timestamp;
    v10 = *stopTime;
    if (CMTimeCompare(&time1, &v10) >= 1)
    {
      v6 = sub_100004784();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      LOWORD(time1.value) = 0;
      v9 = "packet timestamp is after sessionStopTime";
      goto LABEL_9;
    }
  }

  return 1;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_cmTimeForMetrics:(SEL)metrics
{
  v5 = a4;
  memset(&v10, 0, sizeof(v10));
  v6 = [v5 objectForKeyedSubscript:@"timestamp"];
  CMTimeMakeFromDictionary(&v10, v6);

  if (v10.flags)
  {
    *retstr = v10;
  }

  else
  {
    v7 = sub_100004784();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005B08(v5);
    }

    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(retstr, HostTimeClock);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_retrieveCmTimeForAbsoluteTimestamp:(SEL)timestamp
{
  memset(&v16, 0, sizeof(v16));
  do
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    value = time.value;
    timescale = time.timescale;
    v17 = *&time.flags;
    epoch_high = HIDWORD(time.epoch);
    v9 = CMClockGetHostTimeClock();
    CMClockGetTime(&v16, v9);
    Current = CFAbsoluteTimeGetCurrent();
    lhs = v16;
    v13.value = value;
    v13.timescale = timescale;
    *&v13.flags = v17;
    HIDWORD(v13.epoch) = epoch_high;
    CMTimeSubtract(&time, &lhs, &v13);
  }

  while (CMTimeGetSeconds(&time) > 0.125);
  lhs = v16;
  v13.value = value;
  v13.timescale = timescale;
  *&v13.flags = v17;
  HIDWORD(v13.epoch) = epoch_high;
  CMTimeSubtract(&time, &lhs, &v13);
  Seconds = CMTimeGetSeconds(&time);
  memset(&time, 0, sizeof(time));
  CMTimeMakeWithSeconds(&lhs, Seconds * 0.5, timescale);
  v13.value = value;
  v13.timescale = timescale;
  *&v13.flags = v17;
  HIDWORD(v13.epoch) = epoch_high;
  CMTimeAdd(&time, &v13, &lhs);
  CMTimeMakeWithSeconds(&lhs, Current - a4, timescale);
  v13 = time;
  return CMTimeSubtract(retstr, &v13, &lhs);
}

- (unint64_t)_machContinuousTimeForMetrics:(id)metrics
{
  metricsCopy = metrics;
  memset(&v16, 0, sizeof(v16));
  v5 = [metricsCopy objectForKeyedSubscript:@"timestamp"];
  CMTimeMakeFromDictionary(&v16, v5);

  if ((v16.flags & 1) == 0)
  {
    v6 = sub_100004784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005B08(metricsCopy);
    }

LABEL_11:

    v11 = mach_continuous_time();
    goto LABEL_12;
  }

  start = self->_timeReference.mediaTime;
  v13 = v16;
  CMTimeRangeFromTimeToTime(&v14, &start, &v13);
  start = v14.duration;
  Seconds = CMTimeGetSeconds(&start);
  v8 = sub_100004784();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100005B98(v8, Seconds);
  }

  if (Seconds < 0.0 || Seconds > 35.0)
  {
    v6 = sub_100004784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005C14(v6, Seconds);
    }

    goto LABEL_11;
  }

  LODWORD(v9) = self->_timeReference.machTimebase.numer;
  LODWORD(v10) = self->_timeReference.machTimebase.denom;
  v11 = self->_timeReference.continuousTime + (Seconds * 1000000000.0 / v9 * v10);
LABEL_12:

  return v11;
}

- (void)stop
{
  session = [(FMCameraSession *)self session];
  [session stopRunning];
}

- (void)reportCameraSessionLatency
{
  v4 = @"timeToFirstPacketLatency";
  v2 = [NSNumber numberWithDouble:(self->_cameraSessionFirstPacketTimestampNanoSeconds - self->_cameraSessionRequestTimestampNanoSeconds) / 1000000.0];
  v5 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  AnalyticsSendEvent();
}

- (FMCameraSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end