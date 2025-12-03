@interface DMDPolicyPersistence
- (BOOL)_loadPersistentStoreIfNeeded:(id *)needed;
- (BOOL)_upsertPolicy:(int64_t)policy forType:(id)type identifier:(id)identifier priority:(unint64_t)priority organizationIdentifier:(id)organizationIdentifier declarationIdentifier:(id)declarationIdentifier policyToUpdate:(id)update managedObjectContext:(id)self0;
- (BOOL)isInLegacyDowntimeWithPolicies:(id)policies priorities:(id)priorities;
- (BOOL)isInManagedSettingsDowntime;
- (DMDPolicyPersistence)init;
- (DMDPolicyPersistence)initWithPersistentStoreDescriptions:(id)descriptions;
- (NSArray)distributedNotificationNames;
- (NSArray)managedSettingsGroups;
- (id)_effectiveCategoryPoliciesForCategoryShieldPolicy:(id)policy type:(id)type excludedIdentifiersKey:(id)key;
- (id)_effectivePoliciesForTypes:(id)types;
- (id)_effectivePolicyForManagedSettingsIdentifier:(id)identifier type:(id)type excludedIdentifiers:(id)identifiers;
- (id)_effectivePolicyForType:(id)type;
- (id)_fetchCategoriesForBundleIdentifiers:(id)identifiers withError:(id *)error;
- (id)_fetchCategoriesIfNeededForWebsiteURLs:(id)ls withError:(id *)error;
- (id)_fetchParentBundleIdentifiersForBundleIdentifiers:(id)identifiers;
- (void)_appendPolicyForBundleIdentifiers:(id)identifiers toPolicies:(id)policies categories:(id)categories parentBundleIdentifiers:(id)bundleIdentifiers policiesByType:(id)type;
- (void)_appendPolicyForCategoryIdentifiers:(id)identifiers toPolicies:(id)policies policiesByType:(id)type;
- (void)_appendPolicyForWebsiteURLs:(id)ls toPolicies:(id)policies categories:(id)categories policiesByType:(id)type;
- (void)_clearPolicyCachesForTypes:(id)types;
- (void)_enableEmergencyModeUntilDate:(id)date referenceDate:(id)referenceDate withCompletionHandler:(id)handler;
- (void)_handleChangesToPolicyTypes:(id)types;
- (void)_notifyClientsRegisteredForPolicyTypes:(id)types;
- (void)_performBackgroundTask:(id)task;
- (void)_performBackgroundTaskAndWait:(id)wait;
- (void)_performRegistrationBackgroundTask:(id)task;
- (void)_recalculateEffectivePolicyForTypes:(id)types;
- (void)_removeOrphanedPoliciesFromFetchRequest:(id)request managedObjectContext:(id)context completionHandler:(id)handler;
- (void)addRegistration:(id)registration replyHandler:(id)handler;
- (void)allExpiredScreenTimeBudgetsShouldBeSynchronous:(BOOL)synchronous replyHandler:(id)handler;
- (void)disableEmergencyModeWithCompletionHandler:(id)handler;
- (void)emergencyModeStatusWithCompletionHandler:(id)handler;
- (void)enableEmergencyModeForDuration:(double)duration withCompletionHandler:(id)handler;
- (void)enableEmergencyModeWithCompletionHandler:(id)handler;
- (void)handleAlarmWithIdentifier:(id)identifier;
- (void)handleDistributedNotificationWithName:(id)name userInfo:(id)info;
- (void)handleManagedEffectiveSettingsChangeInGroup:(id)group;
- (void)handleNotifyMatchingNotificationWithName:(id)name;
- (void)removeEffectivePolicyFromOrganizationIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier completionHandler:(id)handler;
- (void)removeOrphanedPoliciesNotBelongingToExistingDeclarationIdentifiersByOrganizationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeOrphanedPoliciesNotBelongingToExistingOrganizationIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)requestCommunicationPoliciesForBundleIdentifiers:(id)identifiers replyHandler:(id)handler;
- (void)requestPoliciesForBundleIdentifiers:(id)identifiers replyHandler:(id)handler;
- (void)requestPoliciesForCategoryIdentifiers:(id)identifiers replyHandler:(id)handler;
- (void)requestPoliciesForTypes:(id)types replyHandler:(id)handler;
- (void)requestPoliciesForWebsiteURLs:(id)ls replyHandler:(id)handler;
- (void)setEffectivePolicy:(int64_t)policy forType:(id)type identifiers:(id)identifiers priority:(unint64_t)priority organizationIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier completionHandler:(id)handler;
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

- (DMDPolicyPersistence)initWithPersistentStoreDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
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
    v11 = [descriptionsCopy copy];
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

