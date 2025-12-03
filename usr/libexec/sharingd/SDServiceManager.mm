@interface SDServiceManager
- (SDServiceManager)initWithClientProxy:(id)proxy withIdentifier:(id)identifier;
- (id)streamHandlerForService:(id)service;
- (void)disableService:(id)service;
- (void)enableService:(id)service;
- (void)manager:(id)manager connectedToService:(id)service withFileHandle:(id)handle acceptHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation SDServiceManager

- (SDServiceManager)initWithClientProxy:(id)proxy withIdentifier:(id)identifier
{
  proxyCopy = proxy;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = SDServiceManager;
  v9 = [(SDServiceManager *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientProxy, proxy);
    objc_storeStrong(&v10->_managerID, identifier);
    bundleID = v10->_bundleID;
    v10->_bundleID = &stru_1008EFBD0;

    v12 = objc_opt_new();
    enabledServices = v10->_enabledServices;
    v10->_enabledServices = v12;

    v14 = objc_opt_new();
    companionStreams = v10->_companionStreams;
    v10->_companionStreams = v14;

    v16 = objc_opt_new();
    streamHandlers = v10->_streamHandlers;
    v10->_streamHandlers = v16;
  }

  return v10;
}

- (void)start
{
  v3 = +[SDStreamManager sharedManager];
  [v3 registerManager:self];
}

- (void)stop
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_enabledServices;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[SDStreamManager sharedManager];
        [v9 removeService:v8];

        v10 = +[SDStreamManager sharedManager];
        identifier = [v8 identifier];
        [v10 closeStreamsForIdentifier:identifier];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_enabledServices removeAllObjects];
  v12 = +[SDStreamManager sharedManager];
  [v12 unregisterManager:self];
}

- (id)streamHandlerForService:(id)service
{
  streamHandlers = self->_streamHandlers;
  identifier = [service identifier];
  v5 = [(NSMutableDictionary *)streamHandlers objectForKeyedSubscript:identifier];

  return v5;
}

- (void)enableService:(id)service
{
  enabledServices = self->_enabledServices;
  serviceCopy = service;
  [(NSMutableArray *)enabledServices addObject:serviceCopy];
  v5 = +[SDStreamManager sharedManager];
  [v5 addService:serviceCopy];
}

- (void)disableService:(id)service
{
  serviceCopy = service;
  v4 = +[SDStreamManager sharedManager];
  [v4 removeService:serviceCopy];

  [(NSMutableArray *)self->_enabledServices removeObject:serviceCopy];
}

- (void)manager:(id)manager connectedToService:(id)service withFileHandle:(id)handle acceptHandler:(id)handler
{
  managerCopy = manager;
  serviceCopy = service;
  handleCopy = handle;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (serviceCopy)
  {
    if (handleCopy)
    {
      clientProxy = self->_clientProxy;
      if (clientProxy)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1001F4070;
        v16[3] = &unk_1008CDB38;
        v17 = handlerCopy;
        [(SFCompanionServiceManagerClient *)clientProxy streamToService:serviceCopy withFileHandle:handleCopy acceptReply:v16];
        [handleCopy closeFile];
      }
    }
  }
}

@end