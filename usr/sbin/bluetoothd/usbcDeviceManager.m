@interface usbcDeviceManager
- (id)_getDeviceFromAddress:(unint64_t)a3;
- (id)_getDeviceWithAudioStreaming;
- (unint64_t)_getBTAddressWithAudioStreaming;
- (usbcDeviceManager)init;
- (void)_addDeviceWithAddress:(id)a3 status:(unsigned __int8)a4;
- (void)_removeDeviceWithAddress:(id)a3;
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

- (void)_addDeviceWithAddress:(id)a3 status:(unsigned __int8)a4
{
  v4 = a4;
  v5 = [(usbcDeviceManager *)self _getDeviceFromAddress:sub_100777FF4(a3)];
  if (v5)
  {
    [v5 configureUSBCSpatialOnDevice:v4 == 2];
  }
}

- (void)_removeDeviceWithAddress:(id)a3
{
  v4 = [NSNumber numberWithUnsignedLongLong:sub_100777FF4(a3)];
  v5 = [(usbcDeviceManager *)self deviceDictionary];
  v7 = [v5 objectForKey:v4];

  if (v7)
  {
    [v7 usbcStopSensorDataOnDevice];
    v6 = [(usbcDeviceManager *)self deviceDictionary];
    [v6 removeObjectForKey:v4];

    notify_post("com.apple.bluetooth.AdaptiveJitterBufferChanged");
  }
}

- (id)_getDeviceFromAddress:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedLongLong:?];
  v6 = [(usbcDeviceManager *)self deviceDictionary];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = [(usbcDeviceManager *)self deviceDictionary];
    v9 = [v8 objectForKey:v5];
  }

  else
  {
    v9 = [[b515cUnifiedDevice alloc] initWithBluetoothAddress:a3];
    v8 = [(usbcDeviceManager *)self deviceDictionary];
    [v8 setObject:v9 forKey:v5];
  }

  return v9;
}

- (unint64_t)_getBTAddressWithAudioStreaming
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(usbcDeviceManager *)self deviceDictionary];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [(usbcDeviceManager *)self deviceDictionary];
        v9 = [v8 objectForKey:v7];

        if ([v9 audioStarted])
        {
          v10 = [v7 unsignedLongLongValue];

          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_getDeviceWithAudioStreaming
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(usbcDeviceManager *)self deviceDictionary];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = [(usbcDeviceManager *)self deviceDictionary];
      v9 = [v8 objectForKey:v7];

      if ([v9 audioStarted])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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