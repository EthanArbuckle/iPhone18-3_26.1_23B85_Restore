@interface HidSensors
+ (id)sharedInstance;
- (BOOL)isTempSensorDataValid:(__CFString *)valid value:(int)value;
- (BOOL)readFailuresExpected:(__CFString *)expected;
- (BOOL)staleValueExpected:(__CFString *)expected;
- (HidSensors)init;
- (__CFArray)copySensorArray;
- (__CFDictionary)getHIDSensorDict;
- (__CFString)getSensor4CCFromIndex:(int64_t)index;
- (char)readHIDDebugDictionaryAndReturnErrorCode;
- (int)callbackSensorInterval:(__CFString *)interval;
- (int)getFilterTimeConstantForSensor:(int64_t)sensor;
- (int)getPowerSensorIndex:(__CFString *)index;
- (int)indexForTempSensorKey:(__CFString *)key;
- (int)sendToService:(__CFString *)service value:(void *)value;
- (int)temperatureForKey:(__CFString *)key;
- (unsigned)getSensorIndexFrom4CC:(__CFString *)c;
- (void)createHIDEventSystemObject;
- (void)dealloc;
- (void)handleTemperatureEvent:(int)event service:(__IOHIDServiceClient *)service;
- (void)initLocationStrings;
- (void)loadProductPowerParameters:(__CFArray *)parameters;
- (void)loadProductTemperatureParameters:(__CFArray *)parameters;
- (void)resetHIDSensorDictionary;
- (void)sendVirtualTemp:(int)temp temperature:(int)temperature;
@end

@implementation HidSensors

+ (id)sharedInstance
{
  if (qword_1000A2480 != -1)
  {
    sub_100050ADC();
  }

  return qword_1000A2488;
}

- (__CFDictionary)getHIDSensorDict
{
  self->_isSensorDataValid = 1;
  v3 = objc_alloc_init(NSMutableArray);
  if (!self->_tempSensors)
  {
    if (self->_hidEventSystem || ([(HidSensors *)self createHIDEventSystemObject], self->_hidEventSystem))
    {
      copySensorArray = [(HidSensors *)self copySensorArray];
      self->_tempSensors = copySensorArray;
      if (copySensorArray)
      {
LABEL_69:
        Count = CFArrayGetCount(copySensorArray);
        self->_count = Count;
        if (Count <= 0)
        {
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100051170();
          }

          CFRelease(self->_tempSensors);
          result = 0;
          self->_tempSensors = 0;
          return result;
        }

        if (self->_callbackTemperaturesQueue)
        {
          self->_callbackTemperatures = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
          hidEventSystem = self->_hidEventSystem;
          IOHIDEventSystemClientRegisterEventCallback();
        }

        self->_sensorDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        self->_serviceToName = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
        hidSensorKeys = [+[HidSensors sharedInstance](HidSensors hidSensorKeys];
        tempSensors = self->_tempSensors;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10000DB94;
        v48[3] = &unk_1000851C8;
        v48[4] = v3;
        v48[5] = hidSensorKeys;
        v48[6] = self;
        v35 = [(__CFArray *)tempSensors filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:v48]];
        CFRelease(self->_tempSensors);
        self->_tempSensors = v35;
        if (v35)
        {
          CFRetain(v35);
          v36 = CFArrayGetCount(self->_tempSensors);
          self->_count = v36;
          if (v36 != CFArrayGetCount(self->hidSensorKeys) - self->_shadowSensorCount && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_1000510F8();
          }

          goto LABEL_2;
        }

        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100051134();
        }

        return 0;
      }
    }

    else
    {
      copySensorArray = self->_tempSensors;
      if (copySensorArray)
      {
        goto LABEL_69;
      }
    }

    v37 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "<Notice> Could not create HIDArray (will retry)", buf, 2u);
    }

    return 0;
  }

