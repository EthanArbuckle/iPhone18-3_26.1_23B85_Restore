@interface WiFiUserInteractionMonitor
+ (BOOL)checkIfMatchesHomeBundleIds:(id)a3;
+ (BOOL)checkIfMatchesNonNetworkingBundleIds:(id)a3;
+ (id)sharedInstance;
- (BOOL)_canTrigger11axPerfStudyForFlowNamed:(id)a3 withProperties:(unint64_t)a4 andClassification:(unsigned int)a5;
- (BOOL)_isCellularDataAllowedForApp:(id)a3;
- (BOOL)canTrigger11axPerfStudyForBackgroundFlows;
- (BOOL)canTrigger11axPerfStudyForForegroundFlows;
- (BOOL)getCellularData:(id)a3;
- (BOOL)hasRealTimeAppProperty:(id)a3;
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
- (BOOL)isLowQualityNetwork:(__WiFiNetwork *)a3;
- (BOOL)isNearbyDeviceRecommendationAllowed;
- (BOOL)isNetworkRecommendationAllowed;
- (BOOL)isNetworkingAppInForeground;
- (BOOL)isPersonalHotspotRecommendationAllowed;
- (BOOL)isPriorityNetwork:(__WiFiNetwork *)a3;
- (BOOL)isPublicNetwork:(__WiFiNetwork *)a3;
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
- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5;
- (void)registerStateChangeCallback:(id)a3 withCallbackContext:(void *)a4;
- (void)resetBackgroundApps;
- (void)resetOverrideNetworkStates;
- (void)resetOverrideStates;
- (void)runPeriodicTasks;
- (void)setApplicationRunningState:(BOOL)a3 foregroundState:(BOOL)a4 andNetworkingState:(BOOL)a5 forBundleId:(id)a6;
- (void)setOverrideApplicationState:(unint64_t)a3;
- (void)startMonitoringInterface:(id)a3;
- (void)unregisterStateChangeCallback:(void *)a3;
- (void)updateLastRecommendedNetworkJoinTimestamp;
- (void)updateOverrideNetworkState:(id)a3 overrideValue:(unint64_t)a4;
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
      v5 = [(WiFiUserInteractionMonitor *)self setupCompleted];
      v6 = "not completed";
      if (v5)
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
    v7 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [v7 lock];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    v9 = [v8 allObjects];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v9);
          }

          if ([(WiFiUserInteractionMonitor *)self hasRealTimeAppProperty:*(*(&v17 + 1) + 8 * i)])
          {
            v15 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
            [v15 unlock];

            goto LABEL_17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [v14 unlock];

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

  v4 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  v5 = [v4 isActive];

  return v5;
}

