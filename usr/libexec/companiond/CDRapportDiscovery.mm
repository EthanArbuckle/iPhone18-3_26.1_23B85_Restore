@interface CDRapportDiscovery
- (CDRapportDiscovery)init;
- (void)_activated;
- (void)_handleDeviceFound:(id)found;
- (void)_invalidateDiscoveryTimer;
- (void)_invalidated;
- (void)_startDiscoveryTimer;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)resetDiscoveryTimer;
@end

@implementation CDRapportDiscovery

- (CDRapportDiscovery)init
{
  v5.receiver = self;
  v5.super_class = CDRapportDiscovery;
  v2 = [(CDRapportDiscovery *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_activateCalledAtomic = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_100010C78();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10006378C(v3);
  }

  [(RPCompanionLinkClient *)self->_rapportClient invalidate];
  rapportClient = self->_rapportClient;
  self->_rapportClient = 0;

  [(BSContinuousMachTimer *)self->_discoveryTimer invalidate];
  discoveryTimer = self->_discoveryTimer;
  self->_discoveryTimer = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  v7 = objc_retainBlock(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  if (v7)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010CBC;
    block[3] = &unk_10008A698;
    v12 = v7;
    dispatch_async(dispatchQueue, block);
  }

  v10.receiver = self;
  v10.super_class = CDRapportDiscovery;
  [(CDRapportDiscovery *)&v10 dealloc];
}

- (void)activate
{
  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010D58;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010DE0;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)resetDiscoveryTimer
{
  [(CDRapportDiscovery *)self _invalidateDiscoveryTimer];

  [(CDRapportDiscovery *)self _startDiscoveryTimer];
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = objc_alloc_init(RPCompanionLinkClient);
  rapportClient = self->_rapportClient;
  self->_rapportClient = v3;

  [(RPCompanionLinkClient *)self->_rapportClient setRssiThreshold:-75];
  v5 = self->_rapportClient;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010F3C;
  v8[3] = &unk_10008A6C0;
  v8[4] = self;
  [(RPCompanionLinkClient *)v5 setDeviceFoundHandler:v8];
  [(RPCompanionLinkClient *)self->_rapportClient setDispatchQueue:self->_dispatchQueue];
  [(RPCompanionLinkClient *)self->_rapportClient setControlFlags:0x8200411B802];
  v6 = self->_rapportClient;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010F48;
  v7[3] = &unk_10008A080;
  v7[4] = self;
  [(RPCompanionLinkClient *)v6 activateWithCompletion:v7];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    [(RPCompanionLinkClient *)self->_rapportClient invalidate];
    rapportClient = self->_rapportClient;
    self->_rapportClient = 0;

    [(BSContinuousMachTimer *)self->_discoveryTimer invalidate];
    discoveryTimer = self->_discoveryTimer;
    self->_discoveryTimer = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
      v7 = self->_invalidationHandler;
      self->_invalidationHandler = 0;
    }

    self->_invalidateDone = 1;
    v8 = sub_100010C78();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rapport discovery invalidated.", v9, 2u);
    }
  }
}

- (void)_handleDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  idsDeviceIdentifier = [foundCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    if (self->_deviceFoundHandler)
    {
      if (([foundCopy statusFlags] & 0x40000000) != 0)
      {
        v6 = sub_100010C78();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138412546;
          v9 = idsDeviceIdentifier;
          v10 = 2112;
          v11 = @"CompanionAuthentication";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FoundDevice, device=%@, type=%@", &v8, 0x16u);
        }

        goto LABEL_13;
      }

      if (([foundCopy statusFlags] & 0x200000) != 0)
      {
        v6 = sub_100010C78();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138412546;
          v9 = idsDeviceIdentifier;
          v10 = 2112;
          v11 = @"LegacyAppSignIn";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FoundDevice, device=%@, type=%@", &v8, 0x16u);
        }

LABEL_13:

        [(CDRapportDiscovery *)self _invalidateDiscoveryTimer];
        (*(self->_deviceFoundHandler + 2))();
      }
    }
  }

  else
  {
    v7 = sub_100010C78();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10006385C(foundCopy, v7);
    }
  }
}

- (void)_startDiscoveryTimer
{
  v3 = sub_100010C78();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting rapport discovery timer.", buf, 2u);
  }

  discoveryTimer = self->_discoveryTimer;
  if (!discoveryTimer)
  {
    v5 = [[BSContinuousMachTimer alloc] initWithIdentifier:@"CDRapportDiscovery.discoveryTimer"];
    v6 = self->_discoveryTimer;
    self->_discoveryTimer = v5;

    discoveryTimer = self->_discoveryTimer;
  }

  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000113C4;
  v8[3] = &unk_10008A298;
  v8[4] = self;
  [(BSContinuousMachTimer *)discoveryTimer scheduleWithFireInterval:dispatchQueue leewayInterval:v8 queue:30.0 handler:1.0];
}

- (void)_invalidateDiscoveryTimer
{
  [(BSContinuousMachTimer *)self->_discoveryTimer invalidate];
  discoveryTimer = self->_discoveryTimer;
  self->_discoveryTimer = 0;
}

@end