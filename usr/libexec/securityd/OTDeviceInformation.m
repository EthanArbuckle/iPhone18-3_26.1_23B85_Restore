@interface OTDeviceInformation
+ (BOOL)isFullPeer:(id)a3;
- (id)initForContainerName:(id)a3 contextID:(id)a4 epoch:(unint64_t)a5 machineID:(id)a6 modelID:(id)a7 deviceName:(id)a8 serialNumber:(id)a9 osVersion:(id)a10;
@end

@implementation OTDeviceInformation

- (id)initForContainerName:(id)a3 contextID:(id)a4 epoch:(unint64_t)a5 machineID:(id)a6 modelID:(id)a7 deviceName:(id)a8 serialNumber:(id)a9 osVersion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v26.receiver = self;
  v26.super_class = OTDeviceInformation;
  v23 = [(OTDeviceInformation *)&v26 init];
  v24 = v23;
  if (v23)
  {
    [(OTDeviceInformation *)v23 setContainerName:v16];
    [(OTDeviceInformation *)v24 setContextID:v17];
    [(OTDeviceInformation *)v24 setEpoch:a5];
    [(OTDeviceInformation *)v24 setMachineID:v18];
    [(OTDeviceInformation *)v24 setModelID:v19];
    [(OTDeviceInformation *)v24 setDeviceName:v20];
    [(OTDeviceInformation *)v24 setSerialNumber:v21];
    [(OTDeviceInformation *)v24 setOsVersion:v22];
  }

  return v24;
}

+ (BOOL)isFullPeer:(id)a3
{
  v3 = a3;
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

        if ([v3 containsString:*(*(&v10 + 1) + 8 * i)])
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