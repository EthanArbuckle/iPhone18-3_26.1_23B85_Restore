@interface CLHomeKitDelegate
- (CLHomeKitDelegate)initWithProvider:(void *)provider;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)homeKit:(id)kit failedToStartScanningWithError:(id)error forType:(int64_t)type;
- (void)homeKit:(id)kit foundDevice:(id)device withData:(id)data RSSI:(id)i type:(int64_t)type;
- (void)homeKitDidUpdateState:(id)state;
- (void)homeKitStartedScanning:(id)scanning forType:(int64_t)type;
- (void)homeKitStoppedScanning:(id)scanning forType:(int64_t)type;
@end

@implementation CLHomeKitDelegate

- (CLHomeKitDelegate)initWithProvider:(void *)provider
{
  v5.receiver = self;
  v5.super_class = CLHomeKitDelegate;
  result = [(CLHomeKitDelegate *)&v5 init];
  if (result)
  {
    result->_homekitProvider = provider;
    *&result->_homekitPower = 0;
  }

  return result;
}

- (void)homeKitDidUpdateState:(id)state
{
  self->_homekitPower = [state state] == 3;
  homekitProvider = self->_homekitProvider;
  power = [(CLHomeKitDelegate *)self power];

  sub_100567034(homekitProvider, power);
}

- (void)homeKit:(id)kit foundDevice:(id)device withData:(id)data RSSI:(id)i type:(int64_t)type
{
  v11 = [data objectForKeyedSubscript:CBAdvertisementDataManufacturerDataKey];
  if (i)
  {
    LODWORD(i) = [i intValue];
  }

  v12 = sub_10016D878(type);
  homekitProvider = self->_homekitProvider;
  Current_2 = j__CFAbsoluteTimeGetCurrent_2();

  sub_10056717C(homekitProvider, device, 2, v11, i, v12, Current_2);
}

- (void)homeKitStartedScanning:(id)scanning forType:(int64_t)type
{
  if (qword_1025D4870 != -1)
  {
    sub_1018C3A58();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    typeCopy = type;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Started scanning for HomeKit 2.0 devices for type %{public}ld", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C3E64(type);
  }
}

- (void)homeKitStoppedScanning:(id)scanning forType:(int64_t)type
{
  if (qword_1025D4870 != -1)
  {
    sub_1018C3A58();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    typeCopy = type;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Stopped scanning for HomeKit 2.0 devices for type %{public}ld", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C3F58(type);
  }
}

- (void)homeKit:(id)kit failedToStartScanningWithError:(id)error forType:(int64_t)type
{
  v6 = sub_10016D878(type);

  sub_100567E08(v6, error, v6);
}

- (void)centralManagerDidUpdateState:(id)state
{
  self->_cbPower = [state state] != 4;
  homekitProvider = self->_homekitProvider;
  power = [(CLHomeKitDelegate *)self power];

  sub_100567034(homekitProvider, power);
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v9 = [data objectForKey:CBAdvertisementDataServiceDataKey];
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", @"FED4"}];
    if (i)
    {
      LODWORD(i) = [i intValue];
    }

    homekitProvider = self->_homekitProvider;
    identifier = [peripheral identifier];
    Current_2 = j__CFAbsoluteTimeGetCurrent_2();

    sub_10056717C(homekitProvider, identifier, 1, v10, i, 0, Current_2);
  }
}

@end