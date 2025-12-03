@interface CPXIDSForwardingProxy
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCPXIDSproxy:(id)sproxy;
- (CPXIDSForwardingProxy)initWithServerPort:(unsigned __int16)port targetingPort:(unsigned __int16)targetingPort;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CPXIDSForwardingProxy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(CPXIDSForwardingProxy *)self isEqualToCPXIDSproxy:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToCPXIDSproxy:(id)sproxy
{
  sproxyCopy = sproxy;
  serverPort = [(CPXIDSForwardingProxy *)self serverPort];
  if (serverPort == [sproxyCopy serverPort])
  {
    targetPort = [(CPXIDSForwardingProxy *)self targetPort];
    v7 = targetPort == [sproxyCopy targetPort];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CPXIDSForwardingProxy)initWithServerPort:(unsigned __int16)port targetingPort:(unsigned __int16)targetingPort
{
  v7.receiver = self;
  v7.super_class = CPXIDSForwardingProxy;
  result = [(CPXIDSForwardingProxy *)&v7 init];
  if (result)
  {
    result->_serverPort = port;
    result->_targetPort = targetingPort;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CPXIDSForwardingProxy alloc];
  serverPort = [(CPXIDSForwardingProxy *)self serverPort];
  targetPort = [(CPXIDSForwardingProxy *)self targetPort];

  return [(CPXIDSForwardingProxy *)v4 initWithServerPort:serverPort targetingPort:targetPort];
}

@end