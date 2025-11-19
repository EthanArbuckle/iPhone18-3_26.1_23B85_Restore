@interface BTVCPacket
- (BTVCPacket)init;
@end

@implementation BTVCPacket

- (BTVCPacket)init
{
  v3.receiver = self;
  v3.super_class = BTVCPacket;
  return [(BTVCPacket *)&v3 init];
}

@end