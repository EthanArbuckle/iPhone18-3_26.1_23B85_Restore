@interface EPScalablePipeManagerManager
- (EPScalablePipeManagerManager)initWithName:(id)a3 type:(int64_t)a4 priority:(int64_t)a5;
- (id)newResourceWithDelegate:(id)a3;
- (void)createResource;
- (void)destroyResource;
- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5;
- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5;
- (void)scalablePipeManagerDidUpdateState:(id)a3;
- (void)setIsConnected:(BOOL)a3;
- (void)update;
@end

@implementation EPScalablePipeManagerManager

- (void)createResource
{
  v7.receiver = self;
  v7.super_class = EPScalablePipeManagerManager;
  [(EPResourceManager *)&v7 createResource];
  v3 = [CBScalablePipeManager alloc];
  v4 = [(EPResourceManager *)self queue];
  v5 = [v3 initWithDelegate:self queue:v4];
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

- (void)setIsConnected:(BOOL)a3
{
  if (self->_isConnected != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_isConnected = a3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000CB874;
    v5[3] = &unk_100179410;
    v6 = a3;
    [(EPResourceManager *)self enumerateResourcesWithBlock:v5];
  }
}

- (EPScalablePipeManagerManager)initWithName:(id)a3 type:(int64_t)a4 priority:(int64_t)a5
{
  v9 = a3;
  v10 = +[EPFactory queue];
  v13.receiver = self;
  v13.super_class = EPScalablePipeManagerManager;
  v11 = [(EPResourceManager *)&v13 initWithQueue:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v11->_type = a4;
    v11->_priority = a5;
  }

  return v11;
}

- (id)newResourceWithDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = EPScalablePipeManagerManager;
  v4 = [(EPResourceManager *)&v6 newResourceWithDelegate:a3];
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

  v3 = [(CBScalablePipeManager *)self->_manager state];
  v4 = 0;
  if (v3 <= 3)
  {
    if (v3 == 2)
    {
      v19 = NSLocalizedDescriptionKey;
      v20 = @"Bluetooth is not supported";
      v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v16 = 3;
    }

    else
    {
      v6 = 0;
      if (v3 != 3)
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

  if (v3 == 4)
  {
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Bluetooth is powered off";
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = 2;
    goto LABEL_28;
  }

  v5 = v3 == 10 || v3 == 5;
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

- (void)scalablePipeManagerDidUpdateState:(id)a3
{
  v4 = a3;
  [(EPScalablePipeManagerManager *)self update];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CBDF0;
  v6[3] = &unk_1001785C0;
  v7 = v4;
  v5 = v4;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v6];
}

- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_manager == v6)
  {
    name = self->_name;
    v10 = [v7 name];
    LODWORD(name) = [(NSString *)name isEqual:v10];

    if (name)
    {
      [(EPScalablePipeManagerManager *)self setIsConnected:1];
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000CBF18;
  v13[3] = &unk_100175998;
  v14 = v6;
  v15 = v8;
  v11 = v8;
  v12 = v6;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v13];
}

- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqual:self->_name])
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
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v10];
}

- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_manager == v8)
  {
    name = self->_name;
    v12 = [v9 name];
    LODWORD(name) = [(NSString *)name isEqual:v12];

    if (name)
    {
      [(EPScalablePipeManagerManager *)self setIsConnected:1];
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CC174;
  v16[3] = &unk_1001759C0;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v16];
}

- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqual:self->_name])
  {
    if (v10)
    {
      v11 = sub_1000A98C0();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (v12)
      {
        v13 = sub_1000A98C0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1001035F0(v9, v10, v13);
        }
      }

      v14 = self;
      v15 = 2;
      v16 = v10;
    }

    else
    {
      self->_endpointIsRegistered = 1;
      v14 = self;
      v15 = 1;
      v16 = 0;
    }

    [(EPResourceManager *)v14 setAvailability:v15 withError:v16];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000CC30C;
  v20[3] = &unk_1001759C0;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v20];
}

@end