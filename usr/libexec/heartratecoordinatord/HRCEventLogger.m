@interface HRCEventLogger
- (HRCEventLogger)initWithRootDirectory:(id)a3 ioHelper:(id)a4 isInternalVariant:(BOOL)a5 queue:(id)a6;
- (void)_addClient;
- (void)_flush;
- (void)_flushAndClose;
- (void)_handleAnalyticsReport:(unsigned __int8)a3 data:(id)a4;
- (void)_handleBluetoothDiscoveryEnabledUpdate:(BOOL)a3 withTimestamp:(unint64_t)a4;
- (void)_handleFlushNotification;
- (void)_handleHeartRate:(id)a3 withTimestamp:(unint64_t)a4;
- (void)_handleOpportunisticModeUpdate:(BOOL)a3 withTimestamp:(unint64_t)a4;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)a3 withTimestamp:(unint64_t)a4;
- (void)_handleStreamingModeUpdate:(unint64_t)a3 withTimestamp:(unint64_t)a4;
- (void)_handleWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4 withTimestamp:(unint64_t)a5;
- (void)_recomputeLoggingStatus;
- (void)_removeClient;
- (void)addClient;
- (void)dealloc;
- (void)flush;
- (void)handleAnalyticsReport:(unsigned __int8)a3 data:(id)a4;
- (void)handleBluetoothDiscoveryEnabledUpdate:(BOOL)a3 withTimestamp:(unint64_t)a4;
- (void)handleHeartRate:(id)a3 withTimestamp:(unint64_t)a4;
- (void)handleOpportunisticModeUpdate:(BOOL)a3 withTimestamp:(unint64_t)a4;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)a3 withTimestamp:(unint64_t)a4;
- (void)handleStreamingModeUpdate:(unint64_t)a3 withTimestamp:(unint64_t)a4;
- (void)handleWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4 withTimestamp:(unint64_t)a5;
- (void)removeClient;
@end

@implementation HRCEventLogger

- (void)addClient
{
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000013F4;
  block[3] = &unk_1000406C0;
  block[4] = self;
  dispatch_async(loggingQueue, block);
}

- (void)_addClient
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  ++self->_clientCount;
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A8A4(&self->_clientCount, v3);
  }

  [(HRCEventLogger *)self _recomputeLoggingStatus];
}

- (void)_recomputeLoggingStatus
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clientCount = self->_clientCount;
    v8[0] = 67240192;
    v8[1] = clientCount;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCEventLogger client count : %{public}d", v8, 8u);
  }

  v5 = self->_clientCount == 0;
  v6 = [(HRCEventLogger *)self ioHelper];
  v7 = v6;
  if (v5)
  {
    [v6 stopLogging];
  }

  else
  {
    [v6 startLogging];
  }
}

- (HRCEventLogger)initWithRootDirectory:(id)a3 ioHelper:(id)a4 isInternalVariant:(BOOL)a5 queue:(id)a6
{
  v9 = a4;
  v10 = a6;
  v18.receiver = self;
  v18.super_class = HRCEventLogger;
  v11 = [(HRCEventLogger *)&v18 init];
  v11->_clientCount = 0;
  objc_storeStrong(&v11->_loggingQueue, a6);
  objc_storeStrong(&v11->_ioHelper, a4);
  objc_initWeak(&location, v11);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000194B4;
  handler[3] = &unk_100040C58;
  objc_copyWeak(&v16, &location);
  notify_register_dispatch("com.apple.HeartRateCoordinator.logFlush", &v11->_flushToken, v10, handler);
  v12 = sub_10000132C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "HRCEventLogger init", v14, 2u);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

- (void)dealloc
{
  notify_cancel(self->_flushToken);
  v3.receiver = self;
  v3.super_class = HRCEventLogger;
  [(HRCEventLogger *)&v3 dealloc];
}

- (void)removeClient
{
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019600;
  block[3] = &unk_1000406C0;
  block[4] = self;
  dispatch_async(loggingQueue, block);
}

- (void)flush
{
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001967C;
  block[3] = &unk_1000406C0;
  block[4] = self;
  dispatch_async(loggingQueue, block);
}

