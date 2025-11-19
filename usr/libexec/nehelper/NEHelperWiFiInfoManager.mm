@interface NEHelperWiFiInfoManager
- (NEHelperWiFiInfoManager)initWithFirstMessage:(id)a3;
- (OS_dispatch_queue)handlerQueue;
- (void)dealloc;
- (void)handleMessage:(id)a3;
@end

@implementation NEHelperWiFiInfoManager

- (void)handleMessage:(id)a3
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "interface-name");
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = "(nil)";
    if (string)
    {
      v8 = string;
    }

    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ processing Wi-Fi information request for %s", buf, 0x16u);
  }

  v10 = v4;
  v11 = v10;
  if (self)
  {
    self->_isLegacyAPICaller = xpc_dictionary_get_BOOL(v10, "LegacyAPI");
    memset(buf, 0, sizeof(buf));
    xpc_dictionary_get_audit_token();
    v93 = 0;
    *v98 = *buf;
    *&v98[16] = *&buf[16];
    v12 = [LSBundleRecord bundleRecordForAuditToken:v98 error:&v93];
    v13 = v93;
    if (v12)
    {
      v14 = [v12 SDKVersion];
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v98 = 138412546;
        *&v98[4] = self;
        *&v98[12] = 2112;
        *&v98[14] = v13;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ failed to get bundle record, error: %@", v98, 0x16u);
      }

      v14 = 0;
    }

    v16 = self->_connection;
    if (qword_100046B08 != -1)
    {
      dispatch_once(&qword_100046B08, &stru_10003CE30);
    }

    if (byte_100046B00 == 1)
    {
      if (nelog_is_debug_logging_enabled())
      {
        pid = xpc_connection_get_pid(v16);
        proc_name(pid, buf, 0x40u);
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *v98 = 136315138;
          *&v98[4] = buf;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Process [%s] is requesting current Wi-Fi network information", v98, 0xCu);
        }
      }

      v19 = xpc_connection_copy_entitlement_value();
      v20 = v19;
      if (v19 && xpc_get_type(v19) == &_xpc_type_BOOL && xpc_BOOL_get_value(v20))
      {

        sub_100009A3C(self, v11);
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v22;
          v23 = v22;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@ calling process has private entitlement", buf, 0xCu);
        }

LABEL_29:

LABEL_83:
        sub_100009730(self, v11);
