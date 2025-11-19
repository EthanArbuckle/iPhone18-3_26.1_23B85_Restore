@interface CKKSScanLocalItemsOperation
- (BOOL)areEquivalent:(SecDbItem *)a3 ckksItem:(id)a4 keyCache:(id)a5;
- (BOOL)executeQuery:(id)a3 readWrite:(BOOL)a4 error:(id *)a5 block:(id)a6;
- (BOOL)onboardItemToCKKS:(SecDbItem *)a3 viewState:(id)a4 keyCache:(id)a5 error:(id *)a6;
- (CKKSScanLocalItemsOperation)initWithDependencies:(id)a3 intending:(id)a4 errorState:(id)a5 ckoperationGroup:(id)a6;
- (id)queryPredicatesForViewMapping:(id)a3;
- (void)fixUUIDlessItemsInZone:(id)a3 primaryKeys:(id)a4 databaseProvider:(id)a5;
- (void)main;
- (void)onboardItemsInView:(id)a3 uuids:(id)a4 itemClass:(id)a5 databaseProvider:(id)a6;
- (void)retriggerMissingMirrorEntries:(id)a3 databaseProvider:(id)a4;
@end

@implementation CKKSScanLocalItemsOperation

- (BOOL)areEquivalent:(SecDbItem *)a3 ckksItem:(id)a4 keyCache:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CKKSScanLocalItemsOperation *)self deps];
  v42 = 0;
  v11 = [CKKSIncomingQueueOperation decryptCKKSItemToAttributes:v8 keyCache:v9 ckksOperationalDependencies:v10 error:&v42];
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
    v19 = sub_10001B350(a3, 0x10000, 0, &v41);
    v20 = v19;
    v12 = v41;
    if (!v19 || v41)
    {
      v31 = [v8 zoneID];
      v32 = [v31 zoneName];
      v21 = sub_100019104(@"ckksscan", v32);

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
        v35 = v9;
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
        v9 = v35;
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
    v15 = [v8 zoneID];
    v16 = [v15 zoneName];
    v17 = sub_100019104(@"ckksscan", v16);

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
  v3 = [(CKKSScanLocalItemsOperation *)self deps];
  v118 = [v3 databaseProvider];

  v115 = +[NSMutableDictionary dictionary];
  v113 = +[NSMutableDictionary dictionary];
  v111 = +[NSMutableSet set];
  v4 = sub_100019104(@"ckksscan", 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CKKSScanLocalItemsOperation *)self deps];
    v6 = [v5 activeManagedViews];
    *buf = 138412290;
    *v157 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scanning for views: %@", buf, 0xCu);
  }

  v7 = +[NSMutableSet set];
  v106 = [AAFAnalyticsEventSecurity alloc];
  v163 = kSecurityRTCFieldNumViews;
  v116 = [(CKKSScanLocalItemsOperation *)self deps];
  v109 = [v116 activeManagedViews];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v109 count]);
  v164 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v164 forKeys:&v163 count:1];
  v10 = [(CKKSScanLocalItemsOperation *)self deps];
  v11 = [v10 activeAccount];
  v12 = [v11 altDSID];
  v13 = kSecurityRTCEventNameScanLocalItems;
  v14 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v15 = [(CKKSScanLocalItemsOperation *)self deps];
  v107 = [v106 initWithCKKSMetrics:v9 altDSID:v12 eventName:v13 testsAreEnabled:0 category:v14 sendMetric:{objc_msgSend(v15, "sendMetric")}];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v117 = self;
  v16 = [(CKKSScanLocalItemsOperation *)self deps];
  v17 = [v16 activeManagedViews];

  v18 = [v17 countByEnumeratingWithState:&v147 objects:v162 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v147 + 1) + 8 * i);
        v23 = [v22 zoneID];
        [v7 addObject:v23];

        v24 = [v22 viewKeyHierarchyState];
        v25 = [v24 isEqualToString:@"ready"];

        if (v25)
        {
          v26 = [v22 launch];
          [v26 addEvent:@"scan-local-items-begin"];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v147 objects:v162 count:16];
    }

    while (v19);
  }

  v27 = [(CKKSScanLocalItemsOperation *)v117 deps];
  v28 = [v27 overallLaunch];
  [v28 addEvent:@"scan-local-items-begin"];

  v140[0] = _NSConcreteStackBlock;
  v140[1] = 3221225472;
  v140[2] = sub_10011496C;
  v140[3] = &unk_1003375B0;
  v29 = v111;
  v141 = v29;
  v142 = v117;
  v30 = v7;
  v143 = v30;
  v31 = v113;
  v144 = v31;
  v110 = v115;
  v145 = v110;
  v32 = v107;
  v146 = v32;
  [v118 dispatchSyncWithReadOnlySQLTransaction:v140];
  v33 = [(CKKSResultOperation *)v117 error];

  if (v33)
  {
    v34 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(CKKSResultOperation *)v117 error];
      *buf = 138412290;
      *v157 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Exiting due to previous error: %@", buf, 0xCu);
    }

    v36 = [(CKKSResultOperation *)v117 error];
    [v32 sendMetricWithResult:0 error:v36];
  }

  else
  {
    v100 = v32;
    v101 = v30;
    v102 = v31;
    v103 = v29;
    v37 = [AAFAnalyticsEventSecurity alloc];
    v38 = [(CKKSScanLocalItemsOperation *)v117 deps];
    v39 = [v38 activeAccount];
    v40 = [v39 altDSID];
    v41 = kSecurityRTCEventNameOnboardMissingItems;
    v42 = [(CKKSScanLocalItemsOperation *)v117 deps];
    v99 = [v37 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v40 eventName:v41 testsAreEnabled:0 category:v14 sendMetric:{objc_msgSend(v42, "sendMetric")}];

    v43 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v110 count];
      v45 = [(CKKSScanLocalItemsOperation *)v117 deps];
      v46 = [v45 activeManagedViews];
      *buf = 67109378;
      *v157 = v44;
      *&v157[4] = 2112;
      *&v157[6] = v46;
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
          v50 = [v49 allKeys];
          v51 = [v50 countByEnumeratingWithState:&v132 objects:v160 count:16];
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
                  objc_enumerationMutation(v50);
                }

                v55 = *(*(&v132 + 1) + 8 * j);
                v56 = [v49 objectForKeyedSubscript:v55];
                v57 = [v48 zoneName];
                v58 = sub_100019104(@"ckksscan", v57);

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

                [(CKKSScanLocalItemsOperation *)v117 onboardItemsInView:v48 uuids:v56 itemClass:v55 databaseProvider:v118];
              }

              v52 = [v50 countByEnumeratingWithState:&v132 objects:v160 count:16];
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
    v60 = [v102 allKeys];
    v61 = [v60 countByEnumeratingWithState:&v128 objects:v155 count:16];
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
            objc_enumerationMutation(v60);
          }

          v65 = *(*(&v128 + 1) + 8 * k);
          v66 = [v102 objectForKeyedSubscript:v65];
          [(CKKSScanLocalItemsOperation *)v117 fixUUIDlessItemsInZone:v65 primaryKeys:v66 databaseProvider:v118];
        }

        v62 = [v60 countByEnumeratingWithState:&v128 objects:v155 count:16];
      }

      while (v62);
    }

    [(CKKSScanLocalItemsOperation *)v117 retriggerMissingMirrorEntries:v103 databaseProvider:v118];
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v67 = [(CKKSScanLocalItemsOperation *)v117 deps];
    v68 = [v67 activeManagedViews];

    v69 = [v68 countByEnumeratingWithState:&v124 objects:v154 count:16];
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
            objc_enumerationMutation(v68);
          }

          v73 = [*(*(&v124 + 1) + 8 * m) zoneID];
          v74 = [v73 zoneName];
          [CKKSPowerCollection CKKSPowerEvent:@"scanLocalItems" zone:v74 count:[(CKKSScanLocalItemsOperation *)v117 processedItems]];
        }

        v70 = [v68 countByEnumeratingWithState:&v124 objects:v154 count:16];
      }

      while (v70);
    }

    v123[0] = _NSConcreteStackBlock;
    v123[1] = 3221225472;
    v123[2] = sub_1001152B4;
    v123[3] = &unk_100344610;
    v123[4] = v117;
    [v118 dispatchSyncWithSQLTransaction:v123];
    v75 = [(CKKSScanLocalItemsOperation *)v117 viewsWithNewCKKSEntries];
    v76 = [v75 count];

    v32 = v100;
    v30 = v101;
    v36 = v99;
    if (v76)
    {
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v77 = [(CKKSScanLocalItemsOperation *)v117 viewsWithNewCKKSEntries];
      v78 = [v77 countByEnumeratingWithState:&v119 objects:v153 count:16];
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
              objc_enumerationMutation(v77);
            }

            v82 = [*(*(&v119 + 1) + 8 * n) notifyViewChangedScheduler];
            [v82 trigger];
          }

          v79 = [v77 countByEnumeratingWithState:&v119 objects:v153 count:16];
        }

        while (v79);
      }

      v83 = [(CKKSScanLocalItemsOperation *)v117 ckoperationGroup];

      if (v83)
      {
        v84 = sub_100019104(@"ckksscan", 0);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = [(CKKSScanLocalItemsOperation *)v117 ckoperationGroup];
          *buf = 138412290;
          *v157 = v85;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "Transferring ckoperation group %@", buf, 0xCu);
        }

        v86 = [(CKKSScanLocalItemsOperation *)v117 ckoperationGroup];
        v87 = [(CKKSScanLocalItemsOperation *)v117 deps];
        [v87 setCurrentOutgoingQueueOperationGroup:v86];
      }

      v88 = [(CKKSScanLocalItemsOperation *)v117 deps];
      v89 = [v88 flagHandler];
      [v89 handleFlag:@"process_outgoing_queue"];
    }

    v151 = kSecurityRTCFieldNumViewsWithNewEntries;
    v90 = [(CKKSScanLocalItemsOperation *)v117 viewsWithNewCKKSEntries];
    v91 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v90 count]);
    v152 = v91;
    v92 = [NSDictionary dictionaryWithObjects:&v152 forKeys:&v151 count:1];
    [v99 addMetrics:v92];

    v93 = [(CKKSResultOperation *)v117 error];
    [v99 sendMetricWithResult:1 error:v93];

    v94 = [(CKKSResultOperation *)v117 error];
    [v100 sendMetricWithResult:1 error:v94];

    v95 = [(CKKSScanLocalItemsOperation *)v117 intendedState];
    [(CKKSScanLocalItemsOperation *)v117 setNextState:v95];

    if ([(CKKSScanLocalItemsOperation *)v117 missingLocalItemsFound])
    {
      v96 = [(CKKSScanLocalItemsOperation *)v117 deps];
      v97 = [v96 flagHandler];
      [v97 handleFlag:@"process_incoming_queue"];
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

- (void)retriggerMissingMirrorEntries:(id)a3 databaseProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011628C;
    v10[3] = &unk_100343B50;
    v11 = v6;
    v12 = self;
    [v7 dispatchSyncWithSQLTransaction:v10];
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

- (void)fixUUIDlessItemsInZone:(id)a3 primaryKeys:(id)a4 databaseProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 zoneID];
  v12 = [v11 zoneName];
  v13 = sub_100019104(@"ckksscan", v12);

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = [v9 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found %d items missing UUIDs", buf, 8u);
  }

  if ([v9 count])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001167F4;
    v14[3] = &unk_100343880;
    v15 = v9;
    v16 = v8;
    v17 = self;
    [v10 dispatchSyncWithSQLTransaction:v14];
  }
}

