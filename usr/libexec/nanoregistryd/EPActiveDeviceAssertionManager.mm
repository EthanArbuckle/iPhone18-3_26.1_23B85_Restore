@interface EPActiveDeviceAssertionManager
- (EPActiveDeviceAssertionManager)initWithFactory:(id)factory pairingID:(id)d;
- (NRRegistry)registry;
- (void)destroyResource;
- (void)updateWithPairingID:(id)d;
@end

@implementation EPActiveDeviceAssertionManager

- (EPActiveDeviceAssertionManager)initWithFactory:(id)factory pairingID:(id)d
{
  factoryCopy = factory;
  dCopy = d;
  v9 = +[NRQueue registryDaemonQueue];
  queue = [v9 queue];
  v11 = [(EPResourceManager *)self initWithQueue:queue];

  if (v11)
  {
    objc_storeStrong(&v11->_factory, factory);
    objc_storeStrong(&v11->_pairingID, d);
  }

  return v11;
}

- (NRRegistry)registry
{
  serviceRegistry = [(EPActiveDeviceAssertionFactory *)self->_factory serviceRegistry];
  v3 = [serviceRegistry serviceFromClass:objc_opt_class()];

  return v3;
}

- (void)destroyResource
{
  v3.receiver = self;
  v3.super_class = EPActiveDeviceAssertionManager;
  [(EPResourceManager *)&v3 destroyResource];
  [(EPActiveDeviceAssertionFactory *)self->_factory managerIsIdle:self];
}

- (void)updateWithPairingID:(id)d
{
  v4 = [(NSUUID *)self->_pairingID isEqual:d];
  serviceRegistry = [(EPActiveDeviceAssertionFactory *)self->_factory serviceRegistry];
  queue = [serviceRegistry queue];
  v7 = queue;
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
  dispatch_async(queue, v8);
}

@end