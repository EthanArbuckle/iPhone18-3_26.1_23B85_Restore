@interface SFDevice
- (NSUUID)deviceIdentifier;
- (char)channel;
- (int)rssi;
@end

@implementation SFDevice

- (NSUUID)deviceIdentifier
{
  v3 = [(SFDevice *)self bleDevice];
  v4 = [v3 advertisementFields];

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v6 = [(SFDevice *)self model];
  if (([v6 isEqual:{@"AirPods1, 1"}] & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"AirPods1,3") & 1) != 0 || objc_msgSend(v6, "isEqual:", @"AirPodsPro1,1"))
  {
  }

  else
  {
    v9 = [[SFHeadphoneProduct alloc] initWithBluetoothModel:v6];
    v10 = [v9 isAirPods];

    if ((v10 & 1) == 0 && Int64Ranged)
    {
      v11 = [(SFDevice *)self identifier];
      v12 = [v11 UUIDString];

      v13 = [v12 length] - 4;
      if ((Int64Ranged & 0x80) != 0)
      {
        v14 = @"1EF7";
      }

      else
      {
        v14 = @"0010";
      }

      v15 = [v12 stringByReplacingCharactersInRange:v13 withString:{4, v14}];
      v7 = [[NSUUID alloc] initWithUUIDString:v15];

      goto LABEL_6;
    }
  }

  v7 = [(SFDevice *)self identifier];
LABEL_6:

  return v7;
}

- (int)rssi
{
  v2 = [(SFDevice *)self bleDevice];
  v3 = [v2 rssi];

  return v3;
}

- (char)channel
{
  v2 = [(SFDevice *)self bleDevice];
  v3 = [v2 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  return Int64Ranged;
}

@end