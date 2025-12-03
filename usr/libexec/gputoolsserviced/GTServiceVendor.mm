@interface GTServiceVendor
- (GTServiceVendor)initWithConnectionProvider:(id)provider;
- (id)_connectionForServicePort:(unint64_t)port;
- (id)getSimulatorDeviceBrowserService:(id)service;
- (void)addLocalService:(id)service forPort:(unint64_t)port;
@end

@implementation GTServiceVendor

- (id)getSimulatorDeviceBrowserService:(id)service
{
  serviceCopy = service;
  v5 = serviceCopy;
  if (serviceCopy)
  {
    portToService = self->_portToService;
    v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [serviceCopy servicePort]);
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

- (id)_connectionForServicePort:(unint64_t)port
{
  v4 = [(GTConnectionProvider *)self->_connectionProvider connectionForServicePort:port];
  serviceDaemonConnection = v4;
  if (!v4)
  {
    serviceDaemonConnection = self->_serviceDaemonConnection;
  }

  v6 = serviceDaemonConnection;

  return v6;
}

- (void)addLocalService:(id)service forPort:(unint64_t)port
{
  if (service)
  {
    portToService = self->_portToService;
    serviceCopy = service;
    v7 = [NSNumber numberWithUnsignedLongLong:port];
    [(NSMutableDictionary *)portToService setObject:serviceCopy forKeyedSubscript:v7];
  }
}

- (GTServiceVendor)initWithConnectionProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    v12.receiver = self;
    v12.super_class = GTServiceVendor;
    v6 = [(GTServiceVendor *)&v12 init];
    if (v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      portToService = v6->_portToService;
      v6->_portToService = v7;

      objc_storeStrong(&v6->_connectionProvider, provider);
      serviceDaemonConnection = v6->_serviceDaemonConnection;
      v6->_serviceDaemonConnection = 0;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end