- (void)onboardItemsInView:(id)a3 uuids:(id)a4 itemClass:(id)a5 databaseProvider:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v9;
  v14 = [v9 zoneID];
  v15 = [v14 zoneName];
  v16 = sub_100019104(@"ckksscan", v15);

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v35 = [v10 count];
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found %d missing %@ items", buf, 0x12u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v10;
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
        v25 = v11;
        v26 = v21;
        v27 = v13;
        v28 = self;
        [v12 dispatchSyncWithSQLTransaction:v24];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }
}

- (BOOL)onboardItemToCKKS:(SecDbItem *)a3 viewState:(id)a4 keyCache:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(CKKSScanLocalItemsOperation *)self deps];
  v13 = [v12 contextID];
  v14 = [v10 zoneID];
  v29 = 0;
  v15 = [CKKSOutgoingQueueEntry withItem:a3 action:@"add" contextID:v13 zoneID:v14 keyCache:v11 error:&v29];

  v16 = v29;
  v17 = [v10 zoneID];
  v18 = [v17 zoneName];
  v19 = sub_100019104(@"ckksscan", v18);

  if (!v16)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Syncing new item: %@", buf, 0xCu);
    }

    v28 = 0;
    [(SecDbItem *)v15 saveToDatabase:&v28];
    v22 = v28;
    if (!v22)
    {
      v26 = [(CKKSScanLocalItemsOperation *)self viewsWithNewCKKSEntries];
      [v26 addObject:v10];

      [(CKKSScanLocalItemsOperation *)self setRecordsAdded:[(CKKSScanLocalItemsOperation *)self recordsAdded]+ 1];
      v16 = 0;
      v21 = 1;
      goto LABEL_14;
    }

    v16 = v22;
    v23 = [v10 zoneID];
    v24 = [v23 zoneName];
    v25 = sub_100019104(@"ckksscan", v24);

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = v15;
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
    v31 = a3;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Need to upload %{private}@, but can't create outgoing entry: %@", buf, 0x16u);
  }

  if (!a6)
  {
LABEL_12:
    v21 = 0;
    goto LABEL_14;
  }

  v20 = v16;
  v21 = 0;
  *a6 = v16;
