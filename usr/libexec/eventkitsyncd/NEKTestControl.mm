@interface NEKTestControl
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NEKEnvironment)environment;
- (NEKTestControl)initWithEnvironment:(id)environment;
@end

@implementation NEKTestControl

- (NEKTestControl)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v12.receiver = self;
  v12.super_class = NEKTestControl;
  v5 = [(NEKTestControl *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.internal.eventkitsync.testcontrol"];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    v9 = v6->_listener;
    v10 = sub_100004B98("com.apple.NEKTestControl.xpc");
    [(NSXPCListener *)v9 _setQueue:v10];

    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEKTestControlProtocol];
  [connectionCopy setExportedInterface:v6];

  environment = [(NEKTestControl *)self environment];
  syncController = [environment syncController];
  [connectionCopy setExportedObject:syncController];

  [connectionCopy resume];
  return 1;
}

- (NEKEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end