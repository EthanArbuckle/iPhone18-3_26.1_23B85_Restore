@interface SystemDiagnosticBT
+ (id)sharedInstance;
- (BOOL)isLimitedLoggingEnabled;
- (SystemDiagnosticBT)init;
- (id)waitForAirPodLogsIfAvailable;
- (id)waitForExposureNotificationLogsIfAvailable:(int64_t)available;
- (unint64_t)getAirpodsTimeout;
- (void)attachToBTSession;
- (void)deregisterBTSession;
- (void)deregisterBTSessionIfDone;
- (void)forceDeregisterBTSession;
- (void)logCompletionHandler:(char *)handler size:(unint64_t)size;
- (void)markAirpodLogsDone:(BOOL)done;
- (void)markExposureNotificationLogsDone:(BOOL)done;
- (void)retryAttachToBTSession;
- (void)sessionEvent:(BTSessionImpl *)event event:(int)a4 result:(int)result;
- (void)startBTSession:(id)session;
- (void)startBTSessionAndTriggerAirPodLogs:(id)logs;
- (void)startBTSessionAndTriggerExposureNotificationLogs:(id)logs;
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
  diagnosticID = [(SystemDiagnosticBT *)self diagnosticID];
  [diagnosticID UTF8String];
  bluetoothQueue = self->_bluetoothQueue;
  v5 = BTSessionAttachWithQueue();

  [(SystemDiagnosticBT *)self setNumAttachTries:[(SystemDiagnosticBT *)self numAttachTries]+ 1];
  accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  v7 = accessoryLogSubsystem;
  if (v5)
  {
    if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_ERROR))
    {
      sub_10006178C();
    }

    bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007278;
    block[3] = &unk_1000A0FE8;
    block[4] = self;
    dispatch_sync(bluetoothQueue, block);
  }

  else
  {
    if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully attached to bluetoothd, waiting for session callback.", v9, 2u);
    }

    [(SystemDiagnosticBT *)self setAttachedToBTSession:1];
  }
}

- (void)startBTSession:(id)session
{
  sessionCopy = session;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007394;
  v6[3] = &unk_1000A1010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(bluetoothQueue, v6);

  if ((v8[3] & 1) == 0 && ![(SystemDiagnosticBT *)self attachedToBTSession])
  {
    [(SystemDiagnosticBT *)self setNumAttachTries:0];
    [(SystemDiagnosticBT *)self setDiagnosticID:sessionCopy];
    [(SystemDiagnosticBT *)self attachToBTSession];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)startBTSessionAndTriggerExposureNotificationLogs:(id)logs
{
  logsCopy = logs;
  if (qword_1000C1010 != -1)
  {
    sub_1000617FC();
  }

  if (byte_1000C1008)
  {
    if ([(SystemDiagnosticBT *)self shouldGatherBTLogs])
    {
      accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "Querying bluetooth if ExposureNotification is supported, and collect db if so.", buf, 2u);
      }

      v6 = +[SDResourceManager sharedResourceManager];
      [v6 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:{@"Querying bluetooth if ExposureNotification is supported, and collect db if so."}];

      [(SystemDiagnosticBT *)self setExposureNotificationDBURL:0];
      v7 = dispatch_group_create();
      [(SystemDiagnosticBT *)self setExposureNotificationGroup:v7];

      exposureNotificationGroup = [(SystemDiagnosticBT *)self exposureNotificationGroup];

      if (exposureNotificationGroup)
      {
        exposureNotificationGroup2 = [(SystemDiagnosticBT *)self exposureNotificationGroup];
        dispatch_group_enter(exposureNotificationGroup2);
      }

      *buf = 0;
      v15 = buf;
      v16 = 0x2020000000;
      v17 = 0;
      bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000768C;
      v13[3] = &unk_1000A1010;
      v13[4] = self;
      v13[5] = buf;
      dispatch_sync(bluetoothQueue, v13);

      if (v15[24] == 1)
      {
        [(SystemDiagnosticBT *)self startBTSession:logsCopy];
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
    accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT, "Not triggering exposure notifications since bluetooth is missing", buf, 2u);
    }

    v12 = +[SDResourceManager sharedResourceManager];
    [v12 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"Not triggering exposure notifications since bluetooth is missing"];
  }
}

