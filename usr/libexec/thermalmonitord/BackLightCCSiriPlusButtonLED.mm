@interface BackLightCCSiriPlusButtonLED
- (BOOL)findBacklightServices;
- (BackLightCCSiriPlusButtonLED)initWithParams:(__CFDictionary *)params;
- (int)numberOfFields;
- (void)refreshFunctionalTelemetry;
@end

@implementation BackLightCCSiriPlusButtonLED

- (BackLightCCSiriPlusButtonLED)initWithParams:(__CFDictionary *)params
{
  v6.receiver = self;
  v6.super_class = BackLightCCSiriPlusButtonLED;
  v3 = [(BackLightCC *)&v6 initWithParams:params];
  v4 = v3;
  if (v3)
  {
    *(v3 + 330) = -1;
    *(v3 + 338) = -1;
    *(v3 + 346) = 100;
    *(v3 + 334) = -1;
    *(v3 + 342) = -1;
    *(v3 + 350) = 100;
    [v3 setSolarBehaviorSuppressed:0];
  }

  return v4;
}

- (BOOL)findBacklightServices
{
  keys = @"backlight-control";
  values = kCFBooleanTrue;
  *(&self->super._solarDetectorPresent + 5) = 0;
  v3 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = v3;
  v17 = @"IOPropertyMatch";
  v4 = CFDictionaryCreate(kCFAllocatorDefault, &v17, &v16, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(v3);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v4, &existing);
  v6 = 0;
  if (!MatchingServices)
  {
    if (*(&self->super._solarDetectorPresent + 5) > 1u)
    {
      v6 = 0;
    }

    else
    {
      v7 = IOIteratorNext(existing);
      *(&self->super._brightnessSystemClient + 4 * *(&self->super._solarDetectorPresent + 5) + 6) = v7;
      v6 = v7 != 0;
      if (v7)
      {
        do
        {
          if (byte_1000AB2F8 == 1)
          {
            v8 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(&self->super._solarDetectorPresent + 5);
              *buf = 67109120;
              v15 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Found display no:%d", buf, 8u);
            }
          }

          v10 = ++*(&self->super._solarDetectorPresent + 5);
          if (v10 >= 2)
          {
            break;
          }

          v11 = IOIteratorNext(existing);
          *(&self->super._brightnessSystemClient + 4 * *(&self->super._solarDetectorPresent + 5) + 6) = v11;
        }

        while (v11);
      }
    }

    IOObjectRelease(existing);
  }

  return v6;
}

- (void)refreshFunctionalTelemetry
{
  selfCopy = self;
  v35.receiver = self;
  v35.super_class = BackLightCCSiriPlusButtonLED;
  [(BackLightCC *)&v35 refreshFunctionalTelemetry];
  v3 = 326;
  if (*(&selfCopy->super._solarDetectorPresent + 5))
  {
    v4 = 0;
    v5 = 346;
    v6 = 318;
    v7 = @"IODisplayParameters";
    for (i = selfCopy; ; i = (i + 4))
    {
      *(&i->super.super.super.super.isa + v5) = 0;
      v9 = sub_100005E68(v7, *(&i->super.super.super.super.isa + v6));
      v10 = v9;
      if (v9)
      {
        v11 = CFGetTypeID(v9);
        if (v11 == CFDictionaryGetTypeID())
        {
          break;
        }
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000513F8(&v24, v25);
        if (!v10)
        {
          goto LABEL_34;
        }
      }

      else if (!v10)
      {
        goto LABEL_34;
      }

LABEL_33:
      CFRelease(v10);
LABEL_34:
      if (++v4 >= *(&selfCopy->super.super.super.super.isa + v3))
      {
        return;
      }
    }

    Value = CFDictionaryGetValue(v10, @"brightness");
    v13 = CFDictionaryGetValue(v10, @"BrightnessMilliNits");
    if (!Value)
    {
      goto LABEL_37;
    }

    v23 = v13;
    v14 = selfCopy;
    v15 = v3;
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v19 = CFGetTypeID(Value);
    v20 = v19 == CFDictionaryGetTypeID();
    v7 = v18;
    v6 = v17;
    v5 = v16;
    v3 = v15;
    selfCopy = v14;
    v13 = v23;
    if (v20)
    {
      v34 = 0;
      if (sub_100002A20(Value, @"value", kCFNumberIntType, &v34 + 4) && sub_100002A20(Value, @"max", kCFNumberIntType, &v34))
      {
        v21 = v34;
        if (v34)
        {
          v21 = (100 * HIDWORD(v34) + v34 / 2) / v34;
        }

        *(&i->super.super.super.super.isa + v5) = v21;
        if (!v23)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051348(&v32, v33);
        if (!v23)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    else
    {
LABEL_37:
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051374(&v30, v31);
        if (!v13)
        {
LABEL_31:
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_1000513CC(&v26, v27);
          }

          goto LABEL_33;
        }

LABEL_22:
        v22 = CFGetTypeID(v13);
        if (v22 == CFDictionaryGetTypeID())
        {
          if (!sub_100002A20(v13, @"value", kCFNumberIntType, i->gPowerServiceBL + 2) || (sub_100002A20(v13, @"max", kCFNumberIntType, &i->displayCount + 2) & 1) == 0)
          {
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_1000513A0(&v28, v29);
            }

            *(i->gPowerServiceBL + 2) = -1;
            *(&i->displayCount + 2) = -1;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if (!v13)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = BackLightCCSiriPlusButtonLED;
  return [(BackLightCC *)&v3 numberOfFields]+ 6;
}

@end