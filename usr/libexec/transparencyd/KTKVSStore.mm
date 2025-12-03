@interface KTKVSStore
+ (BOOL)afterFirstUnlock;
+ (id)strictStore;
- (NSString)accountMetricID;
- (void)forceSync:(id)sync;
- (void)handleKVSStoreChange:(id)change;
- (void)processChangedKeys:(id)keys;
@end

@implementation KTKVSStore

- (void)processChangedKeys:(id)keys
{
  keysCopy = keys;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = kApplicationIdentifierMap;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [KTOptInManagerServer optInKeyForApplication:v9, v13];
        if ([keysCopy containsObject:v10])
        {
          v11 = [KTOptInManagerServer notificationKeyForApplication:v9];
          if (v11)
          {
            v12 = +[NSDistributedNotificationCenter defaultCenter];
            [v12 postNotificationName:v11 object:0 userInfo:0 deliverImmediately:1];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)handleKVSStoreChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
  v5 = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangedKeysKey];
  integerValue = [v4 integerValue];
  if (integerValue < 2)
  {
LABEL_4:
    [(KTKVSStore *)self processChangedKeys:v5];
    goto LABEL_6;
  }

  if (integerValue != 2)
  {
    if (integerValue != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v7 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-284 description:@"KVS store quota violation"];
  v8 = +[TransparencyAnalytics logger];
  [v8 logResultForEvent:@"KVSStoreQuotaViolation" hardFailure:1 result:v7];

LABEL_6:
}

+ (BOOL)afterFirstUnlock
{
  v2 = MKBDeviceUnlockedSinceBoot();
  if (v2 != 1)
  {
    if (qword_10039CB80 != -1)
    {
      sub_10025D6F8();
    }

    v3 = qword_10039CB88;
    if (os_log_type_enabled(qword_10039CB88, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unable to open KVS store, device never unlocked: %d", v5, 8u);
    }
  }

  return v2 == 1;
}

+ (id)strictStore
{
  if (+[KTKVSStore afterFirstUnlock]&& qword_10039CB98 != -1)
  {
    sub_10025D70C();
  }

  v2 = qword_10039CB90;

  return v2;
}

- (NSString)accountMetricID
{
  v3 = [(KTKVSStore *)self objectForKey:@"accountMetricID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];

    [(KTKVSStore *)self setObject:uUIDString forKey:@"accountMetricID"];
    v3 = uUIDString;
  }

  return v3;
}

- (void)forceSync:(id)sync
{
  syncCopy = sync;
  if (qword_10039CB80 != -1)
  {
    sub_10025D734();
  }

  v5 = qword_10039CB88;
  if (os_log_type_enabled(qword_10039CB88, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KTKVSStore calling synchronizeWithCompletionHandler", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F74E4;
  v7[3] = &unk_10031A768;
  v8 = syncCopy;
  v6 = syncCopy;
  [(KTKVSStore *)self synchronizeWithCompletionHandler:v7];
}

@end