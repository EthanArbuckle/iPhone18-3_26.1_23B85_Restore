@interface CKKSIncomingQueueOperation
+ (id)decryptCKKSItemToAttributes:(id)attributes keyCache:(id)cache ckksOperationalDependencies:(id)dependencies error:(id *)error;
- (BOOL)_onqueueHandleIQEChange:(id)change item:(SecDbItem *)item viewState:(id)state sortedForThisView:(BOOL)view keyCache:(id)cache;
- (BOOL)_onqueueUpdateIQE:(id)e withState:(id)state error:(id *)error;
- (BOOL)fixMismatchedViewItems:(id)items;
- (BOOL)intransaction:(id)intransaction processQueueEntries:(id)entries;
- (BOOL)loadAndProcessEntries:(id)entries withActionFilter:(id)filter totalQueueEntries:(int64_t *)queueEntries;
- (BOOL)processNewCurrentItemPointers:(id)pointers viewState:(id)state;
- (CKKSIncomingQueueOperation)initWithDependencies:(id)dependencies intending:(id)intending pendingClassAItemsRemainingState:(id)state errorState:(id)errorState handleMismatchedViewItems:(BOOL)items;
- (void)_onqueueGenerateNewUUIDPersistentRefOnSecItem:(SecDbItem *)item viewState:(id)state;
- (void)_onqueueHandleIQEDelete:(id)delete class:(const SecDbClass *)class viewState:(id)state;
- (void)_onqueueHandleMismatchedViewItem:(id)item secDbClass:(const SecDbClass *)class attributes:(id)attributes intendedView:(id)view viewState:(id)state keyCache:(id)cache;
- (void)main;
@end

@implementation CKKSIncomingQueueOperation

- (void)_onqueueHandleIQEDelete:(id)delete class:(const SecDbClass *)class viewState:(id)state
{
  deleteCopy = delete;
  stateCopy = state;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v58[0] = class->var0;
  v57[0] = kSecClass;
  v57[1] = kSecAttrUUID;
  uuid = [deleteCopy uuid];
  v57[2] = kSecAttrSynchronizable;
  v58[1] = uuid;
  v58[2] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];

  zoneID = [stateCopy zoneID];
  zoneName = [zoneID zoneName];
  v14 = sub_100019104(@"ckksincoming", zoneName);

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "trying to delete with query: %@", buf, 0xCu);
  }

  v15 = sub_100006454(v11, 0, -1, 0, v50 + 3);
  *(v15 + 156) = 1;
  if (v50[3])
  {
    zoneID2 = [stateCopy zoneID];
    zoneName2 = [zoneID2 zoneName];
    v18 = sub_100019104(@"ckksincoming", zoneName2);

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v50[3];
      *buf = 138412290;
      v56 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "couldn't create query: %@", buf, 0xCu);
    }

    v20 = v50[3];
    [(CKKSResultOperation *)self setError:v20];
    goto LABEL_7;
  }

  v21 = v15;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000D44E8;
  v48[3] = &unk_100336AE8;
  v48[4] = &v49;
  v48[5] = v15;
  v22 = sub_100008A70(1, 1, 0, (v50 + 3), v48);
  v23 = v50;
  v24 = v50[3];
  if (v24)
  {
    if (CFErrorGetCode(v24) != -25300)
    {
      zoneID3 = [stateCopy zoneID];
      zoneName3 = [zoneID3 zoneName];
      v32 = sub_100019104(@"ckksincoming", zoneName3);

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = v50[3];
        *buf = 138412290;
        v56 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "couldn't delete item: %@", buf, 0xCu);
      }

      v20 = v50[3];
      [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
      [(CKKSResultOperation *)self setError:v20];
      sub_10000DF70(v21, 0);
      goto LABEL_7;
    }

    zoneID4 = [stateCopy zoneID];
    zoneName4 = [zoneID4 zoneName];
    v27 = sub_100019104(@"ckksincoming", zoneName4);

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v50[3];
      *buf = 138412290;
      v56 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "couldn't delete item (as it's already gone); this is okay: %@", buf, 0xCu);
    }

    v23 = v50;
    v29 = v50[3];
    if (v29)
    {
      v50[3] = 0;
      CFRelease(v29);
      v22 = 1;
      v23 = v50;
    }

    else
    {
      v22 = 1;
    }
  }

  if (!sub_100019700(v21, v22, v23 + 3) || v50[3])
  {
    zoneID5 = [stateCopy zoneID];
    zoneName5 = [zoneID5 zoneName];
    v36 = sub_100019104(@"ckksincoming", zoneName5);

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = v50[3];
      *buf = 138412290;
      v56 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "couldn't delete query: %@", buf, 0xCu);
    }

    v20 = v50[3];
    if (v20)
    {
      [(CKKSResultOperation *)self setError:v50[3]];
      goto LABEL_7;
    }

    v53 = NSLocalizedDescriptionKey;
    v54 = @"query_notify_and_destroy failed without error";
    v38 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v39 = [NSError errorWithDomain:@"securityd" code:-67671 userInfo:v38];
    [(CKKSResultOperation *)self setError:v39];

LABEL_25:
    v20 = 0;
    goto LABEL_7;
  }

  zoneID6 = [stateCopy zoneID];
  zoneName6 = [zoneID6 zoneName];
  v42 = sub_100019104(@"ckksincoming", zoneName6);

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Correctly processed an IQE; deleting", buf, 2u);
  }

  v47 = 0;
  [deleteCopy deleteFromDatabase:&v47];
  v43 = v47;
  if (!v43)
  {
    [(CKKSIncomingQueueOperation *)self setSuccessfulItemsProcessed:[(CKKSIncomingQueueOperation *)self successfulItemsProcessed]+ 1];
    goto LABEL_25;
  }

  v20 = v43;
  zoneID7 = [stateCopy zoneID];
  zoneName7 = [zoneID7 zoneName];
  v46 = sub_100019104(@"ckksincoming", zoneName7);

  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v56 = v20;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "couldn't delete CKKSIncomingQueueEntry: %@", buf, 0xCu);
  }

  [(CKKSResultOperation *)self setError:v20];
  [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
LABEL_7:

  _Block_object_dispose(&v49, 8);
}

