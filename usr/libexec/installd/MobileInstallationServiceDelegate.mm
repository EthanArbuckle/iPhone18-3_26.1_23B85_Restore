@interface MobileInstallationServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation MobileInstallationServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_100004390();
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  v7 = sub_100004308();
  [connectionCopy setRemoteObjectInterface:v7];

  [v6 setXpcConnection:connectionCopy];
  [connectionCopy setInterruptionHandler:&stru_100091060];
  [connectionCopy setInvalidationHandler:&stru_100091080];
  [connectionCopy resume];

  return 1;
}

@end