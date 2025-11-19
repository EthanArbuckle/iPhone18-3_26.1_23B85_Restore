@interface HIDApplePencilGen3Device
- (HIDApplePencilGen3Device)initWithProperties:(id)a3 reports:(id)a4;
- (id)desiredConnectionParameters;
- (id)newUserDevices:(id)a3;
- (void)authCompleted:(BOOL)a3;
- (void)checkAndLogHostInputReportCollision:(unsigned __int8)a3 reportID:(unsigned __int8)a4;
- (void)notifyDownstreamOnChargerState:(BOOL)a3;
- (void)pairingInfoCompleted;
- (void)setChargingConnParamDefaults;
- (void)setNormalConnParamDefaults;
@end

@implementation HIDApplePencilGen3Device

- (HIDApplePencilGen3Device)initWithProperties:(id)a3 reports:(id)a4
{
  v4 = [(HIDApplePencilGen2Device *)self initWithProperties:a3 reports:a4 loggingIdentifier:@"Pencil3"];
  LODWORD(v5) = 15.0;
  [(HIDApplePencilGen3Device *)v4 setPreferredInterval:v5];
  [(HIDApplePencilGen3Device *)v4 setLatency:65];
  [(HIDApplePencilGen2Device *)v4 publishProperties];

  return v4;
}

- (id)newUserDevices:(id)a3
{
  v4 = a3;
  v5 = [(HIDApplePencilGen2Device *)self newDeviceMgntDevice:v4 keyholeID:0];
  v6 = [(HIDApplePencilGen2Device *)self newTouchDevice:v4 keyholeID:1];
  v7 = [(HIDApplePencilGen3Device *)self newMotionDevice:v4 keyholeID:2];
  v8 = [(HIDApplePencilGen3Device *)self newHapticsDevice:v4 keyholeID:3];
  v9 = [(HIDApplePencilGen2p5Device *)self newFwUpgradeDevice:v4 keyholeID:5];
  v10 = [(HIDApplePencilGen2Device *)self newForceDevice:v4 keyholeID:8];

  if (!v5)
  {
    sub_1000725C0(&v16);
LABEL_15:
    v14 = v16;
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

  v12 = [(HIDApplePencilGen2Device *)self userDevices];
  [v12 enumerateKeysAndObjectsUsingBlock:&stru_1000BD568];

  v13 = [(HIDApplePencilGen2Device *)self userDevices];
  v14 = [v13 allValues];

LABEL_8:
  return v14;
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
  v3 = [(HIDApplePencilGen2Device *)&v8 desiredConnectionParameters];
  [(HIDApplePencilGen3Device *)self preferredInterval];
  [v3 setMinInterval:?];
  [(HIDApplePencilGen3Device *)self preferredInterval];
  [v3 setPreferredInterval:?];
  [v3 setPreferredPeripheralLatency:{-[HIDApplePencilGen3Device latency](self, "latency")}];
  [v3 setMaxPeripheralLatency:{-[HIDApplePencilGen3Device latency](self, "latency")}];
  v4 = ([v3 preferredPeripheralLatency] + 1);
  [v3 preferredInterval];
  v6 = ((v5 * v4) * 4.0) + 1.0;
  if (v6 < 2000.0)
  {
    v6 = 2000.0;
  }

  [v3 setTimeout:v6];

  return v3;
}

- (void)pairingInfoCompleted
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HIDApplePencilDevice *)self loggingIdentifier];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ received pairing info", &v6, 0xCu);
  }
}

- (void)authCompleted:(BOOL)a3
{
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007261C(v5, self, a3);
  }
}

- (void)notifyDownstreamOnChargerState:(BOOL)a3
{
  v4[0] = -1;
  v4[1] = a3;
  v3 = [(HIDApplePencilGen2Device *)self deviceMgntUserDevice];
  [v3 handleInputReport:v4 reportLength:2];
}

- (void)checkAndLogHostInputReportCollision:(unsigned __int8)a3 reportID:(unsigned __int8)a4
{
  if (!a3 && a4 == 255)
  {
    v4 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000726E0(v4);
    }
  }
}

@end