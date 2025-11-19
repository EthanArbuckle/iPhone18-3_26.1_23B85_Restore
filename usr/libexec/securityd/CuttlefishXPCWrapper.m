@interface CuttlefishXPCWrapper
+ (BOOL)retryable:(id)a3;
- (CuttlefishXPCWrapper)initWithCuttlefishXPCConnection:(id)a3;
- (void)attemptPreapprovedJoinWithSpecificUser:(id)a3 ckksKeys:(id)a4 tlkShares:(id)a5 preapprovedKeys:(id)a6 altDSID:(id)a7 flowID:(id)a8 deviceSessionID:(id)a9 canSendMetrics:(BOOL)a10 reply:(id)a11;
- (void)departByDistrustingSelfWithSpecificUser:(id)a3 reply:(id)a4;
- (void)distrustPeerIDsWithSpecificUser:(id)a3 peerIDs:(id)a4 reply:(id)a5;
- (void)dropPeerIDsWithSpecificUser:(id)a3 peerIDs:(id)a4 reply:(id)a5;
- (void)dumpWithSpecificUser:(id)a3 fileDescriptor:(id)a4 reply:(id)a5;
- (void)establishWithSpecificUser:(id)a3 ckksKeys:(id)a4 tlkShares:(id)a5 preapprovedKeys:(id)a6 altDSID:(id)a7 flowID:(id)a8 deviceSessionID:(id)a9 canSendMetrics:(BOOL)a10 reply:(id)a11;
- (void)fetchAllowedMachineIDsWithSpecificUser:(id)a3 reply:(id)a4;
- (void)fetchCurrentItemWithSpecificUser:(id)a3 items:(id)a4 reply:(id)a5;
- (void)fetchEgoEpochWithSpecificUser:(id)a3 reply:(id)a4;
- (void)fetchEscrowContentsWithSpecificUser:(id)a3 reply:(id)a4;
- (void)fetchPCSIdentityByPublicKeyWithSpecificUser:(id)a3 pcsservices:(id)a4 reply:(id)a5;
- (void)fetchPolicyDocumentsWithSpecificUser:(id)a3 versions:(id)a4 reply:(id)a5;
- (void)fetchTrustStateWithSpecificUser:(id)a3 reply:(id)a4;
- (void)fetchTrustedFullPeerCountWithSpecificUser:(id)a3 reply:(id)a4;
- (void)fetchTrustedPeerCountWithSpecificUser:(id)a3 reply:(id)a4;
- (void)fetchViableBottlesWithSpecificUser:(id)a3 source:(int64_t)a4 flowID:(id)a5 deviceSessionID:(id)a6 reply:(id)a7;
- (void)fetchViableEscrowRecordsWithSpecificUser:(id)a3 source:(int64_t)a4 reply:(id)a5;
- (void)findCustodianRecoveryKeyWithSpecificUser:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)getSupportAppInfoWithSpecificUser:(id)a3 reply:(id)a4;
- (void)handleEvictedMachineIDsWithSpecificUser:(id)a3 machineIDs:(id)a4 reply:(id)a5;
- (void)handleRemovedMachineIDsDueToUnknownReasonsWithSpecificUser:(id)a3 machineIDs:(id)a4 reply:(id)a5;
- (void)honorIDMSListChangesForSpecificUser:(id)a3 reply:(id)a4;
- (void)isRecoveryKeySet:(id)a3 reply:(id)a4;
- (void)joinWithSpecificUser:(id)a3 voucherData:(id)a4 voucherSig:(id)a5 ckksKeys:(id)a6 tlkShares:(id)a7 preapprovedKeys:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)a12;
- (void)localResetWithSpecificUser:(id)a3 reply:(id)a4;
- (void)markTrustedDeviceListFetchFailed:(id)a3 reply:(id)a4;
- (void)octagonContainsDistrustedRecoveryKeysWithSpecificUser:(id)a3 reply:(id)a4;
- (void)octagonPeerIDGivenBottleIDWithSpecificUser:(id)a3 bottleID:(id)a4 reply:(id)a5;
- (void)performATOPRVActionsWithSpecificUser:(id)a3 reply:(id)a4;
- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)a3 isGuitarfish:(BOOL)a4 accountIsW:(BOOL)a5 internalAccount:(BOOL)a6 demoAccount:(BOOL)a7 altDSID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)a12;
- (void)pingWithReply:(id)a3;
- (void)preflightPreapprovedJoinWithSpecificUser:(id)a3 preapprovedKeys:(id)a4 reply:(id)a5;
- (void)preflightRecoverOctagonUsingRecoveryKey:(id)a3 recoveryKey:(id)a4 salt:(id)a5 reply:(id)a6;
- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)a3 crk:(id)a4 reply:(id)a5;
- (void)preflightVouchWithRecoveryKeyWithSpecificUser:(id)a3 recoveryKey:(id)a4 salt:(id)a5 reply:(id)a6;
- (void)prepareInheritancePeerWithSpecificUser:(id)a3 epoch:(unint64_t)a4 machineID:(id)a5 bottleSalt:(id)a6 bottleID:(id)a7 modelID:(id)a8 deviceName:(id)a9 serialNumber:(id)a10 osVersion:(id)a11 policyVersion:(id)a12 policySecrets:(id)a13 syncUserControllableViews:(int)a14 secureElementIdentity:(id)a15 signingPrivKeyPersistentRef:(id)a16 encPrivKeyPersistentRef:(id)a17 crk:(id)a18 reply:(id)a19;
- (void)prepareWithSpecificUser:(id)a3 epoch:(unint64_t)a4 machineID:(id)a5 bottleSalt:(id)a6 bottleID:(id)a7 modelID:(id)a8 deviceName:(id)a9 serialNumber:(id)a10 osVersion:(id)a11 policyVersion:(id)a12 policySecrets:(id)a13 syncUserControllableViews:(int)a14 secureElementIdentity:(id)a15 setting:(id)a16 signingPrivKeyPersistentRef:(id)a17 encPrivKeyPersistentRef:(id)a18 reply:(id)a19;
- (void)recoverTLKSharesForInheritorWithSpecificUser:(id)a3 crk:(id)a4 tlkShares:(id)a5 reply:(id)a6;
- (void)removeCustodianRecoveryKeyWithSpecificUser:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)removeEscrowCacheWithSpecificUser:(id)a3 reply:(id)a4;
- (void)removeRecoveryKey:(id)a3 reply:(id)a4;
- (void)resetWithSpecificUser:(id)a3 resetReason:(int64_t)a4 idmsTargetContext:(id)a5 idmsCuttlefishPassword:(id)a6 notifyIdMS:(BOOL)a7 internalAccount:(BOOL)a8 demoAccount:(BOOL)a9 isGuitarfish:(BOOL)a10 accountIsW:(BOOL)a11 accountType:(int64_t)a12 altDSID:(id)a13 flowID:(id)a14 deviceSessionID:(id)a15 canSendMetrics:(BOOL)a16 reply:(id)a17;
- (void)setAllowedMachineIDsWithSpecificUser:(id)a3 allowedMachineIDs:(id)a4 userInitiatedRemovals:(id)a5 evictedRemovals:(id)a6 unknownReasonRemovals:(id)a7 honorIDMSListChanges:(BOOL)a8 version:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 canSendMetrics:(BOOL)a12 altDSID:(id)a13 trustedDeviceHash:(id)a14 deletedDeviceHash:(id)a15 trustedDevicesUpdateTimestamp:(id)a16 reply:(id)a17;
- (void)setPreapprovedKeysWithSpecificUser:(id)a3 preapprovedKeys:(id)a4 reply:(id)a5;
- (void)setRecoveryKeyWithSpecificUser:(id)a3 recoveryKey:(id)a4 salt:(id)a5 ckksKeys:(id)a6 reply:(id)a7;
- (void)testSemaphoreWithSpecificUser:(id)a3 arg:(id)a4 reply:(id)a5;
- (void)trustStatusWithSpecificUser:(id)a3 reply:(id)a4;
- (void)trustedDeviceNamesByPeerIDWithSpecificUser:(id)a3 reply:(id)a4;
- (void)updateTLKsWithSpecificUser:(id)a3 ckksKeys:(id)a4 tlkShares:(id)a5 reply:(id)a6;
- (void)updateWithSpecificUser:(id)a3 forceRefetch:(BOOL)a4 deviceName:(id)a5 serialNumber:(id)a6 osVersion:(id)a7 policyVersion:(id)a8 policySecrets:(id)a9 syncUserControllableViews:(id)a10 secureElementIdentity:(id)a11 walrusSetting:(id)a12 webAccess:(id)a13 reply:(id)a14;
- (void)vouchWithBottleWithSpecificUser:(id)a3 bottleID:(id)a4 entropy:(id)a5 bottleSalt:(id)a6 tlkShares:(id)a7 altDSID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)a12;
- (void)vouchWithCustodianRecoveryKeyWithSpecificUser:(id)a3 crk:(id)a4 tlkShares:(id)a5 reply:(id)a6;
- (void)vouchWithRecoveryKeyWithSpecificUser:(id)a3 recoveryKey:(id)a4 salt:(id)a5 tlkShares:(id)a6 reply:(id)a7;
- (void)vouchWithRerollWithSpecificUser:(id)a3 oldPeerID:(id)a4 tlkShares:(id)a5 reply:(id)a6;
- (void)vouchWithSpecificUser:(id)a3 peerID:(id)a4 permanentInfo:(id)a5 permanentInfoSig:(id)a6 stableInfo:(id)a7 stableInfoSig:(id)a8 ckksKeys:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 canSendMetrics:(BOOL)a12 reply:(id)a13;
@end

