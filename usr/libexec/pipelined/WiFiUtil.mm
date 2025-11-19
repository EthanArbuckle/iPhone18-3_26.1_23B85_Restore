@interface WiFiUtil
- (WiFiUtil)init;
- (WiFiUtilDelegate)delegate;
- (void)dealloc;
- (void)deviceAttached:(__WiFiDeviceClient *)a3;
- (void)invalidate;
- (void)notifyDevicePowerChanged;
- (void)onQueueDeregisterDevices;
- (void)onQueueInvalidate;
- (void)onQueueReEnumerateDevices;
- (void)onQueueRegisterDevices;
- (void)setDelegate:(id)a3;
@end

@implementation WiFiUtil

- (WiFiUtil)init
{
  v8.receiver = self;
  v8.super_class = WiFiUtil;
  v2 = [(WiFiUtil *)&v8 init];
  if (v2)
  {
    v3 = WiFiManagerClientCreate();
    v2->_wifiClient = v3;
    if (!v3)
    {
      sub_100014A08(v10, "");
      sub_1001EDF78("Failed to create connection to wifi daemon", &__p);
      sub_1000E661C(v10, &__p, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      sub_10003F5D0(&v9);
    }

    v4 = dispatch_queue_create("com.apple.pipelined.wifiutil", 0);
    q = v2->_q;
    v2->_q = v4;

    [(WiFiUtil *)v2 onQueueReEnumerateDevices];
    wifiClient = v2->_wifiClient;
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
  }

  return v2;
}

- (void)invalidate
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033FA1C;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_async(q, block);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WiFiUtil;
  [(WiFiUtil *)&v2 dealloc];
}

- (void)onQueueInvalidate
{
  [(WiFiUtil *)self onQueueDeregisterDevices];
  if (self->_wifiClient)
  {
    [(WiFiUtil *)self onQueueDeregisterManager];
    CFRelease(self->_wifiClient);
    self->_wifiClient = 0;
  }
}

- (void)onQueueRegisterDevices
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        WiFiDeviceClientRegisterPowerCallback();
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)onQueueDeregisterDevices
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        WiFiDeviceClientRegisterPowerCallback();
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033FDD8;
  v7[3] = &unk_1004328A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(q, v7);
}

- (void)deviceAttached:(__WiFiDeviceClient *)a3
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033FEB4;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_async(q, block);
}

- (void)onQueueReEnumerateDevices
{
  [(WiFiUtil *)self onQueueDeregisterDevices];
  wifiClient = self->_wifiClient;
  v4 = WiFiManagerClientCopyDevices();
  wifiDevices = self->_wifiDevices;
  self->_wifiDevices = v4;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {

    [(WiFiUtil *)self onQueueRegisterDevices];
  }
}

- (void)notifyDevicePowerChanged
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033FF9C;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_async(q, block);
}

- (WiFiUtilDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end