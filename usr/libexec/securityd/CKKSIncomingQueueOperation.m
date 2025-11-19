@interface CKKSIncomingQueueOperation
+ (id)decryptCKKSItemToAttributes:(id)a3 keyCache:(id)a4 ckksOperationalDependencies:(id)a5 error:(id *)a6;
- (BOOL)_onqueueHandleIQEChange:(id)a3 item:(SecDbItem *)a4 viewState:(id)a5 sortedForThisView:(BOOL)a6 keyCache:(id)a7;
- (BOOL)_onqueueUpdateIQE:(id)a3 withState:(id)a4 error:(id *)a5;
- (BOOL)fixMismatchedViewItems:(id)a3;
- (BOOL)intransaction:(id)a3 processQueueEntries:(id)a4;
- (BOOL)loadAndProcessEntries:(id)a3 withActionFilter:(id)a4 totalQueueEntries:(int64_t *)a5;
- (BOOL)processNewCurrentItemPointers:(id)a3 viewState:(id)a4;
- (CKKSIncomingQueueOperation)initWithDependencies:(id)a3 intending:(id)a4 pendingClassAItemsRemainingState:(id)a5 errorState:(id)a6 handleMismatchedViewItems:(BOOL)a7;
- (void)_onqueueGenerateNewUUIDPersistentRefOnSecItem:(SecDbItem *)a3 viewState:(id)a4;
- (void)_onqueueHandleIQEDelete:(id)a3 class:(const SecDbClass *)a4 viewState:(id)a5;
- (void)_onqueueHandleMismatchedViewItem:(id)a3 secDbClass:(const SecDbClass *)a4 attributes:(id)a5 intendedView:(id)a6 viewState:(id)a7 keyCache:(id)a8;
- (void)main;
@end

@implementation CKKSIncomingQueueOperation

- (void)_onqueueHandleIQEDelete:(id)a3 class:(const SecDbClass *)a4 viewState:(id)a5
{
  v8 = a3;
  v9 = a5;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v58[0] = a4->var0;
  v57[0] = kSecClass;
  v57[1] = kSecAttrUUID;
  v10 = [v8 uuid];
  v57[2] = kSecAttrSynchronizable;
  v58[1] = v10;
  v58[2] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];

  v12 = [v9 zoneID];
  v13 = [v12 zoneName];
  v14 = sub_100019104(@"ckksincoming", v13);

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
    v16 = [v9 zoneID];
    v17 = [v16 zoneName];
    v18 = sub_100019104(@"ckksincoming", v17);

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
      v30 = [v9 zoneID];
      v31 = [v30 zoneName];
      v32 = sub_100019104(@"ckksincoming", v31);

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

    v25 = [v9 zoneID];
    v26 = [v25 zoneName];
    v27 = sub_100019104(@"ckksincoming", v26);

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
    v34 = [v9 zoneID];
    v35 = [v34 zoneName];
    v36 = sub_100019104(@"ckksincoming", v35);

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

  v40 = [v9 zoneID];
  v41 = [v40 zoneName];
  v42 = sub_100019104(@"ckksincoming", v41);

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Correctly processed an IQE; deleting", buf, 2u);
  }

  v47 = 0;
  [v8 deleteFromDatabase:&v47];
  v43 = v47;
  if (!v43)
  {
    [(CKKSIncomingQueueOperation *)self setSuccessfulItemsProcessed:[(CKKSIncomingQueueOperation *)self successfulItemsProcessed]+ 1];
    goto LABEL_25;
  }

  v20 = v43;
  v44 = [v9 zoneID];
  v45 = [v44 zoneName];
  v46 = sub_100019104(@"ckksincoming", v45);

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

