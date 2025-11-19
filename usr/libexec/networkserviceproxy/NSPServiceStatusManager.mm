@interface NSPServiceStatusManager
+ (void)removeFromPreferences;
- (BOOL)changePausedState:(BOOL)a3 forApp:(id)a4 path:(id)a5;
- (BOOL)hasPausedApps;
- (BOOL)isNetworkOutage;
- (BOOL)isServiceActive;
- (BOOL)isServiceOutage;
- (NSPServiceStatusManager)initWithCoder:(id)a3;
- (NSPServiceStatusManager)initWithUserTier:(unint64_t)a3 effectiveUserTier:(unint64_t)a4 delegate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)diagnostics;
- (id)initFromPreferencesWithUserTier:(unint64_t)a3 effectiveUserTier:(unint64_t)a4 delegate:(id)a5;
- (id)pausedBundleIDs;
- (id)pausedProcessPaths;
- (void)clearAllPausedApps;
- (void)clearNetworkStatusForType:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleEffectiveUserTierChange:(unint64_t)a3;
- (void)publishDailyNetworkStatus;
- (void)publishDailyServiceStatus;
- (void)reportActiveOnCellularName:(id)a3;
- (void)reportActiveOnWiFiName:(id)a3;
- (void)reportActivityForApp:(id)a3 path:(id)a4;
- (void)reportBlockedOnCellularName:(id)a3;
- (void)reportBlockedOnWiFiName:(id)a3;
- (void)reportDisabledOnCellularName:(id)a3;
- (void)reportDisabledOnWiFiName:(id)a3;
- (void)reportFraudAlert;
- (void)reportServiceActiveShouldReport:(BOOL)a3;
- (void)reportServiceDisabledShouldReport:(BOOL)a3;
- (void)reportServiceOutageWithType:(unint64_t)a3 outageReasonStats:(id)a4;
- (void)reportSubscriberUnsupportedRegion:(id)a3;
- (void)reportUnsupportedRegion:(id)a3;
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
  v5 = [(NSPServiceStatusManager *)self serviceStatusTimeline];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v35 + 1) + 8 * i) diagnostics];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          v19 = [*(v17 + 8) networkStatusString];
          [v18 setObject:v19 forKeyedSubscript:@"PrivacyProxyNetworkStatusTimeNetworkStatus"];

          v20 = [*(v17 + 8) networkTypeString];
          [v18 setObject:v20 forKeyedSubscript:@"PrivacyProxyNetworkStatusTimeNetworkInterfaceType"];

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
    v4 = [(NSPServiceStatusManager *)self serviceStatus];
    sub_1000417D0(v3, v4, @"Service Status", 0, 14);

    v5 = [(NSPServiceStatusManager *)self serviceStatusTimeline];
    sub_1000417D0(v3, v5, @"Service Status Timeline", 0, 14);

    Property = objc_getProperty(self, v6, 64, 1);
    sub_1000417D0(v3, Property, @"Network Status Timeline", 0, 14);
    v8 = [(NSPServiceStatusManager *)self appStatuses];
    sub_1000417D0(v3, v8, @"App Statuses", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPServiceStatusManager allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    generation = self->_generation;
    v4->_diskVersion = self->_diskVersion;
    v4->_generation = generation;
    v7 = [(NSPServiceStatusManager *)self serviceStatus];
    objc_setProperty_atomic(v5, v8, v7, 8);

    v9 = [(NSPServiceStatusManager *)self serviceStatusTimeline];
    objc_setProperty_atomic(v5, v10, v9, 16);

    Property = objc_getProperty(self, v11, 64, 1);
  }

  else
  {
    v4->_diskVersion = 0;
    v4->_generation = 0;
    v17 = [0 serviceStatus];
    objc_setProperty_atomic(v5, v18, v17, 8);

    v19 = [0 serviceStatusTimeline];
    objc_setProperty_atomic(v5, v20, v19, 16);

    Property = 0;
  }

  objc_setProperty_atomic(v5, v12, Property, 64);
  v14 = [(NSPServiceStatusManager *)self appStatuses];
  objc_setProperty_atomic(v5, v15, v14, 24);

  return v5;
}

