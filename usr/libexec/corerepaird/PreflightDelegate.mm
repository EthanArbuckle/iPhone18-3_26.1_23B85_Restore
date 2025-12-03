@interface PreflightDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation PreflightDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v5, v6, v7, v8, objc_opt_class(), 0];
  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received a connection on preflightControl!", buf, 2u);
  }

  v11 = [connectionCopy valueForEntitlement:off_100016580];
  v12 = [connectionCopy valueForEntitlement:off_100016590];
  v13 = [connectionCopy valueForEntitlement:off_100016598];
  v14 = v13;
  if (!v11 || !(v12 | v13))
  {
    sub_100009304();
LABEL_15:

LABEL_16:
    [connectionCopy invalidate];
    v18 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    sub_100009260();
    goto LABEL_15;
  }

  if (![v11 BOOLValue] || (objc_msgSend(v12, "BOOLValue") & 1) == 0 && !objc_msgSend(v14, "BOOLValue"))
  {
    goto LABEL_16;
  }

  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairPreflightProtocol];
  [connectionCopy setExportedInterface:v15];

  exportedInterface = [connectionCopy exportedInterface];
  [exportedInterface setClasses:v9 forSelector:"challengeStrongComponents:withReply:" argumentIndex:0 ofReply:0];

  exportedInterface2 = [connectionCopy exportedInterface];
  v18 = 1;
  [exportedInterface2 setClasses:v9 forSelector:"challengeStrongComponents:withReply:" argumentIndex:1 ofReply:1];

  v19 = +[CRPreflightHelper sharedInstance];
  [connectionCopy setExportedObject:v19];
  [connectionCopy resume];

LABEL_12:
  return v18;
}

@end