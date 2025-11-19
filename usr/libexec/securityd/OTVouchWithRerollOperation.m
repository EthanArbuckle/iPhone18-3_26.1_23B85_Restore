@interface OTVouchWithRerollOperation
- (OTVouchWithRerollOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 saveVoucher:(BOOL)a6;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)a3;
@end

@implementation OTVouchWithRerollOperation

- (void)proceedWithFilteredTLKShares:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(OTVouchWithRerollOperation *)self deps];
  v6 = [v5 cuttlefishXPCWrapper];
  v7 = [(OTVouchWithRerollOperation *)self deps];
  v8 = [v7 activeAccount];
  v9 = [(OTVouchWithRerollOperation *)self oldPeerID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001249D0;
  v11[3] = &unk_100337F98;
  objc_copyWeak(&v13, &location);
  v10 = v4;
  v12 = v10;
  [v6 vouchWithRerollWithSpecificUser:v8 oldPeerID:v9 tlkShares:v10 reply:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating voucher for reroll", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTVouchWithRerollOperation *)self setFinishOp:v4];

  v5 = [(OTVouchWithRerollOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  v6 = [(OTVouchWithRerollOperation *)self deps];
  v7 = [v6 stateHolder];
  v31 = 0;
  v8 = [v7 loadOrCreateAccountMetadata:&v31];
  v9 = v31;

  if (v9)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon: Error loading account metadata: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v9];
    v11 = [(OTVouchWithRerollOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v11];
  }

  else
  {
    v12 = [v8 peerID];
    [(OTVouchWithRerollOperation *)self setPeerID:v12];

    v13 = [v8 oldPeerID];
    [(OTVouchWithRerollOperation *)self setOldPeerID:v13];

    v14 = [v8 getTPSyncingPolicy];
    [(OTVouchWithRerollOperation *)self setSyncingPolicy:v14];

    objc_initWeak(buf, self);
    v15 = [(OTVouchWithRerollOperation *)self deps];
    v25 = [v15 cuttlefishXPCWrapper];
    v28 = [(OTVouchWithRerollOperation *)self deps];
    v24 = [v28 activeAccount];
    v23 = [(OTVouchWithRerollOperation *)self peerID];
    v27 = [(OTVouchWithRerollOperation *)self deps];
    v26 = [v27 activeAccount];
    v16 = [v26 altDSID];
    v17 = [(OTVouchWithRerollOperation *)self deps];
    v18 = [v17 flowID];
    v19 = [(OTVouchWithRerollOperation *)self deps];
    v20 = [v19 deviceSessionID];
    v21 = [(OTVouchWithRerollOperation *)self deps];
    v22 = [v21 permittedToSendMetrics];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10012528C;
    v29[3] = &unk_100343480;
    objc_copyWeak(&v30, buf);
    [v25 fetchRecoverableTLKSharesWithSpecificUser:v24 peerID:v23 altDSID:v16 flowID:v18 deviceSessionID:v20 canSendMetrics:v22 reply:v29];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }
}

- (OTVouchWithRerollOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 saveVoucher:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = OTVouchWithRerollOperation;
  v14 = [(CKKSGroupOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 166), a3);
    objc_storeStrong((v15 + 134), a4);
    objc_storeStrong((v15 + 142), a5);
    v15[128] = a6;
  }

  return v15;
}

@end