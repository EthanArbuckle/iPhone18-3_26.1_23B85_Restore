@interface CKKSOutgoingQueueOperation
+ (id)ontransactionFetchEntries:(id)entries contextID:(id)d error:(id *)error;
- (BOOL)_onqueueIsErrorMissingSyncKey:(id)key;
- (BOOL)intransactionIsErrorBadEtagOnKeyPointersOnly:(id)only;
- (BOOL)isCKErrorBadEtagOnly:(id)only;
- (CKKSOutgoingQueueOperation)initWithDependencies:(id)dependencies intending:(id)intending ckErrorState:(id)state errorState:(id)errorState;
- (void)_onqueueModifyAllRecords:(id)records as:(id)as viewState:(id)state;
- (void)_onqueueModifyRecordAsError:(id)error recordError:(id)recordError viewState:(id)state;
- (void)_onqueueSaveRecordsWithDelay:(id)delay viewState:(id)state;
- (void)groupStart;
- (void)modifyRecordsCompleted:(id)completed fullUpload:(BOOL)upload recordsToSave:(id)save recordIDsToDelete:(id)delete recordIDsModified:(id)modified modifyComplete:(id)complete savedRecords:(id)records deletedRecordIDs:(id)self0 ckerror:(id)self1;
@end

@implementation CKKSOutgoingQueueOperation

