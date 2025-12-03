@interface NSPServiceStatusManager
+ (void)removeFromPreferences;
- (BOOL)changePausedState:(BOOL)state forApp:(id)app path:(id)path;
- (BOOL)hasPausedApps;
- (BOOL)isNetworkOutage;
- (BOOL)isServiceActive;
- (BOOL)isServiceOutage;
- (NSPServiceStatusManager)initWithCoder:(id)coder;
- (NSPServiceStatusManager)initWithUserTier:(unint64_t)tier effectiveUserTier:(unint64_t)userTier delegate:(id)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)diagnostics;
- (id)initFromPreferencesWithUserTier:(unint64_t)tier effectiveUserTier:(unint64_t)userTier delegate:(id)delegate;
- (id)pausedBundleIDs;
- (id)pausedProcessPaths;
- (void)clearAllPausedApps;
- (void)clearNetworkStatusForType:(int)type;
- (void)encodeWithCoder:(id)coder;
- (void)handleEffectiveUserTierChange:(unint64_t)change;
- (void)publishDailyNetworkStatus;
- (void)publishDailyServiceStatus;
- (void)reportActiveOnCellularName:(id)name;
- (void)reportActiveOnWiFiName:(id)name;
- (void)reportActivityForApp:(id)app path:(id)path;
- (void)reportBlockedOnCellularName:(id)name;
- (void)reportBlockedOnWiFiName:(id)name;
- (void)reportDisabledOnCellularName:(id)name;
- (void)reportDisabledOnWiFiName:(id)name;
- (void)reportFraudAlert;
- (void)reportServiceActiveShouldReport:(BOOL)report;
- (void)reportServiceDisabledShouldReport:(BOOL)report;
- (void)reportServiceOutageWithType:(unint64_t)type outageReasonStats:(id)stats;
- (void)reportSubscriberUnsupportedRegion:(id)region;
- (void)reportUnsupportedRegion:(id)region;
@end

@implementation NSPServiceStatusManager

- (id)diagnostics
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  serviceStatusTimeline = [(NSPServiceStatusManager *)self serviceStatusTimeline];
  v6 = [serviceStatusTimeline countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(serviceStatusTimeline);
        }

        diagnostics = [*(*(&v35 + 1) + 8 * i) diagnostics];
        if (diagnostics)
        {
          [v4 addObject:diagnostics];
        }
      }

      v7 = [serviceStatusTimeline countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [v3 setObject:v4 forKeyedSubscript:@"ServiceStatus"];
  }

  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = v4;
  v30 = objc_alloc_init(NSMutableArray);
  if (self)
  {
    Property = objc_getProperty(self, v11, 64, 1);
  }

  else
  {
    Property = 0;
  }

  obj = Property;
  v13 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        if (v17)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          networkStatusString = [*(v17 + 8) networkStatusString];
          [v18 setObject:networkStatusString forKeyedSubscript:@"PrivacyProxyNetworkStatusTimeNetworkStatus"];

          networkTypeString = [*(v17 + 8) networkTypeString];
          [v18 setObject:networkTypeString forKeyedSubscript:@"PrivacyProxyNetworkStatusTimeNetworkInterfaceType"];

          v21 = [NSDateFormatter localizedStringFromDate:*(v17 + 16) dateStyle:1 timeStyle:2];
          [v18 setObject:v21 forKeyedSubscript:@"PrivacyProxyNetworkStatusTimeNetworkStartTime"];

          v22 = [NSDateFormatter localizedStringFromDate:*(v17 + 24) dateStyle:1 timeStyle:2];
          [v18 setObject:v22 forKeyedSubscript:@"PrivacyProxyNetworkStatusTimeNetworkEndTime"];

          if (v18)
          {
            [v30 addObject:v18];
          }
        }

        else
        {
          v18 = 0;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v23 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      v14 = v23;
    }

    while (v23);
  }

  if ([v30 count])
  {
    [v3 setObject:v30 forKeyedSubscript:@"NetworkStatus"];
  }

  if ([v3 count])
  {
    v24 = v3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

- (id)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
    sub_1000417D0(v3, serviceStatus, @"Service Status", 0, 14);

    serviceStatusTimeline = [(NSPServiceStatusManager *)self serviceStatusTimeline];
    sub_1000417D0(v3, serviceStatusTimeline, @"Service Status Timeline", 0, 14);

    Property = objc_getProperty(self, v6, 64, 1);
    sub_1000417D0(v3, Property, @"Network Status Timeline", 0, 14);
    appStatuses = [(NSPServiceStatusManager *)self appStatuses];
    sub_1000417D0(v3, appStatuses, @"App Statuses", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPServiceStatusManager allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    generation = self->_generation;
    v4->_diskVersion = self->_diskVersion;
    v4->_generation = generation;
    serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
    objc_setProperty_atomic(v5, v8, serviceStatus, 8);

    serviceStatusTimeline = [(NSPServiceStatusManager *)self serviceStatusTimeline];
    objc_setProperty_atomic(v5, v10, serviceStatusTimeline, 16);

    Property = objc_getProperty(self, v11, 64, 1);
  }

  else
  {
    v4->_diskVersion = 0;
    v4->_generation = 0;
    serviceStatus2 = [0 serviceStatus];
    objc_setProperty_atomic(v5, v18, serviceStatus2, 8);

    serviceStatusTimeline2 = [0 serviceStatusTimeline];
    objc_setProperty_atomic(v5, v20, serviceStatusTimeline2, 16);

    Property = 0;
  }

  objc_setProperty_atomic(v5, v12, Property, 64);
  appStatuses = [(NSPServiceStatusManager *)self appStatuses];
  objc_setProperty_atomic(v5, v15, appStatuses, 24);

  return v5;
}

