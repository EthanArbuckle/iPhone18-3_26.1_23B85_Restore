@interface SWCDatabase
+ (OS_dispatch_queue)queue;
+ (SWCDatabase)sharedDatabase;
+ (id)_archivedDataFromStorage:(id)a3 error:(id *)a4;
+ (id)_storageFromArchivedData:(id)a3 error:(id *)a4;
+ (id)loadContentsOfURL:(id)a3 error:(id *)a4;
- (BOOL)_deleteStorageItemReturningError:(id *)a3;
- (BOOL)_updateStorageItemWithData:(id)a3 error:(id *)a4;
- (BOOL)addEntries:(id)a3;
- (BOOL)removeEntries:(id)a3;
- (BOOL)saveReturningError:(id *)a3;
- (NSURL)storageURL;
- (id)_dataFromStorageReturningError:(id *)a3;
- (id)_dataURLReturningError:(id *)a3;
- (id)_initShared;
- (id)_storageForArchiving;
- (id)entry:(id)a3;
- (id)entryMatchingService:(id)a3 domain:(id)a4 appID:(id)a5;
- (id)entryMatchingServiceSpecifier:(id)a3;
- (void)_removeSettingsForKeysNoSave:(id)a3 serviceSpecifier:(id)a4;
- (void)_reorderAppLinks:(id)a3 domain:(id)a4;
- (void)_scheduleSave;
- (void)cleanOldSettings;
- (void)enumerateEntries:(id)a3 matchingService:(id)a4 domain:(id)a5 appID:(id)a6 block:(id)a7;
- (void)enumerateEntries:(id)a3 matchingServiceSpecifier:(id)a4 block:(id)a5;
- (void)enumerateEntriesMatchingService:(id)a3 exactDomain:(id)a4 appID:(id)a5 block:(id)a6;
- (void)enumerateEntriesMatchingServiceSpecifier:(id)a3 block:(id)a4;
- (void)enumerateEntriesMatchingServiceSpecifierWithExactDomain:(id)a3 block:(id)a4;
- (void)enumerateEntriesWithBlock:(id)a3;
- (void)receiveSIGTERMSignal;
- (void)removeAllEntries;
- (void)removeSettingsForKeys:(id)a3 serviceSpecifier:(id)a4;
- (void)removeSettingsForKeys:(id)a3 serviceType:(id)a4;
- (void)setSettingsDictionary:(id)a3 forServiceSpecifier:(id)a4;
- (void)updateEntriesForDomain:(id)a3 canonicalEntries:(id)a4;
@end

@implementation SWCDatabase

+ (SWCDatabase)sharedDatabase
{
  v2 = [objc_opt_class() queue];
  dispatch_assert_queue_V2(v2);

  if (qword_10003ACC8 != -1)
  {
    dispatch_once(&qword_10003ACC8, &stru_100034C48);
  }

  v3 = qword_10003ACC0;

  return v3;
}

