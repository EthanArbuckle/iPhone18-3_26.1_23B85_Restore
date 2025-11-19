@interface NEKTestControl
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NEKEnvironment)environment;
- (NEKTestControl)initWithEnvironment:(id)a3;
@end

@implementation NEKTestControl

- (NEKTestControl)initWithEnvironment:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NEKTestControl;
  v5 = [(NEKTestControl *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEKTestControlProtocol];
  [v5 setExportedInterface:v6];

  v7 = [(NEKTestControl *)self environment];
  v8 = [v7 syncController];
  [v5 setExportedObject:v8];

  [v5 resume];
  return 1;
}

- (NEKEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end