- (NSPServiceStatusManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = NSPServiceStatusManager;
  v5 = [(NSPServiceStatusManager *)&v20 init];
  if (v5)
  {
    v5->_diskVersion = [coderCopy decodeIntegerForKey:@"DiskVersion"];
    v5->_generation = [coderCopy decodeInt64ForKey:@"Generation"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServiceStatus"];
    serviceStatus = v5->_serviceStatus;
    v5->_serviceStatus = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ServiceStatusTimeline"];
    if (v8)
    {
      v9 = [NSMutableArray arrayWithArray:v8];
      serviceStatusTimeline = v5->_serviceStatusTimeline;
      v5->_serviceStatusTimeline = v9;
    }

    v11 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NetworkStatusTimeline"];
    if (v11)
    {
      v12 = [NSMutableArray arrayWithArray:v11];
      networkStatusTimeline = v5->_networkStatusTimeline;
      v5->_networkStatusTimeline = v12;
    }

    v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AppStatuses"];
    if (v14)
    {
      v15 = [NSMutableArray arrayWithArray:v14];
      appStatuses = v5->_appStatuses;
      v5->_appStatuses = v15;
    }

    v17 = v5;
  }

  else
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v19 = 0;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v19, 2u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:2 forKey:@"DiskVersion"];
  if (self)
  {
    [coderCopy encodeInt64:self->_generation forKey:@"Generation"];
    serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
    [coderCopy encodeObject:serviceStatus forKey:@"ServiceStatus"];

    serviceStatusTimeline = [(NSPServiceStatusManager *)self serviceStatusTimeline];
    [coderCopy encodeObject:serviceStatusTimeline forKey:@"ServiceStatusTimeline"];

    Property = objc_getProperty(self, v6, 64, 1);
  }

  else
  {
    [coderCopy encodeInt64:0 forKey:@"Generation"];
    serviceStatus2 = [0 serviceStatus];
    [coderCopy encodeObject:serviceStatus2 forKey:@"ServiceStatus"];

    serviceStatusTimeline2 = [0 serviceStatusTimeline];
    [coderCopy encodeObject:serviceStatusTimeline2 forKey:@"ServiceStatusTimeline"];

    Property = 0;
  }

  [coderCopy encodeObject:Property forKey:@"NetworkStatusTimeline"];
  appStatuses = [(NSPServiceStatusManager *)self appStatuses];
  [coderCopy encodeObject:appStatuses forKey:@"AppStatuses"];
}

- (NSPServiceStatusManager)initWithUserTier:(unint64_t)tier effectiveUserTier:(unint64_t)userTier delegate:(id)delegate
{
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = NSPServiceStatusManager;
  v9 = [(NSPServiceStatusManager *)&v22 init];
  if (v9)
  {
    v10 = objc_alloc_init(PrivacyProxyServiceStatus);
    serviceStatus = v9->_serviceStatus;
    v9->_serviceStatus = v10;

    [(PrivacyProxyServiceStatus *)v9->_serviceStatus setServiceStatus:0];
    [(PrivacyProxyServiceStatus *)v9->_serviceStatus setNetworkStatuses:0];
    [(PrivacyProxyServiceStatus *)v9->_serviceStatus setDetails:0];
    v12 = objc_alloc_init(NSMutableArray);
    serviceStatusTimeline = v9->_serviceStatusTimeline;
    v9->_serviceStatusTimeline = v12;

    sub_10009C1AC(v9, 0);
    v9->_userTier = tier;
    v9->_effectiveTier = userTier;
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v14 = objc_alloc_init(NSMutableArray);
    networkStatusTimeline = v9->_networkStatusTimeline;
    v9->_networkStatusTimeline = v14;

    v16 = objc_alloc_init(NSMutableArray);
    appStatuses = v9->_appStatuses;
    v9->_appStatuses = v16;

    v9->_generation = 1;
    v18 = v9;
  }

  else
  {
    v20 = nplog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "[super init] failed", v21, 2u);
    }
  }

  return v9;
}

