@interface WiFiUserInteractionMonitor
+ (BOOL)checkIfMatchesHomeBundleIds:(id)ids;
+ (BOOL)checkIfMatchesNonNetworkingBundleIds:(id)ids;
+ (id)sharedInstance;
- (BOOL)_canTrigger11axPerfStudyForFlowNamed:(id)named withProperties:(unint64_t)properties andClassification:(unsigned int)classification;
- (BOOL)_isCellularDataAllowedForApp:(id)app;
- (BOOL)canTrigger11axPerfStudyForBackgroundFlows;
- (BOOL)canTrigger11axPerfStudyForForegroundFlows;
- (BOOL)getCellularData:(id)data;
- (BOOL)hasRealTimeAppProperty:(id)property;
- (BOOL)isAVConferenceActive;
- (BOOL)isAnyCallInProgress;
- (BOOL)isAskToJoinAllowed;
- (BOOL)isCarModeActive;
- (BOOL)isCellularDataAttachedAndActive;
- (BOOL)isCellularDataDisabledByUser;
- (BOOL)isCellularDataUsable;
- (BOOL)isCellularInexpensive5G;
- (BOOL)isCoPresenceActive;
- (BOOL)isInHomeScreen;
- (BOOL)isInNonNetworkingApp;
- (BOOL)isInitialSetupCompleted;
- (BOOL)isLowQualityNetwork:(__WiFiNetwork *)network;
- (BOOL)isNearbyDeviceRecommendationAllowed;
- (BOOL)isNetworkRecommendationAllowed;
- (BOOL)isNetworkingAppInForeground;
- (BOOL)isPersonalHotspotRecommendationAllowed;
- (BOOL)isPriorityNetwork:(__WiFiNetwork *)network;
- (BOOL)isPublicNetwork:(__WiFiNetwork *)network;
- (BOOL)isRealTimeAppActive;
- (BOOL)isSetupCompleted;
- (BOOL)isWiFiCallInProgress;
- (BOOL)wasRecommendedNetworkRecentlyJoined;
- (NSString)description;
- (id)_initPrivate;
- (id)_stateInfo;
- (unint64_t)_applicationNotifyState;
- (void)_notifyCaptiveWithApplicationState;
- (void)_updateCallState;
- (void)dealloc;
- (void)dumpOverrideNetworkState;
- (void)navigationListener:(id)listener didChangeNavigationState:(unint64_t)state transportType:(int)type;
- (void)registerStateChangeCallback:(id)callback withCallbackContext:(void *)context;
- (void)resetBackgroundApps;
- (void)resetOverrideNetworkStates;
- (void)resetOverrideStates;
- (void)runPeriodicTasks;
- (void)setApplicationRunningState:(BOOL)state foregroundState:(BOOL)foregroundState andNetworkingState:(BOOL)networkingState forBundleId:(id)id;
- (void)setOverrideApplicationState:(unint64_t)state;
- (void)startMonitoringInterface:(id)interface;
- (void)unregisterStateChangeCallback:(void *)callback;
- (void)updateLastRecommendedNetworkJoinTimestamp;
- (void)updateOverrideNetworkState:(id)state overrideValue:(unint64_t)value;
@end

@implementation WiFiUserInteractionMonitor

+ (id)sharedInstance
{
  if (qword_100298B68 != -1)
  {
    sub_100024AA0();
  }

  v3 = qword_100298B60;

  return v3;
}

- (BOOL)isSetupCompleted
{
  if (&_BYSetupAssistantNeedsToRun && ![(WiFiUserInteractionMonitor *)self setupCompleted])
  {
    [(WiFiUserInteractionMonitor *)self setSetupCompleted:BYSetupAssistantNeedsToRun() ^ 1];
    v3 = objc_autoreleasePoolPush();
    v4 = off_100298C40;
    if (off_100298C40)
    {
      setupCompleted = [(WiFiUserInteractionMonitor *)self setupCompleted];
      v6 = "not completed";
      if (setupCompleted)
      {
        v6 = "completed";
      }

      [v4 WFLog:3 message:{"%s: Setup is %s", "-[WiFiUserInteractionMonitor isSetupCompleted]", v6}];
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    [(WiFiUserInteractionMonitor *)self setSetupCompleted:1];
  }

  return [(WiFiUserInteractionMonitor *)self setupCompleted];
}

- (BOOL)isRealTimeAppActive
{
  if ([(WiFiUserInteractionMonitor *)self overrideApplicationState])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden application state as %llu", "-[WiFiUserInteractionMonitor isRealTimeAppActive]", -[WiFiUserInteractionMonitor overrideApplicationState](self, "overrideApplicationState")}];
    }

    objc_autoreleasePoolPop(v3);
    return ([(WiFiUserInteractionMonitor *)self overrideApplicationState]>> 6) & 1;
  }

  else if (-[WiFiUserInteractionMonitor isWiFiCallInProgress](self, "isWiFiCallInProgress") || (-[WiFiUserInteractionMonitor rtTrafficAgent](self, "rtTrafficAgent"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isActive], v5, (v6 & 1) != 0))
  {
LABEL_17:
    LOBYTE(v4) = 1;
  }

  else
  {
    appTrackerLock = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [appTrackerLock lock];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    runningForegroundApps = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    allObjects = [runningForegroundApps allObjects];

    v10 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          if ([(WiFiUserInteractionMonitor *)self hasRealTimeAppProperty:*(*(&v17 + 1) + 8 * i)])
          {
            appTrackerLock2 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
            [appTrackerLock2 unlock];

            goto LABEL_17;
          }
        }

        v11 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    appTrackerLock3 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [appTrackerLock3 unlock];

    LOBYTE(v4) = [(WiFiUserInteractionMonitor *)self _isSymptomTrackingRtTrafficForFlowNamed:@"foreground" withProperties:[(WiFiUserInteractionMonitor *)self symptomForegroundFlowProperties] andClassification:[(WiFiUserInteractionMonitor *)self symptomForegroundFlowClassification]];
  }

  return v4;
}

- (BOOL)isWiFiCallInProgress
{
  if ([(WiFiUserInteractionMonitor *)self wifiCallInProgress])
  {
    return 1;
  }

  rtTrafficAgent = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  isActive = [rtTrafficAgent isActive];

  return isActive;
}

- (unint64_t)_applicationNotifyState
{
  appTrackerLock = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock lock];

  runningNetworkingApps = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
  v5 = [NSMutableSet setWithSet:runningNetworkingApps];

  runningForegroundApps = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
  [v5 minusSet:runningForegroundApps];

  runningForegroundApps2 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
  v8 = [runningForegroundApps2 count];

  appTrackerLock2 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock2 unlock];

  v10 = ![(WiFiUserInteractionMonitor *)self isDeviceLocked]&& ![(WiFiUserInteractionMonitor *)self navigating]&& [(WiFiUserInteractionMonitor *)self isDisplayOn]&& (![(WiFiUserInteractionMonitor *)self isInNonNetworkingApp]&& v8 || [(WiFiUserInteractionMonitor *)self wasRecommendedNetworkRecentlyJoined]);
  if ([v5 count])
  {
    v10 |= 2uLL;
  }

  return v10;
}

- (void)_notifyCaptiveWithApplicationState
{
  if (dword_100298B70)
  {
    if ([(WiFiUserInteractionMonitor *)self wifiUserNotifyPending])
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: application state notification is already pending", "-[WiFiUserInteractionMonitor _notifyCaptiveWithApplicationState]"}];
      }

      objc_autoreleasePoolPop(v3);
    }

    else
    {
      [(WiFiUserInteractionMonitor *)self setWifiUserNotifyPending:1];
      notifyQueue = [(WiFiUserInteractionMonitor *)self notifyQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006424;
      block[3] = &unk_10025E9B8;
      block[4] = self;
      dispatch_async(notifyQueue, block);
    }
  }

  else
  {
    sub_1001AFF44();
  }
}

- (BOOL)isNetworkRecommendationAllowed
{
  if (![(WiFiUserInteractionMonitor *)self isSetupCompleted])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: setup not completed. Not allowing recommendation.", "-[WiFiUserInteractionMonitor isNetworkRecommendationAllowed]", v6, v7}];
    }

    goto LABEL_8;
  }

  if ([(WiFiUserInteractionMonitor *)self navigating]|| [(WiFiUserInteractionMonitor *)self anyCallInProgress])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: navigating(%d) or in call(%d). Not allowing recommendation.", "-[WiFiUserInteractionMonitor isNetworkRecommendationAllowed]", -[WiFiUserInteractionMonitor navigating](self, "navigating"), -[WiFiUserInteractionMonitor anyCallInProgress](self, "anyCallInProgress")}];
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  if ([(WiFiUserInteractionMonitor *)self isCellularInexpensive5G])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: cellular is 5G and inexpensive. Not allowing recommendation.", "-[WiFiUserInteractionMonitor isNetworkRecommendationAllowed]", v6, v7}];
    }

    goto LABEL_8;
  }

  if ([(WiFiUserInteractionMonitor *)self isUsingSustainedCellularData])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: in active cellular data usage. Allowing recommendation.", "-[WiFiUserInteractionMonitor isNetworkRecommendationAllowed]"}];
    }
  }

  else if ([(WiFiUserInteractionMonitor *)self isNetworkingAppInForeground])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: in FG networking app. Allowing recommendation.", "-[WiFiUserInteractionMonitor isNetworkRecommendationAllowed]"}];
    }
  }

  else
  {
    if ([(WiFiUserInteractionMonitor *)self isInHomeScreen]|| [(WiFiUserInteractionMonitor *)self isInNonNetworkingApp]|| [(WiFiUserInteractionMonitor *)self isCellularDataUsable])
    {
      return 0;
    }

    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: in an app and no cellular. Allowing recommendation.", "-[WiFiUserInteractionMonitor isNetworkRecommendationAllowed]"}];
    }
  }

  v4 = 1;