- (NSPServiceStatusManager)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NSPServiceStatusManager;
  v5 = [(NSPServiceStatusManager *)&v20 init];
  if (v5)
  {
    v5->_diskVersion = [v4 decodeIntegerForKey:@"DiskVersion"];
    v5->_generation = [v4 decodeInt64ForKey:@"Generation"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServiceStatus"];
    serviceStatus = v5->_serviceStatus;
    v5->_serviceStatus = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ServiceStatusTimeline"];
    if (v8)
    {
      v9 = [NSMutableArray arrayWithArray:v8];
      serviceStatusTimeline = v5->_serviceStatusTimeline;
      v5->_serviceStatusTimeline = v9;
    }

    v11 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NetworkStatusTimeline"];
    if (v11)
    {
      v12 = [NSMutableArray arrayWithArray:v11];
      networkStatusTimeline = v5->_networkStatusTimeline;
      v5->_networkStatusTimeline = v12;
    }

    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AppStatuses"];
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

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeInteger:2 forKey:@"DiskVersion"];
  if (self)
  {
    [v11 encodeInt64:self->_generation forKey:@"Generation"];
    v4 = [(NSPServiceStatusManager *)self serviceStatus];
    [v11 encodeObject:v4 forKey:@"ServiceStatus"];

    v5 = [(NSPServiceStatusManager *)self serviceStatusTimeline];
    [v11 encodeObject:v5 forKey:@"ServiceStatusTimeline"];

    Property = objc_getProperty(self, v6, 64, 1);
  }

  else
  {
    [v11 encodeInt64:0 forKey:@"Generation"];
    v9 = [0 serviceStatus];
    [v11 encodeObject:v9 forKey:@"ServiceStatus"];

    v10 = [0 serviceStatusTimeline];
    [v11 encodeObject:v10 forKey:@"ServiceStatusTimeline"];

    Property = 0;
  }

  [v11 encodeObject:Property forKey:@"NetworkStatusTimeline"];
  v8 = [(NSPServiceStatusManager *)self appStatuses];
  [v11 encodeObject:v8 forKey:@"AppStatuses"];
}

