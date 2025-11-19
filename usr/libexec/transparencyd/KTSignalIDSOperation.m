@interface KTSignalIDSOperation
- (KTSignalIDSOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 selfValidationResult:(id)a6 stateMachine:(id)a7;
- (void)groupStart;
@end

@implementation KTSignalIDSOperation

- (KTSignalIDSOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 selfValidationResult:(id)a6 stateMachine:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = KTSignalIDSOperation;
  v17 = [(KTGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, a3);
    objc_storeStrong(&v18->_intendedState, a4);
    objc_storeStrong(&v18->_nextState, a5);
    objc_storeStrong(&v18->_selfValidationResult, a6);
    objc_storeStrong(&v18->_stateMachine, a7);
  }

  return v18;
}

- (void)groupStart
{
  v3 = [(KTSignalIDSOperation *)self selfValidationResult];
  [(KTSignalIDSOperation *)self setSelfValidationResult:0];
  v4 = [v3 application];
  v5 = v4;
  v6 = kKTApplicationIdentifierIDS;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(KTSignalIDSOperation *)self deps];
  v9 = [v8 publicKeyStore];
  v10 = [v9 applicationPublicKeyStore:v7];

  v11 = [(KTSignalIDSOperation *)self deps];
  v12 = [v11 stateMonitor];
  v13 = [v12 treeStateUnstable:v7 logBeginTime:{objc_msgSend(v10, "patLogBeginningMs")}];

  if (v13)
  {
    if (qword_10039CC08 != -1)
    {
      sub_10025DC84();
    }

    v14 = qword_10039CC10;
    if (os_log_type_enabled(qword_10039CC10, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "KTSignalIDSOperation skipping repair trigger due to unstable tree state", buf, 2u);
    }
  }

  else
  {
    v15 = objc_alloc_init(NSOperation);
    [(KTSignalIDSOperation *)self setFinishedOp:v15];

    v16 = [(KTSignalIDSOperation *)self finishedOp];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v16];

    objc_initWeak(buf, self);
    v17 = [(KTSignalIDSOperation *)self deps];
    v18 = [v17 idsOperations];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100201DD4;
    v19[3] = &unk_100329AD8;
    objc_copyWeak(&v20, buf);
    [v18 triggerIDSCheck:v7 selfValidationResult:v3 complete:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

@end