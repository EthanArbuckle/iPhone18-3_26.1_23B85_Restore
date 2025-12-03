@interface HIDGenericDevice
- (HIDGenericDevice)initWithProperties:(id)properties reports:(id)reports;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation HIDGenericDevice

- (HIDGenericDevice)initWithProperties:(id)properties reports:(id)reports
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = HIDGenericDevice;
  v7 = [(HIDBluetoothDevice *)&v11 initWithProperties:propertiesCopy reports:reports];
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
  allocHIDQueue = [(HIDBluetoothDevice *)self allocHIDQueue];
  [(HIDGenericDevice *)self setQueue:allocHIDQueue];

  [(HIDGenericDevice *)self device];
  queue = [(HIDGenericDevice *)self queue];
  IOHIDUserDeviceScheduleWithDispatchQueue();

  [(HIDBluetoothDevice *)self notifyDidStart];
}

- (void)stop
{
  v6.receiver = self;
  v6.super_class = HIDGenericDevice;
  [(HIDBluetoothDevice *)&v6 stop];
  [(HIDGenericDevice *)self device];
  queue = [(HIDGenericDevice *)self queue];
  IOHIDUserDeviceUnscheduleFromDispatchQueue();

  queue2 = [(HIDGenericDevice *)self queue];
  dispatch_set_context(queue2, self);

  queue3 = [(HIDGenericDevice *)self queue];
  dispatch_set_finalizer_f(queue3, j__objc_msgSend_notifyDidStop_2);

  [(HIDGenericDevice *)self setQueue:0];
}

@end