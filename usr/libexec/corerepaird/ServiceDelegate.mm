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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a connection!", buf, 2u);
  }

  v6 = [connectionCopy valueForEntitlement:off_100016580];
  if (!v6)
  {
    v29 = handleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
      v30 = "%s: audit token does not have entitlements needed.";
      v31 = v29;
      v32 = 12;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    }

LABEL_31:
    v8 = 0;
    v7 = 0;
LABEL_38:

    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = handleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
      v36 = 2112;
      v37 = v6;
      v30 = "%s: format not correct: %@";
      v31 = v29;
      v32 = 22;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (![v6 BOOLValue])
  {
    v8 = 0;
    v7 = 0;
LABEL_39:
    [connectionCopy invalidate];
    v27 = 0;
    goto LABEL_25;
  }

  v7 = [connectionCopy valueForEntitlement:off_100016588];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = handleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: format not correct: %@", buf, 0x16u);
      }

      v8 = 0;
      goto LABEL_38;
    }
  }

  v8 = [connectionCopy valueForEntitlement:off_100016590];
  if (!v8)
  {
    v23 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairHelperProtocol];
    [connectionCopy setExportedInterface:v23];

LABEL_15:
    if (v7 && ([v7 BOOLValue] & 1) != 0)
    {
      v24 = handleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Set exportedObject as a CRFactoryHelper instance for factory service", buf, 2u);
      }

      v25 = CRCFactoryHelper;
    }

    else
    {
      v26 = handleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Set exportedObject as a CoreRepairHelper instance", buf, 2u);
      }

      v25 = CoreRepairHelper;
    }

    sharedInstance = [(__objc2_class *)v25 sharedInstance];
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = handleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: format not correct: %@", buf, 0x16u);
    }

    goto LABEL_38;
  }

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairHelperProtocol];
  [connectionCopy setExportedInterface:v9];

  if (![v8 BOOLValue])
  {
    goto LABEL_15;
  }

  v33 = v6;
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [NSSet setWithObjects:v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0];
  exportedInterface = [connectionCopy exportedInterface];
  [exportedInterface setClasses:v17 forSelector:"challengeComponentsWith:withReply:" argumentIndex:0 ofReply:0];

  exportedInterface2 = [connectionCopy exportedInterface];
  [exportedInterface2 setClasses:v17 forSelector:"challengeComponentsWith:withReply:" argumentIndex:1 ofReply:1];

  exportedInterface3 = [connectionCopy exportedInterface];
  [exportedInterface3 setClasses:v17 forSelector:"getStrongComponentsWithReply:" argumentIndex:1 ofReply:1];

  v21 = handleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Set exportedObject as a CRAttestationHelper instance", buf, 2u);
  }

  sharedInstance = +[CoreRepairHelper sharedInstance];

  v6 = v33;
LABEL_24:
  [connectionCopy setExportedObject:sharedInstance];
  [connectionCopy resume];

  v27 = 1;
LABEL_25:

  return v27;
}

@end