@implementation CuttlefishXPCWrapper

- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)a3 isGuitarfish:(BOOL)a4 accountIsW:(BOOL)a5 internalAccount:(BOOL)a6 demoAccount:(BOOL)a7 altDSID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)a12
{
  v25 = a6;
  v26 = a7;
  v23 = a4;
  v24 = a5;
  v27 = a3;
  v14 = a8;
  v15 = a9;
  v16 = a10;
  v17 = a12;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = -86;
  v18 = &v32;
  do
  {
    *(v18 + 24) = 0;
    v19 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10008A4E4;
    v28[3] = &unk_100335FB0;
    v30 = v36;
    v28[4] = self;
    v31 = &v32;
    v20 = v17;
    v29 = v20;
    v21 = [v19 synchronousRemoteObjectProxyWithErrorHandler:v28];
    LOBYTE(v22) = a11;
    [v21 performCKServerUnreadableDataRemovalWithSpecificUser:v27 isGuitarfish:v23 accountIsW:v24 internalAccount:v25 demoAccount:v26 altDSID:v14 flowID:v15 deviceSessionID:v16 canSendMetrics:v22 reply:v20];

    v18 = v33;
  }

  while ((v33[3] & 1) != 0);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v36, 8);
}

- (void)fetchPCSIdentityByPublicKeyWithSpecificUser:(id)a3 pcsservices:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008A840;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 fetchPCSIdentityByPublicKeyWithSpecificUser:v8 pcsservices:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)fetchCurrentItemWithSpecificUser:(id)a3 items:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008ABA4;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 fetchCurrentItemWithSpecificUser:v8 items:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)octagonContainsDistrustedRecoveryKeysWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008AEEC;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 octagonContainsDistrustedRecoveryKeysWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchTrustedFullPeerCountWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008B230;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchTrustedFullPeerCountWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchTrustedPeerCountWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008B574;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchTrustedPeerCountWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)preflightRecoverOctagonUsingRecoveryKey:(id)a3 recoveryKey:(id)a4 salt:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  v14 = &v22;
  do
  {
    *(v14 + 24) = 0;
    v15 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008B8EC;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = v13;
    v19 = v16;
    v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 preflightRecoverOctagonUsingRecoveryKey:v10 recoveryKey:v11 salt:v12 reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)testSemaphoreWithSpecificUser:(id)a3 arg:(id)a4 reply:(id)a5
{
  v5 = a5;
  v6 = sub_100006274("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon: testing TPH semaphore handling unsupported from within securityd", v8, 2u);
  }

  v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 userInfo:0];
  v5[2](v5, v7);
}