- (BOOL)isCKErrorBadEtagOnly:(id)only
{
  onlyCopy = only;
  domain = [onlyCopy domain];
  if (![domain isEqualToString:CKErrorDomain])
  {

    goto LABEL_19;
  }

  code = [onlyCopy code];

  if (code != 2)
  {
LABEL_19:
    v18 = 0;
    goto LABEL_25;
  }

  userInfo = [onlyCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

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
        domain2 = [v13 domain];
        if (![domain2 isEqualToString:CKErrorDomain])
        {
          break;
        }

        code2 = [v13 code];

        if (code2 != 14)
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
      domain3 = [v13 domain];
      if (![domain3 isEqualToString:CKErrorDomain])
      {

LABEL_22:
        v18 = 0;
        goto LABEL_23;
      }

      code3 = [v13 code];

      if (code3 != 22)
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

- (BOOL)intransactionIsErrorBadEtagOnKeyPointersOnly:(id)only
{
  onlyCopy = only;
  domain = [onlyCopy domain];
  if (![domain isEqualToString:CKErrorDomain])
  {

    goto LABEL_17;
  }

  code = [onlyCopy code];

  if (code != 2)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_22;
  }

  userInfo = [onlyCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

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
        domain2 = [v14 domain];
        if (![domain2 isEqualToString:CKErrorDomain])
        {

LABEL_20:
          v20 = 0;
          goto LABEL_21;
        }

        code2 = [v14 code];

        if (code2 != 14)
        {
          goto LABEL_20;
        }

        recordName = [v13 recordName];
        if ([recordName isEqualToString:@"classA"])
        {
        }

        else
        {
          recordName2 = [v13 recordName];
          v19 = [recordName2 isEqualToString:@"classC"];

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

- (BOOL)_onqueueIsErrorMissingSyncKey:(id)key
{
  keyCopy = key;
  domain = [keyCopy domain];
  if (![domain isEqualToString:CKErrorDomain])
  {
LABEL_12:

    goto LABEL_13;
  }

  code = [keyCopy code];

  if (code == 2)
  {
    userInfo = [keyCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    domain = v7;
    v8 = [domain countByEnumeratingWithState:&v19 objects:v25 count:16];
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
            objc_enumerationMutation(domain);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [domain objectForKeyedSubscript:{v12, v19}];
          if ([v13 isCKKSServerPluginError:2])
          {
            zoneID = [v12 zoneID];
            zoneName = [zoneID zoneName];
            v18 = sub_100019104(@"ckksoutgoing", zoneName);

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

        v9 = [domain countByEnumeratingWithState:&v19 objects:v25 count:16];
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

- (void)_onqueueModifyAllRecords:(id)records as:(id)as viewState:(id)state
{
  recordsCopy = records;
  asCopy = as;
  stateCopy = state;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [recordsCopy countByEnumeratingWithState:&v39 objects:v51 count:16];
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
  v32 = recordsCopy;
  do
  {
    v14 = 0;
    v33 = v10;
    do
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(recordsCopy);
      }

      v15 = *(*(&v39 + 1) + 8 * v14);
      recordName = [v15 recordName];
      if (([recordName isEqualToString:@"classA"] & 1) == 0)
      {
        recordName2 = [v15 recordName];
        v18 = [recordName2 isEqualToString:@"classC"];

        if (v18)
        {
          goto LABEL_14;
        }

        recordName3 = [v15 recordName];
        deps = [(CKKSOutgoingQueueOperation *)self deps];
        contextID = [deps contextID];
        zoneID = [stateCopy zoneID];
        v38 = v12;
        recordName = [CKKSOutgoingQueueEntry fromDatabase:recordName3 state:@"inflight" contextID:contextID zoneID:zoneID error:&v38];
        v23 = v38;

        v37 = v23;
        [recordName intransactionMoveToState:asCopy viewState:stateCopy error:&v37];
        v12 = v37;

        if (v12)
        {
          zoneID2 = [stateCopy zoneID];
          zoneName = [zoneID2 zoneName];
          v26 = sub_100019104(@"ckksoutgoing", zoneName);

          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            recordName4 = [v15 recordName];
            *buf = v30;
            v46 = recordName4;
            v47 = 2112;
            v48 = asCopy;
            v49 = 2112;
            v50 = v12;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Couldn't set OQE %@ as %@: %@", buf, 0x20u);
          }

          [(CKKSResultOperation *)self setError:v12];
        }

        ++v11;
        v13 = v31;
        recordsCopy = v32;
        v10 = v33;
      }

LABEL_14:
      v14 = v14 + 1;
    }

    while (v10 != v14);
    v10 = [recordsCopy countByEnumeratingWithState:&v39 objects:v51 count:16];
  }

  while (v10);
LABEL_18:
  if ([asCopy isEqualToString:@"reencrypt"])
  {
    v43 = SecCoreAnalyticsValue;
    v28 = [NSNumber numberWithUnsignedInteger:v11];
    v44 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    [SecCoreAnalytics sendEvent:@"com.apple.security.ckks.reencrypt" event:v29];
  }
}

- (void)_onqueueSaveRecordsWithDelay:(id)delay viewState:(id)state
{
  delayCopy = delay;
  stateCopy = state;
  v31 = [NSDate dateWithTimeIntervalSinceNow:1800.0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = delayCopy;
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
        recordName = [v10 recordName];
        deps = [(CKKSOutgoingQueueOperation *)self deps];
        contextID = [deps contextID];
        zoneID = [stateCopy zoneID];
        v37 = v8;
        v15 = [CKKSOutgoingQueueEntry fromDatabase:recordName state:@"inflight" contextID:contextID zoneID:zoneID error:&v37];
        v16 = v37;

        if (v16 || !v15)
        {
          zoneID2 = [stateCopy zoneID];
          zoneName = [zoneID2 zoneName];
          v28 = sub_100019104(@"ckksoutgoing", zoneName);

          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            recordName2 = [v10 recordName];
            *buf = 138412546;
            v43 = recordName2;
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
          zoneID3 = [stateCopy zoneID];
          zoneName2 = [zoneID3 zoneName];
          v19 = sub_100019104(@"ckksoutgoing", zoneName2);

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            recordName3 = [v10 recordName];
            waitUntil = [v15 waitUntil];
            *buf = 138412546;
            v43 = recordName3;
            v44 = 2112;
            v45 = waitUntil;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Saving OQE %@ scheduled for retry at: %@", buf, 0x16u);
          }

          v36 = 0;
          [v15 intransactionMoveToState:@"new" viewState:stateCopy error:&v36];
          v8 = v36;
          if (v8)
          {
            zoneID4 = [stateCopy zoneID];
            zoneName3 = [zoneID4 zoneName];
            v24 = sub_100019104(@"ckksoutgoing", zoneName3);

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              recordName4 = [v10 recordName];
              *buf = v30;
              v43 = recordName4;
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

- (void)_onqueueModifyRecordAsError:(id)error recordError:(id)recordError viewState:(id)state
{
  errorCopy = error;
  recordErrorCopy = recordError;
  stateCopy = state;
  recordName = [errorCopy recordName];
  if ([recordName isEqualToString:@"classA"])
  {
    goto LABEL_6;
  }

  recordName2 = [errorCopy recordName];
  if ([recordName2 isEqualToString:@"classC"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  recordName3 = [errorCopy recordName];
  if ([recordName3 hasPrefix:@"Manifest:-:"])
  {

    goto LABEL_5;
  }

  recordName4 = [errorCopy recordName];
  v15 = [recordName4 hasPrefix:@"ManifestLeafRecord:-:"];

  if ((v15 & 1) == 0)
  {
    recordName5 = [errorCopy recordName];
    deps = [(CKKSOutgoingQueueOperation *)self deps];
    contextID = [deps contextID];
    zoneID = [stateCopy zoneID];
    v28 = 0;
    v20 = [CKKSOutgoingQueueEntry fromDatabase:recordName5 state:@"inflight" contextID:contextID zoneID:zoneID error:&v28];
    v21 = v28;

    v27 = v21;
    [v20 intransactionMarkAsError:recordErrorCopy viewState:stateCopy error:&v27];
    v22 = v27;

    if (v22)
    {
      zoneID2 = [stateCopy zoneID];
      zoneName = [zoneID2 zoneName];
      v25 = sub_100019104(@"ckksoutgoing", zoneName);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        recordName6 = [errorCopy recordName];
        *buf = 138412546;
        v30 = recordName6;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Couldn't set OQE %@ as error: %@", buf, 0x16u);
      }

      [(CKKSResultOperation *)self setError:v22];
    }
  }

LABEL_7:
}

- (void)modifyRecordsCompleted:(id)completed fullUpload:(BOOL)upload recordsToSave:(id)save recordIDsToDelete:(id)delete recordIDsModified:(id)modified modifyComplete:(id)complete savedRecords:(id)records deletedRecordIDs:(id)self0 ckerror:(id)self1
{
  uploadCopy = upload;
  completedCopy = completed;
  saveCopy = save;
  modifiedCopy = modified;
  recordsCopy = records;
  dsCopy = ds;
  ckerrorCopy = ckerror;
  completeCopy = complete;
  v21 = +[CKKSAnalytics logger];
  deps = [(CKKSOutgoingQueueOperation *)self deps];
  databaseProvider = [deps databaseProvider];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000DB6B4;
  v53[3] = &unk_100336BB0;
  v24 = ckerrorCopy;
  v54 = v24;
  v25 = completedCopy;
  v55 = v25;
  v50 = v21;
  v56 = v50;
  selfCopy = self;
  v51 = saveCopy;
  v58 = v51;
  v26 = modifiedCopy;
  v59 = v26;
  v27 = dsCopy;
  v60 = v27;
  v28 = recordsCopy;
  v61 = v28;
  [databaseProvider dispatchSyncWithSQLTransaction:v53];

  if (v24)
  {
    [(CKKSOutgoingQueueOperation *)self ckErrorState];
  }

  else
  {
    [(CKKSOutgoingQueueOperation *)self intendedState];
  }
  v29 = ;
  [(CKKSOutgoingQueueOperation *)self setNextState:v29, recordsCopy];

  operationQueue = [(CKKSGroupOperation *)self operationQueue];
  [operationQueue addOperation:completeCopy];

  zoneID = [v25 zoneID];
  zoneName = [zoneID zoneName];
  v33 = sub_100019104(@"ckksoutgoing", zoneName);

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    if (uploadCopy)
    {
      v34 = @"full";
    }

    else
    {
      v34 = @"non-full";
    }

    error = [(CKKSResultOperation *)self error];
    *buf = 138412546;
    v63 = v34;
    v64 = 2112;
    v65 = error;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Considering retry after a %@ upload with error: %@", buf, 0x16u);
  }

  if (uploadCopy || ([(CKKSResultOperation *)self error], v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
  {
    v49 = v28;
    if (v24)
    {
      deps2 = [(CKKSOutgoingQueueOperation *)self deps];
      reachabilityTracker = [deps2 reachabilityTracker];
      if ([reachabilityTracker isNetworkError:v24])
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
    deps3 = [(CKKSOutgoingQueueOperation *)self deps];
    flagHandler = [deps3 flagHandler];
    [flagHandler handlePendingFlag:v40];

    if (!uploadCopy || ([(CKKSResultOperation *)self error], (deps3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v43 = [(CKKSResultOperation *)self error:v28];
      v44 = [(CKKSOutgoingQueueOperation *)self isCKErrorBadEtagOnly:v43];

      if (uploadCopy)
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
    deps4 = [(CKKSOutgoingQueueOperation *)self deps];
    flagHandler2 = [deps4 flagHandler];
    [flagHandler2 handlePendingFlag:v45];

    goto LABEL_24;
  }

LABEL_25:
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  deps = [(CKKSOutgoingQueueOperation *)self deps];
  databaseProvider = [deps databaseProvider];

  v30 = +[NSHashTable weakObjectsHashTable];
  deps2 = [(CKKSOutgoingQueueOperation *)self deps];
  overallLaunch = [deps2 overallLaunch];
  [overallLaunch addEvent:@"process-outgoing-queue-begin"];

  v5 = [AAFAnalyticsEventSecurity alloc];
  deps3 = [(CKKSOutgoingQueueOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  altDSID = [activeAccount altDSID];
  deps4 = [(CKKSOutgoingQueueOperation *)self deps];
  sendMetric = [deps4 sendMetric];
  v11 = [v5 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:altDSID eventName:kSecurityRTCEventNameProcessOutgoingQueue testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:sendMetric];

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

  finishedOp = [(CKKSOutgoingQueueOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  deps5 = [(CKKSOutgoingQueueOperation *)self deps];
  obj = [deps5 activeManagedViews];

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
        deps6 = [(CKKSOutgoingQueueOperation *)self deps];
        syncingPolicy = [deps6 syncingPolicy];
        if ([syncingPolicy isInheritedAccount])
        {
        }

        else
        {
          deps7 = [(CKKSOutgoingQueueOperation *)self deps];
          syncingPolicy2 = [deps7 syncingPolicy];
          zoneID = [v17 zoneID];
          zoneName = [zoneID zoneName];
          v24 = [syncingPolicy2 isSyncingEnabledForView:zoneName];

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
            [databaseProvider dispatchSyncWithSQLTransaction:v34];
            objc_destroyWeak(&v42);

            goto LABEL_13;
          }
        }

        zoneName2 = [v17 zoneName];
        v26 = sub_100019104(@"ckksoutgoing", zoneName2);

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

  finishedOp2 = [(CKKSOutgoingQueueOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];

  objc_destroyWeak(&v55);
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);

  objc_destroyWeak(&location);
}

- (CKKSOutgoingQueueOperation)initWithDependencies:(id)dependencies intending:(id)intending ckErrorState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  intendingCopy = intending;
  stateCopy = state;
  errorStateCopy = errorState;
  v18.receiver = self;
  v18.super_class = CKKSOutgoingQueueOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_nextState, errorState);
    objc_storeStrong(&v16->_intendedState, intending);
    objc_storeStrong(&v16->_ckErrorState, state);
  }

  return v16;
}

+ (id)ontransactionFetchEntries:(id)entries contextID:(id)d error:(id *)error
{
  errorCopy = error;
  entriesCopy = entries;
  dCopy = d;
  v8 = +[CKKSViewManager manager];
  pendingCallbackUUIDs = [v8 pendingCallbackUUIDs];

  v38 = +[NSMutableArray array];
  v39 = +[NSMutableSet set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = pendingCallbackUUIDs;
  v10 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  v40 = dCopy;
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
        zoneID = [entriesCopy zoneID];
        v47 = 0;
        v15 = [CKKSOutgoingQueueEntry tryFromDatabase:v13 contextID:dCopy zoneID:zoneID error:&v47];
        v16 = v47;

        if (v16)
        {
          zoneID2 = [entriesCopy zoneID];
          zoneName = [zoneID2 zoneName];
          uuid = sub_100019104(@"ckksoutgoing", zoneName);

          if (os_log_type_enabled(uuid, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v54 = v13;
            v55 = 2112;
            v56 = v16;
            _os_log_impl(&_mh_execute_header, uuid, OS_LOG_TYPE_ERROR, "Unable to fetch priority uuid %@: %@", buf, 0x16u);
          }
        }

        else
        {
          if (!v15)
          {
            goto LABEL_18;
          }

          state = [v15 state];
          v21 = [state isEqualToString:@"new"];

          zoneID3 = [entriesCopy zoneID];
          zoneName2 = [zoneID3 zoneName];
          uuid = sub_100019104(@"ckksoutgoing", zoneName2);

          v24 = os_log_type_enabled(uuid, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (v24)
            {
              *buf = 138412546;
              v54 = v13;
              v55 = 2112;
              v56 = 0;
              _os_log_impl(&_mh_execute_header, uuid, OS_LOG_TYPE_DEFAULT, "Found OQE  to fetch priority uuid %@: %@", buf, 0x16u);
            }

            [v38 addObject:v15];
            uuid = [v15 uuid];
            [v39 addObject:uuid];
          }

          else if (v24)
          {
            *buf = 138412546;
            v54 = v13;
            v55 = 2112;
            v56 = v15;
            _os_log_impl(&_mh_execute_header, uuid, OS_LOG_TYPE_DEFAULT, "Priority uuid %@ is not in 'new': %@", buf, 0x16u);
          }

          dCopy = v40;
        }

LABEL_18:
      }

      v11 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v11);
  }

  zoneID4 = [entriesCopy zoneID];
  v26 = [CKKSOutgoingQueueEntry fetch:100 state:@"new" contextID:dCopy zoneID:zoneID4 error:errorCopy];

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

        uuid2 = [v33 uuid];
        v35 = [v39 containsObject:uuid2];

        if ((v35 & 1) == 0)
        {
          [v27 addObject:v33];
        }

        v32 = v32 + 1;
        dCopy = v40;
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