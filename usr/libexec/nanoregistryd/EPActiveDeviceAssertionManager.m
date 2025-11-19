@interface EPActiveDeviceAssertionManager
- (EPActiveDeviceAssertionManager)initWithFactory:(id)a3 pairingID:(id)a4;
- (NRRegistry)registry;
- (void)destroyResource;
- (void)updateWithPairingID:(id)a3;
@end

@implementation EPActiveDeviceAssertionManager

- (EPActiveDeviceAssertionManager)initWithFactory:(id)a3 pairingID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[NRQueue registryDaemonQueue];
  v10 = [v9 queue];
  v11 = [(EPResourceManager *)self initWithQueue:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_factory, a3);
    objc_storeStrong(&v11->_pairingID, a4);
  }

  return v11;
}

- (NRRegistry)registry
{
  v2 = [(EPActiveDeviceAssertionFactory *)self->_factory serviceRegistry];
  v3 = [v2 serviceFromClass:objc_opt_class()];

  return v3;
}

- (void)destroyResource
{
  v3.receiver = self;
  v3.super_class = EPActiveDeviceAssertionManager;
  [(EPResourceManager *)&v3 destroyResource];
  [(EPActiveDeviceAssertionFactory *)self->_factory managerIsIdle:self];
}

- (void)updateWithPairingID:(id)a3
{
  v4 = [(NSUUID *)self->_pairingID isEqual:a3];
  v5 = [(EPActiveDeviceAssertionFactory *)self->_factory serviceRegistry];
  v6 = [v5 queue];
  v7 = v6;
  if (v4)
  {
    v8 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v9 = sub_100094638;
  }

  else
  {
    v8 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v9 = sub_100094648;
  }

  v8[2] = v9;
  v8[3] = &unk_100175660;
  v8[4] = self;
  dispatch_async(v6, v8);
}

@end