LABEL_2:
  if ([v3 count])
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> List of sensors received: %@", buf, 0xCu);
    }
  }

  if (self->_count >= 1)
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_tempSensors, v5);
      Value = CFDictionaryGetValue(self->_serviceToName, ValueAtIndex);
      if (!Value)
      {
        v12 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = ValueAtIndex;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "<Error> Cannot find matching key for 0x%p", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (![+[HidSensors shouldRetrieveSensor:"shouldRetrieveSensor:"]
      {
        *buf = -12700;
        v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
        CFDictionarySetValue(self->_sensorDict, Value, v13);
        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_40;
      }

      v47 = 0;
      if (self->_callbackTemperaturesQueue)
      {
        callbackTemperatures = self->_callbackTemperatures;
        if (callbackTemperatures)
        {
          if (CFDictionaryContainsKey(callbackTemperatures, Value))
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LODWORD(v50) = 0;
            callbackTemperaturesQueue = self->_callbackTemperaturesQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000DF18;
            block[3] = &unk_1000851F0;
            block[5] = buf;
            block[6] = Value;
            block[4] = self;
            dispatch_sync(callbackTemperaturesQueue, block);
            v10 = [(HidSensors *)self isTempSensorDataValid:Value value:*(*&buf[8] + 24)];
            sensorDict = self->_sensorDict;
            if (v10)
            {
              sub_100002FB4(sensorDict, Value, kCFNumberSInt32Type, (*&buf[8] + 24));
            }

            else
            {
              CFDictionaryRemoveValue(sensorDict, Value);
              self->_isSensorDataValid = 0;
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_35;
          }
        }
      }

      if (byte_1000AB2FA == 1 && [(HidSensors *)self isBatterySensor:Value])
      {
        *buf = 3000;
        sub_100002FB4(self->_sensorDict, Value, kCFNumberSInt32Type, buf);
        goto LABEL_35;
      }

      value = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getTemperatureFromSMCForKey:"getTemperatureFromSMCForKey:", Value];
      v47 = value;
      if (value == -12800)
      {
        break;
      }

      if (value != -1)
      {
        v19 = [(HidSensors *)self isTempSensorDataValid:Value value:value];
        v20 = self->_sensorDict;
        if (v19)
        {
          sub_100002FB4(v20, Value, kCFNumberSInt32Type, &v47);
          goto LABEL_35;
        }

        CFDictionaryRemoveValue(v20, Value);
LABEL_34:
        self->_isSensorDataValid = 0;
        goto LABEL_35;
      }

      value2 = [+[HidSensors sharedInstance](HidSensors isPowerSensor:"isPowerSensor:", Value];
      v16 = IOHIDServiceClientCopyEvent();
      if (v16)
      {
        IOHIDEventGetFloatValue();
        valuePtr = v17;
        if (!value2)
        {
          v44 = (v17 * 100.0);
          v43 = 0;
          if (sub_100002A20(self->_potentiallyStaleSensorTimestamps, Value, kCFNumberLongType, &v43))
          {
            TimeStamp = IOHIDEventGetTimeStamp();
            if (TimeStamp == v43)
            {
              goto LABEL_48;
            }

            if (!v43)
            {
              info = 0;
              if (!mach_timebase_info(&info))
              {
                denom = info.denom;
                numer = info.numer;
                v28 = mach_absolute_time();
                log = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  *&buf[4] = Value;
                  *&buf[12] = 2048;
                  *&buf[14] = v43;
                  *&buf[22] = 2048;
                  v50 = TimeStamp;
                  v51 = 2048;
                  v52 = v28;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "<Notice> Sensor reset for %@, prior %lld, event %lld, now %lld", buf, 0x2Au);
                }

                if (TimeStamp + 60000000000 * denom / numer < v28)
                {
LABEL_48:
                  sub_100002A20(self->_potentiallyStaleSensorDefaults, Value, kCFNumberSInt32Type, &v44);
                }
              }
            }

            if (TimeStamp != v43)
            {
              sub_100002FB4(self->_potentiallyStaleSensorTimestamps, Value, kCFNumberLongType, &TimeStamp);
            }
          }

          CFRelease(v16);
          if (![+[HidSensors staleValueExpected:"staleValueExpected:"]
          {
            goto LABEL_28;
          }

          sub_100002FB4(self->_sensorDict, Value, kCFNumberSInt32Type, &v44);
LABEL_35:
          tempOffsetDict = self->_tempOffsetDict;
          if (tempOffsetDict)
          {
            if (CFDictionaryContainsKey(tempOffsetDict, Value))
            {
              v22 = self->_sensorDict;
              if (v22)
              {
                if (CFDictionaryContainsKey(v22, Value))
                {
                  *buf = 0;
                  LODWORD(valuePtr) = 0;
                  v23 = CFDictionaryGetValue(self->_sensorDict, Value);
                  CFNumberGetValue(v23, kCFNumberSInt32Type, buf);
                  v24 = CFDictionaryGetValue(self->_tempOffsetDict, Value);
                  CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr);
                  *buf += LODWORD(valuePtr);
                  sub_100002FB4(self->_sensorDict, Value, kCFNumberSInt32Type, buf);
                }
              }
            }
          }

          goto LABEL_40;
        }

        sub_100002FB4(self->_sensorDict, Value, kCFNumberDoubleType, &valuePtr);
        CFRelease(v16);
      }

      else
      {
        LODWORD(valuePtr) = 0;
        v25 = sub_100002A20(self->_potentiallyStaleSensorDefaults, Value, kCFNumberSInt32Type, &valuePtr);
        v26 = +[HidSensors sharedInstance];
        if (v25)
        {
          if (![(HidSensors *)v26 staleValueExpected:Value]&& ![(HidSensors *)self isTempSensorDataValid:Value value:LODWORD(valuePtr)])
          {
            goto LABEL_28;
          }

          sub_100002FB4(self->_sensorDict, Value, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_35;
        }

        if (![(HidSensors *)v26 readFailuresExpected:Value])
        {
          v27 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = Value;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "<Error> Could not get event from service (%@)", buf, 0xCu);
          }

          goto LABEL_28;
        }
      }

LABEL_40:
      if (self->_count <= ++v5)
      {
        return self->_sensorDict;
      }
    }

    v18 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = Value;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "<Error> Could not get value from SMC (%@)", buf, 0xCu);
    }

