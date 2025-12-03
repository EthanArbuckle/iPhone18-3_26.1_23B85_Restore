@interface NESMFilterSessionStateRunning
- (BOOL)handleSleep;
- (NESMFilterSessionStateRunning)init;
- (void)enterWithSession:(id)session;
- (void)handleUpdateConfiguration;
- (void)handleWakeup;
@end

@implementation NESMFilterSessionStateRunning

- (void)handleUpdateConfiguration
{
  v18.receiver = self;
  v18.super_class = NESMFilterSessionStateRunning;
  [(NESMFilterSessionState *)&v18 handleUpdateConfiguration];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 400, 1);
    }

    v6 = Property;
    v8 = [objc_getProperty(self v7];
    sub_100019EA0(v6, v8);

    v10 = objc_getProperty(self, v9, 16, 1);
    if (v10)
    {
      v10 = objc_getProperty(v10, v11, 408, 1);
    }

    v12 = v10;
    v14 = objc_getProperty(self, v13, 16, 1);
  }

  else
  {
    configuration = [0 configuration];
    sub_100019EA0(0, configuration);

    v12 = 0;
    v14 = 0;
  }

  configuration2 = [v14 configuration];
  sub_100019EA0(v12, configuration2);

  sub_100068DD4(self, v16);
}

- (void)handleWakeup
{
  v11.receiver = self;
  v11.super_class = NESMFilterSessionStateRunning;
  [(NESMFilterSessionState *)&v11 handleWakeup];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 400, 1);
    }

    v6 = Property;
    sub_10001A254(v6);

    v8 = objc_getProperty(self, v7, 16, 1);
    if (v8)
    {
      v8 = objc_getProperty(v8, v9, 408, 1);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  sub_10001A254(v10);
}

- (BOOL)handleSleep
{
  v12.receiver = self;
  v12.super_class = NESMFilterSessionStateRunning;
  [(NESMFilterSessionState *)&v12 handleSleep];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 400, 1);
    }

    v6 = Property;
    sub_100019F08(v6);

    v8 = objc_getProperty(self, v7, 16, 1);
    if (v8)
    {
      v8 = objc_getProperty(v8, v9, 408, 1);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  sub_100019F08(v10);

  return 1;
}

- (void)enterWithSession:(id)session
{
  v10.receiver = self;
  v10.super_class = NESMFilterSessionStateRunning;
  [(NESMFilterSessionState *)&v10 enterWithSession:session];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    Property = 0;
  }

  server = [Property server];
  if (self)
  {
    v8 = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    v8 = 0;
  }

  [server requestInstallForSession:v8 withParentSession:0 exclusive:1];

  sub_100068DD4(self, v9);
}

- (NESMFilterSessionStateRunning)init
{
  v3.receiver = self;
  v3.super_class = NESMFilterSessionStateRunning;
  return [(NESMFilterSessionState *)&v3 initWithType:3 andTimeout:0];
}

@end