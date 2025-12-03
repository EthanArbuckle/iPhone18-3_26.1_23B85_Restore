@interface WiFiRoamManager
+ (id)sharedWiFiRoamManager;
+ (id)stringRepresentationWithHostReason:(int64_t)reason;
+ (id)stringRepresentationWithReason:(int)reason;
+ (id)stringRepresentationWithStatus:(int)status;
- (BOOL)allowRoam:(signed __int16)roam;
- (BOOL)canSubmitMetrics;
- (BOOL)detectLateRoam;
- (BOOL)isLastRoamCacheValid;
- (BOOL)isLastRoamDueToBeaconLost;
- (BOOL)isLastRoamDueToLowRssi;
- (WiFiRoamManager)init;
- (id)copyRoamStatus;
- (unint64_t)detectPingPong;
- (void)dealloc;
- (void)reset;
- (void)setBTState:(int64_t)state type:(int64_t)type;
- (void)setDeviceMotionState:(unsigned __int16)state;
- (void)setLinkDown;
- (void)setRealtimeSessionNotification:(id)notification forInterface:(id)interface;
- (void)setRoamEndState:(id)state forInterface:(id)interface;
- (void)setRoamPrep:(id)prep forInterface:(id)interface;
- (void)setRoamStart:(id)start forInterface:(id)interface;
- (void)setRoamStatus:(id)status withBeaconCache:(id)cache forInterface:(id)interface;
@end

@implementation WiFiRoamManager

- (BOOL)isLastRoamCacheValid
{
  roamState = self->_roamState;
  if (roamState)
  {
    roamState = [(NSDictionary *)roamState objectForKey:@"ROAM_LAST_STATUS"];
    if (roamState)
    {
      v3 = roamState;
      LOBYTE(roamState) = ([(NSDictionary *)roamState unsignedIntValue]& 0x1FF) == 3 || ([(NSDictionary *)v3 unsignedIntValue]& 0x1FF) == 0x4B;
    }
  }

  return roamState;
}

+ (id)sharedWiFiRoamManager
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = qword_100298488;
  if (!qword_100298488)
  {
    v4 = objc_alloc_init(self);
    qword_100298488 = v4;
  }

  objc_sync_exit(v3);
  return v4;
}

- (BOOL)isLastRoamDueToBeaconLost
{
  roamScanStart = self->_roamScanStart;
  if (roamScanStart)
  {
    v3 = [(NSDictionary *)roamScanStart objectForKey:@"ROAM_SCAN_REASON"];
    LOBYTE(roamScanStart) = v3 && [v3 unsignedIntValue] == -528348156;
  }

  return roamScanStart;
}

