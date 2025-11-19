@interface LinkChargerCC
- (BOOL)canSystemSleep;
- (BOOL)updateCloakingState:(BOOL)a3;
- (LinkChargerCC)initWithParams:(__CFDictionary *)a3;
- (int)numberOfFields;
- (void)defaultAction;
@end

@implementation LinkChargerCC

- (LinkChargerCC)initWithParams:(__CFDictionary *)a3
{
  v11.receiver = self;
  v11.super_class = LinkChargerCC;
  v4 = [(ComponentControl *)&v11 initWithCC:1];
  v5 = v4;
  if (v4)
  {
    *&v4->super.allowLIOverride = v4->super.currentLoadingIndex;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d Link ", 1);
    v6 = sub_100031CAC("IOPMPowerSource", @"BatteryInstalled", kCFBooleanTrue);
    *(&v5->super.currentPower + 1) = v6;
    if (!v6)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100052510(v7);
      }
    }

    HIDWORD(v5->_remainingInitialNoCloakTime) = 100;
    if (a3)
    {
      sub_100002A20(a3, @"cloakingInterval", kCFNumberDoubleType, &v5->_targetTimeCharging + 4);
      sub_100002A20(a3, @"chargingInterval", kCFNumberDoubleType, &v5->_defaultTargetTimeCloaking + 4);
      sub_100002A20(a3, @"wirelessCloakingInterval", kCFNumberDoubleType, &v5->_defaultTargetTimeCharging + 4);
      sub_100002A20(a3, @"wirelessChargingInterval", kCFNumberDoubleType, &v5->_targetTimeWirelessMatCloaking + 4);
      sub_100002A20(a3, @"skipFirstChargeThreshold", kCFNumberIntType, &v5->_remainingInitialNoCloakTime + 4);
    }

    v8 = *(&v5->_targetTimeCharging + 4);
    if (v8 == 0.0)
    {
      v8 = 60.0;
    }

    *(&v5->pmuPowerService + 1) = v8;
    v9 = *(&v5->_defaultTargetTimeCloaking + 4);
    if (v9 == 0.0)
    {
      v9 = 240.0;
    }

    *(&v5->_targetTimeCloaking + 4) = v9;
    if (*(&v5->_defaultTargetTimeCharging + 4) == 0.0)
    {
      *(&v5->_defaultTargetTimeCharging + 4) = *(&v5->pmuPowerService + 1);
    }

    if (*(&v5->_targetTimeWirelessMatCloaking + 4) == 0.0)
    {
      *(&v5->_targetTimeWirelessMatCloaking + 4) = *(&v5->_targetTimeCloaking + 4);
    }

    *(&v5->_targetTimeWirelessMatCharging + 4) = 0.0;
    *(&v5->_remainingTimeInterval + 4) = *(&v5->_targetTimeCloaking + 4);
    LOBYTE(v5->_chargerType) = 0;
    *(&v5->_isOnCharger + 3) = CFAbsoluteTimeGetCurrent();
  }

  return v5;
}

- (void)defaultAction
{
  chargerType_low = LOBYTE(self->_chargerType);
  Current = CFAbsoluteTimeGetCurrent();
  skipFirstChargeThreshold = self->_skipFirstChargeThreshold;
  v6 = Current - *(&self->_isOnCharger + 3);
  v7 = skipFirstChargeThreshold == 50;
  if (skipFirstChargeThreshold == 50)
  {
    v8 = &OBJC_IVAR___LinkChargerCC__targetTimeWirelessMatCloaking;
  }

  else
  {
    v8 = &OBJC_IVAR___LinkChargerCC__defaultTargetTimeCloaking;
  }

  *(&self->pmuPowerService + 1) = *(&self->super.super.super.isa + *v8);
  if (v7)
  {
    v9 = &OBJC_IVAR___LinkChargerCC__targetTimeWirelessMatCharging;
  }

  else
  {
    v9 = &OBJC_IVAR___LinkChargerCC__defaultTargetTimeCharging;
  }

  *(&self->_targetTimeCloaking + 4) = *(&self->super.super.super.isa + *v9);
  if (v6 <= 0.0)
  {
    v11 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315394;
      v34 = "[LinkChargerCC defaultAction]";
      v35 = 2048;
      *v36 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> %s: Calculated elapsed time was negative: %f, don't update remaining time interval\n", &v33, 0x16u);
    }
  }

  else
  {
    v10 = *(&self->_targetTimeWirelessMatCharging + 4);
    if (v6 >= v10)
    {
      *(&self->_targetTimeWirelessMatCharging + 4) = 0.0;
    }

    else
    {
      *(&self->_targetTimeWirelessMatCharging + 4) = v10 - v6;
    }
  }

  *(&self->_isOnCharger + 3) = Current;
  v12 = LOBYTE(self->_chargerType) == 0;
  v13 = *(&self->_targetTimeWirelessMatCharging + 4);
  if ((self->_chargerType & 1) == 0)
  {
    if (v13 != 0.0)
    {
      goto LABEL_19;
    }

    v14 = 148;
    if (self->super.previousValue >= 0x64)
    {
      goto LABEL_19;
    }

LABEL_18:
    *(&self->_targetTimeWirelessMatCharging + 4) = *(&self->super.super.super.isa + v14);
    goto LABEL_20;
  }

  v14 = 156;
  if (v13 == 0.0)
  {
    goto LABEL_18;
  }

