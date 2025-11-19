@interface OTPreflightVouchWithCustodianRecoveryKeyOperation
- (OTPreflightVouchWithCustodianRecoveryKeyOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 tphcrk:(id)a6;
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

  v5 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  objc_initWeak(buf, self);
  v6 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self deps];
  v7 = [v6 cuttlefishXPCWrapper];
  v8 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self deps];
  v9 = [v8 activeAccount];
  v10 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)self tphcrk];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014462C;
  v11[3] = &unk_100337F48;
  objc_copyWeak(&v12, buf);
  [v7 preflightVouchWithCustodianRecoveryKeyWithSpecificUser:v9 crk:v10 reply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (OTPreflightVouchWithCustodianRecoveryKeyOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 tphcrk:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = OTPreflightVouchWithCustodianRecoveryKeyOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_intendedState, a4);
    objc_storeStrong(&v16->_nextState, a5);
    objc_storeStrong(&v16->_tphcrk, a6);
  }

  return v16;
}

@end