LABEL_28:
    CFDictionaryRemoveValue(self->_sensorDict, Value);
    goto LABEL_34;
  }

  return self->_sensorDict;
}

- (HidSensors)init
{
  v6.receiver = self;
  v6.super_class = HidSensors;
  v2 = [(HidSensors *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_infoOnlySensorsActive = 0;
    v2->sensorWatchdogMask = 0;
    v2->hidSensorKeys = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v3->sensorFourCharCode = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v3->synthSensorKeys = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3->_tempOffsetDict = 0;
    v3->_dispatchVirtualTemp = 0;
    v3->_shadowSensorCount = 0;
    v3->_infoOnlyHIDSensors = 0;
    v3->_callbackSensorIntervals = 0;
    v3->_potentiallyStaleSensorDefaults = 0;
    v3->_callbackTemperaturesQueue = 0;
    v3->_potentiallyStaleSensorTimestamps = Mutable;
  }

  return v3;
}

- (void)dealloc
{
  potentiallyStaleSensorDefaults = self->_potentiallyStaleSensorDefaults;
  if (potentiallyStaleSensorDefaults)
  {
    CFRelease(potentiallyStaleSensorDefaults);
  }

  potentiallyStaleSensorTimestamps = self->_potentiallyStaleSensorTimestamps;
  if (potentiallyStaleSensorTimestamps)
  {
    CFRelease(potentiallyStaleSensorTimestamps);
  }

  infoOnlyHIDSensors = self->_infoOnlyHIDSensors;
  if (infoOnlyHIDSensors)
  {
    CFRelease(infoOnlyHIDSensors);
  }

  tempOffsetDict = self->_tempOffsetDict;
  if (tempOffsetDict)
  {
    CFRelease(tempOffsetDict);
  }

  synthSensorKeys = self->synthSensorKeys;
  if (synthSensorKeys)
  {
    CFRelease(synthSensorKeys);
  }

  sensorFourCharCode = self->sensorFourCharCode;
  if (sensorFourCharCode)
  {
    CFRelease(sensorFourCharCode);
  }

  hidSensorKeys = self->hidSensorKeys;
  if (hidSensorKeys)
  {
    CFRelease(hidSensorKeys);
  }

  v10.receiver = self;
  v10.super_class = HidSensors;
  [(HidSensors *)&v10 dealloc];
}

- (unsigned)getSensorIndexFrom4CC:(__CFString *)c
{
  sensorFourCharCode = self->sensorFourCharCode;
  if (sensorFourCharCode)
  {
    Count = CFArrayGetCount(sensorFourCharCode);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->sensorFourCharCode, i);
        if (ValueAtIndex && (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 == CFStringGetTypeID()))
        {
          if (CFStringCompare(c, v10, 0) == kCFCompareEqualTo)
          {
            return i;
          }
        }

        else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100050AF0(&v13, v14);
        }
      }
    }
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100050B1C();
  }

  LODWORD(i) = -1;
  return i;
}

