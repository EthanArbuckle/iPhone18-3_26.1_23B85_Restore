@interface TGraphSampler
+ (id)sharedInstance;
- (BOOL)shouldLogSensor:(__CFString *)sensor;
- (BOOL)shouldLogSensorForLiteMode:(__CFString *)mode;
- (TGraphSampler)init;
- (__CFString)getTGraphData:(int)data;
- (void)addtGraphDataSource:(id)source;
- (void)dealloc;
- (void)genTGraphData;
- (void)genTGraphHeader;
- (void)logToPowerlog;
- (void)setProduct:(id)product withComponents:(id)components andHotspotSupervisors:(id)supervisors;
- (void)setTGraphDataString:(__CFString *)string;
- (void)updateAppleCareState:(int)state value:(int)value;
- (void)updateLiteModePowerLogDictionaryForSensors;
- (void)updatePowerLogDictionaryForSensors;
- (void)updatePowerlogLiteMode:(int64_t)mode pressureLevel:(int64_t)level;
- (void)updatePowerlogMiscState:(int)state value:(int)value;
- (void)updateSubkeyController:(id)controller forControlList:(id)list;
@end

@implementation TGraphSampler

+ (id)sharedInstance
{
  if (qword_1000AABD0 != -1)
  {
    sub_10005269C();
  }

  return qword_1000AABD8;
}

- (void)genTGraphData
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    sub_1000077C8(Mutable, @"%d", 50 * [(CommonProduct *)self->productObj thermalState]);
    if ([(CommonProduct *)self->productObj totalSensors]>= 1)
    {
      v5 = 0;
      do
      {
        sub_1000077C8(v4, @"%d", *(&qword_1000AB824 + v5));
        if (byte_1000AB720 == 1 && [+[HidSensors getFilterTimeConstantForSensor:"getFilterTimeConstantForSensor:"]
        {
          sub_1000077C8(v4, @"%d", dword_1000AB724[v5]);
        }

        ++v5;
      }

      while (v5 < [(CommonProduct *)self->productObj totalSensors]);
    }

    if ([(CommonProduct *)self->productObj powerSensors]>= 1)
    {
      v6 = 0;
      do
      {
        sub_10001E044(v4, @"%f", dbl_1000ABC40[v6++]);
      }

      while (v6 < [(CommonProduct *)self->productObj powerSensors]);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    listOfSupervisorControl = self->listOfSupervisorControl;
    v8 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(listOfSupervisorControl);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          if ([v12 numberOfFields] >= 1)
          {
            v13 = 0;
            do
            {
              v14 = [v12 copyFieldCurrentValueForIndex:v13];
              CFArrayAppendValue(v4, v14);
              if (v14)
              {
                CFRelease(v14);
              }

              v13 = (v13 + 1);
            }

            while (v13 < [v12 numberOfFields]);
          }
        }

        v9 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v9);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    listofComponentControl = self->listofComponentControl;
    v16 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(listofComponentControl);
          }

          v20 = *(*(&v31 + 1) + 8 * j);
          if ([v20 numberOfFields] >= 1)
          {
            v21 = 0;
            do
            {
              v22 = [v20 copyFieldCurrentValueForIndex:v21];
              CFArrayAppendValue(v4, v22);
              if (v22)
              {
                CFRelease(v22);
              }

              v21 = (v21 + 1);
            }

            while (v21 < [v20 numberOfFields]);
          }
        }

        v17 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v17);
    }

    extratGraphDataSources = self->extratGraphDataSources;
    if (extratGraphDataSources && CFArrayGetCount(extratGraphDataSources) >= 1)
    {
      v24 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->extratGraphDataSources, v24);
        if ([ValueAtIndex numberOfFields] >= 1)
        {
          v26 = 0;
          do
          {
            v27 = [ValueAtIndex copyFieldCurrentValueForIndex:v26];
            CFArrayAppendValue(v4, v27);
            if (v27)
            {
              CFRelease(v27);
            }

            v26 = (v26 + 1);
          }

          while (v26 < [ValueAtIndex numberOfFields]);
        }

        ++v24;
      }

      while (CFArrayGetCount(self->extratGraphDataSources) > v24);
    }

    v28 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, v4, @", ");
    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @", %@", v28);
    [(TGraphSampler *)self setTGraphDataString:v29];
    if (v28)
    {
      CFRelease(v28);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    CFRelease(v4);
  }

  else
  {
    v30 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000526F4(v30);
    }
  }
}

