@interface WiFiUserInteractionMonitorNetworkAgent
- (BOOL)assertAgentWithOptions:(id)options;
- (WiFiUserInteractionMonitorNetworkAgent)initWithUUID:(id)d andDescription:(id)description;
- (void)registerStateChangeCallback:(id)callback withCallbackContext:(void *)context;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation WiFiUserInteractionMonitorNetworkAgent

- (WiFiUserInteractionMonitorNetworkAgent)initWithUUID:(id)d andDescription:(id)description
{
  dCopy = d;
  descriptionCopy = description;
  v16.receiver = self;
  v16.super_class = WiFiUserInteractionMonitorNetworkAgent;
  v8 = [(WiFiUserInteractionMonitorNetworkAgent *)&v16 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [[NSUUID alloc] initWithUUIDString:dCopy];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setAgentUUID:v9];

  agentUUID = [(WiFiUserInteractionMonitorNetworkAgent *)v8 agentUUID];

  if (!agentUUID)
  {
    goto LABEL_5;
  }

  v11 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setRegistration:v11];

  registration = [(WiFiUserInteractionMonitorNetworkAgent *)v8 registration];

  if (!registration)
  {
    goto LABEL_5;
  }

  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setAgentDescription:descriptionCopy];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setActive:0];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setKernelActivated:1];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setUserActivated:1];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setVoluntary:1];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setSpecificUseOnly:1];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setNetworkProvider:0];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setAssertCount:0];
  [(WiFiUserInteractionMonitorNetworkAgent *)v8 setAvcMinJB:0];
  registration2 = [(WiFiUserInteractionMonitorNetworkAgent *)v8 registration];
  v14 = [registration2 registerNetworkAgent:v8];

  if ((v14 & 1) == 0)
  {
LABEL_5:

    v8 = 0;
  }

  return v8;
}

- (BOOL)assertAgentWithOptions:(id)options
{
  optionsCopy = options;
  avcMinJB = [(WiFiUserInteractionMonitorNetworkAgent *)self avcMinJB];
  [(WiFiUserInteractionMonitorNetworkAgent *)self setAssertCount:[(WiFiUserInteractionMonitorNetworkAgent *)self assertCount]+ 1];
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: received AVC assert, assertCount=%lu", "-[WiFiUserInteractionMonitorNetworkAgent assertAgentWithOptions:]", -[WiFiUserInteractionMonitorNetworkAgent assertCount](self, "assertCount")}];
  }

  objc_autoreleasePoolPop(v6);
  if (optionsCopy)
  {
    v7 = [optionsCopy objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
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

  if ([(WiFiUserInteractionMonitorNetworkAgent *)self assertCount]&& ![(WiFiUserInteractionMonitorNetworkAgent *)self isActive]|| avcMinJB != [(WiFiUserInteractionMonitorNetworkAgent *)self avcMinJB])
  {
    [(WiFiUserInteractionMonitorNetworkAgent *)self setActive:1];
    registration = [(WiFiUserInteractionMonitorNetworkAgent *)self registration];
    [registration updateNetworkAgent:self];

    client = [(WiFiUserInteractionMonitorNetworkAgent *)self client];

    if (client)
    {
      client2 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
      callback = [client2 callback];
      client3 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
      (callback)[2](callback, [client3 context], 1);
    }
  }

  return 1;
}

- (void)unassertAgentWithOptions:(id)options
{
  optionsCopy = options;
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
      registration = [(WiFiUserInteractionMonitorNetworkAgent *)self registration];
      [registration updateNetworkAgent:self];

      client = [(WiFiUserInteractionMonitorNetworkAgent *)self client];

      if (client)
      {
        client2 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
        callback = [client2 callback];
        client3 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
        (callback)[2](callback, [client3 context], 1);
      }
    }
  }
}

- (void)registerStateChangeCallback:(id)callback withCallbackContext:(void *)context
{
  callbackCopy = callback;
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (off_100298C40)
  {
    v8 = objc_retainBlock(callbackCopy);
    [v7 WFLog:3 message:{"%s: callback %@, context %@", "-[WiFiUserInteractionMonitorNetworkAgent registerStateChangeCallback:withCallbackContext:]", v8, context}];
  }

  objc_autoreleasePoolPop(v6);
  v9 = objc_alloc_init(WiFiUserInteractionMonitorClient);
  [(WiFiUserInteractionMonitorNetworkAgent *)self setClient:v9];

  client = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
  [client setCallback:callbackCopy];

  client2 = [(WiFiUserInteractionMonitorNetworkAgent *)self client];
  [client2 setContext:context];
}

@end