- (BOOL)_onqueueHandleIQEChange:(id)change item:(SecDbItem *)item viewState:(id)state sortedForThisView:(BOOL)view keyCache:(id)cache
{
  changeCopy = change;
  stateCopy = state;
  cacheCopy = cache;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 0;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = sub_1000D5324;
  v125 = sub_1000D5334;
  v126 = 0;
  if (sub_10001A700(item))
  {
    zoneID = [stateCopy zoneID];
    zoneName = [zoneID zoneName];
    v17 = sub_100019104(@"ckksincoming", zoneName);

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      uuid = [changeCopy uuid];
      *buf = 138412547;
      *&buf[4] = uuid;
      *&buf[12] = 2113;
      *&buf[14] = item;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Rejecting a tombstone item addition from CKKS(%@): %{private}@", buf, 0x16u);
    }

    deps = [(CKKSIncomingQueueOperation *)self deps];
    contextID = [deps contextID];
    zoneID2 = [stateCopy zoneID];
    v120 = 0;
    v22 = [CKKSOutgoingQueueEntry withItem:item action:@"delete" contextID:contextID zoneID:zoneID2 keyCache:cacheCopy error:&v120];
    v23 = v120;

    v119 = v23;
    [v22 saveToDatabase:&v119];
    v24 = v119;

    if (v24)
    {
      zoneID3 = [stateCopy zoneID];
      zoneName2 = [zoneID3 zoneName];
      v27 = sub_100019104(@"ckksincoming", zoneName2);

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Unable to save new deletion OQE: %@", buf, 0xCu);
      }
    }

    else
    {
      v118 = 0;
      [changeCopy deleteFromDatabase:&v118];
      v54 = v118;
      if (v54)
      {
        v24 = v54;
        zoneID4 = [stateCopy zoneID];
        zoneName3 = [zoneID4 zoneName];
        v57 = sub_100019104(@"ckksincoming", zoneName3);

        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "couldn't delete CKKSIncomingQueueEntry: %@", buf, 0xCu);
        }

        [(CKKSResultOperation *)self setError:v24];
        [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
      }

      else
      {
        [(CKKSIncomingQueueOperation *)self setSuccessfulItemsProcessed:[(CKKSIncomingQueueOperation *)self successfulItemsProcessed]+ 1];
        v24 = 0;
      }
    }

    [(CKKSIncomingQueueOperation *)self setNewOutgoingEntries:1];

LABEL_44:
    v70 = 0;
    goto LABEL_45;
  }

  if (!sub_1001636C4(item))
  {
    zoneID5 = [stateCopy zoneID];
    zoneName4 = [zoneID5 zoneName];
    v43 = sub_100019104(@"ckksincoming", zoneName4);

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [changeCopy uuid];
      *buf = 138412547;
      *&buf[4] = uuid2;
      *&buf[12] = 2113;
      *&buf[14] = item;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Rejecting a multiuser item addition from CKKS(%@): %{private}@", buf, 0x16u);
    }

    deps2 = [(CKKSIncomingQueueOperation *)self deps];
    contextID2 = [deps2 contextID];
    zoneID6 = [stateCopy zoneID];
    v117 = 0;
    v48 = [CKKSOutgoingQueueEntry withItem:item action:@"delete" contextID:contextID2 zoneID:zoneID6 keyCache:cacheCopy error:&v117];
    v49 = v117;

    v116 = v49;
    [v48 saveToDatabase:&v116];
    v50 = v116;

    if (v50)
    {
      zoneID7 = [stateCopy zoneID];
      zoneName5 = [zoneID7 zoneName];
      v53 = sub_100019104(@"ckksincoming", zoneName5);

      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v50;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Unable to save new deletion OQE: %@", buf, 0xCu);
      }
    }

    else
    {
      v115 = 0;
      [changeCopy deleteFromDatabase:&v115];
      v58 = v115;
      if (v58)
      {
        v50 = v58;
        zoneID8 = [stateCopy zoneID];
        zoneName6 = [zoneID8 zoneName];
        v61 = sub_100019104(@"ckksincoming", zoneName6);

        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v50;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "couldn't delete CKKSIncomingQueueEntry: %@", buf, 0xCu);
        }

        [(CKKSResultOperation *)self setError:v50];
        [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
      }

      else
      {
        [(CKKSIncomingQueueOperation *)self setSuccessfulItemsProcessed:[(CKKSIncomingQueueOperation *)self successfulItemsProcessed]+ 1];
        v50 = 0;
      }
    }

    [(CKKSIncomingQueueOperation *)self setNewOutgoingEntries:1];

    goto LABEL_44;
  }

  selfCopy = self;
  v29 = stateCopy;
  v30 = cacheCopy;
  v31 = changeCopy;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v138 = sub_1000D5324;
  v139 = sub_1000D5334;
  v140 = CFDictionaryGetValue(item->var6, kSecAttrModificationDate);
  v32 = v128;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_1000D533C;
  v95[3] = &unk_100336AC0;
  itemCopy = item;
  v100 = &v127;
  v91 = v29;
  v96 = v91;
  v33 = v31;
  viewCopy = view;
  v101 = &v111;
  v97 = v33;
  v98 = selfCopy;
  v99 = v30;
  v102 = &v121;
  v103 = buf;
  v104 = &v107;
  if (!sub_100008A70(1, 1, 0, (v32 + 3), v95) || v128[3])
  {
    zoneID9 = [v91 zoneID];
    zoneName7 = [zoneID9 zoneName];
    v36 = sub_100019104(@"ckksincoming", zoneName7);

    changeCopy = v31;
    cacheCopy = v30;
    stateCopy = v29;
    v37 = selfCopy;

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = v128[3];
      *v135 = 138412290;
      v136 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "couldn't process item from IncomingQueue: %@", v135, 0xCu);
    }

    v39 = v128[3];
    if (v39)
    {
      v40 = v122[5];
      v122[5] = v39;

      [(CKKSResultOperation *)selfCopy setError:v122[5]];
    }

    else
    {
      v133 = NSLocalizedDescriptionKey;
      v134 = @"kc_with_dbt failed without error";
      v62 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
      v63 = [NSError errorWithDomain:@"securityd" code:-67671 userInfo:v62];
      [(CKKSResultOperation *)selfCopy setError:v63];
    }

    [v33 setState:@"error"];
    v64 = (v122 + 5);
    obj = v122[5];
    [v33 saveToDatabase:&obj];
    objc_storeStrong(v64, obj);
    if (!v122[5])
    {
      goto LABEL_35;
    }

    zoneID10 = [v92 zoneID];
    zoneName8 = [zoneID10 zoneName];
    v67 = sub_100019104(@"ckksincoming", zoneName8);

    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v68 = v122[5];
    *v135 = 138412290;
    v136 = v68;
    v69 = "Couldn't save errored IQE to database: %@";
    goto LABEL_33;
  }

  if (v122[5])
  {
    zoneID11 = [v91 zoneID];
    changeCopy = v31;
    cacheCopy = v30;
    stateCopy = v29;
    v37 = selfCopy;
    zoneName9 = [zoneID11 zoneName];
    v67 = sub_100019104(@"ckksincoming", zoneName9);

    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v73 = v122[5];
    *v135 = 138412290;
    v136 = v73;
    v69 = "Couldn't handle IQE, but why?: %@";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, v69, v135, 0xCu);
