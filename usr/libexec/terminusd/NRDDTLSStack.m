@interface NRDDTLSStack
- (id)description;
@end

@implementation NRDDTLSStack

- (id)description
{
  v3 = [NSString alloc];
  v4 = "client";
  if (self)
  {
    identifier = self->_identifier;
    if (self->_server)
    {
      v4 = "server";
    }
  }

  else
  {
    identifier = 0;
  }

  v6 = [v3 initWithFormat:@"[DTLS%llu %s]", identifier, v4];

  return v6;
}

@end