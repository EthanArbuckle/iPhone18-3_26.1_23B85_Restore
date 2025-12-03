@interface UMSyncXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation UMSyncXPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  _xpcConnection = [connectionCopy _xpcConnection];
  __xpc_connection_set_logging();

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UMSyncXPCProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = +[UMSyncService sharedService];
  [connectionCopy setExportedObject:v7];

  [connectionCopy resume];
  return 1;
}

@end