@interface KTSignalIDSOperation
- (KTSignalIDSOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState selfValidationResult:(id)result stateMachine:(id)machine;
- (void)groupStart;
@end

@implementation KTSignalIDSOperation

- (KTSignalIDSOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState selfValidationResult:(id)result stateMachine:(id)machine
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  resultCopy = result;
  machineCopy = machine;
  v21.receiver = self;
  v21.super_class = KTSignalIDSOperation;
  v17 = [(KTGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, dependencies);
    objc_storeStrong(&v18->_intendedState, state);
    objc_storeStrong(&v18->_nextState, errorState);
    objc_storeStrong(&v18->_selfValidationResult, result);
    objc_storeStrong(&v18->_stateMachine, machine);
  }

  return v18;
}

- (void)groupStart
{
  selfValidationResult = [(KTSignalIDSOperation *)self selfValidationResult];
  [(KTSignalIDSOperation *)self setSelfValidationResult:0];
  application = [selfValidationResult application];
  v5 = application;
  v6 = kKTApplicationIdentifierIDS;
  if (application)
  {
    v6 = application;
  }

  v7 = v6;

  deps = [(KTSignalIDSOperation *)self deps];
  publicKeyStore = [deps publicKeyStore];
  v10 = [publicKeyStore applicationPublicKeyStore:v7];

  deps2 = [(KTSignalIDSOperation *)self deps];
  stateMonitor = [deps2 stateMonitor];
  v13 = [stateMonitor treeStateUnstable:v7 logBeginTime:{objc_msgSend(v10, "patLogBeginningMs")}];

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

    finishedOp = [(KTSignalIDSOperation *)self finishedOp];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

    objc_initWeak(buf, self);
    deps3 = [(KTSignalIDSOperation *)self deps];
    idsOperations = [deps3 idsOperations];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100201DD4;
    v19[3] = &unk_100329AD8;
    objc_copyWeak(&v20, buf);
    [idsOperations triggerIDSCheck:v7 selfValidationResult:selfValidationResult complete:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

@end