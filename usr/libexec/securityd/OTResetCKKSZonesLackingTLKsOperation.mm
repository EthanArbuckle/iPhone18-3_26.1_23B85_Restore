@interface OTResetCKKSZonesLackingTLKsOperation
- (OTResetCKKSZonesLackingTLKsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3 incompleteKeySets:(id)a4;
- (void)resetViews:(id)a3;
@end

@implementation OTResetCKKSZonesLackingTLKsOperation

- (void)resetViews:(id)a3
{
  v4 = a3;
  v5 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting CKKS view %@", buf, 0xCu);
  }

  v6 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v7 = [v6 ckks];
  v8 = [v7 rpcResetCloudKit:v4 reply:&stru_100337770];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10011FAE8;
  v17[3] = &unk_100346018;
  v18 = v4;
  v9 = v4;
  v10 = [CKKSResultOperation named:@"wait-for-ckks-reset" withBlock:v17];
  v11 = [v10 timeout:120000000000];
  [v10 addDependency:v8];
  v12 = [(CKKSGroupOperation *)self operationQueue];
  [v12 addOperation:v10];

  v13 = [(OTResetCKKSZonesLackingTLKsOperation *)self finishedOp];
  [v13 addDependency:v10];

  v14 = [(OTResetCKKSZonesLackingTLKsOperation *)self intendedState];
  [(OTResetCKKSZonesLackingTLKsOperation *)self setNextState:v14];

  v15 = [(CKKSGroupOperation *)self operationQueue];
  v16 = [(OTResetCKKSZonesLackingTLKsOperation *)self finishedOp];
  [v15 addOperation:v16];
}

- (void)proceedWithKeys:(id)a3 incompleteKeySets:(id)a4
{
  v21 = self;
  v4 = a4;
  v22 = +[NSMutableSet set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 error];

        if (v11)
        {
          v12 = sub_100006274("octagon-ckks");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error loading key set %@; not attempting reset", buf, 0xCu);
          }

LABEL_14:

          continue;
        }

        v13 = [v10 currentTLKPointer];
        if (v13)
        {
          v14 = v13;
          v15 = [v10 tlk];

          if (!v15)
          {
            v16 = sub_100006274("octagon-ckks");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = v10;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Key set %@ has no TLK; scheduling for reset", buf, 0xCu);
            }

            v12 = [v10 zoneID];
            v17 = [v12 zoneName];
            [v22 addObject:v17];

            goto LABEL_14;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  if ([v22 count])
  {
    [(OTResetCKKSZonesLackingTLKsOperation *)v21 resetViews:v22];
  }

  else
  {
    v18 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No CKKS views need resetting", buf, 2u);
    }

    v19 = [(OTResetCKKSZonesLackingTLKsOperation *)v21 intendedState];
    [(OTResetCKKSZonesLackingTLKsOperation *)v21 setNextState:v19];

    v20 = [(OTResetCKKSZonesLackingTLKsOperation *)v21 finishedOp];
    [(CKKSGroupOperation *)v21 runBeforeGroupFinished:v20];
  }
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking if any CKKS zones need resetting", buf, 2u);
  }

  v35[0] = kSecurityRTCFieldAccountIsW;
  v4 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 accountIsW]);
  v36[0] = v5;
  v35[1] = kSecurityRTCFieldAccountIsG;
  v6 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 accountIsG]);
  v36[1] = v7;
  v27 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v10 = [v9 activeAccount];
  v11 = [v10 altDSID];
  v12 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v13 = [v12 flowID];
  v14 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v15 = [v14 deviceSessionID];
  v16 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  LOBYTE(v26) = [v16 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v27 altDSID:v11 flowID:v13 deviceSessionID:v15 eventName:kSecurityRTCEventNameResetCKKSZonesLackingTLKsOperation testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  objc_initWeak(buf, self);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10012036C;
  v31[3] = &unk_100344D38;
  objc_copyWeak(&v33, buf);
  v18 = v17;
  v32 = v18;
  v19 = [NSBlockOperation blockOperationWithBlock:v31];
  [(OTResetCKKSZonesLackingTLKsOperation *)self setFinishedOp:v19];

  v20 = [(OTResetCKKSZonesLackingTLKsOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v20];

  v21 = [OTFetchCKKSKeysOperation alloc];
  v22 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v23 = [(OTFetchCKKSKeysOperation *)v21 initWithDependencies:v22 refetchNeeded:0];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v23];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001204A8;
  v28[3] = &unk_100344D38;
  objc_copyWeak(&v30, buf);
  v24 = v23;
  v29 = v24;
  v25 = [CKKSResultOperation named:@"continue-ckks-resets" withBlock:v28];
  [v25 addDependency:v24];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v25];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

- (OTResetCKKSZonesLackingTLKsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OTResetCKKSZonesLackingTLKsOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, a3);
    objc_storeStrong(&v13->_intendedState, a4);
    objc_storeStrong(&v13->_nextState, a5);
  }

  return v13;
}

@end