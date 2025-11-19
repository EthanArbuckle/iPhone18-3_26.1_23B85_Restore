@interface SDHeadphoneEndCallManager
- (BOOL)isStatusUnknown;
- (SDHeadphoneEndCallManager)initWithBluetoothAddress:(id)a3;
@end

@implementation SDHeadphoneEndCallManager

- (SDHeadphoneEndCallManager)initWithBluetoothAddress:(id)a3
{
  v10.receiver = self;
  v10.super_class = SDHeadphoneEndCallManager;
  v3 = a3;
  v4 = [(SDHeadphoneEndCallManager *)&v10 init];
  v5 = [v3 copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  if (dword_10096FCE8 <= 30 && (dword_10096FCE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100087E0C(v4 + 1);
  }

  v7 = +[BluetoothManager sharedInstance];
  v8 = *(v4 + 3);
  *(v4 + 3) = v7;

  return v4;
}

- (BOOL)isStatusUnknown
{
  [(BluetoothManager *)self->_btManager pairedDevices];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 address];
        v10 = [v9 isEqualToString:self->_bluetoothAddressString];

        if (v10)
        {
          objc_storeStrong(&self->_bluetoothDevice, v8);
          if (dword_10096FCE8 <= 30 && (dword_10096FCE8 != -1 || _LogCategory_Initialize()))
          {
            sub_100087E50(&self->_bluetoothDevice);
          }

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  bluetoothDevice = self->_bluetoothDevice;
  p_bluetoothDevice = &self->_bluetoothDevice;
  v13 = [(BluetoothDevice *)bluetoothDevice getCallManagementConfig];
  if ([(BluetoothDevice *)*p_bluetoothDevice getAACPCapabilityBit:80])
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = (v13 & 0xFE00) == 0;
  }

  else
  {
    if (dword_10096FCE8 <= 30 && (dword_10096FCE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100087E94(p_bluetoothDevice);
    }

    v15 = 0;
  }

  return v15;
}

@end