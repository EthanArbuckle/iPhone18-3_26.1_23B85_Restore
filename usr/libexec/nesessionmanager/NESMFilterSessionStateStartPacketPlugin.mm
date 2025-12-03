@interface NESMFilterSessionStateStartPacketPlugin
- (void)enterWithSession:(id)session;
- (void)handlePluginStatusDidChangeToRunning:(id)running;
@end

@implementation NESMFilterSessionStateStartPacketPlugin

- (void)handlePluginStatusDidChangeToRunning:(id)running
{
  v11.receiver = self;
  v11.super_class = NESMFilterSessionStateStartPacketPlugin;
  runningCopy = running;
  [(NESMFilterSessionState *)&v11 handlePluginStatusDidChangeToRunning:runningCopy];
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

  if (v8 == runningCopy)
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 16, 1);
    }

    else
    {
      v10 = 0;
    }

    sub_100082FD8(v10, 3);
  }
}

- (void)enterWithSession:(id)session
{
  v11.receiver = self;
  v11.super_class = NESMFilterSessionStateStartPacketPlugin;
  [(NESMFilterSessionState *)&v11 enterWithSession:session];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 408, 1);
    }

    v7 = Property;
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  configuration = [v9 configuration];
  sub_1000187A4(v7, configuration);
}

@end