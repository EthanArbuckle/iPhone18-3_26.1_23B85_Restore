@interface NESMVPNSessionStatePreparingNetwork
- (NESMVPNSessionStatePreparingNetwork)init;
- (void)enterWithSession:(id)a3;
- (void)handleNetworkPrepareResult:(id)a3;
- (void)handleTimeout;
@end

@implementation NESMVPNSessionStatePreparingNetwork

- (void)handleTimeout
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStatePreparingNetwork;
  [(NESMVPNSessionState *)&v6 handleTimeout];
  if (self)
  {
    [objc_getProperty(self v3];
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    [0 setLastStopReason:41];
    Property = 0;
  }

  [Property setState:5];
}

- (void)handleNetworkPrepareResult:(id)a3
{
  v30.receiver = self;
  v30.super_class = NESMVPNSessionStatePreparingNetwork;
  [(NESMVPNSessionState *)&v30 handleNetworkPrepareResult:?];
  if (!a3)
  {
    if (self)
    {
      Property = objc_getProperty(self, v5, 16, 1);
      v26 = 4;
LABEL_20:
      [Property setLastStopReason:v26];
      v24 = objc_getProperty(self, v27, 16, 1);
LABEL_21:
      v25 = 5;
      goto LABEL_22;
    }

    v29 = 4;
LABEL_31:
    [0 setLastStopReason:v29];
    v24 = 0;
    goto LABEL_21;
  }

  kdebug_trace();
  if (self)
  {
    v7 = [objc_getProperty(self v6];
    Property = objc_getProperty(self, v8, 16, 1);
    if (v7)
    {
      goto LABEL_4;
    }

    v26 = 6;
    goto LABEL_20;
  }

  v28 = [0 initializePlugins];
  Property = 0;
  if ((v28 & 1) == 0)
  {
    v29 = 6;
    goto LABEL_31;
  }

LABEL_4:
  v10 = [Property authenticationPlugin];
  if (!v10)
  {
LABEL_14:
    if (self)
    {
      v24 = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = 3;
    goto LABEL_22;
  }

  v12 = v10;
  if (self)
  {
    v13 = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 connectParameters];
  if (!v14)
  {
    goto LABEL_24;
  }

  v16 = v14;
  if (self)
  {
    v17 = objc_getProperty(self, v15, 16, 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 connectParameters];
  v19 = [v18 objectForKeyedSubscript:@"Password"];
  if (!v19)
  {

LABEL_24:
    goto LABEL_25;
  }

  v21 = v19;
  if (self)
  {
    v22 = objc_getProperty(self, v20, 16, 1);
  }

  else
  {
    v22 = 0;
  }

  v23 = [v22 extensibleSSOProvider];

  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_25:
  if (self)
  {
    v24 = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    v24 = 0;
  }

  v25 = 7;
LABEL_22:
  [v24 setState:v25];
}

- (void)enterWithSession:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = NESMVPNSessionStatePreparingNetwork;
  [(NESMVPNSessionState *)&v5 enterWithSession:v4];
  [v4 prepareNetwork];
}

- (NESMVPNSessionStatePreparingNetwork)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStatePreparingNetwork;
  return [(NESMVPNSessionState *)&v3 initWithType:2 andTimeout:0];
}

@end