- (BOOL)_loadPersistentStoreIfNeeded:(id *)needed
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10005E6DC;
  v16 = sub_10005E6EC;
  v17 = 0;
  persistentContainer = [(DMDPolicyPersistence *)self persistentContainer];
  objc_sync_enter(persistentContainer);
  if (![(DMDPolicyPersistence *)self isPersistentContainerLoaded])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005E6F4;
    v9[3] = &unk_1000CFBC0;
    v11 = &v12;
    v9[4] = self;
    v10 = persistentContainer;
    [v10 loadPersistentStoresWithCompletionHandler:v9];
  }

  isPersistentContainerLoaded = [(DMDPolicyPersistence *)self isPersistentContainerLoaded];
  objc_sync_exit(persistentContainer);

  if (needed)
  {
    v7 = isPersistentContainerLoaded;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    *needed = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  return isPersistentContainerLoaded;
}

- (void)_performRegistrationBackgroundTask:(id)task
{
  taskCopy = task;
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
    v10 = taskCopy;
    v7 = v9;
    [v7 performBlock:v8];
  }

  else
  {
    (*(taskCopy + 2))(taskCopy, 0, v6);
  }
}

- (void)_performBackgroundTask:(id)task
{
  taskCopy = task;
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
    v10 = taskCopy;
    v7 = v9;
    [v7 performBlock:v8];
  }

  else
  {
    (*(taskCopy + 2))(taskCopy, 0, v6);
  }
}

- (void)_performBackgroundTaskAndWait:(id)wait
{
  waitCopy = wait;
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
    v10 = waitCopy;
    v7 = v9;
    [v7 performBlockAndWait:v8];
  }

  else
  {
    (*(waitCopy + 2))(waitCopy, 0, v6);
  }
}

- (void)addRegistration:(id)registration replyHandler:(id)handler
{
  registrationCopy = registration;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005EDF4;
  v9[3] = &unk_1000CFBE8;
  selfCopy = self;
  handlerCopy = handler;
  v10 = registrationCopy;
  v7 = registrationCopy;
  v8 = handlerCopy;
  [(DMDPolicyPersistence *)self _performRegistrationBackgroundTask:v9];
}

- (void)requestPoliciesForTypes:(id)types replyHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(DMDPolicyPersistence *)self _effectivePoliciesForTypes:types];
  (*(handler + 2))(handlerCopy, v8, 0);
}

- (id)_effectivePoliciesForTypes:(id)types
{
  typesCopy = types;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = typesCopy;
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

- (id)_effectivePolicyForType:(id)type
{
  typeCopy = type;
  effectivePolicyCache = [(DMDPolicyPersistence *)self effectivePolicyCache];
  objc_sync_enter(effectivePolicyCache);
  effectivePolicyCache2 = [(DMDPolicyPersistence *)self effectivePolicyCache];
  v7 = [effectivePolicyCache2 objectForKeyedSubscript:typeCopy];

  objc_sync_exit(effectivePolicyCache);

  return v7;
}

- (void)_recalculateEffectivePolicyForTypes:(id)types
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005F51C;
  v5[3] = &unk_1000CFC10;
  typesCopy = types;
  selfCopy = self;
  v4 = typesCopy;
  [(DMDPolicyPersistence *)self _performBackgroundTaskAndWait:v5];
}

