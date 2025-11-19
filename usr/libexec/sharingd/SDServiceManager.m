@interface SDServiceManager
- (SDServiceManager)initWithClientProxy:(id)a3 withIdentifier:(id)a4;
- (id)streamHandlerForService:(id)a3;
- (void)disableService:(id)a3;
- (void)enableService:(id)a3;
- (void)manager:(id)a3 connectedToService:(id)a4 withFileHandle:(id)a5 acceptHandler:(id)a6;
- (void)start;
- (void)stop;
@end

@implementation SDServiceManager

- (SDServiceManager)initWithClientProxy:(id)a3 withIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SDServiceManager;
  v9 = [(SDServiceManager *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientProxy, a3);
    objc_storeStrong(&v10->_managerID, a4);
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
        v11 = [v8 identifier];
        [v10 closeStreamsForIdentifier:v11];

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

- (id)streamHandlerForService:(id)a3
{
  streamHandlers = self->_streamHandlers;
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)streamHandlers objectForKeyedSubscript:v4];

  return v5;
}

- (void)enableService:(id)a3
{
  enabledServices = self->_enabledServices;
  v4 = a3;
  [(NSMutableArray *)enabledServices addObject:v4];
  v5 = +[SDStreamManager sharedManager];
  [v5 addService:v4];
}

- (void)disableService:(id)a3
{
  v5 = a3;
  v4 = +[SDStreamManager sharedManager];
  [v4 removeService:v5];

  [(NSMutableArray *)self->_enabledServices removeObject:v5];
}

- (void)manager:(id)a3 connectedToService:(id)a4 withFileHandle:(id)a5 acceptHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    if (v12)
    {
      clientProxy = self->_clientProxy;
      if (clientProxy)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1001F4070;
        v16[3] = &unk_1008CDB38;
        v17 = v13;
        [(SFCompanionServiceManagerClient *)clientProxy streamToService:v11 withFileHandle:v12 acceptReply:v16];
        [v12 closeFile];
      }
    }
  }
}

@end