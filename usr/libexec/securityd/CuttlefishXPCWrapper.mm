@interface CuttlefishXPCWrapper
+ (BOOL)retryable:(id)retryable;
- (CuttlefishXPCWrapper)initWithCuttlefishXPCConnection:(id)connection;
- (void)attemptPreapprovedJoinWithSpecificUser:(id)user ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)self0 reply:(id)self1;
- (void)departByDistrustingSelfWithSpecificUser:(id)user reply:(id)reply;
- (void)distrustPeerIDsWithSpecificUser:(id)user peerIDs:(id)ds reply:(id)reply;
- (void)dropPeerIDsWithSpecificUser:(id)user peerIDs:(id)ds reply:(id)reply;
- (void)dumpWithSpecificUser:(id)user fileDescriptor:(id)descriptor reply:(id)reply;
- (void)establishWithSpecificUser:(id)user ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)self0 reply:(id)self1;
- (void)fetchAllowedMachineIDsWithSpecificUser:(id)user reply:(id)reply;
- (void)fetchCurrentItemWithSpecificUser:(id)user items:(id)items reply:(id)reply;
- (void)fetchEgoEpochWithSpecificUser:(id)user reply:(id)reply;
- (void)fetchEscrowContentsWithSpecificUser:(id)user reply:(id)reply;
- (void)fetchPCSIdentityByPublicKeyWithSpecificUser:(id)user pcsservices:(id)pcsservices reply:(id)reply;
- (void)fetchPolicyDocumentsWithSpecificUser:(id)user versions:(id)versions reply:(id)reply;
- (void)fetchTrustStateWithSpecificUser:(id)user reply:(id)reply;
- (void)fetchTrustedFullPeerCountWithSpecificUser:(id)user reply:(id)reply;
- (void)fetchTrustedPeerCountWithSpecificUser:(id)user reply:(id)reply;
- (void)fetchViableBottlesWithSpecificUser:(id)user source:(int64_t)source flowID:(id)d deviceSessionID:(id)iD reply:(id)reply;
- (void)fetchViableEscrowRecordsWithSpecificUser:(id)user source:(int64_t)source reply:(id)reply;
- (void)findCustodianRecoveryKeyWithSpecificUser:(id)user uuid:(id)uuid reply:(id)reply;
- (void)getSupportAppInfoWithSpecificUser:(id)user reply:(id)reply;
- (void)handleEvictedMachineIDsWithSpecificUser:(id)user machineIDs:(id)ds reply:(id)reply;
- (void)handleRemovedMachineIDsDueToUnknownReasonsWithSpecificUser:(id)user machineIDs:(id)ds reply:(id)reply;
- (void)honorIDMSListChangesForSpecificUser:(id)user reply:(id)reply;
- (void)isRecoveryKeySet:(id)set reply:(id)reply;
- (void)joinWithSpecificUser:(id)user voucherData:(id)data voucherSig:(id)sig ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys flowID:(id)d deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)self2;
- (void)localResetWithSpecificUser:(id)user reply:(id)reply;
- (void)markTrustedDeviceListFetchFailed:(id)failed reply:(id)reply;
- (void)octagonContainsDistrustedRecoveryKeysWithSpecificUser:(id)user reply:(id)reply;
- (void)octagonPeerIDGivenBottleIDWithSpecificUser:(id)user bottleID:(id)d reply:(id)reply;
- (void)performATOPRVActionsWithSpecificUser:(id)user reply:(id)reply;
- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)user isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount altDSID:(id)d flowID:(id)iD deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)self2;
- (void)pingWithReply:(id)reply;
- (void)preflightPreapprovedJoinWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply;
- (void)preflightRecoverOctagonUsingRecoveryKey:(id)key recoveryKey:(id)recoveryKey salt:(id)salt reply:(id)reply;
- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)user crk:(id)crk reply:(id)reply;
- (void)preflightVouchWithRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt reply:(id)reply;
- (void)prepareInheritancePeerWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 signingPrivKeyPersistentRef:(id)self6 encPrivKeyPersistentRef:(id)self7 crk:(id)self8 reply:(id)self9;
- (void)prepareWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 setting:(id)self6 signingPrivKeyPersistentRef:(id)self7 encPrivKeyPersistentRef:(id)self8 reply:(id)self9;
- (void)recoverTLKSharesForInheritorWithSpecificUser:(id)user crk:(id)crk tlkShares:(id)shares reply:(id)reply;
- (void)removeCustodianRecoveryKeyWithSpecificUser:(id)user uuid:(id)uuid reply:(id)reply;
- (void)removeEscrowCacheWithSpecificUser:(id)user reply:(id)reply;
- (void)removeRecoveryKey:(id)key reply:(id)reply;
- (void)resetWithSpecificUser:(id)user resetReason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount isGuitarfish:(BOOL)self0 accountIsW:(BOOL)self1 accountType:(int64_t)self2 altDSID:(id)self3 flowID:(id)self4 deviceSessionID:(id)self5 canSendMetrics:(BOOL)self6 reply:(id)self7;
- (void)setAllowedMachineIDsWithSpecificUser:(id)user allowedMachineIDs:(id)ds userInitiatedRemovals:(id)removals evictedRemovals:(id)evictedRemovals unknownReasonRemovals:(id)reasonRemovals honorIDMSListChanges:(BOOL)changes version:(id)version flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 altDSID:(id)self3 trustedDeviceHash:(id)self4 deletedDeviceHash:(id)self5 trustedDevicesUpdateTimestamp:(id)self6 reply:(id)self7;
- (void)setPreapprovedKeysWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply;
- (void)setRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt ckksKeys:(id)keys reply:(id)reply;
- (void)testSemaphoreWithSpecificUser:(id)user arg:(id)arg reply:(id)reply;
- (void)trustStatusWithSpecificUser:(id)user reply:(id)reply;
- (void)trustedDeviceNamesByPeerIDWithSpecificUser:(id)user reply:(id)reply;
- (void)updateTLKsWithSpecificUser:(id)user ckksKeys:(id)keys tlkShares:(id)shares reply:(id)reply;
- (void)updateWithSpecificUser:(id)user forceRefetch:(BOOL)refetch deviceName:(id)name serialNumber:(id)number osVersion:(id)version policyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(id)self0 secureElementIdentity:(id)self1 walrusSetting:(id)self2 webAccess:(id)self3 reply:(id)self4;
- (void)vouchWithBottleWithSpecificUser:(id)user bottleID:(id)d entropy:(id)entropy bottleSalt:(id)salt tlkShares:(id)shares altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)self2;
- (void)vouchWithCustodianRecoveryKeyWithSpecificUser:(id)user crk:(id)crk tlkShares:(id)shares reply:(id)reply;
- (void)vouchWithRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt tlkShares:(id)shares reply:(id)reply;
- (void)vouchWithRerollWithSpecificUser:(id)user oldPeerID:(id)d tlkShares:(id)shares reply:(id)reply;
- (void)vouchWithSpecificUser:(id)user peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig ckksKeys:(id)keys flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 reply:(id)self3;
@end