- (unint64_t)_applicationNotifyState
{
  v3 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v3 lock];

  v4 = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
  v5 = [NSMutableSet setWithSet:v4];

  v6 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
  [v5 minusSet:v6];

  v7 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
  v8 = [v7 count];

  v9 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v9 unlock];

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
      v4 = [(WiFiUserInteractionMonitor *)self notifyQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006424;
      block[3] = &unk_10025E9B8;
      block[4] = self;
      dispatch_async(v4, block);
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
  v2 = self;
  if ([(WiFiUserInteractionMonitor *)self overrideApplicationState])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden inexpensive cellular state as 0x%llx", "-[WiFiUserInteractionMonitor isCellularInexpensive5G]", -[WiFiUserInteractionMonitor overrideApplicationState](v2, "overrideApplicationState")}];
    }

    objc_autoreleasePoolPop(v3);
    return ([(WiFiUserInteractionMonitor *)v2 overrideApplicationState]>> 7) & 1;
  }

  else
  {
    v4 = [(WiFiUserInteractionMonitor *)v2 cellularDataStatusMap];

    if (v4)
    {
      v5 = [(WiFiUserInteractionMonitor *)v2 cellularInterfaceName];
      if (sub_100006D8C(v5))
      {
        LOBYTE(v2) = 0;
      }

      else
      {
        v6 = [(WiFiUserInteractionMonitor *)v2 cellularDataStatusMap];
        LOBYTE(v2) = [v6 containsObject:@"WiFiCellularDataStatus5GAvailable"];
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

- (BOOL)isInNonNetworkingApp
{
  if ([(WiFiUserInteractionMonitor *)self isInHomeScreen])
  {
    return 1;
  }

  v3 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v3 lock];

  v4 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
  if (v4)
  {
    v5 = v4;
    v6 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
      v9 = [v8 allObjects];

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
              objc_enumerationMutation(v9);
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
  v21 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v21 unlock];

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
    v5 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [v5 lock];

    v6 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    v7 = [v6 count];

    if (v7)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
      v9 = [v8 allObjects];

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(v9);
            }

            if (![WiFiUserInteractionMonitor checkIfMatchesHomeBundleIds:*(*(&v18 + 1) + 8 * i)])
            {
              v14 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
              [v14 unlock];

              LOBYTE(v4) = 0;
              return v4;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

    v16 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [v16 unlock];

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
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [v5 lock];

    v6 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    v7 = [NSMutableSet setWithSet:v6];

    v8 = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
    [v7 intersectSet:v8];

    v4 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
    [v4 unlock];

    LOBYTE(v4) = [v7 count] != 0;
  }

  return v4;
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
  v3 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];

  if (v3)
  {
    v4 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];
    v5 = [v4 containsObject:@"WiFiCellularDataStatusNoLTE"] ^ 1;
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
  v4 = [(WiFiUserInteractionMonitor *)self periodicTasksLastRanAt];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = [(WiFiUserInteractionMonitor *)self periodicTasksLastRanAt];

  v8 = [(WiFiUserInteractionMonitor *)self periodicTasksLastRanAt];

  if (!v8 || v6 >= 5.0)
  {
    [(WiFiUserInteractionMonitor *)self setPeriodicTasksLastRanAt:v3];
    if (self->_ctServerConnectionRef)
    {
      v9 = [(WiFiUserInteractionMonitor *)self cellularInterfaceName];

      if (v9)
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
                    v15 = [(WiFiUserInteractionMonitor *)self cellularInterfaceName];
                    v16 = strcmp(ifa_name, [v15 UTF8String]);

                    if (!v16)
                    {
                      ifa_data = v10->ifa_data;
                    }

                    v17 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
                    if ([v17 count])
                    {
                      __s1a = v10->ifa_name;
                      v18 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
                      v19 = [v18 allObjects];
                      v20 = [v19 objectAtIndexedSubscript:0];
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
            v23 = [(WiFiUserInteractionMonitor *)self cellularIfTotalBytes];
            v24 = [(WiFiUserInteractionMonitor *)self cellularIfTotalPackets];
            if (!v7)
            {
              [(WiFiUserInteractionMonitor *)self setCellularIfTotalBytes:v21];
              [(WiFiUserInteractionMonitor *)self setCellularIfTotalPackets:v22];
              if (v12)
              {
                goto LABEL_30;
              }

              goto LABEL_38;
            }

            v25 = v24;
            v26 = v21 - v23;
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
            v31 = [(WiFiUserInteractionMonitor *)self wifiIfTotalBytes];
            v32 = [(WiFiUserInteractionMonitor *)self wifiIfTotalPackets];
            __s1 = v12[10];
            v33 = [(WiFiUserInteractionMonitor *)self wifiIfTotalInputBytes];
            v49 = v12[11];
            v50 = v33;
            v34 = [(WiFiUserInteractionMonitor *)self wifiIfTotalOutputBytes];
            v47 = v12[5];
            v48 = v34;
            v35 = [(WiFiUserInteractionMonitor *)self wifiIfTotalInputPackets];
            v46 = v12[7];
            v36 = [(WiFiUserInteractionMonitor *)self wifiIfTotalOutputPackets];
            [(WiFiUserInteractionMonitor *)self setWifiIfTotalInputBytes:v12[10]];
            [(WiFiUserInteractionMonitor *)self setWifiIfTotalOutputBytes:v12[11]];
            [(WiFiUserInteractionMonitor *)self setWifiIfTotalInputPackets:v12[5]];
            [(WiFiUserInteractionMonitor *)self setWifiIfTotalOutputPackets:v12[7]];
            if (!v7)
            {
              [(WiFiUserInteractionMonitor *)self setWifiIfTotalBytes:v29];
              [(WiFiUserInteractionMonitor *)self setWifiIfTotalPackets:v30];
              goto LABEL_42;
            }

            v37 = v29 - v31;
            if ([(WiFiUserInteractionMonitor *)self wifiIfTotalBytes]< v29)
            {
              [(WiFiUserInteractionMonitor *)self setWifiL3MBPS:v37 / v6 * 0.000000953674316];
            }

            [(WiFiUserInteractionMonitor *)self setWifiIfTotalBytes:v29];
            if ([(WiFiUserInteractionMonitor *)self wifiIfTotalPackets]< v30)
            {
              [(WiFiUserInteractionMonitor *)self setWifiL3PPS:((v30 - v32) / v6)];
            }

            [(WiFiUserInteractionMonitor *)self setWifiIfTotalPackets:v30];
            v38 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WiFi data did %llu(input:%llu output:%llu) bytes, %llu(input:%llu output:%llu) packets over %.3f seconds", "-[WiFiUserInteractionMonitor runPeriodicTasks]", v37, &__s1[-v50], v49 - v48, v30 - v32, v47 - v35, v46 - v36, *&v6}];
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
  v2 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  v3 = [v2 isActive];

  return v3;
}

- (void)_updateCallState
{
  v2 = self;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = [(WiFiUserInteractionMonitor *)self callObserver];
  v4 = [v3 calls];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v5)
  {
    v6 = v5;
    v42 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v53;
    v36 = *v53;
    v37 = v2;
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
          v12 = [TUCallCenter callCenterWithQueue:v2->_internalQueue];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v41 = v12;
          v43 = [v12 currentAudioAndVideoCalls];
          v13 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
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
                  objc_enumerationMutation(v43);
                }

                v17 = *(*(&v48 + 1) + 8 * i);
                v18 = [v17 providerContext];
                v19 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: call context %@", "-[WiFiUserInteractionMonitor _updateCallState]", v18}];
                }

                objc_autoreleasePoolPop(v19);
                v20 = [v18 objectForKey:@"kCallSubType"];
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

                v23 = [v17 isHostedOnCurrentDevice];
                v24 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  if (v23)
                  {
                    v25 = "%s: Call is hosted on this device";
                  }

                  else
                  {
                    v25 = "%s: Call is not hosted on this device";
                  }

                  [off_100298C40 WFLog:3 message:{v25, "-[WiFiUserInteractionMonitor _updateCallState]"}];
                }

                v7 |= v23;
                objc_autoreleasePoolPop(v24);
              }

              v14 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v14);
            v8 = 1;
            v9 = v36;
            v2 = v37;
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

  if ([(WiFiUserInteractionMonitor *)v2 anyCallInProgress])
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

  v28 = v8 ^ [(WiFiUserInteractionMonitor *)v2 anyCallInProgress];
  if (v28)
  {
    [(WiFiUserInteractionMonitor *)v2 setAnyCallInProgress:v8 & 1];
  }

  if ((BYTE4(v42) & 1) != [(WiFiUserInteractionMonitor *)v2 wifiCallInProgress])
  {
    [(WiFiUserInteractionMonitor *)v2 setWifiCallInProgress:?];
    v28 = 1;
  }

  if ((v7 ^ [(WiFiUserInteractionMonitor *)v2 callHostedOnThisDevice]))
  {
    [(WiFiUserInteractionMonitor *)v2 setCallHostedOnThisDevice:v7 & 1];
    if ((v26 & 1) == [(WiFiUserInteractionMonitor *)v2 cellCallInProgress])
    {
      goto LABEL_53;
    }
  }

  else if (((v26 ^ [(WiFiUserInteractionMonitor *)v2 cellCallInProgress]) & 1) == 0)
  {
    if ((v28 & 1) == 0)
    {
      return;
    }

    goto LABEL_53;
  }

  [(WiFiUserInteractionMonitor *)v2 setCellCallInProgress:v26 & 1];
