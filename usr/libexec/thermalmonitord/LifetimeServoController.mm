@interface LifetimeServoController
- (BOOL)getFastDieEngagementStatus;
- (LifetimeServoController)initWithParams:(id)params sensorList:(__CFArray *)list;
- (__CFDictionary)newChannelForDriver:(const char *)driver channelID:(unint64_t)d;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (int)initPerfStateVoltages:(const char *)voltages propertyName:(__CFString *)name voltages:(int *)a5 maxVoltageCount:(int)count;
- (int)initPerfStateVoltagesCPU;
- (int)writeToDriverService:(unsigned int)service key:(__CFString *)key value:(int64_t)value;
- (void)initPerfStateReportingCPU;
- (void)initPerfStateReportingGPU;
- (void)initSensorList:(__CFArray *)list;
- (void)overrideInstantaneousAF:(id)f value:(float)value;
- (void)updateCoreAnalyticsInfo;
- (void)updateForTempMax:(int)max tempAverage:(int)average;
- (void)updatePerfStateReportingCPU;
- (void)updatePerfStateReportingGPU;
- (void)updateSystemPowerState:(BOOL)state;
@end

@implementation LifetimeServoController

- (LifetimeServoController)initWithParams:(id)params sensorList:(__CFArray *)list
{
  v53.receiver = self;
  v53.super_class = LifetimeServoController;
  v6 = [(LifetimeServoController *)&v53 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  *(v6 + 372) = 0;
  *(v6 + 91) = -1;
  *(v6 + 92) = -1;
  [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v6];
  v7[398] = sub_100031D64(params, @"useRestoreSafePartition", 0);
  v8 = sub_100031D64(params, @"updateCPUFastDieTargetPMP", 0);
  v7[397] = v8;
  if (v8)
  {
    v9 = "ApplePMP";
  }

  else
  {
    v9 = "AppleDieTempController";
  }

  v10 = IOServiceMatching(v9);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v10);
  *(v7 + 2) = MatchingService;
  if (!MatchingService && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100059EC0();
  }

  v12 = sub_100031D64(params, @"updateGPUFastDieTarget", 0);
  v7[396] = v12;
  if (v12)
  {
    v13 = IOServiceMatching(off_1000A2470);
    v14 = IOServiceGetMatchingService(kIOMainPortDefault, v13);
    *(v7 + 3) = v14;
    if (!v14 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100059EFC();
    }
  }

  v15 = time(0);
  *(v7 + 50) = v15;
  if (v15 == -1 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100059F38();
  }

  *(v7 + 4) = 0;
  v16 = (v7 + 16);
  if (sub_100002A20(params, @"variant", kCFNumberIntType, v7 + 16))
  {
    if (!byte_1000AB2F8)
    {
      goto LABEL_23;
    }

    v17 = qword_1000AB718;
    if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v18 = *v16;
    *buf = 67109120;
    v55 = v18;
    v19 = "<Notice> LSController: variant %d";
    v20 = v17;
    v21 = 8;
  }

  else
  {
    if (!byte_1000AB2F8)
    {
      goto LABEL_23;
    }

    v22 = qword_1000AB718;
    if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v19 = "<Notice> LSController: variant classic";
    v20 = v22;
    v21 = 2;
  }

  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_23:
  [v7 initPerfStateReportingCPU];
  v23 = 0;
  *(v7 + 50) = [v7 initPerfStateVoltagesCPU];
  v24 = byte_1000AB2F8;
  do
  {
    if (v24)
    {
      v25 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *&v7[4 * v23 + 72];
        *buf = 67109376;
        v55 = v23;
        v56 = 1024;
        v57 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<Notice> LSController: CPU[%d] %d", buf, 0xEu);
        v24 = byte_1000AB2F8;
      }

      else
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 0;
    }

    ++v23;
  }

  while (v23 != 16);
  v27 = @"com.apple.cltm";
  if (v7[398])
  {
    if (&_lookupPathForPersistentData)
    {
      bzero(buf, 0x400uLL);
      lookupPathForPersistentData();
      v28 = +[NSFileManager defaultManager];
      v29 = [NSString stringWithFormat:@"%s", buf];
      v52 = 0;
      if ([(NSFileManager *)v28 fileExistsAtPath:v29 isDirectory:0]|| [(NSFileManager *)v28 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:&v52])
      {
        v27 = [NSString stringWithFormat:@"%s/%@", buf, @"com.apple.cltm"];
        goto LABEL_35;
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100059F74();
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A020();
    }

    return 0;
  }

LABEL_35:
  v30 = *v16;
  if (v30 == 2)
  {
    [v7 initPerfStateReportingGPU];
    v41 = 0;
    *(v7 + 90) = [v7 initPerfStateVoltagesGPU];
    v42 = byte_1000AB2F8;
    do
    {
      if (v42)
      {
        v43 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *&v7[4 * v41 + 232];
          *buf = 67109376;
          v55 = v41;
          v56 = 1024;
          v57 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "<Notice> LSController GPU[%d] %d", buf, 0xEu);
          v42 = byte_1000AB2F8;
        }

        else
        {
          v42 = 1;
        }
      }

      else
      {
        v42 = 0;
      }

      ++v41;
    }

    while (v41 != 16);
    v35 = [params objectForKeyedSubscript:@"params"];
    *(v7 + 3) = 0;
    v36 = [LifetimeServoControlLoop alloc];
    v37 = [v35 objectForKeyedSubscript:@"coreTypeP"];
    v38 = *(v7 + 50);
    v39 = *(v7 + 52);
    v40 = v7 + 72;
  }

  else
  {
    if (v30 != 1)
    {
      if (v30)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100059FB0();
        }
      }

      else
      {
        *(v7 + 3) = 0;
        *(v7 + 4) = [[LifetimeServoControlLoop alloc] initWithParams:params perfStateVoltages:v7 + 72 voltageCount:*(v7 + 50) loopType:0 persistancePath:v27 filer:*(v7 + 52)];
        *(v7 + 5) = 0;
      }

      goto LABEL_60;
    }

    [v7 initPerfStateReportingGPU];
    v31 = 0;
    *(v7 + 90) = [v7 initPerfStateVoltagesGPU];
    v32 = byte_1000AB2F8;
    do
    {
      if (v32)
      {
        v33 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *&v7[4 * v31 + 232];
          *buf = 67109376;
          v55 = v31;
          v56 = 1024;
          v57 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "<Notice> LSController GPU[%d] %d", buf, 0xEu);
          v32 = byte_1000AB2F8;
        }

        else
        {
          v32 = 1;
        }
      }

      else
      {
        v32 = 0;
      }

      ++v31;
    }

    while (v31 != 16);
    v35 = [params objectForKeyedSubscript:@"params"];
    *(v7 + 3) = -[LifetimeServoControlLoop initWithParams:perfStateVoltages:voltageCount:loopType:persistancePath:filer:]([LifetimeServoControlLoop alloc], "initWithParams:perfStateVoltages:voltageCount:loopType:persistancePath:filer:", [v35 objectForKeyedSubscript:@"coreTypeE"], v7 + 72, 3, 1, v27, *(v7 + 52));
    v36 = [LifetimeServoControlLoop alloc];
    v37 = [v35 objectForKeyedSubscript:@"coreTypeP"];
    v38 = (*(v7 + 50) - 3);
    v39 = *(v7 + 52);
    v40 = v7 + 84;
  }

  *(v7 + 4) = [(LifetimeServoControlLoop *)v36 initWithParams:v37 perfStateVoltages:v40 voltageCount:v38 loopType:2 persistancePath:v27 filer:v39];
  *(v7 + 5) = -[LifetimeServoControlLoop initWithParams:perfStateVoltages:voltageCount:loopType:persistancePath:filer:]([LifetimeServoControlLoop alloc], "initWithParams:perfStateVoltages:voltageCount:loopType:persistancePath:filer:", [v35 objectForKeyedSubscript:@"coreTypeG"], v7 + 232, *(v7 + 90), 3, v27, *(v7 + 52));
  [v7 initSensorList:list];
