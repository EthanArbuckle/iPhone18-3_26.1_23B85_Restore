@interface DMDPolicyPersistence
- (BOOL)_loadPersistentStoreIfNeeded:(id *)a3;
- (BOOL)_upsertPolicy:(int64_t)a3 forType:(id)a4 identifier:(id)a5 priority:(unint64_t)a6 organizationIdentifier:(id)a7 declarationIdentifier:(id)a8 policyToUpdate:(id)a9 managedObjectContext:(id)a10;
- (BOOL)isInLegacyDowntimeWithPolicies:(id)a3 priorities:(id)a4;
- (BOOL)isInManagedSettingsDowntime;
- (DMDPolicyPersistence)init;
- (DMDPolicyPersistence)initWithPersistentStoreDescriptions:(id)a3;
- (NSArray)distributedNotificationNames;
- (NSArray)managedSettingsGroups;
- (id)_effectiveCategoryPoliciesForCategoryShieldPolicy:(id)a3 type:(id)a4 excludedIdentifiersKey:(id)a5;
- (id)_effectivePoliciesForTypes:(id)a3;
- (id)_effectivePolicyForManagedSettingsIdentifier:(id)a3 type:(id)a4 excludedIdentifiers:(id)a5;
- (id)_effectivePolicyForType:(id)a3;
- (id)_fetchCategoriesForBundleIdentifiers:(id)a3 withError:(id *)a4;
- (id)_fetchCategoriesIfNeededForWebsiteURLs:(id)a3 withError:(id *)a4;
- (id)_fetchParentBundleIdentifiersForBundleIdentifiers:(id)a3;
- (void)_appendPolicyForBundleIdentifiers:(id)a3 toPolicies:(id)a4 categories:(id)a5 parentBundleIdentifiers:(id)a6 policiesByType:(id)a7;
- (void)_appendPolicyForCategoryIdentifiers:(id)a3 toPolicies:(id)a4 policiesByType:(id)a5;
- (void)_appendPolicyForWebsiteURLs:(id)a3 toPolicies:(id)a4 categories:(id)a5 policiesByType:(id)a6;
- (void)_clearPolicyCachesForTypes:(id)a3;
- (void)_enableEmergencyModeUntilDate:(id)a3 referenceDate:(id)a4 withCompletionHandler:(id)a5;
- (void)_handleChangesToPolicyTypes:(id)a3;
- (void)_notifyClientsRegisteredForPolicyTypes:(id)a3;
- (void)_performBackgroundTask:(id)a3;
- (void)_performBackgroundTaskAndWait:(id)a3;
- (void)_performRegistrationBackgroundTask:(id)a3;
- (void)_recalculateEffectivePolicyForTypes:(id)a3;
- (void)_removeOrphanedPoliciesFromFetchRequest:(id)a3 managedObjectContext:(id)a4 completionHandler:(id)a5;
- (void)addRegistration:(id)a3 replyHandler:(id)a4;
- (void)allExpiredScreenTimeBudgetsShouldBeSynchronous:(BOOL)a3 replyHandler:(id)a4;
- (void)disableEmergencyModeWithCompletionHandler:(id)a3;
- (void)emergencyModeStatusWithCompletionHandler:(id)a3;
- (void)enableEmergencyModeForDuration:(double)a3 withCompletionHandler:(id)a4;
- (void)enableEmergencyModeWithCompletionHandler:(id)a3;
- (void)handleAlarmWithIdentifier:(id)a3;
- (void)handleDistributedNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)handleManagedEffectiveSettingsChangeInGroup:(id)a3;
- (void)handleNotifyMatchingNotificationWithName:(id)a3;
- (void)removeEffectivePolicyFromOrganizationIdentifier:(id)a3 declarationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeOrphanedPoliciesNotBelongingToExistingDeclarationIdentifiersByOrganizationIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeOrphanedPoliciesNotBelongingToExistingOrganizationIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)requestCommunicationPoliciesForBundleIdentifiers:(id)a3 replyHandler:(id)a4;
- (void)requestPoliciesForBundleIdentifiers:(id)a3 replyHandler:(id)a4;
- (void)requestPoliciesForCategoryIdentifiers:(id)a3 replyHandler:(id)a4;
- (void)requestPoliciesForTypes:(id)a3 replyHandler:(id)a4;
- (void)requestPoliciesForWebsiteURLs:(id)a3 replyHandler:(id)a4;
- (void)setEffectivePolicy:(int64_t)a3 forType:(id)a4 identifiers:(id)a5 priority:(unint64_t)a6 organizationIdentifier:(id)a7 declarationIdentifier:(id)a8 completionHandler:(id)a9;
@end

@implementation DMDPolicyPersistence

- (DMDPolicyPersistence)init
{
  v3 = +[NSFileManager dmd_userEffectivePoliciesDatabaseURL];
  v4 = objc_opt_new();
  [v4 setURL:v3];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(DMDPolicyPersistence *)self initWithPersistentStoreDescriptions:v5];

  return v6;
}

- (DMDPolicyPersistence)initWithPersistentStoreDescriptions:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = DMDPolicyPersistence;
  v5 = [(DMDPolicyPersistence *)&v38 init];
  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 URLForResource:@"DMDEffectivePolicies" withExtension:@"momd"];

    v33 = v7;
    v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
    v9 = [[NSPersistentContainer alloc] initWithName:@"EffectivePolicies" managedObjectModel:v8];
    persistentContainer = v5->_persistentContainer;
    v5->_persistentContainer = v9;

    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = [v4 copy];
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          [v16 setShouldAddStoreAsynchronously:0];
          [v16 setOption:NSFileProtectionNone forKey:NSPersistentStoreFileProtectionKey];
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v13);
    }

    [(NSPersistentContainer *)v5->_persistentContainer setPersistentStoreDescriptions:v11];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INITIATED, 0);

    v19 = dispatch_queue_create("com.apple.dmd.policy.emergency-mode", v18);
    emergencyModeQueue = v5->_emergencyModeQueue;
    v5->_emergencyModeQueue = v19;

    v21 = objc_opt_new();
    effectiveSettingsStore = v5->_effectiveSettingsStore;
    v5->_effectiveSettingsStore = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    effectivePolicyCache = v5->_effectivePolicyCache;
    v5->_effectivePolicyCache = v23;

    v25 = objc_alloc_init(NSCache);
    bundleIdentifierPolicyCache = v5->_bundleIdentifierPolicyCache;
    v5->_bundleIdentifierPolicyCache = v25;

    v27 = objc_alloc_init(NSCache);
    categoryIdentifierPolicyCache = v5->_categoryIdentifierPolicyCache;
    v5->_categoryIdentifierPolicyCache = v27;

    v29 = objc_alloc_init(NSCache);
    webDomainPolicyCache = v5->_webDomainPolicyCache;
    v5->_webDomainPolicyCache = v29;

    v31 = +[DMFPolicyMonitor allEffectivePolicyTypes];
    [(DMDPolicyPersistence *)v5 _recalculateEffectivePolicyForTypes:v31];
  }

  return v5;
}