- (NSPServiceStatusManager)initWithUserTier:(unint64_t)a3 effectiveUserTier:(unint64_t)a4 delegate:(id)a5
{
  v8 = a5;
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
    v9->_userTier = a3;
    v9->_effectiveTier = a4;
    objc_storeWeak(&v9->_delegate, v8);
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

- (id)initFromPreferencesWithUserTier:(unint64_t)a3 effectiveUserTier:(unint64_t)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = [(NSPServiceStatusManager *)self initWithUserTier:a3 effectiveUserTier:a4 delegate:v8];
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

        v17 = [(NSPServiceStatusManager *)v9 initWithUserTier:a3 effectiveUserTier:a4 delegate:v8];
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
  v5 = [(NSPServiceStatusManager *)self serviceStatusTimeline];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [v10 serviceStatusEndTime];
        if (!v11)
        {
          goto LABEL_14;
        }

        v12 = v11;
        v13 = +[NSDate now];
        v14 = [v10 serviceStatusEndTime];
        [v13 timeIntervalSinceDate:v14];
        v16 = v15;

        if (v16 <= 86400.0)
        {
LABEL_14:
          v17 = [v10 serviceStatus];
          if (v17 > 3)
          {
            if (v17 > 5)
            {
              if (v17 == 6)
              {
                [(NSPServiceStatusStats *)v3 setServiceStatusSubscriberUnsupportedRegionCount:[(NSPServiceStatusStats *)v3 serviceStatusSubscriberUnsupportedRegionCount]+ 1];
              }

              else if (v17 == 7)
              {
                [(NSPServiceStatusStats *)v3 setServiceStatusNetworkOutageCount:[(NSPServiceStatusStats *)v3 serviceStatusNetworkOutageCount]+ 1];
              }
            }

            else if (v17 == 4)
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusUnsupportedRegionCount:[(NSPServiceStatusStats *)v3 serviceStatusUnsupportedRegionCount]+ 1];
            }

            else
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusSystemIncompatibleCount:[(NSPServiceStatusStats *)v3 serviceStatusSystemIncompatibleCount]+ 1];
            }
          }

          else if (v17 > 1)
          {
            if (v17 == 2)
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusOutageCount:[(NSPServiceStatusStats *)v3 serviceStatusOutageCount]+ 1];
            }

            else
            {
              [(NSPServiceStatusStats *)v3 setServiceStatusFraudAlertCount:[(NSPServiceStatusStats *)v3 serviceStatusFraudAlertCount]+ 1];
            }
          }

          else if (v17)
          {
            if (v17 == 1)
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
      v18 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

        v20 = [v19 networkStatus];
        if (v20 == 2)
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

        else if (v20 == 1)
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

        else if (!v20)
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

- (void)handleEffectiveUserTierChange:(unint64_t)a3
{
  if (self)
  {
    if (self->_effectiveTier != a3)
    {
      self->_effectiveTier = a3;
    }
  }
}

- (void)reportServiceActiveShouldReport:(BOOL)a3
{
  if (self && self->_effectiveTier == 2)
  {
    v5 = [(NSPServiceStatusManager *)self serviceStatus];
    v6 = [v5 serviceStatus];

    if (!v6)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [PrivacyProxyServiceStatus serviceStatusString:1];
        v10 = [(NSPServiceStatusManager *)self serviceStatus];
        v11 = +[PrivacyProxyServiceStatus serviceStatusString:](PrivacyProxyServiceStatus, "serviceStatusString:", [v10 serviceStatus]);
        v24 = 138412546;
        v25 = v9;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting service status %@, previous service status %@", &v24, 0x16u);
      }

      if (!a3)
      {
        v12 = [(NSPServiceStatusManager *)self serviceStatus];
        [v12 setServiceStatus:1];

        sub_10009C1AC(self, 1);
        ++self->_generation;
        [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
        return;
      }

      goto LABEL_13;
    }

    if (self->_lastOutageType)
    {
      v7 = [(NSPServiceStatusManager *)self serviceStatus];
      if ([v7 serviceStatus] == 2)
      {

LABEL_12:
        v15 = [(NSPServiceStatusManager *)self serviceStatusTimeline];
        v16 = [v15 lastObject];

        v17 = [v16 serviceStatusStartTime];
        v18 = +[NSDate now];
        [v18 timeIntervalSinceDate:v17];
        v20 = v19;

        v21 = objc_alloc_init(NSPOutageDurationStats);
        [(NSPOutageDurationStats *)v21 setOutageType:self->_lastOutageType];
        [(NSPOutageDurationStats *)v21 setOutageDurationSec:v20];
        [(NSPProxyAnalytics *)v21 sendAnalytics];

        goto LABEL_13;
      }

      v13 = [(NSPServiceStatusManager *)self serviceStatus];
      v14 = [v13 serviceStatus];

      if (v14 == 7)
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

- (void)reportServiceDisabledShouldReport:(BOOL)a3
{
  if (self && self->_effectiveTier == 2 || a3)
  {
    if (a3)
    {
      v12 = sub_10003A340(@"UNAVAILABLE_TITLE", @"UNAVAILABLE_TITLE");
      v4 = sub_10003A340(@"UNAVAILABLE", @"UNAVAILABLE");
      sub_10009D038(self, 0, v12, v4, 0);
    }

    else
    {
      v5 = [(NSPServiceStatusManager *)self serviceStatus];
      v6 = [v5 serviceStatus];

      if (v6)
      {
        v7 = nplog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [PrivacyProxyServiceStatus serviceStatusString:0];
          v9 = [(NSPServiceStatusManager *)self serviceStatus];
          v10 = +[PrivacyProxyServiceStatus serviceStatusString:](PrivacyProxyServiceStatus, "serviceStatusString:", [v9 serviceStatus]);
          *buf = 138412546;
          v14 = v8;
          v15 = 2112;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting service status %@, previous service status %@", buf, 0x16u);
        }

        v11 = [(NSPServiceStatusManager *)self serviceStatus];
        [v11 setServiceStatus:0];

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

- (void)reportServiceOutageWithType:(unint64_t)a3 outageReasonStats:(id)a4
{
  v6 = a4;
  if (self && self->_effectiveTier == 2)
  {
    if (a3 == 2)
    {
      effectiveTier = 7;
    }

    else
    {
      effectiveTier = self->_effectiveTier;
    }

    v8 = [(NSPServiceStatusManager *)self serviceStatus];
    v9 = [v8 serviceStatus];

    if (v9 != effectiveTier)
    {
      self->_lastOutageType = a3;
      [v6 sendAnalytics];
    }

    if (a3 == 2)
    {
      v10 = sub_10003A340(@"CAPTIVE_WARNING_NO_NETWORK", @"CAPTIVE_WARNING_NO_NETWORK");
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = [(NSPServiceStatusManager *)self serviceStatus];
      v12 = [v11 networkStatuses];

      v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            if ([v17 networkType] == 1)
            {
              v18 = [v17 networkName];

              if (v18)
              {
                v24 = sub_10003A340(@"CAPTIVE_WARNING", @"CAPTIVE_WARNING");
                v25 = [v17 networkName];
                v26 = [NSString stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:0, v25];

                v10 = v26;
                goto LABEL_21;
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v19 = sub_10003A340(@"CAPTIVE_WARNING_TITLE", @"CAPTIVE_WARNING_TITLE");
      v20 = self;
      v21 = 7;
      v22 = v19;
      v23 = v10;
    }

    else
    {
      v10 = sub_10003A340(@"OUTAGE_WARNING_TITLE", @"OUTAGE_WARNING_TITLE");
      v19 = sub_10003A340(@"OUTAGE_WARNING", @"OUTAGE_WARNING");
      v20 = self;
      v21 = 2;
      v22 = v10;
      v23 = v19;
    }

    sub_10009D038(v20, v21, v22, v23, 0);
  }
}

- (BOOL)isServiceActive
{
  if (!self || self->_effectiveTier != 2)
  {
    return 0;
  }

  v2 = [(NSPServiceStatusManager *)self serviceStatus];
  v3 = [v2 serviceStatus] == 1;

  return v3;
}

- (BOOL)isServiceOutage
{
  if (!self || self->_effectiveTier != 2)
  {
    return 0;
  }

  v2 = [(NSPServiceStatusManager *)self serviceStatus];
  v3 = [v2 serviceStatus] == 2;

  return v3;
}

- (BOOL)isNetworkOutage
{
  if (!self || self->_effectiveTier != 2)
  {
    return 0;
  }

  v2 = [(NSPServiceStatusManager *)self serviceStatus];
  v3 = [v2 serviceStatus] == 7;

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

- (void)reportUnsupportedRegion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self && self->_userTier == 2)
  {
    if (v4)
    {
      v9 = kPrivacyProxyServiceStatusDetailsRegionIDKey;
      v10 = v4;
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

- (void)reportSubscriberUnsupportedRegion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self && self->_userTier == 2)
  {
    if (v4)
    {
      v9 = kPrivacyProxyServiceStatusDetailsRegionIDKey;
      v10 = v4;
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

- (void)clearNetworkStatusForType:(int)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSPServiceStatusManager *)self serviceStatus];
  v7 = [v6 networkStatuses];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 networkType] == a3)
        {
          v10 = 1;
        }

        else
        {
          [v5 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);

    v14 = [(NSPServiceStatusManager *)self serviceStatus];
    [v14 setNetworkStatuses:v5];

    if (self != 0 && (v10 & 1) != 0)
    {
      ++self->_generation;
      [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
    }
  }

  else
  {

    v15 = [(NSPServiceStatusManager *)self serviceStatus];
    [v15 setNetworkStatuses:v5];
  }
}

- (void)reportActiveOnWiFiName:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138477827;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Wi-Fi network %{private}@ is active", &v6, 0xCu);
  }

  sub_10009DF8C(self, 1, 1, v4);
}

- (void)reportDisabledOnWiFiName:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi network %{private}@ is disabled", &v6, 0xCu);
  }

  sub_10009DF8C(self, 0, 1, v4);
}

- (void)reportBlockedOnWiFiName:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi network %{private}@ is blocked", buf, 0xCu);
  }

  if (sub_10009DF8C(self, 2, 1, v4))
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
    v9 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v4];

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
    v18 = v4;
    v16 = sub_1000ADECC(v10, v9, v11, v12, v13, 0, 0, v14, v17);
    if (self)
    {
      objc_setProperty_atomic(self, v15, v16, 56);
    }
  }
}

