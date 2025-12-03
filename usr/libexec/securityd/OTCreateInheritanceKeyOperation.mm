@interface OTCreateInheritanceKeyOperation
- (OTCreateInheritanceKeyOperation)initWithUUID:(id)d dependencies:(id)dependencies;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys salt:(id)salt;
@end

@implementation OTCreateInheritanceKeyOperation

- (void)proceedWithKeys:(id)keys salt:(id)salt
{
  keysCopy = keys;
  saltCopy = salt;
  objc_initWeak(&location, self);
  v8 = [OTInheritanceKey alloc];
  uuid = [(OTCreateInheritanceKeyOperation *)self uuid];
  v24 = 0;
  v10 = [v8 initWithUUID:uuid error:&v24];
  v11 = v24;
  [(OTCreateInheritanceKeyOperation *)self setIk:v10];

  v12 = [(OTCreateInheritanceKeyOperation *)self ik];
  LODWORD(uuid) = v12 == 0;

  if (uuid)
  {
    v21 = sub_100006274("SecError");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "octagon: failed to create inheritance key: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v11];
    finishOp = [(OTCreateInheritanceKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp];
  }

  else
  {
    v13 = [(OTCreateInheritanceKeyOperation *)self ik];
    recoveryKeyData = [v13 recoveryKeyData];
    finishOp = [recoveryKeyData base64EncodedStringWithOptions:0];

    deps = [(OTCreateInheritanceKeyOperation *)self deps];
    cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
    deps2 = [(OTCreateInheritanceKeyOperation *)self deps];
    activeAccount = [deps2 activeAccount];
    uuid2 = [(OTCreateInheritanceKeyOperation *)self uuid];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10010AB58;
    v22[3] = &unk_1003371A8;
    objc_copyWeak(&v23, &location);
    [cuttlefishXPCWrapper createCustodianRecoveryKeyWithSpecificUser:activeAccount recoveryKey:finishOp salt:saltCopy ckksKeys:keysCopy uuid:uuid2 kind:2 reply:v22];

    objc_destroyWeak(&v23);
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTCreateInheritanceKeyOperation *)self setFinishOp:v3];

  finishOp = [(OTCreateInheritanceKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  objc_initWeak(&location, self);
  v5 = [OTFetchCKKSKeysOperation alloc];
  deps = [(OTCreateInheritanceKeyOperation *)self deps];
  v7 = [(OTFetchCKKSKeysOperation *)v5 initWithDependencies:deps refetchNeeded:0];

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

- (OTCreateInheritanceKeyOperation)initWithUUID:(id)d dependencies:(id)dependencies
{
  dCopy = d;
  dependenciesCopy = dependencies;
  v11.receiver = self;
  v11.super_class = OTCreateInheritanceKeyOperation;
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