@interface OTVouchWithRecoveryKeyOperation
- (OTVouchWithRecoveryKeyOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 recoveryKey:(id)a6 saveVoucher:(BOOL)a7;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)a3;
- (void)proceedWithRecoveryKeyID:(id)a3;
@end

@implementation OTVouchWithRecoveryKeyOperation

- (void)proceedWithFilteredTLKShares:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v6 = [v5 cuttlefishXPCWrapper];
  v7 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v8 = [v7 activeAccount];
  v9 = [(OTVouchWithRecoveryKeyOperation *)self recoveryKey];
  v10 = [(OTVouchWithRecoveryKeyOperation *)self salt];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100123744;
  v12[3] = &unk_100337F98;
  objc_copyWeak(&v14, &location);
  v11 = v4;
  v13 = v11;
  [v6 vouchWithRecoveryKeyWithSpecificUser:v8 recoveryKey:v9 salt:v10 tlkShares:v11 reply:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)proceedWithRecoveryKeyID:(id)a3
{
  v16 = a3;
  objc_initWeak(&location, self);
  v4 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v5 = [v4 cuttlefishXPCWrapper];
  v6 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v15 = [v6 activeAccount];
  v7 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v17 = [v7 activeAccount];
  v14 = [v17 altDSID];
  v8 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v9 = [v8 flowID];
  v10 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v11 = [v10 deviceSessionID];
  v12 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v13 = [v12 permittedToSendMetrics];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100123DCC;
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating voucher using a recovery key", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTVouchWithRecoveryKeyOperation *)self setFinishOp:v4];

  v5 = [(OTVouchWithRecoveryKeyOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  v6 = [(OTVouchWithRecoveryKeyOperation *)self deps];
  v7 = [v6 activeAccount];
  v8 = [v7 altDSID];

  if (v8)
  {
    [(OTVouchWithRecoveryKeyOperation *)self setSalt:v8];
    objc_initWeak(buf, self);
    v9 = [(OTVouchWithRecoveryKeyOperation *)self deps];
    v10 = [v9 cuttlefishXPCWrapper];
    v11 = [(OTVouchWithRecoveryKeyOperation *)self deps];
    v12 = [v11 activeAccount];
    v13 = [(OTVouchWithRecoveryKeyOperation *)self recoveryKey];
    v14 = [(OTVouchWithRecoveryKeyOperation *)self salt];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10012437C;
    v20[3] = &unk_100337F48;
    objc_copyWeak(&v21, buf);
    [v10 preflightVouchWithRecoveryKeyWithSpecificUser:v12 recoveryKey:v13 salt:v14 reply:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = sub_100006274("authkit");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(OTVouchWithRecoveryKeyOperation *)self deps];
      v17 = [v16 activeAccount];
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v18];

    v19 = [(OTVouchWithRecoveryKeyOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v19];
  }
}

- (OTVouchWithRecoveryKeyOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 recoveryKey:(id)a6 saveVoucher:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = OTVouchWithRecoveryKeyOperation;
  v17 = [(CKKSGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 166), a3);
    objc_storeStrong((v18 + 134), a4);
    objc_storeStrong((v18 + 142), a5);
    objc_storeStrong((v18 + 182), a6);
    v18[128] = a7;
  }

  return v18;
}

@end