- (id)waitForExposureNotificationLogsIfAvailable:(int64_t)available
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

  exposureNotificationDBURL = [(SystemDiagnosticBT *)self exposureNotificationDBURL];

  if (!exposureNotificationDBURL)
  {
    exposureNotificationGroup = [(SystemDiagnosticBT *)self exposureNotificationGroup];

    accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    v14 = os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT);
    if (exposureNotificationGroup)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "ExposureNotification db still collecting; waiting for it to become available.", buf, 2u);
      }

      exposureNotificationGroup2 = [(SystemDiagnosticBT *)self exposureNotificationGroup];
      v16 = dispatch_time(0, available);
      v17 = dispatch_group_wait(exposureNotificationGroup2, v16);

      if (!v17)
      {
        exposureNotificationDBURL2 = [(SystemDiagnosticBT *)self exposureNotificationDBURL];
        v7 = [exposureNotificationDBURL2 copy];

        accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
        if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT, "Received ExposureNotification db after wait.", buf, 2u);
        }

        v9 = +[SDResourceManager sharedResourceManager];
        v10 = v9;
        v11 = @"Received ExposureNotification db after wait.";
        goto LABEL_9;
      }

      accessoryLogSubsystem3 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
      {
        sub_100061810();
      }

      v19 = +[SDResourceManager sharedResourceManager];
      [v19 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"Timed out waiting for ExposureNotification db collection."];

      bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007AC4;
      block[3] = &unk_1000A0FE8;
      block[4] = self;
      dispatch_sync(bluetoothQueue, block);
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "No ExposureNotification db available to collect.", buf, 2u);
      }

      bluetoothQueue = +[SDResourceManager sharedResourceManager];
      [bluetoothQueue logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"No ExposureNotification db available to collect."];
    }

    v7 = 0;
    goto LABEL_24;
  }

  exposureNotificationDBURL3 = [(SystemDiagnosticBT *)self exposureNotificationDBURL];
  v7 = [exposureNotificationDBURL3 copy];

  accessoryLogSubsystem4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  if (os_log_type_enabled(accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT, "Found collected ExposureNotification db.", buf, 2u);
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

- (void)markExposureNotificationLogsDone:(BOOL)done
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  [(SystemDiagnosticBT *)self setWaitingToCaptureExposureNotificationLogs:0];
  exposureNotificationGroup = [(SystemDiagnosticBT *)self exposureNotificationGroup];

  if (exposureNotificationGroup)
  {
    if (!done)
    {
      exposureNotificationGroup2 = [(SystemDiagnosticBT *)self exposureNotificationGroup];
      dispatch_group_leave(exposureNotificationGroup2);
    }

    [(SystemDiagnosticBT *)self setExposureNotificationGroup:0];
  }

  [(SystemDiagnosticBT *)self deregisterBTSessionIfDone];
}

- (void)triggerExposureNotificationLogs
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  [(SystemDiagnosticBT *)self btSession];
  if (BTLocalDeviceGetDefault())
  {
    accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_ERROR))
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
      accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "Could not dump ExposureNotification db from bluetoothd with error %d", buf, 8u);
      }
    }

    else
    {
      accessoryLogSubsystem = [NSString stringWithUTF8String:v10];
      v7 = [NSURL fileURLWithPath:accessoryLogSubsystem isDirectory:1];
      [(SystemDiagnosticBT *)self setExposureNotificationDBURL:v7];
    }
  }

  [(SystemDiagnosticBT *)self markExposureNotificationLogsDone:0];
}

