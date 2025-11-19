@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a connection!", v11, 2u);
  }

  v6 = [v4 valueForEntitlement:off_10001E930];
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
    [v4 invalidate];
    v9 = 0;
    goto LABEL_7;
  }

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRSystemHealthProtocol];
  [v4 setExportedInterface:v7];

  v8 = +[MRComponentHealthHandler sharedInstance];
  [v4 setExportedObject:v8];
  [v4 resume];

  v9 = 1;
LABEL_7:

  return v9;
}

@end