- (BOOL)isInLegacyDowntimeWithPolicies:(id)policies priorities:(id)priorities
{
  policiesCopy = policies;
  prioritiesCopy = priorities;
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
        v12 = [policiesCopy objectForKeyedSubscript:v11];
        v13 = [prioritiesCopy objectForKeyedSubscript:v11];
        integerValue = [v12 integerValue];
        integerValue2 = [v13 integerValue];
        v16 = DMFHighestPolicyPriority;

        if (integerValue)
        {
          v17 = 1;
        }

        else
        {
          v17 = integerValue2 == v16;
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
    effectiveSettingsStore = [(DMDPolicyPersistence *)self effectiveSettingsStore];
    screenTime = [effectiveSettingsStore screenTime];
    categoryShieldPolicies = [screenTime categoryShieldPolicies];

    if (categoryShieldPolicies)
    {
      v6 = +[MOCategory all];
      v7 = [categoryShieldPolicies objectForKeyedSubscript:v6];

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

- (id)_effectiveCategoryPoliciesForCategoryShieldPolicy:(id)policy type:(id)type excludedIdentifiersKey:(id)key
{
  policyCopy = policy;
  typeCopy = type;
  keyCopy = key;
  v11 = objc_opt_new();
  policy = [policyCopy policy];
  if (policy == 2)
  {
    excludedContent = [policyCopy excludedContent];
    v14 = [excludedContent valueForKey:keyCopy];

    if (v14)
    {
      v15 = [NSSet setWithArray:v14];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      specificCategories = +[DMFEffectivePolicy downtimeCategoryIdentifiers];
      v24 = [specificCategories countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v31 = v14;
        v32 = keyCopy;
        v26 = *v34;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(specificCategories);
            }

            v28 = [(DMDPolicyPersistence *)self _effectivePolicyForManagedSettingsIdentifier:*(*(&v33 + 1) + 8 * i) type:typeCopy excludedIdentifiers:v15];
            [v11 addObject:v28];
          }

          v25 = [specificCategories countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v25);
        goto LABEL_20;
      }

LABEL_21:
    }
  }

  else
  {
    if (policy != 1)
    {
      goto LABEL_23;
    }

    excludedContent2 = [policyCopy excludedContent];
    v14 = [excludedContent2 valueForKey:keyCopy];

    if (v14)
    {
      v15 = [NSSet setWithArray:v14];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      specificCategories = [policyCopy specificCategories];
      v17 = [specificCategories countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v31 = v14;
        v32 = keyCopy;
        v30 = policyCopy;
        v19 = *v38;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(specificCategories);
            }

            identifier = [*(*(&v37 + 1) + 8 * j) identifier];
            v22 = [(DMDPolicyPersistence *)self _effectivePolicyForManagedSettingsIdentifier:identifier type:typeCopy excludedIdentifiers:v15];
            [v11 addObject:v22];
          }

          v18 = [specificCategories countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v18);
        policyCopy = v30;
LABEL_20:
        v14 = v31;
        keyCopy = v32;
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

LABEL_23:

  return v11;
}

- (id)_effectivePolicyForManagedSettingsIdentifier:(id)identifier type:(id)type excludedIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  typeCopy = type;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  [v10 setType:typeCopy];

  [v10 setIdentifier:identifierCopy];
  [v10 setOrganizationIdentifier:@"com.apple.ManagedSettings"];
  [v10 setDeclarationIdentifier:@"com.apple.ManagedSettings.declaration-identifier"];
  [v10 setPolicy:5];
  [v10 setPriority:DMFLowestPolicyPriority];
  [v10 setExcludedIdentifiers:identifiersCopy];

  return v10;
}

- (void)requestPoliciesForBundleIdentifiers:(id)identifiers replyHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  obj = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
  objc_sync_enter(obj);
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v41 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = identifiersCopy;
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
        bundleIdentifierPolicyCache = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
        v14 = [bundleIdentifierPolicyCache objectForKey:v12];

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
    allObjects = [v15 allObjects];

    v37 = [(DMDPolicyPersistence *)self _effectivePoliciesForTypes:allObjects];
    if ([v37 count])
    {
      v16 = [(DMDPolicyPersistence *)self _fetchParentBundleIdentifiersForBundleIdentifiers:v41];
      allObjects2 = [v41 allObjects];
      v18 = [NSMutableArray arrayWithArray:allObjects2];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      allValues = [v16 allValues];
      v20 = [allValues countByEnumeratingWithState:&v43 objects:v56 count:16];
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
              objc_enumerationMutation(allValues);
            }

            allObjects3 = [*(*(&v43 + 1) + 8 * v22) allObjects];
            [v18 addObjectsFromArray:allObjects3];

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [allValues countByEnumeratingWithState:&v43 objects:v56 count:16];
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

      handlerCopy[2](handlerCopy, v27, v26);

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
            bundleIdentifierPolicyCache2 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
            [bundleIdentifierPolicyCache2 setObject:&off_1000D7A90 forKey:v33];

            [v7 setObject:&off_1000D7A90 forKeyedSubscript:v33];
            v32 = v32 + 1;
          }

          while (v30 != v32);
          v30 = [v29 countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v30);
      }

      handlerCopy[2](handlerCopy, v7, 0);
      v35 = v37;
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, v7, 0);
  }

  objc_sync_exit(obj);
}