- (id)initFromPreferencesWithUserTier:(unint64_t)tier effectiveUserTier:(unint64_t)userTier delegate:(id)delegate
{
  delegateCopy = delegate;
  v9 = [(NSPServiceStatusManager *)self initWithUserTier:tier effectiveUserTier:userTier delegate:delegateCopy];
  if (v9)
  {
    v10 = CFPreferencesCopyAppValue(@"NSPServiceStatusManagerInfo", kCFPreferencesCurrentApplication);
    if (v10)
    {
      v11 = v10;
      v24 = 0;
      v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v10 error:&v24];
      v13 = v24;
      v14 = v13;
      if (v12)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v14;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the NSP status manager info: %@", buf, 0xCu);
        }

        CFRelease(v11);
        v17 = v9;
LABEL_22:
        v19 = v17;
LABEL_23:

        goto LABEL_24;
      }

      CFRelease(v11);
      v18 = [(NSPServiceStatusManager *)v9 initWithCoder:v12];
      if (!v18)
      {
        v20 = nplog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to decode NSP status manager info", buf, 2u);
        }

        v19 = 0;
        goto LABEL_23;
      }

      v9 = v18;
      if (v18->_diskVersion != 2)
      {
        v21 = nplog_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          diskVersion = v9->_diskVersion;
          *buf = 134218240;
          v26 = diskVersion;
          v27 = 2048;
          v28 = 2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Saved disk version of status manager info (%ld) does not match latest supported version (%ld)", buf, 0x16u);
        }

        v17 = [(NSPServiceStatusManager *)v9 initWithUserTier:tier effectiveUserTier:userTier delegate:delegateCopy];
        goto LABEL_22;
      }
    }

    else
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "no saved status manager info", buf, 2u);
      }
    }
  }

  v19 = v9;
LABEL_24:

  return v19;
}

+ (void)removeFromPreferences
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"NSPServiceStatusManagerInfo", 0, kCFPreferencesCurrentApplication);
  v2 = CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  v3 = nplog_obj();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removed status manager info from preference file", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to remove status manager info from preference file", buf, 2u);
  }
}

- (void)publishDailyServiceStatus
{
  v3 = objc_alloc_init(NSPServiceStatusStats);
  if (self)
  {
    if (self->_effectiveTier >= 3)
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", self->_effectiveTier];
    }

    else
    {
      v4 = *(&off_10010AC00 + (self->_effectiveTier & 3));
    }
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  [(NSPServiceStatusStats *)v3 setTierType:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  serviceStatusTimeline = [(NSPServiceStatusManager *)self serviceStatusTimeline];
  v6 = [serviceStatusTimeline countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(serviceStatusTimeline);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        serviceStatusEndTime = [v10 serviceStatusEndTime];
        if (!serviceStatusEndTime)
        {
          goto LABEL_14;
        }

        v12 = serviceStatusEndTime;
        v13 = +[NSDate now];
        serviceStatusEndTime2 = [v10 serviceStatusEndTime];
        [v13 timeIntervalSinceDate:serviceStatusEndTime2];
        v16 = v15;

        if (v16 <= 86400.0)
        {
LABEL_14:
          serviceStatus = [v10 serviceStatus];
          if (serviceStatus > 3)
          {
            if (serviceStatus > 5)
            {
              if (serviceStatus == 6)
              {
                [(NSPServiceStatusStats *)v3 setServiceStatusSubscriberUnsupportedRegionCount:[(NSPServiceStatusStats *)v3 serviceStatusSubscriberUnsupportedRegionCount]+ 1];
              }

              else if (serviceStatus == 7)
              {
                [(NSPServiceStatusStats *)v3 setServiceStatusNetworkOutageCount:[(NSPServiceStatusStats *)v3 serviceStatusNetworkOutageCount]+ 1];
              }
            }

            else if (serviceStatus == 4)
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusUnsupportedRegionCount:[(NSPServiceStatusStats *)v3 serviceStatusUnsupportedRegionCount]+ 1];
            }

            else
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusSystemIncompatibleCount:[(NSPServiceStatusStats *)v3 serviceStatusSystemIncompatibleCount]+ 1];
            }
          }

          else if (serviceStatus > 1)
          {
            if (serviceStatus == 2)
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusOutageCount:[(NSPServiceStatusStats *)v3 serviceStatusOutageCount]+ 1];
            }

            else
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusFraudAlertCount:[(NSPServiceStatusStats *)v3 serviceStatusFraudAlertCount]+ 1];
            }
          }

          else if (serviceStatus)
          {
            if (serviceStatus == 1)
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusActiveCount:[(NSPServiceStatusStats *)v3 serviceStatusActiveCount]+ 1];
            }
          }

          else
          {
            [(NSPServiceStatusStats *)v3 setServiceStatusDisabledCount:[(NSPServiceStatusStats *)v3 serviceStatusDisabledCount]+ 1];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v18 = [serviceStatusTimeline countByEnumeratingWithState:&v19 objects:v23 count:16];
      v7 = v18;
    }

    while (v18);
  }

  [(NSPProxyAnalytics *)v3 sendAnalytics];
}

