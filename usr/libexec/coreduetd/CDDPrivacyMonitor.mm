@interface CDDPrivacyMonitor
- (BOOL)isManagedConfigurationSettingOn;
- (BOOL)loadCurrentPrivacySetting;
- (CDDPrivacyMonitor)initWithCDDinstance:(id)dinstance;
- (void)privacyCloak;
@end

@implementation CDDPrivacyMonitor

- (BOOL)loadCurrentPrivacySetting
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CoreDuet"];
  v3 = v2;
  if (v2 && ([v2 objectForKey:@"CDDBackgroundAppRefresh"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 BOOLForKey:@"CDDBackgroundAppRefresh"];
    v6 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      v10 = v5;
      v7 = "Privacy: Loaded App refresh privacy setting to %d.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, &v9, 8u);
    }
  }

  else
  {
    v6 = +[_CDLogging admissionCheckChannel];
    LOBYTE(v5) = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      v10 = 1;
      v7 = "Privacy: Error: Cannot load App refresh Privacy Setting. Defaulting to %d.";
      goto LABEL_7;
    }
  }

  return v5;
}

- (CDDPrivacyMonitor)initWithCDDinstance:(id)dinstance
{
  dinstanceCopy = dinstance;
  v13.receiver = self;
  v13.super_class = CDDPrivacyMonitor;
  v5 = [(CDDPrivacyMonitor *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(CDDPrivacyMonitor *)v5 setCdd:dinstanceCopy];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.coreduetdPrivacyDispatchQueue", v7);
    privacyDispatchQ = v6->privacyDispatchQ;
    v6->privacyDispatchQ = v8;

    if (!v6->privacyDispatchQ)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v6->updateAllowed = [(CDDPrivacyMonitor *)v6 isManagedConfigurationSettingOn];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_100021A74, @"kKeepAppsUpToDateEnabledChangedNotification", 0, CFNotificationSuspensionBehaviorDrop);
    if (!v6->updateAllowed)
    {
      [(CDDPrivacyMonitor *)v6 deletePrivacySensitiveDBEntries];
    }
  }

  v11 = v6;
LABEL_7:

  return v11;
}

- (void)privacyCloak
{
  privacyDispatchQ = self->privacyDispatchQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021B60;
  block[3] = &unk_10003CA78;
  block[4] = self;
  dispatch_sync(privacyDispatchQ, block);
}

- (BOOL)isManagedConfigurationSettingOn
{
  v2 = +[MCProfileConnection sharedConnection];
  isAutomaticAppUpdatesAllowed = [v2 isAutomaticAppUpdatesAllowed];

  return isAutomaticAppUpdatesAllowed;
}

@end