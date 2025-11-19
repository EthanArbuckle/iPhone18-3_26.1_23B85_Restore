@interface OTCreateInheritanceKeyWithClaimTokenAndWrappingKey
- (OTCreateInheritanceKeyWithClaimTokenAndWrappingKey)initWithUUID:(id)a3 claimTokenData:(id)a4 wrappingKeyData:(id)a5 dependencies:(id)a6;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3 salt:(id)a4;
@end

@implementation OTCreateInheritanceKeyWithClaimTokenAndWrappingKey

- (void)proceedWithKeys:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [OTInheritanceKey alloc];
  v9 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self uuid];
  v10 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self claimTokenData];
  v11 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self wrappingKeyData];
  v26 = 0;
  v12 = [v8 initWithUUID:v9 claimTokenData:v10 wrappingKeyData:v11 error:&v26];
  v13 = v26;
  [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self setIk:v12];

  v14 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self ik];
  LODWORD(v9) = v14 == 0;

  if (v9)
  {
    v23 = sub_100006274("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "octagon: failed to create inheritance key (w/claimtoken+wrappingkey): %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v13];
    v17 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v17];
  }

  else
  {
    v15 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self ik];
    v16 = [v15 recoveryKeyData];
    v17 = [v16 base64EncodedStringWithOptions:0];

    v18 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self deps];
    v19 = [v18 cuttlefishXPCWrapper];
    v20 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self deps];
    v21 = [v20 activeAccount];
    v22 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self uuid];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10010C5A8;
    v24[3] = &unk_1003371A8;
    objc_copyWeak(&v25, &location);
    [v19 createCustodianRecoveryKeyWithSpecificUser:v21 recoveryKey:v17 salt:v7 ckksKeys:v6 uuid:v22 kind:2 reply:v24];

    objc_destroyWeak(&v25);
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self setFinishOp:v3];

  v4 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  objc_initWeak(&location, self);
  v5 = [OTFetchCKKSKeysOperation alloc];
  v6 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)self deps];
  v7 = [(OTFetchCKKSKeysOperation *)v5 initWithDependencies:v6 refetchNeeded:0];

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

- (OTCreateInheritanceKeyWithClaimTokenAndWrappingKey)initWithUUID:(id)a3 claimTokenData:(id)a4 wrappingKeyData:(id)a5 dependencies:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = OTCreateInheritanceKeyWithClaimTokenAndWrappingKey;
  v14 = [(CKKSGroupOperation *)&v17 init];
  if (v14)
  {
    v15 = v10;
    if (!v10)
    {
      v15 = objc_alloc_init(NSUUID);
    }

    objc_storeStrong(&v14->_uuid, v15);
    if (!v10)
    {
    }

    objc_storeStrong(&v14->_claimTokenData, a4);
    objc_storeStrong(&v14->_wrappingKeyData, a5);
    objc_storeStrong(&v14->_deps, a6);
  }

  return v14;
}

@end