- (BOOL)_loadPersistentStoreIfNeeded:(id *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10005E6DC;
  v16 = sub_10005E6EC;
  v17 = 0;
  v5 = [(DMDPolicyPersistence *)self persistentContainer];
  objc_sync_enter(v5);
  if (![(DMDPolicyPersistence *)self isPersistentContainerLoaded])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005E6F4;
    v9[3] = &unk_1000CFBC0;
    v11 = &v12;
    v9[4] = self;
    v10 = v5;
    [v10 loadPersistentStoresWithCompletionHandler:v9];
  }

  v6 = [(DMDPolicyPersistence *)self isPersistentContainerLoaded];
  objc_sync_exit(v5);

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    *a3 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  return v6;
}

- (void)_performRegistrationBackgroundTask:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(DMDPolicyPersistence *)self _loadPersistentStoreIfNeeded:&v11];
  v6 = v11;
  if (v5)
  {
    [(DMDPolicyPersistence *)self registrationContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005EAE8;
    v9 = v8[3] = &unk_1000CF450;
    v10 = v4;
    v7 = v9;
    [v7 performBlock:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0, v6);
  }
}

- (void)_performBackgroundTask:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(DMDPolicyPersistence *)self _loadPersistentStoreIfNeeded:&v11];
  v6 = v11;
  if (v5)
  {
    [(DMDPolicyPersistence *)self internalContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005EC00;
    v9 = v8[3] = &unk_1000CF450;
    v10 = v4;
    v7 = v9;
    [v7 performBlock:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0, v6);
  }
}

- (void)_performBackgroundTaskAndWait:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(DMDPolicyPersistence *)self _loadPersistentStoreIfNeeded:&v11];
  v6 = v11;
  if (v5)
  {
    [(DMDPolicyPersistence *)self internalContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005ED18;
    v9 = v8[3] = &unk_1000CF450;
    v10 = v4;
    v7 = v9;
    [v7 performBlockAndWait:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0, v6);
  }
}

- (void)addRegistration:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005EDF4;
  v9[3] = &unk_1000CFBE8;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v7 = v6;
  v8 = v12;
  [(DMDPolicyPersistence *)self _performRegistrationBackgroundTask:v9];
}

- (void)requestPoliciesForTypes:(id)a3 replyHandler:(id)a4
{
  v7 = a4;
  v8 = [(DMDPolicyPersistence *)self _effectivePoliciesForTypes:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (id)_effectivePoliciesForTypes:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(DMDPolicyPersistence *)self _effectivePolicyForType:v11, v15];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)_effectivePolicyForType:(id)a3
{
  v4 = a3;
  v5 = [(DMDPolicyPersistence *)self effectivePolicyCache];
  objc_sync_enter(v5);
  v6 = [(DMDPolicyPersistence *)self effectivePolicyCache];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)_recalculateEffectivePolicyForTypes:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005F51C;
  v5[3] = &unk_1000CFC10;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(DMDPolicyPersistence *)self _performBackgroundTaskAndWait:v5];
}

- (BOOL)isInLegacyDowntimeWithPolicies:(id)a3 priorities:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = +[DMFEffectivePolicy downtimeCategoryIdentifiers];
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:v11];
        v13 = [v6 objectForKeyedSubscript:v11];
        v14 = [v12 integerValue];
        v15 = [v13 integerValue];
        v16 = DMFHighestPolicyPriority;

        if (v14)
        {
          v17 = 1;
        }

        else
        {
          v17 = v15 == v16;
        }

        if (!v17)
        {
          v18 = 0;
          goto LABEL_14;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 1;
LABEL_14:

  return v18;
}

- (BOOL)isInManagedSettingsDowntime
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(DMDPolicyPersistence *)self effectiveSettingsStore];
    v4 = [v3 screenTime];
    v5 = [v4 categoryShieldPolicies];

    if (v5)
    {
      v6 = +[MOCategory all];
      v7 = [v5 objectForKeyedSubscript:v6];

      if (v7)
      {
        v8 = [MOScreenTimeShieldPolicyNone isEqualToString:v7] ^ 1;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_effectiveCategoryPoliciesForCategoryShieldPolicy:(id)a3 type:(id)a4 excludedIdentifiersKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [v8 policy];
  if (v12 == 2)
  {
    v23 = [v8 excludedContent];
    v14 = [v23 valueForKey:v10];

    if (v14)
    {
      v15 = [NSSet setWithArray:v14];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v16 = +[DMFEffectivePolicy downtimeCategoryIdentifiers];
      v24 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v31 = v14;
        v32 = v10;
        v26 = *v34;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v16);
            }

            v28 = [(DMDPolicyPersistence *)self _effectivePolicyForManagedSettingsIdentifier:*(*(&v33 + 1) + 8 * i) type:v9 excludedIdentifiers:v15];
            [v11 addObject:v28];
          }

          v25 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v25);
        goto LABEL_20;
      }

LABEL_21:
    }
  }

  else
  {
    if (v12 != 1)
    {
      goto LABEL_23;
    }

    v13 = [v8 excludedContent];
    v14 = [v13 valueForKey:v10];

    if (v14)
    {
      v15 = [NSSet setWithArray:v14];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = [v8 specificCategories];
      v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v31 = v14;
        v32 = v10;
        v30 = v8;
        v19 = *v38;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v37 + 1) + 8 * j) identifier];
            v22 = [(DMDPolicyPersistence *)self _effectivePolicyForManagedSettingsIdentifier:v21 type:v9 excludedIdentifiers:v15];
            [v11 addObject:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v18);
        v8 = v30;