LABEL_34:

    [(CKKSResultOperation *)v37 setError:v122[5]];
    goto LABEL_35;
  }

  zoneID12 = [v91 zoneID];
  changeCopy = v31;
  cacheCopy = v30;
  stateCopy = v29;
  v76 = selfCopy;
  zoneName10 = [zoneID12 zoneName];
  v78 = sub_100019104(@"ckksincoming", zoneName10);

  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
  {
    *v135 = 0;
    _os_log_debug_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEBUG, "Correctly processed an IQE; deleting", v135, 2u);
  }

  v79 = (v122 + 5);
  v93 = v122[5];
  [v33 deleteFromDatabase:&v93];
  objc_storeStrong(v79, v93);
  if (v122[5])
  {
    zoneID13 = [v91 zoneID];
    zoneName11 = [zoneID13 zoneName];
    v82 = sub_100019104(@"ckksincoming", zoneName11);

    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = v122[5];
      *v135 = 138412290;
      v136 = v83;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "couldn't delete CKKSIncomingQueueEntry: %@", v135, 0xCu);
    }

    [(CKKSResultOperation *)v76 setError:v122[5]];
    [(CKKSIncomingQueueOperation *)v76 setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)v76 errorItemsProcessed]+ 1];
  }

  else
  {
    [(CKKSIncomingQueueOperation *)selfCopy setSuccessfulItemsProcessed:[(CKKSIncomingQueueOperation *)selfCopy successfulItemsProcessed]+ 1];
  }

  if (*(*&buf[8] + 40))
  {
    v84 = +[NSDate date];
    [v84 timeIntervalSinceDate:*(*&buf[8] + 40)];
    v86 = v85;

    v131[0] = @"time";
    v87 = [NSNumber numberWithUnsignedLongLong:(v86 * 1000.0)];
    v131[1] = @"view";
    v132[0] = v87;
    zoneID14 = [v91 zoneID];
    zoneName12 = [zoneID14 zoneName];
    v132[1] = zoneName12;
    v90 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:2];
    [SecCoreAnalytics sendEvent:@"com.apple.ckks.item.propagation" event:v90];
  }

  if ((v112[3] & 1) == 0)
  {
    v70 = *(v108 + 24) ^ 1;
    goto LABEL_36;
  }

LABEL_35:
  v70 = 0;
LABEL_36:

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
LABEL_45:
  _Block_object_dispose(&v121, 8);

  _Block_object_dispose(&v127, 8);
  return v70 & 1;
}

- (void)_onqueueGenerateNewUUIDPersistentRefOnSecItem:(SecDbItem *)item viewState:(id)state
{
  stateCopy = state;
  v6 = CFUUIDCreate(kCFAllocatorDefault);
  bytes = CFUUIDGetUUIDBytes(v6);
  v7 = CFDataCreate(kCFAllocatorDefault, &bytes.byte0, 16);
  cf = 0;
  sub_10001A804(item, v7, &cf);
  zoneID = [stateCopy zoneID];

  zoneName = [zoneID zoneName];
  v10 = sub_100019104(@"ckksincoming", zoneName);

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    itemCopy = item;
    v16 = 2112;
    v17 = cf;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "set a new persistentref UUID for item %{private}@, error:%@", buf, 0x16u);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v11 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v11);
  }
}

- (BOOL)fixMismatchedViewItems:(id)items
{
  itemsCopy = items;
  if ([(CKKSIncomingQueueOperation *)self handleMismatchedViewItems])
  {
    v5 = [AAFAnalyticsEventSecurity alloc];
    deps = [(CKKSIncomingQueueOperation *)self deps];
    activeAccount = [deps activeAccount];
    altDSID = [activeAccount altDSID];
    deps2 = [(CKKSIncomingQueueOperation *)self deps];
    v21 = [v5 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:altDSID eventName:kSecurityRTCEventNameFixMismatchedViewItems testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:{objc_msgSend(deps2, "sendMetric")}];

    zoneName = [itemsCopy zoneName];
    v11 = sub_100019104(@"ckksincoming", zoneName);

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling policy-mismatched items", buf, 2u);
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 50;
    *buf = 0;
    v37 = buf;
    v38 = 0x3032000000;
    v39 = sub_1000D5324;
    v40 = sub_1000D5334;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    deps3 = [(CKKSIncomingQueueOperation *)self deps];
    databaseProvider = [deps3 databaseProvider];

    while (v43[3] == 50)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000D65E0;
      v22[3] = &unk_100336A70;
      v24 = buf;
      v22[4] = self;
      v23 = itemsCopy;
      v25 = &v32;
      v26 = &v42;
      v27 = &v28;
      [databaseProvider dispatchSyncWithSQLTransaction:v22];
    }

    if (v29[3] < 1)
    {
      [v21 sendMetricWithResult:1 error:0];
    }

    else
    {
      v46 = kSecurityRTCFieldNumMismatchedItems;
      v14 = [NSNumber numberWithLong:?];
      v47 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [v21 addMetrics:v15];

      v16 = *(v33 + 24);
      error = [(CKKSResultOperation *)self error];
      [v21 sendMetricWithResult:v16 ^ 1u error:error];
    }

    v19 = *(v33 + 24);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v42, 8);
    v18 = v19 ^ 1;
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

- (BOOL)loadAndProcessEntries:(id)entries withActionFilter:(id)filter totalQueueEntries:(int64_t *)queueEntries
{
  entriesCopy = entries;
  filterCopy = filter;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 50;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1000D5324;
  v30[4] = sub_1000D5334;
  v31 = 0;
  deps = [(CKKSIncomingQueueOperation *)self deps];
  databaseProvider = [deps databaseProvider];

  v10 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (v33[3] == 50)
  {
    while (1)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000D6CF0;
      v19[3] = &unk_100336A48;
      v19[4] = self;
      v11 = entriesCopy;
      v20 = v11;
      v22 = &v36;
      v23 = v30;
      v21 = filterCopy;
      v24 = &v32;
      v25 = &v26;
      [databaseProvider dispatchSyncWithSQLTransaction:v19];
      if (*(v37 + 24) == 1)
      {
        break;
      }

      if (v33[3] != 50)
      {
        v10 = v27[3];
        goto LABEL_5;
      }
    }

    zoneName = [v11 zoneName];
    v14 = sub_100019104(@"ckksincoming", zoneName);

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Early-exiting from IncomingQueueOperation", buf, 2u);
    }

    *queueEntries = v27[3];
    v12 = 0;
  }

  else
  {
LABEL_5:
    *queueEntries = v10;
    v12 = 1;
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v12;
}