@implementation CuttlefishXPCWrapper

- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)user isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount altDSID:(id)d flowID:(id)iD deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)self2
{
  accountCopy = account;
  demoAccountCopy = demoAccount;
  guitarfishCopy = guitarfish;
  wCopy = w;
  userCopy = user;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10008A4E4;
    v28[3] = &unk_100335FB0;
    v30 = v36;
    v28[4] = self;
    v31 = &v32;
    v20 = replyCopy;
    v29 = v20;
    v21 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v28];
    LOBYTE(v22) = metrics;
    [v21 performCKServerUnreadableDataRemovalWithSpecificUser:userCopy isGuitarfish:guitarfishCopy accountIsW:wCopy internalAccount:accountCopy demoAccount:demoAccountCopy altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy canSendMetrics:v22 reply:v20];

    v18 = v33;
  }

  while ((v33[3] & 1) != 0);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v36, 8);
}

- (void)fetchPCSIdentityByPublicKeyWithSpecificUser:(id)user pcsservices:(id)pcsservices reply:(id)reply
{
  userCopy = user;
  pcsservicesCopy = pcsservices;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008A840;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 fetchPCSIdentityByPublicKeyWithSpecificUser:userCopy pcsservices:pcsservicesCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)fetchCurrentItemWithSpecificUser:(id)user items:(id)items reply:(id)reply
{
  userCopy = user;
  itemsCopy = items;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008ABA4;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 fetchCurrentItemWithSpecificUser:userCopy items:itemsCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)octagonContainsDistrustedRecoveryKeysWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008AEEC;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 octagonContainsDistrustedRecoveryKeysWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchTrustedFullPeerCountWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008B230;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchTrustedFullPeerCountWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchTrustedPeerCountWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008B574;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchTrustedPeerCountWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)preflightRecoverOctagonUsingRecoveryKey:(id)key recoveryKey:(id)recoveryKey salt:(id)salt reply:(id)reply
{
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  saltCopy = salt;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008B8EC;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = replyCopy;
    v19 = v16;
    v17 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 preflightRecoverOctagonUsingRecoveryKey:keyCopy recoveryKey:recoveryKeyCopy salt:saltCopy reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)testSemaphoreWithSpecificUser:(id)user arg:(id)arg reply:(id)reply
{
  replyCopy = reply;
  v6 = sub_100006274("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon: testing TPH semaphore handling unsupported from within securityd", v8, 2u);
  }

  v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 userInfo:0];
  replyCopy[2](replyCopy, v7);
}

