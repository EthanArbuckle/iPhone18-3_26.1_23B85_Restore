@interface GTServiceVendor
- (GTServiceVendor)initWithConnectionProvider:(id)a3;
- (id)_connectionForServicePort:(unint64_t)a3;
- (id)getSimulatorDeviceBrowserService:(id)a3;
- (void)addLocalService:(id)a3 forPort:(unint64_t)a4;
@end

@implementation GTServiceVendor

- (id)getSimulatorDeviceBrowserService:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    portToService = self->_portToService;
    v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 servicePort]);
    v8 = [(NSMutableDictionary *)portToService objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = -[GTServiceVendor _connectionForServicePort:](self, "_connectionForServicePort:", [v5 servicePort]);
      v9 = [[GTSimulatorDeviceBrowserXPCProxy alloc] initWithConnection:v10 remoteProperties:v5];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_connectionForServicePort:(unint64_t)a3
{
  v4 = [(GTConnectionProvider *)self->_connectionProvider connectionForServicePort:a3];
  serviceDaemonConnection = v4;
  if (!v4)
  {
    serviceDaemonConnection = self->_serviceDaemonConnection;
  }

  v6 = serviceDaemonConnection;

  return v6;
}

- (void)addLocalService:(id)a3 forPort:(unint64_t)a4
{
  if (a3)
  {
    portToService = self->_portToService;
    v6 = a3;
    v7 = [NSNumber numberWithUnsignedLongLong:a4];
    [(NSMutableDictionary *)portToService setObject:v6 forKeyedSubscript:v7];
  }
}

- (GTServiceVendor)initWithConnectionProvider:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = GTServiceVendor;
    v6 = [(GTServiceVendor *)&v12 init];
    if (v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      portToService = v6->_portToService;
      v6->_portToService = v7;

      objc_storeStrong(&v6->_connectionProvider, a3);
      serviceDaemonConnection = v6->_serviceDaemonConnection;
      v6->_serviceDaemonConnection = 0;
    }

    self = v6;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end