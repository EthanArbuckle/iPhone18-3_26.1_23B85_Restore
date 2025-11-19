@interface OTLocalCKKSResetOperation
- (OTLocalCKKSResetOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
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
  v4 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 accountIsG]);
  v33[0] = v5;
  v32[1] = kSecurityRTCFieldAccountIsW;
  v6 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 accountIsW]);
  v33[1] = v7;
  v25 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  v10 = [v9 activeAccount];
  v11 = [v10 altDSID];
  v12 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  v13 = [v12 flowID];
  v14 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  v15 = [v14 deviceSessionID];
  v16 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  LOBYTE(v24) = [v16 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v25 altDSID:v11 flowID:v13 deviceSessionID:v15 eventName:kSecurityRTCEventNameOTLocalCKKSResetOperation testsAreEnabled:0 canSendMetrics:v24 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

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

  v20 = [(OTLocalCKKSResetOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v20];

  v21 = [(OTLocalCKKSResetOperation *)self operationDependencies];
  v22 = [v21 ckks];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100201E2C;
  v26[3] = &unk_100344DA0;
  objc_copyWeak(&v27, buf);
  v23 = [v22 rpcResetLocal:0 reply:v26];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (OTLocalCKKSResetOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OTLocalCKKSResetOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationDependencies, a3);
    objc_storeStrong(&v13->_intendedState, a4);
    objc_storeStrong(&v13->_nextState, a5);
  }

  return v13;
}

@end