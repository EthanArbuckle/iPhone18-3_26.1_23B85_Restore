@interface NESMVPNSessionStateAuthenticating
- (NESMVPNSessionStateAuthenticating)init;
- (void)enterWithSession:(id)a3;
- (void)handleTimeout;
@end

@implementation NESMVPNSessionStateAuthenticating

- (void)handleTimeout
{
  v11.receiver = self;
  v11.super_class = NESMVPNSessionStateAuthenticating;
  [(NESMVPNSessionState *)&v11 handleTimeout];
  if (self)
  {
    v4 = [objc_getProperty(self v3];
    sub_1000198A8(v4, v5);

    [objc_getProperty(self v6];
    Property = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    v9 = [0 authenticationPlugin];
    sub_1000198A8(v9, v10);

    [0 setLastStopReason:11];
    Property = 0;
  }

  [Property setState:5];
}

- (void)enterWithSession:(id)a3
{
  v15.receiver = self;
  v15.super_class = NESMVPNSessionStateAuthenticating;
  [(NESMVPNSessionState *)&v15 enterWithSession:a3];
  if (self)
  {
    if (![objc_getProperty(self v4])
    {
LABEL_8:
      [objc_getProperty(self v5];
      Property = objc_getProperty(self, v12, 16, 1);
LABEL_9:
      [Property setState:5];
      return;
    }

    v6 = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    v14 = [0 prepareConfigurationForStart];
    v6 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = [v6 authenticationPlugin];
  if (self)
  {
    v9 = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 configuration];
  v11 = sub_1000187A4(v8, v10);

  if (!v11)
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

- (NESMVPNSessionStateAuthenticating)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateAuthenticating;
  return [(NESMVPNSessionState *)&v3 initWithType:7 andTimeout:120];
}

@end