- (void)logToPowerlog
{
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = v3 - self->lastLogTimestamp;
  powerlogQueue = self->_powerlogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007EA8;
  block[3] = &unk_100085260;
  block[4] = self;
  dispatch_async(powerlogQueue, block);
  v6 = self->_powerlogQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000080D4;
  v12[3] = &unk_100085AA8;
  v12[4] = self;
  v12[5] = v4;
  v12[6] = v3;
  dispatch_async(v6, v12);
  [(TGraphSampler *)self updateLiteModePowerLogDictionaryForSensors];
  v7 = qword_1000AB2F0 || [(CommonProduct *)self->productObj maxControlEffort]> 0 || self->gotDataToLogToLiteMode;
  v8 = ++dword_1000AABE0;
  if ((v7 | byte_1000AABE4))
  {
    v9 = 3;
  }

  else
  {
    v9 = 63;
  }

  if ((v9 & v8) == 0)
  {
    byte_1000AABE4 = v7;
    v10 = self->_powerlogQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001E660;
    v11[3] = &unk_100085260;
    v11[4] = self;
    dispatch_async(v10, v11);
  }
}

- (void)updateLiteModePowerLogDictionaryForSensors
{
  if (!self->gotDataToLogToLiteMode && self->_powerlogSubkeyController_Sensors_Components)
  {
    totalSensors = [(CommonProduct *)self->productObj totalSensors];
    if (totalSensors >= 1)
    {
      v4 = 0;
      v5 = totalSensors;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex([+[HidSensors sensorFourCharCode] sharedInstance];
        if (!ValueAtIndex || ![(TGraphSampler *)self shouldLogSensorForLiteMode:ValueAtIndex])
        {
          goto LABEL_15;
        }

        v7 = *(&qword_1000AB824 + v4);
        v8 = self + 4 * v4;
        v9 = *(v8 + 16);
        v10 = v7 - v9;
        if (v7 - v9 < 0)
        {
          v10 = v9 - v7;
        }

        if (v9 < dword_1000A22A4)
        {
          break;
        }

        if ((v10 & 0xFFFCu) >= 0x64)
        {
          goto LABEL_14;
        }

LABEL_15:
        if (v5 == ++v4)
        {
          goto LABEL_16;
        }
      }

      if (v7 < dword_1000A22A4 || (v10 & 0xFFFCu) <= 0x63)
      {
        goto LABEL_15;
      }

LABEL_14:
      self->gotDataToLogToLiteMode = 1;
      [PowerlogSubkeyController setIntValue:"setIntValue:forKey:" forKey:?];
      *(v8 + 16) = *(&qword_1000AB824 + v4);
      goto LABEL_15;
    }

LABEL_16:
    if (self->gotDataToLogToLiteMode)
    {
      [(PowerlogSubkeyController *)self->_powerlogSubkeyController_Sensors_Components setIntValue:sub_100006FB4() forKey:@"PG0B"];
      powerlogSubkeyController_Sensors_Components = self->_powerlogSubkeyController_Sensors_Components;

      [(PowerlogSubkeyController *)powerlogSubkeyController_Sensors_Components printPowerLogDictionary];
    }
  }
}

