@interface MSDLocalEventStreamHandler
+ (id)sharedInstance;
- (void)handleEvent:(id)a3 fromStream:(const char *)a4;
- (void)start;
@end

@implementation MSDLocalEventStreamHandler

+ (id)sharedInstance
{
  if (qword_1001A5850 != -1)
  {
    sub_1000D7838();
  }

  v3 = qword_1001A5848;

  return v3;
}

- (void)start
{
  v3 = +[MSDWorkQueueSet sharedInstance];
  v4 = [v3 messageQueue];

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100068E8C;
  handler[3] = &unk_10016A7E8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.fsevents.matching", v4, handler);
}

- (void)handleEvent:(id)a3 fromStream:(const char *)a4
{
  v5 = a3;
  type = xpc_get_type(v5);
  if (type != &_xpc_type_dictionary)
  {
    v7 = type;
    v8 = sub_100063B64();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D784C(v7, v8);
    }

    goto LABEL_4;
  }

  string = xpc_dictionary_get_string(v5, _xpc_event_key_name);
  v10 = sub_100063B64();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = string;
    v13 = 2080;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received XPC event of name: %s from stream: %s", &v11, 0x16u);
  }

  if (!strncmp(a4, "com.apple.fsevents.matching", 0x1CuLL) && !strncmp(string, "DemoSettingsManagedPreferencesChanged", 0x26uLL))
  {
    v8 = +[MSDTargetDevice sharedInstance];
    [v8 toggleSEPDemoModeOnManagedPreferencesChange];
LABEL_4:
  }
}

@end