- (WiFiRoamManager)init
{
  v10.receiver = self;
  v10.super_class = WiFiRoamManager;
  v2 = [(WiFiRoamManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 9) = 0;
    v2[8] = 0;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    __asm { FMOV            V0.2D, #10.0 }

    *(v2 + 56) = _Q0;
    *(v2 + 9) = 3;
    *(v2 + 10) = 0x405E000000000000;
    *(v2 + 8) = 0;
    *(v2 + 13) = 0;
    v2[11] = 0;
    *(v2 + 5) = 0;
    *(v2 + 11) = 0;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
    *(v2 + 28) = objc_alloc_init(NSMutableArray);
    v3->_pingPongNth = 0;
  }

  qword_100298488 = v3;
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiRoamManager;
  [(WiFiRoamManager *)&v3 dealloc];
}

- (void)setRoamStart:(id)start forInterface:(id)interface
{
  v7 = objc_autoreleasePoolPush();
  if (([(WiFiRoamManager *)self stateFlags]& 1) == 0)
  {
    [(WiFiRoamManager *)self setStateFlags:[(WiFiRoamManager *)self stateFlags]| 1];
    roamScanStart = self->_roamScanStart;
    if (roamScanStart)
    {
    }

    self->_roamScanStart = [start copy];
    +[NSDate timeIntervalSinceReferenceDate];
    self->_roamScanStartTimestamp = v9;
    self->_roamScanEndTimestamp = 0.0;
    *&self->_isRoamLateDueToDelta = 256;
    *&self->_minRssiDeltaInRoamCache = 0;
    v10 = [(NSDictionary *)self->_roamScanStart objectForKey:@"ROAM_LAST_STATUS"];
    v11 = [(NSDictionary *)self->_roamScanStart objectForKey:@"ROAM_SCAN_REASON"];
    v12 = objc_autoreleasePoolPush();
    v13 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
    if (off_100298C40)
    {
      v13 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
      [off_100298C40 WFLog:3 message:{"%s: Status:%u Reason:%d (%@)", "-[WiFiRoamManager setRoamStart:forInterface:]", objc_msgSend(v10, "unsignedIntValue") & 0x1FF, objc_msgSend(v11, "unsignedIntValue") & 0x1FF, +[WiFiRoamManager stringRepresentationWithReason:](WiFiRoamManager, "stringRepresentationWithReason:", objc_msgSend(v11, "unsignedIntValue"))}];
    }

    objc_autoreleasePoolPop(v12);
    [(WiFiRoamManager *)self setLastRoamOriginChannelScore:[(WiFiRoamManager *)self lastChannelScore]];
    -[WiFiUsageMonitor setRoamingState:withReason:asString:andStatus:asString:andLatency:andRoamData:andPingPongSequence:forInterface:](+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor, "sharedInstance"), "setRoamingState:withReason:asString:andStatus:asString:andLatency:andRoamData:andPingPongSequence:forInterface:", self->_roamingState, [v11 unsignedIntValue], objc_msgSend(v13 + 340, "stringRepresentationWithReason:", objc_msgSend(v11, "unsignedIntValue")), objc_msgSend(v10, "unsignedIntValue"), objc_msgSend(v13 + 340, "stringRepresentationWithStatus:", objc_msgSend(v10, "unsignedIntValue")), 0, self->_roamScanStart, 0, interface);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)setRoamEndState:(id)state forInterface:(id)interface
{
  v7 = objc_autoreleasePoolPush();
  if (([(WiFiRoamManager *)self stateFlags]& 2) == 0)
  {
    [(WiFiRoamManager *)self setStateFlags:[(WiFiRoamManager *)self stateFlags]| 2];
    roamState = self->_roamState;
    if (roamState)
    {
    }

    interfaceCopy = interface;
    self->_roamState = [state copy];
    +[NSDate timeIntervalSinceReferenceDate];
    [(WiFiRoamManager *)self setLastRoamStateTs:?];
    v35 = +[NSMutableString string];
    selfCopy = self;
    v9 = [(NSDictionary *)self->_roamState objectForKey:@"ROAM_CACHE"];
    v30 = [v9 count];
    obj = v9;
    if (v9)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v38 != v12)
            {
              objc_enumerationMutation(obj);
            }

            [v35 appendFormat:@" {%@, %@, %@, %@} ", objc_msgSend(*(*(&v37 + 1) + 8 * i), "objectForKey:", @"BSSID", objc_msgSend(*(*(&v37 + 1) + 8 * i), "objectForKey:", @"RSSI", objc_msgSend(*(*(&v37 + 1) + 8 * i), "objectForKey:", @"CHANNEL", objc_msgSend(*(*(&v37 + 1) + 8 * i), "objectForKey:", @"CHANNEL_FLAGS"];
          }

          v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v11);
      }
    }

    v33 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAM_LAST_STATUS"];
    v14 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAM_SCAN_REASON"];
    v15 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_FLAGS"];
    v16 = [(NSDictionary *)selfCopy->_roamStatus objectForKey:@"ROAMEDEVENT_TIME_STARTED"];
    v28 = [(NSDictionary *)selfCopy->_roamStatus objectForKey:@"ROAMEDEVENT_TIME_ENDED"];
    unsignedLongValue = [v28 unsignedLongValue];
    v29 = v16;
    unsignedLongValue2 = [v16 unsignedLongValue];
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Rssi: %d Count: %d Age: %d LastStatus: %d Reason: %d Flags:%lX RoamCache: %lu - %@", "-[WiFiRoamManager setRoamEndState:forInterface:]", objc_msgSend(-[NSDictionary objectForKey:](selfCopy->_roamState, "objectForKey:", @"RSSI", "unsignedIntValue"), objc_msgSend(-[NSDictionary objectForKey:](selfCopy->_roamState, "objectForKey:", @"ROAM_SCAN_COUNT", "unsignedIntValue"), objc_msgSend(-[NSDictionary objectForKey:](selfCopy->_roamState, "objectForKey:", @"ROAM_SCAN_AGE", "unsignedIntValue"), objc_msgSend(-[NSDictionary objectForKey:](selfCopy->_roamState, "objectForKey:", @"ROAM_LAST_STATUS", "unsignedIntValue") & 0x1FF, objc_msgSend(-[NSDictionary objectForKey:](selfCopy->_roamState, "objectForKey:", @"ROAM_SCAN_REASON", "unsignedIntValue") & 0x1FF, objc_msgSend(v15, "unsignedIntegerValue"), v30, v35}];
    }

    objc_autoreleasePoolPop(v19);
    [(WiFiRoamManager *)selfCopy detectLateRoam];
    if (obj)
    {
      [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor updateRoamCache:"updateRoamCache:forInterface:" forInterface:obj, interfaceCopy];
    }

    if ([v33 unsignedIntValue])
    {
      v36 = unsignedLongValue - unsignedLongValue2;
      selfCopy->_roamingState = 0;
      v20 = +[WiFiUsageMonitor sharedInstance];
      roamingState = selfCopy->_roamingState;
      unsignedIntValue = [v14 unsignedIntValue];
      v23 = +[WiFiRoamManager stringRepresentationWithReason:](WiFiRoamManager, "stringRepresentationWithReason:", [v14 unsignedIntValue]);
      unsignedIntValue2 = [v33 unsignedIntValue];
      v25 = +[WiFiRoamManager stringRepresentationWithStatus:](WiFiRoamManager, "stringRepresentationWithStatus:", [v33 unsignedIntValue]);
      if (v28)
      {
        v26 = v29 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v36;
      }

      [(WiFiUsageMonitor *)v20 setRoamingState:roamingState withReason:unsignedIntValue asString:v23 andStatus:unsignedIntValue2 asString:v25 andLatency:v27 andRoamData:selfCopy->_roamState andPingPongSequence:0 forInterface:interfaceCopy];
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)setRoamPrep:(id)prep forInterface:(id)interface
{
  v7 = objc_autoreleasePoolPush();
  if (([(WiFiRoamManager *)self stateFlags]& 4) == 0)
  {
    [(WiFiRoamManager *)self setStateFlags:[(WiFiRoamManager *)self stateFlags]| 4];
    roamPrep = self->_roamPrep;
    if (roamPrep)
    {
    }

    v9 = [prep copy];
    self->_roamPrep = v9;
    self->_roamingState = 1;
    v10 = [(NSDictionary *)v9 objectForKey:@"ROAM_SCAN_REASON"];
    -[WiFiUsageMonitor setRoamingState:withReason:asString:andStatus:asString:andLatency:andRoamData:andPingPongSequence:forInterface:](+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor, "sharedInstance"), "setRoamingState:withReason:asString:andStatus:asString:andLatency:andRoamData:andPingPongSequence:forInterface:", self->_roamingState, [v10 unsignedIntValue], +[WiFiRoamManager stringRepresentationWithReason:](WiFiRoamManager, "stringRepresentationWithReason:", objc_msgSend(v10, "unsignedIntValue")), 0x7FFFFFFFFFFFFFFFLL, 0, 0, self->_roamPrep, 0, interface);
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Will roam to candidate: %@", "-[WiFiRoamManager setRoamPrep:forInterface:]", -[NSDictionary objectForKey:](self->_roamPrep, "objectForKey:", @"BSSID"}];
    }

    objc_autoreleasePoolPop(v11);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)setRoamStatus:(id)status withBeaconCache:(id)cache forInterface:(id)interface
{
  v9 = objc_autoreleasePoolPush();
  if (([(WiFiRoamManager *)self stateFlags]& 8) == 0)
  {
    [(WiFiRoamManager *)self setStateFlags:[(WiFiRoamManager *)self stateFlags]| 8];
    roamStatus = self->_roamStatus;
    if (roamStatus)
    {
    }

    interfaceCopy = interface;
    self->_roamStatus = [status copy];
    +[NSDate timeIntervalSinceReferenceDate];
    self->_roamScanEndTimestamp = v11;
    v12 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_TIME_STARTED"];
    v13 = [-[NSDictionary objectForKey:](self->_roamStatus objectForKey:{@"ROAMEDEVENT_TIME_ENDED", "unsignedLongValue"}];
    unsignedLongValue = [v12 unsignedLongValue];
    v15 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_STATUS"];
    v35 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_REASON"];
    v16 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_FLAGS"];
    v32 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_CHANNELS_SCANNED_COUNT"];
    v17 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_TARGET_RSSI"];
    if (([v15 unsignedIntegerValue] & 0x1FF) != 0)
    {
      v30 = 0;
      v31 = 0;
      detectPingPong = 0;
    }

    else
    {
      detectPingPong = [(WiFiRoamManager *)self detectPingPong];
      self->_pingPongNth = detectPingPong;
      v31 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAM_SCAN_SUMMARY"];
      v30 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAM_PKT_LOSS_INFO"];
    }

    v34 = v13 - unsignedLongValue;
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      context = v19;
      [off_100298C40 WFLog:3 message:{"%s: Latency:%ld Status:%u (%@) Reason:%d (%@) ScannedChannelCount:%lu Flags:%lX PingPongNth:%lu scanSummary:%@ lossSummary:%@", "-[WiFiRoamManager setRoamStatus:withBeaconCache:forInterface:]", v34, objc_msgSend(v15, "unsignedIntValue") & 0x1FF, +[WiFiRoamManager stringRepresentationWithStatus:](WiFiRoamManager, "stringRepresentationWithStatus:", objc_msgSend(v15, "unsignedIntValue")), objc_msgSend(v35, "unsignedIntValue") & 0x1FF, +[WiFiRoamManager stringRepresentationWithReason:](WiFiRoamManager, "stringRepresentationWithReason:", objc_msgSend(v35, "unsignedIntValue")), objc_msgSend(v32, "unsignedIntegerValue"), objc_msgSend(v16, "unsignedIntegerValue"), detectPingPong, v31, v30}];
      v19 = context;
    }

    objc_autoreleasePoolPop(v19);
    if (detectPingPong)
    {
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: previous roams:%@", "-[WiFiRoamManager setRoamStatus:withBeaconCache:forInterface:]", self->_previousRoams}];
      }

      objc_autoreleasePoolPop(v20);
    }

    [(WiFiRoamManager *)self detectLateRoam];
    -[WiFiRoamManager setLastRoamEventStatus:](self, "setLastRoamEventStatus:", [v15 unsignedIntValue]);
    +[NSDate timeIntervalSinceReferenceDate];
    [(WiFiRoamManager *)self setLastRoamStatusTs:?];
    -[WiFiRoamManager setLastRoamTargetRssi:](self, "setLastRoamTargetRssi:", [v17 intValue]);
    if (cache)
    {
      [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor updateBeaconCache:"updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:" afterRoamAttempt:cache whileCurrentBSSID:self->_roamStatus forInterface:[(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_ORIGIN_ADDR"], interface];
    }

    self->_roamingState = 0;
    v21 = +[WiFiUsageMonitor sharedInstance];
    roamingState = self->_roamingState;
    unsignedIntValue = [v35 unsignedIntValue];
    v24 = +[WiFiRoamManager stringRepresentationWithReason:](WiFiRoamManager, "stringRepresentationWithReason:", [v35 unsignedIntValue]);
    unsignedIntValue2 = [v15 unsignedIntValue];
    v26 = +[WiFiRoamManager stringRepresentationWithStatus:](WiFiRoamManager, "stringRepresentationWithStatus:", [v15 unsignedIntValue]);
    v27 = self->_roamStatus;
    if (self->_pingPongNth)
    {
      v28 = [(NSMutableArray *)self->_previousRoams valueForKey:@"reason"];
    }

    else
    {
      v28 = 0;
    }

    [(WiFiUsageMonitor *)v21 setRoamingState:roamingState withReason:unsignedIntValue asString:v24 andStatus:unsignedIntValue2 asString:v26 andLatency:v34 andRoamData:v27 andPingPongSequence:v28 forInterface:interfaceCopy];
  }

  objc_autoreleasePoolPop(v9);
}

- (id)copyRoamStatus
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSDictionary *)self->_roamStatus copy];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (void)setRealtimeSessionNotification:(id)notification forInterface:(id)interface
{
  if ([notification objectForKeyedSubscript:{@"QUAL_SCORE", interface}])
  {
    if ([objc_msgSend(notification objectForKeyedSubscript:{@"QUAL_SCORE", "objectForKeyedSubscript:", @"CHANQUAL_SCORE"}])
    {
      v6 = [objc_msgSend(notification objectForKeyedSubscript:{@"QUAL_SCORE", "objectForKeyedSubscript:", @"CHANQUAL_SCORE"}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        shortValue = [v6 shortValue];

        [(WiFiRoamManager *)self setLastChannelScore:shortValue];
      }

      else
      {
        sub_10013B930(v6);
      }
    }

    else
    {
      sub_10013B9CC(notification);
    }
  }

  else
  {
    sub_10013BA50(notification);
  }
}

- (void)setLinkDown
{
  v3 = objc_autoreleasePoolPush();
  [(WiFiRoamManager *)self setDeviceMotionState:0];
  [(WiFiRoamManager *)self setLinkUpTimestamp:0.0];
  [(WiFiRoamManager *)self setBssEnvironment:0];
  [(WiFiRoamManager *)self setCurrentBand:0];
  [(WiFiRoamManager *)self reset];
  [(WiFiRoamManager *)self setWindowTimestamp:0.0];
  [(WiFiRoamManager *)self setLastRoamStateTs:0.0];
  [(WiFiRoamManager *)self setLastRoamStatusTs:0.0];

  objc_autoreleasePoolPop(v3);
}

- (void)reset
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiRoamManager reset]"}];
  }

  objc_autoreleasePoolPop(v4);
  self->_roamingState = 0;
  self->_roamScanStartTimestamp = 0.0;
  self->_roamScanEndTimestamp = 0.0;

  self->_roamScanStart = 0;
  self->_roamPrep = 0;

  self->_roamStatus = 0;
  [(WiFiRoamManager *)self setLastHostTriggeredRoamReason:0];
  [(WiFiRoamManager *)self setStateFlags:0];

  objc_autoreleasePoolPop(v3);
}

