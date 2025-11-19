@interface CLHomeKitDelegate
- (CLHomeKitDelegate)initWithProvider:(void *)a3;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)homeKit:(id)a3 failedToStartScanningWithError:(id)a4 forType:(int64_t)a5;
- (void)homeKit:(id)a3 foundDevice:(id)a4 withData:(id)a5 RSSI:(id)a6 type:(int64_t)a7;
- (void)homeKitDidUpdateState:(id)a3;
- (void)homeKitStartedScanning:(id)a3 forType:(int64_t)a4;
- (void)homeKitStoppedScanning:(id)a3 forType:(int64_t)a4;
@end

@implementation CLHomeKitDelegate

- (CLHomeKitDelegate)initWithProvider:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLHomeKitDelegate;
  result = [(CLHomeKitDelegate *)&v5 init];
  if (result)
  {
    result->_homekitProvider = a3;
    *&result->_homekitPower = 0;
  }

  return result;
}

- (void)homeKitDidUpdateState:(id)a3
{
  self->_homekitPower = [a3 state] == 3;
  homekitProvider = self->_homekitProvider;
  v5 = [(CLHomeKitDelegate *)self power];

  sub_100567034(homekitProvider, v5);
}

- (void)homeKit:(id)a3 foundDevice:(id)a4 withData:(id)a5 RSSI:(id)a6 type:(int64_t)a7
{
  v11 = [a5 objectForKeyedSubscript:CBAdvertisementDataManufacturerDataKey];
  if (a6)
  {
    LODWORD(a6) = [a6 intValue];
  }

  v12 = sub_10016D878(a7);
  homekitProvider = self->_homekitProvider;
  Current_2 = j__CFAbsoluteTimeGetCurrent_2();

  sub_10056717C(homekitProvider, a4, 2, v11, a6, v12, Current_2);
}

- (void)homeKitStartedScanning:(id)a3 forType:(int64_t)a4
{
  if (qword_1025D4870 != -1)
  {
    sub_1018C3A58();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    v7 = a4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Started scanning for HomeKit 2.0 devices for type %{public}ld", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C3E64(a4);
  }
}

- (void)homeKitStoppedScanning:(id)a3 forType:(int64_t)a4
{
  if (qword_1025D4870 != -1)
  {
    sub_1018C3A58();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    v7 = a4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Stopped scanning for HomeKit 2.0 devices for type %{public}ld", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C3F58(a4);
  }
}

- (void)homeKit:(id)a3 failedToStartScanningWithError:(id)a4 forType:(int64_t)a5
{
  v6 = sub_10016D878(a5);

  sub_100567E08(v6, a4, v6);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  self->_cbPower = [a3 state] != 4;
  homekitProvider = self->_homekitProvider;
  v5 = [(CLHomeKitDelegate *)self power];

  sub_100567034(homekitProvider, v5);
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v9 = [a5 objectForKey:CBAdvertisementDataServiceDataKey];
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", @"FED4"}];
    if (a6)
    {
      LODWORD(a6) = [a6 intValue];
    }

    homekitProvider = self->_homekitProvider;
    v12 = [a4 identifier];
    Current_2 = j__CFAbsoluteTimeGetCurrent_2();

    sub_10056717C(homekitProvider, v12, 1, v10, a6, 0, Current_2);
  }
}

@end