- (void)main
{
  deps = [(CKKSIncomingQueueOperation *)self deps];
  databaseProvider = [deps databaseProvider];

  deps2 = [(CKKSIncomingQueueOperation *)self deps];
  readyAndSyncingViews = [deps2 readyAndSyncingViews];

  v6 = sub_100019104(@"ckksincoming", 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v144 = readyAndSyncingViews;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Going to process the incoming queues for %@", buf, 0xCu);
  }

  if ([(CKKSIncomingQueueOperation *)self handleMismatchedViewItems])
  {
    v7 = sub_100019104(@"ckksincoming", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Will handle mismatched view items along the way", buf, 2u);
    }
  }

  obja = [AAFAnalyticsEventSecurity alloc];
  v112 = kSecurityRTCFieldPendingClassA;
  v113 = kSecurityRTCFieldMissingKey;
  v150[0] = kSecurityRTCFieldMissingKey;
  v150[1] = kSecurityRTCFieldPendingClassA;
  v151[0] = &__kCFBooleanFalse;
  v151[1] = &__kCFBooleanFalse;
  v120 = kSecurityRTCFieldNumViews;
  v150[2] = kSecurityRTCFieldNumViews;
  +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [readyAndSyncingViews count]);
  v8 = readyAndSyncingViews;
  v9 = v124 = readyAndSyncingViews;
  v151[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:3];
  deps3 = [(CKKSIncomingQueueOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  altDSID = [activeAccount altDSID];
  v14 = kSecurityRTCEventNameProcessIncomingQueue;
  v15 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v118 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  deps4 = [(CKKSIncomingQueueOperation *)self deps];
  v115 = [obja initWithCKKSMetrics:v10 altDSID:altDSID eventName:v14 testsAreEnabled:0 category:v15 sendMetric:{objc_msgSend(deps4, "sendMetric")}];

  v17 = [AAFAnalyticsEventSecurity alloc];
  v148 = v120;
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
  v149 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
  deps5 = [(CKKSIncomingQueueOperation *)self deps];
  activeAccount2 = [deps5 activeAccount];
  altDSID2 = [activeAccount2 altDSID];
  v23 = kSecurityRTCEventNameLoadAndProcessIQEs;
  deps6 = [(CKKSIncomingQueueOperation *)self deps];
  v114 = [v17 initWithCKKSMetrics:v19 altDSID:altDSID2 eventName:v23 testsAreEnabled:0 category:v118 sendMetric:{objc_msgSend(deps6, "sendMetric")}];

  deps7 = [(CKKSIncomingQueueOperation *)self deps];
  overallLaunch = [deps7 overallLaunch];
  [overallLaunch addEvent:@"incoming-processing-begin"];

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v27 = v124;
  v121 = [v27 countByEnumeratingWithState:&v134 objects:v147 count:16];
  obj = v27;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (!v121)
  {
LABEL_22:
    v119 = v28;

    v122 = v29;
    if ([v27 count])
    {
      v40 = v30 / [v27 count];
    }

    else
    {
      v40 = 0;
    }

    v141[0] = kSecurityRTCFieldAvgCKRecords;
    v54 = [NSNumber numberWithInt:v40];
    v142[0] = v54;
    v141[1] = kSecurityRTCFieldTotalCKRecords;
    v55 = [NSNumber numberWithLong:v30];
    v142[1] = v55;
    v56 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:2];
    [v114 addMetrics:v56];

    [v114 sendMetricWithResult:1 error:0];
    if ([(CKKSIncomingQueueOperation *)self newOutgoingEntries])
    {
      v57 = [CKOperationGroup CKKSGroupWithName:@"incoming-queue-response"];
      deps8 = [(CKKSIncomingQueueOperation *)self deps];
      [deps8 setCurrentOutgoingQueueOperationGroup:v57];

      deps9 = [(CKKSIncomingQueueOperation *)self deps];
      flagHandler = [deps9 flagHandler];
      [flagHandler handleFlag:@"process_outgoing_queue"];
    }

    if ([(CKKSIncomingQueueOperation *)self missingKey])
    {
      [(CKKSIncomingQueueOperation *)self setNextState:@"process_key_hierarchy"];
    }

    else
    {
      if ([(CKKSIncomingQueueOperation *)self pendingClassAEntries])
      {
        intendedState = [[OctagonPendingFlag alloc] initWithFlag:@"process_incoming_queue" conditions:1];
        deps10 = [(CKKSIncomingQueueOperation *)self deps];
        flagHandler2 = [deps10 flagHandler];
        [flagHandler2 handlePendingFlag:intendedState];

        pendingClassAEntriesError = [(CKKSIncomingQueueOperation *)self pendingClassAEntriesError];
        [(CKKSResultOperation *)self setError:pendingClassAEntriesError];

        stateIfClassAItemsRemaining = [(CKKSIncomingQueueOperation *)self stateIfClassAItemsRemaining];
        [(CKKSIncomingQueueOperation *)self setNextState:stateIfClassAItemsRemaining];
      }

      else
      {
        intendedState = [(CKKSIncomingQueueOperation *)self intendedState];
        [(CKKSIncomingQueueOperation *)self setNextState:intendedState];
      }
    }

    viewsToScan = [(CKKSIncomingQueueOperation *)self viewsToScan];
    v67 = [viewsToScan count];

    if (v67)
    {
      v68 = sub_100019104(@"ckksincoming", 0);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        viewsToScan2 = [(CKKSIncomingQueueOperation *)self viewsToScan];
        *buf = 138412290;
        v144 = viewsToScan2;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Requesting scan for %@", buf, 0xCu);
      }

      deps11 = [(CKKSIncomingQueueOperation *)self deps];
      flagHandler3 = [deps11 flagHandler];
      [flagHandler3 handleFlag:@"dropped_items"];
    }

    v53 = +[CKKSAnalytics logger];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v126 = v27;
    v72 = [v126 countByEnumeratingWithState:&v127 objects:v140 count:16];
    if (!v72)
    {
LABEL_60:

      deps12 = [(CKKSIncomingQueueOperation *)self deps];
      activeManagedViews = [deps12 activeManagedViews];
      if ([activeManagedViews count])
      {
        deps13 = [(CKKSIncomingQueueOperation *)self deps];
        activeManagedViews2 = [deps13 activeManagedViews];
        v95 = v122 / [activeManagedViews2 count];
      }

      else
      {
        v95 = 0;
      }

      v51 = obj;

      deps14 = [(CKKSIncomingQueueOperation *)self deps];
      activeManagedViews3 = [deps14 activeManagedViews];
      if ([activeManagedViews3 count])
      {
        deps15 = [(CKKSIncomingQueueOperation *)self deps];
        activeManagedViews4 = [deps15 activeManagedViews];
        v100 = v119 / [activeManagedViews4 count];
      }

      else
      {
        v100 = 0;
      }

      v138[0] = v112;
      v101 = [NSNumber numberWithBool:[(CKKSIncomingQueueOperation *)self pendingClassAEntries]];
      v139[0] = v101;
      v138[1] = v113;
      v102 = [NSNumber numberWithBool:[(CKKSIncomingQueueOperation *)self missingKey]];
      v139[1] = v102;
      v138[2] = kSecurityRTCFieldAvgSuccessfulItemsProcessed;
      v103 = [NSNumber numberWithInt:v95];
      v139[2] = v103;
      v138[3] = kSecurityRTCFieldAvgErrorItemsProcessed;
      v104 = [NSNumber numberWithInt:v100];
      v139[3] = v104;
      v138[4] = kSecurityRTCFieldSuccessfulItemsProcessed;
      v105 = [NSNumber numberWithLong:v122];
      v139[4] = v105;
      v138[5] = kSecurityRTCFieldErrorItemsProcessed;
      v106 = [NSNumber numberWithLong:v119];
      v139[5] = v106;
      v107 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:6];
      [v115 addMetrics:v107];

      if ([(CKKSIncomingQueueOperation *)self pendingClassAEntries])
      {
        v108 = 0;
      }

      else
      {
        v108 = [(CKKSIncomingQueueOperation *)self missingKey]^ 1;
      }

      v47 = v114;
      error = [(CKKSResultOperation *)self error];
      v50 = v115;
      [v115 sendMetricWithResult:v108 error:error];

      deps16 = [(CKKSIncomingQueueOperation *)self deps];
      overallLaunch2 = [deps16 overallLaunch];
      [overallLaunch2 addEvent:@"incoming-processing-complete"];

      goto LABEL_70;
    }

    v73 = v72;
    v74 = *v128;