- (TGraphSampler)init
{
  v6.receiver = self;
  v6.super_class = TGraphSampler;
  v2 = [(TGraphSampler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->productObj = 0;
    v2->listofComponentControl = 0;
    v2->listOfSupervisorControl = 0;
    v2->extratGraphDataSources = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v3->tGraphDataString = 0;
    v3->isInternal = 0;
    v3->lastLogTimestamp = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v3->_powerlogSubkeyController_Hotspots = [[PowerlogSubkeyController alloc] initForSubkey:@"TGraph_HS"];
    v3->_powerlogSubkeyController_Components = [[PowerlogSubkeyController alloc] initForSubkey:@"TGraph_CP"];
    v3->_powerlogSubkeyController_Sensors = [[PowerlogSubkeyController alloc] initForSubkey:@"TGraph_S1"];
    v3->_powerlogSubkeyController_MiscInternalState = [[PowerlogSubkeyController alloc] initForSubkey:@"TGraph_EX"];
    v3->_powerlogSubkeyController_MiscExternalState = [[PowerlogSubkeyController alloc] initForSubkey:@"TGraph_S2"];
    v3->_powerlogSubkeyController_LiteMode = [[PowerlogSubkeyController alloc] initForSubkey:@"TGraph_Lite"];
    v3->_powerlogSubkeyController_HiP = [[PowerlogSubkeyController alloc] initForSubkey:@"TGraph_HiP"];
    v3->_powerlogSubkeyController_Sensors_Components = [[PowerlogSubkeyController alloc] initForSubkey:@"TGraph_SC"];
    v3->_powerlogQueue = dispatch_queue_create("com.apple.thermalmonitor.powerlog", 0);
    v4 = 0;
    v3->_appleCareState = [[NSMutableArray alloc] initWithCapacity:5];
    do
    {
      [(NSMutableArray *)v3->_appleCareState setObject:&off_10008D110 atIndexedSubscript:v4++];
    }

    while (v4 != 5);
    v3->_appleCareStateLastLogged = [[NSArray alloc] initWithArray:v3->_appleCareState];
  }

  return v3;
}

- (void)setProduct:(id)product withComponents:(id)components andHotspotSupervisors:(id)supervisors
{
  productObj = self->productObj;
  if (productObj)
  {
    CFRelease(productObj);
  }

  listofComponentControl = self->listofComponentControl;
  if (listofComponentControl)
  {
    CFRelease(listofComponentControl);
  }

  listOfSupervisorControl = self->listOfSupervisorControl;
  if (listOfSupervisorControl)
  {
    CFRelease(listOfSupervisorControl);
  }

  self->productObj = product;
  self->listofComponentControl = components;
  self->listOfSupervisorControl = supervisors;
  self->isInternal = sub_1000032F4();
}

- (void)dealloc
{
  [(TGraphSampler *)self setTGraphDataString:0];
  v3.receiver = self;
  v3.super_class = TGraphSampler;
  [(TGraphSampler *)&v3 dealloc];
}

- (void)addtGraphDataSource:(id)source
{
  extratGraphDataSources = self->extratGraphDataSources;
  if (extratGraphDataSources)
  {
    CFArrayAppendValue(extratGraphDataSources, source);
  }
}

- (void)updateSubkeyController:(id)controller forControlList:(id)list
{
  if (controller)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [list countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(list);
          }

          [controller setIntValue:objc_msgSend(*(*(&v10 + 1) + 8 * v9) forKey:{"getPowerlogFieldCurrentValue"), objc_msgSend(*(*(&v10 + 1) + 8 * v9), "getPowerlogKey")}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [list countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)shouldLogSensor:(__CFString *)sensor
{
  LODWORD(v4) = [+[HidSensors sharedInstance](HidSensors shouldRetrieveSensor:"shouldRetrieveSensor:", sensor];
  if (v4)
  {
    v5 = -1;
    for (i = &off_100085998; ; ++i)
    {
      v4 = CFStringCompare(sensor, *i, 0);
      if (v4 == kCFCompareEqualTo)
      {
        break;
      }

      if (++v5 == 10)
      {
        LOBYTE(v4) = 1;
        return v4;
      }
    }
  }

  return v4;
}

- (BOOL)shouldLogSensorForLiteMode:(__CFString *)mode
{
  if (CFStringCompare(mode, @"TG0B", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v4 == 12)
    {
      break;
    }

    v6 = CFStringCompare(mode, *(&off_1000859F0 + v4 + 1), 0);
    v4 = v5 + 1;
  }

  while (v6);
  return v5 < 0xC;
}

- (void)updatePowerLogDictionaryForSensors
{
  if (self->_powerlogSubkeyController_Sensors)
  {
    totalSensors = [(CommonProduct *)self->productObj totalSensors];
    if (totalSensors >= 1)
    {
      v4 = 0;
      v5 = totalSensors;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex([+[HidSensors sensorFourCharCode] sharedInstance];
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          if ([(TGraphSampler *)self shouldLogSensor:ValueAtIndex])
          {
            [(PowerlogSubkeyController *)self->_powerlogSubkeyController_Sensors setIntValue:*(&qword_1000AB824 + v4) forKey:v7];
          }
        }

        ++v4;
      }

      while (v5 != v4);
    }

    powerlogSubkeyController_Sensors = self->_powerlogSubkeyController_Sensors;
    v9 = sub_100006FB4();

    [(PowerlogSubkeyController *)powerlogSubkeyController_Sensors setIntValue:v9 forKey:@"PG0B"];
  }
}

- (void)setTGraphDataString:(__CFString *)string
{
  tGraphDataString = self->tGraphDataString;
  if (tGraphDataString)
  {
    CFRelease(tGraphDataString);
  }

  if (string)
  {
    v6 = CFRetain(string);
  }

  else
  {
    v6 = 0;
  }

  self->tGraphDataString = v6;
}

- (__CFString)getTGraphData:(int)data
{
  if (data == 2)
  {
    [(TGraphSampler *)self genTGraphData];
  }

  else if (data == 1)
  {
    [(TGraphSampler *)self genTGraphHeader];
  }

  else
  {
    [(TGraphSampler *)self setTGraphDataString:@"Invalid Key"];
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000526B0(v4);
    }
  }

  return self->tGraphDataString;
}

- (void)genTGraphHeader
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(Mutable, @"Thermal State");
  Count = CFArrayGetCount([+[HidSensors hidSensorKeys] sharedInstance];
  v5 = CFArrayGetCount([+[HidSensors synthSensorKeys] sharedInstance];
  selfCopy = self;
  powerSensors = [(CommonProduct *)self->productObj powerSensors];
  v7 = Count - powerSensors;
  if (v7 < 1)
  {
    v15 = 0;
  }

  else
  {
    v49 = powerSensors;
    v50 = v5;
    for (i = 0; i != v7; ++i)
    {
      MutableCopy = CFStringCreateMutableCopy(0, 0, @"(");
      ValueAtIndex = CFArrayGetValueAtIndex([+[HidSensors sensorFourCharCode] sharedInstance];
      CFStringAppend(MutableCopy, ValueAtIndex);
      CFStringAppend(MutableCopy, @""));
      v11 = CFArrayGetValueAtIndex([+[HidSensors hidSensorKeys] sharedInstance];
      CFStringAppend(MutableCopy, v11);
      CFArrayAppendValue(Mutable, MutableCopy);
      if (byte_1000AB720 == 1)
      {
        v12 = [+[HidSensors sharedInstance](HidSensors getFilterTimeConstantForSensor:"getFilterTimeConstantForSensor:", i];
        if (v12)
        {
          v13 = v12;
          v14 = CFStringCreateMutableCopy(0, 0, MutableCopy);
          CFStringAppendFormat(v14, 0, @"_f%u", v13);
          CFArrayAppendValue(Mutable, v14);
          CFRelease(v14);
        }
      }

      CFRelease(MutableCopy);
    }

    v15 = v7;
    powerSensors = v49;
    v5 = v50;
  }

  v51 = powerSensors;
  v16 = v7 + v5;
  if (v5 >= 1)
  {
    v17 = 0;
    v18 = v7;
    do
    {
      v19 = CFStringCreateMutableCopy(0, 0, @"(");
      v20 = CFArrayGetValueAtIndex([+[HidSensors sensorFourCharCode] sharedInstance];
      CFStringAppend(v19, v20);
      CFStringAppend(v19, @""));
      v21 = CFArrayGetValueAtIndex([+[HidSensors synthSensorKeys] sharedInstance];
      CFStringAppend(v19, v21);
      CFArrayAppendValue(Mutable, v19);
      CFRelease(v19);
      ++v18;
      ++v15;
      ++v17;
    }

    while (v18 < v16);
  }

  for (j = v15 + v51; v16 < j; ++v7)
  {
    v23 = CFStringCreateMutableCopy(0, 0, @"(");
    v24 = CFArrayGetValueAtIndex([+[HidSensors sensorFourCharCode] sharedInstance];
    CFStringAppend(v23, v24);
    CFStringAppend(v23, @""));
    v25 = CFArrayGetValueAtIndex([+[HidSensors hidSensorKeys] sharedInstance];
    CFStringAppend(v23, v25);
    CFArrayAppendValue(Mutable, v23);
    CFRelease(v23);
    ++v16;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  listOfSupervisorControl = selfCopy->listOfSupervisorControl;
  v27 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v58;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v58 != v29)
        {
          objc_enumerationMutation(listOfSupervisorControl);
        }

        v31 = *(*(&v57 + 1) + 8 * k);
        if ([v31 numberOfFields] >= 1)
        {
          v32 = 0;
          do
          {
            v33 = [v31 copyHeaderForIndex:v32];
            CFArrayAppendValue(Mutable, v33);
            if (v33)
            {
              CFRelease(v33);
            }

            v32 = (v32 + 1);
          }

          while (v32 < [v31 numberOfFields]);
        }
      }

      v28 = [(NSMutableArray *)listOfSupervisorControl countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v28);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  listofComponentControl = selfCopy->listofComponentControl;
  v35 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v54;
    do
    {
      for (m = 0; m != v36; m = m + 1)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(listofComponentControl);
        }

        v39 = *(*(&v53 + 1) + 8 * m);
        if ([v39 numberOfFields] >= 1)
        {
          v40 = 0;
          do
          {
            v41 = [v39 copyHeaderForIndex:v40];
            CFArrayAppendValue(Mutable, v41);
            if (v41)
            {
              CFRelease(v41);
            }

            v40 = (v40 + 1);
          }

          while (v40 < [v39 numberOfFields]);
        }
      }

      v36 = [(NSMutableArray *)listofComponentControl countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v36);
  }

  extratGraphDataSources = selfCopy->extratGraphDataSources;
  if (extratGraphDataSources && CFArrayGetCount(extratGraphDataSources) >= 1)
  {
    v43 = 0;
    do
    {
      v44 = CFArrayGetValueAtIndex(selfCopy->extratGraphDataSources, v43);
      if ([v44 numberOfFields] >= 1)
      {
        v45 = 0;
        do
        {
          v46 = [v44 copyHeaderForIndex:v45];
          if (v46)
          {
            v47 = v46;
            CFArrayAppendValue(Mutable, v46);
            CFRelease(v47);
          }

          v45 = (v45 + 1);
        }

        while (v45 < [v44 numberOfFields]);
      }

      ++v43;
    }

    while (CFArrayGetCount(selfCopy->extratGraphDataSources) > v43);
  }

  v48 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, Mutable, @", ");
  [(TGraphSampler *)selfCopy setTGraphDataString:v48];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v48)
  {
    CFRelease(v48);
  }
}

- (void)updatePowerlogMiscState:(int)state value:(int)value
{
  if (state <= 6)
  {
    v7 = *(&off_100085960 + state);
    if (byte_1000AB2F8 == 1)
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "[TGraphSampler updatePowerlogMiscState:value:]";
        v16 = 2112;
        v17 = v7;
        v18 = 1024;
        valueCopy = value;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> %s: key %@, value %d", buf, 0x1Cu);
      }
    }

    v9 = 360;
    if (state != 2 && state != 4)
    {
      if (!self->isInternal)
      {
        return;
      }

      v9 = 352;
    }

    v10 = *(&self->super.isa + v9);
    if (v10)
    {
      powerlogQueue = self->_powerlogQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E248;
      block[3] = &unk_100085218;
      valueCopy2 = value;
      block[4] = v10;
      block[5] = v7;
      dispatch_async(powerlogQueue, block);
    }
  }
}

