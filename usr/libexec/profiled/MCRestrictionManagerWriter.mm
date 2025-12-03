@interface MCRestrictionManagerWriter
+ (BOOL)restrictionsAlreadyInstalledFromPayload:(id)payload;
+ (id)enforcedAppWhitelistRestrictions;
+ (id)sharedManager;
- (BOOL)memberQueueCheckPasscodeCompliesWithCurrentRestrictions;
- (BOOL)memberQueueCheckPasscodeCompliesWithProfileRestrictions;
- (BOOL)memberQueueIsPasscodeComplianceMandatoryWithOutLocalizedWarning:(id *)warning;
- (BOOL)memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:(id)set;
- (BOOL)memberQueueSetAllClientRestrictions:(id)restrictions sender:(id)sender outRestrictionsChanged:(BOOL *)changed outEffectiveSettingsChanged:(BOOL *)settingsChanged outError:(id *)error;
- (BOOL)memberQueueSetParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user credentialSet:(id)set sender:(id)sender;
- (BOOL)memberQueueSetSystemClientRestrictions:(id)restrictions userClientRestrictions:(id)clientRestrictions sender:(id)sender outRestrictionsChanged:(BOOL *)changed outEffectiveSettingsChanged:(BOOL *)settingsChanged outError:(id *)error;
- (BOOL)recomputeNagMetadata:(BOOL *)metadata;
- (BOOL)removeOrphanedClientRestrictions;
- (BOOL)setAllClientRestrictions:(id)restrictions sender:(id)sender outRestrictionsChanged:(BOOL *)changed outEffectiveSettingsChanged:(BOOL *)settingsChanged outRecomputedNag:(BOOL *)nag outError:(id *)error;
- (BOOL)setClientRestrictions:(id)restrictions overrideRestrictions:(BOOL)overrideRestrictions appsAndOptions:(id)options system:(BOOL)system clientType:(id)type clientUUID:(id)d sender:(id)sender localizedClientDescription:(id)self0 localizedWarning:(id)self1 shouldRecomputeNag:(BOOL)self2 outRestrictionsChanged:(BOOL *)self3 outEffectiveSettingsChanged:(BOOL *)self4 outRecomputedNag:(BOOL *)self5 outError:(id *)self6;
- (BOOL)setParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user credentialSet:(id)set sender:(id)sender;
- (BOOL)setSystemProfileRestrictions:(id)restrictions userProfileRestrictions:(id)profileRestrictions sender:(id)sender outRestrictionsChanged:(BOOL *)changed outEffectiveSettingsChanged:(BOOL *)settingsChanged outAppWhitelistSettingsChanged:(BOOL *)whitelistSettingsChanged outRecomputedNag:(BOOL *)nag outError:(id *)self0;
- (id)_init;
- (id)_liveClientUUIDsForClientType:(id)type outLoaderMissing:(BOOL *)missing;
- (id)_memberQueueNewUserSettingsWithParametersForSettingsByType:(id)type currentUserSettings:(id)settings;
- (id)orphanCheckExemptClientTypes;
- (id)orphanCheckUnexemptClientTypes;
- (id)orphanedClientUUIDsForClientRestrictionDictionary:(id)dictionary;
- (void)clearAllPasscodeComplianceCaches;
- (void)memberQueueCacheClientRestrictionPasscodeCompliance;
- (void)memberQueueClearAllPasscodeComplianceCaches;
- (void)memberQueueClearPasscodeHistoryIfNecessary;
- (void)memberQueueClearProfileRestrictionPasscodeComplianceCache;
- (void)memberQueueClearRestrictionPasscodeComplianceCache;
- (void)memberQueueCommitClientRestrictionsToDisk;
- (void)memberQueueCommitEffectiveUserSettingsToDiskOldEffectiveUserSettings:(id)settings;
- (void)memberQueueCommitRestrictionsToDisk;
- (void)memberQueueCommitUserSettingsToDisk;
- (void)memberQueueMarkToClearPasscodeComplianceCacheWithOldSystemClientRestrictions:(id)restrictions newSystemClientRestrictions:(id)clientRestrictions;
- (void)notifyClientsToRecomputeCompliance;
- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)date;
- (void)recomputeEffectiveUserSettings;
- (void)recomputeUserRestrictionsAndEffectiveUserSettings;
- (void)removeBoolSetting:(id)setting sender:(id)sender;
- (void)removeValueSetting:(id)setting sender:(id)sender;
- (void)resetAllSettingsToDefaultsSender:(id)sender;
- (void)setIntersectionValues:(id)values forSetting:(id)setting sender:(id)sender;
- (void)setShowNagMessage;
- (void)setUnionValues:(id)values forSetting:(id)setting sender:(id)sender;
- (void)setUserInfo:(id)info forClientUUID:(id)d sender:(id)sender;
- (void)setValue:(id)value forSetting:(id)setting sender:(id)sender;
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

  memberQueueSystemUserSettings = [(MCRestrictionManagerWriter *)self memberQueueSystemUserSettings];
  v5 = MCSystemUserSettingsFilePath();
  [memberQueueSystemUserSettings MCWriteToBinaryFile:v5];

  memberQueueSystemNamespacedUserSettings = [(MCRestrictionManagerWriter *)self memberQueueSystemNamespacedUserSettings];
  v7 = MCSystemNamespacedUserSettingsFilePath();
  [memberQueueSystemNamespacedUserSettings MCWriteToBinaryFile:v7];

  memberQueueUserUserSettings = [(MCRestrictionManagerWriter *)self memberQueueUserUserSettings];
  v9 = MCUserUserSettingsFilePath();
  [memberQueueUserUserSettings MCWriteToBinaryFile:v9];

  memberQueueUserNamespacedUserSettings = [(MCRestrictionManagerWriter *)self memberQueueUserNamespacedUserSettings];
  v11 = MCUserNamespacedUserSettingsFilePath();
  [memberQueueUserNamespacedUserSettings MCWriteToBinaryFile:v11];

  memberQueueSettingsEvents = [(MCRestrictionManagerWriter *)self memberQueueSettingsEvents];
  v13 = MCSettingsEventsFilePath();
  [memberQueueSettingsEvents MCWriteToBinaryFile:v13];

  MCSendSettingsChangedNotification();
}

