@interface WiFiUserSettingsStore
- (WiFiUserSettingsStore)init;
- (void)_kvsDidChangeWithKeys:(id)keys isExternal:(BOOL)external;
- (void)_setupKVSHandler;
- (void)setAskToJoinMode:(int64_t)mode;
- (void)setAutoInstantHotspotMode:(int64_t)mode;
- (void)setSyncingEnabled:(BOOL)enabled;
@end

@implementation WiFiUserSettingsStore

- (WiFiUserSettingsStore)init
{
  v6.receiver = self;
  v6.super_class = WiFiUserSettingsStore;
  v2 = [(WiFiUserSettingsStore *)&v6 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [[CWFKeyValueStore alloc] initWithType:6 identifier:@"com.apple.wifi.user-settings"];
  userSettingsKVS = v2->_userSettingsKVS;
  v2->_userSettingsKVS = v3;

  if (!v2->_userSettingsKVS)
  {
    sub_1001ABA80();
LABEL_6:

    return 0;
  }

  [(WiFiUserSettingsStore *)v2 _setupKVSHandler];
  return v2;
}

- (void)_setupKVSHandler
{
  from = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10010ADE8;
  v3[3] = &unk_1002629D8;
  objc_copyWeak(&v4, &from);
  [(CWFKeyValueStore *)self->_userSettingsKVS setEventHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&from);
}

- (void)_kvsDidChangeWithKeys:(id)keys isExternal:(BOOL)external
{
  keysCopy = keys;
  if (![(WiFiUserSettingsStore *)self syncingEnabled])
  {
    sub_1001ABAE0();
LABEL_23:
    v7 = 0;
    goto LABEL_20;
  }

  if (!external)
  {
    sub_1001ABB4C(keysCopy);
    goto LABEL_23;
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = keysCopy;
  v8 = keysCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *v22;
  v12 = CWFUserSettingsStoreAskToJoinModeKey;
  v13 = CWFUserSettingsStoreAutoHotspotModeKey;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      if ([v15 isEqualToString:v12])
      {
        v16 = [(CWFKeyValueStore *)self->_userSettingsKVS objectForKey:v12];
        [v7 setObject:v16 forKey:v12];
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: ask to join value changed to '%@'", "-[WiFiUserSettingsStore _kvsDidChangeWithKeys:isExternal:]", v16}];
        }
      }

      else
      {
        if (![v15 isEqualToString:v13])
        {
          continue;
        }

        v16 = [(CWFKeyValueStore *)self->_userSettingsKVS objectForKey:v13];
        [v7 setObject:v16 forKey:v13];
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: hotspot mode value changed to '%@'", "-[WiFiUserSettingsStore _kvsDidChangeWithKeys:isExternal:]", v16}];
        }
      }

      objc_autoreleasePoolPop(v17);
    }

    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v10);
LABEL_17:

  keyDidChangeHandler = [(WiFiUserSettingsStore *)self keyDidChangeHandler];

  if (keyDidChangeHandler)
  {
    keyDidChangeHandler2 = [(WiFiUserSettingsStore *)self keyDidChangeHandler];
    (keyDidChangeHandler2)[2](keyDidChangeHandler2, v7);
  }

  keysCopy = v20;
LABEL_20:
}

- (void)setAutoInstantHotspotMode:(int64_t)mode
{
  if ([(WiFiUserSettingsStore *)self syncingEnabled])
  {
    userSettingsKVS = [(WiFiUserSettingsStore *)self userSettingsKVS];
    v6 = [NSNumber numberWithInteger:mode];
    [userSettingsKVS setObject:v6 forKey:CWFUserSettingsStoreAutoHotspotModeKey];

    userSettingsKVS2 = [(WiFiUserSettingsStore *)self userSettingsKVS];
    [userSettingsKVS2 synchronize];
  }

  else
  {
    sub_1001ABBBC(mode);
  }
}

- (void)setAskToJoinMode:(int64_t)mode
{
  if ([(WiFiUserSettingsStore *)self syncingEnabled])
  {
    userSettingsKVS = [(WiFiUserSettingsStore *)self userSettingsKVS];
    v6 = [NSNumber numberWithInteger:mode];
    [userSettingsKVS setObject:v6 forKey:CWFUserSettingsStoreAskToJoinModeKey];

    userSettingsKVS2 = [(WiFiUserSettingsStore *)self userSettingsKVS];
    [userSettingsKVS2 synchronize];
  }

  else
  {
    sub_1001ABC2C(mode);
  }
}

- (void)setSyncingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_syncingEnabled = enabled;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v5 = @"not enabled";
    if (enabledCopy)
    {
      v5 = @"enabled";
    }

    [off_100298C40 WFLog:3 message:{"%s: syncing is %@", "-[WiFiUserSettingsStore setSyncingEnabled:]", v5}];
  }

  objc_autoreleasePoolPop(v4);
}

@end