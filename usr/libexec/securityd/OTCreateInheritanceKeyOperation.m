@interface OTCreateInheritanceKeyOperation
- (OTCreateInheritanceKeyOperation)initWithUUID:(id)a3 dependencies:(id)a4;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3 salt:(id)a4;
@end

@implementation OTCreateInheritanceKeyOperation

- (void)proceedWithKeys:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [OTInheritanceKey alloc];
  v9 = [(OTCreateInheritanceKeyOperation *)self uuid];
  v24 = 0;
  v10 = [v8 initWithUUID:v9 error:&v24];
  v11 = v24;
  [(OTCreateInheritanceKeyOperation *)self setIk:v10];

  v12 = [(OTCreateInheritanceKeyOperation *)self ik];
  LODWORD(v9) = v12 == 0;

  if (v9)
  {
    v21 = sub_100006274("SecError");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "octagon: failed to create inheritance key: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v11];
    v15 = [(OTCreateInheritanceKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v15];
  }

  else
  {
    v13 = [(OTCreateInheritanceKeyOperation *)self ik];
    v14 = [v13 recoveryKeyData];
    v15 = [v14 base64EncodedStringWithOptions:0];

    v16 = [(OTCreateInheritanceKeyOperation *)self deps];
    v17 = [v16 cuttlefishXPCWrapper];
    v18 = [(OTCreateInheritanceKeyOperation *)self deps];
    v19 = [v18 activeAccount];
    v20 = [(OTCreateInheritanceKeyOperation *)self uuid];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10010AB58;
    v22[3] = &unk_1003371A8;
    objc_copyWeak(&v23, &location);
    [v17 createCustodianRecoveryKeyWithSpecificUser:v19 recoveryKey:v15 salt:v7 ckksKeys:v6 uuid:v20 kind:2 reply:v22];

    objc_destroyWeak(&v23);
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTCreateInheritanceKeyOperation *)self setFinishOp:v3];

  v4 = [(OTCreateInheritanceKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  objc_initWeak(&location, self);
  v5 = [OTFetchCKKSKeysOperation alloc];
  v6 = [(OTCreateInheritanceKeyOperation *)self deps];
  v7 = [(OTFetchCKKSKeysOperation *)v5 initWithDependencies:v6 refetchNeeded:0];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v7];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10010AF40;
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

- (OTCreateInheritanceKeyOperation)initWithUUID:(id)a3 dependencies:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = OTCreateInheritanceKeyOperation;
  v8 = [(CKKSGroupOperation *)&v11 init];
  if (v8)
  {
    v9 = v6;
    if (!v6)
    {
      v9 = objc_alloc_init(NSUUID);
    }

    objc_storeStrong(&v8->_uuid, v9);
    if (!v6)
    {
    }

    objc_storeStrong(&v8->_deps, a4);
  }

  return v8;
}

@end