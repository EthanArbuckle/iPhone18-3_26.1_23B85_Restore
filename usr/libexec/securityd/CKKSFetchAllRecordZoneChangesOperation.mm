@interface CKKSFetchAllRecordZoneChangesOperation
- (CKKSFetchAllRecordZoneChangesOperation)initWithContainer:(id)container fetchClass:(Class)class clientMap:(id)map fetchReasons:(id)reasons apnsPushes:(id)pushes forceResync:(BOOL)resync ckoperationGroup:(id)group altDSID:(id)self0 sendMetric:(BOOL)self1;
- (id)ckksFetchBecauseMap;
- (void)cancel;
- (void)groupStart;
- (void)performFetch;
- (void)queryClientsForChangeTokens;
@end

@implementation CKKSFetchAllRecordZoneChangesOperation

- (void)cancel
{
  fetchRecordZoneChangesOperation = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
  [fetchRecordZoneChangesOperation cancel];

  v4.receiver = self;
  v4.super_class = CKKSFetchAllRecordZoneChangesOperation;
  [(CKKSGroupOperation *)&v4 cancel];
}

- (void)performFetch
{
  objc_initWeak(&location, self);
  v3 = +[NSMutableArray array];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  allClientOptions = [(CKKSFetchAllRecordZoneChangesOperation *)self allClientOptions];
  allKeys = [allClientOptions allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v96 objects:v115 count:16];
  if (v6)
  {
    v7 = *v97;
    do
    {
      v8 = 0;
      do
      {
        if (*v97 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v96 + 1) + 8 * v8);
        clientMap = [(CKKSFetchAllRecordZoneChangesOperation *)self clientMap];
        v11 = [clientMap objectForKeyedSubscript:v9];
        v12 = [v11 zoneIsReadyForFetching:v9];

        if ((v12 & 1) == 0)
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v96 objects:v115 count:16];
    }

    while (v6);
  }

  v13 = [AAFAnalyticsEventSecurity alloc];
  v74 = kSecurityRTCFieldIsPrioritized;
  v113 = kSecurityRTCFieldIsPrioritized;
  v114 = &__kCFBooleanFalse;
  v14 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
  altDSID = [(CKKSFetchAllRecordZoneChangesOperation *)self altDSID];
  sendMetric = [(CKKSFetchAllRecordZoneChangesOperation *)self sendMetric];
  v75 = [v13 initWithCKKSMetrics:v14 altDSID:altDSID eventName:kSecurityRTCEventNameZoneChangeFetch testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:sendMetric];

  if ([v3 count])
  {
    v17 = sub_100019104(@"ckksfetch", 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v107 = v3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Dropping the following zones from this fetch cycle: %@", buf, 0xCu);
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v18 = v3;
    v19 = [v18 countByEnumeratingWithState:&v92 objects:v112 count:16];
    if (v19)
    {
      v20 = *v93;
      do
      {
        v21 = 0;
        do
        {
          if (*v93 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v92 + 1) + 8 * v21);
          fetchedZoneIDs = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchedZoneIDs];
          [fetchedZoneIDs removeObject:v22];

          allClientOptions2 = [(CKKSFetchAllRecordZoneChangesOperation *)self allClientOptions];
          [allClientOptions2 setObject:0 forKeyedSubscript:v22];

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v92 objects:v112 count:16];
      }

      while (v19);
    }
  }

  fetchedZoneIDs2 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchedZoneIDs];
  v26 = [fetchedZoneIDs2 count] == 0;

  if (!v26)
  {
    v110 = kSecurityRTCFieldNumViews;
    fetchedZoneIDs3 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchedZoneIDs];
    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [fetchedZoneIDs3 count]);
    v111 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    [v75 addMetrics:v29];

    v30 = sub_100019104(@"ckksfetch", 0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      fetchedZoneIDs4 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchedZoneIDs];
      allClientOptions3 = [(CKKSFetchAllRecordZoneChangesOperation *)self allClientOptions];
      *buf = 138412546;
      v107 = fetchedZoneIDs4;
      v108 = 2112;
      v109 = allClientOptions3;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Beginning fetch: %@ options: %@", buf, 0x16u);
    }

    v33 = [(objc_class *)[(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperationClass] alloc];
    fetchedZoneIDs5 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchedZoneIDs];
    allClientOptions4 = [(CKKSFetchAllRecordZoneChangesOperation *)self allClientOptions];
    v36 = [(objc_class *)v33 initWithRecordZoneIDs:fetchedZoneIDs5 configurationsByRecordZoneID:allClientOptions4];
    [(CKKSFetchAllRecordZoneChangesOperation *)self setFetchRecordZoneChangesOperation:v36];

    fetchRecordZoneChangesOperation = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [fetchRecordZoneChangesOperation setFetchAllChanges:0];

    fetchRecordZoneChangesOperation2 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    configuration = [fetchRecordZoneChangesOperation2 configuration];
    [configuration setIsCloudKitSupportOperation:1];

    ckoperationGroup = [(CKKSFetchAllRecordZoneChangesOperation *)self ckoperationGroup];
    fetchRecordZoneChangesOperation3 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [fetchRecordZoneChangesOperation3 setGroup:ckoperationGroup];

    v42 = sub_100019104(@"ckksfetch", 0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      ckoperationGroup2 = [(CKKSFetchAllRecordZoneChangesOperation *)self ckoperationGroup];
      *buf = 138412290;
      v107 = ckoperationGroup2;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Operation group is %@", buf, 0xCu);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    fetchReasons = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchReasons];
    v45 = [fetchReasons countByEnumeratingWithState:&v88 objects:v105 count:16];
    if (v45)
    {
      v46 = *v89;
      do
      {
        v47 = 0;
        do
        {
          if (*v89 != v46)
          {
            objc_enumerationMutation(fetchReasons);
          }

          v48 = *(*(&v88 + 1) + 8 * v47);
          ckksFetchBecauseMap = [(CKKSFetchAllRecordZoneChangesOperation *)self ckksFetchBecauseMap];
          v50 = [ckksFetchBecauseMap objectForKey:v48];

          if (v50)
          {
            ckksFetchBecauseMap2 = [(CKKSFetchAllRecordZoneChangesOperation *)self ckksFetchBecauseMap];
            v52 = [ckksFetchBecauseMap2 objectForKeyedSubscript:v48];
            v103 = v52;
            v104 = &__kCFBooleanTrue;
            v53 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
            [v75 addMetrics:v53];
          }

          v47 = v47 + 1;
        }

        while (v45 != v47);
        v45 = [fetchReasons countByEnumeratingWithState:&v88 objects:v105 count:16];
      }

      while (v45);
    }

    fetchReasons2 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchReasons];
    if (([fetchReasons2 containsObject:@"api"] & 1) == 0)
    {
      fetchReasons3 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchReasons];
      if (([fetchReasons3 containsObject:@"initialfetch"] & 1) == 0)
      {
        fetchReasons4 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchReasons];
        if (![fetchReasons4 containsObject:@"more-coming"])
        {
          fetchReasons5 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchReasons];
          v73 = [fetchReasons5 containsObject:@"keyhierarchy"];

          if ((v73 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }
    }

