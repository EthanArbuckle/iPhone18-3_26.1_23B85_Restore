@interface CKKSOperationDependencies
- (BOOL)considerSelfTrusted:(id)a3 error:(id *)a4;
- (BOOL)intransactionCKWriteFailed:(id)a3 attemptedRecordsChanged:(id)a4;
- (CKKSOperationDependencies)initWithViewStates:(id)a3 contextID:(id)a4 activeAccount:(id)a5 ckdatabase:(id)a6 cloudKitClassDependencies:(id)a7 ckoperationGroup:(id)a8 flagHandler:(id)a9 overallLaunch:(id)a10 accountStateTracker:(id)a11 lockStateTracker:(id)a12 reachabilityTracker:(id)a13 peerProviders:(id)a14 databaseProvider:(id)a15 savedTLKNotifier:(id)a16 personaAdapter:(id)a17 sendMetric:(BOOL)a18;
- (NSSet)activeManagedViews;
- (NSSet)allCKKSManagedViews;
- (NSSet)allExternalManagedViews;
- (NSSet)views;
- (id)currentTrustStates;
- (id)keychainMusrForCurrentAccount;
- (id)readyAndSyncingViews;
- (id)viewNameForItem:(SecDbItem *)a3;
- (id)viewStateForName:(id)a3;
- (id)viewStatesByNames:(id)a3;
- (id)viewsInState:(id)a3;
- (void)applyNewSyncingPolicy:(id)a3 viewStates:(id)a4;
- (void)inspectErrorForRetryAfter:(id)a3;
- (void)limitOperationToPriorityViews;
- (void)operateOnAllViews;
- (void)operateOnSelectViews:(id)a3;
- (void)provideKeySets:(id)a3;
- (void)setStateForActiveCKKSManagedViews:(id)a3;
- (void)setStateForActiveExternallyManagedViews:(id)a3;
- (void)setStateForActiveZones:(id)a3;
- (void)setStateForAllViews:(id)a3;
@end

@implementation CKKSOperationDependencies

- (NSSet)allCKKSManagedViews
{
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(CKKSOperationDependencies *)self allViews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 ckksManagedView])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)inspectErrorForRetryAfter:(id)a3
{
  v4 = a3;
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
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CK operation failed with rate-limit, scheduling delay for %.1f seconds: %@", &v10, 0x16u);
    }

    v9 = [(CKKSOperationDependencies *)self cloudkitRetryAfter];
    [v9 waitUntil:v7];
  }
}

- (id)keychainMusrForCurrentAccount
{
  v2 = [(CKKSOperationDependencies *)self activeAccount];
  v3 = [v2 personaUniqueString];

  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
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
      v6 = [v3 dataUsingEncoding:4];
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

- (id)viewNameForItem:(SecDbItem *)a3
{
  cf = 0;
  v5 = sub_10001B350(a3, 0x10000, 0, &cf);
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
    [(__CFDictionary *)v5 setObject:a3->var1->var0 forKeyedSubscript:kSecClass];
    v10 = [(CKKSOperationDependencies *)self syncingPolicy];
    v9 = [v10 mapDictionaryToView:v6];

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(CKKSOperationDependencies *)self syncingPolicy];
        *buf = 138412547;
        v17 = v13;
        v18 = 2113;
        v19 = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No view returned from policy (%@): %{private}@", buf, 0x16u);
      }
    }
  }

  return v9;
}

- (BOOL)intransactionCKWriteFailed:(id)a3 attemptedRecordsChanged:(id)a4
{
  v5 = a3;
  v69 = a4;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v8 = [v5 domain];
  if (![v8 isEqual:?] || objc_msgSend(v5, "code") != 2)
  {

    goto LABEL_23;
  }

  if (!v7)
  {
LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  v68 = v5;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v9 = [v7 allValues];
  v10 = [v9 countByEnumeratingWithState:&v85 objects:v97 count:16];
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
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v85 + 1) + 8 * v14);
      v16 = [v15 domain];
      if (![v16 isEqual:CKErrorDomain])
      {

LABEL_14:
        v13 = 0;
        goto LABEL_15;
      }

      if ([v15 code] == 22 || objc_msgSend(v15, "code") == 14)
      {

        goto LABEL_15;
      }

      v17 = [v15 code];

      if (v17 != 11)
      {
        goto LABEL_14;
      }