LABEL_20:
        v14 = v31;
        v10 = v32;
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

LABEL_23:

  return v11;
}

- (id)_effectivePolicyForManagedSettingsIdentifier:(id)a3 type:(id)a4 excludedIdentifiers:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setType:v8];

  [v10 setIdentifier:v9];
  [v10 setOrganizationIdentifier:@"com.apple.ManagedSettings"];
  [v10 setDeclarationIdentifier:@"com.apple.ManagedSettings.declaration-identifier"];
  [v10 setPolicy:5];
  [v10 setPriority:DMFLowestPolicyPriority];
  [v10 setExcludedIdentifiers:v7];

  return v10;
}

- (void)requestPoliciesForBundleIdentifiers:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v39 = a4;
  obj = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
  objc_sync_enter(obj);
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v41 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v9)
  {
    v10 = *v53;
    do
    {
      v11 = 0;
      do
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v52 + 1) + 8 * v11);
        v13 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
        v14 = [v13 objectForKey:v12];

        if (v14)
        {
          [v7 setObject:v14 forKeyedSubscript:v12];
        }

        else
        {
          [v41 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v9);
  }

  if ([v41 count])
  {
    v15 = +[DMFApplicationPolicyMonitor policyTypes];
    v38 = [v15 allObjects];

    v37 = [(DMDPolicyPersistence *)self _effectivePoliciesForTypes:v38];
    if ([v37 count])
    {
      v16 = [(DMDPolicyPersistence *)self _fetchParentBundleIdentifiersForBundleIdentifiers:v41];
      v17 = [v41 allObjects];
      v18 = [NSMutableArray arrayWithArray:v17];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = [v16 allValues];
      v20 = [v19 countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v20)
      {
        v21 = *v44;
        do
        {
          v22 = 0;
          do
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = [*(*(&v43 + 1) + 8 * v22) allObjects];
            [v18 addObjectsFromArray:v23];

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v19 countByEnumeratingWithState:&v43 objects:v56 count:16];
        }

        while (v20);
      }

      v42 = 0;
      v24 = [(DMDPolicyPersistence *)self _fetchCategoriesForBundleIdentifiers:v18 withError:&v42];
      v25 = v42;
      if (v24)
      {
        [(DMDPolicyPersistence *)self _appendPolicyForBundleIdentifiers:v41 toPolicies:v7 categories:v24 parentBundleIdentifiers:v16 policiesByType:v37];
        v26 = 0;
        v27 = v7;
      }

      else
      {
        v36 = DMFPolicyLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10008654C();
        }

        v27 = 0;
        v26 = v25;
      }

      v39[2](v39, v27, v26);

      v35 = v37;
    }

    else
    {
      v28 = DMFPolicyLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No policies are set, everything is OK", buf, 2u);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v29 = v41;
      v30 = [v29 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v30)
      {
        v31 = *v48;
        do
        {
          v32 = 0;
          do
          {
            if (*v48 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v47 + 1) + 8 * v32);
            v34 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
            [v34 setObject:&off_1000D7A90 forKey:v33];

            [v7 setObject:&off_1000D7A90 forKeyedSubscript:v33];
            v32 = v32 + 1;
          }

          while (v30 != v32);
          v30 = [v29 countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v30);
      }

      v39[2](v39, v7, 0);
      v35 = v37;
    }
  }

  else
  {
    v39[2](v39, v7, 0);
  }

  objc_sync_exit(obj);
}

- (void)_appendPolicyForBundleIdentifiers:(id)a3 toPolicies:(id)a4 categories:(id)a5 parentBundleIdentifiers:(id)a6 policiesByType:(id)a7
{
  v11 = a3;
  v76 = a4;
  v12 = a5;
  v69 = a6;
  v13 = a7;
  v68 = [v13 objectForKeyedSubscript:DMFEffectivePolicyTypeApplication];
  v67 = [v13 objectForKeyedSubscript:DMFEffectivePolicyTypeApplicationCategory];
  v66 = [v13 objectForKeyedSubscript:DMFEffectivePolicyTypeCategory];
  v60 = v13;
  v65 = [v13 objectForKeyedSubscript:DMFEffectivePolicyTypeWeb];
  v61 = +[DMFEffectivePolicy unblockableCategoryIdentifiers];
  v14 = +[DMFEffectivePolicy unblockableBundleIdentifiers];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v86 objects:v101 count:16];
  if (v16)
  {
    v17 = v16;
    v77 = *v87;
    v63 = v14;
    v64 = v15;
    do
    {
      v18 = 0;
      v70 = v17;
      do
      {
        if (*v87 != v77)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v86 + 1) + 8 * v18);
        v20 = [v12 objectForKeyedSubscript:v19];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 identifier];
          v81 = [v21 webDomains];
          v23 = [v21 equivalentBundleIdentifiers];
          v24 = [NSMutableSet setWithObject:v19];
          if ([v23 count])
          {
            [v24 addObjectsFromArray:v23];
          }

          v80 = v24;
          v78 = v23;
          v79 = v18;
          if ([v14 containsObject:v19])
          {
            v25 = v22;
            v26 = DMFPolicyLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v91 = v19;
              v27 = v26;
              v28 = "Requested application %{public}@ is unblockable";
              v29 = 12;
              goto LABEL_18;
            }

            goto LABEL_19;
          }

          if (v22 && [v61 containsObject:v22])
          {
            v25 = v22;
            v26 = DMFPolicyLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v91 = v19;
              v92 = 2114;
              v93 = v22;
              v27 = v26;
              v28 = "Requested application %{public}@ with associated category %{public}@ is unblockable";
              v29 = 22;
LABEL_18:
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
            }

