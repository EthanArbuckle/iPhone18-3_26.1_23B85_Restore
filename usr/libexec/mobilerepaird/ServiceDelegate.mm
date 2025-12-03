@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a connection!", v11, 2u);
  }

  v6 = [connectionCopy valueForEntitlement:off_10001E930];
  if (!v6)
  {
    sub_10000E93C(v11);
LABEL_10:

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10000E874(v6, v11);
    goto LABEL_10;
  }

  if (![v6 BOOLValue])
  {
LABEL_11:
    [connectionCopy invalidate];
    v9 = 0;
    goto LABEL_7;
  }

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRSystemHealthProtocol];
  [connectionCopy setExportedInterface:v7];

  v8 = +[MRComponentHealthHandler sharedInstance];
  [connectionCopy setExportedObject:v8];
  [connectionCopy resume];

  v9 = 1;
LABEL_7:

  return v9;
}

@end