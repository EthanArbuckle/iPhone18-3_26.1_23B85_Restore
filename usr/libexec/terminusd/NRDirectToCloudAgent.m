@interface NRDirectToCloudAgent
+ (id)agentDomain;
+ (id)agentType;
- (BOOL)assertAgentWithOptions:(id)a3;
- (void)dealloc;
- (void)unassertAgentWithOptions:(id)a3;
@end

@implementation NRDirectToCloudAgent

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
  v7[2] = sub_10007B160;
  v7[3] = &unk_1001FD060;
  v8 = v4;
  v9 = self;
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
  v8[2] = sub_10007B7E4;
  v8[3] = &unk_1001FD060;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(queue, v8);

  return 1;
}

- (void)dealloc
{
  if (qword_100229060 != -1)
  {
    dispatch_once(&qword_100229060, &stru_1001FAF50);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    v3 = qword_100229058;
    v4 = [(NRDirectToCloudAgent *)self agentDescription];
    _NRLogWithArgs();
  }

  sub_10007BEA0(self);
  v5.receiver = self;
  v5.super_class = NRDirectToCloudAgent;
  [(NRDirectToCloudAgent *)&v5 dealloc];
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "DirectToCloud"];

  return v2;
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

@end