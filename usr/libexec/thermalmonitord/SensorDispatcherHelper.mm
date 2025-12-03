@interface SensorDispatcherHelper
+ (id)sharedInstance;
- (SensorDispatcherHelper)init;
- (float)getFloatValueFromSMCForKey:(__CFString *)key;
- (int)getTemperatureFromSMCForKey:(__CFString *)key;
- (int)getValueFromSMCForKey:(__CFString *)key;
- (int)writeKeysToSensorDispatcher:(smcKeyWrites *)dispatcher;
- (void)readKeysFromSensorDispatcher;
@end

@implementation SensorDispatcherHelper

+ (id)sharedInstance
{
  if (qword_1000AB2C0 != -1)
  {
    sub_10005B220();
  }

  return qword_1000AB2C8;
}

- (void)readKeysFromSensorDispatcher
{
  outputStructCnt = 60;
  if (self->connect && IOConnectCallStructMethod(self->connect, 2u, 0, 0, &self->_sensorData, &outputStructCnt) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005B2D0();
  }
}

- (SensorDispatcherHelper)init
{
  v15.receiver = self;
  v15.super_class = SensorDispatcherHelper;
  v2 = [(SensorDispatcherHelper *)&v15 init];
  if (v2)
  {
    v3 = IOServiceMatching("AppleSMCSensorDispatcher");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
    outputCnt = 1;
    outputStructCnt = 60;
    if (MatchingService)
    {
      if (IOServiceOpen(MatchingService, mach_task_self_, 0, &v2->connect))
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005B234();
        }
      }

      else
      {
        if (IOConnectCallScalarMethod(v2->connect, 0, 0, 0, &v2->sensorCount, &outputCnt) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005B268();
        }

        p_sensor4CC = &v2->_sensor4CC;
        if (IOConnectCallStructMethod(v2->connect, 1u, 0, 0, &v2->_sensor4CC, &outputStructCnt) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005B29C();
        }

        v2->_smcSensorDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v2->sensorCount)
        {
          v7 = 0;
          v8 = &v2->_sensor4CC;
          do
          {
            v9 = *v8++;
            v10 = sub_100031F34(v9);
            sub_100002FB4(v2->_smcSensorDict, v10, kCFNumberSInt32Type, p_sensor4CC);
            ++v7;
            p_sensor4CC = v8;
          }

          while (v7 < v2->sensorCount);
        }
      }
    }

    else
    {
      v5 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> AppleSMCSensorDispatcher not enabled on this device", v12, 2u);
      }
    }
  }

  return v2;
}

- (int)writeKeysToSensorDispatcher:(smcKeyWrites *)dispatcher
{
  connect = self->connect;
  if (!connect)
  {
    return -536870212;
  }

  v4 = IOConnectCallStructMethod(connect, 3u, dispatcher, 0x58uLL, 0, 0);
  if (v4)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005B304(v4, v5);
    }
  }

  return v4;
}

- (int)getValueFromSMCForKey:(__CFString *)key
{
  v9 = 0;
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      CStringPtr = CFStringGetCStringPtr(key, 0x8000100u);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Looking for SMC Key %s", buf, 0xCu);
    }
  }

  if (!sub_100002A20(self->_smcSensorDict, key, kCFNumberSInt32Type, &v9))
  {
    return -1;
  }

  p_sensor4CC = &self->_sensor4CC;
  result = -1;
  v8 = 15;
  do
  {
    if (v9 == p_sensor4CC->sensor4CC[0])
    {
      result = p_sensor4CC[-1].sensor4CC[0];
    }

    p_sensor4CC = (p_sensor4CC + 4);
    --v8;
  }

  while (v8);
  return result;
}

- (float)getFloatValueFromSMCForKey:(__CFString *)key
{
  v8 = 0;
  v4 = sub_100002A20(self->_smcSensorDict, key, kCFNumberSInt32Type, &v8);
  result = -1.0;
  if (v4)
  {
    p_sensor4CC = &self->_sensor4CC;
    v7 = 15;
    do
    {
      if (v8 == p_sensor4CC->sensor4CC[0])
      {
        result = *p_sensor4CC[-1].sensor4CC;
      }

      p_sensor4CC = (p_sensor4CC + 4);
      --v7;
    }

    while (v7);
  }

  return result;
}

- (int)getTemperatureFromSMCForKey:(__CFString *)key
{
  result = [(SensorDispatcherHelper *)self getValueFromSMCForKey:key];
  if (result != -1)
  {
    if (result == -12700)
    {
      return -12800;
    }

    else
    {
      return (result / 65535.0 * 100.0);
    }
  }

  return result;
}

@end