LABEL_19:

            v30 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
            [v30 setObject:&off_1000D7A90 forKey:v19];

            [v76 setObject:&off_1000D7A90 forKeyedSubscript:v19];
          }

          else
          {
            v31 = objc_opt_new();
            v32 = [v69 objectForKeyedSubscript:v19];
            v73 = v21;
            v74 = v22;
            if ([v32 count])
            {
              v33 = DMFPolicyLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = [v32 allObjects];
                v35 = [v34 componentsJoinedByString:{@", "}];
                *buf = 138543618;
                v91 = v19;
                v92 = 2114;
                v93 = v35;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Requested application %{public}@ has parent applications %{public}@", buf, 0x16u);
              }

              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v71 = v32;
              v36 = v32;
              v37 = [v36 countByEnumeratingWithState:&v82 objects:v100 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v83;
                do
                {
                  for (i = 0; i != v38; i = i + 1)
                  {
                    if (*v83 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = *(*(&v82 + 1) + 8 * i);
                    v42 = [v12 objectForKeyedSubscript:v41];
                    v43 = v42;
                    if (v42)
                    {
                      v44 = [v42 identifier];
                      [v31 addObject:v44];
                    }

                    else
                    {
                      v44 = DMFPolicyLog();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v91 = v19;
                        v92 = 2114;
                        v93 = v41;
                        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Requested application %{public}@ failed to categorize parent application %{public}@", buf, 0x16u);
                      }
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v82 objects:v100 count:16];
                }

                while (v38);
              }

              v22 = v74;
              v32 = v71;
            }

            if (v22)
            {
              v45 = [v31 arrayByAddingObject:v22];
            }

            else
            {
              v45 = v31;
            }

            v46 = v45;
            v47 = [v80 allObjects];
            v48 = [DMFPrioritizedPolicy prioritizedPoliciesForAppPolicy:v68 appCategoryPolicy:v67 bundleIdentifiers:v47 categoryPolicy:v66 categoryIdentifiers:v46 webPolicy:v65 webCategoryPolicy:0 webDomains:v81];

            v49 = [DMFPrioritizedPolicy arbitratePolicyForPrioritizedPolicies:v48];
            v50 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
            v51 = [NSNumber numberWithInteger:v49];
            [v50 setObject:v51 forKey:v19];

            v52 = [NSNumber numberWithInteger:v49];
            [v76 setObject:v52 forKeyedSubscript:v19];

            v53 = DMFPolicyLog();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = DMFPolicyUnlocalizedDisplayName();
              v62 = [v46 componentsJoinedByString:{@", "}];
              v55 = [v81 componentsJoinedByString:{@", "}];
              [v80 allObjects];
              v72 = v48;
              v56 = v46;
              v58 = v57 = v32;
              v59 = [v58 componentsJoinedByString:{@", "}];
              *buf = 138544386;
              v91 = v19;
              v92 = 2114;
              v93 = v54;
              v94 = 2114;
              v95 = v62;
              v96 = 2114;
              v97 = v55;
              v98 = 2114;
              v99 = v59;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Requested application %{public}@ has policy %{public}@, associated categories:%{public}@ associated sites:%{public}@ equivalent bundle identifiers:%{public}@", buf, 0x34u);

              v32 = v57;
              v46 = v56;
              v48 = v72;
            }

            v14 = v63;
            v15 = v64;
            v17 = v70;
            v21 = v73;
            v25 = v74;
          }

          v18 = v79;
          goto LABEL_42;
        }

        v25 = DMFPolicyLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v91 = v19;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Requested application %{public}@ is missing categorization", buf, 0xCu);
        }

LABEL_42:

        v18 = v18 + 1;
      }

      while (v18 != v17);
      v17 = [v15 countByEnumeratingWithState:&v86 objects:v101 count:16];
    }

    while (v17);
  }
}

- (id)_fetchParentBundleIdentifiersForBundleIdentifiers:(id)a3
{
  v3 = a3;
  v22 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v25)
  {
    v24 = *v34;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        v6 = [LSApplicationRecord alloc];
        v32 = 0;
        v7 = [v6 initWithBundleIdentifier:v5 allowPlaceholder:1 error:&v32];
        v8 = v32;
        v9 = v8;
        if (v7)
        {
          v26 = v8;
          v10 = objc_opt_new();
          v27 = v7;
          v11 = [v7 appClipMetadata];
          v12 = [v11 parentApplicationIdentifiers];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v41 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v29;
            do
            {
              v17 = 0;
              do
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v28 + 1) + 8 * v17);
                if (!CPCopyBundleIdentifierAndTeamFromApplicationIdentifier())
                {
                  v19 = DMFPolicyLog();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543618;
                    v38 = v5;
                    v39 = 2114;
                    v40 = v18;
                    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed looking up parent bundle identifier for app clip: %{public}@ with parent application identifier %{public}@", buf, 0x16u);
                  }
                }

                v17 = v17 + 1;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v28 objects:v41 count:16];
            }

            while (v15);
          }

          if ([v10 count])
          {
            [v22 setObject:v10 forKeyedSubscript:v5];
          }

          v9 = v26;
          v7 = v27;
        }

        else
        {
          v10 = DMFPolicyLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v38 = v5;
            v39 = 2114;
            v40 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No application record for bundle identifier: %{public}@ with error: %{public}@", buf, 0x16u);
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v25);
  }

  v20 = [v22 copy];

  return v20;
}

- (void)requestCommunicationPoliciesForBundleIdentifiers:(id)a3 replyHandler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006172C;
  v8[3] = &unk_1000CF1F8;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(DMDPolicyPersistence *)self requestPoliciesForBundleIdentifiers:v6 replyHandler:v8];
}

- (void)requestPoliciesForCategoryIdentifiers:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v25 = a4;
  obj = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
  objc_sync_enter(obj);
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v27 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
        v14 = [v13 objectForKey:v12];

        if (v14)
        {
          [v7 setObject:v14 forKeyedSubscript:v12];
        }

        else
        {
          [v27 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  if ([v27 count])
  {
    v15 = +[DMFCategoryPolicyMonitor policyTypes];
    v23 = [v15 allObjects];

    v24 = [(DMDPolicyPersistence *)self _effectivePoliciesForTypes:v23];
    if ([v24 count])
    {
      [(DMDPolicyPersistence *)self _appendPolicyForCategoryIdentifiers:v27 toPolicies:v7 policiesByType:v24];
    }

    else
    {
      v16 = DMFPolicyLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No policies are set, everything is OK", buf, 2u);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = v27;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v18)
      {
        v19 = *v29;
        do
        {
          v20 = 0;
          do
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v28 + 1) + 8 * v20);
            v22 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
            [v22 setObject:&off_1000D7A90 forKey:v21];

            [v7 setObject:&off_1000D7A90 forKeyedSubscript:v21];
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v18);
      }
    }

    v25[2](v25, v7, 0);
  }

  else
  {
    v25[2](v25, v7, 0);
  }

  objc_sync_exit(obj);
}