+ (id)loadContentsOfURL:(id)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v18 = 0;
  v8 = [[NSData alloc] initWithContentsOfURL:a3 options:1 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v17 = v9;
    v11 = [a1 _storageFromArchivedData:v8 error:&v17];
    v12 = v17;

    if (v11)
    {
      v13 = v11;
    }

    v10 = v12;
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (!v11)
  {
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v14 = qword_10003ACE0;
    if (!os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_ERROR))
    {
      if (!a4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    *buf = 138412290;
    v20 = v10;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to load SWC database: %@", buf, 0xCu);
    if (a4)
    {
LABEL_11:
      v15 = v10;
      *a4 = v10;
    }
  }

LABEL_12:

  return v11;
}

- (void)receiveSIGTERMSignal
{
  v3 = os_transaction_create();
  v4 = +[SWCDatabase queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E7A4;
  v6[3] = &unk_1000347C0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (NSURL)storageURL
{
  if (*(self + 40))
  {
    v3 = [(SWCDatabase *)self _dataURLReturningError:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (OS_dispatch_queue)queue
{
  if (qword_10003ACD8 != -1)
  {
    dispatch_once(&qword_10003ACD8, &stru_100034C68);
  }

  v3 = qword_10003ACD0;

  return v3;
}

- (id)entry:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableOrderedSet *)self->_entries indexOfObject:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)self->_entries objectAtIndexedSubscript:v6];
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)enumerateEntries:(id)a3 matchingService:(id)a4 domain:(id)a5 appID:(id)a6 block:(id)a7
{
  context = objc_autoreleasePoolPush();
  v13 = a3;
  obj = v13;
  if (a5 && self->_entries == v13 && [(SWCDomainCache *)self->_domainCache isValid])
  {
    v14 = [(SWCDomainCache *)self->_domainCache entriesForDomain:a5];

    obj = v14;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obja = obj;
  v15 = [obja countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = *v30;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(obja);
      }

      v18 = *(*(&v29 + 1) + 8 * v17);
      if (!a4 || ([*(*(&v29 + 1) + 8 * v17) serviceType], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "caseInsensitiveCompare:", a4) == 0, v19, v20))
      {
        if (!a5 || ([v18 domain], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "encompassesDomain:", a5), v21, (v22 & 1) != 0))
        {
          if (!a6 || ([v18 applicationIdentifier], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToApplicationIdentifierIgnoringPrefix:", a6), v23, (v24 & 1) != 0))
          {
            v28 = 0;
            (*(a7 + 2))(a7, v18, &v28);
            if (v28)
            {
              break;
            }
          }
        }
      }

      if (v15 == ++v17)
      {
        v15 = [obja countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)enumerateEntries:(id)a3 matchingServiceSpecifier:(id)a4 block:(id)a5
{
  v11 = [a4 serviceType];
  v9 = [a4 SWCDomain];
  v10 = [a4 SWCApplicationIdentifier];
  [(SWCDatabase *)self enumerateEntries:a3 matchingService:v11 domain:v9 appID:v10 block:a5];
}

- (void)enumerateEntriesWithBlock:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_entries;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      v10 = 0;
      (*(a3 + 2))(a3, v8, &v10);
      LOBYTE(v8) = v10;
      objc_autoreleasePoolPop(v9);
      if (v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateEntriesMatchingServiceSpecifier:(id)a3 block:(id)a4
{
  entries = self->_entries;
  v10 = [a3 serviceType];
  v8 = [a3 SWCDomain];
  v9 = [a3 SWCApplicationIdentifier];
  [(SWCDatabase *)self enumerateEntries:entries matchingService:v10 domain:v8 appID:v9 block:a4];
}

- (void)enumerateEntriesMatchingService:(id)a3 exactDomain:(id)a4 appID:(id)a5 block:(id)a6
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000EF9C;
  v6[3] = &unk_100034C90;
  v6[4] = a4;
  v6[5] = a6;
  [(SWCDatabase *)self enumerateEntriesMatchingService:a3 domain:a4 appID:a5 block:v6];
}

- (void)enumerateEntriesMatchingServiceSpecifierWithExactDomain:(id)a3 block:(id)a4
{
  v9 = [a3 serviceType];
  v7 = [a3 SWCDomain];
  v8 = [a3 SWCApplicationIdentifier];
  [(SWCDatabase *)self enumerateEntriesMatchingService:v9 exactDomain:v7 appID:v8 block:a4];
}

- (id)entryMatchingService:(id)a3 domain:(id)a4 appID:(id)a5
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10000F244;
  v12 = sub_10000F254;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F25C;
  v7[3] = &unk_100034CB8;
  v7[4] = a4;
  v7[5] = &v8;
  [(SWCDatabase *)self enumerateEntriesMatchingService:a3 domain:a4 appID:a5 block:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)entryMatchingServiceSpecifier:(id)a3
{
  v5 = [a3 serviceType];
  v6 = [a3 SWCDomain];
  v7 = [a3 SWCApplicationIdentifier];
  v8 = [(SWCDatabase *)self entryMatchingService:v5 domain:v6 appID:v7];

  return v8;
}

- (BOOL)addEntries:(id)a3
{
  v5 = [(NSMutableOrderedSet *)self->_entries count];
  [(NSMutableOrderedSet *)self->_entries unionOrderedSet:a3];
  v6 = [(NSMutableOrderedSet *)self->_entries count];
  if (v6 != v5)
  {
    [(SWCDomainCache *)self->_domainCache updateCachedDomainsForEntries:a3];
    [(SWCDatabase *)self _scheduleSave];
  }

  return v6 != v5;
}

- (BOOL)removeEntries:(id)a3
{
  v5 = [(NSMutableOrderedSet *)self->_entries count];
  [(NSMutableOrderedSet *)self->_entries minusOrderedSet:a3];
  v6 = [(NSMutableOrderedSet *)self->_entries count];
  if (v6 != v5)
  {
    [(SWCDomainCache *)self->_domainCache clear];
    [(SWCDomainCache *)self->_domainCache updateCachedDomainsForEntries:self->_entries];
    [(SWCDatabase *)self _scheduleSave];
  }

  return v6 != v5;
}

- (void)removeAllEntries
{
  [(NSMutableOrderedSet *)self->_entries removeAllObjects];
  [(NSMutableDictionary *)self->_settings removeAllObjects];
  launchServicesDatabaseGeneration = self->_launchServicesDatabaseGeneration;
  self->_launchServicesDatabaseGeneration = 0;

  enterpriseState = self->_enterpriseState;
  self->_enterpriseState = 0;

  [(SWCDomainCache *)self->_domainCache clear];
  if (qword_10003ACE8 != -1)
  {
    dispatch_once(&qword_10003ACE8, &stru_100034D78);
  }

  v5 = qword_10003ACE0;
  if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting old SWC database from storage", buf, 2u);
  }

  v9 = 0;
  v6 = [(SWCDatabase *)self _deleteStorageItemReturningError:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v8 = qword_10003ACE0;
    if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Delete SWC database from storage failed with error %@", buf, 0xCu);
    }
  }
}

- (void)updateEntriesForDomain:(id)a3 canonicalEntries:(id)a4
{
  v7 = +[NSDate date];
  if (![a4 count])
  {
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v8 = qword_10003ACE0;
    if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "JSON file for %@ had no entries", buf, 0xCu);
    }
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000F950;
  v13 = &unk_100034CE0;
  v9 = v7;
  v14 = v9;
  v15 = a4;
  [(SWCDatabase *)self enumerateEntriesMatchingService:0 exactDomain:a3 appID:0 block:&v10];
  [(SWCDatabase *)self _reorderAppLinks:a4 domain:a3, v10, v11, v12, v13];
  [SWCEntry canonicalizeEntries:self->_entries];
  [(SWCDatabase *)self scheduleNextSave];
}

- (void)setSettingsDictionary:(id)a3 forServiceSpecifier:(id)a4
{
  v6 = [a3 copy];
  [(NSMutableDictionary *)self->_settings setObject:v6 forKeyedSubscript:a4];

  v7 = [(_SWCGeneration *)self->_settingsGeneration generationByIncrementingSelf];
  settingsGeneration = self->_settingsGeneration;
  self->_settingsGeneration = v7;

  [_SWCServiceSettings postChangeNotificationForServiceSpecifier:a4];

  [(SWCDatabase *)self scheduleNextSave];
}

- (void)removeSettingsForKeys:(id)a3 serviceType:(id)a4
{
  v7 = objc_alloc_init(NSMutableArray);
  settings = self->_settings;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000FDF8;
  v29[3] = &unk_100034D08;
  v29[4] = a4;
  v9 = v7;
  v30 = v9;
  [(NSMutableDictionary *)settings enumerateKeysAndObjectsUsingBlock:v29];
  v10 = [a3 allObjects];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v12)
  {
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(SWCDatabase *)self _removeSettingsForKeysNoSave:v10 serviceSpecifier:*(*(&v25 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v12);
  }

  v15 = [(_SWCGeneration *)self->_settingsGeneration generationByIncrementingSelf];
  settingsGeneration = self->_settingsGeneration;
  self->_settingsGeneration = v15;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v18)
  {
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [_SWCServiceSettings postChangeNotificationForServiceSpecifier:*(*(&v21 + 1) + 8 * v20), v21];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v18);
  }

  [(SWCDatabase *)self scheduleNextSave];
}