+ (id)sharedManager
{
  v4.receiver = self;
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

  memberQueueRestrictions = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v5 = MCRestrictionsFilePath();
  [memberQueueRestrictions MCWriteToBinaryFile:v5];

  memberQueueSettingsEvents = [(MCRestrictionManagerWriter *)self memberQueueSettingsEvents];
  v7 = MCSettingsEventsFilePath();
  [memberQueueSettingsEvents MCWriteToBinaryFile:v7];
}

- (BOOL)setSystemProfileRestrictions:(id)restrictions userProfileRestrictions:(id)profileRestrictions sender:(id)sender outRestrictionsChanged:(BOOL *)changed outEffectiveSettingsChanged:(BOOL *)settingsChanged outAppWhitelistSettingsChanged:(BOOL *)whitelistSettingsChanged outRecomputedNag:(BOOL *)nag outError:(id *)self0
{
  restrictionsCopy = restrictions;
  profileRestrictionsCopy = profileRestrictions;
  senderCopy = sender;
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
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100079394;
  v29 = &unk_10011CB80;
  selfCopy = self;
  v20 = restrictionsCopy;
  v31 = v20;
  v21 = profileRestrictionsCopy;
  v32 = v21;
  v22 = senderCopy;
  changedCopy = changed;
  settingsChangedCopy = settingsChanged;
  v33 = v22;
  v34 = &v45;
  v35 = &v39;
  whitelistSettingsChangedCopy = whitelistSettingsChanged;
  dispatch_sync(memberQueue, &v26);

  v23 = [(MCRestrictionManagerWriter *)self recomputeNagMetadata:v26];
  if (nag)
  {
    *nag = v23;
  }

  v24 = *(v46 + 24);
  if (error && (v46[3] & 1) == 0)
  {
    *error = v40[5];
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

  memberQueueSystemClientRestrictions = [(MCRestrictionManagerWriter *)self memberQueueSystemClientRestrictions];
  v5 = MCSystemClientRestrictionsFilePath();
  [memberQueueSystemClientRestrictions MCWriteToBinaryFile:v5];

  memberQueueUserClientRestrictions = [(MCRestrictionManagerWriter *)self memberQueueUserClientRestrictions];
  v7 = MCUserClientRestrictionsFilePath();
  [memberQueueUserClientRestrictions MCWriteToBinaryFile:v7];

  memberQueueSettingsEvents = [(MCRestrictionManagerWriter *)self memberQueueSettingsEvents];
  v9 = MCSettingsEventsFilePath();
  [memberQueueSettingsEvents MCWriteToBinaryFile:v9];
}

- (void)setUserInfo:(id)info forClientUUID:(id)d sender:(id)sender
{
  infoCopy = info;
  dCopy = d;
  senderCopy = sender;
  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v18 = infoCopy;
    v19 = 2114;
    v20 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Setting user info %{public}@ for client uuid %{public}@", buf, 0x16u);
  }

  if (dCopy)
  {
    memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100079B60;
    v13[3] = &unk_10011CBA8;
    v13[4] = self;
    v14 = dCopy;
    v15 = infoCopy;
    v16 = senderCopy;
    dispatch_sync(memberQueue, v13);
  }
}

- (BOOL)memberQueueSetAllClientRestrictions:(id)restrictions sender:(id)sender outRestrictionsChanged:(BOOL *)changed outEffectiveSettingsChanged:(BOOL *)settingsChanged outError:(id *)error
{
  senderCopy = sender;
  restrictionsCopy = restrictions;
  memberQueueUserClientRestrictions = [(MCRestrictionManagerWriter *)self memberQueueUserClientRestrictions];
  LOBYTE(error) = [(MCRestrictionManagerWriter *)self memberQueueSetSystemClientRestrictions:restrictionsCopy userClientRestrictions:memberQueueUserClientRestrictions sender:senderCopy outRestrictionsChanged:changed outEffectiveSettingsChanged:settingsChanged outError:error];

  return error;
}

