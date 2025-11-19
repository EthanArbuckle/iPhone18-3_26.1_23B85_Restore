@interface WiFiUserInteractionMonitorNetworkAgent
- (BOOL)assertAgentWithOptions:(id)a3;
- (WiFiUserInteractionMonitorNetworkAgent)initWithUUID:(id)a3 andDescription:(id)a4;
- (void)registerStateChangeCallback:(id)a3 withCallbackContext:(void *)a4;
- (void)unassertAgentWithOptions:(id)a3;
@end

@implementation WiFiUserInteractionMonitorNetworkAgent

- (WiFiUserInteractionMonitorNetworkAgent)initWithUUID:(id)a3 andDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = WiFiUserInteractionMonitorNetworkAgent;
  v8 = [(WiFiUserInteractionMonitorNetworkAgent *)&v16 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [[NSUUID alloc] initWithUUIDString:v6];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setAgentUUID:v9];

  v10 = [(WiFiUserInteractionMonitorNetworkAgent *)v8 agentUUID];

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setRegistration:v11];

  v12 = [(WiFiUserInteractionMonitorNetworkAgent *)v8 registration];

  if (!v12)
  {
    goto LABEL_5;
  }

  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setAgentDescription:v7];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setActive:0];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setKernelActivated:1];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setUserActivated:1];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setVoluntary:1];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setSpecificUseOnly:1];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setNetworkProvider:0];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setAssertCount:0];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setAvcMinJB:0];
  v13 = [(WiFiUserInteractionMonitorNetworkAgent *)v8 registration];
  v14 = [v13 registerNetworkAgent:v8];

  if ((v14 & 1) == 0)
  {
LABEL_5:

    v8 = 0;
  }

  return v8;
}

- (BOOL)assertAgentWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(WiFiUserInteractionMonitorNetworkAgent *)self avcMinJB];
  [(WiFiUserInteractionMonitorNetworkAgent *)self setAssertCount:[(WiFiUserInteractionMonitorNetworkAgent *)self assertCount]+ 1];
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: received AVC assert, assertCount=%lu", "-[WiFiUserInteractionMonitorNetworkAgent assertAgentWithOptions:]", -[WiFiUserInteractionMonitorNetworkAgent assertCount](self, "assertCount")}];
  }

  objc_autoreleasePoolPop(v6);
  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
    if (v7)
    {
      v8 = v7;
      v9 = [NWPath pathForClientID:v7];
      if (v9)
      {
        v10 = v9;
        [v9 endpoint];
      }

      else
      {
        sub_1001AFDF4(v8);
      }
    }

    else
    {
      sub_1001AFE6C();
    }
  }

  else
  {
    sub_1001AFED8();
  }

  if ([(WiFiUserInteractionMonitorNetworkAgent *)self assertCount]&& ![(WiFiUserInteractionMonitorNetworkAgent *)self isActive]|| v5 != [(WiFiUserInteractionMonitorNetworkAgent *)self avcMinJB])
  {
    [(WiFiUserInteractionMonitorNetworkAgent *)self setActive:1];
    v11 = [(WiFiUserInteractionMonitorNetworkAgent *)self registration];
    [v11 updateNetworkAgent:self];

    v12 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];

    if (v12)
    {
      v13 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
      v14 = [v13 callback];
      v15 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
      (v14)[2](v14, [v15 context], 1);
    }
  }

  return 1;
}

- (void)unassertAgentWithOptions:(id)a3
{
  v10 = a3;
  if ([(WiFiUserInteractionMonitorNetworkAgent *)self assertCount])
  {
    [(WiFiUserInteractionMonitorNetworkAgent *)self setAssertCount:[(WiFiUserInteractionMonitorNetworkAgent *)self assertCount]- 1];
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: received AVC unassert, assertCount=%lu", "-[WiFiUserInteractionMonitorNetworkAgent unassertAgentWithOptions:]", -[WiFiUserInteractionMonitorNetworkAgent assertCount](self, "assertCount")}];
  }

  objc_autoreleasePoolPop(v4);
  if (![(WiFiUserInteractionMonitorNetworkAgent *)self assertCount])
  {
    if ([(WiFiUserInteractionMonitorNetworkAgent *)self isActive])
    {
      [(WiFiUserInteractionMonitorNetworkAgent *)self setActive:0];
      [(WiFiUserInteractionMonitorNetworkAgent *)self setAvcMinJB:0];
      v5 = [(WiFiUserInteractionMonitorNetworkAgent *)self registration];
      [v5 updateNetworkAgent:self];

      v6 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];

      if (v6)
      {
        v7 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
        v8 = [v7 callback];
        v9 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
        (v8)[2](v8, [v9 context], 1);
      }
    }
  }
}

- (void)registerStateChangeCallback:(id)a3 withCallbackContext:(void *)a4
{
  v12 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (off_100298C40)
  {
    v8 = objc_retainBlock(v12);
    [v7 WFLog:3 message:{"%s: callback %@, context %@", "-[WiFiUserInteractionMonitorNetworkAgent registerStateChangeCallback:withCallbackContext:]", v8, a4}];
  }

  objc_autoreleasePoolPop(v6);
  v9 = objc_alloc_init(WiFiUserInteractionMonitorClient);
  [(WiFiUserInteractionMonitorNetworkAgent *)self setClient:v9];

  v10 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
  [v10 setCallback:v12];

  v11 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
  [v11 setContext:a4];
}

@end