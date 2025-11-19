@interface WRM_WiFiCallingController
- (WRM_WiFiCallingController)init;
- (void)dealloc;
@end

@implementation WRM_WiFiCallingController

- (WRM_WiFiCallingController)init
{
  v3.receiver = self;
  v3.super_class = WRM_WiFiCallingController;
  return [(WRM_AVConferenceController *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_WiFiCallingController;
  [(WRM_AVConferenceController *)&v2 dealloc];
}

@end