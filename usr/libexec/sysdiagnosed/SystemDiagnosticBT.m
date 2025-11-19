@interface SystemDiagnosticBT
+ (id)sharedInstance;
- (BOOL)isLimitedLoggingEnabled;
- (SystemDiagnosticBT)init;
- (id)waitForAirPodLogsIfAvailable;
- (id)waitForExposureNotificationLogsIfAvailable:(int64_t)a3;
- (unint64_t)getAirpodsTimeout;
- (void)attachToBTSession;
- (void)deregisterBTSession;
- (void)deregisterBTSessionIfDone;
- (void)forceDeregisterBTSession;
- (void)logCompletionHandler:(char *)a3 size:(unint64_t)a4;
- (void)markAirpodLogsDone:(BOOL)a3;
- (void)markExposureNotificationLogsDone:(BOOL)a3;
- (void)retryAttachToBTSession;
- (void)sessionEvent:(BTSessionImpl *)a3 event:(int)a4 result:(int)a5;
- (void)startBTSession:(id)a3;
- (void)startBTSessionAndTriggerAirPodLogs:(id)a3;
- (void)startBTSessionAndTriggerExposureNotificationLogs:(id)a3;
- (void)triggerAirPodLogsIfConnected;
- (void)triggerExposureNotificationLogs;
@end

@implementation SystemDiagnosticBT

+ (id)sharedInstance
{
  if (qword_1000C1000 != -1)
  {
    sub_100061778();
  }

  v3 = qword_1000C0FF8;

  return v3;
}

- (SystemDiagnosticBT)init
{
  v12.receiver = self;
  v12.super_class = SystemDiagnosticBT;
  v2 = [(SystemDiagnosticBT *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldGatherBTLogs = 1;
    v4 = os_log_create("com.apple.sysdiagnose", "bluetooth");
    accessoryLogSubsystem = v3->_accessoryLogSubsystem;
    v3->_accessoryLogSubsystem = v4;

    airpodsGroup = v3->_airpodsGroup;
    v3->_airpodsGroup = 0;

    v3->_defaultAirpodTimeout = 0;
    v7 = dispatch_queue_create("com.apple.sysdiagnose.bluetooth", 0);
    bluetoothQueue = v3->_bluetoothQueue;
    v3->_bluetoothQueue = v7;

    v3->_numAttachTries = 0;
    exposureNotificationGroup = v3->_exposureNotificationGroup;
    v3->_exposureNotificationGroup = 0;

    exposureNotificationDBURL = v3->_exposureNotificationDBURL;
    v3->_exposureNotificationDBURL = 0;
  }

  return v3;
}

- (void)attachToBTSession
{
  block[5] = sub_100009B78;
  v3 = [(SystemDiagnosticBT *)self diagnosticID];
  [v3 UTF8String];
  bluetoothQueue = self->_bluetoothQueue;
  v5 = BTSessionAttachWithQueue();

  [(SystemDiagnosticBT *)self setNumAttachTries:[(SystemDiagnosticBT *)self numAttachTries]+ 1];
  v6 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10006178C();
    }

    v8 = [(SystemDiagnosticBT *)self bluetoothQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007278;
    block[3] = &unk_1000A0FE8;
    block[4] = self;
    dispatch_sync(v8, block);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully attached to bluetoothd, waiting for session callback.", v9, 2u);
    }

    [(SystemDiagnosticBT *)self setAttachedToBTSession:1];
  }
}