LABEL_15:
      v14 = v14 + 1;
    }

    while (v11 != v14);
    v18 = [v9 countByEnumeratingWithState:&v85 objects:v97 count:16];
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
  v22 = [v7 allKeys];
  v23 = [v22 countByEnumeratingWithState:&v81 objects:v96 count:16];
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
        objc_enumerationMutation(v22);
      }

      v28 = *(*(&v81 + 1) + 8 * v27);
      v29 = [v7 objectForKeyedSubscript:v28];
      v30 = [v29 domain];
      if ([v30 isEqual:CKErrorDomain])
      {
        v31 = [v29 code];

        if (v31 == 14)
        {
          v32 = [v29 userInfo];
          v33 = [v32 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

          v34 = [v28 zoneID];
          v35 = [v34 zoneName];
          v36 = sub_100019104(@"ckks", v35);

          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v90 = v33;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "On error: updating our idea of: %@", buf, 0xCu);
          }

          v25 |= [(CKKSOperationDependencies *)self intransactionCKRecordChanged:v33 resync:1];
          goto LABEL_44;
        }
      }

      else
      {
      }

      v33 = [v29 domain];
      if (![v33 isEqual:CKErrorDomain])
      {
        goto LABEL_44;
      }

      v37 = [v29 code];

      if (v37 == 11)
      {
        v38 = v26;
        v39 = v22;
        v33 = [v69 objectForKeyedSubscript:v28];
        v40 = [v28 zoneID];
        v41 = [v40 zoneName];
        v42 = sub_100019104(@"ckks", v41);

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v90 = v28;
          v91 = 2112;
          v92 = v33;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "On error: handling an unexpected delete of: %@ %@", buf, 0x16u);
        }

        v43 = [v33 recordType];
        v25 |= [(CKKSOperationDependencies *)self intransactionCKRecordDeleted:v28 recordType:v43 resync:1];

        v22 = v39;
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

    v24 = [v22 countByEnumeratingWithState:&v81 objects:v96 count:16];
    if (v24)
    {
      continue;
    }

    break;
  }

  if (v25)
  {
    v44 = [(CKKSOperationDependencies *)self flagHandler];
    [v44 _onqueueHandleFlag:@"process_incoming_queue"];

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
      v48 = [v47 userInfo];
      v49 = [v48 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v50 = [v49 userInfo];
      v51 = [v50 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v52 = [v46 zoneID];
      v53 = [v52 zoneName];
      v54 = sub_100019104(@"ckks", v53);

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

      v55 = [v47 domain];
      if (!-[NSObject isEqualToString:](v55, "isEqualToString:", CKErrorDomain) || [v47 code] != 15 || !v49)
      {
        goto LABEL_68;
      }

      v56 = [v49 domain];
      if (![v56 isEqualToString:v70] || objc_msgSend(v49, "code") != 6000 || !v51)
      {

        goto LABEL_68;
      }

      v57 = [v51 domain];
      v58 = [v57 isEqualToString:@"CloudkitKeychainService"];

      if (v58)
      {
        if ([v51 code] == 9)
        {
          v59 = [v46 zoneID];
          v60 = [v59 zoneName];
          v55 = sub_100019104(@"ckks", v60);

          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
LABEL_73:
            *buf = 138412546;
            v90 = v51;
            v91 = 2112;
            v92 = v46;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "CKKS Server extension has told us about %@ for record %@; requesting refetch and reprocess of key hierarchy", buf, 0x16u);
          }

LABEL_74:

          v65 = [(CKKSOperationDependencies *)self currentFetchReasons];
          [v65 addObject:@"keyhierarchy"];

          v66 = [(CKKSOperationDependencies *)self currentFetchReasons];
          [v66 addObject:@"conflict"];

          v55 = [(CKKSOperationDependencies *)self flagHandler];
          [v55 _onqueueHandleFlag:@"fetch_requested"];
        }

        else
        {
          v61 = [v51 code];
          v62 = [v46 zoneID];
          v63 = [v62 zoneName];
          v55 = sub_100019104(@"ckks", v63);

          v64 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
          if (v61 == 2)
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
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "CKKS Server extension has told us about %@ for record %@, but we don't currently handle this error", buf, 0x16u);
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
  v5 = v68;
LABEL_24:

  return v19;
}

- (void)provideKeySets:(id)a3
{
  v3 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v30 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = [v9 zoneName];
        v12 = sub_100019104(@"ckkskey", v11);

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Providing keyset (%@) to listeners", buf, 0xCu);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(CKKSOperationDependencies *)self keysetProviderOperations];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * j) provideKeySets:v3];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }
}

- (BOOL)considerSelfTrusted:(id)a3 error:(id *)a4
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * v9);
        if ([v11 essential])
        {
          v12 = [v11 currentSelfPeersError];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = [v11 currentTrustedPeersError];
          }

          v7 = v14;

          if ([v11 essential])
          {
            v15 = [v11 currentSelfPeersError];
            if (v15)
            {
            }

            else
            {
              v16 = [v11 currentTrustedPeersError];

              if (!v16)
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
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    if (a4 && v7)
    {
      v17 = v7;
      LOBYTE(v6) = 0;
      *a4 = v7;
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
  v2 = [(CKKSOperationDependencies *)self peerProviders];
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
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

        v11 = [v9 currentState];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)applyNewSyncingPolicy:(id)a3 viewStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = self;
  [(CKKSOperationDependencies *)self setSyncingPolicy:v6];
  v8 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
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
        v15 = [v6 priorityViews];
        v16 = [v14 zoneName];
        v17 = [v15 containsObject:v16];

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

  [(CKKSOperationDependencies *)v18 setAllPriorityViews:v8];
  [(CKKSOperationDependencies *)v18 setAllViews:v9];
  [(CKKSOperationDependencies *)v18 setViewsOverride:0];
}

- (id)readyAndSyncingViews
{
  v17 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(CKKSOperationDependencies *)self views];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 ckksManagedView])
        {
          v9 = [(CKKSOperationDependencies *)self syncingPolicy];
          v10 = [v8 zoneID];
          v11 = [v10 zoneName];
          if ([v9 isSyncingEnabledForView:v11])
          {
            [v8 viewKeyHierarchyState];
            v12 = v6;
            v13 = v3;
            v15 = v14 = self;
            v18 = [v15 isEqualToString:@"ready"];

            self = v14;
            v3 = v13;
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

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  return v17;
}

- (id)viewStateForName:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CKKSOperationDependencies *)self allViews];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 zoneID];
        v11 = [v10 zoneName];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)viewStatesByNames:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CKKSOperationDependencies *)self views];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 zoneID];
        v13 = [v12 zoneName];
        v14 = [v4 containsObject:v13];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)viewsInState:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(CKKSOperationDependencies *)self views];
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
        v12 = [v11 viewKeyHierarchyState];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v4 = [(CKKSOperationDependencies *)self views];
    v5 = 138412290;
    v6 = v4;
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
    v4 = [(CKKSOperationDependencies *)self views];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Expanded view operation to %@", &v5, 0xCu);
  }
}

