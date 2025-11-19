@interface OTJoinWithVoucherOperation
- (OTJoinWithVoucherOperation)initWithDependencies:(id)a3 intendedState:(id)a4 ckksConflictState:(id)a5 errorState:(id)a6;
- (void)groupStart;
- (void)proceedWithPendingTLKShares:(id)a3 event:(id)a4;
@end

@implementation OTJoinWithVoucherOperation

- (void)proceedWithPendingTLKShares:(id)a3 event:(id)a4
{
  v29 = a3;
  v26 = a4;
  objc_initWeak(&location, self);
  v6 = [(OTJoinWithVoucherOperation *)self deps];
  v7 = [v6 sosAdapter];
  v8 = [v7 sosEnabled];

  if (v8)
  {
    v9 = [(OTJoinWithVoucherOperation *)self deps];
    v10 = [v9 sosAdapter];
    v35 = 0;
    v31 = [OTSOSAdapterHelpers peerPublicSigningKeySPKIsForCircle:v10 error:&v35];
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

  v15 = [(OTJoinWithVoucherOperation *)self deps];
  v28 = [v15 cuttlefishXPCWrapper];
  v30 = [(OTJoinWithVoucherOperation *)self deps];
  v27 = [v30 activeAccount];
  v16 = [(OTJoinWithVoucherOperation *)self voucherData];
  v17 = [(OTJoinWithVoucherOperation *)self voucherSig];
  v18 = [(OTJoinWithVoucherOperation *)self deps];
  v19 = [v18 flowID];
  v20 = [(OTJoinWithVoucherOperation *)self deps];
  v21 = [v20 deviceSessionID];
  v22 = [(OTJoinWithVoucherOperation *)self deps];
  v23 = [v22 permittedToSendMetrics];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100118D24;
  v32[3] = &unk_1003375D8;
  objc_copyWeak(&v34, &location);
  v24 = v26;
  v33 = v24;
  LOBYTE(v25) = v23;
  [v28 joinWithSpecificUser:v27 voucherData:v16 voucherSig:v17 ckksKeys:&__NSArray0__struct tlkShares:v29 preapprovedKeys:v31 flowID:v19 deviceSessionID:v21 canSendMetrics:v25 reply:v32];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v27 = [AAFAnalyticsEventSecurity alloc];
  v3 = [(OTJoinWithVoucherOperation *)self deps];
  v4 = [v3 activeAccount];
  v5 = [v4 altDSID];
  v6 = [(OTJoinWithVoucherOperation *)self deps];
  v7 = [v6 flowID];
  v8 = [(OTJoinWithVoucherOperation *)self deps];
  v9 = [v8 deviceSessionID];
  v10 = kSecurityRTCEventNameJoinWithVoucherOperation;
  v11 = [(OTJoinWithVoucherOperation *)self deps];
  LOBYTE(v26) = [v11 permittedToSendMetrics];
  v12 = [v27 initWithKeychainCircleMetrics:0 altDSID:v5 flowID:v7 deviceSessionID:v9 eventName:v10 testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v13 = [(OTJoinWithVoucherOperation *)self deps];
  v14 = [v13 stateHolder];
  v28 = 0;
  v15 = [v14 loadOrCreateAccountMetadata:&v28];
  v16 = v28;

  v17 = [v15 voucher];
  if (v17 && (v18 = v17, [v15 voucherSignature], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19) && !v16)
  {
    v20 = [v15 voucher];
    [(OTJoinWithVoucherOperation *)self setVoucherData:v20];

    v21 = [v15 voucherSignature];
    [(OTJoinWithVoucherOperation *)self setVoucherSig:v21];

    v22 = sub_100006274("octagon");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(OTJoinWithVoucherOperation *)self voucherData];
      *buf = 138412290;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "joining with a voucher: %@", buf, 0xCu);
    }

    v24 = [v15 getTLKSharesPairedWithVoucher];
    [(OTJoinWithVoucherOperation *)self proceedWithPendingTLKShares:v24 event:v12];
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
    v24 = [(CKKSResultOperation *)self error];
    [v12 sendMetricWithResult:0 error:v24];
  }
}

- (OTJoinWithVoucherOperation)initWithDependencies:(id)a3 intendedState:(id)a4 ckksConflictState:(id)a5 errorState:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = OTJoinWithVoucherOperation;
  v15 = [(CKKSGroupOperation *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_intendedState, a4);
    objc_storeStrong(&v16->_nextState, a6);
    objc_storeStrong(&v16->_ckksConflictState, a5);
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