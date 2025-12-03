@interface CBDRemoteDeviceDiscovery
- (CBDDeviceDiscoveryDelegate)delegate;
- (CBDRemoteDeviceDiscovery)init;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
@end

@implementation CBDRemoteDeviceDiscovery

- (CBDRemoteDeviceDiscovery)init
{
  v6.receiver = self;
  v6.super_class = CBDRemoteDeviceDiscovery;
  v2 = [(CBDRemoteDeviceDiscovery *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.checkerboard.easyrider.browse", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)resume
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DeviceDiscovery: start", buf, 2u);
  }

  objc_initWeak(buf, self);
  dispatchQueue = [(CBDRemoteDeviceDiscovery *)self dispatchQueue];
  objc_copyWeak(&v6, buf);
  started = remote_device_start_browsing();
  [(CBDRemoteDeviceDiscovery *)self setBrowser:started, _NSConcreteStackBlock, 3221225472, sub_100001004, &unk_1000103F8, self];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)invalidate
{
  browser = [(CBDRemoteDeviceDiscovery *)self browser];

  if (browser)
  {
    browser2 = [(CBDRemoteDeviceDiscovery *)self browser];
    remote_device_browser_cancel();

    [(CBDRemoteDeviceDiscovery *)self setBrowser:0];
  }
}

- (void)dealloc
{
  [(CBDRemoteDeviceDiscovery *)self invalidate];
  v3.receiver = self;
  v3.super_class = CBDRemoteDeviceDiscovery;
  [(CBDRemoteDeviceDiscovery *)&v3 dealloc];
}

- (CBDDeviceDiscoveryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end