LABEL_9:
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)isCellularInexpensive5G
{
  selfCopy = self;
  if ([(WiFiUserInteractionMonitor *)self overrideApplicationState])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden inexpensive cellular state as 0x%llx", "-[WiFiUserInteractionMonitor isCellularInexpensive5G]", -[WiFiUserInteractionMonitor overrideApplicationState](selfCopy, "overrideApplicationState")}];
    }

    objc_autoreleasePoolPop(v3);
    return ([(WiFiUserInteractionMonitor *)selfCopy overrideApplicationState]>> 7) & 1;
  }

  else
  {
    cellularDataStatusMap = [(WiFiUserInteractionMonitor *)selfCopy cellularDataStatusMap];

    if (cellularDataStatusMap)
    {
      cellularInterfaceName = [(WiFiUserInteractionMonitor *)selfCopy cellularInterfaceName];
      if (sub_100006D8C(cellularInterfaceName))
      {
        LOBYTE(selfCopy) = 0;
      }

      else
      {
        cellularDataStatusMap2 = [(WiFiUserInteractionMonitor *)selfCopy cellularDataStatusMap];
        LOBYTE(selfCopy) = [cellularDataStatusMap2 containsObject:@"WiFiCellularDataStatus5GAvailable"];
      }
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy;
}

- (BOOL)isInNonNetworkingApp
{
  if ([(WiFiUserInteractionMonitor *)self isInHomeScreen])
  {
    return 1;
  }

  appTrackerLock = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock lock];

  runningForegroundApps = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
  if (runningForegroundApps)
  {
    v5 = runningForegroundApps;
    runningForegroundApps2 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    v7 = [runningForegroundApps2 count];

    if (v7)
    {
      runningForegroundApps3 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
      allObjects = [runningForegroundApps3 allObjects];

      v12 = sub_1000075E0(v10, v11);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0];
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (MEMORY[0] != v14)
            {
              objc_enumerationMutation(allObjects);
            }

            v16 = *(8 * i);
            v17 = [WiFiUserInteractionMonitor checkIfMatchesNonNetworkingBundleIds:v16];
            if ((v17 & 1) == 0)
            {
              v17 = [WiFiUserInteractionMonitor checkIfMatchesHomeBundleIds:v16];
              if (!v17)
              {

                v20 = 0;
                goto LABEL_18;
              }
            }
          }

          v13 = sub_1000075E0(v17, v18);
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: currently no networking app is in the foreground", "-[WiFiUserInteractionMonitor isInNonNetworkingApp]"}];
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v20 = 1;
LABEL_18:
  appTrackerLock2 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock2 unlock];

  return v20;
}

- (BOOL)isInHomeScreen
{
  if ([(WiFiUserInteractionMonitor *)self overrideApplicationState])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden application state as %llu", "-[WiFiUserInteractionMonitor isInHomeScreen]", -[WiFiUserInteractionMonitor overrideApplicationState](self, "overrideApplicationState")}];
    }

    objc_autoreleasePoolPop(v3);
    return ([(WiFiUserInteractionMonitor *)self overrideApplicationState]>> 2) & 1;
  }

  else
  {
    appTrackerLock = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [appTrackerLock lock];

    runningForegroundApps = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    v7 = [runningForegroundApps count];

    if (v7)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      runningForegroundApps2 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
      allObjects = [runningForegroundApps2 allObjects];

      v10 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(allObjects);
            }

            if (![WiFiUserInteractionMonitor checkIfMatchesHomeBundleIds:*(*(&v18 + 1) + 8 * i)])
            {
              appTrackerLock2 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
              [appTrackerLock2 unlock];

              LOBYTE(v4) = 0;
              return v4;
            }
          }

          v11 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no runningForegroundApps", "-[WiFiUserInteractionMonitor isInHomeScreen]"}];
      }

      objc_autoreleasePoolPop(v15);
    }

    appTrackerLock3 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [appTrackerLock3 unlock];

    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)isNetworkingAppInForeground
{
  if ([(WiFiUserInteractionMonitor *)self overrideApplicationState])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden application state as %llu", "-[WiFiUserInteractionMonitor isNetworkingAppInForeground]", -[WiFiUserInteractionMonitor overrideApplicationState](self, "overrideApplicationState")}];
    }

    objc_autoreleasePoolPop(v3);
    return [(WiFiUserInteractionMonitor *)self overrideApplicationState]& 1;
  }

  else if ([(WiFiUserInteractionMonitor *)self isInHomeScreen]|| [(WiFiUserInteractionMonitor *)self isInNonNetworkingApp])
  {
    LOBYTE(appTrackerLock2) = 0;
  }

  else
  {
    appTrackerLock = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [appTrackerLock lock];

    runningForegroundApps = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    v7 = [NSMutableSet setWithSet:runningForegroundApps];

    runningNetworkingApps = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
    [v7 intersectSet:runningNetworkingApps];

    appTrackerLock2 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [appTrackerLock2 unlock];

    LOBYTE(appTrackerLock2) = [v7 count] != 0;
  }

  return appTrackerLock2;
}

- (BOOL)isPersonalHotspotRecommendationAllowed
{
  if (![(WiFiUserInteractionMonitor *)self isSetupCompleted])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: setup not completed. Not allowing recommendation.", "-[WiFiUserInteractionMonitor isPersonalHotspotRecommendationAllowed]", v5, v6}];
    }

    goto LABEL_8;
  }

  if ([(WiFiUserInteractionMonitor *)self navigating]|| [(WiFiUserInteractionMonitor *)self anyCallInProgress])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: navigating(%d) or in call(%d). Not allowing recommendation.", "-[WiFiUserInteractionMonitor isPersonalHotspotRecommendationAllowed]", -[WiFiUserInteractionMonitor navigating](self, "navigating"), -[WiFiUserInteractionMonitor anyCallInProgress](self, "anyCallInProgress")}];
    }

LABEL_8:
    objc_autoreleasePoolPop(v3);
    return 0;
  }

  if ([(WiFiUserInteractionMonitor *)self isCellularInexpensive5G])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: cellular is 5G and inexpensive. Not allowing recommendation.", "-[WiFiUserInteractionMonitor isPersonalHotspotRecommendationAllowed]", v5, v6}];
    }

    goto LABEL_8;
  }

  if ([(WiFiUserInteractionMonitor *)self isDeviceLocked]|| ![(WiFiUserInteractionMonitor *)self isDisplayOn])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Device locked or Display is OFF. Not allowing recommendation.", "-[WiFiUserInteractionMonitor isPersonalHotspotRecommendationAllowed]", v5, v6}];
    }

    goto LABEL_8;
  }

  return 1;
}