LABEL_60:
  [*(v7 + 3) updatePersistedState];
  [*(v7 + 4) updatePersistedState];
  [*(v7 + 5) updatePersistedState];
  *(v7 + 95) = [*(v7 + 3) dieTempTarget];
  *(v7 + 96) = [*(v7 + 4) dieTempTarget];
  *(v7 + 97) = [*(v7 + 5) dieTempTarget];
  v45 = dispatch_queue_create("com.apple.thermalmonitor.lservo", 0);
  if (v45)
  {
    v46 = v45;
    v47 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v45);
    *(v7 + 51) = v47;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000449A0;
    handler[3] = &unk_100085260;
    handler[4] = v7;
    dispatch_source_set_event_handler(v47, handler);
    CFRelease(v46);
    v48 = *(v7 + 51);
    v49 = dispatch_time(0x8000000000000000, 3600000000000);
    dispatch_source_set_timer(v48, v49, 0x34630B8A000uLL, 0x2540BE400uLL);
    dispatch_resume(*(v7 + 51));
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057BA8();
  }

  return v7;
}

- (__CFDictionary)newChannelForDriver:(const char *)driver channelID:(unint64_t)d
{
  v4 = IOServiceMatching(driver);
  if (v4)
  {
    v5 = v4;
    v6 = IOReportCopyChannelsWithID();
    CFRelease(v5);
    return v6;
  }

  else
  {
    sub_10005A05C();
    return v8;
  }
}