- (void)reportActiveOnCellularName:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Cellular network %@ is active", &v6, 0xCu);
  }

  sub_10009DF8C(self, 1, 2, v4);
}

- (void)reportDisabledOnCellularName:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cellular network %@ is disabled", &v6, 0xCu);
  }

  sub_10009DF8C(self, 0, 2, v4);
}

- (void)reportBlockedOnCellularName:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cellular network %@ is blocked", buf, 0xCu);
  }

  if (sub_10009DF8C(self, 2, 2, v4))
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
    v17 = v4;
    v15 = sub_1000ADECC(v8, v9, v10, v11, v12, 0, 0, v13, v16);
    if (self)
    {
      objc_setProperty_atomic(self, v14, v15, 56);
    }
  }
}

- (void)reportActivityForApp:(id)a3 path:(id)a4
{
  v6 = a3;
  v22 = a4;
  v23 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(NSPServiceStatusManager *)self appStatuses];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v8)
  {

    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v9 = v8;
  v21 = self;
  v10 = *v25;
  v11 = 1;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      v14 = [v13 bundleIdentifier];
      if ([v14 isEqualToString:v6])
      {
      }

      else
      {
        v15 = [v13 path];
        v16 = [v15 isEqualToString:v22];

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

    v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v9);

  self = v21;
  if (v11)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (v22 || (+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace, "defaultWorkspace"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 applicationIsInstalled:v6], v17, (v18 & 1) != 0))
    {
LABEL_20:
      v19 = +[NSDate now];
      v20 = [[PrivacyProxyAppStatus alloc] initWithStatus:1 bundleID:v6 path:v22 activeDate:v19];
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
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Bundle ID %@ not known to launch services, ignoring", buf, 0xCu);
      }
    }
  }
}

