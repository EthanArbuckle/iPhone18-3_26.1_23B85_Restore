@interface OTLocalResetOperation
- (OTLocalResetOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation OTLocalResetOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon-local-reset");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting local cuttlefish", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTLocalResetOperation *)self setFinishedOp:v4];

  finishedOp = [(OTLocalResetOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  objc_initWeak(buf, self);
  deps = [(OTLocalResetOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTLocalResetOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009E7D8;
  v10[3] = &unk_100344DA0;
  objc_copyWeak(&v11, buf);
  [cuttlefishXPCWrapper localResetWithSpecificUser:activeAccount reply:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (OTLocalResetOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTLocalResetOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intendedState, state);
    objc_storeStrong(&v13->_nextState, errorState);
    objc_storeStrong(&v13->_deps, dependencies);
  }

  return v13;
}

@end