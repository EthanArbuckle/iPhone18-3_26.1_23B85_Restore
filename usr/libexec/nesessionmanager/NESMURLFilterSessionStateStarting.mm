@interface NESMURLFilterSessionStateStarting
- (NESMURLFilterSessionStateStarting)init;
- (void)enterWithSession:(id)session;
- (void)handlePluginStatusDidChangeToRunning:(id)running;
@end

@implementation NESMURLFilterSessionStateStarting

- (void)handlePluginStatusDidChangeToRunning:(id)running
{
  v11.receiver = self;
  v11.super_class = NESMURLFilterSessionStateStarting;
  runningCopy = running;
  [(NESMURLFilterSessionState *)&v11 handlePluginStatusDidChangeToRunning:runningCopy];
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

    sub_10006DE84(v10, 3);
  }
}

- (void)enterWithSession:(id)session
{
  v15.receiver = self;
  v15.super_class = NESMURLFilterSessionStateStarting;
  [(NESMURLFilterSessionState *)&v15 enterWithSession:session];
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

  if (v7)
  {
    if (self)
    {
      v9 = objc_getProperty(self, v8, 16, 1);
      if (v9)
      {
        v9 = objc_getProperty(v9, v10, 408, 1);
      }

      v11 = v9;
      v13 = objc_getProperty(self, v12, 16, 1);
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    configuration = [v13 configuration];
    sub_1000187A4(v11, configuration);
  }
}

- (NESMURLFilterSessionStateStarting)init
{
  v3.receiver = self;
  v3.super_class = NESMURLFilterSessionStateStarting;
  return [(NESMURLFilterSessionState *)&v3 initWithType:2 andTimeout:120];
}

@end