- (void)handleOpportunisticModeUpdate:(BOOL)a3 withTimestamp:(unint64_t)a4
{
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000196FC;
  block[3] = &unk_100040E78;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(loggingQueue, block);
}

- (void)handleStreamingModeUpdate:(unint64_t)a3 withTimestamp:(unint64_t)a4
{
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019784;
  block[3] = &unk_100040BF0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(loggingQueue, block);
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)a3 withTimestamp:(unint64_t)a4
{
  v7 = a3->var0;
  var1 = a3->var1;
  v9 = a3->var2;
  v10 = a3->var3;
  v11 = *&a3->var4;
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10001989C;
  block[3] = &unk_100040EA0;
  block[4] = self;
  v17 = v7;
  v18 = var1;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = a4;
  v13 = v10;
  v14 = v9;
  v15 = v7;
  dispatch_async(loggingQueue, block);
}

- (void)handleWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4 withTimestamp:(unint64_t)a5
{
  loggingQueue = self->_loggingQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019928;
  v6[3] = &unk_100040ED8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(loggingQueue, v6);
}

- (void)handleBluetoothDiscoveryEnabledUpdate:(BOOL)a3 withTimestamp:(unint64_t)a4
{
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000199B0;
  block[3] = &unk_100040E78;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(loggingQueue, block);
}

- (void)handleHeartRate:(id)a3 withTimestamp:(unint64_t)a4
{
  v6 = a3;
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019A68;
  block[3] = &unk_100040F00;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(loggingQueue, block);
}

- (void)handleAnalyticsReport:(unsigned __int8)a3 data:(id)a4
{
  v6 = a4;
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019B20;
  block[3] = &unk_100040F28;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(loggingQueue, block);
}

- (void)_removeClient
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  if (self->_clientCount)
  {
    --self->_clientCount;
    v3 = sub_10000132C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001A920(&self->_clientCount, v3);
    }

    [(HRCEventLogger *)self _recomputeLoggingStatus];
  }

  else
  {
    v4 = sub_10000132C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10001A99C(v4);
    }
  }
}

- (void)_flush
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  v4 = [(HRCEventLogger *)self ioHelper];
  v3 = [v4 started];

  if (v3)
  {
    v5 = [(HRCEventLogger *)self ioHelper];
    [v5 flush];
  }
}

- (void)_flushAndClose
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  v3 = [(HRCEventLogger *)self ioHelper];
  [v3 flushAndClose];
}

- (void)_handleFlushNotification
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCEventLogger flush received", buf, 2u);
  }

  v4 = [(HRCEventLogger *)self ioHelper];
  v5 = [v4 started];

  if (v5)
  {
    [(HRCEventLogger *)self _flushAndClose];
    v6 = "com.apple.HeartRateCoordinator.logFlushFinshed";
  }

  else
  {
    v6 = "com.apple.HeartRateCoordinator.logFlushNotNeeded";
  }

  notify_post(v6);
  v7 = sub_10000132C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HRCEventLogger flush complete", v8, 2u);
  }
}

- (void)_handleOpportunisticModeUpdate:(BOOL)a3 withTimestamp:(unint64_t)a4
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  v7 = [(HRCEventLogger *)self ioHelper];
  v8 = [v7 started];

  if (v8)
  {
    v9 = [(HRCEventLogger *)self ioHelper];
    v12 = a4;
    v13 = a3;
    v10 = [NSData dataWithBytes:&v12 length:9];
    v11 = sub_100001844(396, 9, v10);

    [v9 handleEncodedData:v11];
  }
}

- (void)_handleStreamingModeUpdate:(unint64_t)a3 withTimestamp:(unint64_t)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_loggingQueue);
  v7 = [(HRCEventLogger *)self ioHelper];
  v8 = [v7 started];

  if (v8)
  {
    v9 = [(HRCEventLogger *)self ioHelper];
    v12 = a4;
    v13 = v5;
    v10 = [NSData dataWithBytes:&v12 length:9];
    v11 = sub_100001844(397, 9, v10);

    [v9 handleEncodedData:v11];
  }
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)a3 withTimestamp:(unint64_t)a4
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  v7 = [(HRCEventLogger *)self ioHelper];
  v8 = [v7 started];

  if (v8)
  {
    v9 = [(HRCEventLogger *)self ioHelper];
    v13 = a3->var0;
    var1 = a3->var1;
    v15 = a3->var2;
    v16 = a3->var3;
    v17 = *&a3->var4;
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    v18[0] = a4;
    [v13 timeIntervalSinceReferenceDate];
    v18[1] = v10;
    [v16 getUUIDBytes:v19];
    v20 = v17;
    v11 = [NSData dataWithBytes:v18 length:34];
    v12 = sub_100001844(398, 34, v11);

    [v9 handleEncodedData:v12];
  }
}

