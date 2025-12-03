@interface SFDevice
- (NSUUID)deviceIdentifier;
- (char)channel;
- (int)rssi;
@end

@implementation SFDevice

- (NSUUID)deviceIdentifier
{
  bleDevice = [(SFDevice *)self bleDevice];
  advertisementFields = [bleDevice advertisementFields];

  Int64Ranged = CFDictionaryGetInt64Ranged();
  model = [(SFDevice *)self model];
  if (([model isEqual:{@"AirPods1, 1"}] & 1) != 0 || (objc_msgSend(model, "isEqual:", @"AirPods1,3") & 1) != 0 || objc_msgSend(model, "isEqual:", @"AirPodsPro1,1"))
  {
  }

  else
  {
    v9 = [[SFHeadphoneProduct alloc] initWithBluetoothModel:model];
    isAirPods = [v9 isAirPods];

    if ((isAirPods & 1) == 0 && Int64Ranged)
    {
      identifier = [(SFDevice *)self identifier];
      uUIDString = [identifier UUIDString];

      v13 = [uUIDString length] - 4;
      if ((Int64Ranged & 0x80) != 0)
      {
        v14 = @"1EF7";
      }

      else
      {
        v14 = @"0010";
      }

      v15 = [uUIDString stringByReplacingCharactersInRange:v13 withString:{4, v14}];
      identifier2 = [[NSUUID alloc] initWithUUIDString:v15];

      goto LABEL_6;
    }
  }

  identifier2 = [(SFDevice *)self identifier];
LABEL_6:

  return identifier2;
}

- (int)rssi
{
  bleDevice = [(SFDevice *)self bleDevice];
  rssi = [bleDevice rssi];

  return rssi;
}

- (char)channel
{
  bleDevice = [(SFDevice *)self bleDevice];
  advertisementFields = [bleDevice advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  return Int64Ranged;
}

@end