@interface CKKSOutgoingQueueOperation
+ (id)ontransactionFetchEntries:(id)a3 contextID:(id)a4 error:(id *)a5;
- (BOOL)_onqueueIsErrorMissingSyncKey:(id)a3;
- (BOOL)intransactionIsErrorBadEtagOnKeyPointersOnly:(id)a3;
- (BOOL)isCKErrorBadEtagOnly:(id)a3;
- (CKKSOutgoingQueueOperation)initWithDependencies:(id)a3 intending:(id)a4 ckErrorState:(id)a5 errorState:(id)a6;
- (void)_onqueueModifyAllRecords:(id)a3 as:(id)a4 viewState:(id)a5;
- (void)_onqueueModifyRecordAsError:(id)a3 recordError:(id)a4 viewState:(id)a5;
- (void)_onqueueSaveRecordsWithDelay:(id)a3 viewState:(id)a4;
- (void)groupStart;
- (void)modifyRecordsCompleted:(id)a3 fullUpload:(BOOL)a4 recordsToSave:(id)a5 recordIDsToDelete:(id)a6 recordIDsModified:(id)a7 modifyComplete:(id)a8 savedRecords:(id)a9 deletedRecordIDs:(id)a10 ckerror:(id)a11;
@end

@implementation CKKSOutgoingQueueOperation

- (BOOL)isCKErrorBadEtagOnly:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:CKErrorDomain])
  {

    goto LABEL_19;
  }

  v5 = [v3 code];

  if (v5 != 2)
  {
LABEL_19:
    v18 = 0;
    goto LABEL_25;
  }

  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v8 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * v12), v20}];
        v14 = [v13 domain];
        if (![v14 isEqualToString:CKErrorDomain])
        {
          break;
        }

        v15 = [v13 code];

        if (v15 != 14)
        {
          goto LABEL_13;
        }

LABEL_15:

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }
      }

LABEL_13:
      v16 = [v13 domain];
      if (![v16 isEqualToString:CKErrorDomain])
      {

LABEL_22:
        v18 = 0;
        goto LABEL_23;
      }

      v17 = [v13 code];

      if (v17 != 22)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

LABEL_17:
    v18 = 1;
LABEL_23:
  }

  else
  {
    v18 = 0;
  }

LABEL_25:
  return v18;
}

- (BOOL)intransactionIsErrorBadEtagOnKeyPointersOnly:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:CKErrorDomain])
  {

    goto LABEL_17;
  }

  v5 = [v3 code];

  if (v5 != 2)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_22;
  }

  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v22}];
        v15 = [v14 domain];
        if (![v15 isEqualToString:CKErrorDomain])
        {

LABEL_20:
          v20 = 0;
          goto LABEL_21;
        }

        v16 = [v14 code];

        if (v16 != 14)
        {
          goto LABEL_20;
        }

        v17 = [v13 recordName];
        if ([v17 isEqualToString:@"classA"])
        {
        }

        else
        {
          v18 = [v13 recordName];
          v19 = [v18 isEqualToString:@"classC"];

          if ((v19 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v20 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 1;
  }

LABEL_21:

LABEL_22:
  return v20;
}

- (BOOL)_onqueueIsErrorMissingSyncKey:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:CKErrorDomain])
  {
LABEL_12:

    goto LABEL_13;
  }

  v5 = [v3 code];

  if (v5 == 2)
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v7;
    v8 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v4 objectForKeyedSubscript:{v12, v19}];
          if ([v13 isCKKSServerPluginError:2])
          {
            v16 = [v12 zoneID];
            v17 = [v16 zoneName];
            v18 = sub_100019104(@"ckksoutgoing", v17);

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v24 = v13;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error is a 'missing record' error: %@", buf, 0xCu);
            }

            v14 = 1;
            goto LABEL_14;
          }
        }

        v9 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (void)_onqueueModifyAllRecords:(id)a3 as:(id)a4 viewState:(id)a5
{
  v7 = a3;
  v34 = a4;
  v36 = a5;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (!v8)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  v10 = v8;
  v11 = 0;
  v12 = 0;
  v13 = *v40;
  *&v9 = 138412802;
  v30 = v9;
  v31 = *v40;
  v32 = v7;
  do
  {
    v14 = 0;
    v33 = v10;
    do
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v39 + 1) + 8 * v14);
      v16 = [v15 recordName];
      if (([v16 isEqualToString:@"classA"] & 1) == 0)
      {
        v17 = [v15 recordName];
        v18 = [v17 isEqualToString:@"classC"];

        if (v18)
        {
          goto LABEL_14;
        }

        v19 = [v15 recordName];
        v20 = [(CKKSOutgoingQueueOperation *)self deps];
        v21 = [v20 contextID];
        v22 = [v36 zoneID];
        v38 = v12;
        v16 = [CKKSOutgoingQueueEntry fromDatabase:v19 state:@"inflight" contextID:v21 zoneID:v22 error:&v38];
        v23 = v38;

        v37 = v23;
        [v16 intransactionMoveToState:v34 viewState:v36 error:&v37];
        v12 = v37;

        if (v12)
        {
          v24 = [v36 zoneID];
          v25 = [v24 zoneName];
          v26 = sub_100019104(@"ckksoutgoing", v25);

          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [v15 recordName];
            *buf = v30;
            v46 = v27;
            v47 = 2112;
            v48 = v34;
            v49 = 2112;
            v50 = v12;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Couldn't set OQE %@ as %@: %@", buf, 0x20u);
          }

          [(CKKSResultOperation *)self setError:v12];
        }

        ++v11;
        v13 = v31;
        v7 = v32;
        v10 = v33;
      }

