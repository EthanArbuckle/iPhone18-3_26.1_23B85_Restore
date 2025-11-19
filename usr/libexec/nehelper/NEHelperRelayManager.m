@interface NEHelperRelayManager
- (NEHelperRelayManager)initWithFirstMessage:(id)a3;
- (void)handleMessage:(id)a3;
@end

@implementation NEHelperRelayManager

- (void)handleMessage:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ processing Relay Manager message", buf, 0xCu);
  }

  uint64 = xpc_dictionary_get_uint64(v4, "relay-command");
  v7 = uint64;
  if (uint64 - 1 <= 1)
  {
    length = 0;
    data = xpc_dictionary_get_data(v4, "relay-persistent-reference", &length);
    if (data && length)
    {
      v9 = [NSData dataWithBytes:data length:?];
      v10 = xpc_dictionary_get_value(v4, "relay-identity-domain");
      v11 = v10;
      if (!v10)
      {
        uuid = xpc_dictionary_get_uuid(v4, "relay-config-id");
        if (uuid)
        {
          v17 = [[NSUUID alloc] initWithUUIDBytes:uuid];
          v18 = +[NEConfigurationManager sharedManagerForAllUsers];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_100001D9C;
          v43[3] = &unk_10003CC48;
          v43[4] = self;
          v44 = v4;
          v46 = v7;
          v45 = v9;
          [v18 loadConfigurationWithID:v17 withCompletionQueue:&_dispatch_main_q handler:v43];

LABEL_20:
          goto LABEL_21;
        }

LABEL_19:
        sub_10000BA0C(NEHelperServer, v4, 22, 0);
        goto LABEL_20;
      }

      if (xpc_get_type(v10) != &_xpc_type_string)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = self;
          v13 = "%@ invalid domain";
LABEL_45:
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      string_ptr = xpc_string_get_string_ptr(v11);
      if (strcmp(string_ptr, "com.apple.networkrelay"))
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = self;
          v13 = "%@ unsupported domain";
          goto LABEL_45;
        }

LABEL_18:

        goto LABEL_19;
      }

      v20 = xpc_dictionary_get_remote_connection(v4);
      v42 = v20;
      if (v20)
      {
        pid = xpc_connection_get_pid(v20);
      }

      else
      {
        pid = 0;
      }

      v22 = objc_alloc_init(NSMutableDictionary);
      v23 = [NSNumber numberWithInt:pid];
      [v22 setObject:v23 forKeyedSubscript:kNRIPCOptionPID];

      v24 = xpc_dictionary_get_value(v4, "relay-options");
      v25 = v24;
      if (v24)
      {
        if (xpc_get_type(v24) == &_xpc_type_dictionary)
        {
          v26 = _CFXPCCreateCFObjectFromXPCObject();
          *buf = v26;
          if (v26)
          {
            [v22 addEntriesFromDictionary:{v26, v42}];
            myCFRelease();
          }
        }
      }

      v27 = [NRIdentityProxyClient alloc];
      if (v7 == 1)
      {
        v28 = [v27 initWithIdentityReference:v9 options:v22];
        v29 = [v28 copySecKeyProxy];
        v30 = v29;
        if (v29)
        {
          v31 = [v29 endpoint];

          if (v31)
          {
            v32 = [v30 endpoint];
            v33 = [v32 _endpoint];

            v34 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_value(v34, "relay-identity-xpc-endpoint", v33);
            sub_10000BA0C(NEHelperServer, v4, 0, v34);

LABEL_43:
            goto LABEL_20;
          }
        }

        v38 = ne_log_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = self;
          v49 = 2080;
          v50 = string_ptr;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%@ key proxy creation failed for %s", buf, 0x16u);
        }

        v39 = v4;
        v40 = 12;
      }

      else
      {
        v28 = [v27 initWithCertificateReference:v9 options:v22];
        v35 = [v28 copyCertificateData];
        v30 = v35;
        if (v35 && [v35 length])
        {
          v36 = _CFXPCCreateXPCObjectFromCFObject();
          v37 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_value(v37, "relay-certificate-data", v36);
          sub_10000BA0C(NEHelperServer, v4, 0, v37);

          goto LABEL_43;
        }

        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = self;
          v49 = 2080;
          v50 = string_ptr;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%@ requested certificate not found for %s", buf, 0x16u);
        }

        v39 = v4;
        v40 = 2;
      }

      sub_10000BA0C(NEHelperServer, v39, v40, 0);
      goto LABEL_43;
    }

    v14 = v4;
    v15 = 22;
    goto LABEL_13;
  }

  if (uint64 == 3)
  {
    v14 = v4;
    v15 = 0;
LABEL_13:
    sub_10000BA0C(NEHelperServer, v14, v15, 0);
  }

LABEL_21:
}

- (NEHelperRelayManager)initWithFirstMessage:(id)a3
{
  v4 = xpc_dictionary_get_remote_connection(a3);
  objc_opt_self();
  v7.receiver = self;
  v7.super_class = NEHelperRelayManager;
  v5 = [(NEHelperRelayManager *)&v7 init];

  return v5;
}

@end