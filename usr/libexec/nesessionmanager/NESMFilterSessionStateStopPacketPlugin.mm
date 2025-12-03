@interface NESMFilterSessionStateStopPacketPlugin
- (void)enterWithSession:(id)session;
- (void)handlePlugin:(id)plugin statusDidChangeToIdleWithError:(int64_t)error;
- (void)handlePluginDisposeComplete:(id)complete;
@end

@implementation NESMFilterSessionStateStopPacketPlugin

- (void)handlePluginDisposeComplete:(id)complete
{
  v13.receiver = self;
  v13.super_class = NESMFilterSessionStateStopPacketPlugin;
  completeCopy = complete;
  [(NESMFilterSessionState *)&v13 handlePluginDisposeComplete:completeCopy];
  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 408, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v8 = Property;

  if (v8 == completeCopy)
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 16, 1);
      if (v10)
      {
        objc_setProperty_atomic(v10, v11, 0, 408);
      }

      v12 = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      v12 = 0;
    }

    sub_100082FD8(v12, 3);
  }
}

- (void)handlePlugin:(id)plugin statusDidChangeToIdleWithError:(int64_t)error
{
  pluginCopy = plugin;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v8, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138413058;
    v13 = Property;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = pluginCopy;
    v18 = 2048;
    errorCopy = error;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to idle with error: %ld", &v12, 0x2Au);
  }
}

- (void)enterWithSession:(id)session
{
  v9.receiver = self;
  v9.super_class = NESMFilterSessionStateStopPacketPlugin;
  [(NESMFilterSessionState *)&v9 enterWithSession:session];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 408, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  sub_1000198A8(v7, v8);
}

@end