- (void)performATOPRVActionsWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008BCEC;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 performATOPRVActionsWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)removeRecoveryKey:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008C02C;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 removeRecoveryKey:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)isRecoveryKeySet:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008C370;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 isRecoveryKeySet:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)recoverTLKSharesForInheritorWithSpecificUser:(id)a3 crk:(id)a4 tlkShares:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  v14 = &v22;
  do
  {
    *(v14 + 24) = 0;
    v15 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008C6E8;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = v13;
    v19 = v16;
    v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 recoverTLKSharesForInheritorWithSpecificUser:v10 crk:v11 tlkShares:v12 reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)prepareInheritancePeerWithSpecificUser:(id)a3 epoch:(unint64_t)a4 machineID:(id)a5 bottleSalt:(id)a6 bottleID:(id)a7 modelID:(id)a8 deviceName:(id)a9 serialNumber:(id)a10 osVersion:(id)a11 policyVersion:(id)a12 policySecrets:(id)a13 syncUserControllableViews:(int)a14 secureElementIdentity:(id)a15 signingPrivKeyPersistentRef:(id)a16 encPrivKeyPersistentRef:(id)a17 crk:(id)a18 reply:(id)a19
{
  v44 = a3;
  v43 = a5;
  v42 = a6;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v37 = a11;
  v36 = a12;
  v35 = a13;
  v24 = a15;
  v25 = a16;
  v26 = a17;
  v27 = a18;
  v28 = a19;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = -86;
  v29 = &v49;
  do
  {
    *(v29 + 24) = 0;
    v30 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10008CB90;
    v45[3] = &unk_100335FB0;
    v47 = v53;
    v45[4] = self;
    v48 = &v49;
    v31 = v28;
    v46 = v31;
    v32 = [v30 synchronousRemoteObjectProxyWithErrorHandler:v45];
    LODWORD(v33) = a14;
    [v32 prepareInheritancePeerWithSpecificUser:v44 epoch:a4 machineID:v43 bottleSalt:v42 bottleID:v41 modelID:v40 deviceName:v39 serialNumber:v38 osVersion:v37 policyVersion:v36 policySecrets:v35 syncUserControllableViews:v33 secureElementIdentity:v24 signingPrivKeyPersistentRef:v25 encPrivKeyPersistentRef:v26 crk:v27 reply:v31];

    v29 = v50;
  }

  while ((v50[3] & 1) != 0);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v53, 8);
}

