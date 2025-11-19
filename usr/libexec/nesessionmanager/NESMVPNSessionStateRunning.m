@interface NESMVPNSessionStateRunning
- (BOOL)handleSleep;
- (NESMVPNSessionStateRunning)init;
- (void)handleInterfaceUnavailable:(id)a3;
- (void)handlePluginStatusDidChangeToReasserting:(id)a3;
- (void)handleUserLogout;
- (void)handleUserSwitch;
@end

@implementation NESMVPNSessionStateRunning

- (void)handleInterfaceUnavailable:(id)a3
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateRunning;
  [(NESMVPNSessionState *)&v6 handleInterfaceUnavailable:a3];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    Property = 0;
  }

  [Property setState:6];
}

- (void)handlePluginStatusDidChangeToReasserting:(id)a3
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateRunning;
  [(NESMVPNSessionState *)&v6 handlePluginStatusDidChangeToReasserting:a3];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    Property = 0;
  }

  [Property setState:6];
}

- (void)handleUserLogout
{
  v2.receiver = self;
  v2.super_class = NESMVPNSessionStateRunning;
  [(NESMVPNSessionState *)&v2 handleUserLogout];
}

- (void)handleUserSwitch
{
  v2.receiver = self;
  v2.super_class = NESMVPNSessionStateRunning;
  [(NESMVPNSessionState *)&v2 handleUserSwitch];
}

- (BOOL)handleSleep
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
  }

  v3 = [(NESMVPNSessionStateRunning *)self protocol];
  v4 = [v3 disconnectOnSleep];

  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v2)
      {
        Property = objc_getProperty(v2, v6, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412546;
      v17 = Property;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: delaying sleep until disconnected", buf, 0x16u);
    }

    if (v2)
    {
      [objc_getProperty(v2 v10];
      [objc_getProperty(v2 v11];
      v13 = objc_getProperty(v2, v12, 16, 1);
    }

    else
    {
      [0 setSleepOnDisconnect:1];
      [0 setLastStopReason:9];
      v13 = 0;
    }

    [v13 setState:5];
  }

  else
  {
    v15.receiver = v2;
    v15.super_class = NESMVPNSessionStateRunning;
    [(NESMVPNSessionState *)&v15 handleSleep];
  }

  return 1;
}

- (NESMVPNSessionStateRunning)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateRunning;
  return [(NESMVPNSessionState *)&v3 initWithType:4 andTimeout:0];
}

@end