- (void)removeSettingsForKeys:(id)a3 serviceSpecifier:(id)a4
{
  v6 = [a3 allObjects];
  [(SWCDatabase *)self _removeSettingsForKeysNoSave:v6 serviceSpecifier:a4];

  v7 = [(_SWCGeneration *)self->_settingsGeneration generationByIncrementingSelf];
  settingsGeneration = self->_settingsGeneration;
  self->_settingsGeneration = v7;

  [_SWCServiceSettings postChangeNotificationForServiceSpecifier:a4];

  [(SWCDatabase *)self scheduleNextSave];
}

- (void)cleanOldSettings
{
  v3 = objc_autoreleasePoolPush();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001014C;
  v17[3] = &unk_100034D08;
  v17[4] = self;
  v4 = objc_alloc_init(NSMutableSet);
  v18 = v4;
  [(SWCDatabase *)self enumerateSettingsDictionariesWithBlock:v17];
  if ([v4 count])
  {
    settings = self->_settings;
    v6 = [v4 allObjects];
    [(NSMutableDictionary *)settings removeObjectsForKeys:v6];

    v7 = [(_SWCGeneration *)self->_settingsGeneration generationByIncrementingSelf];
    settingsGeneration = self->_settingsGeneration;
    self->_settingsGeneration = v7;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v10)
    {
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [_SWCServiceSettings postChangeNotificationForServiceSpecifier:*(*(&v13 + 1) + 8 * v12), v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v10);
    }

    [(SWCDatabase *)self scheduleNextSave];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)saveReturningError:(id *)a3
{
  v5 = objc_autoreleasePoolPush();
  if (*(self + 40))
  {
    v6 = os_transaction_create();
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v7 = qword_10003ACE0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableOrderedSet *)self->_entries count];
      *buf = 134217984;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Saving SWC database with %llu entries...", buf, 0xCu);
    }

    v9 = [(SWCDatabase *)self _storageForArchiving];
    v20 = 0;
    v10 = [objc_opt_class() _archivedDataFromStorage:v9 error:&v20];
    v11 = v20;
    v12 = v11;
    if (v10)
    {
      v19 = v11;
      v13 = [(SWCDatabase *)self _updateStorageItemWithData:v10 error:&v19];
      v14 = v19;

      v12 = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v15 = qword_10003ACE0;
    if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Non-shared instance of SWCDatabase cannot save--ignoring call.", buf, 2u);
    }

    v12 = 0;
    v13 = 1;
  }

  objc_autoreleasePoolPop(v5);
  if (!v13)
  {
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v16 = qword_10003ACE0;
    if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to save SWC database: %@", buf, 0xCu);
      if (!a3)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a3)
    {
LABEL_20:
      v17 = v12;
      *a3 = v12;
    }
  }

