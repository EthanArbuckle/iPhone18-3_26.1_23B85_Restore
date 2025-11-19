@interface CKKSLocalResetOperation
- (CKKSLocalResetOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)main;
- (void)onqueuePerformLocalReset;
@end

@implementation CKKSLocalResetOperation

- (void)onqueuePerformLocalReset
{
  v76 = [AAFAnalyticsEventSecurity alloc];
  v101 = kSecurityRTCFieldNumViews;
  v78 = [(CKKSLocalResetOperation *)self deps];
  v3 = [v78 views];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
  v102 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  v6 = [(CKKSLocalResetOperation *)self deps];
  v7 = [v6 activeAccount];
  v8 = [v7 altDSID];
  v9 = kSecurityRTCEventNameLocalReset;
  v10 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v11 = [(CKKSLocalResetOperation *)self deps];
  v77 = [v76 initWithCKKSMetrics:v5 altDSID:v8 eventName:v9 testsAreEnabled:0 category:v10 sendMetric:{objc_msgSend(v11, "sendMetric")}];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v12 = [(CKKSLocalResetOperation *)self deps];
  v13 = [v12 views];

  v14 = [v13 countByEnumeratingWithState:&v93 objects:v100 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v94;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v94 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v93 + 1) + 8 * i) setViewKeyHierarchyState:@"resetlocal"];
      }

      v15 = [v13 countByEnumeratingWithState:&v93 objects:v100 count:16];
    }

    while (v15);
  }

  v18 = [(CKKSLocalResetOperation *)self deps];
  v19 = [v18 contextID];
  v92 = 0;
  v20 = [(CKKSSQLDatabaseObject *)CKKSZoneStateEntry allWithContextID:v19 error:&v92];
  v21 = v92;

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v88 objects:v99 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v89;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v89 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v88 + 1) + 8 * j);
        [v27 setCkzonecreated:0];
        [v27 setCkzonesubscribed:0];
        [v27 setChangeToken:0];
        [v27 setMoreRecordsInCloudKit:0];
        [v27 setLastFetchTime:0];
        [v27 setLastLocalKeychainScanTime:0];
        [v27 setInitialSyncFinished:0];
        v87 = v21;
        [v27 saveToDatabase:&v87];
        v28 = v87;

        if (v28)
        {
          v29 = [(CKKSResultOperation *)self error];

          if (v29)
          {
            v21 = v28;
            continue;
          }

          v30 = sub_100019104(@"local-reset", 0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v98 = v28;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "couldn't reset zone status: %@", buf, 0xCu);
          }

          [(CKKSResultOperation *)self setError:v28];
        }

        v21 = 0;
      }

      v24 = [v22 countByEnumeratingWithState:&v88 objects:v99 count:16];
    }

    while (v24);
  }

  v31 = [(CKKSLocalResetOperation *)self deps];
  v32 = [v31 contextID];
  v86 = v21;
  [(CKKSSQLDatabaseObject *)CKKSMirrorEntry deleteAllWithContextID:v32 error:&v86];
  v33 = v86;

  if (v33)
  {
    v34 = [(CKKSResultOperation *)self error];

    if (!v34)
    {
      v35 = sub_100019104(@"local-reset", 0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v33;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "couldn't delete all CKKSMirrorEntry: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v33];
      v33 = 0;
    }
  }

  v36 = [(CKKSLocalResetOperation *)self deps];
  v37 = [v36 contextID];
  v85 = v33;
  [(CKKSSQLDatabaseObject *)CKKSOutgoingQueueEntry deleteAllWithContextID:v37 error:&v85];
  v38 = v85;

  if (v38)
  {
    v39 = [(CKKSResultOperation *)self error];

    if (!v39)
    {
      v40 = sub_100019104(@"local-reset", 0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v38;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "couldn't delete all CKKSOutgoingQueueEntry: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v38];
      v38 = 0;
    }
  }

  v41 = [(CKKSLocalResetOperation *)self deps];
  v42 = [v41 contextID];
  v84 = v38;
  [(CKKSSQLDatabaseObject *)CKKSIncomingQueueEntry deleteAllWithContextID:v42 error:&v84];
  v43 = v84;

  if (v43)
  {
    v44 = [(CKKSResultOperation *)self error];

    if (!v44)
    {
      v45 = sub_100019104(@"local-reset", 0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v43;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "couldn't delete all CKKSIncomingQueueEntry: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v43];
      v43 = 0;
    }
  }

  v46 = [(CKKSLocalResetOperation *)self deps];
  v47 = [v46 contextID];
  v83 = v43;
  [(CKKSSQLDatabaseObject *)CKKSKey deleteAllWithContextID:v47 error:&v83];
  v48 = v83;

  if (v48)
  {
    v49 = [(CKKSResultOperation *)self error];

    if (!v49)
    {
      v50 = sub_100019104(@"local-reset", 0);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v48;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "couldn't delete all CKKSKey: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v48];
      v48 = 0;
    }
  }

  v51 = [(CKKSLocalResetOperation *)self deps];
  v52 = [v51 contextID];
  v82 = v48;
  [(CKKSSQLDatabaseObject *)CKKSTLKShareRecord deleteAllWithContextID:v52 error:&v82];
  v53 = v82;

  if (v53)
  {
    v54 = [(CKKSResultOperation *)self error];

    if (!v54)
    {
      v55 = sub_100019104(@"local-reset", 0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v53;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "couldn't delete all CKKSTLKShare: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v53];
      v53 = 0;
    }
  }

  v56 = [(CKKSLocalResetOperation *)self deps];
  v57 = [v56 contextID];
  v81 = v53;
  [(CKKSSQLDatabaseObject *)CKKSCurrentKeyPointer deleteAllWithContextID:v57 error:&v81];
  v58 = v81;

  if (v58)
  {
    v59 = [(CKKSResultOperation *)self error];

    if (!v59)
    {
      v60 = sub_100019104(@"local-reset", 0);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v58;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "couldn't delete all CKKSCurrentKeyPointer: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v58];
      v58 = 0;
    }
  }

  v61 = [(CKKSLocalResetOperation *)self deps];
  v62 = [v61 contextID];
  v80 = v58;
  [(CKKSSQLDatabaseObject *)CKKSCurrentItemPointer deleteAllWithContextID:v62 error:&v80];
  v63 = v80;

  if (v63)
  {
    v64 = [(CKKSResultOperation *)self error];

    if (!v64)
    {
      v65 = sub_100019104(@"local-reset", 0);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v63;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "couldn't delete all CKKSCurrentItemPointer: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v63];
      v63 = 0;
    }
  }

  v66 = [(CKKSLocalResetOperation *)self deps];
  v67 = [v66 contextID];
  v79 = v63;
  [(CKKSSQLDatabaseObject *)CKKSDeviceStateEntry deleteAllWithContextID:v67 error:&v79];
  v68 = v79;

  if (v68)
  {
    v69 = [(CKKSResultOperation *)self error];

    if (!v69)
    {
      v70 = sub_100019104(@"local-reset", 0);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v68;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "couldn't delete all CKKSDeviceStateEntry: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v68];
      v68 = 0;
    }
  }

  v71 = [(CKKSResultOperation *)self error];

  if (v71)
  {
    v72 = [(CKKSResultOperation *)self error];
    [v77 sendMetricWithResult:0 error:v72];
  }

  else
  {
    v73 = sub_100019104(@"local-reset", 0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = [(CKKSLocalResetOperation *)self deps];
      v75 = [v74 views];
      *buf = 138412290;
      v98 = v75;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Successfully deleted all local data for zones: %@", buf, 0xCu);
    }

    [v77 sendMetricWithResult:1 error:0];
    v72 = [(CKKSLocalResetOperation *)self intendedState];
    [(CKKSLocalResetOperation *)self setNextState:v72];
  }
}

- (void)main
{
  v3 = [(CKKSLocalResetOperation *)self deps];
  v4 = [v3 databaseProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10011A4AC;
  v5[3] = &unk_100344610;
  v5[4] = self;
  [v4 dispatchSyncWithSQLTransaction:v5];
}

- (CKKSLocalResetOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKKSLocalResetOperation;
  v12 = [(CKKSResultOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, a3);
    objc_storeStrong(&v13->_intendedState, a4);
    objc_storeStrong(&v13->_nextState, a5);
    [(CKKSLocalResetOperation *)v13 setName:@"ckks-local-reset"];
  }

  return v13;
}

@end