- (void)startBTSession:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(SystemDiagnosticBT *)self bluetoothQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007394;
  v6[3] = &unk_1000A1010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  if ((v8[3] & 1) == 0 && ![(SystemDiagnosticBT *)self attachedToBTSession])
  {
    [(SystemDiagnosticBT *)self setNumAttachTries:0];
    [(SystemDiagnosticBT *)self setDiagnosticID:v4];
    [(SystemDiagnosticBT *)self attachToBTSession];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)startBTSessionAndTriggerExposureNotificationLogs:(id)a3
{
  v4 = a3;
  if (qword_1000C1010 != -1)
  {
    sub_1000617FC();
  }

  if (byte_1000C1008)
  {
    if ([(SystemDiagnosticBT *)self shouldGatherBTLogs])
    {
      v5 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Querying bluetooth if ExposureNotification is supported, and collect db if so.", buf, 2u);
      }

      v6 = +[SDResourceManager sharedResourceManager];
      [v6 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:{@"Querying bluetooth if ExposureNotification is supported, and collect db if so."}];

      [(SystemDiagnosticBT *)self setExposureNotificationDBURL:0];
      v7 = dispatch_group_create();
      [(SystemDiagnosticBT *)self setExposureNotificationGroup:v7];

      v8 = [(SystemDiagnosticBT *)self exposureNotificationGroup];

      if (v8)
      {
        v9 = [(SystemDiagnosticBT *)self exposureNotificationGroup];
        dispatch_group_enter(v9);
      }

      *buf = 0;
      v15 = buf;
      v16 = 0x2020000000;
      v17 = 0;
      v10 = [(SystemDiagnosticBT *)self bluetoothQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000768C;
      v13[3] = &unk_1000A1010;
      v13[4] = self;
      v13[5] = buf;
      dispatch_sync(v10, v13);

      if (v15[24] == 1)
      {
        [(SystemDiagnosticBT *)self startBTSession:v4];
      }

      _Block_object_dispose(buf, 8);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not triggering exposure notification logs, as self.shouldGatherBTLogs is set to NO", buf, 2u);
    }
  }

  else
  {
    v11 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not triggering exposure notifications since bluetooth is missing", buf, 2u);
    }

    v12 = +[SDResourceManager sharedResourceManager];
    [v12 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"Not triggering exposure notifications since bluetooth is missing"];
  }
}

- (id)waitForExposureNotificationLogsIfAvailable:(int64_t)a3
{
  if (qword_1000C1010 != -1)
  {
    sub_1000617FC();
  }

  if (byte_1000C1008 != 1)
  {
    goto LABEL_12;
  }

  if (![(SystemDiagnosticBT *)self shouldGatherBTLogs])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not waiting for exposure notification logs, as self.shouldGatherBTLogs is set to NO", buf, 2u);
    }

LABEL_12:
    v7 = 0;
    goto LABEL_25;
  }

  v5 = [(SystemDiagnosticBT *)self exposureNotificationDBURL];

  if (!v5)
  {
    v12 = [(SystemDiagnosticBT *)self exposureNotificationGroup];

    v13 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ExposureNotification db still collecting; waiting for it to become available.", buf, 2u);
      }

      v15 = [(SystemDiagnosticBT *)self exposureNotificationGroup];
      v16 = dispatch_time(0, a3);
      v17 = dispatch_group_wait(v15, v16);

      if (!v17)
      {
        v22 = [(SystemDiagnosticBT *)self exposureNotificationDBURL];
        v7 = [v22 copy];

        v23 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received ExposureNotification db after wait.", buf, 2u);
        }

        v9 = +[SDResourceManager sharedResourceManager];
        v10 = v9;
        v11 = @"Received ExposureNotification db after wait.";
        goto LABEL_9;
      }

      v18 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100061810();
      }

      v19 = +[SDResourceManager sharedResourceManager];
      [v19 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"Timed out waiting for ExposureNotification db collection."];

      v20 = [(SystemDiagnosticBT *)self bluetoothQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007AC4;
      block[3] = &unk_1000A0FE8;
      block[4] = self;
      dispatch_sync(v20, block);
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No ExposureNotification db available to collect.", buf, 2u);
      }

      v20 = +[SDResourceManager sharedResourceManager];
      [v20 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"No ExposureNotification db available to collect."];
    }

    v7 = 0;
    goto LABEL_24;
  }

  v6 = [(SystemDiagnosticBT *)self exposureNotificationDBURL];
  v7 = [v6 copy];

  v8 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found collected ExposureNotification db.", buf, 2u);
  }

  v9 = +[SDResourceManager sharedResourceManager];
  v10 = v9;
  v11 = @"Found collected ExposureNotification db.";
LABEL_9:
  [v9 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:v11];

LABEL_24:
  [(SystemDiagnosticBT *)self setExposureNotificationDBURL:0];
LABEL_25:

  return v7;
}

