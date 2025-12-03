@interface OTRemoveCustodianRecoveryKeyOperation
- (OTRemoveCustodianRecoveryKeyOperation)initWithUUID:(id)d dependencies:(id)dependencies;
- (void)groupStart;
@end

@implementation OTRemoveCustodianRecoveryKeyOperation

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTRemoveCustodianRecoveryKeyOperation *)self setFinishOp:v3];

  finishOp = [(OTRemoveCustodianRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  objc_initWeak(&location, self);
  deps = [(OTRemoveCustodianRecoveryKeyOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTRemoveCustodianRecoveryKeyOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  uuid = [(OTRemoveCustodianRecoveryKeyOperation *)self uuid];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100120830;
  v10[3] = &unk_100344DA0;
  objc_copyWeak(&v11, &location);
  [cuttlefishXPCWrapper removeCustodianRecoveryKeyWithSpecificUser:activeAccount uuid:uuid reply:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (OTRemoveCustodianRecoveryKeyOperation)initWithUUID:(id)d dependencies:(id)dependencies
{
  dCopy = d;
  dependenciesCopy = dependencies;
  v12.receiver = self;
  v12.super_class = OTRemoveCustodianRecoveryKeyOperation;
  v9 = [(CKKSGroupOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeStrong(&v10->_deps, dependencies);
  }

  return v10;
}

@end