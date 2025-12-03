@interface FMDBluetoothDiscoveryXPCProxy
- (void)_didEndDiscoveryWithError:(id)error;
- (void)didDiscoverDevice:(id)device;
- (void)didEndDiscoveryWithError:(id)error;
- (void)didLoseDevice:(id)device;
- (void)startDiscovery;
- (void)stopDiscovery;
@end

@implementation FMDBluetoothDiscoveryXPCProxy

- (void)startDiscovery
{
  connection = [(FMDBluetoothDiscoveryXPCProxy *)self connection];
  v4 = connection;
  if (connection && [connection state] == 1)
  {
    v5 = v4;
  }

  else
  {
    v6 = [FMNSXPCConnection alloc];
    v7 = +[FMNSXPCConnectionConfiguration btDiscoveryConfiguration];
    v5 = [v6 initWithConfiguration:v7 exportedObject:self];

    objc_initWeak(&location, self);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1001D78C4;
    v12 = &unk_1002D11D8;
    objc_copyWeak(&v13, &location);
    [v5 addFailureBlock:&v9];
    [(FMDBluetoothDiscoveryXPCProxy *)self setConnection:v5, v9, v10, v11, v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  remoteObjectProxy = [v5 remoteObjectProxy];
  [remoteObjectProxy startDiscovery];
}

- (void)stopDiscovery
{
  connection = [(FMDBluetoothDiscoveryXPCProxy *)self connection];
  if (connection)
  {
    v4 = connection;
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy stopDiscovery];

    connection = v4;
  }
}

- (void)didEndDiscoveryWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022EF00(errorCopy, v5);
    }
  }

  [(FMDBluetoothDiscoveryXPCProxy *)self _didEndDiscoveryWithError:errorCopy];
}

- (void)didDiscoverDevice:(id)device
{
  deviceCopy = device;
  didDiscoverDevice = [(FMDBluetoothDiscoveryXPCProxy *)self didDiscoverDevice];

  if (didDiscoverDevice)
  {
    didDiscoverDevice2 = [(FMDBluetoothDiscoveryXPCProxy *)self didDiscoverDevice];
    (didDiscoverDevice2)[2](didDiscoverDevice2, deviceCopy);
  }
}

- (void)didLoseDevice:(id)device
{
  deviceCopy = device;
  didLoseDevice = [(FMDBluetoothDiscoveryXPCProxy *)self didLoseDevice];

  if (didLoseDevice)
  {
    didLoseDevice2 = [(FMDBluetoothDiscoveryXPCProxy *)self didLoseDevice];
    (didLoseDevice2)[2](didLoseDevice2, deviceCopy);
  }
}

- (void)_didEndDiscoveryWithError:(id)error
{
  errorCopy = error;
  didEndDiscovery = [(FMDBluetoothDiscoveryXPCProxy *)self didEndDiscovery];
  v5 = didEndDiscovery;
  if (didEndDiscovery)
  {
    (*(didEndDiscovery + 16))(didEndDiscovery, errorCopy);
  }
}

@end