@interface CPXIDSForwardingProxy
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCPXIDSproxy:(id)a3;
- (CPXIDSForwardingProxy)initWithServerPort:(unsigned __int16)a3 targetingPort:(unsigned __int16)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CPXIDSForwardingProxy

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(CPXIDSForwardingProxy *)self isEqualToCPXIDSproxy:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToCPXIDSproxy:(id)a3
{
  v4 = a3;
  v5 = [(CPXIDSForwardingProxy *)self serverPort];
  if (v5 == [v4 serverPort])
  {
    v6 = [(CPXIDSForwardingProxy *)self targetPort];
    v7 = v6 == [v4 targetPort];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CPXIDSForwardingProxy)initWithServerPort:(unsigned __int16)a3 targetingPort:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = CPXIDSForwardingProxy;
  result = [(CPXIDSForwardingProxy *)&v7 init];
  if (result)
  {
    result->_serverPort = a3;
    result->_targetPort = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CPXIDSForwardingProxy alloc];
  v5 = [(CPXIDSForwardingProxy *)self serverPort];
  v6 = [(CPXIDSForwardingProxy *)self targetPort];

  return [(CPXIDSForwardingProxy *)v4 initWithServerPort:v5 targetingPort:v6];
}

@end