LABEL_53:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = [(WiFiUserInteractionMonitor *)v2 clients];
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
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
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v44 + 1) + 8 * j);
        v35 = [v34 callback];
        (v35)[2](v35, [v34 context], 2);
      }

      v31 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v31);
  }
}

- (void)dealloc
{
  v3 = [(WiFiUserInteractionMonitor *)self managedEventDispatchPort];

  if (v3)
  {
    v4 = [(WiFiUserInteractionMonitor *)self managedEventDispatchPort];
    dispatch_mach_cancel();
  }

  if ([(WiFiUserInteractionMonitor *)self managedEventNotifyToken])
  {
    notify_cancel([(WiFiUserInteractionMonitor *)self managedEventNotifyToken]);
    [(WiFiUserInteractionMonitor *)self setManagedEventNotifyToken:0];
  }

  v5 = [(WiFiUserInteractionMonitor *)self callObserver];

  if (v5)
  {
    v6 = [(WiFiUserInteractionMonitor *)self callObserver];
    [v6 setDelegate:0 queue:0];

    [(WiFiUserInteractionMonitor *)self setCallObserver:0];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
  v8 = [v7 allObjects];

  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v14 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];

        if (v14)
        {
          v15 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
          v16 = [v15 registration];
          [v16 removeNetworkAgentFromInterfaceNamed:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v17 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
  [v17 removeAllObjects];

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 removeObserver:self];

  v19 = [(WiFiUserInteractionMonitor *)self clients];
  [v19 removeAllObjects];

  v20 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  [v20 removeAllObjects];

  ctServerConnectionRef = self->_ctServerConnectionRef;
  if (ctServerConnectionRef)
  {
    CFRelease(ctServerConnectionRef);
  }

  v22 = [(WiFiUserInteractionMonitor *)self lastRecommendedNetworkTimestampExpirationTimer];

  if (v22)
  {
    v23 = [(WiFiUserInteractionMonitor *)self lastRecommendedNetworkTimestampExpirationTimer];
    dispatch_source_cancel(v23);
  }

  v24.receiver = self;
  v24.super_class = WiFiUserInteractionMonitor;
  [(WiFiUserInteractionMonitor *)&v24 dealloc];
}

- (void)startMonitoringInterface:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
    v5 = [v4 containsObject:v10];

    if ((v5 & 1) == 0)
    {
      v6 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
      [v6 addObject:v10];

      v7 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];

      if (v7)
      {
        v8 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
        v9 = [v8 registration];
        [v9 addNetworkAgentToInterfaceNamed:v10];
      }
    }
  }
}