- (void)_appendPolicyForCategoryIdentifiers:(id)a3 toPolicies:(id)a4 policiesByType:(id)a5
{
  v8 = a3;
  v33 = a4;
  v9 = a5;
  v30 = [v9 objectForKeyedSubscript:DMFEffectivePolicyTypeApplicationCategory];
  v29 = [v9 objectForKeyedSubscript:DMFEffectivePolicyTypeCategory];
  v27 = v9;
  v28 = [v9 objectForKeyedSubscript:DMFEffectivePolicyTypeWebCategory];
  v10 = +[DMFEffectivePolicy unblockableCategoryIdentifiers];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      v14 = 0;
      v31 = v12;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        if ([v10 containsObject:v15])
        {
          v16 = DMFPolicyLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v39 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requested category %{public}@ is unblockable", buf, 0xCu);
          }

          v17 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
          [v17 setObject:&off_1000D7A90 forKey:v15];

          [v33 setObject:&off_1000D7A90 forKeyedSubscript:v15];
        }

        else
        {
          v18 = v10;
          v42 = v15;
          v19 = [NSArray arrayWithObjects:&v42 count:1];
          v20 = [DMFPrioritizedPolicy prioritizedPoliciesForAppPolicy:0 appCategoryPolicy:v30 bundleIdentifiers:0 categoryPolicy:v29 categoryIdentifiers:v19 webPolicy:0 webCategoryPolicy:v28 webDomains:0];

          v21 = [DMFPrioritizedPolicy arbitratePolicyForPrioritizedPolicies:v20];
          v22 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
          v23 = [NSNumber numberWithInteger:v21];
          [v22 setObject:v23 forKey:v15];

          v24 = [NSNumber numberWithInteger:v21];
          [v33 setObject:v24 forKeyedSubscript:v15];

          v25 = DMFPolicyLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = DMFPolicyUnlocalizedDisplayName();
            *buf = 138543618;
            v39 = v15;
            v40 = 2114;
            v41 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Requested category %{public}@ has policy %{public}@", buf, 0x16u);
          }

          v10 = v18;
          v12 = v31;
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v12);
  }
}

- (void)requestPoliciesForWebsiteURLs:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v32 = a4;
  obj = [(DMDPolicyPersistence *)self webDomainPolicyCache];
  objc_sync_enter(obj);
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v35 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v9)
  {
    v10 = *v43;
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        v13 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
        v14 = [v12 host];
        v15 = [v13 objectForKey:v14];

        if (v15)
        {
          [v7 setObject:v15 forKeyedSubscript:v12];
        }

        else
        {
          [v35 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v9);
  }

  if ([v35 count])
  {
    v16 = +[DMFWebsitePolicyMonitor policyTypes];
    v31 = [v16 allObjects];

    v30 = [(DMDPolicyPersistence *)self _effectivePoliciesForTypes:v31];
    if ([v30 count])
    {
      v36 = 0;
      v17 = [(DMDPolicyPersistence *)self _fetchCategoriesIfNeededForWebsiteURLs:v8 withError:&v36];
      v18 = v36;
      if (v17)
      {
        [(DMDPolicyPersistence *)self _appendPolicyForWebsiteURLs:v35 toPolicies:v7 categories:v17 policiesByType:v30];
        v19 = 0;
        v20 = v7;
      }

      else
      {
        v29 = DMFPolicyLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1000865BC();
        }

        v20 = 0;
        v19 = v18;
      }

      v32[2](v32, v20, v19);

      v28 = v30;
    }

    else
    {
      v21 = DMFPolicyLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No policies are set, everything is OK", buf, 2u);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v34 = v35;
      v22 = [v34 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v22)
      {
        v23 = *v38;
        do
        {
          v24 = 0;
          do
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(v34);
            }

            v25 = *(*(&v37 + 1) + 8 * v24);
            v26 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
            v27 = [v25 host];
            [v26 setObject:&off_1000D7A90 forKey:v27];

            [v7 setObject:&off_1000D7A90 forKeyedSubscript:v25];
            v24 = v24 + 1;
          }

          while (v22 != v24);
          v22 = [v34 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v22);
      }

      v32[2](v32, v7, 0);
      v28 = v30;
    }
  }

  else
  {
    v32[2](v32, v7, 0);
  }

  objc_sync_exit(obj);
}