- (void)_appendPolicyForBundleIdentifiers:(id)identifiers toPolicies:(id)policies categories:(id)categories parentBundleIdentifiers:(id)bundleIdentifiers policiesByType:(id)type
{
  identifiersCopy = identifiers;
  policiesCopy = policies;
  categoriesCopy = categories;
  bundleIdentifiersCopy = bundleIdentifiers;
  typeCopy = type;
  v68 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeApplication];
  v67 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeApplicationCategory];
  v66 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeCategory];
  v60 = typeCopy;
  v65 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeWeb];
  v61 = +[DMFEffectivePolicy unblockableCategoryIdentifiers];
  v14 = +[DMFEffectivePolicy unblockableBundleIdentifiers];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v15 = identifiersCopy;
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
        v20 = [categoriesCopy objectForKeyedSubscript:v19];
        v21 = v20;
        if (v20)
        {
          identifier = [v20 identifier];
          webDomains = [v21 webDomains];
          equivalentBundleIdentifiers = [v21 equivalentBundleIdentifiers];
          v24 = [NSMutableSet setWithObject:v19];
          if ([equivalentBundleIdentifiers count])
          {
            [v24 addObjectsFromArray:equivalentBundleIdentifiers];
          }

          v80 = v24;
          v78 = equivalentBundleIdentifiers;
          v79 = v18;
          if ([v14 containsObject:v19])
          {
            v25 = identifier;
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

          if (identifier && [v61 containsObject:identifier])
          {
            v25 = identifier;
            v26 = DMFPolicyLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v91 = v19;
              v92 = 2114;
              v93 = identifier;
              v27 = v26;
              v28 = "Requested application %{public}@ with associated category %{public}@ is unblockable";
              v29 = 22;
LABEL_18:
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
            }

LABEL_19:

            bundleIdentifierPolicyCache = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
            [bundleIdentifierPolicyCache setObject:&off_1000D7A90 forKey:v19];

            [policiesCopy setObject:&off_1000D7A90 forKeyedSubscript:v19];
          }

          else
          {
            v31 = objc_opt_new();
            v32 = [bundleIdentifiersCopy objectForKeyedSubscript:v19];
            v73 = v21;
            v74 = identifier;
            if ([v32 count])
            {
              v33 = DMFPolicyLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                allObjects = [v32 allObjects];
                v35 = [allObjects componentsJoinedByString:{@", "}];
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
                    v42 = [categoriesCopy objectForKeyedSubscript:v41];
                    v43 = v42;
                    if (v42)
                    {
                      identifier2 = [v42 identifier];
                      [v31 addObject:identifier2];
                    }

                    else
                    {
                      identifier2 = DMFPolicyLog();
                      if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v91 = v19;
                        v92 = 2114;
                        v93 = v41;
                        _os_log_error_impl(&_mh_execute_header, identifier2, OS_LOG_TYPE_ERROR, "Requested application %{public}@ failed to categorize parent application %{public}@", buf, 0x16u);
                      }
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v82 objects:v100 count:16];
                }

                while (v38);
              }

              identifier = v74;
              v32 = v71;
            }

            if (identifier)
            {
              v45 = [v31 arrayByAddingObject:identifier];
            }

            else
            {
              v45 = v31;
            }

            v46 = v45;
            allObjects2 = [v80 allObjects];
            v48 = [DMFPrioritizedPolicy prioritizedPoliciesForAppPolicy:v68 appCategoryPolicy:v67 bundleIdentifiers:allObjects2 categoryPolicy:v66 categoryIdentifiers:v46 webPolicy:v65 webCategoryPolicy:0 webDomains:webDomains];

            v49 = [DMFPrioritizedPolicy arbitratePolicyForPrioritizedPolicies:v48];
            bundleIdentifierPolicyCache2 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
            v51 = [NSNumber numberWithInteger:v49];
            [bundleIdentifierPolicyCache2 setObject:v51 forKey:v19];

            v52 = [NSNumber numberWithInteger:v49];
            [policiesCopy setObject:v52 forKeyedSubscript:v19];

            v53 = DMFPolicyLog();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = DMFPolicyUnlocalizedDisplayName();
              v62 = [v46 componentsJoinedByString:{@", "}];
              v55 = [webDomains componentsJoinedByString:{@", "}];
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

- (id)_fetchParentBundleIdentifiersForBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v22 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [identifiersCopy count]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = identifiersCopy;
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
          appClipMetadata = [v7 appClipMetadata];
          parentApplicationIdentifiers = [appClipMetadata parentApplicationIdentifiers];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v13 = parentApplicationIdentifiers;
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

- (void)requestCommunicationPoliciesForBundleIdentifiers:(id)identifiers replyHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006172C;
  v8[3] = &unk_1000CF1F8;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8[4] = self;
  v6 = identifiersCopy;
  v7 = handlerCopy;
  [(DMDPolicyPersistence *)self requestPoliciesForBundleIdentifiers:v6 replyHandler:v8];
}

- (void)requestPoliciesForCategoryIdentifiers:(id)identifiers replyHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  obj = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
  objc_sync_enter(obj);
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v27 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = identifiersCopy;
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
        categoryIdentifierPolicyCache = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
        v14 = [categoryIdentifierPolicyCache objectForKey:v12];

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
    allObjects = [v15 allObjects];

    v24 = [(DMDPolicyPersistence *)self _effectivePoliciesForTypes:allObjects];
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
            categoryIdentifierPolicyCache2 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
            [categoryIdentifierPolicyCache2 setObject:&off_1000D7A90 forKey:v21];

            [v7 setObject:&off_1000D7A90 forKeyedSubscript:v21];
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v18);
      }
    }

    handlerCopy[2](handlerCopy, v7, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, v7, 0);
  }

  objc_sync_exit(obj);
}

