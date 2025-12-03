@interface NEKPreferencesObserver
- (BOOL)alertInviteeDeclines;
- (BOOL)handleDarwinNotificationOfName:(id)name;
- (BOOL)showDeclinedEvents;
- (NEKPreferencesObserver)init;
- (void)migratePrefsIfNecessary;
- (void)rebroadcastAlertInviteeDeclinesChangeNotification;
- (void)rebroadcastAllObservedNotifications;
- (void)rebroadcastShowDeclinedChangeNotification;
@end

@implementation NEKPreferencesObserver

- (NEKPreferencesObserver)init
{
  v21.receiver = self;
  v21.super_class = NEKPreferencesObserver;
  v2 = [(NEKPreferencesObserver *)&v21 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.NanoCalendar", "preferences_observer");
    prefObserverLog = v2->_prefObserverLog;
    v2->_prefObserverLog = v3;

    v5 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v5;

    v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.mobilecal"];
    domainAccessor = v2->_domainAccessor;
    v2->_domainAccessor = v7;

    v9 = +[NSMutableDictionary dictionary];
    v10 = [NSSet setWithObjects:@"LastDeselectedCalendarSyncHashes", @"LastDeselectedCalendarSyncIdentifiers", 0];
    [v9 setObject:v10 forKeyedSubscript:@"LastDeselectedCalendarSyncHashes"];

    v11 = [NSSet setWithObjects:kCalTimeZonePrefAutoKey, kCalTimeZonePrefKey, kCalTimeZonePrefChosenKey, @"TimeZoneCityArray", 0];
    [v9 setObject:v11 forKeyedSubscript:@"kCalTimeZonePrefChangedDistributedNotification"];

    v12 = [NSSet setWithObject:@"overlayCalendarID"];
    [v9 setObject:v12 forKeyedSubscript:@"overlayCalendarID"];

    v13 = [NSSet setWithObjects:@"DefaultTimedAlarmOffset", @"DefaultAllDayAlarmOffset", 0];
    [v9 setObject:v13 forKeyedSubscript:@"com.apple.calendar.defaultAlarmChangedNotification"];

    v14 = [NSSet setWithObject:@"ShowWeekNumbers"];
    [v9 setObject:v14 forKeyedSubscript:@"com.apple.mobilecal.preference.notification.showweeknumbers"];

    v15 = [NSSet setWithObject:@"enableTravelAdvisoriesForAutomaticBehavior"];
    [v9 setObject:v15 forKeyedSubscript:@"com.apple.calendar.database.preference.notification.enableTravelAdvisoriesForAutomaticBehavior"];

    v16 = [v9 copy];
    keysToDirectMirrorCompanionToGizmo = v2->_keysToDirectMirrorCompanionToGizmo;
    v2->_keysToDirectMirrorCompanionToGizmo = v16;

    v18 = +[EKPreferences shared];
    ekPrefs = v2->_ekPrefs;
    v2->_ekPrefs = v18;

    [(NEKPreferencesObserver *)v2 migratePrefsIfNecessary];
  }

  return v2;
}