- (void)_appendPolicyForWebsiteURLs:(id)a3 toPolicies:(id)a4 categories:(id)a5 policiesByType:(id)a6
{
  v9 = a3;
  v59 = a4;
  v10 = a5;
  v11 = a6;
  v51 = [v11 objectForKeyedSubscript:DMFEffectivePolicyTypeApplication];
  v50 = [v11 objectForKeyedSubscript:DMFEffectivePolicyTypeCategory];
  v49 = [v11 objectForKeyedSubscript:DMFEffectivePolicyTypeWeb];
  v43 = v11;
  v48 = [v11 objectForKeyedSubscript:DMFEffectivePolicyTypeWebCategory];
  v52 = +[DMFEffectivePolicy unblockableBundleIdentifiers];
  v44 = +[DMFEffectivePolicy unblockableCategoryIdentifiers];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v66;
    v47 = v10;
    v57 = *v66;
    do
    {
      v15 = 0;
      v60 = v13;
      do
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v65 + 1) + 8 * v15);
        v17 = [v10 objectForKeyedSubscript:v16];
        v18 = [v17 identifier];
        v19 = [v17 bundleIdentifier];
        v20 = [v17 webDomains];
        v64 = [v17 equivalentBundleIdentifiers];
        v21 = [v16 host];
        if (v21)
        {
          v22 = v10;
          v23 = [NSMutableSet setWithObject:v21];
          if ([v20 count])
          {
            [v23 addObjectsFromArray:v20];
          }

          v24 = objc_opt_new();
          v25 = v24;
          if (v19)
          {
            [v24 addObject:v19];
          }

          v63 = v25;
          if ([v64 count])
          {
            [v25 addObjectsFromArray:v64];
          }

          v61 = v20;
          v62 = v23;
          if (v19 && [v52 containsObject:v19])
          {
            v26 = DMFPolicyLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v70 = v19;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Requested website with associated bundle identifier %{public}@ is unblockable", buf, 0xCu);
            }

            goto LABEL_22;
          }

          if (v18)
          {
            if ([v44 containsObject:v18])
            {
              v26 = DMFPolicyLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v70 = v18;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Requested website with associated category %{public}@ is unblockable", buf, 0xCu);
              }

LABEL_22:

              v27 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
              [v27 setObject:&off_1000D7A90 forKey:v21];

              [v59 setObject:&off_1000D7A90 forKeyedSubscript:v16];
              v28 = v60;
              v10 = v22;
              v14 = v57;
LABEL_31:

              v20 = v61;
              goto LABEL_32;
            }

            v56 = v18;
            v79 = v18;
            v30 = [NSArray arrayWithObjects:&v79 count:1];
          }

          else
          {
            v56 = 0;
            v30 = 0;
          }

          v31 = [v25 allObjects];
          v32 = [v23 allObjects];
          v33 = [DMFPrioritizedPolicy prioritizedPoliciesForAppPolicy:v51 appCategoryPolicy:0 bundleIdentifiers:v31 categoryPolicy:v50 categoryIdentifiers:v30 webPolicy:v49 webCategoryPolicy:v48 webDomains:v32];

          v55 = v33;
          v34 = [DMFPrioritizedPolicy arbitratePolicyForPrioritizedPolicies:v33];
          v35 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
          v36 = [NSNumber numberWithInteger:v34];
          [v35 setObject:v36 forKey:v21];

          v37 = [NSNumber numberWithInteger:v34];
          [v59 setObject:v37 forKeyedSubscript:v16];

          v38 = DMFPolicyLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            DMFPolicyUnlocalizedDisplayName();
            v39 = v53 = v30;
            v45 = [v53 componentsJoinedByString:{@", "}];
            v46 = [v62 allObjects];
            v40 = [v46 componentsJoinedByString:{@", "}];
            v41 = [v63 allObjects];
            v42 = [v41 componentsJoinedByString:{@", "}];
            *buf = 138740995;
            v70 = v16;
            v71 = 2114;
            v72 = v39;
            v73 = 2114;
            v74 = v45;
            v75 = 2117;
            v76 = v40;
            v77 = 2117;
            v78 = v42;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Requested website %{sensitive}@ has policy %{public}@, associated categories:%{public}@ associated sites:%{sensitive}@ equivalent bundle identifiers:%{sensitive}@", buf, 0x34u);

            v30 = v53;
          }

          v10 = v47;
          v18 = v56;
          v14 = v57;
          v28 = v60;
          goto LABEL_31;
        }

        v29 = DMFPolicyLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10008662C(&v80, &v81);
        }

        [v59 setObject:&off_1000D7A90 forKeyedSubscript:v16];
        v28 = v60;
LABEL_32:

        v15 = v15 + 1;
      }

      while (v28 != v15);
      v13 = [obj countByEnumeratingWithState:&v65 objects:v82 count:16];
    }

    while (v13);
  }
}

- (id)_fetchCategoriesForBundleIdentifiers:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = [[NSConditionLock alloc] initWithCondition:0];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10005E6DC;
  v33 = sub_10005E6EC;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10005E6DC;
  v27 = sub_10005E6EC;
  v28 = 0;
  v7 = +[CTCategories sharedCategories];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100062F30;
  v18 = &unk_1000CFC38;
  v20 = &v29;
  v21 = &v23;
  v8 = v6;
  v19 = v8;
  v22 = 1;
  [v7 categoriesForBundleIDs:v5 completionHandler:&v15];

  v9 = [NSDate dateWithTimeIntervalSinceNow:5.0, v15, v16, v17, v18];
  v10 = [v8 lockWhenCondition:1 beforeDate:v9];

  if (v10)
  {
    [v8 unlock];
    if (a4)
    {
      v11 = v30[5];
      if (v11)
      {
        *a4 = v11;
      }
    }

    v12 = v24[5];
  }

  else
  {
    v13 = DMFPolicyLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100086694();
    }

    if (a4)
    {
      DMFErrorWithCodeAndUserInfo();
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v12;
}

- (id)_fetchCategoriesIfNeededForWebsiteURLs:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = [[NSConditionLock alloc] initWithCondition:0];
  v7 = +[CTCategories sharedCategories];
  if (v7)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_10005E6DC;
    v33 = sub_10005E6EC;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_10005E6DC;
    v27 = sub_10005E6EC;
    v28 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100063260;
    v18 = &unk_1000CFC38;
    v20 = &v29;
    v21 = &v23;
    v8 = v6;
    v19 = v8;
    v22 = 1;
    [v7 categoriesForDomainURLs:v5 completionHandler:&v15];
    v9 = [NSDate dateWithTimeIntervalSinceNow:5.0, v15, v16, v17, v18];
    v10 = [v8 lockWhenCondition:1 beforeDate:v9];

    if (v10)
    {
      [v8 unlock];
      if (a4)
      {
        v11 = v30[5];
        if (v11)
        {
          *a4 = v11;
        }
      }

      v12 = v24[5];
    }

    else
    {
      v13 = DMFPolicyLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100086694();
      }

      if (a4)
      {
        DMFErrorWithCodeAndUserInfo();
        *a4 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v12 = &__NSDictionary0__struct;
  }

  return v12;
}

- (void)setEffectivePolicy:(int64_t)a3 forType:(id)a4 identifiers:(id)a5 priority:(unint64_t)a6 organizationIdentifier:(id)a7 declarationIdentifier:(id)a8 completionHandler:(id)a9
{
  v15 = a4;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006344C;
  v21[3] = &unk_1000CFC60;
  v22 = a5;
  v23 = a7;
  v24 = a8;
  v25 = self;
  v26 = v15;
  v27 = a9;
  v28 = a3;
  v29 = a6;
  v16 = v15;
  v17 = v24;
  v18 = v23;
  v19 = v22;
  v20 = v27;
  [(DMDPolicyPersistence *)self _performBackgroundTask:v21];
}

