@interface NESMVPNSessionStatePreparingNetwork
- (NESMVPNSessionStatePreparingNetwork)init;
- (void)enterWithSession:(id)session;
- (void)handleNetworkPrepareResult:(id)result;
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

- (void)handleNetworkPrepareResult:(id)result
{
  v30.receiver = self;
  v30.super_class = NESMVPNSessionStatePreparingNetwork;
  [(NESMVPNSessionState *)&v30 handleNetworkPrepareResult:?];
  if (!result)
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

  initializePlugins = [0 initializePlugins];
  Property = 0;
  if ((initializePlugins & 1) == 0)
  {
    v29 = 6;
    goto LABEL_31;
  }

LABEL_4:
  authenticationPlugin = [Property authenticationPlugin];
  if (!authenticationPlugin)
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

  v12 = authenticationPlugin;
  if (self)
  {
    v13 = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    v13 = 0;
  }

  connectParameters = [v13 connectParameters];
  if (!connectParameters)
  {
    goto LABEL_24;
  }

  v16 = connectParameters;
  if (self)
  {
    v17 = objc_getProperty(self, v15, 16, 1);
  }

  else
  {
    v17 = 0;
  }

  connectParameters2 = [v17 connectParameters];
  v19 = [connectParameters2 objectForKeyedSubscript:@"Password"];
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

  extensibleSSOProvider = [v22 extensibleSSOProvider];

  if (!extensibleSSOProvider)
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

- (void)enterWithSession:(id)session
{
  sessionCopy = session;
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = NESMVPNSessionStatePreparingNetwork;
  [(NESMVPNSessionState *)&v5 enterWithSession:sessionCopy];
  [sessionCopy prepareNetwork];
}

- (NESMVPNSessionStatePreparingNetwork)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStatePreparingNetwork;
  return [(NESMVPNSessionState *)&v3 initWithType:2 andTimeout:0];
}

@end