- (void)publishDailyNetworkStatus
{
  v3 = objc_alloc_init(NSPNetworkStatusStats);
  v4 = v3;
  if (self)
  {
    if (self->_effectiveTier >= 3)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_effectiveTier];
    }

    else
    {
      v5 = *(&off_10010AC00 + (self->_effectiveTier & 3));
    }

    [(NSPNetworkStatusStats *)v4 setTierType:v5];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    Property = objc_getProperty(self, v6, 64, 1);
  }

  else
  {
    [(NSPNetworkStatusStats *)v3 setTierType:@"UNKNOWN"];

    Property = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
  }

  v8 = Property;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        if (v13)
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            v15 = v14;
            v16 = +[NSDate now];
            [v16 timeIntervalSinceDate:*(v13 + 24)];
            v18 = v17;

            if (v18 > 86400.0)
            {
              goto LABEL_54;
            }
          }

          v19 = *(v13 + 8);
        }

        else
        {
          v19 = 0;
        }

        networkStatus = [v19 networkStatus];
        if (networkStatus == 2)
        {
          if (v13)
          {
            v23 = *(v13 + 8);
          }

          else
          {
            v23 = 0;
          }

          if ([v23 networkType] == 1)
          {
            [(NSPNetworkStatusStats *)v4 setWifiStatusBlockedCount:[(NSPNetworkStatusStats *)v4 wifiStatusBlockedCount]+ 1];
          }

          else
          {
            if (v13)
            {
              v25 = *(v13 + 8);
            }

            else
            {
              v25 = 0;
            }

            if ([v25 networkType] == 2)
            {
              [(NSPNetworkStatusStats *)v4 setCellStatusBlockedCount:[(NSPNetworkStatusStats *)v4 cellStatusBlockedCount]+ 1];
            }

            else
            {
              if (v13)
              {
                v28 = *(v13 + 8);
              }

              else
              {
                v28 = 0;
              }

              if ([v28 networkType] == 3)
              {
                [(NSPNetworkStatusStats *)v4 setWiredStatusBlockedCount:[(NSPNetworkStatusStats *)v4 wiredStatusBlockedCount]+ 1];
              }
            }
          }
        }

        else if (networkStatus == 1)
        {
          if (v13)
          {
            v22 = *(v13 + 8);
          }

          else
          {
            v22 = 0;
          }

          if ([v22 networkType] == 1)
          {
            [(NSPNetworkStatusStats *)v4 setWifiStatusActiveCount:[(NSPNetworkStatusStats *)v4 wifiStatusActiveCount]+ 1];
          }

          else
          {
            if (v13)
            {
              v24 = *(v13 + 8);
            }

            else
            {
              v24 = 0;
            }

            if ([v24 networkType] == 2)
            {
              [(NSPNetworkStatusStats *)v4 setCellStatusActiveCount:[(NSPNetworkStatusStats *)v4 cellStatusActiveCount]+ 1];
            }

            else
            {
              if (v13)
              {
                v27 = *(v13 + 8);
              }

              else
              {
                v27 = 0;
              }

              if ([v27 networkType] == 3)
              {
                [(NSPNetworkStatusStats *)v4 setWiredStatusActiveCount:[(NSPNetworkStatusStats *)v4 wiredStatusActiveCount]+ 1];
              }
            }
          }
        }

        else if (!networkStatus)
        {
          if (v13)
          {
            v21 = *(v13 + 8);
          }

          else
          {
            v21 = 0;
          }

          if ([v21 networkType] == 1)
          {
            [(NSPNetworkStatusStats *)v4 setWifiStatusDisabledCount:[(NSPNetworkStatusStats *)v4 wifiStatusDisabledCount]+ 1];
          }

          else
          {
            if (v13)
            {
              v26 = *(v13 + 8);
            }

            else
            {
              v26 = 0;
            }

            if ([v26 networkType] == 2)
            {
              [(NSPNetworkStatusStats *)v4 setCellStatusDisabledCount:[(NSPNetworkStatusStats *)v4 cellStatusDisabledCount]+ 1];
            }

            else
            {
              if (v13)
              {
                v29 = *(v13 + 8);
              }

              else
              {
                v29 = 0;
              }

              if ([v29 networkType] == 3)
              {
                [(NSPNetworkStatusStats *)v4 setWiredStatusDisabledCount:[(NSPNetworkStatusStats *)v4 wiredStatusDisabledCount]+ 1];
              }
            }
          }
        }

