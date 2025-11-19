@interface UMSyncXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation UMSyncXPCListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 _xpcConnection];
  __xpc_connection_set_logging();

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UMSyncXPCProtocol];
  [v4 setExportedInterface:v6];

  v7 = +[UMSyncService sharedService];
  [v4 setExportedObject:v7];

  [v4 resume];
  return 1;
}

@end