- (void)startBTSessionAndTriggerAirPodLogs:(id)logs
{
  logsCopy = logs;
  if (qword_1000C1010 != -1)
  {
    sub_1000617FC();
  }

  if (byte_1000C1008)
  {
    if ([(SystemDiagnosticBT *)self shouldGatherBTLogs])
    {
      accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "Querying bluetooth if Airpods are connected, and collect AirPod logs if so.", buf, 2u);
      }

      v6 = +[SDResourceManager sharedResourceManager];
      [v6 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:{@"Querying bluetooth if Airpods are connected, and collect AirPod logs if so."}];

      [(SystemDiagnosticBT *)self setAccessoryLogs:0];
      v7 = dispatch_group_create();
      [(SystemDiagnosticBT *)self setAirpodsGroup:v7];

      airpodsGroup = [(SystemDiagnosticBT *)self airpodsGroup];

      if (airpodsGroup)
      {
        airpodsGroup2 = [(SystemDiagnosticBT *)self airpodsGroup];
        dispatch_group_enter(airpodsGroup2);
      }

      *buf = 0;
      v15 = buf;
      v16 = 0x2020000000;
      v17 = 0;
      bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100007FAC;
      v13[3] = &unk_1000A1010;
      v13[4] = self;
      v13[5] = buf;
      dispatch_sync(bluetoothQueue, v13);

      if (v15[24] == 1)
      {
        [(SystemDiagnosticBT *)self startBTSession:logsCopy];
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
    accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT, "Not triggering airpod logs since bluetooth is missing", buf, 2u);
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
      accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "Timed out waiting for limited logging check. Assuming limited logging disabled", buf, 2u);
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
    accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT, "CBUserController not found. Assuming limited logging disabled", v21, 2u);
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
    accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = [(SystemDiagnosticBT *)self defaultAirpodTimeout];
      _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "Found testing airpod timeouts override. Using timeout: %llu", buf, 0xCu);
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
      accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT, "Found manual airpods timeout override. Using timeout: %llu", buf, 0xCu);
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
      accessoryLogSubsystem3 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 300000000000;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem3, OS_LOG_TYPE_DEFAULT, "Limited logging is enabled. Using airpods timeout: %llu", buf, 0xCu);
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
      accessoryLogSubsystem4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 300000000000;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT, "Found prioritizeAirpodsWait timeout. Using timeout: %llu", buf, 0xCu);
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
      accessoryLogSubsystem5 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 30000000000;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem5, OS_LOG_TYPE_DEFAULT, "No preferences found. Using default airpods timeout value of: %llu", buf, 0xCu);
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

  accessoryLogs = [(SystemDiagnosticBT *)self accessoryLogs];

  if (!accessoryLogs)
  {
    airpodsGroup = [(SystemDiagnosticBT *)self airpodsGroup];

    accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    v12 = os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT);
    if (airpodsGroup)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "AirPod logs still collecting; waiting for them to become available.", buf, 2u);
      }

      getAirpodsTimeout = [(SystemDiagnosticBT *)self getAirpodsTimeout];
      airpodsGroup2 = [(SystemDiagnosticBT *)self airpodsGroup];
      v15 = dispatch_time(0, getAirpodsTimeout);
      v16 = dispatch_group_wait(airpodsGroup2, v15);

      if (!v16)
      {
        accessoryLogs2 = [(SystemDiagnosticBT *)self accessoryLogs];
        v5 = [accessoryLogs2 copy];

        accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
        if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT, "Received AirPod logs after wait.", buf, 2u);
        }

        v7 = +[SDResourceManager sharedResourceManager];
        v8 = v7;
        v9 = @"Received AirPod logs after wait.";
        goto LABEL_9;
      }

      accessoryLogSubsystem3 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
      {
        sub_1000618BC();
      }

      v18 = +[SDResourceManager sharedResourceManager];
      [v18 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"Timed out waiting for AirPod logs collection."];

      bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100008F04;
      block[3] = &unk_1000A0FE8;
      block[4] = self;
      dispatch_async(bluetoothQueue, block);
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "No AirPod logs available to collect.", buf, 2u);
      }

      bluetoothQueue = +[SDResourceManager sharedResourceManager];
      [bluetoothQueue logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:@"No AirPod logs available to collect."];
    }

    v5 = 0;
    goto LABEL_24;
  }

  accessoryLogs3 = [(SystemDiagnosticBT *)self accessoryLogs];
  v5 = [accessoryLogs3 copy];

  accessoryLogSubsystem4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  if (os_log_type_enabled(accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT, "Found collected AirPod logs.", buf, 2u);
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
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  if ([(SystemDiagnosticBT *)self accessoryManager])
  {
    accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "Unregistering AirPod logs dump with BTAccessoryManager.", v6, 2u);
    }

    [(SystemDiagnosticBT *)self accessoryManager];
    BTAccessoryManagerDeregisterCustomMessageClient();
    [(SystemDiagnosticBT *)self setAccessoryManager:0];
  }

  if ([(SystemDiagnosticBT *)self btSession])
  {
    accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, accessoryLogSubsystem2, OS_LOG_TYPE_DEFAULT, "Detaching from bluetoothd.", v6, 2u);
    }

    *v6 = [(SystemDiagnosticBT *)self btSession];
    BTSessionDetachWithQueue();
    [(SystemDiagnosticBT *)self setBtSession:0];
  }

  [(SystemDiagnosticBT *)self setAttachedToBTSession:0];
}

