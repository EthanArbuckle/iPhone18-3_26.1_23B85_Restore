@interface MCRestrictionManagerWriter
+ (BOOL)restrictionsAlreadyInstalledFromPayload:(id)a3;
+ (id)enforcedAppWhitelistRestrictions;
+ (id)sharedManager;
- (BOOL)memberQueueCheckPasscodeCompliesWithCurrentRestrictions;
- (BOOL)memberQueueCheckPasscodeCompliesWithProfileRestrictions;
- (BOOL)memberQueueIsPasscodeComplianceMandatoryWithOutLocalizedWarning:(id *)a3;
- (BOOL)memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:(id)a3;
- (BOOL)memberQueueSetAllClientRestrictions:(id)a3 sender:(id)a4 outRestrictionsChanged:(BOOL *)a5 outEffectiveSettingsChanged:(BOOL *)a6 outError:(id *)a7;
- (BOOL)memberQueueSetParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 sender:(id)a8;
- (BOOL)memberQueueSetSystemClientRestrictions:(id)a3 userClientRestrictions:(id)a4 sender:(id)a5 outRestrictionsChanged:(BOOL *)a6 outEffectiveSettingsChanged:(BOOL *)a7 outError:(id *)a8;
- (BOOL)recomputeNagMetadata:(BOOL *)a3;
- (BOOL)removeOrphanedClientRestrictions;
- (BOOL)setAllClientRestrictions:(id)a3 sender:(id)a4 outRestrictionsChanged:(BOOL *)a5 outEffectiveSettingsChanged:(BOOL *)a6 outRecomputedNag:(BOOL *)a7 outError:(id *)a8;
- (BOOL)setClientRestrictions:(id)a3 overrideRestrictions:(BOOL)a4 appsAndOptions:(id)a5 system:(BOOL)a6 clientType:(id)a7 clientUUID:(id)a8 sender:(id)a9 localizedClientDescription:(id)a10 localizedWarning:(id)a11 shouldRecomputeNag:(BOOL)a12 outRestrictionsChanged:(BOOL *)a13 outEffectiveSettingsChanged:(BOOL *)a14 outRecomputedNag:(BOOL *)a15 outError:(id *)a16;
- (BOOL)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 sender:(id)a8;
- (BOOL)setSystemProfileRestrictions:(id)a3 userProfileRestrictions:(id)a4 sender:(id)a5 outRestrictionsChanged:(BOOL *)a6 outEffectiveSettingsChanged:(BOOL *)a7 outAppWhitelistSettingsChanged:(BOOL *)a8 outRecomputedNag:(BOOL *)a9 outError:(id *)a10;
- (id)_init;
- (id)_liveClientUUIDsForClientType:(id)a3 outLoaderMissing:(BOOL *)a4;
- (id)_memberQueueNewUserSettingsWithParametersForSettingsByType:(id)a3 currentUserSettings:(id)a4;
- (id)orphanCheckExemptClientTypes;
- (id)orphanCheckUnexemptClientTypes;
- (id)orphanedClientUUIDsForClientRestrictionDictionary:(id)a3;
- (void)clearAllPasscodeComplianceCaches;
- (void)memberQueueCacheClientRestrictionPasscodeCompliance;
- (void)memberQueueClearAllPasscodeComplianceCaches;
- (void)memberQueueClearPasscodeHistoryIfNecessary;
- (void)memberQueueClearProfileRestrictionPasscodeComplianceCache;
- (void)memberQueueClearRestrictionPasscodeComplianceCache;
- (void)memberQueueCommitClientRestrictionsToDisk;
- (void)memberQueueCommitEffectiveUserSettingsToDiskOldEffectiveUserSettings:(id)a3;
- (void)memberQueueCommitRestrictionsToDisk;
- (void)memberQueueCommitUserSettingsToDisk;
- (void)memberQueueMarkToClearPasscodeComplianceCacheWithOldSystemClientRestrictions:(id)a3 newSystemClientRestrictions:(id)a4;
- (void)notifyClientsToRecomputeCompliance;
- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)a3;
- (void)recomputeEffectiveUserSettings;
- (void)recomputeUserRestrictionsAndEffectiveUserSettings;
- (void)removeBoolSetting:(id)a3 sender:(id)a4;
- (void)removeValueSetting:(id)a3 sender:(id)a4;
- (void)resetAllSettingsToDefaultsSender:(id)a3;
- (void)setIntersectionValues:(id)a3 forSetting:(id)a4 sender:(id)a5;
- (void)setShowNagMessage;
- (void)setUnionValues:(id)a3 forSetting:(id)a4 sender:(id)a5;
- (void)setUserInfo:(id)a3 forClientUUID:(id)a4 sender:(id)a5;
- (void)setValue:(id)a3 forSetting:(id)a4 sender:(id)a5;
@end

@implementation MCRestrictionManagerWriter

- (void)memberQueueCommitUserSettingsToDisk
{
  v3 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Committing user settings.", v14, 2u);
  }

  v4 = [(MCRestrictionManagerWriter *)self memberQueueSystemUserSettings];
  v5 = MCSystemUserSettingsFilePath();
  [v4 MCWriteToBinaryFile:v5];

  v6 = [(MCRestrictionManagerWriter *)self memberQueueSystemNamespacedUserSettings];
  v7 = MCSystemNamespacedUserSettingsFilePath();
  [v6 MCWriteToBinaryFile:v7];

  v8 = [(MCRestrictionManagerWriter *)self memberQueueUserUserSettings];
  v9 = MCUserUserSettingsFilePath();
  [v8 MCWriteToBinaryFile:v9];

  v10 = [(MCRestrictionManagerWriter *)self memberQueueUserNamespacedUserSettings];
  v11 = MCUserNamespacedUserSettingsFilePath();
  [v10 MCWriteToBinaryFile:v11];

  v12 = [(MCRestrictionManagerWriter *)self memberQueueSettingsEvents];
  v13 = MCSettingsEventsFilePath();
  [v12 MCWriteToBinaryFile:v13];

  MCSendSettingsChangedNotification();
}

+ (id)sharedManager
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MCRestrictionManagerWriter;
  v2 = objc_msgSendSuper2(&v4, "sharedManager");

  return v2;
}

+ (id)enforcedAppWhitelistRestrictions
{
  if (qword_100136BD0 != -1)
  {
    sub_1000C2CB0();
  }

  v3 = qword_100136BC8;

  return v3;
}

