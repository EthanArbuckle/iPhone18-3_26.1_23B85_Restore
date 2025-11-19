@interface WCM_FrequencyToolController
- (WCM_FrequencyToolController)init;
- (void)dealloc;
@end

@implementation WCM_FrequencyToolController

- (WCM_FrequencyToolController)init
{
  v4.receiver = self;
  v4.super_class = WCM_FrequencyToolController;
  v2 = [(WCM_Controller *)&v4 init];
  [WCM_Logging logLevel:4 message:@"FrequencyToolController Init"];
  return v2;
}

- (void)dealloc
{
  [WCM_Logging logLevel:4 message:@"FrequencyToolController Dealloc"];
  v3.receiver = self;
  v3.super_class = WCM_FrequencyToolController;
  [(WCM_Controller *)&v3 dealloc];
}

@end