- (void)removeEscrowCacheWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008D9C8;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 removeEscrowCacheWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchViableEscrowRecordsWithSpecificUser:(id)a3 source:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = -86;
  v10 = &v18;
  do
  {
    *(v10 + 24) = 0;
    v11 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008DD18;
    v14[3] = &unk_100335FB0;
    v16 = v22;
    v14[4] = self;
    v17 = &v18;
    v12 = v9;
    v15 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v13 fetchViableEscrowRecordsWithSpecificUser:v8 source:a4 reply:v12];

    v10 = v19;
  }

  while ((v19[3] & 1) != 0);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v22, 8);
}

- (void)getSupportAppInfoWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008E05C;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 getSupportAppInfoWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)findCustodianRecoveryKeyWithSpecificUser:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008EA88;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 findCustodianRecoveryKeyWithSpecificUser:v8 uuid:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)removeCustodianRecoveryKeyWithSpecificUser:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008EDE8;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 removeCustodianRecoveryKeyWithSpecificUser:v8 uuid:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)setRecoveryKeyWithSpecificUser:(id)a3 recoveryKey:(id)a4 salt:(id)a5 ckksKeys:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -86;
  v17 = &v25;
  do
  {
    *(v17 + 24) = 0;
    v18 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10008F520;
    v21[3] = &unk_100335FB0;
    v23 = v29;
    v21[4] = self;
    v24 = &v25;
    v19 = v16;
    v22 = v19;
    v20 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v20 setRecoveryKeyWithSpecificUser:v12 recoveryKey:v13 salt:v14 ckksKeys:v15 reply:v19];

    v17 = v26;
  }

  while ((v26[3] & 1) != 0);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

- (void)fetchTrustStateWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008F864;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchTrustStateWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchPolicyDocumentsWithSpecificUser:(id)a3 versions:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008FF38;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 fetchPolicyDocumentsWithSpecificUser:v8 versions:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)fetchEscrowContentsWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009027C;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchEscrowContentsWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchViableBottlesWithSpecificUser:(id)a3 source:(int64_t)a4 flowID:(id)a5 deviceSessionID:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -86;
  v16 = &v24;
  do
  {
    *(v16 + 24) = 0;
    v17 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100090604;
    v20[3] = &unk_100335FB0;
    v22 = v28;
    v20[4] = self;
    v23 = &v24;
    v18 = v15;
    v21 = v18;
    v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v20];
    [v19 fetchViableBottlesWithSpecificUser:v12 source:a4 flowID:v13 deviceSessionID:v14 reply:v18];

    v16 = v25;
  }

  while ((v25[3] & 1) != 0);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
}

