@interface WiFiAppStateManager
+ (id)sharedWiFiAppStateManager;
- (BOOL)_isMonitoringChangesForBundleID:(__CFString *)a3;
- (WiFiAppStateManager)init;
- (id)_getStringOfAppState:(unsigned int)a3;
- (void)_applicationStateMonitorHandler:(__CFDictionary *)a3;
- (void)_registerApplication:(__CFString *)a3 capabilities:(int)a4;
- (void)_unRegisterApplication:(__CFString *)a3;
- (void)dealloc;
- (void)externalAppUnregistered:(__CFDictionary *)a3;
- (void)scheduleWithQueue:(id)a3;
- (void)startMonitoringBundleId:(__CFString *)a3;
- (void)stopMonitoringBundleId:(__CFString *)a3;
- (void)unscheduleFromQueue:(id)a3;
@end

@implementation WiFiAppStateManager

+ (id)sharedWiFiAppStateManager
{
  if (qword_100298AC8 != -1)
  {
    sub_1001AA3AC();
  }

  return qword_100298AC0;
}

- (void)scheduleWithQueue:(id)a3
{
  self->_queue = a3;
  DistributedCenter = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterAddObserver(DistributedCenter, self, sub_100106AE4, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)unscheduleFromQueue:(id)a3
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationUnregistered", 0);
  self->_queue = 0;
}

- (WiFiAppStateManager)init
{
  v13.receiver = self;
  v13.super_class = WiFiAppStateManager;
  v2 = [(WiFiAppStateManager *)&v13 init];
  if (!v2)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed in super-init", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v2->_applications = Mutable;
  if (!Mutable)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _applications", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  v4 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v2->_activeApplications = v4;
  if (!v4)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _activeApplications", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  v5 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v2->_backgroundApplications = v5;
  if (!v5)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _backgroundApplications", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  v6 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v2->_appsInForeground = v6;
  if (!v6)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _appsInForeground", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  if (!objc_opt_class())
  {
LABEL_26:

    return 0;
  }

  v7 = [[BKSApplicationStateMonitor alloc] initWithBundleIDs:0 states:9];
  v2->_applicationStateMonitor = v7;
  if (!v7)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _applicationStateMonitor", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  v8 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v2->_bundleIdsToMonitor = v8;
  if (!v8)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _bundleIdsToMonitor", "-[WiFiAppStateManager init]"}];
    }

LABEL_25:
    objc_autoreleasePoolPop(v11);
    goto LABEL_26;
  }

  applicationStateMonitor = v2->_applicationStateMonitor;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002A88;
  v12[3] = &unk_100262830;
  v12[4] = v2;
  [(BKSApplicationStateMonitor *)applicationStateMonitor setHandler:v12];
  return v2;
}

- (void)externalAppUnregistered:(__CFDictionary *)a3
{
  if (self->_unregisteredCallbackContext && a3 && self->_unregisteredCallbackFunction)
  {
    if (self->_queue)
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x2020000000;
      v6[3] = CFRetain(a3);
      queue = self->_queue;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100106ED8;
      v5[3] = &unk_100261468;
      v5[4] = self;
      v5[5] = v6;
      dispatch_async(queue, v5);
      _Block_object_dispose(v6, 8);
    }
  }
}

