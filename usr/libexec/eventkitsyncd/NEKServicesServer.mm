@interface NEKServicesServer
+ (id)log;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NEKServicesServer)initWithEnvironment:(id)environment;
@end

@implementation NEKServicesServer

+ (id)log
{
  if (qword_1000D1750 != -1)
  {
    sub_10006F254();
  }

  v3 = qword_1000D1758;

  return v3;
}

- (NEKServicesServer)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v13.receiver = self;
  v13.super_class = NEKServicesServer;
  v6 = [(NEKServicesServer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, environment);
    v8 = [NSXPCListener alloc];
    v9 = [v8 initWithMachServiceName:EKSSMachServiceName];
    listener = v7->_listener;
    v7->_listener = v9;

    [(NSXPCListener *)v7->_listener setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
    v11 = +[NEKServicesServer log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10006F268(v11);
    }
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [[NEKServicesClient alloc] initWithConnection:connectionCopy andEnvironment:self->_environment];
  v9 = EKSSServiceXPCInterface();
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:v8];
  v10 = EKSSClientXPCInterface();
  [connectionCopy setRemoteObjectInterface:v10];

  v11 = objc_initWeak(&location, self);
  v12 = [(NEKServicesServer *)self description];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100009F58;
  v19[3] = &unk_1000B4B90;
  v13 = v12;
  v20 = v13;
  [connectionCopy setInterruptionHandler:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A008;
  v17[3] = &unk_1000B4B90;
  v14 = v13;
  v18 = v14;
  [connectionCopy setInvalidationHandler:v17];
  [connectionCopy resume];
  v15 = +[NEKServicesServer log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10006F2AC(v15);
  }

  objc_destroyWeak(&location);
  return 1;
}

@end