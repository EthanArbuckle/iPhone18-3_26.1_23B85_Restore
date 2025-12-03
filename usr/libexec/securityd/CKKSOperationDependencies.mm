@interface CKKSOperationDependencies
- (BOOL)considerSelfTrusted:(id)trusted error:(id *)error;
- (BOOL)intransactionCKWriteFailed:(id)failed attemptedRecordsChanged:(id)changed;
- (CKKSOperationDependencies)initWithViewStates:(id)states contextID:(id)d activeAccount:(id)account ckdatabase:(id)ckdatabase cloudKitClassDependencies:(id)dependencies ckoperationGroup:(id)group flagHandler:(id)handler overallLaunch:(id)self0 accountStateTracker:(id)self1 lockStateTracker:(id)self2 reachabilityTracker:(id)self3 peerProviders:(id)self4 databaseProvider:(id)self5 savedTLKNotifier:(id)self6 personaAdapter:(id)self7 sendMetric:(BOOL)self8;
- (NSSet)activeManagedViews;
- (NSSet)allCKKSManagedViews;
- (NSSet)allExternalManagedViews;
- (NSSet)views;
- (id)currentTrustStates;
- (id)keychainMusrForCurrentAccount;
- (id)readyAndSyncingViews;
- (id)viewNameForItem:(SecDbItem *)item;
- (id)viewStateForName:(id)name;
- (id)viewStatesByNames:(id)names;
- (id)viewsInState:(id)state;
- (void)applyNewSyncingPolicy:(id)policy viewStates:(id)states;
- (void)inspectErrorForRetryAfter:(id)after;
- (void)limitOperationToPriorityViews;
- (void)operateOnAllViews;
- (void)operateOnSelectViews:(id)views;
- (void)provideKeySets:(id)sets;
- (void)setStateForActiveCKKSManagedViews:(id)views;
- (void)setStateForActiveExternallyManagedViews:(id)views;
- (void)setStateForActiveZones:(id)zones;
- (void)setStateForAllViews:(id)views;
@end

@implementation CKKSOperationDependencies

- (NSSet)allCKKSManagedViews
{
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allViews = [(CKKSOperationDependencies *)self allViews];
  v5 = [allViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allViews);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 ckksManagedView])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)inspectErrorForRetryAfter:(id)after
{
  afterCopy = after;
  CKRetryAfterSecondsForError();
  if (v5 != 0.0)
  {
    v6 = v5;
    v7 = 1000000000 * v5;
    v8 = sub_100019104(@"ckkszonemodifier", 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      v11 = v6;
      v12 = 2112;
      v13 = afterCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CK operation failed with rate-limit, scheduling delay for %.1f seconds: %@", &v10, 0x16u);
    }

    cloudkitRetryAfter = [(CKKSOperationDependencies *)self cloudkitRetryAfter];
    [cloudkitRetryAfter waitUntil:v7];
  }
}

- (id)keychainMusrForCurrentAccount
{
  activeAccount = [(CKKSOperationDependencies *)self activeAccount];
  personaUniqueString = [activeAccount personaUniqueString];

  if (personaUniqueString)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:personaUniqueString];
    v5 = v4;
    if (v4)
    {
      v9[0] = 0xAAAAAAAAAAAAAAAALL;
      v9[1] = 0xAAAAAAAAAAAAAAAALL;
      [v4 getUUIDBytes:v9];
      v6 = [NSData dataWithBytes:v9 length:16];
    }

    else
    {
      v6 = [personaUniqueString dataUsingEncoding:4];
    }

    v7 = v6;
  }

  else
  {
    if (qword_10039DFD8 != -1)
    {
      dispatch_once(&qword_10039DFD8, &stru_100338EF0);
    }

    v7 = CFRetain(qword_10039DFE0);
  }

  return v7;
}