- (void)performATOPRVActionsWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008BCEC;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 performATOPRVActionsWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)removeRecoveryKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008C02C;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 removeRecoveryKey:keyCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)isRecoveryKeySet:(id)set reply:(id)reply
{
  setCopy = set;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008C370;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 isRecoveryKeySet:setCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)recoverTLKSharesForInheritorWithSpecificUser:(id)user crk:(id)crk tlkShares:(id)shares reply:(id)reply
{
  userCopy = user;
  crkCopy = crk;
  sharesCopy = shares;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008C6E8;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = replyCopy;
    v19 = v16;
    v17 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 recoverTLKSharesForInheritorWithSpecificUser:userCopy crk:crkCopy tlkShares:sharesCopy reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)prepareInheritancePeerWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 signingPrivKeyPersistentRef:(id)self6 encPrivKeyPersistentRef:(id)self7 crk:(id)self8 reply:(id)self9
{
  userCopy = user;
  dCopy = d;
  saltCopy = salt;
  iDCopy = iD;
  modelIDCopy = modelID;
  nameCopy = name;
  numberCopy = number;
  versionCopy = version;
  policyVersionCopy = policyVersion;
  secretsCopy = secrets;
  identityCopy = identity;
  refCopy = ref;
  persistentRefCopy = persistentRef;
  crkCopy = crk;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10008CB90;
    v45[3] = &unk_100335FB0;
    v47 = v53;
    v45[4] = self;
    v48 = &v49;
    v31 = replyCopy;
    v46 = v31;
    v32 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v45];
    LODWORD(v33) = views;
    [v32 prepareInheritancePeerWithSpecificUser:userCopy epoch:epoch machineID:dCopy bottleSalt:saltCopy bottleID:iDCopy modelID:modelIDCopy deviceName:nameCopy serialNumber:numberCopy osVersion:versionCopy policyVersion:policyVersionCopy policySecrets:secretsCopy syncUserControllableViews:v33 secureElementIdentity:identityCopy signingPrivKeyPersistentRef:refCopy encPrivKeyPersistentRef:persistentRefCopy crk:crkCopy reply:v31];

    v29 = v50;
  }

  while ((v50[3] & 1) != 0);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v53, 8);
}

- (void)removeEscrowCacheWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008D9C8;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 removeEscrowCacheWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchViableEscrowRecordsWithSpecificUser:(id)user source:(int64_t)source reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008DD18;
    v14[3] = &unk_100335FB0;
    v16 = v22;
    v14[4] = self;
    v17 = &v18;
    v12 = replyCopy;
    v15 = v12;
    v13 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v13 fetchViableEscrowRecordsWithSpecificUser:userCopy source:source reply:v12];

    v10 = v19;
  }

  while ((v19[3] & 1) != 0);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v22, 8);
}