- (__CFString)getSensor4CCFromIndex:(int64_t)index
{
  if (index < 0)
  {
    return 0;
  }

  sensorFourCharCode = self->sensorFourCharCode;
  if (!sensorFourCharCode)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(sensorFourCharCode, index);
  }
}

- (void)loadProductTemperatureParameters:(__CFArray *)parameters
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v7 == 0)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100050C44();
    }
  }

  else
  {
    theDict = v8;
    v25 = v9;
    if (CFArrayGetCount(parameters) >= 1)
    {
      v12 = 0;
      p_last = &self->filterParams[0].last;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(parameters, v12);
        if (ValueAtIndex && (v15 = ValueAtIndex, v16 = CFGetTypeID(ValueAtIndex), v16 == CFDictionaryGetTypeID()))
        {
          value = 0;
          if (sub_100031DDC(v15, @"4CharCode", &value))
          {
            CFArrayAppendValue(self->sensorFourCharCode, value);
          }

          else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100050B58(&v37, v38);
          }

          if ((sub_100031DDC(v15, @"matchName", &value) & 1) == 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100050B84(&v35, v36);
          }

          v34 = 0;
          if ((sub_100002A20(v15, @"filterParams", kCFNumberSInt32Type, &v34) & 1) == 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100050BB0(&v32, v33);
          }

          v17 = sub_100031D48(v15, @"filterParams_INTMIN");
          *(p_last - 1) = v34;
          *p_last = v17 << 31;
          if (sub_100031D64(v15, @"requiresWatchDog", 1))
          {
            self->sensorWatchdogMask |= 1 << v12;
          }

          v18 = sub_100031D48(v15, @"synthSensor");
          v19 = 72;
          if (!v18)
          {
            v19 = 56;
          }

          CFArrayAppendValue(*(&self->super.isa + v19), value);
          if (sub_100031D48(v15, @"shadowSensor"))
          {
            ++self->_shadowSensorCount;
          }

          if (sub_100031D64(v15, @"infoOnly", 0))
          {
            CFDictionarySetValue(Mutable, value, kCFBooleanTrue);
          }

          if (sub_100031D64(v15, @"readFailuresExpected", 0))
          {
            CFDictionarySetValue(theDict, value, kCFBooleanTrue);
          }

          valuePtr = 0;
          sub_100002A20(v15, @"callbackInterval", kCFNumberSInt32Type, &valuePtr);
          if (valuePtr >= 1)
          {
            sub_100002FB4(v6, value, kCFNumberSInt32Type, &valuePtr);
          }

          v30 = 0;
          if (sub_100002A20(v15, @"staleDefault", kCFNumberSInt32Type, &v30))
          {
            sub_100002FB4(v7, value, kCFNumberSInt32Type, &v30);
            *buf = 0;
            sub_100002FB4(self->_potentiallyStaleSensorTimestamps, value, kCFNumberLongType, buf);
          }

          v29 = 0;
          if (sub_100002A20(v15, @"temperatureOffset", kCFNumberSInt32Type, &v29))
          {
            sub_100002FB4(v25, value, kCFNumberSInt32Type, &v29);
          }

          if (byte_1000ABC38 == 1 && sub_100031DDC(v15, @"smcExchangeGroupKey", &value))
          {
            if (byte_1000AB2F8 == 1)
            {
              v20 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                *&buf[4] = v12;
                v41 = 2112;
                v42 = value;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<Notice> Sensor # %d is specified for SMC sensor group %@", buf, 0x12u);
              }
            }

            v28 = -1;
            if (sub_100002A20(v15, @"smcExchangeIndex", kCFNumberSInt32Type, &v28))
            {
              if ((v28 & 0x80000000) == 0)
              {
                v21 = +[SensorExchangeHelper sharedInstance];
                [(SensorExchangeHelper *)v21 registerCLTMSensorIndex:v12 forSMCKey:value atSMCIndex:v28];
              }
            }

            else
            {
              v22 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *&buf[4] = v12;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "<Error> Couldn't find expected smcExchangeIndex value for sensor %d", buf, 8u);
              }
            }
          }
        }

        else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100050BDC(&v26, v27);
        }

        ++v12;
        p_last += 2;
      }

      while (CFArrayGetCount(parameters) > v12);
    }

    if (CFDictionaryGetCount(Mutable) >= 1)
    {
      self->_infoOnlyHIDSensors = CFDictionaryCreateCopy(kCFAllocatorDefault, Mutable);
      CFDictionaryRemoveAllValues(Mutable);
    }

    CFRelease(Mutable);
    if (theDict)
    {
      if (CFDictionaryGetCount(theDict) >= 1)
      {
        self->_readFailuresExpected = CFDictionaryCreateCopy(kCFAllocatorDefault, theDict);
        CFDictionaryRemoveAllValues(theDict);
      }

      CFRelease(theDict);
    }

    if (CFDictionaryGetCount(v6) >= 1)
    {
      self->_callbackSensorIntervals = CFDictionaryCreateCopy(kCFAllocatorDefault, v6);
      CFDictionaryRemoveAllValues(v6);
      v23 = dispatch_queue_create("com.apple.thermalmonitor.hidsensors", 0);
      self->_callbackTemperaturesQueue = v23;
      if (!v23 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100050C08();
      }
    }

    CFRelease(v6);
    if (CFDictionaryGetCount(v7) >= 1)
    {
      self->_potentiallyStaleSensorDefaults = CFDictionaryCreateCopy(kCFAllocatorDefault, v7);
      CFDictionaryRemoveAllValues(v7);
    }

    CFRelease(v7);
    if (v25)
    {
      if (CFDictionaryGetCount(v25) >= 1)
      {
        self->_tempOffsetDict = CFDictionaryCreateCopy(kCFAllocatorDefault, v25);
        CFDictionaryRemoveAllValues(v25);
      }

      CFRelease(v25);
    }
  }
}