LABEL_14:
      v14 = v14 + 1;
    }

    while (v10 != v14);
    v10 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
  }

  while (v10);
LABEL_18:
  if ([v34 isEqualToString:@"reencrypt"])
  {
    v43 = SecCoreAnalyticsValue;
    v28 = [NSNumber numberWithUnsignedInteger:v11];
    v44 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    [SecCoreAnalytics sendEvent:@"com.apple.security.ckks.reencrypt" event:v29];
  }
}

- (void)_onqueueSaveRecordsWithDelay:(id)a3 viewState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v31 = [NSDate dateWithTimeIntervalSinceNow:1800.0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
  v34 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v34)
  {
    v8 = 0;
    v33 = *v39;
    *&v7 = 138412802;
    v30 = v7;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 recordName];
        v12 = [(CKKSOutgoingQueueOperation *)self deps];
        v13 = [v12 contextID];
        v14 = [v6 zoneID];
        v37 = v8;
        v15 = [CKKSOutgoingQueueEntry fromDatabase:v11 state:@"inflight" contextID:v13 zoneID:v14 error:&v37];
        v16 = v37;

        if (v16 || !v15)
        {
          v26 = [v6 zoneID];
          v27 = [v26 zoneName];
          v28 = sub_100019104(@"ckksoutgoing", v27);

          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = [v10 recordName];
            *buf = 138412546;
            v43 = v29;
            v44 = 2112;
            v45 = v16;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Couldn't fetch OQE %@: %@", buf, 0x16u);
          }

          [(CKKSResultOperation *)self setError:v16];
          v8 = v16;
        }

        else
        {
          [v15 setWaitUntil:v31];
          v17 = [v6 zoneID];
          v18 = [v17 zoneName];
          v19 = sub_100019104(@"ckksoutgoing", v18);

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v10 recordName];
            v21 = [v15 waitUntil];
            *buf = 138412546;
            v43 = v20;
            v44 = 2112;
            v45 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Saving OQE %@ scheduled for retry at: %@", buf, 0x16u);
          }

          v36 = 0;
          [v15 intransactionMoveToState:@"new" viewState:v6 error:&v36];
          v8 = v36;
          if (v8)
          {
            v22 = [v6 zoneID];
            v23 = [v22 zoneName];
            v24 = sub_100019104(@"ckksoutgoing", v23);

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v10 recordName];
              *buf = v30;
              v43 = v25;
              v44 = 2112;
              v45 = @"new";
              v46 = 2112;
              v47 = v8;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't save OQE %@ as %@: %@", buf, 0x20u);
            }

            [(CKKSResultOperation *)self setError:v8];
          }
        }
      }

      v34 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v34);
  }
}

- (void)_onqueueModifyRecordAsError:(id)a3 recordError:(id)a4 viewState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 recordName];
  if ([v11 isEqualToString:@"classA"])
  {
    goto LABEL_6;
  }

  v12 = [v8 recordName];
  if ([v12 isEqualToString:@"classC"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v13 = [v8 recordName];
  if ([v13 hasPrefix:@"Manifest:-:"])
  {

    goto LABEL_5;
  }

  v14 = [v8 recordName];
  v15 = [v14 hasPrefix:@"ManifestLeafRecord:-:"];

  if ((v15 & 1) == 0)
  {
    v16 = [v8 recordName];
    v17 = [(CKKSOutgoingQueueOperation *)self deps];
    v18 = [v17 contextID];
    v19 = [v10 zoneID];
    v28 = 0;
    v20 = [CKKSOutgoingQueueEntry fromDatabase:v16 state:@"inflight" contextID:v18 zoneID:v19 error:&v28];
    v21 = v28;

    v27 = v21;
    [v20 intransactionMarkAsError:v9 viewState:v10 error:&v27];
    v22 = v27;

    if (v22)
    {
      v23 = [v10 zoneID];
      v24 = [v23 zoneName];
      v25 = sub_100019104(@"ckksoutgoing", v24);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v8 recordName];
        *buf = 138412546;
        v30 = v26;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Couldn't set OQE %@ as error: %@", buf, 0x16u);
      }

      [(CKKSResultOperation *)self setError:v22];
    }
  }

