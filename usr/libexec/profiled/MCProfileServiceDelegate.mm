@interface MCProfileServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MCProfileServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = +[MCProfileServiceServer sharedServer];
  v6 = [v5 connectionTracker];
  [v6 trackConnectionFromPID:{objc_msgSend(v4, "processIdentifier")}];

  v7 = objc_opt_new();
  [v7 setXpcConnection:v4];
  [v4 setExportedObject:v7];
  v8 = MCXPCProtocolInterface();
  [v4 setExportedInterface:v8];

  v9 = MCProfileConnectionXPCProtocolInterface();
  [v4 setRemoteObjectInterface:v9];

  [v4 resume];
  return 1;
}

@end