- (void)loadProductPowerParameters:(__CFArray *)parameters
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = Mutable;
    LODWORD(idx) = 0;
    if (CFArrayGetCount(parameters) >= 1)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(parameters, idx);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 == CFDictionaryGetTypeID())
          {
            value = 0;
            if (sub_100031DDC(v8, @"4CharCode", &value))
            {
              CFArrayAppendValue(self->sensorFourCharCode, value);
            }

            else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_100050B58(&v15, v16);
            }

            if ((sub_100031DDC(v8, @"matchName", &value) & 1) == 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_100050B84(&v13, v14);
            }

            CFArrayAppendValue(self->hidSensorKeys, value);
            v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &idx);
            if (v10)
            {
              v11 = v10;
              CFDictionarySetValue(v6, value, v10);
              CFRelease(v11);
            }
          }
        }

        v12 = idx + 1;
        LODWORD(idx) = idx + 1;
      }

      while (CFArrayGetCount(parameters) > v12);
    }

    if (CFDictionaryGetCount(v6) > 0)
    {
      self->_powerSensors = CFDictionaryCreateCopy(kCFAllocatorDefault, v6);
      CFDictionaryRemoveAllValues(v6);
    }

    CFRelease(v6);
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100050C80();
  }
}

- (void)resetHIDSensorDictionary
{
  v3 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<Notice> resetting HID sensor dictionary", v8, 2u);
  }

  tempSensors = self->_tempSensors;
  if (tempSensors)
  {
    CFRelease(tempSensors);
  }

  sensorDict = self->_sensorDict;
  if (sensorDict)
  {
    CFRelease(sensorDict);
  }

  serviceToName = self->_serviceToName;
  if (serviceToName)
  {
    CFRelease(serviceToName);
  }

  callbackTemperatures = self->_callbackTemperatures;
  if (callbackTemperatures)
  {
    CFRelease(callbackTemperatures);
  }

  self->_tempSensors = 0;
  self->_callbackTemperatures = 0;
  self->_sensorDict = 0;
  self->_serviceToName = 0;
}

