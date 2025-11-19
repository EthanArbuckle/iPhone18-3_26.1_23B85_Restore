@interface NESMURLFilterSessionStateRunning
- (BOOL)handleSleep;
- (NESMURLFilterSessionStateRunning)init;
- (void)enterWithSession:(id)a3;
- (void)handleUpdateConfiguration;
- (void)handleWakeup;
@end

@implementation NESMURLFilterSessionStateRunning

- (void)handleUpdateConfiguration
{
  v10.receiver = self;
  v10.super_class = NESMURLFilterSessionStateRunning;
  [(NESMURLFilterSessionState *)&v10 handleUpdateConfiguration];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 408, 1);
    }

    v6 = Property;
    v8 = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v8 configuration];
  sub_100019EA0(v6, v9);
}

- (void)handleWakeup
{
  v7.receiver = self;
  v7.super_class = NESMURLFilterSessionStateRunning;
  [(NESMURLFilterSessionState *)&v7 handleWakeup];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 408, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  sub_10001A254(v6);
}

- (BOOL)handleSleep
{
  v8.receiver = self;
  v8.super_class = NESMURLFilterSessionStateRunning;
  [(NESMURLFilterSessionState *)&v8 handleSleep];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 408, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  sub_100019F08(v6);

  return 1;
}

- (void)enterWithSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = NESMURLFilterSessionStateRunning;
  [(NESMURLFilterSessionState *)&v9 enterWithSession:a3];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property server];
  if (self)
  {
    v8 = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    v8 = 0;
  }

  [v7 requestInstallForSession:v8 withParentSession:0 exclusive:1];
}

- (NESMURLFilterSessionStateRunning)init
{
  v3.receiver = self;
  v3.super_class = NESMURLFilterSessionStateRunning;
  return [(NESMURLFilterSessionState *)&v3 initWithType:3 andTimeout:0];
}

@end