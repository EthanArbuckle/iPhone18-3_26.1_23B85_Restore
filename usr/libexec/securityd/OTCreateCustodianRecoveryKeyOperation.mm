@interface OTCreateCustodianRecoveryKeyOperation
- (OTCreateCustodianRecoveryKeyOperation)initWithUUID:(id)d dependencies:(id)dependencies;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys salt:(id)salt;
@end

@implementation OTCreateCustodianRecoveryKeyOperation

- (void)proceedWithKeys:(id)keys salt:(id)salt
{
  keysCopy = keys;
  saltCopy = salt;
  objc_initWeak(&location, self);
  v19 = 0;
  v8 = SecPasswordGenerate();
  if (v8)
  {
    deps = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
    cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
    deps2 = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
    activeAccount = [deps2 activeAccount];
    uuid = [(OTCreateCustodianRecoveryKeyOperation *)self uuid];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100109EE8;
    v16[3] = &unk_100337180;
    objc_copyWeak(&v18, &location);
    v17 = v8;
    [cuttlefishXPCWrapper createCustodianRecoveryKeyWithSpecificUser:activeAccount recoveryKey:v17 salt:saltCopy ckksKeys:keysCopy uuid:uuid kind:1 reply:v16];

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
    finishOp = [(OTCreateCustodianRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp];
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTCreateCustodianRecoveryKeyOperation *)self setFinishOp:v3];

  finishOp = [(OTCreateCustodianRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  deps = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];

  if (altDSID)
  {
    v8 = altDSID;
    objc_initWeak(location, self);
    v9 = [OTFetchCKKSKeysOperation alloc];
    deps2 = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
    v11 = [(OTFetchCKKSKeysOperation *)v9 initWithDependencies:deps2 refetchNeeded:0];

    [(CKKSGroupOperation *)self runBeforeGroupFinished:v11];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10010A65C;
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
      deps3 = [(OTCreateCustodianRecoveryKeyOperation *)self deps];
      activeAccount2 = [deps3 activeAccount];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = activeAccount2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", location, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v18];

    finishOp2 = [(OTCreateCustodianRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];
  }
}

- (OTCreateCustodianRecoveryKeyOperation)initWithUUID:(id)d dependencies:(id)dependencies
{
  dCopy = d;
  dependenciesCopy = dependencies;
  v11.receiver = self;
  v11.super_class = OTCreateCustodianRecoveryKeyOperation;
  v8 = [(CKKSGroupOperation *)&v11 init];
  if (v8)
  {
    v9 = dCopy;
    if (!dCopy)
    {
      v9 = objc_alloc_init(NSUUID);
    }

    objc_storeStrong(&v8->_uuid, v9);
    if (!dCopy)
    {
    }

    objc_storeStrong(&v8->_deps, dependencies);
  }

  return v8;
}

@end