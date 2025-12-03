@interface NEHelperTest
- (NEHelperTest)initWithFirstMessage:(id)message;
- (void)handleMessage:(id)message;
@end

@implementation NEHelperTest

- (void)handleMessage:(id)message
{
  xdict = message;
  uint64 = xpc_dictionary_get_uint64(xdict, "operation");
  switch(uint64)
  {
    case 3uLL:
      string = xpc_dictionary_get_string(xdict, "app-bundle-id");
      if (string)
      {
        v5 = xpc_string_create(string);
        v6 = xpc_array_create(0, 0);
        xpc_array_append_value(v6, v5);
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_value(v7, [@"bundleIDs" UTF8String], v6);
        v8 = xpc_dictionary_create(0, 0, 0);
        v9 = v8;
        v10 = _xpc_event_key_name;
        v11 = "ApplicationInstalled";
        goto LABEL_11;
      }

      break;
    case 2uLL:
      v12 = xpc_dictionary_get_string(xdict, "app-bundle-id");
      if (v12)
      {
        if (!*v12)
        {
          sub_10001FFB0(NEHelperConfigurationManager, 0);
          goto LABEL_13;
        }

        v5 = [NSString stringWithUTF8String:v12];
        sub_10001FFB0(NEHelperConfigurationManager, v5);
LABEL_12:

LABEL_13:
        v15 = 0;
        goto LABEL_15;
      }

      break;
    case 1uLL:
      v4 = xpc_dictionary_get_string(xdict, "app-bundle-id");
      if (v4)
      {
        v5 = xpc_string_create(v4);
        v6 = xpc_array_create(0, 0);
        xpc_array_append_value(v6, v5);
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_value(v7, [@"bundleIDs" UTF8String], v6);
        v8 = xpc_dictionary_create(0, 0, 0);
        v9 = v8;
        v10 = _xpc_event_key_name;
        v11 = "ApplicationUninstalled";
LABEL_11:
        xpc_dictionary_set_string(v8, v10, v11);
        xpc_dictionary_set_value(v9, "UserInfo", v7);
        v14 = sub_1000016DC();
        sub_10000C898(v14, v9, "com.apple.distnoted.matching");

        goto LABEL_12;
      }

      break;
  }

  v15 = 22;
LABEL_15:
  sub_10000BA0C(NEHelperServer, xdict, v15, 0);
}

- (NEHelperTest)initWithFirstMessage:(id)message
{
  v4 = xpc_dictionary_get_remote_connection(message);
  if (sub_10000E080(NEHelperServer, v4))
  {
    v9.receiver = self;
    v9.super_class = NEHelperTest;
    self = [(NEHelperTest *)&v9 init];
    selfCopy = self;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10000E0E0(NEHelperServer, v4);
      *buf = 138412546;
      v11 = v8;
      v12 = 2080;
      v13 = "com.apple.private.networkextension.test-control";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Denying test connection because %@ does not have the %s entitlement", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end