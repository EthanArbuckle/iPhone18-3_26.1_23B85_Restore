@interface NRCompanionProxyAgent
+ (id)agentDomain;
+ (id)agentType;
- (id)copyAgentData;
- (void)dealloc;
@end

@implementation NRCompanionProxyAgent

- (id)copyAgentData
{
  if (self)
  {
    generation = self->_generation;
  }

  else
  {
    generation = 0;
  }

  v4 = generation;
  return [[NSData alloc] initWithBytes:&v4 length:8];
}

- (void)dealloc
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v6 = self->_nrUUID;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = _NRCopyLogObjectForNRUUID();
    agentDescription = [(NRCompanionProxyAgent *)self agentDescription];

    _NRLogWithArgs();
  }

  if (self)
  {
    if (self->_isRegistered)
    {
      v10 = self->_nrUUID;
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = _NRLogIsLevelEnabled();

      if (v12)
      {
        v13 = self->_nrUUID;
        v14 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }
  }

  sub_100070270(self);
  v15.receiver = self;
  v15.super_class = NRCompanionProxyAgent;
  [(NRCompanionProxyAgent *)&v15 dealloc];
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "CompanionProxy"];

  return v2;
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

@end