LABEL_54:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v30 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v10 = v30;
    }

    while (v30);
  }

  [(NSPProxyAnalytics *)v4 sendAnalytics];
}

- (void)handleEffectiveUserTierChange:(unint64_t)change
{
  if (self)
  {
    if (self->_effectiveTier != change)
    {
      self->_effectiveTier = change;
    }
  }
}

- (void)reportServiceActiveShouldReport:(BOOL)report
{
  if (self && self->_effectiveTier == 2)
  {
    serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
    v5ServiceStatus = [serviceStatus serviceStatus];

    if (!v5ServiceStatus)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [PrivacyProxyServiceStatus serviceStatusString:1];
        serviceStatus2 = [(NSPServiceStatusManager *)self serviceStatus];
        v11 = +[PrivacyProxyServiceStatus serviceStatusString:](PrivacyProxyServiceStatus, "serviceStatusString:", [serviceStatus2 serviceStatus]);
        v24 = 138412546;
        v25 = v9;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting service status %@, previous service status %@", &v24, 0x16u);
      }

      if (!report)
      {
        serviceStatus3 = [(NSPServiceStatusManager *)self serviceStatus];
        [serviceStatus3 setServiceStatus:1];

        sub_10009C1AC(self, 1);
        ++self->_generation;
        [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
        return;
      }

      goto LABEL_13;
    }

    if (self->_lastOutageType)
    {
      serviceStatus4 = [(NSPServiceStatusManager *)self serviceStatus];
      if ([serviceStatus4 serviceStatus] == 2)
      {

LABEL_12:
        serviceStatusTimeline = [(NSPServiceStatusManager *)self serviceStatusTimeline];
        lastObject = [serviceStatusTimeline lastObject];

        serviceStatusStartTime = [lastObject serviceStatusStartTime];
        v18 = +[NSDate now];
        [v18 timeIntervalSinceDate:serviceStatusStartTime];
        v20 = v19;

        v21 = objc_alloc_init(NSPOutageDurationStats);
        [(NSPOutageDurationStats *)v21 setOutageType:self->_lastOutageType];
        [(NSPOutageDurationStats *)v21 setOutageDurationSec:v20];
        [(NSPProxyAnalytics *)v21 sendAnalytics];

        goto LABEL_13;
      }

      serviceStatus5 = [(NSPServiceStatusManager *)self serviceStatus];
      v13ServiceStatus = [serviceStatus5 serviceStatus];

      if (v13ServiceStatus == 7)
      {
        goto LABEL_12;
      }
    }

LABEL_13:
    v22 = sub_10003A340(@"RECOVERED_TITLE", @"RECOVERED_TITLE");
    v23 = sub_10003A340(@"RECOVERED_SAFARI", @"RECOVERED_SAFARI");
    sub_10009D038(self, 1, v22, v23, 0);
  }
}

- (void)reportServiceDisabledShouldReport:(BOOL)report
{
  if (self && self->_effectiveTier == 2 || report)
  {
    if (report)
    {
      v12 = sub_10003A340(@"UNAVAILABLE_TITLE", @"UNAVAILABLE_TITLE");
      v4 = sub_10003A340(@"UNAVAILABLE", @"UNAVAILABLE");
      sub_10009D038(self, 0, v12, v4, 0);
    }

    else
    {
      serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
      v5ServiceStatus = [serviceStatus serviceStatus];

      if (v5ServiceStatus)
      {
        v7 = nplog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [PrivacyProxyServiceStatus serviceStatusString:0];
          serviceStatus2 = [(NSPServiceStatusManager *)self serviceStatus];
          v10 = +[PrivacyProxyServiceStatus serviceStatusString:](PrivacyProxyServiceStatus, "serviceStatusString:", [serviceStatus2 serviceStatus]);
          *buf = 138412546;
          v14 = v8;
          v15 = 2112;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting service status %@, previous service status %@", buf, 0x16u);
        }

        serviceStatus3 = [(NSPServiceStatusManager *)self serviceStatus];
        [serviceStatus3 setServiceStatus:0];

        sub_10009C1AC(self, 0);
        if (self)
        {
          ++self->_generation;
          [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
        }
      }
    }
  }
}

