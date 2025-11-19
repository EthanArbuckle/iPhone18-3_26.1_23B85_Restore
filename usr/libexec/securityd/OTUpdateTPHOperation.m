@interface OTUpdateTPHOperation
- (BOOL)isOurMachineIDAllowed;
- (OTUpdateTPHOperation)initWithDependencies:(id)a3 deviceInfo:(id)a4 intendedState:(id)a5 peerUnknownState:(id)a6 determineCDPState:(id)a7 errorState:(id)a8 forceRefetch:(BOOL)a9 retryFlag:(id)a10;
- (void)groupStart;
- (void)sendMetric:(id)a3;
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

  v4 = [(OTUpdateTPHOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  v5 = [(OTUpdateTPHOperation *)self deps];
  v6 = [v5 stateHolder];
  v31 = 0;
  v27 = [v6 loadOrCreateAccountMetadata:&v31];
  v26 = v31;

  if (!v27 || v26)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon: Unable to load current metadata: %@", buf, 0xCu);
    }

    v24 = 0;
  }

  else
  {
    v7 = [TrustedPeersHelperIntendedTPPBSecureElementIdentity alloc];
    v8 = [v27 parsedSecureElementIdentity];
    v24 = [(TrustedPeersHelperIntendedTPPBSecureElementIdentity *)v7 initWithSecureElementIdentity:v8];
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

  v10 = [(OTUpdateTPHOperation *)self deps];
  v23 = [v10 cuttlefishXPCWrapper];
  v25 = [(OTUpdateTPHOperation *)self deps];
  v22 = [v25 activeAccount];
  v20 = [(OTUpdateTPHOperation *)self forceRefetch];
  v11 = [(OTUpdateTPHOperation *)self deps];
  v12 = [v11 deviceInformationAdapter];
  v13 = [v12 deviceName];
  v14 = [(OTUpdateTPHOperation *)self deps];
  v15 = [v14 deviceInformationAdapter];
  v16 = [v15 serialNumber];
  v17 = [(OTUpdateTPHOperation *)self deps];
  v18 = [v17 deviceInformationAdapter];
  v19 = [v18 osVersion];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100121890;
  v28[3] = &unk_1003377E8;
  objc_copyWeak(&v29, &location);
  v30 = v21;
  [v23 updateWithSpecificUser:v22 forceRefetch:v20 deviceName:v13 serialNumber:v16 osVersion:v19 policyVersion:0 policySecrets:0 syncUserControllableViews:0 secureElementIdentity:v24 walrusSetting:0 webAccess:0 reply:v28];

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
  v3 = [(OTUpdateTPHOperation *)self deps];
  v4 = [v3 authKitAdapter];
  v5 = [(OTUpdateTPHOperation *)self deps];
  v6 = [v5 activeAccount];
  v7 = [v6 altDSID];
  v8 = [(OTUpdateTPHOperation *)self deps];
  v9 = [v8 flowID];
  v10 = [(OTUpdateTPHOperation *)self deps];
  v11 = [v10 deviceSessionID];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100122424;
  v13[3] = &unk_1003377C0;
  v13[4] = self;
  v13[5] = &v14;
  [v4 fetchCurrentDeviceListByAltDSID:v7 flowID:v9 deviceSessionID:v11 reply:v13];

  LOBYTE(v3) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v3;
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

- (void)sendMetric:(id)a3
{
  v16 = a3;
  v4 = [AAFAnalyticsEventSecurity alloc];
  v5 = [(OTUpdateTPHOperation *)self deps];
  v6 = [v5 activeAccount];
  v7 = [v6 altDSID];
  v8 = [(OTUpdateTPHOperation *)self deps];
  v9 = [v8 flowID];
  v10 = [(OTUpdateTPHOperation *)self deps];
  v11 = [v10 deviceSessionID];
  v12 = kSecurityRTCEventNameOctagonTrustLost;
  v13 = [(OTUpdateTPHOperation *)self deps];
  v14 = [v13 permittedToSendMetrics];
  LOBYTE(v15) = 1;
  v17 = [v4 initWithKeychainCircleMetrics:0 altDSID:v7 flowID:v9 deviceSessionID:v11 eventName:v12 testsAreEnabled:v14 canSendMetrics:v15 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  [v17 sendMetricWithResult:1 error:v16];
}

- (OTUpdateTPHOperation)initWithDependencies:(id)a3 deviceInfo:(id)a4 intendedState:(id)a5 peerUnknownState:(id)a6 determineCDPState:(id)a7 errorState:(id)a8 forceRefetch:(BOOL)a9 retryFlag:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v17 = a8;
  v18 = a10;
  v27.receiver = self;
  v27.super_class = OTUpdateTPHOperation;
  v19 = [(CKKSGroupOperation *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 150), a3);
    objc_storeStrong((v20 + 174), a4);
    objc_storeStrong((v20 + 142), a5);
    objc_storeStrong((v20 + 134), a8);
    objc_storeStrong((v20 + 158), a6);
    objc_storeStrong((v20 + 166), a7);
    v20[128] = a9;
    objc_storeStrong((v20 + 190), a10);
  }

  return v20;
}

@end