- (void)markExposureNotificationLogsDone:(BOOL)a3
{
  v5 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v5);

  [(SystemDiagnosticBT *)self setWaitingToCaptureExposureNotificationLogs:0];
  v6 = [(SystemDiagnosticBT *)self exposureNotificationGroup];

  if (v6)
  {
    if (!a3)
    {
      v7 = [(SystemDiagnosticBT *)self exposureNotificationGroup];
      dispatch_group_leave(v7);
    }

    [(SystemDiagnosticBT *)self setExposureNotificationGroup:0];
  }

  [(SystemDiagnosticBT *)self deregisterBTSessionIfDone];
}

- (void)triggerExposureNotificationLogs
{
  v3 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v3);

  [(SystemDiagnosticBT *)self btSession];
  if (BTLocalDeviceGetDefault())
  {
    v4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10006184C();
    }
  }

  else
  {
    v5 = BTLocalDeviceDumpExposureNotificationDatabase();
    if (v5)
    {
      v6 = v5;
      v4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Could not dump ExposureNotification db from bluetoothd with error %d", buf, 8u);
      }
    }

    else
    {
      v4 = [NSString stringWithUTF8String:v10];
      v7 = [NSURL fileURLWithPath:v4 isDirectory:1];
      [(SystemDiagnosticBT *)self setExposureNotificationDBURL:v7];
    }
  }

  [(SystemDiagnosticBT *)self markExposureNotificationLogsDone:0];
}

- (void)startBTSessionAndTriggerAirPodLogs:(id)a3
{
  v4 = a3;
  if (qword_1000C1010 != -1)
  {
    sub_1000617FC();
  }

  if (byte_1000C1008)
  {
    if ([(SystemDiagnosticBT *)self shouldGatherBTLogs])
    {
      v5 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Querying bluetooth if Airpods are connected, and collect AirPod logs if so.", buf, 2u);
      }

      v6 = +[SDResourceManager sharedResourceManager];
      [v6 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:{@"Querying bluetooth if Airpods are connected, and collect AirPod logs if so."}];

      [(SystemDiagnosticBT *)self setAccessoryLogs:0];
      v7 = dispatch_group_create();
      [(SystemDiagnosticBT *)self setAirpodsGroup:v7];

      v8 = [(SystemDiagnosticBT *)self airpodsGroup];

      if (v8)
      {
        v9 = [(SystemDiagnosticBT *)self airpodsGroup];
        dispatch_group_enter(v9);
      }

      *buf = 0;
      v15 = buf;
      v16 = 0x2020000000;
      v17 = 0;
      v10 = [(SystemDiagnosticBT *)self bluetoothQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100007FAC;
      v13[3] = &unk_1000A1010;
      v13[4] = self;
      v13[5] = buf;
      dispatch_sync(v10, v13);

      if (v15[24] == 1)
      {
        [(SystemDiagnosticBT *)self startBTSession:v4];
      }

      _Block_object_dispose(buf, 8);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not triggering AirPod logs, as self.shouldGatherBTLogs is set to NO", buf, 2u);
    }
  }

  else
  {
    v11 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not triggering airpod logs since bluetooth is missing", buf, 2u);
    }

    v12 = +[SDResourceManager sharedResourceManager];
    [v12 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"Not triggering airpod logs since bluetooth is missing"];
  }
}

- (BOOL)isLimitedLoggingEnabled
{
  if (objc_opt_class())
  {
    *v21 = 0;
    v22 = v21;
    v23 = 0x2020000000;
    v24 = 0;
    v3 = dispatch_semaphore_create(0);
    v4 = dispatch_time(0, 1000000000);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008308;
    block[3] = &unk_1000A1060;
    block[4] = self;
    v20 = v21;
    v6 = v3;
    v19 = v6;
    dispatch_async(v5, block);

    if (dispatch_semaphore_wait(v6, v4))
    {
      v7 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for limited logging check. Assuming limited logging disabled", buf, 2u);
      }

      v8 = +[SDResourceManager sharedResourceManager];
      [v8 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

      v9 = +[SDResourceManager sharedResourceManager];
      [v9 stdoutWrite:@"Timed out waiting for limited logging check. Assuming limited logging disabled"];

      v10 = +[SDResourceManager sharedResourceManager];
      [v10 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"Timed out waiting for limited logging check. Assuming limited logging disabled"];

      v11 = 0;
    }

    else
    {
      v11 = v22[24];
    }

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v12 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CBUserController not found. Assuming limited logging disabled", v21, 2u);
    }

    v13 = +[SDResourceManager sharedResourceManager];
    [v13 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

    v14 = +[SDResourceManager sharedResourceManager];
    [v14 stdoutWrite:@"CBUserController not found. Assuming limited logging disabled"];

    v15 = +[SDResourceManager sharedResourceManager];
    [v15 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"CBUserController not found. Assuming limited logging disabled"];

    v11 = 0;
  }

  return v11 & 1;
}

