@interface HIDGenericDevice
- (HIDGenericDevice)initWithProperties:(id)a3 reports:(id)a4;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation HIDGenericDevice

- (HIDGenericDevice)initWithProperties:(id)a3 reports:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HIDGenericDevice;
  v7 = [(HIDBluetoothDevice *)&v11 initWithProperties:v6 reports:a4];
  if (v7)
  {
    v8 = IOHIDUserDeviceCreateWithOptions();
    v7->_device = v8;
    if (v8)
    {
      IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
      device = v7->_device;
      IOHIDUserDeviceRegisterSetReportCallback();
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  if ([(HIDGenericDevice *)self device])
  {
    CFRelease([(HIDGenericDevice *)self device]);
  }

  v3.receiver = self;
  v3.super_class = HIDGenericDevice;
  [(HIDBluetoothDevice *)&v3 dealloc];
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = HIDGenericDevice;
  [(HIDBluetoothDevice *)&v5 start];
  v3 = [(HIDBluetoothDevice *)self allocHIDQueue];
  [(HIDGenericDevice *)self setQueue:v3];

  [(HIDGenericDevice *)self device];
  v4 = [(HIDGenericDevice *)self queue];
  IOHIDUserDeviceScheduleWithDispatchQueue();

  [(HIDBluetoothDevice *)self notifyDidStart];
}

- (void)stop
{
  v6.receiver = self;
  v6.super_class = HIDGenericDevice;
  [(HIDBluetoothDevice *)&v6 stop];
  [(HIDGenericDevice *)self device];
  v3 = [(HIDGenericDevice *)self queue];
  IOHIDUserDeviceUnscheduleFromDispatchQueue();

  v4 = [(HIDGenericDevice *)self queue];
  dispatch_set_context(v4, self);

  v5 = [(HIDGenericDevice *)self queue];
  dispatch_set_finalizer_f(v5, j__objc_msgSend_notifyDidStop_2);

  [(HIDGenericDevice *)self setQueue:0];
}

@end