- (BOOL)memberQueueSetSystemClientRestrictions:(id)restrictions userClientRestrictions:(id)clientRestrictions sender:(id)sender outRestrictionsChanged:(BOOL *)changed outEffectiveSettingsChanged:(BOOL *)settingsChanged outError:(id *)error
{
  restrictionsCopy = restrictions;
  clientRestrictionsCopy = clientRestrictions;
  senderCopy = sender;
  v40 = 0;
  memberQueueRestrictions = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v14 = [memberQueueRestrictions copy];

  memberQueueSystemClientRestrictions = [(MCRestrictionManagerWriter *)self memberQueueSystemClientRestrictions];
  v38 = [memberQueueSystemClientRestrictions copy];

  memberQueueRestrictions2 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  defaultRestrictions = [(MCRestrictionManagerWriter *)self defaultRestrictions];
  memberQueueSystemProfileRestrictions = [(MCRestrictionManagerWriter *)self memberQueueSystemProfileRestrictions];
  memberQueueUserProfileRestrictions = [(MCRestrictionManagerWriter *)self memberQueueUserProfileRestrictions];
  v20 = [MCRestrictionManagerWriter restrictionsWithCurrentRestrictions:memberQueueRestrictions2 defaultRestrictions:defaultRestrictions systemProfileRestrictions:memberQueueSystemProfileRestrictions userProfileRestrictions:memberQueueUserProfileRestrictions systemClientRestrictions:restrictionsCopy userClientRestrictions:clientRestrictionsCopy outRestrictionsChanged:&v40 outError:error];

  v21 = senderCopy;
  v22 = restrictionsCopy;

  if (v20)
  {
    v23 = [(MCRestrictionManagerWriter *)self applyConfiguration:restrictionsCopy toDomain:8 inNamespace:0 fromSender:senderCopy];
    v24 = [(MCRestrictionManagerWriter *)self applyConfiguration:clientRestrictionsCopy toDomain:9 inNamespace:0 fromSender:senderCopy];
    [(MCRestrictionManagerWriter *)self applyConfiguration:v20 toDomain:5 inNamespace:0 fromSender:senderCopy];
    [(MCRestrictionManagerWriter *)self memberQueueCommitClientRestrictionsToDisk];
    [(MCRestrictionManagerWriter *)self memberQueueCommitRestrictionsToDisk];
    memberQueueEffectiveUserSettings = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    mCDeepCopy = [memberQueueEffectiveUserSettings MCDeepCopy];

    v34 = [(MCRestrictionManagerWriter *)self memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:0];
    v27 = +[MCHacks sharedHacks];
    memberQueueEffectiveUserSettings2 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    [v27 _applyServerSideChangesWithOldRestrictions:v14 newRestrictions:v20 oldEffectiveUserSettings:mCDeepCopy newEffectiveUserSettings:memberQueueEffectiveUserSettings2];

    if ((v23 & 1) != 0 || v24)
    {
      [(MCRestrictionManagerWriter *)self memberQueueMarkToClearPasscodeComplianceCacheWithOldSystemClientRestrictions:v38 newSystemClientRestrictions:v22];
      MCSendClientTruthChangedNotification();
    }

    v21 = senderCopy;
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

    if (changed)
    {
      *changed = v40;
    }

    if (settingsChanged)
    {
      *settingsChanged = v34;
    }
  }

  return v20 != 0;
}

