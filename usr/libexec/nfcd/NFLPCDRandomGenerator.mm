@interface NFLPCDRandomGenerator
- (NFLPCDRandomGenerator)init;
@end

@implementation NFLPCDRandomGenerator

- (NFLPCDRandomGenerator)init
{
  v7.receiver = self;
  v7.super_class = NFLPCDRandomGenerator;
  v2 = [(NFLPCDRandomGenerator *)&v7 init];
  if (v2)
  {
    v3 = [[NSMutableData alloc] initWithLength:6];
    rnd = v2->_rnd;
    v2->_rnd = v3;

    arc4random_buf([(NSMutableData *)v2->_rnd mutableBytes], 6uLL);
    v2->_isOverride = 0;
    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = v2;
  }

  return v2;
}

@end