- (void)getSupportAppInfoWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008E05C;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 getSupportAppInfoWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)findCustodianRecoveryKeyWithSpecificUser:(id)user uuid:(id)uuid reply:(id)reply
{
  userCopy = user;
  uuidCopy = uuid;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008EA88;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 findCustodianRecoveryKeyWithSpecificUser:userCopy uuid:uuidCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)removeCustodianRecoveryKeyWithSpecificUser:(id)user uuid:(id)uuid reply:(id)reply
{
  userCopy = user;
  uuidCopy = uuid;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008EDE8;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 removeCustodianRecoveryKeyWithSpecificUser:userCopy uuid:uuidCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)setRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt ckksKeys:(id)keys reply:(id)reply
{
  userCopy = user;
  keyCopy = key;
  saltCopy = salt;
  keysCopy = keys;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10008F520;
    v21[3] = &unk_100335FB0;
    v23 = v29;
    v21[4] = self;
    v24 = &v25;
    v19 = replyCopy;
    v22 = v19;
    v20 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v20 setRecoveryKeyWithSpecificUser:userCopy recoveryKey:keyCopy salt:saltCopy ckksKeys:keysCopy reply:v19];

    v17 = v26;
  }

  while ((v26[3] & 1) != 0);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

- (void)fetchTrustStateWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008F864;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchTrustStateWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchPolicyDocumentsWithSpecificUser:(id)user versions:(id)versions reply:(id)reply
{
  userCopy = user;
  versionsCopy = versions;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008FF38;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 fetchPolicyDocumentsWithSpecificUser:userCopy versions:versionsCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)fetchEscrowContentsWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009027C;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchEscrowContentsWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchViableBottlesWithSpecificUser:(id)user source:(int64_t)source flowID:(id)d deviceSessionID:(id)iD reply:(id)reply
{
  userCopy = user;
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100090604;
    v20[3] = &unk_100335FB0;
    v22 = v28;
    v20[4] = self;
    v23 = &v24;
    v18 = replyCopy;
    v21 = v18;
    v19 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
    [v19 fetchViableBottlesWithSpecificUser:userCopy source:source flowID:dCopy deviceSessionID:iDCopy reply:v18];

    v16 = v25;
  }

  while ((v25[3] & 1) != 0);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
}

- (void)updateTLKsWithSpecificUser:(id)user ckksKeys:(id)keys tlkShares:(id)shares reply:(id)reply
{
  userCopy = user;
  keysCopy = keys;
  sharesCopy = shares;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100090980;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = replyCopy;
    v19 = v16;
    v17 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 updateTLKsWithSpecificUser:userCopy ckksKeys:keysCopy tlkShares:sharesCopy reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)setPreapprovedKeysWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply
{
  userCopy = user;
  keysCopy = keys;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100090CE0;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 setPreapprovedKeysWithSpecificUser:userCopy preapprovedKeys:keysCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)updateWithSpecificUser:(id)user forceRefetch:(BOOL)refetch deviceName:(id)name serialNumber:(id)number osVersion:(id)version policyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(id)self0 secureElementIdentity:(id)self1 walrusSetting:(id)self2 webAccess:(id)self3 reply:(id)self4
{
  refetchCopy = refetch;
  userCopy = user;
  nameCopy = name;
  numberCopy = number;
  versionCopy = version;
  policyVersionCopy = policyVersion;
  secretsCopy = secrets;
  viewsCopy = views;
  identityCopy = identity;
  settingCopy = setting;
  accessCopy = access;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000910F0;
    v35[3] = &unk_100335FB0;
    v37 = v43;
    v35[4] = self;
    v38 = &v39;
    v26 = replyCopy;
    v36 = v26;
    v27 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v35];
    [v27 updateWithSpecificUser:userCopy forceRefetch:refetchCopy deviceName:nameCopy serialNumber:numberCopy osVersion:versionCopy policyVersion:policyVersionCopy policySecrets:secretsCopy syncUserControllableViews:viewsCopy secureElementIdentity:identityCopy walrusSetting:settingCopy webAccess:accessCopy reply:v26];

    v24 = v40;
  }

  while ((v40[3] & 1) != 0);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);
}