- (void)deregisterBTSessionIfDone
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  if (![(SystemDiagnosticBT *)self waitingToCaptureAirPodLogs]&& ![(SystemDiagnosticBT *)self waitingToCaptureExposureNotificationLogs])
  {

    [(SystemDiagnosticBT *)self deregisterBTSession];
  }
}

- (void)forceDeregisterBTSession
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  [(SystemDiagnosticBT *)self markAirpodLogsDone:0];
  [(SystemDiagnosticBT *)self markExposureNotificationLogsDone:0];

  [(SystemDiagnosticBT *)self deregisterBTSession];
}

- (void)retryAttachToBTSession
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  numAttachTries = [(SystemDiagnosticBT *)self numAttachTries];
  accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  v6 = accessoryLogSubsystem;
  if (numAttachTries > 2)
  {
    if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_ERROR))
    {
      sub_1000618F8(self, v6);
    }

    [(SystemDiagnosticBT *)self forceDeregisterBTSession];
  }

  else
  {
    if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      numAttachTries2 = [(SystemDiagnosticBT *)self numAttachTries];
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

- (void)markAirpodLogsDone:(BOOL)done
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  [(SystemDiagnosticBT *)self setWaitingToCaptureAirPodLogs:0];
  airpodsGroup = [(SystemDiagnosticBT *)self airpodsGroup];

  if (airpodsGroup)
  {
    if (!done)
    {
      airpodsGroup2 = [(SystemDiagnosticBT *)self airpodsGroup];
      dispatch_group_leave(airpodsGroup2);
    }

    [(SystemDiagnosticBT *)self setAirpodsGroup:0];
  }

  [(SystemDiagnosticBT *)self deregisterBTSessionIfDone];
}

