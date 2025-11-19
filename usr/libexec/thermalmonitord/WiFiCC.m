@interface WiFiCC
- (WiFiCC)initWithParams:(__CFDictionary *)a3;
- (void)defaultAction;
- (void)refreshTGraphTelemetry;
@end

@implementation WiFiCC

- (WiFiCC)initWithParams:(__CFDictionary *)a3
{
  v9.receiver = self;
  v9.super_class = WiFiCC;
  v4 = [(ComponentControl *)&v9 initWithCC:9];
  v5 = v4;
  if (v4)
  {
    *&v4->super.allowLIOverride = 100;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d WiFi ", 9);
    v5->super.previousValue = v5->super.currentLoadingIndex;
    v6 = WiFiManagerClientCreate();
    *(&v5->super.currentPower + 1) = v6;
    if (!v6)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000525E0(v7);
      }
    }

    [(ComponentControl *)v5 updatePowerParameters:a3];
    if (sub_100031D64(a3, @"expectsCPMSSupport", 0))
    {
      [(ComponentControl *)v5 setCPMSMitigationState:1];
    }
  }

  return v5;
}

- (void)defaultAction
{
  if (self->super.currentLoadingIndex != self->super.maxLoadingIndex)
  {
    v3 = *(&self->super.currentPower + 1);
    WiFiManagerClientSetThermalIndex();
    if (byte_1000AB2F8 == 1)
    {
      v4 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        currentLoadingIndex = self->super.currentLoadingIndex;
        v6[0] = 67109120;
        v6[1] = currentLoadingIndex;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Set the WiFi maxLI to %d", v6, 8u);
      }
    }

    self->super.maxLoadingIndex = self->super.currentLoadingIndex;
  }
}

- (void)refreshTGraphTelemetry
{
  v3 = *(&self->super.currentPower + 1);
  ThermalIndex = WiFiManagerClientGetThermalIndex();
  *&self->super.allowLIOverride = ThermalIndex;
  if (ThermalIndex >= 0x66)
  {
    v5 = ThermalIndex;
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100052624(v5, v6);
    }
  }
}

@end