@interface DMDTaskServerListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DMDTaskServerListenerDelegate)initWithTaskServer:(id)a3;
@end

@implementation DMDTaskServerListenerDelegate

- (DMDTaskServerListenerDelegate)initWithTaskServer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DMDTaskServerListenerDelegate;
  v6 = [(DMDTaskServerListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskServer, a3);
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.dmd-access"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 BOOLValue])
  {
    v7 = [[CATXPCTransport alloc] initWithXPCConnection:v5];
    v8 = [(DMDTaskServerListenerDelegate *)self taskServer];
    [v8 connectWithClientTransport:v7];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end