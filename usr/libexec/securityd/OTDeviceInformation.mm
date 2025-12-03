@interface OTDeviceInformation
+ (BOOL)isFullPeer:(id)peer;
- (id)initForContainerName:(id)name contextID:(id)d epoch:(unint64_t)epoch machineID:(id)iD modelID:(id)modelID deviceName:(id)deviceName serialNumber:(id)number osVersion:(id)self0;
@end

@implementation OTDeviceInformation

- (id)initForContainerName:(id)name contextID:(id)d epoch:(unint64_t)epoch machineID:(id)iD modelID:(id)modelID deviceName:(id)deviceName serialNumber:(id)number osVersion:(id)self0
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  modelIDCopy = modelID;
  deviceNameCopy = deviceName;
  numberCopy = number;
  versionCopy = version;
  v26.receiver = self;
  v26.super_class = OTDeviceInformation;
  v23 = [(OTDeviceInformation *)&v26 init];
  v24 = v23;
  if (v23)
  {
    [(OTDeviceInformation *)v23 setContainerName:nameCopy];
    [(OTDeviceInformation *)v24 setContextID:dCopy];
    [(OTDeviceInformation *)v24 setEpoch:epoch];
    [(OTDeviceInformation *)v24 setMachineID:iDCopy];
    [(OTDeviceInformation *)v24 setModelID:modelIDCopy];
    [(OTDeviceInformation *)v24 setDeviceName:deviceNameCopy];
    [(OTDeviceInformation *)v24 setSerialNumber:numberCopy];
    [(OTDeviceInformation *)v24 setOsVersion:versionCopy];
  }

  return v24;
}

+ (BOOL)isFullPeer:(id)peer
{
  peerCopy = peer;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&off_100365A00 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&off_100365A00);
        }

        if ([peerCopy containsString:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [&off_100365A00 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end