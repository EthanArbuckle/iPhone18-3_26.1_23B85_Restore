@interface CDDeviceDiscovery
- (CDDeviceDiscovery)init;
- (void)_activated;
- (void)_invalidated;
- (void)_startRapportDiscovery;
- (void)_startRapportListener;
- (void)_stopRapportDiscovery;
- (void)activate;
- (void)invalidate;
- (void)startRapportDiscovery;
- (void)stopRapportDiscovery;
@end

@implementation CDDeviceDiscovery

- (CDDeviceDiscovery)init
{
  v5.receiver = self;
  v5.super_class = CDDeviceDiscovery;
  v2 = [(CDDeviceDiscovery *)&v5 init];
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
  block[2] = sub_1000040BC;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004144;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)startRapportDiscovery
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000041C0;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)stopRapportDiscovery
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000423C;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(CDDeviceDiscovery *)self _startRapportListener];
  v3 = sub_1000042C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device discovery activated.", v4, 2u);
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    [(CDRapportListener *)self->_rapportListener invalidate];
    rapportListener = self->_rapportListener;
    self->_rapportListener = 0;

    [(CDRapportDiscovery *)self->_rapportDiscovery invalidate];
    rapportDiscovery = self->_rapportDiscovery;
    self->_rapportDiscovery = 0;

    self->_invalidateDone = 1;
    v6 = sub_1000042C0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device discovery invalidated.", v7, 2u);
    }
  }
}

- (void)_startRapportListener
{
  v3 = objc_alloc_init(CDRapportListener);
  rapportListener = self->_rapportListener;
  self->_rapportListener = v3;

  [(CDRapportListener *)self->_rapportListener setDispatchQueue:self->_dispatchQueue];
  v5 = self->_rapportListener;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004460;
  v6[3] = &unk_100089E70;
  v6[4] = self;
  [(CDRapportListener *)v5 setDeviceFoundHandler:v6];
  [(CDRapportListener *)self->_rapportListener activate];
}

- (void)_stopRapportDiscovery
{
  if (self->_rapportDiscovery)
  {
    v3 = sub_1000042C0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping rapport discovery", v5, 2u);
    }

    [(CDRapportDiscovery *)self->_rapportDiscovery invalidate];
    rapportDiscovery = self->_rapportDiscovery;
    self->_rapportDiscovery = 0;
  }
}

- (void)_startRapportDiscovery
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  rapportDiscovery = self->_rapportDiscovery;
  if (rapportDiscovery)
  {

    [(CDRapportDiscovery *)rapportDiscovery resetDiscoveryTimer];
  }

  else
  {
    v4 = sub_1000042C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting rapport discovery", buf, 2u);
    }

    v5 = objc_alloc_init(CDRapportDiscovery);
    v6 = self->_rapportDiscovery;
    self->_rapportDiscovery = v5;

    [(CDRapportDiscovery *)self->_rapportDiscovery setDispatchQueue:self->_dispatchQueue];
    v7 = self->_rapportDiscovery;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000467C;
    v10[3] = &unk_100089E70;
    v10[4] = self;
    [(CDRapportDiscovery *)v7 setDeviceFoundHandler:v10];
    v8 = self->_rapportDiscovery;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004698;
    v9[3] = &unk_100089E20;
    v9[4] = self;
    [(CDRapportDiscovery *)v8 setInvalidationHandler:v9];
    [(CDRapportDiscovery *)self->_rapportDiscovery activate];
  }
}

@end