@interface OTJoinWithVoucherOperation
- (OTJoinWithVoucherOperation)initWithDependencies:(id)dependencies intendedState:(id)state ckksConflictState:(id)conflictState errorState:(id)errorState;
- (void)groupStart;
- (void)proceedWithPendingTLKShares:(id)shares event:(id)event;
@end

@implementation OTJoinWithVoucherOperation

- (void)proceedWithPendingTLKShares:(id)shares event:(id)event
{
  sharesCopy = shares;
  eventCopy = event;
  objc_initWeak(&location, self);
  deps = [(OTJoinWithVoucherOperation *)self deps];
  sosAdapter = [deps sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  if (sosEnabled)
  {
    deps2 = [(OTJoinWithVoucherOperation *)self deps];
    sosAdapter2 = [deps2 sosAdapter];
    v35 = 0;
    v31 = [OTSOSAdapterHelpers peerPublicSigningKeySPKIsForCircle:sosAdapter2 error:&v35];
    v11 = v35;

    v12 = sub_100006274("octagon-sos");
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v13)
      {
        *buf = 138412290;
        v38 = v31;
        v14 = "SOS preapproved keys are %@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
      }
    }

    else if (v13)
    {
      *buf = 138412290;
      v38 = v11;
      v14 = "Unable to fetch SOS preapproved keys: %@";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v11 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SOS not enabled; no preapproved keys", buf, 2u);
  }

  v31 = 0;
LABEL_12:

  deps3 = [(OTJoinWithVoucherOperation *)self deps];
  cuttlefishXPCWrapper = [deps3 cuttlefishXPCWrapper];
  deps4 = [(OTJoinWithVoucherOperation *)self deps];
  activeAccount = [deps4 activeAccount];
  voucherData = [(OTJoinWithVoucherOperation *)self voucherData];
  voucherSig = [(OTJoinWithVoucherOperation *)self voucherSig];
  deps5 = [(OTJoinWithVoucherOperation *)self deps];
  flowID = [deps5 flowID];
  deps6 = [(OTJoinWithVoucherOperation *)self deps];
  deviceSessionID = [deps6 deviceSessionID];
  deps7 = [(OTJoinWithVoucherOperation *)self deps];
  permittedToSendMetrics = [deps7 permittedToSendMetrics];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100118D24;
  v32[3] = &unk_1003375D8;
  objc_copyWeak(&v34, &location);
  v24 = eventCopy;
  v33 = v24;
  LOBYTE(v25) = permittedToSendMetrics;
  [cuttlefishXPCWrapper joinWithSpecificUser:activeAccount voucherData:voucherData voucherSig:voucherSig ckksKeys:&__NSArray0__struct tlkShares:sharesCopy preapprovedKeys:v31 flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v25 reply:v32];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v27 = [AAFAnalyticsEventSecurity alloc];
  deps = [(OTJoinWithVoucherOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];
  deps2 = [(OTJoinWithVoucherOperation *)self deps];
  flowID = [deps2 flowID];
  deps3 = [(OTJoinWithVoucherOperation *)self deps];
  deviceSessionID = [deps3 deviceSessionID];
  v10 = kSecurityRTCEventNameJoinWithVoucherOperation;
  deps4 = [(OTJoinWithVoucherOperation *)self deps];
  LOBYTE(v26) = [deps4 permittedToSendMetrics];
  v12 = [v27 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v10 testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  deps5 = [(OTJoinWithVoucherOperation *)self deps];
  stateHolder = [deps5 stateHolder];
  v28 = 0;
  v15 = [stateHolder loadOrCreateAccountMetadata:&v28];
  v16 = v28;

  voucher = [v15 voucher];
  if (voucher && (v18 = voucher, [v15 voucherSignature], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19) && !v16)
  {
    voucher2 = [v15 voucher];
    [(OTJoinWithVoucherOperation *)self setVoucherData:voucher2];

    voucherSignature = [v15 voucherSignature];
    [(OTJoinWithVoucherOperation *)self setVoucherSig:voucherSignature];

    v22 = sub_100006274("octagon");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      voucherData = [(OTJoinWithVoucherOperation *)self voucherData];
      *buf = 138412290;
      v30 = voucherData;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "joining with a voucher: %@", buf, 0xCu);
    }

    getTLKSharesPairedWithVoucher = [v15 getTLKSharesPairedWithVoucher];
    [(OTJoinWithVoucherOperation *)self proceedWithPendingTLKShares:getTLKSharesPairedWithVoucher event:v12];
  }

  else
  {
    v25 = sub_100006274("octagon");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No voucher available: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v16];
    getTLKSharesPairedWithVoucher = [(CKKSResultOperation *)self error];
    [v12 sendMetricWithResult:0 error:getTLKSharesPairedWithVoucher];
  }
}

- (OTJoinWithVoucherOperation)initWithDependencies:(id)dependencies intendedState:(id)state ckksConflictState:(id)conflictState errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  conflictStateCopy = conflictState;
  errorStateCopy = errorState;
  v21.receiver = self;
  v21.super_class = OTJoinWithVoucherOperation;
  v15 = [(CKKSGroupOperation *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
    objc_storeStrong(&v16->_ckksConflictState, conflictState);
    peerID = v16->_peerID;
    v16->_peerID = 0;

    voucherData = v16->_voucherData;
    v16->_voucherData = 0;

    voucherSig = v16->_voucherSig;
    v16->_voucherSig = 0;
  }

  return v16;
}

@end