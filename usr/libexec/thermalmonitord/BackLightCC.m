@interface BackLightCC
- (BOOL)findBacklightServices;
- (BOOL)shouldSuppressMitigations;
- (BackLightCC)initWithParams:(__CFDictionary *)a3;
- (int)numberOfFields;
- (void)defaultAction;
- (void)defaultCPMSAction;
- (void)initBrightnessTable:(__CFArray *)a3;
- (void)initPowerTable:(__CFArray *)a3;
- (void)refreshFunctionalTelemetry;
@end

@implementation BackLightCC

- (BOOL)shouldSuppressMitigations
{
  if (*(&self->super.currentPower + 4) == 1)
  {
    return ![(BackLightCC *)self solarBehaviorSuppressed:v2];
  }

  else
  {
    return 0;
  }
}

- (void)refreshFunctionalTelemetry
{
  if (BYTE5(self->_brightnessSystemClient) == 1)
  {
    *(&self->super.currentPower + 4) = [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = BackLightCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 3;
}

- (BackLightCC)initWithParams:(__CFDictionary *)a3
{
  v13.receiver = self;
  v13.super_class = BackLightCC;
  v4 = [(ComponentControl *)&v13 initWithCC:0];
  v5 = v4;
  if (v4)
  {
    *(&v4->super.currentPower + 5) = 0;
    *(&v4->super.currentPower + 6) = 0;
    v4->brightnessLevelDown[6] = 100;
    v4->brightnessLevelDown[5] = 100;
    *&v4->super.allowLIOverride = -1;
    *&v4->brightnessLevelDown[7] = 100;
    v4->_maxLICeiling = 100;
    v4->_maxLICeilingSoft = -1;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d BackLight ", 0);
    v5->super.releaseMaxLI = 2;
    sub_100002A20(a3, @"MaxReleaseRate", kCFNumberIntType, &v5->super.releaseMaxLI);
    if (![(BackLightCC *)v5 findBacklightServices]&& os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005706C();
    }

    v6 = objc_alloc_init(BrightnessSystemClient);
    *&v5->currentPowerLevel = v6;
    if (v6)
    {
      if (byte_1000AB2F8 == 1)
      {
        v7 = v6;
        v8 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> brightness client %p", buf, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000570A0();
    }

    LOBYTE(v5->powerLevelDown[8]) = 0;
    [(ComponentControl *)v5 updatePowerParameters:a3];
    if (sub_100031D64(a3, @"expectsCPMSSupport", 0))
    {
      Value = CFDictionaryGetValue(a3, @"BacklightPower");
      if (Value)
      {
        [(BackLightCC *)v5 initPowerTable:Value];
        [(BackLightCC *)v5 setCPMSMitigationState:1];
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000570D4();
      }
    }

    v10 = CFDictionaryGetValue(a3, @"BacklightBrightness");
    if (v10)
    {
      [(BackLightCC *)v5 initBrightnessTable:v10];
    }

    LOBYTE(v5->_maxLICeilingSoftPrevious) = 0;
    *&v5->powerLevelElem = 0;
    if (LOBYTE(v5->super._minPower) == 1)
    {
      releaseRate = v5->super.releaseRate;
    }

    else
    {
      releaseRate = 65000;
    }

    *&v5->powerLevelTableDefined = releaseRate;
  }

  return v5;
}

- (void)defaultAction
{
  previousValue = self->super.previousValue;
  v4 = *(&self->super.currentPower + 6);
  if (previousValue > *(&self->super.currentPower + v4 + 7))
  {
    if (!*(&self->super.currentPower + 6))
    {
      goto LABEL_8;
    }

    v5 = -1;
    goto LABEL_7;
  }

  if (previousValue < self->brightnessLevels[v4 + 5] && *(&self->super.currentPower + 5) - 1 > v4)
  {
    v5 = 1;
LABEL_7:
    *(&self->super.currentPower + 6) = v4 + v5;
  }

LABEL_8:
  self->brightnessLevelDown[6] = self->brightnessLevelDown[5];
  v6 = self->brightnessLevelUp[*(&self->super.currentPower + 6) + 5];
  self->brightnessLevelDown[5] = v6;
  v7 = *&self->brightnessLevelDown[7];
  if (v7 < v6)
  {
    v6 = *&self->brightnessLevelDown[7];
    self->brightnessLevelDown[5] = v7;
  }

  if ((self->powerLevelDown[8] & 1) == 0)
  {
    if (v6 != self->brightnessLevelDown[6])
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67109120;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> set Backlight: %d", &v11, 8u);
        v6 = self->brightnessLevelDown[5];
      }

      [(BackLightCC *)self setBrightnessKey:@"MaxBrightness" value:v6];
    }

    maxLICeiling = self->_maxLICeiling;
    if (maxLICeiling != self->_maxLICeilingSoft)
    {
      v10 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67109120;
        v12 = maxLICeiling;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> BL soft: %d", &v11, 8u);
        maxLICeiling = self->_maxLICeiling;
      }

      [(BackLightCC *)self setBrightnessKey:@"BrightnessWeakCap" value:maxLICeiling];
      self->_maxLICeilingSoft = self->_maxLICeiling;
    }
  }
}