- (void)attemptPreapprovedJoinWithSpecificUser:(id)user ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)self0 reply:(id)self1
{
  userCopy = user;
  keysCopy = keys;
  sharesCopy = shares;
  preapprovedKeysCopy = preapprovedKeys;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000914D4;
    v30[3] = &unk_100335FB0;
    v32 = v38;
    v30[4] = self;
    v33 = &v34;
    v24 = replyCopy;
    v31 = v24;
    v25 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v30];
    LOBYTE(v26) = metrics;
    [v25 attemptPreapprovedJoinWithSpecificUser:userCopy ckksKeys:keysCopy tlkShares:sharesCopy preapprovedKeys:preapprovedKeysCopy altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy canSendMetrics:v26 reply:v24];

    v22 = v35;
  }

  while ((v35[3] & 1) != 0);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
}

- (void)preflightPreapprovedJoinWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply
{
  userCopy = user;
  keysCopy = keys;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009183C;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 preflightPreapprovedJoinWithSpecificUser:userCopy preapprovedKeys:keysCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)joinWithSpecificUser:(id)user voucherData:(id)data voucherSig:(id)sig ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys flowID:(id)d deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)self2
{
  userCopy = user;
  dataCopy = data;
  sigCopy = sig;
  keysCopy = keys;
  sharesCopy = shares;
  preapprovedKeysCopy = preapprovedKeys;
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100091C28;
    v32[3] = &unk_100335FB0;
    v34 = v40;
    v32[4] = self;
    v35 = &v36;
    v25 = replyCopy;
    v33 = v25;
    v26 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v32];
    LOBYTE(v27) = metrics;
    [v26 joinWithSpecificUser:userCopy voucherData:dataCopy voucherSig:sigCopy ckksKeys:keysCopy tlkShares:sharesCopy preapprovedKeys:preapprovedKeysCopy flowID:dCopy deviceSessionID:iDCopy canSendMetrics:v27 reply:v25];

    v23 = v37;
  }

  while ((v37[3] & 1) != 0);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v40, 8);
}

