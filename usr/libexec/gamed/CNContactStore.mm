@interface CNContactStore
- (id)_gkChangeHistoryRequestWithToken:(id)token;
- (id)_gkContactKeysToFetch;
- (id)_gkContactsWithContactIDs:(id)ds;
- (id)_gkMeContact;
- (id)_gkSyncAndCollectHandlesForContacts:(id)contacts updateExistingEntries:(BOOL)entries meContactID:(id)d context:(id)context;
- (void)_gkSyncAllContactsWithMeContactID:(id)d playerProvider:(id)provider batchSize:(unint64_t)size;
- (void)_gkSyncContactsWithChangeHistoryToken:(id)token playerProvider:(id)provider batchSize:(unint64_t)size changeHistoryLimit:(unint64_t)limit cachedListVersion:(signed __int16)version;
- (void)_gkSyncWithBatchOfContactIDs:(id)ds playerProvider:(id)provider meContactID:(id)d commandBatcher:(id)batcher;
- (void)_gkSyncWithChangeHistoryResult:(id)result playerProvider:(id)provider meContactID:(id)d batchSize:(unint64_t)size;
@end

@implementation CNContactStore

- (id)_gkContactKeysToFetch
{
  v2 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v5[0] = v2;
  v5[1] = CNContactIdentifierKey;
  v5[2] = CNContactEmailAddressesKey;
  v5[3] = CNContactPhoneNumbersKey;
  v5[4] = CNContactGivenNameKey;
  v5[5] = CNContactFamilyNameKey;
  v5[6] = CNContactNamePrefixKey;
  v5[7] = CNContactNameSuffixKey;
  v5[8] = CNContactTypeKey;
  v3 = [NSArray arrayWithObjects:v5 count:9];

  return v3;
}

- (void)_gkSyncContactsWithChangeHistoryToken:(id)token playerProvider:(id)provider batchSize:(unint64_t)size changeHistoryLimit:(unint64_t)limit cachedListVersion:(signed __int16)version
{
  tokenCopy = token;
  providerCopy = provider;
  _gkMeContact = [(CNContactStore *)self _gkMeContact];
  identifier = [_gkMeContact identifier];

  v15 = +[GKDataRequestManager sharedManager];
  v16 = [NSString stringWithFormat:@"%s:%d %s", "CNContactStore+GKAdditions.m", 62, "[CNContactStore(GKAdditions) _gkSyncContactsWithChangeHistoryToken:playerProvider:batchSize:changeHistoryLimit:cachedListVersion:]"];
  v17 = [GKDispatchGroup dispatchGroupWithName:v16];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100177E00;
  v39[3] = &unk_100360FF0;
  v18 = v15;
  v40 = v18;
  v41 = @"contactsSync";
  [v17 perform:v39];
  [v17 wait];
  if (tokenCopy)
  {
    v36 = providerCopy;
    sizeCopy = size;
    v20 = [(CNContactStore *)self _gkChangeHistoryRequestWithToken:tokenCopy];
    v38 = 0;
    v21 = [(CNContactStore *)self countForFetchRequest:v20 error:&v38];
    v22 = v38;

    if (v21 && !v22)
    {
      value = [v21 value];
      integerValue = [value integerValue];

      if (integerValue < limit)
      {
        v25 = [(CNContactStore *)self _gkChangeHistoryRequestWithToken:tokenCopy];
        v37 = 0;
        v26 = [(CNContactStore *)self enumeratorForChangeHistoryFetchRequest:v25 error:&v37];
        v27 = v37;
        v35 = v26;
        value2 = [v26 value];

        if (!value2 || v27)
        {
          v29 = v27;
          v34 = v25;
          if (!os_log_GKGeneral)
          {
            v32 = GKOSLoggers();
          }

          v33 = sizeCopy;
          v30 = v35;
          if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
          {
            sub_10029421C();
          }

          providerCopy = v36;
          [(CNContactStore *)self _gkSyncAllContactsWithMeContactID:identifier playerProvider:v36 batchSize:v33];
          v25 = v34;
        }

        else
        {
          v29 = 0;
          v30 = v35;
          providerCopy = v36;
          [CNContactStore _gkSyncWithChangeHistoryResult:"_gkSyncWithChangeHistoryResult:playerProvider:meContactID:batchSize:" playerProvider:v35 meContactID:? batchSize:?];
        }

        [v18 endTransaction:@"contactsSync"];

        v22 = 0;
        goto LABEL_16;
      }

      v22 = 0;
    }

    size = sizeCopy;
    providerCopy = v36;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  if (!os_log_GKGeneral)
  {
    v31 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
  {
    sub_100294284();
  }

  [(CNContactStore *)self _gkSyncAllContactsWithMeContactID:identifier playerProvider:providerCopy batchSize:size];
  [v18 endTransaction:@"contactsSync"];
LABEL_16:
}

- (id)_gkChangeHistoryRequestWithToken:(id)token
{
  tokenCopy = token;
  v5 = objc_alloc_init(CNChangeHistoryFetchRequest);
  [v5 setShouldUnifyResults:1];
  _gkContactKeysToFetch = [(CNContactStore *)self _gkContactKeysToFetch];
  [v5 setAdditionalContactKeyDescriptors:_gkContactKeysToFetch];

  [v5 setStartingToken:tokenCopy];

  return v5;
}

- (void)_gkSyncWithChangeHistoryResult:(id)result playerProvider:(id)provider meContactID:(id)d batchSize:(unint64_t)size
{
  resultCopy = result;
  providerCopy = provider;
  dCopy = d;
  value = [resultCopy value];
  v13 = [GKContactsCacheUpdateFinishedCommand alloc];
  currentHistoryToken = [resultCopy currentHistoryToken];
  v15 = [(GKContactsCacheUpdateFinishedCommand *)v13 initWithChangeHistoryToken:currentHistoryToken];

  v16 = [[GKContactsChangedCommandBatcher alloc] initWithPlayerProvider:providerCopy meContactID:dCopy batchSize:size finishedCommand:v15];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = value;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v23 + 1) + 8 * v21) acceptEventVisitor:{v16, v23}];
        error = [(GKContactsChangedCommandBatcher *)v16 error];

        if (error)
        {

          goto LABEL_11;
        }

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  [(GKContactsChangedCommandBatcher *)v16 finish];
LABEL_11:
}