- (id)_init
{
  v4.receiver = self;
  v4.super_class = MCRestrictionManagerWriter;
  v2 = [(MCRestrictionManagerWriter *)&v4 init];
  if (v2)
  {
    v2->_senderPID = getpid();
  }

  return v2;
}

- (void)memberQueueCommitRestrictionsToDisk
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Committing restrictions.", v8, 2u);
  }

  v4 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v5 = MCRestrictionsFilePath();
  [v4 MCWriteToBinaryFile:v5];

  v6 = [(MCRestrictionManagerWriter *)self memberQueueSettingsEvents];
  v7 = MCSettingsEventsFilePath();
  [v6 MCWriteToBinaryFile:v7];
}

- (BOOL)setSystemProfileRestrictions:(id)a3 userProfileRestrictions:(id)a4 sender:(id)a5 outRestrictionsChanged:(BOOL *)a6 outEffectiveSettingsChanged:(BOOL *)a7 outAppWhitelistSettingsChanged:(BOOL *)a8 outRecomputedNag:(BOOL *)a9 outError:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10007937C;
  v43 = sub_10007938C;
  v44 = 0;
  v19 = [(MCRestrictionManagerWriter *)self memberQueue];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100079394;
  v29 = &unk_10011CB80;
  v30 = self;
  v20 = v16;
  v31 = v20;
  v21 = v17;
  v32 = v21;
  v22 = v18;
  v37 = a6;
  v38 = a7;
  v33 = v22;
  v34 = &v45;
  v35 = &v39;
  v36 = a8;
  dispatch_sync(v19, &v26);

  v23 = [(MCRestrictionManagerWriter *)self recomputeNagMetadata:v26];
  if (a9)
  {
    *a9 = v23;
  }

  v24 = *(v46 + 24);
  if (a10 && (v46[3] & 1) == 0)
  {
    *a10 = v40[5];
    v24 = *(v46 + 24);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v24 & 1;
}

- (void)memberQueueCommitClientRestrictionsToDisk
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Committing client restrictions.", v10, 2u);
  }

  v4 = [(MCRestrictionManagerWriter *)self memberQueueSystemClientRestrictions];
  v5 = MCSystemClientRestrictionsFilePath();
  [v4 MCWriteToBinaryFile:v5];

  v6 = [(MCRestrictionManagerWriter *)self memberQueueUserClientRestrictions];
  v7 = MCUserClientRestrictionsFilePath();
  [v6 MCWriteToBinaryFile:v7];

  v8 = [(MCRestrictionManagerWriter *)self memberQueueSettingsEvents];
  v9 = MCSettingsEventsFilePath();
  [v8 MCWriteToBinaryFile:v9];
}

- (void)setUserInfo:(id)a3 forClientUUID:(id)a4 sender:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Setting user info %{public}@ for client uuid %{public}@", buf, 0x16u);
  }

  if (v9)
  {
    v12 = [(MCRestrictionManagerWriter *)self memberQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100079B60;
    v13[3] = &unk_10011CBA8;
    v13[4] = self;
    v14 = v9;
    v15 = v8;
    v16 = v10;
    dispatch_sync(v12, v13);
  }
}

- (BOOL)memberQueueSetAllClientRestrictions:(id)a3 sender:(id)a4 outRestrictionsChanged:(BOOL *)a5 outEffectiveSettingsChanged:(BOOL *)a6 outError:(id *)a7
{
  v12 = a4;
  v13 = a3;
  v14 = [(MCRestrictionManagerWriter *)self memberQueueUserClientRestrictions];
  LOBYTE(a7) = [(MCRestrictionManagerWriter *)self memberQueueSetSystemClientRestrictions:v13 userClientRestrictions:v14 sender:v12 outRestrictionsChanged:a5 outEffectiveSettingsChanged:a6 outError:a7];

  return a7;
}

- (BOOL)memberQueueSetSystemClientRestrictions:(id)a3 userClientRestrictions:(id)a4 sender:(id)a5 outRestrictionsChanged:(BOOL *)a6 outEffectiveSettingsChanged:(BOOL *)a7 outError:(id *)a8
{
  v12 = a3;
  v39 = a4;
  v37 = a5;
  v40 = 0;
  v13 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v14 = [v13 copy];

  v15 = [(MCRestrictionManagerWriter *)self memberQueueSystemClientRestrictions];
  v38 = [v15 copy];

  v16 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v17 = [(MCRestrictionManagerWriter *)self defaultRestrictions];
  v18 = [(MCRestrictionManagerWriter *)self memberQueueSystemProfileRestrictions];
  v19 = [(MCRestrictionManagerWriter *)self memberQueueUserProfileRestrictions];
  v20 = [MCRestrictionManagerWriter restrictionsWithCurrentRestrictions:v16 defaultRestrictions:v17 systemProfileRestrictions:v18 userProfileRestrictions:v19 systemClientRestrictions:v12 userClientRestrictions:v39 outRestrictionsChanged:&v40 outError:a8];

  v21 = v37;
  v22 = v12;

  if (v20)
  {
    v23 = [(MCRestrictionManagerWriter *)self applyConfiguration:v12 toDomain:8 inNamespace:0 fromSender:v37];
    v24 = [(MCRestrictionManagerWriter *)self applyConfiguration:v39 toDomain:9 inNamespace:0 fromSender:v37];
    [(MCRestrictionManagerWriter *)self applyConfiguration:v20 toDomain:5 inNamespace:0 fromSender:v37];
    [(MCRestrictionManagerWriter *)self memberQueueCommitClientRestrictionsToDisk];
    [(MCRestrictionManagerWriter *)self memberQueueCommitRestrictionsToDisk];
    v25 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v26 = [v25 MCDeepCopy];

    v34 = [(MCRestrictionManagerWriter *)self memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:0];
    v27 = +[MCHacks sharedHacks];
    v28 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    [v27 _applyServerSideChangesWithOldRestrictions:v14 newRestrictions:v20 oldEffectiveUserSettings:v26 newEffectiveUserSettings:v28];

    if ((v23 & 1) != 0 || v24)
    {
      [(MCRestrictionManagerWriter *)self memberQueueMarkToClearPasscodeComplianceCacheWithOldSystemClientRestrictions:v38 newSystemClientRestrictions:v22];
      MCSendClientTruthChangedNotification();
    }

    v21 = v37;
    if (v40)
    {
      MCSendRestrictionChangedNotification();
      if ([MCPasscodeManagerWriter didPasscodePolicyChangeWithOldRestrictions:v14 newRestrictions:v20])
      {
        [(MCRestrictionManagerWriter *)self memberQueueClearPasscodeHistoryIfNecessary];
        [(MCRestrictionManagerWriter *)self memberQueueClearRestrictionPasscodeComplianceCache];
        MCSendPasscodePolicyChangedNotification();
      }

      v29 = MCFeatureNotificationRestrictedApps;
      v30 = [MCRestrictionManager unionValuesForFeature:MCFeatureNotificationRestrictedApps withRestrictionsDictionary:v14];
      v31 = [MCRestrictionManager unionValuesForFeature:v29 withRestrictionsDictionary:v20];
      v32 = [v30 isEqualToArray:v31];

      if ((v32 & 1) == 0)
      {
        MCSendUserNotificationsSettingsChangedNotification();
      }
    }

    if (a6)
    {
      *a6 = v40;
    }

    if (a7)
    {
      *a7 = v34;
    }
  }

  return v20 != 0;
}

