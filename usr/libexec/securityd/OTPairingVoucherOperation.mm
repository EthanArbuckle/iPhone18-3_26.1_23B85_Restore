@interface OTPairingVoucherOperation
- (OTPairingVoucherOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState deviceInfo:(id)info peerID:(id)d permanentInfo:(id)permanentInfo permanentInfoSig:(id)sig stableInfo:(id)self0 stableInfoSig:(id)self1;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys;
@end

@implementation OTPairingVoucherOperation

- (void)proceedWithKeys:(id)keys
{
  keysCopy = keys;
  objc_initWeak(&location, self);
  v4 = sub_100006274("octagon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [keysCopy count];
    *buf = 67109120;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "vouching with %d keysets", buf, 8u);
  }

  operationDependencies = [(OTPairingVoucherOperation *)self operationDependencies];
  cuttlefishXPCWrapper = [operationDependencies cuttlefishXPCWrapper];
  operationDependencies2 = [(OTPairingVoucherOperation *)self operationDependencies];
  activeAccount = [operationDependencies2 activeAccount];
  peerID = [(OTPairingVoucherOperation *)self peerID];
  permanentInfo = [(OTPairingVoucherOperation *)self permanentInfo];
  permanentInfoSig = [(OTPairingVoucherOperation *)self permanentInfoSig];
  stableInfo = [(OTPairingVoucherOperation *)self stableInfo];
  stableInfoSig = [(OTPairingVoucherOperation *)self stableInfoSig];
  operationDependencies3 = [(OTPairingVoucherOperation *)self operationDependencies];
  flowID = [operationDependencies3 flowID];
  operationDependencies4 = [(OTPairingVoucherOperation *)self operationDependencies];
  deviceSessionID = [operationDependencies4 deviceSessionID];
  operationDependencies5 = [(OTPairingVoucherOperation *)self operationDependencies];
  permittedToSendMetrics = [operationDependencies5 permittedToSendMetrics];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10019B6F8;
  v23[3] = &unk_1003436C0;
  objc_copyWeak(&v24, &location);
  LOBYTE(v16) = permittedToSendMetrics;
  [cuttlefishXPCWrapper vouchWithSpecificUser:activeAccount peerID:peerID permanentInfo:permanentInfo permanentInfoSig:permanentInfoSig stableInfo:stableInfo stableInfoSig:stableInfoSig ckksKeys:keysCopy flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v16 reply:v23];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "creating voucher", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTPairingVoucherOperation *)self setFinishedOp:v4];

  finishedOp = [(OTPairingVoucherOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  objc_initWeak(buf, self);
  v6 = [AAFAnalyticsEventSecurity alloc];
  operationDependencies = [(OTPairingVoucherOperation *)self operationDependencies];
  activeAccount = [operationDependencies activeAccount];
  altDSID = [activeAccount altDSID];
  operationDependencies2 = [(OTPairingVoucherOperation *)self operationDependencies];
  flowID = [operationDependencies2 flowID];
  operationDependencies3 = [(OTPairingVoucherOperation *)self operationDependencies];
  deviceSessionID = [operationDependencies3 deviceSessionID];
  operationDependencies4 = [(OTPairingVoucherOperation *)self operationDependencies];
  LOBYTE(v22) = [operationDependencies4 permittedToSendMetrics];
  v15 = [v6 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameCKKSTlkFetch testsAreEnabled:0 canSendMetrics:v22 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v16 = [OTFetchCKKSKeysOperation alloc];
  operationDependencies5 = [(OTPairingVoucherOperation *)self operationDependencies];
  v18 = [(OTFetchCKKSKeysOperation *)v16 initWithDependencies:operationDependencies5 refetchNeeded:0];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v18];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10019BB5C;
  v23[3] = &unk_100345310;
  objc_copyWeak(&v26, buf);
  v19 = v18;
  v24 = v19;
  v20 = v15;
  v25 = v20;
  v21 = [CKKSResultOperation named:@"vouch-with-keys" withBlock:v23];
  [v21 addDependency:v19];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

- (OTPairingVoucherOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState deviceInfo:(id)info peerID:(id)d permanentInfo:(id)permanentInfo permanentInfoSig:(id)sig stableInfo:(id)self0 stableInfoSig:(id)self1
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  obj = info;
  infoCopy = info;
  dCopy = d;
  permanentInfoCopy = permanentInfo;
  sigCopy = sig;
  stableInfoCopy = stableInfo;
  infoSigCopy = infoSig;
  v31.receiver = self;
  v31.super_class = OTPairingVoucherOperation;
  v19 = [(CKKSGroupOperation *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_intendedState, state);
    objc_storeStrong(&v20->_nextState, errorState);
    objc_storeStrong(&v20->_operationDependencies, dependencies);
    objc_storeStrong(&v20->_peerID, d);
    objc_storeStrong(&v20->_permanentInfo, permanentInfo);
    objc_storeStrong(&v20->_permanentInfoSig, sig);
    objc_storeStrong(&v20->_stableInfo, stableInfo);
    objc_storeStrong(&v20->_stableInfoSig, infoSig);
    objc_storeStrong(&v20->_deviceInfo, obj);
  }

  return v20;
}

@end