- (BOOL)isCellularDataUsable
{
  cellularDataStatusMap = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];

  if (cellularDataStatusMap)
  {
    cellularDataStatusMap2 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];
    v5 = [cellularDataStatusMap2 containsObject:@"WiFiCellularDataStatusNoLTE"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)runPeriodicTasks
{
  v3 = +[NSDate date];
  periodicTasksLastRanAt = [(WiFiUserInteractionMonitor *)self periodicTasksLastRanAt];
  [v3 timeIntervalSinceDate:periodicTasksLastRanAt];
  v6 = v5;

  periodicTasksLastRanAt2 = [(WiFiUserInteractionMonitor *)self periodicTasksLastRanAt];

  periodicTasksLastRanAt3 = [(WiFiUserInteractionMonitor *)self periodicTasksLastRanAt];

  if (!periodicTasksLastRanAt3 || v6 >= 5.0)
  {
    [(WiFiUserInteractionMonitor *)self setPeriodicTasksLastRanAt:v3];
    if (self->_ctServerConnectionRef)
    {
      cellularInterfaceName = [(WiFiUserInteractionMonitor *)self cellularInterfaceName];

      if (cellularInterfaceName)
      {
        v53 = 0;
        getifaddrs(&v53);
        v10 = v53;
        if (v53)
        {
          ifa_data = 0;
          v12 = 0;
          do
          {
            ifa_name = v10->ifa_name;
            if (ifa_name)
            {
              if (v10->ifa_data)
              {
                ifa_addr = v10->ifa_addr;
                if (ifa_addr)
                {
                  if (ifa_addr->sa_family == 18)
                  {
                    cellularInterfaceName2 = [(WiFiUserInteractionMonitor *)self cellularInterfaceName];
                    v16 = strcmp(ifa_name, [cellularInterfaceName2 UTF8String]);

                    if (!v16)
                    {
                      ifa_data = v10->ifa_data;
                    }

                    monitoredInterfaceNames = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
                    if ([monitoredInterfaceNames count])
                    {
                      __s1a = v10->ifa_name;
                      monitoredInterfaceNames2 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
                      allObjects = [monitoredInterfaceNames2 allObjects];
                      v20 = [allObjects objectAtIndexedSubscript:0];
                      LODWORD(__s1a) = strcmp(__s1a, [v20 UTF8String]);

                      if (!__s1a)
                      {
                        v12 = v10->ifa_data;
                      }
                    }

                    else
                    {
                    }
                  }
                }
              }
            }

            v10 = v10->ifa_next;
          }

          while (v10);
          if (ifa_data)
          {
            v21 = (ifa_data[11] + ifa_data[10]);
            v22 = (ifa_data[7] + ifa_data[5]);
            cellularIfTotalBytes = [(WiFiUserInteractionMonitor *)self cellularIfTotalBytes];
            cellularIfTotalPackets = [(WiFiUserInteractionMonitor *)self cellularIfTotalPackets];
            if (!periodicTasksLastRanAt2)
            {
              [(WiFiUserInteractionMonitor *)self setCellularIfTotalBytes:v21];
              [(WiFiUserInteractionMonitor *)self setCellularIfTotalPackets:v22];
              if (v12)
              {
                goto LABEL_30;
              }

              goto LABEL_38;
            }

            v25 = cellularIfTotalPackets;
            v26 = v21 - cellularIfTotalBytes;
            if ([(WiFiUserInteractionMonitor *)self cellularIfTotalBytes]< v21)
            {
              [(WiFiUserInteractionMonitor *)self setCellularL3MBPS:v26 / v6 * 0.000000953674316];
            }

            v27 = v22 - v25;
            [(WiFiUserInteractionMonitor *)self setCellularIfTotalBytes:v21];
            if ([(WiFiUserInteractionMonitor *)self cellularIfTotalPackets]< v22)
            {
              [(WiFiUserInteractionMonitor *)self setCellularL3PPS:(v27 / v6)];
            }

            [(WiFiUserInteractionMonitor *)self setCellularIfTotalPackets:v22];
            v28 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: cellular data did %llu bytes (%llu packets) over %.3f seconds", "-[WiFiUserInteractionMonitor runPeriodicTasks]", v26, v27, *&v6}];
            }
          }

          else
          {
            v28 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: failed to find if_data for cellular interface.", "-[WiFiUserInteractionMonitor runPeriodicTasks]", v39, v40, v41}];
            }
          }

          objc_autoreleasePoolPop(v28);
          if (v12)
          {
LABEL_30:
            v29 = (v12[11] + v12[10]);
            v30 = (v12[7] + v12[5]);
            wifiIfTotalBytes = [(WiFiUserInteractionMonitor *)self wifiIfTotalBytes];
            wifiIfTotalPackets = [(WiFiUserInteractionMonitor *)self wifiIfTotalPackets];
            __s1 = v12[10];
            wifiIfTotalInputBytes = [(WiFiUserInteractionMonitor *)self wifiIfTotalInputBytes];
            v49 = v12[11];
            v50 = wifiIfTotalInputBytes;
            wifiIfTotalOutputBytes = [(WiFiUserInteractionMonitor *)self wifiIfTotalOutputBytes];
            v47 = v12[5];
            v48 = wifiIfTotalOutputBytes;
            wifiIfTotalInputPackets = [(WiFiUserInteractionMonitor *)self wifiIfTotalInputPackets];
            v46 = v12[7];
            wifiIfTotalOutputPackets = [(WiFiUserInteractionMonitor *)self wifiIfTotalOutputPackets];
            [(WiFiUserInteractionMonitor *)self setWifiIfTotalInputBytes:v12[10]];
            [(WiFiUserInteractionMonitor *)self setWifiIfTotalOutputBytes:v12[11]];
            [(WiFiUserInteractionMonitor *)self setWifiIfTotalInputPackets:v12[5]];
            [(WiFiUserInteractionMonitor *)self setWifiIfTotalOutputPackets:v12[7]];
            if (!periodicTasksLastRanAt2)
            {
              [(WiFiUserInteractionMonitor *)self setWifiIfTotalBytes:v29];
              [(WiFiUserInteractionMonitor *)self setWifiIfTotalPackets:v30];
              goto LABEL_42;
            }

            v37 = v29 - wifiIfTotalBytes;
            if ([(WiFiUserInteractionMonitor *)self wifiIfTotalBytes]< v29)
            {
              [(WiFiUserInteractionMonitor *)self setWifiL3MBPS:v37 / v6 * 0.000000953674316];
            }

            [(WiFiUserInteractionMonitor *)self setWifiIfTotalBytes:v29];
            if ([(WiFiUserInteractionMonitor *)self wifiIfTotalPackets]< v30)
            {
              [(WiFiUserInteractionMonitor *)self setWifiL3PPS:((v30 - wifiIfTotalPackets) / v6)];
            }

            [(WiFiUserInteractionMonitor *)self setWifiIfTotalPackets:v30];
            v38 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WiFi data did %llu(input:%llu output:%llu) bytes, %llu(input:%llu output:%llu) packets over %.3f seconds", "-[WiFiUserInteractionMonitor runPeriodicTasks]", v37, &__s1[-v50], v49 - v48, v30 - wifiIfTotalPackets, v47 - wifiIfTotalInputPackets, v46 - wifiIfTotalOutputPackets, *&v6}];
            }

LABEL_40:
            objc_autoreleasePoolPop(v38);
LABEL_42:
            freeifaddrs(v53);
            goto LABEL_43;
          }

LABEL_38:
          v38 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: failed to find if_data for WiFi interface.", "-[WiFiUserInteractionMonitor runPeriodicTasks]", v39, v40, v41, v42, v43, v44, v45}];
          }

          goto LABEL_40;
        }
      }
    }
  }

LABEL_43:
}

- (BOOL)isAVConferenceActive
{
  rtTrafficAgent = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  isActive = [rtTrafficAgent isActive];

  return isActive;
}

- (void)_updateCallState
{
  selfCopy = self;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  callObserver = [(WiFiUserInteractionMonitor *)self callObserver];
  calls = [callObserver calls];

  obj = calls;
  v5 = [calls countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v5)
  {
    v6 = v5;
    v42 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v53;
    v36 = *v53;
    v37 = selfCopy;
    do
    {
      v10 = 0;
      v38 = v6;
      do
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v52 + 1) + 8 * v10) hasConnected])
        {
          v11 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: call has connected", "-[WiFiUserInteractionMonitor _updateCallState]"}];
          }

          objc_autoreleasePoolPop(v11);
          v12 = [TUCallCenter callCenterWithQueue:selfCopy->_internalQueue];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v41 = v12;
          currentAudioAndVideoCalls = [v12 currentAudioAndVideoCalls];
          v13 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v13)
          {
            v14 = v13;
            v40 = v10;
            v15 = *v49;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v49 != v15)
                {
                  objc_enumerationMutation(currentAudioAndVideoCalls);
                }

                v17 = *(*(&v48 + 1) + 8 * i);
                providerContext = [v17 providerContext];
                v19 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: call context %@", "-[WiFiUserInteractionMonitor _updateCallState]", providerContext}];
                }

                objc_autoreleasePoolPop(v19);
                v20 = [providerContext objectForKey:@"kCallSubType"];
                if ([v20 isEqualToString:@"kCallSubTypeWifi"])
                {
                  v21 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: call is connected over WiFi", "-[WiFiUserInteractionMonitor _updateCallState]"}];
                  }

                  objc_autoreleasePoolPop(v21);
                  BYTE4(v42) = 1;
                }

                if (v20 && ([v20 isEqualToString:@"kCallSubTypeWifi"] & 1) == 0)
                {
                  v22 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: call is not connected over WiFi", "-[WiFiUserInteractionMonitor _updateCallState]"}];
                  }

                  objc_autoreleasePoolPop(v22);
                  LODWORD(v42) = 1;
                }

                isHostedOnCurrentDevice = [v17 isHostedOnCurrentDevice];
                v24 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  if (isHostedOnCurrentDevice)
                  {
                    v25 = "%s: Call is hosted on this device";
                  }

                  else
                  {
                    v25 = "%s: Call is not hosted on this device";
                  }

                  [off_100298C40 WFLog:3 message:{v25, "-[WiFiUserInteractionMonitor _updateCallState]"}];
                }

                v7 |= isHostedOnCurrentDevice;
                objc_autoreleasePoolPop(v24);
              }

              v14 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v14);
            v8 = 1;
            v9 = v36;
            selfCopy = v37;
            v6 = v38;
            v10 = v40;
          }
        }

        v10 = v10 + 1;
      }

      while (v10 != v6);
      v6 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v6);
  }

  else
  {
    v42 = 0;
    v7 = 0;
    v8 = 0;
  }

  if ([(WiFiUserInteractionMonitor *)selfCopy anyCallInProgress])
  {
    v26 = v42;
    if ((v8 & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: call has ended", "-[WiFiUserInteractionMonitor _updateCallState]"}];
      }

      objc_autoreleasePoolPop(v27);
      v26 = 0;
    }
  }

  else
  {
    v26 = v42;
  }

  v28 = v8 ^ [(WiFiUserInteractionMonitor *)selfCopy anyCallInProgress];
  if (v28)
  {
    [(WiFiUserInteractionMonitor *)selfCopy setAnyCallInProgress:v8 & 1];
  }

  if ((BYTE4(v42) & 1) != [(WiFiUserInteractionMonitor *)selfCopy wifiCallInProgress])
  {
    [(WiFiUserInteractionMonitor *)selfCopy setWifiCallInProgress:?];
    v28 = 1;
  }

  if ((v7 ^ [(WiFiUserInteractionMonitor *)selfCopy callHostedOnThisDevice]))
  {
    [(WiFiUserInteractionMonitor *)selfCopy setCallHostedOnThisDevice:v7 & 1];
    if ((v26 & 1) == [(WiFiUserInteractionMonitor *)selfCopy cellCallInProgress])
    {
      goto LABEL_53;
    }
  }

  else if (((v26 ^ [(WiFiUserInteractionMonitor *)selfCopy cellCallInProgress]) & 1) == 0)
  {
    if ((v28 & 1) == 0)
    {
      return;
    }

    goto LABEL_53;
  }

  [(WiFiUserInteractionMonitor *)selfCopy setCellCallInProgress:v26 & 1];