- (void)dealloc
{
  applications = self->_applications;
  if (applications)
  {
    CFRelease(applications);
    self->_applications = 0;
  }

  activeApplications = self->_activeApplications;
  if (activeApplications)
  {
    CFRelease(activeApplications);
    self->_activeApplications = 0;
  }

  backgroundApplications = self->_backgroundApplications;
  if (backgroundApplications)
  {
    CFRelease(backgroundApplications);
    self->_backgroundApplications = 0;
  }

  appsInForeground = self->_appsInForeground;
  if (appsInForeground)
  {
    CFRelease(appsInForeground);
    self->_appsInForeground = 0;
  }

  bundleIdsToMonitor = self->_bundleIdsToMonitor;
  if (bundleIdsToMonitor)
  {
    CFRelease(bundleIdsToMonitor);
    self->_bundleIdsToMonitor = 0;
  }

  applicationStateMonitor = self->_applicationStateMonitor;
  if (applicationStateMonitor)
  {
    [(BKSApplicationStateMonitor *)applicationStateMonitor invalidate];
    v9 = self->_applicationStateMonitor;
    if (v9)
    {
      CFRelease(v9);
      self->_applicationStateMonitor = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = WiFiAppStateManager;
  [(WiFiAppStateManager *)&v10 dealloc];
}

- (void)_applicationStateMonitorHandler:(__CFDictionary *)a3
{
  value = 0;
  valuePtr = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = sub_100002BA0;
  v36 = sub_1000067A0;
  v37 = 0;
  if (!a3)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null userInfo", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

    goto LABEL_57;
  }

  if (!self->_queue)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Nil queue", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

    goto LABEL_57;
  }

  if (CFDictionaryGetValueIfPresent(a3, BKSApplicationStateProcessIDKey, &value))
  {
    v5 = value == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
  }

  if (!valuePtr)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: pidForStateChange(%d)", "-[WiFiAppStateManager _applicationStateMonitorHandler:]", valuePtr}];
    }

    goto LABEL_57;
  }

  v6 = CFDictionaryGetValue(a3, BKSApplicationStateDisplayIDKey);
  if (!v6)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null bundleID", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

    goto LABEL_57;
  }

  applications = self->_applications;
  if (!applications)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null applications", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

    goto LABEL_57;
  }

  if (CFDictionaryGetValueIfPresent(applications, v6, &v41))
  {
    if (v41)
    {
      CFNumberGetValue(v41, kCFNumberIntType, &v40);
    }
  }

  else
  {
    v8 = [(WiFiAppStateManager *)self _getAppCapabilitiesForBundleID:valuePtr];
    v40 = v8;
    [(WiFiAppStateManager *)self _registerApplication:v6 capabilities:v8];
  }

  if (!CFDictionaryGetValueIfPresent(a3, BKSApplicationStateKey, &v39))
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null BKSApplicationStateKey", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

LABEL_57:
    objc_autoreleasePoolPop(v19);
    goto LABEL_44;
  }

  CFNumberGetValue(v39, kCFNumberIntType, &v38);
  v9 = v38;
  v10 = CFRetain(v6);
  v33[5] = v10;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107610;
  block[3] = &unk_100262858;
  v30 = v9 != 1;
  v31 = v9 == 8;
  v29 = v40;
  block[4] = self;
  block[5] = &v32;
  dispatch_async(queue, block);
  if ([(WiFiAppStateManager *)self _appUsesWiFiNetwork:v40]|| [+[WiFiUserInteractionMonitor hasRealTimeAppProperty:"hasRealTimeAppProperty:"]
  {
    [(WiFiAppStateManager *)self _appStateChanged:v38 bundleID:v6 capabilities:v40];
  }

  if ([(WiFiAppStateManager *)self _isMonitoringChangesForBundleID:v6]&& self->_bundleCallbackFunction)
  {
    v12 = self->_queue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100107698;
    v26[3] = &unk_100262880;
    v26[4] = self;
    v26[5] = v6;
    v27 = v38;
    dispatch_async(v12, v26);
  }

  v13 = v38;
  if (v38 == 1)
  {
    [(WiFiAppStateManager *)self _unRegisterApplication:v6];
    v13 = v38;
  }

  if (v13 - 1 < 2 || v13 == 4)
  {
    foregroundAppBundleIDs = self->_foregroundAppBundleIDs;
    if (foregroundAppBundleIDs)
    {
      if ([(NSMutableArray *)foregroundAppBundleIDs containsObject:v6])
      {
        [(NSMutableArray *)self->_foregroundAppBundleIDs removeObject:v6];
        if (self->_fgAppTrackerCallbackContext)
        {
          if (self->_fgAppTrackerCallbackFunction && self->_queue)
          {
            v22 = 0;
            v23 = &v22;
            v24 = 0x2020000000;
            v25 = 0;
            if ([(NSMutableArray *)self->_foregroundAppBundleIDs count])
            {
              v18 = [-[NSMutableArray lastObject](self->_foregroundAppBundleIDs "lastObject")];
              v23[3] = v18;
            }

            v15 = self->_queue;
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_100107700;
            v20[3] = &unk_100261468;
            v20[4] = self;
            v20[5] = &v22;
            v16 = v20;
            goto LABEL_43;
          }
        }
      }
    }
  }

  else if (v13 == 8)
  {
    v14 = self->_foregroundAppBundleIDs;
    if (v14 || (v14 = objc_alloc_init(NSMutableArray), (self->_foregroundAppBundleIDs = v14) != 0))
    {
      if (([(NSMutableArray *)v14 containsObject:v6]& 1) == 0)
      {
        [(NSMutableArray *)self->_foregroundAppBundleIDs addObject:v6];
      }
    }

    if (self->_fgAppTrackerCallbackContext && self->_fgAppTrackerCallbackFunction && self->_queue)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = [-[NSMutableArray lastObject](self->_foregroundAppBundleIDs "lastObject")];
      v15 = self->_queue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1001076AC;
      v21[3] = &unk_100261468;
      v21[4] = self;
      v21[5] = &v22;
      v16 = v21;
LABEL_43:
      dispatch_async(v15, v16);
      _Block_object_dispose(&v22, 8);
    }
  }

LABEL_44:
  _Block_object_dispose(&v32, 8);
}