- (void)vouchWithRerollWithSpecificUser:(id)user oldPeerID:(id)d tlkShares:(id)shares reply:(id)reply
{
  userCopy = user;
  dCopy = d;
  sharesCopy = shares;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100091FA8;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = replyCopy;
    v19 = v16;
    v17 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 vouchWithRerollWithSpecificUser:userCopy oldPeerID:dCopy tlkShares:sharesCopy reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)vouchWithCustodianRecoveryKeyWithSpecificUser:(id)user crk:(id)crk tlkShares:(id)shares reply:(id)reply
{
  userCopy = user;
  crkCopy = crk;
  sharesCopy = shares;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10009232C;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = replyCopy;
    v19 = v16;
    v17 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 vouchWithCustodianRecoveryKeyWithSpecificUser:userCopy crk:crkCopy tlkShares:sharesCopy reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)vouchWithRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt tlkShares:(id)shares reply:(id)reply
{
  userCopy = user;
  keyCopy = key;
  saltCopy = salt;
  sharesCopy = shares;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000926C4;
    v21[3] = &unk_100335FB0;
    v23 = v29;
    v21[4] = self;
    v24 = &v25;
    v19 = replyCopy;
    v22 = v19;
    v20 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v20 vouchWithRecoveryKeyWithSpecificUser:userCopy recoveryKey:keyCopy salt:saltCopy tlkShares:sharesCopy reply:v19];

    v17 = v26;
  }

  while ((v26[3] & 1) != 0);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)user crk:(id)crk reply:(id)reply
{
  userCopy = user;
  crkCopy = crk;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100092A30;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 preflightVouchWithCustodianRecoveryKeyWithSpecificUser:userCopy crk:crkCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)preflightVouchWithRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt reply:(id)reply
{
  userCopy = user;
  keyCopy = key;
  saltCopy = salt;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100092DAC;
    v18[3] = &unk_100335FB0;
    v20 = v26;
    v18[4] = self;
    v21 = &v22;
    v16 = replyCopy;
    v19 = v16;
    v17 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
    [v17 preflightVouchWithRecoveryKeyWithSpecificUser:userCopy recoveryKey:keyCopy salt:saltCopy reply:v16];

    v14 = v23;
  }

  while ((v23[3] & 1) != 0);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)vouchWithBottleWithSpecificUser:(id)user bottleID:(id)d entropy:(id)entropy bottleSalt:(id)salt tlkShares:(id)shares altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)self2
{
  userCopy = user;
  dCopy = d;
  entropyCopy = entropy;
  saltCopy = salt;
  sharesCopy = shares;
  iDCopy = iD;
  flowIDCopy = flowID;
  sessionIDCopy = sessionID;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10009319C;
    v32[3] = &unk_100335FB0;
    v34 = v40;
    v32[4] = self;
    v35 = &v36;
    v25 = replyCopy;
    v33 = v25;
    v26 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v32];
    LOBYTE(v27) = metrics;
    [v26 vouchWithBottleWithSpecificUser:userCopy bottleID:dCopy entropy:entropyCopy bottleSalt:saltCopy tlkShares:sharesCopy altDSID:iDCopy flowID:flowIDCopy deviceSessionID:sessionIDCopy canSendMetrics:v27 reply:v25];

    v23 = v37;
  }

  while ((v37[3] & 1) != 0);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v40, 8);
}

- (void)vouchWithSpecificUser:(id)user peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig ckksKeys:(id)keys flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 reply:(id)self3
{
  userCopy = user;
  dCopy = d;
  infoCopy = info;
  sigCopy = sig;
  stableInfoCopy = stableInfo;
  infoSigCopy = infoSig;
  keysCopy = keys;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100093968;
    v34[3] = &unk_100335FB0;
    v36 = v42;
    v34[4] = self;
    v37 = &v38;
    v26 = replyCopy;
    v35 = v26;
    v27 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v34];
    LOBYTE(v28) = metrics;
    [v27 vouchWithSpecificUser:userCopy peerID:dCopy permanentInfo:infoCopy permanentInfoSig:sigCopy stableInfo:stableInfoCopy stableInfoSig:infoSigCopy ckksKeys:keysCopy flowID:iDCopy deviceSessionID:sessionIDCopy canSendMetrics:v28 reply:v26];

    v24 = v39;
  }

  while ((v39[3] & 1) != 0);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v42, 8);
}

- (void)establishWithSpecificUser:(id)user ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)self0 reply:(id)self1
{
  userCopy = user;
  keysCopy = keys;
  sharesCopy = shares;
  preapprovedKeysCopy = preapprovedKeys;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100093D4C;
    v30[3] = &unk_100335FB0;
    v32 = v38;
    v30[4] = self;
    v33 = &v34;
    v24 = replyCopy;
    v31 = v24;
    v25 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v30];
    LOBYTE(v26) = metrics;
    [v25 establishWithSpecificUser:userCopy ckksKeys:keysCopy tlkShares:sharesCopy preapprovedKeys:preapprovedKeysCopy altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy canSendMetrics:v26 reply:v24];

    v22 = v35;
  }

  while ((v35[3] & 1) != 0);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
}