- (void)updateTLKsWithSpecificUser:(id)a3 ckksKeys:(id)a4 tlkShares:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  v14 = &v22;
  do
  {
    *(v14 + 24) = 0;
    v15 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100090980;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = v13;
    v19 = v16;
    v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 updateTLKsWithSpecificUser:v10 ckksKeys:v11 tlkShares:v12 reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)setPreapprovedKeysWithSpecificUser:(id)a3 preapprovedKeys:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100090CE0;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 setPreapprovedKeysWithSpecificUser:v8 preapprovedKeys:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)updateWithSpecificUser:(id)a3 forceRefetch:(BOOL)a4 deviceName:(id)a5 serialNumber:(id)a6 osVersion:(id)a7 policyVersion:(id)a8 policySecrets:(id)a9 syncUserControllableViews:(id)a10 secureElementIdentity:(id)a11 walrusSetting:(id)a12 webAccess:(id)a13 reply:(id)a14
{
  v28 = a4;
  v34 = a3;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v29 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = -86;
  v24 = &v39;
  do
  {
    *(v24 + 24) = 0;
    v25 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000910F0;
    v35[3] = &unk_100335FB0;
    v37 = v43;
    v35[4] = self;
    v38 = &v39;
    v26 = v23;
    v36 = v26;
    v27 = [v25 synchronousRemoteObjectProxyWithErrorHandler:v35];
    [v27 updateWithSpecificUser:v34 forceRefetch:v28 deviceName:v33 serialNumber:v32 osVersion:v31 policyVersion:v30 policySecrets:v29 syncUserControllableViews:v19 secureElementIdentity:v20 walrusSetting:v21 webAccess:v22 reply:v26];

    v24 = v40;
  }

  while ((v40[3] & 1) != 0);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);
}

- (void)attemptPreapprovedJoinWithSpecificUser:(id)a3 ckksKeys:(id)a4 tlkShares:(id)a5 preapprovedKeys:(id)a6 altDSID:(id)a7 flowID:(id)a8 deviceSessionID:(id)a9 canSendMetrics:(BOOL)a10 reply:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -86;
  v22 = &v34;
  do
  {
    *(v22 + 24) = 0;
    v23 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000914D4;
    v30[3] = &unk_100335FB0;
    v32 = v38;
    v30[4] = self;
    v33 = &v34;
    v24 = v21;
    v31 = v24;
    v25 = [v23 synchronousRemoteObjectProxyWithErrorHandler:v30];
    LOBYTE(v26) = a10;
    [v25 attemptPreapprovedJoinWithSpecificUser:v29 ckksKeys:v28 tlkShares:v27 preapprovedKeys:v17 altDSID:v18 flowID:v19 deviceSessionID:v20 canSendMetrics:v26 reply:v24];

    v22 = v35;
  }

  while ((v35[3] & 1) != 0);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
}

- (void)preflightPreapprovedJoinWithSpecificUser:(id)a3 preapprovedKeys:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009183C;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 preflightPreapprovedJoinWithSpecificUser:v8 preapprovedKeys:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)joinWithSpecificUser:(id)a3 voucherData:(id)a4 voucherSig:(id)a5 ckksKeys:(id)a6 tlkShares:(id)a7 preapprovedKeys:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)a12
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a12;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -86;
  v23 = &v36;
  do
  {
    *(v23 + 24) = 0;
    v24 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100091C28;
    v32[3] = &unk_100335FB0;
    v34 = v40;
    v32[4] = self;
    v35 = &v36;
    v25 = v22;
    v33 = v25;
    v26 = [v24 synchronousRemoteObjectProxyWithErrorHandler:v32];
    LOBYTE(v27) = a11;
    [v26 joinWithSpecificUser:v31 voucherData:v30 voucherSig:v29 ckksKeys:v28 tlkShares:v18 preapprovedKeys:v19 flowID:v20 deviceSessionID:v21 canSendMetrics:v27 reply:v25];

    v23 = v37;
  }

  while ((v37[3] & 1) != 0);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v40, 8);
}

