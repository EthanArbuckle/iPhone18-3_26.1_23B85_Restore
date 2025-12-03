@interface OTSetCDPBitOperation
- (OTSetCDPBitOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation OTSetCDPBitOperation

- (void)groupStart
{
  v32[0] = kSecurityRTCFieldAccountIsW;
  deps = [(OTSetCDPBitOperation *)self deps];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps accountIsW]);
  v33[0] = v4;
  v32[1] = kSecurityRTCFieldAccountIsG;
  deps2 = [(OTSetCDPBitOperation *)self deps];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps2 accountIsG]);
  v33[1] = v6;
  v28 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  v27 = [AAFAnalyticsEventSecurity alloc];
  deps3 = [(OTSetCDPBitOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  altDSID = [activeAccount altDSID];
  deps4 = [(OTSetCDPBitOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTSetCDPBitOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  v14 = kSecurityRTCEventNameOTSetCDPBitOperation;
  deps6 = [(OTSetCDPBitOperation *)self deps];
  LOBYTE(v26) = [deps6 permittedToSendMetrics];
  v16 = [v27 initWithKeychainCircleMetrics:v28 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v14 testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  deps7 = [(OTSetCDPBitOperation *)self deps];
  stateHolder = [deps7 stateHolder];
  v29 = 0;
  [stateHolder persistAccountChanges:&stru_100337050 error:&v29];
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

    intendedState = [(OTSetCDPBitOperation *)self intendedState];
    [(OTSetCDPBitOperation *)self setNextState:intendedState];

    v22 = v16;
    v23 = 1;
    v24 = 0;
  }

  [v22 sendMetricWithResult:v23 error:v24];
}

- (OTSetCDPBitOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTSetCDPBitOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, dependencies);
    objc_storeStrong(&v13->_intendedState, state);
    objc_storeStrong(&v13->_nextState, errorState);
  }

  return v13;
}

@end