LABEL_41:
    fetchRecordZoneChangesOperation4 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [fetchRecordZoneChangesOperation4 setQualityOfService:25];

    v101 = v74;
    v102 = &__kCFBooleanTrue;
    v58 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    [v75 addMetrics:v58];

LABEL_42:
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_10011BD3C;
    v86[3] = &unk_100337620;
    objc_copyWeak(&v87, &location);
    fetchRecordZoneChangesOperation5 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [fetchRecordZoneChangesOperation5 setRecordChangedBlock:v86];

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_10011BEB4;
    v84[3] = &unk_100337648;
    objc_copyWeak(&v85, &location);
    fetchRecordZoneChangesOperation6 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [fetchRecordZoneChangesOperation6 setRecordWithIDWasDeletedBlock:v84];

    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_10011C020;
    v82[3] = &unk_100337670;
    objc_copyWeak(&v83, &location);
    fetchRecordZoneChangesOperation7 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [fetchRecordZoneChangesOperation7 setRecordZoneChangeTokensUpdatedBlock:v82];

    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10011C154;
    v79[3] = &unk_100337698;
    objc_copyWeak(&v81, &location);
    v62 = v75;
    v80 = v62;
    fetchRecordZoneChangesOperation8 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [fetchRecordZoneChangesOperation8 setRecordZoneFetchCompletionBlock:v79];

    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_10011C504;
    v76[3] = &unk_1003376C0;
    objc_copyWeak(&v78, &location);
    v77 = v62;
    fetchRecordZoneChangesOperation9 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [fetchRecordZoneChangesOperation9 setFetchRecordZoneChangesCompletionBlock:v76];

    fetchCompletedOperation = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchCompletedOperation];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:fetchCompletedOperation];

    fetchRecordZoneChangesOperation10 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:fetchRecordZoneChangesOperation10];

    container = [(CKKSFetchAllRecordZoneChangesOperation *)self container];
    privateCloudDatabase = [container privateCloudDatabase];
    fetchRecordZoneChangesOperation11 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchRecordZoneChangesOperation];
    [privateCloudDatabase addOperation:fetchRecordZoneChangesOperation11];

    objc_destroyWeak(&v78);
    objc_destroyWeak(&v81);
    objc_destroyWeak(&v83);
    objc_destroyWeak(&v85);
    objc_destroyWeak(&v87);
    goto LABEL_46;
  }

  v70 = sub_100019104(@"ckksfetch", 0);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "No zones to fetch. Skipping operation.", buf, 2u);
  }

  fetchCompletedOperation2 = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchCompletedOperation];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:fetchCompletedOperation2];

