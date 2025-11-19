@interface HRCUtilities
+ (id)translateToHRCDevice:(id)a3;
+ (int64_t)translateToHealthKitContextType:(int64_t)a3;
@end

@implementation HRCUtilities

+ (id)translateToHRCDevice:(id)a3
{
  v3 = a3;
  v15 = [HRCDevice alloc];
  v4 = [v3 name];
  v5 = [v3 manufacturer];
  v6 = [v3 model];
  v7 = [v3 hardwareVersion];
  v8 = [v3 firmwareVersion];
  v9 = [v3 softwareVersion];
  v10 = [v3 localIdentifier];
  v11 = [v3 UDIDeviceIdentifier];
  v12 = [v3 bluetoothIdentifier];

  v13 = [v15 initWithName:v4 manufacturer:v5 model:v6 hardwareVersion:v7 firmwareVersion:v8 softwareVersion:v9 localIdentifier:v10 UDIDeviceIdentifier:v11 bluetoothIdentifier:v12];

  return v13;
}

+ (int64_t)translateToHealthKitContextType:(int64_t)a3
{
  if ((a3 - 1) >= 0xB)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end