- (void)migratePrefsIfNecessary
{
  if ((sub_100016740() & 1) == 0)
  {
    v3 = [(NPSDomainAccessor *)self->_domainAccessor integerForKey:@"com.apple.NanoCalendar.PrefSync.PrefMigrationSeed"];
    if (v3 != 2)
    {
      v4 = v3;
      prefObserverLog = self->_prefObserverLog;
      if (os_log_type_enabled(prefObserverLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218240;
        v12 = v4;
        v13 = 2048;
        v14 = 2;
        _os_log_impl(&_mh_execute_header, prefObserverLog, OS_LOG_TYPE_DEFAULT, "Migrated prefs; version %zd -> %zd", &v11, 0x16u);
      }

      if (v4 <= 0)
      {
        npsManager = self->_npsManager;
        v7 = [(NSDictionary *)self->_keysToDirectMirrorCompanionToGizmo objectForKeyedSubscript:@"com.apple.calendar.database.preference.notification.enableTravelAdvisoriesForAutomaticBehavior"];
        [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.mobilecal" keys:v7];
      }

      else if (v4 != 1)
      {
        goto LABEL_10;
      }

      v8 = self->_npsManager;
      v9 = [NSSet setWithObject:@"icaluuid"];
      [(NPSManager *)v8 synchronizeUserDefaultsDomain:@"com.apple.calaccessd" keys:v9];

LABEL_10:
      [(NPSDomainAccessor *)self->_domainAccessor setInteger:2 forKey:@"com.apple.NanoCalendar.PrefSync.PrefMigrationSeed"];
      synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
    }
  }
}

- (void)rebroadcastAlertInviteeDeclinesChangeNotification
{
  [(NEKPreferencesObserver *)self _broadcastBool:[(EKPreferences *)self->_ekPrefs alertInviteeDeclines] forKey:@"InviteeDeclineAlerts-rebroadcast"];
  prefObserverLog = self->_prefObserverLog;
  if (os_log_type_enabled(prefObserverLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"InviteeDeclineAlerts-rebroadcast";
    _os_log_impl(&_mh_execute_header, prefObserverLog, OS_LOG_TYPE_DEFAULT, "Rebroadcast pref for key %{public}@", &v4, 0xCu);
  }
}

- (void)rebroadcastShowDeclinedChangeNotification
{
  [(NEKPreferencesObserver *)self _broadcastBool:[(EKPreferences *)self->_ekPrefs showDeclinedEvents] forKey:@"ShowDeclinedEvents-rebroadcast"];
  prefObserverLog = self->_prefObserverLog;
  if (os_log_type_enabled(prefObserverLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"ShowDeclinedEvents-rebroadcast";
    _os_log_impl(&_mh_execute_header, prefObserverLog, OS_LOG_TYPE_DEFAULT, "Rebroadcast pref for key %{public}@", &v4, 0xCu);
  }
}

- (void)rebroadcastAllObservedNotifications
{
  [(NEKPreferencesObserver *)self rebroadcastShowDeclinedChangeNotification];

  [(NEKPreferencesObserver *)self rebroadcastAlertInviteeDeclinesChangeNotification];
}

- (BOOL)alertInviteeDeclines
{
  v6 = 0;
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v4 = [(NPSDomainAccessor *)self->_domainAccessor BOOLForKey:@"InviteeDeclineAlerts-rebroadcast" keyExistsAndHasValidFormat:&v6];
  return v6 & v4 & 1;
}

- (BOOL)showDeclinedEvents
{
  v6 = 0;
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v4 = [(NPSDomainAccessor *)self->_domainAccessor BOOLForKey:@"ShowDeclinedEvents-rebroadcast" keyExistsAndHasValidFormat:&v6];
  return v6 & v4 & 1;
}

- (BOOL)handleDarwinNotificationOfName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!sub_100016740())
  {
    if ([nameCopy isEqualToString:@"CalEventDeclineEventPrefChanged"])
    {
      [(NEKPreferencesObserver *)self rebroadcastShowDeclinedChangeNotification];
    }

    else
    {
      if (![nameCopy isEqualToString:@"CalEventShowInviteeDeclinesPrefChanged"])
      {
        objc_initWeak(&location, self);
        keysToDirectMirrorCompanionToGizmo = self->_keysToDirectMirrorCompanionToGizmo;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100026560;
        v8[3] = &unk_1000B5260;
        objc_copyWeak(&v11, &location);
        v9 = nameCopy;
        v10 = &v13;
        [(NSDictionary *)keysToDirectMirrorCompanionToGizmo enumerateKeysAndObjectsUsingBlock:v8];

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
        goto LABEL_11;
      }

      [(NEKPreferencesObserver *)self rebroadcastAlertInviteeDeclinesChangeNotification];
    }

    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"CalEventDeclineEventPrefChangedRebroadcast"])
  {
    [(NEKPreferencesObserver *)self applyRebroadcastShowDeclinedEvents];
LABEL_10:
    *(v14 + 24) = 1;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"CalEventShowInviteeDeclinesPrefChangedRebroadcast"])
  {
    [(NEKPreferencesObserver *)self applyRebroadcastAlertInviteeDeclines];
    goto LABEL_10;
  }

LABEL_11:
  v5 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v5;
}

@end