- (void)operateOnSelectViews:(id)a3
{
  v4 = a3;
  [(CKKSOperationDependencies *)self setViewsOverride:v4];
  v5 = sub_100019104(@"ckksviews", 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CKKSOperationDependencies *)self views];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Limited view operation to %@", &v7, 0xCu);
  }
}

- (void)setStateForAllViews:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CKKSOperationDependencies *)self allViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setViewKeyHierarchyState:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setStateForActiveExternallyManagedViews:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CKKSOperationDependencies *)self views];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 ckksManagedView] & 1) == 0)
        {
          [v10 setViewKeyHierarchyState:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setStateForActiveCKKSManagedViews:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CKKSOperationDependencies *)self views];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 ckksManagedView])
        {
          [v10 setViewKeyHierarchyState:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setStateForActiveZones:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CKKSOperationDependencies *)self views];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setViewKeyHierarchyState:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v4 = [(CKKSOperationDependencies *)self allViews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 ckksManagedView] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(CKKSOperationDependencies *)self views];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 ckksManagedView])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)views
{
  v3 = [(CKKSOperationDependencies *)self viewsOverride];

  if (v3)
  {
    v4 = [(CKKSOperationDependencies *)self viewsOverride];
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
    v4 = ;
  }

  return v4;
}

- (CKKSOperationDependencies)initWithViewStates:(id)a3 contextID:(id)a4 activeAccount:(id)a5 ckdatabase:(id)a6 cloudKitClassDependencies:(id)a7 ckoperationGroup:(id)a8 flagHandler:(id)a9 overallLaunch:(id)a10 accountStateTracker:(id)a11 lockStateTracker:(id)a12 reachabilityTracker:(id)a13 peerProviders:(id)a14 databaseProvider:(id)a15 savedTLKNotifier:(id)a16 personaAdapter:(id)a17 sendMetric:(BOOL)a18
{
  v50 = a3;
  v49 = a4;
  v48 = a5;
  v47 = a6;
  v36 = a7;
  v46 = a7;
  v45 = a8;
  v44 = a9;
  v43 = a10;
  v42 = a11;
  v41 = a12;
  v40 = a13;
  v39 = a14;
  v38 = a15;
  v22 = a16;
  v23 = a17;
  v52.receiver = self;
  v52.super_class = CKKSOperationDependencies;
  v24 = [(CKKSOperationDependencies *)&v52 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_allViews, a3);
    objc_storeStrong(&v25->_ckdatabase, a6);
    objc_storeStrong(&v25->_cloudKitClassDependencies, v36);
    objc_storeStrong(&v25->_ckoperationGroup, a8);
    objc_storeStrong(&v25->_flagHandler, a9);
    objc_storeStrong(&v25->_overallLaunch, a10);
    objc_storeStrong(&v25->_accountStateTracker, a11);
    objc_storeStrong(&v25->_lockStateTracker, a12);
    objc_storeStrong(&v25->_reachabilityTracker, a13);
    objc_storeStrong(&v25->_peerProviders, a14);
    objc_storeStrong(&v25->_databaseProvider, a15);
    objc_storeStrong(&v25->_savedTLKNotifier, a16);
    objc_storeStrong(&v25->_contextID, a4);
    objc_storeStrong(&v25->_activeAccount, a5);
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
    objc_storeStrong(&v25->_personaAdapter, a17);
    v25->_sendMetric = a18;
    v32 = [[CKKSNearFutureScheduler alloc] initWithName:@"zonemodifier-ckretryafter" initialDelay:100000000 exponentialBackoff:100000000 maximumDelay:0 keepProcessAlive:1005 dependencyDescriptionCode:25 qosClass:1.0 block:&stru_100336EF8];
    cloudkitRetryAfter = v25->_cloudkitRetryAfter;
    v25->_cloudkitRetryAfter = v32;
  }

  return v25;
}

@end