@interface OTEstablishOperation
- (OTEstablishOperation)initWithDependencies:(id)dependencies intendedState:(id)state ckksConflictState:(id)conflictState errorState:(id)errorState;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys pendingTLKShares:(id)shares;
@end

@implementation OTEstablishOperation

- (void)proceedWithKeys:(id)keys pendingTLKShares:(id)shares
{
  keysCopy = keys;
  sharesCopy = shares;
  objc_initWeak(&location, self);
  operationDependencies = [(OTEstablishOperation *)self operationDependencies];
  sosAdapter = [operationDependencies sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  if (sosEnabled)
  {
    operationDependencies2 = [(OTEstablishOperation *)self operationDependencies];
    sosAdapter2 = [operationDependencies2 sosAdapter];
    v42 = 0;
    v37 = [OTSOSAdapterHelpers peerPublicSigningKeySPKIsForCircle:sosAdapter2 error:&v42];
    v11 = v42;

    v12 = sub_100006274("octagon-sos");
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v37)
    {
      if (v13)
      {
        *buf = 138412290;
        v45 = v37;
        v14 = "SOS preapproved keys are %@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
      }
    }

    else if (v13)
    {
      *buf = 138412290;
      v45 = v11;
      v14 = "Unable to fetch SOS preapproved keys: %@";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v11 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SOS not enabled; no preapproved keys", buf, 2u);
  }

  v37 = 0;
LABEL_12:

  operationDependencies3 = [(OTEstablishOperation *)self operationDependencies];
  stateHolder = [operationDependencies3 stateHolder];
  v41 = 0;
  v17 = [stateHolder persistOctagonJoinAttempt:2 error:&v41];
  v38 = v41;

  if (v38)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if ((v18 & 1) == 0)
  {
    v19 = sub_100006274("SecError");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v38;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "octagon: failed to save 'attempted join' state: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v38];
  }

  v20 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = keysCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Beginning establish with keys: %@", buf, 0xCu);
  }

  operationDependencies4 = [(OTEstablishOperation *)self operationDependencies];
  cuttlefishXPCWrapper = [operationDependencies4 cuttlefishXPCWrapper];
  operationDependencies5 = [(OTEstablishOperation *)self operationDependencies];
  activeAccount = [operationDependencies5 activeAccount];
  operationDependencies6 = [(OTEstablishOperation *)self operationDependencies];
  activeAccount2 = [operationDependencies6 activeAccount];
  altDSID = [activeAccount2 altDSID];
  operationDependencies7 = [(OTEstablishOperation *)self operationDependencies];
  flowID = [operationDependencies7 flowID];
  operationDependencies8 = [(OTEstablishOperation *)self operationDependencies];
  deviceSessionID = [operationDependencies8 deviceSessionID];
  operationDependencies9 = [(OTEstablishOperation *)self operationDependencies];
  permittedToSendMetrics = [operationDependencies9 permittedToSendMetrics];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000F0A64;
  v39[3] = &unk_100338E70;
  objc_copyWeak(&v40, &location);
  LOBYTE(v31) = permittedToSendMetrics;
  [cuttlefishXPCWrapper establishWithSpecificUser:activeAccount ckksKeys:keysCopy tlkShares:sharesCopy preapprovedKeys:v37 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v31 reply:v39];

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning an establish operation", buf, 2u);
  }

  v35[0] = kSecurityRTCFieldAccountIsW;
  operationDependencies = [(OTEstablishOperation *)self operationDependencies];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [operationDependencies accountIsW]);
  v36[0] = v5;
  v35[1] = kSecurityRTCFieldAccountIsG;
  operationDependencies2 = [(OTEstablishOperation *)self operationDependencies];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [operationDependencies2 accountIsG]);
  v36[1] = v7;
  v27 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  operationDependencies3 = [(OTEstablishOperation *)self operationDependencies];
  activeAccount = [operationDependencies3 activeAccount];
  altDSID = [activeAccount altDSID];
  operationDependencies4 = [(OTEstablishOperation *)self operationDependencies];
  flowID = [operationDependencies4 flowID];
  operationDependencies5 = [(OTEstablishOperation *)self operationDependencies];
  deviceSessionID = [operationDependencies5 deviceSessionID];
  operationDependencies6 = [(OTEstablishOperation *)self operationDependencies];
  LOBYTE(v26) = [operationDependencies6 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v27 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameEstablishOperation testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  objc_initWeak(buf, self);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000F1304;
  v31[3] = &unk_100344D38;
  objc_copyWeak(&v33, buf);
  v18 = v17;
  v32 = v18;
  v19 = [NSBlockOperation blockOperationWithBlock:v31];
  [(OTEstablishOperation *)self setFinishedOp:v19];

  finishedOp = [(OTEstablishOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  v21 = [OTFetchCKKSKeysOperation alloc];
  operationDependencies7 = [(OTEstablishOperation *)self operationDependencies];
  v23 = [(OTFetchCKKSKeysOperation *)v21 initWithDependencies:operationDependencies7 refetchNeeded:0];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v23];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000F1440;
  v28[3] = &unk_100344D38;
  objc_copyWeak(&v30, buf);
  v24 = v23;
  v29 = v24;
  v25 = [CKKSResultOperation named:@"establish-with-keys" withBlock:v28];
  [v25 addDependency:v24];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v25];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

- (OTEstablishOperation)initWithDependencies:(id)dependencies intendedState:(id)state ckksConflictState:(id)conflictState errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  conflictStateCopy = conflictState;
  errorStateCopy = errorState;
  v18.receiver = self;
  v18.super_class = OTEstablishOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_operationDependencies, dependencies);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
    objc_storeStrong(&v16->_ckksConflictState, conflictState);
  }

  return v16;
}

@end