- (void)initPerfStateReportingCPU
{
  self->_subscribedChannelsCPU = 0;
  self->_subscriptionCPU = 0;
  self->_lastReadingCPU = 0;
  if (self->_controllerVariant == 2)
  {
    v3 = 0x43505620564F4C54;
  }

  else
  {
    v3 = 0x43505520564F4C54;
  }

  v4 = [(LifetimeServoController *)self newChannelForDriver:"ApplePMGR" channelID:v3];
  if (v4)
  {
    v5 = v4;
    Subscription = IOReportCreateSubscription();
    self->_subscriptionCPU = Subscription;
    if (Subscription)
    {
      subscribedChannelsCPU = self->_subscribedChannelsCPU;
      self->_lastReadingCPU = IOReportCreateSamples();
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A110();
    }

    CFRelease(v5);
  }

  else
  {
    sub_10005A14C();
  }
}

- (void)initPerfStateReportingGPU
{
  self->_subscribedChannelsGPU = 0;
  self->_subscriptionGPU = 0;
  self->_lastReadingGPU = 0;
  v3 = [(LifetimeServoController *)self newChannelForDriver:off_1000A2470 channelID:0x4750555048];
  if (v3)
  {
    v4 = v3;
    Subscription = IOReportCreateSubscription();
    self->_subscriptionGPU = Subscription;
    if (Subscription)
    {
      subscribedChannelsGPU = self->_subscribedChannelsGPU;
      self->_lastReadingGPU = IOReportCreateSamples();
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A1A8();
    }

    CFRelease(v4);
  }

  else
  {
    sub_10005A1E4();
  }
}

- (int)initPerfStateVoltagesCPU
{
  if (self->_controllerVariant == 2)
  {
    v2 = @"voltage-states5";
  }

  else
  {
    v2 = @"voltage-states1";
  }

  return [(LifetimeServoController *)self initPerfStateVoltages:":/arm-io/pmgr" propertyName:v2 voltages:self->_perfStateVoltagesCPU maxVoltageCount:16];
}