- (void)setBTState:(int64_t)state type:(int64_t)type
{
  v7 = objc_autoreleasePoolPush();
  [(WiFiRoamManager *)self setBtState:state];
  [(WiFiRoamManager *)self setBtType:type];
  +[NSDate timeIntervalSinceReferenceDate];
  [(WiFiRoamManager *)self setBtStateChangeTimestamp:?];
  if ([(WiFiRoamManager *)self btType]== 102)
  {
    btState = [(WiFiRoamManager *)self btState];
    if (btState == 1)
    {
      v9 = 1;
    }

    else
    {
      if (btState != 2)
      {
        goto LABEL_8;
      }

      v9 = 2;
    }

    if ([(WiFiRoamManager *)self currentBand]== 1)
    {
      [(WiFiRoamManager *)self roamWithReason:v9 bandPreference:0];
    }
  }

LABEL_8:

  objc_autoreleasePoolPop(v7);
}

- (BOOL)allowRoam:(signed __int16)roam
{
  roamCopy = roam;
  v5 = objc_autoreleasePoolPush();
  bssEnvironment = [(WiFiRoamManager *)self bssEnvironment];
  v7 = (bssEnvironment < 5) & (0x1Au >> bssEnvironment);
  bssEnvironment2 = [(WiFiRoamManager *)self bssEnvironment];
  if ((v7 & 1) == 0 && (bssEnvironment2 - 5) >= 2)
  {
    sub_10013BACC(self);
    goto LABEL_11;
  }

  [(WiFiRoamManager *)self linkUpTimestamp];
  if (v9 == 0.0)
  {
    sub_10013BC28();
    goto LABEL_11;
  }

  if ([(WiFiRoamManager *)self awdlRealTimeModeActive])
  {
    sub_10013BBBC();
    goto LABEL_11;
  }

  if (![(WiFiRoamManager *)self ipAddrAssigned])
  {
    sub_10013BB50();
    goto LABEL_11;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  [(WiFiRoamManager *)self linkUpTimestamp];
  v13 = v11 - v12;
  [(WiFiRoamManager *)self paramMinRoamWaitTimeFromLinkUpInSec];
  if (v13 >= v14)
  {
    if ([(WiFiRoamManager *)self roamingState])
    {
      isLastRoamDueToLowRssi = [(WiFiRoamManager *)self isLastRoamDueToLowRssi];
      if (roamCopy == 6)
      {
        if (isLastRoamDueToLowRssi)
        {
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: TD related roaming not allowed as low RSSI roaming is in progress", "-[WiFiRoamManager allowRoam:]"}];
          }

          v18 = v21;
          goto LABEL_10;
        }
      }
    }

    [(WiFiRoamManager *)self windowTimestamp];
    if (v22 == 0.0 || ([(WiFiRoamManager *)self windowTimestamp], v24 = v11 - v23, [(WiFiRoamManager *)self paramWindowSizeInSec], v24 >= v25))
    {
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Resetting window", "-[WiFiRoamManager allowRoam:]"}];
      }

      objc_autoreleasePoolPop(v33);
      [(WiFiRoamManager *)self setWindowTimestamp:v11];
      [(WiFiRoamManager *)self setRoamAttemptCount:0];
      [(WiFiRoamManager *)self lastRoamAttemptTimestamp];
      if (v34 != 0.0)
      {
        [(WiFiRoamManager *)self lastRoamAttemptTimestamp];
        v36 = v11 - v35;
        [(WiFiRoamManager *)self paramMinRoamRetryWaitTime];
        if (v36 <= v37)
        {
          v15 = objc_autoreleasePoolPush();
          v39 = off_100298C40;
          if (off_100298C40)
          {
            [(WiFiRoamManager *)self lastRoamAttemptTimestamp];
            [v39 WFLog:3 message:{"%s: Not allowed as last attempt was %2.2f sec ago ", "-[WiFiRoamManager allowRoam:]", v11 - v40, v45}];
          }

          goto LABEL_9;
        }
      }
    }

    else
    {
      roamAttemptCount = [(WiFiRoamManager *)self roamAttemptCount];
      if (roamAttemptCount >= [(WiFiRoamManager *)self paramMaxRoamRetriesInWindow])
      {
        v15 = objc_autoreleasePoolPush();
        v41 = off_100298C40;
        if (off_100298C40)
        {
          [(WiFiRoamManager *)self windowTimestamp];
          v43 = v11 - v42;
          [(WiFiRoamManager *)self paramWindowSizeInSec];
          [v41 WFLog:3 message:{"%s: Not allowed as max attempts made. Only %2.2f sec into window size %2.2f", "-[WiFiRoamManager allowRoam:]", *&v43, v44}];
        }

        goto LABEL_9;
      }

      [(WiFiRoamManager *)self lastRoamAttemptTimestamp];
      if (v27 != 0.0)
      {
        [(WiFiRoamManager *)self lastRoamAttemptTimestamp];
        v29 = v11 - v28;
        [(WiFiRoamManager *)self paramMinRoamRetryWaitTime];
        if (v29 <= v30)
        {
          v15 = objc_autoreleasePoolPush();
          v31 = off_100298C40;
          if (off_100298C40)
          {
            [(WiFiRoamManager *)self lastRoamAttemptTimestamp];
            [v31 WFLog:3 message:{"%s: Not allowed as last attempt was %2.2f sec ago", "-[WiFiRoamManager allowRoam:]", v11 - v32, v45}];
          }

          goto LABEL_9;
        }
      }
    }

    [(WiFiRoamManager *)self setRoamAttemptCount:[(WiFiRoamManager *)self roamAttemptCount]+ 1];
    [(WiFiRoamManager *)self setLastRoamAttemptTimestamp:v11];
    v19 = 1;
    goto LABEL_30;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = off_100298C40;
  if (off_100298C40)
  {
    [(WiFiRoamManager *)self linkUpTimestamp];
    [v16 WFLog:3 message:{"%s: Not allowed as link up was %2.2f sec ago", "-[WiFiRoamManager allowRoam:]", v11 - v17, v45}];
  }

LABEL_9:
  v18 = v15;
LABEL_10:
  objc_autoreleasePoolPop(v18);
LABEL_11:
  v19 = 0;
LABEL_30:
  objc_autoreleasePoolPop(v5);
  return v19;
}

