@interface NRLaunchNotificationController
- (id)prefs;
- (void)_setLaunchEvent:(id)event enable:(BOOL)enable;
@end

@implementation NRLaunchNotificationController

- (id)prefs
{
  if (qword_1001B3778 != -1)
  {
    sub_1000FDE5C();
  }

  v3 = qword_1001B3770;

  return v3;
}

- (void)_setLaunchEvent:(id)event enable:(BOOL)enable
{
  enableCopy = enable;
  eventCopy = event;
  if (enableCopy)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "Notification", [eventCopy UTF8String]);
  }

  else
  {
    v6 = 0;
  }

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"disabling";
      if (enableCopy)
      {
        v10 = @"enabling";
      }

      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = eventCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NRLaunchNotificationController: %@ launch notification %@", &v11, 0x16u);
    }
  }

  [eventCopy UTF8String];
  xpc_set_event();
}

@end