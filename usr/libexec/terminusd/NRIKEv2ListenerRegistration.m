@interface NRIKEv2ListenerRegistration
- (id)description;
@end

@implementation NRIKEv2ListenerRegistration

- (id)description
{
  v3 = [NSString alloc];
  interfaceName = self->_interfaceName;
  v5 = [v3 initWithFormat:@"%@/%@/%@", self->_localEndpoint, interfaceName, self->_link];

  return v5;
}

@end