- (int)initPerfStateVoltages:(const char *)voltages propertyName:(__CFString *)name voltages:(int *)a5 maxVoltageCount:(int)count
{
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__str = 0u;
  v24 = 0u;
  v9 = snprintf(__str, 0x200uLL, "%s%s", "IODeviceTree", voltages);
  if (v9 <= 0)
  {
    sub_10005A488();
    return v22;
  }

  if (v9 >= 0x200)
  {
    sub_10005A3EC();
    return v22;
  }

  v10 = IORegistryEntryFromPath(kIOMainPortDefault, __str);
  if (!v10)
  {
    sub_10005A350();
    return v22;
  }

  v11 = v10;
  v12 = sub_100005E68(name, v10);
  if (v12)
  {
    v13 = v12;
    BytePtr = CFDataGetBytePtr(v12);
    Length = CFDataGetLength(v13);
    v16 = Length + 7;
    if (Length >= 0)
    {
      v16 = Length;
    }

    if (v16 >> 3 <= count)
    {
      count = v16 >> 3;
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A240();
    }

    if (count >= 1)
    {
      countCopy = count;
      v18 = (BytePtr + 4);
      do
      {
        v20 = *v18;
        v18 += 2;
        v19 = v20;
        if (v20)
        {
          *a5 = v19;
        }

        ++a5;
        --countCopy;
      }

      while (countCopy);
    }

    CFRelease(v13);
  }

  else
  {
    sub_10005A2B4();
    count = v22;
  }

  IOObjectRelease(v11);
  return count;
}

- (void)initSensorList:(__CFArray *)list
{
  if (self->_controllerVariant)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:0];
    v20 = [[NSMutableArray alloc] initWithCapacity:0];
    v19 = [[NSMutableArray alloc] initWithCapacity:0];
    if (CFArrayGetCount(list) >= 1)
    {
      v5 = 0;
      theArray = list;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(list, v5);
        Value = CFDictionaryGetValue(ValueAtIndex, @"lsSensorType");
        if (Value)
        {
          v8 = Value;
          if (CFArrayGetCount(Value) >= 1)
          {
            v9 = 0;
            do
            {
              v10 = CFArrayGetValueAtIndex(v8, v9);
              if (CFStringCompare(v10, @"coreTypeE", 0) == kCFCompareEqualTo)
              {
                [v4 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v5)}];
                v11 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  v22 = v5;
                  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> sensor coreTypeE index %d", buf, 8u);
                }
              }

              v12 = CFArrayGetValueAtIndex(v8, v9);
              if (CFStringCompare(v12, @"coreTypeP", 0) == kCFCompareEqualTo)
              {
                [v20 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v5)}];
                v13 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  v22 = v5;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<Notice> sensor coreTypeP index %d", buf, 8u);
                }
              }

              v14 = CFArrayGetValueAtIndex(v8, v9);
              if (CFStringCompare(v14, @"coreTypeG", 0) == kCFCompareEqualTo)
              {
                [v19 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v5)}];
                v15 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  v22 = v5;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<Notice> sensor coreTypeG index %d", buf, 8u);
                }
              }

              ++v9;
            }

            while (CFArrayGetCount(v8) > v9);
          }
        }

        ++v5;
        list = theArray;
      }

      while (CFArrayGetCount(theArray) > v5);
    }

    if ([v4 count])
    {
      [v17[3] initSensorIndexSet:{objc_msgSend(v4, "copy")}];
    }

    if ([v20 count])
    {
      [v17[4] initSensorIndexSet:{objc_msgSend(v20, "copy")}];
    }

    if ([v19 count])
    {
      [v17[5] initSensorIndexSet:{objc_msgSend(v19, "copy")}];
    }
  }
}

- (int)writeToDriverService:(unsigned int)service key:(__CFString *)key value:(int64_t)value
{
  valuePtr = value;
  if (!service)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A5DC();
    }

    return 5;
  }

  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  if (!v7)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A5A0();
    }

    return 5;
  }

  v8 = v7;
  v9 = IORegistryEntrySetCFProperty(service, key, v7);
  if (v9 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005A524();
  }

  CFRelease(v8);
  return v9;
}