- (BOOL)changePausedState:(BOOL)a3 forApp:(id)a4 path:(id)a5
{
  v6 = a3;
  v8 = a4;
  v35 = a5;
  if (v6)
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
  v11 = [(NSPServiceStatusManager *)self appStatuses];
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v13 = NEPolicySession_ptr;
  if (!v12)
  {

    goto LABEL_22;
  }

  v14 = v12;
  v33 = self;
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
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v38 + 1) + 8 * v17);
      v19 = [v18 bundleIdentifier];
      if ([v19 isEqualToString:v8])
      {
      }

      else
      {
        v37 = v16;
        [v18 path];
        v20 = v15;
        v21 = v11;
        v22 = v9;
        v23 = v10;
        v25 = v24 = v8;
        v26 = [v25 isEqualToString:v35];

        v8 = v24;
        v10 = v23;
        v9 = v22;
        v11 = v21;
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
    v14 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v14);

  self = v33;
  v13 = NEPolicySession_ptr;
  if (v16)
  {
LABEL_22:
    v28 = [PrivacyProxyAppStatus alloc];
    v29 = [v13[73] now];
    v30 = [v28 initWithStatus:v9 bundleID:v8 path:v35 activeDate:v29];

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
  v4 = [(NSPServiceStatusManager *)self appStatuses];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 appStatus] == 2)
        {
          [v9 setAppStatus:1];
        }

        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [(NSPServiceStatusManager *)self appStatuses];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) appStatus] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(NSPServiceStatusManager *)self appStatuses];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 appStatus] == 2)
        {
          v9 = [v8 bundleIdentifier];

          if (v9)
          {
            if (!v5)
            {
              v5 = objc_alloc_init(NSMutableArray);
            }

            v10 = [v8 bundleIdentifier];
            [v5 addObject:v10];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v2 = [(NSPServiceStatusManager *)self appStatuses];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 appStatus] == 2)
        {
          v9 = [v8 path];

          if (v9)
          {
            if (!v5)
            {
              v5 = objc_alloc_init(NSMutableArray);
            }

            v10 = [v8 path];
            [v5 addObject:v10];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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