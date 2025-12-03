@interface KTForceSyncKVSOperation
- (KTForceSyncKVSOperation)initWithDependencies:(id)dependencies timeout:(unint64_t)timeout intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation KTForceSyncKVSOperation

- (KTForceSyncKVSOperation)initWithDependencies:(id)dependencies timeout:(unint64_t)timeout intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v17.receiver = self;
  v17.super_class = KTForceSyncKVSOperation;
  v14 = [(KTGroupOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deps, dependencies);
    v15->_timeout = timeout;
    objc_storeStrong(&v15->_intendedState, state);
    objc_storeStrong(&v15->_nextState, errorState);
  }

  return v15;
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(KTForceSyncKVSOperation *)self setFinishedOp:v3];

  if (qword_10039C710 != -1)
  {
    sub_10025AD08();
  }

  v4 = qword_10039C718;
  if (os_log_type_enabled(qword_10039C718, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "ForceSyncKVS start", buf, 2u);
  }

  v5 = objc_alloc_init(KTResultOperation);
  v6 = [(KTResultOperation *)v5 timeout:[(KTForceSyncKVSOperation *)self timeout]];
  finishedOp = [(KTForceSyncKVSOperation *)self finishedOp];
  [(KTResultOperation *)v5 addDependency:finishedOp];

  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v5];
  operationQueue = [(KTGroupOperation *)self operationQueue];
  [operationQueue addOperation:v5];

  objc_initWeak(buf, self);
  deps = [(KTForceSyncKVSOperation *)self deps];
  v10 = [deps kvs];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A2318;
  v11[3] = &unk_100325C40;
  objc_copyWeak(&v12, buf);
  [v10 forceSync:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

@end