LABEL_53:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  clients = [(WiFiUserInteractionMonitor *)selfCopy clients];
  v30 = [clients countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v45;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(clients);
        }

        v34 = *(*(&v44 + 1) + 8 * j);
        callback = [v34 callback];
        (callback)[2](callback, [v34 context], 2);
      }

      v31 = [clients countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v31);
  }
}

- (void)dealloc
{
  managedEventDispatchPort = [(WiFiUserInteractionMonitor *)self managedEventDispatchPort];

  if (managedEventDispatchPort)
  {
    managedEventDispatchPort2 = [(WiFiUserInteractionMonitor *)self managedEventDispatchPort];
    dispatch_mach_cancel();
  }

  if ([(WiFiUserInteractionMonitor *)self managedEventNotifyToken])
  {
    notify_cancel([(WiFiUserInteractionMonitor *)self managedEventNotifyToken]);
    [(WiFiUserInteractionMonitor *)self setManagedEventNotifyToken:0];
  }

  callObserver = [(WiFiUserInteractionMonitor *)self callObserver];

  if (callObserver)
  {
    callObserver2 = [(WiFiUserInteractionMonitor *)self callObserver];
    [callObserver2 setDelegate:0 queue:0];

    [(WiFiUserInteractionMonitor *)self setCallObserver:0];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  monitoredInterfaceNames = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
  allObjects = [monitoredInterfaceNames allObjects];

  v9 = [allObjects countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        rtTrafficAgent = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];

        if (rtTrafficAgent)
        {
          rtTrafficAgent2 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
          registration = [rtTrafficAgent2 registration];
          [registration removeNetworkAgentFromInterfaceNamed:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  monitoredInterfaceNames2 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
  [monitoredInterfaceNames2 removeAllObjects];

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 removeObserver:self];

  clients = [(WiFiUserInteractionMonitor *)self clients];
  [clients removeAllObjects];

  overrideNetworkState = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  [overrideNetworkState removeAllObjects];

  ctServerConnectionRef = self->_ctServerConnectionRef;
  if (ctServerConnectionRef)
  {
    CFRelease(ctServerConnectionRef);
  }

  lastRecommendedNetworkTimestampExpirationTimer = [(WiFiUserInteractionMonitor *)self lastRecommendedNetworkTimestampExpirationTimer];

  if (lastRecommendedNetworkTimestampExpirationTimer)
  {
    lastRecommendedNetworkTimestampExpirationTimer2 = [(WiFiUserInteractionMonitor *)self lastRecommendedNetworkTimestampExpirationTimer];
    dispatch_source_cancel(lastRecommendedNetworkTimestampExpirationTimer2);
  }

  v24.receiver = self;
  v24.super_class = WiFiUserInteractionMonitor;
  [(WiFiUserInteractionMonitor *)&v24 dealloc];
}

- (void)startMonitoringInterface:(id)interface
{
  interfaceCopy = interface;
  if (interfaceCopy)
  {
    monitoredInterfaceNames = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
    v5 = [monitoredInterfaceNames containsObject:interfaceCopy];

    if ((v5 & 1) == 0)
    {
      monitoredInterfaceNames2 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
      [monitoredInterfaceNames2 addObject:interfaceCopy];

      rtTrafficAgent = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];

      if (rtTrafficAgent)
      {
        rtTrafficAgent2 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
        registration = [rtTrafficAgent2 registration];
        [registration addNetworkAgentToInterfaceNamed:interfaceCopy];
      }
    }
  }
}

- (void)registerStateChangeCallback:(id)callback withCallbackContext:(void *)context
{
  callbackCopy = callback;
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (off_100298C40)
  {
    v8 = objc_retainBlock(callbackCopy);
    [v7 WFLog:3 message:{"%s: callback %@, context %@", "-[WiFiUserInteractionMonitor registerStateChangeCallback:withCallbackContext:]", v8, context}];
  }

  objc_autoreleasePoolPop(v6);
  v9 = objc_alloc_init(WiFiUserInteractionMonitorClient);
  [(WiFiUserInteractionMonitorClient *)v9 setCallback:callbackCopy];
  [(WiFiUserInteractionMonitorClient *)v9 setContext:context];
  clients = [(WiFiUserInteractionMonitor *)self clients];
  [clients addObject:v9];
}

- (void)unregisterStateChangeCallback:(void *)callback
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clients = [(WiFiUserInteractionMonitor *)self clients];
  v6 = [clients countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v6)
  {
    v8 = clients;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(clients);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      if ([v11 context] == callback)
      {
        v12 = v11;

        v8 = v12;
      }
    }

    v7 = [clients countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v7);

  if (v8)
  {
    clients2 = [(WiFiUserInteractionMonitor *)self clients];
    [clients2 removeObject:v8];

LABEL_13:
  }
}

- (void)setApplicationRunningState:(BOOL)state foregroundState:(BOOL)foregroundState andNetworkingState:(BOOL)networkingState forBundleId:(id)id
{
  networkingStateCopy = networkingState;
  foregroundStateCopy = foregroundState;
  idCopy = id;
  if (!idCopy)
  {
    goto LABEL_25;
  }

  appTrackerLock = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock lock];

  v12 = objc_autoreleasePoolPush();
  if (state)
  {
    if (foregroundStateCopy)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ entered foreground", "-[WiFiUserInteractionMonitor setApplicationRunningState:foregroundState:andNetworkingState:forBundleId:]", idCopy}];
      }

      objc_autoreleasePoolPop(v12);
      runningForegroundApps = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
      [runningForegroundApps addObject:idCopy];
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ entered background", "-[WiFiUserInteractionMonitor setApplicationRunningState:foregroundState:andNetworkingState:forBundleId:]", idCopy}];
      }

      objc_autoreleasePoolPop(v12);
      runningForegroundApps = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
      [runningForegroundApps removeObject:idCopy];
    }

    runningNetworkingApps = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
    v16 = runningNetworkingApps;
    if (networkingStateCopy)
    {
      [runningNetworkingApps addObject:idCopy];
      goto LABEL_16;
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %@ exited", "-[WiFiUserInteractionMonitor setApplicationRunningState:foregroundState:andNetworkingState:forBundleId:]", idCopy}];
    }

    objc_autoreleasePoolPop(v12);
    runningForegroundApps2 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    [runningForegroundApps2 removeObject:idCopy];

    runningNetworkingApps = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
    v16 = runningNetworkingApps;
  }

  [runningNetworkingApps removeObject:idCopy];
LABEL_16:

  appTrackerLock2 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock2 unlock];

  [(WiFiUserInteractionMonitor *)self _notifyCaptiveWithApplicationState];
  if ([(WiFiUserInteractionMonitor *)self hasRealTimeAppProperty:idCopy])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    clients = [(WiFiUserInteractionMonitor *)self clients];
    v19 = [clients countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(clients);
          }

          v23 = *(*(&v25 + 1) + 8 * i);
          callback = [v23 callback];
          (callback)[2](callback, [v23 context], 8);
        }

        v20 = [clients countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }
  }

