@interface ManagedSettingsObserver
- (ManagedSettingsObserver)init;
- (void)_fetchManagedSettings;
- (void)_managedSettingsChangedWithEvent:(id)a3 settingsGroup:(id)a4;
- (void)_managedSettingsSubcribeForChangesAndEvents;
- (void)dealloc;
@end

@implementation ManagedSettingsObserver

- (ManagedSettingsObserver)init
{
  v7.receiver = self;
  v7.super_class = ManagedSettingsObserver;
  v2 = [(ManagedSettingsObserver *)&v7 init];
  if (v2 && _os_feature_enabled_impl() && sub_1005FCECC())
  {
    v3 = sub_100017F4C();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1004A2334;
    v5[3] = &unk_100ADF820;
    v6 = v2;
    sub_10000CA94(v3, v5);
  }

  return v2;
}

- (void)dealloc
{
  [(ManagedSettingsObserver *)self setAllowTemporaryPairingOfAppleAudioAccessories:0];
  v3.receiver = self;
  v3.super_class = ManagedSettingsObserver;
  [(ManagedSettingsObserver *)&v3 dealloc];
}

- (void)_fetchManagedSettings
{
  if (_os_feature_enabled_impl() && sub_1005FCECC())
  {
    v3 = objc_opt_new();
    v4 = [v3 audioAccessory];
    v5 = [v4 temporaryPairingConfiguration];
    v6 = [v5 unpairingTime];
    v7 = [v6 hour];

    if ((v7 != 0) != [(ManagedSettingsObserver *)self allowTemporaryPairingOfAppleAudioAccessories])
    {
      [(ManagedSettingsObserver *)self setAllowTemporaryPairingOfAppleAudioAccessories:v7 != 0];
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(ManagedSettingsObserver *)self allowTemporaryPairingOfAppleAudioAccessories];
        v10 = "FALSE";
        if (v9)
        {
          v10 = "TRUE";
        }

        v11 = 136315138;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "allowTemporaryPairingOfAppleAudioAccessories set to %s", &v11, 0xCu);
      }
    }
  }
}

- (void)_managedSettingsChangedWithEvent:(id)a3 settingsGroup:(id)a4
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    v8 = MOSettingsGroupNameAudioAccessory;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * v9) isEqualToString:{v8, v10}])
        {
          [(ManagedSettingsObserver *)self _fetchManagedSettings];
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_managedSettingsSubcribeForChangesAndEvents
{
  v3 = [NSSet alloc];
  v4 = [v3 initWithObjects:{MOSettingsGroupNameAudioAccessory, 0}];
  [MOSystemEffectiveSettingsStore subscribeForChangesInGroups:v4 eventName:@"com.apple.bluetoothd.effective-settings.changed"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004A27CC;
  v5[3] = &unk_100AF88B0;
  v5[4] = self;
  [MOSystemEffectiveSettingsStore startObservingChangesWithHandler:v5];
}

@end