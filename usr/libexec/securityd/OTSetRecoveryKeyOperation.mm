@interface OTSetRecoveryKeyOperation
- (OTSetRecoveryKeyOperation)initWithDependencies:(id)a3 recoveryKey:(id)a4;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3 salt:(id)a4;
@end

@implementation OTSetRecoveryKeyOperation

- (void)proceedWithKeys:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(OTSetRecoveryKeyOperation *)self deps];
  v9 = [v8 cuttlefishXPCWrapper];
  v10 = [(OTSetRecoveryKeyOperation *)self deps];
  v11 = [v10 activeAccount];
  v12 = [(OTSetRecoveryKeyOperation *)self recoveryKey];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100109530;
  v13[3] = &unk_100343480;
  objc_copyWeak(&v14, &location);
  [v9 setRecoveryKeyWithSpecificUser:v11 recoveryKey:v12 salt:v7 ckksKeys:v6 reply:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTSetRecoveryKeyOperation *)self setFinishOp:v3];

  v4 = [(OTSetRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  v5 = [(OTSetRecoveryKeyOperation *)self deps];
  v6 = [v5 activeAccount];
  v7 = [v6 altDSID];

  if (v7)
  {
    v8 = v7;
    objc_initWeak(location, self);
    v9 = [OTFetchCKKSKeysOperation alloc];
    v10 = [(OTSetRecoveryKeyOperation *)self deps];
    v11 = [(OTFetchCKKSKeysOperation *)v9 initWithDependencies:v10 refetchNeeded:0];

    [(CKKSGroupOperation *)self runBeforeGroupFinished:v11];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100109A7C;
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
      v16 = [(OTSetRecoveryKeyOperation *)self deps];
      v17 = [v16 activeAccount];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", location, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v18];

    v13 = [(OTSetRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v13];
  }
}

- (OTSetRecoveryKeyOperation)initWithDependencies:(id)a3 recoveryKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OTSetRecoveryKeyOperation;
  v9 = [(CKKSGroupOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deps, a3);
    objc_storeStrong(&v10->_recoveryKey, a4);
  }

  return v10;
}

@end