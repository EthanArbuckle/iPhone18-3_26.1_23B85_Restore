@interface OTTriggerEscrowUpdateOperation
- (OTTriggerEscrowUpdateOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
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
  deps = [(OTTriggerEscrowUpdateOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps accountIsW]);
  v42[0] = v5;
  v41[1] = kSecurityRTCFieldAccountIsG;
  deps2 = [(OTTriggerEscrowUpdateOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps2 accountIsG]);
  v42[1] = v7;
  v32 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  deps3 = [(OTTriggerEscrowUpdateOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  altDSID = [activeAccount altDSID];
  deps4 = [(OTTriggerEscrowUpdateOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTTriggerEscrowUpdateOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTTriggerEscrowUpdateOperation *)self deps];
  LOBYTE(v31) = [deps6 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v32 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameOTTriggerEscrowUpdateOperation testsAreEnabled:0 canSendMetrics:v31 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

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

  finishedOp = [(OTTriggerEscrowUpdateOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  deps7 = [(OTTriggerEscrowUpdateOperation *)self deps];
  v34 = 0;
  v22 = [objc_msgSend(deps7 "escrowRequestClass")];
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

    finishedOp2 = [(OTTriggerEscrowUpdateOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];

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

      intendedState = [(OTTriggerEscrowUpdateOperation *)self intendedState];
      [(OTTriggerEscrowUpdateOperation *)self setNextState:intendedState];
    }

    finishedOp3 = [(OTTriggerEscrowUpdateOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp3];
  }

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (OTTriggerEscrowUpdateOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTTriggerEscrowUpdateOperation;
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