- (BOOL)setAllClientRestrictions:(id)a3 sender:(id)a4 outRestrictionsChanged:(BOOL *)a5 outEffectiveSettingsChanged:(BOOL *)a6 outRecomputedNag:(BOOL *)a7 outError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10007937C;
  v37 = sub_10007938C;
  v38 = 0;
  v16 = [(MCRestrictionManagerWriter *)self memberQueue];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10007A268;
  v25 = &unk_10011CBD0;
  v29 = &v39;
  v26 = self;
  v17 = v14;
  v27 = v17;
  v18 = v15;
  v31 = a5;
  v32 = a6;
  v28 = v18;
  v30 = &v33;
  dispatch_sync(v16, &v22);

  v19 = [(MCRestrictionManagerWriter *)self recomputeNagMetadata:v22];
  if (a7)
  {
    *a7 = v19;
  }

  v20 = *(v40 + 24);
  if (a8 && (v40[3] & 1) == 0)
  {
    *a8 = v34[5];
    v20 = *(v40 + 24);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v20 & 1;
}

- (BOOL)setClientRestrictions:(id)a3 overrideRestrictions:(BOOL)a4 appsAndOptions:(id)a5 system:(BOOL)a6 clientType:(id)a7 clientUUID:(id)a8 sender:(id)a9 localizedClientDescription:(id)a10 localizedWarning:(id)a11 shouldRecomputeNag:(BOOL)a12 outRestrictionsChanged:(BOOL *)a13 outEffectiveSettingsChanged:(BOOL *)a14 outRecomputedNag:(BOOL *)a15 outError:(id *)a16
{
  v21 = a3;
  v35 = a5;
  v36 = a7;
  v22 = a8;
  v23 = v21;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = v22;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Setting client truth %{public}@ for client %{public}@", buf, 0x16u);
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v57 = sub_10007937C;
  v58 = sub_10007938C;
  v59 = 0;
  if (v22)
  {
    v28 = [(MCRestrictionManagerWriter *)self memberQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007A688;
    block[3] = &unk_10011CBF8;
    v50 = a4;
    v38 = v36;
    v39 = self;
    v40 = v22;
    v41 = v23;
    v42 = v25;
    v46 = &v52;
    v51 = a6;
    v43 = v26;
    v44 = v35;
    v48 = a13;
    v49 = a14;
    v45 = v24;
    v47 = buf;
    v29 = v24;
    v30 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    dispatch_sync(v28, v30);

    v24 = v29;
    if (a12)
    {
      v31 = [(MCRestrictionManagerWriter *)self recomputeNagMetadata];
      if (a15)
      {
        *a15 = v31;
      }
    }

    v32 = *(v53 + 24);
  }

  else
  {
    v32 = 0;
  }

  if (a16 && !v32)
  {
    *a16 = *(*&buf[8] + 40);
    v32 = *(v53 + 24);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v52, 8);
  return v32 & 1;
}

- (id)orphanCheckExemptClientTypes
{
  if (qword_100136C08 != -1)
  {
    sub_1000C2CC4();
  }

  v3 = qword_100136BE0;

  return v3;
}

- (id)orphanCheckUnexemptClientTypes
{
  if (qword_100136C08 != -1)
  {
    sub_1000C2CC4();
  }

  v2 = [qword_100136BD8 allKeys];
  v3 = [NSMutableSet setWithArray:v2];
  v4 = v3;
  if (qword_100136BE0)
  {
    [v3 minusSet:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (id)_liveClientUUIDsForClientType:(id)a3 outLoaderMissing:(BOOL *)a4
{
  v5 = a3;
  if (qword_100136C08 != -1)
  {
    sub_1000C2CC4();
  }

  Value = CFDictionaryGetValue(qword_100136BE8, v5);
  v7 = CFDictionaryGetValue(qword_100136BF0, v5);
  if (Value)
  {
    v8 = ([Value methodForSelector:v7])(Value, v7, v5);
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Called plugin to get UUIDs", &v12, 2u);
    }

    if (a4)
    {
LABEL_7:
      *a4 = Value == 0;
    }
  }

  else
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No loader was found for client type %{public}@", &v12, 0xCu);
    }

    v8 = 0;
    if (a4)
    {
      goto LABEL_7;
    }
  }

  return v8;
}

- (void)notifyClientsToRecomputeCompliance
{
  if (qword_100136C08 != -1)
  {
    sub_1000C2CC4();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_clientTypeLoaders;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        Value = CFDictionaryGetValue(qword_100136BE8, v8);
        v10 = CFDictionaryGetValue(qword_100136BF8, v8);
        if (Value)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          ([Value methodForSelector:v10])(Value, v10, v8);
          v12 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
          {
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Called plugin to recompute compliance", v13, 2u);
          }
        }
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (id)orphanedClientUUIDsForClientRestrictionDictionary:(id)a3
{
  v3 = a3;
  if (qword_100136C08 != -1)
  {
    sub_1000C2CC4();
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    v9 = kMCClientRestrictionsType;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [v5 objectForKey:v11];
        v13 = [v12 objectForKey:v9];

        if (v13)
        {
          v14 = [v4 objectForKey:v13];
          if (!v14)
          {
            v14 = objc_alloc_init(NSMutableSet);
            [v4 setObject:v14 forKey:v13];
          }

          [v14 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v7);
  }

  v15 = objc_alloc_init(NSMutableSet);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v47;
    *&v18 = 138412290;
    v39 = v18;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v46 + 1) + 8 * j);
        if ([qword_100136BE0 containsObject:{v22, v39}])
        {
          v23 = [v16 objectForKey:v22];
          v24 = [v23 allObjects];
          [v15 addObjectsFromArray:v24];

          continue;
        }

        v45 = 0;
        v25 = [(MCRestrictionManagerWriter *)self _liveClientUUIDsForClientType:v22 outLoaderMissing:&v45];
        v26 = v25;
        if (v45 == 1)
        {
          v27 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v56 = v22;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Loader for client type %{public}@ missing. All client restrictions will be removed.", buf, 0xCu);
          }

          goto LABEL_31;
        }

        if (v25)
        {
          v28 = [v25 allObjects];
          [v15 addObjectsFromArray:v28];
LABEL_30:

          goto LABEL_31;
        }

        if ([qword_100136C00 containsObject:v22])
        {
          v29 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v39;
            v56 = v22;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Loader for client type %@ didn't return an answer. Preserving its client restrictions.", buf, 0xCu);
          }

          v28 = [v16 objectForKey:v22];
          v30 = [v28 allObjects];
          [v15 addObjectsFromArray:v30];

          goto LABEL_30;
        }

