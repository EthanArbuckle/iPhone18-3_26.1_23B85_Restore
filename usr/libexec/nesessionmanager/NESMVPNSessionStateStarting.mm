@interface NESMVPNSessionStateStarting
- (BOOL)handleSetConfiguration;
- (NESMVPNSessionStateStarting)init;
- (void)enterWithSession:(id)a3;
- (void)handlePluginStatusDidChangeToConnected:(id)a3;
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

- (void)handlePluginStatusDidChangeToConnected:(id)a3
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v6 handlePluginStatusDidChangeToConnected:a3];
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

- (void)enterWithSession:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v16.receiver = self;
  v16.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v16 enterWithSession:v4];

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
    v15 = [0 prepareConfigurationForStart];
    v7 = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v9 = [v7 primaryTunnelPlugin];
  if (self)
  {
    v10 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 configuration];
  v12 = sub_1000187A4(v9, v11);

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