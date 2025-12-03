@interface RXSyncXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation RXSyncXPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  _xpcConnection = [connectionCopy _xpcConnection];
  __xpc_connection_set_logging();

  v6 = +[RDServer sharedXPCInterface];
  [connectionCopy setExportedInterface:v6];

  v7 = +[RDServer sharedServer];
  [connectionCopy setExportedObject:v7];

  [connectionCopy resume];
  return 1;
}

@end