- (void)_appendPolicyForCategoryIdentifiers:(id)identifiers toPolicies:(id)policies policiesByType:(id)type
{
  identifiersCopy = identifiers;
  policiesCopy = policies;
  typeCopy = type;
  v30 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeApplicationCategory];
  v29 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeCategory];
  v27 = typeCopy;
  v28 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeWebCategory];
  v10 = +[DMFEffectivePolicy unblockableCategoryIdentifiers];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = identifiersCopy;
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

          categoryIdentifierPolicyCache = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
          [categoryIdentifierPolicyCache setObject:&off_1000D7A90 forKey:v15];

          [policiesCopy setObject:&off_1000D7A90 forKeyedSubscript:v15];
        }

        else
        {
          v18 = v10;
          v42 = v15;
          v19 = [NSArray arrayWithObjects:&v42 count:1];
          v20 = [DMFPrioritizedPolicy prioritizedPoliciesForAppPolicy:0 appCategoryPolicy:v30 bundleIdentifiers:0 categoryPolicy:v29 categoryIdentifiers:v19 webPolicy:0 webCategoryPolicy:v28 webDomains:0];

          v21 = [DMFPrioritizedPolicy arbitratePolicyForPrioritizedPolicies:v20];
          categoryIdentifierPolicyCache2 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
          v23 = [NSNumber numberWithInteger:v21];
          [categoryIdentifierPolicyCache2 setObject:v23 forKey:v15];

          v24 = [NSNumber numberWithInteger:v21];
          [policiesCopy setObject:v24 forKeyedSubscript:v15];

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

- (void)requestPoliciesForWebsiteURLs:(id)ls replyHandler:(id)handler
{
  lsCopy = ls;
  handlerCopy = handler;
  obj = [(DMDPolicyPersistence *)self webDomainPolicyCache];
  objc_sync_enter(obj);
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v35 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = lsCopy;
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
        webDomainPolicyCache = [(DMDPolicyPersistence *)self webDomainPolicyCache];
        host = [v12 host];
        v15 = [webDomainPolicyCache objectForKey:host];

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
    allObjects = [v16 allObjects];

    v30 = [(DMDPolicyPersistence *)self _effectivePoliciesForTypes:allObjects];
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

      handlerCopy[2](handlerCopy, v20, v19);

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
            webDomainPolicyCache2 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
            host2 = [v25 host];
            [webDomainPolicyCache2 setObject:&off_1000D7A90 forKey:host2];

            [v7 setObject:&off_1000D7A90 forKeyedSubscript:v25];
            v24 = v24 + 1;
          }

          while (v22 != v24);
          v22 = [v34 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v22);
      }

      handlerCopy[2](handlerCopy, v7, 0);
      v28 = v30;
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, v7, 0);
  }

  objc_sync_exit(obj);
}

- (void)_appendPolicyForWebsiteURLs:(id)ls toPolicies:(id)policies categories:(id)categories policiesByType:(id)type
{
  lsCopy = ls;
  policiesCopy = policies;
  categoriesCopy = categories;
  typeCopy = type;
  v51 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeApplication];
  v50 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeCategory];
  v49 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeWeb];
  v43 = typeCopy;
  v48 = [typeCopy objectForKeyedSubscript:DMFEffectivePolicyTypeWebCategory];
  v52 = +[DMFEffectivePolicy unblockableBundleIdentifiers];
  v44 = +[DMFEffectivePolicy unblockableCategoryIdentifiers];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = lsCopy;
  v12 = [obj countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v66;
    v47 = categoriesCopy;
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
        v17 = [categoriesCopy objectForKeyedSubscript:v16];
        identifier = [v17 identifier];
        bundleIdentifier = [v17 bundleIdentifier];
        webDomains = [v17 webDomains];
        equivalentBundleIdentifiers = [v17 equivalentBundleIdentifiers];
        host = [v16 host];
        if (host)
        {
          v22 = categoriesCopy;
          v23 = [NSMutableSet setWithObject:host];
          if ([webDomains count])
          {
            [v23 addObjectsFromArray:webDomains];
          }

          v24 = objc_opt_new();
          v25 = v24;
          if (bundleIdentifier)
          {
            [v24 addObject:bundleIdentifier];
          }

          v63 = v25;
          if ([equivalentBundleIdentifiers count])
          {
            [v25 addObjectsFromArray:equivalentBundleIdentifiers];
          }

          v61 = webDomains;
          v62 = v23;
          if (bundleIdentifier && [v52 containsObject:bundleIdentifier])
          {
            v26 = DMFPolicyLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v70 = bundleIdentifier;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Requested website with associated bundle identifier %{public}@ is unblockable", buf, 0xCu);
            }

            goto LABEL_22;
          }

          if (identifier)
          {
            if ([v44 containsObject:identifier])
            {
              v26 = DMFPolicyLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v70 = identifier;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Requested website with associated category %{public}@ is unblockable", buf, 0xCu);
              }

LABEL_22:

              webDomainPolicyCache = [(DMDPolicyPersistence *)self webDomainPolicyCache];
              [webDomainPolicyCache setObject:&off_1000D7A90 forKey:host];

              [policiesCopy setObject:&off_1000D7A90 forKeyedSubscript:v16];
              v28 = v60;
              categoriesCopy = v22;
              v14 = v57;
LABEL_31:

              webDomains = v61;
              goto LABEL_32;
            }

            v56 = identifier;
            v79 = identifier;
            v30 = [NSArray arrayWithObjects:&v79 count:1];
          }

          else
          {
            v56 = 0;
            v30 = 0;
          }

          allObjects = [v25 allObjects];
          allObjects2 = [v23 allObjects];
          v33 = [DMFPrioritizedPolicy prioritizedPoliciesForAppPolicy:v51 appCategoryPolicy:0 bundleIdentifiers:allObjects categoryPolicy:v50 categoryIdentifiers:v30 webPolicy:v49 webCategoryPolicy:v48 webDomains:allObjects2];

          v55 = v33;
          v34 = [DMFPrioritizedPolicy arbitratePolicyForPrioritizedPolicies:v33];
          webDomainPolicyCache2 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
          v36 = [NSNumber numberWithInteger:v34];
          [webDomainPolicyCache2 setObject:v36 forKey:host];

          v37 = [NSNumber numberWithInteger:v34];
          [policiesCopy setObject:v37 forKeyedSubscript:v16];

          v38 = DMFPolicyLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            DMFPolicyUnlocalizedDisplayName();
            v39 = v53 = v30;
            v45 = [v53 componentsJoinedByString:{@", "}];
            allObjects3 = [v62 allObjects];
            v40 = [allObjects3 componentsJoinedByString:{@", "}];
            allObjects4 = [v63 allObjects];
            v42 = [allObjects4 componentsJoinedByString:{@", "}];
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

          categoriesCopy = v47;
          identifier = v56;
          v14 = v57;
          v28 = v60;
          goto LABEL_31;
        }

        v29 = DMFPolicyLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10008662C(&v80, &v81);
        }

        [policiesCopy setObject:&off_1000D7A90 forKeyedSubscript:v16];
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

