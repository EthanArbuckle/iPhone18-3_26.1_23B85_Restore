@interface CKKSLocalResetOperation
- (CKKSLocalResetOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)main;
- (void)onqueuePerformLocalReset;
@end

@implementation CKKSLocalResetOperation

- (void)onqueuePerformLocalReset
{
  v76 = [AAFAnalyticsEventSecurity alloc];
  v101 = kSecurityRTCFieldNumViews;
  deps = [(CKKSLocalResetOperation *)self deps];
  views = [deps views];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [views count]);
  v102 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  deps2 = [(CKKSLocalResetOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  altDSID = [activeAccount altDSID];
  v9 = kSecurityRTCEventNameLocalReset;
  v10 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  deps3 = [(CKKSLocalResetOperation *)self deps];
  v77 = [v76 initWithCKKSMetrics:v5 altDSID:altDSID eventName:v9 testsAreEnabled:0 category:v10 sendMetric:{objc_msgSend(deps3, "sendMetric")}];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  deps4 = [(CKKSLocalResetOperation *)self deps];
  views2 = [deps4 views];

  v14 = [views2 countByEnumeratingWithState:&v93 objects:v100 count:16];
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
          objc_enumerationMutation(views2);
        }

        [*(*(&v93 + 1) + 8 * i) setViewKeyHierarchyState:@"resetlocal"];
      }

      v15 = [views2 countByEnumeratingWithState:&v93 objects:v100 count:16];
    }

    while (v15);
  }

  deps5 = [(CKKSLocalResetOperation *)self deps];
  contextID = [deps5 contextID];
  v92 = 0;
  v20 = [(CKKSSQLDatabaseObject *)CKKSZoneStateEntry allWithContextID:contextID error:&v92];
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
          error = [(CKKSResultOperation *)self error];

          if (error)
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

  deps6 = [(CKKSLocalResetOperation *)self deps];
  contextID2 = [deps6 contextID];
  v86 = v21;
  [(CKKSSQLDatabaseObject *)CKKSMirrorEntry deleteAllWithContextID:contextID2 error:&v86];
  v33 = v86;

  if (v33)
  {
    error2 = [(CKKSResultOperation *)self error];

    if (!error2)
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

  deps7 = [(CKKSLocalResetOperation *)self deps];
  contextID3 = [deps7 contextID];
  v85 = v33;
  [(CKKSSQLDatabaseObject *)CKKSOutgoingQueueEntry deleteAllWithContextID:contextID3 error:&v85];
  v38 = v85;

  if (v38)
  {
    error3 = [(CKKSResultOperation *)self error];

    if (!error3)
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

  deps8 = [(CKKSLocalResetOperation *)self deps];
  contextID4 = [deps8 contextID];
  v84 = v38;
  [(CKKSSQLDatabaseObject *)CKKSIncomingQueueEntry deleteAllWithContextID:contextID4 error:&v84];
  v43 = v84;

  if (v43)
  {
    error4 = [(CKKSResultOperation *)self error];

    if (!error4)
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

  deps9 = [(CKKSLocalResetOperation *)self deps];
  contextID5 = [deps9 contextID];
  v83 = v43;
  [(CKKSSQLDatabaseObject *)CKKSKey deleteAllWithContextID:contextID5 error:&v83];
  v48 = v83;

  if (v48)
  {
    error5 = [(CKKSResultOperation *)self error];

    if (!error5)
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

  deps10 = [(CKKSLocalResetOperation *)self deps];
  contextID6 = [deps10 contextID];
  v82 = v48;
  [(CKKSSQLDatabaseObject *)CKKSTLKShareRecord deleteAllWithContextID:contextID6 error:&v82];
  v53 = v82;

  if (v53)
  {
    error6 = [(CKKSResultOperation *)self error];

    if (!error6)
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

  deps11 = [(CKKSLocalResetOperation *)self deps];
  contextID7 = [deps11 contextID];
  v81 = v53;
  [(CKKSSQLDatabaseObject *)CKKSCurrentKeyPointer deleteAllWithContextID:contextID7 error:&v81];
  v58 = v81;

  if (v58)
  {
    error7 = [(CKKSResultOperation *)self error];

    if (!error7)
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

  deps12 = [(CKKSLocalResetOperation *)self deps];
  contextID8 = [deps12 contextID];
  v80 = v58;
  [(CKKSSQLDatabaseObject *)CKKSCurrentItemPointer deleteAllWithContextID:contextID8 error:&v80];
  v63 = v80;

  if (v63)
  {
    error8 = [(CKKSResultOperation *)self error];

    if (!error8)
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

  deps13 = [(CKKSLocalResetOperation *)self deps];
  contextID9 = [deps13 contextID];
  v79 = v63;
  [(CKKSSQLDatabaseObject *)CKKSDeviceStateEntry deleteAllWithContextID:contextID9 error:&v79];
  v68 = v79;

  if (v68)
  {
    error9 = [(CKKSResultOperation *)self error];

    if (!error9)
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

  error10 = [(CKKSResultOperation *)self error];

  if (error10)
  {
    error11 = [(CKKSResultOperation *)self error];
    [v77 sendMetricWithResult:0 error:error11];
  }

  else
  {
    v73 = sub_100019104(@"local-reset", 0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      deps14 = [(CKKSLocalResetOperation *)self deps];
      views3 = [deps14 views];
      *buf = 138412290;
      v98 = views3;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Successfully deleted all local data for zones: %@", buf, 0xCu);
    }

    [v77 sendMetricWithResult:1 error:0];
    error11 = [(CKKSLocalResetOperation *)self intendedState];
    [(CKKSLocalResetOperation *)self setNextState:error11];
  }
}

- (void)main
{
  deps = [(CKKSLocalResetOperation *)self deps];
  databaseProvider = [deps databaseProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10011A4AC;
  v5[3] = &unk_100344610;
  v5[4] = self;
  [databaseProvider dispatchSyncWithSQLTransaction:v5];
}

- (CKKSLocalResetOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = CKKSLocalResetOperation;
  v12 = [(CKKSResultOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, dependencies);
    objc_storeStrong(&v13->_intendedState, state);
    objc_storeStrong(&v13->_nextState, errorState);
    [(CKKSLocalResetOperation *)v13 setName:@"ckks-local-reset"];
  }

  return v13;
}

@end