@interface SDHeadphoneFeatureManager
- (BOOL)isProxCardSupportedByProductID:(int)d;
- (SDHeadphoneFeatureManager)initWithBluetoothAddress:(id)address productID:(unsigned int)d;
- (id)getFeatureName:(int)name;
@end

@implementation SDHeadphoneFeatureManager

- (SDHeadphoneFeatureManager)initWithBluetoothAddress:(id)address productID:(unsigned int)d
{
  addressCopy = address;
  v25.receiver = self;
  v25.super_class = SDHeadphoneFeatureManager;
  v7 = [(SDHeadphoneFeatureManager *)&v25 init];
  v8 = [addressCopy copy];
  v9 = *(v7 + 2);
  *(v7 + 2) = v8;

  *(v7 + 2) = d;
  if (dword_100970DC0 <= 30 && (dword_100970DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100123460(v7 + 2);
  }

  v10 = +[BluetoothManager sharedInstance];
  v11 = *(v7 + 4);
  *(v7 + 4) = v10;

  [*(v7 + 4) pairedDevices];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v24 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        address = [v17 address];
        v19 = [address isEqualToString:*(v7 + 2)];

        if (v19)
        {
          objc_storeStrong(v7 + 3, v17);
          if (dword_100970DC0 <= 30 && (dword_100970DC0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001234A4(v7 + 3);
          }

          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v7;
}

- (BOOL)isProxCardSupportedByProductID:(int)d
{
  if (d == 1)
  {
    v3 = [[SFHeadphoneProduct alloc] initWithProductID:self->_productID];
    supportsAdaptiveControlsProx = [v3 supportsAdaptiveControlsProx];
  }

  else
  {
    if (d)
    {
      return 0;
    }

    v3 = [[SFHeadphoneProduct alloc] initWithProductID:self->_productID];
    supportsAdaptiveControlsProx = [v3 supportsMuteCallProx];
  }

  v5 = supportsAdaptiveControlsProx;

  return v5;
}

- (id)getFeatureName:(int)name
{
  v3 = @"Unknown";
  if (name == 1)
  {
    v3 = @"Adaptive Controls";
  }

  if (name)
  {
    return v3;
  }

  else
  {
    return @"Mute Call";
  }
}

@end