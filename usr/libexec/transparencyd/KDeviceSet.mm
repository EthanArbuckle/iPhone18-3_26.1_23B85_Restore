@interface KDeviceSet
- (KDeviceSet)init;
- (id)addDevice:(id)device registationData:(id)data app:(id)app;
@end

@implementation KDeviceSet

- (KDeviceSet)init
{
  v6.receiver = self;
  v6.super_class = KDeviceSet;
  v2 = [(KDeviceSet *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    [(KDeviceSet *)v2 setDevices:v3];

    v4 = v2;
  }

  return v2;
}

- (id)addDevice:(id)device registationData:(id)data app:(id)app
{
  appCopy = app;
  dataCopy = data;
  deviceCopy = device;
  v11 = [[KDevice alloc] initWithPushToken:deviceCopy registrationData:dataCopy];

  devices = [(KDeviceSet *)self devices];
  v13 = [devices member:v11];

  if (!v13)
  {
    devices2 = [(KDeviceSet *)self devices];
    [devices2 addObject:v11];

    v13 = v11;
  }

  [(KDevice *)v13 addApplication:appCopy];

  return v13;
}

@end