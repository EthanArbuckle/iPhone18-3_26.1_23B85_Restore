@interface BackLightCCSingle
- (BOOL)findBacklightServices;
- (BackLightCCSingle)initWithParams:(__CFDictionary *)params;
- (int)numberOfFields;
- (void)refreshFunctionalTelemetry;
- (void)updateSensorExchangeTelemetry;
@end

@implementation BackLightCCSingle

- (void)refreshFunctionalTelemetry
{
  v25.receiver = self;
  v25.super_class = BackLightCCSingle;
  [(BackLightCC *)&v25 refreshFunctionalTelemetry];
  *&self->super.super.allowLIOverride = 0;
  v3 = sub_100005E68(@"IODisplayParameters", *(&self->super._brightnessSystemClient + 6));
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v4, @"brightness");
      v7 = CFDictionaryGetValue(v4, @"BrightnessMilliNits");
      if (Value && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
      {
        v23 = 0;
        *buf = 0;
        if (sub_100002A20(Value, @"value", kCFNumberIntType, buf) && sub_100002A20(Value, @"max", kCFNumberIntType, &v23))
        {
          v9 = v23;
          if (v23)
          {
            v9 = (100 * *buf + v23 / 2) / v23;
          }

          *&self->super.super.allowLIOverride = v9;
          if (!v7)
          {
            goto LABEL_25;
          }

LABEL_18:
          v10 = CFGetTypeID(v7);
          if (v10 == CFDictionaryGetTypeID())
          {
            if (!sub_100002A20(v7, @"value", kCFNumberIntType, &self->super._solarDetectorPresent + 1) || (sub_100002A20(v7, @"max", kCFNumberIntType, &self->super._solarDetectorPresent + 5) & 1) == 0)
            {
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
              {
                sub_1000572FC();
              }

              *(&self->super._solarDetectorPresent + 1) = -1;
              *(&self->super._solarDetectorPresent + 5) = -1;
            }

            goto LABEL_27;
          }

LABEL_25:
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100057330();
          }

          goto LABEL_27;
        }

        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100057294();
          if (!v7)
          {
            goto LABEL_25;
          }

          goto LABEL_18;
        }
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000572C8();
        if (!v7)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057364();
  }

LABEL_27:
  if (byte_1000ABC38 == 1)
  {
    v11 = *(&self->lastDisplayReading + 6);
    if (v11)
    {
      v12 = sub_100005E68(@"IOMFBBrightnessLevel", v11);
      v13 = v12;
      if (v12)
      {
        v14 = CFGetTypeID(v12);
        if (v14 == CFNumberGetTypeID())
        {
          dword_1000AB94C = vcvts_n_f32_s32([v13 intValue], 0x10uLL);
LABEL_35:
          CFRelease(v13);
          goto LABEL_36;
        }
      }

      v15 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<Notice> IOMFB brightness not available or not a number type\n", buf, 2u);
      }

      if (v13)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  if (!*(&self->_brightnessMilliNitsMaximum + 6) || !*(&self->_brightnessMilliNitsCurrent + 2))
  {
LABEL_41:
    if (v4)
    {
      CFRelease(v4);
    }

    return;
  }

  v16 = +[NSDate date];
  v17 = *(&self->_brightnessMilliNitsCurrent + 2);
  v18 = *(&self->_brightnessMilliNitsMaximum + 6);
  Samples = IOReportCreateSamples();
  if (Samples)
  {
    v20 = Samples;
    v21 = *(&self->displaySubscription + 6);
    SamplesDelta = IOReportCreateSamplesDelta();
    CFRelease(*(&self->displaySubscription + 6));
    *(&self->displaySubscription + 6) = v20;
    [(NSDate *)v16 timeIntervalSinceDate:*(&self->displayChannels + 6)];
    *(&self->displayChannels + 6) = v16;
    IOReportIterate();
    if (SamplesDelta)
    {
      CFRelease(SamplesDelta);
    }

    goto LABEL_41;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057398();
  }
}

- (void)updateSensorExchangeTelemetry
{
  v2 = 274877907 * (*(&self->super._solarDetectorPresent + 5) + 500);
  *&dword_1000AB948 = ((v2 >> 38) + (v2 >> 63));
  *&dword_1000AB95C = *&self->super.super.allowLIOverride;
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = BackLightCCSingle;
  return [(BackLightCC *)&v3 numberOfFields]+ 2;
}

- (BackLightCCSingle)initWithParams:(__CFDictionary *)params
{
  v10.receiver = self;
  v10.super_class = BackLightCCSingle;
  v3 = [(BackLightCC *)&v10 initWithParams:params];
  v4 = v3;
  if (v3)
  {
    *(v3 + 18) = 100;
    *(v3 + 322) = -1;
    *(v3 + 326) = -1;
    [v3 setSolarBehaviorSuppressed:0];
    if (byte_1000ABC38 == 1)
    {
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:5 atSMCIndex:@"zETM", 5];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:4 atSMCIndex:@"zETM", 4];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:9 atSMCIndex:@"zETM", 9];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:16 atSMCIndex:@"zETM", 16];
      MainDisplay = IOMobileFramebufferGetMainDisplay();
      if (MainDisplay || !qword_1000ABCA8)
      {
        v6 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_1000571E8(MainDisplay, v6);
        }

        qword_1000ABCA8 = 0;
      }

      else
      {
        *(v4 + 366) = IOMobileFramebufferGetServiceObject();
      }
    }

    v7 = IOReportCopyChannelsInGroup();
    if (v7)
    {
      v8 = v7;
      *(v4 + 334) = IOReportCreateSubscription();
      CFRelease(v8);
      if (*(v4 + 342) && *(v4 + 334))
      {
        *(v4 + 350) = IOReportCreateSamples();
        *(v4 + 358) = +[NSDate date];
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057260();
    }
  }

  return v4;
}

- (BOOL)findBacklightServices
{
  v3 = sub_100031CAC("AppleARMBacklight", @"backlight-control", kCFBooleanTrue);
  *(&self->super._brightnessSystemClient + 6) = v3;
  if (!v3 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005706C();
  }

  return v3 != 0;
}

@end