LABEL_7:
}

- (void)modifyRecordsCompleted:(id)a3 fullUpload:(BOOL)a4 recordsToSave:(id)a5 recordIDsToDelete:(id)a6 recordIDsModified:(id)a7 modifyComplete:(id)a8 savedRecords:(id)a9 deletedRecordIDs:(id)a10 ckerror:(id)a11
{
  v52 = a4;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v48 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a8;
  v21 = +[CKKSAnalytics logger];
  v22 = [(CKKSOutgoingQueueOperation *)self deps];
  v23 = [v22 databaseProvider];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000DB6B4;
  v53[3] = &unk_100336BB0;
  v24 = v19;
  v54 = v24;
  v25 = v15;
  v55 = v25;
  v50 = v21;
  v56 = v50;
  v57 = self;
  v51 = v16;
  v58 = v51;
  v26 = v17;
  v59 = v26;
  v27 = v18;
  v60 = v27;
  v28 = v48;
  v61 = v28;
  [v23 dispatchSyncWithSQLTransaction:v53];

  if (v24)
  {
    [(CKKSOutgoingQueueOperation *)self ckErrorState];
  }

  else
  {
    [(CKKSOutgoingQueueOperation *)self intendedState];
  }
  v29 = ;
  [(CKKSOutgoingQueueOperation *)self setNextState:v29, v48];

  v30 = [(CKKSGroupOperation *)self operationQueue];
  [v30 addOperation:v20];

  v31 = [v25 zoneID];
  v32 = [v31 zoneName];
  v33 = sub_100019104(@"ckksoutgoing", v32);

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    if (v52)
    {
      v34 = @"full";
    }

    else
    {
      v34 = @"non-full";
    }

    v35 = [(CKKSResultOperation *)self error];
    *buf = 138412546;
    v63 = v34;
    v64 = 2112;
    v65 = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Considering retry after a %@ upload with error: %@", buf, 0x16u);
  }

  if (v52 || ([(CKKSResultOperation *)self error], v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
  {
    v49 = v28;
    if (v24)
    {
      v37 = [(CKKSOutgoingQueueOperation *)self deps];
      v38 = [v37 reachabilityTracker];
      if ([v38 isNetworkError:v24])
      {
        v39 = 2;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = [[OctagonPendingFlag alloc] initWithFlag:@"process_outgoing_queue" conditions:v39 delayInSeconds:0.2];
    v41 = [(CKKSOutgoingQueueOperation *)self deps];
    v42 = [v41 flagHandler];
    [v42 handlePendingFlag:v40];

    if (!v52 || ([(CKKSResultOperation *)self error], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v43 = [(CKKSResultOperation *)self error:v28];
      v44 = [(CKKSOutgoingQueueOperation *)self isCKErrorBadEtagOnly:v43];

      if (v52)
      {

        if ((v44 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (!v44)
      {
LABEL_24:

        v28 = v49;
        goto LABEL_25;
      }
    }

    v45 = [[OctagonPendingFlag alloc] initWithFlag:@"oqo_token" conditions:0 delayInSeconds:0.2];
    v46 = [(CKKSOutgoingQueueOperation *)self deps];
    v47 = [v46 flagHandler];
    [v47 handlePendingFlag:v45];

    goto LABEL_24;
  }

LABEL_25:
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  v2 = [(CKKSOutgoingQueueOperation *)self deps];
  v28 = [v2 databaseProvider];

  v30 = +[NSHashTable weakObjectsHashTable];
  v3 = [(CKKSOutgoingQueueOperation *)self deps];
  v4 = [v3 overallLaunch];
  [v4 addEvent:@"process-outgoing-queue-begin"];

  v5 = [AAFAnalyticsEventSecurity alloc];
  v6 = [(CKKSOutgoingQueueOperation *)self deps];
  v7 = [v6 activeAccount];
  v8 = [v7 altDSID];
  v9 = [(CKKSOutgoingQueueOperation *)self deps];
  v10 = [v9 sendMetric];
  v11 = [v5 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v8 eventName:kSecurityRTCEventNameProcessOutgoingQueue testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:v10];

  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000DD560;
  v48[3] = &unk_100336B10;
  objc_copyWeak(&v55, &location);
  v29 = v11;
  v49 = v29;
  v50 = v60;
  v51 = v58;
  v52 = v56;
  v53 = v62;
  v54 = v64;
  v12 = [NSBlockOperation blockOperationWithBlock:v48];
  [(CKKSOutgoingQueueOperation *)self setFinishedOp:v12];

  v13 = [(CKKSOutgoingQueueOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v13];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = [(CKKSOutgoingQueueOperation *)self deps];
  obj = [v14 activeManagedViews];

  v15 = [obj countByEnumeratingWithState:&v44 objects:v67 count:16];
  if (v15)
  {
    v32 = *v45;
    do
    {
      v16 = 0;
      do
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * v16);
        v18 = [(CKKSOutgoingQueueOperation *)self deps];
        v19 = [v18 syncingPolicy];
        if ([v19 isInheritedAccount])
        {
        }

        else
        {
          v20 = [(CKKSOutgoingQueueOperation *)self deps];
          v21 = [v20 syncingPolicy];
          v22 = [v17 zoneID];
          v23 = [v22 zoneName];
          v24 = [v21 isSyncingEnabledForView:v23];

          if (v24)
          {
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_1000DD7F0;
            v34[3] = &unk_100336B88;
            v34[4] = v17;
            v34[5] = self;
            v35 = v29;
            v36 = v30;
            v37 = v64;
            v38 = v62;
            objc_copyWeak(&v42, &location);
            v39 = v60;
            v40 = v58;
            v41 = v56;
            [v28 dispatchSyncWithSQLTransaction:v34];
            objc_destroyWeak(&v42);

            goto LABEL_13;
          }
        }

        v25 = [v17 zoneName];
        v26 = sub_100019104(@"ckksoutgoing", v25);

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Item syncing for this view is disabled", buf, 2u);
        }

LABEL_13:
        v16 = v16 + 1;
      }

      while (v15 != v16);
      v15 = [obj countByEnumeratingWithState:&v44 objects:v67 count:16];
    }

    while (v15);
  }

  v27 = [(CKKSOutgoingQueueOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v27];

  objc_destroyWeak(&v55);
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);

  objc_destroyWeak(&location);
}

- (CKKSOutgoingQueueOperation)initWithDependencies:(id)a3 intending:(id)a4 ckErrorState:(id)a5 errorState:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKKSOutgoingQueueOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_nextState, a6);
    objc_storeStrong(&v16->_intendedState, a4);
    objc_storeStrong(&v16->_ckErrorState, a5);
  }

  return v16;
}

+ (id)ontransactionFetchEntries:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v37 = a5;
  v6 = a3;
  v7 = a4;
  v8 = +[CKKSViewManager manager];
  v9 = [v8 pendingCallbackUUIDs];

  v38 = +[NSMutableArray array];
  v39 = +[NSMutableSet set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  v40 = v7;
  if (v10)
  {
    v11 = v10;
    v42 = *v49;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        v14 = [v6 zoneID];
        v47 = 0;
        v15 = [CKKSOutgoingQueueEntry tryFromDatabase:v13 contextID:v7 zoneID:v14 error:&v47];
        v16 = v47;

        if (v16)
        {
          v17 = [v6 zoneID];
          v18 = [v17 zoneName];
          v19 = sub_100019104(@"ckksoutgoing", v18);

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v54 = v13;
            v55 = 2112;
            v56 = v16;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to fetch priority uuid %@: %@", buf, 0x16u);
          }
        }

        else
        {
          if (!v15)
          {
            goto LABEL_18;
          }

          v20 = [v15 state];
          v21 = [v20 isEqualToString:@"new"];

          v22 = [v6 zoneID];
          v23 = [v22 zoneName];
          v19 = sub_100019104(@"ckksoutgoing", v23);

          v24 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (v24)
            {
              *buf = 138412546;
              v54 = v13;
              v55 = 2112;
              v56 = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found OQE  to fetch priority uuid %@: %@", buf, 0x16u);
            }

            [v38 addObject:v15];
            v19 = [v15 uuid];
            [v39 addObject:v19];
          }

          else if (v24)
          {
            *buf = 138412546;
            v54 = v13;
            v55 = 2112;
            v56 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Priority uuid %@ is not in 'new': %@", buf, 0x16u);
          }

          v7 = v40;
        }

LABEL_18:
      }

      v11 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v11);
  }

  v25 = [v6 zoneID];
  v26 = [CKKSOutgoingQueueEntry fetch:100 state:@"new" contextID:v7 zoneID:v25 error:v37];

  if (v26)
  {
    v27 = [v38 mutableCopy];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
LABEL_23:
      v32 = 0;
      while (1)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v43 + 1) + 8 * v32);
        if ([v27 count] > 0x63)
        {
          break;
        }

        v34 = [v33 uuid];
        v35 = [v39 containsObject:v34];

        if ((v35 & 1) == 0)
        {
          [v27 addObject:v33];
        }

        v32 = v32 + 1;
        v7 = v40;
        if (v30 == v32)
        {
          v30 = [v28 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v30)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end