@interface NESMFilterSessionStateStarting
- (NESMFilterSessionStateStarting)init;
- (void)enterWithSession:(id)session;
- (void)handlePluginStatusDidChangeToRunning:(id)running;
@end

@implementation NESMFilterSessionStateStarting

- (void)handlePluginStatusDidChangeToRunning:(id)running
{
  runningCopy = running;
  v24.receiver = self;
  v24.super_class = NESMFilterSessionStateStarting;
  [(NESMFilterSessionState *)&v24 handlePluginStatusDidChangeToRunning:runningCopy];
  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 400, 1);
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
      v14 = objc_getProperty(self, v9, 16, 1);
      if (v14)
      {
        v14 = objc_getProperty(v14, v15, 408, 1);
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = v14;

    if (!v16)
    {
      goto LABEL_19;
    }

    if (self)
    {
      v17 = objc_getProperty(self, v13, 16, 1);
      if (v17)
      {
        v17 = objc_getProperty(v17, v18, 408, 1);
      }

      v19 = v17;
      v21 = objc_getProperty(self, v20, 16, 1);
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    configuration = [v21 configuration];
    sub_1000187A4(v19, configuration);
  }

  else
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 16, 1);
      if (v10)
      {
        v10 = objc_getProperty(v10, v11, 408, 1);
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    if (v12 == runningCopy)
    {
LABEL_19:
      if (self)
      {
        v23 = objc_getProperty(self, v13, 16, 1);
      }

      else
      {
        v23 = 0;
      }

      sub_100082FD8(v23, 3);
    }
  }
}

- (void)enterWithSession:(id)session
{
  v20.receiver = self;
  v20.super_class = NESMFilterSessionStateStarting;
  [(NESMFilterSessionState *)&v20 enterWithSession:session];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 400, 1);
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
        v11 = &OBJC_IVAR___NESMFilterSession__plugin;
LABEL_15:
        v9 = objc_getProperty(v9, v10, *v11, 1);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (self)
  {
    v12 = objc_getProperty(self, v8, 16, 1);
    if (v12)
    {
      v12 = objc_getProperty(v12, v13, 408, 1);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;

  if (v14)
  {
    if (self)
    {
      v9 = objc_getProperty(self, v15, 16, 1);
      if (v9)
      {
        v11 = &OBJC_IVAR___NESMFilterSession__packetPlugin;
        goto LABEL_15;
      }

LABEL_16:
      v16 = v9;
      v18 = objc_getProperty(self, v17, 16, 1);
LABEL_17:
      configuration = [v18 configuration];
      sub_1000187A4(v16, configuration);

      return;
    }

LABEL_20:
    v18 = 0;
    v16 = 0;
    goto LABEL_17;
  }
}

- (NESMFilterSessionStateStarting)init
{
  v3.receiver = self;
  v3.super_class = NESMFilterSessionStateStarting;
  return [(NESMFilterSessionState *)&v3 initWithType:2 andTimeout:120];
}

@end