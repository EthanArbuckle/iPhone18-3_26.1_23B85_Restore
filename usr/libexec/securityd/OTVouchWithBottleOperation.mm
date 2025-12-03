@interface OTVouchWithBottleOperation
- (OTVouchWithBottleOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState bottleID:(id)d entropy:(id)entropy bottleSalt:(id)salt saveVoucher:(BOOL)voucher;
- (void)groupStart;
- (void)proceedWithFilteredTLKShares:(id)shares vouchWithBottleEvent:(id)event;
- (void)proceedWithPeerID:(id)d refetchWasNeeded:(BOOL)needed vouchWithBottleEvent:(id)event;
@end

@implementation OTVouchWithBottleOperation

- (void)proceedWithFilteredTLKShares:(id)shares vouchWithBottleEvent:(id)event
{
  sharesCopy = shares;
  eventCopy = event;
  objc_initWeak(location, self);
  deps = [(OTVouchWithBottleOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTVouchWithBottleOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  bottleID = [(OTVouchWithBottleOperation *)self bottleID];
  entropy = [(OTVouchWithBottleOperation *)self entropy];
  bottleSalt = [(OTVouchWithBottleOperation *)self bottleSalt];
  deps3 = [(OTVouchWithBottleOperation *)self deps];
  activeAccount2 = [deps3 activeAccount];
  altDSID = [activeAccount2 altDSID];
  deps4 = [(OTVouchWithBottleOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTVouchWithBottleOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTVouchWithBottleOperation *)self deps];
  permittedToSendMetrics = [deps6 permittedToSendMetrics];
  v18 = deps;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E07CC;
  v28[3] = &unk_100336C28;
  objc_copyWeak(&v31, location);
  v17 = eventCopy;
  v29 = v17;
  v15 = sharesCopy;
  v30 = v15;
  LOBYTE(v16) = permittedToSendMetrics;
  [cuttlefishXPCWrapper vouchWithBottleWithSpecificUser:activeAccount bottleID:bottleID entropy:entropy bottleSalt:bottleSalt tlkShares:v15 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v16 reply:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

- (void)proceedWithPeerID:(id)d refetchWasNeeded:(BOOL)needed vouchWithBottleEvent:(id)event
{
  dCopy = d;
  eventCopy = event;
  objc_initWeak(&location, self);
  deps = [(OTVouchWithBottleOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTVouchWithBottleOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  deps3 = [(OTVouchWithBottleOperation *)self deps];
  activeAccount2 = [deps3 activeAccount];
  altDSID = [activeAccount2 altDSID];
  deps4 = [(OTVouchWithBottleOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTVouchWithBottleOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTVouchWithBottleOperation *)self deps];
  permittedToSendMetrics = [deps6 permittedToSendMetrics];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E0F14;
  v23[3] = &unk_100336C00;
  objc_copyWeak(&v25, &location);
  v16 = eventCopy;
  v24 = v16;
  [cuttlefishXPCWrapper fetchRecoverableTLKSharesWithSpecificUser:activeAccount peerID:dCopy altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:permittedToSendMetrics reply:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    bottleID = [(OTVouchWithBottleOperation *)self bottleID];
    *buf = 138412290;
    v47 = bottleID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating voucher using a bottle with escrow record id: %@", buf, 0xCu);
  }

  v5 = [AAFAnalyticsEventSecurity alloc];
  deps = [(OTVouchWithBottleOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];
  deps2 = [(OTVouchWithBottleOperation *)self deps];
  flowID = [deps2 flowID];
  deps3 = [(OTVouchWithBottleOperation *)self deps];
  deviceSessionID = [deps3 deviceSessionID];
  deps4 = [(OTVouchWithBottleOperation *)self deps];
  LOBYTE(v37) = [deps4 permittedToSendMetrics];
  v42 = [v5 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameVouchWithBottle testsAreEnabled:0 canSendMetrics:v37 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v14 = objc_alloc_init(NSOperation);
  [(OTVouchWithBottleOperation *)self setFinishedOp:v14];

  finishedOp = [(OTVouchWithBottleOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  bottleSalt = [(OTVouchWithBottleOperation *)self bottleSalt];
  LOBYTE(finishedOp) = bottleSalt == 0;

  if ((finishedOp & 1) == 0)
  {
    altDSID2 = sub_100006274("octagon");
    if (os_log_type_enabled(altDSID2, OS_LOG_TYPE_DEFAULT))
    {
      bottleSalt2 = [(OTVouchWithBottleOperation *)self bottleSalt];
      *buf = 138412290;
      v47 = bottleSalt2;
      _os_log_impl(&_mh_execute_header, altDSID2, OS_LOG_TYPE_DEFAULT, "using passed in altdsid, altdsid is: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  deps5 = [(OTVouchWithBottleOperation *)self deps];
  activeAccount2 = [deps5 activeAccount];
  altDSID2 = [activeAccount2 altDSID];

  if (altDSID2)
  {
    [(OTVouchWithBottleOperation *)self setBottleSalt:altDSID2];
LABEL_8:

    objc_initWeak(buf, self);
    deps6 = [(OTVouchWithBottleOperation *)self deps];
    cuttlefishXPCWrapper = [deps6 cuttlefishXPCWrapper];
    deps7 = [(OTVouchWithBottleOperation *)self deps];
    activeAccount3 = [deps7 activeAccount];
    bottleID2 = [(OTVouchWithBottleOperation *)self bottleID];
    deps8 = [(OTVouchWithBottleOperation *)self deps];
    activeAccount4 = [deps8 activeAccount];
    altDSID3 = [activeAccount4 altDSID];
    deps9 = [(OTVouchWithBottleOperation *)self deps];
    flowID2 = [deps9 flowID];
    deps10 = [(OTVouchWithBottleOperation *)self deps];
    deviceSessionID2 = [deps10 deviceSessionID];
    deps11 = [(OTVouchWithBottleOperation *)self deps];
    permittedToSendMetrics = [deps11 permittedToSendMetrics];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000E1770;
    v43[3] = &unk_100336BD8;
    objc_copyWeak(&v45, buf);
    v44 = v42;
    [cuttlefishXPCWrapper preflightVouchWithBottleWithSpecificUser:activeAccount3 bottleID:bottleID2 altDSID:altDSID3 flowID:flowID2 deviceSessionID:deviceSessionID2 canSendMetrics:permittedToSendMetrics reply:v43];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v31 = sub_100006274("authkit");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    deps12 = [(OTVouchWithBottleOperation *)self deps];
    activeAccount5 = [deps12 activeAccount];
    *buf = 138412290;
    v47 = activeAccount5;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
  }

  v34 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
  [(CKKSResultOperation *)self setError:v34];

  finishedOp2 = [(OTVouchWithBottleOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];

  error = [(CKKSResultOperation *)self error];
  [v42 sendMetricWithResult:0 error:error];

LABEL_9:
}

- (OTVouchWithBottleOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState bottleID:(id)d entropy:(id)entropy bottleSalt:(id)salt saveVoucher:(BOOL)voucher
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  dCopy = d;
  entropyCopy = entropy;
  saltCopy = salt;
  v25.receiver = self;
  v25.super_class = OTVouchWithBottleOperation;
  v19 = [(CKKSGroupOperation *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 190), dependencies);
    objc_storeStrong((v20 + 134), state);
    objc_storeStrong((v20 + 142), errorState);
    objc_storeStrong((v20 + 150), d);
    objc_storeStrong((v20 + 158), entropy);
    objc_storeStrong((v20 + 166), salt);
    v20[128] = voucher;
  }

  return v20;
}

@end