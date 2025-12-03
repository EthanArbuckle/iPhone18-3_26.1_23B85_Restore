@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.securityuploadd"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.private.trustd.FileHelp"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!bOOLValue)
    {
      goto LABEL_15;
    }

LABEL_11:
    v9 = sub_1000146E4("xpc");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Client (pid: %d) properly entitled for supd interface, let's go", &v15, 8u);
    }

    v10 = &protocolRef_supdProtocol;
    goto LABEL_14;
  }

  bOOLValue2 = [v7 BOOLValue];
  if (bOOLValue)
  {
    goto LABEL_11;
  }

  if (bOOLValue2)
  {
    v9 = sub_1000146E4("xpc");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Client (pid: %d) properly entitled for trustd file helper interface, let's go", &v15, 8u);
    }

    v10 = &protocolRef_TrustdFileHelper_protocol;
LABEL_14:

    v11 = [NSXPCInterface interfaceWithProtocol:*v10];
    [connectionCopy setExportedInterface:v11];

    v12 = [[supd alloc] initWithConnection:connectionCopy];
    [connectionCopy setExportedObject:v12];
    [connectionCopy resume];
    v13 = 1;
    goto LABEL_18;
  }

LABEL_15:
  v12 = sub_1000146E4("SecError");
  if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109120;
    processIdentifier = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, &v12->super, OS_LOG_TYPE_DEFAULT, "xpc: Client (pid: %d) doesn't have entitlement", &v15, 8u);
  }

  v13 = 0;
LABEL_18:

  return v13;
}

@end