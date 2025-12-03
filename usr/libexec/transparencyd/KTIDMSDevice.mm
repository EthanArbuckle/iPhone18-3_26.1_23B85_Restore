@interface KTIDMSDevice
- (id)initWithAKRemoteDevice:(id)device;
@end

@implementation KTIDMSDevice

- (id)initWithAKRemoteDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = KTIDMSDevice;
  v5 = [(KTIDMSDevice *)&v15 init];
  if (v5)
  {
    machineId = [deviceCopy machineId];
    [(KTIDMSDevice *)v5 setDeviceID:machineId];

    name = [deviceCopy name];
    [(KTIDMSDevice *)v5 setName:name];

    model = [deviceCopy model];
    [(KTIDMSDevice *)v5 setModel:model];

    operatingSystemVersion = [deviceCopy operatingSystemVersion];
    [(KTIDMSDevice *)v5 setOsVersion:operatingSystemVersion];

    buildNumber = [deviceCopy buildNumber];
    [(KTIDMSDevice *)v5 setBuild:buildNumber];

    serialNumber = [deviceCopy serialNumber];
    [(KTIDMSDevice *)v5 setSerial:serialNumber];

    if (objc_opt_respondsToSelector())
    {
      pushToken = [deviceCopy pushToken];
      [(KTIDMSDevice *)v5 setPushToken:pushToken];
    }

    v13 = v5;
  }

  return v5;
}

@end