- (unint64_t)getAirpodsTimeout
{
  if ([(SystemDiagnosticBT *)self defaultAirpodTimeout])
  {
    v3 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = [(SystemDiagnosticBT *)self defaultAirpodTimeout];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found testing airpod timeouts override. Using timeout: %llu", buf, 0xCu);
    }

    v4 = +[SDResourceManager sharedResourceManager];
    [v4 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

    v5 = +[SDResourceManager sharedResourceManager];
    [v5 stdoutWrite:{@"Found testing airpod timeouts override. Using timeout: %llu", -[SystemDiagnosticBT defaultAirpodTimeout](self, "defaultAirpodTimeout")}];

    v6 = +[SDResourceManager sharedResourceManager];
    [v6 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:{@"Found testing airpod timeouts override. Using timeout: %llu", -[SystemDiagnosticBT defaultAirpodTimeout](self, "defaultAirpodTimeout")}];

    return [(SystemDiagnosticBT *)self defaultAirpodTimeout];
  }

  else
  {
    *buf = 0;
    if (sub_1000480D8(@"airpods-timeout", @"com.apple.sysdiagnose", @"mobile", buf))
    {
      v7 = 1000000000 * *buf;
      v8 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found manual airpods timeout override. Using timeout: %llu", buf, 0xCu);
      }

      v9 = +[SDResourceManager sharedResourceManager];
      [v9 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

      v10 = +[SDResourceManager sharedResourceManager];
      v11 = @"Found manual airpods timeout override. Using timeout: %llu";
      [v10 stdoutWrite:{@"Found manual airpods timeout override. Using timeout: %llu", v7}];
    }

    else if ([(SystemDiagnosticBT *)self isLimitedLoggingEnabled])
    {
      v7 = 300000000000;
      v12 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 300000000000;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Limited logging is enabled. Using airpods timeout: %llu", buf, 0xCu);
      }

      v13 = +[SDResourceManager sharedResourceManager];
      [v13 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

      v10 = +[SDResourceManager sharedResourceManager];
      v11 = @"Limited logging is enabled. Using airpods timeout: %llu";
      [v10 stdoutWrite:{@"Limited logging is enabled. Using airpods timeout: %llu", 300000000000}];
    }

    else if (sub_100047DB4() && (buf[0] = 0, sub_100047F80(@"prioritizeAirPods", @"com.apple.sysdiagnose", buf)) && (buf[0] & 1) != 0)
    {
      v7 = 300000000000;
      v14 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 300000000000;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found prioritizeAirpodsWait timeout. Using timeout: %llu", buf, 0xCu);
      }

      v15 = +[SDResourceManager sharedResourceManager];
      [v15 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

      v10 = +[SDResourceManager sharedResourceManager];
      v11 = @"Found prioritizeAirpodsWait timeout. Using timeout: %llu";
      [v10 stdoutWrite:{@"Found prioritizeAirpodsWait timeout. Using timeout: %llu", 300000000000}];
    }

    else
    {
      v7 = 30000000000;
      v16 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 30000000000;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No preferences found. Using default airpods timeout value of: %llu", buf, 0xCu);
      }

      v17 = +[SDResourceManager sharedResourceManager];
      [v17 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

      v10 = +[SDResourceManager sharedResourceManager];
      v11 = @"No preferences found. Using default airpods timeout value of: %llu";
      [v10 stdoutWrite:{@"No preferences found. Using default airpods timeout value of: %llu", 30000000000}];
    }

    v18 = +[SDResourceManager sharedResourceManager];
    [v18 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:{v11, v7}];
  }

  return v7;
}

- (id)waitForAirPodLogsIfAvailable
{
  if (qword_1000C1010 != -1)
  {
    sub_1000617FC();
  }

  if (byte_1000C1008 != 1)
  {
    goto LABEL_12;
  }

  if (![(SystemDiagnosticBT *)self shouldGatherBTLogs])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not waiting for AirPod logs, as self.shouldGatherBTLogs is set to NO", buf, 2u);
    }