- (void)vouchWithRerollWithSpecificUser:(id)a3 oldPeerID:(id)a4 tlkShares:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  v14 = &v22;
  do
  {
    *(v14 + 24) = 0;
    v15 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100091FA8;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = v13;
    v19 = v16;
    v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 vouchWithRerollWithSpecificUser:v10 oldPeerID:v11 tlkShares:v12 reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)vouchWithCustodianRecoveryKeyWithSpecificUser:(id)a3 crk:(id)a4 tlkShares:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  v14 = &v22;
  do
  {
    *(v14 + 24) = 0;
    v15 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10009232C;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = v13;
    v19 = v16;
    v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 vouchWithCustodianRecoveryKeyWithSpecificUser:v10 crk:v11 tlkShares:v12 reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)vouchWithRecoveryKeyWithSpecificUser:(id)a3 recoveryKey:(id)a4 salt:(id)a5 tlkShares:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -86;
  v17 = &v25;
  do
  {
    *(v17 + 24) = 0;
    v18 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000926C4;
    v21[3] = &unk_100335FB0;
    v23 = v29;
    v21[4] = self;
    v24 = &v25;
    v19 = v16;
    v22 = v19;
    v20 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v20 vouchWithRecoveryKeyWithSpecificUser:v12 recoveryKey:v13 salt:v14 tlkShares:v15 reply:v19];

    v17 = v26;
  }

  while ((v26[3] & 1) != 0);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)a3 crk:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100092A30;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 preflightVouchWithCustodianRecoveryKeyWithSpecificUser:v8 crk:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)preflightVouchWithRecoveryKeyWithSpecificUser:(id)a3 recoveryKey:(id)a4 salt:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  v14 = &v22;
  do
  {
    *(v14 + 24) = 0;
    v15 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100092DAC;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = v13;
    v19 = v16;
    v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 preflightVouchWithRecoveryKeyWithSpecificUser:v10 recoveryKey:v11 salt:v12 reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)vouchWithBottleWithSpecificUser:(id)a3 bottleID:(id)a4 entropy:(id)a5 bottleSalt:(id)a6 tlkShares:(id)a7 altDSID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)a12
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a12;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -86;
  v23 = &v36;
  do
  {
    *(v23 + 24) = 0;
    v24 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10009319C;
    v32[3] = &unk_100335FB0;
    v34 = v40;
    v32[4] = self;
    v35 = &v36;
    v25 = v22;
    v33 = v25;
    v26 = [v24 synchronousRemoteObjectProxyWithErrorHandler:v32];
    LOBYTE(v27) = a11;
    [v26 vouchWithBottleWithSpecificUser:v31 bottleID:v30 entropy:v29 bottleSalt:v28 tlkShares:v18 altDSID:v19 flowID:v20 deviceSessionID:v21 canSendMetrics:v27 reply:v25];

    v23 = v37;
  }

  while ((v37[3] & 1) != 0);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v40, 8);
}

- (void)vouchWithSpecificUser:(id)a3 peerID:(id)a4 permanentInfo:(id)a5 permanentInfoSig:(id)a6 stableInfo:(id)a7 stableInfoSig:(id)a8 ckksKeys:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 canSendMetrics:(BOOL)a12 reply:(id)a13
{
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a13;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -86;
  v24 = &v38;
  do
  {
    *(v24 + 24) = 0;
    v25 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100093968;
    v34[3] = &unk_100335FB0;
    v36 = v42;
    v34[4] = self;
    v37 = &v38;
    v26 = v23;
    v35 = v26;
    v27 = [v25 synchronousRemoteObjectProxyWithErrorHandler:v34];
    LOBYTE(v28) = a12;
    [v27 vouchWithSpecificUser:v33 peerID:v32 permanentInfo:v31 permanentInfoSig:v30 stableInfo:v29 stableInfoSig:v19 ckksKeys:v20 flowID:v21 deviceSessionID:v22 canSendMetrics:v28 reply:v26];

    v24 = v39;
  }

  while ((v39[3] & 1) != 0);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v42, 8);
}

