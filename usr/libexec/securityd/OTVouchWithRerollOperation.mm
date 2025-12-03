@interface OTVouchWithRerollOperation
- (OTVouchWithRerollOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState saveVoucher:(BOOL)voucher;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)shares;
@end

@implementation OTVouchWithRerollOperation

- (void)proceedWithFilteredTLKShares:(id)shares
{
  sharesCopy = shares;
  objc_initWeak(&location, self);
  deps = [(OTVouchWithRerollOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTVouchWithRerollOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  oldPeerID = [(OTVouchWithRerollOperation *)self oldPeerID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001249D0;
  v11[3] = &unk_100337F98;
  objc_copyWeak(&v13, &location);
  v10 = sharesCopy;
  v12 = v10;
  [cuttlefishXPCWrapper vouchWithRerollWithSpecificUser:activeAccount oldPeerID:oldPeerID tlkShares:v10 reply:v11];

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

  finishOp = [(OTVouchWithRerollOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  deps = [(OTVouchWithRerollOperation *)self deps];
  stateHolder = [deps stateHolder];
  v31 = 0;
  v8 = [stateHolder loadOrCreateAccountMetadata:&v31];
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
    finishOp2 = [(OTVouchWithRerollOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];
  }

  else
  {
    peerID = [v8 peerID];
    [(OTVouchWithRerollOperation *)self setPeerID:peerID];

    oldPeerID = [v8 oldPeerID];
    [(OTVouchWithRerollOperation *)self setOldPeerID:oldPeerID];

    getTPSyncingPolicy = [v8 getTPSyncingPolicy];
    [(OTVouchWithRerollOperation *)self setSyncingPolicy:getTPSyncingPolicy];

    objc_initWeak(buf, self);
    deps2 = [(OTVouchWithRerollOperation *)self deps];
    cuttlefishXPCWrapper = [deps2 cuttlefishXPCWrapper];
    deps3 = [(OTVouchWithRerollOperation *)self deps];
    activeAccount = [deps3 activeAccount];
    peerID2 = [(OTVouchWithRerollOperation *)self peerID];
    deps4 = [(OTVouchWithRerollOperation *)self deps];
    activeAccount2 = [deps4 activeAccount];
    altDSID = [activeAccount2 altDSID];
    deps5 = [(OTVouchWithRerollOperation *)self deps];
    flowID = [deps5 flowID];
    deps6 = [(OTVouchWithRerollOperation *)self deps];
    deviceSessionID = [deps6 deviceSessionID];
    deps7 = [(OTVouchWithRerollOperation *)self deps];
    permittedToSendMetrics = [deps7 permittedToSendMetrics];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10012528C;
    v29[3] = &unk_100343480;
    objc_copyWeak(&v30, buf);
    [cuttlefishXPCWrapper fetchRecoverableTLKSharesWithSpecificUser:activeAccount peerID:peerID2 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:permittedToSendMetrics reply:v29];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }
}

- (OTVouchWithRerollOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState saveVoucher:(BOOL)voucher
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v17.receiver = self;
  v17.super_class = OTVouchWithRerollOperation;
  v14 = [(CKKSGroupOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 166), dependencies);
    objc_storeStrong((v15 + 134), state);
    objc_storeStrong((v15 + 142), errorState);
    v15[128] = voucher;
  }

  return v15;
}

@end