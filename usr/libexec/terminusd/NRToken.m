@interface NRToken
- (id)description;
@end

@implementation NRToken

- (id)description
{
  v3 = [NSString alloc];
  type = self->_type;
  if (type == 1)
  {
    v5 = @"ProxyUsage";
  }

  else if (self->_type)
  {
    v5 = [[NSString alloc] initWithFormat:@"Unknown(%u)", type];
  }

  else
  {
    v5 = @"Invalid";
  }

  action = self->_action;
  if ((action - 50) >= 3)
  {
    v7 = [[NSString alloc] initWithFormat:@"Unknown(%u)", action];
  }

  else
  {
    v7 = off_1001FA058[(action - 50)];
  }

  tokenValue = self->_tokenValue;
  LogString = _NRKeyCreateLogString();
  v10 = [v3 initWithFormat:@"NRToken[%@, %@, %@]", v5, v7, LogString];

  return v10;
}

@end