- (void)registerStateChangeCallback:(id)a3 withCallbackContext:(void *)a4
{
  v11 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (off_100298C40)
  {
    v8 = objc_retainBlock(v11);
    [v7 WFLog:3 message:{"%s: callback %@, context %@", "-[WiFiUserInteractionMonitor registerStateChangeCallback:withCallbackContext:]", v8, a4}];
  }

  objc_autoreleasePoolPop(v6);
  v9 = objc_alloc_init(WiFiUserInteractionMonitorClient);
  [(WiFiUserInteractionMonitorClient *)v9 setCallback:v11];
  [(WiFiUserInteractionMonitorClient *)v9 setContext:a4];
  v10 = [(WiFiUserInteractionMonitor *)self clients];
  [v10 addObject:v9];
}

- (void)unregisterStateChangeCallback:(void *)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(WiFiUserInteractionMonitor *)self clients];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v6)
  {
    v8 = v5;
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
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      if ([v11 context] == a3)
      {
        v12 = v11;

        v8 = v12;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v7);

  if (v8)
  {
    v13 = [(WiFiUserInteractionMonitor *)self clients];
    [v13 removeObject:v8];

LABEL_13:
  }
}

- (void)setApplicationRunningState:(BOOL)a3 foregroundState:(BOOL)a4 andNetworkingState:(BOOL)a5 forBundleId:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v11 lock];

  v12 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (v7)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ entered foreground", "-[WiFiUserInteractionMonitor setApplicationRunningState:foregroundState:andNetworkingState:forBundleId:]", v10}];
      }

      objc_autoreleasePoolPop(v12);
      v13 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
      [v13 addObject:v10];
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ entered background", "-[WiFiUserInteractionMonitor setApplicationRunningState:foregroundState:andNetworkingState:forBundleId:]", v10}];
      }

      objc_autoreleasePoolPop(v12);
      v13 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
      [v13 removeObject:v10];
    }

    v15 = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
    v16 = v15;
    if (v6)
    {
      [v15 addObject:v10];
      goto LABEL_16;
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %@ exited", "-[WiFiUserInteractionMonitor setApplicationRunningState:foregroundState:andNetworkingState:forBundleId:]", v10}];
    }

    objc_autoreleasePoolPop(v12);
    v14 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
    [v14 removeObject:v10];

    v15 = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
    v16 = v15;
  }

  [v15 removeObject:v10];
LABEL_16:

  v17 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v17 unlock];

  [(WiFiUserInteractionMonitor *)self _notifyCaptiveWithApplicationState];
  if ([(WiFiUserInteractionMonitor *)self hasRealTimeAppProperty:v10])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = [(WiFiUserInteractionMonitor *)self clients];
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v25 + 1) + 8 * i);
          v24 = [v23 callback];
          (v24)[2](v24, [v23 context], 8);
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }
  }

LABEL_25:
}

- (void)updateOverrideNetworkState:(id)a3 overrideValue:(unint64_t)a4
{
  v10 = a3;
  NSLog(@"updateOverrideNetworkState: ssid %@ state 0x%llx\n", v10, a4);
  v6 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v7 = v6;
  if (a4)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:a4];
    [v7 setObject:v8 forKey:v10];
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:v10];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    [v7 removeObjectForKey:v10];
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
  v3 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];

  if (v3)
  {
    v4 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    [v4 removeAllObjects];

    v5 = +[NSMutableDictionary dictionary];
    [(WiFiUserInteractionMonitor *)self setOverrideNetworkState:v5];
  }
}

- (void)dumpOverrideNetworkState
{
  v3 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];

  if (v3)
  {
    v4 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    NSLog(@"%s: overrideNetworkState %@\n", "[WiFiUserInteractionMonitor dumpOverrideNetworkState]", v4);
  }
}

- (void)resetBackgroundApps
{
  v3 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v3 lock];

  v4 = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
  [v4 removeAllObjects];

  v5 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v5 unlock];
}

