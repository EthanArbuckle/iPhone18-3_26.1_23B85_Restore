@interface NESMVPNSessionStateStarting
- (BOOL)handleSetConfiguration;
- (NESMVPNSessionStateStarting)init;
- (void)enterWithSession:(id)session;
- (void)handlePluginStatusDidChangeToConnected:(id)connected;
- (void)handleTimeout;
@end

@implementation NESMVPNSessionStateStarting

- (void)handleTimeout
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v6 handleTimeout];
  if (self)
  {
    [objc_getProperty(self v3];
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    [0 setLastStopReason:12];
    Property = 0;
  }

  [Property setState:5];
}

- (BOOL)handleSetConfiguration
{
  kdebug_trace();
  if (self)
  {
    self->_tunnelConfigurationInstallState = 2;
  }

  v4.receiver = self;
  v4.super_class = NESMVPNSessionStateStarting;
  return [(NESMVPNSessionState *)&v4 handleSetConfiguration];
}

- (void)handlePluginStatusDidChangeToConnected:(id)connected
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v6 handlePluginStatusDidChangeToConnected:connected];
  if (self)
  {
    tunnelConfigurationInstallState = self->_tunnelConfigurationInstallState;
    if (tunnelConfigurationInstallState == 3)
    {
      [objc_getProperty(self v4];
    }

    else if (tunnelConfigurationInstallState == 1)
    {
      [objc_getProperty(self v4];
    }
  }
}

- (void)enterWithSession:(id)session
{
  sessionCopy = session;
  kdebug_trace();
  v16.receiver = self;
  v16.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v16 enterWithSession:sessionCopy];

  if (self)
  {
    self->_tunnelConfigurationInstallState = 1;
    if (![objc_getProperty(self v5])
    {
LABEL_8:
      [objc_getProperty(self v6];
      Property = objc_getProperty(self, v13, 16, 1);
LABEL_9:
      [Property setState:5];
      return;
    }

    v7 = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    prepareConfigurationForStart = [0 prepareConfigurationForStart];
    v7 = 0;
    if ((prepareConfigurationForStart & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  primaryTunnelPlugin = [v7 primaryTunnelPlugin];
  if (self)
  {
    v10 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v10 = 0;
  }

  configuration = [v10 configuration];
  v12 = sub_1000187A4(primaryTunnelPlugin, configuration);

  if (!v12)
  {
    if (self)
    {
      goto LABEL_8;
    }

LABEL_12:
    [0 setLastStopReason:7];
    Property = 0;
    goto LABEL_9;
  }
}

- (NESMVPNSessionStateStarting)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateStarting;
  return [(NESMVPNSessionState *)&v3 initWithType:3 andTimeout:0];
}

@end