@interface OTPreflightVouchWithCustodianRecoveryKeyOperation
- (OTPreflightVouchWithCustodianRecoveryKeyOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState tphcrk:(id)tphcrk;
- (void)groupStart;
@end

@implementation OTPreflightVouchWithCustodianRecoveryKeyOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating voucher using a custodian recovery key", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self setFinishOp:v4];

  finishOp = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  objc_initWeak(buf, self);
  deps = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  tphcrk = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self tphcrk];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014462C;
  v11[3] = &unk_100337F48;
  objc_copyWeak(&v12, buf);
  [cuttlefishXPCWrapper preflightVouchWithCustodianRecoveryKeyWithSpecificUser:activeAccount crk:tphcrk reply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (OTPreflightVouchWithCustodianRecoveryKeyOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState tphcrk:(id)tphcrk
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  tphcrkCopy = tphcrk;
  v18.receiver = self;
  v18.super_class = OTPreflightVouchWithCustodianRecoveryKeyOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
    objc_storeStrong(&v16->_tphcrk, tphcrk);
  }

  return v16;
}

@end