- (BOOL)_upsertPolicy:(int64_t)a3 forType:(id)a4 identifier:(id)a5 priority:(unint64_t)a6 organizationIdentifier:(id)a7 declarationIdentifier:(id)a8 policyToUpdate:(id)a9 managedObjectContext:(id)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if (v19)
  {
    v21 = [(DMDEffectivePolicy *)v19 policy]!= a3;
    [(DMDEffectivePolicy *)v19 setPolicy:a3];
    v22 = DMFPolicyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543874;
      v25 = v19;
      v26 = 2114;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating existing policy %{public}@ of type %{public}@ identifier %{public}@", &v24, 0x20u);
    }
  }

  else
  {
    v19 = [[DMDEffectivePolicy alloc] initWithContext:v20];
    [(DMDEffectivePolicy *)v19 setType:v15];
    [(DMDEffectivePolicy *)v19 setIdentifier:v16];
    [(DMDEffectivePolicy *)v19 setOrganizationIdentifier:v17];
    [(DMDEffectivePolicy *)v19 setDeclarationIdentifier:v18];
    [(DMDEffectivePolicy *)v19 setPriority:a6];
    [(DMDEffectivePolicy *)v19 setPolicy:a3];
    v22 = DMFPolicyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = v19;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Adding new policy %{public}@ of type %{public}@", &v24, 0x16u);
    }

    v21 = 1;
  }

  return v21;
}

- (void)removeEffectivePolicyFromOrganizationIdentifier:(id)a3 declarationIdentifier:(id)a4 completionHandler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100063CD4;
  v11[3] = &unk_1000CFC88;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v13;
  v9 = v12;
  v10 = v15;
  [(DMDPolicyPersistence *)self _performBackgroundTask:v11];
}

- (void)removeOrphanedPoliciesNotBelongingToExistingOrganizationIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000641FC;
  v9[3] = &unk_1000CFBE8;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v7 = v6;
  v8 = v12;
  [(DMDPolicyPersistence *)self _performBackgroundTask:v9];
}

- (void)removeOrphanedPoliciesNotBelongingToExistingDeclarationIdentifiersByOrganizationIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000643A0;
  v9[3] = &unk_1000CFBE8;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v7 = v6;
  v8 = v12;
  [(DMDPolicyPersistence *)self _performBackgroundTask:v9];
}

- (void)_removeOrphanedPoliciesFromFetchRequest:(id)a3 managedObjectContext:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v45 = 0;
  v10 = [a3 execute:&v45];
  v11 = v45;
  if (v10)
  {
    if ([v10 count])
    {
      v35 = self;
      v37 = v11;
      v39 = v9;
      v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
      v13 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v38 = v10;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v41 objects:v52 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v42;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            v20 = [v19 type];
            [v13 addObject:v20];

            v21 = [v19 declarationIdentifier];
            [v12 addObject:v21];
            [v8 deleteObject:v19];
            v22 = DMFPolicyLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v19 organizationIdentifier];
              *buf = 138543618;
              v47 = v21;
              v48 = 2114;
              v49 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing orphaned policy %{public}@ in organization %{public}@", buf, 0x16u);
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v41 objects:v52 count:16];
        }

        while (v16);
      }

      if ([v8 hasChanges])
      {
        v40 = v37;
        v24 = [v8 save:&v40];
        v11 = v40;

        if (!v24)
        {
          v25 = DMFPolicyLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v31 = [v13 allObjects];
            v32 = [v31 componentsJoinedByString:{@", "}];
            v33 = [v12 componentsJoinedByString:{@", "}];
            v34 = [v11 verboseDescription];
            *buf = 138543874;
            v47 = v32;
            v48 = 2114;
            v49 = v33;
            v50 = 2114;
            v51 = v34;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not remove orphaned policies types %{public}@ for declarations %{public}@: %{public}@", buf, 0x20u);
          }

          v26 = 0;
          v10 = v38;
          v9 = v39;
LABEL_27:

          (v9)[2](v9, v26);
          goto LABEL_28;
        }
      }

      else
      {
        v11 = v37;
      }

      if ([v14 count])
      {
        [v36 _handleChangesToPolicyTypes:v13];
      }

      v25 = DMFPolicyLog();
      v10 = v38;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v13 allObjects];
        v29 = [v28 componentsJoinedByString:{@", "}];
        v30 = [v12 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v47 = v29;
        v48 = 2114;
        v49 = v30;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Successfully removed orphaned policy types %{public}@ for declarations %{public}@", buf, 0x16u);
      }

      v26 = v12;
      v9 = v39;
      goto LABEL_27;
    }

    (v9)[2](v9, &__NSArray0__struct);
  }

  else
  {
    v27 = DMFPolicyLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000867E8(v11);
    }

    v9[2](v9, 0);
  }

LABEL_28:
}

- (void)_handleChangesToPolicyTypes:(id)a3
{
  v4 = a3;
  [(DMDPolicyPersistence *)self _recalculateEffectivePolicyForTypes:v4];
  [(DMDPolicyPersistence *)self _clearPolicyCachesForTypes:v4];
  [(DMDPolicyPersistence *)self _notifyClientsRegisteredForPolicyTypes:v4];
}

- (void)_clearPolicyCachesForTypes:(id)a3
{
  v4 = a3;
  v5 = +[DMFApplicationPolicyMonitor policyTypes];
  v6 = [v4 intersectsSet:v5];

  if (v6)
  {
    v7 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
    objc_sync_enter(v7);
    v8 = DMFPolicyLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing app policy caches", buf, 2u);
    }

    v9 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
    [v9 removeAllObjects];

    objc_sync_exit(v7);
  }

  v10 = +[DMFCategoryPolicyMonitor policyTypes];
  v11 = [v4 intersectsSet:v10];

  if (v11)
  {
    v12 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
    objc_sync_enter(v12);
    v13 = DMFPolicyLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Clearing category policy caches", v21, 2u);
    }

    v14 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
    [v14 removeAllObjects];

    objc_sync_exit(v12);
  }

  v15 = +[DMFWebsitePolicyMonitor policyTypes];
  v16 = [v4 intersectsSet:v15];

  if (v16)
  {
    v17 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
    objc_sync_enter(v17);
    v18 = DMFPolicyLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Clearing web domain policy caches", v20, 2u);
    }

    v19 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
    [v19 removeAllObjects];

    objc_sync_exit(v17);
  }
}

- (void)_notifyClientsRegisteredForPolicyTypes:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064D98;
  v5[3] = &unk_1000CFCD8;
  v6 = a3;
  v4 = v6;
  [(DMDPolicyPersistence *)self _performRegistrationBackgroundTask:v5];
}