LABEL_12:
    v5 = 0;
    goto LABEL_25;
  }

  v3 = [(SystemDiagnosticBT *)self accessoryLogs];

  if (!v3)
  {
    v10 = [(SystemDiagnosticBT *)self airpodsGroup];

    v11 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AirPod logs still collecting; waiting for them to become available.", buf, 2u);
      }

      v13 = [(SystemDiagnosticBT *)self getAirpodsTimeout];
      v14 = [(SystemDiagnosticBT *)self airpodsGroup];
      v15 = dispatch_time(0, v13);
      v16 = dispatch_group_wait(v14, v15);

      if (!v16)
      {
        v21 = [(SystemDiagnosticBT *)self accessoryLogs];
        v5 = [v21 copy];

        v22 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received AirPod logs after wait.", buf, 2u);
        }

        v7 = +[SDResourceManager sharedResourceManager];
        v8 = v7;
        v9 = @"Received AirPod logs after wait.";
        goto LABEL_9;
      }

      v17 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000618BC();
      }

      v18 = +[SDResourceManager sharedResourceManager];
      [v18 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"Timed out waiting for AirPod logs collection."];

      v19 = [(SystemDiagnosticBT *)self bluetoothQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100008F04;
      block[3] = &unk_1000A0FE8;
      block[4] = self;
      dispatch_async(v19, block);
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No AirPod logs available to collect.", buf, 2u);
      }

      v19 = +[SDResourceManager sharedResourceManager];
      [v19 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"No AirPod logs available to collect."];
    }

    v5 = 0;
    goto LABEL_24;
  }

  v4 = [(SystemDiagnosticBT *)self accessoryLogs];
  v5 = [v4 copy];

  v6 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found collected AirPod logs.", buf, 2u);
  }

  v7 = +[SDResourceManager sharedResourceManager];
  v8 = v7;
  v9 = @"Found collected AirPod logs.";
LABEL_9:
  [v7 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:v9];

LABEL_24:
  [(SystemDiagnosticBT *)self setAccessoryLogs:0];
LABEL_25:

  return v5;
}

- (void)deregisterBTSession
{
  v3 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v3);

  if ([(SystemDiagnosticBT *)self accessoryManager])
  {
    v4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unregistering AirPod logs dump with BTAccessoryManager.", v6, 2u);
    }

    [(SystemDiagnosticBT *)self accessoryManager];
    BTAccessoryManagerDeregisterCustomMessageClient();
    [(SystemDiagnosticBT *)self setAccessoryManager:0];
  }

  if ([(SystemDiagnosticBT *)self btSession])
  {
    v5 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Detaching from bluetoothd.", v6, 2u);
    }

    *v6 = [(SystemDiagnosticBT *)self btSession];
    BTSessionDetachWithQueue();
    [(SystemDiagnosticBT *)self setBtSession:0];
  }

  [(SystemDiagnosticBT *)self setAttachedToBTSession:0];
}

- (void)deregisterBTSessionIfDone
{
  v3 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v3);

  if (![(SystemDiagnosticBT *)self waitingToCaptureAirPodLogs]&& ![(SystemDiagnosticBT *)self waitingToCaptureExposureNotificationLogs])
  {

    [(SystemDiagnosticBT *)self deregisterBTSession];
  }
}

- (void)forceDeregisterBTSession
{
  v3 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v3);

  [(SystemDiagnosticBT *)self markAirpodLogsDone:0];
  [(SystemDiagnosticBT *)self markExposureNotificationLogsDone:0];

  [(SystemDiagnosticBT *)self deregisterBTSession];
}

- (void)retryAttachToBTSession
{
  v3 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SystemDiagnosticBT *)self numAttachTries];
  v5 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  v6 = v5;
  if (v4 > 2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000618F8(self, v6);
    }

    [(SystemDiagnosticBT *)self forceDeregisterBTSession];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v9 = [(SystemDiagnosticBT *)self numAttachTries];
      v10 = 1024;
      v11 = 3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempt (%d/%d) to attach to BTSession failed. Trying again...", buf, 0xEu);
    }

    [(SystemDiagnosticBT *)self deregisterBTSession];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009294;
    block[3] = &unk_1000A0FE8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)markAirpodLogsDone:(BOOL)a3
{
  v5 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v5);

  [(SystemDiagnosticBT *)self setWaitingToCaptureAirPodLogs:0];
  v6 = [(SystemDiagnosticBT *)self airpodsGroup];

  if (v6)
  {
    if (!a3)
    {
      v7 = [(SystemDiagnosticBT *)self airpodsGroup];
      dispatch_group_leave(v7);
    }

    [(SystemDiagnosticBT *)self setAirpodsGroup:0];
  }

  [(SystemDiagnosticBT *)self deregisterBTSessionIfDone];
}