- (id)_gkMeContact
{
  v20 = CNContactIdentifierKey;
  v3 = [NSArray arrayWithObjects:&v20 count:1];
  v19 = 0;
  v4 = [(CNContactStore *)self _crossPlatformUnifiedMeContactWithKeysToFetch:v3 error:&v19];
  v5 = v19;

  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002942EC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100294324(v5, v16);
    }

    v17 = 0;
  }

  else
  {
    v17 = v4;
  }

  return v17;
}

- (void)_gkSyncAllContactsWithMeContactID:(id)d playerProvider:(id)provider batchSize:(unint64_t)size
{
  dCopy = d;
  providerCopy = provider;
  v9 = objc_autoreleasePoolPush();
  localPlayerCacheGroup = [providerCopy localPlayerCacheGroup];
  context = [localPlayerCacheGroup context];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100178684;
  v52[3] = &unk_100361770;
  v53 = localPlayerCacheGroup;
  v12 = localPlayerCacheGroup;
  [context performBlockAndWait:v52];

  objc_autoreleasePoolPop(v9);
  v13 = [CNContactFetchRequest alloc];
  v55 = CNContactIdentifierKey;
  v14 = [NSArray arrayWithObjects:&v55 count:1];
  v15 = [v13 initWithKeysToFetch:v14];

  v51 = 0;
  v16 = [(CNContactStore *)self enumeratorForContactFetchRequest:v15 error:&v51];
  v17 = v51;
  if (v17 || !v16)
  {
    if (!os_log_GKGeneral)
    {
      v32 = GKOSLoggers();
    }

    v33 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10029439C(v33, v34, v35, v36, v37, v38, v39, v40);
    }

    if (!os_log_GKGeneral)
    {
      v41 = GKOSLoggers();
    }

    v42 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_1002943D4(v17, v42);
    }
  }

  else
  {
    v45 = v15;
    v18 = [GKContactsCacheUpdateFinishedCommand alloc];
    currentHistoryToken = [v16 currentHistoryToken];
    v20 = [(GKContactsCacheUpdateFinishedCommand *)v18 initWithChangeHistoryToken:currentHistoryToken];

    v43 = v20;
    v21 = [[GKContactsChangedCommandBatcher alloc] initWithPlayerProvider:providerCopy meContactID:dCopy batchSize:size finishedCommand:v20];
    v22 = [[NSMutableArray alloc] initWithCapacity:size];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = v16;
    value = [v16 value];
    v24 = [value countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v48;
      while (2)
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v48 != v26)
          {
            objc_enumerationMutation(value);
          }

          identifier = [*(*(&v47 + 1) + 8 * i) identifier];
          [v22 addObject:identifier];

          if ([v22 count] >= size)
          {
            v29 = [v22 copy];
            [(CNContactStore *)self _gkSyncWithBatchOfContactIDs:v29 playerProvider:providerCopy meContactID:dCopy commandBatcher:v21];

            [v22 removeAllObjects];
            error = [(GKContactsChangedCommandBatcher *)v21 error];

            if (error)
            {

              goto LABEL_22;
            }
          }
        }

        v25 = [value countByEnumeratingWithState:&v47 objects:v54 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v31 = [v22 copy];
    [(CNContactStore *)self _gkSyncWithBatchOfContactIDs:v31 playerProvider:providerCopy meContactID:dCopy commandBatcher:v21];

    [(GKContactsChangedCommandBatcher *)v21 finish];
LABEL_22:

    v16 = v44;
    v15 = v45;
    v17 = 0;
  }
}