- (BOOL)isPriorityNetwork:(__WiFiNetwork *)a3
{
  v5 = sub_10000A878(a3);
  v6 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v9 = [v8 objectForKey:v5];

  if (v9)
  {
    v10 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    v11 = [v10 objectForKey:v5];
    v12 = [v11 unsignedLongLongValue];

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden isPriorityNetwork state as 0x%llx", "-[WiFiUserInteractionMonitor isPriorityNetwork:]", v12}];
    }

    objc_autoreleasePoolPop(v13);
    v14 = v12 & 1;
  }

  else
  {
LABEL_6:
    v15 = sub_10001B368(a3);
    v16 = v15;
    v14 = v15 && ([v15 networkOfInterestHomeState] == 1 || objc_msgSend(v16, "networkOfInterestHomeState") == 3 || objc_msgSend(v16, "networkOfInterestWorkState") == 1) || sub_1000A365C(a3);
  }

  return v14;
}

- (BOOL)isPublicNetwork:(__WiFiNetwork *)a3
{
  v3 = a3;
  v5 = sub_10000A878(a3);
  v6 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v9 = [v8 objectForKey:v5];

  if (v9)
  {
    v10 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    v11 = [v10 objectForKey:v5];
    v12 = [v11 unsignedLongLongValue];

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden isPublicNetwork state as 0x%llx", "-[WiFiUserInteractionMonitor isPublicNetwork:]", v12}];
    }

    objc_autoreleasePoolPop(v13);
    v3 = ((v12 >> 1) & 1);
  }

  else
  {
LABEL_6:
    LOBYTE(v3) = sub_1000A37CC(v3) != 0;
  }

  return v3;
}

- (BOOL)isLowQualityNetwork:(__WiFiNetwork *)a3
{
  v3 = a3;
  v5 = sub_10000A878(a3);
  v6 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v9 = [v8 objectForKey:v5];

  if (v9)
  {
    v10 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
    v11 = [v10 objectForKey:v5];
    v12 = [v11 unsignedLongLongValue];

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden isLowQualityNetwork state as 0x%llx", "-[WiFiUserInteractionMonitor isLowQualityNetwork:]", v12}];
    }

    objc_autoreleasePoolPop(v13);
    v3 = (v12 >> 2) & 1;
  }

  else
  {
LABEL_6:
    LOBYTE(v3) = sub_1000A3814(v3);
  }

  return v3;
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
      v6 = [(WiFiUserInteractionMonitor *)self initialSetupCompleted];
      v7 = "not completed";
      if (v6)
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

