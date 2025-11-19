@interface NSPPrivacyProxyConfigAgent
+ (id)agentDomain;
+ (id)agentFromData:(id)a3;
+ (id)agentType;
- (id)copyAgentData;
- (void)tokenLowWaterMarkReached;
@end

@implementation NSPPrivacyProxyConfigAgent

+ (id)agentDomain
{
  if (qword_100129738 != -1)
  {
    dispatch_once(&qword_100129738, &stru_100109BC0);
  }

  v3 = qword_100129730;

  return v3;
}

+ (id)agentType
{
  if (qword_100129748 != -1)
  {
    dispatch_once(&qword_100129748, &stru_100109BE0);
  }

  v3 = qword_100129740;

  return v3;
}

- (id)copyAgentData
{
  if (self && (v2 = self, v3 = objc_getProperty(self, a2, 40, 1), self = objc_getProperty(v2, v4, 32, 1), v3))
  {
    v5 = [(NSPPrivacyProxyConfigAgent *)self mutableCopy];
    v9 = 100;
    v8 = [v3 length];
    [(NSPPrivacyProxyConfigAgent *)v5 appendBytes:&v9 length:1];
    [(NSPPrivacyProxyConfigAgent *)v5 appendBytes:&v8 length:4];
    v6 = [v3 bytes];
    [(NSPPrivacyProxyConfigAgent *)v5 appendBytes:v6 length:v8];
  }

  else
  {
    v5 = self;
    v3 = 0;
  }

  return v5;
}

+ (id)agentFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(NSPPrivacyProxyConfigAgent);
    v6 = v4;
    if (v4)
    {
      objc_setProperty_atomic(v4, v5, v3, 32);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tokenLowWaterMarkReached
{
  v2 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v3 = self;
  [(NSPPrivacyProxyConfigAgent *)self tokenLowWaterMarkReachedForAgent:v2];
}

@end