@interface OTStoreInheritanceKeyOperation
- (OTStoreInheritanceKeyOperation)initWithIK:(id)k dependencies:(id)dependencies;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys;
@end

@implementation OTStoreInheritanceKeyOperation

- (void)proceedWithKeys:(id)keys
{
  keysCopy = keys;
  objc_initWeak(&location, self);
  v5 = [(OTStoreInheritanceKeyOperation *)self ik];
  recoveryKeyData = [v5 recoveryKeyData];
  v7 = [recoveryKeyData base64EncodedStringWithOptions:0];

  deps = [(OTStoreInheritanceKeyOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTStoreInheritanceKeyOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  v12 = [(OTStoreInheritanceKeyOperation *)self ik];
  uuid = [v12 uuid];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010B2DC;
  v14[3] = &unk_1003371A8;
  objc_copyWeak(&v15, &location);
  [cuttlefishXPCWrapper createCustodianRecoveryKeyWithSpecificUser:activeAccount recoveryKey:v7 salt:&stru_100348050 ckksKeys:keysCopy uuid:uuid kind:2 reply:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTStoreInheritanceKeyOperation *)self setFinishOp:v3];

  finishOp = [(OTStoreInheritanceKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  objc_initWeak(&location, self);
  v5 = [OTFetchCKKSKeysOperation alloc];
  deps = [(OTStoreInheritanceKeyOperation *)self deps];
  v7 = [(OTFetchCKKSKeysOperation *)v5 initWithDependencies:deps refetchNeeded:0];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010B6B4;
  v10[3] = &unk_100344D38;
  objc_copyWeak(&v12, &location);
  v8 = v7;
  v11 = v8;
  v9 = [CKKSResultOperation named:@"setting-recovery-tlks" withBlock:v10];
  [v9 addDependency:v8];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (OTStoreInheritanceKeyOperation)initWithIK:(id)k dependencies:(id)dependencies
{
  kCopy = k;
  dependenciesCopy = dependencies;
  v12.receiver = self;
  v12.super_class = OTStoreInheritanceKeyOperation;
  v9 = [(CKKSGroupOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ik, k);
    objc_storeStrong(&v10->_deps, dependencies);
  }

  return v10;
}

@end