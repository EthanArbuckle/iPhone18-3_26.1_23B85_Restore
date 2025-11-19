@interface OS_sysmond_row
- (void)dealloc;
@end

@implementation OS_sysmond_row

- (void)dealloc
{
  xpc_release(self[2].super.super.super.isa);
  isa = self[3].super.super.super.isa;
  if (isa)
  {
    for (i = 0; i < isa; ++i)
    {
      v5 = *(self[4].super.super.super.isa + i);
      if (v5)
      {
        xpc_release(v5);
        isa = self[3].super.super.super.isa;
      }
    }
  }

  free(self[4].super.super.super.isa);
  v6.receiver = self;
  v6.super_class = OS_sysmond_row;
  [(OS_sysmond_row *)&v6 dealloc];
}

@end