@interface NRDeviceMonitorObjc
- (BOOL)isAsleep;
- (NRDeviceMonitorObjc)initWithDeviceIdentifier:(id)a3 callback:(id)a4 queue:(id)a5;
@end

@implementation NRDeviceMonitorObjc

- (BOOL)isAsleep
{
  v2 = [(NRDeviceMonitorObjc *)self monitor];
  v3 = [v2 isAsleep];

  return v3;
}

- (NRDeviceMonitorObjc)initWithDeviceIdentifier:(id)a3 callback:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NRDeviceMonitorObjc;
  v11 = [(NRDeviceMonitorObjc *)&v14 init];
  if (v11)
  {
    v12 = [[NRDeviceMonitor alloc] initWithDeviceIdentifier:v8 delegate:v11 queue:v10];
    [(NRDeviceMonitorObjc *)v11 setMonitor:v12];

    [(NRDeviceMonitorObjc *)v11 setCallback:v9];
  }

  return v11;
}

@end