- (void)reportServiceOutageWithType:(unint64_t)type outageReasonStats:(id)stats
{
  statsCopy = stats;
  if (self && self->_effectiveTier == 2)
  {
    if (type == 2)
    {
      effectiveTier = 7;
    }

    else
    {
      effectiveTier = self->_effectiveTier;
    }

    serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
    v8ServiceStatus = [serviceStatus serviceStatus];

    if (v8ServiceStatus != effectiveTier)
    {
      self->_lastOutageType = type;
      [statsCopy sendAnalytics];
    }

    if (type == 2)
    {
      v10 = sub_10003A340(@"CAPTIVE_WARNING_NO_NETWORK", @"CAPTIVE_WARNING_NO_NETWORK");
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      serviceStatus2 = [(NSPServiceStatusManager *)self serviceStatus];
      networkStatuses = [serviceStatus2 networkStatuses];

      v13 = [networkStatuses countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(networkStatuses);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            if ([v17 networkType] == 1)
            {
              networkName = [v17 networkName];

              if (networkName)
              {
                v24 = sub_10003A340(@"CAPTIVE_WARNING", @"CAPTIVE_WARNING");
                networkName2 = [v17 networkName];
                v26 = [NSString stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:0, networkName2];

                v10 = v26;
                goto LABEL_21;
              }
            }
          }

          v14 = [networkStatuses countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v19 = sub_10003A340(@"CAPTIVE_WARNING_TITLE", @"CAPTIVE_WARNING_TITLE");
      selfCopy2 = self;
      v21 = 7;
      v22 = v19;
      v23 = v10;
    }

    else
    {
      v10 = sub_10003A340(@"OUTAGE_WARNING_TITLE", @"OUTAGE_WARNING_TITLE");
      v19 = sub_10003A340(@"OUTAGE_WARNING", @"OUTAGE_WARNING");
      selfCopy2 = self;
      v21 = 2;
      v22 = v10;
      v23 = v19;
    }

    sub_10009D038(selfCopy2, v21, v22, v23, 0);
  }
}

- (BOOL)isServiceActive
{
  if (!self || self->_effectiveTier != 2)
  {
    return 0;
  }

  serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
  v3 = [serviceStatus serviceStatus] == 1;

  return v3;
}

- (BOOL)isServiceOutage
{
  if (!self || self->_effectiveTier != 2)
  {
    return 0;
  }

  serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
  v3 = [serviceStatus serviceStatus] == 2;

  return v3;
}

- (BOOL)isNetworkOutage
{
  if (!self || self->_effectiveTier != 2)
  {
    return 0;
  }

  serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
  v3 = [serviceStatus serviceStatus] == 7;

  return v3;
}

- (void)reportFraudAlert
{
  if (self && self->_effectiveTier == 2)
  {
    v6 = sub_10003A340(@"FRAUD_WARNING_TITLE", @"FRAUD_WARNING_TITLE");
    v3 = sub_10003A4DC(@"FRAUD_WARNING");
    v4 = sub_10003A4DC(@"FRAUD_WARNING");
    v5 = sub_10003A340(v3, v4);
    sub_10009D038(self, 3, v6, v5, 0);
  }
}

- (void)reportUnsupportedRegion:(id)region
{
  regionCopy = region;
  v5 = regionCopy;
  if (self && self->_userTier == 2)
  {
    if (regionCopy)
    {
      v9 = kPrivacyProxyServiceStatusDetailsRegionIDKey;
      v10 = regionCopy;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_10003A340(@"REGION_WARNING_TITLE", @"REGION_WARNING_TITLE");
    v8 = sub_10003A340(@"REGION_WARNING", @"REGION_WARNING");
    sub_10009D038(self, 4, v7, v8, v6);
  }
}

- (void)reportSubscriberUnsupportedRegion:(id)region
{
  regionCopy = region;
  v5 = regionCopy;
  if (self && self->_userTier == 2)
  {
    if (regionCopy)
    {
      v9 = kPrivacyProxyServiceStatusDetailsRegionIDKey;
      v10 = regionCopy;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_10003A340(@"REGION_WARNING_TITLE", @"REGION_WARNING_TITLE");
    v8 = sub_10003A340(@"REGION_WARNING", @"REGION_WARNING");
    sub_10009D038(self, 6, v7, v8, v6);
  }
}

- (void)clearNetworkStatusForType:(int)type
{
  v5 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  serviceStatus = [(NSPServiceStatusManager *)self serviceStatus];
  networkStatuses = [serviceStatus networkStatuses];

  v8 = [networkStatuses countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(networkStatuses);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 networkType] == type)
        {
          v10 = 1;
        }

        else
        {
          [v5 addObject:v13];
        }
      }

      v9 = [networkStatuses countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);

    serviceStatus2 = [(NSPServiceStatusManager *)self serviceStatus];
    [serviceStatus2 setNetworkStatuses:v5];

    if (self != 0 && (v10 & 1) != 0)
    {
      ++self->_generation;
      [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
    }
  }

  else
  {

    serviceStatus3 = [(NSPServiceStatusManager *)self serviceStatus];
    [serviceStatus3 setNetworkStatuses:v5];
  }
}

- (void)reportActiveOnWiFiName:(id)name
{
  nameCopy = name;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138477827;
    v7 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Wi-Fi network %{private}@ is active", &v6, 0xCu);
  }

  sub_10009DF8C(self, 1, 1, nameCopy);
}