LABEL_49:
    v75 = 0;
    while (1)
    {
      if (*v128 != v74)
      {
        objc_enumerationMutation(v126);
      }

      v76 = *(*(&v127 + 1) + 8 * v75);
      launch = [v76 launch];
      [launch addEvent:@"incoming-processed"];

      error2 = [(CKKSResultOperation *)self error];

      if (error2)
      {
        deps17 = [(CKKSIncomingQueueOperation *)self deps];
        lockStateTracker = [deps17 lockStateTracker];
        error3 = [(CKKSResultOperation *)self error];
        v82 = [lockStateTracker isLockedError:error3];

        if ((v82 & 1) == 0)
        {
          error4 = [(CKKSResultOperation *)self error];
          zoneID = [v76 zoneID];
          zoneName = [zoneID zoneName];
          [v53 logRecoverableError:error4 forEvent:@"CKKSEventProcessIncomingQueueClassC" zoneName:zoneName withAttributes:0];

          error5 = [(CKKSResultOperation *)self error];
          zoneID2 = [v76 zoneID];
          zoneName2 = [zoneID2 zoneName];
          [v53 logRecoverableError:error5 forEvent:@"CKKSEventProcessIncomingQueueClassA" zoneName:zoneName2 withAttributes:0];

LABEL_57:
        }
      }

      else
      {
        zoneID3 = [v76 zoneID];
        zoneName3 = [zoneID3 zoneName];
        [v53 logSuccessForEvent:@"CKKSEventProcessIncomingQueueClassC" zoneName:zoneName3];

        if (![(CKKSIncomingQueueOperation *)self pendingClassAEntries])
        {
          error5 = [v76 zoneID];
          zoneID2 = [error5 zoneName];
          [v53 logSuccessForEvent:@"CKKSEventProcessIncomingQueueClassA" zoneName:zoneID2];
          goto LABEL_57;
        }
      }

      if (v73 == ++v75)
      {
        v73 = [v126 countByEnumeratingWithState:&v127 objects:v140 count:16];
        if (!v73)
        {
          goto LABEL_60;
        }

        goto LABEL_49;
      }
    }
  }

  v125 = *v135;
LABEL_9:
  v31 = 0;
  while (1)
  {
    if (*v135 != v125)
    {
      objc_enumerationMutation(obj);
    }

    v32 = *(*(&v134 + 1) + 8 * v31);
    launch2 = [v32 launch];
    [launch2 addEvent:@"incoming-processing-begin"];

    [(CKKSIncomingQueueOperation *)self setSuccessfulItemsProcessed:0];
    [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:0];
    v132 = 0;
    v133 = 0;
    if (![(CKKSIncomingQueueOperation *)self loadAndProcessEntries:v32 withActionFilter:@"delete" totalQueueEntries:&v133])
    {
      zoneName4 = [v32 zoneName];
      v42 = sub_100019104(@"ckksincoming", zoneName4);

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        error6 = [(CKKSResultOperation *)self error];
        *buf = 138412290;
        v144 = error6;
        v44 = "Early-exiting from IncomingQueueOperation (after processing deletes): %@";
        goto LABEL_28;
      }

LABEL_29:

      error7 = [(CKKSResultOperation *)self error];
      v47 = v114;
      [v114 sendMetricWithResult:0 error:error7];

      goto LABEL_33;
    }

    v34 = v133;
    if (![(CKKSIncomingQueueOperation *)self loadAndProcessEntries:v32 withActionFilter:0 totalQueueEntries:&v132])
    {
      zoneName5 = [v32 zoneName];
      v42 = sub_100019104(@"ckksincoming", zoneName5);

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        error6 = [(CKKSResultOperation *)self error];
        *buf = 138412290;
        v144 = error6;
        v44 = "Early-exiting from IncomingQueueOperation (after processing all incoming entries): %@";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);
      }

      goto LABEL_29;
    }

    v35 = v132;
    if ([(CKKSIncomingQueueOperation *)self successfulItemsProcessed]|| [(CKKSIncomingQueueOperation *)self errorItemsProcessed])
    {
      zoneName6 = [v32 zoneName];
      v37 = sub_100019104(@"ckksincoming", zoneName6);

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        successfulItemsProcessed = [(CKKSIncomingQueueOperation *)self successfulItemsProcessed];
        errorItemsProcessed = [(CKKSIncomingQueueOperation *)self errorItemsProcessed];
        *buf = 134218240;
        v144 = successfulItemsProcessed;
        v145 = 2048;
        v146 = errorItemsProcessed;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Processed %lu items in incoming queue (%lu errors)", buf, 0x16u);
      }
    }

    if (![(CKKSIncomingQueueOperation *)self fixMismatchedViewItems:v32])
    {
      break;
    }

    v30 += v34 + v35;
    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_1000D8174;
    v131[3] = &unk_100343B50;
    v131[4] = v32;
    v131[5] = self;
    [databaseProvider dispatchSyncWithSQLTransaction:v131];
    v28 += [(CKKSIncomingQueueOperation *)self errorItemsProcessed];
    v29 += [(CKKSIncomingQueueOperation *)self successfulItemsProcessed];
    if (v121 == ++v31)
    {
      v27 = obj;
      v121 = [obj countByEnumeratingWithState:&v134 objects:v147 count:16];
      if (!v121)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }
  }

  zoneName7 = [v32 zoneName];
  v49 = sub_100019104(@"ckksincoming", zoneName7);

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Early-exiting from IncomingQueueOperation due to failure fixing mismatched items", buf, 2u);
  }

  v47 = v114;
  [v114 sendMetricWithResult:1 error:0];
