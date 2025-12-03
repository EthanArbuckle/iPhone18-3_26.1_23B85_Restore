@interface OTRecreateInheritanceKeyOperation
- (OTRecreateInheritanceKeyOperation)initWithUUID:(id)d oldIK:(id)k dependencies:(id)dependencies;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys salt:(id)salt;
@end

@implementation OTRecreateInheritanceKeyOperation

- (void)proceedWithKeys:(id)keys salt:(id)salt
{
  keysCopy = keys;
  saltCopy = salt;
  objc_initWeak(&location, self);
  v8 = [OTInheritanceKey alloc];
  uuid = [(OTRecreateInheritanceKeyOperation *)self uuid];
  oldIK = [(OTRecreateInheritanceKeyOperation *)self oldIK];
  v25 = 0;
  v11 = [v8 initWithUUID:uuid oldIK:oldIK error:&v25];
  v12 = v25;
  [(OTRecreateInheritanceKeyOperation *)self setIk:v11];

  v13 = [(OTRecreateInheritanceKeyOperation *)self ik];
  LODWORD(uuid) = v13 == 0;

  if (uuid)
  {
    v22 = sub_100006274("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "octagon: failed to recreate inheritance key: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v12];
    finishOp = [(OTRecreateInheritanceKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp];
  }

  else
  {
    v14 = [(OTRecreateInheritanceKeyOperation *)self ik];
    recoveryKeyData = [v14 recoveryKeyData];
    finishOp = [recoveryKeyData base64EncodedStringWithOptions:0];

    deps = [(OTRecreateInheritanceKeyOperation *)self deps];
    cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
    deps2 = [(OTRecreateInheritanceKeyOperation *)self deps];
    activeAccount = [deps2 activeAccount];
    uuid2 = [(OTRecreateInheritanceKeyOperation *)self uuid];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10010BBD8;
    v23[3] = &unk_1003371A8;
    objc_copyWeak(&v24, &location);
    [cuttlefishXPCWrapper createCustodianRecoveryKeyWithSpecificUser:activeAccount recoveryKey:finishOp salt:saltCopy ckksKeys:keysCopy uuid:uuid2 kind:2 reply:v23];

    objc_destroyWeak(&v24);
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTRecreateInheritanceKeyOperation *)self setFinishOp:v3];

  finishOp = [(OTRecreateInheritanceKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  objc_initWeak(&location, self);
  v5 = [OTFetchCKKSKeysOperation alloc];
  deps = [(OTRecreateInheritanceKeyOperation *)self deps];
  v7 = [(OTFetchCKKSKeysOperation *)v5 initWithDependencies:deps refetchNeeded:0];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v7];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10010BFC0;
  v13 = &unk_100345310;
  objc_copyWeak(&v16, &location);
  v8 = v7;
  v14 = v8;
  v15 = &stru_100348050;
  v9 = [CKKSResultOperation named:@"setting-recovery-tlks" withBlock:&v10];
  [v9 addDependency:{v8, v10, v11, v12, v13}];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v9];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (OTRecreateInheritanceKeyOperation)initWithUUID:(id)d oldIK:(id)k dependencies:(id)dependencies
{
  dCopy = d;
  kCopy = k;
  dependenciesCopy = dependencies;
  v14.receiver = self;
  v14.super_class = OTRecreateInheritanceKeyOperation;
  v11 = [(CKKSGroupOperation *)&v14 init];
  if (v11)
  {
    v12 = dCopy;
    if (!dCopy)
    {
      v12 = objc_alloc_init(NSUUID);
    }

    objc_storeStrong(&v11->_uuid, v12);
    if (!dCopy)
    {
    }

    objc_storeStrong(&v11->_oldIK, k);
    objc_storeStrong(&v11->_deps, dependencies);
  }

  return v11;
}

@end