- (void)establishWithSpecificUser:(id)a3 ckksKeys:(id)a4 tlkShares:(id)a5 preapprovedKeys:(id)a6 altDSID:(id)a7 flowID:(id)a8 deviceSessionID:(id)a9 canSendMetrics:(BOOL)a10 reply:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -86;
  v22 = &v34;
  do
  {
    *(v22 + 24) = 0;
    v23 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100093D4C;
    v30[3] = &unk_100335FB0;
    v32 = v38;
    v30[4] = self;
    v33 = &v34;
    v24 = v21;
    v31 = v24;
    v25 = [v23 synchronousRemoteObjectProxyWithErrorHandler:v30];
    LOBYTE(v26) = a10;
    [v25 establishWithSpecificUser:v29 ckksKeys:v28 tlkShares:v27 preapprovedKeys:v17 altDSID:v18 flowID:v19 deviceSessionID:v20 canSendMetrics:v26 reply:v24];

    v22 = v35;
  }

  while ((v35[3] & 1) != 0);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
}

- (void)prepareWithSpecificUser:(id)a3 epoch:(unint64_t)a4 machineID:(id)a5 bottleSalt:(id)a6 bottleID:(id)a7 modelID:(id)a8 deviceName:(id)a9 serialNumber:(id)a10 osVersion:(id)a11 policyVersion:(id)a12 policySecrets:(id)a13 syncUserControllableViews:(int)a14 secureElementIdentity:(id)a15 setting:(id)a16 signingPrivKeyPersistentRef:(id)a17 encPrivKeyPersistentRef:(id)a18 reply:(id)a19
{
  v44 = a3;
  v43 = a5;
  v42 = a6;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v37 = a11;
  v36 = a12;
  v35 = a13;
  v24 = a15;
  v25 = a16;
  v26 = a17;
  v27 = a18;
  v28 = a19;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = -86;
  v29 = &v49;
  do
  {
    *(v29 + 24) = 0;
    v30 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000941F8;
    v45[3] = &unk_100335FB0;
    v47 = v53;
    v45[4] = self;
    v48 = &v49;
    v31 = v28;
    v46 = v31;
    v32 = [v30 synchronousRemoteObjectProxyWithErrorHandler:v45];
    LODWORD(v33) = a14;
    [v32 prepareWithSpecificUser:v44 epoch:a4 machineID:v43 bottleSalt:v42 bottleID:v41 modelID:v40 deviceName:v39 serialNumber:v38 osVersion:v37 policyVersion:v36 policySecrets:v35 syncUserControllableViews:v33 secureElementIdentity:v24 setting:v25 signingPrivKeyPersistentRef:v26 encPrivKeyPersistentRef:v27 reply:v31];

    v29 = v50;
  }

  while ((v50[3] & 1) != 0);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v53, 8);
}

- (void)fetchEgoEpochWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100094550;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchEgoEpochWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchAllowedMachineIDsWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100094894;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchAllowedMachineIDsWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)handleRemovedMachineIDsDueToUnknownReasonsWithSpecificUser:(id)a3 machineIDs:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100094BF4;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 handleRemovedMachineIDsDueToUnknownReasonsWithSpecificUser:v8 machineIDs:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)handleEvictedMachineIDsWithSpecificUser:(id)a3 machineIDs:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100094F50;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 handleEvictedMachineIDsWithSpecificUser:v8 machineIDs:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)markTrustedDeviceListFetchFailed:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100095290;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 markTrustedDeviceListFetchFailed:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)setAllowedMachineIDsWithSpecificUser:(id)a3 allowedMachineIDs:(id)a4 userInitiatedRemovals:(id)a5 evictedRemovals:(id)a6 unknownReasonRemovals:(id)a7 honorIDMSListChanges:(BOOL)a8 version:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 canSendMetrics:(BOOL)a12 altDSID:(id)a13 trustedDeviceHash:(id)a14 deletedDeviceHash:(id)a15 trustedDevicesUpdateTimestamp:(id)a16 reply:(id)a17
{
  v32 = a8;
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v36 = a7;
  v35 = a9;
  v34 = a10;
  v33 = a11;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  v26 = a17;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = -86;
  v27 = &v45;
  do
  {
    *(v27 + 24) = 0;
    v28 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000956EC;
    v41[3] = &unk_100335FB0;
    v43 = v49;
    v41[4] = self;
    v44 = &v45;
    v29 = v26;
    v42 = v29;
    v30 = [v28 synchronousRemoteObjectProxyWithErrorHandler:v41];
    LOBYTE(v31) = a12;
    [v30 setAllowedMachineIDsWithSpecificUser:v40 allowedMachineIDs:v39 userInitiatedRemovals:v38 evictedRemovals:v37 unknownReasonRemovals:v36 honorIDMSListChanges:v32 version:v35 flowID:v34 deviceSessionID:v33 canSendMetrics:v31 altDSID:v22 trustedDeviceHash:v23 deletedDeviceHash:v24 trustedDevicesUpdateTimestamp:v25 reply:v29];

    v27 = v46;
  }

  while ((v46[3] & 1) != 0);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v49, 8);
}