LABEL_84:

        goto LABEL_85;
      }
    }

    if (self->_isLegacyAPICaller)
    {
      if (v14)
      {
        v24 = +[LSApplicationWorkspace defaultWorkspace];
        v25 = [v24 isVersion:v14 greaterThanOrEqualToVersion:@"26.0"];

        if (v25)
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            bundleID = self->_bundleID;
            *buf = 138412290;
            *&buf[4] = bundleID;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%@] is denied Wi-Fi information access since it's linked with iOS SDK 26.0 or later. Use replacement API [NEHotspotNetwork fetchCurrentWithCompletionHandler:]", buf, 0xCu);
          }

          goto LABEL_29;
        }
      }
    }

    sub_100009A3C(self, v11);
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v80 = objc_opt_class();
      v81 = self->_bundleID;
      *buf = 138412802;
      *&buf[4] = v80;
      *&buf[12] = 2112;
      *&buf[14] = v81;
      *&buf[22] = 2112;
      *&buf[24] = v14;
      v82 = v80;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@ [%@] is built with SDK version [%@]", buf, 0x20u);
    }

    if (!v14)
    {
LABEL_40:
      v38 = ne_log_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        v40 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v39;
        *&buf[12] = 2112;
        *&buf[14] = v40;
        v41 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%@ [%@] is not entitled", buf, 0x16u);
      }

      sub_10000A098(self, v11, 1);
      goto LABEL_84;
    }

    v28 = v14;
    v29 = +[LSApplicationWorkspace defaultWorkspace];
    v30 = [v29 isVersion:v28 greaterThanOrEqualToVersion:@"12.0"];

    if (v30)
    {
      connection = self->_connection;
      v32 = xpc_connection_copy_entitlement_value();
      v33 = v32;
      if (!v32 || xpc_get_type(v32) != &_xpc_type_BOOL || !xpc_BOOL_get_value(v33))
      {

        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = objc_opt_class();
          v36 = self->_bundleID;
          *buf = 138412802;
          *&buf[4] = v35;
          *&buf[12] = 2112;
          *&buf[14] = v36;
          *&buf[22] = 2080;
          *&buf[24] = "com.apple.developer.networking.wifi-info";
          v37 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@ [%@] missing %s entitlement", buf, 0x20u);
        }

        goto LABEL_40;
      }
    }

    else
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        v43 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = v43;
        v44 = v42;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@ [%@] linked before iOS 12.0", buf, 0x16u);
      }
    }

    v45 = ne_log_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = self->_bundleID;
      *buf = 138412546;
      *&buf[4] = v46;
      *&buf[12] = 2112;
      *&buf[14] = v47;
      v48 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%@ [%@] is entitled", buf, 0x16u);
    }

    if (objc_opt_class())
    {
      v49 = self->_bundleID;
      *v98 = 0;
      v50 = [CLLocationManager _checkAndExerciseAuthorizationForBundleID:v49 error:v98];
      v51 = *v98;
      if (v51)
      {
        v52 = ne_log_obj();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = objc_opt_class();
          v54 = self->_bundleID;
          *buf = 138412802;
          *&buf[4] = v53;
          *&buf[12] = 2112;
          *&buf[14] = v54;
          *&buf[22] = 2112;
          *&buf[24] = v51;
          v55 = v53;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%@ failed to find location authorization for [%@] [%@]", buf, 0x20u);
        }

        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
    }

    v56 = ne_log_obj();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);
    if (v50)
    {
      if (v57)
      {
        v58 = objc_opt_class();
        v59 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v58;
        *&buf[12] = 2112;
        *&buf[14] = v59;
        v60 = v58;
        v61 = "%@ [%@] is authorized to access the location";
LABEL_81:
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, v61, buf, 0x16u);
      }
    }

    else
    {
      if (v57)
      {
        v62 = objc_opt_class();
        v63 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = v63;
        v64 = v62;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%@ [%@] is not authorized to access the location", buf, 0x16u);
      }

      if (self->_network && (BundleIdentifier = WiFiNetworkGetBundleIdentifier()) != 0)
      {
        v66 = [(NSString *)self->_bundleID isEqual:BundleIdentifier];
      }

      else
      {
        v66 = 0;
      }

      v56 = ne_log_obj();
      v67 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);
      if (!v66)
      {
        if (v67)
        {
          v70 = objc_opt_class();
          v71 = self->_bundleID;
          *buf = 138412546;
          *&buf[4] = v70;
          *&buf[12] = 2112;
          *&buf[14] = v71;
          v72 = v70;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%@ [%@] has not configured the current network", buf, 0x16u);
        }

        v73 = self->_connection;
        v74 = xpc_connection_copy_entitlement_value();
        if ((NEGetEntitlement() & 3) != 0)
        {
          v76 = [LSPlugInKitProxy pluginKitProxyForIdentifier:objc_getProperty(self, v75, 32, 1)];
          v77 = v76;
          if (v76)
          {
            v78 = [v76 protocol];
            v79 = ([v78 isEqualToString:@"com.apple.networkextension.app-proxy"] & 1) != 0 || objc_msgSend(v78, "isEqualToString:", @"com.apple.networkextension.packet-tunnel");
          }

          else
          {
            v79 = 0;
          }
        }

        else
        {
          v79 = 0;
        }

        v56 = ne_log_obj();
        v83 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);
        if (!v79)
        {
          if (v83)
          {
            v86 = objc_opt_class();
            v87 = self->_bundleID;
            *buf = 138412546;
            *&buf[4] = v86;
            *&buf[12] = 2112;
            *&buf[14] = v87;
            v88 = v86;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%@ [%@] is not a VPN provider", buf, 0x16u);
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100009BB4;
          *&buf[24] = &unk_10003D360;
          v95 = self;
          v96 = v11;
          v97 = v28;
          v89 = buf;
          v90 = +[NEConfigurationManager sharedManagerForAllUsers];
          queue = self->_queue;
          *v98 = _NSConcreteStackBlock;
          *&v98[8] = 3221225472;
          *&v98[16] = sub_10000A1C0;
          *&v98[24] = &unk_10003CE10;
          v99 = self;
          v92 = v89;
          v100 = v92;
          [v90 loadConfigurations:0 withFilter:0 completionQueue:queue completionHandler:v98];

          goto LABEL_84;
        }

        if (!v83)
        {
          goto LABEL_82;
        }

        v84 = objc_opt_class();
        v85 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v84;
        *&buf[12] = 2112;
        *&buf[14] = v85;
        v60 = v84;
        v61 = "%@ [%@] is a VPN provider";
        goto LABEL_81;
      }

      if (v67)
      {
        v68 = objc_opt_class();
        v69 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v68;
        *&buf[12] = 2112;
        *&buf[14] = v69;
        v60 = v68;
        v61 = "%@ [%@] has configured the current network";
        goto LABEL_81;
      }
    }

LABEL_82:

    goto LABEL_83;
  }

LABEL_85:
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ dealloc()", buf, 0xCu);
  }

  myCFRelease();
  v5.receiver = self;
  v5.super_class = NEHelperWiFiInfoManager;
  [(NEHelperWiFiInfoManager *)&v5 dealloc];
}

- (OS_dispatch_queue)handlerQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return self;
}

- (NEHelperWiFiInfoManager)initWithFirstMessage:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NEHelperWiFiInfoManager;
  v5 = [(NEHelperWiFiInfoManager *)&v19 init];
  if (v5)
  {
    v6 = NECopySigningIdentifierForXPCMessage();
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("NEHelperWiFiInfoManagerMainTaskQueue", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = xpc_dictionary_get_remote_connection(v4);
    connection = v5->_connection;
    v5->_connection = v11;

    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = v5->_bundleID;
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ Created new WiFi Info Helper delegate for [%@]", buf, 0x16u);
    }

    v17 = v5;
  }

  return v5;
}

@end