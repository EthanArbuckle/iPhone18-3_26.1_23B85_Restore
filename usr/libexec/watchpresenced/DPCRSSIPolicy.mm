@interface DPCRSSIPolicy
- (DPCRSSIPolicy)initWithStateMachine:(id)machine;
- (unint64_t)onRSSIChange:(id)change;
- (void)notifyNewEvent:(unint64_t)event;
- (void)onWristStateChange:(int64_t)change;
- (void)runRSSIAdapter:(unint64_t)adapter RSSI:(id)i;
@end

@implementation DPCRSSIPolicy

- (DPCRSSIPolicy)initWithStateMachine:(id)machine
{
  machineCopy = machine;
  v8.receiver = self;
  v8.super_class = DPCRSSIPolicy;
  v5 = [(DPCBasePolicy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DPCBasePolicy *)v5 setRequireRSSI:1];
    [(DPCBasePolicy *)v6 setStateMachine:machineCopy];
  }

  return v6;
}

- (void)notifyNewEvent:(unint64_t)event
{
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    stateMachine = [(DPCBasePolicy *)self stateMachine];
    currentWatchWristState = [stateMachine currentWatchWristState];
    if (currentWatchWristState >= 4)
    {
      v8 = [NSString stringWithFormat:@"Undefined state (%ld)", currentWatchWristState];
    }

    else
    {
      v8 = *(&off_100010528 + currentWatchWristState);
    }

    v9 = v8;
    if (event >= 3)
    {
      event = [NSString stringWithFormat:@"Undefined state (%ld)", event];
    }

    else
    {
      event = *(&off_100010548 + event);
    }

    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = event;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current wrist state: %@, checking if need to notify with watch state: %@", buf, 0x16u);
  }

  stateMachine2 = [(DPCBasePolicy *)self stateMachine];
  if ([stateMachine2 currentWatchWristState] == 3)
  {
    v12 = 1;
  }

  else
  {
    stateMachine3 = [(DPCBasePolicy *)self stateMachine];
    v12 = [stateMachine3 currentWatchWristState] == 1;
  }

  if (event == 2 && v12)
  {
    [(DPCBasePolicy *)self scheduleSendAbsenceEvent];
  }

  else if (event == 1)
  {
    [(DPCBasePolicy *)self invalidateAbsenceEvent];
    detectedNewEventBlock = [(DPCBasePolicy *)self detectedNewEventBlock];
    detectedNewEventBlock[2](detectedNewEventBlock, 1);

    v15 = +[NSDate date];
    [v15 timeIntervalSince1970];
    v17 = v16;
    stateMachine4 = [(DPCBasePolicy *)self stateMachine];
    [stateMachine4 setLastPresenceEventTimestamp:v17];
  }
}

- (unint64_t)onRSSIChange:(id)change
{
  changeCopy = change;
  stateMachine = [(DPCBasePolicy *)self stateMachine];
  isInRSSIStreamingMode = [stateMachine isInRSSIStreamingMode];

  if (isInRSSIStreamingMode)
  {
    goto LABEL_2;
  }

  stateMachine2 = [(DPCBasePolicy *)self stateMachine];
  isInDiscoveryMode = [stateMachine2 isInDiscoveryMode];
  if (isInDiscoveryMode & 1) != 0 || (-[DPCBasePolicy stateMachine](self, "stateMachine"), isInRSSIStreamingMode = objc_claimAutoreleasedReturnValue(), ([isInRSSIStreamingMode isMonitoringAbsence]))
  {
    [changeCopy floatValue];
    v11 = v10;
    v12 = +[DPCDefaults sharedInstance];
    v13 = [v12 NSNumberForDefault:@"DPCDefaultsThresholdD2"];
    [v13 floatValue];
    v15 = v14;

    if ((isInDiscoveryMode & 1) == 0)
    {
    }

    if (v11 <= v15)
    {
      v16 = sub_100001040(off_100016898);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138412290;
        v37 = changeCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device Absence Detected! %@; going to monitor for Presence", &v36, 0xCu);
      }

      stateMachine3 = [(DPCBasePolicy *)self stateMachine];
      [stateMachine3 setIsInDiscoveryMode:0];

      [(DPCRSSIPolicy *)self runRSSIAdapter:2 RSSI:changeCopy];
      stateMachine4 = [(DPCBasePolicy *)self stateMachine];
      [stateMachine4 lastPresenceEventTimestamp];
      v20 = v19;

      if (v20 == 0.0)
      {
        telemetry = sub_100001040(off_100016898);
        if (os_log_type_enabled(telemetry, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, telemetry, OS_LOG_TYPE_DEFAULT, "Ignore Absence event: Watch hasn't been back to phone in this session.", &v36, 2u);
        }
      }

      else
      {
        [(DPCRSSIPolicy *)self notifyNewEvent:2];
        telemetry = [(DPCBasePolicy *)self telemetry];
        -[NSObject registerWatchEvent:rssiValue:](telemetry, "registerWatchEvent:rssiValue:", 2, [changeCopy integerValue]);
      }

      stateMachine5 = [(DPCBasePolicy *)self stateMachine];
      [stateMachine5 setIsMonitoringAbsence:0];

      v7 = 1;
      goto LABEL_25;
    }
  }

  else
  {
  }

  stateMachine6 = [(DPCBasePolicy *)self stateMachine];
  isInDiscoveryMode2 = [stateMachine6 isInDiscoveryMode];
  if ((isInDiscoveryMode2 & 1) == 0)
  {
    isInRSSIStreamingMode = [(DPCBasePolicy *)self stateMachine];
    if ([isInRSSIStreamingMode isMonitoringAbsence])
    {

LABEL_2:
      v7 = 0;
      goto LABEL_25;
    }
  }

  [changeCopy floatValue];
  v25 = v24;
  v26 = +[DPCDefaults sharedInstance];
  v27 = [v26 NSNumberForDefault:@"DPCDefaultsThresholdD1"];
  [v27 floatValue];
  v29 = v28;

  if ((isInDiscoveryMode2 & 1) == 0)
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
    v37 = changeCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Device Presence Detected! %@; going to monitor for Absence", &v36, 0xCu);
  }

  stateMachine7 = [(DPCBasePolicy *)self stateMachine];
  [stateMachine7 setIsInDiscoveryMode:0];

  [(DPCRSSIPolicy *)self runRSSIAdapter:1 RSSI:changeCopy];
  [(DPCRSSIPolicy *)self notifyNewEvent:1];
  telemetry2 = [(DPCBasePolicy *)self telemetry];
  [telemetry2 registerWatchEvent:1 rssiValue:{objc_msgSend(changeCopy, "integerValue")}];

  stateMachine8 = [(DPCBasePolicy *)self stateMachine];
  [stateMachine8 setIsMonitoringAbsence:1];

  v7 = 2;