LABEL_31:
      }

      v19 = [v16 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v19);
  }

  v31 = objc_alloc_init(NSMutableSet);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = v5;
  v33 = [v32 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v42;
    do
    {
      for (k = 0; k != v34; k = k + 1)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v41 + 1) + 8 * k);
        if (([v15 containsObject:v37] & 1) == 0)
        {
          [v31 addObject:v37];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v34);
  }

  return v31;
}

- (BOOL)removeOrphanedClientRestrictions
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing orphaned client restrictions...", buf, 2u);
  }

  v4 = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B53C;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_sync(v4, block);

  return [(MCRestrictionManagerWriter *)self recomputeNagMetadata];
}

- (BOOL)recomputeNagMetadata:(BOOL *)a3
{
  v5 = +[MCPasscodeManagerWriter sharedManager];
  v6 = [v5 isDeviceLocked];
  if (v6)
  {
    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MCRestrictionManagerWriter cannot recompute nag metadata because the device is locked.", buf, 2u);
    }
  }

  else
  {
    v8 = [(MCRestrictionManagerWriter *)self memberQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007BB30;
    v10[3] = &unk_10011BD90;
    v10[4] = self;
    v10[5] = a3;
    dispatch_sync(v8, v10);
  }

  return v6 ^ 1;
}

- (BOOL)memberQueueCheckPasscodeCompliesWithCurrentRestrictions
{
  v3 = [(MCRestrictionManagerWriter *)self memberQueuePasscodeCompliesWithRestrictions];

  if (v3)
  {
    v4 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using cached passcode compliance with restrictions", buf, 2u);
    }

    v5 = [(MCRestrictionManagerWriter *)self memberQueuePasscodeCompliesWithRestrictions];
    v6 = [v5 BOOLValue];

    v7 = 0;
    if (v6)
    {
LABEL_5:
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = +[MCPasscodeManagerWriter sharedManager];
    v10 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
    v16 = 0;
    v11 = [v9 currentPasscodeCompliesWithPolicyFromRestrictions:v10 outError:&v16];
    v7 = v16;

    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Caching passcode compliance with restrictions", buf, 2u);
    }

    v13 = [NSNumber numberWithBool:v11];
    [(MCRestrictionManagerWriter *)self setMemberQueuePasscodeCompliesWithRestrictions:v13];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v14 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Current passcode does not comply with restrictions. Error: %{public}@", buf, 0xCu);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (BOOL)memberQueueCheckPasscodeCompliesWithProfileRestrictions
{
  v3 = [(MCRestrictionManagerWriter *)self memberQueuePasscodeCompliesWithProfileRestrictions];

  if (v3)
  {
    v4 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using cached passcode compliance with profile restrictions", buf, 2u);
    }

    v5 = [(MCRestrictionManagerWriter *)self memberQueuePasscodeCompliesWithProfileRestrictions];
    v6 = [v5 BOOLValue];

    v7 = 0;
    if (v6)
    {
LABEL_5:
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = +[MCPasscodeManagerWriter sharedManager];
    v10 = [(MCRestrictionManagerWriter *)self memberQueueCombinedSystemProfileRestrictions];
    v16 = 0;
    v11 = [v9 currentPasscodeCompliesWithPolicyFromRestrictions:v10 outError:&v16];
    v7 = v16;

    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Caching passcode compliance with profile restrictions", buf, 2u);
    }

    v13 = [NSNumber numberWithBool:v11];
    [(MCRestrictionManagerWriter *)self setMemberQueuePasscodeCompliesWithProfileRestrictions:v13];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v14 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Current passcode does not comply with profile restrictions, so making change mandatory. Error: %{public}@", buf, 0xCu);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (BOOL)memberQueueIsPasscodeComplianceMandatoryWithOutLocalizedWarning:(id *)a3
{
  if (![(MCRestrictionManagerWriter *)self memberQueueCheckPasscodeCompliesWithProfileRestrictions])
  {
    return 1;
  }

  v31 = a3;
  v36 = +[NSMutableArray array];
  v33 = self;
  [(MCRestrictionManagerWriter *)self memberQueueSystemClientRestrictions];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v40 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v9 = kMCClientRestrictionsType;
    v10 = kMCClientRestrictionsCompliant;
    v32 = kMCClientRestrictionsTruth;
    v35 = kMCClientRestrictionsLocalizedClientDescription;
    v34 = *v38;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v5 objectForKey:v12];
        v14 = [v13 objectForKey:v9];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = @"Unknown";
        }

        v16 = [v13 objectForKeyedSubscript:v10];
        if (!v16)
        {
          v17 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v42 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Client restriction passcode compliance for client of type “%{public}@” was not cached when it should be. Recalculating.", buf, 0xCu);
          }

          v18 = [(MCRestrictionManagerWriter *)v33 memberQueueRecomputePasscodeComplianceForClientUUID];
          [v18 addObject:v12];

          v19 = [v13 objectForKey:v32];
          if (v19)
          {
            v20 = +[MCPasscodeManagerWriter sharedManager];
            v21 = [v20 currentPasscodeCompliesWithPolicyFromRestrictions:v19 outError:0];

            v8 = v34;
          }

          else
          {
            v21 = 1;
          }

          v16 = [NSNumber numberWithBool:v21];
        }

        if (([v16 BOOLValue] & 1) == 0)
        {
          v22 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v42 = v15;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Current passcode not compliant with client of type “%{public}@”", buf, 0xCu);
          }

          if (![(__CFString *)v15 isEqualToString:@"com.apple.eas.account"])
          {

            v27 = 1;
            v26 = v5;
            v25 = v36;
            goto LABEL_35;
          }

          v23 = [v13 objectForKey:v35];
          if (v23)
          {
            [v36 addObject:v23];
          }

          else
          {
            v24 = MCLocalizedString();
            [v36 addObject:v24];

            v8 = v34;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v25 = v36;
  if ([v36 count])
  {
    v30 = [v36 objectAtIndexedSubscript:0];
    v26 = MCLocalizedFormatByDevice();
  }

  else
  {
    v26 = MCLocalizedStringByDevice();
  }

  if (v31)
  {
    v28 = v26;
    v27 = 0;
    *v31 = v26;
  }

  else
  {
    v27 = 0;
  }

LABEL_35:

  return v27;
}

