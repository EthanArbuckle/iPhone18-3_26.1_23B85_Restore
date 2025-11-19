@interface FSKitHelperDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation FSKitHelperDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.allow-external-storage"];
  v6 = v5;
  if (v5 && [v5 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FSKitHelperProtocol];
    [v4 setExportedInterface:v7];

    v8 = objc_opt_new();
    [v4 setExportedObject:v8];
    [v4 resume];
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100001C44(v9);
    }

    v10 = 1;
  }

  else
  {
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100001C88(v8);
    }

    v10 = 0;
  }

  return v10;
}

@end