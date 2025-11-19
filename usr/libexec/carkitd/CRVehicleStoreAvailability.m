@interface CRVehicleStoreAvailability
+ (BOOL)isVehicleStoreAvailable;
+ (void)_updateUnlockedSinceBoot;
+ (void)handleAvailabilityEvent;
+ (void)registerForAvailabilityEvent;
@end

@implementation CRVehicleStoreAvailability

+ (BOOL)isVehicleStoreAvailable
{
  if (byte_100107F00)
  {
    return 1;
  }

  [a1 _updateUnlockedSinceBoot];
  return byte_100107F00;
}

+ (void)_updateUnlockedSinceBoot
{
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = CarGeneralLogging();
  v4 = v3;
  if (!v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "before first unlock", v5, 2u);
    }

    goto LABEL_9;
  }

  if (v2 != 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100081B78();
    }

LABEL_9:
    LOBYTE(v2) = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    LOBYTE(v2) = 1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "completed first unlock", buf, 2u);
  }

LABEL_10:

  byte_100107F00 = v2;
}

+ (void)registerForAvailabilityEvent
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "waiting for first unlock", v6, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_10000B148, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "Notification", "com.apple.mobile.keybagd.first_unlock");
  xpc_set_event();
}

+ (void)handleAvailabilityEvent
{
  [a1 _updateUnlockedSinceBoot];
  if ([a1 isVehicleStoreAvailable])
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "completed first unlock", v6, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.mobile.keybagd.first_unlock", 0);
    xpc_set_event();
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:CRVehicleStoreAvailabilityDidChangeNotification object:0];
  }
}

@end