LABEL_33:
  v50 = v115;
  v51 = obj;
  error8 = [(CKKSResultOperation *)self error];
  [v115 sendMetricWithResult:0 error:error8];

  v53 = obj;
LABEL_70:
}

- (BOOL)_onqueueUpdateIQE:(id)e withState:(id)state error:(id *)error
{
  eCopy = e;
  stateCopy = state;
  state = [eCopy state];
  v10 = [state isEqualToString:stateCopy];

  if ((v10 & 1) == 0)
  {
    whereClauseToFindSelf = [eCopy whereClauseToFindSelf];
    v13 = [whereClauseToFindSelf mutableCopy];

    state2 = [eCopy state];
    [v13 setObject:state2 forKeyedSubscript:@"state"];

    [eCopy setState:stateCopy];
    if (![eCopy saveToDatabase:error])
    {

      LOBYTE(v11) = 0;
      goto LABEL_7;
    }

    sqlTable = [objc_opt_class() sqlTable];
    v11 = [CKKSSQLDatabaseObject deleteFromTable:sqlTable where:v13 connection:0 error:error];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  LOBYTE(v11) = 1;
LABEL_7:

  return v11;
}

- (void)_onqueueHandleMismatchedViewItem:(id)item secDbClass:(const SecDbClass *)class attributes:(id)attributes intendedView:(id)view viewState:(id)state keyCache:(id)cache
{
  itemCopy = item;
  attributesCopy = attributes;
  viewCopy = view;
  stateCopy = state;
  cacheCopy = cache;
  zoneID = [stateCopy zoneID];
  zoneName = [zoneID zoneName];
  v21 = sub_100019104(@"ckksincoming", zoneName);

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [itemCopy uuid];
    *buf = 138412546;
    v59 = uuid;
    v60 = 2112;
    v61 = viewCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received an item (%@), which should be in view %@", buf, 0x16u);
  }

  action = [itemCopy action];
  if ([action isEqualToString:@"add"])
  {
  }

  else
  {
    action2 = [itemCopy action];
    v25 = [action2 isEqualToString:@"modify"];

    if (!v25)
    {
      action3 = [itemCopy action];
      v36 = [action3 isEqualToString:@"delete"];

      if (v36)
      {
        v37 = [[CKRecordZoneID alloc] initWithZoneName:viewCopy ownerName:CKCurrentUserDefaultName];
        uuid2 = [itemCopy uuid];
        selfCopy = self;
        v40 = v37;
        deps = [(CKKSIncomingQueueOperation *)selfCopy deps];
        contextID = [deps contextID];
        v56 = 0;
        v54 = v40;
        v43 = [CKKSMirrorEntry tryFromDatabase:uuid2 contextID:contextID zoneID:v40 error:&v56];
        v44 = v56;

        zoneID2 = [stateCopy zoneID];
        zoneName2 = [zoneID2 zoneName];
        v47 = sub_100019104(@"ckksincoming", zoneName2);

        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
        if (!v43 || v44)
        {
          if (v48)
          {
            *buf = 138412290;
            v59 = v44;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Unable to load CKKSMirrorEntry from database* %@", buf, 0xCu);
          }

          v49 = v54;
        }

        else
        {
          if (v48)
          {
            *buf = 138412546;
            v59 = viewCopy;
            v60 = 2112;
            v61 = v43;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Other view (%@) already knows about this item, dropping incoming queue entry: %@", buf, 0x16u);
          }

          v55 = 0;
          [itemCopy deleteFromDatabase:&v55];
          v47 = v55;
          v49 = v54;
          if (v47)
          {
            v53 = v43;
            zoneID3 = [stateCopy zoneID];
            zoneName3 = [zoneID3 zoneName];
            v52 = sub_100019104(@"ckksincoming", zoneName3);

            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v59 = v47;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Unable to delete IQE: %@", buf, 0xCu);
            }

            v43 = v53;
            v49 = v54;
          }
        }
      }

      goto LABEL_17;
    }
  }

  v57 = 0;
  v26 = sub_10001A690(class, attributesCopy, dword_10039E2F8, &v57);
  if (v26 && !v57)
  {
    v27 = v26;
    if ([(CKKSIncomingQueueOperation *)self _onqueueHandleIQEChange:itemCopy item:v26 viewState:stateCopy sortedForThisView:0 keyCache:cacheCopy])
    {
      zoneID4 = [stateCopy zoneID];
      zoneName4 = [zoneID4 zoneName];
      v30 = sub_100019104(@"ckksincoming", zoneName4);

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = viewCopy;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Wrote a keychain item that is actually for %@; requesting scan", buf, 0xCu);
      }

      viewsToScan = [(CKKSIncomingQueueOperation *)self viewsToScan];
      [viewsToScan addObject:viewCopy];
    }

    goto LABEL_16;
  }

  zoneID5 = [stateCopy zoneID];
  zoneName5 = [zoneID5 zoneName];
  v34 = sub_100019104(@"ckksincoming", zoneName5);

  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v59 = v57;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to create SecDbItemRef from IQE: %@", buf, 0xCu);
  }

  v27 = v57;
  if (v57)
  {
    v57 = 0;
LABEL_16:
    CFRelease(v27);
  }

LABEL_17:
}

