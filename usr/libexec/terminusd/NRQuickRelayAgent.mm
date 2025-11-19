@interface NRQuickRelayAgent
+ (id)agentDomain;
+ (id)agentType;
- (BOOL)assertAgentWithOptions:(id)a3;
- (id)copyAgentData;
- (id)description;
- (void)dealloc;
- (void)unassertAgentWithOptions:(id)a3;
@end

@implementation NRQuickRelayAgent

- (void)unassertAgentWithOptions:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E818;
  v7[3] = &unk_1001FD060;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)assertAgentWithOptions:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003ED0C;
  v8[3] = &unk_1001FD060;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(queue, v8);

  return 1;
}

- (id)copyAgentData
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

    v7 = _NRCopyLogObjectForNRUUID();
    state = self->_state.state;
    _NRLogWithArgs();
  }

  v8 = [NSData alloc];

  return [v8 initWithBytes:&self->_state length:1];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(NRQuickRelayAgent *)self agentUUID];
  v5 = [v4 UUIDString];
  [v3 appendFormat:@"agent-uuid: %@", v5];

  if (self)
  {
    [v3 appendFormat:@", %u", self->_assertCount];
    if (self->_isRegistered)
    {
      v6 = ", R";
    }

    else
    {
      v6 = "";
    }
  }

  else
  {
    [v3 appendFormat:@", %u", 0];
    v6 = "";
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
    v16 = 74;
    v17 = self;
    v14 = "";
    v15 = "[NRQuickRelayAgent dealloc]";
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
        v14 = self;
        _NRLogWithArgs();
      }
    }
  }

  v18.receiver = self;
  v18.super_class = NRQuickRelayAgent;
  [(NRQuickRelayAgent *)&v18 dealloc:v14];
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "QuickRelayAgent"];

  return v2;
}

@end