- (void)memberQueueMarkToClearPasscodeComplianceCacheWithOldSystemClientRestrictions:(id)a3 newSystemClientRestrictions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking if we need to clear client restriction passcode compliance caches", buf, 2u);
  }

  v9 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];

  if (v9)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      v37 = kMCClientRestrictionsType;
      v34 = kMCClientRestrictionsCompliant;
      v35 = kMCClientRestrictionsTruth;
      v36 = self;
      v33 = v6;
      v38 = *v41;
      do
      {
        v14 = 0;
        v39 = v12;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          v16 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];
          v17 = [v16 containsObject:v15];

          if ((v17 & 1) == 0)
          {
            v18 = v10;
            v19 = [v10 objectForKey:v15];
            v20 = [v19 objectForKey:v37];
            if (v20)
            {
              v21 = v20;
            }

            else
            {
              v21 = @"Unknown";
            }

            v22 = [v6 objectForKey:v15];
            v23 = v22;
            if (v22)
            {
              v24 = [v22 objectForKeyedSubscript:v34];
              if (v24)
              {
                v25 = [v19 objectForKey:v35];
                if (v25 || ![v24 BOOLValue])
                {
                  v28 = [v23 objectForKey:v35];
                  if ([MCPasscodeManagerWriter didPasscodePolicyChangeWithOldRestrictions:v28 newRestrictions:v25])
                  {
                    v29 = _MCLogObjects[0];
                    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      v45 = v21;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Passcode policy changed for client of type “%{public}@”. Clearing passcode compliance cache.", buf, 0xCu);
                    }

                    v30 = [(MCRestrictionManagerWriter *)v36 memberQueueRecomputePasscodeComplianceForClientUUID];
                    [v30 addObject:v15];

                    v6 = v33;
                  }
                }

                else
                {
                  v26 = _MCLogObjects[0];
                  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v45 = v21;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Client of type “%{public}@” has no restrictions and was previously compliant. No need to clear passcode compliance cache.", buf, 0xCu);
                  }
                }
              }

              else
              {
                v31 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v45 = v21;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Client of type “%{public}@” has no previous cached compliance; marking it to recalculate compliance.", buf, 0xCu);
                }

                v25 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];
                [v25 addObject:v15];
              }

              self = v36;
            }

            else
            {
              v27 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v45 = v21;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Client of type “%{public}@” is a new client; marking it to calculate compliance.", buf, 0xCu);
              }

              v24 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];
              [v24 addObject:v15];
            }

            v10 = v18;
            v13 = v38;
            v12 = v39;
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v12);
    }

    v7 = v32;
  }
}

- (void)memberQueueCacheClientRestrictionPasscodeCompliance
{
  v35 = +[MCPasscodeManagerWriter sharedManager];
  v3 = [(MCRestrictionManagerWriter *)self memberQueueSystemClientRestrictions];
  v38 = [v3 MCMutableDeepCopy];

  v4 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];

  v33 = self;
  if (!v4)
  {
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Recomputing passcode compliance for all client restrictions", buf, 2u);
    }

    v6 = [v38 allKeys];
    v8 = objc_opt_new();
    [(MCRestrictionManagerWriter *)self setMemberQueueRecomputePasscodeComplianceForClientUUID:v8];
    goto LABEL_7;
  }

  v5 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];
  v6 = [v5 allObjects];

  v7 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134217984;
    v45 = [v6 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Recomputing passcode compliance for %lu clients", buf, 0xCu);
LABEL_7:
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v12 = *v40;
  v37 = kMCClientRestrictionsType;
  v13 = kMCClientRestrictionsTruth;
  v14 = kMCClientRestrictionsCompliant;
  v34 = kMCClientRestrictionsUserInfo;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v16 = [v38 objectForKey:{*(*(&v39 + 1) + 8 * i), v33}];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 objectForKey:v37];
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = @"Unknown";
        }

        v20 = [v17 objectForKey:v13];
        if (v20)
        {
          v21 = [v35 currentPasscodeCompliesWithPolicyFromRestrictions:v20 outError:0];
          v22 = _MCLogObjects[0];
          v23 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (v23)
            {
              *buf = 138543362;
              v45 = v19;
              v24 = v22;
              v25 = "Passcode complies with client restrictions from client of type “%{public}@”";
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v23)
          {
            *buf = 138543362;
            v45 = v19;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Passcode does not comply with client restrictions from client of type “%{public}@”", buf, 0xCu);
          }

          v28 = [NSNumber numberWithBool:0];
          [v17 setObject:v28 forKey:v14];

          [v17 removeObjectForKey:v34];
        }

        else
        {
          v26 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v45 = v19;
            v24 = v26;
            v25 = "Client of type “%{public}@” has no client restrictions. Marking as compliant.";
LABEL_23:
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
          }