- (void)enableEmergencyModeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMDPolicyPersistence *)self emergencyModeQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006510C;
  v7[3] = &unk_1000CE8C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)enableEmergencyModeForDuration:(double)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(DMDPolicyPersistence *)self emergencyModeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065270;
  block[3] = &unk_1000CFD00;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)_enableEmergencyModeUntilDate:(id)a3 referenceDate:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DMDPolicyPersistence *)self emergencyModeQueue];
  dispatch_assert_queue_V2(v11);

  if (!v8 || [v9 compare:v8] != -1)
  {
    v12 = DMFEmergencyModeLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100086970();
    }

LABEL_5:

    v13 = DMFErrorWithCodeAndUserInfo();
    v14 = v13;
    goto LABEL_6;
  }

  [v8 timeIntervalSince1970];
  v16 = (v15 * 1000000000.0);
  if (v16 <= 0)
  {
    v12 = DMFEmergencyModeLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100086900();
    }

    goto LABEL_5;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v14, [@"ShouldWake" UTF8String], 0);
  xpc_dictionary_set_date(v14, [@"Date" UTF8String], v16);
  [@"com.apple.alarm" UTF8String];
  [@"com.apple.dmd.emergency-mode.alarm" UTF8String];
  xpc_set_event();
  notify_post([DMFEmergencyModeChangedNotification UTF8String]);
  v17 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Enabling Emergency Mode until: %{public}@", &v18, 0xCu);
  }

  v13 = 0;
LABEL_6:
  v10[2](v10, v13);
}

- (void)disableEmergencyModeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMDPolicyPersistence *)self emergencyModeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000655E0;
  block[3] = &unk_1000CF578;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

- (void)emergencyModeStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMDPolicyPersistence *)self emergencyModeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065750;
  block[3] = &unk_1000CF578;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

- (void)allExpiredScreenTimeBudgetsShouldBeSynchronous:(BOOL)a3 replyHandler:(id)a4
{
  v4 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100065B04;
  v12[3] = &unk_1000CFD28;
  v5 = a4;
  v13 = v5;
  v6 = objc_retainBlock(v12);
  v7 = objc_opt_new();
  v8 = v7;
  if (v4)
  {
    v11 = 0;
    v9 = [v7 checkStatusOfBudgets:0 error:&v11];
    v10 = v11;
    (v6[2])(v6, v9, v10);
  }

  else
  {
    [v7 checkStatusOfBudgets:0 completionHandler:v6];
  }
}

- (NSArray)distributedNotificationNames
{
  v4[0] = CTCategoriesDidChangeNotification;
  v4[1] = @"com.apple.LaunchServices.applicationRegistered";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (NSArray)managedSettingsGroups
{
  v4[0] = MOEffectiveSettingsGroupAccount;
  v4[1] = MOEffectiveSettingsGroupScreenTime;
  v4[2] = MOEffectiveSettingsGroupShield;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (void)handleAlarmWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling alarm with identifier: %{public}@", &v5, 0xCu);
  }

  if ([v3 isEqualToString:@"com.apple.dmd.emergency-mode.alarm"])
  {
    notify_post([DMFEmergencyModeChangedNotification UTF8String]);
  }
}

- (void)handleNotifyMatchingNotificationWithName:(id)a3
{
  v4 = a3;
  v5 = DMFPolicyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling notify matching notification with name: %{public}@", &v7, 0xCu);
  }

  if ([v4 isEqualToString:@"com.apple.mobile.keybagd.first_unlock"])
  {
    v6 = +[DMFPolicyMonitor allEffectivePolicyTypes];
    [(DMDPolicyPersistence *)self _handleChangesToPolicyTypes:v6];
  }
}

- (void)handleDistributedNotificationWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DMFPolicyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling distributed notification with name: %{public}@", buf, 0xCu);
  }

  if ([v6 isEqualToString:CTCategoriesDidChangeNotification])
  {
    v13[0] = DMFEffectivePolicyTypeApplicationCategory;
    v13[1] = DMFEffectivePolicyTypeCategory;
    v13[2] = DMFEffectivePolicyTypeWebCategory;
    v9 = [NSArray arrayWithObjects:v13 count:3];
    v10 = [NSSet setWithArray:v9];

    [(DMDPolicyPersistence *)self _handleChangesToPolicyTypes:v10];
  }

  else
  {
    if (![v6 isEqualToString:@"com.apple.LaunchServices.applicationRegistered"])
    {
      goto LABEL_10;
    }

    v11 = [v7 objectForKeyedSubscript:@"isPlaceholder"];
    v10 = v11;
    if (v11 && ([v11 BOOLValue] & 1) == 0)
    {
      v12 = +[DMFApplicationPolicyMonitor policyTypes];
      [(DMDPolicyPersistence *)self _handleChangesToPolicyTypes:v12];
    }
  }

LABEL_10:
}

- (void)handleManagedEffectiveSettingsChangeInGroup:(id)a3
{
  v4 = a3;
  v5 = DMFPolicyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling managed settings group change: %{public}@", buf, 0xCu);
  }

  if ([v4 isEqualToString:MOEffectiveSettingsGroupShield])
  {
    v13 = DMFEffectivePolicyTypeApplication;
    v14 = DMFEffectivePolicyTypeApplicationCategory;
    v15 = DMFEffectivePolicyTypeWeb;
    v16 = DMFEffectivePolicyTypeWebCategory;
    v6 = &v13;
LABEL_5:
    v7 = [NSArray arrayWithObjects:v6 count:4, v9, v10, v11, v12, v13, v14, v15, v16];
    v8 = [NSSet setWithArray:v7];

LABEL_8:
    [(DMDPolicyPersistence *)self _handleChangesToPolicyTypes:v8];

    goto LABEL_9;
  }

  if ([v4 isEqualToString:MOEffectiveSettingsGroupAccount])
  {
    v8 = [NSSet setWithObject:DMFEffectivePolicyTypeiCloudAccountLogout];
    goto LABEL_8;
  }

  if (_os_feature_enabled_impl() && [v4 isEqualToString:MOEffectiveSettingsGroupScreenTime])
  {
    v9 = DMFEffectivePolicyTypeApplication;
    v10 = DMFEffectivePolicyTypeApplicationCategory;
    v11 = DMFEffectivePolicyTypeWeb;
    v12 = DMFEffectivePolicyTypeWebCategory;
    v6 = &v9;
    goto LABEL_5;
  }

LABEL_9:
}

@end