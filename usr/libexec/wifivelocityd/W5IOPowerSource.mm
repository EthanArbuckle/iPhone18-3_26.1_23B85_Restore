@interface W5IOPowerSource
- (W5IOPowerSource)init;
- (double)estimatedTimeRemaining;
- (double)internalBatteryLevel;
- (int)batteryWarningLevel;
- (int64_t)powerSourceType;
- (void)dealloc;
- (void)setLowBatteryCallback:(id)callback;
- (void)setUpdatedPowerSourceCallback:(id)callback;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation W5IOPowerSource

- (W5IOPowerSource)init
{
  v5.receiver = self;
  v5.super_class = W5IOPowerSource;
  v2 = [(W5IOPowerSource *)&v5 init];
  if (v2 && (v3 = dispatch_queue_create("com.apple.wifivelocityd.iops", 0), (v2->_queue = v3) != 0))
  {
    dispatch_queue_set_specific(v3, &v2->_queue, 1, 0);
  }

  else
  {

    return 0;
  }

  return v2;
}

- (void)setUpdatedPowerSourceCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedPowerSourceCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100037C90;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setLowBatteryCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_lowBatteryCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100037D8C;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = W5IOPowerSource;
  [(W5IOPowerSource *)&v4 dealloc];
}

- (void)startEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037EB8;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038474;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (double)internalBatteryLevel
{
  v2 = IOPSCopyPowerSourcesInfo();
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  v4 = IOPSCopyPowerSourcesList(v2);
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    if (CFArrayGetCount(v4) && CFArrayGetCount(v6) >= 1)
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        v9 = IOPSGetPowerSourceDescription(v3, ValueAtIndex);
        if (v9)
        {
          v10 = v9;
          Value = CFDictionaryGetValue(v9, @"Transport Type");
          if (Value)
          {
            if (CFEqual(Value, @"Internal"))
            {
              break;
            }
          }
        }

        if (CFArrayGetCount(v6) <= ++v7)
        {
          goto LABEL_12;
        }
      }

      valuePtr = 0;
      v12 = CFDictionaryGetValue(v10, @"Current Capacity");
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      v15 = 0;
      v13 = CFDictionaryGetValue(v10, @"Max Capacity");
      CFNumberGetValue(v13, kCFNumberSInt32Type, &v15);
      v5 = valuePtr / v15 * 100.0;
    }

LABEL_12:
    CFRelease(v3);
  }

  else
  {
    v6 = v3;
  }

  CFRelease(v6);
  return v5;
}

- (double)estimatedTimeRemaining
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000386E0;
  block[3] = &unk_1000E13B0;
  block[4] = &v6;
  dispatch_sync(queue, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)powerSourceType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000387D8;
  block[3] = &unk_1000E13B0;
  block[4] = &v6;
  dispatch_sync(queue, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)batteryWarningLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003892C;
  block[3] = &unk_1000E13B0;
  block[4] = &v6;
  dispatch_sync(queue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end