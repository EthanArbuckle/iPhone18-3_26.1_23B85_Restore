@interface CBPeer
- (id)msgIdentifier;
@end

@implementation CBPeer

- (id)msgIdentifier
{
  identifier = [(CBPeer *)self identifier];
  uUIDString = [identifier UUIDString];
  v4 = CFUUIDCreateFromString(kCFAllocatorDefault, uUIDString);

  return CFAutorelease(v4);
}

@end