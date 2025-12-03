@interface DPCConnectivityPolicy
- (DPCConnectivityPolicy)initWithStateMachine:(id)machine;
- (void)notifyNewEvent:(unint64_t)event;
- (void)onWatchConnectivityChange:(BOOL)change;
@end

@implementation DPCConnectivityPolicy

- (DPCConnectivityPolicy)initWithStateMachine:(id)machine
{
  machineCopy = machine;
  v8.receiver = self;
  v8.super_class = DPCConnectivityPolicy;
  v5 = [(DPCBasePolicy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DPCBasePolicy *)v5 setRequireRSSI:0];
    [(DPCBasePolicy *)v6 setStateMachine:machineCopy];
    [(DPCConnectivityPolicy *)v6 setHasBeenConnected:0];
  }

  return v6;
}

- (void)notifyNewEvent:(unint64_t)event
{
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    stateMachine = [(DPCBasePolicy *)self stateMachine];
    currentWatchWristState = [stateMachine currentWatchWristState];
    if (currentWatchWristState >= 4)
    {
      v8 = [NSString stringWithFormat:@"Undefined state (%ld)", currentWatchWristState];
    }

    else
    {
      v8 = off_1000104C8[currentWatchWristState];
    }

    v9 = v8;
    if (event >= 3)
    {
      event = [NSString stringWithFormat:@"Undefined state (%ld)", event];
    }

    else
    {
      event = off_1000104E8[event];
    }

    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = event;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Current wrist state: %@, checking if need to notify with watch state: %@", buf, 0x16u);
  }

  if (event == 2)
  {
    [(DPCBasePolicy *)self scheduleSendAbsenceEvent];
  }

  else
  {
    [(DPCBasePolicy *)self invalidateAbsenceEvent];
    detectedNewEventBlock = [(DPCBasePolicy *)self detectedNewEventBlock];
    detectedNewEventBlock[2](detectedNewEventBlock, event);

    v12 = +[NSDate date];
    [v12 timeIntervalSince1970];
    v14 = v13;
    stateMachine2 = [(DPCBasePolicy *)self stateMachine];
    [stateMachine2 setLastPresenceEventTimestamp:v14];
  }
}

- (void)onWatchConnectivityChange:(BOOL)change
{
  if (change)
  {
    [(DPCBasePolicy *)self invalidateAbsenceEvent];
    [(DPCConnectivityPolicy *)self notifyNewEvent:1];
    stateMachine = [(DPCBasePolicy *)self stateMachine];
    [stateMachine setIsMonitoringAbsence:1];

    [(DPCConnectivityPolicy *)self setHasBeenConnected:1];
  }

  else if ([(DPCConnectivityPolicy *)self hasBeenConnected])
  {
    stateMachine2 = [(DPCBasePolicy *)self stateMachine];
    currentWatchWristState = [stateMachine2 currentWatchWristState];

    if (currentWatchWristState == 3)
    {
      [(DPCBasePolicy *)self scheduleSendAbsenceEvent];
      stateMachine3 = [(DPCBasePolicy *)self stateMachine];
      [stateMachine3 setIsMonitoringAbsence:0];
    }
  }

  else
  {
    v7 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100007634(v7);
    }
  }
}

@end