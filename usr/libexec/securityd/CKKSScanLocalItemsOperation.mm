@interface CKKSScanLocalItemsOperation
- (BOOL)areEquivalent:(SecDbItem *)equivalent ckksItem:(id)item keyCache:(id)cache;
- (BOOL)executeQuery:(id)query readWrite:(BOOL)write error:(id *)error block:(id)block;
- (BOOL)onboardItemToCKKS:(SecDbItem *)s viewState:(id)state keyCache:(id)cache error:(id *)error;
- (CKKSScanLocalItemsOperation)initWithDependencies:(id)dependencies intending:(id)intending errorState:(id)state ckoperationGroup:(id)group;
- (id)queryPredicatesForViewMapping:(id)mapping;
- (void)fixUUIDlessItemsInZone:(id)zone primaryKeys:(id)keys databaseProvider:(id)provider;
- (void)main;
- (void)onboardItemsInView:(id)view uuids:(id)uuids itemClass:(id)class databaseProvider:(id)provider;
- (void)retriggerMissingMirrorEntries:(id)entries databaseProvider:(id)provider;
@end

@implementation CKKSScanLocalItemsOperation

- (BOOL)areEquivalent:(SecDbItem *)equivalent ckksItem:(id)item keyCache:(id)cache
{
  itemCopy = item;
  cacheCopy = cache;
  deps = [(CKKSScanLocalItemsOperation *)self deps];
  v42 = 0;
  v11 = [CKKSIncomingQueueOperation decryptCKKSItemToAttributes:itemCopy keyCache:cacheCopy ckksOperationalDependencies:deps error:&v42];
  v12 = v42;
  v13 = [v11 mutableCopy];

  v36 = v13;
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v41 = 0;
    v19 = sub_10001B350(equivalent, 0x10000, 0, &v41);
    v20 = v19;
    v12 = v41;
    if (!v19 || v41)
    {
      zoneID = [itemCopy zoneID];
      zoneName = [zoneID zoneName];
      v21 = sub_100019104(@"ckksscan", zoneName);

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Could not get item contents for comparison: %@", buf, 0xCu);
      }

      v18 = 0;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v34 = v20;
        v35 = cacheCopy;
        v24 = *v38;
        v25 = kSecAttrSHA1;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v37 + 1) + 8 * i);
            if (([v27 isEqual:kSecAttrCreationDate] & 1) == 0 && (objc_msgSend(v27, "isEqual:", kSecAttrModificationDate) & 1) == 0 && (objc_msgSend(v27, "isEqual:", v25) & 1) == 0)
            {
              v28 = [v21 objectForKeyedSubscript:v27];
              v29 = [v36 objectForKeyedSubscript:v27];
              v30 = [v28 isEqual:v29];

              if (!v30)
              {
                v18 = 0;
                goto LABEL_26;
              }
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }

        v18 = 1;
LABEL_26:
        cacheCopy = v35;
        v20 = v34;
        v12 = 0;
      }

      else
      {
        v18 = 1;
      }
    }
  }

  else
  {
    zoneID2 = [itemCopy zoneID];
    zoneName2 = [zoneID2 zoneName];
    v17 = sub_100019104(@"ckksscan", zoneName2);

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Could not decrypt item for comparison: %@", buf, 0xCu);
    }

    v18 = 1;
  }

  return v18;
}

