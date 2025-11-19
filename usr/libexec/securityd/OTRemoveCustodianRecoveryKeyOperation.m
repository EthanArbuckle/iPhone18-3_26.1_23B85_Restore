@interface OTRemoveCustodianRecoveryKeyOperation
- (OTRemoveCustodianRecoveryKeyOperation)initWithUUID:(id)a3 dependencies:(id)a4;
- (void)groupStart;
@end

@implementation OTRemoveCustodianRecoveryKeyOperation

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTRemoveCustodianRecoveryKeyOperation *)self setFinishOp:v3];

  v4 = [(OTRemoveCustodianRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  objc_initWeak(&location, self);
  v5 = [(OTRemoveCustodianRecoveryKeyOperation *)self deps];
  v6 = [v5 cuttlefishXPCWrapper];
  v7 = [(OTRemoveCustodianRecoveryKeyOperation *)self deps];
  v8 = [v7 activeAccount];
  v9 = [(OTRemoveCustodianRecoveryKeyOperation *)self uuid];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100120830;
  v10[3] = &unk_100344DA0;
  objc_copyWeak(&v11, &location);
  [v6 removeCustodianRecoveryKeyWithSpecificUser:v8 uuid:v9 reply:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (OTRemoveCustodianRecoveryKeyOperation)initWithUUID:(id)a3 dependencies:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OTRemoveCustodianRecoveryKeyOperation;
  v9 = [(CKKSGroupOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    objc_storeStrong(&v10->_deps, a4);
  }

  return v10;
}

@end