LABEL_25:
}

- (void)updateOverrideNetworkState:(id)state overrideValue:(unint64_t)value
{
  stateCopy = state;
  NSLog(@"updateOverrideNetworkState: ssid %@ state 0x%llx\n", stateCopy, value);
  overrideNetworkState = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  overrideNetworkState2 = overrideNetworkState;
  if (value)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:value];
    [overrideNetworkState2 setObject:v8 forKey:stateCopy];
  }

  else
  {
    v9 = [overrideNetworkState objectForKeyedSubscript:stateCopy];

    if (!v9)
    {
      goto LABEL_6;
    }

    overrideNetworkState2 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    [overrideNetworkState2 removeObjectForKey:stateCopy];
  }

LABEL_6:
}

- (void)resetOverrideStates
{
  [(WiFiUserInteractionMonitor *)self setOverrideApplicationState:0];

  [(WiFiUserInteractionMonitor *)self _notifyCaptiveWithApplicationState];
}

- (void)resetOverrideNetworkStates
{
  overrideNetworkState = [(WiFiUserInteractionMonitor *)self overrideNetworkState];

  if (overrideNetworkState)
  {
    overrideNetworkState2 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    [overrideNetworkState2 removeAllObjects];

    v5 = +[NSMutableDictionary dictionary];
    [(WiFiUserInteractionMonitor *)self setOverrideNetworkState:v5];
  }
}

- (void)dumpOverrideNetworkState
{
  overrideNetworkState = [(WiFiUserInteractionMonitor *)self overrideNetworkState];

  if (overrideNetworkState)
  {
    overrideNetworkState2 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    NSLog(@"%s: overrideNetworkState %@\n", "[WiFiUserInteractionMonitor dumpOverrideNetworkState]", overrideNetworkState2);
  }
}

- (void)resetBackgroundApps
{
  appTrackerLock = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock lock];

  runningNetworkingApps = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
  [runningNetworkingApps removeAllObjects];

  appTrackerLock2 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock2 unlock];
}

- (BOOL)isPriorityNetwork:(__WiFiNetwork *)network
{
  v5 = sub_10000A878(network);
  overrideNetworkState = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  if (!overrideNetworkState)
  {
    goto LABEL_6;
  }

  v7 = overrideNetworkState;
  overrideNetworkState2 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v9 = [overrideNetworkState2 objectForKey:v5];

  if (v9)
  {
    overrideNetworkState3 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    v11 = [overrideNetworkState3 objectForKey:v5];
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden isPriorityNetwork state as 0x%llx", "-[WiFiUserInteractionMonitor isPriorityNetwork:]", unsignedLongLongValue}];
    }

    objc_autoreleasePoolPop(v13);
    v14 = unsignedLongLongValue & 1;
  }

  else
  {
LABEL_6:
    v15 = sub_10001B368(network);
    v16 = v15;
    v14 = v15 && ([v15 networkOfInterestHomeState] == 1 || objc_msgSend(v16, "networkOfInterestHomeState") == 3 || objc_msgSend(v16, "networkOfInterestWorkState") == 1) || sub_1000A365C(network);
  }

  return v14;
}

- (BOOL)isPublicNetwork:(__WiFiNetwork *)network
{
  networkCopy = network;
  v5 = sub_10000A878(network);
  overrideNetworkState = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  if (!overrideNetworkState)
  {
    goto LABEL_6;
  }

  v7 = overrideNetworkState;
  overrideNetworkState2 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v9 = [overrideNetworkState2 objectForKey:v5];

  if (v9)
  {
    overrideNetworkState3 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    v11 = [overrideNetworkState3 objectForKey:v5];
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden isPublicNetwork state as 0x%llx", "-[WiFiUserInteractionMonitor isPublicNetwork:]", unsignedLongLongValue}];
    }

    objc_autoreleasePoolPop(v13);
    networkCopy = ((unsignedLongLongValue >> 1) & 1);
  }

  else
  {
LABEL_6:
    LOBYTE(networkCopy) = sub_1000A37CC(networkCopy) != 0;
  }

  return networkCopy;
}

- (BOOL)isLowQualityNetwork:(__WiFiNetwork *)network
{
  networkCopy = network;
  v5 = sub_10000A878(network);
  overrideNetworkState = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  if (!overrideNetworkState)
  {
    goto LABEL_6;
  }

  v7 = overrideNetworkState;
  overrideNetworkState2 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v9 = [overrideNetworkState2 objectForKey:v5];

  if (v9)
  {
    overrideNetworkState3 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    v11 = [overrideNetworkState3 objectForKey:v5];
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden isLowQualityNetwork state as 0x%llx", "-[WiFiUserInteractionMonitor isLowQualityNetwork:]", unsignedLongLongValue}];
    }

    objc_autoreleasePoolPop(v13);
    networkCopy = (unsignedLongLongValue >> 2) & 1;
  }

  else
  {
LABEL_6:
    LOBYTE(networkCopy) = sub_1000A3814(networkCopy);
  }

  return networkCopy;
}

- (BOOL)isInitialSetupCompleted
{
  if (&_BYSetupAssistantHasCompletedInitialRun && &_BYSetupAssistantNeedsToRun && ![(WiFiUserInteractionMonitor *)self initialSetupCompleted])
  {
    if (BYSetupAssistantHasCompletedInitialRun())
    {
      v3 = 1;
    }

    else
    {
      v3 = BYSetupAssistantNeedsToRun() ^ 1;
    }

    [(WiFiUserInteractionMonitor *)self setInitialSetupCompleted:v3];
    v4 = objc_autoreleasePoolPush();
    v5 = off_100298C40;
    if (off_100298C40)
    {
      initialSetupCompleted = [(WiFiUserInteractionMonitor *)self initialSetupCompleted];
      v7 = "not completed";
      if (initialSetupCompleted)
      {
        v7 = "completed";
      }

      [v5 WFLog:3 message:{"%s: Initial setup is %s", "-[WiFiUserInteractionMonitor isInitialSetupCompleted]", v7}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [(WiFiUserInteractionMonitor *)self setInitialSetupCompleted:1];
  }

  return [(WiFiUserInteractionMonitor *)self initialSetupCompleted];
}

- (BOOL)isAskToJoinAllowed
{
  if (![(WiFiUserInteractionMonitor *)self isSetupCompleted])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: setup not completed. Not allowing ask-to-join.", "-[WiFiUserInteractionMonitor isAskToJoinAllowed]", v6, v7}];
    }

    goto LABEL_8;
  }

  if ([(WiFiUserInteractionMonitor *)self navigating]|| [(WiFiUserInteractionMonitor *)self anyCallInProgress])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: navigating(%d) or in call(%d). Not allowing ask-to-join.", "-[WiFiUserInteractionMonitor isAskToJoinAllowed]", -[WiFiUserInteractionMonitor navigating](self, "navigating"), -[WiFiUserInteractionMonitor anyCallInProgress](self, "anyCallInProgress")}];
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  if (![(WiFiUserInteractionMonitor *)self isNetworkingAppInForeground])
  {
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: in FG networking app. Allowing atj.", "-[WiFiUserInteractionMonitor isAskToJoinAllowed]"}];
  }

  v4 = 1;
LABEL_9:
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)isNearbyDeviceRecommendationAllowed
{
  if (![(WiFiUserInteractionMonitor *)self isSetupCompleted])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: setup not completed. Not allowing recommendation.", "-[WiFiUserInteractionMonitor isNearbyDeviceRecommendationAllowed]", v5, v6}];
    }

    goto LABEL_8;
  }

  if ([(WiFiUserInteractionMonitor *)self navigating]|| [(WiFiUserInteractionMonitor *)self anyCallInProgress])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: navigating(%d) or in call(%d). Not allowing recommendation.", "-[WiFiUserInteractionMonitor isNearbyDeviceRecommendationAllowed]", -[WiFiUserInteractionMonitor navigating](self, "navigating"), -[WiFiUserInteractionMonitor anyCallInProgress](self, "anyCallInProgress")}];
    }

LABEL_8:
    objc_autoreleasePoolPop(v3);
    return 0;
  }

  if ([(WiFiUserInteractionMonitor *)self isDeviceLocked]|| ![(WiFiUserInteractionMonitor *)self isDisplayOn])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Device locked or Display is OFF. Not allowing recommendation.", "-[WiFiUserInteractionMonitor isNearbyDeviceRecommendationAllowed]", v5, v6}];
    }

    goto LABEL_8;
  }

  return 1;
}