LABEL_21:

  return v13;
}

- (id)_initShared
{
  v37.receiver = self;
  v37.super_class = SWCDatabase;
  v2 = [(SWCDatabase *)&v37 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    *(v2 + 40) |= 1u;
    v4 = objc_alloc_init(_SWCGeneration);
    settingsGeneration = v2->_settingsGeneration;
    v2->_settingsGeneration = v4;

    v6 = objc_alloc_init(SWCDomainCache);
    domainCache = v2->_domainCache;
    v2->_domainCache = v6;

    v36 = 0;
    v8 = [(SWCDatabase *)v2 _dataFromStorageReturningError:&v36];
    v9 = v36;
    v10 = v9;
    if (v8)
    {
      v35 = v9;
      v11 = [objc_opt_class() _storageFromArchivedData:v8 error:&v35];
      v12 = v35;

      if (v11)
      {
        v13 = [v11 settings];
        v14 = [v13 mutableCopy];
        settings = v2->_settings;
        v2->_settings = v14;

        if ([v11 databaseVersion] == 9)
        {
          v16 = [v11 entries];
          v17 = [v16 mutableCopy];
          entries = v2->_entries;
          v2->_entries = v17;

          v19 = [v11 launchServicesDatabaseGeneration];
          v20 = [v19 copy];
          launchServicesDatabaseGeneration = v2->_launchServicesDatabaseGeneration;
          v2->_launchServicesDatabaseGeneration = v20;

          v22 = [v11 enterpriseState];
          v23 = [v22 copy];
          enterpriseState = v2->_enterpriseState;
          v2->_enterpriseState = v23;

          [(SWCDomainCache *)v2->_domainCache updateCachedDomainsForEntries:v2->_entries];
        }

        else
        {
          if (qword_10003ACE8 != -1)
          {
            dispatch_once(&qword_10003ACE8, &stru_100034D78);
          }

          v25 = qword_10003ACE0;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v11 databaseVersion];
            *buf = 134218240;
            v39 = v26;
            v40 = 2048;
            v41 = 9;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SWC database version did not match (had %llu, wanted %llu). Keeping settings and regenerating entries.", buf, 0x16u);
          }

          v27 = objc_alloc_init(NSMutableOrderedSet);
          v28 = v2->_entries;
          v2->_entries = v27;
        }
      }
    }

    else
    {
      v12 = v9;
    }

    if (!v2->_entries || !v2->_settings)
    {
      if (qword_10003ACE8 != -1)
      {
        dispatch_once(&qword_10003ACE8, &stru_100034D78);
      }

      v29 = qword_10003ACE0;
      if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v12;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to get SWC database, rebuilding: %@", buf, 0xCu);
      }

      v30 = objc_alloc_init(NSMutableOrderedSet);
      v31 = v2->_entries;
      v2->_entries = v30;

      v32 = objc_alloc_init(NSMutableDictionary);
      v33 = v2->_settings;
      v2->_settings = v32;
    }

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)_removeSettingsForKeysNoSave:(id)a3 serviceSpecifier:(id)a4
{
  settings = self->_settings;
  if (a3)
  {
    v8 = [(NSMutableDictionary *)settings objectForKeyedSubscript:a4];
    v10 = [v8 mutableCopy];

    if (v10)
    {
      [v10 removeObjectsForKeys:a3];
      if ([v10 count])
      {
        v9 = [v10 copy];
        [(NSMutableDictionary *)self->_settings setObject:v9 forKeyedSubscript:a4];
      }

      else
      {
        [(NSMutableDictionary *)self->_settings setObject:0 forKeyedSubscript:a4];
      }
    }
  }

  else
  {

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }
}

