@interface PreferencesDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation PreferencesDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a connection com.apple.corerepair.intentControl !", v15, 2u);
  }

  v6 = [v4 valueForEntitlement:off_100016580];
  v7 = [v4 valueForEntitlement:off_1000165A0];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    sub_1000091C8();
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    sub_100009124();
LABEL_17:

LABEL_18:
    [v4 invalidate];
    v13 = 0;
    goto LABEL_14;
  }

  if (![v6 BOOLValue] || !objc_msgSend(v8, "BOOLValue"))
  {
    goto LABEL_18;
  }

  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set exportedObject as a CRBootIntentHelper instance", v15, 2u);
  }

  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairBootIntentProtocol];
  [v4 setExportedInterface:v11];

  v12 = objc_opt_new();
  [v4 setExportedObject:v12];
  [v4 resume];

  v13 = 1;
LABEL_14:

  return v13;
}

@end