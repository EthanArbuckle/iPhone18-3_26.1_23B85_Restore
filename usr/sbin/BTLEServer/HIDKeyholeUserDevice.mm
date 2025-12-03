@interface HIDKeyholeUserDevice
- (HIDBluetoothDevice)delegate;
- (HIDKeyholeUserDevice)initWithProperties:(id)properties hidDescriptor:(id)descriptor keyholeID:(unsigned __int8)d delegate:(id)delegate;
- (OS_dispatch_queue)queue;
- (void)dealloc;
- (void)start:(id)start;
- (void)stop;
@end

@implementation HIDKeyholeUserDevice

- (HIDKeyholeUserDevice)initWithProperties:(id)properties hidDescriptor:(id)descriptor keyholeID:(unsigned __int8)d delegate:(id)delegate
{
  propertiesCopy = properties;
  descriptorCopy = descriptor;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = HIDKeyholeUserDevice;
  v13 = [(HIDKeyholeUserDevice *)&v22 init];
  if (v13)
  {
    v14 = [propertiesCopy mutableCopy];
    [v14 setObject:descriptorCopy forKeyedSubscript:@"ReportDescriptor"];
    *(v13 + 9) = 1023;
    v13[8] = d;
    objc_storeWeak(v13 + 3, delegateCopy);
    v15 = IOHIDUserDeviceCreateWithOptions();
    v16 = *(v13 + 2);
    *(v13 + 2) = v15;

    if (*(v13 + 2))
    {
      IOHIDUserDeviceRegisterSetReportCallback();
      v17 = *(v13 + 2);
      IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
      v18 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v13[8];
        *buf = 67109120;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Created HIDKeyholeUserDevice with keyholeID %02X", buf, 8u);
      }

      v20 = v13;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)start:(id)start
{
  startCopy = start;
  v4 = objc_storeWeak(&self->_queue, startCopy);
  device = self->_device;
  v6 = v4;
  IOHIDUserDeviceScheduleWithDispatchQueue();
}

- (void)stop
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  if (WeakRetained)
  {
    device = self->_device;
    v5 = objc_loadWeakRetained(&self->_queue);
    IOHIDUserDeviceUnscheduleFromDispatchQueue();
  }
}

- (void)dealloc
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 67109120;
    keyholeID = [(HIDKeyholeUserDevice *)self keyholeID];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deallocating HIDKeyholeUserDevice with keyholeID %02X", buf, 8u);
  }

  [(HIDKeyholeUserDevice *)self stop];
  v5.receiver = self;
  v5.super_class = HIDKeyholeUserDevice;
  [(HIDKeyholeUserDevice *)&v5 dealloc];
}

- (HIDBluetoothDevice)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_dispatch_queue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

@end