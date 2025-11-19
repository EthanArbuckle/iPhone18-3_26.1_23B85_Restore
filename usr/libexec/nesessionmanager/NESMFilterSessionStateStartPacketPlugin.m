@interface NESMFilterSessionStateStartPacketPlugin
- (void)enterWithSession:(id)a3;
- (void)handlePluginStatusDidChangeToRunning:(id)a3;
@end

@implementation NESMFilterSessionStateStartPacketPlugin

- (void)handlePluginStatusDidChangeToRunning:(id)a3
{
  v11.receiver = self;
  v11.super_class = NESMFilterSessionStateStartPacketPlugin;
  v4 = a3;
  [(NESMFilterSessionState *)&v11 handlePluginStatusDidChangeToRunning:v4];
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

  if (v8 == v4)
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

- (void)enterWithSession:(id)a3
{
  v11.receiver = self;
  v11.super_class = NESMFilterSessionStateStartPacketPlugin;
  [(NESMFilterSessionState *)&v11 enterWithSession:a3];
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

  v10 = [v9 configuration];
  sub_1000187A4(v7, v10);
}

@end