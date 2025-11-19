@interface BatteryLevelStatusPowerState
- (BatteryLevelStatusPowerState)initWithPtr:(const char *)a3;
- (id)description;
@end

@implementation BatteryLevelStatusPowerState

- (BatteryLevelStatusPowerState)initWithPtr:(const char *)a3
{
  if (!self)
  {
    v6.receiver = 0;
    v6.super_class = BatteryLevelStatusPowerState;
    self = [(BatteryLevelStatusPowerState *)&v6 init];
  }

  v4 = *a3;
  v5 = *(a3 + 1);
  self->_batteryPresent = v4 & 1;
  self->_externalPowerSourceWired = (v4 >> 1) & 3;
  self->_externalPowerSourceWireless = (v4 >> 3) & 3;
  self->_batteryChargeState = (v4 >> 5) & 3;
  self->_batteryChargeLevel = ((v4 | (v5 << 8)) >> 7) & 3;
  self->_batteryChargeType = (v5 >> 1) & 7;
  self->_chargingFaultReason = self->_chargingFaultReason & 0xF8 | (v5 >> 4) & 7;
  return self;
}

- (id)description
{
  self->_batteryPresent;
  NSAppendPrintF_safe();
  v3 = 0;
  externalPowerSourceWired = self->_externalPowerSourceWired;
  if (externalPowerSourceWired <= 2)
  {
    v5 = off_1000BD2E8[externalPowerSourceWired];
  }

  NSAppendPrintF_safe();
  v6 = v3;

  externalPowerSourceWireless = self->_externalPowerSourceWireless;
  if (externalPowerSourceWireless <= 2)
  {
    v8 = off_1000BD2E8[externalPowerSourceWireless];
  }

  NSAppendPrintF_safe();
  v9 = v6;

  batteryChargeState = self->_batteryChargeState;
  if (batteryChargeState <= 3)
  {
    v11 = off_1000BD300[batteryChargeState];
  }

  NSAppendPrintF_safe();
  v12 = v9;

  batteryChargeLevel = self->_batteryChargeLevel;
  if (batteryChargeLevel <= 3)
  {
    v14 = off_1000BD320[batteryChargeLevel];
  }

  NSAppendPrintF_safe();
  v15 = v12;

  batteryChargeType = self->_batteryChargeType;
  if (batteryChargeType <= 4)
  {
    v17 = off_1000BD340[batteryChargeType];
  }

  NSAppendPrintF_safe();
  v18 = v15;

  chargingFaultReason = self->_chargingFaultReason;
  v22 = CUPrintFlags32();
  NSAppendPrintF_safe();
  v20 = v18;

  return v18;
}

@end