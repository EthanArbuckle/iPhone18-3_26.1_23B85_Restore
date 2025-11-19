@interface OTVouchWithCustodianRecoveryKeyOperation
- (OTVouchWithCustodianRecoveryKeyOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 custodianRecoveryKey:(id)a6 saveVoucher:(BOOL)a7;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)a3;
- (void)proceedWithRecoveryKeyID:(id)a3;
@end

@implementation OTVouchWithCustodianRecoveryKeyOperation

- (void)proceedWithFilteredTLKShares:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v6 = [v5 cuttlefishXPCWrapper];
  v7 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v8 = [v7 activeAccount];
  v9 = [(OTVouchWithCustodianRecoveryKeyOperation *)self tphcrk];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100144C40;
  v11[3] = &unk_100337F98;
  objc_copyWeak(&v13, &location);
  v10 = v4;
  v12 = v10;
  [v6 vouchWithCustodianRecoveryKeyWithSpecificUser:v8 crk:v9 tlkShares:v10 reply:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)proceedWithRecoveryKeyID:(id)a3
{
  v16 = a3;
  objc_initWeak(&location, self);
  v4 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v5 = [v4 cuttlefishXPCWrapper];
  v6 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v15 = [v6 activeAccount];
  v7 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v17 = [v7 activeAccount];
  v14 = [v17 altDSID];
  v8 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v9 = [v8 flowID];
  v10 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v11 = [v10 deviceSessionID];
  v12 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v13 = [v12 permittedToSendMetrics];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001452C8;
  v18[3] = &unk_100343480;
  objc_copyWeak(&v19, &location);
  [v5 fetchRecoverableTLKSharesWithSpecificUser:v15 peerID:v16 altDSID:v14 flowID:v9 deviceSessionID:v11 canSendMetrics:v13 reply:v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating voucher using a custodian recovery key", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTVouchWithCustodianRecoveryKeyOperation *)self setFinishOp:v4];

  v5 = [(OTVouchWithCustodianRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  v6 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  v7 = [v6 activeAccount];
  v8 = [v7 altDSID];

  if (v8)
  {
    [(OTVouchWithCustodianRecoveryKeyOperation *)self setSalt:v8];
    v9 = [TrustedPeersHelperCustodianRecoveryKey alloc];
    v10 = [(OTVouchWithCustodianRecoveryKeyOperation *)self crk];
    v11 = [v10 uuid];
    v12 = [v11 UUIDString];
    v13 = [(OTVouchWithCustodianRecoveryKeyOperation *)self crk];
    v14 = [v13 recoveryString];
    v15 = [(OTVouchWithCustodianRecoveryKeyOperation *)self salt];
    v16 = [(TrustedPeersHelperCustodianRecoveryKey *)v9 initWithUUID:v12 encryptionKey:0 signingKey:0 recoveryString:v14 salt:v15 kind:1];
    [(OTVouchWithCustodianRecoveryKeyOperation *)self setTphcrk:v16];

    objc_initWeak(buf, self);
    v17 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
    v18 = [v17 cuttlefishXPCWrapper];
    v19 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
    v20 = [v19 activeAccount];
    v21 = [(OTVouchWithCustodianRecoveryKeyOperation *)self tphcrk];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100145918;
    v27[3] = &unk_100337F48;
    objc_copyWeak(&v28, buf);
    [v18 preflightVouchWithCustodianRecoveryKeyWithSpecificUser:v20 crk:v21 reply:v27];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = sub_100006274("authkit");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
      v24 = [v23 activeAccount];
      *buf = 138412290;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
    }

    v25 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v25];

    v26 = [(OTVouchWithCustodianRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v26];
  }
}

- (OTVouchWithCustodianRecoveryKeyOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 custodianRecoveryKey:(id)a6 saveVoucher:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = OTVouchWithCustodianRecoveryKeyOperation;
  v17 = [(CKKSGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 166), a3);
    objc_storeStrong((v18 + 134), a4);
    objc_storeStrong((v18 + 142), a5);
    objc_storeStrong((v18 + 174), a6);
    v18[128] = a7;
  }

  return v18;
}

@end