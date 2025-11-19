@interface NRIKEv2PendingSession
- (id)description;
@end

@implementation NRIKEv2PendingSession

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"%@", self->_session];

  return v2;
}

@end