@interface NEHelperSourceAppInfo
- (NEHelperSourceAppInfo)initWithFirstMessage:(id)message;
- (OS_dispatch_queue)handlerQueue;
- (void)handleMessage:(id)message;
@end

@implementation NEHelperSourceAppInfo

- (void)handleMessage:(id)message
{
  messageCopy = message;
  memset(dst, 0, sizeof(dst));
  uint64 = xpc_dictionary_get_uint64(messageCopy, "pid");
  string = xpc_dictionary_get_string(messageCopy, "app-identifier");
  v6 = string;
  if (uint64)
  {
    if (!string)
    {
LABEL_8:
      v8 = ne_copy_signature_info_for_pid();
      v9 = v8;
      if (v8 && xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v10 = xpc_dictionary_get_value(v9, "SourceAppSigningIdentifier");
        v30 = xpc_dictionary_get_value(v9, "SourceAppUniqueIdentifier");
        if (!v6 && v10)
        {
          v6 = _CFXPCCreateCFObjectFromXPCObject();
        }

        if (v30)
        {
          v11 = _CFXPCCreateCFObjectFromXPCObject();

LABEL_12:
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          buffer = 0u;
          if (proc_pidinfo(uint64, 17, 1uLL, &buffer, 56) == 56)
          {
            uuid_copy(dst, &buffer);
            memset(out, 0, sizeof(out));
            uuid_unparse(dst, out);
            v12 = ne_log_obj();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_18;
            }

            v40 = 136315394;
            v41 = out;
            v42 = 1024;
            v43 = uint64;
            v13 = "Found UUID: %s by lookup for pid: %d";
            v14 = &v40;
            v15 = v12;
            v16 = 18;
          }

          else
          {
            v17 = ne_log_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *out = 0;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not convert from PID to UUID", out, 2u);
            }

            v12 = ne_log_obj();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
LABEL_18:

              if (!v6)
              {
                goto LABEL_26;
              }

              goto LABEL_19;
            }

            *out = 67109120;
            *&out[4] = uint64;
            v13 = "Could not convert from PID (%d) to UUID";
            v14 = out;
            v15 = v12;
            v16 = 8;
          }

          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, v13, v14, v16);
          goto LABEL_18;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = 0;
      goto LABEL_12;
    }

    if (!*string)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  else if (!string || !*string)
  {
    sub_10000BA0C(NEHelperServer, messageCopy, 22, 0);
    goto LABEL_53;
  }

  v7 = [[NSString alloc] initWithUTF8String:string];
  v6 = v7;
  if (uint64)
  {
    goto LABEL_8;
  }

  v11 = 0;
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_19:
  if ([v6 length])
  {
    v18 = [LSApplicationProxy applicationProxyForIdentifier:v6];
    v19 = v18;
    if (v18)
    {
      shortVersionString = [v18 shortVersionString];
      teamID = [v19 teamID];
      v22 = [teamID length];

      teamID2 = [v19 teamID];
      v24 = [teamID2 compare:@"0000000000"];

      v25 = [NSString alloc];
      v26 = v25;
      if (v24 && v22)
      {
        teamID3 = [v19 teamID];
        v28 = [v26 initWithFormat:@"%@.%@", teamID3, v6];
      }

      else
      {
        v28 = [v25 initWithFormat:@"%@.%@", &stru_10003E738, v6];
      }
    }

    else
    {
      v28 = [[NSString alloc] initWithFormat:@".%@", v6];
      shortVersionString = 0;
    }

    v29 = xpc_dictionary_create(0, 0, 0);
    if (v28 && [v28 length])
    {
      xpc_dictionary_set_string(v29, "app-identifier", [v28 UTF8String]);
    }

    if (shortVersionString && [shortVersionString length])
    {
      xpc_dictionary_set_string(v29, "version-string", [shortVersionString UTF8String]);
    }

    goto LABEL_40;
  }

LABEL_26:
  v29 = xpc_dictionary_create(0, 0, 0);
  v28 = 0;
  shortVersionString = 0;
LABEL_40:
  if (v11 && [v11 length])
  {
    xpc_dictionary_set_data(v29, "app-cd-hash", [v11 bytes], objc_msgSend(v11, "length"));
  }

  if (v6 && [v6 length] && uuid_is_null(dst))
  {
    v31 = sub_100020804();
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000265E0;
    v36[3] = &unk_10003D878;
    v37 = v6;
    v38 = v29;
    v39 = messageCopy;
    v32 = v37;
    v34 = v36;
    if (v31)
    {
      Property = objc_getProperty(v31, v33, 8, 1);
      *&buffer = _NSConcreteStackBlock;
      *(&buffer + 1) = 3221225472;
      *&v47 = sub_100025C38;
      *(&v47 + 1) = &unk_10003D798;
      *&v48 = v31;
      *(&v48 + 1) = v32;
      v49 = 0;
      v50 = v34;
      dispatch_async(Property, &buffer);
    }
  }

  else
  {
    if (!uuid_is_null(dst))
    {
      xpc_dictionary_set_uuid(v29, "app-euuid", dst);
    }

    sub_10000BA0C(NEHelperServer, messageCopy, 0, v29);
  }

LABEL_53:
}

- (OS_dispatch_queue)handlerQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
    v2 = vars8;
  }

  return self;
}

- (NEHelperSourceAppInfo)initWithFirstMessage:(id)message
{
  messageCopy = message;
  v26.receiver = self;
  v26.super_class = NEHelperSourceAppInfo;
  v5 = [(NEHelperSourceAppInfo *)&v26 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = xpc_dictionary_get_remote_connection(messageCopy);
  v7 = xpc_connection_copy_entitlement_value();
  v8 = xpc_connection_copy_entitlement_value();
  if (v7 && xpc_get_type(v7) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v7);
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    value = 0;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_BOOL)
  {
    v14 = xpc_BOOL_get_value(v8);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("NEHelperSourceAppInfo", v15);
    queue = v5->_queue;
    v5->_queue = v16;

    if (v14 || value)
    {
      goto LABEL_9;
    }

LABEL_12:
    pid = xpc_connection_get_pid(v6);
    v19 = proc_name(pid, buffer, 0x100u);
    v20 = ne_log_obj();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19 < 1)
    {
      if (v21)
      {
        *buf = 67109634;
        *v28 = pid;
        *&v28[4] = 2080;
        *&v28[6] = "com.apple.private.nehelper.privileged";
        v29 = 2080;
        v30 = "com.apple.private.neagent";
        v22 = "Denying connection from process %d because it is missing the %s entitlement and %s entitlement";
        v23 = v20;
        v24 = 28;
        goto LABEL_19;
      }
    }

    else if (v21)
    {
      *buf = 136315906;
      *v28 = buffer;
      *&v28[8] = 1024;
      *&v28[10] = pid;
      v29 = 2080;
      v30 = "com.apple.private.nehelper.privileged";
      v31 = 2080;
      v32 = "com.apple.private.neagent";
      v22 = "Denying connection from %s (%d) because it is missing the %s entitlement and %s entitlement";
      v23 = v20;
      v24 = 38;
LABEL_19:
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    }

    v13 = 0;
    goto LABEL_17;
  }

LABEL_8:
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("NEHelperSourceAppInfo", v10);
  v12 = v5->_queue;
  v5->_queue = v11;

  if (!value)
  {
    goto LABEL_12;
  }

LABEL_9:

LABEL_10:
  v13 = v5;
LABEL_17:

  return v13;
}

@end