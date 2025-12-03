@interface AmbientLightSensorComponent
- (AmbientLightSensorComponent)init;
- (BOOL)synchContext;
- (__CFArray)copySensorArray;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (void)initHIDServices;
@end

@implementation AmbientLightSensorComponent

- (AmbientLightSensorComponent)init
{
  v5.receiver = self;
  v5.super_class = AmbientLightSensorComponent;
  v2 = [(AmbientLightSensorComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->ALS_FS = 0;
    v2->ALS_IR = 0;
    v2->IR_PRED = 0;
    v2->super.ctxType = 0;
    v2->previousSunlightLoadingIndexValue = 0;
    v2->sunlightLoadingIndexValue = 0;
    v2->temperature = 0;
    v2->thermalSunlightStateToken = -1;
    if (notify_register_check("com.apple.system.thermalsunlightstate", &v2->thermalSunlightStateToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051590();
    }

    [(AmbientLightSensorComponent *)v3 initHIDServices];
    [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v3];
  }

  return v3;
}

- (void)initHIDServices
{
  if (!self->_hidEventSystem)
  {
    v3 = IOHIDEventSystemClientCreate();
    self->_hidEventSystem = v3;
    if (v3)
    {
      v4 = sub_100033514(65280, 4);
      if (v4)
      {
        v5 = v4;
        hidEventSystem = self->_hidEventSystem;
        IOHIDEventSystemClientSetMatching();
        v7 = self->_hidEventSystem;
        IOHIDEventSystemClientScheduleWithRunLoop();
        CFRelease(v5);
        copySensorArray = [(AmbientLightSensorComponent *)self copySensorArray];
        if (copySensorArray)
        {
          v9 = copySensorArray;
          if (CFArrayGetCount(copySensorArray) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
            self->_service = ValueAtIndex;
            if (ValueAtIndex)
            {
              IOHIDServiceClientRegisterRemovalCallback();
            }

            else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_1000515C4();
            }
          }

          CFRelease(v9);
        }
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000515F8();
    }
  }
}

- (BOOL)synchContext
{
  if (!self->_service)
  {
    [(AmbientLightSensorComponent *)self initHIDServices];
LABEL_11:
    LOBYTE(v9) = 0;
    return v9;
  }

  v3 = IOHIDServiceClientCopyEvent();
  if (!v3)
  {
    v9 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
    if (!v9)
    {
      return v9;
    }

    sub_100051660();
    goto LABEL_11;
  }

  v4 = v3;
  self->ALS_FS = IOHIDEventGetIntegerValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  self->ALS_IR = IntegerValue;
  v6 = (self->ALS_FS * -0.234 + 500.0 + IntegerValue * 0.234);
  self->IR_PRED = v6;
  v7 = (self->ALS_IR * 0.5 + 50.0 + v6 * -0.5);
  if (v7 <= -350)
  {
    v7 = -350;
  }

  if (v7 >= 450)
  {
    v7 = 450;
  }

  self->temperature = v7;
  CFRelease(v4);
  sunlightLoadingIndexValue = self->sunlightLoadingIndexValue;
  self->previousSunlightLoadingIndexValue = sunlightLoadingIndexValue;
  if (dword_1000AB314 < 0)
  {
    goto LABEL_17;
  }

  if (!dword_1000AB314)
  {
    temperature = self->temperature;
    if ((temperature & 0x80000000) == 0)
    {
      if (temperature < 0x65)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

LABEL_17:
    sunlightLoadingIndexValue = 0;
    goto LABEL_18;
  }

LABEL_9:
  sunlightLoadingIndexValue = 100;
LABEL_18:
  self->sunlightLoadingIndexValue = sunlightLoadingIndexValue;
LABEL_19:
  if (sunlightLoadingIndexValue == self->previousSunlightLoadingIndexValue || ((v11 = +[TGraphSampler sharedInstance], self->sunlightLoadingIndexValue) ? (v12 = 100) : (v12 = 0), [(TGraphSampler *)v11 updatePowerlogMiscState:2 value:v12], !notify_set_state(self->thermalSunlightStateToken, self->sunlightLoadingIndexValue)))
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  v9 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    sub_10005162C();
    goto LABEL_11;
  }

  return v9;
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

    v13 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051694(v13);
      if (!v4)
      {
        return 0;
      }
    }

    else if (!v4)
    {
      return 0;
    }

    v14 = v4;
LABEL_21:
    CFRelease(v14);
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
      if (sub_1000335E8(ValueAtIndex, @"PrimaryUsagePage") == 65280 && v9 == 4)
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
    v14 = Mutable;
    goto LABEL_21;
  }

  if (Mutable)
  {
    Copy = CFArrayCreateCopy(kCFAllocatorDefault, Mutable);
    CFRelease(Mutable);
    return Copy;
  }

  return 0;
}

- (__CFString)copyHeaderForIndex:(int)index
{
  if (index > 2)
  {
    return 0;
  }

  else
  {
    return off_1000852D0[index];
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  if (index > 2)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", *(&self->super.super.isa + *off_1000852E8[index]));
  }
}

@end