- (BOOL)_onqueueHandleIQEChange:(id)a3 item:(SecDbItem *)a4 viewState:(id)a5 sortedForThisView:(BOOL)a6 keyCache:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
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
  if (sub_10001A700(a4))
  {
    v15 = [v13 zoneID];
    v16 = [v15 zoneName];
    v17 = sub_100019104(@"ckksincoming", v16);

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v12 uuid];
      *buf = 138412547;
      *&buf[4] = v18;
      *&buf[12] = 2113;
      *&buf[14] = a4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Rejecting a tombstone item addition from CKKS(%@): %{private}@", buf, 0x16u);
    }

    v19 = [(CKKSIncomingQueueOperation *)self deps];
    v20 = [v19 contextID];
    v21 = [v13 zoneID];
    v120 = 0;
    v22 = [CKKSOutgoingQueueEntry withItem:a4 action:@"delete" contextID:v20 zoneID:v21 keyCache:v14 error:&v120];
    v23 = v120;

    v119 = v23;
    [v22 saveToDatabase:&v119];
    v24 = v119;

    if (v24)
    {
      v25 = [v13 zoneID];
      v26 = [v25 zoneName];
      v27 = sub_100019104(@"ckksincoming", v26);

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
      [v12 deleteFromDatabase:&v118];
      v54 = v118;
      if (v54)
      {
        v24 = v54;
        v55 = [v13 zoneID];
        v56 = [v55 zoneName];
        v57 = sub_100019104(@"ckksincoming", v56);

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

  if (!sub_1001636C4(a4))
  {
    v41 = [v13 zoneID];
    v42 = [v41 zoneName];
    v43 = sub_100019104(@"ckksincoming", v42);

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [v12 uuid];
      *buf = 138412547;
      *&buf[4] = v44;
      *&buf[12] = 2113;
      *&buf[14] = a4;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Rejecting a multiuser item addition from CKKS(%@): %{private}@", buf, 0x16u);
    }

    v45 = [(CKKSIncomingQueueOperation *)self deps];
    v46 = [v45 contextID];
    v47 = [v13 zoneID];
    v117 = 0;
    v48 = [CKKSOutgoingQueueEntry withItem:a4 action:@"delete" contextID:v46 zoneID:v47 keyCache:v14 error:&v117];
    v49 = v117;

    v116 = v49;
    [v48 saveToDatabase:&v116];
    v50 = v116;

    if (v50)
    {
      v51 = [v13 zoneID];
      v52 = [v51 zoneName];
      v53 = sub_100019104(@"ckksincoming", v52);

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
      [v12 deleteFromDatabase:&v115];
      v58 = v115;
      if (v58)
      {
        v50 = v58;
        v59 = [v13 zoneID];
        v60 = [v59 zoneName];
        v61 = sub_100019104(@"ckksincoming", v60);

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

  v28 = self;
  v29 = v13;
  v30 = v14;
  v31 = v12;
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
  v140 = CFDictionaryGetValue(a4->var6, kSecAttrModificationDate);
  v32 = v128;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_1000D533C;
  v95[3] = &unk_100336AC0;
  v105 = a4;
  v100 = &v127;
  v91 = v29;
  v96 = v91;
  v33 = v31;
  v106 = a6;
  v101 = &v111;
  v97 = v33;
  v98 = v28;
  v99 = v30;
  v102 = &v121;
  v103 = buf;
  v104 = &v107;
  if (!sub_100008A70(1, 1, 0, (v32 + 3), v95) || v128[3])
  {
    v34 = [v91 zoneID];
    v35 = [v34 zoneName];
    v36 = sub_100019104(@"ckksincoming", v35);

    v12 = v31;
    v14 = v30;
    v13 = v29;
    v37 = v28;

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

      [(CKKSResultOperation *)v28 setError:v122[5]];
    }

    else
    {
      v133 = NSLocalizedDescriptionKey;
      v134 = @"kc_with_dbt failed without error";
      v62 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
      v63 = [NSError errorWithDomain:@"securityd" code:-67671 userInfo:v62];
      [(CKKSResultOperation *)v28 setError:v63];
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

    v65 = [v92 zoneID];
    v66 = [v65 zoneName];
    v67 = sub_100019104(@"ckksincoming", v66);

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
    v71 = [v91 zoneID];
    v12 = v31;
    v14 = v30;
    v13 = v29;
    v37 = v28;
    v72 = [v71 zoneName];
    v67 = sub_100019104(@"ckksincoming", v72);

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

  v75 = [v91 zoneID];
  v12 = v31;
  v14 = v30;
  v13 = v29;
  v76 = v28;
  v77 = [v75 zoneName];
  v78 = sub_100019104(@"ckksincoming", v77);

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
    v80 = [v91 zoneID];
    v81 = [v80 zoneName];
    v82 = sub_100019104(@"ckksincoming", v81);

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
    [(CKKSIncomingQueueOperation *)v28 setSuccessfulItemsProcessed:[(CKKSIncomingQueueOperation *)v28 successfulItemsProcessed]+ 1];
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
    v88 = [v91 zoneID];
    v89 = [v88 zoneName];
    v132[1] = v89;
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

- (void)_onqueueGenerateNewUUIDPersistentRefOnSecItem:(SecDbItem *)a3 viewState:(id)a4
{
  v5 = a4;
  v6 = CFUUIDCreate(kCFAllocatorDefault);
  bytes = CFUUIDGetUUIDBytes(v6);
  v7 = CFDataCreate(kCFAllocatorDefault, &bytes.byte0, 16);
  cf = 0;
  sub_10001A804(a3, v7, &cf);
  v8 = [v5 zoneID];

  v9 = [v8 zoneName];
  v10 = sub_100019104(@"ckksincoming", v9);

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v15 = a3;
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

- (BOOL)fixMismatchedViewItems:(id)a3
{
  v4 = a3;
  if ([(CKKSIncomingQueueOperation *)self handleMismatchedViewItems])
  {
    v5 = [AAFAnalyticsEventSecurity alloc];
    v6 = [(CKKSIncomingQueueOperation *)self deps];
    v7 = [v6 activeAccount];
    v8 = [v7 altDSID];
    v9 = [(CKKSIncomingQueueOperation *)self deps];
    v21 = [v5 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v8 eventName:kSecurityRTCEventNameFixMismatchedViewItems testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:{objc_msgSend(v9, "sendMetric")}];

    v10 = [v4 zoneName];
    v11 = sub_100019104(@"ckksincoming", v10);

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
    v12 = [(CKKSIncomingQueueOperation *)self deps];
    v13 = [v12 databaseProvider];

    while (v43[3] == 50)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000D65E0;
      v22[3] = &unk_100336A70;
      v24 = buf;
      v22[4] = self;
      v23 = v4;
      v25 = &v32;
      v26 = &v42;
      v27 = &v28;
      [v13 dispatchSyncWithSQLTransaction:v22];
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
      v17 = [(CKKSResultOperation *)self error];
      [v21 sendMetricWithResult:v16 ^ 1u error:v17];
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

- (BOOL)loadAndProcessEntries:(id)a3 withActionFilter:(id)a4 totalQueueEntries:(int64_t *)a5
{
  v17 = a3;
  v16 = a4;
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
  v8 = [(CKKSIncomingQueueOperation *)self deps];
  v9 = [v8 databaseProvider];

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
      v11 = v17;
      v20 = v11;
      v22 = &v36;
      v23 = v30;
      v21 = v16;
      v24 = &v32;
      v25 = &v26;
      [v9 dispatchSyncWithSQLTransaction:v19];
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

    v13 = [v11 zoneName];
    v14 = sub_100019104(@"ckksincoming", v13);

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Early-exiting from IncomingQueueOperation", buf, 2u);
    }

    *a5 = v27[3];
    v12 = 0;
  }

  else
  {
LABEL_5:
    *a5 = v10;
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
  v3 = [(CKKSIncomingQueueOperation *)self deps];
  v123 = [v3 databaseProvider];

  v4 = [(CKKSIncomingQueueOperation *)self deps];
  v5 = [v4 readyAndSyncingViews];

  v6 = sub_100019104(@"ckksincoming", 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v144 = v5;
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
  +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  v8 = v5;
  v9 = v124 = v5;
  v151[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:3];
  v11 = [(CKKSIncomingQueueOperation *)self deps];
  v12 = [v11 activeAccount];
  v13 = [v12 altDSID];
  v14 = kSecurityRTCEventNameProcessIncomingQueue;
  v15 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v118 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v16 = [(CKKSIncomingQueueOperation *)self deps];
  v115 = [obja initWithCKKSMetrics:v10 altDSID:v13 eventName:v14 testsAreEnabled:0 category:v15 sendMetric:{objc_msgSend(v16, "sendMetric")}];

  v17 = [AAFAnalyticsEventSecurity alloc];
  v148 = v120;
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
  v149 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
  v20 = [(CKKSIncomingQueueOperation *)self deps];
  v21 = [v20 activeAccount];
  v22 = [v21 altDSID];
  v23 = kSecurityRTCEventNameLoadAndProcessIQEs;
  v24 = [(CKKSIncomingQueueOperation *)self deps];
  v114 = [v17 initWithCKKSMetrics:v19 altDSID:v22 eventName:v23 testsAreEnabled:0 category:v118 sendMetric:{objc_msgSend(v24, "sendMetric")}];

  v25 = [(CKKSIncomingQueueOperation *)self deps];
  v26 = [v25 overallLaunch];
  [v26 addEvent:@"incoming-processing-begin"];

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
      v58 = [(CKKSIncomingQueueOperation *)self deps];
      [v58 setCurrentOutgoingQueueOperationGroup:v57];

      v59 = [(CKKSIncomingQueueOperation *)self deps];
      v60 = [v59 flagHandler];
      [v60 handleFlag:@"process_outgoing_queue"];
    }

    if ([(CKKSIncomingQueueOperation *)self missingKey])
    {
      [(CKKSIncomingQueueOperation *)self setNextState:@"process_key_hierarchy"];
    }

    else
    {
      if ([(CKKSIncomingQueueOperation *)self pendingClassAEntries])
      {
        v61 = [[OctagonPendingFlag alloc] initWithFlag:@"process_incoming_queue" conditions:1];
        v62 = [(CKKSIncomingQueueOperation *)self deps];
        v63 = [v62 flagHandler];
        [v63 handlePendingFlag:v61];

        v64 = [(CKKSIncomingQueueOperation *)self pendingClassAEntriesError];
        [(CKKSResultOperation *)self setError:v64];

        v65 = [(CKKSIncomingQueueOperation *)self stateIfClassAItemsRemaining];
        [(CKKSIncomingQueueOperation *)self setNextState:v65];
      }

      else
      {
        v61 = [(CKKSIncomingQueueOperation *)self intendedState];
        [(CKKSIncomingQueueOperation *)self setNextState:v61];
      }
    }

    v66 = [(CKKSIncomingQueueOperation *)self viewsToScan];
    v67 = [v66 count];

    if (v67)
    {
      v68 = sub_100019104(@"ckksincoming", 0);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [(CKKSIncomingQueueOperation *)self viewsToScan];
        *buf = 138412290;
        v144 = v69;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Requesting scan for %@", buf, 0xCu);
      }

      v70 = [(CKKSIncomingQueueOperation *)self deps];
      v71 = [v70 flagHandler];
      [v71 handleFlag:@"dropped_items"];
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

      v91 = [(CKKSIncomingQueueOperation *)self deps];
      v92 = [v91 activeManagedViews];
      if ([v92 count])
      {
        v93 = [(CKKSIncomingQueueOperation *)self deps];
        v94 = [v93 activeManagedViews];
        v95 = v122 / [v94 count];
      }

      else
      {
        v95 = 0;
      }

      v51 = obj;

      v96 = [(CKKSIncomingQueueOperation *)self deps];
      v97 = [v96 activeManagedViews];
      if ([v97 count])
      {
        v98 = [(CKKSIncomingQueueOperation *)self deps];
        v99 = [v98 activeManagedViews];
        v100 = v119 / [v99 count];
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
      v109 = [(CKKSResultOperation *)self error];
      v50 = v115;
      [v115 sendMetricWithResult:v108 error:v109];

      v110 = [(CKKSIncomingQueueOperation *)self deps];
      v111 = [v110 overallLaunch];
      [v111 addEvent:@"incoming-processing-complete"];

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
      v77 = [v76 launch];
      [v77 addEvent:@"incoming-processed"];

      v78 = [(CKKSResultOperation *)self error];

      if (v78)
      {
        v79 = [(CKKSIncomingQueueOperation *)self deps];
        v80 = [v79 lockStateTracker];
        v81 = [(CKKSResultOperation *)self error];
        v82 = [v80 isLockedError:v81];

        if ((v82 & 1) == 0)
        {
          v83 = [(CKKSResultOperation *)self error];
          v84 = [v76 zoneID];
          v85 = [v84 zoneName];
          [v53 logRecoverableError:v83 forEvent:@"CKKSEventProcessIncomingQueueClassC" zoneName:v85 withAttributes:0];

          v86 = [(CKKSResultOperation *)self error];
          v87 = [v76 zoneID];
          v88 = [v87 zoneName];
          [v53 logRecoverableError:v86 forEvent:@"CKKSEventProcessIncomingQueueClassA" zoneName:v88 withAttributes:0];

LABEL_57:
        }
      }

      else
      {
        v89 = [v76 zoneID];
        v90 = [v89 zoneName];
        [v53 logSuccessForEvent:@"CKKSEventProcessIncomingQueueClassC" zoneName:v90];

        if (![(CKKSIncomingQueueOperation *)self pendingClassAEntries])
        {
          v86 = [v76 zoneID];
          v87 = [v86 zoneName];
          [v53 logSuccessForEvent:@"CKKSEventProcessIncomingQueueClassA" zoneName:v87];
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
    v33 = [v32 launch];
    [v33 addEvent:@"incoming-processing-begin"];

    [(CKKSIncomingQueueOperation *)self setSuccessfulItemsProcessed:0];
    [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:0];
    v132 = 0;
    v133 = 0;
    if (![(CKKSIncomingQueueOperation *)self loadAndProcessEntries:v32 withActionFilter:@"delete" totalQueueEntries:&v133])
    {
      v41 = [v32 zoneName];
      v42 = sub_100019104(@"ckksincoming", v41);

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(CKKSResultOperation *)self error];
        *buf = 138412290;
        v144 = v43;
        v44 = "Early-exiting from IncomingQueueOperation (after processing deletes): %@";
        goto LABEL_28;
      }

LABEL_29:

      v46 = [(CKKSResultOperation *)self error];
      v47 = v114;
      [v114 sendMetricWithResult:0 error:v46];

      goto LABEL_33;
    }

    v34 = v133;
    if (![(CKKSIncomingQueueOperation *)self loadAndProcessEntries:v32 withActionFilter:0 totalQueueEntries:&v132])
    {
      v45 = [v32 zoneName];
      v42 = sub_100019104(@"ckksincoming", v45);

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(CKKSResultOperation *)self error];
        *buf = 138412290;
        v144 = v43;
        v44 = "Early-exiting from IncomingQueueOperation (after processing all incoming entries): %@";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);
      }

      goto LABEL_29;
    }

    v35 = v132;
    if ([(CKKSIncomingQueueOperation *)self successfulItemsProcessed]|| [(CKKSIncomingQueueOperation *)self errorItemsProcessed])
    {
      v36 = [v32 zoneName];
      v37 = sub_100019104(@"ckksincoming", v36);

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(CKKSIncomingQueueOperation *)self successfulItemsProcessed];
        v39 = [(CKKSIncomingQueueOperation *)self errorItemsProcessed];
        *buf = 134218240;
        v144 = v38;
        v145 = 2048;
        v146 = v39;
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
    [v123 dispatchSyncWithSQLTransaction:v131];
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

  v48 = [v32 zoneName];
  v49 = sub_100019104(@"ckksincoming", v48);

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
  v52 = [(CKKSResultOperation *)self error];
  [v115 sendMetricWithResult:0 error:v52];

  v53 = obj;
LABEL_70:
}

- (BOOL)_onqueueUpdateIQE:(id)a3 withState:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 state];
  v10 = [v9 isEqualToString:v8];

  if ((v10 & 1) == 0)
  {
    v12 = [v7 whereClauseToFindSelf];
    v13 = [v12 mutableCopy];

    v14 = [v7 state];
    [v13 setObject:v14 forKeyedSubscript:@"state"];

    [v7 setState:v8];
    if (![v7 saveToDatabase:a5])
    {

      LOBYTE(v11) = 0;
      goto LABEL_7;
    }

    v15 = [objc_opt_class() sqlTable];
    v11 = [CKKSSQLDatabaseObject deleteFromTable:v15 where:v13 connection:0 error:a5];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  LOBYTE(v11) = 1;
LABEL_7:

  return v11;
}

- (void)_onqueueHandleMismatchedViewItem:(id)a3 secDbClass:(const SecDbClass *)a4 attributes:(id)a5 intendedView:(id)a6 viewState:(id)a7 keyCache:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v17 zoneID];
  v20 = [v19 zoneName];
  v21 = sub_100019104(@"ckksincoming", v20);

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v14 uuid];
    *buf = 138412546;
    v59 = v22;
    v60 = 2112;
    v61 = v16;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received an item (%@), which should be in view %@", buf, 0x16u);
  }

  v23 = [v14 action];
  if ([v23 isEqualToString:@"add"])
  {
  }

  else
  {
    v24 = [v14 action];
    v25 = [v24 isEqualToString:@"modify"];

    if (!v25)
    {
      v35 = [v14 action];
      v36 = [v35 isEqualToString:@"delete"];

      if (v36)
      {
        v37 = [[CKRecordZoneID alloc] initWithZoneName:v16 ownerName:CKCurrentUserDefaultName];
        v38 = [v14 uuid];
        v39 = self;
        v40 = v37;
        v41 = [(CKKSIncomingQueueOperation *)v39 deps];
        v42 = [v41 contextID];
        v56 = 0;
        v54 = v40;
        v43 = [CKKSMirrorEntry tryFromDatabase:v38 contextID:v42 zoneID:v40 error:&v56];
        v44 = v56;

        v45 = [v17 zoneID];
        v46 = [v45 zoneName];
        v47 = sub_100019104(@"ckksincoming", v46);

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
            v59 = v16;
            v60 = 2112;
            v61 = v43;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Other view (%@) already knows about this item, dropping incoming queue entry: %@", buf, 0x16u);
          }

          v55 = 0;
          [v14 deleteFromDatabase:&v55];
          v47 = v55;
          v49 = v54;
          if (v47)
          {
            v53 = v43;
            v50 = [v17 zoneID];
            v51 = [v50 zoneName];
            v52 = sub_100019104(@"ckksincoming", v51);

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
  v26 = sub_10001A690(a4, v15, dword_10039E2F8, &v57);
  if (v26 && !v57)
  {
    v27 = v26;
    if ([(CKKSIncomingQueueOperation *)self _onqueueHandleIQEChange:v14 item:v26 viewState:v17 sortedForThisView:0 keyCache:v18])
    {
      v28 = [v17 zoneID];
      v29 = [v28 zoneName];
      v30 = sub_100019104(@"ckksincoming", v29);

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v16;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Wrote a keychain item that is actually for %@; requesting scan", buf, 0xCu);
      }

      v31 = [(CKKSIncomingQueueOperation *)self viewsToScan];
      [v31 addObject:v16];
    }

    goto LABEL_16;
  }

  v32 = [v17 zoneID];
  v33 = [v32 zoneName];
  v34 = sub_100019104(@"ckksincoming", v33);

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

- (BOOL)intransaction:(id)a3 processQueueEntries:(id)a4
{
  v6 = a3;
  v7 = a4;
  v101 = objc_alloc_init(NSMutableArray);
  v100 = objc_alloc_init(NSMutableArray);
  v105 = objc_alloc_init(CKKSMemoryKeyCache);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v7;
  v104 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
  if (v104)
  {
    v103 = *v115;
    v8 = &swift_errorRelease_ptr;
    do
    {
      for (i = 0; i != v104; i = i + 1)
      {
        v10 = self;
        if (*v115 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v114 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v12 = v11;
        v13 = [v6 zoneID];
        v14 = [v13 zoneName];
        v15 = sub_100019104(@"ckksincoming", v14);

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v12 uuid];
          v17 = [v12 action];
          *buf = 138412802;
          v121 = v12;
          v122 = 2112;
          v123 = v16;
          v124 = 2112;
          v125 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ready to process an incoming queue entry: %@ %@ %@", buf, 0x20u);
        }

        v18 = [v12 item];
        self = v10;
        v19 = [(CKKSIncomingQueueOperation *)v10 deps];
        v113 = 0;
        v20 = [CKKSIncomingQueueOperation decryptCKKSItemToAttributes:v18 keyCache:v105 ckksOperationalDependencies:v19 error:&v113];
        v21 = v113;

        v107 = v20;
        v108 = v12;
        if (!v20 || v21)
        {
          v35 = [(CKKSIncomingQueueOperation *)v10 deps];
          v36 = [v35 lockStateTracker];
          v37 = [v36 isLockedError:v21];

          if (v37)
          {
            v38 = [v6 zoneID];
            v39 = [v38 zoneName];
            v40 = sub_100019104(@"ckksincoming", v39);

            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v121 = v12;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Keychain is locked; can't decrypt IQE %@", buf, 0xCu);
            }

            v41 = [v12 item];
            v42 = [v41 parentKeyUUID];
            v43 = [v6 contextID];
            v44 = v6;
            v45 = v43;
            v46 = v44;
            v47 = [v44 zoneID];
            v112 = 0;
            v48 = [CKKSKey tryFromDatabase:v42 contextID:v45 zoneID:v47 error:&v112];
            v49 = v112;

            v50 = [v48 keyclass];
            LODWORD(v42) = [v50 isEqualToString:@"classA"];

            if (v42)
            {
              [(CKKSIncomingQueueOperation *)v10 setPendingClassAEntries:1];
              [(CKKSIncomingQueueOperation *)v10 setPendingClassAEntriesError:v21];
            }

            v6 = v46;
            self = v10;
            v8 = &swift_errorRelease_ptr;
            v22 = v107;
            v51 = v108;
LABEL_45:
            [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
            goto LABEL_63;
          }

          v52 = [v21 domain];
          if ([v52 isEqualToString:@"securityd"])
          {
            v53 = [v21 code];

            v22 = v107;
            if (v53 == -25300)
            {
              v54 = [v6 zoneID];
              v55 = [v54 zoneName];
              v56 = sub_100019104(@"ckksincoming", v55);

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

          v70 = [v6 zoneID];
          v71 = [v70 zoneName];
          v72 = sub_100019104(@"ckksincoming", v71);

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
            v74 = [v6 zoneID];
            v75 = [v74 zoneName];
            v76 = sub_100019104(@"ckksincoming", v75);

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

          v60 = [v6 zoneID];
          v61 = [v60 zoneName];
          v62 = sub_100019104(@"ckksincoming", v61);

          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = [(CKKSResultOperation *)self error];
            *buf = 138412290;
            v121 = v63;
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
          v64 = [v6 zoneID];
          v65 = [v64 zoneName];
          v66 = sub_100019104(@"ckksincoming", v65);

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
            v67 = [v6 zoneID];
            v68 = [v67 zoneName];
            v69 = sub_100019104(@"ckksincoming", v68);

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
        v27 = [(CKKSIncomingQueueOperation *)self deps];
        v28 = [v27 syncingPolicy];
        v29 = [v28 mapDictionaryToView:v107];

        v30 = [v6 zoneID];
        v31 = [v30 zoneName];
        v32 = [v31 isEqualToString:v29];

        if (v32)
        {
          v33 = v108;
          v34 = [v108 action];
          if ([v34 isEqualToString:@"add"])
          {
          }

          else
          {
            v77 = [v108 action];
            v78 = [v77 isEqualToString:@"modify"];

            v33 = v108;
            if (!v78)
            {
              v92 = [v108 action];
              v93 = [v92 isEqualToString:@"delete"];

              if (v93)
              {
                [(CKKSIncomingQueueOperation *)self _onqueueHandleIQEDelete:v108 class:v26 viewState:v6];
                v94 = [CKRecordID alloc];
                v95 = [v108 uuid];
                v96 = [v6 zoneID];
                v97 = [v94 initWithRecordName:v95 zoneID:v96];
                [v100 addObject:v97];
              }

              v21 = 0;
              v8 = &swift_errorRelease_ptr;
              v51 = v108;
              v22 = v107;
              goto LABEL_61;
            }
          }

          [(CKKSIncomingQueueOperation *)self _onqueueHandleIQEChange:v33 attributes:v107 class:v26 viewState:v6 sortedForThisView:1 keyCache:v105];
          v79 = v33;
          v22 = v107;
          v80 = [v79 item];
          v81 = [v6 zoneID];
          v82 = [v80 CKRecordWithZoneID:v81];
          [v101 addObject:v82];

          v51 = v108;
        }

        else
        {
          if (![(CKKSIncomingQueueOperation *)self handleMismatchedViewItems])
          {
            v83 = [v6 zoneID];
            v84 = [v83 zoneName];
            v85 = sub_100019104(@"ckksincoming", v84);

            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              v86 = [v108 uuid];
              *buf = 138412546;
              v121 = v86;
              v122 = 2112;
              v123 = v29;
              _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Received an item (%@), but our current policy claims it should be in view %@", buf, 0x16u);
            }

            v109 = 0;
            [(CKKSIncomingQueueOperation *)self _onqueueUpdateIQE:v108 withState:@"mismatched_view" error:&v109];
            v21 = v109;
            if (v21)
            {
              v87 = [v6 zoneID];
              v88 = [v87 zoneName];
              v89 = sub_100019104(@"ckksincoming", v88);

              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v121 = v21;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Couldn't save mismatched IQE to database: %@", buf, 0xCu);
              }

              [(CKKSIncomingQueueOperation *)self setErrorItemsProcessed:[(CKKSIncomingQueueOperation *)self errorItemsProcessed]+ 1];
              [(CKKSResultOperation *)self setError:v21];
            }

            v90 = [(CKKSIncomingQueueOperation *)self deps];
            v91 = [v90 requestPolicyCheck];
            [v91 trigger];

            v8 = &swift_errorRelease_ptr;
            v51 = v108;
            goto LABEL_61;
          }

          v51 = v108;
          [(CKKSIncomingQueueOperation *)self _onqueueHandleMismatchedViewItem:v108 secDbClass:v26 attributes:v107 intendedView:v29 viewState:v6 keyCache:v105];
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
    v98 = [v6 notifyViewChangedScheduler];
    [v98 trigger];
  }

  -[CKKSIncomingQueueOperation setDeletedRecordCount:](self, "setDeletedRecordCount:", [v100 count] + -[CKKSIncomingQueueOperation deletedRecordCount](self, "deletedRecordCount"));

  return 1;
}

- (BOOL)processNewCurrentItemPointers:(id)a3 viewState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
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

        v15 = [v6 zoneName];
        v16 = sub_100019104(@"ckkspointer", v15);

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Saving new current item pointer: %@", buf, 0xCu);
        }

        v17 = v9 == 0;
        if (v9)
        {
          v18 = [v6 zoneName];
          v19 = sub_100019104(@"ckksincoming", v18);

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
    v20 = [v6 notifyViewChangedScheduler];
    [v20 trigger];
  }

  return v17;
}

- (CKKSIncomingQueueOperation)initWithDependencies:(id)a3 intending:(id)a4 pendingClassAItemsRemainingState:(id)a5 errorState:(id)a6 handleMismatchedViewItems:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = CKKSIncomingQueueOperation;
  v17 = [(CKKSResultOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, a3);
    objc_storeStrong(&v18->_intendedState, a4);
    objc_storeStrong(&v18->_nextState, a6);
    objc_storeStrong(&v18->_stateIfClassAItemsRemaining, a5);
    v18->_pendingClassAEntries = 0;
    v18->_handleMismatchedViewItems = a7;
    v19 = +[NSMutableSet set];
    viewsToScan = v18->_viewsToScan;
    v18->_viewsToScan = v19;

    v18->_deletedRecordCount = 0;
    [(CKKSIncomingQueueOperation *)v18 setName:@"incoming-queue-operation"];
  }

  return v18;
}

+ (id)decryptCKKSItemToAttributes:(id)a3 keyCache:(id)a4 ckksOperationalDependencies:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = [CKKSItemEncrypter decryptItemToDictionary:v8 keyCache:a4 error:a6];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    v11 = [v8 uuid];
    [v10 setObject:v11 forKeyedSubscript:kSecAttrUUID];

    v12 = [v8 plaintextPCSServiceIdentifier];

    if (v12)
    {
      v13 = [v8 plaintextPCSServiceIdentifier];
      [v10 setObject:v13 forKeyedSubscript:kSecAttrPCSPlaintextServiceIdentifier];
    }

    v14 = [v8 plaintextPCSPublicKey];

    if (v14)
    {
      v15 = [v8 plaintextPCSPublicKey];
      [v10 setObject:v15 forKeyedSubscript:kSecAttrPCSPlaintextPublicKey];
    }

    v16 = [v8 plaintextPCSPublicIdentity];

    if (v16)
    {
      v17 = [v8 plaintextPCSPublicIdentity];
      [v10 setObject:v17 forKeyedSubscript:kSecAttrPCSPlaintextPublicIdentity];
    }

    [v10 setValue:&__kCFBooleanTrue forKey:kSecAttrSynchronizable];
    v18 = v10;
  }

  return v10;
}

@end