- (void)_unRegisterApplication:(__CFString *)a3
{
  if (a3)
  {
    applications = self->_applications;
    if (applications)
    {

      CFDictionaryRemoveValue(applications, a3);
    }

    else
    {
      sub_1001AA3C0();
    }
  }

  else
  {
    sub_1001AA42C();
  }
}

- (void)_registerApplication:(__CFString *)a3 capabilities:(int)a4
{
  valuePtr = a4;
  if (a3)
  {
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v6)
    {
      v7 = v6;
      applications = self->_applications;
      if (applications)
      {
        CFDictionaryAddValue(applications, a3, v7);
      }

      else
      {
        sub_1001AA498();
      }

      CFRelease(v7);
    }

    else
    {
      sub_1001AA4F8();
    }
  }

  else
  {
    sub_1001AA558();
  }
}

- (id)_getStringOfAppState:(unsigned int)a3
{
  if (a3 - 1 > 7)
  {
    return @"WiFiApplicationStateUnknown";
  }

  else
  {
    return off_1002628F0[a3 - 1];
  }
}

- (void)startMonitoringBundleId:(__CFString *)a3
{
  if (a3)
  {
    bundleIdsToMonitor = self->_bundleIdsToMonitor;
    if (bundleIdsToMonitor)
    {
      CFSetAddValue(bundleIdsToMonitor, a3);
    }
  }
}

- (void)stopMonitoringBundleId:(__CFString *)a3
{
  if (a3)
  {
    bundleIdsToMonitor = self->_bundleIdsToMonitor;
    if (bundleIdsToMonitor)
    {
      CFSetRemoveValue(bundleIdsToMonitor, a3);
    }
  }
}

- (BOOL)_isMonitoringChangesForBundleID:(__CFString *)a3
{
  if (a3)
  {
    bundleIdsToMonitor = self->_bundleIdsToMonitor;
    if (bundleIdsToMonitor)
    {
      bundleIdsToMonitor = CFSetGetCount(bundleIdsToMonitor);
      if (bundleIdsToMonitor)
      {
        LOBYTE(bundleIdsToMonitor) = CFSetContainsValue(self->_bundleIdsToMonitor, a3) != 0;
      }
    }
  }

  else
  {
    LOBYTE(bundleIdsToMonitor) = 0;
  }

  return bundleIdsToMonitor;
}

@end