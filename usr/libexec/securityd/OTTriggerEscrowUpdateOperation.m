@interface OTTriggerEscrowUpdateOperation
- (OTTriggerEscrowUpdateOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)groupStart;
@end

@implementation OTTriggerEscrowUpdateOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Triggering escrow update", buf, 2u);
  }

  v41[0] = kSecurityRTCFieldAccountIsW;
  v4 = [(OTTriggerEscrowUpdateOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 accountIsW]);
  v42[0] = v5;
  v41[1] = kSecurityRTCFieldAccountIsG;
  v6 = [(OTTriggerEscrowUpdateOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 accountIsG]);
  v42[1] = v7;
  v32 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [(OTTriggerEscrowUpdateOperation *)self deps];
  v10 = [v9 activeAccount];
  v11 = [v10 altDSID];
  v12 = [(OTTriggerEscrowUpdateOperation *)self deps];
  v13 = [v12 flowID];
  v14 = [(OTTriggerEscrowUpdateOperation *)self deps];
  v15 = [v14 deviceSessionID];
  v16 = [(OTTriggerEscrowUpdateOperation *)self deps];
  LOBYTE(v31) = [v16 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v32 altDSID:v11 flowID:v13 deviceSessionID:v15 eventName:kSecurityRTCEventNameOTTriggerEscrowUpdateOperation testsAreEnabled:0 canSendMetrics:v31 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  objc_initWeak(&location, self);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000CCBB0;
  v35[3] = &unk_100344D38;
  objc_copyWeak(&v37, &location);
  v18 = v17;
  v36 = v18;
  v19 = [NSBlockOperation blockOperationWithBlock:v35];
  [(OTTriggerEscrowUpdateOperation *)self setFinishedOp:v19];

  v20 = [(OTTriggerEscrowUpdateOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v20];

  v21 = [(OTTriggerEscrowUpdateOperation *)self deps];
  v34 = 0;
  v22 = [objc_msgSend(v21 "escrowRequestClass")];
  v23 = v34;

  if (!v22 || v23)
  {
    v27 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Unable to acquire a EscrowRequest object: %@", buf, 0xCu);
    }

    v28 = [(OTTriggerEscrowUpdateOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v28];

    [(CKKSResultOperation *)self setError:v23];
  }

  else
  {
    v33 = 0;
    [v22 triggerEscrowUpdate:@"octagon-sos" error:&v33];
    v23 = v33;
    v24 = +[CKKSAnalytics logger];
    [v24 logResultForEvent:@"OctagonEventUpgradeSilentEscrow" hardFailure:1 result:v23];

    v25 = sub_100006274("octagon-sos");
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v26)
      {
        *buf = 138412290;
        v40 = v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unable to request silent escrow update: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v23];
    }

    else
    {
      if (v26)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Requested silent escrow update", buf, 2u);
      }

      v29 = [(OTTriggerEscrowUpdateOperation *)self intendedState];
      [(OTTriggerEscrowUpdateOperation *)self setNextState:v29];
    }

    v30 = [(OTTriggerEscrowUpdateOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v30];
  }

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (OTTriggerEscrowUpdateOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OTTriggerEscrowUpdateOperation;
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