- (id)_fetchCategoriesForBundleIdentifiers:(id)identifiers withError:(id *)error
{
  identifiersCopy = identifiers;
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
  [v7 categoriesForBundleIDs:identifiersCopy completionHandler:&v15];

  v9 = [NSDate dateWithTimeIntervalSinceNow:5.0, v15, v16, v17, v18];
  v10 = [v8 lockWhenCondition:1 beforeDate:v9];

  if (v10)
  {
    [v8 unlock];
    if (error)
    {
      v11 = v30[5];
      if (v11)
      {
        *error = v11;
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

    if (error)
    {
      DMFErrorWithCodeAndUserInfo();
      *error = v12 = 0;
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

- (id)_fetchCategoriesIfNeededForWebsiteURLs:(id)ls withError:(id *)error
{
  lsCopy = ls;
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
    [v7 categoriesForDomainURLs:lsCopy completionHandler:&v15];
    v9 = [NSDate dateWithTimeIntervalSinceNow:5.0, v15, v16, v17, v18];
    v10 = [v8 lockWhenCondition:1 beforeDate:v9];

    if (v10)
    {
      [v8 unlock];
      if (error)
      {
        v11 = v30[5];
        if (v11)
        {
          *error = v11;
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

      if (error)
      {
        DMFErrorWithCodeAndUserInfo();
        *error = v12 = 0;
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

- (void)setEffectivePolicy:(int64_t)policy forType:(id)type identifiers:(id)identifiers priority:(unint64_t)priority organizationIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier completionHandler:(id)handler
{
  typeCopy = type;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006344C;
  v21[3] = &unk_1000CFC60;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  declarationIdentifierCopy = declarationIdentifier;
  selfCopy = self;
  v26 = typeCopy;
  handlerCopy = handler;
  policyCopy = policy;
  priorityCopy = priority;
  v16 = typeCopy;
  v17 = declarationIdentifierCopy;
  v18 = identifierCopy;
  v19 = identifiersCopy;
  v20 = handlerCopy;
  [(DMDPolicyPersistence *)self _performBackgroundTask:v21];
}

- (BOOL)_upsertPolicy:(int64_t)policy forType:(id)type identifier:(id)identifier priority:(unint64_t)priority organizationIdentifier:(id)organizationIdentifier declarationIdentifier:(id)declarationIdentifier policyToUpdate:(id)update managedObjectContext:(id)self0
{
  typeCopy = type;
  identifierCopy = identifier;
  organizationIdentifierCopy = organizationIdentifier;
  declarationIdentifierCopy = declarationIdentifier;
  updateCopy = update;
  contextCopy = context;
  if (updateCopy)
  {
    v21 = [(DMDEffectivePolicy *)updateCopy policy]!= policy;
    [(DMDEffectivePolicy *)updateCopy setPolicy:policy];
    v22 = DMFPolicyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543874;
      v25 = updateCopy;
      v26 = 2114;
      v27 = typeCopy;
      v28 = 2114;
      v29 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating existing policy %{public}@ of type %{public}@ identifier %{public}@", &v24, 0x20u);
    }
  }

  else
  {
    updateCopy = [[DMDEffectivePolicy alloc] initWithContext:contextCopy];
    [(DMDEffectivePolicy *)updateCopy setType:typeCopy];
    [(DMDEffectivePolicy *)updateCopy setIdentifier:identifierCopy];
    [(DMDEffectivePolicy *)updateCopy setOrganizationIdentifier:organizationIdentifierCopy];
    [(DMDEffectivePolicy *)updateCopy setDeclarationIdentifier:declarationIdentifierCopy];
    [(DMDEffectivePolicy *)updateCopy setPriority:priority];
    [(DMDEffectivePolicy *)updateCopy setPolicy:policy];
    v22 = DMFPolicyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = updateCopy;
      v26 = 2114;
      v27 = typeCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Adding new policy %{public}@ of type %{public}@", &v24, 0x16u);
    }

    v21 = 1;
  }

  return v21;
}

- (void)removeEffectivePolicyFromOrganizationIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier completionHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100063CD4;
  v11[3] = &unk_1000CFC88;
  identifierCopy = identifier;
  declarationIdentifierCopy = declarationIdentifier;
  selfCopy = self;
  handlerCopy = handler;
  v8 = declarationIdentifierCopy;
  v9 = identifierCopy;
  v10 = handlerCopy;
  [(DMDPolicyPersistence *)self _performBackgroundTask:v11];
}

- (void)removeOrphanedPoliciesNotBelongingToExistingOrganizationIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000641FC;
  v9[3] = &unk_1000CFBE8;
  selfCopy = self;
  handlerCopy = handler;
  v10 = identifiersCopy;
  v7 = identifiersCopy;
  v8 = handlerCopy;
  [(DMDPolicyPersistence *)self _performBackgroundTask:v9];
}

- (void)removeOrphanedPoliciesNotBelongingToExistingDeclarationIdentifiersByOrganizationIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000643A0;
  v9[3] = &unk_1000CFBE8;
  selfCopy = self;
  handlerCopy = handler;
  v10 = identifierCopy;
  v7 = identifierCopy;
  v8 = handlerCopy;
  [(DMDPolicyPersistence *)self _performBackgroundTask:v9];
}

- (void)_removeOrphanedPoliciesFromFetchRequest:(id)request managedObjectContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v45 = 0;
  v10 = [request execute:&v45];
  v11 = v45;
  if (v10)
  {
    if ([v10 count])
    {
      selfCopy = self;
      v37 = v11;
      v39 = handlerCopy;
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
            type = [v19 type];
            [v13 addObject:type];

            declarationIdentifier = [v19 declarationIdentifier];
            [v12 addObject:declarationIdentifier];
            [contextCopy deleteObject:v19];
            v22 = DMFPolicyLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              organizationIdentifier = [v19 organizationIdentifier];
              *buf = 138543618;
              v47 = declarationIdentifier;
              v48 = 2114;
              v49 = organizationIdentifier;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing orphaned policy %{public}@ in organization %{public}@", buf, 0x16u);
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v41 objects:v52 count:16];
        }

        while (v16);
      }

      if ([contextCopy hasChanges])
      {
        v40 = v37;
        v24 = [contextCopy save:&v40];
        v11 = v40;

        if (!v24)
        {
          v25 = DMFPolicyLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            allObjects = [v13 allObjects];
            v32 = [allObjects componentsJoinedByString:{@", "}];
            v33 = [v12 componentsJoinedByString:{@", "}];
            verboseDescription = [v11 verboseDescription];
            *buf = 138543874;
            v47 = v32;
            v48 = 2114;
            v49 = v33;
            v50 = 2114;
            v51 = verboseDescription;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not remove orphaned policies types %{public}@ for declarations %{public}@: %{public}@", buf, 0x20u);
          }

          v26 = 0;
          v10 = v38;
          handlerCopy = v39;
LABEL_27:

          (handlerCopy)[2](handlerCopy, v26);
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
        allObjects2 = [v13 allObjects];
        v29 = [allObjects2 componentsJoinedByString:{@", "}];
        v30 = [v12 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v47 = v29;
        v48 = 2114;
        v49 = v30;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Successfully removed orphaned policy types %{public}@ for declarations %{public}@", buf, 0x16u);
      }

      v26 = v12;
      handlerCopy = v39;
      goto LABEL_27;
    }

    (handlerCopy)[2](handlerCopy, &__NSArray0__struct);
  }

  else
  {
    v27 = DMFPolicyLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000867E8(v11);
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_28:
}

- (void)_handleChangesToPolicyTypes:(id)types
{
  typesCopy = types;
  [(DMDPolicyPersistence *)self _recalculateEffectivePolicyForTypes:typesCopy];
  [(DMDPolicyPersistence *)self _clearPolicyCachesForTypes:typesCopy];
  [(DMDPolicyPersistence *)self _notifyClientsRegisteredForPolicyTypes:typesCopy];
}

- (void)_clearPolicyCachesForTypes:(id)types
{
  typesCopy = types;
  v5 = +[DMFApplicationPolicyMonitor policyTypes];
  v6 = [typesCopy intersectsSet:v5];

  if (v6)
  {
    bundleIdentifierPolicyCache = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
    objc_sync_enter(bundleIdentifierPolicyCache);
    v8 = DMFPolicyLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing app policy caches", buf, 2u);
    }

    bundleIdentifierPolicyCache2 = [(DMDPolicyPersistence *)self bundleIdentifierPolicyCache];
    [bundleIdentifierPolicyCache2 removeAllObjects];

    objc_sync_exit(bundleIdentifierPolicyCache);
  }

  v10 = +[DMFCategoryPolicyMonitor policyTypes];
  v11 = [typesCopy intersectsSet:v10];

  if (v11)
  {
    categoryIdentifierPolicyCache = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
    objc_sync_enter(categoryIdentifierPolicyCache);
    v13 = DMFPolicyLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Clearing category policy caches", v21, 2u);
    }

    categoryIdentifierPolicyCache2 = [(DMDPolicyPersistence *)self categoryIdentifierPolicyCache];
    [categoryIdentifierPolicyCache2 removeAllObjects];

    objc_sync_exit(categoryIdentifierPolicyCache);
  }

  v15 = +[DMFWebsitePolicyMonitor policyTypes];
  v16 = [typesCopy intersectsSet:v15];

  if (v16)
  {
    webDomainPolicyCache = [(DMDPolicyPersistence *)self webDomainPolicyCache];
    objc_sync_enter(webDomainPolicyCache);
    v18 = DMFPolicyLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Clearing web domain policy caches", v20, 2u);
    }

    webDomainPolicyCache2 = [(DMDPolicyPersistence *)self webDomainPolicyCache];
    [webDomainPolicyCache2 removeAllObjects];

    objc_sync_exit(webDomainPolicyCache);
  }
}

