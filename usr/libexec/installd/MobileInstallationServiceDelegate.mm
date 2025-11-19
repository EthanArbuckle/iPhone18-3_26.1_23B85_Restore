@interface MobileInstallationServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MobileInstallationServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = sub_100004390();
  [v4 setExportedInterface:v5];

  v6 = objc_opt_new();
  [v4 setExportedObject:v6];
  v7 = sub_100004308();
  [v4 setRemoteObjectInterface:v7];

  [v6 setXpcConnection:v4];
  [v4 setInterruptionHandler:&stru_100091060];
  [v4 setInvalidationHandler:&stru_100091080];
  [v4 resume];

  return 1;
}

@end