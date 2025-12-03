@interface usbcDeviceManager
- (id)_getDeviceFromAddress:(unint64_t)address;
- (id)_getDeviceWithAudioStreaming;
- (unint64_t)_getBTAddressWithAudioStreaming;
- (usbcDeviceManager)init;
- (void)_addDeviceWithAddress:(id)address status:(unsigned __int8)status;
- (void)_removeDeviceWithAddress:(id)address;
@end

@implementation usbcDeviceManager

- (usbcDeviceManager)init
{
  v6.receiver = self;
  v6.super_class = usbcDeviceManager;
  v2 = [(usbcDeviceManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    deviceDictionary = v2->_deviceDictionary;
    v2->_deviceDictionary = v3;
  }

  return v2;
}

- (void)_addDeviceWithAddress:(id)address status:(unsigned __int8)status
{
  statusCopy = status;
  v5 = [(usbcDeviceManager *)self _getDeviceFromAddress:sub_100777FF4(address)];
  if (v5)
  {
    [v5 configureUSBCSpatialOnDevice:statusCopy == 2];
  }
}

- (void)_removeDeviceWithAddress:(id)address
{
  v4 = [NSNumber numberWithUnsignedLongLong:sub_100777FF4(address)];
  deviceDictionary = [(usbcDeviceManager *)self deviceDictionary];
  v7 = [deviceDictionary objectForKey:v4];

  if (v7)
  {
    [v7 usbcStopSensorDataOnDevice];
    deviceDictionary2 = [(usbcDeviceManager *)self deviceDictionary];
    [deviceDictionary2 removeObjectForKey:v4];

    notify_post("com.apple.bluetooth.AdaptiveJitterBufferChanged");
  }
}

- (id)_getDeviceFromAddress:(unint64_t)address
{
  v5 = [NSNumber numberWithUnsignedLongLong:?];
  deviceDictionary = [(usbcDeviceManager *)self deviceDictionary];
  v7 = [deviceDictionary objectForKey:v5];

  if (v7)
  {
    deviceDictionary2 = [(usbcDeviceManager *)self deviceDictionary];
    v9 = [deviceDictionary2 objectForKey:v5];
  }

  else
  {
    v9 = [[b515cUnifiedDevice alloc] initWithBluetoothAddress:address];
    deviceDictionary2 = [(usbcDeviceManager *)self deviceDictionary];
    [deviceDictionary2 setObject:v9 forKey:v5];
  }

  return v9;
}

- (unint64_t)_getBTAddressWithAudioStreaming
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deviceDictionary = [(usbcDeviceManager *)self deviceDictionary];
  v4 = [deviceDictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(deviceDictionary);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        deviceDictionary2 = [(usbcDeviceManager *)self deviceDictionary];
        v9 = [deviceDictionary2 objectForKey:v7];

        if ([v9 audioStarted])
        {
          unsignedLongLongValue = [v7 unsignedLongLongValue];

          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [deviceDictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  unsignedLongLongValue = 0;
LABEL_11:

  return unsignedLongLongValue;
}

- (id)_getDeviceWithAudioStreaming
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  deviceDictionary = [(usbcDeviceManager *)self deviceDictionary];
  v4 = [deviceDictionary countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(deviceDictionary);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      deviceDictionary2 = [(usbcDeviceManager *)self deviceDictionary];
      v9 = [deviceDictionary2 objectForKey:v7];

      if ([v9 audioStarted])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [deviceDictionary countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

@end