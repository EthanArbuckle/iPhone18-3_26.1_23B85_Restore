@interface KBXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation KBXPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KBXPCProtocol];
  [connectionCopy setExportedInterface:v5];
  v6 = +[KBXPCService sharedService];
  [connectionCopy setExportedObject:v6];

  [connectionCopy resume];
  return 1;
}

@end