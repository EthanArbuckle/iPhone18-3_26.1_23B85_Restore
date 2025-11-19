@interface OTVouchWithBottleOperation
- (OTVouchWithBottleOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 bottleID:(id)a6 entropy:(id)a7 bottleSalt:(id)a8 saveVoucher:(BOOL)a9;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)a3 vouchWithBottleEvent:(id)a4;
- (void)proceedWithPeerID:(id)a3 refetchWasNeeded:(BOOL)a4 vouchWithBottleEvent:(id)a5;
@end

@implementation OTVouchWithBottleOperation

- (void)proceedWithFilteredTLKShares:(id)a3 vouchWithBottleEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(location, self);
  v8 = [(OTVouchWithBottleOperation *)self deps];
  v24 = [v8 cuttlefishXPCWrapper];
  v9 = [(OTVouchWithBottleOperation *)self deps];
  v23 = [v9 activeAccount];
  v22 = [(OTVouchWithBottleOperation *)self bottleID];
  v21 = [(OTVouchWithBottleOperation *)self entropy];
  v20 = [(OTVouchWithBottleOperation *)self bottleSalt];
  v10 = [(OTVouchWithBottleOperation *)self deps];
  v27 = [v10 activeAccount];
  v19 = [v27 altDSID];
  v26 = [(OTVouchWithBottleOperation *)self deps];
  v11 = [v26 flowID];
  v25 = [(OTVouchWithBottleOperation *)self deps];
  v12 = [v25 deviceSessionID];
  v13 = [(OTVouchWithBottleOperation *)self deps];
  v14 = [v13 permittedToSendMetrics];
  v18 = v8;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E07CC;
  v28[3] = &unk_100336C28;
  objc_copyWeak(&v31, location);
  v17 = v7;
  v29 = v17;
  v15 = v6;
  v30 = v15;
  LOBYTE(v16) = v14;
  [v24 vouchWithBottleWithSpecificUser:v23 bottleID:v22 entropy:v21 bottleSalt:v20 tlkShares:v15 altDSID:v19 flowID:v11 deviceSessionID:v12 canSendMetrics:v16 reply:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

- (void)proceedWithPeerID:(id)a3 refetchWasNeeded:(BOOL)a4 vouchWithBottleEvent:(id)a5
{
  v21 = a3;
  v20 = a5;
  objc_initWeak(&location, self);
  v7 = [(OTVouchWithBottleOperation *)self deps];
  v8 = [v7 cuttlefishXPCWrapper];
  v9 = [(OTVouchWithBottleOperation *)self deps];
  v19 = [v9 activeAccount];
  v10 = [(OTVouchWithBottleOperation *)self deps];
  v22 = [v10 activeAccount];
  v18 = [v22 altDSID];
  v11 = [(OTVouchWithBottleOperation *)self deps];
  v17 = [v11 flowID];
  v12 = [(OTVouchWithBottleOperation *)self deps];
  v13 = [v12 deviceSessionID];
  v14 = [(OTVouchWithBottleOperation *)self deps];
  v15 = [v14 permittedToSendMetrics];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E0F14;
  v23[3] = &unk_100336C00;
  objc_copyWeak(&v25, &location);
  v16 = v20;
  v24 = v16;
  [v8 fetchRecoverableTLKSharesWithSpecificUser:v19 peerID:v21 altDSID:v18 flowID:v17 deviceSessionID:v13 canSendMetrics:v15 reply:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(OTVouchWithBottleOperation *)self bottleID];
    *buf = 138412290;
    v47 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating voucher using a bottle with escrow record id: %@", buf, 0xCu);
  }

  v5 = [AAFAnalyticsEventSecurity alloc];
  v6 = [(OTVouchWithBottleOperation *)self deps];
  v7 = [v6 activeAccount];
  v8 = [v7 altDSID];
  v9 = [(OTVouchWithBottleOperation *)self deps];
  v10 = [v9 flowID];
  v11 = [(OTVouchWithBottleOperation *)self deps];
  v12 = [v11 deviceSessionID];
  v13 = [(OTVouchWithBottleOperation *)self deps];
  LOBYTE(v37) = [v13 permittedToSendMetrics];
  v42 = [v5 initWithKeychainCircleMetrics:0 altDSID:v8 flowID:v10 deviceSessionID:v12 eventName:kSecurityRTCEventNameVouchWithBottle testsAreEnabled:0 canSendMetrics:v37 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v14 = objc_alloc_init(NSOperation);
  [(OTVouchWithBottleOperation *)self setFinishedOp:v14];

  v15 = [(OTVouchWithBottleOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v15];

  v16 = [(OTVouchWithBottleOperation *)self bottleSalt];
  LOBYTE(v15) = v16 == 0;

  if ((v15 & 1) == 0)
  {
    v17 = sub_100006274("octagon");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(OTVouchWithBottleOperation *)self bottleSalt];
      *buf = 138412290;
      v47 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "using passed in altdsid, altdsid is: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v19 = [(OTVouchWithBottleOperation *)self deps];
  v20 = [v19 activeAccount];
  v17 = [v20 altDSID];

  if (v17)
  {
    [(OTVouchWithBottleOperation *)self setBottleSalt:v17];
LABEL_8:

    objc_initWeak(buf, self);
    v21 = [(OTVouchWithBottleOperation *)self deps];
    v40 = [v21 cuttlefishXPCWrapper];
    v41 = [(OTVouchWithBottleOperation *)self deps];
    v39 = [v41 activeAccount];
    v38 = [(OTVouchWithBottleOperation *)self bottleID];
    v22 = [(OTVouchWithBottleOperation *)self deps];
    v23 = [v22 activeAccount];
    v24 = [v23 altDSID];
    v25 = [(OTVouchWithBottleOperation *)self deps];
    v26 = [v25 flowID];
    v27 = [(OTVouchWithBottleOperation *)self deps];
    v28 = [v27 deviceSessionID];
    v29 = [(OTVouchWithBottleOperation *)self deps];
    v30 = [v29 permittedToSendMetrics];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000E1770;
    v43[3] = &unk_100336BD8;
    objc_copyWeak(&v45, buf);
    v44 = v42;
    [v40 preflightVouchWithBottleWithSpecificUser:v39 bottleID:v38 altDSID:v24 flowID:v26 deviceSessionID:v28 canSendMetrics:v30 reply:v43];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v31 = sub_100006274("authkit");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(OTVouchWithBottleOperation *)self deps];
    v33 = [v32 activeAccount];
    *buf = 138412290;
    v47 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
  }

  v34 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
  [(CKKSResultOperation *)self setError:v34];

  v35 = [(OTVouchWithBottleOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v35];

  v36 = [(CKKSResultOperation *)self error];
  [v42 sendMetricWithResult:0 error:v36];

LABEL_9:
}

- (OTVouchWithBottleOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 bottleID:(id)a6 entropy:(id)a7 bottleSalt:(id)a8 saveVoucher:(BOOL)a9
{
  v16 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = OTVouchWithBottleOperation;
  v19 = [(CKKSGroupOperation *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 190), a3);
    objc_storeStrong((v20 + 134), a4);
    objc_storeStrong((v20 + 142), a5);
    objc_storeStrong((v20 + 150), a6);
    objc_storeStrong((v20 + 158), a7);
    objc_storeStrong((v20 + 166), a8);
    v20[128] = a9;
  }

  return v20;
}

@end