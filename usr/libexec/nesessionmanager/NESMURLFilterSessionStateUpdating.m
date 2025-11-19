@interface NESMURLFilterSessionStateUpdating
- (NESMURLFilterSessionStateUpdating)init;
- (void)enterWithSession:(id)a3;
- (void)handleStop;
@end

@implementation NESMURLFilterSessionStateUpdating

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

- (void)enterWithSession:(id)a3
{
  v8.receiver = self;
  v8.super_class = NESMURLFilterSessionStateUpdating;
  [(NESMURLFilterSessionState *)&v8 enterWithSession:a3];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
    if (Property)
    {
      v6 = Property;
      v7 = [Property server];
      [v7 requestUninstallForSession:v6];
    }
  }
}

- (NESMURLFilterSessionStateUpdating)init
{
  v3.receiver = self;
  v3.super_class = NESMURLFilterSessionStateUpdating;
  return [(NESMURLFilterSessionState *)&v3 initWithType:5 andTimeout:300];
}

@end