- (void)defaultCPMSAction
{
  previousValue = self->super.previousValue;
  v4 = *&self->powerLevelElem;
  if (previousValue <= *(&self->powerLevelPointer + v4))
  {
    if (previousValue >= self->powerLevels[v4 + 8] || v4 >= LOBYTE(self->_maxLICeilingSoftPrevious) - 1)
    {
      goto LABEL_8;
    }

    v5 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = -1;
  }

  v4 += v5;
  *&self->powerLevelElem = v4;
LABEL_8:
  if (self->super.previousValue == 101)
  {
    releaseRate = self->super.releaseRate;
    p_powerLevelTableDefined = &self->powerLevelTableDefined;
  }

  else
  {
    v8 = self->powerLevelUp[v4 + 8];
    p_powerLevelTableDefined = &self->powerLevelTableDefined;
    *&self->powerLevelTableDefined = v8;
    if (v8 >= self->super.releaseRate)
    {
      releaseRate = self->super.releaseRate;
    }

    else
    {
      releaseRate = v8;
    }
  }

  *p_powerLevelTableDefined = releaseRate;
  if (releaseRate != [(ComponentControl *)self powerTarget])
  {
    [(ComponentControl *)self setPowerTarget:*p_powerLevelTableDefined];
    if (byte_1000AB2F8 == 1)
    {
      v9 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = [(PidComponent *)self nameofComponent];
        v12 = 1024;
        v13 = [(ComponentControl *)self powerTarget];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> DefaultCPMSAction for %@, set powerTarget:%u", &v10, 0x12u);
      }
    }

    [+[CPMSHelper sharedInstance](CPMSHelper addToCPMSMitigationArray:"addToCPMSMitigationArray:forComponent:" forComponent:[(ComponentControl *)self powerTarget], self->super.super.mitigationType];
  }
}

- (void)initBrightnessTable:(__CFArray *)a3
{
  if (a3 && (v5 = CFGetTypeID(a3), v5 == CFArrayGetTypeID()))
  {
    v18 = 0;
    valuePtr = 0;
    Count = CFArrayGetCount(a3);
    *(&self->super.currentPower + 5) = Count;
    if (Count)
    {
      v7 = 0;
      v8 = self;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
        if (ValueAtIndex && (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 == CFDictionaryGetTypeID()))
        {
          Value = CFDictionaryGetValue(v10, @"up");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
            *(&v8->super.currentPower + 7) = valuePtr;
          }

          v13 = CFDictionaryGetValue(v10, @"down");
          if (v13)
          {
            CFNumberGetValue(v13, kCFNumberSInt32Type, &v18);
            v8->brightnessLevels[5] = v18;
          }

          v14 = CFDictionaryGetValue(v10, @"level");
          if (v14)
          {
            CFNumberGetValue(v14, kCFNumberSInt32Type, &v18 + 4);
            v8->brightnessLevelUp[5] = BYTE4(v18);
          }
        }

        else
        {
          v15 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v20 = v7;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "<Error> Missing Brightness Dictionary %d", buf, 8u);
          }
        }

        ++v7;
        v8 = (v8 + 1);
      }

      while (v7 < *(&self->super.currentPower + 5));
    }
  }

  else
  {
    for (i = 0; i != 9; ++i)
    {
      self->brightnessLevelUp[i + 5] = 100;
      self->brightnessLevels[i + 5] = 100;
      *(&self->super.currentPower + i + 7) = 100;
    }

    *(&self->super.currentPower + 5) = 5;
  }
}

- (void)initPowerTable:(__CFArray *)a3
{
  if (a3 && (v5 = CFGetTypeID(a3), v5 == CFArrayGetTypeID()))
  {
    v18 = 0;
    valuePtr = 0;
    Count = CFArrayGetCount(a3);
    LOBYTE(self->_maxLICeilingSoftPrevious) = Count;
    if (Count)
    {
      v7 = 0;
      v8 = self;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
        if (ValueAtIndex && (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 == CFDictionaryGetTypeID()))
        {
          Value = CFDictionaryGetValue(v10, @"up");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
            v8->powerLevelPointer = valuePtr;
          }

          v13 = CFDictionaryGetValue(v10, @"down");
          if (v13)
          {
            CFNumberGetValue(v13, kCFNumberSInt32Type, &v18);
            v8->powerLevels[8] = v18;
          }

          v14 = CFDictionaryGetValue(v10, @"level");
          if (v14)
          {
            CFNumberGetValue(v14, kCFNumberSInt32Type, &v18 + 4);
            v8->powerLevelUp[8] = HIDWORD(v18);
          }
        }

        else
        {
          v15 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v20 = v7;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "<Error> Missing Display Power Dictionary %d", buf, 8u);
          }
        }

        ++v7;
        v8 = (v8 + 4);
      }

      while (v7 < LOBYTE(self->_maxLICeilingSoftPrevious));
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057180();
    }

    for (i = 0; i != 9; ++i)
    {
      self->powerLevelUp[i + 8] = 65000;
      self->powerLevels[i + 8] = 100;
      *(&self->powerLevelPointer + i * 4) = 100;
    }

    LOBYTE(self->_maxLICeilingSoftPrevious) = 5;
  }

  LOBYTE(self->powerLevelDown[8]) = 1;
}

- (BOOL)findBacklightServices
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000571B4();
  }

  return 0;
}

@end