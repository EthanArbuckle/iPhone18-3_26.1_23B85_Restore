@interface OTPairingVoucherOperation
- (OTPairingVoucherOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 deviceInfo:(id)a6 peerID:(id)a7 permanentInfo:(id)a8 permanentInfoSig:(id)a9 stableInfo:(id)a10 stableInfoSig:(id)a11;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3;
@end

@implementation OTPairingVoucherOperation

- (void)proceedWithKeys:(id)a3
{
  v22 = a3;
  objc_initWeak(&location, self);
  v4 = sub_100006274("octagon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v22 count];
    *buf = 67109120;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "vouching with %d keysets", buf, 8u);
  }

  v6 = [(OTPairingVoucherOperation *)self operationDependencies];
  v20 = [v6 cuttlefishXPCWrapper];
  v21 = [(OTPairingVoucherOperation *)self operationDependencies];
  v19 = [v21 activeAccount];
  v18 = [(OTPairingVoucherOperation *)self peerID];
  v17 = [(OTPairingVoucherOperation *)self permanentInfo];
  v7 = [(OTPairingVoucherOperation *)self permanentInfoSig];
  v8 = [(OTPairingVoucherOperation *)self stableInfo];
  v9 = [(OTPairingVoucherOperation *)self stableInfoSig];
  v10 = [(OTPairingVoucherOperation *)self operationDependencies];
  v11 = [v10 flowID];
  v12 = [(OTPairingVoucherOperation *)self operationDependencies];
  v13 = [v12 deviceSessionID];
  v14 = [(OTPairingVoucherOperation *)self operationDependencies];
  v15 = [v14 permittedToSendMetrics];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10019B6F8;
  v23[3] = &unk_1003436C0;
  objc_copyWeak(&v24, &location);
  LOBYTE(v16) = v15;
  [v20 vouchWithSpecificUser:v19 peerID:v18 permanentInfo:v17 permanentInfoSig:v7 stableInfo:v8 stableInfoSig:v9 ckksKeys:v22 flowID:v11 deviceSessionID:v13 canSendMetrics:v16 reply:v23];

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

  v5 = [(OTPairingVoucherOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  objc_initWeak(buf, self);
  v6 = [AAFAnalyticsEventSecurity alloc];
  v7 = [(OTPairingVoucherOperation *)self operationDependencies];
  v8 = [v7 activeAccount];
  v9 = [v8 altDSID];
  v10 = [(OTPairingVoucherOperation *)self operationDependencies];
  v11 = [v10 flowID];
  v12 = [(OTPairingVoucherOperation *)self operationDependencies];
  v13 = [v12 deviceSessionID];
  v14 = [(OTPairingVoucherOperation *)self operationDependencies];
  LOBYTE(v22) = [v14 permittedToSendMetrics];
  v15 = [v6 initWithKeychainCircleMetrics:0 altDSID:v9 flowID:v11 deviceSessionID:v13 eventName:kSecurityRTCEventNameCKKSTlkFetch testsAreEnabled:0 canSendMetrics:v22 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v16 = [OTFetchCKKSKeysOperation alloc];
  v17 = [(OTPairingVoucherOperation *)self operationDependencies];
  v18 = [(OTFetchCKKSKeysOperation *)v16 initWithDependencies:v17 refetchNeeded:0];

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

- (OTPairingVoucherOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 deviceInfo:(id)a6 peerID:(id)a7 permanentInfo:(id)a8 permanentInfoSig:(id)a9 stableInfo:(id)a10 stableInfoSig:(id)a11
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  obj = a6;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v24 = a9;
  v23 = a10;
  v18 = a11;
  v31.receiver = self;
  v31.super_class = OTPairingVoucherOperation;
  v19 = [(CKKSGroupOperation *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_intendedState, a4);
    objc_storeStrong(&v20->_nextState, a5);
    objc_storeStrong(&v20->_operationDependencies, a3);
    objc_storeStrong(&v20->_peerID, a7);
    objc_storeStrong(&v20->_permanentInfo, a8);
    objc_storeStrong(&v20->_permanentInfoSig, a9);
    objc_storeStrong(&v20->_stableInfo, a10);
    objc_storeStrong(&v20->_stableInfoSig, a11);
    objc_storeStrong(&v20->_deviceInfo, obj);
  }

  return v20;
}

@end