+ (BOOL)checkIfMatchesHomeBundleIds:(id)a3
{
  v3 = a3;
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
        v9 = [v3 lowercaseString];
        LOBYTE(v8) = [v9 containsString:v8];

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

+ (BOOL)checkIfMatchesNonNetworkingBundleIds:(id)a3
{
  v3 = a3;
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
      if ([v3 rangeOfString:*(*(&v11 + 1) + 8 * v8) options:{1, v11}] != 0x7FFFFFFFFFFFFFFFLL)
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

- (BOOL)hasRealTimeAppProperty:(id)a3
{
  v4 = a3;
  if (![(WiFiUserInteractionMonitor *)self isSetupCompleted])
  {
    goto LABEL_14;
  }

  v5 = [(WiFiUserInteractionMonitor *)self isFirstUserUnlocked];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = [(WiFiUserInteractionMonitor *)self appAttributeLock];
    [v7 lock];

    v8 = [(WiFiUserInteractionMonitor *)self appAttributes];
    v9 = [v8 objectForKey:v4];

    if (objc_opt_class())
    {
      v10 = [(WiFiUserInteractionMonitor *)self pendingAppAttributeQueries];
      v11 = [v10 containsObject:v4];

      v12 = 0;
      if ((v11 & 1) == 0 && !v9)
      {
        v13 = [(WiFiUserInteractionMonitor *)self pendingAppAttributeQueries];
        [v13 addObject:v4];

        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = [(WiFiUserInteractionMonitor *)self appAttributeLock];
    [v14 unlock];

    if (v9)
    {
      v6 = [v9 BOOLValue];
LABEL_13:

      goto LABEL_15;
    }

    if (v12)
    {
      v15 = [(WiFiUserInteractionMonitor *)self internalQueue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10011D3DC;
      v17[3] = &unk_10025EB00;
      v18 = v4;
      v19 = self;
      dispatch_async(v15, v17);

      v6 = 0;
      v9 = v18;
      goto LABEL_13;
    }

LABEL_14:
    v6 = 0;
  }

LABEL_15:

  return v6;
}

- (BOOL)isAnyCallInProgress
{
  if ([(WiFiUserInteractionMonitor *)self anyCallInProgress])
  {
    return 1;
  }

  v4 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  v5 = [v4 isActive];

  return v5;
}

- (BOOL)isCoPresenceActive
{
  v3 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  if ([v3 avcMinJB])
  {
    v4 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
    v5 = [v4 avcMinJB] < 0x15;
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
  v3 = [(WiFiUserInteractionMonitor *)self symptomForegroundFlowProperties];
  v4 = [(WiFiUserInteractionMonitor *)self symptomForegroundFlowClassification];

  return [(WiFiUserInteractionMonitor *)self _canTrigger11axPerfStudyForFlowNamed:@"foreground" withProperties:v3 andClassification:v4];
}

- (BOOL)canTrigger11axPerfStudyForBackgroundFlows
{
  v3 = [(WiFiUserInteractionMonitor *)self symptomBackgroundFlowProperties];
  v4 = [(WiFiUserInteractionMonitor *)self symptomBackgroundFlowClassification];

  return [(WiFiUserInteractionMonitor *)self _canTrigger11axPerfStudyForFlowNamed:@"background" withProperties:v3 andClassification:v4];
}

- (BOOL)wasRecommendedNetworkRecentlyJoined
{
  v2 = self;
  objc_sync_enter(v2);
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [(WiFiUserInteractionMonitor *)v2 lastRecommendedNetworkTimestamp];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v4 - v6 < 30.0;

  objc_sync_exit(v2);
  return v7;
}

- (void)updateLastRecommendedNetworkJoinTimestamp
{
  obj = self;
  objc_sync_enter(obj);
  v3 = +[NSDate date];
  [(WiFiUserInteractionMonitor *)obj setLastRecommendedNetworkTimestamp:v3];

  v4 = [(WiFiUserInteractionMonitor *)obj lastRecommendedNetworkTimestamp];
  v5 = [v4 dateByAddingTimeInterval:30.0];

  [v5 timeIntervalSinceNow];
  if (v6 * 1000000000.0 < 9.22337204e18)
  {
    [v5 timeIntervalSinceNow];
    v2 = (v7 * 1000000000.0);
  }

  v8 = [(WiFiUserInteractionMonitor *)obj lastRecommendedNetworkTimestampExpirationTimer];
  v9 = dispatch_walltime(0, v2);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);

  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Will temporarily allow captive websheet for join via recommendation UI, will expire state after %d seconds", "-[WiFiUserInteractionMonitor updateLastRecommendedNetworkJoinTimestamp]", 30}];
  }

  objc_autoreleasePoolPop(v10);
  [(WiFiUserInteractionMonitor *)obj _notifyCaptiveWithApplicationState];

  objc_sync_exit(obj);
}

- (BOOL)_canTrigger11axPerfStudyForFlowNamed:(id)a3 withProperties:(unint64_t)a4 andClassification:(unsigned int)a5
{
  v5 = a5;
  v7 = a3;
  if ((v5 & 0x1F) != 0)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: app-aware flow:%@ latency:0x%x jitter:0x%x lossTolerance:0x%x duration:0x%x requiredBandwidth:0x%x preferredBandwidth:0x%x", "-[WiFiUserInteractionMonitor _canTrigger11axPerfStudyForFlowNamed:withProperties:andClassification:]", v7, a4, (a4 >> 1), (a4 >> 2), (a4 >> 3), (a4 >> 4), (a4 >> 5)}];
    }

    objc_autoreleasePoolPop(v8);
    v9 = ((a4 >> 2) & 1) + ((a4 >> 3) & 1);
    v10 = v9 + ((a4 >> 1) & 1);
    v11 = v9 + ((a4 >> 4) & 1);
    v13 = v10 > 2 || v11 > 2 || ((a4 >> 4) & 0xC0) != 0;
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

  v8 = [(WiFiUserInteractionMonitor *)self appAwareDetails];
  [v3 setObject:v8 forKeyedSubscript:@"AppAwareDetails"];

  v9 = [NSString stringWithFormat:@"0x%llx", [(WiFiUserInteractionMonitor *)self symptomForegroundFlowProperties]];
  [v3 setObject:v9 forKeyedSubscript:@"ForegroundFlows"];

  v10 = [NSString stringWithFormat:@"0x%llx", [(WiFiUserInteractionMonitor *)self symptomBackgroundFlowProperties]];
  [v3 setObject:v10 forKeyedSubscript:@"BackgroundFlows"];

  v11 = [NSString stringWithFormat:@"0x%x", [(WiFiUserInteractionMonitor *)self symptomForegroundFlowClassification]];
  [v3 setObject:v11 forKeyedSubscript:@"ForegroundClassification"];

  v12 = [NSString stringWithFormat:@"0x%x", [(WiFiUserInteractionMonitor *)self symptomBackgroundFlowClassification]];
  [v3 setObject:v12 forKeyedSubscript:@"BackgroundClassification"];

  v13 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v13 lock];

  v14 = [(WiFiUserInteractionMonitor *)self runningForegroundApps];
  [v3 setObject:v14 forKeyedSubscript:@"ForegroundApps"];

  v15 = [(WiFiUserInteractionMonitor *)self runningNetworkingApps];
  [v3 setObject:v15 forKeyedSubscript:@"NetworkingApps"];

  v16 = [(WiFiUserInteractionMonitor *)self appTrackerLock];
  [v16 unlock];

  v17 = [(WiFiUserInteractionMonitor *)self monitoredInterfaceNames];
  [v3 setObject:v17 forKeyedSubscript:@"InterfaceNames"];

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
  v27 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  if ([v27 isActive])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  [v3 setObject:v28 forKeyedSubscript:@"IsAVConferenceActive"];

  v29 = [(WiFiUserInteractionMonitor *)self rtTrafficAgent];
  v30 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llums", [v29 avcMinJB]);
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
  v35 = [(WiFiUserInteractionMonitor *)self overrideNetworkState];
  v36 = [v35 description];
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

  v43 = [(WiFiUserInteractionMonitor *)self lastRecommendedNetworkTimestamp];
  v44 = [NSString stringWithFormat:@"%@", v43];
  [v3 setObject:v44 forKeyedSubscript:@"LastRecommendedNetworkTimestamp"];

  return v3;
}

- (BOOL)getCellularData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_1001B0060();
    goto LABEL_17;
  }

  if (!self->_ctServerConnectionRef)
  {
    sub_1001B0008();
    goto LABEL_17;
  }

  v5 = [(WiFiUserInteractionMonitor *)self cellularInterfaceName];

  if (!v5)
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
            v9 = [(WiFiUserInteractionMonitor *)self cellularInterfaceName];
            v10 = strcmp(ifa_name, [v9 UTF8String]);

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
  [v4 setObject:v13 forKeyedSubscript:@"CellularDataInBytes"];

  v14 = [[NSNumber alloc] initWithUnsignedInt:ifa_data[11]];
  [v4 setObject:v14 forKeyedSubscript:@"CellularDataOutBytes"];

  v15 = [[NSNumber alloc] initWithUnsignedInt:ifa_data[5]];
  [v4 setObject:v15 forKeyedSubscript:@"CellularDataInPackets"];

  v16 = [[NSNumber alloc] initWithUnsignedInt:ifa_data[7]];
  [v4 setObject:v16 forKeyedSubscript:@"CellularDataOutPackets"];

  v11 = 1;