- (void)triggerAirPodLogsIfConnected
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "Attempting to trigger AirPod logs dump.", buf, 2u);
  }

  *buf = 0;
  [(SystemDiagnosticBT *)self btSession];
  if (BTAccessoryManagerGetDefault())
  {
    accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_ERROR))
    {
      sub_100061990();
    }

    goto LABEL_27;
  }

  [(SystemDiagnosticBT *)self setAccessoryManager:*buf];
  v10 = sub_100009C4C;
  [(SystemDiagnosticBT *)self accessoryManager];
  v6 = BTAccessoryManagerRegisterCustomMessageClient();
  accessoryLogSubsystem3 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  v8 = accessoryLogSubsystem3;
  if (v6 > 9)
  {
    switch(v6)
    {
      case 10:
        if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
        {
          sub_100061A78();
        }

        goto LABEL_26;
      case 312:
        if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
        {
          sub_100061A3C();
        }

        goto LABEL_26;
      case 11:
        if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
        {
          sub_100061AB4();
        }

LABEL_26:

LABEL_27:
        [(SystemDiagnosticBT *)self markAirpodLogsDone:0];
        return;
    }

LABEL_24:
    if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
    {
      sub_100061AF0();
    }

    goto LABEL_26;
  }

  if (v6)
  {
    if (v6 == 2)
    {
      if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
      {
        sub_100061A00();
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully registered AirPod logs dump with BTAccessoryManager, waiting for accessory logs callback.", v9, 2u);
  }
}

- (void)sessionEvent:(BTSessionImpl *)event event:(int)a4 result:(int)result
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
        if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_FAULT))
        {
          sub_100061B60();
        }

        goto LABEL_12;
      }

      goto LABEL_10;
    }

    accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_ERROR))
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
        accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
        if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "Received BT_SESSION_DETACHED event in BTSession event callback. Ignoring.", v14, 2u);
        }

LABEL_12:

        return;
      }

LABEL_10:
      accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_FAULT))
      {
        sub_100061C4C();
      }

      goto LABEL_12;
    }

    if (result)
    {
      accessoryLogSubsystem3 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
      {
        sub_100061BDC();
      }

      [(SystemDiagnosticBT *)self retryAttachToBTSession];
    }

    else
    {
      [(SystemDiagnosticBT *)self setBtSession:event];
      accessoryLogSubsystem4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT, "Received BT_SESSION_ATTACHED (BT_SUCCESS) event in BTSession event callback. Capturing available data.", buf, 2u);
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

- (void)logCompletionHandler:(char *)handler size:(unint64_t)size
{
  bluetoothQueue = [(SystemDiagnosticBT *)self bluetoothQueue];
  dispatch_assert_queue_V2(bluetoothQueue);

  accessoryLogSubsystem = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
  if (os_log_type_enabled(accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, accessoryLogSubsystem, OS_LOG_TYPE_DEFAULT, "AirPod logs callback received.", &v19, 2u);
  }

  accessoryLogs = [(SystemDiagnosticBT *)self accessoryLogs];

  if (accessoryLogs)
  {
    accessoryLogSubsystem2 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    if (os_log_type_enabled(accessoryLogSubsystem2, OS_LOG_TYPE_ERROR))
    {
      sub_100061CC0();
    }
  }

  else
  {
    accessoryLogSubsystem2 = objc_opt_new();
    if (size >= 1)
    {
      v11 = &handler[size];
      while (1)
      {
        v12 = [NSString stringWithUTF8String:handler];
        v13 = v12;
        if (!v12 || ![v12 length])
        {
          break;
        }

        [accessoryLogSubsystem2 addObject:v13];
        handler += strlen(handler) + 1;

        if (handler >= v11)
        {
          goto LABEL_15;
        }
      }

      accessoryLogSubsystem3 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
      if (os_log_type_enabled(accessoryLogSubsystem3, OS_LOG_TYPE_ERROR))
      {
        sub_100061CFC();
      }
    }

LABEL_15:
    airpodsGroup = [(SystemDiagnosticBT *)self airpodsGroup];

    accessoryLogSubsystem4 = [(SystemDiagnosticBT *)self accessoryLogSubsystem];
    v17 = accessoryLogSubsystem4;
    if (airpodsGroup)
    {
      if (os_log_type_enabled(accessoryLogSubsystem4, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = accessoryLogSubsystem2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AirPod logs dumped, file(s) received in callback: %@", &v19, 0xCu);
      }

      v18 = [accessoryLogSubsystem2 copy];
      [(SystemDiagnosticBT *)self setAccessoryLogs:v18];

      [(SystemDiagnosticBT *)self markAirpodLogsDone:0];
    }

    else
    {
      if (os_log_type_enabled(accessoryLogSubsystem4, OS_LOG_TYPE_ERROR))
      {
        sub_100061D38();
      }
    }
  }
}

@end