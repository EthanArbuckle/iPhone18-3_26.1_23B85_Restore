@interface MCProfileServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation MCProfileServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[MCProfileServiceServer sharedServer];
  connectionTracker = [v5 connectionTracker];
  [connectionTracker trackConnectionFromPID:{objc_msgSend(connectionCopy, "processIdentifier")}];

  v7 = objc_opt_new();
  [v7 setXpcConnection:connectionCopy];
  [connectionCopy setExportedObject:v7];
  v8 = MCXPCProtocolInterface();
  [connectionCopy setExportedInterface:v8];

  v9 = MCProfileConnectionXPCProtocolInterface();
  [connectionCopy setRemoteObjectInterface:v9];

  [connectionCopy resume];
  return 1;
}

@end