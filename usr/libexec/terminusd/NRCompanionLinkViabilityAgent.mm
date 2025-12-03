@interface NRCompanionLinkViabilityAgent
+ (id)agentDomain;
+ (id)agentType;
- (BOOL)assertAgentWithOptions:(id)options;
- (id)description;
- (void)dealloc;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation NRCompanionLinkViabilityAgent

- (void)unassertAgentWithOptions:(id)options
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A438;
  block[3] = &unk_1001FD3C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)assertAgentWithOptions:(id)options
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A570;
  block[3] = &unk_1001FD3C8;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  agentUUID = [(NRCompanionLinkViabilityAgent *)self agentUUID];
  uUIDString = [agentUUID UUIDString];
  [v3 appendFormat:@"agent-uuid: %@", uUIDString];

  v6 = "";
  if (self && self->_isRegistered)
  {
    v6 = ", R";
  }

  [v3 appendFormat:@"%s", v6];
  v7 = [[NSString alloc] initWithFormat:@"[%@]", v3];

  return v7;
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
    v16 = 65;
    selfCopy = self;
    selfCopy2 = "";
    v15 = "[NRCompanionLinkViabilityAgent dealloc]";
    _NRLogWithArgs();
  }

  if (self)
  {
    if (self->_isRegistered)
    {
      v9 = self->_nrUUID;
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = self->_nrUUID;
        v13 = _NRCopyLogObjectForNRUUID();
        selfCopy2 = self;
        _NRLogWithArgs();
      }
    }
  }

  v18.receiver = self;
  v18.super_class = NRCompanionLinkViabilityAgent;
  [(NRCompanionLinkViabilityAgent *)&v18 dealloc:selfCopy2];
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "CmpLnkViability"];

  return v2;
}

@end