+ (BOOL)checkIfMatchesHomeBundleIds:(id)ids
{
  idsCopy = ids;
  +[WiFiUserInteractionMonitor getHomeBundleIds];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        lowercaseString = [idsCopy lowercaseString];
        LOBYTE(v8) = [lowercaseString containsString:v8];

        if (v8)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (BOOL)checkIfMatchesNonNetworkingBundleIds:(id)ids
{
  idsCopy = ids;
  +[WiFiUserInteractionMonitor getKnownNonNetworkingBundleIds];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = 1;
      if ([idsCopy rangeOfString:*(*(&v11 + 1) + 8 * v8) options:{1, v11}] != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasRealTimeAppProperty:(id)property
{
  propertyCopy = property;
  if (![(WiFiUserInteractionMonitor *)self isSetupCompleted])
  {
    goto LABEL_14;
  }

  isFirstUserUnlocked = [(WiFiUserInteractionMonitor *)self isFirstUserUnlocked];
  bOOLValue = 0;
  if (propertyCopy && isFirstUserUnlocked)
  {
    appAttributeLock = [(WiFiUserInteractionMonitor *)self appAttributeLock];
    [appAttributeLock lock];

    appAttributes = [(WiFiUserInteractionMonitor *)self appAttributes];
    v9 = [appAttributes objectForKey:propertyCopy];

    if (objc_opt_class())
    {
      pendingAppAttributeQueries = [(WiFiUserInteractionMonitor *)self pendingAppAttributeQueries];
      v11 = [pendingAppAttributeQueries containsObject:propertyCopy];

      v12 = 0;
      if ((v11 & 1) == 0 && !v9)
      {
        pendingAppAttributeQueries2 = [(WiFiUserInteractionMonitor *)self pendingAppAttributeQueries];
        [pendingAppAttributeQueries2 addObject:propertyCopy];

        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }

    appAttributeLock2 = [(WiFiUserInteractionMonitor *)self appAttributeLock];
    [appAttributeLock2 unlock];

    if (v9)
    {
      bOOLValue = [v9 BOOLValue];
LABEL_13:

      goto LABEL_15;
    }

    if (v12)
    {
      internalQueue = [(WiFiUserInteractionMonitor *)self internalQueue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10011D3DC;
      v17[3] = &unk_10025EB00;
      v18 = propertyCopy;
      selfCopy = self;
      dispatch_async(internalQueue, v17);

      bOOLValue = 0;
      v9 = v18;
      goto LABEL_13;
    }

LABEL_14:
    bOOLValue = 0;
  }

LABEL_15:

  return bOOLValue;
}

- (BOOL)isAnyCallInProgress
{
  if ([(WiFiUserInteractionMonitor *)self anyCallInProgress])
  {
    return 1;
  }

  rtTrafficAgent = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  isActive = [rtTrafficAgent isActive];

  return isActive;
}

- (BOOL)isCoPresenceActive
{
  rtTrafficAgent = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  if ([rtTrafficAgent avcMinJB])
  {
    rtTrafficAgent2 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
    v5 = [rtTrafficAgent2 avcMinJB] < 0x15;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCarModeActive
{
  if ([(WiFiUserInteractionMonitor *)self carModeActive])
  {
    return 1;
  }

  return [(WiFiUserInteractionMonitor *)self navigating];
}

- (BOOL)canTrigger11axPerfStudyForForegroundFlows
{
  symptomForegroundFlowProperties = [(WiFiUserInteractionMonitor *)self symptomForegroundFlowProperties];
  symptomForegroundFlowClassification = [(WiFiUserInteractionMonitor *)self symptomForegroundFlowClassification];

  return [(WiFiUserInteractionMonitor *)self _canTrigger11axPerfStudyForFlowNamed:@"foreground" withProperties:symptomForegroundFlowProperties andClassification:symptomForegroundFlowClassification];
}

- (BOOL)canTrigger11axPerfStudyForBackgroundFlows
{
  symptomBackgroundFlowProperties = [(WiFiUserInteractionMonitor *)self symptomBackgroundFlowProperties];
  symptomBackgroundFlowClassification = [(WiFiUserInteractionMonitor *)self symptomBackgroundFlowClassification];

  return [(WiFiUserInteractionMonitor *)self _canTrigger11axPerfStudyForFlowNamed:@"background" withProperties:symptomBackgroundFlowProperties andClassification:symptomBackgroundFlowClassification];
}

- (BOOL)wasRecommendedNetworkRecentlyJoined
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  lastRecommendedNetworkTimestamp = [(WiFiUserInteractionMonitor *)selfCopy lastRecommendedNetworkTimestamp];
  [lastRecommendedNetworkTimestamp timeIntervalSinceReferenceDate];
  v7 = v4 - v6 < 30.0;

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)updateLastRecommendedNetworkJoinTimestamp
{
  obj = self;
  objc_sync_enter(obj);
  v3 = +[NSDate date];
  [(WiFiUserInteractionMonitor *)obj setLastRecommendedNetworkTimestamp:v3];

  lastRecommendedNetworkTimestamp = [(WiFiUserInteractionMonitor *)obj lastRecommendedNetworkTimestamp];
  v5 = [lastRecommendedNetworkTimestamp dateByAddingTimeInterval:30.0];

  [v5 timeIntervalSinceNow];
  if (v6 * 1000000000.0 < 9.22337204e18)
  {
    [v5 timeIntervalSinceNow];
    v2 = (v7 * 1000000000.0);
  }

  lastRecommendedNetworkTimestampExpirationTimer = [(WiFiUserInteractionMonitor *)obj lastRecommendedNetworkTimestampExpirationTimer];
  v9 = dispatch_walltime(0, v2);
  dispatch_source_set_timer(lastRecommendedNetworkTimestampExpirationTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);

  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Will temporarily allow captive websheet for join via recommendation UI, will expire state after %d seconds", "-[WiFiUserInteractionMonitor updateLastRecommendedNetworkJoinTimestamp]", 30}];
  }

  objc_autoreleasePoolPop(v10);
  [(WiFiUserInteractionMonitor *)obj _notifyCaptiveWithApplicationState];

  objc_sync_exit(obj);
}

- (BOOL)_canTrigger11axPerfStudyForFlowNamed:(id)named withProperties:(unint64_t)properties andClassification:(unsigned int)classification
{
  classificationCopy = classification;
  namedCopy = named;
  if ((classificationCopy & 0x1F) != 0)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: app-aware flow:%@ latency:0x%x jitter:0x%x lossTolerance:0x%x duration:0x%x requiredBandwidth:0x%x preferredBandwidth:0x%x", "-[WiFiUserInteractionMonitor _canTrigger11axPerfStudyForFlowNamed:withProperties:andClassification:]", namedCopy, properties, (properties >> 1), (properties >> 2), (properties >> 3), (properties >> 4), (properties >> 5)}];
    }

    objc_autoreleasePoolPop(v8);
    v9 = ((properties >> 2) & 1) + ((properties >> 3) & 1);
    v10 = v9 + ((properties >> 1) & 1);
    v11 = v9 + ((properties >> 4) & 1);
    v13 = v10 > 2 || v11 > 2 || ((properties >> 4) & 0xC0) != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_stateInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSDate date];
  v5 = [NSString stringWithFormat:@"%p@%@", self, v4];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 setObject:v5 forKeyedSubscript:v7];

  appAwareDetails = [(WiFiUserInteractionMonitor *)self appAwareDetails];
  [v3 setObject:appAwareDetails forKeyedSubscript:@"AppAwareDetails"];

  v9 = [NSString stringWithFormat:@"0x%llx", [(WiFiUserInteractionMonitor *)self symptomForegroundFlowProperties]];
  [v3 setObject:v9 forKeyedSubscript:@"ForegroundFlows"];

  v10 = [NSString stringWithFormat:@"0x%llx", [(WiFiUserInteractionMonitor *)self symptomBackgroundFlowProperties]];
  [v3 setObject:v10 forKeyedSubscript:@"BackgroundFlows"];

  v11 = [NSString stringWithFormat:@"0x%x", [(WiFiUserInteractionMonitor *)self symptomForegroundFlowClassification]];
  [v3 setObject:v11 forKeyedSubscript:@"ForegroundClassification"];

  v12 = [NSString stringWithFormat:@"0x%x", [(WiFiUserInteractionMonitor *)self symptomBackgroundFlowClassification]];
  [v3 setObject:v12 forKeyedSubscript:@"BackgroundClassification"];

  appTrackerLock = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock lock];

  runningForegroundApps = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
  [v3 setObject:runningForegroundApps forKeyedSubscript:@"ForegroundApps"];

  runningNetworkingApps = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
  [v3 setObject:runningNetworkingApps forKeyedSubscript:@"NetworkingApps"];

  appTrackerLock2 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [appTrackerLock2 unlock];

  monitoredInterfaceNames = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
  [v3 setObject:monitoredInterfaceNames forKeyedSubscript:@"InterfaceNames"];

  if ([(WiFiUserInteractionMonitor *)self isSetupCompleted])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 setObject:v18 forKeyedSubscript:@"IsSetupCompleted"];
  if ([(WiFiUserInteractionMonitor *)self navigating])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 setObject:v19 forKeyedSubscript:@"IsNavigating"];
  if ([(WiFiUserInteractionMonitor *)self isInHomeScreen])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v3 setObject:v20 forKeyedSubscript:@"IsInHomeScreen"];
  if ([(WiFiUserInteractionMonitor *)self isAnyCallInProgress])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v3 setObject:v21 forKeyedSubscript:@"IsAnyCallInProgress"];
  if ([(WiFiUserInteractionMonitor *)self isWiFiCallInProgress])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v3 setObject:v22 forKeyedSubscript:@"IsWiFiCallInProgress"];
  if ([(WiFiUserInteractionMonitor *)self isCallHostedOnThisDevice])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v3 setObject:v23 forKeyedSubscript:@"IsCallHostedOnThisDevice"];
  if ([(WiFiUserInteractionMonitor *)self isInNonNetworkingApp])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v3 setObject:v24 forKeyedSubscript:@"IsInNonNetworkingApp"];
  if ([(WiFiUserInteractionMonitor *)self isNetworkingAppInForeground])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v3 setObject:v25 forKeyedSubscript:@"IsNetworkingAppInForeground"];
  if ([(WiFiUserInteractionMonitor *)self isRealTimeAppActive])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v3 setObject:v26 forKeyedSubscript:@"IsRealTimeAppActive"];
  rtTrafficAgent = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  if ([rtTrafficAgent isActive])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  [v3 setObject:v28 forKeyedSubscript:@"IsAVConferenceActive"];

  rtTrafficAgent2 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  v30 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llums", [rtTrafficAgent2 avcMinJB]);
  [v3 setObject:v30 forKeyedSubscript:@"AVCMinJitterBuffer"];

  if ([(WiFiUserInteractionMonitor *)self isCoPresenceActive])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  [v3 setObject:v31 forKeyedSubscript:@"IsCoPresenceActive"];
  if ([(WiFiUserInteractionMonitor *)self isCellularDataUsable])
  {
    v32 = @"YES";
  }

  else
  {
    v32 = @"NO";
  }

  [v3 setObject:v32 forKeyedSubscript:@"IsCellularDataUsable"];
  if ([(WiFiUserInteractionMonitor *)self isUsingSustainedCellularData])
  {
    v33 = @"YES";
  }

  else
  {
    v33 = @"NO";
  }

  [v3 setObject:v33 forKeyedSubscript:@"IsUsingCellularData"];
  if ([(WiFiUserInteractionMonitor *)self isCellularInexpensive5G])
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  [v3 setObject:v34 forKeyedSubscript:@"IsCellularInexpensive5G"];
  overrideNetworkState = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v36 = [overrideNetworkState description];
  [v3 setObject:v36 forKeyedSubscript:@"overrideNetworkState"];

  if ([(WiFiUserInteractionMonitor *)self isAskToJoinAllowed])
  {
    v37 = @"YES";
  }

  else
  {
    v37 = @"NO";
  }

  [v3 setObject:v37 forKeyedSubscript:@"IsAskToJoinAllowed"];
  if ([(WiFiUserInteractionMonitor *)self isNetworkRecommendationAllowed])
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  [v3 setObject:v38 forKeyedSubscript:@"IsNetworkRecommendationAllowed"];
  [(WiFiUserInteractionMonitor *)self cellularL3MBPS];
  v40 = [NSString stringWithFormat:@"%.2fMBps/%llupps", v39, [(WiFiUserInteractionMonitor *)self cellularL3PPS]];
  [v3 setObject:v40 forKeyedSubscript:@"CellularUsage"];

  [(WiFiUserInteractionMonitor *)self wifiL3MBPS];
  v42 = [NSString stringWithFormat:@"%.2fMBps/%llupps", v41, [(WiFiUserInteractionMonitor *)self wifiL3PPS]];
  [v3 setObject:v42 forKeyedSubscript:@"WiFiUsage"];

  lastRecommendedNetworkTimestamp = [(WiFiUserInteractionMonitor *)self lastRecommendedNetworkTimestamp];
  v44 = [NSString stringWithFormat:@"%@", lastRecommendedNetworkTimestamp];
  [v3 setObject:v44 forKeyedSubscript:@"LastRecommendedNetworkTimestamp"];

  return v3;
}

