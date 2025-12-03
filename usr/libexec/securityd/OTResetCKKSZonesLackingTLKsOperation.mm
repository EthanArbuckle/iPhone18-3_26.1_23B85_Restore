@interface OTResetCKKSZonesLackingTLKsOperation
- (OTResetCKKSZonesLackingTLKsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys incompleteKeySets:(id)sets;
- (void)resetViews:(id)views;
@end

@implementation OTResetCKKSZonesLackingTLKsOperation

- (void)resetViews:(id)views
{
  viewsCopy = views;
  v5 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = viewsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting CKKS view %@", buf, 0xCu);
  }

  deps = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  ckks = [deps ckks];
  v8 = [ckks rpcResetCloudKit:viewsCopy reply:&stru_100337770];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10011FAE8;
  v17[3] = &unk_100346018;
  v18 = viewsCopy;
  v9 = viewsCopy;
  v10 = [CKKSResultOperation named:@"wait-for-ckks-reset" withBlock:v17];
  v11 = [v10 timeout:120000000000];
  [v10 addDependency:v8];
  operationQueue = [(CKKSGroupOperation *)self operationQueue];
  [operationQueue addOperation:v10];

  finishedOp = [(OTResetCKKSZonesLackingTLKsOperation *)self finishedOp];
  [finishedOp addDependency:v10];

  intendedState = [(OTResetCKKSZonesLackingTLKsOperation *)self intendedState];
  [(OTResetCKKSZonesLackingTLKsOperation *)self setNextState:intendedState];

  operationQueue2 = [(CKKSGroupOperation *)self operationQueue];
  finishedOp2 = [(OTResetCKKSZonesLackingTLKsOperation *)self finishedOp];
  [operationQueue2 addOperation:finishedOp2];
}

- (void)proceedWithKeys:(id)keys incompleteKeySets:(id)sets
{
  selfCopy = self;
  setsCopy = sets;
  v22 = +[NSMutableSet set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = setsCopy;
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
        error = [v10 error];

        if (error)
        {
          zoneID = sub_100006274("octagon-ckks");
          if (os_log_type_enabled(zoneID, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, zoneID, OS_LOG_TYPE_DEFAULT, "Error loading key set %@; not attempting reset", buf, 0xCu);
          }

LABEL_14:

          continue;
        }

        currentTLKPointer = [v10 currentTLKPointer];
        if (currentTLKPointer)
        {
          v14 = currentTLKPointer;
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

            zoneID = [v10 zoneID];
            zoneName = [zoneID zoneName];
            [v22 addObject:zoneName];

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
    [(OTResetCKKSZonesLackingTLKsOperation *)selfCopy resetViews:v22];
  }

  else
  {
    v18 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No CKKS views need resetting", buf, 2u);
    }

    intendedState = [(OTResetCKKSZonesLackingTLKsOperation *)selfCopy intendedState];
    [(OTResetCKKSZonesLackingTLKsOperation *)selfCopy setNextState:intendedState];

    finishedOp = [(OTResetCKKSZonesLackingTLKsOperation *)selfCopy finishedOp];
    [(CKKSGroupOperation *)selfCopy runBeforeGroupFinished:finishedOp];
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
  deps = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps accountIsW]);
  v36[0] = v5;
  v35[1] = kSecurityRTCFieldAccountIsG;
  deps2 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps2 accountIsG]);
  v36[1] = v7;
  v27 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  deps3 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  altDSID = [activeAccount altDSID];
  deps4 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  LOBYTE(v26) = [deps6 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v27 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameResetCKKSZonesLackingTLKsOperation testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

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

  finishedOp = [(OTResetCKKSZonesLackingTLKsOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  v21 = [OTFetchCKKSKeysOperation alloc];
  deps7 = [(OTResetCKKSZonesLackingTLKsOperation *)self deps];
  v23 = [(OTFetchCKKSKeysOperation *)v21 initWithDependencies:deps7 refetchNeeded:0];

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

- (OTResetCKKSZonesLackingTLKsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTResetCKKSZonesLackingTLKsOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, dependencies);
    objc_storeStrong(&v13->_intendedState, state);
    objc_storeStrong(&v13->_nextState, errorState);
  }

  return v13;
}

@end