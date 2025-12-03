@interface HRCUtilities
+ (id)translateToHRCDevice:(id)device;
+ (int64_t)translateToHealthKitContextType:(int64_t)type;
@end

@implementation HRCUtilities

+ (id)translateToHRCDevice:(id)device
{
  deviceCopy = device;
  v15 = [HRCDevice alloc];
  name = [deviceCopy name];
  manufacturer = [deviceCopy manufacturer];
  model = [deviceCopy model];
  hardwareVersion = [deviceCopy hardwareVersion];
  firmwareVersion = [deviceCopy firmwareVersion];
  softwareVersion = [deviceCopy softwareVersion];
  localIdentifier = [deviceCopy localIdentifier];
  uDIDeviceIdentifier = [deviceCopy UDIDeviceIdentifier];
  bluetoothIdentifier = [deviceCopy bluetoothIdentifier];

  v13 = [v15 initWithName:name manufacturer:manufacturer model:model hardwareVersion:hardwareVersion firmwareVersion:firmwareVersion softwareVersion:softwareVersion localIdentifier:localIdentifier UDIDeviceIdentifier:uDIDeviceIdentifier bluetoothIdentifier:bluetoothIdentifier];

  return v13;
}

+ (int64_t)translateToHealthKitContextType:(int64_t)type
{
  if ((type - 1) >= 0xB)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

@end