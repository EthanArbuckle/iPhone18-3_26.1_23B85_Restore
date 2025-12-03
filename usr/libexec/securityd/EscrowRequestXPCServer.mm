@interface EscrowRequestXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation EscrowRequestXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.escrow-update"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    v6 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109376;
      processIdentifier = [connectionCopy processIdentifier];
      v15 = 1024;
      LODWORD(v16) = [connectionCopy effectiveUserIdentifier];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received connection from client pid %d (euid %u)", &v13, 0xEu);
    }

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___EscrowRequestXPCProtocol];
    v8 = SecEscrowRequestSetupControlProtocol();
    [connectionCopy setExportedInterface:v8];

    v9 = +[EscrowRequestServer server];
    [connectionCopy setExportedObject:v9];

    [connectionCopy resume];
    v10 = 1;
  }

  else
  {
    v11 = sub_100006274("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109378;
      processIdentifier = [connectionCopy processIdentifier];
      v15 = 2112;
      v16 = @"com.apple.private.escrow-update";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "escrow-update: Client pid: %d doesn't have entitlement: %@", &v13, 0x12u);
    }

    v10 = 0;
  }

  return v10;
}

@end