- (id)_gkContactsWithContactIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = [CNContactFetchRequest alloc];
    _gkContactKeysToFetch = [(CNContactStore *)self _gkContactKeysToFetch];
    v7 = [v5 initWithKeysToFetch:_gkContactKeysToFetch];

    v8 = [CNContact predicateForContactsWithIdentifiers:dsCopy];
    [v7 setPredicate:v8];

    v26 = 0;
    v9 = [(CNContactStore *)self enumeratorForContactFetchRequest:v7 error:&v26];
    v10 = v26;
    value = [v9 value];

    if (!value || v10)
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10029444C(v16, v17, v18, v19, v20, v21, v22, v23);
      }

      if (!os_log_GKGeneral)
      {
        v24 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
      {
        sub_100294484();
      }

      value2 = 0;
    }

    else
    {
      value2 = [v9 value];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No contactIDs to sync during this batch, skipping.", buf, 2u);
    }

    value2 = 0;
  }

  return value2;
}

- (void)_gkSyncWithBatchOfContactIDs:(id)ds playerProvider:(id)provider meContactID:(id)d commandBatcher:(id)batcher
{
  dCopy = d;
  batcherCopy = batcher;
  providerCopy = provider;
  v13 = [(CNContactStore *)self _gkContactsWithContactIDs:ds];
  localPlayerCacheGroup = [providerCopy localPlayerCacheGroup];

  context = [localPlayerCacheGroup context];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100178A4C;
  v20[3] = &unk_100362008;
  v21 = v13;
  v22 = dCopy;
  v23 = batcherCopy;
  v24 = localPlayerCacheGroup;
  v16 = localPlayerCacheGroup;
  v17 = batcherCopy;
  v18 = dCopy;
  v19 = v13;
  [context performBlockAndWait:v20];
}

- (id)_gkSyncAndCollectHandlesForContacts:(id)contacts updateExistingEntries:(BOOL)entries meContactID:(id)d context:(id)context
{
  contactsCopy = contacts;
  dCopy = d;
  contextCopy = context;
  v33 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [contactsCopy count]);
  v32 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [contactsCopy count]);
  if (entries)
  {
    v11 = 0;
  }

  else
  {
    v12 = [contactsCopy _gkDistinctValuesForKeyPath:@"identifier"];
    v13 = [NSPredicate predicateWithFormat:@"contactID in %@", v12];
    v14 = [GKCDContactInfo _gkObjectsMatchingPredicate:v13 withContext:contextCopy];
    v11 = [v14 _gkDistinctValuesForKeyPath:@"contactID"];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = contactsCopy;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        identifier = [v20 identifier];
        v22 = [v11 containsObject:identifier];

        if (v22)
        {
          _gkAllHandles = [v20 _gkAllHandles];
          [v33 unionSet:_gkAllHandles];
        }

        else
        {
          _gkAllHandles = [[GKContactsChangedAddOrUpdateCommand alloc] initWithContact:v20 meContactID:dCopy];
          v24 = contextCopy;
          v25 = [(GKContactsChangedAddOrUpdateCommand *)_gkAllHandles executeWithContext:contextCopy];
          if ([v25 count])
          {
            [v32 unionSet:v25];
          }

          else
          {
            if (!os_log_GKGeneral)
            {
              v26 = GKOSLoggers();
            }

            v27 = os_log_GKContacts;
            if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
            {
              sub_1002944EC(v39, v27, v20, &v40);
            }

            _gkAllHandles2 = [v20 _gkAllHandles];
            [v32 unionSet:_gkAllHandles2];
          }

          contextCopy = v24;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v17);
  }

  if ([v32 count])
  {
    v29 = objc_alloc_init(GKContactsCacheUpdateBatchEndCommand);
    [(GKContactsCacheUpdateBatchEndCommand *)v29 executeWithHandles:v32 context:contextCopy];
  }

  [v33 unionSet:v32];
  v30 = [v33 copy];

  return v30;
}

@end