LABEL_46:
  objc_destroyWeak(&location);
}

- (id)ckksFetchBecauseMap
{
  v4[0] = @"apns";
  v4[1] = @"api";
  v5[0] = kSecurityRTCFieldCKKSFetchBecauseAPNS;
  v5[1] = kSecurityRTCFieldCKKSFetchBecauseAPIFetchRequest;
  v4[2] = @"se-api";
  v4[3] = @"keyset";
  v5[2] = kSecurityRTCFieldCKKSFetchBecauseSEAPIFetchRequest;
  v5[3] = kSecurityRTCFieldCKKSFetchBecauseKeySetFetchRequest;
  v4[4] = @"currentitemcheck";
  v4[5] = @"initialfetch";
  v5[4] = kSecurityRTCFieldCKKSFetchBecauseCurrentItemFetchRequest;
  v5[5] = kSecurityRTCFieldCKKSFetchBecauseInitialStart;
  v4[6] = @"fetchfailed";
  v4[7] = @"keyhierarchy";
  v5[6] = kSecurityRTCFieldCKKSFetchBecausePreviousFetchFailed;
  v5[7] = kSecurityRTCFieldCKKSFetchBecauseKeyHierarchy;
  v4[8] = @"testing";
  v4[9] = @"resync";
  v5[8] = kSecurityRTCFieldCKKSFetchBecauseTesting;
  v5[9] = kSecurityRTCFieldCKKSFetchBecauseResync;
  v4[10] = @"more-coming";
  v4[11] = @"conflict";
  v5[10] = kSecurityRTCFieldCKKSFetchBecauseMoreComing;
  v5[11] = kSecurityRTCFieldCKKSFetchBecauseResolvingConflict;
  v4[12] = @"periodic";
  v4[13] = @"octagon-pairing-complete";
  v5[12] = kSecurityRTCFieldCKKSFetchBecausePeriodicRefetch;
  v5[13] = kSecurityRTCFieldCKKSFetchBecauseOctagonPairingComplete;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:14];

  return v2;
}

- (void)groupStart
{
  v3 = +[NSMutableDictionary dictionary];
  [(CKKSFetchAllRecordZoneChangesOperation *)self setAllClientOptions:v3];

  v4 = +[NSMutableArray array];
  [(CKKSFetchAllRecordZoneChangesOperation *)self setFetchedZoneIDs:v4];

  [(CKKSFetchAllRecordZoneChangesOperation *)self queryClientsForChangeTokens];
  fetchedZoneIDs = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchedZoneIDs];
  v6 = [fetchedZoneIDs count];

  if (v6)
  {

    [(CKKSFetchAllRecordZoneChangesOperation *)self performFetch];
  }

  else
  {
    v7 = [NSError errorWithDomain:@"CKKSErrorDomain" code:50 description:@"No clients want a fetch right now"];
    [(CKKSResultOperation *)self setError:v7];

    v8 = sub_100019104(@"ckksfetch", 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      error = [(CKKSResultOperation *)self error];
      v10 = 138412290;
      v11 = error;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cancelling fetch: %@", &v10, 0xCu);
    }

    [(CKKSFetchAllRecordZoneChangesOperation *)self setClientMap:&__NSDictionary0__struct];
  }
}

