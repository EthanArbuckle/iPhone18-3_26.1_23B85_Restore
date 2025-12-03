@interface HIDApplePencilGen2p5Device
- (id)newUserDevices:(id)devices;
@end

@implementation HIDApplePencilGen2p5Device

- (id)newUserDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [(HIDApplePencilGen2Device *)self newDeviceMgntDevice:devicesCopy keyholeID:0];
  v6 = [(HIDApplePencilGen2Device *)self newWakeDevice:devicesCopy keyholeID:4];
  v7 = [(HIDApplePencilGen2p5Device *)self newFwUpgradeDevice:devicesCopy keyholeID:5];
  v8 = [(HIDApplePencilGen2Device *)self newForceDevice:devicesCopy keyholeID:8];

  if (!v5)
  {
    sub_1000725C0(&v14);
LABEL_11:
    allValues = v14;
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

  userDevices = [(HIDApplePencilGen2Device *)self userDevices];
  [userDevices enumerateKeysAndObjectsUsingBlock:&stru_1000BDAB8];

  userDevices2 = [(HIDApplePencilGen2Device *)self userDevices];
  allValues = [userDevices2 allValues];

LABEL_6:
  return allValues;
}

@end