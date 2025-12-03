@interface HIDApplePencilGen3Device
- (HIDApplePencilGen3Device)initWithProperties:(id)properties reports:(id)reports;
- (id)desiredConnectionParameters;
- (id)newUserDevices:(id)devices;
- (void)authCompleted:(BOOL)completed;
- (void)checkAndLogHostInputReportCollision:(unsigned __int8)collision reportID:(unsigned __int8)d;
- (void)notifyDownstreamOnChargerState:(BOOL)state;
- (void)pairingInfoCompleted;
- (void)setChargingConnParamDefaults;
- (void)setNormalConnParamDefaults;
@end

@implementation HIDApplePencilGen3Device

- (HIDApplePencilGen3Device)initWithProperties:(id)properties reports:(id)reports
{
  v4 = [(HIDApplePencilGen2Device *)self initWithProperties:properties reports:reports loggingIdentifier:@"Pencil3"];
  LODWORD(v5) = 15.0;
  [(HIDApplePencilGen3Device *)v4 setPreferredInterval:v5];
  [(HIDApplePencilGen3Device *)v4 setLatency:65];
  [(HIDApplePencilGen2Device *)v4 publishProperties];

  return v4;
}

- (id)newUserDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [(HIDApplePencilGen2Device *)self newDeviceMgntDevice:devicesCopy keyholeID:0];
  v6 = [(HIDApplePencilGen2Device *)self newTouchDevice:devicesCopy keyholeID:1];
  v7 = [(HIDApplePencilGen3Device *)self newMotionDevice:devicesCopy keyholeID:2];
  v8 = [(HIDApplePencilGen3Device *)self newHapticsDevice:devicesCopy keyholeID:3];
  v9 = [(HIDApplePencilGen2p5Device *)self newFwUpgradeDevice:devicesCopy keyholeID:5];
  v10 = [(HIDApplePencilGen2Device *)self newForceDevice:devicesCopy keyholeID:8];

  if (!v5)
  {
    sub_1000725C0(&v16);
LABEL_15:
    allValues = v16;
    goto LABEL_8;
  }

  if (!v6)
  {
    sub_100072564(&v16);
    goto LABEL_15;
  }

  if (!v7)
  {
    sub_100072508(&v16);
    goto LABEL_15;
  }

  if (!v8)
  {
    sub_1000724AC(&v16);
    goto LABEL_15;
  }

  if (!v9)
  {
    sub_100072450(&v16);
    goto LABEL_15;
  }

  if (!v10)
  {
    sub_1000723F4(&v16);
    goto LABEL_15;
  }

  v17[0] = &off_1000C3990;
  v17[1] = &off_1000C39A8;
  v18[0] = v5;
  v18[1] = v6;
  v17[2] = &off_1000C39C0;
  v17[3] = &off_1000C39D8;
  v18[2] = v7;
  v18[3] = v8;
  v17[4] = &off_1000C39F0;
  v17[5] = &off_1000C3A08;
  v18[4] = v9;
  v18[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:6];
  [(HIDApplePencilGen2Device *)self setUserDevices:v11];

  userDevices = [(HIDApplePencilGen2Device *)self userDevices];
  [userDevices enumerateKeysAndObjectsUsingBlock:&stru_1000BD568];

  userDevices2 = [(HIDApplePencilGen2Device *)self userDevices];
  allValues = [userDevices2 allValues];

LABEL_8:
  return allValues;
}

- (void)setNormalConnParamDefaults
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v3 = [v8 objectForKey:@"NormalConnInterval"];

  if (v3)
  {
    v4 = [v8 integerForKey:@"NormalConnInterval"];
  }

  else
  {
    v4 = 15.0;
  }

  v5 = [v8 objectForKey:@"NormalConnLatency"];

  if (v5)
  {
    v7 = [v8 integerForKey:@"NormalConnLatency"];
  }

  else
  {
    v7 = 65;
  }

  *&v6 = v4;
  [(HIDApplePencilGen3Device *)self setPreferredInterval:v6];
  [(HIDApplePencilGen3Device *)self setLatency:v7];
}

- (void)setChargingConnParamDefaults
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v3 = [v8 objectForKey:@"ChargingConnInterval"];

  if (v3)
  {
    v4 = [v8 integerForKey:@"ChargingConnInterval"];
  }

  else
  {
    v4 = 15.0;
  }

  v5 = [v8 objectForKey:@"ChargingConnLatency"];

  if (v5)
  {
    v7 = [v8 integerForKey:@"ChargingConnLatency"];
  }

  else
  {
    v7 = 7;
  }

  *&v6 = v4;
  [(HIDApplePencilGen3Device *)self setPreferredInterval:v6];
  [(HIDApplePencilGen3Device *)self setLatency:v7];
}

- (id)desiredConnectionParameters
{
  v8.receiver = self;
  v8.super_class = HIDApplePencilGen3Device;
  desiredConnectionParameters = [(HIDApplePencilGen2Device *)&v8 desiredConnectionParameters];
  [(HIDApplePencilGen3Device *)self preferredInterval];
  [desiredConnectionParameters setMinInterval:?];
  [(HIDApplePencilGen3Device *)self preferredInterval];
  [desiredConnectionParameters setPreferredInterval:?];
  [desiredConnectionParameters setPreferredPeripheralLatency:{-[HIDApplePencilGen3Device latency](self, "latency")}];
  [desiredConnectionParameters setMaxPeripheralLatency:{-[HIDApplePencilGen3Device latency](self, "latency")}];
  v4 = ([desiredConnectionParameters preferredPeripheralLatency] + 1);
  [desiredConnectionParameters preferredInterval];
  v6 = ((v5 * v4) * 4.0) + 1.0;
  if (v6 < 2000.0)
  {
    v6 = 2000.0;
  }

  [desiredConnectionParameters setTimeout:v6];

  return desiredConnectionParameters;
}

- (void)pairingInfoCompleted
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    loggingIdentifier = [(HIDApplePencilDevice *)self loggingIdentifier];
    v6 = 138412290;
    v7 = loggingIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ received pairing info", &v6, 0xCu);
  }
}

- (void)authCompleted:(BOOL)completed
{
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007261C(v5, self, completed);
  }
}

- (void)notifyDownstreamOnChargerState:(BOOL)state
{
  v4[0] = -1;
  v4[1] = state;
  deviceMgntUserDevice = [(HIDApplePencilGen2Device *)self deviceMgntUserDevice];
  [deviceMgntUserDevice handleInputReport:v4 reportLength:2];
}

- (void)checkAndLogHostInputReportCollision:(unsigned __int8)collision reportID:(unsigned __int8)d
{
  if (!collision && d == 255)
  {
    v4 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000726E0(v4);
    }
  }
}

@end