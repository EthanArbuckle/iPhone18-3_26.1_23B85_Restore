@interface OS_sysmond_process
- (void)dealloc;
@end

@implementation OS_sysmond_process

- (void)dealloc
{
  if (mach_port_deallocate(mach_task_self_, HIDWORD(self[5].super.super.super.super.isa)))
  {
    _os_assumes_log();
  }

  v3.receiver = self;
  v3.super_class = OS_sysmond_process;
  [(OS_sysmond_row *)&v3 dealloc];
}

@end