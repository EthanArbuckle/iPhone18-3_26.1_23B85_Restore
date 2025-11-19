@interface DPCRSSIPolicy
- (DPCRSSIPolicy)initWithStateMachine:(id)a3;
- (unint64_t)onRSSIChange:(id)a3;
- (void)notifyNewEvent:(unint64_t)a3;
- (void)onWristStateChange:(int64_t)a3;
- (void)runRSSIAdapter:(unint64_t)a3 RSSI:(id)a4;
@end

@implementation DPCRSSIPolicy

- (DPCRSSIPolicy)initWithStateMachine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DPCRSSIPolicy;
  v5 = [(DPCBasePolicy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DPCBasePolicy *)v5 setRequireRSSI:1];
    [(DPCBasePolicy *)v6 setStateMachine:v4];
  }

  return v6;
}

- (void)notifyNewEvent:(unint64_t)a3
{
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DPCBasePolicy *)self stateMachine];
    v7 = [v6 currentWatchWristState];
    if (v7 >= 4)
    {
      v8 = [NSString stringWithFormat:@"Undefined state (%ld)", v7];
    }

    else
    {
      v8 = *(&off_100010528 + v7);
    }

    v9 = v8;
    if (a3 >= 3)
    {
      v10 = [NSString stringWithFormat:@"Undefined state (%ld)", a3];
    }

    else
    {
      v10 = *(&off_100010548 + a3);
    }

    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current wrist state: %@, checking if need to notify with watch state: %@", buf, 0x16u);
  }

  v11 = [(DPCBasePolicy *)self stateMachine];
  if ([v11 currentWatchWristState] == 3)
  {
    v12 = 1;
  }

  else
  {
    v13 = [(DPCBasePolicy *)self stateMachine];
    v12 = [v13 currentWatchWristState] == 1;
  }

  if (a3 == 2 && v12)
  {
    [(DPCBasePolicy *)self scheduleSendAbsenceEvent];
  }

  else if (a3 == 1)
  {
    [(DPCBasePolicy *)self invalidateAbsenceEvent];
    v14 = [(DPCBasePolicy *)self detectedNewEventBlock];
    v14[2](v14, 1);

    v15 = +[NSDate date];
    [v15 timeIntervalSince1970];
    v17 = v16;
    v18 = [(DPCBasePolicy *)self stateMachine];
    [v18 setLastPresenceEventTimestamp:v17];
  }
}

- (unint64_t)onRSSIChange:(id)a3
{
  v4 = a3;
  v5 = [(DPCBasePolicy *)self stateMachine];
  v6 = [v5 isInRSSIStreamingMode];

  if (v6)
  {
    goto LABEL_2;
  }

  v8 = [(DPCBasePolicy *)self stateMachine];
  v9 = [v8 isInDiscoveryMode];
  if (v9 & 1) != 0 || (-[DPCBasePolicy stateMachine](self, "stateMachine"), v6 = objc_claimAutoreleasedReturnValue(), ([v6 isMonitoringAbsence]))
  {
    [v4 floatValue];
    v11 = v10;
    v12 = +[DPCDefaults sharedInstance];
    v13 = [v12 NSNumberForDefault:@"DPCDefaultsThresholdD2"];
    [v13 floatValue];
    v15 = v14;

    if ((v9 & 1) == 0)
    {
    }

    if (v11 <= v15)
    {
      v16 = sub_100001040(off_100016898);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138412290;
        v37 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device Absence Detected! %@; going to monitor for Presence", &v36, 0xCu);
      }

      v17 = [(DPCBasePolicy *)self stateMachine];
      [v17 setIsInDiscoveryMode:0];

      [(DPCRSSIPolicy *)self runRSSIAdapter:2 RSSI:v4];
      v18 = [(DPCBasePolicy *)self stateMachine];
      [v18 lastPresenceEventTimestamp];
      v20 = v19;

      if (v20 == 0.0)
      {
        v21 = sub_100001040(off_100016898);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignore Absence event: Watch hasn't been back to phone in this session.", &v36, 2u);
        }
      }

      else
      {
        [(DPCRSSIPolicy *)self notifyNewEvent:2];
        v21 = [(DPCBasePolicy *)self telemetry];
        -[NSObject registerWatchEvent:rssiValue:](v21, "registerWatchEvent:rssiValue:", 2, [v4 integerValue]);
      }

      v34 = [(DPCBasePolicy *)self stateMachine];
      [v34 setIsMonitoringAbsence:0];

      v7 = 1;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v22 = [(DPCBasePolicy *)self stateMachine];
  v23 = [v22 isInDiscoveryMode];
  if ((v23 & 1) == 0)
  {
    v6 = [(DPCBasePolicy *)self stateMachine];
    if ([v6 isMonitoringAbsence])
    {

LABEL_2:
      v7 = 0;
      goto LABEL_25;
    }
  }

  [v4 floatValue];
  v25 = v24;
  v26 = +[DPCDefaults sharedInstance];
  v27 = [v26 NSNumberForDefault:@"DPCDefaultsThresholdD1"];
  [v27 floatValue];
  v29 = v28;

  if ((v23 & 1) == 0)
  {
  }

  if (v25 < v29)
  {
    goto LABEL_2;
  }

  v30 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412290;
    v37 = v4;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Device Presence Detected! %@; going to monitor for Absence", &v36, 0xCu);
  }

  v31 = [(DPCBasePolicy *)self stateMachine];
  [v31 setIsInDiscoveryMode:0];

  [(DPCRSSIPolicy *)self runRSSIAdapter:1 RSSI:v4];
  [(DPCRSSIPolicy *)self notifyNewEvent:1];
  v32 = [(DPCBasePolicy *)self telemetry];
  [v32 registerWatchEvent:1 rssiValue:{objc_msgSend(v4, "integerValue")}];

  v33 = [(DPCBasePolicy *)self stateMachine];
  [v33 setIsMonitoringAbsence:1];

  v7 = 2;