- (id)_storageForArchiving
{
  v4 = objc_alloc_init(SWCDatabaseStorage);
  if (!v4)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SWCDatabase.mm" lineNumber:806 description:@"Failed to allocate storage object"];
  }

  [(SWCDatabaseStorage *)v4 setDatabaseVersion:9];
  [(SWCDatabaseStorage *)v4 setEntries:self->_entries];
  [(SWCDatabaseStorage *)v4 setSettings:self->_settings];
  [(SWCDatabaseStorage *)v4 setLaunchServicesDatabaseGeneration:self->_launchServicesDatabaseGeneration];
  [(SWCDatabaseStorage *)v4 setEnterpriseState:self->_enterpriseState];

  return v4;
}

+ (id)_storageFromArchivedData:(id)a3 error:(id *)a4
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [NSKeyedUnarchiver swc_unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v11];
  v8 = v11;
  objc_autoreleasePoolPop(v6);
  if (a4 && !v7)
  {
    v9 = v8;
    *a4 = v8;
  }

  return v7;
}

+ (id)_archivedDataFromStorage:(id)a3 error:(id *)a4
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v11];
  v8 = v11;
  objc_autoreleasePoolPop(v6);
  if (a4 && !v7)
  {
    v9 = v8;
    *a4 = v8;
  }

  return v7;
}

- (void)_scheduleSave
{
  if (*(self + 40))
  {
    v8 = 0;
    *buf = 0x402E000000000000;
    v9 = 0x401E000000000000;
    v10 = [objc_opt_class() queue];
    v11 = os_transaction_create();
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000117F0;
    v4[3] = &unk_100034D58;
    objc_copyWeak(&v5, &location);
    sub_10001E848(&self->_saveTimer, buf, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v3 = qword_10003ACE0;
    if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Non-shared instance of SWCDatabase cannot save--ignoring scheduling call.", buf, 2u);
    }
  }
}

- (void)_reorderAppLinks:(id)a3 domain:(id)a4
{
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = *v21;
    v11 = _SWCServiceTypeAppLinks;
    *&v9 = 138412290;
    v19 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = [v13 serviceType];
        v15 = [v14 isEqual:v11];

        if (v15)
        {
          v16 = [(SWCDatabase *)self entry:v13];
          if (v16)
          {
            if (qword_10003ACE8 != -1)
            {
              dispatch_once(&qword_10003ACE8, &stru_100034D78);
            }

            v17 = qword_10003ACE0;
            if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_DEBUG))
            {
              *buf = v19;
              v25 = v16;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Removing to reorder %@", buf, 0xCu);
            }

            [v6 addObject:v16];
          }
        }

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  [(SWCDatabase *)self removeEntries:v6];
  [(SWCDatabase *)self addEntries:v6];
  if ([v6 count])
  {
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v18 = qword_10003ACE0;
    if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Reordered %@", buf, 0xCu);
    }
  }
}

- (id)_dataURLReturningError:(id *)a3
{
  v4 = +[_SWCPrefs sharedPrefs];
  v5 = [v4 containerURLReturningError:a3];

  if (v5)
  {
    v6 = [v5 URLByAppendingPathComponent:@"swc.db" isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_dataFromStorageReturningError:(id *)a3
{
  v4 = [(SWCDatabase *)self _dataURLReturningError:?];
  if (v4)
  {
    v5 = [[NSData alloc] initWithContentsOfURL:v4 options:1 error:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_updateStorageItemWithData:(id)a3 error:(id *)a4
{
  v6 = [(SWCDatabase *)self _dataURLReturningError:a4];
  if (v6)
  {
    v7 = [a3 writeToURL:v6 options:268435457 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_deleteStorageItemReturningError:(id *)a3
{
  v4 = [(SWCDatabase *)self _dataURLReturningError:?];
  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 removeItemAtURL:v4 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end