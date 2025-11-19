@interface DMDDeviceStateObserver
- (DMDDeviceStateObserver)init;
- (NSString)description;
- (void)keybagLockStateDidChange;
- (void)networkDidChange;
- (void)startObservingChanges;
- (void)stopObservingChanges;
@end

@implementation DMDDeviceStateObserver

- (void)keybagLockStateDidChange
{
  v3 = MKBGetDeviceLockState();
  v5 = v3 == 3 || v3 == 0;
  v6 = MKBDeviceUnlockedSinceBoot() == 1;
  [(DMDDeviceStateObserver *)self setIsKeychainUnlocked:v5];

  [(DMDDeviceStateObserver *)self setHasKeychainUnlockedSinceBoot:v6];
}

- (void)networkDidChange
{
  v3 = +[DMDNetworkTetherUtilities isNetworkTethered];

  [(DMDDeviceStateObserver *)self setIsNetworkTethered:v3];
}

- (DMDDeviceStateObserver)init
{
  v3.receiver = self;
  v3.super_class = DMDDeviceStateObserver;
  result = [(DMDDeviceStateObserver *)&v3 init];
  if (result)
  {
    result->_isKeychainUnlocked = 1;
  }

  return result;
}

- (NSString)description
{
  v5[0] = @"hasKeychainUnlockedSinceBoot";
  v5[1] = @"isKeychainUnlocked";
  v5[2] = @"isNetworkTethered";
  v2 = [NSArray arrayWithObjects:v5 count:3];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (void)startObservingChanges
{
  objc_initWeak(&location, self);
  v3 = kMobileKeyBagLockStatusNotifyToken;
  v4 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000022D4;
  handler[3] = &unk_1000CEF00;
  objc_copyWeak(&v15, &location);
  LODWORD(v3) = notify_register_dispatch(v3, &self->mKeychainLockStateNotificationToken, &_dispatch_main_q, handler);

  if (v3)
  {
    self->mKeychainLockStateNotificationToken = -1;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100038520;
  v12[3] = &unk_1000CEF00;
  objc_copyWeak(&v13, &location);
  v5 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->mKeychainFirstUnlockNotificationToken, &_dispatch_main_q, v12);

  if (v5)
  {
    self->mKeychainFirstUnlockNotificationToken = -1;
  }

  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100002354;
  v10 = &unk_1000CEF00;
  objc_copyWeak(&v11, &location);
  v6 = notify_register_dispatch("com.apple.system.config.network_change", &self->mNetworkChangeNotificationToken, &_dispatch_main_q, &v7);

  if (v6)
  {
    self->mNetworkChangeNotificationToken = -1;
  }

  [(DMDDeviceStateObserver *)self keybagLockStateDidChange:v7];
  [(DMDDeviceStateObserver *)self networkDidChange];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)stopObservingChanges
{
  mKeychainLockStateNotificationToken = self->mKeychainLockStateNotificationToken;
  if (mKeychainLockStateNotificationToken != -1)
  {
    notify_cancel(mKeychainLockStateNotificationToken);
    self->mKeychainLockStateNotificationToken = -1;
  }

  mNetworkChangeNotificationToken = self->mNetworkChangeNotificationToken;
  if (mNetworkChangeNotificationToken != -1)
  {
    notify_cancel(mNetworkChangeNotificationToken);
    self->mNetworkChangeNotificationToken = -1;
  }
}

@end