- (BOOL)canSubmitMetrics
{
  Current = CFAbsoluteTimeGetCurrent();
  if (([(WiFiRoamManager *)self stateFlags]& 8) != 0 && ([(WiFiRoamManager *)self lastRoamSuppressionRemovalTime], Current - v4 > 30.0))
  {
    v5 = ([(WiFiRoamManager *)self stateFlags]>> 1) & 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v7 = "No";
    if (v5)
    {
      v7 = "Yes";
    }

    [off_100298C40 WFLog:3 message:{"%s: %s", "-[WiFiRoamManager canSubmitMetrics]", v7}];
  }

  objc_autoreleasePoolPop(v6);
  return v5;
}

- (unint64_t)detectPingPong
{
  if (!self->_roamStatus)
  {
    NSLog(@"%s - _roamStatus not available. bail", a2, "[WiFiRoamManager detectPingPong]");
    return 0;
  }

  if (![(WiFiRoamManager *)self previousRoams])
  {
    NSLog(@"%s - previousRoams not available. bail", v3, "[WiFiRoamManager detectPingPong]");
    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_REASON"];
  v6 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_TARGET_ADDR"];
  v7 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_ORIGIN_ADDR"];
  if ([v6 isEqualToData:v7])
  {
    NSLog(@"%s - roamTarget (%@) and roamOrigin (%@) are identical, bail", "[WiFiRoamManager detectPingPong]", v6, v7);
LABEL_29:
    objc_autoreleasePoolPop(v4);
    return 0;
  }

  v8 = +[PreviousRoam roamWithBssid:andReason:](PreviousRoam, "roamWithBssid:andReason:", v6, [v5 unsignedIntValue]);
  if (!v8)
  {
    NSLog(@"%s - cannot get instance of PreviousRoam class, bail", "[WiFiRoamManager detectPingPong]");
    goto LABEL_29;
  }

  [(NSMutableArray *)self->_previousRoams addObject:v8];
  v9 = [NSMutableSet setWithCapacity:2];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [-[NSMutableArray reverseObjectEnumerator](self->_previousRoams "reverseObjectEnumerator")];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    v14 = -1;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        [objc_msgSend(v16 "timestamp")];
        if (v17 < -60.0 && v14 <= [(NSMutableArray *)self->_previousRoams indexOfObject:v16])
        {
          v14 = [(NSMutableArray *)self->_previousRoams indexOfObject:v16];
        }

        if ((-[NSMutableSet containsObject:](v9, "containsObject:", [v16 bssid]) & 1) != 0 || -[NSMutableSet count](v9, "count") != 2)
        {
          -[NSMutableSet addObject:](v9, "addObject:", [v16 bssid]);
        }

        else if (v14 <= [(NSMutableArray *)self->_previousRoams indexOfObject:v16])
        {
          v14 = [(NSMutableArray *)self->_previousRoams indexOfObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
    if ((v14 & 0x8000000000000000) == 0)
    {
      [(NSMutableArray *)self->_previousRoams removeObjectsInRange:0, v14 + 1];
    }
  }

  v18 = [(NSMutableArray *)self->_previousRoams count];
  previousRoams = self->_previousRoams;
  v20 = (v18 - 2) & ~((v18 - 2) >> 63);
  NSLog(@"%s - _previousRoams:%@\npingPongNth=%ld (-->%lu)", "[WiFiRoamManager detectPingPong]", previousRoams, v18 - 2, v20);
  objc_autoreleasePoolPop(v4);
  return v20;
}

- (void)setDeviceMotionState:(unsigned __int16)state
{
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  [(WiFiRoamManager *)self linkUpTimestamp];
  if (v6 != 0.0)
  {
    [(WiFiRoamManager *)self setDeviceStationary:stateCopy == 1];
  }

  objc_autoreleasePoolPop(v5);
}

+ (id)stringRepresentationWithStatus:(int)status
{
  if (!status)
  {
    return @"Success";
  }

  v3 = convertApple80211ReturnToString();

  return [NSString stringWithCString:v3 encoding:4];
}

+ (id)stringRepresentationWithReason:(int)reason
{
  v3 = convertApple80211ReturnToString();

  return [NSString stringWithCString:v3 encoding:4];
}

+ (id)stringRepresentationWithHostReason:(int64_t)reason
{
  if (reason >= 7)
  {
    return [NSString stringWithFormat:@"Unknown=%ld", reason];
  }

  else
  {
    return *(&off_10025ECB8 + reason);
  }
}

- (BOOL)isLastRoamDueToLowRssi
{
  roamScanStart = self->_roamScanStart;
  if (roamScanStart)
  {
    v3 = [(NSDictionary *)roamScanStart objectForKey:@"ROAM_SCAN_REASON"];
    LOBYTE(roamScanStart) = v3 && [v3 unsignedIntValue] == -528348159;
  }

  return roamScanStart;
}

- (BOOL)detectLateRoam
{
  v3 = objc_autoreleasePoolPush();
  if (!self->_roamState)
  {
    goto LABEL_41;
  }

  roamStatus = self->_roamStatus;
  if (!roamStatus)
  {
    goto LABEL_41;
  }

  v5 = [(NSDictionary *)roamStatus objectForKey:@"ROAMEDEVENT_STATUS"];
  v6 = [(NSDictionary *)self->_roamStatus objectForKey:@"ROAMEDEVENT_REASON"];
  if ([v5 unsignedIntValue] != -528350205 && objc_msgSend(v5, "unsignedIntValue") != -528350133)
  {
    goto LABEL_41;
  }

  if ([v6 unsignedIntegerValue] != 3766619137)
  {
    goto LABEL_41;
  }

  v44 = [-[NSDictionary objectForKey:](self->_roamState objectForKey:{@"RSSI", "unsignedIntValue"}];
  v7 = [(NSDictionary *)self->_roamState objectForKey:@"ROAM_CACHE"];
  if (!v7)
  {
    v40 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: no roam cache", "-[WiFiRoamManager detectLateRoam]"}];
    }

    objc_autoreleasePoolPop(v40);
    goto LABEL_41;
  }

  v8 = v7;
  v9 = [v7 count];
  if (!v9)
  {
LABEL_41:
    v39 = 0;
    goto LABEL_42;
  }

  context = v3;
  v17 = sub_1000082C8(v9, v10, v11, v12, v13, v14, v15, v16);
  if (!v17)
  {
    v43 = 0;
    goto LABEL_35;
  }

  v18 = v17;
  v19 = 0;
  v43 = 0;
  v20 = MEMORY[0];
  do
  {
    v21 = 0;
    do
    {
      if (MEMORY[0] != v20)
      {
        objc_enumerationMutation(v8);
      }

      v22 = *(8 * v21);
      if (!v22)
      {
        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: ERROR: no roam candidate at idx %d in cache with count %lu ", "-[WiFiRoamManager detectLateRoam]", v19, objc_msgSend(v8, "count")}];
        }

        goto LABEL_19;
      }

      v23 = [objc_msgSend(*(8 * v21) objectForKey:{@"RSSI", "unsignedIntValue"}];
      v24 = v23;
      if (v23 <= -90)
      {
        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Roam candidate %d has weak RSSI %d ", "-[WiFiRoamManager detectLateRoam]", v19, v24}];
        }

LABEL_19:
        objc_autoreleasePoolPop(v25);
        goto LABEL_20;
      }

      v34 = v23 - v44;
      v35 = [v22 objectForKey:@"BSSID"];
      v36 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Roam candidate %@ (idx %d) has RSSI delta %d ", "-[WiFiRoamManager detectLateRoam]", v35, v19, v34}];
      }

      objc_autoreleasePoolPop(v36);
      if ((v34 - 1) <= 0xB)
      {
        [(WiFiRoamManager *)self setIsRoamLateDueToDelta:1];
        if (![(WiFiRoamManager *)self minRssiDeltaInRoamCache]|| v34 < [(WiFiRoamManager *)self minRssiDeltaInRoamCache])
        {
          [(WiFiRoamManager *)self setMinRssiDeltaInRoamCache:v34];
        }

        if (![(WiFiRoamManager *)self maxRssiDeltaInRoamCache]|| (v26 = [(WiFiRoamManager *)self maxRssiDeltaInRoamCache], v34 > v26))
        {
          v26 = [(WiFiRoamManager *)self setMaxRssiDeltaInRoamCache:v34];
        }

        v43 = 1;
      }

LABEL_20:
      v19 = (v19 + 1);
      v21 = v21 + 1;
    }

    while (v18 != v21);
    v37 = sub_1000082C8(v26, v27, v28, v29, v30, v31, v32, v33);
    v18 = v37;
  }

  while (v37);
LABEL_35:
  v38 = objc_autoreleasePoolPush();
  v39 = v43;
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isLateRoam: %d", "-[WiFiRoamManager detectLateRoam]", v43 & 1}];
  }

  objc_autoreleasePoolPop(v38);
  v3 = context;
LABEL_42:
  objc_autoreleasePoolPop(v3);
  return v39 & 1;
}

@end