@interface PowerSourceCC
- (PowerSourceCC)initWithParams:(__CFDictionary *)params;
- (int)numberOfFields;
- (void)dealloc;
- (void)defaultAction;
- (void)getAdaptorPMUValue;
- (void)refreshTGraphTelemetry;
@end

@implementation PowerSourceCC

- (PowerSourceCC)initWithParams:(__CFDictionary *)params
{
  v13.receiver = self;
  v13.super_class = PowerSourceCC;
  v4 = [(ComponentControl *)&v13 initWithCC:1];
  v5 = v4;
  if (v4)
  {
    *(&v4->super.currentPower + 1) = 0;
    v4->chargeLevel = -1;
    *&v4->super.allowLIOverride = 100;
    v4->super.maxLoadingIndex = 0;
    v4->previousChargeLevel = 1199570944;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d PwrSrc ", 1);
    v6 = sub_100031CAC("IOPMPowerSource", @"BatteryInstalled", kCFBooleanTrue);
    LODWORD(v5->smcThermalChargeRate) = v6;
    if (!v6 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A7BC();
      if (!params)
      {
        goto LABEL_11;
      }
    }

    else if (!params)
    {
      goto LABEL_11;
    }

    if (CFDictionaryContainsKey(params, @"ChargeLimitTable"))
    {
      Value = CFDictionaryGetValue(params, @"ChargeLimitTable");
      if (Value)
      {
        v8 = Value;
        *&v5->familyCode = CFDictionaryGetValue(Value, @"maxLIs");
        *(&v5->maxLITable + 4) = CFDictionaryGetValue(v8, @"chargeLimit");
        v9 = [*&v5->familyCode count];
        if (v9 != [*(&v5->maxLITable + 4) count] && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005A7F0();
        }
      }

LABEL_15:
      [(PowerSourceCC *)v5 getAdaptorPMUValue];
      return v5;
    }

LABEL_11:
    if (byte_1000AB2F8 == 1)
    {
      v10 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> No chargeLimit table defined in the plist, using the default one", buf, 2u);
      }
    }

    *&v5->familyCode = &off_10008D938;
    *(&v5->maxLITable + 4) = &off_10008D950;
    goto LABEL_15;
  }

  return v5;
}

- (void)dealloc
{
  smcThermalChargeRate = self->smcThermalChargeRate;
  if (smcThermalChargeRate != 0.0)
  {
    IOObjectRelease(LODWORD(smcThermalChargeRate));
  }

  *&self->familyCode = 0;
  *(&self->maxLITable + 4) = 0;
  v4.receiver = self;
  v4.super_class = PowerSourceCC;
  [(PidComponent *)&v4 dealloc];
}

- (void)defaultAction
{
  if (LODWORD(self->smcThermalChargeRate))
  {
    if (self->super.previousValue != self->super.maxLoadingIndex)
    {
      v3 = [*&self->familyCode count];
      if (v3)
      {
        v4 = 0;
        v5 = v3 - 1;
        do
        {
          v6 = [objc_msgSend(*(&self->maxLITable + 4) objectAtIndex:{v4), "intValue"}];
          v7 = [objc_msgSend(*&self->familyCode objectAtIndex:{v4), "intValue"}];
          previousValue = self->super.previousValue;
          if (previousValue > v7)
          {
            break;
          }

          *(&self->super.currentPower + 1) = v6;
        }

        while (previousValue != v7 && v5 != v4++);
      }
    }

    self->super.maxLoadingIndex = self->super.previousValue;
    v10 = sub_10003203C(LODWORD(self->smcThermalChargeRate), @"IsCharging");
    v11 = *(&self->super.currentPower + 1);
    if (v11 != self->chargeLevel && v10)
    {
      if (byte_1000AB2F8 == 1)
      {
        v13 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v18[0] = 67109120;
          v18[1] = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<Notice> Setting chargeLimit to %d", v18, 8u);
        }
      }

      v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &self->super.currentPower + 1);
      if (v14)
      {
        v15 = v14;
        v16 = IORegistryEntrySetCFProperty(LODWORD(self->smcThermalChargeRate), @"AppleChargeRateLimitIndex", v14);
        CFRelease(v15);
        if (v16)
        {
          if (((++dword_1000AB284 & 0x1F) == 0 || byte_1000AB2F8 == 1) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_10005A824();
          }
        }

        else
        {
          self->chargeLevel = *(&self->super.currentPower + 1);
        }
      }

      else
      {
        v17 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005A858(&self->super.currentPower + 1, v17);
        }
      }
    }
  }

  else if ((byte_1000AB280 & 1) == 0)
  {
    byte_1000AB280 = 1;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A8D4();
    }
  }
}

- (void)getAdaptorPMUValue
{
  v3 = IOPSCopyExternalPowerAdapterDetails();
  if (v3)
  {
    v4 = v3;
    if (CFDictionaryContainsKey(v3, @"AdapterID"))
    {
      Value = CFDictionaryGetValue(v4, @"AdapterID");
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v6, kCFNumberShortType, &self->pmuPowerService + 2);
        }
      }
    }

    if (CFDictionaryContainsKey(v4, @"Watts"))
    {
      v8 = CFDictionaryGetValue(v4, @"Watts");
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v9, kCFNumberIntType, &self->inputCurrent);
        }
      }
    }

    if (CFDictionaryContainsKey(v4, @"FamilyCode"))
    {
      v11 = CFDictionaryGetValue(v4, @"FamilyCode");
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v12, kCFNumberIntType, &self->watts);
        }
      }
    }

    if (CFDictionaryContainsKey(v4, @"Current"))
    {
      v14 = CFDictionaryGetValue(v4, @"Current");
      if (v14)
      {
        v15 = v14;
        v16 = CFGetTypeID(v14);
        if (v16 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v15, kCFNumberShortType, &self->pmuPowerService);
        }
      }
    }

    if (CFDictionaryContainsKey(v4, @"PMUConfiguration"))
    {
      v17 = CFDictionaryGetValue(v4, @"PMUConfiguration");
      if (v17)
      {
        v18 = v17;
        v19 = CFGetTypeID(v17);
        if (v19 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v18, kCFNumberShortType, &self->availableCurrent);
        }
      }
    }

    CFRelease(v4);
  }
}

- (void)refreshTGraphTelemetry
{
  smcThermalChargeRate = self->smcThermalChargeRate;
  if (smcThermalChargeRate != 0.0)
  {
    if (sub_10003203C(LODWORD(smcThermalChargeRate), @"IsCharging"))
    {
      previousValue = self->super.previousValue;
    }

    else
    {
      previousValue = sub_10003203C(LODWORD(self->smcThermalChargeRate), @"ExternalConnected");
    }

    *&self->super.allowLIOverride = previousValue;
    self->previousChargeLevel = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getValueFromSMCForKey:"getValueFromSMCForKey:", @"B1TI"];
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = PowerSourceCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 2;
}

@end