- (void)updatePowerlogLiteMode:(int64_t)mode pressureLevel:(int64_t)level
{
  v10.tv_sec = 0;
  *&v10.tv_usec = 0;
  if (!gettimeofday(&v10, 0))
  {
    v7 = [NSArray arrayWithObjects:[NSNumber numberWithDouble:v10.tv_usec / 1000000.0 + v10.tv_sec], [NSNumber numberWithLongLong:mode], [NSNumber numberWithLongLong:level], 0];
    powerlogQueue = self->_powerlogQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E36C;
    block[3] = &unk_100085A80;
    block[4] = self;
    block[5] = v7;
    dispatch_async(powerlogQueue, block);
  }
}

- (void)updateAppleCareState:(int)state value:(int)value
{
  if (state <= 4)
  {
    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = "[TGraphSampler updateAppleCareState:value:]";
        v14 = 1024;
        stateCopy = state;
        v16 = 1024;
        valueCopy = value;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> %s: stateType %d, value %d", buf, 0x18u);
      }
    }

    powerlogQueue = self->_powerlogQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001E610;
    v9[3] = &unk_1000851A0;
    v9[4] = self;
    stateCopy2 = state;
    valueCopy2 = value;
    dispatch_async(powerlogQueue, v9);
  }
}

@end