- (void)reportDisabledOnWiFiName:(id)name
{
  nameCopy = name;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi network %{private}@ is disabled", &v6, 0xCu);
  }

  sub_10009DF8C(self, 0, 1, nameCopy);
}

- (void)reportBlockedOnWiFiName:(id)name
{
  nameCopy = name;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi network %{private}@ is blocked", buf, 0xCu);
  }

  if (sub_10009DF8C(self, 2, 1, nameCopy))
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 56, 1);
    }

    else
    {
      Property = 0;
    }

    sub_1000AE3DC(Property);
    v8 = sub_10003A340(@"WARNING_TITLE", @"WARNING_TITLE");
    nameCopy = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, nameCopy];

    v10 = [NSPUserNotification alloc];
    v11 = sub_10003A340(@"WIFI_WARNING", @"WIFI_WARNING");
    v12 = sub_10003A340(@"USE_WITHOUT_PROXY", @"USE_WITHOUT_PROXY");
    v13 = sub_10003A340(@"USE_OTHER_NETWORK", @"USE_OTHER_NETWORK");
    v14 = sub_100054464(self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10009EBE4;
    v17[3] = &unk_10010A0D0;
    v17[4] = self;
    v18 = nameCopy;
    v16 = sub_1000ADECC(v10, nameCopy, v11, v12, v13, 0, 0, v14, v17);
    if (self)
    {
      objc_setProperty_atomic(self, v15, v16, 56);
    }
  }
}

- (void)reportActiveOnCellularName:(id)name
{
  nameCopy = name;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Cellular network %@ is active", &v6, 0xCu);
  }

  sub_10009DF8C(self, 1, 2, nameCopy);
}

- (void)reportDisabledOnCellularName:(id)name
{
  nameCopy = name;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cellular network %@ is disabled", &v6, 0xCu);
  }

  sub_10009DF8C(self, 0, 2, nameCopy);
}

- (void)reportBlockedOnCellularName:(id)name
{
  nameCopy = name;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cellular network %@ is blocked", buf, 0xCu);
  }

  if (sub_10009DF8C(self, 2, 2, nameCopy))
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 56, 1);
    }

    else
    {
      Property = 0;
    }

    sub_1000AE3DC(Property);
    v8 = [NSPUserNotification alloc];
    v9 = sub_10003A340(@"CELLULAR_WARNING_TITLE", @"CELLULAR_WARNING_TITLE");
    v10 = sub_10003A340(@"CELLULAR_WARNING", @"CELLULAR_WARNING");
    v11 = sub_10003A340(@"USE_WITHOUT_PROXY", @"USE_WITHOUT_PROXY");
    v12 = sub_10003A340(@"CELLULAR_SETTINGS", @"CELLULAR_SETTINGS");
    v13 = sub_100054464(self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10009F108;
    v16[3] = &unk_10010A0D0;
    v16[4] = self;
    v17 = nameCopy;
    v15 = sub_1000ADECC(v8, v9, v10, v11, v12, 0, 0, v13, v16);
    if (self)
    {
      objc_setProperty_atomic(self, v14, v15, 56);
    }
  }
}

- (void)reportActivityForApp:(id)app path:(id)path
{
  appCopy = app;
  pathCopy = path;
  v23 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  appStatuses = [(NSPServiceStatusManager *)self appStatuses];
  v8 = [appStatuses countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v8)
  {

    if (!appCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v9 = v8;
  selfCopy = self;
  v10 = *v25;
  v11 = 1;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(appStatuses);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      bundleIdentifier = [v13 bundleIdentifier];
      if ([bundleIdentifier isEqualToString:appCopy])
      {
      }

      else
      {
        path = [v13 path];
        v16 = [path isEqualToString:pathCopy];

        if (!v16)
        {
          goto LABEL_11;
        }
      }

      if ([v13 appStatus] != 2)
      {
        continue;
      }

      v11 = 0;
LABEL_11:
      [v23 addObject:v13];
    }

    v9 = [appStatuses countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v9);

  self = selfCopy;
  if (v11)
  {
    if (!appCopy)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (pathCopy || (+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace, "defaultWorkspace"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 applicationIsInstalled:appCopy], v17, (v18 & 1) != 0))
    {
LABEL_20:
      v19 = +[NSDate now];
      v20 = [[PrivacyProxyAppStatus alloc] initWithStatus:1 bundleID:appCopy path:pathCopy activeDate:v19];
      [v23 addObject:v20];
      sub_10009F750(self, v23, v19);
      if (self)
      {
        ++self->_generation;
        [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
      }
    }

    else
    {
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = appCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Bundle ID %@ not known to launch services, ignoring", buf, 0xCu);
      }
    }
  }
}