- (void)main
{
  v104 = os_transaction_create();
  deps = [(CKKSScanLocalItemsOperation *)self deps];
  databaseProvider = [deps databaseProvider];

  v115 = +[NSMutableDictionary dictionary];
  v113 = +[NSMutableDictionary dictionary];
  v111 = +[NSMutableSet set];
  v4 = sub_100019104(@"ckksscan", 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    deps2 = [(CKKSScanLocalItemsOperation *)self deps];
    activeManagedViews = [deps2 activeManagedViews];
    *buf = 138412290;
    *v157 = activeManagedViews;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scanning for views: %@", buf, 0xCu);
  }

  v7 = +[NSMutableSet set];
  v106 = [AAFAnalyticsEventSecurity alloc];
  v163 = kSecurityRTCFieldNumViews;
  deps3 = [(CKKSScanLocalItemsOperation *)self deps];
  activeManagedViews2 = [deps3 activeManagedViews];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activeManagedViews2 count]);
  v164 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v164 forKeys:&v163 count:1];
  deps4 = [(CKKSScanLocalItemsOperation *)self deps];
  activeAccount = [deps4 activeAccount];
  altDSID = [activeAccount altDSID];
  v13 = kSecurityRTCEventNameScanLocalItems;
  v14 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  deps5 = [(CKKSScanLocalItemsOperation *)self deps];
  v107 = [v106 initWithCKKSMetrics:v9 altDSID:altDSID eventName:v13 testsAreEnabled:0 category:v14 sendMetric:{objc_msgSend(deps5, "sendMetric")}];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  selfCopy = self;
  deps6 = [(CKKSScanLocalItemsOperation *)self deps];
  activeManagedViews3 = [deps6 activeManagedViews];

  v18 = [activeManagedViews3 countByEnumeratingWithState:&v147 objects:v162 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v148;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v148 != v20)
        {
          objc_enumerationMutation(activeManagedViews3);
        }

        v22 = *(*(&v147 + 1) + 8 * i);
        zoneID = [v22 zoneID];
        [v7 addObject:zoneID];

        viewKeyHierarchyState = [v22 viewKeyHierarchyState];
        v25 = [viewKeyHierarchyState isEqualToString:@"ready"];

        if (v25)
        {
          launch = [v22 launch];
          [launch addEvent:@"scan-local-items-begin"];
        }
      }

      v19 = [activeManagedViews3 countByEnumeratingWithState:&v147 objects:v162 count:16];
    }

    while (v19);
  }

  deps7 = [(CKKSScanLocalItemsOperation *)selfCopy deps];
  overallLaunch = [deps7 overallLaunch];
  [overallLaunch addEvent:@"scan-local-items-begin"];

  v140[0] = _NSConcreteStackBlock;
  v140[1] = 3221225472;
  v140[2] = sub_10011496C;
  v140[3] = &unk_1003375B0;
  v29 = v111;
  v141 = v29;
  v142 = selfCopy;
  v30 = v7;
  v143 = v30;
  v31 = v113;
  v144 = v31;
  v110 = v115;
  v145 = v110;
  v32 = v107;
  v146 = v32;
  [databaseProvider dispatchSyncWithReadOnlySQLTransaction:v140];
  error = [(CKKSResultOperation *)selfCopy error];

  if (error)
  {
    v34 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [(CKKSResultOperation *)selfCopy error];
      *buf = 138412290;
      *v157 = error2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Exiting due to previous error: %@", buf, 0xCu);
    }

    error3 = [(CKKSResultOperation *)selfCopy error];
    [v32 sendMetricWithResult:0 error:error3];
  }

  else
  {
    v100 = v32;
    v101 = v30;
    v102 = v31;
    v103 = v29;
    v37 = [AAFAnalyticsEventSecurity alloc];
    deps8 = [(CKKSScanLocalItemsOperation *)selfCopy deps];
    activeAccount2 = [deps8 activeAccount];
    altDSID2 = [activeAccount2 altDSID];
    v41 = kSecurityRTCEventNameOnboardMissingItems;
    deps9 = [(CKKSScanLocalItemsOperation *)selfCopy deps];
    v99 = [v37 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:altDSID2 eventName:v41 testsAreEnabled:0 category:v14 sendMetric:{objc_msgSend(deps9, "sendMetric")}];

    v43 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v110 count];
      deps10 = [(CKKSScanLocalItemsOperation *)selfCopy deps];
      activeManagedViews4 = [deps10 activeManagedViews];
      *buf = 67109378;
      *v157 = v44;
      *&v157[4] = 2112;
      *&v157[6] = activeManagedViews4;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found %d views with missing items for %@", buf, 0x12u);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = [v110 allKeys];
    v112 = [obj countByEnumeratingWithState:&v136 objects:v161 count:16];
    if (v112)
    {
      v108 = *v137;
      do
      {
        v47 = 0;
        do
        {
          if (*v137 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v114 = v47;
          v48 = *(*(&v136 + 1) + 8 * v47);
          v49 = [v110 objectForKeyedSubscript:v48];
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          allKeys = [v49 allKeys];
          v51 = [allKeys countByEnumeratingWithState:&v132 objects:v160 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v133;
            do
            {
              for (j = 0; j != v52; j = j + 1)
              {
                if (*v133 != v53)
                {
                  objc_enumerationMutation(allKeys);
                }

                v55 = *(*(&v132 + 1) + 8 * j);
                v56 = [v49 objectForKeyedSubscript:v55];
                zoneName = [v48 zoneName];
                v58 = sub_100019104(@"ckksscan", zoneName);

                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = [v56 count];
                  *buf = 67109634;
                  *v157 = v59;
                  *&v157[4] = 2112;
                  *&v157[6] = v55;
                  v158 = 2112;
                  v159 = v48;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Found %d missing %@ items for %@", buf, 0x1Cu);
                }

                [(CKKSScanLocalItemsOperation *)selfCopy onboardItemsInView:v48 uuids:v56 itemClass:v55 databaseProvider:databaseProvider];
              }

              v52 = [allKeys countByEnumeratingWithState:&v132 objects:v160 count:16];
            }

            while (v52);
          }

          v47 = v114 + 1;
        }

        while ((v114 + 1) != v112);
        v112 = [obj countByEnumeratingWithState:&v136 objects:v161 count:16];
      }

      while (v112);
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    allKeys2 = [v102 allKeys];
    v61 = [allKeys2 countByEnumeratingWithState:&v128 objects:v155 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v129;
      do
      {
        for (k = 0; k != v62; k = k + 1)
        {
          if (*v129 != v63)
          {
            objc_enumerationMutation(allKeys2);
          }

          v65 = *(*(&v128 + 1) + 8 * k);
          v66 = [v102 objectForKeyedSubscript:v65];
          [(CKKSScanLocalItemsOperation *)selfCopy fixUUIDlessItemsInZone:v65 primaryKeys:v66 databaseProvider:databaseProvider];
        }

        v62 = [allKeys2 countByEnumeratingWithState:&v128 objects:v155 count:16];
      }

      while (v62);
    }

    [(CKKSScanLocalItemsOperation *)selfCopy retriggerMissingMirrorEntries:v103 databaseProvider:databaseProvider];
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    deps11 = [(CKKSScanLocalItemsOperation *)selfCopy deps];
    activeManagedViews5 = [deps11 activeManagedViews];

    v69 = [activeManagedViews5 countByEnumeratingWithState:&v124 objects:v154 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v125;
      do
      {
        for (m = 0; m != v70; m = m + 1)
        {
          if (*v125 != v71)
          {
            objc_enumerationMutation(activeManagedViews5);
          }

          zoneID2 = [*(*(&v124 + 1) + 8 * m) zoneID];
          zoneName2 = [zoneID2 zoneName];
          [CKKSPowerCollection CKKSPowerEvent:@"scanLocalItems" zone:zoneName2 count:[(CKKSScanLocalItemsOperation *)selfCopy processedItems]];
        }

        v70 = [activeManagedViews5 countByEnumeratingWithState:&v124 objects:v154 count:16];
      }

      while (v70);
    }

    v123[0] = _NSConcreteStackBlock;
    v123[1] = 3221225472;
    v123[2] = sub_1001152B4;
    v123[3] = &unk_100344610;
    v123[4] = selfCopy;
    [databaseProvider dispatchSyncWithSQLTransaction:v123];
    viewsWithNewCKKSEntries = [(CKKSScanLocalItemsOperation *)selfCopy viewsWithNewCKKSEntries];
    v76 = [viewsWithNewCKKSEntries count];

    v32 = v100;
    v30 = v101;
    error3 = v99;
    if (v76)
    {
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      viewsWithNewCKKSEntries2 = [(CKKSScanLocalItemsOperation *)selfCopy viewsWithNewCKKSEntries];
      v78 = [viewsWithNewCKKSEntries2 countByEnumeratingWithState:&v119 objects:v153 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v120;
        do
        {
          for (n = 0; n != v79; n = n + 1)
          {
            if (*v120 != v80)
            {
              objc_enumerationMutation(viewsWithNewCKKSEntries2);
            }

            notifyViewChangedScheduler = [*(*(&v119 + 1) + 8 * n) notifyViewChangedScheduler];
            [notifyViewChangedScheduler trigger];
          }

          v79 = [viewsWithNewCKKSEntries2 countByEnumeratingWithState:&v119 objects:v153 count:16];
        }

        while (v79);
      }

      ckoperationGroup = [(CKKSScanLocalItemsOperation *)selfCopy ckoperationGroup];

      if (ckoperationGroup)
      {
        v84 = sub_100019104(@"ckksscan", 0);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          ckoperationGroup2 = [(CKKSScanLocalItemsOperation *)selfCopy ckoperationGroup];
          *buf = 138412290;
          *v157 = ckoperationGroup2;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "Transferring ckoperation group %@", buf, 0xCu);
        }

        ckoperationGroup3 = [(CKKSScanLocalItemsOperation *)selfCopy ckoperationGroup];
        deps12 = [(CKKSScanLocalItemsOperation *)selfCopy deps];
        [deps12 setCurrentOutgoingQueueOperationGroup:ckoperationGroup3];
      }

      deps13 = [(CKKSScanLocalItemsOperation *)selfCopy deps];
      flagHandler = [deps13 flagHandler];
      [flagHandler handleFlag:@"process_outgoing_queue"];
    }

    v151 = kSecurityRTCFieldNumViewsWithNewEntries;
    viewsWithNewCKKSEntries3 = [(CKKSScanLocalItemsOperation *)selfCopy viewsWithNewCKKSEntries];
    v91 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [viewsWithNewCKKSEntries3 count]);
    v152 = v91;
    v92 = [NSDictionary dictionaryWithObjects:&v152 forKeys:&v151 count:1];
    [v99 addMetrics:v92];

    error4 = [(CKKSResultOperation *)selfCopy error];
    [v99 sendMetricWithResult:1 error:error4];

    error5 = [(CKKSResultOperation *)selfCopy error];
    [v100 sendMetricWithResult:1 error:error5];

    intendedState = [(CKKSScanLocalItemsOperation *)selfCopy intendedState];
    [(CKKSScanLocalItemsOperation *)selfCopy setNextState:intendedState];

    if ([(CKKSScanLocalItemsOperation *)selfCopy missingLocalItemsFound])
    {
      deps14 = [(CKKSScanLocalItemsOperation *)selfCopy deps];
      flagHandler2 = [deps14 flagHandler];
      [flagHandler2 handleFlag:@"process_incoming_queue"];
    }

    v98 = sub_100019104(@"ckksscan", 0);
    v31 = v102;
    v29 = v103;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Completed scan", buf, 2u);
    }
  }
}