LABEL_14:

  return v21;
}

- (BOOL)executeQuery:(id)a3 readWrite:(BOOL)a4 error:(id *)a5 block:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v12 = [(CKKSOperationDependencies *)self->_deps keychainMusrForCurrentAccount];
  v13 = sub_100006454(v10, v12, -1, 0, v31 + 3);
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
    if (a5)
    {
      v18 = 0;
      *a5 = v17;
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
    v27 = v11;
    v20 = sub_100008A70(v8, 1, 0, v14, v26);
    if (v8)
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
      if (a5)
      {
        *a5 = v24;
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

- (id)queryPredicatesForViewMapping:(id)a3
{
  v4 = a3;
  if ([v4 count] <= 1 && objc_msgSend(v4, "count"))
  {
    v63 = v4;
    v5 = [v4 allObjects];
    v6 = [v5 objectAtIndexedSubscript:0];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v7 = [(CKKSScanLocalItemsOperation *)self deps];
    v8 = [v7 syncingPolicy];
    v9 = [v8 keyViewMapping];

    v10 = [v9 countByEnumeratingWithState:&v65 objects:v75 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v65 + 1) + 8 * i);
          v15 = [v14 view];
          v16 = [v6 zoneID];
          v17 = [v16 zoneName];
          v18 = [v15 isEqualToString:v17];

          if (v18)
          {
            if (v64)
            {
              v20 = [v6 zoneID];
              v21 = [v20 zoneName];
              v22 = sub_100019104(@"ckksscan", v21);

              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [v6 zoneID];
                v24 = [v23 zoneName];
                *buf = 138412290;
                v77 = v24;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Too many policy rules for view %@", buf, 0xCu);
              }

              v19 = &__NSDictionary0__struct;
              v4 = v63;
              goto LABEL_34;
            }

            v64 = v14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v65 objects:v75 count:16];
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

    v4 = v63;
    if (![v64 hasMatchingRule])
    {
      goto LABEL_30;
    }

    v25 = [v64 matchingRule];
    if ([v25 andsCount])
    {
      goto LABEL_29;
    }

    v26 = [v64 matchingRule];
    if ([v26 orsCount])
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

    v27 = [v64 matchingRule];
    if ([v27 hasNot])
    {
LABEL_27:

      goto LABEL_28;
    }

    v28 = [v64 matchingRule];
    if ([v28 hasExists])
    {

      goto LABEL_27;
    }

    v32 = [v64 matchingRule];
    v33 = [v32 hasMatch];

    if (!v33)
    {
      goto LABEL_30;
    }

    v34 = [v64 matchingRule];
    v35 = [v34 match];
    v36 = [v35 fieldName];
    if (([(__CFString *)kSecAttrSyncViewHint isEqualToString:v36]& 1) != 0)
    {
      v37 = [v64 matchingRule];
      v61 = [v37 match];
      v38 = [v61 regex];
      v39 = [v6 zoneID];
      v40 = [v39 zoneName];
      v41 = [NSString stringWithFormat:@"^%@$", v40];
      v60 = [v38 isEqualToString:v41];

      if (v60)
      {
        v73 = kSecAttrSyncViewHint;
        v42 = [v6 zoneName];
        v74 = v42;
        v19 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];

        goto LABEL_34;
      }
    }

    else
    {
    }

    v43 = kSecAttrAccessGroup;
    v44 = [v64 matchingRule];
    v45 = [v44 match];
    v46 = [v45 fieldName];
    if (([(__CFString *)kSecAttrAccessGroup isEqualToString:v46]& 1) != 0)
    {
      v47 = [v64 matchingRule];
      v48 = [v47 match];
      v49 = [v48 regex];
      v50 = [v49 isEqualToString:@"^com\\.apple\\.cfnetwork$"];

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

    v53 = [v64 matchingRule];
    v54 = [v53 match];
    v55 = [v54 fieldName];
    if (([(__CFString *)v43 isEqualToString:v55]& 1) != 0)
    {
      v62 = v43;
      v56 = [v64 matchingRule];
      v57 = [v56 match];
      v58 = [v57 regex];
      v59 = [v58 isEqualToString:@"^com\\.apple\\.safari\\.credit-cards$"];

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
    v77 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not acting on exactly one view; not limiting query: %@", buf, 0xCu);
  }

  v19 = &__NSDictionary0__struct;
LABEL_35:

  return v19;
}

- (CKKSScanLocalItemsOperation)initWithDependencies:(id)a3 intending:(id)a4 errorState:(id)a5 ckoperationGroup:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CKKSScanLocalItemsOperation;
  v15 = [(CKKSResultOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_ckoperationGroup, a6);
    objc_storeStrong(&v16->_nextState, a5);
    objc_storeStrong(&v16->_intendedState, a4);
    v17 = +[NSMutableSet set];
    viewsWithNewCKKSEntries = v16->_viewsWithNewCKKSEntries;
    v16->_viewsWithNewCKKSEntries = v17;

    v16->_recordsFound = 0;
    v16->_recordsAdded = 0;
  }

  return v16;
}

@end