- (BOOL)changePausedState:(BOOL)state forApp:(id)app path:(id)path
{
  stateCopy = state;
  appCopy = app;
  pathCopy = path;
  if (stateCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  appStatuses = [(NSPServiceStatusManager *)self appStatuses];
  v12 = [appStatuses countByEnumeratingWithState:&v38 objects:v42 count:16];
  v13 = NEPolicySession_ptr;
  if (!v12)
  {

    goto LABEL_22;
  }

  v14 = v12;
  selfCopy = self;
  v34 = 0;
  v15 = *v39;
  v16 = 1;
  do
  {
    v17 = 0;
    v36 = v14;
    do
    {
      if (*v39 != v15)
      {
        objc_enumerationMutation(appStatuses);
      }

      v18 = *(*(&v38 + 1) + 8 * v17);
      bundleIdentifier = [v18 bundleIdentifier];
      if ([bundleIdentifier isEqualToString:appCopy])
      {
      }

      else
      {
        v37 = v16;
        [v18 path];
        v20 = v15;
        v21 = appStatuses;
        v22 = v9;
        v23 = v10;
        v25 = v24 = appCopy;
        v26 = [v25 isEqualToString:pathCopy];

        appCopy = v24;
        v10 = v23;
        v9 = v22;
        appStatuses = v21;
        v15 = v20;
        v14 = v36;

        if (!v26)
        {
          v16 = v37;
          goto LABEL_16;
        }
      }

      if ([v18 appStatus] == v9)
      {
        v16 = 0;
      }

      else
      {
        [v18 setAppStatus:v9];
        v16 = 0;
        v34 = 1;
      }

LABEL_16:
      [v10 addObject:v18];
      v17 = v17 + 1;
    }

    while (v14 != v17);
    v14 = [appStatuses countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v14);

  self = selfCopy;
  v13 = NEPolicySession_ptr;
  if (v16)
  {
LABEL_22:
    v28 = [PrivacyProxyAppStatus alloc];
    v29 = [v13[73] now];
    v30 = [v28 initWithStatus:v9 bundleID:appCopy path:pathCopy activeDate:v29];

    [v10 addObject:v30];
    goto LABEL_23;
  }

  if ((v34 & 1) == 0)
  {
    v27 = 0;
    goto LABEL_26;
  }

LABEL_23:
  v31 = [v13[73] now];
  sub_10009F750(self, v10, v31);

  if (self)
  {
    ++self->_generation;
    [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
  }

  v27 = 1;
LABEL_26:

  return v27;
}

- (void)clearAllPausedApps
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  appStatuses = [(NSPServiceStatusManager *)self appStatuses];
  v5 = [appStatuses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(appStatuses);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 appStatus] == 2)
        {
          [v9 setAppStatus:1];
        }

        [v3 addObject:v9];
      }

      v6 = [appStatuses countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = +[NSDate now];
  sub_10009F750(self, v3, v10);

  if (self)
  {
    ++self->_generation;
    [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
  }
}

- (BOOL)hasPausedApps
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  appStatuses = [(NSPServiceStatusManager *)self appStatuses];
  v3 = [appStatuses countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(appStatuses);
        }

        if ([*(*(&v7 + 1) + 8 * i) appStatus] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [appStatuses countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)pausedBundleIDs
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  appStatuses = [(NSPServiceStatusManager *)self appStatuses];
  v3 = [appStatuses countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(appStatuses);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 appStatus] == 2)
        {
          bundleIdentifier = [v8 bundleIdentifier];

          if (bundleIdentifier)
          {
            if (!v5)
            {
              v5 = objc_alloc_init(NSMutableArray);
            }

            bundleIdentifier2 = [v8 bundleIdentifier];
            [v5 addObject:bundleIdentifier2];
          }
        }
      }

      v4 = [appStatuses countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pausedProcessPaths
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  appStatuses = [(NSPServiceStatusManager *)self appStatuses];
  v3 = [appStatuses countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(appStatuses);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 appStatus] == 2)
        {
          path = [v8 path];

          if (path)
          {
            if (!v5)
            {
              v5 = objc_alloc_init(NSMutableArray);
            }

            path2 = [v8 path];
            [v5 addObject:path2];
          }
        }
      }

      v4 = [appStatuses countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end