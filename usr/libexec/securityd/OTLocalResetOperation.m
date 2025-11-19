@interface OTLocalResetOperation
- (OTLocalResetOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
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

  v5 = [(OTLocalResetOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  objc_initWeak(buf, self);
  v6 = [(OTLocalResetOperation *)self deps];
  v7 = [v6 cuttlefishXPCWrapper];
  v8 = [(OTLocalResetOperation *)self deps];
  v9 = [v8 activeAccount];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009E7D8;
  v10[3] = &unk_100344DA0;
  objc_copyWeak(&v11, buf);
  [v7 localResetWithSpecificUser:v9 reply:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (OTLocalResetOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OTLocalResetOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intendedState, a4);
    objc_storeStrong(&v13->_nextState, a5);
    objc_storeStrong(&v13->_deps, a3);
  }

  return v13;
}

@end