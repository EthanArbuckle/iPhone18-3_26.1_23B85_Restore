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
  mockDisplayName = [(NPHMockTUProxyCall *)self mockDisplayName];
  v4 = mockDisplayName;
  if (mockDisplayName)
  {
    displayName = mockDisplayName;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NPHMockTUProxyCall;
    displayName = [(NPHMockTUProxyCall *)&v8 displayName];
  }

  v6 = displayName;

  return v6;
}

- (id)localizedLabel
{
  mockLocalizedLabel = [(NPHMockTUProxyCall *)self mockLocalizedLabel];
  v4 = mockLocalizedLabel;
  if (mockLocalizedLabel)
  {
    localizedLabel = mockLocalizedLabel;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NPHMockTUProxyCall;
    localizedLabel = [(NPHMockTUProxyCall *)&v8 localizedLabel];
  }

  v6 = localizedLabel;

  return v6;
}

- (id)localSenderIdentity
{
  mockLocalSenderIdentity = [(NPHMockTUProxyCall *)self mockLocalSenderIdentity];
  v4 = mockLocalSenderIdentity;
  if (mockLocalSenderIdentity)
  {
    localSenderIdentity = mockLocalSenderIdentity;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NPHMockTUProxyCall;
    localSenderIdentity = [(NPHMockTUProxyCall *)&v8 localSenderIdentity];
  }

  v6 = localSenderIdentity;

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
    providerManager = [v3 providerManager];
    telephonyProvider = [providerManager telephonyProvider];
  }

  else
  {
    mockProvider = [(NPHMockTUProxyCall *)self mockProvider];
    v3 = mockProvider;
    if (mockProvider)
    {
      provider = mockProvider;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = NPHMockTUProxyCall;
      provider = [(NPHMockTUProxyCall *)&v9 provider];
    }

    telephonyProvider = provider;
  }

  return telephonyProvider;
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
  mockDialRequestForRedial = [(NPHMockTUProxyCall *)self mockDialRequestForRedial];
  v4 = mockDialRequestForRedial;
  if (mockDialRequestForRedial)
  {
    dialRequestForRedial = mockDialRequestForRedial;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NPHMockTUProxyCall;
    dialRequestForRedial = [(NPHMockTUProxyCall *)&v8 dialRequestForRedial];
  }

  v6 = dialRequestForRedial;

  return v6;
}

- (id)handle
{
  v2 = [[TUHandle alloc] initWithType:3 value:@"tomabuct_dev@icloud.com"];

  return v2;
}

- (id)remoteParticipantHandles
{
  handle = [(NPHMockTUProxyCall *)self handle];
  v3 = [NSSet setWithObject:handle];

  return v3;
}

@end