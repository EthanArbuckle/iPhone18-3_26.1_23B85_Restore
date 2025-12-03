@interface OTVouchWithRecoveryKeyOperation
- (OTVouchWithRecoveryKeyOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState recoveryKey:(id)key saveVoucher:(BOOL)voucher;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)shares;
- (void)proceedWithRecoveryKeyID:(id)d;
@end

@implementation OTVouchWithRecoveryKeyOperation

- (void)proceedWithFilteredTLKShares:(id)shares
{
  sharesCopy = shares;
  objc_initWeak(&location, self);
  deps = [(OTVouchWithRecoveryKeyOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  recoveryKey = [(OTVouchWithRecoveryKeyOperation *)self recoveryKey];
  salt = [(OTVouchWithRecoveryKeyOperation *)self salt];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100123744;
  v12[3] = &unk_100337F98;
  objc_copyWeak(&v14, &location);
  v11 = sharesCopy;
  v13 = v11;
  [cuttlefishXPCWrapper vouchWithRecoveryKeyWithSpecificUser:activeAccount recoveryKey:recoveryKey salt:salt tlkShares:v11 reply:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)proceedWithRecoveryKeyID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  deps = [(OTVouchWithRecoveryKeyOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  deps3 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  activeAccount2 = [deps3 activeAccount];
  altDSID = [activeAccount2 altDSID];
  deps4 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  permittedToSendMetrics = [deps6 permittedToSendMetrics];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100123DCC;
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating voucher using a recovery key", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTVouchWithRecoveryKeyOperation *)self setFinishOp:v4];

  finishOp = [(OTVouchWithRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  deps = [(OTVouchWithRecoveryKeyOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];

  if (altDSID)
  {
    [(OTVouchWithRecoveryKeyOperation *)self setSalt:altDSID];
    objc_initWeak(buf, self);
    deps2 = [(OTVouchWithRecoveryKeyOperation *)self deps];
    cuttlefishXPCWrapper = [deps2 cuttlefishXPCWrapper];
    deps3 = [(OTVouchWithRecoveryKeyOperation *)self deps];
    activeAccount2 = [deps3 activeAccount];
    recoveryKey = [(OTVouchWithRecoveryKeyOperation *)self recoveryKey];
    salt = [(OTVouchWithRecoveryKeyOperation *)self salt];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10012437C;
    v20[3] = &unk_100337F48;
    objc_copyWeak(&v21, buf);
    [cuttlefishXPCWrapper preflightVouchWithRecoveryKeyWithSpecificUser:activeAccount2 recoveryKey:recoveryKey salt:salt reply:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = sub_100006274("authkit");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      deps4 = [(OTVouchWithRecoveryKeyOperation *)self deps];
      activeAccount3 = [deps4 activeAccount];
      *buf = 138412290;
      v23 = activeAccount3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v18];

    finishOp2 = [(OTVouchWithRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];
  }
}

- (OTVouchWithRecoveryKeyOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState recoveryKey:(id)key saveVoucher:(BOOL)voucher
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  keyCopy = key;
  v20.receiver = self;
  v20.super_class = OTVouchWithRecoveryKeyOperation;
  v17 = [(CKKSGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 166), dependencies);
    objc_storeStrong((v18 + 134), state);
    objc_storeStrong((v18 + 142), errorState);
    objc_storeStrong((v18 + 182), key);
    v18[128] = voucher;
  }

  return v18;
}

@end