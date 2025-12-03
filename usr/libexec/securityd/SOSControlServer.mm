@interface SOSControlServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)internalSOSClient;
@end

@implementation SOSControlServer

- (id)internalSOSClient
{
  v2 = [[SOSClient alloc] initSOSClientWithAccount:sub_100245E3C()];

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"keychain-cloud-circle"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 BOOLValue] & 1) == 0)
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109378;
      processIdentifier = [connectionCopy processIdentifier];
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
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sos: SOS have not launched yet, come later, pid: %d", &v14, 8u);
    }

    v7 = 0;
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [[SOSClientRemote alloc] initSOSConnectionWithConnection:connectionCopy account:v6];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SOSControlProtocol];
  [connectionCopy setExportedInterface:v9];

  exportedInterface = [connectionCopy exportedInterface];
  _SOSControlSetupInterface();

  [connectionCopy setExportedObject:v8];
  [connectionCopy resume];

  v11 = 1;
LABEL_8:

  return v11;
}

@end