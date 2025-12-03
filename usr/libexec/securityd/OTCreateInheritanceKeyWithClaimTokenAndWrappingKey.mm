@interface OTCreateInheritanceKeyWithClaimTokenAndWrappingKey
- (OTCreateInheritanceKeyWithClaimTokenAndWrappingKey)initWithUUID:(id)d claimTokenData:(id)data wrappingKeyData:(id)keyData dependencies:(id)dependencies;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys salt:(id)salt;
@end

@implementation OTCreateInheritanceKeyWithClaimTokenAndWrappingKey

- (void)proceedWithKeys:(id)keys salt:(id)salt
{
  keysCopy = keys;
  saltCopy = salt;
  objc_initWeak(&location, self);
  v8 = [OTInheritanceKey alloc];
  uuid = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self uuid];
  claimTokenData = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self claimTokenData];
  wrappingKeyData = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self wrappingKeyData];
  v26 = 0;
  v12 = [v8 initWithUUID:uuid claimTokenData:claimTokenData wrappingKeyData:wrappingKeyData error:&v26];
  v13 = v26;
  [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self setIk:v12];

  v14 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self ik];
  LODWORD(uuid) = v14 == 0;

  if (uuid)
  {
    v23 = sub_100006274("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "octagon: failed to create inheritance key (w/claimtoken+wrappingkey): %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v13];
    finishOp = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp];
  }

  else
  {
    v15 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self ik];
    recoveryKeyData = [v15 recoveryKeyData];
    finishOp = [recoveryKeyData base64EncodedStringWithOptions:0];

    deps = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self deps];
    cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
    deps2 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self deps];
    activeAccount = [deps2 activeAccount];
    uuid2 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self uuid];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10010C5A8;
    v24[3] = &unk_1003371A8;
    objc_copyWeak(&v25, &location);
    [cuttlefishXPCWrapper createCustodianRecoveryKeyWithSpecificUser:activeAccount recoveryKey:finishOp salt:saltCopy ckksKeys:keysCopy uuid:uuid2 kind:2 reply:v24];

    objc_destroyWeak(&v25);
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self setFinishOp:v3];

  finishOp = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  objc_initWeak(&location, self);
  v5 = [OTFetchCKKSKeysOperation alloc];
  deps = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self deps];
  v7 = [(OTFetchCKKSKeysOperation *)v5 initWithDependencies:deps refetchNeeded:0];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v7];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10010C990;
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

- (OTCreateInheritanceKeyWithClaimTokenAndWrappingKey)initWithUUID:(id)d claimTokenData:(id)data wrappingKeyData:(id)keyData dependencies:(id)dependencies
{
  dCopy = d;
  dataCopy = data;
  keyDataCopy = keyData;
  dependenciesCopy = dependencies;
  v17.receiver = self;
  v17.super_class = OTCreateInheritanceKeyWithClaimTokenAndWrappingKey;
  v14 = [(CKKSGroupOperation *)&v17 init];
  if (v14)
  {
    v15 = dCopy;
    if (!dCopy)
    {
      v15 = objc_alloc_init(NSUUID);
    }

    objc_storeStrong(&v14->_uuid, v15);
    if (!dCopy)
    {
    }

    objc_storeStrong(&v14->_claimTokenData, data);
    objc_storeStrong(&v14->_wrappingKeyData, keyData);
    objc_storeStrong(&v14->_deps, dependencies);
  }

  return v14;
}

@end