LABEL_24:
          v27 = [NSNumber numberWithBool:1];
          [v17 setObject:v27 forKey:v14];
        }
      }
    }

    v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v11);
LABEL_31:

  v29 = v33;
  if ([(MCRestrictionManagerWriter *)v33 applyConfiguration:v38 toDomain:8 inNamespace:0 fromSender:@"MCRestrictionManagerWriter.memberQueueCacheClientRestrictionPasscodeCompliance"])
  {
    [(MCRestrictionManagerWriter *)v33 memberQueueCommitClientRestrictionsToDisk];
    MCSendClientTruthChangedNotification();
  }

  v30 = [(MCRestrictionManagerWriter *)v33 memberQueueRecomputePasscodeComplianceForClientUUID];
  v31 = [v30 count];

  if (v31)
  {
    v32 = [(MCRestrictionManagerWriter *)v29 memberQueueRecomputePasscodeComplianceForClientUUID];
    [v32 removeAllObjects];
  }
}

- (void)memberQueueClearRestrictionPasscodeComplianceCache
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing restriction passcode compliance cache.", v4, 2u);
  }

  [(MCRestrictionManagerWriter *)self setMemberQueuePasscodeCompliesWithRestrictions:0];
}

- (void)memberQueueClearProfileRestrictionPasscodeComplianceCache
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing profile restriction passcode compliance cache.", v4, 2u);
  }

  [(MCRestrictionManagerWriter *)self setMemberQueuePasscodeCompliesWithProfileRestrictions:0];
}

- (void)memberQueueClearAllPasscodeComplianceCaches
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing all passcode compliance caches", v4, 2u);
  }

  [(MCRestrictionManagerWriter *)self setMemberQueuePasscodeCompliesWithRestrictions:0];
  [(MCRestrictionManagerWriter *)self setMemberQueuePasscodeCompliesWithProfileRestrictions:0];
  [(MCRestrictionManagerWriter *)self setMemberQueueRecomputePasscodeComplianceForClientUUID:0];
}

- (void)clearAllPasscodeComplianceCaches
{
  v3 = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D1B0;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)memberQueueClearPasscodeHistoryIfNecessary
{
  v2 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v3 = [v2 objectForKeyedSubscript:MCRestrictedValueKey];
  v4 = [v3 objectForKeyedSubscript:MCFeaturePasscodeHistoryCount];
  v6 = [v4 objectForKeyedSubscript:MCRestrictedValueValueKey];

  if (![v6 unsignedIntValue])
  {
    v5 = +[MCPasscodeManagerWriter sharedManager];
    [v5 clearPasscodeHistory];
  }
}

- (void)setShowNagMessage
{
  v2 = [(MCRestrictionManagerWriter *)self memberQueue];
  dispatch_sync(v2, &stru_10011CC18);
}

- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D410;
  block[3] = &unk_10011B688;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

- (void)memberQueueCommitEffectiveUserSettingsToDiskOldEffectiveUserSettings:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Committing effective user settings.", v17, 2u);
  }

  v6 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
  v7 = MCEffectiveUserSettingsFilePath();
  [v6 MCWriteToBinaryFile:v7];

  v8 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
  v9 = [MCRestrictionManagerWriter filterUserSettingsForPublicUse:v8];

  v10 = MCPublicEffectiveUserSettingsFilePath();
  [v9 MCWriteToBinaryFile:v10];

  v11 = [(MCRestrictionManagerWriter *)self memberQueueSettingsEvents];
  v12 = MCSettingsEventsFilePath();
  [v11 MCWriteToBinaryFile:v12];

  v13 = +[MCHacks sharedHacks];
  v14 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v15 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v16 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
  [v13 _applyServerSideChangesWithOldRestrictions:v14 newRestrictions:v15 oldEffectiveUserSettings:v4 newEffectiveUserSettings:v16];
}

