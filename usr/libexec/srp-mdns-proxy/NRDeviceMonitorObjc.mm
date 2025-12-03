@interface NRDeviceMonitorObjc
- (BOOL)isAsleep;
- (NRDeviceMonitorObjc)initWithDeviceIdentifier:(id)identifier callback:(id)callback queue:(id)queue;
@end

@implementation NRDeviceMonitorObjc

- (BOOL)isAsleep
{
  monitor = [(NRDeviceMonitorObjc *)self monitor];
  isAsleep = [monitor isAsleep];

  return isAsleep;
}

- (NRDeviceMonitorObjc)initWithDeviceIdentifier:(id)identifier callback:(id)callback queue:(id)queue
{
  identifierCopy = identifier;
  callbackCopy = callback;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = NRDeviceMonitorObjc;
  v11 = [(NRDeviceMonitorObjc *)&v14 init];
  if (v11)
  {
    v12 = [[NRDeviceMonitor alloc] initWithDeviceIdentifier:identifierCopy delegate:v11 queue:queueCopy];
    [(NRDeviceMonitorObjc *)v11 setMonitor:v12];

    [(NRDeviceMonitorObjc *)v11 setCallback:callbackCopy];
  }

  return v11;
}

@end