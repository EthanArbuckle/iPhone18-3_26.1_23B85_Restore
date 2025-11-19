@interface NRBTLinkPreferencesAgent
+ (id)agentDomain;
+ (id)agentType;
- (BOOL)assertAgentWithOptions:(id)a3;
- (void)dealloc;
- (void)unassertAgentWithOptions:(id)a3;
@end

@implementation NRBTLinkPreferencesAgent

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
  v7[2] = sub_1000779F0;
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
  v8[2] = sub_100077EA4;
  v8[3] = &unk_1001FD060;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(queue, v8);

  return 1;
}

- (void)dealloc
{
  sub_1000782D4(self);
  v3.receiver = self;
  v3.super_class = NRBTLinkPreferencesAgent;
  [(NRBTLinkPreferencesAgent *)&v3 dealloc];
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"com.apple.networkrelay"];

  return v2;
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "CompanionBTLinkPreferencesAgent"];

  return v2;
}

@end