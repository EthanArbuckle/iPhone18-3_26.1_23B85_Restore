@interface OTStashAccountSettingsOperation
+ (void)performWithAccountWide:(BOOL)wide forceFetch:(BOOL)fetch cuttlefishXPCWrapper:(id)wrapper activeAccount:(id)account containerName:(id)name contextID:(id)d flowID:(id)iD deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)self2;
- (OTStashAccountSettingsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState accountSettings:(id)settings accountWide:(BOOL)wide forceFetch:(BOOL)fetch;
- (void)groupStart;
@end

@implementation OTStashAccountSettingsOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stashing account settings", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTStashAccountSettingsOperation *)self setFinishedOp:v4];

  finishedOp = [(OTStashAccountSettingsOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  objc_initWeak(buf, self);
  accountWide = [(OTStashAccountSettingsOperation *)self accountWide];
  forceFetch = [(OTStashAccountSettingsOperation *)self forceFetch];
  deps = [(OTStashAccountSettingsOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTStashAccountSettingsOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  deps3 = [(OTStashAccountSettingsOperation *)self deps];
  containerName = [deps3 containerName];
  deps4 = [(OTStashAccountSettingsOperation *)self deps];
  contextID = [deps4 contextID];
  deps5 = [(OTStashAccountSettingsOperation *)self deps];
  flowID = [deps5 flowID];
  deps6 = [(OTStashAccountSettingsOperation *)self deps];
  deviceSessionID = [deps6 deviceSessionID];
  deps7 = [(OTStashAccountSettingsOperation *)self deps];
  permittedToSendMetrics = [deps7 permittedToSendMetrics];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000FDAE8;
  v23[3] = &unk_100337008;
  objc_copyWeak(&v24, buf);
  LOBYTE(v15) = permittedToSendMetrics;
  [OTStashAccountSettingsOperation performWithAccountWide:accountWide forceFetch:forceFetch cuttlefishXPCWrapper:cuttlefishXPCWrapper activeAccount:activeAccount containerName:containerName contextID:contextID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v15 reply:v23];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (OTStashAccountSettingsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState accountSettings:(id)settings accountWide:(BOOL)wide forceFetch:(BOOL)fetch
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  settingsCopy = settings;
  v22.receiver = self;
  v22.super_class = OTStashAccountSettingsOperation;
  v18 = [(CKKSGroupOperation *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong((v18 + 150), dependencies);
    objc_storeStrong((v19 + 134), state);
    objc_storeStrong((v19 + 142), errorState);
    objc_storeStrong((v19 + 166), settings);
    v19[128] = wide;
    v19[129] = fetch;
  }

  return v19;
}

+ (void)performWithAccountWide:(BOOL)wide forceFetch:(BOOL)fetch cuttlefishXPCWrapper:(id)wrapper activeAccount:(id)account containerName:(id)name contextID:(id)d flowID:(id)iD deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)self2
{
  fetchCopy = fetch;
  wideCopy = wide;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  replyCopy = reply;
  if (wideCopy)
  {
    accountCopy = account;
    wrapperCopy = wrapper;
    v23 = [AAFAnalyticsEventSecurity alloc];
    altDSID = [accountCopy altDSID];
    LOBYTE(v30) = metrics;
    v25 = [v23 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:iDCopy deviceSessionID:sessionIDCopy eventName:kSecurityRTCEventNameFetchAccountWideSettings testsAreEnabled:0 canSendMetrics:v30 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    altDSID2 = [accountCopy altDSID];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000FE004;
    v36[3] = &unk_100336F98;
    v37 = nameCopy;
    v38 = dCopy;
    v39 = v25;
    v40 = replyCopy;
    v27 = v25;
    [wrapperCopy fetchAccountSettingsWithSpecificUser:accountCopy forceFetch:fetchCopy altDSID:altDSID2 flowID:iDCopy deviceSessionID:sessionIDCopy canSendMetrics:metrics reply:v36];
  }

  else
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000FE2E0;
    v32[3] = &unk_100336FC0;
    v33 = nameCopy;
    v34 = dCopy;
    v35 = replyCopy;
    accountCopy2 = account;
    wrapperCopy2 = wrapper;
    [wrapperCopy2 fetchTrustStateWithSpecificUser:accountCopy2 reply:v32];

    v27 = v33;
  }
}

@end