@interface WCM_RCU2Controller
- (WCM_RCU2Controller)init;
- (void)dealloc;
@end

@implementation WCM_RCU2Controller

- (WCM_RCU2Controller)init
{
  v5.receiver = self;
  v5.super_class = WCM_RCU2Controller;
  v2 = [(WCM_Controller *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super.mProcessId + 4) = 0;
    *&v2->_mRCU2PowerOn = 0;
  }

  [WCM_Logging logLevel:2 message:@"RCU2Controller Init"];
  return v3;
}

- (void)dealloc
{
  [WCM_Logging logLevel:2 message:@"RCU2Controller Dealloc"];
  v3.receiver = self;
  v3.super_class = WCM_RCU2Controller;
  [(WCM_Controller *)&v3 dealloc];
}

@end