- (void)retriggerMissingMirrorEntries:(id)entries databaseProvider:(id)provider
{
  entriesCopy = entries;
  providerCopy = provider;
  if ([entriesCopy count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011628C;
    v10[3] = &unk_100343B50;
    v11 = entriesCopy;
    selfCopy = self;
    [providerCopy dispatchSyncWithSQLTransaction:v10];
    v8 = v11;
  }

  else
  {
    v8 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No missing local items found", v9, 2u);
    }
  }
}

- (void)fixUUIDlessItemsInZone:(id)zone primaryKeys:(id)keys databaseProvider:(id)provider
{
  zoneCopy = zone;
  keysCopy = keys;
  providerCopy = provider;
  zoneID = [zoneCopy zoneID];
  zoneName = [zoneID zoneName];
  v13 = sub_100019104(@"ckksscan", zoneName);

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = [keysCopy count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found %d items missing UUIDs", buf, 8u);
  }

  if ([keysCopy count])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001167F4;
    v14[3] = &unk_100343880;
    v15 = keysCopy;
    v16 = zoneCopy;
    selfCopy = self;
    [providerCopy dispatchSyncWithSQLTransaction:v14];
  }
}

- (void)onboardItemsInView:(id)view uuids:(id)uuids itemClass:(id)class databaseProvider:(id)provider
{
  viewCopy = view;
  uuidsCopy = uuids;
  classCopy = class;
  providerCopy = provider;
  v13 = viewCopy;
  zoneID = [viewCopy zoneID];
  zoneName = [zoneID zoneName];
  v16 = sub_100019104(@"ckksscan", zoneName);

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v35 = [uuidsCopy count];
    v36 = 2112;
    v37 = classCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found %d missing %@ items", buf, 0x12u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = uuidsCopy;
  v17 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      v20 = 0;
      do
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v29 + 1) + 8 * v20);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100117470;
        v24[3] = &unk_100343778;
        v25 = classCopy;
        v26 = v21;
        v27 = v13;
        selfCopy = self;
        [providerCopy dispatchSyncWithSQLTransaction:v24];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }
}

