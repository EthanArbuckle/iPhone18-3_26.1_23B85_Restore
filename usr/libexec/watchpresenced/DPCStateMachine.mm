@interface DPCStateMachine
- (DPCStateMachine)init;
- (void)reset;
@end

@implementation DPCStateMachine

- (void)reset
{
  [(DPCStateMachine *)self setIsRunning:0];
  [(DPCStateMachine *)self setIsMonitoringAbsence:1];
  [(DPCStateMachine *)self setIsSwitchingWatch:0];
  [(DPCStateMachine *)self setIsInRSSIMode:0];
  [(DPCStateMachine *)self setIsInDiscoveryMode:0];
  [(DPCStateMachine *)self setIsInRSSIStreamingMode:0];
  [(DPCStateMachine *)self setIsRunningRSSIStatDetecion:0];
  [(DPCStateMachine *)self setIsWatchConnected:0];
  [(DPCStateMachine *)self setIsBluetoothConnected:0];
  [(DPCStateMachine *)self setCurrentWatchWristState:0];
  [(DPCStateMachine *)self setLastAbsenceEventTimestamp:0.0];
  [(DPCStateMachine *)self setLastPresenceEventTimestamp:0.0];
  [(DPCStateMachine *)self setD1ThresholdMargin:0];

  [(DPCStateMachine *)self setD2ThresholdMargin:0];
}

- (DPCStateMachine)init
{
  v5.receiver = self;
  v5.super_class = DPCStateMachine;
  v2 = [(DPCStateMachine *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DPCStateMachine *)v2 reset];
  }

  return v3;
}

@end