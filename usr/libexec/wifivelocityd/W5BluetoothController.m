@interface W5BluetoothController
- (W5BluetoothController)init;
- (id)address;
- (id)devices;
- (void)__sendBluetoothStatusChangeEvent;
- (void)dealloc;
- (void)setUpdatedBluetoothCallback:(id)a3;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation W5BluetoothController

- (W5BluetoothController)init
{
  v8.receiver = self;
  v8.super_class = W5BluetoothController;
  v2 = [(W5BluetoothController *)&v8 init];
  if (v2 && (v3 = dispatch_queue_create("com.apple.wifivelocityd.bt", 0), (v2->_queue = v3) != 0) && (v4 = objc_alloc_init(CBController), (v2->_controller = v4) != 0))
  {
    [v4 setDispatchQueue:v2->_queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000571A8;
    v7[3] = &unk_1000E1CE8;
    v7[4] = v2;
    [(CBController *)v2->_controller setBluetoothStateChangedHandler:v7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000571C0;
    v6[3] = &unk_1000E1CE8;
    v6[4] = v2;
    [(CBController *)v2->_controller setDiscoverableStateChangedHandler:v6];
    [(CBController *)v2->_controller setErrorHandler:&stru_1000E2BA0];
    [(CBController *)v2->_controller activateWithCompletion:&stru_1000E2BC0];
  }

  else
  {

    return 0;
  }

  return v2;
}

- (void)setUpdatedBluetoothCallback:(id)a3
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedBluetoothCallback = [a3 copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000573E4;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(queue, v6);
  }
}

- (void)dealloc
{
  [(CBController *)self->_controller invalidate];

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = W5BluetoothController;
  [(W5BluetoothController *)&v4 dealloc];
}

- (void)startEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057518;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000575E4;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)address
{
  v2 = [-[W5BluetoothController __controllerInfo](self "__controllerInfo")];

  return _CWFEthernetAddressStringFromData(v2);
}

- (void)__sendBluetoothStatusChangeEvent
{
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  updatedBluetoothCallback = self->_updatedBluetoothCallback;
  if (updatedBluetoothCallback)
  {
    v5 = *(updatedBluetoothCallback + 2);

    v5();
  }
}

- (id)devices
{
  v2 = +[NSMutableArray array];
  v3 = [CBDiscovery devicesWithDiscoveryFlags:10485760 error:0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:{-[W5BluetoothDeviceInternal device](-[W5BluetoothDeviceInternal initWithCBDevice:]([W5BluetoothDeviceInternal alloc], "initWithCBDevice:", *(*(&v9 + 1) + 8 * v7)), "device")}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return [v2 copy];
}

@end