- (void)updateForTempMax:(int)max tempAverage:(int)average
{
  LODWORD(v4) = average;
  [(LifetimeServoController *)self updatePerfStateReportingCPU];
  if (self->_gCoreLoop)
  {
    [(LifetimeServoController *)self updatePerfStateReportingGPU];
  }

  override_tempMax = self->_override_tempMax;
  if (override_tempMax == -1)
  {
    maxCopy = max;
  }

  else
  {
    maxCopy = override_tempMax;
  }

  override_tempAverage = self->_override_tempAverage;
  if (override_tempAverage == -1)
  {
    v4 = v4;
  }

  else
  {
    v4 = override_tempAverage;
  }

  controllerVariant = self->_controllerVariant;
  switch(controllerVariant)
  {
    case 2:
      v16 = [(LifetimeServoControlLoop *)self->_pCoreLoop updateTempMax:maxCopy];
      [(LifetimeServoControlLoop *)self->_pCoreLoop updateForPerfStateResidency:self->_perfStateFractionCPU count:self->_perfStateCountCPU tempMax:v16 tempAverage:v4];
      [(LifetimeServoControlLoop *)self->_gCoreLoop updateForPerfStateResidency:self->_perfStateFractionGPU count:self->_perfStateCountGPU tempMax:[(LifetimeServoControlLoop *)self->_gCoreLoop updateTempMax:v16] tempAverage:v4];
      dieTempTarget = [(LifetimeServoControlLoop *)self->_pCoreLoop dieTempTarget];
LABEL_16:
      self->_dieTempTargetCPU = dieTempTarget;
LABEL_17:
      dieTempTarget2 = [(LifetimeServoControlLoop *)self->_gCoreLoop dieTempTarget];
      goto LABEL_19;
    case 1:
      v13 = [(LifetimeServoControlLoop *)self->_eCoreLoop updateTempMax:maxCopy];
      [(LifetimeServoControlLoop *)self->_eCoreLoop updateForPerfStateResidency:self->_perfStateFractionCPU count:3 tempMax:v13 tempAverage:v4];
      v14 = [(LifetimeServoControlLoop *)self->_pCoreLoop updateTempMax:v13];
      [(LifetimeServoControlLoop *)self->_pCoreLoop updateForPerfStateResidency:&self->_perfStateFractionCPU[3] count:(self->_perfStateCountCPU - 3) tempMax:v14 tempAverage:v4];
      [(LifetimeServoControlLoop *)self->_gCoreLoop updateForPerfStateResidency:self->_perfStateFractionGPU count:self->_perfStateCountGPU tempMax:[(LifetimeServoControlLoop *)self->_gCoreLoop updateTempMax:v14] tempAverage:v4];
      self->_dieTempTargetCPU = [(LifetimeServoControlLoop *)self->_pCoreLoop dieTempTarget];
      dieTempTarget = [(LifetimeServoControlLoop *)self->_eCoreLoop dieTempTarget];
      if (dieTempTarget >= self->_dieTempTargetCPU)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    case 0:
      [(LifetimeServoControlLoop *)self->_pCoreLoop updateForPerfStateResidency:self->_perfStateFractionCPU count:self->_perfStateCountCPU tempMax:maxCopy tempAverage:v4];
      dieTempTarget2 = [(LifetimeServoControlLoop *)self->_pCoreLoop dieTempTarget];
      v12 = 372;
      goto LABEL_20;
  }

  dieTempTarget2 = 9500;
  self->_dieTempTargetCPU = 9500;
LABEL_19:
  v12 = 376;
LABEL_20:
  *(&self->super.isa + v12) = dieTempTarget2;
  override_dieTempTarget = self->_override_dieTempTarget;
  if (override_dieTempTarget != -1)
  {
    self->_dieTempTargetCPU = override_dieTempTarget;
    self->_dieTempTargetGPU = override_dieTempTarget;
  }

  if (self->_cpuDieTempCtlService)
  {
    if ([(LifetimeServoControlLoop *)self->_eCoreLoop loopIsActive]|| [(LifetimeServoControlLoop *)self->_pCoreLoop loopIsActive]|| (v18 = [(LifetimeServoControlLoop *)self->_gCoreLoop loopIsActive], override_dieTempTarget != -1) || v18)
    {
      if (dword_1000AB26C != self->_dieTempTargetCPU)
      {
        [(LifetimeServoController *)self writeToDriverService:self->_cpuDieTempCtlService key:@"LifetimeServoDieTemperatureTargetPropertyKey" value:?];
        dword_1000AB26C = self->_dieTempTargetCPU;
      }

      if (dword_1000AB270 != self->_dieTempTargetGPU && self->updateGPUFastDieTarget)
      {
        [(LifetimeServoController *)self writeToDriverService:self->_gpuDieTempCtlService key:@"LifetimeServoFastDieTemperatureTarget" value:?];
        dword_1000AB270 = self->_dieTempTargetGPU;
      }
    }
  }

  [(LifetimeServoController *)self updateCoreAnalyticsInfo];
}