- (BOOL)onboardItemToCKKS:(SecDbItem *)s viewState:(id)state keyCache:(id)cache error:(id *)error
{
  stateCopy = state;
  cacheCopy = cache;
  deps = [(CKKSScanLocalItemsOperation *)self deps];
  contextID = [deps contextID];
  zoneID = [stateCopy zoneID];
  v29 = 0;
  v15 = [CKKSOutgoingQueueEntry withItem:s action:@"add" contextID:contextID zoneID:zoneID keyCache:cacheCopy error:&v29];

  v16 = v29;
  zoneID2 = [stateCopy zoneID];
  zoneName = [zoneID2 zoneName];
  v19 = sub_100019104(@"ckksscan", zoneName);

  if (!v16)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      sCopy = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Syncing new item: %@", buf, 0xCu);
    }

    v28 = 0;
    [(SecDbItem *)v15 saveToDatabase:&v28];
    v22 = v28;
    if (!v22)
    {
      viewsWithNewCKKSEntries = [(CKKSScanLocalItemsOperation *)self viewsWithNewCKKSEntries];
      [viewsWithNewCKKSEntries addObject:stateCopy];

      [(CKKSScanLocalItemsOperation *)self setRecordsAdded:[(CKKSScanLocalItemsOperation *)self recordsAdded]+ 1];
      v16 = 0;
      v21 = 1;
      goto LABEL_14;
    }

    v16 = v22;
    zoneID3 = [stateCopy zoneID];
    zoneName2 = [zoneID3 zoneName];
    v25 = sub_100019104(@"ckksscan", zoneName2);

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      sCopy = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Need to upload %@, but can't save to database: %@", buf, 0x16u);
    }

    [(CKKSResultOperation *)self setError:v16];
    goto LABEL_12;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478083;
    sCopy = s;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Need to upload %{private}@, but can't create outgoing entry: %@", buf, 0x16u);
  }

  if (!error)
  {
LABEL_12:
    v21 = 0;
    goto LABEL_14;
  }

  v20 = v16;
  v21 = 0;
  *error = v16;
