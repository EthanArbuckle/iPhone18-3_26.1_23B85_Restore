@interface CBPeer
- (id)msgIdentifier;
@end

@implementation CBPeer

- (id)msgIdentifier
{
  v2 = [(CBPeer *)self identifier];
  v3 = [v2 UUIDString];
  v4 = CFUUIDCreateFromString(kCFAllocatorDefault, v3);

  return CFAutorelease(v4);
}

@end