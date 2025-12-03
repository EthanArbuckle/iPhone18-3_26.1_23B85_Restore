@interface OTUpdateTPHOperation
- (BOOL)isOurMachineIDAllowed;
- (OTUpdateTPHOperation)initWithDependencies:(id)dependencies deviceInfo:(id)info intendedState:(id)state peerUnknownState:(id)unknownState determineCDPState:(id)pState errorState:(id)errorState forceRefetch:(BOOL)refetch retryFlag:(id)self0;
- (void)groupStart;
- (void)sendMetric:(id)metric;
- (void)sendPeerDistrustWhileStillTDLAllowedMetric;
- (void)sendResetRecipientMetric;
@end

@implementation OTUpdateTPHOperation

- (void)groupStart
{
  objc_initWeak(&location, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100121578;
  v32[3] = &unk_1003452E8;
  objc_copyWeak(&v33, &location);
  v3 = [NSBlockOperation blockOperationWithBlock:v32];
  [(OTUpdateTPHOperation *)self setFinishedOp:v3];

  finishedOp = [(OTUpdateTPHOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  deps = [(OTUpdateTPHOperation *)self deps];
  stateHolder = [deps stateHolder];
  v31 = 0;
  v27 = [stateHolder loadOrCreateAccountMetadata:&v31];
  v26 = v31;

  if (!v27 || v26)
  {
    parsedSecureElementIdentity = sub_100006274("SecError");
    if (os_log_type_enabled(parsedSecureElementIdentity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, parsedSecureElementIdentity, OS_LOG_TYPE_DEFAULT, "octagon: Unable to load current metadata: %@", buf, 0xCu);
    }

    v24 = 0;
  }

  else
  {
    v7 = [TrustedPeersHelperIntendedTPPBSecureElementIdentity alloc];
    parsedSecureElementIdentity = [v27 parsedSecureElementIdentity];
    v24 = [(TrustedPeersHelperIntendedTPPBSecureElementIdentity *)v7 initWithSecureElementIdentity:parsedSecureElementIdentity];
  }

  if ([v27 hasAttemptedJoin])
  {
    v21 = [v27 attemptedJoin] == 2;
  }

  else
  {
    v21 = 0;
  }

  if ([(OTUpdateTPHOperation *)self forceRefetch])
  {
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Forcing a full refetch", buf, 2u);
    }
  }

  deps2 = [(OTUpdateTPHOperation *)self deps];
  cuttlefishXPCWrapper = [deps2 cuttlefishXPCWrapper];
  deps3 = [(OTUpdateTPHOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  forceRefetch = [(OTUpdateTPHOperation *)self forceRefetch];
  deps4 = [(OTUpdateTPHOperation *)self deps];
  deviceInformationAdapter = [deps4 deviceInformationAdapter];
  deviceName = [deviceInformationAdapter deviceName];
  deps5 = [(OTUpdateTPHOperation *)self deps];
  deviceInformationAdapter2 = [deps5 deviceInformationAdapter];
  serialNumber = [deviceInformationAdapter2 serialNumber];
  deps6 = [(OTUpdateTPHOperation *)self deps];
  deviceInformationAdapter3 = [deps6 deviceInformationAdapter];
  osVersion = [deviceInformationAdapter3 osVersion];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100121890;
  v28[3] = &unk_1003377E8;
  objc_copyWeak(&v29, &location);
  v30 = v21;
  [cuttlefishXPCWrapper updateWithSpecificUser:activeAccount forceRefetch:forceRefetch deviceName:deviceName serialNumber:serialNumber osVersion:osVersion policyVersion:0 policySecrets:0 syncUserControllableViews:0 secureElementIdentity:v24 walrusSetting:0 webAccess:0 reply:v28];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (BOOL)isOurMachineIDAllowed
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  deps = [(OTUpdateTPHOperation *)self deps];
  authKitAdapter = [deps authKitAdapter];
  deps2 = [(OTUpdateTPHOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  altDSID = [activeAccount altDSID];
  deps3 = [(OTUpdateTPHOperation *)self deps];
  flowID = [deps3 flowID];
  deps4 = [(OTUpdateTPHOperation *)self deps];
  deviceSessionID = [deps4 deviceSessionID];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100122424;
  v13[3] = &unk_1003377C0;
  v13[4] = self;
  v13[5] = &v14;
  [authKitAdapter fetchCurrentDeviceListByAltDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID reply:v13];

  LOBYTE(deps) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return deps;
}

- (void)sendPeerDistrustWhileStillTDLAllowedMetric
{
  v3 = [NSError errorWithDomain:kSecurityRTCErrorDomain code:10 description:@"Peer fell out of trust due to another peer distrusting ego but we're still in the TDL allowed list"];
  [(OTUpdateTPHOperation *)self sendMetric:v3];
}

- (void)sendResetRecipientMetric
{
  v3 = [NSError errorWithDomain:kSecurityRTCErrorDomain code:9 description:@"Peer fell out of trust due to an Octagon Reset"];
  [(OTUpdateTPHOperation *)self sendMetric:v3];
}

- (void)sendMetric:(id)metric
{
  metricCopy = metric;
  v4 = [AAFAnalyticsEventSecurity alloc];
  deps = [(OTUpdateTPHOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];
  deps2 = [(OTUpdateTPHOperation *)self deps];
  flowID = [deps2 flowID];
  deps3 = [(OTUpdateTPHOperation *)self deps];
  deviceSessionID = [deps3 deviceSessionID];
  v12 = kSecurityRTCEventNameOctagonTrustLost;
  deps4 = [(OTUpdateTPHOperation *)self deps];
  permittedToSendMetrics = [deps4 permittedToSendMetrics];
  LOBYTE(v15) = 1;
  v17 = [v4 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v12 testsAreEnabled:permittedToSendMetrics canSendMetrics:v15 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  [v17 sendMetricWithResult:1 error:metricCopy];
}

- (OTUpdateTPHOperation)initWithDependencies:(id)dependencies deviceInfo:(id)info intendedState:(id)state peerUnknownState:(id)unknownState determineCDPState:(id)pState errorState:(id)errorState forceRefetch:(BOOL)refetch retryFlag:(id)self0
{
  dependenciesCopy = dependencies;
  infoCopy = info;
  stateCopy = state;
  unknownStateCopy = unknownState;
  pStateCopy = pState;
  errorStateCopy = errorState;
  flagCopy = flag;
  v27.receiver = self;
  v27.super_class = OTUpdateTPHOperation;
  v19 = [(CKKSGroupOperation *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 150), dependencies);
    objc_storeStrong((v20 + 174), info);
    objc_storeStrong((v20 + 142), state);
    objc_storeStrong((v20 + 134), errorState);
    objc_storeStrong((v20 + 158), unknownState);
    objc_storeStrong((v20 + 166), pState);
    v20[128] = refetch;
    objc_storeStrong((v20 + 190), flag);
  }

  return v20;
}

@end