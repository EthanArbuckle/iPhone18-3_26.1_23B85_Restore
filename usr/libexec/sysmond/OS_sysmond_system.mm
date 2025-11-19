@interface OS_sysmond_system
- (void)dealloc;
@end

@implementation OS_sysmond_system

- (void)dealloc
{
  if (mach_port_deallocate(mach_task_self_, self[5].super.super.super.super.isa))
  {
    _os_assumes_log();
  }

  v3.receiver = self;
  v3.super_class = OS_sysmond_system;
  [(OS_sysmond_row *)&v3 dealloc];
}

@end