@interface OS_codex
- (void)dealloc;
@end

@implementation OS_codex

- (void)dealloc
{
  _codex_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_codex;
  [(OS_cryptex_base *)&v3 dealloc];
}

@end