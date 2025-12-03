@interface CLDaemonSettingsManager
- (CLDaemonSettingsManager)init;
- (id)syncgetSetValue:(id)value forKey:(id)key withoutNotifying:(id)notifying;
- (void)beginService;
- (void)endService;
- (void)refresh;
@end

@implementation CLDaemonSettingsManager

- (CLDaemonSettingsManager)init
{
  v3.receiver = self;
  v3.super_class = CLDaemonSettingsManager;
  return [(CLDaemonSettingsManager *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLSettingsManagerProtocol outboundProtocol:&OBJC_PROTOCOL___CLSettingsManagerClientProtocol];
}

- (void)beginService
{
  v5.receiver = self;
  v5.super_class = CLDaemonSettingsManager;
  [(CLDaemonSettingsManager *)&v5 beginService];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1005EDE2C;
  handler[3] = &unk_102458138;
  handler[4] = self;
  notify_register_dispatch([@"com.apple.locationd/Prefs" UTF8String], &self->_fDaemonPreferencesChangedNotificationToken, objc_msgSend(objc_msgSend(-[CLDaemonSettingsManager universe](self, "universe"), "silo"), "queue"), handler);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005EDECC;
  v3[3] = &unk_102458138;
  v3[4] = self;
  notify_register_dispatch([@"com.apple.ManagedConfiguration.profileListChanged" UTF8String], &self->_fMCProfileListChangedForDaemonSettingsNotificationToken, objc_msgSend(objc_msgSend(-[CLDaemonSettingsManager universe](self, "universe"), "silo"), "queue"), v3);
  [(CLDaemonSettingsManager *)self refresh];
}

- (void)endService
{
  notify_cancel(self->_fDaemonPreferencesChangedNotificationToken);
  self->_fDaemonPreferencesChangedNotificationToken = -1;
  notify_cancel(self->_fMCProfileListChangedForDaemonSettingsNotificationToken);
  self->_fMCProfileListChangedForDaemonSettingsNotificationToken = -1;
  v3.receiver = self;
  v3.super_class = CLDaemonSettingsManager;
  [(CLDaemonSettingsManager *)&v3 endService];
}

- (void)refresh
{
  sub_10001CAF4(&v3);
  sub_10054B380(v3);
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_10001CAF4(&v3);
  [(CLDaemonSettingsManager *)self setSettingsDictionary:sub_10054BFC4(v3)];
  if (v4)
  {
    sub_100008080(v4);
  }

  [(CLDaemonSettingsManager *)self updateClientsWithDictionary:[NSDictionary dictionaryWithDictionary:[(CLDaemonSettingsManager *)self settingsDictionary]]];
}

- (id)syncgetSetValue:(id)value forKey:(id)key withoutNotifying:(id)notifying
{
  sub_10001CAF4(&v11);
  sub_1000433CC(v11, [key UTF8String], value);
  if (v12)
  {
    sub_100008080(v12);
  }

  v10.receiver = self;
  v10.super_class = CLDaemonSettingsManager;
  return [(CLDaemonSettingsManager *)&v10 syncgetSetValue:value forKey:key withoutNotifying:notifying];
}

@end