- (int)sendToService:(__CFString *)service value:(void *)value
{
  if (qword_1000A2490 == -1)
  {
    if (!service)
    {
      return 5;
    }
  }

  else
  {
    sub_100050CBC();
    if (!service)
    {
      return 5;
    }
  }

  v6 = dword_1000A2498;
  if (!dword_1000A2498)
  {
    return 5;
  }

  return IORegistryEntrySetCFProperty(v6, service, value);
}

- (void)sendVirtualTemp:(int)temp temperature:(int)temperature
{
  if ([+[HidSensors isVirtualTempDispatchEnabled] sharedInstance]
  {
    temp = [+[HidSensors sharedInstance](HidSensors getSensor4CCFromIndex:"getSensor4CCFromIndex:", temp];
    v8 = temperature / 100.0;
    if (v8 >= 0.0)
    {
      v9 = v8 * 65536.0 + 0.5;
    }

    else
    {
      v9 = v8 * 65536.0 + -0.5;
    }

    valuePtr = v9;
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      v12 = [(HidSensors *)self sendToService:temp value:v10];
      CFRelease(v11);
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = 5;
    }

    v13 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100050D50(v12, v13);
    }
  }
}

- (void)initLocationStrings
{
  if ([+[HidSensors isVirtualTempDispatchEnabled] sharedInstance]
  {
    Count = CFArrayGetCount([+[HidSensors hidSensorKeys] sharedInstance];
    v4 = CFArrayGetCount([+[HidSensors synthSensorKeys] sharedInstance];
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = v4 + Count;
      do
      {
        -[HidSensors sendToService:value:](self, "sendToService:value:", [+[HidSensors sharedInstance](HidSensors getSensor4CCFromIndex:"getSensor4CCFromIndex:", Count++], CFArrayGetValueAtIndex(self->synthSensorKeys, v5++));
      }

      while (Count < v6);
    }
  }
}

- (BOOL)readFailuresExpected:(__CFString *)expected
{
  readFailuresExpected = self->_readFailuresExpected;
  if (readFailuresExpected)
  {
    LODWORD(readFailuresExpected) = CFDictionaryContainsKey(readFailuresExpected, expected);
    if (readFailuresExpected)
    {
      LOBYTE(readFailuresExpected) = CFDictionaryGetValue(self->_readFailuresExpected, expected) != 0;
    }
  }

  return readFailuresExpected;
}

- (BOOL)staleValueExpected:(__CFString *)expected
{
  potentiallyStaleSensorDefaults = self->_potentiallyStaleSensorDefaults;
  if (potentiallyStaleSensorDefaults)
  {
    LODWORD(potentiallyStaleSensorDefaults) = CFDictionaryContainsKey(potentiallyStaleSensorDefaults, expected);
    if (potentiallyStaleSensorDefaults)
    {
      LOBYTE(potentiallyStaleSensorDefaults) = CFDictionaryGetValue(self->_potentiallyStaleSensorDefaults, expected) != 0;
    }
  }

  return potentiallyStaleSensorDefaults;
}

- (int)getPowerSensorIndex:(__CFString *)index
{
  v9 = 0;
  powerSensors = self->_powerSensors;
  if (!powerSensors || !CFDictionaryContainsKey(powerSensors, index))
  {
    return 0;
  }

  sub_100002A20(self->_powerSensors, index, kCFNumberIntType, &v9);
  v6 = v9;
  if (v9 >= 11)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      indexCopy = index;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "<Error> Could not get the index for power sensor %@", buf, 0xCu);
      return v9;
    }
  }

  return v6;
}