LABEL_12:
  freeifaddrs(v18);
LABEL_18:

  return v11;
}

- (NSString)description
{
  v2 = [(WiFiUserInteractionMonitor *)self _stateInfo];
  v3 = [v2 description];

  return v3;
}

- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5
{
  v9 = a3;
  if ((a4 == 2) != [(WiFiUserInteractionMonitor *)self navigating])
  {
    if (a4 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(WiFiUserInteractionMonitor *)self navigating];
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: navigating %d", "-[WiFiUserInteractionMonitor navigationListener:didChangeNavigationState:transportType:]", a4 == 2}];
    }

    objc_autoreleasePoolPop(v8);
    [(WiFiUserInteractionMonitor *)self setNavigating:a4 == 2];
    if (v7)
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

  v7 = [(WiFiUserInteractionMonitor *)v6 clients];

  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_queue_create("com.apple.wifid.WiFiUserInteractionMonitor", v8);
  [sub_10000DBE0() setInternalQueue:?];

  v9 = [(WiFiUserInteractionMonitor *)v6 internalQueue];

  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_queue_create("com.apple.wifid.WiFiUserInteractionMonitor-notify", v10);
  [sub_10000DBE0() setNotifyQueue:?];

  v11 = [(WiFiUserInteractionMonitor *)v6 notifyQueue];

  if (!v11)
  {
    goto LABEL_30;
  }

  +[NSMutableSet set];
  objc_claimAutoreleasedReturnValue();
  [sub_1000084A8() setMonitoredInterfaceNames:?];

  v12 = [(WiFiUserInteractionMonitor *)v6 monitoredInterfaceNames];

  if (!v12)
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

    v13 = [(WiFiUserInteractionMonitor *)v6 internalQueue];
    dispatch_mach_create_f();
    [sub_10000DBE0() setManagedEventDispatchPort:?];

    v14 = [(WiFiUserInteractionMonitor *)v6 managedEventDispatchPort];

    if (!v14)
    {
      goto LABEL_30;
    }

    v12 = [(WiFiUserInteractionMonitor *)v6 managedEventDispatchPort];
    [(WiFiUserInteractionMonitor *)v6 managedEventNotifyPort];
    dispatch_mach_connect();
  }

  [sub_10011E7D8() setAppAwareDetails:?];
  [[WiFiUserInteractionMonitorNetworkAgent alloc] initWithUUID:@"A2CB4344-1CC7-47EF-8D25-FB68B047620F" andDescription:@"APPLE80211KEY_REAL_TIME_MEDIA_TRAFFIC_UUID"];
  [sub_1000084A8() setRtTrafficAgent:?];

  v15 = [(WiFiUserInteractionMonitor *)v6 rtTrafficAgent];

  if (!v15)
  {
LABEL_30:
    v29 = 0;
    goto LABEL_25;
  }

  v16 = [(WiFiUserInteractionMonitor *)v6 rtTrafficAgent];
  [v16 registerStateChangeCallback:&stru_1002634B0 withCallbackContext:v6];

  notify_register_check("com.apple.airport.userNotification", &dword_100298B70);
  [sub_100024FB4() setNavigating:?];
  v17 = &xpc_dictionary_set_uint64_ptr;
  if (!objc_opt_class())
  {
    goto LABEL_14;
  }

  v18 = [GEONavigationListener alloc];
  v19 = [(WiFiUserInteractionMonitor *)v6 internalQueue];
  [v18 initWithQueue:v19];
  [sub_1000084A8() setNavigationListener:?];

  v20 = [(WiFiUserInteractionMonitor *)v6 navigationListener];

  if (!v20)
  {
    v33 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unable to create navigation listener", "-[WiFiUserInteractionMonitor _initPrivate]"}];
    }

    objc_autoreleasePoolPop(v33);
    goto LABEL_30;
  }

  v17 = [(WiFiUserInteractionMonitor *)v6 navigationListener];
  [v17 setDelegate:v6];