- (void)_notifyClientsRegisteredForPolicyTypes:(id)types
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064D98;
  v5[3] = &unk_1000CFCD8;
  typesCopy = types;
  v4 = typesCopy;
  [(DMDPolicyPersistence *)self _performRegistrationBackgroundTask:v5];
}

- (void)enableEmergencyModeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  emergencyModeQueue = [(DMDPolicyPersistence *)self emergencyModeQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006510C;
  v7[3] = &unk_1000CE8C0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(emergencyModeQueue, v7);
}

- (void)enableEmergencyModeForDuration:(double)duration withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  emergencyModeQueue = [(DMDPolicyPersistence *)self emergencyModeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065270;
  block[3] = &unk_1000CFD00;
  durationCopy = duration;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_sync(emergencyModeQueue, block);
}

- (void)_enableEmergencyModeUntilDate:(id)date referenceDate:(id)referenceDate withCompletionHandler:(id)handler
{
  dateCopy = date;
  referenceDateCopy = referenceDate;
  handlerCopy = handler;
  emergencyModeQueue = [(DMDPolicyPersistence *)self emergencyModeQueue];
  dispatch_assert_queue_V2(emergencyModeQueue);

  if (!dateCopy || [referenceDateCopy compare:dateCopy] != -1)
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

  [dateCopy timeIntervalSince1970];
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
    v19 = dateCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Enabling Emergency Mode until: %{public}@", &v18, 0xCu);
  }

  v13 = 0;
