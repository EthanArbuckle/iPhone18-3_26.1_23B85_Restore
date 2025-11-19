@interface NRLinkDirectorMessageState
- (id)description;
@end

@implementation NRLinkDirectorMessageState

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"[%@, %@]", self->_sequenceNum, self->_localReceiveID];

  return v2;
}

@end