LABEL_25:

  return v7;
}

- (void)onWristStateChange:(int64_t)change
{
  stateMachine = [(DPCBasePolicy *)self stateMachine];
  if ([stateMachine isRunning])
  {
    stateMachine2 = [(DPCBasePolicy *)self stateMachine];
    isMonitoringAbsence = [stateMachine2 isMonitoringAbsence];

    if ((isMonitoringAbsence & 1) == 0)
    {
      [(DPCBasePolicy *)self invalidateAbsenceEvent];
      if (change == 3)
      {
        v9 = sub_100001040(off_100016898);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wrist on while absence, going to send a absence event", v11, 2u);
        }

        [(DPCBasePolicy *)self scheduleSendAbsenceEvent];
      }

      else if (change == 2)
      {
        v7 = sub_100001040(off_100016898);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wrist off while absence, going to send a presence event", buf, 2u);
        }

        [(DPCBasePolicy *)self invalidateAbsenceEvent];
        detectedNewEventBlock = [(DPCBasePolicy *)self detectedNewEventBlock];
        detectedNewEventBlock[2](detectedNewEventBlock, 1);
      }
    }
  }

  else
  {
  }
}

- (void)runRSSIAdapter:(unint64_t)adapter RSSI:(id)i
{
  v6 = [DPCDefaults sharedInstance:adapter];
  v7 = [v6 NSNumberForDefault:@"DPCDefaultsSessionBasedAdaptiveRSSIEnabled"];
  bOOLValue = [v7 BOOLValue];

  if (!bOOLValue)
  {
    return;
  }

  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  if (adapter == 1)
  {
    stateMachine = [(DPCBasePolicy *)self stateMachine];
    [stateMachine lastAbsenceEventTimestamp];
    v14 = v13;

    stateMachine2 = [(DPCBasePolicy *)self stateMachine];
    [stateMachine2 lastAbsenceEventTimestamp];
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
      stateMachine2 = [(DPCBasePolicy *)self stateMachine];
      v26 = +[DPCDefaults sharedInstance];
      v27 = [v26 NSNumberForDefault:@"DPCDefaultsD2FixedStepSize"];
      [stateMachine2 setD2ThresholdMargin:{objc_msgSend(stateMachine2, "D2ThresholdMargin") + objc_msgSend(v27, "intValue")}];

      goto LABEL_6;
    }
  }

LABEL_7:
  v28 = +[DPCDefaults sharedInstance];
  v29 = [v28 NSNumberForDefault:@"DPCDefaultsSessionBasedAdaptiveRSSITwoWaysEnabled"];
  bOOLValue2 = [v29 BOOLValue];

  if (adapter == 2)
  {
    if (bOOLValue2)
    {
      stateMachine3 = [(DPCBasePolicy *)self stateMachine];
      [stateMachine3 lastAbsenceEventTimestamp];
      v33 = v32;

      if (v33 != 0.0)
      {
        stateMachine4 = [(DPCBasePolicy *)self stateMachine];
        [stateMachine4 lastPresenceEventTimestamp];
        v36 = v35;

        stateMachine5 = [(DPCBasePolicy *)self stateMachine];
        [stateMachine5 lastPresenceEventTimestamp];
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

          stateMachine5 = [(DPCBasePolicy *)self stateMachine];
          v47 = +[DPCDefaults sharedInstance];
          v48 = [v47 NSNumberForDefault:@"DPCDefaultsD2FixedStepSize"];
          [stateMachine5 setD2ThresholdMargin:{objc_msgSend(stateMachine5, "D2ThresholdMargin") + objc_msgSend(v48, "intValue")}];
        }
      }
    }
  }
}

@end