@interface WCM_CoexMonitor
- (WCM_CoexMonitor)init;
@end

@implementation WCM_CoexMonitor

- (WCM_CoexMonitor)init
{
  v3.receiver = self;
  v3.super_class = WCM_CoexMonitor;
  return [(WCM_CoexMonitor *)&v3 init];
}

@end