- (void)prepareWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 setting:(id)self6 signingPrivKeyPersistentRef:(id)self7 encPrivKeyPersistentRef:(id)self8 reply:(id)self9
{
  userCopy = user;
  dCopy = d;
  saltCopy = salt;
  iDCopy = iD;
  modelIDCopy = modelID;
  nameCopy = name;
  numberCopy = number;
  versionCopy = version;
  policyVersionCopy = policyVersion;
  secretsCopy = secrets;
  identityCopy = identity;
  settingCopy = setting;
  refCopy = ref;
  persistentRefCopy = persistentRef;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000941F8;
    v45[3] = &unk_100335FB0;
    v47 = v53;
    v45[4] = self;
    v48 = &v49;
    v31 = replyCopy;
    v46 = v31;
    v32 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v45];
    LODWORD(v33) = views;
    [v32 prepareWithSpecificUser:userCopy epoch:epoch machineID:dCopy bottleSalt:saltCopy bottleID:iDCopy modelID:modelIDCopy deviceName:nameCopy serialNumber:numberCopy osVersion:versionCopy policyVersion:policyVersionCopy policySecrets:secretsCopy syncUserControllableViews:v33 secureElementIdentity:identityCopy setting:settingCopy signingPrivKeyPersistentRef:refCopy encPrivKeyPersistentRef:persistentRefCopy reply:v31];

    v29 = v50;
  }

  while ((v50[3] & 1) != 0);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v53, 8);
}

- (void)fetchEgoEpochWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100094550;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchEgoEpochWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)fetchAllowedMachineIDsWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100094894;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 fetchAllowedMachineIDsWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)handleRemovedMachineIDsDueToUnknownReasonsWithSpecificUser:(id)user machineIDs:(id)ds reply:(id)reply
{
  userCopy = user;
  dsCopy = ds;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100094BF4;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 handleRemovedMachineIDsDueToUnknownReasonsWithSpecificUser:userCopy machineIDs:dsCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)handleEvictedMachineIDsWithSpecificUser:(id)user machineIDs:(id)ds reply:(id)reply
{
  userCopy = user;
  dsCopy = ds;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100094F50;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 handleEvictedMachineIDsWithSpecificUser:userCopy machineIDs:dsCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)markTrustedDeviceListFetchFailed:(id)failed reply:(id)reply
{
  failedCopy = failed;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100095290;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 markTrustedDeviceListFetchFailed:failedCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)setAllowedMachineIDsWithSpecificUser:(id)user allowedMachineIDs:(id)ds userInitiatedRemovals:(id)removals evictedRemovals:(id)evictedRemovals unknownReasonRemovals:(id)reasonRemovals honorIDMSListChanges:(BOOL)changes version:(id)version flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 altDSID:(id)self3 trustedDeviceHash:(id)self4 deletedDeviceHash:(id)self5 trustedDevicesUpdateTimestamp:(id)self6 reply:(id)self7
{
  changesCopy = changes;
  userCopy = user;
  dsCopy = ds;
  removalsCopy = removals;
  evictedRemovalsCopy = evictedRemovals;
  reasonRemovalsCopy = reasonRemovals;
  versionCopy = version;
  dCopy = d;
  iDCopy = iD;
  sIDCopy = sID;
  hashCopy = hash;
  deviceHashCopy = deviceHash;
  timestampCopy = timestamp;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000956EC;
    v41[3] = &unk_100335FB0;
    v43 = v49;
    v41[4] = self;
    v44 = &v45;
    v29 = replyCopy;
    v42 = v29;
    v30 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v41];
    LOBYTE(v31) = metrics;
    [v30 setAllowedMachineIDsWithSpecificUser:userCopy allowedMachineIDs:dsCopy userInitiatedRemovals:removalsCopy evictedRemovals:evictedRemovalsCopy unknownReasonRemovals:reasonRemovalsCopy honorIDMSListChanges:changesCopy version:versionCopy flowID:dCopy deviceSessionID:iDCopy canSendMetrics:v31 altDSID:sIDCopy trustedDeviceHash:hashCopy deletedDeviceHash:deviceHashCopy trustedDevicesUpdateTimestamp:timestampCopy reply:v29];

    v27 = v46;
  }

  while ((v46[3] & 1) != 0);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v49, 8);
}