- (int)callbackSensorInterval:(__CFString *)interval
{
  callbackSensorIntervals = self->_callbackSensorIntervals;
  if (callbackSensorIntervals)
  {
    v5 = 0;
    sub_100002A20(callbackSensorIntervals, interval, kCFNumberIntType, &v5);
    LODWORD(callbackSensorIntervals) = 1000000 * v5;
  }

  return callbackSensorIntervals;
}

- (int)indexForTempSensorKey:(__CFString *)key
{
  tempSensors = self->_tempSensors;
  if (tempSensors)
  {
    Count = CFArrayGetCount(tempSensors);
    if (Count >= 1)
    {
      v7 = 0;
      v8 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_tempSensors, v7);
        if (ValueAtIndex)
        {
          Value = CFDictionaryGetValue(self->_serviceToName, ValueAtIndex);
          if (Value)
          {
            if (CFStringCompare(Value, key, 0) == kCFCompareEqualTo)
            {
              return v7;
            }
          }

          else
          {
            v12 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_100050DDC(buf, &v17, v12);
            }
          }
        }

        else
        {
          v11 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100050E2C(v14, &v15, v11);
          }
        }

        ++v7;
      }

      while (v8 != v7);
    }
  }

  LODWORD(v7) = -1;
  return v7;
}

- (int)temperatureForKey:(__CFString *)key
{
  if (!self->_tempSensors)
  {
    return -32768;
  }

  v4 = [(HidSensors *)self indexForTempSensorKey:key];
  if ((v4 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100050E7C();
    }

    return -32768;
  }

  if (!CFArrayGetValueAtIndex(self->_tempSensors, v4))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100050F7C();
    }

    return -32768;
  }

  v5 = IOHIDServiceClientCopyEvent();
  if (!v5)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100050EFC();
    }

    return -32768;
  }

  v6 = v5;
  IOHIDEventGetFloatValue();
  v8 = (v7 * 100.0);
  CFRelease(v6);
  return v8;
}

- (int)getFilterTimeConstantForSensor:(int64_t)sensor
{
  if (sensor <= 63)
  {
    return self->filterParams[sensor].time_constant;
  }

  result = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100050FFC();
    return 0;
  }

  return result;
}

- (BOOL)isTempSensorDataValid:(__CFString *)valid value:(int)value
{
  v4 = value + 3999;
  if ((value + 3999) >= 0x4A37)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051070(valid, value, v7);
    }
  }

  return v4 < 0x4A37;
}

- (void)createHIDEventSystemObject
{
  if (!self->_hidEventSystem)
  {
    v3 = IOHIDEventSystemClientCreate();
    self->_hidEventSystem = v3;
    if (v3)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v5 = sub_100033514(65280, 5);
      if (v5)
      {
        v6 = v5;
        CFArrayAppendValue(Mutable, v5);
        CFRelease(v6);
      }

      v7 = sub_100033514(65288, 1);
      if (v7)
      {
        v8 = v7;
        CFArrayAppendValue(Mutable, v7);
        CFRelease(v8);
      }

      v9 = sub_100033514(32, 49);
      if (v9)
      {
        v10 = v9;
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v10);
      }

      if (Mutable)
      {
        hidEventSystem = self->_hidEventSystem;
        IOHIDEventSystemClientSetMatchingMultiple();
        CFRelease(Mutable);
        v12 = self->_hidEventSystem;

        IOHIDEventSystemClientScheduleWithRunLoop();
      }

      else
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_1000511AC();
        }

        CFRelease(self->_hidEventSystem);
        self->_hidEventSystem = 0;
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000511E8();
    }
  }
}

