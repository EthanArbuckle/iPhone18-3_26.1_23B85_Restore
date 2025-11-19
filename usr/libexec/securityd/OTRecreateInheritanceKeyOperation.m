@interface OTRecreateInheritanceKeyOperation
- (OTRecreateInheritanceKeyOperation)initWithUUID:(id)a3 oldIK:(id)a4 dependencies:(id)a5;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3 salt:(id)a4;
@end

@implementation OTRecreateInheritanceKeyOperation

- (void)proceedWithKeys:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [OTInheritanceKey alloc];
  v9 = [(OTRecreateInheritanceKeyOperation *)self uuid];
  v10 = [(OTRecreateInheritanceKeyOperation *)self oldIK];
  v25 = 0;
  v11 = [v8 initWithUUID:v9 oldIK:v10 error:&v25];
  v12 = v25;
  [(OTRecreateInheritanceKeyOperation *)self setIk:v11];

  v13 = [(OTRecreateInheritanceKeyOperation *)self ik];
  LODWORD(v9) = v13 == 0;

  if (v9)
  {
    v22 = sub_100006274("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "octagon: failed to recreate inheritance key: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v12];
    v16 = [(OTRecreateInheritanceKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v16];
  }

  else
  {
    v14 = [(OTRecreateInheritanceKeyOperation *)self ik];
    v15 = [v14 recoveryKeyData];
    v16 = [v15 base64EncodedStringWithOptions:0];

    v17 = [(OTRecreateInheritanceKeyOperation *)self deps];
    v18 = [v17 cuttlefishXPCWrapper];
    v19 = [(OTRecreateInheritanceKeyOperation *)self deps];
    v20 = [v19 activeAccount];
    v21 = [(OTRecreateInheritanceKeyOperation *)self uuid];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10010BBD8;
    v23[3] = &unk_1003371A8;
    objc_copyWeak(&v24, &location);
    [v18 createCustodianRecoveryKeyWithSpecificUser:v20 recoveryKey:v16 salt:v7 ckksKeys:v6 uuid:v21 kind:2 reply:v23];

    objc_destroyWeak(&v24);
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTRecreateInheritanceKeyOperation *)self setFinishOp:v3];

  v4 = [(OTRecreateInheritanceKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  objc_initWeak(&location, self);
  v5 = [OTFetchCKKSKeysOperation alloc];
  v6 = [(OTRecreateInheritanceKeyOperation *)self deps];
  v7 = [(OTFetchCKKSKeysOperation *)v5 initWithDependencies:v6 refetchNeeded:0];

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

- (OTRecreateInheritanceKeyOperation)initWithUUID:(id)a3 oldIK:(id)a4 dependencies:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = OTRecreateInheritanceKeyOperation;
  v11 = [(CKKSGroupOperation *)&v14 init];
  if (v11)
  {
    v12 = v8;
    if (!v8)
    {
      v12 = objc_alloc_init(NSUUID);
    }

    objc_storeStrong(&v11->_uuid, v12);
    if (!v8)
    {
    }

    objc_storeStrong(&v11->_oldIK, a4);
    objc_storeStrong(&v11->_deps, a5);
  }

  return v11;
}

@end