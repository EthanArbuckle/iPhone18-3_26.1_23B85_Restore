@interface NESMVPNSessionStateReasserting
- (BOOL)handleSetConfiguration;
- (BOOL)handleSleep;
- (NESMVPNSessionStateReasserting)init;
- (void)enterWithSession:(id)session;
- (void)handlePluginStatusDidChangeToConnected:(id)connected;
- (void)handleTimeout;
- (void)handleUserLogout;
- (void)handleUserSwitch;
@end

@implementation NESMVPNSessionStateReasserting

- (BOOL)handleSetConfiguration
{
  v5.receiver = self;
  v5.super_class = NESMVPNSessionStateReasserting;
  handleSetConfiguration = [(NESMVPNSessionState *)&v5 handleSetConfiguration];
  if (self && handleSetConfiguration)
  {
    self->_setConfigurationInProgress = 1;
  }

  return handleSetConfiguration;
}

- (void)handleUserLogout
{
  v2.receiver = self;
  v2.super_class = NESMVPNSessionStateReasserting;
  [(NESMVPNSessionState *)&v2 handleUserLogout];
}

- (void)handleUserSwitch
{
  v2.receiver = self;
  v2.super_class = NESMVPNSessionStateReasserting;
  [(NESMVPNSessionState *)&v2 handleUserSwitch];
}

- (BOOL)handleSleep
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
  }

  protocol = [(NESMVPNSessionStateReasserting *)self protocol];
  disconnectOnSleep = [protocol disconnectOnSleep];

  if (disconnectOnSleep)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v6, 16, 1);
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

    if (selfCopy)
    {
      [objc_getProperty(selfCopy v10];
      [objc_getProperty(selfCopy v11];
      v13 = objc_getProperty(selfCopy, v12, 16, 1);
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
    v15.receiver = selfCopy;
    v15.super_class = NESMVPNSessionStateReasserting;
    [(NESMVPNSessionState *)&v15 handleSleep];
  }

  return 1;
}

- (void)handlePluginStatusDidChangeToConnected:(id)connected
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateReasserting;
  [(NESMVPNSessionState *)&v6 handlePluginStatusDidChangeToConnected:connected];
  if (self)
  {
    if (self->_setConfigurationInProgress)
    {
      return;
    }

    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    Property = 0;
  }

  [Property setState:4];
}

- (void)handleTimeout
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateReasserting;
  [(NESMVPNSessionState *)&v6 handleTimeout];
  if (self)
  {
    [objc_getProperty(self v3];
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    [0 setLastStopReason:13];
    Property = 0;
  }

  [Property setState:5];
}

- (void)enterWithSession:(id)session
{
  if (self)
  {
    self->_setConfigurationInProgress = 0;
  }

  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateReasserting;
  [(NESMVPNSessionState *)&v3 enterWithSession:session];
}

- (NESMVPNSessionStateReasserting)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateReasserting;
  return [(NESMVPNSessionState *)&v3 initWithType:6 andTimeout:0];
}

@end