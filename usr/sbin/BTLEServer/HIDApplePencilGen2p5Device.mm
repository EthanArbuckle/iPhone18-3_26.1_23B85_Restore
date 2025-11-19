@interface HIDApplePencilGen2p5Device
- (id)newUserDevices:(id)a3;
@end

@implementation HIDApplePencilGen2p5Device

- (id)newUserDevices:(id)a3
{
  v4 = a3;
  v5 = [(HIDApplePencilGen2Device *)self newDeviceMgntDevice:v4 keyholeID:0];
  v6 = [(HIDApplePencilGen2Device *)self newWakeDevice:v4 keyholeID:4];
  v7 = [(HIDApplePencilGen2p5Device *)self newFwUpgradeDevice:v4 keyholeID:5];
  v8 = [(HIDApplePencilGen2Device *)self newForceDevice:v4 keyholeID:8];

  if (!v5)
  {
    sub_1000725C0(&v14);
LABEL_11:
    v12 = v14;
    goto LABEL_6;
  }

  if (!v6)
  {
    sub_1000742F4(&v14);
    goto LABEL_11;
  }

  if (!v7)
  {
    sub_100072450(&v14);
    goto LABEL_11;
  }

  if (!v8)
  {
    sub_1000723F4(&v14);
    goto LABEL_11;
  }

  v15[0] = &off_1000C3B58;
  v15[1] = &off_1000C3B70;
  v16[0] = v5;
  v16[1] = v6;
  v15[2] = &off_1000C3B88;
  v15[3] = &off_1000C3BA0;
  v16[2] = v7;
  v16[3] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  [(HIDApplePencilGen2Device *)self setUserDevices:v9];

  v10 = [(HIDApplePencilGen2Device *)self userDevices];
  [v10 enumerateKeysAndObjectsUsingBlock:&stru_1000BDAB8];

  v11 = [(HIDApplePencilGen2Device *)self userDevices];
  v12 = [v11 allValues];

LABEL_6:
  return v12;
}

@end