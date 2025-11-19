@interface ConnectedPeer
- (ConnectedPeer)init;
@end

@implementation ConnectedPeer

- (ConnectedPeer)init
{
  v3.receiver = self;
  v3.super_class = ConnectedPeer;
  result = [(ConnectedPeer *)&v3 init];
  if (result)
  {
    result->_flow = -1;
  }

  return result;
}

@end