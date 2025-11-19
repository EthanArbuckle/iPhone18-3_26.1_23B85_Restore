@interface OS_logd_realtime_client
- (void)dealloc;
@end

@implementation OS_logd_realtime_client

- (void)dealloc
{
  sub_100009874(self[38].super.super.isa);
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x400uLL, "client %s:%d is deallocating", self[2].super.super.isa, *(self[2].super.super.isa + 16));
  sub_1000155B8(__b);
  v3 = mach_vm_deallocate(mach_task_self_, self[40].super.super.isa, self[39].super.super.isa);
  if (v3)
  {
    v4 = v3;
    memset(__b, 170, sizeof(__b));
    v5 = mach_error_string(v4);
    snprintf(__b, 0x400uLL, "Failed to deallocate shared memory: %s", v5);
    sub_1000155B8(__b);
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Shared memory cleanup failed for client %d", *(self[2].super.super.isa + 16));
    sub_1000155B8(__b);
  }

  v6.receiver = self;
  v6.super_class = OS_logd_realtime_client;
  [(OS_logd_realtime_client *)&v6 dealloc];
}

@end