- (BOOL)getCellularData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    sub_1001B0060();
    goto LABEL_17;
  }

  if (!self->_ctServerConnectionRef)
  {
    sub_1001B0008();
    goto LABEL_17;
  }

  cellularInterfaceName = [(WiFiUserInteractionMonitor *)self cellularInterfaceName];

  if (!cellularInterfaceName)
  {
    sub_1001AFFB0();
    goto LABEL_17;
  }

  v18 = 0;
  getifaddrs(&v18);
  v6 = v18;
  if (!v18)
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    ifa_name = v6->ifa_name;
    if (ifa_name)
    {
      if (v6->ifa_data)
      {
        ifa_addr = v6->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 18)
          {
            cellularInterfaceName2 = [(WiFiUserInteractionMonitor *)self cellularInterfaceName];
            v10 = strcmp(ifa_name, [cellularInterfaceName2 UTF8String]);

            if (!v10)
            {
              break;
            }
          }
        }
      }
    }

    v6 = v6->ifa_next;
    if (!v6)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  ifa_data = v6->ifa_data;
  v13 = [[NSNumber alloc] initWithUnsignedInt:ifa_data[10]];
  [dataCopy setObject:v13 forKeyedSubscript:@"CellularDataInBytes"];

  v14 = [[NSNumber alloc] initWithUnsignedInt:ifa_data[11]];
  [dataCopy setObject:v14 forKeyedSubscript:@"CellularDataOutBytes"];

  v15 = [[NSNumber alloc] initWithUnsignedInt:ifa_data[5]];
  [dataCopy setObject:v15 forKeyedSubscript:@"CellularDataInPackets"];

  v16 = [[NSNumber alloc] initWithUnsignedInt:ifa_data[7]];
  [dataCopy setObject:v16 forKeyedSubscript:@"CellularDataOutPackets"];

  v11 = 1;
LABEL_12:
  freeifaddrs(v18);
LABEL_18:

  return v11;
}

- (NSString)description
{
  _stateInfo = [(WiFiUserInteractionMonitor *)self _stateInfo];
  v3 = [_stateInfo description];

  return v3;
}

- (void)navigationListener:(id)listener didChangeNavigationState:(unint64_t)state transportType:(int)type
{
  listenerCopy = listener;
  if ((state == 2) != [(WiFiUserInteractionMonitor *)self navigating])
  {
    if (state == 2)
    {
      navigating = 0;
    }

    else
    {
      navigating = [(WiFiUserInteractionMonitor *)self navigating];
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: navigating %d", "-[WiFiUserInteractionMonitor navigationListener:didChangeNavigationState:transportType:]", state == 2}];
    }

    objc_autoreleasePoolPop(v8);
    [(WiFiUserInteractionMonitor *)self setNavigating:state == 2];
    if (navigating)
    {
      [(WiFiUserInteractionMonitor *)self _notifyCaptiveWithApplicationState];
    }
  }
}

