@interface OTVouchWithCustodianRecoveryKeyOperation
- (OTVouchWithCustodianRecoveryKeyOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState custodianRecoveryKey:(id)key saveVoucher:(BOOL)voucher;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)shares;
- (void)proceedWithRecoveryKeyID:(id)d;
@end

@implementation OTVouchWithCustodianRecoveryKeyOperation

- (void)proceedWithFilteredTLKShares:(id)shares
{
  sharesCopy = shares;
  objc_initWeak(&location, self);
  deps = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  tphcrk = [(OTVouchWithCustodianRecoveryKeyOperation *)self tphcrk];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100144C40;
  v11[3] = &unk_100337F98;
  objc_copyWeak(&v13, &location);
  v10 = sharesCopy;
  v12 = v10;
  [cuttlefishXPCWrapper vouchWithCustodianRecoveryKeyWithSpecificUser:activeAccount crk:tphcrk tlkShares:v10 reply:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)proceedWithRecoveryKeyID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  deps = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  deps3 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  activeAccount2 = [deps3 activeAccount];
  altDSID = [activeAccount2 altDSID];
  deps4 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  permittedToSendMetrics = [deps6 permittedToSendMetrics];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001452C8;
  v18[3] = &unk_100343480;
  objc_copyWeak(&v19, &location);
  [cuttlefishXPCWrapper fetchRecoverableTLKSharesWithSpecificUser:activeAccount peerID:dCopy altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:permittedToSendMetrics reply:v18];

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

  finishOp = [(OTVouchWithCustodianRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  deps = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];

  if (altDSID)
  {
    [(OTVouchWithCustodianRecoveryKeyOperation *)self setSalt:altDSID];
    v9 = [TrustedPeersHelperCustodianRecoveryKey alloc];
    v10 = [(OTVouchWithCustodianRecoveryKeyOperation *)self crk];
    uuid = [v10 uuid];
    uUIDString = [uuid UUIDString];
    v13 = [(OTVouchWithCustodianRecoveryKeyOperation *)self crk];
    recoveryString = [v13 recoveryString];
    salt = [(OTVouchWithCustodianRecoveryKeyOperation *)self salt];
    v16 = [(TrustedPeersHelperCustodianRecoveryKey *)v9 initWithUUID:uUIDString encryptionKey:0 signingKey:0 recoveryString:recoveryString salt:salt kind:1];
    [(OTVouchWithCustodianRecoveryKeyOperation *)self setTphcrk:v16];

    objc_initWeak(buf, self);
    deps2 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
    cuttlefishXPCWrapper = [deps2 cuttlefishXPCWrapper];
    deps3 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
    activeAccount2 = [deps3 activeAccount];
    tphcrk = [(OTVouchWithCustodianRecoveryKeyOperation *)self tphcrk];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100145918;
    v27[3] = &unk_100337F48;
    objc_copyWeak(&v28, buf);
    [cuttlefishXPCWrapper preflightVouchWithCustodianRecoveryKeyWithSpecificUser:activeAccount2 crk:tphcrk reply:v27];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = sub_100006274("authkit");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      deps4 = [(OTVouchWithCustodianRecoveryKeyOperation *)self deps];
      activeAccount3 = [deps4 activeAccount];
      *buf = 138412290;
      v30 = activeAccount3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
    }

    v25 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v25];

    finishOp2 = [(OTVouchWithCustodianRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];
  }
}

- (OTVouchWithCustodianRecoveryKeyOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState custodianRecoveryKey:(id)key saveVoucher:(BOOL)voucher
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  keyCopy = key;
  v20.receiver = self;
  v20.super_class = OTVouchWithCustodianRecoveryKeyOperation;
  v17 = [(CKKSGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 166), dependencies);
    objc_storeStrong((v18 + 134), state);
    objc_storeStrong((v18 + 142), errorState);
    objc_storeStrong((v18 + 174), key);
    v18[128] = voucher;
  }

  return v18;
}

@end