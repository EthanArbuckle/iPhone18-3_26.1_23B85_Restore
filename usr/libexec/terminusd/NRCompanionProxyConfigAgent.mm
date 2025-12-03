@interface NRCompanionProxyConfigAgent
+ (id)agentDomain;
+ (id)agentType;
- (id)copyAgentData;
- (void)dealloc;
@end

@implementation NRCompanionProxyConfigAgent

- (id)copyAgentData
{
  if (self)
  {
    self = *(self + 7);
    if (self)
    {
      nw_parameters_create_data();
      return 0;
    }
  }

  return self;
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
    agentDescription = [(NRCompanionProxyConfigAgent *)self agentDescription];

    _NRLogWithArgs();
  }

  sub_1000707D0(self);
  v10.receiver = self;
  v10.super_class = NRCompanionProxyConfigAgent;
  [(NRCompanionProxyConfigAgent *)&v10 dealloc];
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "CompanionProxyConfig"];

  return v2;
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

@end