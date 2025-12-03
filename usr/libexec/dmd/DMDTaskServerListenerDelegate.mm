@interface DMDTaskServerListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DMDTaskServerListenerDelegate)initWithTaskServer:(id)server;
@end

@implementation DMDTaskServerListenerDelegate

- (DMDTaskServerListenerDelegate)initWithTaskServer:(id)server
{
  serverCopy = server;
  v9.receiver = self;
  v9.super_class = DMDTaskServerListenerDelegate;
  v6 = [(DMDTaskServerListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskServer, server);
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.dmd-access"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 BOOLValue])
  {
    v7 = [[CATXPCTransport alloc] initWithXPCConnection:connectionCopy];
    taskServer = [(DMDTaskServerListenerDelegate *)self taskServer];
    [taskServer connectWithClientTransport:v7];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end