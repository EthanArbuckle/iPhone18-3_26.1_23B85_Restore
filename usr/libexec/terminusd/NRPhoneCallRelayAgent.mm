@interface NRPhoneCallRelayAgent
+ (id)agentDomain;
+ (id)agentType;
- (BOOL)assertAgentWithOptions:(id)options;
- (void)dealloc;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation NRPhoneCallRelayAgent

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
  block[2] = sub_1001850BC;
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
  block[2] = sub_100185380;
  block[3] = &unk_1001FD3C8;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (void)dealloc
{
  sub_100185548(self);
  v3.receiver = self;
  v3.super_class = NRPhoneCallRelayAgent;
  [(NRPhoneCallRelayAgent *)&v3 dealloc];
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "PhoneCallRelayAgent"];

  return v2;
}

@end