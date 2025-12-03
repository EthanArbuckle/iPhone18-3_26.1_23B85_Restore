@interface _DASBatteryTemperatureRecorder
+ (_DASBatteryTemperatureRecorder)sharedInstance;
- (_DASBatteryTemperatureRecorder)init;
- (id)getBatteryStatus;
- (void)handleBatteryNotification;
- (void)startRecording;
@end

@implementation _DASBatteryTemperatureRecorder

- (void)handleBatteryNotification
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  getBatteryStatus = [(_DASBatteryTemperatureRecorder *)self getBatteryStatus];
  v6 = getBatteryStatus;
  if (getBatteryStatus)
  {
    v7 = [getBatteryStatus objectForKeyedSubscript:@"batteryTemperature"];
    integerValue = [v7 integerValue];

    if (integerValue)
    {
      self->_currentBatteryTemperature = integerValue;
      v9 = [(_DASBatteryTemperatureRecorder *)self roundedTemperature:integerValue];
      recentBatteryTemperature = self->_recentBatteryTemperature;
      log = self->_log;
      v12 = v9 - recentBatteryTemperature;
      if (v9 == recentBatteryTemperature)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          sub_100126B40(&self->_recentBatteryTemperature, v9, log);
        }
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
      {
        v13 = self->_recentBatteryTemperature;
        v20 = 134218496;
        v21 = v9;
        v22 = 2048;
        v23 = v13;
        v24 = 2048;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Current temp %ld, recent temp %ld, change %ld", &v20, 0x20u);
      }

      v14 = [v6 objectForKeyedSubscript:@"pluggedIn"];

      if (v14)
      {
        if (self->_lowTemperatureCeiling <= v9)
        {
          v15 = 96;
          if (self->_mediumTemperatureCeiling > v9)
          {
            v15 = 88;
          }
        }

        else
        {
          v15 = 80;
        }
      }

      else
      {
        v15 = 104;
      }

      v16 = *(&self->super.isa + v15);
      if (v12 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = -v12;
      }

      if (v17 > v16)
      {
        v18 = self->_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = 134218240;
          v21 = v12;
          v22 = 2048;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Writing event since delta %ld is greater than %ld", &v20, 0x16u);
        }

        v19 = [v6 objectForKeyedSubscript:@"pluggedIn"];
        -[_DASBatteryTemperatureRecorder storeBatteryTemperatureEvent:pluggedIn:](self, "storeBatteryTemperatureEvent:pluggedIn:", v9, [v19 BOOLValue]);

        self->_recentBatteryTemperature = v9;
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (id)getBatteryStatus
{
  powerService = self->_powerService;
  if (!powerService)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_12;
  }

  properties = 0;
  if (IORegistryEntryCreateCFProperties(powerService, &properties, kCFAllocatorDefault, 0))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100126BD4();
    }

    goto LABEL_5;
  }

  v5 = properties;
  v6 = [(__CFDictionary *)properties copy];

  v7 = [v6 objectForKeyedSubscript:@"Temperature"];

  if (v7)
  {
    v4 = +[NSMutableDictionary dictionary];
    v8 = [v6 objectForKeyedSubscript:@"Temperature"];
    [v4 setObject:v8 forKeyedSubscript:@"batteryTemperature"];

    v9 = [v6 objectForKeyedSubscript:@"ExternalConnected"];
    [v4 setObject:v9 forKeyedSubscript:@"pluggedIn"];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100126C48();
    }

    v4 = 0;
  }

LABEL_12:

  return v4;
}

- (_DASBatteryTemperatureRecorder)init
{
  v19.receiver = self;
  v19.super_class = _DASBatteryTemperatureRecorder;
  v2 = [(_DASBatteryTemperatureRecorder *)&v19 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"batteryTemperatureRecorder"];
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    if (MGGetBoolAnswer())
    {
      v5 = IOServiceMatching("IOPMPowerSource");
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
      *(v2 + 2) = MatchingService;
      if (MatchingService)
      {
        v7 = IONotificationPortCreate(kIOMainPortDefault);
        *(v2 + 3) = v7;
        if (v7)
        {
          *(v2 + 4) = xmmword_100158ED0;
          *(v2 + 5) = xmmword_100158EE0;
          *(v2 + 6) = xmmword_100158EF0;
          v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
          [v8 doubleForKey:@"lowTemperatureCeiling"];
          if (v9 != 0.0)
          {
            *(v2 + 8) = v9;
          }

          [v8 doubleForKey:@"mediumTemperatureCeiling"];
          if (v10 != 0.0)
          {
            *(v2 + 9) = v10;
          }

          [v8 doubleForKey:@"nonPluggedInDelta"];
          if (v11 != 0.0)
          {
            *(v2 + 13) = v11;
          }

          [v8 doubleForKey:@"lowTemperatureDelta"];
          if (v12 != 0.0)
          {
            *(v2 + 10) = v12;
          }

          [v8 doubleForKey:@"mediumTemperatureDelta"];
          if (v13 != 0.0)
          {
            *(v2 + 11) = v13;
          }

          [v8 doubleForKey:@"highTemperatureDelta"];
          if (v14 != 0.0)
          {
            *(v2 + 12) = v14;
          }

          goto LABEL_18;
        }

        if (os_log_type_enabled(*(v2 + 4), OS_LOG_TYPE_ERROR))
        {
          sub_100126A6C();
        }
      }

      else if (os_log_type_enabled(*(v2 + 4), OS_LOG_TYPE_ERROR))
      {
        sub_100126AAC();
      }
    }

    else
    {
      v16 = *(v2 + 4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device does not have an internal battery", v18, 2u);
      }
    }

    v15 = 0;
    goto LABEL_26;
  }

LABEL_18:
  v15 = v2;
LABEL_26:

  return v15;
}

+ (_DASBatteryTemperatureRecorder)sharedInstance
{
  if (qword_10020B6B8 != -1)
  {
    sub_100126AEC();
  }

  v3 = qword_10020B6C0;

  return v3;
}

- (void)startRecording
{
  self->_currentBatteryTemperature = -1000;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v5 = dispatch_queue_create("com.apple.dasd.batteryTemperature.datacollection", v4);
  queue = self->_queue;
  self->_queue = v5;

  IONotificationPortSetDispatchQueue(self->_notifyPort, self->_queue);
  if (IOServiceAddInterestNotification(self->_notifyPort, self->_powerService, "IOGeneralInterest", sub_100003758, self, &self->_batteryNotification))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100126B00();
    }
  }

  else
  {
    v7 = BiomeLibrary();
    device = [v7 Device];
    thermals = [device Thermals];
    batteryTemperature = [thermals BatteryTemperature];
    temperatureStream = self->_temperatureStream;
    self->_temperatureStream = batteryTemperature;

    self->_recentBatteryTemperature = -1000;
  }
}

@end