LABEL_6:
  handlerCopy[2](handlerCopy, v13);
}

- (void)disableEmergencyModeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  emergencyModeQueue = [(DMDPolicyPersistence *)self emergencyModeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000655E0;
  block[3] = &unk_1000CF578;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(emergencyModeQueue, block);
}

- (void)emergencyModeStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  emergencyModeQueue = [(DMDPolicyPersistence *)self emergencyModeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065750;
  block[3] = &unk_1000CF578;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(emergencyModeQueue, block);
}

- (void)allExpiredScreenTimeBudgetsShouldBeSynchronous:(BOOL)synchronous replyHandler:(id)handler
{
  synchronousCopy = synchronous;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100065B04;
  v12[3] = &unk_1000CFD28;
  handlerCopy = handler;
  v13 = handlerCopy;
  v6 = objc_retainBlock(v12);
  v7 = objc_opt_new();
  v8 = v7;
  if (synchronousCopy)
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

- (void)handleAlarmWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling alarm with identifier: %{public}@", &v5, 0xCu);
  }

  if ([identifierCopy isEqualToString:@"com.apple.dmd.emergency-mode.alarm"])
  {
    notify_post([DMFEmergencyModeChangedNotification UTF8String]);
  }
}

- (void)handleNotifyMatchingNotificationWithName:(id)name
{
  nameCopy = name;
  v5 = DMFPolicyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling notify matching notification with name: %{public}@", &v7, 0xCu);
  }

  if ([nameCopy isEqualToString:@"com.apple.mobile.keybagd.first_unlock"])
  {
    v6 = +[DMFPolicyMonitor allEffectivePolicyTypes];
    [(DMDPolicyPersistence *)self _handleChangesToPolicyTypes:v6];
  }
}

- (void)handleDistributedNotificationWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v8 = DMFPolicyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling distributed notification with name: %{public}@", buf, 0xCu);
  }

  if ([nameCopy isEqualToString:CTCategoriesDidChangeNotification])
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
    if (![nameCopy isEqualToString:@"com.apple.LaunchServices.applicationRegistered"])
    {
      goto LABEL_10;
    }

    v11 = [infoCopy objectForKeyedSubscript:@"isPlaceholder"];
    v10 = v11;
    if (v11 && ([v11 BOOLValue] & 1) == 0)
    {
      v12 = +[DMFApplicationPolicyMonitor policyTypes];
      [(DMDPolicyPersistence *)self _handleChangesToPolicyTypes:v12];
    }
  }

LABEL_10:
}

- (void)handleManagedEffectiveSettingsChangeInGroup:(id)group
{
  groupCopy = group;
  v5 = DMFPolicyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = groupCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling managed settings group change: %{public}@", buf, 0xCu);
  }

  if ([groupCopy isEqualToString:MOEffectiveSettingsGroupShield])
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

  if ([groupCopy isEqualToString:MOEffectiveSettingsGroupAccount])
  {
    v8 = [NSSet setWithObject:DMFEffectivePolicyTypeiCloudAccountLogout];
    goto LABEL_8;
  }

  if (_os_feature_enabled_impl() && [groupCopy isEqualToString:MOEffectiveSettingsGroupScreenTime])
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