@interface NRPreferWiFiAgent
+ (id)agentDomain;
+ (id)agentType;
- (BOOL)assertAgentWithOptions:(id)options;
- (BOOL)startAgentWithOptions:(id)options;
- (NRPreferWiFiAgent)init;
- (id)description;
- (void)dealloc;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation NRPreferWiFiAgent

- (void)unassertAgentWithOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    queue = selfCopy->_queue;
  }

  else
  {
    queue = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007251C;
  v8[3] = &unk_1001FD060;
  v8[4] = selfCopy;
  v9 = optionsCopy;
  v7 = optionsCopy;
  dispatch_async(queue, v8);

  objc_sync_exit(selfCopy);
}

- (BOOL)assertAgentWithOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    queue = selfCopy->_queue;
  }

  else
  {
    queue = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100072C9C;
  v9[3] = &unk_1001FD060;
  v9[4] = selfCopy;
  v10 = optionsCopy;
  v7 = optionsCopy;
  dispatch_async(queue, v9);

  objc_sync_exit(selfCopy);
  return 1;
}

- (BOOL)startAgentWithOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_100228FF0 != -1)
  {
    dispatch_once(&qword_100228FF0, &stru_1001FAE10);
  }

  v6 = qword_100228FE8;
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    v8 = qword_100228FE8;
    _NRLogWithArgs();
  }

  objc_sync_exit(selfCopy);

  return 0;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  agentUUID = [(NRPreferWiFiAgent *)self agentUUID];
  [v3 appendFormat:@"agent UUID: %@\n", agentUUID];

  if (self)
  {
    [v3 appendFormat:@"registration handle: %@\n", self->_registrationObject];
    assertCount = self->_assertCount;
  }

  else
  {
    [v3 appendFormat:@"registration handle: %@\n", 0];
    assertCount = 0;
  }

  [v3 appendFormat:@"assert count: %d\n", assertCount];

  return v3;
}

- (void)dealloc
{
  if (qword_100228FF0 != -1)
  {
    dispatch_once(&qword_100228FF0, &stru_1001FAE10);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    v5 = 55;
    selfCopy = self;
    v3 = "";
    v4 = "[NRPreferWiFiAgent dealloc]";
    _NRLogWithArgs();
  }

  if (self)
  {
    if (self->_isRegistered)
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FF0 != -1)
        {
          dispatch_once(&qword_100228FF0, &stru_1001FAE10);
        }

        _NRLogWithArgs();
      }
    }

    self->_invalidated = 1;
  }

  v7.receiver = self;
  v7.super_class = NRPreferWiFiAgent;
  [(NRPreferWiFiAgent *)&v7 dealloc:v3];
}

- (NRPreferWiFiAgent)init
{
  v22.receiver = self;
  v22.super_class = NRPreferWiFiAgent;
  v2 = [(NRPreferWiFiAgent *)&v22 init];
  if (!v2)
  {
    v17 = sub_100073670();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_100073670();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "[NRPreferWiFiAgent init]";
    sub_100073670();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  [(NRPreferWiFiAgent *)v2 setActive:0];
  [(NRPreferWiFiAgent *)v3 setKernelActivated:1];
  [(NRPreferWiFiAgent *)v3 setUserActivated:1];
  [(NRPreferWiFiAgent *)v3 setVoluntary:1];
  [(NRPreferWiFiAgent *)v3 setNetworkProvider:1];
  [(NRPreferWiFiAgent *)v3 setSpecificUseOnly:1];
  v4 = +[NSUUID UUID];
  [(NRPreferWiFiAgent *)v3 setAgentUUID:v4];

  v5 = [NSString alloc];
  agentUUID = [(NRPreferWiFiAgent *)v3 agentUUID];
  uUIDString = [agentUUID UUIDString];
  v8 = [v5 initWithFormat:@"NRPreferWiFiAgent-%@", uUIDString];
  policyIdentifier = v3->_policyIdentifier;
  v3->_policyIdentifier = v8;

  v10 = objc_alloc_init(NSMutableDictionary);
  clientUUIDToPathDictionary = v3->_clientUUIDToPathDictionary;
  v3->_clientUUIDToPathDictionary = v10;

  v12 = objc_alloc_init(NSCountedSet);
  p2pClientUUIDSet = v3->_p2pClientUUIDSet;
  v3->_p2pClientUUIDSet = v12;

  agentUUID2 = [(NRPreferWiFiAgent *)v3 agentUUID];
  uUIDString2 = [agentUUID2 UUIDString];
  sub_1000059A8(0, 15001, 0, uUIDString2);

  return v3;
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "PreferWiFi"];

  return v2;
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

@end