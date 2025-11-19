@interface SOSControlServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)internalSOSClient;
@end

@implementation SOSControlServer

- (id)internalSOSClient
{
  v2 = [[SOSClient alloc] initSOSClientWithAccount:sub_100245E3C()];

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"keychain-cloud-circle"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 BOOLValue] & 1) == 0)
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109378;
      v15 = [v4 processIdentifier];
      v16 = 2112;
      v17 = @"keychain-cloud-circle";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sos: Client pid: %d doesn't have entitlement: %@", &v14, 0x12u);
    }

    goto LABEL_7;
  }

  v6 = sub_100245E3C();
  if (!v6)
  {
    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = [v4 processIdentifier];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sos: SOS have not launched yet, come later, pid: %d", &v14, 8u);
    }

    v7 = 0;
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [[SOSClientRemote alloc] initSOSConnectionWithConnection:v4 account:v6];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SOSControlProtocol];
  [v4 setExportedInterface:v9];

  v10 = [v4 exportedInterface];
  _SOSControlSetupInterface();

  [v4 setExportedObject:v8];
  [v4 resume];

  v11 = 1;
LABEL_8:

  return v11;
}

@end