- (void)_handleWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4 withTimestamp:(unint64_t)a5
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  v9 = [(HRCEventLogger *)self ioHelper];
  v10 = [v9 started];

  if (v10)
  {
    v11 = [(HRCEventLogger *)self ioHelper];
    v14[0] = a5;
    v14[1] = a3;
    v14[2] = a4;
    v12 = [NSData dataWithBytes:v14 length:24];
    v13 = sub_100001844(399, 24, v12);

    [v11 handleEncodedData:v13];
  }
}

- (void)_handleBluetoothDiscoveryEnabledUpdate:(BOOL)a3 withTimestamp:(unint64_t)a4
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  v7 = [(HRCEventLogger *)self ioHelper];
  v8 = [v7 started];

  if (v8)
  {
    v9 = [(HRCEventLogger *)self ioHelper];
    v12 = a4;
    v13 = a3;
    v10 = [NSData dataWithBytes:&v12 length:9];
    v11 = sub_100001844(400, 9, v10);

    [v9 handleEncodedData:v11];
  }
}

- (void)_handleHeartRate:(id)a3 withTimestamp:(unint64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_loggingQueue);
  v7 = [(HRCEventLogger *)self ioHelper];
  v8 = [v7 started];

  if (v8)
  {
    v9 = [(HRCEventLogger *)self ioHelper];
    v10 = v6;
    memset(&v21[3], 0, 50);
    v21[0] = a4;
    v11 = [v10 timestamp];
    [v11 timeIntervalSinceReferenceDate];
    v21[1] = v12;

    [v10 heartRate];
    v21[2] = v13;
    v14 = [v10 confidence];
    if (v14)
    {
      v15 = [v10 confidence];
      [v15 doubleValue];
      v21[3] = v16;
    }

    else
    {
      v21[3] = 0xBFF0000000000000;
    }

    LOBYTE(v21[4]) = [v10 hrContext];
    v17 = [v10 uuid];
    [v17 getUUIDBytes:&v21[4] + 1];

    BYTE1(v21[6]) = [v10 confidenceLevel];
    BYTE2(v21[6]) = [v10 arbitrationStatus];
    BYTE3(v21[6]) = [v10 sourceType];
    v18 = [v10 deviceUuid];
    [v18 getUUIDBytes:&v21[6] + 4];

    BYTE4(v21[8]) = [v10 streamingThrottleStatus];
    BYTE5(v21[8]) = [v10 sensorLocation];
    *(&v21[8] + 6) = [v10 flags];
    v19 = [NSData dataWithBytes:v21 length:74];
    v20 = sub_100001844(401, 74, v19);

    [v9 handleEncodedData:v20];
  }
}

- (void)_handleAnalyticsReport:(unsigned __int8)a3 data:(id)a4
{
  v4 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_loggingQueue);
  v7 = [(HRCEventLogger *)self ioHelper];
  v8 = [v7 started];

  v9 = sub_10000132C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 67109120;
    v18[1] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Writing analytics to log, logging started: %{BOOL}u", v18, 8u);
  }

  if ((v8 & 1) == 0)
  {
    v10 = [(HRCEventLogger *)self ioHelper];
    [v10 startLogging];
  }

  v11 = [(HRCEventLogger *)self ioHelper];
  v12 = v6;
  v13 = v12;
  if (v4 == 2)
  {
    v14 = [v12 length];
    v15 = 403;
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v14 = [v12 length];
    v15 = 402;
LABEL_9:
    v16 = sub_100001844(v15, v14, v13);
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:

  [v11 handleEncodedData:v16];
  if ((v8 & 1) == 0)
  {
    v17 = [(HRCEventLogger *)self ioHelper];
    [v17 stopLogging];
  }
}

@end