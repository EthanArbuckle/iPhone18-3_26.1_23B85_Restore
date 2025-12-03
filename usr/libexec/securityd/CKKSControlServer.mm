@interface CKKSControlServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation CKKSControlServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.ckks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 BOOLValue] & 1) == 0)
  {
    v10 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109378;
      processIdentifier = [connectionCopy processIdentifier];
      v15 = 2112;
      v16 = @"com.apple.private.ckks";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Client pid: %d doesn't have entitlement: %@", &v13, 0x12u);
    }

    goto LABEL_8;
  }

  if ((sub_100019064() & 1) == 0)
  {
    v12 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Client pid: %d attempted to use CKKS, but CKKS is not enabled.", &v13, 8u);
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKKSControlProtocol];
  v7 = CKKSSetupControlProtocol();
  [connectionCopy setExportedInterface:v7];

  v8 = +[CKKSViewManager manager];
  [connectionCopy setExportedObject:v8];

  [connectionCopy resume];
  v9 = 1;
LABEL_9:

  return v9;
}

@end