- (BOOL)memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManagerWriter *)self memberQueueSystemUserSettings];
  v6 = [v5 MCMutableDeepCopy];

  v7 = [(MCRestrictionManagerWriter *)self memberQueueUserUserSettings];
  [v6 MCDeepCopyEntriesFromDictionary:v7];

  v8 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v9 = [MCRestrictionManager newEffectiveSettingsByApplyingRestrictions:v8 toSettings:v6];

  v10 = +[MCHacks sharedHacks];
  [v10 _applyHeuristicsToEffectiveUserSettings:v9];

  v11 = +[MCHacks sharedHacks];
  [v11 _applyMandatorySettingsToEffectiveUserSettings:v9];

  v12 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v13 = [MCRestrictionManager appWhitelistStateWithSettingsDictionary:v9 restrictionsDictionary:v12];

  if (v13 <= 5 && ((1 << v13) & 0x34) != 0)
  {
    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Applying additional restrictions because we are enforcing shared app whitelist behavior.", buf, 2u);
    }

    v15 = +[MCRestrictionManagerWriter enforcedAppWhitelistRestrictions];
    v16 = [MCRestrictionManager newEffectiveSettingsByApplyingRestrictions:v15 toSettings:v9];

    v9 = v16;
  }

  v17 = +[MCServerSideHacks sharedHacks];
  [v17 applyEffectiveSettings:v9 toOtherSubsystemsWithCredentialSet:v4];

  v18 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
  v19 = [v18 isEqualToDictionary:v9];

  if ((v19 & 1) == 0)
  {
    v60 = v19;
    v20 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v21 = [v20 copy];

    [(MCRestrictionManagerWriter *)self applyConfiguration:v9 toDomain:4 inNamespace:0 fromSender:@"MCRestrictionManagerWriter.RecomputeEffectiveUserSettings"];
    [(MCRestrictionManagerWriter *)self memberQueueCommitEffectiveUserSettingsToDiskOldEffectiveUserSettings:v21];
    senderPID = self->_senderPID;
    MCSendEffectiveSettingsChangedNotification();
    if ([MCRestrictionManager intersectedValuesForFeature:MCFeatureAllowedExternalIntelligenceWorkspaceIDs changedBetweenOldRestrictions:v21 andNewRestrictions:v9])
    {
      MCSendExternalIntelligenceWorkspaceListChangedNotification();
    }

    if (([MCRestrictionManager intersectedValuesSetting:MCFeatureAppLockBundleIDs valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureAppLockMultipleAppsAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureAppLockAccessWithoutPasscodeAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureAppLockGrantSupervisorAccessForced valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || [MCRestrictionManager BOOLSetting:MCFeatureAppLockLogoutAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9])
    {
      buf[0] = 0;
      v23 = +[MCServerSideHacks sharedHacks];
      v24 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
      [v23 recomputeAppOptionsEffectiveUserSettings:v24 outEffectiveChangeDetected:buf];

      if (buf[0] == 1)
      {
        MCSendAppWhitelistChangedNotification();
        v25 = +[MDMClient sharedClient];
        [v25 retryNotNowResponse];
      }
    }

    v61 = v6;
    v26 = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:v21];
    v27 = v26 ^ [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:v9];
    if ((v27 & 1) != 0 || ([MCRestrictionManager intersectedValuesSetting:MCFeatureWebContentFilterAutoPermittedURLs valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager intersectedValuesSetting:MCFeatureWebContentFilterWhitelistedURLs valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager unionValuesSetting:MCFeatureWebContentFilterBlacklistedURLs valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || [MCRestrictionManager BOOLSetting:MCFeatureWebContentFilterAutoForced valueChangedBetweenOldSettings:v21 andNewSettings:v9])
    {
      buf[0] = 0;
      v62 = 0;
      v28 = +[MCServerSideHacks sharedHacks];
      v29 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
      [v28 recomputeWebContentFilterEffectiveUserSettings:v29 outEffectiveChangeDetected:buf outMechanismChangedDetected:&v62];

      if (v62 == 1)
      {
        MCSendWebContentFilterTypeChangedNotification();
      }

      if (buf[0] == 1)
      {
        MCSendWebContentFilterChangedNotification();
      }

      if (v27)
      {
        MCSendWebContentFilterUIActiveChangedNotification();
      }
    }

    if (([MCRestrictionManager BOOLSetting:MCFeaturePredictiveKeyboardAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureKeyboardShortcutsAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureSpellCheckAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureAutoCorrectionAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureSmartPunctuationAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureDictationAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || [MCRestrictionManager BOOLSetting:MCFeatureContinuousPathKeyboardAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9])
    {
      MCSendKeyboardSettingsChangedNotification();
    }

    if (([MCRestrictionManager BOOLSetting:MCFeatureNewsAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager BOOLSetting:MCFeatureNewsTodayAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || [MCRestrictionManager BOOLSetting:MCFeatureSpotlightNewsAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9])
    {
      MCSendNewsSettingsChangedNotification();
    }

    if ([MCRestrictionManager BOOLSetting:MCFeaturePasscodeModificationAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9])
    {
      MCSendAllowPasscodeModificationChangedNotification();
    }

    if ([MCRestrictionManager unionValuesSetting:MCFeatureRemovedSystemAppBundleIDs valueChangedBetweenOldSettings:v21 andNewSettings:v9])
    {
      MCSendRemovedSystemAppsChangedNotification();
    }

    if ([MCRestrictionManager BOOLSetting:MCFeatureHealthDataSubmissionAllowed valueChangedBetweenOldSettings:v21 andNewSettings:v9])
    {
      MCSendAllowHealthDataSubmissionChangedNotification();
    }

    v30 = MCFeatureBookstoreEroticaAllowed;
    v31 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v59 = [MCRestrictionManager BOOLSettingForFeature:v30 withUserSettingDictionary:v31]!= 2;

    v32 = MCFeatureExplicitContentAllowed;
    v33 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v58 = [MCRestrictionManager BOOLSettingForFeature:v32 withUserSettingDictionary:v33]!= 2;

    v34 = MCFeatureSpellCheckAllowed;
    v35 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v36 = [MCRestrictionManager BOOLSettingForFeature:v34 withUserSettingDictionary:v35]!= 2;

    v37 = MCFeatureAutoCorrectionAllowed;
    v38 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v39 = [MCRestrictionManager BOOLSettingForFeature:v37 withUserSettingDictionary:v38]!= 2;

    v40 = MCFeatureMaximumAppsRating;
    v41 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v42 = [MCRestrictionManager valueSettingForFeature:v40 withUserSettingDictionary:v41];

    v43 = MCFeatureMaximumMoviesRating;
    v44 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v45 = [MCRestrictionManager valueSettingForFeature:v43 withUserSettingDictionary:v44];

    v46 = MCFeatureMaximumTVShowsRating;
    v47 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v48 = [MCRestrictionManager valueSettingForFeature:v46 withUserSettingDictionary:v47];

    v64[0] = MCExplicitBooksAllowedThirdPartyQuery;
    v49 = [NSNumber numberWithBool:v59];
    v65[0] = v49;
    v64[1] = MCExplicitMusicPodcastsAllowedThirdPartyQuery;
    v50 = [NSNumber numberWithBool:v58];
    v65[1] = v50;
    v64[2] = MCSpellCheckAllowedThirdPartyQuery;
    v51 = [NSNumber numberWithBool:v36];
    v65[2] = v51;
    v64[3] = MCAutoCorrectionAllowedThirdPartyQuery;
    v52 = [NSNumber numberWithBool:v39];
    v65[3] = v52;
    v53 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:4];

    v54 = [[NSMutableDictionary alloc] initWithDictionary:v53];
    v55 = objc_alloc_init(NSMutableArray);
    v56 = v55;
    if (v42)
    {
      [v54 setObject:v42 forKey:MCMaximumAppsRatingThirdPartyQuery];
    }

    else
    {
      [v55 addObject:MCMaximumAppsRatingThirdPartyQuery];
    }

    if (v45)
    {
      [v54 setObject:v45 forKey:MCMaximumMoviesRatingThirdPartyQuery];
    }

    else
    {
      [v56 addObject:MCMaximumMoviesRatingThirdPartyQuery];
    }

    if (v48)
    {
      [v54 setObject:v48 forKey:MCMaximumTVShowsRatingThirdPartyQuery];
    }

    else
    {
      [v56 addObject:MCMaximumTVShowsRatingThirdPartyQuery];
    }

    [MCManagedPreferencesManager updateGlobalManagedPreferencesByAddingPreferences:v54 removingPreferences:v56];

    v6 = v61;
    v19 = v60;
  }

  return v19 ^ 1;
}

- (id)_memberQueueNewUserSettingsWithParametersForSettingsByType:(id)a3 currentUserSettings:(id)a4
{
  v6 = a4;
  v7 = [a3 MCMutableDeepCopy];
  v8 = +[MCHacks sharedHacks];
  v9 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  [v8 _applyImpliedSettingsToSettingsDictionary:v7 currentSettings:v6 restrictions:v9];

  v36 = v6;
  v10 = [v6 MCMutableDeepCopy];
  [v10 MCDeepCopyEntriesFromDictionary:v7];
  v11 = MCIntersectionKey;
  v12 = [v10 objectForKey:MCIntersectionKey];
  v13 = [v7 objectForKey:v11];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = [v13 objectForKey:v18];
        v20 = [v19 mutableCopy];
        v21 = [v18 copy];
        [v12 setObject:v20 forKey:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v15);
  }

  v22 = MCUnionKey;
  v34 = v10;
  v23 = [v10 objectForKey:MCUnionKey];
  v35 = v7;
  v24 = [v7 objectForKey:v22];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v37 + 1) + 8 * j);
        v30 = [v24 objectForKey:v29];
        v31 = [v30 mutableCopy];
        v32 = [v29 copy];
        [v23 setObject:v31 forKey:v32];
      }

      v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v26);
  }

  return v34;
}

