@interface NESMFilterSessionStateUpdating
- (NESMFilterSessionStateUpdating)init;
- (void)enterWithSession:(id)session;
- (void)handleStop;
@end

@implementation NESMFilterSessionStateUpdating

- (void)handleStop
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ ignoring stop message in state %@", &v8, 0x16u);
  }
}

- (void)enterWithSession:(id)session
{
  v8.receiver = self;
  v8.super_class = NESMFilterSessionStateUpdating;
  [(NESMFilterSessionState *)&v8 enterWithSession:session];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
    if (Property)
    {
      v6 = Property;
      sub_1000806FC(Property, 0);
      server = [v6 server];
      [server requestUninstallForSession:v6];
    }
  }
}

- (NESMFilterSessionStateUpdating)init
{
  v3.receiver = self;
  v3.super_class = NESMFilterSessionStateUpdating;
  return [(NESMFilterSessionState *)&v3 initWithType:5 andTimeout:300];
}

@end