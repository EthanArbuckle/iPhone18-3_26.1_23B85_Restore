@interface HIDBluetoothDevice
+ (BOOL)reportsHaveMultipleReportIDs:(id)a3;
+ (id)hidDeviceWithProperties:(id)a3 reports:(id)a4;
- (HIDBluetoothDevice)init;
- (HIDBluetoothDevice)initWithProperties:(id)a3 reports:(id)a4;
- (id)allocHIDQueue;
- (id)desiredConnectionParameters;
- (void)dealloc;
- (void)notifyDesiredConnectionParametersDidChange;
- (void)notifyDidStart;
- (void)notifyDidStop;
- (void)start;
- (void)stop;
@end

@implementation HIDBluetoothDevice

+ (id)hidDeviceWithProperties:(id)a3 reports:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"VendorIDSource"];
  if ([v8 unsignedCharValue] != 1)
  {

    goto LABEL_10;
  }

  v9 = [v6 objectForKeyedSubscript:@"VendorID"];
  v10 = [v9 unsignedShortValue];

  if (v10 == 76)
  {
    v11 = [v6 objectForKeyedSubscript:@"ProductID"];
    v12 = [v11 unsignedShortValue];

    if (v12 > 620)
    {
      if ((v12 - 788) >= 2)
      {
        if (v12 == 1106)
        {
          v26 = [v6 objectForKeyedSubscript:@"Authenticated"];
          v27 = [v26 BOOLValue];

          if (!v27)
          {
            goto LABEL_10;
          }

          v15 = off_1000BC8A8;
          goto LABEL_30;
        }

        if (v12 != 621)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      if (v12 <= 545)
      {
        if (v12 != 332)
        {
          if (v12 == 482)
          {
            v13 = [v6 objectForKeyedSubscript:@"Authenticated"];
            v14 = [v13 BOOLValue];

            if (v14)
            {
              v15 = off_1000BC8A0;
              goto LABEL_30;
            }
          }

          goto LABEL_10;
        }

        v24 = [v6 objectForKeyedSubscript:@"Authenticated"];
        v25 = [v24 BOOLValue];

        if ((v25 & 1) == 0)
        {
          goto LABEL_10;
        }

        v15 = off_1000BC898;
LABEL_30:
        v28 = *v15;
        v19 = objc_opt_class();
        if (v19)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      if (v12 == 546)
      {
        v15 = off_1000BC890;
        goto LABEL_30;
      }

      if (v12 != 614)
      {
        goto LABEL_10;
      }
    }

    if (!MGGetBoolAnswer())
    {
      goto LABEL_10;
    }

    v22 = [v6 objectForKeyedSubscript:@"Authenticated"];
    v23 = [v22 BOOLValue];

    if ((v23 & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = off_1000BC8B0;
    goto LABEL_30;
  }

LABEL_10:
  v16 = [a1 reportsHaveMultipleReportIDs:v7];
  v17 = off_1000BC8B8;
  if (!v16)
  {
    v17 = &off_1000BC8C0;
  }

  v18 = *v17;
  v19 = objc_opt_class();
LABEL_13:
  v20 = [[v19 alloc] initWithProperties:v6 reports:v7];

  return v20;
}

- (void)start
{
  [(HIDBluetoothDevice *)self setState:1];
  v2 = +[PolicyManager instance];
  [v2 setActiveHIDDeviceCount:{objc_msgSend(v2, "activeHIDDeviceCount") + 1}];
}

- (void)stop
{
  [(HIDBluetoothDevice *)self setState:3];
  v2 = +[PolicyManager instance];
  [v2 setActiveHIDDeviceCount:{objc_msgSend(v2, "activeHIDDeviceCount") - 1}];
}

- (id)desiredConnectionParameters
{
  v2 = objc_alloc_init(ConnectionParameters);
  LODWORD(v3) = 15.0;
  [(ConnectionParameters *)v2 setMinInterval:v3];
  LODWORD(v4) = 15.0;
  [(ConnectionParameters *)v2 setPreferredInterval:v4];
  LODWORD(v5) = 1140457472;
  [(ConnectionParameters *)v2 setMaxInterval:v5];
  [(ConnectionParameters *)v2 setMinCELength:2];
  [(ConnectionParameters *)v2 setMaxCELength:6];
  [(ConnectionParameters *)v2 setPreferredPeripheralLatency:4];
  [(ConnectionParameters *)v2 setMaxPeripheralLatency:4];
  [(ConnectionParameters *)v2 setTimeout:1000];

  return v2;
}

- (HIDBluetoothDevice)init
{
  v3 = [NSString stringWithUTF8String:"[HIDBluetoothDevice init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (HIDBluetoothDevice)initWithProperties:(id)a3 reports:(id)a4
{
  v5.receiver = self;
  v5.super_class = HIDBluetoothDevice;
  result = [(HIDBluetoothDevice *)&v5 init:a3];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = HIDBluetoothDevice;
  [(HIDBluetoothDevice *)&v2 dealloc];
}

- (void)notifyDidStart
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024CD0;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)notifyDidStop
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024DB0;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)notifyDesiredConnectionParametersDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024E80;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)allocHIDQueue
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
  v4 = dispatch_queue_create([v3 UTF8String], v2);

  return v4;
}

+ (BOOL)reportsHaveMultipleReportIDs:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) ID];
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = v8;
        }

        else if (v6 != v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

@end