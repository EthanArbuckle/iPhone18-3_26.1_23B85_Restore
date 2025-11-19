@interface OS_proc
- (void)dealloc;
@end

@implementation OS_proc

- (void)dealloc
{
  _proc_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_proc;
  [(OS_proc *)&v3 dealloc];
}

@end