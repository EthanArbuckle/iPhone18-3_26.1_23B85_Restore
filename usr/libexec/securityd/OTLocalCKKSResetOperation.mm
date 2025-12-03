@interface OTLocalCKKSResetOperation
- (OTLocalCKKSResetOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation OTLocalCKKSResetOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning an 'reset CKKS' operation", buf, 2u);
  }

  v32[0] = kSecurityRTCFieldAccountIsG;
  operationDependencies = [(OTLocalCKKSResetOperation *)self operationDependencies];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [operationDependencies accountIsG]);
  v33[0] = v5;
  v32[1] = kSecurityRTCFieldAccountIsW;
  operationDependencies2 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [operationDependencies2 accountIsW]);
  v33[1] = v7;
  v25 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  operationDependencies3 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  activeAccount = [operationDependencies3 activeAccount];
  altDSID = [activeAccount altDSID];
  operationDependencies4 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  flowID = [operationDependencies4 flowID];
  operationDependencies5 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  deviceSessionID = [operationDependencies5 deviceSessionID];
  operationDependencies6 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  LOBYTE(v24) = [operationDependencies6 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v25 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameOTLocalCKKSResetOperation testsAreEnabled:0 canSendMetrics:v24 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  objc_initWeak(buf, self);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100201CF0;
  v28[3] = &unk_100344D38;
  objc_copyWeak(&v30, buf);
  v18 = v17;
  v29 = v18;
  v19 = [NSBlockOperation blockOperationWithBlock:v28];
  [(OTLocalCKKSResetOperation *)self setFinishedOp:v19];

  finishedOp = [(OTLocalCKKSResetOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  operationDependencies7 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  ckks = [operationDependencies7 ckks];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100201E2C;
  v26[3] = &unk_100344DA0;
  objc_copyWeak(&v27, buf);
  v23 = [ckks rpcResetLocal:0 reply:v26];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (OTLocalCKKSResetOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTLocalCKKSResetOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationDependencies, dependencies);
    objc_storeStrong(&v13->_intendedState, state);
    objc_storeStrong(&v13->_nextState, errorState);
  }

  return v13;
}

@end