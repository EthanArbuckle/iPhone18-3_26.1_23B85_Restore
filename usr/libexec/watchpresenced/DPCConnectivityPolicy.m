@interface DPCConnectivityPolicy
- (DPCConnectivityPolicy)initWithStateMachine:(id)a3;
- (void)notifyNewEvent:(unint64_t)a3;
- (void)onWatchConnectivityChange:(BOOL)a3;
@end

@implementation DPCConnectivityPolicy

- (DPCConnectivityPolicy)initWithStateMachine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DPCConnectivityPolicy;
  v5 = [(DPCBasePolicy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DPCBasePolicy *)v5 setRequireRSSI:0];
    [(DPCBasePolicy *)v6 setStateMachine:v4];
    [(DPCConnectivityPolicy *)v6 setHasBeenConnected:0];
  }

  return v6;
}

- (void)notifyNewEvent:(unint64_t)a3
{
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(DPCBasePolicy *)self stateMachine];
    v7 = [v6 currentWatchWristState];
    if (v7 >= 4)
    {
      v8 = [NSString stringWithFormat:@"Undefined state (%ld)", v7];
    }

    else
    {
      v8 = off_1000104C8[v7];
    }

    v9 = v8;
    if (a3 >= 3)
    {
      v10 = [NSString stringWithFormat:@"Undefined state (%ld)", a3];
    }

    else
    {
      v10 = off_1000104E8[a3];
    }

    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Current wrist state: %@, checking if need to notify with watch state: %@", buf, 0x16u);
  }

  if (a3 == 2)
  {
    [(DPCBasePolicy *)self scheduleSendAbsenceEvent];
  }

  else
  {
    [(DPCBasePolicy *)self invalidateAbsenceEvent];
    v11 = [(DPCBasePolicy *)self detectedNewEventBlock];
    v11[2](v11, a3);

    v12 = +[NSDate date];
    [v12 timeIntervalSince1970];
    v14 = v13;
    v15 = [(DPCBasePolicy *)self stateMachine];
    [v15 setLastPresenceEventTimestamp:v14];
  }
}

- (void)onWatchConnectivityChange:(BOOL)a3
{
  if (a3)
  {
    [(DPCBasePolicy *)self invalidateAbsenceEvent];
    [(DPCConnectivityPolicy *)self notifyNewEvent:1];
    v4 = [(DPCBasePolicy *)self stateMachine];
    [v4 setIsMonitoringAbsence:1];

    [(DPCConnectivityPolicy *)self setHasBeenConnected:1];
  }

  else if ([(DPCConnectivityPolicy *)self hasBeenConnected])
  {
    v5 = [(DPCBasePolicy *)self stateMachine];
    v6 = [v5 currentWatchWristState];

    if (v6 == 3)
    {
      [(DPCBasePolicy *)self scheduleSendAbsenceEvent];
      v8 = [(DPCBasePolicy *)self stateMachine];
      [v8 setIsMonitoringAbsence:0];
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