- (BOOL)intransaction:(id)intransaction processQueueEntries:(id)entries
{
  intransactionCopy = intransaction;
  entriesCopy = entries;
  v101 = objc_alloc_init(NSMutableArray);
  v100 = objc_alloc_init(NSMutableArray);
  v105 = objc_alloc_init(CKKSMemoryKeyCache);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = entriesCopy;
  v104 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
  if (v104)
  {
    v103 = *v115;
    v8 = &swift_errorRelease_ptr;
    do
    {
      for (i = 0; i != v104; i = i + 1)
      {
        selfCopy = self;
        if (*v115 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v114 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v12 = v11;
        zoneID = [intransactionCopy zoneID];
        zoneName = [zoneID zoneName];
        v15 = sub_100019104(@"ckksincoming", zoneName);

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [v12 uuid];
          action = [v12 action];
          *buf = 138412802;
          v121 = v12;
          v122 = 2112;
          v123 = uuid;
          v124 = 2112;
          v125 = action;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ready to process an incoming queue entry: %@ %@ %@", buf, 0x20u);
        }

        item = [v12 item];
        self = selfCopy;
        deps = [(CKKSIncomingQueueOperation *)selfCopy deps];
        v113 = 0;
        v20 = [CKKSIncomingQueueOperation decryptCKKSItemToAttributes:item keyCache:v105 ckksOperationalDependencies:deps error:&v113];
        v21 = v113;

        v107 = v20;
        v108 = v12;
        if (!v20 || v21)
        {
          deps2 = [(CKKSIncomingQueueOperation *)selfCopy deps];
          lockStateTracker = [deps2 lockStateTracker];
          v37 = [lockStateTracker isLockedError:v21];

          if (v37)
          {
            zoneID2 = [intransactionCopy zoneID];
            zoneName2 = [zoneID2 zoneName];
            v40 = sub_100019104(@"ckksincoming", zoneName2);

            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v121 = v12;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Keychain is locked; can't decrypt IQE %@", buf, 0xCu);
            }

            item2 = [v12 item];
            parentKeyUUID = [item2 parentKeyUUID];
            contextID = [intransactionCopy contextID];
            v44 = intransactionCopy;
            v45 = contextID;
            v46 = v44;
            zoneID3 = [v44 zoneID];
            v112 = 0;
            v48 = [CKKSKey tryFromDatabase:parentKeyUUID contextID:v45 zoneID:zoneID3 error:&v112];
            v49 = v112;

            keyclass = [v48 keyclass];
            LODWORD(parentKeyUUID) = [keyclass isEqualToString:@"classA"];

            if (parentKeyUUID)
            {
              [(CKKSIncomingQueueOperation *)selfCopy setPendingClassAEntries:1];
              [(CKKSIncomingQueueOperation *)selfCopy setPendingClassAEntriesError:v21];
            }

            intransactionCopy = v46;
            self = selfCopy;
            v8 = &swift_errorRelease_ptr;
            v22 = v107;
            v51 = v108;
LABEL_45:
            [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
            goto LABEL_63;
          }

          domain = [v21 domain];
          if ([domain isEqualToString:@"securityd"])
          {
            code = [v21 code];

            v22 = v107;
            if (code == -25300)
            {
              zoneID4 = [intransactionCopy zoneID];
              zoneName3 = [zoneID4 zoneName];
              v56 = sub_100019104(@"ckksincoming", zoneName3);

              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v121 = v21;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Coudn't find key in keychain; will attempt to poke key hierarchy: %@", buf, 0xCu);
              }

              [(CKKSIncomingQueueOperation *)self setMissingKey:1];
              [(CKKSResultOperation *)self setError:v21];
              v51 = v108;
              goto LABEL_45;
            }
          }

          else
          {

            v22 = v107;
          }

          zoneID5 = [intransactionCopy zoneID];
          zoneName4 = [zoneID5 zoneName];
          v72 = sub_100019104(@"ckksincoming", zoneName4);

          v51 = v108;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v121 = v108;
            v122 = 2112;
            v123 = v21;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Couldn't decrypt IQE %@ for some reason: %@", buf, 0x16u);
          }

          [v108 setState:@"error"];
          v111 = 0;
          [v108 saveToDatabase:&v111];
          v73 = v111;
          if (v73)
          {
            zoneID6 = [intransactionCopy zoneID];
            zoneName5 = [zoneID6 zoneName];
            v76 = sub_100019104(@"ckksincoming", zoneName5);

            v51 = v108;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v121 = v108;
              v122 = 2112;
              v123 = v73;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Couldn't save IQE %@ as error for some reason: %@", buf, 0x16u);
            }

            v8 = &swift_errorRelease_ptr;
          }

          [(CKKSResultOperation *)self setError:v21];

          goto LABEL_45;
        }

        v22 = v20;
        v23 = [v20 objectForKey:kSecClass];
        v24 = v8[332];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v118 = NSLocalizedDescriptionKey;
          v57 = [v8[332] stringWithFormat:@"Item did not have a reasonable class: %@", v23];
          v119 = v57;
          v58 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
          v59 = [NSError errorWithDomain:@"securityd" code:-67671 userInfo:v58];
          [(CKKSResultOperation *)self setError:v59];

          zoneID7 = [intransactionCopy zoneID];
          zoneName6 = [zoneID7 zoneName];
          v62 = sub_100019104(@"ckksincoming", zoneName6);

          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            error = [(CKKSResultOperation *)self error];
            *buf = 138412290;
            v121 = error;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Synced item seems wrong: %@", buf, 0xCu);
          }

          [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
          v21 = 0;
          v8 = &swift_errorRelease_ptr;
          v51 = v108;
          goto LABEL_62;
        }

        if (!v23 || (v25 = sub_1000074BC(v23)) == 0)
        {
          zoneID8 = [intransactionCopy zoneID];
          zoneName7 = [zoneID8 zoneName];
          v66 = sub_100019104(@"ckksincoming", zoneName7);

          v51 = v108;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v121 = v23;
            v122 = 2112;
            v123 = v108;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "unknown class in object: %@ %@", buf, 0x16u);
          }

          [v108 setState:@"error"];
          v110 = 0;
          [v108 saveToDatabase:&v110];
          v21 = v110;
          if (v21)
          {
            zoneID9 = [intransactionCopy zoneID];
            zoneName8 = [zoneID9 zoneName];
            v69 = sub_100019104(@"ckksincoming", zoneName8);

            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v121 = v21;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Couldn't save errored IQE to database: %@", buf, 0xCu);
            }

            [(CKKSResultOperation *)self setError:v21];
            v51 = v108;
          }

          [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
          v8 = &swift_errorRelease_ptr;
          goto LABEL_62;
        }

        v26 = v25;
        deps3 = [(CKKSIncomingQueueOperation *)self deps];
        syncingPolicy = [deps3 syncingPolicy];
        v29 = [syncingPolicy mapDictionaryToView:v107];

        zoneID10 = [intransactionCopy zoneID];
        zoneName9 = [zoneID10 zoneName];
        v32 = [zoneName9 isEqualToString:v29];

        if (v32)
        {
          v33 = v108;
          action2 = [v108 action];
          if ([action2 isEqualToString:@"add"])
          {
          }

          else
          {
            action3 = [v108 action];
            v78 = [action3 isEqualToString:@"modify"];

            v33 = v108;
            if (!v78)
            {
              action4 = [v108 action];
              v93 = [action4 isEqualToString:@"delete"];

              if (v93)
              {
                [(CKKSIncomingQueueOperation *)self _onqueueHandleIQEDelete:v108 class:v26 viewState:intransactionCopy];
                v94 = [CKRecordID alloc];
                uuid2 = [v108 uuid];
                zoneID11 = [intransactionCopy zoneID];
                v97 = [v94 initWithRecordName:uuid2 zoneID:zoneID11];
                [v100 addObject:v97];
              }

              v21 = 0;
              v8 = &swift_errorRelease_ptr;
              v51 = v108;
              v22 = v107;
              goto LABEL_61;
            }
          }

          [(CKKSIncomingQueueOperation *)self _onqueueHandleIQEChange:v33 attributes:v107 class:v26 viewState:intransactionCopy sortedForThisView:1 keyCache:v105];
          v79 = v33;
          v22 = v107;
          item3 = [v79 item];
          zoneID12 = [intransactionCopy zoneID];
          v82 = [item3 CKRecordWithZoneID:zoneID12];
          [v101 addObject:v82];

          v51 = v108;
        }

        else
        {
          if (![(CKKSIncomingQueueOperation *)self handleMismatchedViewItems])
          {
            zoneID13 = [intransactionCopy zoneID];
            zoneName10 = [zoneID13 zoneName];
            v85 = sub_100019104(@"ckksincoming", zoneName10);

            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              uuid3 = [v108 uuid];
              *buf = 138412546;
              v121 = uuid3;
              v122 = 2112;
              v123 = v29;
              _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Received an item (%@), but our current policy claims it should be in view %@", buf, 0x16u);
            }

            v109 = 0;
            [(CKKSIncomingQueueOperation *)self _onqueueUpdateIQE:v108 withState:@"mismatched_view" error:&v109];
            v21 = v109;
            if (v21)
            {
              zoneID14 = [intransactionCopy zoneID];
              zoneName11 = [zoneID14 zoneName];
              v89 = sub_100019104(@"ckksincoming", zoneName11);

              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v121 = v21;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Couldn't save mismatched IQE to database: %@", buf, 0xCu);
              }

              [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
              [(CKKSResultOperation *)self setError:v21];
            }

            deps4 = [(CKKSIncomingQueueOperation *)self deps];
            requestPolicyCheck = [deps4 requestPolicyCheck];
            [requestPolicyCheck trigger];

            v8 = &swift_errorRelease_ptr;
            v51 = v108;
            goto LABEL_61;
          }

          v51 = v108;
          [(CKKSIncomingQueueOperation *)self _onqueueHandleMismatchedViewItem:v108 secDbClass:v26 attributes:v107 intendedView:v29 viewState:intransactionCopy keyCache:v105];
        }

        v21 = 0;
        v8 = &swift_errorRelease_ptr;