- (BOOL)setAllClientRestrictions:(id)restrictions sender:(id)sender outRestrictionsChanged:(BOOL *)changed outEffectiveSettingsChanged:(BOOL *)settingsChanged outRecomputedNag:(BOOL *)nag outError:(id *)error
{
  restrictionsCopy = restrictions;
  senderCopy = sender;
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
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10007A268;
  v25 = &unk_10011CBD0;
  v29 = &v39;
  selfCopy = self;
  v17 = restrictionsCopy;
  v27 = v17;
  v18 = senderCopy;
  changedCopy = changed;
  settingsChangedCopy = settingsChanged;
  v28 = v18;
  v30 = &v33;
  dispatch_sync(memberQueue, &v22);

  v19 = [(MCRestrictionManagerWriter *)self recomputeNagMetadata:v22];
  if (nag)
  {
    *nag = v19;
  }

  v20 = *(v40 + 24);
  if (error && (v40[3] & 1) == 0)
  {
    *error = v34[5];
    v20 = *(v40 + 24);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v20 & 1;
}

- (BOOL)setClientRestrictions:(id)restrictions overrideRestrictions:(BOOL)overrideRestrictions appsAndOptions:(id)options system:(BOOL)system clientType:(id)type clientUUID:(id)d sender:(id)sender localizedClientDescription:(id)self0 localizedWarning:(id)self1 shouldRecomputeNag:(BOOL)self2 outRestrictionsChanged:(BOOL *)self3 outEffectiveSettingsChanged:(BOOL *)self4 outRecomputedNag:(BOOL *)self5 outError:(id *)self6
{
  restrictionsCopy = restrictions;
  optionsCopy = options;
  typeCopy = type;
  dCopy = d;
  v23 = restrictionsCopy;
  senderCopy = sender;
  descriptionCopy = description;
  warningCopy = warning;
  v27 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = dCopy;
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
  if (dCopy)
  {
    memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007A688;
    block[3] = &unk_10011CBF8;
    overrideRestrictionsCopy = overrideRestrictions;
    v38 = typeCopy;
    selfCopy = self;
    v40 = dCopy;
    v41 = v23;
    v42 = descriptionCopy;
    v46 = &v52;
    systemCopy = system;
    v43 = warningCopy;
    v44 = optionsCopy;
    changedCopy = changed;
    settingsChangedCopy = settingsChanged;
    v45 = senderCopy;
    v47 = buf;
    v29 = senderCopy;
    v30 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    dispatch_sync(memberQueue, v30);

    senderCopy = v29;
    if (nag)
    {
      recomputeNagMetadata = [(MCRestrictionManagerWriter *)self recomputeNagMetadata];
      if (recomputedNag)
      {
        *recomputedNag = recomputeNagMetadata;
      }
    }

    v32 = *(v53 + 24);
  }

  else
  {
    v32 = 0;
  }

  if (error && !v32)
  {
    *error = *(*&buf[8] + 40);
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

  allKeys = [qword_100136BD8 allKeys];
  v3 = [NSMutableSet setWithArray:allKeys];
  v4 = v3;
  if (qword_100136BE0)
  {
    [v3 minusSet:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (id)_liveClientUUIDsForClientType:(id)type outLoaderMissing:(BOOL *)missing
{
  typeCopy = type;
  if (qword_100136C08 != -1)
  {
    sub_1000C2CC4();
  }

  Value = CFDictionaryGetValue(qword_100136BE8, typeCopy);
  v7 = CFDictionaryGetValue(qword_100136BF0, typeCopy);
  if (Value)
  {
    v8 = ([Value methodForSelector:v7])(Value, v7, typeCopy);
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Called plugin to get UUIDs", &v12, 2u);
    }

    if (missing)
    {
LABEL_7:
      *missing = Value == 0;
    }
  }

  else
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = typeCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No loader was found for client type %{public}@", &v12, 0xCu);
    }

    v8 = 0;
    if (missing)
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

- (id)orphanedClientUUIDsForClientRestrictionDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (qword_100136C08 != -1)
  {
    sub_1000C2CC4();
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = dictionaryCopy;
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
          allObjects = [v23 allObjects];
          [v15 addObjectsFromArray:allObjects];

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
          allObjects2 = [v25 allObjects];
          [v15 addObjectsFromArray:allObjects2];
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

          allObjects2 = [v16 objectForKey:v22];
          v28AllObjects = [allObjects2 allObjects];
          [v15 addObjectsFromArray:v28AllObjects];

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

  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B53C;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_sync(memberQueue, block);

  return [(MCRestrictionManagerWriter *)self recomputeNagMetadata];
}

- (BOOL)recomputeNagMetadata:(BOOL *)metadata
{
  v5 = +[MCPasscodeManagerWriter sharedManager];
  isDeviceLocked = [v5 isDeviceLocked];
  if (isDeviceLocked)
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
    memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007BB30;
    v10[3] = &unk_10011BD90;
    v10[4] = self;
    v10[5] = metadata;
    dispatch_sync(memberQueue, v10);
  }

  return isDeviceLocked ^ 1;
}

- (BOOL)memberQueueCheckPasscodeCompliesWithCurrentRestrictions
{
  memberQueuePasscodeCompliesWithRestrictions = [(MCRestrictionManagerWriter *)self memberQueuePasscodeCompliesWithRestrictions];

  if (memberQueuePasscodeCompliesWithRestrictions)
  {
    v4 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using cached passcode compliance with restrictions", buf, 2u);
    }

    memberQueuePasscodeCompliesWithRestrictions2 = [(MCRestrictionManagerWriter *)self memberQueuePasscodeCompliesWithRestrictions];
    bOOLValue = [memberQueuePasscodeCompliesWithRestrictions2 BOOLValue];

    v7 = 0;
    if (bOOLValue)
    {
LABEL_5:
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = +[MCPasscodeManagerWriter sharedManager];
    memberQueueRestrictions = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
    v16 = 0;
    v11 = [v9 currentPasscodeCompliesWithPolicyFromRestrictions:memberQueueRestrictions outError:&v16];
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
  memberQueuePasscodeCompliesWithProfileRestrictions = [(MCRestrictionManagerWriter *)self memberQueuePasscodeCompliesWithProfileRestrictions];

  if (memberQueuePasscodeCompliesWithProfileRestrictions)
  {
    v4 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using cached passcode compliance with profile restrictions", buf, 2u);
    }

    memberQueuePasscodeCompliesWithProfileRestrictions2 = [(MCRestrictionManagerWriter *)self memberQueuePasscodeCompliesWithProfileRestrictions];
    bOOLValue = [memberQueuePasscodeCompliesWithProfileRestrictions2 BOOLValue];

    v7 = 0;
    if (bOOLValue)
    {
LABEL_5:
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = +[MCPasscodeManagerWriter sharedManager];
    memberQueueCombinedSystemProfileRestrictions = [(MCRestrictionManagerWriter *)self memberQueueCombinedSystemProfileRestrictions];
    v16 = 0;
    v11 = [v9 currentPasscodeCompliesWithPolicyFromRestrictions:memberQueueCombinedSystemProfileRestrictions outError:&v16];
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

- (BOOL)memberQueueIsPasscodeComplianceMandatoryWithOutLocalizedWarning:(id *)warning
{
  if (![(MCRestrictionManagerWriter *)self memberQueueCheckPasscodeCompliesWithProfileRestrictions])
  {
    return 1;
  }

  warningCopy = warning;
  v36 = +[NSMutableArray array];
  selfCopy = self;
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

          memberQueueRecomputePasscodeComplianceForClientUUID = [(MCRestrictionManagerWriter *)selfCopy memberQueueRecomputePasscodeComplianceForClientUUID];
          [memberQueueRecomputePasscodeComplianceForClientUUID addObject:v12];

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

  if (warningCopy)
  {
    v28 = v26;
    v27 = 0;
    *warningCopy = v26;
  }

  else
  {
    v27 = 0;
  }

LABEL_35:

  return v27;
}

- (void)memberQueueMarkToClearPasscodeComplianceCacheWithOldSystemClientRestrictions:(id)restrictions newSystemClientRestrictions:(id)clientRestrictions
{
  restrictionsCopy = restrictions;
  clientRestrictionsCopy = clientRestrictions;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking if we need to clear client restriction passcode compliance caches", buf, 2u);
  }

  memberQueueRecomputePasscodeComplianceForClientUUID = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];

  if (memberQueueRecomputePasscodeComplianceForClientUUID)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = clientRestrictionsCopy;
    v10 = clientRestrictionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      v37 = kMCClientRestrictionsType;
      v34 = kMCClientRestrictionsCompliant;
      v35 = kMCClientRestrictionsTruth;
      selfCopy = self;
      v33 = restrictionsCopy;
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
          memberQueueRecomputePasscodeComplianceForClientUUID2 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];
          v17 = [memberQueueRecomputePasscodeComplianceForClientUUID2 containsObject:v15];

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

            v22 = [restrictionsCopy objectForKey:v15];
            v23 = v22;
            if (v22)
            {
              memberQueueRecomputePasscodeComplianceForClientUUID5 = [v22 objectForKeyedSubscript:v34];
              if (memberQueueRecomputePasscodeComplianceForClientUUID5)
              {
                memberQueueRecomputePasscodeComplianceForClientUUID4 = [v19 objectForKey:v35];
                if (memberQueueRecomputePasscodeComplianceForClientUUID4 || ![memberQueueRecomputePasscodeComplianceForClientUUID5 BOOLValue])
                {
                  v28 = [v23 objectForKey:v35];
                  if ([MCPasscodeManagerWriter didPasscodePolicyChangeWithOldRestrictions:v28 newRestrictions:memberQueueRecomputePasscodeComplianceForClientUUID4])
                  {
                    v29 = _MCLogObjects[0];
                    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      v45 = v21;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Passcode policy changed for client of type “%{public}@”. Clearing passcode compliance cache.", buf, 0xCu);
                    }

                    memberQueueRecomputePasscodeComplianceForClientUUID3 = [(MCRestrictionManagerWriter *)selfCopy memberQueueRecomputePasscodeComplianceForClientUUID];
                    [memberQueueRecomputePasscodeComplianceForClientUUID3 addObject:v15];

                    restrictionsCopy = v33;
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

                memberQueueRecomputePasscodeComplianceForClientUUID4 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];
                [memberQueueRecomputePasscodeComplianceForClientUUID4 addObject:v15];
              }

              self = selfCopy;
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

              memberQueueRecomputePasscodeComplianceForClientUUID5 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];
              [memberQueueRecomputePasscodeComplianceForClientUUID5 addObject:v15];
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

    clientRestrictionsCopy = v32;
  }
}

- (void)memberQueueCacheClientRestrictionPasscodeCompliance
{
  v35 = +[MCPasscodeManagerWriter sharedManager];
  memberQueueSystemClientRestrictions = [(MCRestrictionManagerWriter *)self memberQueueSystemClientRestrictions];
  mCMutableDeepCopy = [memberQueueSystemClientRestrictions MCMutableDeepCopy];

  memberQueueRecomputePasscodeComplianceForClientUUID = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];

  selfCopy = self;
  if (!memberQueueRecomputePasscodeComplianceForClientUUID)
  {
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Recomputing passcode compliance for all client restrictions", buf, 2u);
    }

    allKeys = [mCMutableDeepCopy allKeys];
    v8 = objc_opt_new();
    [(MCRestrictionManagerWriter *)self setMemberQueueRecomputePasscodeComplianceForClientUUID:v8];
    goto LABEL_7;
  }

  memberQueueRecomputePasscodeComplianceForClientUUID2 = [(MCRestrictionManagerWriter *)self memberQueueRecomputePasscodeComplianceForClientUUID];
  allKeys = [memberQueueRecomputePasscodeComplianceForClientUUID2 allObjects];

  v7 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134217984;
    v45 = [allKeys count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Recomputing passcode compliance for %lu clients", buf, 0xCu);
LABEL_7:
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = allKeys;
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

      v16 = [mCMutableDeepCopy objectForKey:{*(*(&v39 + 1) + 8 * i), selfCopy}];
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

  v29 = selfCopy;
  if ([(MCRestrictionManagerWriter *)selfCopy applyConfiguration:mCMutableDeepCopy toDomain:8 inNamespace:0 fromSender:@"MCRestrictionManagerWriter.memberQueueCacheClientRestrictionPasscodeCompliance"])
  {
    [(MCRestrictionManagerWriter *)selfCopy memberQueueCommitClientRestrictionsToDisk];
    MCSendClientTruthChangedNotification();
  }

  memberQueueRecomputePasscodeComplianceForClientUUID3 = [(MCRestrictionManagerWriter *)selfCopy memberQueueRecomputePasscodeComplianceForClientUUID];
  v31 = [memberQueueRecomputePasscodeComplianceForClientUUID3 count];

  if (v31)
  {
    memberQueueRecomputePasscodeComplianceForClientUUID4 = [(MCRestrictionManagerWriter *)v29 memberQueueRecomputePasscodeComplianceForClientUUID];
    [memberQueueRecomputePasscodeComplianceForClientUUID4 removeAllObjects];
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
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D1B0;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_sync(memberQueue, block);
}

- (void)memberQueueClearPasscodeHistoryIfNecessary
{
  memberQueueRestrictions = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v3 = [memberQueueRestrictions objectForKeyedSubscript:MCRestrictedValueKey];
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
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  dispatch_sync(memberQueue, &stru_10011CC18);
}

- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)date
{
  dateCopy = date;
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D410;
  block[3] = &unk_10011B688;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_sync(memberQueue, block);
}

- (void)memberQueueCommitEffectiveUserSettingsToDiskOldEffectiveUserSettings:(id)settings
{
  settingsCopy = settings;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Committing effective user settings.", v17, 2u);
  }

  memberQueueEffectiveUserSettings = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
  v7 = MCEffectiveUserSettingsFilePath();
  [memberQueueEffectiveUserSettings MCWriteToBinaryFile:v7];

  memberQueueEffectiveUserSettings2 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
  v9 = [MCRestrictionManagerWriter filterUserSettingsForPublicUse:memberQueueEffectiveUserSettings2];

  v10 = MCPublicEffectiveUserSettingsFilePath();
  [v9 MCWriteToBinaryFile:v10];

  memberQueueSettingsEvents = [(MCRestrictionManagerWriter *)self memberQueueSettingsEvents];
  v12 = MCSettingsEventsFilePath();
  [memberQueueSettingsEvents MCWriteToBinaryFile:v12];

  v13 = +[MCHacks sharedHacks];
  memberQueueRestrictions = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  memberQueueRestrictions2 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  memberQueueEffectiveUserSettings3 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
  [v13 _applyServerSideChangesWithOldRestrictions:memberQueueRestrictions newRestrictions:memberQueueRestrictions2 oldEffectiveUserSettings:settingsCopy newEffectiveUserSettings:memberQueueEffectiveUserSettings3];
}