- (void)localResetWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100095A30;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 localResetWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)resetWithSpecificUser:(id)user resetReason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount isGuitarfish:(BOOL)self0 accountIsW:(BOOL)self1 accountType:(int64_t)self2 altDSID:(id)self3 flowID:(id)self4 deviceSessionID:(id)self5 canSendMetrics:(BOOL)self6 reply:(id)self7
{
  sCopy = s;
  accountCopy = account;
  userCopy = user;
  contextCopy = context;
  passwordCopy = password;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100095E28;
    v36[3] = &unk_100335FB0;
    v38 = v44;
    v36[4] = self;
    v39 = &v40;
    v26 = replyCopy;
    v37 = v26;
    v27 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v36];
    LOBYTE(v29) = metrics;
    BYTE2(v28) = w;
    LOWORD(v28) = __PAIR16__(guitarfish, demoAccount);
    [v27 resetWithSpecificUser:userCopy resetReason:reason idmsTargetContext:contextCopy idmsCuttlefishPassword:passwordCopy notifyIdMS:sCopy internalAccount:accountCopy demoAccount:v28 isGuitarfish:type accountIsW:dCopy accountType:iDCopy altDSID:sessionIDCopy flowID:v29 deviceSessionID:v26 canSendMetrics:? reply:?];

    v24 = v41;
  }

  while ((v41[3] & 1) != 0);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v44, 8);
}

- (void)trustStatusWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100096168;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 trustStatusWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)dropPeerIDsWithSpecificUser:(id)user peerIDs:(id)ds reply:(id)reply
{
  replyCopy = reply;
  v6 = sub_100006274("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon: drop unsupported from within securityd", v8, 2u);
  }

  v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 userInfo:0];
  replyCopy[2](replyCopy, v7);
}

- (void)distrustPeerIDsWithSpecificUser:(id)user peerIDs:(id)ds reply:(id)reply
{
  userCopy = user;
  dsCopy = ds;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100096584;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 distrustPeerIDsWithSpecificUser:userCopy peerIDs:dsCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)departByDistrustingSelfWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000968C4;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 departByDistrustingSelfWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)trustedDeviceNamesByPeerIDWithSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100096C04;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 trustedDeviceNamesByPeerIDWithSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)octagonPeerIDGivenBottleIDWithSpecificUser:(id)user bottleID:(id)d reply:(id)reply
{
  userCopy = user;
  dCopy = d;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100096F64;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 octagonPeerIDGivenBottleIDWithSpecificUser:userCopy bottleID:dCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)honorIDMSListChangesForSpecificUser:(id)user reply:(id)reply
{
  userCopy = user;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000972A8;
    v12[3] = &unk_100335FB0;
    v14 = v20;
    v15 = &v16;
    v12[4] = self;
    v10 = replyCopy;
    v13 = v10;
    v11 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v11 honorIDMSListChangesForSpecificUser:userCopy reply:v10];

    v8 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

- (void)dumpWithSpecificUser:(id)user fileDescriptor:(id)descriptor reply:(id)reply
{
  userCopy = user;
  descriptorCopy = descriptor;
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100097608;
    v15[3] = &unk_100335FB0;
    v17 = v23;
    v15[4] = self;
    v18 = &v19;
    v13 = replyCopy;
    v16 = v13;
    v14 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v14 dumpWithSpecificUser:userCopy fileDescriptor:descriptorCopy reply:v13];

    v11 = v20;
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

- (void)pingWithReply:(id)reply
{
  replyCopy = reply;
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
    cuttlefishXPCConnection = [(CuttlefishXPCWrapper *)self cuttlefishXPCConnection];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100097918;
    v8[3] = &unk_100335F88;
    v8[4] = self;
    v8[5] = v13;
    v8[6] = &v9;
    v7 = [cuttlefishXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
    [v7 pingWithReply:replyCopy];

    v5 = v10;
  }

  while ((v10[3] & 1) != 0);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);
}

- (CuttlefishXPCWrapper)initWithCuttlefishXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CuttlefishXPCWrapper;
  v6 = [(CuttlefishXPCWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cuttlefishXPCConnection, connection);
  }

  return v7;
}

+ (BOOL)retryable:(id)retryable
{
  retryableCopy = retryable;
  domain = [retryableCopy domain];
  v5 = domain == NSCocoaErrorDomain && [retryableCopy code] == 4097;

  return v5;
}

@end