- (void)queryClientsForChangeTokens
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  clientMap = [(CKKSFetchAllRecordZoneChangesOperation *)self clientMap];
  v4 = [clientMap countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v31;
    *&v5 = 138412546;
    v27 = v5;
    v28 = *v31;
    do
    {
      v8 = 0;
      v29 = v6;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(clientMap);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        clientMap2 = [(CKKSFetchAllRecordZoneChangesOperation *)self clientMap];
        v11 = [clientMap2 objectForKeyedSubscript:v9];

        v12 = [v11 participateInFetch:v9];
        if ([v12 participateInFetch])
        {
          fetchedZoneIDs = [(CKKSFetchAllRecordZoneChangesOperation *)self fetchedZoneIDs];
          [fetchedZoneIDs addObject:v9];

          v14 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
          if (![(CKKSFetchAllRecordZoneChangesOperation *)self forceResync])
          {
            v15 = clientMap;
            changeTokens = [(CKKSFetchAllRecordZoneChangesOperation *)self changeTokens];
            v17 = [changeTokens objectForKeyedSubscript:v9];

            if (v17)
            {
              changeTokens2 = [(CKKSFetchAllRecordZoneChangesOperation *)self changeTokens];
              v19 = [changeTokens2 objectForKeyedSubscript:v9];
              [v14 setPreviousServerChangeToken:v19];

              changeToken = sub_100019104(@"ckksfetch", 0);
              if (os_log_type_enabled(changeToken, OS_LOG_TYPE_DEFAULT))
              {
                changeTokens3 = [(CKKSFetchAllRecordZoneChangesOperation *)self changeTokens];
                v22 = [changeTokens3 objectForKeyedSubscript:v9];
                *buf = v27;
                v35 = v9;
                v36 = 2112;
                v37 = v22;
                _os_log_impl(&_mh_execute_header, changeToken, OS_LOG_TYPE_DEFAULT, "Using cached change token for %@: %@", buf, 0x16u);
              }
            }

            else
            {
              changeToken = [v12 changeToken];
              [v14 setPreviousServerChangeToken:changeToken];
            }

            clientMap = v15;

            v7 = v28;
          }

          if (([v12 resync] & 1) != 0 || -[CKKSFetchAllRecordZoneChangesOperation forceResync](self, "forceResync"))
          {
            resyncingZones = [(CKKSFetchAllRecordZoneChangesOperation *)self resyncingZones];
            [resyncingZones addObject:v9];

            reverseSyncingZones = [(CKKSFetchAllRecordZoneChangesOperation *)self reverseSyncingZones];
            [reverseSyncingZones addObject:v9];

            [v14 setFetchNewestChangesFirst:1];
          }

          if ([v12 fetchNewestChangesFirst])
          {
            reverseSyncingZones2 = [(CKKSFetchAllRecordZoneChangesOperation *)self reverseSyncingZones];
            [reverseSyncingZones2 addObject:v9];

            [v14 setFetchNewestChangesFirst:1];
          }

          allClientOptions = [(CKKSFetchAllRecordZoneChangesOperation *)self allClientOptions];
          [allClientOptions setObject:v14 forKeyedSubscript:v9];

          v6 = v29;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [clientMap countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v6);
  }
}

- (CKKSFetchAllRecordZoneChangesOperation)initWithContainer:(id)container fetchClass:(Class)class clientMap:(id)map fetchReasons:(id)reasons apnsPushes:(id)pushes forceResync:(BOOL)resync ckoperationGroup:(id)group altDSID:(id)self0 sendMetric:(BOOL)self1
{
  containerCopy = container;
  mapCopy = map;
  reasonsCopy = reasons;
  pushesCopy = pushes;
  groupCopy = group;
  dCopy = d;
  v39.receiver = self;
  v39.super_class = CKKSFetchAllRecordZoneChangesOperation;
  v19 = [(CKKSGroupOperation *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 142), container);
    objc_storeStrong((v20 + 134), class);
    objc_storeStrong((v20 + 214), map);
    objc_storeStrong((v20 + 222), group);
    v20[129] = resync;
    objc_storeStrong((v20 + 158), reasons);
    objc_storeStrong((v20 + 166), pushes);
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = *(v20 + 174);
    *(v20 + 174) = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = *(v20 + 182);
    *(v20 + 182) = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    v26 = *(v20 + 190);
    *(v20 + 190) = v25;

    v27 = +[NSMutableSet set];
    v28 = *(v20 + 262);
    *(v20 + 262) = v27;

    v29 = +[NSMutableSet set];
    v30 = *(v20 + 270);
    *(v20 + 270) = v29;

    *(v20 + 246) = 0;
    *(v20 + 254) = 0;
    v31 = [CKKSResultOperation named:@"record-zone-changes-completed" withBlock:&stru_1003375F8];
    v32 = *(v20 + 278);
    *(v20 + 278) = v31;

    v20[130] = 0;
    objc_storeStrong((v20 + 238), d);
    v20[131] = metric;
    [v20 setQualityOfService:25];
  }

  return v20;
}

@end