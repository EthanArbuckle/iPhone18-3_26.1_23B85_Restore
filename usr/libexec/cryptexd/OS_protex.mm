@interface OS_protex
- (void)dealloc;
@end

@implementation OS_protex

- (void)dealloc
{
  _protex_dealloc(&self->super.super.super.isa);
  v3.receiver = self;
  v3.super_class = OS_protex;
  [(OS_cryptex_base *)&v3 dealloc];
}

@end