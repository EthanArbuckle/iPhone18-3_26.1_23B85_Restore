@interface KTIDMSDevice
- (id)initWithAKRemoteDevice:(id)a3;
@end

@implementation KTIDMSDevice

- (id)initWithAKRemoteDevice:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = KTIDMSDevice;
  v5 = [(KTIDMSDevice *)&v15 init];
  if (v5)
  {
    v6 = [v4 machineId];
    [(KTIDMSDevice *)v5 setDeviceID:v6];

    v7 = [v4 name];
    [(KTIDMSDevice *)v5 setName:v7];

    v8 = [v4 model];
    [(KTIDMSDevice *)v5 setModel:v8];

    v9 = [v4 operatingSystemVersion];
    [(KTIDMSDevice *)v5 setOsVersion:v9];

    v10 = [v4 buildNumber];
    [(KTIDMSDevice *)v5 setBuild:v10];

    v11 = [v4 serialNumber];
    [(KTIDMSDevice *)v5 setSerial:v11];

    if (objc_opt_respondsToSelector())
    {
      v12 = [v4 pushToken];
      [(KTIDMSDevice *)v5 setPushToken:v12];
    }

    v13 = v5;
  }

  return v5;
}

@end