- (id)_initPrivate
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v42.receiver = self;
  v42.super_class = WiFiUserInteractionMonitor;
  v6 = [(WiFiUserInteractionMonitor *)&v42 init];
  if (!v6)
  {
    goto LABEL_30;
  }

  +[NSMutableArray array];
  objc_claimAutoreleasedReturnValue();
  [sub_1000084A8() setClients:?];

  clients = [(WiFiUserInteractionMonitor *)v6 clients];

  if (!clients)
  {
    goto LABEL_30;
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_queue_create("com.apple.wifid.WiFiUserInteractionMonitor", v8);
  [sub_10000DBE0() setInternalQueue:?];

  internalQueue = [(WiFiUserInteractionMonitor *)v6 internalQueue];

  if (!internalQueue)
  {
    goto LABEL_30;
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_queue_create("com.apple.wifid.WiFiUserInteractionMonitor-notify", v10);
  [sub_10000DBE0() setNotifyQueue:?];

  notifyQueue = [(WiFiUserInteractionMonitor *)v6 notifyQueue];

  if (!notifyQueue)
  {
    goto LABEL_30;
  }

  +[NSMutableSet set];
  objc_claimAutoreleasedReturnValue();
  [sub_1000084A8() setMonitoredInterfaceNames:?];

  monitoredInterfaceNames = [(WiFiUserInteractionMonitor *)v6 monitoredInterfaceNames];

  if (!monitoredInterfaceNames)
  {
    goto LABEL_30;
  }

  [sub_100024FB4() setAnyCallInProgress:?];
  [sub_100024FB4() setWifiCallInProgress:?];
  [sub_100024FB4() setCallHostedOnThisDevice:?];
  [sub_100024FB4() setIsCarPlay:?];
  [sub_100024FB4() setIsMediaPlaying:?];
  [sub_100024FB4() setIsAirplayActiveOverInfra:?];
  [sub_100024FB4() setWifiUserNotifyPending:?];
  if (&_managed_event_fetch)
  {
    if (notify_register_mach_port(kSymptomManagedEventWiFiAppAwareNotification, &v6->_managedEventNotifyPort, 0, &v6->_managedEventNotifyToken))
    {
      goto LABEL_30;
    }

    internalQueue2 = [(WiFiUserInteractionMonitor *)v6 internalQueue];
    dispatch_mach_create_f();
    [sub_10000DBE0() setManagedEventDispatchPort:?];

    managedEventDispatchPort = [(WiFiUserInteractionMonitor *)v6 managedEventDispatchPort];

    if (!managedEventDispatchPort)
    {
      goto LABEL_30;
    }

    monitoredInterfaceNames = [(WiFiUserInteractionMonitor *)v6 managedEventDispatchPort];
    [(WiFiUserInteractionMonitor *)v6 managedEventNotifyPort];
    dispatch_mach_connect();
  }

  [sub_10011E7D8() setAppAwareDetails:?];
  [[WiFiUserInteractionMonitorNetworkAgent alloc] initWithUUID:@"A2CB4344-1CC7-47EF-8D25-FB68B047620F" andDescription:@"APPLE80211KEY_REAL_TIME_MEDIA_TRAFFIC_UUID"];
  [sub_1000084A8() setRtTrafficAgent:?];

  rtTrafficAgent = [(WiFiUserInteractionMonitor *)v6 rtTrafficAgent];

  if (!rtTrafficAgent)
  {
LABEL_30:
    v29 = 0;
    goto LABEL_25;
  }

  rtTrafficAgent2 = [(WiFiUserInteractionMonitor *)v6 rtTrafficAgent];
  [rtTrafficAgent2 registerStateChangeCallback:&stru_1002634B0 withCallbackContext:v6];

  notify_register_check("com.apple.airport.userNotification", &dword_100298B70);
  [sub_100024FB4() setNavigating:?];
  navigationListener2 = &xpc_dictionary_set_uint64_ptr;
  if (!objc_opt_class())
  {
    goto LABEL_14;
  }

  v18 = [GEONavigationListener alloc];
  internalQueue3 = [(WiFiUserInteractionMonitor *)v6 internalQueue];
  [v18 initWithQueue:internalQueue3];
  [sub_1000084A8() setNavigationListener:?];

  navigationListener = [(WiFiUserInteractionMonitor *)v6 navigationListener];

  if (!navigationListener)
  {
    v33 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unable to create navigation listener", "-[WiFiUserInteractionMonitor _initPrivate]"}];
    }

    objc_autoreleasePoolPop(v33);
    goto LABEL_30;
  }

  navigationListener2 = [(WiFiUserInteractionMonitor *)v6 navigationListener];
  [navigationListener2 setDelegate:v6];

LABEL_14:
  if (objc_opt_class() && NSClassFromString(@"CXCallObserver"))
  {
    navigationListener2 = [(WiFiUserInteractionMonitor *)v6 internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011B978;
    block[3] = &unk_10025E9B8;
    v41 = v6;
    dispatch_async(navigationListener2, block);
  }

  +[NSMutableSet set];
  objc_claimAutoreleasedReturnValue();
  [sub_1000084A8() setRunningForegroundApps:?];

  +[NSMutableSet set];
  objc_claimAutoreleasedReturnValue();
  [sub_1000084A8() setRunningNetworkingApps:?];

  v21 = objc_alloc_init(NSLock);
  [sub_1000084A8() setAppTrackerLock:?];

  v22 = objc_alloc_init(NSLock);
  [sub_1000084A8() setAppAttributeLock:?];

  +[NSMutableSet set];
  objc_claimAutoreleasedReturnValue();
  [sub_1000084A8() setPendingAppAttributeQueries:?];

  [sub_100024FB4() setSetupCompleted:?];
  [sub_100024FB4() setInitialSetupCompleted:?];
  v6->_ctServerConnectionRef = 0;
  if (&__CTServerConnectionCreateWithIdentifier)
  {
    v6->_ctServerConnectionRef = _CTServerConnectionCreateWithIdentifier();
    navigationListener2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: created a CT server connection %p", "-[WiFiUserInteractionMonitor _initPrivate]", v6->_ctServerConnectionRef}];
    }

    objc_autoreleasePoolPop(navigationListener2);
  }

  [(WiFiUserInteractionMonitor *)v6 setCellularL3MBPS:0.0];
  [sub_10011E7D8() setCellularL3PPS:?];
  [sub_10011E7D8() setCellularIfTotalBytes:?];
  [sub_10011E7D8() setCellularIfTotalPackets:?];
  [(WiFiUserInteractionMonitor *)v6 setWifiL3MBPS:0.0];
  [sub_10011E7D8() setWifiL3PPS:?];
  [sub_10011E7D8() setWifiIfTotalBytes:?];
  [sub_10011E7D8() setWifiIfTotalPackets:?];
  [sub_10011E7D8() setWifiIfTotalInputBytes:?];
  [sub_10011E7D8() setWifiIfTotalOutputBytes:?];
  [sub_10011E7D8() setWifiIfTotalInputPackets:?];
  [sub_10011E7D8() setWifiIfTotalOutputPackets:?];
  [sub_10011E7D8() setPeriodicTasksLastRanAt:?];
  +[NSMutableDictionary dictionary];
  objc_claimAutoreleasedReturnValue();
  [sub_1000084A8() setOverrideNetworkState:?];

  [sub_100024FB4() setIsFirstUserUnlocked:?];
  +[NSMutableDictionary dictionary];
  objc_claimAutoreleasedReturnValue();
  [sub_1000084A8() setAppAttributes:?];

  [sub_100024FB4() setGameNotifyToken:?];
  [sub_100024FB4() setIsInGameMode:?];
  if (v5)
  {
    -[WiFiUserInteractionMonitor setIsInGameMode:](v6, "setIsInGameMode:", [v5 BOOLForKey:@"GameMode"]);
  }

  internalQueue = v6->_internalQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10011BA0C;
  handler[3] = &unk_1002634D8;
  v24 = v6;
  v37 = v24;
  v39 = "com.apple.system.console_mode_changed";
  v38 = v5;
  notify_register_dispatch("com.apple.system.console_mode_changed", &v6->_gameNotifyToken, internalQueue, handler);

  internalQueue4 = [(WiFiUserInteractionMonitor *)v24 internalQueue];
  v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, internalQueue4);
  [(WiFiUserInteractionMonitor *)v24 setLastRecommendedNetworkTimestampExpirationTimer:v26];

  lastRecommendedNetworkTimestampExpirationTimer = [(WiFiUserInteractionMonitor *)v24 lastRecommendedNetworkTimestampExpirationTimer];

  if (lastRecommendedNetworkTimestampExpirationTimer)
  {
    lastRecommendedNetworkTimestampExpirationTimer2 = [(WiFiUserInteractionMonitor *)v24 lastRecommendedNetworkTimestampExpirationTimer];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10011BC54;
    v34[3] = &unk_10025E9B8;
    v29 = v24;
    v35 = v29;
    dispatch_source_set_event_handler(lastRecommendedNetworkTimestampExpirationTimer2, v34);

    lastRecommendedNetworkTimestampExpirationTimer3 = [(WiFiUserInteractionMonitor *)v29 lastRecommendedNetworkTimestampExpirationTimer];
    dispatch_source_set_timer(lastRecommendedNetworkTimestampExpirationTimer3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    lastRecommendedNetworkTimestampExpirationTimer4 = [(WiFiUserInteractionMonitor *)v29 lastRecommendedNetworkTimestampExpirationTimer];
    dispatch_resume(lastRecommendedNetworkTimestampExpirationTimer4);

    v6 = v35;
  }

  else
  {
    v29 = 0;
    v6 = v24;
  }

LABEL_25:

  return v29;
}

- (void)setOverrideApplicationState:(unint64_t)state
{
  if ([(WiFiUserInteractionMonitor *)self overrideApplicationState]!= state)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: setting override state to %llu", "-[WiFiUserInteractionMonitor setOverrideApplicationState:]", state}];
    }

    objc_autoreleasePoolPop(v5);
    self->_overrideApplicationState = state;

    [(WiFiUserInteractionMonitor *)self _notifyCaptiveWithApplicationState];
  }
}

- (BOOL)isCellularDataDisabledByUser
{
  cellularDataStatusMap = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];

  if (!cellularDataStatusMap)
  {
    return 0;
  }

  cellularDataStatusMap2 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];
  v5 = [cellularDataStatusMap2 containsObject:@"WiFiCellularDataStatusDisabledByUser"];

  return v5;
}

- (BOOL)isCellularDataAttachedAndActive
{
  cellularDataStatusMap = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];

  if (!cellularDataStatusMap)
  {
    return 0;
  }

  cellularDataStatusMap2 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];
  v5 = [cellularDataStatusMap2 containsObject:@"WiFiCellularDataStatusAttachedAndActive"];

  return v5;
}

- (BOOL)_isCellularDataAllowedForApp:(id)app
{
  appCopy = app;
  if (appCopy && self->_ctServerConnectionRef)
  {
    _CTServerConnectionCopyCellularUsagePolicy();
  }

  return 1;
}

@end