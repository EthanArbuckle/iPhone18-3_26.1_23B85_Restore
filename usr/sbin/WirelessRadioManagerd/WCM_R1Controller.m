@interface WCM_R1Controller
- (WCM_R1Controller)init;
- (void)dealloc;
@end

@implementation WCM_R1Controller

- (WCM_R1Controller)init
{
  v5.receiver = self;
  v5.super_class = WCM_R1Controller;
  v2 = [(WCM_Controller *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super.mProcessId + 4) = 0;
    *(&v2->super.mProcessId + 5) = 0;
    *&v2->_powerState = -1;
    v2->_mRCU1ChannelNum = 0;
    v2->_mRCU1OnDuration = 0;
    v2->_mRCU1CycleLength = 0;
    v2->_mRCU1NumberOfCycles = 0;
    v2->_mRCU1FrameFormat = 0;
    *(&v2->super.mProcessId + 6) = 0;
    v2->_mRCU1UseCaseNum = 0;
  }

  [WCM_Logging logLevel:2 message:@"RCU1Controller Init"];
  return v3;
}

- (void)dealloc
{
  [WCM_Logging logLevel:2 message:@"RCU1Controller Dealloc"];
  v3.receiver = self;
  v3.super_class = WCM_R1Controller;
  [(WCM_Controller *)&v3 dealloc];
}

@end