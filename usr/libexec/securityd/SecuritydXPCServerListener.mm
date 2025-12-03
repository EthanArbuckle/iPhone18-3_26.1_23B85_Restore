@interface SecuritydXPCServerListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SecuritydXPCServerListener)init;
@end

@implementation SecuritydXPCServerListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.keychain.deny"];

  if (!v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SecuritydXPCProtocol];
    [connectionCopy setExportedInterface:v6];

    exportedInterface = [connectionCopy exportedInterface];
    [SecuritydXPCClient configureSecuritydXPCProtocol:exportedInterface];

    v8 = [[SecuritydXPCServer alloc] initWithConnection:connectionCopy];
    [connectionCopy setExportedObject:v8];

    [connectionCopy resume];
  }

  return v5 == 0;
}

- (SecuritydXPCServerListener)init
{
  v7.receiver = self;
  v7.super_class = SecuritydXPCServerListener;
  v2 = [(SecuritydXPCServerListener *)&v7 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.securityd.general"];
    [(SecuritydXPCServerListener *)v2 setListener:v3];

    listener = [(SecuritydXPCServerListener *)v2 listener];
    [listener setDelegate:v2];

    listener2 = [(SecuritydXPCServerListener *)v2 listener];
    [listener2 resume];
  }

  return v2;
}

@end