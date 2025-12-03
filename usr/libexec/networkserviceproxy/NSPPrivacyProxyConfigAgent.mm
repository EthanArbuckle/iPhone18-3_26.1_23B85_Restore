@interface NSPPrivacyProxyConfigAgent
+ (id)agentDomain;
+ (id)agentFromData:(id)data;
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
    selfCopy = [(NSPPrivacyProxyConfigAgent *)self mutableCopy];
    v9 = 100;
    v8 = [v3 length];
    [(NSPPrivacyProxyConfigAgent *)selfCopy appendBytes:&v9 length:1];
    [(NSPPrivacyProxyConfigAgent *)selfCopy appendBytes:&v8 length:4];
    bytes = [v3 bytes];
    [(NSPPrivacyProxyConfigAgent *)selfCopy appendBytes:bytes length:v8];
  }

  else
  {
    selfCopy = self;
    v3 = 0;
  }

  return selfCopy;
}

+ (id)agentFromData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_alloc_init(NSPPrivacyProxyConfigAgent);
    v6 = v4;
    if (v4)
    {
      objc_setProperty_atomic(v4, v5, dataCopy, 32);
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
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  selfCopy2 = self;
  [(NSPPrivacyProxyConfigAgent *)self tokenLowWaterMarkReachedForAgent:selfCopy];
}

@end