- (void)overrideInstantaneousAF:(id)f value:(float)value
{
  if ([f isEqualToString:@"LifetimeServoInstantaneousAF_E"])
  {
    eCoreLoop = self->_eCoreLoop;
LABEL_7:
    *&v7 = value;

    [(LifetimeServoControlLoop *)eCoreLoop overrideInstantaneousAF:v7];
    return;
  }

  if ([f isEqualToString:@"LifetimeServoInstantaneousAF_P"])
  {
    eCoreLoop = self->_pCoreLoop;
    goto LABEL_7;
  }

  if ([f isEqualToString:@"LifetimeServoInstantaneousAF_G"])
  {
    eCoreLoop = self->_gCoreLoop;
    goto LABEL_7;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057FD0();
  }
}

- (void)updateSystemPowerState:(BOOL)state
{
  if (state)
  {
    if (self->_lastSleepEntry == -1)
    {
      if (byte_1000AB2F8 == 1)
      {
        v9 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          v10 = "<Notice> LSController: last update time unavailable";
          v11 = v9;
          v12 = 2;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
        }
      }
    }

    else
    {
      v4 = time(0);
      if (v4 == -1)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005A780();
        }
      }

      else
      {
        v5 = v4;
        lastSleepEntry = self->_lastSleepEntry;
        v7 = v4 - lastSleepEntry;
        if (v4 < lastSleepEntry)
        {
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_10005A744();
          }

          return;
        }

        [(LifetimeServoControlLoop *)self->_pCoreLoop processSleepInterval:v7];
        [(LifetimeServoControlLoop *)self->_gCoreLoop processSleepInterval:v7];
        [(LifetimeServoControlLoop *)self->_eCoreLoop processSleepInterval:v7];
        if (byte_1000AB2F8 == 1)
        {
          v13 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            v14 = self->_lastSleepEntry;
            v15 = 134218496;
            v16 = v14;
            v17 = 2048;
            v18 = v5;
            v19 = 2048;
            v20 = v7;
            v10 = "<Notice> LSController: lastSleepEntry %ld, now %ld, delta %ld";
            v11 = v13;
            v12 = 32;
            goto LABEL_18;
          }
        }
      }
    }
  }

  else
  {
    v8 = time(0);
    self->_lastSleepEntry = v8;
    if (v8 == -1 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A708();
    }
  }
}

- (BOOL)getFastDieEngagementStatus
{
  v2 = +[PowerZoneTelemetry sharedInstance];

  return [(PowerZoneTelemetry *)v2 isFastDieEngaged];
}