LABEL_61:

LABEL_62:
LABEL_63:

        objc_autoreleasePoolPop(context);
      }

      v104 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
    }

    while (v104);
  }

  if ([v101 count] || objc_msgSend(v100, "count"))
  {
    notifyViewChangedScheduler = [intransactionCopy notifyViewChangedScheduler];
    [notifyViewChangedScheduler trigger];
  }

  -[CKKSIncomingQueueOperation setDeletedRecordCount:](self, "setDeletedRecordCount:", [v100 count] + -[CKKSIncomingQueueOperation deletedRecordCount](self, "deletedRecordCount"));

  return 1;
}

- (BOOL)processNewCurrentItemPointers:(id)pointers viewState:(id)state
{
  pointersCopy = pointers;
  stateCopy = state;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = pointersCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * v11);
        v14 = objc_autoreleasePoolPush();
        [v13 setState:@"local"];
        v23 = v12;
        [v13 saveToDatabase:&v23];
        v9 = v23;

        zoneName = [stateCopy zoneName];
        v16 = sub_100019104(@"ckkspointer", zoneName);

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Saving new current item pointer: %@", buf, 0xCu);
        }

        v17 = v9 == 0;
        if (v9)
        {
          zoneName2 = [stateCopy zoneName];
          v19 = sub_100019104(@"ckksincoming", zoneName2);

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v29 = v9;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error saving new current item pointer: %@ %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v14);
        v11 = v11 + 1;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v17 = 1;
  }

  if ([obj count])
  {
    notifyViewChangedScheduler = [stateCopy notifyViewChangedScheduler];
    [notifyViewChangedScheduler trigger];
  }

  return v17;
}

- (CKKSIncomingQueueOperation)initWithDependencies:(id)dependencies intending:(id)intending pendingClassAItemsRemainingState:(id)state errorState:(id)errorState handleMismatchedViewItems:(BOOL)items
{
  dependenciesCopy = dependencies;
  intendingCopy = intending;
  stateCopy = state;
  errorStateCopy = errorState;
  v22.receiver = self;
  v22.super_class = CKKSIncomingQueueOperation;
  v17 = [(CKKSResultOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, dependencies);
    objc_storeStrong(&v18->_intendedState, intending);
    objc_storeStrong(&v18->_nextState, errorState);
    objc_storeStrong(&v18->_stateIfClassAItemsRemaining, state);
    v18->_pendingClassAEntries = 0;
    v18->_handleMismatchedViewItems = items;
    v19 = +[NSMutableSet set];
    viewsToScan = v18->_viewsToScan;
    v18->_viewsToScan = v19;

    v18->_deletedRecordCount = 0;
    [(CKKSIncomingQueueOperation *)v18 setName:@"incoming-queue-operation"];
  }

  return v18;
}

+ (id)decryptCKKSItemToAttributes:(id)attributes keyCache:(id)cache ckksOperationalDependencies:(id)dependencies error:(id *)error
{
  attributesCopy = attributes;
  v9 = [CKKSItemEncrypter decryptItemToDictionary:attributesCopy keyCache:cache error:error];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    uuid = [attributesCopy uuid];
    [v10 setObject:uuid forKeyedSubscript:kSecAttrUUID];

    plaintextPCSServiceIdentifier = [attributesCopy plaintextPCSServiceIdentifier];

    if (plaintextPCSServiceIdentifier)
    {
      plaintextPCSServiceIdentifier2 = [attributesCopy plaintextPCSServiceIdentifier];
      [v10 setObject:plaintextPCSServiceIdentifier2 forKeyedSubscript:kSecAttrPCSPlaintextServiceIdentifier];
    }

    plaintextPCSPublicKey = [attributesCopy plaintextPCSPublicKey];

    if (plaintextPCSPublicKey)
    {
      plaintextPCSPublicKey2 = [attributesCopy plaintextPCSPublicKey];
      [v10 setObject:plaintextPCSPublicKey2 forKeyedSubscript:kSecAttrPCSPlaintextPublicKey];
    }

    plaintextPCSPublicIdentity = [attributesCopy plaintextPCSPublicIdentity];

    if (plaintextPCSPublicIdentity)
    {
      plaintextPCSPublicIdentity2 = [attributesCopy plaintextPCSPublicIdentity];
      [v10 setObject:plaintextPCSPublicIdentity2 forKeyedSubscript:kSecAttrPCSPlaintextPublicIdentity];
    }

    [v10 setValue:&__kCFBooleanTrue forKey:kSecAttrSynchronizable];
    v18 = v10;
  }

  return v10;
}

@end