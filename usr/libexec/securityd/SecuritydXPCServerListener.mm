@interface SecuritydXPCServerListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SecuritydXPCServerListener)init;
@end

@implementation SecuritydXPCServerListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.keychain.deny"];

  if (!v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SecuritydXPCProtocol];
    [v4 setExportedInterface:v6];

    v7 = [v4 exportedInterface];
    [SecuritydXPCClient configureSecuritydXPCProtocol:v7];

    v8 = [[SecuritydXPCServer alloc] initWithConnection:v4];
    [v4 setExportedObject:v8];

    [v4 resume];
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

    v4 = [(SecuritydXPCServerListener *)v2 listener];
    [v4 setDelegate:v2];

    v5 = [(SecuritydXPCServerListener *)v2 listener];
    [v5 resume];
  }

  return v2;
}

@end