@interface KTForceSyncKVSOperation
- (KTForceSyncKVSOperation)initWithDependencies:(id)a3 timeout:(unint64_t)a4 intendedState:(id)a5 errorState:(id)a6;
- (void)groupStart;
@end

@implementation KTForceSyncKVSOperation

- (KTForceSyncKVSOperation)initWithDependencies:(id)a3 timeout:(unint64_t)a4 intendedState:(id)a5 errorState:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = KTForceSyncKVSOperation;
  v14 = [(KTGroupOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deps, a3);
    v15->_timeout = a4;
    objc_storeStrong(&v15->_intendedState, a5);
    objc_storeStrong(&v15->_nextState, a6);
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
  v7 = [(KTForceSyncKVSOperation *)self finishedOp];
  [(KTResultOperation *)v5 addDependency:v7];

  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v5];
  v8 = [(KTGroupOperation *)self operationQueue];
  [v8 addOperation:v5];

  objc_initWeak(buf, self);
  v9 = [(KTForceSyncKVSOperation *)self deps];
  v10 = [v9 kvs];
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