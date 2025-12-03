@interface OTSetRecoveryKeyOperation
- (OTSetRecoveryKeyOperation)initWithDependencies:(id)dependencies recoveryKey:(id)key;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys salt:(id)salt;
@end

@implementation OTSetRecoveryKeyOperation

- (void)proceedWithKeys:(id)keys salt:(id)salt
{
  keysCopy = keys;
  saltCopy = salt;
  objc_initWeak(&location, self);
  deps = [(OTSetRecoveryKeyOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTSetRecoveryKeyOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  recoveryKey = [(OTSetRecoveryKeyOperation *)self recoveryKey];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100109530;
  v13[3] = &unk_100343480;
  objc_copyWeak(&v14, &location);
  [cuttlefishXPCWrapper setRecoveryKeyWithSpecificUser:activeAccount recoveryKey:recoveryKey salt:saltCopy ckksKeys:keysCopy reply:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTSetRecoveryKeyOperation *)self setFinishOp:v3];

  finishOp = [(OTSetRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  deps = [(OTSetRecoveryKeyOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];

  if (altDSID)
  {
    v8 = altDSID;
    objc_initWeak(location, self);
    v9 = [OTFetchCKKSKeysOperation alloc];
    deps2 = [(OTSetRecoveryKeyOperation *)self deps];
    v11 = [(OTFetchCKKSKeysOperation *)v9 initWithDependencies:deps2 refetchNeeded:0];

    [(CKKSGroupOperation *)self runBeforeGroupFinished:v11];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100109A7C;
    v19[3] = &unk_100345310;
    objc_copyWeak(&v22, location);
    v12 = v11;
    v20 = v12;
    finishOp2 = v8;
    v21 = finishOp2;
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
      deps3 = [(OTSetRecoveryKeyOperation *)self deps];
      activeAccount2 = [deps3 activeAccount];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = activeAccount2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", location, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v18];

    finishOp2 = [(OTSetRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];
  }
}

- (OTSetRecoveryKeyOperation)initWithDependencies:(id)dependencies recoveryKey:(id)key
{
  dependenciesCopy = dependencies;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = OTSetRecoveryKeyOperation;
  v9 = [(CKKSGroupOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deps, dependencies);
    objc_storeStrong(&v10->_recoveryKey, key);
  }

  return v10;
}

@end