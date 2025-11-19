@interface NPHMockTUProxyCall
- (BOOL)isEmergency;
- (BOOL)isOutgoing;
- (BOOL)isSOS;
- (id)dialRequestForRedial;
- (id)displayName;
- (id)handle;
- (id)localSenderIdentity;
- (id)localizedLabel;
- (id)provider;
- (id)remoteParticipantHandles;
- (int)disconnectedReason;
- (int)service;
- (int)status;
@end

@implementation NPHMockTUProxyCall

- (id)displayName
{
  v3 = [(NPHMockTUProxyCall *)self mockDisplayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NPHMockTUProxyCall;
    v5 = [(NPHMockTUProxyCall *)&v8 displayName];
  }

  v6 = v5;

  return v6;
}

- (id)localizedLabel
{
  v3 = [(NPHMockTUProxyCall *)self mockLocalizedLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NPHMockTUProxyCall;
    v5 = [(NPHMockTUProxyCall *)&v8 localizedLabel];
  }

  v6 = v5;

  return v6;
}

- (id)localSenderIdentity
{
  v3 = [(NPHMockTUProxyCall *)self mockLocalSenderIdentity];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NPHMockTUProxyCall;
    v5 = [(NPHMockTUProxyCall *)&v8 localSenderIdentity];
  }

  v6 = v5;

  return v6;
}

- (int)status
{
  result = [(NPHMockTUProxyCall *)self mockStatus];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = NPHMockTUProxyCall;
    return [(NPHMockTUProxyCall *)&v4 status];
  }

  return result;
}

- (int)service
{
  result = [(NPHMockTUProxyCall *)self mockService];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = NPHMockTUProxyCall;
    return [(NPHMockTUProxyCall *)&v4 service];
  }

  return result;
}

- (id)provider
{
  if ([(NPHMockTUProxyCall *)self mockService]== 1)
  {
    v3 = +[TUCallCenter sharedInstance];
    v4 = [v3 providerManager];
    v5 = [v4 telephonyProvider];
  }

  else
  {
    v6 = [(NPHMockTUProxyCall *)self mockProvider];
    v3 = v6;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = NPHMockTUProxyCall;
      v7 = [(NPHMockTUProxyCall *)&v9 provider];
    }

    v5 = v7;
  }

  return v5;
}

- (int)disconnectedReason
{
  result = [(NPHMockTUProxyCall *)self mockDisconnectedReason];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = NPHMockTUProxyCall;
    return [(NPHMockTUProxyCall *)&v4 disconnectedReason];
  }

  return result;
}

- (BOOL)isOutgoing
{
  if ([(NPHMockTUProxyCall *)self mockIsOutgoing])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = NPHMockTUProxyCall;
  return [(NPHMockTUProxyCall *)&v4 isOutgoing];
}

- (BOOL)isEmergency
{
  if ([(NPHMockTUProxyCall *)self mockIsEmergency])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = NPHMockTUProxyCall;
  return [(NPHMockTUProxyCall *)&v4 isEmergency];
}

- (BOOL)isSOS
{
  if ([(NPHMockTUProxyCall *)self mockIsSOS])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = NPHMockTUProxyCall;
  return [(NPHMockTUProxyCall *)&v4 isSOS];
}

- (id)dialRequestForRedial
{
  v3 = [(NPHMockTUProxyCall *)self mockDialRequestForRedial];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NPHMockTUProxyCall;
    v5 = [(NPHMockTUProxyCall *)&v8 dialRequestForRedial];
  }

  v6 = v5;

  return v6;
}

- (id)handle
{
  v2 = [[TUHandle alloc] initWithType:3 value:@"tomabuct_dev@icloud.com"];

  return v2;
}

- (id)remoteParticipantHandles
{
  v2 = [(NPHMockTUProxyCall *)self handle];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

@end