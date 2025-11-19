@interface WCM_ExternalAccessory
- (WCM_ExternalAccessory)init;
- (void)dealloc;
@end

@implementation WCM_ExternalAccessory

- (WCM_ExternalAccessory)init
{
  v3.receiver = self;
  v3.super_class = WCM_ExternalAccessory;
  return [(WCM_ExternalAccessory *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_ExternalAccessory;
  [(WCM_ExternalAccessory *)&v2 dealloc];
}

@end