- (void)triggerAirPodLogsIfConnected
{
  v3 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to trigger AirPod logs dump.", buf, 2u);
  }

  *buf = 0;
  [(SystemDiagnosticBT *)self btSession];
  if (BTAccessoryManagerGetDefault())
  {
    v5 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100061990();
    }

    goto LABEL_27;
  }

  [(SystemDiagnosticBT *)self setAccessoryManager:*buf];
  v10 = sub_100009C4C;
  [(SystemDiagnosticBT *)self accessoryManager];
  v6 = BTAccessoryManagerRegisterCustomMessageClient();
  v7 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  v8 = v7;
  if (v6 > 9)
  {
    switch(v6)
    {
      case 10:
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100061A78();
        }

        goto LABEL_26;
      case 312:
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100061A3C();
        }

        goto LABEL_26;
      case 11:
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100061AB4();
        }

LABEL_26:

LABEL_27:
        [(SystemDiagnosticBT *)self markAirpodLogsDone:0];
        return;
    }

LABEL_24:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100061AF0();
    }

    goto LABEL_26;
  }

  if (v6)
  {
    if (v6 == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100061A00();
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully registered AirPod logs dump with BTAccessoryManager, waiting for accessory logs callback.", v9, 2u);
  }
}

- (void)sessionEvent:(BTSessionImpl *)a3 event:(int)a4 result:(int)a5
{
  v9 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v9);

  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        v10 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          sub_100061B60();
        }

        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v12 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100061BA0();
    }

    [(SystemDiagnosticBT *)self forceDeregisterBTSession];
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v10 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received BT_SESSION_DETACHED event in BTSession event callback. Ignoring.", v14, 2u);
        }

LABEL_12:

        return;
      }

LABEL_10:
      v10 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_100061C4C();
      }

      goto LABEL_12;
    }

    if (a5)
    {
      v11 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100061BDC();
      }

      [(SystemDiagnosticBT *)self retryAttachToBTSession];
    }

    else
    {
      [(SystemDiagnosticBT *)self setBtSession:a3];
      v13 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received BT_SESSION_ATTACHED (BT_SUCCESS) event in BTSession event callback. Capturing available data.", buf, 2u);
      }

      if ([(SystemDiagnosticBT *)self waitingToCaptureAirPodLogs])
      {
        [(SystemDiagnosticBT *)self triggerAirPodLogsIfConnected];
      }

      if ([(SystemDiagnosticBT *)self waitingToCaptureExposureNotificationLogs])
      {
        [(SystemDiagnosticBT *)self triggerExposureNotificationLogs];
      }
    }
  }
}

- (void)logCompletionHandler:(char *)a3 size:(unint64_t)a4
{
  v7 = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AirPod logs callback received.", &v19, 2u);
  }

  v9 = [(SystemDiagnosticBT *)self accessoryLogs];

  if (v9)
  {
    v10 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100061CC0();
    }
  }

  else
  {
    v10 = objc_opt_new();
    if (a4 >= 1)
    {
      v11 = &a3[a4];
      while (1)
      {
        v12 = [NSString stringWithUTF8String:a3];
        v13 = v12;
        if (!v12 || ![v12 length])
        {
          break;
        }

        [v10 addObject:v13];
        a3 += strlen(a3) + 1;

        if (a3 >= v11)
        {
          goto LABEL_15;
        }
      }

      v14 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100061CFC();
      }
    }

LABEL_15:
    v15 = [(SystemDiagnosticBT *)self airpodsGroup];

    v16 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AirPod logs dumped, file(s) received in callback: %@", &v19, 0xCu);
      }

      v18 = [v10 copy];
      [(SystemDiagnosticBT *)self setAccessoryLogs:v18];

      [(SystemDiagnosticBT *)self markAirpodLogsDone:0];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100061D38();
      }
    }
  }
}

@end