- (void)localResetWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100095A30;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 localResetWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)resetWithSpecificUser:(id)a3 resetReason:(int64_t)a4 idmsTargetContext:(id)a5 idmsCuttlefishPassword:(id)a6 notifyIdMS:(BOOL)a7 internalAccount:(BOOL)a8 demoAccount:(BOOL)a9 isGuitarfish:(BOOL)a10 accountIsW:(BOOL)a11 accountType:(int64_t)a12 altDSID:(id)a13 flowID:(id)a14 deviceSessionID:(id)a15 canSendMetrics:(BOOL)a16 reply:(id)a17
{
  v31 = a7;
  v32 = a8;
  v35 = a3;
  v34 = a5;
  v33 = a6;
  v20 = a13;
  v21 = a14;
  v22 = a15;
  v23 = a17;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = -86;
  v24 = &v40;
  do
  {
    *(v24 + 24) = 0;
    v25 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100095E28;
    v36[3] = &unk_100335FB0;
    v38 = v44;
    v36[4] = self;
    v39 = &v40;
    v26 = v23;
    v37 = v26;
    v27 = [v25 synchronousRemoteObjectProxyWithErrorHandler:v36];
    LOBYTE(v29) = a16;
    BYTE2(v28) = a11;
    LOWORD(v28) = __PAIR16__(a10, a9);
    [v27 resetWithSpecificUser:v35 resetReason:a4 idmsTargetContext:v34 idmsCuttlefishPassword:v33 notifyIdMS:v31 internalAccount:v32 demoAccount:v28 isGuitarfish:a12 accountIsW:v20 accountType:v21 altDSID:v22 flowID:v29 deviceSessionID:v26 canSendMetrics:? reply:?];

    v24 = v41;
  }

  while ((v41[3] & 1) != 0);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v44, 8);
}

- (void)trustStatusWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100096168;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 trustStatusWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)dropPeerIDsWithSpecificUser:(id)a3 peerIDs:(id)a4 reply:(id)a5
{
  v5 = a5;
  v6 = sub_100006274("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon: drop unsupported from within securityd", v8, 2u);
  }

  v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 userInfo:0];
  v5[2](v5, v7);
}

- (void)distrustPeerIDsWithSpecificUser:(id)a3 peerIDs:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100096584;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 distrustPeerIDsWithSpecificUser:v8 peerIDs:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)departByDistrustingSelfWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000968C4;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 departByDistrustingSelfWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)trustedDeviceNamesByPeerIDWithSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100096C04;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 trustedDeviceNamesByPeerIDWithSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)octagonPeerIDGivenBottleIDWithSpecificUser:(id)a3 bottleID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100096F64;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 octagonPeerIDGivenBottleIDWithSpecificUser:v8 bottleID:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)honorIDMSListChangesForSpecificUser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v8 = &v16;
  do
  {
    *(v8 + 24) = 0;
    v9 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000972A8;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = v7;
    v13 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 honorIDMSListChangesForSpecificUser:v6 reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)dumpWithSpecificUser:(id)a3 fileDescriptor:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v11 = &v19;
  do
  {
    *(v11 + 24) = 0;
    v12 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100097608;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = v10;
    v16 = v13;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 dumpWithSpecificUser:v8 fileDescriptor:v9 reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)pingWithReply:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -86;
  v5 = &v9;
  do
  {
    *(v5 + 24) = 0;
    v6 = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100097918;
    v8[3] = &unk_100335F88;
    v8[4] = self;
    v8[5] = v13;
    v8[6] = &v9;
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v8];
    [v7 pingWithReply:v4];

    v5 = v10;
  }

  while ((v10[3] & 1) != 0);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);
}

- (CuttlefishXPCWrapper)initWithCuttlefishXPCConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CuttlefishXPCWrapper;
  v6 = [(CuttlefishXPCWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cuttlefishXPCConnection, a3);
  }

  return v7;
}

+ (BOOL)retryable:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = v4 == NSCocoaErrorDomain && [v3 code] == 4097;

  return v5;
}

@end