LABEL_14:

  return v21;
}

- (BOOL)executeQuery:(id)query readWrite:(BOOL)write error:(id *)error block:(id)block
{
  writeCopy = write;
  queryCopy = query;
  blockCopy = block;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  keychainMusrForCurrentAccount = [(CKKSOperationDependencies *)self->_deps keychainMusrForCurrentAccount];
  v13 = sub_100006454(queryCopy, keychainMusrForCurrentAccount, -1, 0, v31 + 3);
  v14 = (v31 + 3);
  if (v31[3])
  {
    v15 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v31[3];
      *buf = 138412290;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "couldn't create query: %@", buf, 0xCu);
    }

    v17 = v31[3];
    if (error)
    {
      v18 = 0;
      *error = v17;
    }

    else
    {
      if (v17)
      {
        v31[3] = 0;
        CFRelease(v17);
      }

      v18 = 0;
    }
  }

  else
  {
    v19 = v13;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100117E28;
    v26[3] = &unk_1003374C0;
    v28 = &v30;
    v29 = v13;
    v27 = blockCopy;
    v20 = sub_100008A70(writeCopy, 1, 0, v14, v26);
    if (writeCopy)
    {
      v21 = sub_100019700(v19, v20, v31 + 3);
    }

    else
    {
      v21 = sub_10000DF70(v19, v31 + 3);
    }

    if (v31[3])
    {
      v18 = 0;
    }

    else
    {
      v18 = v21;
    }

    if (!v18)
    {
      v22 = sub_100019104(@"ckksscan", 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = v31[3];
        *buf = 138412290;
        v35 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "couldn't execute query: %@", buf, 0xCu);
      }

      v24 = v31[3];
      if (error)
      {
        *error = v24;
      }

      else if (v24)
      {
        v31[3] = 0;
        CFRelease(v24);
      }
    }
  }

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)queryPredicatesForViewMapping:(id)mapping
{
  mappingCopy = mapping;
  if ([mappingCopy count] <= 1 && objc_msgSend(mappingCopy, "count"))
  {
    v63 = mappingCopy;
    allObjects = [mappingCopy allObjects];
    v6 = [allObjects objectAtIndexedSubscript:0];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    deps = [(CKKSScanLocalItemsOperation *)self deps];
    syncingPolicy = [deps syncingPolicy];
    keyViewMapping = [syncingPolicy keyViewMapping];

    v10 = [keyViewMapping countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v10)
    {
      v11 = v10;
      v64 = 0;
      v12 = *v66;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v66 != v12)
          {
            objc_enumerationMutation(keyViewMapping);
          }

          v14 = *(*(&v65 + 1) + 8 * i);
          view = [v14 view];
          zoneID = [v6 zoneID];
          zoneName = [zoneID zoneName];
          v18 = [view isEqualToString:zoneName];

          if (v18)
          {
            if (v64)
            {
              zoneID2 = [v6 zoneID];
              zoneName2 = [zoneID2 zoneName];
              v22 = sub_100019104(@"ckksscan", zoneName2);

              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                zoneID3 = [v6 zoneID];
                zoneName3 = [zoneID3 zoneName];
                *buf = 138412290;
                v77 = zoneName3;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Too many policy rules for view %@", buf, 0xCu);
              }

              v19 = &__NSDictionary0__struct;
              mappingCopy = v63;
              goto LABEL_34;
            }

            v64 = v14;
          }
        }

        v11 = [keyViewMapping countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v64 = 0;
    }

    mappingCopy = v63;
    if (![v64 hasMatchingRule])
    {
      goto LABEL_30;
    }

    matchingRule = [v64 matchingRule];
    if ([matchingRule andsCount])
    {
      goto LABEL_29;
    }

    matchingRule2 = [v64 matchingRule];
    if ([matchingRule2 orsCount])
    {
LABEL_28:

LABEL_29:
LABEL_30:
      v29 = sub_100019104(@"ckksscan", 0);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_33:

        v19 = &__NSDictionary0__struct;
LABEL_34:

        goto LABEL_35;
      }

      *buf = 138412290;
      v77 = v64;
      v30 = "Policy view rule is complex: %@";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
      goto LABEL_33;
    }

    matchingRule3 = [v64 matchingRule];
    if ([matchingRule3 hasNot])
    {
LABEL_27:

      goto LABEL_28;
    }

    matchingRule4 = [v64 matchingRule];
    if ([matchingRule4 hasExists])
    {

      goto LABEL_27;
    }

    matchingRule5 = [v64 matchingRule];
    hasMatch = [matchingRule5 hasMatch];

    if (!hasMatch)
    {
      goto LABEL_30;
    }

    matchingRule6 = [v64 matchingRule];
    match = [matchingRule6 match];
    fieldName = [match fieldName];
    if (([(__CFString *)kSecAttrSyncViewHint isEqualToString:fieldName]& 1) != 0)
    {
      matchingRule7 = [v64 matchingRule];
      match2 = [matchingRule7 match];
      regex = [match2 regex];
      zoneID4 = [v6 zoneID];
      zoneName4 = [zoneID4 zoneName];
      v41 = [NSString stringWithFormat:@"^%@$", zoneName4];
      v60 = [regex isEqualToString:v41];

      if (v60)
      {
        v73 = kSecAttrSyncViewHint;
        zoneName5 = [v6 zoneName];
        v74 = zoneName5;
        v19 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];

        goto LABEL_34;
      }
    }

    else
    {
    }

    v43 = kSecAttrAccessGroup;
    matchingRule8 = [v64 matchingRule];
    match3 = [matchingRule8 match];
    fieldName2 = [match3 fieldName];
    if (([(__CFString *)kSecAttrAccessGroup isEqualToString:fieldName2]& 1) != 0)
    {
      matchingRule9 = [v64 matchingRule];
      match4 = [matchingRule9 match];
      regex2 = [match4 regex];
      v50 = [regex2 isEqualToString:@"^com\\.apple\\.cfnetwork$"];

      v43 = kSecAttrAccessGroup;
      if (v50)
      {
        v71 = kSecAttrAccessGroup;
        v72 = @"com.apple.cfnetwork";
        v51 = &v72;
        v52 = &v71;
LABEL_50:
        v19 = [NSDictionary dictionaryWithObjects:v51 forKeys:v52 count:1];
        goto LABEL_34;
      }
    }

    else
    {
    }

    matchingRule10 = [v64 matchingRule];
    match5 = [matchingRule10 match];
    fieldName3 = [match5 fieldName];
    if (([(__CFString *)v43 isEqualToString:fieldName3]& 1) != 0)
    {
      v62 = v43;
      matchingRule11 = [v64 matchingRule];
      match6 = [matchingRule11 match];
      regex3 = [match6 regex];
      v59 = [regex3 isEqualToString:@"^com\\.apple\\.safari\\.credit-cards$"];

      if (v59)
      {
        v69 = v62;
        v70 = @"com.apple.safari.credit-cards";
        v51 = &v70;
        v52 = &v69;
        goto LABEL_50;
      }
    }

    else
    {
    }

    v29 = sub_100019104(@"ckksscan", 0);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v77 = v64;
    v30 = "Policy view rule is not a match against viewhint: %@";
    goto LABEL_32;
  }

  v6 = sub_100019104(@"ckksscan", 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v77 = mappingCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not acting on exactly one view; not limiting query: %@", buf, 0xCu);
  }

  v19 = &__NSDictionary0__struct;
LABEL_35:

  return v19;
}

- (CKKSScanLocalItemsOperation)initWithDependencies:(id)dependencies intending:(id)intending errorState:(id)state ckoperationGroup:(id)group
{
  dependenciesCopy = dependencies;
  intendingCopy = intending;
  stateCopy = state;
  groupCopy = group;
  v20.receiver = self;
  v20.super_class = CKKSScanLocalItemsOperation;
  v15 = [(CKKSResultOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_ckoperationGroup, group);
    objc_storeStrong(&v16->_nextState, state);
    objc_storeStrong(&v16->_intendedState, intending);
    v17 = +[NSMutableSet set];
    viewsWithNewCKKSEntries = v16->_viewsWithNewCKKSEntries;
    v16->_viewsWithNewCKKSEntries = v17;

    v16->_recordsFound = 0;
    v16->_recordsAdded = 0;
  }

  return v16;
}

@end