- (BOOL)memberQueueSetParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 sender:(id)a8
{
  v10 = a6;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  if (v11)
  {
    v18 = [(MCRestrictionManagerWriter *)self memberQueueSystemUserSettings];
    if (v15)
    {
      v19 = [(MCRestrictionManagerWriter *)self memberQueueSystemNamespacedUserSettings];
      v20 = [v19 objectForKeyedSubscript:v15];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = objc_opt_new();
      }

      v24 = v22;

      v23 = [(MCRestrictionManagerWriter *)self _memberQueueNewUserSettingsWithParametersForSettingsByType:v14 currentUserSettings:v24];
      [(MCRestrictionManagerWriter *)self applyConfiguration:v23 toDomain:1 inNamespace:v15 fromSender:v17];
      v18 = v24;
    }

    else
    {
      v23 = [(MCRestrictionManagerWriter *)self _memberQueueNewUserSettingsWithParametersForSettingsByType:v14 currentUserSettings:v18];
      [(MCRestrictionManagerWriter *)self applyConfiguration:v23 toDomain:0 inNamespace:0 fromSender:v17];
    }
  }

  if (v10)
  {
    v25 = [(MCRestrictionManagerWriter *)self memberQueueUserUserSettings];
    if (v15)
    {
      v26 = [(MCRestrictionManagerWriter *)self memberQueueUserNamespacedUserSettings];
      v27 = [v26 objectForKeyedSubscript:v15];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = objc_opt_new();
      }

      v31 = v29;

      v30 = [(MCRestrictionManagerWriter *)self _memberQueueNewUserSettingsWithParametersForSettingsByType:v14 currentUserSettings:v31];
      [(MCRestrictionManagerWriter *)self applyConfiguration:v30 toDomain:3 inNamespace:v15 fromSender:v17];
      v25 = v31;
    }

    else
    {
      v30 = [(MCRestrictionManagerWriter *)self _memberQueueNewUserSettingsWithParametersForSettingsByType:v14 currentUserSettings:v25];
      [(MCRestrictionManagerWriter *)self applyConfiguration:v30 toDomain:2 inNamespace:0 fromSender:v17];
    }
  }

  [(MCRestrictionManagerWriter *)self memberQueueCommitUserSettingsToDisk];
  v32 = [(MCRestrictionManagerWriter *)self memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:v16];

  return v32;
}

- (BOOL)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 sender:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v18 = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007E734;
  block[3] = &unk_10011CC40;
  block[4] = self;
  v26 = v14;
  v31 = a5;
  v32 = a6;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = &v33;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_sync(v18, v23);

  LOBYTE(v18) = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  return v18;
}

- (void)setValue:(id)a3 forSetting:(id)a4 sender:(id)a5
{
  v18 = MCRestrictedValueKey;
  v15 = a3;
  v16 = a4;
  v14 = MCRestrictedValueValueKey;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  [(MCRestrictionManagerWriter *)self setParametersForSettingsByType:v13 sender:v8];
}

- (void)setIntersectionValues:(id)a3 forSetting:(id)a4 sender:(id)a5
{
  if (a3)
  {
    v24 = MCIntersectionKey;
    v22 = a4;
    v20 = MCSettingParameterValuesKey;
    v9 = a5;
    v10 = a4;
    v11 = [a3 copy];
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  else
  {
    v18 = MCIntersectionKey;
    v16 = a4;
    v17 = &__NSDictionary0__struct;
    v15 = a5;
    v12 = a4;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19 = v11;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  [(MCRestrictionManagerWriter *)self setParametersForSettingsByType:v14 sender:a5];
}

- (void)setUnionValues:(id)a3 forSetting:(id)a4 sender:(id)a5
{
  if (a3)
  {
    v24 = MCUnionKey;
    v22 = a4;
    v20 = MCSettingParameterValuesKey;
    v9 = a5;
    v10 = a4;
    v11 = [a3 copy];
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  else
  {
    v18 = MCUnionKey;
    v16 = a4;
    v17 = &__NSDictionary0__struct;
    v15 = a5;
    v12 = a4;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19 = v11;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  [(MCRestrictionManagerWriter *)self setParametersForSettingsByType:v14 sender:a5];
}

- (void)removeBoolSetting:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007EE94;
  block[3] = &unk_10011CC68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeValueSetting:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F048;
  block[3] = &unk_10011CC68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)resetAllSettingsToDefaultsSender:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManagerWriter *)self memberQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007F1D8;
  v7[3] = &unk_10011B798;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)recomputeEffectiveUserSettings
{
  v3 = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F2D8;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)recomputeUserRestrictionsAndEffectiveUserSettings
{
  v3 = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F36C;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_sync(v3, block);
}

+ (BOOL)restrictionsAlreadyInstalledFromPayload:(id)a3
{
  v9 = 0;
  v4 = [a3 restrictions];
  v5 = [a1 sharedManager];
  v6 = [v5 currentRestrictions];
  v7 = [a1 restrictionsAfterApplyingRestrictionsDictionary:v4 toRestrictionsDictionary:v6 outChangeDetected:&v9 outError:0];

  return (v9 & 1) == 0;
}

@end