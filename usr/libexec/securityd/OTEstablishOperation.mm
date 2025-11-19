@interface OTEstablishOperation
- (OTEstablishOperation)initWithDependencies:(id)a3 intendedState:(id)a4 ckksConflictState:(id)a5 errorState:(id)a6;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3 pendingTLKShares:(id)a4;
@end

@implementation OTEstablishOperation

- (void)proceedWithKeys:(id)a3 pendingTLKShares:(id)a4
{
  v36 = a3;
  v35 = a4;
  objc_initWeak(&location, self);
  v6 = [(OTEstablishOperation *)self operationDependencies];
  v7 = [v6 sosAdapter];
  v8 = [v7 sosEnabled];

  if (v8)
  {
    v9 = [(OTEstablishOperation *)self operationDependencies];
    v10 = [v9 sosAdapter];
    v42 = 0;
    v37 = [OTSOSAdapterHelpers peerPublicSigningKeySPKIsForCircle:v10 error:&v42];
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

  v15 = [(OTEstablishOperation *)self operationDependencies];
  v16 = [v15 stateHolder];
  v41 = 0;
  v17 = [v16 persistOctagonJoinAttempt:2 error:&v41];
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
    v45 = v36;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Beginning establish with keys: %@", buf, 0xCu);
  }

  v21 = [(OTEstablishOperation *)self operationDependencies];
  v33 = [v21 cuttlefishXPCWrapper];
  v34 = [(OTEstablishOperation *)self operationDependencies];
  v32 = [v34 activeAccount];
  v22 = [(OTEstablishOperation *)self operationDependencies];
  v23 = [v22 activeAccount];
  v24 = [v23 altDSID];
  v25 = [(OTEstablishOperation *)self operationDependencies];
  v26 = [v25 flowID];
  v27 = [(OTEstablishOperation *)self operationDependencies];
  v28 = [v27 deviceSessionID];
  v29 = [(OTEstablishOperation *)self operationDependencies];
  v30 = [v29 permittedToSendMetrics];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000F0A64;
  v39[3] = &unk_100338E70;
  objc_copyWeak(&v40, &location);
  LOBYTE(v31) = v30;
  [v33 establishWithSpecificUser:v32 ckksKeys:v36 tlkShares:v35 preapprovedKeys:v37 altDSID:v24 flowID:v26 deviceSessionID:v28 canSendMetrics:v31 reply:v39];

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
  v4 = [(OTEstablishOperation *)self operationDependencies];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 accountIsW]);
  v36[0] = v5;
  v35[1] = kSecurityRTCFieldAccountIsG;
  v6 = [(OTEstablishOperation *)self operationDependencies];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 accountIsG]);
  v36[1] = v7;
  v27 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [(OTEstablishOperation *)self operationDependencies];
  v10 = [v9 activeAccount];
  v11 = [v10 altDSID];
  v12 = [(OTEstablishOperation *)self operationDependencies];
  v13 = [v12 flowID];
  v14 = [(OTEstablishOperation *)self operationDependencies];
  v15 = [v14 deviceSessionID];
  v16 = [(OTEstablishOperation *)self operationDependencies];
  LOBYTE(v26) = [v16 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v27 altDSID:v11 flowID:v13 deviceSessionID:v15 eventName:kSecurityRTCEventNameEstablishOperation testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

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

  v20 = [(OTEstablishOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v20];

  v21 = [OTFetchCKKSKeysOperation alloc];
  v22 = [(OTEstablishOperation *)self operationDependencies];
  v23 = [(OTFetchCKKSKeysOperation *)v21 initWithDependencies:v22 refetchNeeded:0];

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

- (OTEstablishOperation)initWithDependencies:(id)a3 intendedState:(id)a4 ckksConflictState:(id)a5 errorState:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = OTEstablishOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_operationDependencies, a3);
    objc_storeStrong(&v16->_intendedState, a4);
    objc_storeStrong(&v16->_nextState, a6);
    objc_storeStrong(&v16->_ckksConflictState, a5);
  }

  return v16;
}

@end