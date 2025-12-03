@interface NEHelperHotspotConfigurationManager
- (NEHelperHotspotConfigurationManager)initWithFirstMessage:(id)message;
- (void)handleMessage:(id)message;
@end

@implementation NEHelperHotspotConfigurationManager

- (void)handleMessage:(id)message
{
  messageCopy = message;
  if (!sub_10000555C(self, messageCopy))
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = objc_opt_class();
      v6 = v8;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ failed to process request.", &v7, 0xCu);
    }

    if (xpc_dictionary_get_BOOL(messageCopy, "IsResponseExpected"))
    {
      sub_10000BA0C(NEHelperServer, messageCopy, 107, 0);
    }
  }
}

- (NEHelperHotspotConfigurationManager)initWithFirstMessage:(id)message
{
  messageCopy = message;
  v5 = xpc_dictionary_get_remote_connection(messageCopy);
  objc_opt_self();
  v6 = xpc_connection_copy_entitlement_value();
  v7 = v6;
  if (!v6 || xpc_get_type(v6) != &_xpc_type_BOOL || !xpc_BOOL_get_value(v7))
  {
    pid = xpc_connection_get_pid(v5);
    v15 = proc_name(pid, buf, 0x100u);
    v16 = ne_log_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v15 < 1)
    {
      if (v17)
      {
        *v24 = 138412546;
        v25 = objc_opt_class();
        v26 = 1024;
        LODWORD(v27) = pid;
        v18 = v25;
        v19 = "%@ process %d is missing the com.apple.developer.networking.HotspotConfiguration entitlement.";
        v20 = v16;
        v21 = 18;
        goto LABEL_18;
      }
    }

    else if (v17)
    {
      *v24 = 138412802;
      v25 = objc_opt_class();
      v26 = 2080;
      v27 = buf;
      v28 = 1024;
      v29 = pid;
      v18 = v25;
      v19 = "%@ process %s[%d] is missing the com.apple.developer.networking.HotspotConfiguration entitlement.";
      v20 = v16;
      v21 = 28;
LABEL_18:
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, v24, v21);
    }

    selfCopy = 0;
    goto LABEL_16;
  }

  v23.receiver = self;
  v23.super_class = NEHelperHotspotConfigurationManager;
  v8 = [(NEHelperHotspotConfigurationManager *)&v23 init];
  if (v8)
  {
    objc_opt_self();
    if (qword_100046AD8 != -1)
    {
      dispatch_once(&qword_100046AD8, &stru_10003CD38);
    }

    v9 = NECopySigningIdentifierForXPCMessage();
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v8->_bundleID;
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Created new Hotspot configuration delegate with bundleID = %@", buf, 0xCu);
    }
  }

  self = v8;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

@end