LABEL_14:
  if (objc_opt_class() && NSClassFromString(@"CXCallObserver"))
  {
    v17 = [(WiFiUserInteractionMonitor *)v6 internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011B978;
    block[3] = &unk_10025E9B8;
    v41 = v6;
    dispatch_async(v17, block);
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
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: created a CT server connection %p", "-[WiFiUserInteractionMonitor _initPrivate]", v6->_ctServerConnectionRef}];
    }

    objc_autoreleasePoolPop(v17);
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

  v25 = [(WiFiUserInteractionMonitor *)v24 internalQueue];
  v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v25);
  [(WiFiUserInteractionMonitor *)v24 setLastRecommendedNetworkTimestampExpirationTimer:v26];

  v27 = [(WiFiUserInteractionMonitor *)v24 lastRecommendedNetworkTimestampExpirationTimer];

  if (v27)
  {
    v28 = [(WiFiUserInteractionMonitor *)v24 lastRecommendedNetworkTimestampExpirationTimer];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10011BC54;
    v34[3] = &unk_10025E9B8;
    v29 = v24;
    v35 = v29;
    dispatch_source_set_event_handler(v28, v34);

    v30 = [(WiFiUserInteractionMonitor *)v29 lastRecommendedNetworkTimestampExpirationTimer];
    dispatch_source_set_timer(v30, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    v31 = [(WiFiUserInteractionMonitor *)v29 lastRecommendedNetworkTimestampExpirationTimer];
    dispatch_resume(v31);

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

- (void)setOverrideApplicationState:(unint64_t)a3
{
  if ([(WiFiUserInteractionMonitor *)self overrideApplicationState]!= a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: setting override state to %llu", "-[WiFiUserInteractionMonitor setOverrideApplicationState:]", a3}];
    }

    objc_autoreleasePoolPop(v5);
    self->_overrideApplicationState = a3;

    [(WiFiUserInteractionMonitor *)self _notifyCaptiveWithApplicationState];
  }
}

- (BOOL)isCellularDataDisabledByUser
{
  v3 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];
  v5 = [v4 containsObject:@"WiFiCellularDataStatusDisabledByUser"];

  return v5;
}

- (BOOL)isCellularDataAttachedAndActive
{
  v3 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WiFiUserInteractionMonitor *)self cellularDataStatusMap];
  v5 = [v4 containsObject:@"WiFiCellularDataStatusAttachedAndActive"];

  return v5;
}

- (BOOL)_isCellularDataAllowedForApp:(id)a3
{
  v4 = a3;
  if (v4 && self->_ctServerConnectionRef)
  {
    _CTServerConnectionCopyCellularUsagePolicy();
  }

  return 1;
}

@end