- (BOOL)memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:(id)set
{
  setCopy = set;
  memberQueueSystemUserSettings = [(MCRestrictionManagerWriter *)self memberQueueSystemUserSettings];
  mCMutableDeepCopy = [memberQueueSystemUserSettings MCMutableDeepCopy];

  memberQueueUserUserSettings = [(MCRestrictionManagerWriter *)self memberQueueUserUserSettings];
  [mCMutableDeepCopy MCDeepCopyEntriesFromDictionary:memberQueueUserUserSettings];

  memberQueueRestrictions = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v9 = [MCRestrictionManager newEffectiveSettingsByApplyingRestrictions:memberQueueRestrictions toSettings:mCMutableDeepCopy];

  v10 = +[MCHacks sharedHacks];
  [v10 _applyHeuristicsToEffectiveUserSettings:v9];

  v11 = +[MCHacks sharedHacks];
  [v11 _applyMandatorySettingsToEffectiveUserSettings:v9];

  memberQueueRestrictions2 = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  v13 = [MCRestrictionManager appWhitelistStateWithSettingsDictionary:v9 restrictionsDictionary:memberQueueRestrictions2];

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
  [v17 applyEffectiveSettings:v9 toOtherSubsystemsWithCredentialSet:setCopy];

  memberQueueEffectiveUserSettings = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
  v19 = [memberQueueEffectiveUserSettings isEqualToDictionary:v9];

  if ((v19 & 1) == 0)
  {
    v60 = v19;
    memberQueueEffectiveUserSettings2 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v21 = [memberQueueEffectiveUserSettings2 copy];

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
      memberQueueEffectiveUserSettings3 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
      [v23 recomputeAppOptionsEffectiveUserSettings:memberQueueEffectiveUserSettings3 outEffectiveChangeDetected:buf];

      if (buf[0] == 1)
      {
        MCSendAppWhitelistChangedNotification();
        v25 = +[MDMClient sharedClient];
        [v25 retryNotNowResponse];
      }
    }

    v61 = mCMutableDeepCopy;
    v26 = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:v21];
    v27 = v26 ^ [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:v9];
    if ((v27 & 1) != 0 || ([MCRestrictionManager intersectedValuesSetting:MCFeatureWebContentFilterAutoPermittedURLs valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager intersectedValuesSetting:MCFeatureWebContentFilterWhitelistedURLs valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || ([MCRestrictionManager unionValuesSetting:MCFeatureWebContentFilterBlacklistedURLs valueChangedBetweenOldSettings:v21 andNewSettings:v9]& 1) != 0 || [MCRestrictionManager BOOLSetting:MCFeatureWebContentFilterAutoForced valueChangedBetweenOldSettings:v21 andNewSettings:v9])
    {
      buf[0] = 0;
      v62 = 0;
      v28 = +[MCServerSideHacks sharedHacks];
      memberQueueEffectiveUserSettings4 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
      [v28 recomputeWebContentFilterEffectiveUserSettings:memberQueueEffectiveUserSettings4 outEffectiveChangeDetected:buf outMechanismChangedDetected:&v62];

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
    memberQueueEffectiveUserSettings5 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v59 = [MCRestrictionManager BOOLSettingForFeature:v30 withUserSettingDictionary:memberQueueEffectiveUserSettings5]!= 2;

    v32 = MCFeatureExplicitContentAllowed;
    memberQueueEffectiveUserSettings6 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v58 = [MCRestrictionManager BOOLSettingForFeature:v32 withUserSettingDictionary:memberQueueEffectiveUserSettings6]!= 2;

    v34 = MCFeatureSpellCheckAllowed;
    memberQueueEffectiveUserSettings7 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v36 = [MCRestrictionManager BOOLSettingForFeature:v34 withUserSettingDictionary:memberQueueEffectiveUserSettings7]!= 2;

    v37 = MCFeatureAutoCorrectionAllowed;
    memberQueueEffectiveUserSettings8 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v39 = [MCRestrictionManager BOOLSettingForFeature:v37 withUserSettingDictionary:memberQueueEffectiveUserSettings8]!= 2;

    v40 = MCFeatureMaximumAppsRating;
    memberQueueEffectiveUserSettings9 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v42 = [MCRestrictionManager valueSettingForFeature:v40 withUserSettingDictionary:memberQueueEffectiveUserSettings9];

    v43 = MCFeatureMaximumMoviesRating;
    memberQueueEffectiveUserSettings10 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v45 = [MCRestrictionManager valueSettingForFeature:v43 withUserSettingDictionary:memberQueueEffectiveUserSettings10];

    v46 = MCFeatureMaximumTVShowsRating;
    memberQueueEffectiveUserSettings11 = [(MCRestrictionManagerWriter *)self memberQueueEffectiveUserSettings];
    v48 = [MCRestrictionManager valueSettingForFeature:v46 withUserSettingDictionary:memberQueueEffectiveUserSettings11];

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

    mCMutableDeepCopy = v61;
    v19 = v60;
  }

  return v19 ^ 1;
}

- (id)_memberQueueNewUserSettingsWithParametersForSettingsByType:(id)type currentUserSettings:(id)settings
{
  settingsCopy = settings;
  mCMutableDeepCopy = [type MCMutableDeepCopy];
  v8 = +[MCHacks sharedHacks];
  memberQueueRestrictions = [(MCRestrictionManagerWriter *)self memberQueueRestrictions];
  [v8 _applyImpliedSettingsToSettingsDictionary:mCMutableDeepCopy currentSettings:settingsCopy restrictions:memberQueueRestrictions];

  v36 = settingsCopy;
  mCMutableDeepCopy2 = [settingsCopy MCMutableDeepCopy];
  [mCMutableDeepCopy2 MCDeepCopyEntriesFromDictionary:mCMutableDeepCopy];
  v11 = MCIntersectionKey;
  v12 = [mCMutableDeepCopy2 objectForKey:MCIntersectionKey];
  v13 = [mCMutableDeepCopy objectForKey:v11];
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
  v34 = mCMutableDeepCopy2;
  v23 = [mCMutableDeepCopy2 objectForKey:MCUnionKey];
  v35 = mCMutableDeepCopy;
  v24 = [mCMutableDeepCopy objectForKey:v22];
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

- (BOOL)memberQueueSetParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user credentialSet:(id)set sender:(id)sender
{
  userCopy = user;
  systemCopy = system;
  typeCopy = type;
  dCopy = d;
  setCopy = set;
  senderCopy = sender;
  if (systemCopy)
  {
    memberQueueSystemUserSettings = [(MCRestrictionManagerWriter *)self memberQueueSystemUserSettings];
    if (dCopy)
    {
      memberQueueSystemNamespacedUserSettings = [(MCRestrictionManagerWriter *)self memberQueueSystemNamespacedUserSettings];
      v20 = [memberQueueSystemNamespacedUserSettings objectForKeyedSubscript:dCopy];
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

      v23 = [(MCRestrictionManagerWriter *)self _memberQueueNewUserSettingsWithParametersForSettingsByType:typeCopy currentUserSettings:v24];
      [(MCRestrictionManagerWriter *)self applyConfiguration:v23 toDomain:1 inNamespace:dCopy fromSender:senderCopy];
      memberQueueSystemUserSettings = v24;
    }

    else
    {
      v23 = [(MCRestrictionManagerWriter *)self _memberQueueNewUserSettingsWithParametersForSettingsByType:typeCopy currentUserSettings:memberQueueSystemUserSettings];
      [(MCRestrictionManagerWriter *)self applyConfiguration:v23 toDomain:0 inNamespace:0 fromSender:senderCopy];
    }
  }

  if (userCopy)
  {
    memberQueueUserUserSettings = [(MCRestrictionManagerWriter *)self memberQueueUserUserSettings];
    if (dCopy)
    {
      memberQueueUserNamespacedUserSettings = [(MCRestrictionManagerWriter *)self memberQueueUserNamespacedUserSettings];
      v27 = [memberQueueUserNamespacedUserSettings objectForKeyedSubscript:dCopy];
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

      v30 = [(MCRestrictionManagerWriter *)self _memberQueueNewUserSettingsWithParametersForSettingsByType:typeCopy currentUserSettings:v31];
      [(MCRestrictionManagerWriter *)self applyConfiguration:v30 toDomain:3 inNamespace:dCopy fromSender:senderCopy];
      memberQueueUserUserSettings = v31;
    }

    else
    {
      v30 = [(MCRestrictionManagerWriter *)self _memberQueueNewUserSettingsWithParametersForSettingsByType:typeCopy currentUserSettings:memberQueueUserUserSettings];
      [(MCRestrictionManagerWriter *)self applyConfiguration:v30 toDomain:2 inNamespace:0 fromSender:senderCopy];
    }
  }

  [(MCRestrictionManagerWriter *)self memberQueueCommitUserSettingsToDisk];
  v32 = [(MCRestrictionManagerWriter *)self memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:setCopy];

  return v32;
}

- (BOOL)setParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user credentialSet:(id)set sender:(id)sender
{
  typeCopy = type;
  dCopy = d;
  setCopy = set;
  senderCopy = sender;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007E734;
  block[3] = &unk_10011CC40;
  block[4] = self;
  v26 = typeCopy;
  systemCopy = system;
  userCopy = user;
  v27 = dCopy;
  v28 = setCopy;
  v29 = senderCopy;
  v30 = &v33;
  v19 = senderCopy;
  v20 = setCopy;
  v21 = dCopy;
  v22 = typeCopy;
  v23 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_sync(memberQueue, v23);

  LOBYTE(memberQueue) = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  return memberQueue;
}

- (void)setValue:(id)value forSetting:(id)setting sender:(id)sender
{
  v18 = MCRestrictedValueKey;
  valueCopy = value;
  settingCopy = setting;
  v14 = MCRestrictedValueValueKey;
  senderCopy = sender;
  settingCopy2 = setting;
  valueCopy2 = value;
  v11 = [NSDictionary dictionaryWithObjects:&valueCopy forKeys:&v14 count:1];
  v17 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&settingCopy count:1];
  v19 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  [(MCRestrictionManagerWriter *)self setParametersForSettingsByType:v13 sender:senderCopy];
}

- (void)setIntersectionValues:(id)values forSetting:(id)setting sender:(id)sender
{
  if (values)
  {
    v24 = MCIntersectionKey;
    settingCopy = setting;
    v20 = MCSettingParameterValuesKey;
    senderCopy = sender;
    settingCopy2 = setting;
    v11 = [values copy];
    v21 = v11;
    settingCopy4 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = settingCopy4;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&settingCopy count:1];
    v25 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  else
  {
    v18 = MCIntersectionKey;
    settingCopy3 = setting;
    v17 = &__NSDictionary0__struct;
    senderCopy2 = sender;
    settingCopy4 = setting;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&settingCopy3 count:1];
    v19 = v11;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  [(MCRestrictionManagerWriter *)self setParametersForSettingsByType:v14 sender:sender];
}

- (void)setUnionValues:(id)values forSetting:(id)setting sender:(id)sender
{
  if (values)
  {
    v24 = MCUnionKey;
    settingCopy = setting;
    v20 = MCSettingParameterValuesKey;
    senderCopy = sender;
    settingCopy2 = setting;
    v11 = [values copy];
    v21 = v11;
    settingCopy4 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = settingCopy4;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&settingCopy count:1];
    v25 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  else
  {
    v18 = MCUnionKey;
    settingCopy3 = setting;
    v17 = &__NSDictionary0__struct;
    senderCopy2 = sender;
    settingCopy4 = setting;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&settingCopy3 count:1];
    v19 = v11;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  [(MCRestrictionManagerWriter *)self setParametersForSettingsByType:v14 sender:sender];
}

- (void)removeBoolSetting:(id)setting sender:(id)sender
{
  settingCopy = setting;
  senderCopy = sender;
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007EE94;
  block[3] = &unk_10011CC68;
  block[4] = self;
  v12 = settingCopy;
  v13 = senderCopy;
  v9 = senderCopy;
  v10 = settingCopy;
  dispatch_async(memberQueue, block);
}

- (void)removeValueSetting:(id)setting sender:(id)sender
{
  settingCopy = setting;
  senderCopy = sender;
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F048;
  block[3] = &unk_10011CC68;
  block[4] = self;
  v12 = settingCopy;
  v13 = senderCopy;
  v9 = senderCopy;
  v10 = settingCopy;
  dispatch_async(memberQueue, block);
}

- (void)resetAllSettingsToDefaultsSender:(id)sender
{
  senderCopy = sender;
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007F1D8;
  v7[3] = &unk_10011B798;
  v7[4] = self;
  v8 = senderCopy;
  v6 = senderCopy;
  dispatch_async(memberQueue, v7);
}

- (void)recomputeEffectiveUserSettings
{
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F2D8;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_async(memberQueue, block);
}

- (void)recomputeUserRestrictionsAndEffectiveUserSettings
{
  memberQueue = [(MCRestrictionManagerWriter *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F36C;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_sync(memberQueue, block);
}

+ (BOOL)restrictionsAlreadyInstalledFromPayload:(id)payload
{
  v9 = 0;
  restrictions = [payload restrictions];
  sharedManager = [self sharedManager];
  currentRestrictions = [sharedManager currentRestrictions];
  v7 = [self restrictionsAfterApplyingRestrictionsDictionary:restrictions toRestrictionsDictionary:currentRestrictions outChangeDetected:&v9 outError:0];

  return (v9 & 1) == 0;
}

@end