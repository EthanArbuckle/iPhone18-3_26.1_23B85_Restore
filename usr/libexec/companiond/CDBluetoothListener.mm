@interface CDBluetoothListener
- (CDBluetoothListener)init;
- (void)_activated;
- (void)_handleEvent:(id)a3;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation CDBluetoothListener

- (CDBluetoothListener)init
{
  v5.receiver = self;
  v5.super_class = CDBluetoothListener;
  v2 = [(CDBluetoothListener *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_activateCalledAtomic = 0;
  }

  return v3;
}

- (void)activate
{
  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003CD0;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D58;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003DEC;
  handler[3] = &unk_100089E48;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", dispatchQueue, handler);
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    self->_invalidateDone = 1;
  }
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  string = xpc_dictionary_get_string(v4, "eventType");
  if (!string || !strcmp(string, "deviceFound"))
  {
    v6 = xpc_dictionary_get_string(v4, _xpc_event_key_name);
    if (v6)
    {
      if (self->_deviceFoundHandler && !strcmp(v6, "PhotoSetup"))
      {
        v7 = xpc_dictionary_get_dictionary(v4, "device");
        v10 = 0;
        v8 = [[CBDevice alloc] initWithXPCObject:v7 error:&v10];
        v9 = v10;
        if (v9)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005E1D8(v9);
          }
        }

        else
        {
          (*(self->_deviceFoundHandler + 2))();
        }
      }
    }
  }
}

@end