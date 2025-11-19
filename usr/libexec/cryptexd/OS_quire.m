@interface OS_quire
- (void)dealloc;
@end

@implementation OS_quire

- (void)dealloc
{
  _quire_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_quire;
  [(OS_cryptex_base *)&v3 dealloc];
}

@end