@interface OTCreateCustodianRecoveryKeyOperation
- (OTCreateCustodianRecoveryKeyOperation)initWithUUID:(id)a3 dependencies:(id)a4;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3 salt:(id)a4;
@end

@implementation OTCreateCustodianRecoveryKeyOperation

- (void)proceedWithKeys:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v19 = 0;
  v8 = SecPasswordGenerate();
  if (v8)
  {
    v9 = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
    v10 = [v9 cuttlefishXPCWrapper];
    v11 = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
    v12 = [v11 activeAccount];
    v13 = [(OTCreateCustodianRecoveryKeyOperation *)self uuid];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100109EE8;
    v16[3] = &unk_100337180;
    objc_copyWeak(&v18, &location);
    v17 = v8;
    [v10 createCustodianRecoveryKeyWithSpecificUser:v12 recoveryKey:v17 salt:v7 ckksKeys:v6 uuid:v13 kind:1 reply:v16];

    objc_destroyWeak(&v18);
  }

  else
  {
    v14 = sub_100006274("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "octagon: failed to create string: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v19];
    v15 = [(OTCreateCustodianRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v15];
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTCreateCustodianRecoveryKeyOperation *)self setFinishOp:v3];

  v4 = [(OTCreateCustodianRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  v5 = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
  v6 = [v5 activeAccount];
  v7 = [v6 altDSID];

  if (v7)
  {
    v8 = v7;
    objc_initWeak(location, self);
    v9 = [OTFetchCKKSKeysOperation alloc];
    v10 = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
    v11 = [(OTFetchCKKSKeysOperation *)v9 initWithDependencies:v10 refetchNeeded:0];

    [(CKKSGroupOperation *)self runBeforeGroupFinished:v11];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10010A65C;
    v19[3] = &unk_100345310;
    objc_copyWeak(&v22, location);
    v12 = v11;
    v20 = v12;
    v13 = v8;
    v21 = v13;
    v14 = [CKKSResultOperation named:@"setting-recovery-tlks" withBlock:v19];
    [v14 addDependency:v12];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v14];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = sub_100006274("authkit");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
      v17 = [v16 activeAccount];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", location, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v18];

    v13 = [(OTCreateCustodianRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v13];
  }
}

- (OTCreateCustodianRecoveryKeyOperation)initWithUUID:(id)a3 dependencies:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = OTCreateCustodianRecoveryKeyOperation;
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