LABEL_19:
  v12 = chargerType_low;
LABEL_20:
  if (!self->super.previousValue)
  {
    *(&self->_targetTimeWirelessMatCharging + 4) = *(&self->pmuPowerService + 1);
    v12 = 1;
  }

  v15 = *(&self->_remainingTimeInterval + 4);
  if (v15 > 0.0)
  {
    v16 = sub_10000449C();
    remainingInitialNoCloakTime_high = HIDWORD(self->_remainingInitialNoCloakTime);
    if (v16 > remainingInitialNoCloakTime_high)
    {
      v18 = v16;
      v19 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(&self->_remainingTimeInterval + 4);
        v33 = 136315906;
        v34 = "[LinkChargerCC defaultAction]";
        v35 = 2048;
        *v36 = v20;
        *&v36[8] = 1024;
        *v37 = v18;
        *&v37[4] = 1024;
        *v38 = remainingInitialNoCloakTime_high;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<Notice> %s: bypassing remaining %f seconds (%d above %d)", &v33, 0x22u);
      }

      *(&self->_remainingTimeInterval + 4) = 0.0;
      goto LABEL_35;
    }

    v15 = *(&self->_remainingTimeInterval + 4);
  }

  if (v15 > 0.0)
  {
    v21 = v15 - v6;
    v22 = v6 < v15;
    v23 = 0.0;
    if (v22)
    {
      v23 = v21;
    }

    *(&self->_remainingTimeInterval + 4) = v23;
    *(&self->_targetTimeWirelessMatCharging + 4) = *(&self->_targetTimeCloaking + 4) + 1.0;
    if (*(&self->_remainingTimeInterval + 4) == 0.0)
    {
      v24 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315138;
        v34 = "[LinkChargerCC defaultAction]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "<Notice> %s: initial interval complete", &v33, 0xCu);
      }
    }

    v12 = 0;
  }

LABEL_35:
  if (LOBYTE(self->_chargerType) != v12 && [(LinkChargerCC *)self updateCloakingState:v12])
  {
    LOBYTE(self->_chargerType) = v12;
    v25 = +[TGraphSampler sharedInstance];
    if (LOBYTE(self->_chargerType))
    {
      v26 = 100;
    }

    else
    {
      v26 = 0;
    }

    [(TGraphSampler *)v25 updatePowerlogMiscState:3 value:v26];
  }

  v27 = self->_skipFirstChargeThreshold;
  v28 = 1;
  if (v27 != 20)
  {
    v28 = v27 == 40;
  }

  BYTE1(self->_chargerType) = v28;
  if (byte_1000AB2F8 == 1)
  {
    v29 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      previousValue = self->super.previousValue;
      v31 = LOBYTE(self->_chargerType);
      v32 = *(&self->_targetTimeWirelessMatCharging + 4);
      v33 = 136316162;
      v34 = "[LinkChargerCC defaultAction]";
      v35 = 1024;
      *v36 = v28;
      *&v36[4] = 1024;
      *&v36[6] = previousValue;
      *v37 = 1024;
      *&v37[2] = v31;
      *v38 = 2048;
      *&v38[2] = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "<Notice> %s: onCharger %d, releaseMax LI %d, cloak status %d, time left %f", &v33, 0x28u);
    }
  }
}

- (BOOL)updateCloakingState:(BOOL)a3
{
  v3 = a3;
  keys = @"EngageCloak";
  v5 = &kCFBooleanTrue;
  if (!a3)
  {
    v5 = &kCFBooleanFalse;
  }

  v11 = *v5;
  v6 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &v11, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = IORegistryEntrySetCFProperties(*(&self->super.currentPower + 1), v6);
  if (v7)
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100052554(v7, v8);
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (v6)
  {
LABEL_6:
    CFRelease(v6);
  }

LABEL_7:
  if (byte_1000AB2F8 == 1)
  {
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[LinkChargerCC updateCloakingState:]";
      v15 = 1024;
      v16 = v3;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> %s: state %d, err 0x%08x", buf, 0x18u);
    }
  }

  return v7 == 0;
}

- (BOOL)canSystemSleep
{
  [(LinkChargerCC *)self defaultAction];
  v3 = *(&self->_targetTimeWirelessMatCharging + 4);
  v4 = v3 > 10.0 || v3 <= 0.0;
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      chargerType_low = LOBYTE(self->_chargerType);
      v8[0] = 67109632;
      v8[1] = v4;
      v9 = 2048;
      v10 = v3;
      v11 = 1024;
      v12 = chargerType_low;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> SystemSleepAllowed: %d, remainingInterval: %f, currentlyCloaked: %d", v8, 0x18u);
    }
  }

  return v4;
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = LinkChargerCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 4;
}

@end