LABEL_25:

  return v7;
}

- (void)onWristStateChange:(int64_t)a3
{
  v10 = [(DPCBasePolicy *)self stateMachine];
  if ([v10 isRunning])
  {
    v5 = [(DPCBasePolicy *)self stateMachine];
    v6 = [v5 isMonitoringAbsence];

    if ((v6 & 1) == 0)
    {
      [(DPCBasePolicy *)self invalidateAbsenceEvent];
      if (a3 == 3)
      {
        v9 = sub_100001040(off_100016898);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wrist on while absence, going to send a absence event", v11, 2u);
        }

        [(DPCBasePolicy *)self scheduleSendAbsenceEvent];
      }

      else if (a3 == 2)
      {
        v7 = sub_100001040(off_100016898);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wrist off while absence, going to send a presence event", buf, 2u);
        }

        [(DPCBasePolicy *)self invalidateAbsenceEvent];
        v8 = [(DPCBasePolicy *)self detectedNewEventBlock];
        v8[2](v8, 1);
      }
    }
  }

  else
  {
  }
}

- (void)runRSSIAdapter:(unint64_t)a3 RSSI:(id)a4
{
  v6 = [DPCDefaults sharedInstance:a3];
  v7 = [v6 NSNumberForDefault:@"DPCDefaultsSessionBasedAdaptiveRSSIEnabled"];
  v8 = [v7 BOOLValue];

  if (!v8)
  {
    return;
  }

  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  if (a3 == 1)
  {
    v12 = [(DPCBasePolicy *)self stateMachine];
    [v12 lastAbsenceEventTimestamp];
    v14 = v13;

    v15 = [(DPCBasePolicy *)self stateMachine];
    [v15 lastAbsenceEventTimestamp];
    if (v16 == 0.0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v17 = v11 - v14;
    v18 = +[DPCDefaults sharedInstance];
    v19 = [v18 NSNumberForDefault:@"DPCDefaultsAPWakeToSuppressionBreakEvenDuration"];
    [v19 floatValue];
    v21 = v20;
    v22 = +[DPCDefaults sharedInstance];
    v23 = [v22 NSNumberForDefault:@"DPCDefaultsPowerWinGainTimes"];
    [v23 floatValue];
    v25 = (v21 * v24);

    if (v17 < v25)
    {
      v15 = [(DPCBasePolicy *)self stateMachine];
      v26 = +[DPCDefaults sharedInstance];
      v27 = [v26 NSNumberForDefault:@"DPCDefaultsD2FixedStepSize"];
      [v15 setD2ThresholdMargin:{objc_msgSend(v15, "D2ThresholdMargin") + objc_msgSend(v27, "intValue")}];

      goto LABEL_6;
    }
  }

LABEL_7:
  v28 = +[DPCDefaults sharedInstance];
  v29 = [v28 NSNumberForDefault:@"DPCDefaultsSessionBasedAdaptiveRSSITwoWaysEnabled"];
  v30 = [v29 BOOLValue];

  if (a3 == 2)
  {
    if (v30)
    {
      v31 = [(DPCBasePolicy *)self stateMachine];
      [v31 lastAbsenceEventTimestamp];
      v33 = v32;

      if (v33 != 0.0)
      {
        v34 = [(DPCBasePolicy *)self stateMachine];
        [v34 lastPresenceEventTimestamp];
        v36 = v35;

        v49 = [(DPCBasePolicy *)self stateMachine];
        [v49 lastPresenceEventTimestamp];
        if (v37 != 0.0)
        {
          v38 = v11 - v36;
          v39 = +[DPCDefaults sharedInstance];
          v40 = [v39 NSNumberForDefault:@"DPCDefaultsAPWakeToSuppressionBreakEvenDuration"];
          [v40 floatValue];
          v42 = v41;
          v43 = +[DPCDefaults sharedInstance];
          v44 = [v43 NSNumberForDefault:@"DPCDefaultsPowerWinGainTimes"];
          [v44 floatValue];
          v46 = (v42 * v45);

          if (v38 >= v46)
          {
            return;
          }

          v49 = [(DPCBasePolicy *)self stateMachine];
          v47 = +[DPCDefaults sharedInstance];
          v48 = [v47 NSNumberForDefault:@"DPCDefaultsD2FixedStepSize"];
          [v49 setD2ThresholdMargin:{objc_msgSend(v49, "D2ThresholdMargin") + objc_msgSend(v48, "intValue")}];
        }
      }
    }
  }
}

@end