- (__CFArray)copySensorArray
{
  v3 = IOHIDEventSystemClientCopyServices(self->_hidEventSystem);
  v4 = v3;
  if (!v3 || (v5 = CFGetTypeID(v3), v5 != CFArrayGetTypeID()) || CFArrayGetCount(v4) <= 0)
  {
    if (self->_hidEventSystem)
    {
      IOHIDEventSystemClientUnscheduleWithRunLoop();
      CFRelease(self->_hidEventSystem);
      self->_hidEventSystem = 0;
    }

    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051224();
      if (!v4)
      {
        return 0;
      }
    }

    else if (!v4)
    {
      return 0;
    }

    v13 = v4;
LABEL_25:
    CFRelease(v13);
    return 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (CFArrayGetCount(v4) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
      v9 = sub_1000335E8(ValueAtIndex, @"PrimaryUsage");
      v10 = sub_1000335E8(ValueAtIndex, @"PrimaryUsagePage");
      v12 = v10 == 32 || v10 == 65288 || v10 == 65280;
      if (v12 && v9 <= 0x31 && ((1 << v9) & 0x2000000000022) != 0)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      ++v7;
    }

    while (CFArrayGetCount(v4) > v7);
  }

  CFRelease(v4);
  if (!CFArrayGetCount(Mutable))
  {
    v13 = Mutable;
    goto LABEL_25;
  }

  return Mutable;
}

- (void)handleTemperatureEvent:(int)event service:(__IOHIDServiceClient *)service
{
  callbackTemperaturesQueue = self->_callbackTemperaturesQueue;
  if (callbackTemperaturesQueue)
  {
    if (self->_serviceToName)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E354;
      block[3] = &unk_100085218;
      block[4] = self;
      block[5] = service;
      eventCopy = event;
      dispatch_async(callbackTemperaturesQueue, block);
    }
  }
}

- (char)readHIDDebugDictionaryAndReturnErrorCode
{
  v2 = malloc_type_malloc(0x32uLL, 0x1A2E8195uLL);
  *v2 = 0;
  valuePtr = 0;
  theString1 = 0;
  v3 = IOHIDEventSystemClientCreate();
  IOHIDEventSystemClientSetMatching();
  v4 = IOHIDEventSystemClientCopyServices(v3);
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v7 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"ServicePluginDebug");
      if (v7)
      {
        v8 = v7;
        v9 = CFGetTypeID(v7);
        if (v9 == CFDictionaryGetTypeID() && sub_100031DDC(v8, @"PluginName", &theString1) && CFStringCompare(theString1, @"AppleHDQGasGaugeHID", 0) == kCFCompareEqualTo)
        {
          v23 = 0;
          v24 = 0;
          __tp.tv_sec = 0;
          __tp.tv_nsec = 0;
          v11 = 0;
          if (!clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp))
          {
            v11 = __tp.tv_nsec / 1000 + 1000000 * __tp.tv_sec;
          }

          v12 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v8;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<Notice> %@HID Debug Dict", buf, 0xCu);
          }

          Value = CFDictionaryGetValue(v8, @"ErrorHistory");
          if (sub_100002A20(v8, @"LastCalledTs", kCFNumberCFIndexType, &v24) && sub_100002A20(v8, @"LastSuccessTs", kCFNumberCFIndexType, &v23) && ((v11 - v23) <= 0x98967FF ? (v14 = 2) : (v14 = 3), (v11 - v24) <= 0x98967FF ? (v15 = (v11 - v23) > 0x98967FF) : (v15 = v14), v15))
          {
            v16 = (v11 - v23) <= 0x98967FF;
            __sprintf_chk(v26, 0, 2uLL, "%d", v15);
            sub_100033324(v2, "EC: ", 0x32uLL);
            sub_100033324(v2, v26, 0x32uLL);
          }

          else
          {
            v16 = 1;
          }

          if (Value)
          {
            v17 = CFGetTypeID(Value);
            if (v17 == CFArrayGetTypeID() && !v16)
            {
              sub_100033324(v2, " EH: ", 0x32uLL);
              Count = CFArrayGetCount(Value);
              v20 = CFArrayGetValueAtIndex(Value, Count - 1);
              CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
              __sprintf_chk(buf, 0, 0x32uLL, "%u", valuePtr);
              sub_100033324(v2, buf, 0x32uLL);
              if (Count >= 2)
              {
                v21 = CFArrayGetValueAtIndex(Value, Count - 2);
                CFNumberGetValue(v21, kCFNumberIntType, &valuePtr + 4);
                __sprintf_chk(buf, 0, 0x32uLL, "%u", HIDWORD(valuePtr));
                sub_100033324(v2, " ", 0x32uLL);
                sub_100033324(v2, buf, 0x32uLL);
              }
            }
          }
        }

        CFRelease(v8);
      }
    }

    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

@end