- (void)updateCoreAnalyticsInfo
{
  [(LifetimeServoController *)self getFastDieEngagementStatus];
  dieTempTarget = [(LifetimeServoControlLoop *)self->_eCoreLoop dieTempTarget];
  v4 = dieTempTarget - [(LifetimeServoControlLoop *)self->_eCoreLoop defaultDieTempTarget];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  dieTempTarget2 = [(LifetimeServoControlLoop *)self->_pCoreLoop dieTempTarget];
  v7 = dieTempTarget2 - [(LifetimeServoControlLoop *)self->_pCoreLoop defaultDieTempTarget];
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  dieTempTarget3 = [(LifetimeServoControlLoop *)self->_gCoreLoop dieTempTarget];
  v10 = dieTempTarget3 - [(LifetimeServoControlLoop *)self->_gCoreLoop defaultDieTempTarget];
  if (v10 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -v10;
  }

  v12 = [(LifetimeServoControlLoop *)self->_eCoreLoop dieTempTarget]- self->_previousECoreDieTempTarget;
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  v14 = [(LifetimeServoControlLoop *)self->_pCoreLoop dieTempTarget]- self->_previousPCoreDieTempTarget;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  v16 = [(LifetimeServoControlLoop *)self->_gCoreLoop dieTempTarget]- self->_previousGCoreDieTempTarget;
  if (v16 < 0)
  {
    v16 = -v16;
  }

  if ((v13 > 1 || v15 > 1 || v16 >= 2) && (v5 / 0xC8 != dword_1000AB274 || v8 / 0xC8 != dword_1000AB278 || v11 / 0xC8 != dword_1000AB27C))
  {
    AnalyticsSendEventLazy();
    self->_previousECoreDieTempTarget = [(LifetimeServoControlLoop *)self->_eCoreLoop dieTempTarget];
    self->_previousPCoreDieTempTarget = [(LifetimeServoControlLoop *)self->_pCoreLoop dieTempTarget];
    self->_previousGCoreDieTempTarget = [(LifetimeServoControlLoop *)self->_gCoreLoop dieTempTarget];
    dword_1000AB274 = v5 / 0xC8;
    dword_1000AB278 = v8 / 0xC8;
    dword_1000AB27C = v11 / 0xC8;
  }
}

- (__CFString)copyHeaderForIndex:(int)index
{
  v3 = @"LS-target-GPU";
  if (index != 1)
  {
    v3 = 0;
  }

  if (index)
  {
    return v3;
  }

  else
  {
    return @"LS-target-CPU";
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  if (!index)
  {
    v3 = 372;
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", *(&self->super.isa + v3));
  }

  if (index == 1)
  {
    v3 = 376;
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", *(&self->super.isa + v3));
  }

  return 0;
}

- (void)updatePerfStateReportingCPU
{
  if (self->_subscriptionCPU)
  {
    if (self->_subscribedChannelsCPU)
    {
      *&self->_perfStateFractionCPU[12] = 0u;
      *&self->_perfStateFractionCPU[8] = 0u;
      *&self->_perfStateFractionCPU[4] = 0u;
      *self->_perfStateFractionCPU = 0u;
      Samples = IOReportCreateSamples();
      lastReadingCPU = self->_lastReadingCPU;
      SamplesDelta = IOReportCreateSamplesDelta();
      CFRelease(self->_lastReadingCPU);
      self->_lastReadingCPU = Samples;
      sub_1000461E8();
      IOReportIterate();
      CFRelease(SamplesDelta);
    }
  }
}

- (void)updatePerfStateReportingGPU
{
  if (self->_subscriptionGPU)
  {
    if (self->_subscribedChannelsGPU)
    {
      *&self->_perfStateFractionGPU[8] = 0u;
      *&self->_perfStateFractionGPU[12] = 0u;
      *self->_perfStateFractionGPU = 0u;
      *&self->_perfStateFractionGPU[4] = 0u;
      Samples = IOReportCreateSamples();
      lastReadingGPU = self->_lastReadingGPU;
      SamplesDelta = IOReportCreateSamplesDelta();
      CFRelease(self->_lastReadingGPU);
      self->_lastReadingGPU = Samples;
      sub_1000461E8();
      IOReportIterate();
      CFRelease(SamplesDelta);
    }
  }
}

@end