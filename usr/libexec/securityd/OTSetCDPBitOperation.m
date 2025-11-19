@interface OTSetCDPBitOperation
- (OTSetCDPBitOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)groupStart;
@end

@implementation OTSetCDPBitOperation

- (void)groupStart
{
  v32[0] = kSecurityRTCFieldAccountIsW;
  v3 = [(OTSetCDPBitOperation *)self deps];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 accountIsW]);
  v33[0] = v4;
  v32[1] = kSecurityRTCFieldAccountIsG;
  v5 = [(OTSetCDPBitOperation *)self deps];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 accountIsG]);
  v33[1] = v6;
  v28 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  v27 = [AAFAnalyticsEventSecurity alloc];
  v7 = [(OTSetCDPBitOperation *)self deps];
  v8 = [v7 activeAccount];
  v9 = [v8 altDSID];
  v10 = [(OTSetCDPBitOperation *)self deps];
  v11 = [v10 flowID];
  v12 = [(OTSetCDPBitOperation *)self deps];
  v13 = [v12 deviceSessionID];
  v14 = kSecurityRTCEventNameOTSetCDPBitOperation;
  v15 = [(OTSetCDPBitOperation *)self deps];
  LOBYTE(v26) = [v15 permittedToSendMetrics];
  v16 = [v27 initWithKeychainCircleMetrics:v28 altDSID:v9 flowID:v11 deviceSessionID:v13 eventName:v14 testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v17 = [(OTSetCDPBitOperation *)self deps];
  v18 = [v17 stateHolder];
  v29 = 0;
  [v18 persistAccountChanges:&stru_100337050 error:&v29];
  v19 = v29;

  v20 = sub_100006274("octagon-cdp-status");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      *buf = 138412290;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unable to set CDP bit: %@", buf, 0xCu);
    }

    v22 = v16;
    v23 = 0;
    v24 = v19;
  }

  else
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successfully set CDP bit", buf, 2u);
    }

    v25 = [(OTSetCDPBitOperation *)self intendedState];
    [(OTSetCDPBitOperation *)self setNextState:v25];

    v22 = v16;
    v23 = 1;
    v24 = 0;
  }

  [v22 sendMetricWithResult:v23 error:v24];
}

- (OTSetCDPBitOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OTSetCDPBitOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, a3);
    objc_storeStrong(&v13->_intendedState, a4);
    objc_storeStrong(&v13->_nextState, a5);
  }

  return v13;
}

@end