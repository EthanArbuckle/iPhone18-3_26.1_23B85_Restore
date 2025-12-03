@interface EPScalablePipeManagerManager
- (EPScalablePipeManagerManager)initWithName:(id)name type:(int64_t)type priority:(int64_t)priority;
- (id)newResourceWithDelegate:(id)delegate;
- (void)createResource;
- (void)destroyResource;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
- (void)setIsConnected:(BOOL)connected;
- (void)update;
@end

@implementation EPScalablePipeManagerManager

- (void)createResource
{
  v7.receiver = self;
  v7.super_class = EPScalablePipeManagerManager;
  [(EPResourceManager *)&v7 createResource];
  v3 = [CBScalablePipeManager alloc];
  queue = [(EPResourceManager *)self queue];
  v5 = [v3 initWithDelegate:self queue:queue];
  manager = self->_manager;
  self->_manager = v5;

  [(EPScalablePipeManagerManager *)self update];
}

- (void)destroyResource
{
  v8.receiver = self;
  v8.super_class = EPScalablePipeManagerManager;
  [(EPResourceManager *)&v8 destroyResource];
  if (self->_didRequestEndpoint)
  {
    self->_didRequestEndpoint = 0;
    v3 = sub_1000A98C0();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = sub_1000A98C0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138412290;
        v10 = name;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPScalablePipeManagerManager: Calling CoreBluetooth unregisterEndpoint: %@", buf, 0xCu);
      }
    }

    [(CBScalablePipeManager *)self->_manager unregisterEndpoint:self->_name];
  }

  manager = self->_manager;
  self->_manager = 0;
}

- (void)setIsConnected:(BOOL)connected
{
  if (self->_isConnected != connected)
  {
    v7 = v3;
    v8 = v4;
    self->_isConnected = connected;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000CB874;
    v5[3] = &unk_100179410;
    connectedCopy = connected;
    [(EPResourceManager *)self enumerateResourcesWithBlock:v5];
  }
}

- (EPScalablePipeManagerManager)initWithName:(id)name type:(int64_t)type priority:(int64_t)priority
{
  nameCopy = name;
  v10 = +[EPFactory queue];
  v13.receiver = self;
  v13.super_class = EPScalablePipeManagerManager;
  v11 = [(EPResourceManager *)&v13 initWithQueue:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v11->_type = type;
    v11->_priority = priority;
  }

  return v11;
}

- (id)newResourceWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = EPScalablePipeManagerManager;
  v4 = [(EPResourceManager *)&v6 newResourceWithDelegate:delegate];
  [v4 setIsConnected:{-[EPScalablePipeManagerManager isConnected](self, "isConnected")}];

  return v4;
}

- (void)update
{
  if (![(EPResourceManager *)self needsResource])
  {
    if (self->_endpointIsRegistered)
    {
      self->_endpointIsRegistered = 0;
      if ([(CBScalablePipeManager *)self->_manager state]== 5 || [(CBScalablePipeManager *)self->_manager state]== 10)
      {
        v11 = sub_1000A98C0();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

        if (v12)
        {
          v13 = sub_1000A98C0();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            name = self->_name;
            *buf = 138412290;
            v24 = name;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPScalablePipeManagerManager: Calling CoreBluetooth unregisterEndpoint: %@", buf, 0xCu);
          }
        }

        [(CBScalablePipeManager *)self->_manager unregisterEndpoint:self->_name];
      }
    }

    return;
  }

  state = [(CBScalablePipeManager *)self->_manager state];
  v4 = 0;
  if (state <= 3)
  {
    if (state == 2)
    {
      v19 = NSLocalizedDescriptionKey;
      v20 = @"Bluetooth is not supported";
      v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v16 = 3;
    }

    else
    {
      v6 = 0;
      if (state != 3)
      {
LABEL_29:
        self->_didRequestEndpoint = 0;
        self->_endpointIsRegistered = 0;
        [(EPScalablePipeManagerManager *)self setIsConnected:0];
        [(EPResourceManager *)self setAvailability:v6 withError:v4];

        return;
      }

      v17 = NSLocalizedDescriptionKey;
      v18 = @"Bluetooth is unauthorized";
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v16 = 4;
    }

LABEL_28:
    v4 = [NSError errorWithDomain:@"com.apple.extensiblepair.corebluetooth.scalablepipemanager" code:v16 userInfo:v15];

    v6 = 2;
    goto LABEL_29;
  }

  if (state == 4)
  {
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Bluetooth is powered off";
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = 2;
    goto LABEL_28;
  }

  v5 = state == 10 || state == 5;
  v6 = 0;
  if (!v5)
  {
    goto LABEL_29;
  }

  if (!self->_didRequestEndpoint)
  {
    self->_didRequestEndpoint = 1;
    v7 = sub_1000A98C0();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = sub_1000A98C0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_name;
        *buf = 138412290;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPScalablePipeManagerManager: Calling CoreBluetooth registerEndpoint:type:priority: %@", buf, 0xCu);
      }
    }

    [(CBScalablePipeManager *)self->_manager registerEndpoint:self->_name type:self->_type priority:self->_priority options:0];
  }
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  [(EPScalablePipeManagerManager *)self update];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CBDF0;
  v6[3] = &unk_1001785C0;
  v7 = stateCopy;
  v5 = stateCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v6];
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  managerCopy = manager;
  connectCopy = connect;
  v8 = connectCopy;
  if (self->_manager == managerCopy)
  {
    name = self->_name;
    name = [connectCopy name];
    LODWORD(name) = [(NSString *)name isEqual:name];

    if (name)
    {
      [(EPScalablePipeManagerManager *)self setIsConnected:1];
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000CBF18;
  v13[3] = &unk_100175998;
  v14 = managerCopy;
  v15 = v8;
  v11 = v8;
  v12 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v13];
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  managerCopy = manager;
  endpointCopy = endpoint;
  if ([endpointCopy isEqual:self->_name])
  {
    self->_didRequestEndpoint = 0;
    self->_endpointIsRegistered = 0;
    [(EPResourceManager *)self setAvailability:0 withError:0];
    [(EPScalablePipeManagerManager *)self update];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CC028;
  v10[3] = &unk_100175998;
  v11 = managerCopy;
  v12 = endpointCopy;
  v8 = endpointCopy;
  v9 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v10];
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  if (self->_manager == managerCopy)
  {
    name = self->_name;
    name = [disconnectCopy name];
    LODWORD(name) = [(NSString *)name isEqual:name];

    if (name)
    {
      [(EPScalablePipeManagerManager *)self setIsConnected:1];
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CC174;
  v16[3] = &unk_1001759C0;
  v17 = managerCopy;
  v18 = disconnectCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = disconnectCopy;
  v15 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v16];
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  if ([endpointCopy isEqual:self->_name])
  {
    if (errorCopy)
    {
      v11 = sub_1000A98C0();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (v12)
      {
        v13 = sub_1000A98C0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1001035F0(endpointCopy, errorCopy, v13);
        }
      }

      selfCopy2 = self;
      v15 = 2;
      v16 = errorCopy;
    }

    else
    {
      self->_endpointIsRegistered = 1;
      selfCopy2 = self;
      v15 = 1;
      v16 = 0;
    }

    [(EPResourceManager *)selfCopy2 setAvailability:v15 withError:v16];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000CC30C;
  v20[3] = &unk_1001759C0;
  v21 = managerCopy;
  v22 = endpointCopy;
  v23 = errorCopy;
  v17 = errorCopy;
  v18 = endpointCopy;
  v19 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v20];
}

@end