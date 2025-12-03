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
    type = @"ProxyUsage";
  }

  else if (self->_type)
  {
    type = [[NSString alloc] initWithFormat:@"Unknown(%u)", type];
  }

  else
  {
    type = @"Invalid";
  }

  action = self->_action;
  if ((action - 50) >= 3)
  {
    action = [[NSString alloc] initWithFormat:@"Unknown(%u)", action];
  }

  else
  {
    action = off_1001FA058[(action - 50)];
  }

  tokenValue = self->_tokenValue;
  LogString = _NRKeyCreateLogString();
  logString = [v3 initWithFormat:@"NRToken[%@, %@, %@]", type, action, LogString];

  return logString;
}

@end