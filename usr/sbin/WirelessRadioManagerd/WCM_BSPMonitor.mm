@interface WCM_BSPMonitor
- (WCM_BSPMonitor)init;
- (int)getTimeToTSTForULLAMode:(int)mode;
@end

@implementation WCM_BSPMonitor

- (WCM_BSPMonitor)init
{
  v3.receiver = self;
  v3.super_class = WCM_BSPMonitor;
  return [(WCM_BSPMonitor *)&v3 init];
}

- (int)getTimeToTSTForULLAMode:(int)mode
{
  if (mode == 2)
  {
    return 64;
  }

  else
  {
    return 20;
  }
}

@end