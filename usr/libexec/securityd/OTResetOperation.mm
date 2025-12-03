@interface OTResetOperation
- (id)init:(id)init contextID:(id)d reason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s accountType:(int64_t)type intendedState:(id)self0 dependencies:(id)self1 errorState:(id)self2 cuttlefishXPCWrapper:(id)self3;
- (void)groupStart;
@end

@implementation OTResetOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon-authkit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to reset octagon", buf, 2u);
  }

  v69[0] = kSecurityRTCFieldAccountIsW;
  deps = [(OTResetOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps accountIsW]);
  v70[0] = v5;
  v69[1] = kSecurityRTCFieldAccountIsG;
  deps2 = [(OTResetOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps2 accountIsG]);
  v70[1] = v7;
  v58 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  deps3 = [(OTResetOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  altDSID = [activeAccount altDSID];
  deps4 = [(OTResetOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTResetOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTResetOperation *)self deps];
  LOBYTE(v40) = [deps6 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v58 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameOTResetOperation testsAreEnabled:0 canSendMetrics:v40 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  objc_initWeak(&location, self);
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1002033B8;
  v63[3] = &unk_100344D38;
  objc_copyWeak(&v65, &location);
  v56 = v17;
  v64 = v56;
  v18 = [NSBlockOperation blockOperationWithBlock:v63];
  [(OTResetOperation *)self setFinishedOp:v18];

  finishedOp = [(OTResetOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  deps7 = [(OTResetOperation *)self deps];
  activeAccount2 = [deps7 activeAccount];
  altDSID2 = [activeAccount2 altDSID];

  if (altDSID2)
  {
    deps8 = [(OTResetOperation *)self deps];
    authKitAdapter = [deps8 authKitAdapter];
    v62 = 0;
    v49 = [authKitAdapter accountIsDemoAccountByAltDSID:altDSID2 error:&v62];
    v57 = v62;

    if (v57)
    {
      v24 = sub_100006274("SecError");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v57;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "octagon-authkit: failed to fetch demo account flag: %@", buf, 0xCu);
      }
    }

    IsInternalRelease = SecIsInternalRelease();
    cuttlefishXPCWrapper = [(OTResetOperation *)self cuttlefishXPCWrapper];
    deps9 = [(OTResetOperation *)self deps];
    activeAccount3 = [deps9 activeAccount];
    resetReason = [(OTResetOperation *)self resetReason];
    idmsTargetContext = [(OTResetOperation *)self idmsTargetContext];
    idmsCuttlefishPassword = [(OTResetOperation *)self idmsCuttlefishPassword];
    notifyIdMS = [(OTResetOperation *)self notifyIdMS];
    deps10 = [(OTResetOperation *)self deps];
    accountIsG = [deps10 accountIsG];
    deps11 = [(OTResetOperation *)self deps];
    accountIsW = [deps11 accountIsW];
    accountType = [(OTResetOperation *)self accountType];
    deps12 = [(OTResetOperation *)self deps];
    activeAccount4 = [deps12 activeAccount];
    altDSID3 = [activeAccount4 altDSID];
    deps13 = [(OTResetOperation *)self deps];
    flowID2 = [deps13 flowID];
    deps14 = [(OTResetOperation *)self deps];
    deviceSessionID2 = [deps14 deviceSessionID];
    deps15 = [(OTResetOperation *)self deps];
    permittedToSendMetrics = [deps15 permittedToSendMetrics];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1002034F4;
    v60[3] = &unk_100344DA0;
    objc_copyWeak(&v61, &location);
    LOBYTE(v42) = permittedToSendMetrics;
    BYTE2(v41) = accountIsW;
    BYTE1(v41) = accountIsG;
    LOBYTE(v41) = v49;
    [cuttlefishXPCWrapper resetWithSpecificUser:activeAccount3 resetReason:resetReason idmsTargetContext:idmsTargetContext idmsCuttlefishPassword:idmsCuttlefishPassword notifyIdMS:notifyIdMS internalAccount:IsInternalRelease demoAccount:v41 isGuitarfish:accountType accountIsW:altDSID3 accountType:flowID2 altDSID:deviceSessionID2 flowID:v42 deviceSessionID:v60 canSendMetrics:? reply:?];

    objc_destroyWeak(&v61);
    finishedOp2 = v57;
  }

  else
  {
    v36 = sub_100006274("authkit");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      deps16 = [(OTResetOperation *)self deps];
      activeAccount5 = [deps16 activeAccount];
      *buf = 138412290;
      v68 = activeAccount5;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
    }

    v39 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v39];

    finishedOp2 = [(OTResetOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];
  }

  objc_destroyWeak(&v65);
  objc_destroyWeak(&location);
}

- (id)init:(id)init contextID:(id)d reason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s accountType:(int64_t)type intendedState:(id)self0 dependencies:(id)self1 errorState:(id)self2 cuttlefishXPCWrapper:(id)self3
{
  initCopy = init;
  dCopy = d;
  contextCopy = context;
  passwordCopy = password;
  stateCopy = state;
  dependenciesCopy = dependencies;
  errorStateCopy = errorState;
  wrapperCopy = wrapper;
  v31.receiver = self;
  v31.super_class = OTResetOperation;
  v19 = [(CKKSGroupOperation *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 134), state);
    objc_storeStrong((v20 + 142), errorState);
    objc_storeStrong((v20 + 182), init);
    objc_storeStrong((v20 + 190), d);
    objc_storeStrong((v20 + 198), wrapper);
    *(v20 + 150) = reason;
    objc_storeStrong((v20 + 158), context);
    objc_storeStrong((v20 + 166), password);
    v20[128] = s;
    objc_storeStrong((v20 + 206), dependencies);
    *(v20 + 174) = type;
  }

  return v20;
}

@end