- (id)viewNameForItem:(SecDbItem *)item
{
  cf = 0;
  v5 = sub_10001B350(item, 0x10000, 0, &cf);
  v6 = v5;
  if (cf)
  {
    v7 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = cf;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Couldn't fetch attributes from item: %@", buf, 0xCu);
    }

    v8 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v8);
    }

    v9 = 0;
  }

  else
  {
    [(__CFDictionary *)v5 setObject:item->var1->var0 forKeyedSubscript:kSecClass];
    syncingPolicy = [(CKKSOperationDependencies *)self syncingPolicy];
    v9 = [syncingPolicy mapDictionaryToView:v6];

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        syncingPolicy2 = [(CKKSOperationDependencies *)self syncingPolicy];
        *buf = 138412547;
        v17 = syncingPolicy2;
        v18 = 2113;
        itemCopy = item;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No view returned from policy (%@): %{private}@", buf, 0x16u);
      }
    }
  }

  return v9;
}

- (BOOL)intransactionCKWriteFailed:(id)failed attemptedRecordsChanged:(id)changed
{
  failedCopy = failed;
  changedCopy = changed;
  userInfo = [failedCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  domain = [failedCopy domain];
  if (![domain isEqual:?] || objc_msgSend(failedCopy, "code") != 2)
  {

    goto LABEL_23;
  }

  if (!v7)
  {
LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  v68 = failedCopy;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  allValues = [v7 allValues];
  v10 = [allValues countByEnumeratingWithState:&v85 objects:v97 count:16];
  v76 = v7;
  if (!v10)
  {

    goto LABEL_26;
  }

  v11 = v10;
  v12 = *v86;
  v13 = 1;
  do
  {
    v14 = 0;
    do
    {
      if (*v86 != v12)
      {
        objc_enumerationMutation(allValues);
      }

      v15 = *(*(&v85 + 1) + 8 * v14);
      domain2 = [v15 domain];
      if (![domain2 isEqual:CKErrorDomain])
      {

LABEL_14:
        v13 = 0;
        goto LABEL_15;
      }

      if ([v15 code] == 22 || objc_msgSend(v15, "code") == 14)
      {

        goto LABEL_15;
      }

      code = [v15 code];

      if (code != 11)
      {
        goto LABEL_14;
      }

LABEL_15:
      v14 = v14 + 1;
    }

    while (v11 != v14);
    v18 = [allValues countByEnumeratingWithState:&v85 objects:v97 count:16];
    v11 = v18;
  }

  while (v18);

  if ((v13 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_26:
  v21 = sub_100019104(@"ckks", 0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received a ServerRecordChanged error, attempting to update new records and delete unknown ones", buf, 2u);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  allKeys = [v7 allKeys];
  v23 = [allKeys countByEnumeratingWithState:&v81 objects:v96 count:16];
  if (!v23)
  {

    goto LABEL_50;
  }

  v24 = v23;
  v25 = 0;
  v26 = *v82;
  while (2)
  {
    v27 = 0;
    v73 = v24;
    while (2)
    {
      if (*v82 != v26)
      {
        objc_enumerationMutation(allKeys);
      }

      v28 = *(*(&v81 + 1) + 8 * v27);
      v29 = [v7 objectForKeyedSubscript:v28];
      domain3 = [v29 domain];
      if ([domain3 isEqual:CKErrorDomain])
      {
        code2 = [v29 code];

        if (code2 == 14)
        {
          userInfo2 = [v29 userInfo];
          domain4 = [userInfo2 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

          zoneID = [v28 zoneID];
          zoneName = [zoneID zoneName];
          v36 = sub_100019104(@"ckks", zoneName);

          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v90 = domain4;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "On error: updating our idea of: %@", buf, 0xCu);
          }

          v25 |= [(CKKSOperationDependencies *)self intransactionCKRecordChanged:domain4 resync:1];
          goto LABEL_44;
        }
      }

      else
      {
      }

      domain4 = [v29 domain];
      if (![domain4 isEqual:CKErrorDomain])
      {
        goto LABEL_44;
      }

      code3 = [v29 code];

      if (code3 == 11)
      {
        v38 = v26;
        v39 = allKeys;
        domain4 = [changedCopy objectForKeyedSubscript:v28];
        zoneID2 = [v28 zoneID];
        zoneName2 = [zoneID2 zoneName];
        v42 = sub_100019104(@"ckks", zoneName2);

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v90 = v28;
          v91 = 2112;
          v92 = domain4;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "On error: handling an unexpected delete of: %@ %@", buf, 0x16u);
        }

        recordType = [domain4 recordType];
        v25 |= [(CKKSOperationDependencies *)self intransactionCKRecordDeleted:v28 recordType:recordType resync:1];

        allKeys = v39;
        v26 = v38;
        v24 = v73;
LABEL_44:
      }

      v27 = v27 + 1;
      v7 = v76;
      if (v24 != v27)
      {
        continue;
      }

      break;
    }

    v24 = [allKeys countByEnumeratingWithState:&v81 objects:v96 count:16];
    if (v24)
    {
      continue;
    }

    break;
  }

  if (v25)
  {
    flagHandler = [(CKKSOperationDependencies *)self flagHandler];
    [flagHandler _onqueueHandleFlag:@"process_incoming_queue"];

    v19 = 1;
    goto LABEL_79;
  }

LABEL_50:
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [v7 allKeys];
  v75 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
  if (!v75)
  {
    goto LABEL_78;
  }

  v74 = *v78;
  v70 = CKUnderlyingErrorDomain;
  while (2)
  {
    v45 = 0;
    while (2)
    {
      if (*v78 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v46 = *(*(&v77 + 1) + 8 * v45);
      v47 = [v7 objectForKeyedSubscript:v46];
      userInfo3 = [v47 userInfo];
      v49 = [userInfo3 objectForKeyedSubscript:NSUnderlyingErrorKey];

      userInfo4 = [v49 userInfo];
      v51 = [userInfo4 objectForKeyedSubscript:NSUnderlyingErrorKey];

      zoneID3 = [v46 zoneID];
      zoneName3 = [zoneID3 zoneName];
      v54 = sub_100019104(@"ckks", zoneName3);

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v90 = v47;
        v91 = 2112;
        v92 = v49;
        v93 = 2112;
        v94 = v51;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Examining 'write failed' error: %@ %@ %@", buf, 0x20u);
      }

      domain5 = [v47 domain];
      if (!-[NSObject isEqualToString:](domain5, "isEqualToString:", CKErrorDomain) || [v47 code] != 15 || !v49)
      {
        goto LABEL_68;
      }

      domain6 = [v49 domain];
      if (![domain6 isEqualToString:v70] || objc_msgSend(v49, "code") != 6000 || !v51)
      {

        goto LABEL_68;
      }

      domain7 = [v51 domain];
      v58 = [domain7 isEqualToString:@"CloudkitKeychainService"];

      if (v58)
      {
        if ([v51 code] == 9)
        {
          zoneID4 = [v46 zoneID];
          zoneName4 = [zoneID4 zoneName];
          domain5 = sub_100019104(@"ckks", zoneName4);

          if (os_log_type_enabled(domain5, OS_LOG_TYPE_ERROR))
          {
LABEL_73:
            *buf = 138412546;
            v90 = v51;
            v91 = 2112;
            v92 = v46;
            _os_log_impl(&_mh_execute_header, domain5, OS_LOG_TYPE_ERROR, "CKKS Server extension has told us about %@ for record %@; requesting refetch and reprocess of key hierarchy", buf, 0x16u);
          }

LABEL_74:

          currentFetchReasons = [(CKKSOperationDependencies *)self currentFetchReasons];
          [currentFetchReasons addObject:@"keyhierarchy"];

          currentFetchReasons2 = [(CKKSOperationDependencies *)self currentFetchReasons];
          [currentFetchReasons2 addObject:@"conflict"];

          domain5 = [(CKKSOperationDependencies *)self flagHandler];
          [domain5 _onqueueHandleFlag:@"fetch_requested"];
        }

        else
        {
          code4 = [v51 code];
          zoneID5 = [v46 zoneID];
          zoneName5 = [zoneID5 zoneName];
          domain5 = sub_100019104(@"ckks", zoneName5);

          v64 = os_log_type_enabled(domain5, OS_LOG_TYPE_ERROR);
          if (code4 == 2)
          {
            if (v64)
            {
              goto LABEL_73;
            }

            goto LABEL_74;
          }

          if (v64)
          {
            *buf = 138412546;
            v90 = v51;
            v91 = 2112;
            v92 = v46;
            _os_log_impl(&_mh_execute_header, domain5, OS_LOG_TYPE_ERROR, "CKKS Server extension has told us about %@ for record %@, but we don't currently handle this error", buf, 0x16u);
          }
        }

LABEL_68:
      }

      v45 = v45 + 1;
      v7 = v76;
      if (v75 != v45)
      {
        continue;
      }

      break;
    }

    v67 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
    v75 = v67;
    if (v67)
    {
      continue;
    }

    break;
  }

LABEL_78:

  v19 = 0;
LABEL_79:
  failedCopy = v68;
LABEL_24:

  return v19;
}

- (void)provideKeySets:(id)sets
{
  setsCopy = sets;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [setsCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [setsCopy objectForKeyedSubscript:v9];
        zoneName = [v9 zoneName];
        v12 = sub_100019104(@"ckkskey", zoneName);

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Providing keyset (%@) to listeners", buf, 0xCu);
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  keysetProviderOperations = [(CKKSOperationDependencies *)self keysetProviderOperations];
  v14 = [keysetProviderOperations countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(keysetProviderOperations);
        }

        [*(*(&v19 + 1) + 8 * j) provideKeySets:setsCopy];
      }

      v15 = [keysetProviderOperations countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }
}

- (BOOL)considerSelfTrusted:(id)trusted error:(id *)error
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  trustedCopy = trusted;
  v6 = [trustedCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v20;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(trustedCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * v9);
        if ([v11 essential])
        {
          currentSelfPeersError = [v11 currentSelfPeersError];
          v13 = currentSelfPeersError;
          if (currentSelfPeersError)
          {
            currentTrustedPeersError = currentSelfPeersError;
          }

          else
          {
            currentTrustedPeersError = [v11 currentTrustedPeersError];
          }

          v7 = currentTrustedPeersError;

          if ([v11 essential])
          {
            currentSelfPeersError2 = [v11 currentSelfPeersError];
            if (currentSelfPeersError2)
            {
            }

            else
            {
              currentTrustedPeersError2 = [v11 currentTrustedPeersError];

              if (!currentTrustedPeersError2)
              {

                LOBYTE(v6) = 1;
                goto LABEL_24;
              }
            }
          }

          v10 = v7;
        }

        else
        {
          v7 = v10;
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [trustedCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    if (error && v7)
    {
      v17 = v7;
      LOBYTE(v6) = 0;
      *error = v7;
    }

    v10 = v7;
  }

  else
  {

    v10 = 0;
  }

LABEL_24:

  return v6;
}

- (id)currentTrustStates
{
  peerProviders = [(CKKSOperationDependencies *)self peerProviders];
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = peerProviders;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
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
        v10 = sub_100019104(@"ckks", 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching account keys for provider %@", buf, 0xCu);
        }

        currentState = [v9 currentState];
        [v3 addObject:currentState];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)applyNewSyncingPolicy:(id)policy viewStates:(id)states
{
  policyCopy = policy;
  statesCopy = states;
  selfCopy = self;
  [(CKKSOperationDependencies *)self setSyncingPolicy:policyCopy];
  v8 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = statesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        priorityViews = [policyCopy priorityViews];
        zoneName = [v14 zoneName];
        v17 = [priorityViews containsObject:zoneName];

        if (v17)
        {
          [v8 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  [(CKKSOperationDependencies *)selfCopy setAllPriorityViews:v8];
  [(CKKSOperationDependencies *)selfCopy setAllViews:v9];
  [(CKKSOperationDependencies *)selfCopy setViewsOverride:0];
}

- (id)readyAndSyncingViews
{
  v17 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  views = [(CKKSOperationDependencies *)self views];
  v4 = [views countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(views);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 ckksManagedView])
        {
          syncingPolicy = [(CKKSOperationDependencies *)self syncingPolicy];
          zoneID = [v8 zoneID];
          zoneName = [zoneID zoneName];
          if ([syncingPolicy isSyncingEnabledForView:zoneName])
          {
            [v8 viewKeyHierarchyState];
            v12 = v6;
            v13 = views;
            v15 = v14 = self;
            v18 = [v15 isEqualToString:@"ready"];

            self = v14;
            views = v13;
            v6 = v12;

            if (v18)
            {
              [v17 addObject:v8];
            }
          }

          else
          {
          }
        }
      }

      v5 = [views countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  return v17;
}

- (id)viewStateForName:(id)name
{
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allViews = [(CKKSOperationDependencies *)self allViews];
  v6 = [allViews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allViews);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        zoneID = [v9 zoneID];
        zoneName = [zoneID zoneName];
        v12 = [zoneName isEqualToString:nameCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allViews countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)viewStatesByNames:(id)names
{
  namesCopy = names;
  v5 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  views = [(CKKSOperationDependencies *)self views];
  v7 = [views countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(views);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        zoneID = [v11 zoneID];
        zoneName = [zoneID zoneName];
        v14 = [namesCopy containsObject:zoneName];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [views countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)viewsInState:(id)state
{
  stateCopy = state;
  v5 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  views = [(CKKSOperationDependencies *)self views];
  v7 = [views countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(views);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        viewKeyHierarchyState = [v11 viewKeyHierarchyState];
        v13 = [viewKeyHierarchyState isEqualToString:stateCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [views countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)limitOperationToPriorityViews
{
  [(CKKSOperationDependencies *)self setLimitOperationToPriorityViewsSet:1];
  v3 = sub_100019104(@"ckksviews", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    views = [(CKKSOperationDependencies *)self views];
    v5 = 138412290;
    v6 = views;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Limited view operation to priority views %@", &v5, 0xCu);
  }
}

- (void)operateOnAllViews
{
  [(CKKSOperationDependencies *)self setViewsOverride:0];
  [(CKKSOperationDependencies *)self setLimitOperationToPriorityViewsSet:0];
  v3 = sub_100019104(@"ckksviews", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    views = [(CKKSOperationDependencies *)self views];
    v5 = 138412290;
    v6 = views;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Expanded view operation to %@", &v5, 0xCu);
  }
}

- (void)operateOnSelectViews:(id)views
{
  viewsCopy = views;
  [(CKKSOperationDependencies *)self setViewsOverride:viewsCopy];
  v5 = sub_100019104(@"ckksviews", 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    views = [(CKKSOperationDependencies *)self views];
    v7 = 138412290;
    v8 = views;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Limited view operation to %@", &v7, 0xCu);
  }
}

- (void)setStateForAllViews:(id)views
{
  viewsCopy = views;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allViews = [(CKKSOperationDependencies *)self allViews];
  v6 = [allViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allViews);
        }

        [*(*(&v10 + 1) + 8 * v9) setViewKeyHierarchyState:viewsCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setStateForActiveExternallyManagedViews:(id)views
{
  viewsCopy = views;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  views = [(CKKSOperationDependencies *)self views];
  v6 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(views);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 ckksManagedView] & 1) == 0)
        {
          [v10 setViewKeyHierarchyState:viewsCopy];
        }
      }

      v7 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setStateForActiveCKKSManagedViews:(id)views
{
  viewsCopy = views;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  views = [(CKKSOperationDependencies *)self views];
  v6 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(views);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 ckksManagedView])
        {
          [v10 setViewKeyHierarchyState:viewsCopy];
        }
      }

      v7 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setStateForActiveZones:(id)zones
{
  zonesCopy = zones;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  views = [(CKKSOperationDependencies *)self views];
  v6 = [views countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(views);
        }

        [*(*(&v10 + 1) + 8 * v9) setViewKeyHierarchyState:zonesCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [views countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (NSSet)allExternalManagedViews
{
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allViews = [(CKKSOperationDependencies *)self allViews];
  v5 = [allViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allViews);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 ckksManagedView] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)activeManagedViews
{
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  views = [(CKKSOperationDependencies *)self views];
  v5 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(views);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 ckksManagedView])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)views
{
  viewsOverride = [(CKKSOperationDependencies *)self viewsOverride];

  if (viewsOverride)
  {
    viewsOverride2 = [(CKKSOperationDependencies *)self viewsOverride];
  }

  else
  {
    if ([(CKKSOperationDependencies *)self limitOperationToPriorityViewsSet])
    {
      [(CKKSOperationDependencies *)self allPriorityViews];
    }

    else
    {
      [(CKKSOperationDependencies *)self allViews];
    }
    viewsOverride2 = ;
  }

  return viewsOverride2;
}

- (CKKSOperationDependencies)initWithViewStates:(id)states contextID:(id)d activeAccount:(id)account ckdatabase:(id)ckdatabase cloudKitClassDependencies:(id)dependencies ckoperationGroup:(id)group flagHandler:(id)handler overallLaunch:(id)self0 accountStateTracker:(id)self1 lockStateTracker:(id)self2 reachabilityTracker:(id)self3 peerProviders:(id)self4 databaseProvider:(id)self5 savedTLKNotifier:(id)self6 personaAdapter:(id)self7 sendMetric:(BOOL)self8
{
  statesCopy = states;
  dCopy = d;
  accountCopy = account;
  ckdatabaseCopy = ckdatabase;
  dependenciesCopy = dependencies;
  dependenciesCopy2 = dependencies;
  groupCopy = group;
  handlerCopy = handler;
  launchCopy = launch;
  trackerCopy = tracker;
  stateTrackerCopy = stateTracker;
  reachabilityTrackerCopy = reachabilityTracker;
  providersCopy = providers;
  providerCopy = provider;
  notifierCopy = notifier;
  adapterCopy = adapter;
  v52.receiver = self;
  v52.super_class = CKKSOperationDependencies;
  v24 = [(CKKSOperationDependencies *)&v52 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_allViews, states);
    objc_storeStrong(&v25->_ckdatabase, ckdatabase);
    objc_storeStrong(&v25->_cloudKitClassDependencies, dependenciesCopy);
    objc_storeStrong(&v25->_ckoperationGroup, group);
    objc_storeStrong(&v25->_flagHandler, handler);
    objc_storeStrong(&v25->_overallLaunch, launch);
    objc_storeStrong(&v25->_accountStateTracker, tracker);
    objc_storeStrong(&v25->_lockStateTracker, stateTracker);
    objc_storeStrong(&v25->_reachabilityTracker, reachabilityTracker);
    objc_storeStrong(&v25->_peerProviders, providers);
    objc_storeStrong(&v25->_databaseProvider, provider);
    objc_storeStrong(&v25->_savedTLKNotifier, notifier);
    objc_storeStrong(&v25->_contextID, d);
    objc_storeStrong(&v25->_activeAccount, account);
    currentOutgoingQueueOperationGroup = v25->_currentOutgoingQueueOperationGroup;
    v25->_currentOutgoingQueueOperationGroup = 0;

    requestPolicyCheck = v25->_requestPolicyCheck;
    v25->_requestPolicyCheck = 0;

    v28 = +[NSHashTable weakObjectsHashTable];
    keysetProviderOperations = v25->_keysetProviderOperations;
    v25->_keysetProviderOperations = v28;

    v30 = +[NSMutableSet set];
    currentFetchReasons = v25->_currentFetchReasons;
    v25->_currentFetchReasons = v30;

    v25->_limitOperationToPriorityViewsSet = 0;
    objc_storeStrong(&v25->_personaAdapter, adapter);
    v25->_sendMetric = metric;
    v32 = [[CKKSNearFutureScheduler alloc] initWithName:@"zonemodifier-ckretryafter" initialDelay:100000000 exponentialBackoff:100000000 maximumDelay:0 keepProcessAlive:1005 dependencyDescriptionCode:25 qosClass:1.0 block:&stru_100336EF8];
    cloudkitRetryAfter = v25->_cloudkitRetryAfter;
    v25->_cloudkitRetryAfter = v32;
  }

  return v25;
}

@end