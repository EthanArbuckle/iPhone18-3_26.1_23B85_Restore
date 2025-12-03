@interface OTManager
+ (id)makeCKContainer:(id)container;
+ (id)manager;
+ (id)resetManager:(BOOL)manager to:(id)to;
- (BOOL)allContextsPause:(unint64_t)pause;
- (BOOL)fetchSendingMetricsPermitted:(id)permitted error:(id *)error;
- (BOOL)ghostbustByAgeEnabled;
- (BOOL)ghostbustByMidEnabled;
- (BOOL)ghostbustBySerialEnabled;
- (BOOL)isFullPeer;
- (BOOL)waitForReady:(id)ready wait:(int64_t)wait;
- (NSXPCProxyCreating)cuttlefishXPCConnection;
- (OTManager)init;
- (OTManager)initWithSOSAdapter:(id)adapter accountsAdapter:(id)accountsAdapter authKitAdapter:(id)kitAdapter tooManyPeersAdapter:(id)peersAdapter tapToRadarAdapter:(id)radarAdapter deviceInformationAdapter:(id)informationAdapter secureBackupAdapter:(id)backupAdapter laContextAdapter:(id)self0 personaAdapter:(id)self1 apsConnectionClass:(Class)self2 escrowRequestClass:(Class)self3 notifierClass:(Class)self4 loggerClass:(Class)self5 lockStateTracker:(id)self6 reachabilityTracker:(id)self7 cloudKitClassDependencies:(id)self8 cuttlefishXPCConnection:(id)self9 cdpd:(id)cdpd;
- (OTManager)initWithSOSAdapter:(id)adapter lockStateTracker:(id)tracker personaAdapter:(id)personaAdapter cloudKitClassDependencies:(id)dependencies;
- (id)cdpContextTypes;
- (id)ckksAccountSyncForContainer:(id)container contextID:(id)d possibleAccount:(id)account;
- (id)contextForClientRPC:(id)c createIfMissing:(BOOL)missing allowNonPrimaryAccounts:(BOOL)accounts error:(id *)error;
- (id)contextForClientRPCWithActiveAccount:(id)account createIfMissing:(BOOL)missing allowNonPrimaryAccounts:(BOOL)accounts error:(id *)error;
- (id)contextForContainerName:(id)name contextID:(id)d possibleAccount:(id)account;
- (id)contextForContainerName:(id)name contextID:(id)d possibleAccount:(id)account createIfMissing:(BOOL)missing sosAdapter:(id)adapter accountsAdapter:(id)accountsAdapter authKitAdapter:(id)kitAdapter tooManyPeersAdapter:(id)self0 tapToRadarAdapter:(id)self1 lockStateTracker:(id)self2 deviceInformationAdapter:(id)self3;
- (id)restartCKKSAccountSyncWithoutSettingPolicy:(id)policy;
- (id)restartOctagonContext:(id)context;
- (void)allContextsDisablePendingFlags;
- (void)allContextsHalt;
- (void)appleAccountSignedIn:(id)in reply:(id)reply;
- (void)appleAccountSignedOut:(id)out reply:(id)reply;
- (void)areRecoveryKeysDistrusted:(id)distrusted reply:(id)reply;
- (void)cancelPendingOperations;
- (void)checkCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)checkInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)clearAllContexts;
- (void)createCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)createInheritanceKey:(id)key uuid:(id)uuid claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply;
- (void)createInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)createRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply;
- (void)dealloc;
- (void)ensureRampsInitialized;
- (void)establish:(id)establish reply:(id)reply;
- (void)fetchAccountSettings:(id)settings reply:(id)reply;
- (void)fetchAllViableBottles:(id)bottles source:(int64_t)source reply:(id)reply;
- (void)fetchCliqueStatus:(id)status configuration:(id)configuration reply:(id)reply;
- (void)fetchEgoPeerID:(id)d reply:(id)reply;
- (void)fetchEscrowContents:(id)contents reply:(id)reply;
- (void)fetchEscrowRecords:(id)records source:(int64_t)source reply:(id)reply;
- (void)fetchTrustStatus:(id)status configuration:(id)configuration reply:(id)reply;
- (void)fetchTrustedSecureElementIdentities:(id)identities reply:(id)reply;
- (void)fetchUserControllableViewsSyncStatus:(id)status reply:(id)reply;
- (void)generateInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)getAccountMetadata:(id)metadata reply:(id)reply;
- (void)getCDPStatus:(id)status reply:(id)reply;
- (void)icscRepairReset:(id)reset reply:(id)reply;
- (void)initializeOctagon;
- (void)invalidateEscrowCache:(id)cache reply:(id)reply;
- (void)isRecoveryKeySet:(id)set reply:(id)reply;
- (void)joinWithCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply;
- (void)joinWithInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply;
- (void)joinWithRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply;
- (void)leaveClique:(id)clique reply:(id)reply;
- (void)moveToCheckTrustedStateForArguments:(id)arguments;
- (void)notifyIDMSTrustLevelChangeForAltDSID:(id)d reply:(id)reply;
- (void)peerDeviceNamesByPeerID:(id)d reply:(id)reply;
- (void)postCDPFollowupResult:(id)result success:(BOOL)success type:(id)type error:(id)error reply:(id)reply;
- (void)preflightJoinWithCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply;
- (void)preflightJoinWithInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply;
- (void)preflightRecoverOctagonUsingRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply;
- (void)recoverWithRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply;
- (void)recreateInheritanceKey:(id)key uuid:(id)uuid oldIK:(id)k reply:(id)reply;
- (void)refetchCKKSPolicy:(id)policy reply:(id)reply;
- (void)registerForCircleChangedNotifications;
- (void)registerForPasscodeCacheFlowNotifications;
- (void)removeContextForContainerName:(id)name contextID:(id)d;
- (void)removeCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)removeFriendsInClique:(id)clique peerIDs:(id)ds reply:(id)reply;
- (void)removeInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)removeLocalSecureElementIdentityPeerID:(id)d secureElementIdentityPeerID:(id)iD reply:(id)reply;
- (void)removeRecoveryKey:(id)key reply:(id)reply;
- (void)reroll:(id)reroll reply:(id)reply;
- (void)resetAndEstablish:(id)establish resetReason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s accountSettings:(id)settings isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)self0 reply:(id)self1;
- (void)resetAndEstablish:(id)establish resetReason:(int64_t)reason isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w reply:(id)reply;
- (void)restoreFromBottle:(id)bottle entropy:(id)entropy bottleID:(id)d reply:(id)reply;
- (void)rpcEpochWithArguments:(id)arguments configuration:(id)configuration reply:(id)reply;
- (void)rpcJoinWithArguments:(id)arguments configuration:(id)configuration vouchData:(id)data vouchSig:(id)sig reply:(id)reply;
- (void)rpcPrepareIdentityAsApplicantWithArguments:(id)arguments configuration:(id)configuration reply:(id)reply;
- (void)rpcVoucherWithArguments:(id)arguments configuration:(id)configuration peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig maxCapability:(id)self0 reply:(id)self1;
- (void)setAccountSetting:(id)setting setting:(id)a4 reply:(id)reply;
- (void)setCDPEnabled:(id)enabled reply:(id)reply;
- (void)setLocalSecureElementIdentity:(id)identity secureElementIdentity:(id)elementIdentity reply:(id)reply;
- (void)setMachineIDOverride:(id)override machineID:(id)d reply:(id)reply;
- (void)setPasscodeStashAvailableForArguments:(id)arguments aksEventContext:(id)context;
- (void)setupAnalytics;
- (void)simulateReceivePush:(id)push reply:(id)reply;
- (void)simulateReceiveTDLChangePush:(id)push reply:(id)reply;
- (void)startOctagonStateMachine:(id)machine reply:(id)reply;
- (void)status:(id)status xpcFd:(id)fd reply:(id)reply;
- (void)storeInheritanceKey:(id)key ik:(id)ik reply:(id)reply;
- (void)tapToRadar:(id)radar description:(id)description radar:(id)a5 reply:(id)reply;
- (void)tlkRecoverabilityForEscrowRecordData:(id)data recordData:(id)recordData source:(int64_t)source reply:(id)reply;
- (void)totalTrustedPeers:(id)peers reply:(id)reply;
- (void)trustedFullPeers:(id)peers reply:(id)reply;
- (void)waitForOctagonUpgrade:(id)upgrade reply:(id)reply;
- (void)waitForPriorityViewKeychainDataRecovery:(id)recovery reply:(id)reply;
- (void)xpc24HrNotification;
@end

@implementation OTManager

+ (id)manager
{
  if (objc_opt_class())
  {
    v3 = [self resetManager:0 to:0];
  }

  else
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Octagon: CloudKit.framework appears to not be linked. Cannot create an Octagon manager (on pain of crash).", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)icscRepairReset:(id)reset reply:(id)reply
{
  resetCopy = reset;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:resetCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = resetCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting icscRepairReset RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    [v8 icscRepairResetWithReply:replyCopy];
  }
}

- (void)reroll:(id)reroll reply:(id)reply
{
  rerollCopy = reroll;
  replyCopy = reply;
  v18 = 0;
  v8 = [(OTManager *)self contextForClientRPC:rerollCopy error:&v18];
  v9 = v18;
  v10 = sub_100006274("octagon");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v20 = rerollCopy;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Rejecting a reroll RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v9);
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v20 = rerollCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "reroll invoked for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v13 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityReroll"];

    [v8 startOctagonStateMachine];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B06D4;
    v15[3] = &unk_1003386E8;
    v16 = v13;
    v17 = replyCopy;
    v14 = v13;
    [v8 rerollWithReply:v15];
  }
}

- (void)areRecoveryKeysDistrusted:(id)distrusted reply:(id)reply
{
  distrustedCopy = distrusted;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:distrustedCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = distrustedCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a areRecoveryKeysDistrusted RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    [v8 areRecoveryKeysDistrusted:replyCopy];
  }
}

- (void)getAccountMetadata:(id)metadata reply:(id)reply
{
  metadataCopy = metadata;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:metadataCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = metadataCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a getAccountMetadata RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    [v8 getAccountMetadataWithReply:replyCopy];
  }
}

- (void)preflightRecoverOctagonUsingRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply
{
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v15 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v15];
  v12 = v15;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = keyCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a preflightRecoverOctagonUsingRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    [v11 preflightRecoverOctagonUsingRecoveryKey:recoveryKeyCopy reply:replyCopy];
  }
}

- (void)setMachineIDOverride:(id)override machineID:(id)d reply:(id)reply
{
  overrideCopy = override;
  dCopy = d;
  v16 = 0;
  replyCopy = reply;
  v11 = [(OTManager *)self contextForClientRPC:overrideCopy error:&v16];
  v12 = v16;
  v13 = v12;
  if (!v11 || v12)
  {
    v15 = sub_100006274("octagon");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = overrideCopy;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rejecting a setMachineIDOverride RPC for arguments (%@): %@", buf, 0x16u);
    }

    v14 = v13;
  }

  else
  {
    [v11 setMachineIDOverride:dCopy];
    v14 = 0;
  }

  (replyCopy)[2](replyCopy, v14);
}

- (void)removeRecoveryKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  v14 = 0;
  v8 = [(OTManager *)self contextForClientRPC:keyCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon-remove-recovery-key");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = keyCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a removeRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B0E0C;
    v12[3] = &unk_100337BD8;
    v13 = replyCopy;
    [v8 rpcRemoveRecoveryKey:v12];
  }
}

- (void)recoverWithRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply
{
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v17 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v17];
  v12 = v17;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon-recover-with-recovery-key");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = keyCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a recoverWithRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B10DC;
    v15[3] = &unk_100337928;
    v16 = replyCopy;
    [v11 joinWithRecoveryKey:recoveryKeyCopy reply:v15];
  }
}

- (void)isRecoveryKeySet:(id)set reply:(id)reply
{
  setCopy = set;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:setCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = setCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a isRecoveryKeySet RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    [v8 rpcIsRecoveryKeySet:replyCopy];
  }
}

- (void)tlkRecoverabilityForEscrowRecordData:(id)data recordData:(id)recordData source:(int64_t)source reply:(id)reply
{
  dataCopy = data;
  recordDataCopy = recordData;
  replyCopy = reply;
  v17 = 0;
  v13 = [(OTManager *)self contextForClientRPC:dataCopy error:&v17];
  v14 = v17;
  v15 = v14;
  if (!v13 || v14)
  {
    v16 = sub_100006274("octagon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = dataCopy;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rejecting a tlkRecoverabilityForEscrowRecordData RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v15);
  }

  else
  {
    [v13 rpcTlkRecoverabilityForEscrowRecordData:recordDataCopy source:source reply:replyCopy];
  }
}

- (void)fetchAccountSettings:(id)settings reply:(id)reply
{
  settingsCopy = settings;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:settingsCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = settingsCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchAccountSettings RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    [v8 rpcFetchAccountSettings:replyCopy];
  }
}

- (void)setAccountSetting:(id)setting setting:(id)a4 reply:(id)reply
{
  settingCopy = setting;
  v9 = a4;
  replyCopy = reply;
  v15 = 0;
  v11 = [(OTManager *)self contextForClientRPC:settingCopy error:&v15];
  v12 = v15;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = settingCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a setAccountSetting RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    [v11 rpcSetAccountSetting:v9 reply:replyCopy];
  }
}

- (void)fetchTrustedSecureElementIdentities:(id)identities reply:(id)reply
{
  identitiesCopy = identities;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:identitiesCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = identitiesCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchTrustedSecureElementIdentities RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    [v8 rpcFetchTrustedSecureElementIdentities:replyCopy];
  }
}

- (void)removeLocalSecureElementIdentityPeerID:(id)d secureElementIdentityPeerID:(id)iD reply:(id)reply
{
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
  v15 = 0;
  v11 = [(OTManager *)self contextForClientRPC:dCopy error:&v15];
  v12 = v15;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a removeLocalSecureElementIdentityPeerID RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    [v11 rpcRemoveLocalSecureElementIdentityPeerID:iDCopy reply:replyCopy];
  }
}

- (void)setLocalSecureElementIdentity:(id)identity secureElementIdentity:(id)elementIdentity reply:(id)reply
{
  identityCopy = identity;
  elementIdentityCopy = elementIdentity;
  replyCopy = reply;
  v15 = 0;
  v11 = [(OTManager *)self contextForClientRPC:identityCopy error:&v15];
  v12 = v15;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = identityCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a setLocalSecureElementIdentity RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    [v11 rpcSetLocalSecureElementIdentity:elementIdentityCopy reply:replyCopy];
  }
}

- (void)fetchUserControllableViewsSyncStatus:(id)status reply:(id)reply
{
  statusCopy = status;
  replyCopy = reply;
  v14 = 0;
  v8 = [(OTManager *)self contextForClientRPC:statusCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = statusCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchUserControllableViewsSyncStatus RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B21A4;
    v12[3] = &unk_100337BD8;
    v13 = replyCopy;
    [v8 rpcFetchUserControllableViewsSyncingStatus:v12];
  }
}

- (void)invalidateEscrowCache:(id)cache reply:(id)reply
{
  cacheCopy = cache;
  replyCopy = reply;
  v15 = 0;
  v8 = [(OTManager *)self contextForClientRPC:cacheCopy error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = cacheCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rejecting a invalidateEscrowCache RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v11 = sub_100006274("octagon-remove-escrow-cache");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "beginning removing escrow cache!", buf, 2u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B27F4;
    v13[3] = &unk_100337928;
    v14 = replyCopy;
    [v8 rpcInvalidateEscrowCache:v13];
  }
}

- (void)fetchEscrowRecords:(id)records source:(int64_t)source reply:(id)reply
{
  recordsCopy = records;
  replyCopy = reply;
  v17 = 0;
  v10 = [(OTManager *)self contextForClientRPC:recordsCopy error:&v17];
  v11 = v17;
  v12 = v11;
  if (!v10 || v11)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = recordsCopy;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchEscrowRecords RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v12);
  }

  else
  {
    v13 = sub_100006274("octagon-fetch-escrow-records");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "fetching records", buf, 2u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B2B18;
    v15[3] = &unk_100337C78;
    v16 = replyCopy;
    [v10 rpcFetchAllViableEscrowRecordsFromSource:source reply:v15];
  }
}

- (void)setCDPEnabled:(id)enabled reply:(id)reply
{
  enabledCopy = enabled;
  v15 = 0;
  replyCopy = reply;
  v8 = [(OTManager *)self contextForClientRPC:enabledCopy error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = enabledCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a setCDPEnabled RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v11 = sub_100006274("octagon-cdp");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "set-cdp-enabled", buf, 2u);
    }

    v14 = 0;
    [v8 setCDPEnabled:&v14];
    v12 = v14;
    replyCopy[2](replyCopy, v12);

    replyCopy = v12;
  }
}

- (void)getCDPStatus:(id)status reply:(id)reply
{
  statusCopy = status;
  v16 = 0;
  replyCopy = reply;
  v8 = [(OTManager *)self contextForClientRPC:statusCopy error:&v16];
  v9 = v16;
  v10 = v9;
  if (!v8 || v9)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = statusCopy;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a getCDPStatus RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    v11 = sub_100006274("octagon-cdp");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "get-cdp-status", buf, 2u);
    }

    v15 = 0;
    v12 = [v8 getCDPStatus:&v15];
    v13 = v15;
    (replyCopy)[2](replyCopy, v12, v13);

    replyCopy = v13;
  }
}

- (void)refetchCKKSPolicy:(id)policy reply:(id)reply
{
  policyCopy = policy;
  replyCopy = reply;
  v15 = 0;
  v8 = [(OTManager *)self contextForClientRPC:policyCopy error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = policyCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rejecting a refetchCKKSPolicy RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v11 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "refetch-ckks-policy", buf, 2u);
    }

    [v8 startOctagonStateMachine];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B31CC;
    v13[3] = &unk_100337928;
    v14 = replyCopy;
    [v8 rpcRefetchCKKSPolicy:v13];
  }
}

- (void)tapToRadar:(id)radar description:(id)description radar:(id)a5 reply:(id)reply
{
  replyCopy = reply;
  v10 = a5;
  descriptionCopy = description;
  radarCopy = radar;
  v13 = [[SecTapToRadar alloc] initTapToRadar:radarCopy description:descriptionCopy radar:v10];

  [v13 trigger];
  replyCopy[2](replyCopy, 0);
}

- (void)postCDPFollowupResult:(id)result success:(BOOL)success type:(id)type error:(id)error reply:(id)reply
{
  replyCopy = reply;
  errorCopy = error;
  typeCopy = type;
  typeCopy = [NSString stringWithFormat:@"%@%@", @"OACDPStateRun", typeCopy];
  typeCopy2 = [NSString stringWithFormat:@"%@%@Tries", @"OACDPStateRun", typeCopy];

  v13 = +[CKKSAnalytics logger];
  [v13 logResultForEvent:typeCopy hardFailure:0 result:errorCopy];

  v14 = +[CKKSAnalytics logger];
  v15 = v14;
  if (errorCopy)
  {
    v16 = +[NSDate date];
    [v15 setDateProperty:v16 forKey:typeCopy];

    v17 = +[CKKSAnalytics logger];
    [v17 incrementIntegerPropertyForKey:typeCopy2];
  }

  else
  {
    [v14 setDateProperty:0 forKey:typeCopy];

    v17 = +[CKKSAnalytics logger];
    [v17 setNumberProperty:0 forKey:typeCopy2];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)waitForPriorityViewKeychainDataRecovery:(id)recovery reply:(id)reply
{
  recoveryCopy = recovery;
  replyCopy = reply;
  v15 = 0;
  v8 = [(OTManager *)self contextForClientRPC:recoveryCopy error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = recoveryCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rejecting a waitForPriorityViewKeychainDataRecovery RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v11 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting wait for priority view processing", buf, 2u);
    }

    [v8 startOctagonStateMachine];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B36E8;
    v13[3] = &unk_100337928;
    v14 = replyCopy;
    [v8 rpcWaitForPriorityViewKeychainDataRecovery:v13];
  }
}

- (void)waitForOctagonUpgrade:(id)upgrade reply:(id)reply
{
  upgradeCopy = upgrade;
  replyCopy = reply;
  v15 = 0;
  v8 = [(OTManager *)self contextForClientRPC:upgradeCopy error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = upgradeCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rejecting a waitForOctagonUpgrade RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v11 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting wait for octagon upgrade", buf, 2u);
    }

    [v8 startOctagonStateMachine];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B38E0;
    v13[3] = &unk_100337928;
    v14 = replyCopy;
    [v8 waitForOctagonUpgrade:v13];
  }
}

- (BOOL)allContextsPause:(unint64_t)pause
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  contexts = [(OTManager *)self contexts];
  allValues = [contexts allValues];

  v6 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        stateMachine = [v10 stateMachine];
        currentState = [stateMachine currentState];

        if (currentState != @"not_started")
        {
          stateMachine2 = [v10 stateMachine];
          paused = [stateMachine2 paused];
          v15 = [paused wait:pause];

          if (v15)
          {
            goto LABEL_14;
          }
        }

        pendingEscrowCacheWarmup = [v10 pendingEscrowCacheWarmup];
        v17 = pendingEscrowCacheWarmup;
        if (pendingEscrowCacheWarmup && [pendingEscrowCacheWarmup wait:pause])
        {

LABEL_14:
          v18 = 0;
          goto LABEL_15;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_15:

  return v18;
}

- (void)allContextsDisablePendingFlags
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  contexts = [(OTManager *)self contexts];
  allValues = [contexts allValues];

  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        stateMachine = [*(*(&v9 + 1) + 8 * v7) stateMachine];
        [stateMachine disablePendingFlags];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)allContextsHalt
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contexts = [(OTManager *)self contexts];
  allValues = [contexts allValues];

  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        stateMachine = [v8 stateMachine];
        [stateMachine haltOperation];

        ckks = [v8 ckks];
        [ckks halt];
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)simulateReceiveTDLChangePush:(id)push reply:(id)reply
{
  pushCopy = push;
  v14 = 0;
  replyCopy = reply;
  v8 = [(OTManager *)self contextForClientRPC:pushCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = pushCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting simulateReceiveTDLChangePush for arguments (%@): %@", buf, 0x16u);
    }

    v12 = v10;
  }

  else
  {
    v11 = sub_100006274("octagon-push");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "notifying securityd of TDL changed push (simulated)", buf, 2u);
    }

    [v8 notificationOfMachineIDListChange];
    v12 = 0;
  }

  (replyCopy)[2](replyCopy, v12);
}

- (void)simulateReceivePush:(id)push reply:(id)reply
{
  pushCopy = push;
  v14 = 0;
  replyCopy = reply;
  v8 = [(OTManager *)self contextForClientRPC:pushCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = pushCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting updateOctagon for arguments (%@): %@", buf, 0x16u);
    }

    v12 = v10;
  }

  else
  {
    v11 = sub_100006274("octagon-push");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "notifying container of change (simulated)", buf, 2u);
    }

    [v8 notifyContainerChange:0];
    v12 = 0;
  }

  (replyCopy)[2](replyCopy, v12);
}

- (void)xpc24HrNotification
{
  v3 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 24hr xpc notification", buf, 2u);
  }

  v4 = objc_alloc_init(OTControlArguments);
  [(OTManager *)self healthCheck:v4 skipRateLimitingCheck:0 repair:0 danglingPeerCleanup:0 caesarPeerCleanup:0 updateIdMS:0 reply:&stru_100336950];
}

- (void)createInheritanceKey:(id)key uuid:(id)uuid claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  dataCopy = data;
  keyDataCopy = keyData;
  replyCopy = reply;
  v30 = 0;
  v17 = [(OTManager *)self contextForClientRPC:keyCopy error:&v30];
  v18 = v30;
  v19 = v18;
  if (!v17 || v18)
  {
    v24 = sub_100006274("octagon");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = keyCopy;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Rejecting a createInheritanceKey (w/claimToken+wrappingKey) RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v19);
  }

  else
  {
    v20 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = keyCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating Inheritance Key given claimToken+wrappingKey for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v22 = [logger startLogSystemMetricsForActivityNamed:@"OctagonEventCreateInheritanceKeyWithClaimTokenAndWrappingKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v17 startOctagonStateMachine];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000B49E0;
      v27[3] = &unk_100336910;
      v28 = v22;
      v29 = replyCopy;
      [v17 rpcCreateInheritanceKeyWithUUID:uuidCopy claimTokenData:dataCopy wrappingKeyData:keyDataCopy reply:v27];

      v23 = v28;
    }

    else
    {
      v25 = sub_100006274("octagon-inheritance");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot enroll recovery key in Octagon", buf, 2u);
      }

      v31 = NSLocalizedDescriptionKey;
      v32 = @"Device is considered a limited peer, cannot enroll recovery key in Octagon";
      v26 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v23 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v26];

      [v22 stopWithEvent:@"OctagonActivityRecreateInheritanceKey" result:v23];
      replyCopy[2](replyCopy, 0, v23);
    }
  }
}

- (void)recreateInheritanceKey:(id)key uuid:(id)uuid oldIK:(id)k reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  kCopy = k;
  replyCopy = reply;
  v27 = 0;
  v14 = [(OTManager *)self contextForClientRPC:keyCopy error:&v27];
  v15 = v27;
  v16 = v15;
  if (!v14 || v15)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = keyCopy;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a recreateInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v16);
  }

  else
  {
    v17 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = keyCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Recreating Inheritance Key for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityRecreateInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v14 startOctagonStateMachine];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000B4DC8;
      v24[3] = &unk_100336910;
      v25 = v19;
      v26 = replyCopy;
      [v14 rpcRecreateInheritanceKeyWithUUID:uuidCopy oldIK:kCopy reply:v24];

      v20 = v25;
    }

    else
    {
      v22 = sub_100006274("octagon-inheritance");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot enroll recovery key in Octagon", buf, 2u);
      }

      v28 = NSLocalizedDescriptionKey;
      v29 = @"Device is considered a limited peer, cannot enroll recovery key in Octagon";
      v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v23];

      [v19 stopWithEvent:@"OctagonEventRecreateInheritanceKey" result:v20];
      replyCopy[2](replyCopy, 0, v20);
    }
  }
}

- (void)checkInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v20 = sub_100006274("octagon");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = keyCopy;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rejecting a checkInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-custodian-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      containerName = [keyCopy containerName];
      contextID = [keyCopy contextID];
      *buf = 138412802;
      v26 = uuidCopy;
      v27 = 2112;
      v28 = containerName;
      v29 = 2112;
      v30 = contextID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Check Custodian Recovery Key %@ for container: %@, context: %@", buf, 0x20u);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityCheckInheritanceKey"];

    [v11 startOctagonStateMachine];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B50F0;
    v21[3] = &unk_1003368E8;
    v22 = v18;
    v23 = replyCopy;
    v19 = v18;
    [v11 rpcCheckInheritanceKeyWithUUID:uuidCopy reply:v21];
  }
}

- (void)removeInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v27 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v27];
  v12 = v27;
  v13 = v12;
  if (!v11 || v12)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = keyCopy;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a removeInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      containerName = [keyCopy containerName];
      contextID = [keyCopy contextID];
      *buf = 138412802;
      v31 = uuidCopy;
      v32 = 2112;
      v33 = containerName;
      v34 = 2112;
      v35 = contextID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remove Inheritance Key %@ for container: %@, context: %@", buf, 0x20u);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityRemoveInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      if (_os_feature_enabled_impl())
      {
        v19 = [[SecTapToRadar alloc] initTapToRadar:@"Inheritance key removal" description:@"Please TTR unless you were just removing a legacy contact" radar:@"114829039"];
        [v19 trigger];
      }

      [v11 startOctagonStateMachine];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000B5538;
      v24[3] = &unk_1003386E8;
      v25 = v18;
      v26 = replyCopy;
      [v11 rpcRemoveInheritanceKeyWithUUID:uuidCopy reply:v24];

      v20 = v25;
    }

    else
    {
      v22 = sub_100006274("octagon-custodian-recovery");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot remove inheritance key in Octagon", buf, 2u);
      }

      v28 = NSLocalizedDescriptionKey;
      v29 = @"Device is considered a limited peer, cannot remove inheritance key in Octagon";
      v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v23];

      [v18 stopWithEvent:@"OctagonEventRemoveInheritanceKey" result:v20];
      replyCopy[2](replyCopy, v20);
    }
  }
}

- (void)preflightJoinWithInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply
{
  keyCopy = key;
  inheritanceKeyCopy = inheritanceKey;
  replyCopy = reply;
  v25 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v25];
  v12 = v25;
  v13 = v12;
  if (!v11 || v12)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = keyCopy;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a preflightJoinWithInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [inheritanceKeyCopy uuid];
      containerName = [keyCopy containerName];
      contextID = [keyCopy contextID];
      *buf = 138412802;
      v27 = uuid;
      v28 = 2112;
      v29 = containerName;
      v30 = 2112;
      v31 = contextID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "preflight join with inheritance key %@ invoked for container: %@, context: %@", buf, 0x20u);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityPreflightJoinWithInheritanceKey"];

    [v11 startOctagonStateMachine];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B5854;
    v22[3] = &unk_1003386E8;
    v23 = v19;
    v24 = replyCopy;
    v20 = v19;
    [v11 preflightJoinWithInheritanceKey:inheritanceKeyCopy reply:v22];
  }
}

- (void)joinWithInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply
{
  keyCopy = key;
  inheritanceKeyCopy = inheritanceKey;
  replyCopy = reply;
  v25 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v25];
  v12 = v25;
  v13 = v12;
  if (!v11 || v12)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = keyCopy;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a joinWithInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [inheritanceKeyCopy uuid];
      containerName = [keyCopy containerName];
      contextID = [keyCopy contextID];
      *buf = 138412802;
      v27 = uuid;
      v28 = 2112;
      v29 = containerName;
      v30 = 2112;
      v31 = contextID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "join with inheritance key %@ invoked for container: %@, context: %@", buf, 0x20u);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityJoinWithInheritanceKey"];

    [v11 startOctagonStateMachine];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B5C34;
    v22[3] = &unk_1003386E8;
    v23 = v19;
    v24 = replyCopy;
    v20 = v19;
    [v11 joinWithInheritanceKey:inheritanceKeyCopy reply:v22];
  }
}

- (void)storeInheritanceKey:(id)key ik:(id)ik reply:(id)reply
{
  keyCopy = key;
  ikCopy = ik;
  replyCopy = reply;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = keyCopy;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a storeInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = keyCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Storing Inheritance Key for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityStoreInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v11 startOctagonStateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B60A0;
      v21[3] = &unk_1003386E8;
      v22 = v16;
      v23 = replyCopy;
      [v11 rpcStoreInheritanceKeyWithIK:ikCopy reply:v21];

      v17 = v22;
    }

    else
    {
      v19 = sub_100006274("octagon-inheritance");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot enroll recovery key in Octagon", buf, 2u);
      }

      v25 = NSLocalizedDescriptionKey;
      v26 = @"Device is considered a limited peer, cannot enroll recovery key in Octagon";
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v20];

      [v16 stopWithEvent:@"OctagonEventStoreInheritanceKey" result:v17];
      replyCopy[2](replyCopy, v17);
    }
  }
}

- (void)generateInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = keyCopy;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a generateInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = keyCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Generating Inheritance Key for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityGenerateInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v11 startOctagonStateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B6450;
      v21[3] = &unk_100336910;
      v22 = v16;
      v23 = replyCopy;
      [v11 rpcGenerateInheritanceKeyWithUUID:uuidCopy reply:v21];

      v17 = v22;
    }

    else
    {
      v19 = sub_100006274("octagon-inheritance");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot enroll recovery key in Octagon", buf, 2u);
      }

      v25 = NSLocalizedDescriptionKey;
      v26 = @"Device is considered a limited peer, cannot enroll recovery key in Octagon";
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v20];

      [v16 stopWithEvent:@"OctagonEventGenerateInheritanceKey" result:v17];
      replyCopy[2](replyCopy, 0, v17);
    }
  }
}

- (void)createInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = keyCopy;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a createInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = keyCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating Inheritance Key for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityCreateInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v11 startOctagonStateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B681C;
      v21[3] = &unk_100336910;
      v22 = v16;
      v23 = replyCopy;
      [v11 rpcCreateInheritanceKeyWithUUID:uuidCopy reply:v21];

      v17 = v22;
    }

    else
    {
      v19 = sub_100006274("octagon-inheritance");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot enroll recovery key in Octagon", buf, 2u);
      }

      v25 = NSLocalizedDescriptionKey;
      v26 = @"Device is considered a limited peer, cannot enroll recovery key in Octagon";
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v20];

      [v16 stopWithEvent:@"OctagonEventCreateInheritanceKey" result:v17];
      replyCopy[2](replyCopy, 0, v17);
    }
  }
}

- (void)checkCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v20 = sub_100006274("octagon");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = keyCopy;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rejecting a checkCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-custodian-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      containerName = [keyCopy containerName];
      contextID = [keyCopy contextID];
      *buf = 138412802;
      v26 = uuidCopy;
      v27 = 2112;
      v28 = containerName;
      v29 = 2112;
      v30 = contextID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Check Custodian Recovery Key %@ for container: %@, context: %@", buf, 0x20u);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityCheckCustodianRecoveryKey"];

    [v11 startOctagonStateMachine];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B6B44;
    v21[3] = &unk_1003368E8;
    v22 = v18;
    v23 = replyCopy;
    v19 = v18;
    [v11 rpcCheckCustodianRecoveryKeyWithUUID:uuidCopy reply:v21];
  }
}

- (void)removeCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v27 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v27];
  v12 = v27;
  v13 = v12;
  if (!v11 || v12)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = keyCopy;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a removeCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-custodian-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      containerName = [keyCopy containerName];
      contextID = [keyCopy contextID];
      *buf = 138412802;
      v31 = uuidCopy;
      v32 = 2112;
      v33 = containerName;
      v34 = 2112;
      v35 = contextID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remove Custodian Recovery Key %@ for container: %@, context: %@", buf, 0x20u);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityRemoveCustodianRecoveryKey"];

    if ([(OTManager *)self isFullPeer])
    {
      if (_os_feature_enabled_impl())
      {
        v19 = [[SecTapToRadar alloc] initTapToRadar:@"Custodian key removal" description:@"Please TTR unless you were just removing a recovery contact" radar:@"114829039"];
        [v19 trigger];
      }

      [v11 startOctagonStateMachine];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000B6F8C;
      v24[3] = &unk_1003386E8;
      v25 = v18;
      v26 = replyCopy;
      [v11 rpcRemoveCustodianRecoveryKeyWithUUID:uuidCopy reply:v24];

      v20 = v25;
    }

    else
    {
      v22 = sub_100006274("octagon-custodian-recovery");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot remove recovery key in Octagon", buf, 2u);
      }

      v28 = NSLocalizedDescriptionKey;
      v29 = @"Device is considered a limited peer, cannot remove recovery key in Octagon";
      v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v23];

      [v18 stopWithEvent:@"OctagonEventRemoveCustodianRecoveryKey" result:v20];
      replyCopy[2](replyCopy, v20);
    }
  }
}

- (void)preflightJoinWithCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply
{
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v24];
  v12 = v24;
  v13 = sub_100006274("octagon");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11 || v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v26 = keyCopy;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a preflightJoinWithCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v12);
  }

  else
  {
    if (v14)
    {
      uuid = [recoveryKeyCopy uuid];
      containerName = [keyCopy containerName];
      contextID = [keyCopy contextID];
      *buf = 138412802;
      v26 = uuid;
      v27 = 2112;
      v28 = containerName;
      v29 = 2112;
      v30 = contextID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "preflight join with custodian recovery key %@ invoked for container: %@, context: %@", buf, 0x20u);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityPreflightJoinWithCustodianRecoveryKey"];

    [v11 startOctagonStateMachine];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B728C;
    v21[3] = &unk_1003386E8;
    v22 = v19;
    v23 = replyCopy;
    v20 = v19;
    [v11 preflightJoinWithCustodianRecoveryKey:recoveryKeyCopy reply:v21];
  }
}

- (void)joinWithCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply
{
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v24];
  v12 = v24;
  v13 = sub_100006274("octagon");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11 || v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v26 = keyCopy;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a joinWithCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v12);
  }

  else
  {
    if (v14)
    {
      uuid = [recoveryKeyCopy uuid];
      containerName = [keyCopy containerName];
      contextID = [keyCopy contextID];
      *buf = 138412802;
      v26 = uuid;
      v27 = 2112;
      v28 = containerName;
      v29 = 2112;
      v30 = contextID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "join with custodian recovery key %@ invoked for container: %@, context: %@", buf, 0x20u);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityJoinWithCustodianRecoveryKey"];

    [v11 startOctagonStateMachine];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B7650;
    v21[3] = &unk_1003386E8;
    v22 = v19;
    v23 = replyCopy;
    v20 = v19;
    [v11 joinWithCustodianRecoveryKey:recoveryKeyCopy reply:v21];
  }
}

- (void)createCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply
{
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = keyCopy;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a createCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-custodian-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = keyCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating Custodian Recovery Key for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityCreateCustodianRecoveryKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v11 startOctagonStateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B7AC4;
      v21[3] = &unk_1003368C0;
      v22 = v16;
      v23 = replyCopy;
      [v11 rpcCreateCustodianRecoveryKeyWithUUID:uuidCopy reply:v21];

      v17 = v22;
    }

    else
    {
      v19 = sub_100006274("octagon-custodian-recovery");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot enroll recovery key in Octagon", buf, 2u);
      }

      v25 = NSLocalizedDescriptionKey;
      v26 = @"Device is considered a limited peer, cannot enroll recovery key in Octagon";
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v20];

      [v16 stopWithEvent:@"OctagonEventCreateCustodianRecoveryKey2" result:v17];
      replyCopy[2](replyCopy, 0, v17);
    }
  }
}

- (void)joinWithRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply
{
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v27 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v27];
  v12 = v27;
  v13 = sub_100006274("octagon");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11 || v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v29 = keyCopy;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a joinWithRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v12);
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v29 = keyCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "join with recovery key invoked for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityJoinWithRecoveryKey"];

    v26 = 0;
    if (SecPasswordValidatePasswordFormat())
    {
      [v11 startOctagonStateMachine];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B7EE0;
      v20[3] = &unk_100336898;
      v20[4] = self;
      v21 = v16;
      v25 = replyCopy;
      v22 = v11;
      v23 = keyCopy;
      v24 = recoveryKeyCopy;
      [v22 joinWithRecoveryKey:v24 reply:v20];
    }

    else
    {
      v17 = +[NSMutableDictionary dictionary];
      [v17 setObject:@"malformed recovery key" forKeyedSubscript:NSLocalizedDescriptionKey];
      v18 = [NSError errorWithDomain:@"com.apple.security.octagon" code:41 userInfo:v17];
      v19 = sub_100006274("SecError");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v26;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "recovery failed validation with error:%@", buf, 0xCu);
      }

      [v16 stopWithEvent:@"OctagonEventJoinRecoveryKeyValidationFailed" result:v18];
      replyCopy[2](replyCopy, v18);
    }
  }
}

- (void)createRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply
{
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v27 = 0;
  v11 = [(OTManager *)self contextForClientRPC:keyCopy error:&v27];
  v12 = v27;
  v13 = sub_100006274("octagon");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11 || v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v31 = keyCopy;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a createRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v12);
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v31 = keyCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting recovery key for arguments (%@)", buf, 0xCu);
    }

    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivitySetRecoveryKey"];

    if ([(OTManager *)self isFullPeer])
    {
      v26 = 0;
      if (SecPasswordValidatePasswordFormat())
      {
        [v11 startOctagonStateMachine];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1000B8B64;
        v23[3] = &unk_1003386E8;
        v24 = v16;
        v25 = replyCopy;
        [v11 rpcSetRecoveryKey:recoveryKeyCopy reply:v23];

        v17 = v24;
      }

      else
      {
        v21 = +[NSMutableDictionary dictionary];
        [v21 setObject:@"malformed recovery key" forKeyedSubscript:NSLocalizedDescriptionKey];
        v17 = [NSError errorWithDomain:@"com.apple.security.octagon" code:41 userInfo:v21];
        v22 = sub_100006274("SecError");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v17;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "recovery failed validation with error:%@", buf, 0xCu);
        }

        [v16 stopWithEvent:@"OctagonEventSetRecoveryKeyValidationFailed" result:v17];
        replyCopy[2](replyCopy, v17);
      }
    }

    else
    {
      v18 = sub_100006274("octagon-recovery");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device is not a full peer; cannot enroll recovery key in Octagon", buf, 2u);
      }

      v28 = NSLocalizedDescriptionKey;
      v29 = @"Device is considered a limited peer, cannot enroll recovery key in Octagon";
      v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.security.octagon" code:35 userInfo:v19];

      [v16 stopWithEvent:@"OctagonEventRecoveryKey" result:v20];
      replyCopy[2](replyCopy, v20);
    }
  }
}

- (BOOL)isFullPeer
{
  deviceInformationAdapter = [(OTManager *)self deviceInformationAdapter];
  modelID = [deviceInformationAdapter modelID];
  v4 = [OTDeviceInformation isFullPeer:modelID];

  return v4;
}

- (id)cdpContextTypes
{
  if (qword_10039DE00 != -1)
  {
    dispatch_once(&qword_10039DE00, &stru_100336820);
  }

  v3 = qword_10039DDF8;

  return v3;
}

- (void)setupAnalytics
{
  objc_initWeak(&location, self);
  logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
  v4 = SFAnalyticsSamplerIntervalOncePerReport;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B8EEC;
  v9[3] = &unk_100338610;
  objc_copyWeak(&v10, &location);
  v5 = [logger AddMultiSamplerForName:@"Octagon-healthSummary" withTimeInterval:v9 block:v4];

  logger2 = [(objc_class *)[(OTManager *)self loggerClass] logger];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BA09C;
  v8[3] = &unk_100336800;
  v8[4] = self;
  v7 = [logger2 AddMultiSamplerForName:@"CFU-healthSummary" withTimeInterval:v8 block:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)fetchSendingMetricsPermitted:(id)permitted error:(id *)error
{
  permittedCopy = permitted;
  v14 = 0;
  v7 = [(OTManager *)self contextForClientRPC:permittedCopy error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7 || v8)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = permittedCopy;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchSendingMetricsPermitted for arguments (%@): %@", buf, 0x16u);
    }

    if (error)
    {
      v12 = v9;
      v10 = 0;
      *error = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [v7 fetchSendingMetricsPermitted:error];
  }

  return v10;
}

- (BOOL)ghostbustByAgeEnabled
{
  [(OTManager *)self ensureRampsInitialized];
  gbAgeRamp = [(OTManager *)self gbAgeRamp];
  v4 = [gbAgeRamp checkRampStateWithError:0];

  return v4;
}

- (BOOL)ghostbustBySerialEnabled
{
  [(OTManager *)self ensureRampsInitialized];
  gbserialRamp = [(OTManager *)self gbserialRamp];
  v4 = [gbserialRamp checkRampStateWithError:0];

  return v4;
}

- (BOOL)ghostbustByMidEnabled
{
  [(OTManager *)self ensureRampsInitialized];
  gbmidRamp = [(OTManager *)self gbmidRamp];
  v4 = [gbmidRamp checkRampStateWithError:0];

  return v4;
}

- (void)restoreFromBottle:(id)bottle entropy:(id)entropy bottleID:(id)d reply:(id)reply
{
  bottleCopy = bottle;
  entropyCopy = entropy;
  dCopy = d;
  replyCopy = reply;
  v26 = 0;
  v14 = [(OTManager *)self contextForClientRPC:bottleCopy error:&v26];
  v15 = v26;
  v16 = v15;
  if (!v14 || v15)
  {
    v22 = sub_100006274("octagon");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = bottleCopy;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rejecting a restoreFromBottle RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v16);
  }

  else
  {
    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityBottledPeerRestore"];

    v19 = sub_100006274("octagon");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = bottleCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "restore via bottle invoked for arguments (%@)", buf, 0xCu);
    }

    [v14 startOctagonStateMachine];
    altDSID = [bottleCopy altDSID];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000BA6FC;
    v23[3] = &unk_1003386E8;
    v24 = v18;
    v25 = replyCopy;
    v21 = v18;
    [v14 joinWithBottle:dCopy entropy:entropyCopy bottleSalt:altDSID reply:v23];
  }
}

- (void)rpcVoucherWithArguments:(id)arguments configuration:(id)configuration peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig maxCapability:(id)self0 reply:(id)self1
{
  argumentsCopy = arguments;
  configurationCopy = configuration;
  dCopy = d;
  infoCopy = info;
  sigCopy = sig;
  stableInfoCopy = stableInfo;
  infoSigCopy = infoSig;
  capabilityCopy = capability;
  replyCopy = reply;
  v63 = 0;
  v23 = [(OTManager *)self contextForClientRPC:argumentsCopy error:&v63];
  v24 = v63;
  v25 = v24;
  if (v23 && !v24)
  {
    v26 = objc_alloc_init(TPECPublicKeyFactory);
    v53 = [TPPeerPermanentInfo permanentInfoWithPeerID:dCopy data:infoCopy sig:sigCopy keyFactory:v26];

    if (!v53)
    {
      v48 = sub_100006274("SecError");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "octagon-rpc-voucher: aborting pairing: unable to validate provided permanentInfo with peerID!", buf, 2u);
      }

      v25 = [NSError errorWithDomain:@"com.apple.security.octagon" code:74 description:@"Unable to validate peerID with provided permanentInfo"];
      (*(replyCopy + 2))(replyCopy, 0, 0, v25);
      goto LABEL_30;
    }

    if (!sub_1000BAF48())
    {
      goto LABEL_21;
    }

    if (!capabilityCopy)
    {
      v64 = 0;
      v65 = &v64;
      v66 = 0x2020000000;
      v27 = qword_10039DE10;
      v67 = qword_10039DE10;
      if (!qword_10039DE10)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000BB00C;
        v69 = &unk_100345B48;
        v70 = &v64;
        v28 = sub_1000BB05C();
        v29 = dlsym(v28, "KCPairingIntent_Capability_FullPeer");
        *(v70[1] + 24) = v29;
        qword_10039DE10 = *(v70[1] + 24);
        v27 = v65[3];
      }

      _Block_object_dispose(&v64, 8);
      if (!v27)
      {
        v51 = +[NSAssertionHandler currentHandler];
        v52 = [NSString stringWithUTF8String:"NSString *getKCPairingIntent_Capability_FullPeer(void)"];
        [v51 handleFailureInFunction:v52 file:@"OTManager.m" lineNumber:115 description:{@"%s", dlerror()}];

        goto LABEL_34;
      }

      capabilityCopy = *v27;
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v30 = qword_10039DE18;
    v67 = qword_10039DE18;
    if (!qword_10039DE18)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000BB10C;
      v69 = &unk_100345B48;
      v70 = &v64;
      v31 = sub_1000BB05C();
      v32 = dlsym(v31, "KCPairingIntent_Capability_LimitedPeer");
      *(v70[1] + 24) = v32;
      qword_10039DE18 = *(v70[1] + 24);
      v30 = v65[3];
    }

    _Block_object_dispose(&v64, 8);
    if (v30)
    {
      if ([capabilityCopy isEqualToString:*v30])
      {
        modelID = [v53 modelID];
        v34 = [OTDeviceInformation isFullPeer:modelID];

        if (v34)
        {
          v35 = sub_100006274("SecError");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "octagon-rpc-voucher: aborting pairing: full peer is attempting to get a voucher on a limited capability pairing context!", buf, 2u);
          }

          v25 = [NSError errorWithDomain:@"com.apple.security.octagon" code:75 description:@"full peer attempting to join limited capability pairing context"];
          (*(replyCopy + 2))(replyCopy, 0, 0, v25);
LABEL_30:

          goto LABEL_31;
        }
      }

LABEL_21:
      [v23 startOctagonStateMachine];
      v37 = [OTMetricsSessionData alloc];
      flowID = [argumentsCopy flowID];
      deviceSessionID = [argumentsCopy deviceSessionID];
      v40 = [(OTMetricsSessionData *)v37 initWithFlowID:flowID deviceSessionID:deviceSessionID];
      [v23 setSessionMetrics:v40];

      [v23 setShouldSendMetricsForOctagon:1];
      v41 = _OctagonSignpostLogSystem();
      v42 = _OctagonSignpostCreate();
      v44 = v43;

      v45 = _OctagonSignpostLogSystem();
      v46 = v45;
      if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_BEGIN, v42, "PairingChannelAcceptorVoucher", " enableTelemetry=YES ", buf, 2u);
      }

      v47 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v42;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelAcceptorVoucher  enableTelemetry=YES ", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v69) = 0;
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000BB15C;
      v57[3] = &unk_1003367D8;
      v60 = buf;
      v58 = v23;
      v61 = v42;
      v62 = v44;
      v59 = replyCopy;
      [v58 rpcVoucherWithConfiguration:dCopy permanentInfo:infoCopy permanentInfoSig:sigCopy stableInfo:stableInfoCopy stableInfoSig:infoSigCopy reply:v57];

      _Block_object_dispose(buf, 8);
      v25 = 0;
      goto LABEL_30;
    }

    v49 = +[NSAssertionHandler currentHandler];
    v50 = [NSString stringWithUTF8String:"NSString *getKCPairingIntent_Capability_LimitedPeer(void)"];
    [v49 handleFailureInFunction:v50 file:@"OTManager.m" lineNumber:116 description:{@"%s", dlerror()}];

LABEL_34:
    __break(1u);
  }

  v36 = sub_100006274("octagon");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = argumentsCopy;
    *&buf[12] = 2112;
    *&buf[14] = v25;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Rejecting a rpcVoucher RPC for arguments (%@): %@", buf, 0x16u);
  }

  (*(replyCopy + 2))(replyCopy, 0, 0, v25);
LABEL_31:
}

- (void)rpcEpochWithArguments:(id)arguments configuration:(id)configuration reply:(id)reply
{
  argumentsCopy = arguments;
  configurationCopy = configuration;
  replyCopy = reply;
  v32 = 0;
  v11 = [(OTManager *)self contextForClientRPC:argumentsCopy error:&v32];
  v12 = v32;
  v13 = v12;
  if (!v11 || v12)
  {
    v25 = sub_100006274("octagon");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = argumentsCopy;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Rejecting a rpcEpoch RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    [v11 startOctagonStateMachine];
    v14 = [OTMetricsSessionData alloc];
    flowID = [argumentsCopy flowID];
    deviceSessionID = [argumentsCopy deviceSessionID];
    v17 = [(OTMetricsSessionData *)v14 initWithFlowID:flowID deviceSessionID:deviceSessionID];
    [v11 setSessionMetrics:v17];

    [v11 setShouldSendMetricsForOctagon:1];
    v18 = _OctagonSignpostLogSystem();
    v19 = _OctagonSignpostCreate();
    v21 = v20;

    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PairingChannelAcceptorEpoch", " enableTelemetry=YES ", buf, 2u);
    }

    v24 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelAcceptorEpoch  enableTelemetry=YES ", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000BB6F0;
    v26[3] = &unk_1003367B0;
    v29 = buf;
    v27 = v11;
    v30 = v19;
    v31 = v21;
    v28 = replyCopy;
    [v27 rpcEpoch:v26];

    _Block_object_dispose(buf, 8);
  }
}

- (void)rpcJoinWithArguments:(id)arguments configuration:(id)configuration vouchData:(id)data vouchSig:(id)sig reply:(id)reply
{
  argumentsCopy = arguments;
  configurationCopy = configuration;
  dataCopy = data;
  sigCopy = sig;
  replyCopy = reply;
  v39 = 0;
  v17 = [(OTManager *)self contextForClientRPC:argumentsCopy error:&v39];
  v18 = v39;
  v19 = v18;
  if (!v17 || v18)
  {
    v31 = sub_100006274("octagon");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = argumentsCopy;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Rejecting a rpcJoinWithArguments RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v19);
  }

  else
  {
    [v17 handlePairingRestart:configurationCopy];
    [v17 startOctagonStateMachine];
    v20 = [OTMetricsSessionData alloc];
    flowID = [argumentsCopy flowID];
    deviceSessionID = [argumentsCopy deviceSessionID];
    v23 = [(OTMetricsSessionData *)v20 initWithFlowID:flowID deviceSessionID:deviceSessionID];
    [v17 setSessionMetrics:v23];

    [v17 setShouldSendMetricsForOctagon:1];
    v24 = _OctagonSignpostLogSystem();
    v25 = _OctagonSignpostCreate();
    v32 = v26;
    v27 = v25;

    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "PairingChannelInitiatorJoinOctagon", " enableTelemetry=YES ", buf, 2u);
    }

    v30 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorJoinOctagon  enableTelemetry=YES ", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v41 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000BBC44;
    v33[3] = &unk_100336788;
    v34 = v17;
    v36 = buf;
    v37 = v27;
    v38 = v32;
    v35 = replyCopy;
    [v34 rpcJoin:dataCopy vouchSig:sigCopy reply:v33];

    _Block_object_dispose(buf, 8);
  }
}

- (void)rpcPrepareIdentityAsApplicantWithArguments:(id)arguments configuration:(id)configuration reply:(id)reply
{
  argumentsCopy = arguments;
  configurationCopy = configuration;
  replyCopy = reply;
  v33 = 0;
  v11 = [(OTManager *)self contextForClientRPC:argumentsCopy error:&v33];
  v12 = v33;
  v13 = v12;
  if (!v11 || v12)
  {
    v26 = sub_100006274("octagon");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = argumentsCopy;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Rejecting a rpcPrepareIdentityAsApplicant RPC for arguments (%@): %@", buf, 0x16u);
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0, 0, v13);
  }

  else
  {
    [v11 handlePairingRestart:configurationCopy];
    [v11 startOctagonStateMachine];
    v14 = _OctagonSignpostLogSystem();
    v15 = _OctagonSignpostCreate();
    v17 = v16;

    v18 = _OctagonSignpostLogSystem();
    v19 = v18;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PairingChannelInitiatorPrepare", " enableTelemetry=YES ", buf, 2u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorPrepare  enableTelemetry=YES ", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v35 = 0;
    v21 = [OTMetricsSessionData alloc];
    flowID = [argumentsCopy flowID];
    deviceSessionID = [argumentsCopy deviceSessionID];
    v24 = [(OTMetricsSessionData *)v21 initWithFlowID:flowID deviceSessionID:deviceSessionID];
    [v11 setSessionMetrics:v24];

    [v11 setShouldSendMetricsForOctagon:1];
    epoch = [configurationCopy epoch];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000BC17C;
    v27[3] = &unk_100336760;
    v30 = buf;
    v28 = v11;
    v31 = v15;
    v32 = v17;
    v29 = replyCopy;
    [v28 rpcPrepareIdentityAsApplicantWithConfiguration:configurationCopy epoch:epoch reply:v27];

    _Block_object_dispose(buf, 8);
  }
}

- (void)trustedFullPeers:(id)peers reply:(id)reply
{
  peersCopy = peers;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:peersCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = peersCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a trustedFullPeers RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    [v8 rpcFetchCountOfTrustedFullPeers:replyCopy];
  }
}

- (void)totalTrustedPeers:(id)peers reply:(id)reply
{
  peersCopy = peers;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:peersCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = peersCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a totalTrustedPeers RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    [v8 rpcFetchTotalCountOfTrustedPeers:replyCopy];
  }
}

- (void)fetchEscrowContents:(id)contents reply:(id)reply
{
  contentsCopy = contents;
  replyCopy = reply;
  v18 = 0;
  v8 = [(OTManager *)self contextForClientRPC:contentsCopy error:&v18];
  v9 = v18;
  v10 = v9;
  if (!v8 || v9)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = contentsCopy;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchEscrowContents RPC for arguments (%@): %@", buf, 0x16u);
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v10);
  }

  else
  {
    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v12 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityFetchEscrowContents"];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BC80C;
    v15[3] = &unk_100336738;
    v16 = v12;
    v17 = replyCopy;
    v13 = v12;
    [v8 fetchEscrowContents:v15];
  }
}

- (void)fetchAllViableBottles:(id)bottles source:(int64_t)source reply:(id)reply
{
  bottlesCopy = bottles;
  replyCopy = reply;
  v20 = 0;
  v10 = [(OTManager *)self contextForClientRPC:bottlesCopy error:&v20];
  v11 = v20;
  v12 = v11;
  if (!v10 || v11)
  {
    v16 = sub_100006274("octagon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = bottlesCopy;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchAllViableBottles RPC for arguments (%@): %@", buf, 0x16u);
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, v12);
  }

  else
  {
    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v14 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityFetchAllViableBottles"];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000BCAB8;
    v17[3] = &unk_100336710;
    v18 = v14;
    v19 = replyCopy;
    v15 = v14;
    [v10 rpcFetchAllViableBottlesFromSource:source reply:v17];
  }
}

- (void)peerDeviceNamesByPeerID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:dCopy error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = dCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a peerDeviceNamesByPeerID RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    [v8 fetchTrustedDeviceNamesByPeerID:replyCopy];
  }
}

- (void)removeFriendsInClique:(id)clique peerIDs:(id)ds reply:(id)reply
{
  cliqueCopy = clique;
  dsCopy = ds;
  replyCopy = reply;
  v21 = 0;
  v11 = [(OTManager *)self contextForClientRPC:cliqueCopy error:&v21];
  v12 = v21;
  v13 = v12;
  if (!v11 || v12)
  {
    v17 = sub_100006274("octagon");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = cliqueCopy;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Rejecting a removeFriendsInClique RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v15 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityRemoveFriendsInClique"];

    [v11 startOctagonStateMachine];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000BCEA0;
    v18[3] = &unk_1003386E8;
    v19 = v15;
    v20 = replyCopy;
    v16 = v15;
    [v11 rpcRemoveFriendsInClique:dsCopy reply:v18];
  }
}

- (void)leaveClique:(id)clique reply:(id)reply
{
  cliqueCopy = clique;
  replyCopy = reply;
  v18 = 0;
  v8 = [(OTManager *)self contextForClientRPC:cliqueCopy error:&v18];
  v9 = v18;
  v10 = v9;
  if (!v8 || v9)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = cliqueCopy;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a leaveClique RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v12 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityLeaveClique"];

    [v8 startOctagonStateMachine];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BD0F0;
    v15[3] = &unk_1003386E8;
    v16 = v12;
    v17 = replyCopy;
    v13 = v12;
    [v8 rpcLeaveClique:v15];
  }
}

- (void)establish:(id)establish reply:(id)reply
{
  establishCopy = establish;
  replyCopy = reply;
  v19 = 0;
  v8 = [(OTManager *)self contextForClientRPC:establishCopy error:&v19];
  v9 = v19;
  v10 = v9;
  if (!v8 || v9)
  {
    v15 = sub_100006274("octagon");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = establishCopy;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rejecting a establish RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v12 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityEstablish"];

    [v8 startOctagonStateMachine];
    altDSID = [establishCopy altDSID];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BD358;
    v16[3] = &unk_1003386E8;
    v17 = v12;
    v18 = replyCopy;
    v14 = v12;
    [v8 rpcEstablish:altDSID reply:v16];
  }
}

- (void)resetAndEstablish:(id)establish resetReason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s accountSettings:(id)settings isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)self0 reply:(id)self1
{
  sCopy = s;
  establishCopy = establish;
  contextCopy = context;
  passwordCopy = password;
  settingsCopy = settings;
  replyCopy = reply;
  v42 = 0;
  v21 = [(OTManager *)self contextForClientRPC:establishCopy error:&v42];
  v22 = v42;
  v23 = v22;
  if (!v21 || v22)
  {
    v34 = sub_100006274("octagon");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = establishCopy;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Rejecting a resetAndEstablish RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v23);
  }

  else
  {
    [(objc_class *)[(OTManager *)self loggerClass] logger];
    v24 = v37 = sCopy;
    v36 = [v24 startLogSystemMetricsForActivityNamed:@"OctagonActivityResetAndEstablish"];

    v25 = [OTMetricsSessionData alloc];
    [establishCopy flowID];
    v26 = replyCopy;
    v27 = settingsCopy;
    v28 = passwordCopy;
    v30 = v29 = contextCopy;
    deviceSessionID = [establishCopy deviceSessionID];
    v32 = [(OTMetricsSessionData *)v25 initWithFlowID:v30 deviceSessionID:deviceSessionID];
    [v21 setSessionMetrics:v32];

    contextCopy = v29;
    passwordCopy = v28;
    settingsCopy = v27;
    replyCopy = v26;
    [v21 setShouldSendMetricsForOctagon:1];
    [v21 startOctagonStateMachine];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000BDAE4;
    v39[3] = &unk_1003386E8;
    v40 = v36;
    v41 = v26;
    v33 = v36;
    LOBYTE(v35) = w;
    [v21 rpcResetAndEstablish:reason idmsTargetContext:contextCopy idmsCuttlefishPassword:passwordCopy notifyIdMS:v37 accountSettings:settingsCopy isGuitarfish:guitarfish accountIsW:v35 reply:v39];
  }
}

- (void)resetAndEstablish:(id)establish resetReason:(int64_t)reason isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w reply:(id)reply
{
  BYTE1(v7) = w;
  LOBYTE(v7) = guitarfish;
  [(OTManager *)self resetAndEstablish:establish resetReason:reason idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:v7 accountIsW:reply reply:?];
}

- (void)startOctagonStateMachine:(id)machine reply:(id)reply
{
  machineCopy = machine;
  v13 = 0;
  replyCopy = reply;
  v8 = [(OTManager *)self contextForClientRPC:machineCopy error:&v13];
  v9 = v13;
  v10 = sub_100006274("octagon");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v15 = machineCopy;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Rejecting a startOctagonStateMachine RPC for arguments (%@): %@", buf, 0x16u);
    }

    v12 = v9;
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v15 = machineCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received a start-state-machine RPC for arguments (%@)", buf, 0xCu);
    }

    [v8 startOctagonStateMachine];
    v12 = 0;
  }

  (replyCopy)[2](replyCopy, v12);
}

- (void)status:(id)status xpcFd:(id)fd reply:(id)reply
{
  statusCopy = status;
  fdCopy = fd;
  replyCopy = reply;
  v18 = 0;
  v11 = [(OTManager *)self contextForClientRPC:statusCopy createIfMissing:0 error:&v18];
  v12 = v18;
  v13 = sub_100006274("octagon");
  v14 = v13;
  if (!v11 || v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = statusCopy;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a status RPC for arguments(%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v12);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v20 = statusCopy;
      v21 = 2112;
      v22 = v11;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received a status RPC for arguments (%@): %@", buf, 0x16u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BDF28;
    v15[3] = &unk_1003390F8;
    v16 = statusCopy;
    v17 = replyCopy;
    [v11 rpcStatus:fdCopy reply:v15];
  }
}

- (void)fetchCliqueStatus:(id)status configuration:(id)configuration reply:(id)reply
{
  statusCopy = status;
  configurationCopy = configuration;
  replyCopy = reply;
  v17 = 0;
  v11 = [(OTManager *)self contextForClientRPC:statusCopy createIfMissing:0 error:&v17];
  v12 = v17;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = statusCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchCliqueStatus RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, -1, v13);
  }

  else
  {
    if (!configurationCopy)
    {
      configurationCopy = objc_alloc_init(OTOperationConfiguration);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BE1F4;
    v15[3] = &unk_1003366E8;
    v16 = replyCopy;
    [v11 rpcTrustStatus:configurationCopy reply:v15];
  }
}

- (void)fetchTrustStatus:(id)status configuration:(id)configuration reply:(id)reply
{
  statusCopy = status;
  configurationCopy = configuration;
  replyCopy = reply;
  v17 = 0;
  v11 = [(OTManager *)self contextForClientRPC:statusCopy error:&v17];
  v12 = v17;
  v13 = sub_100006274("octagon");
  v14 = v13;
  if (!v11 || v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = statusCopy;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchTrustStatus RPC for arguments (%@): %@", buf, 0x16u);
    }

    (*(replyCopy + 2))(replyCopy, -1, 0, 0, 0, v12);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = statusCopy;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received a trust status for arguments (%@)", buf, 0xCu);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BE410;
    v15[3] = &unk_1003366E8;
    v16 = replyCopy;
    [v11 rpcTrustStatus:configurationCopy reply:v15];
  }
}

- (void)fetchEgoPeerID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v14 = 0;
  v8 = [(OTManager *)self contextForClientRPC:dCopy error:&v14];
  v9 = v14;
  v10 = sub_100006274("octagon");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v16 = dCopy;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchEgoPeerID RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0, v9);
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received a fetch peer ID for arguments (%@)", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BE764;
    v12[3] = &unk_100337D88;
    v13 = replyCopy;
    [v8 rpcFetchEgoPeerID:v12];
  }
}

- (void)clearAllContexts
{
  contexts = [(OTManager *)self contexts];

  if (contexts)
  {
    queue = [(OTManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BE880;
    block[3] = &unk_100346018;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (id)contextForClientRPC:(id)c createIfMissing:(BOOL)missing allowNonPrimaryAccounts:(BOOL)accounts error:(id *)error
{
  accountsCopy = accounts;
  missingCopy = missing;
  cCopy = c;
  personaAdapter = [(OTManager *)self personaAdapter];
  currentThreadIsForPrimaryiCloudAccount = [personaAdapter currentThreadIsForPrimaryiCloudAccount];

  deviceInformationAdapter = [(OTManager *)self deviceInformationAdapter];
  isHomePod = [deviceInformationAdapter isHomePod];

  if (!isHomePod)
  {
    v40 = missingCopy;
    v41 = accountsCopy;
    errorCopy = error;
    accountsAdapter = [(OTManager *)self accountsAdapter];
    personaAdapter2 = [(OTManager *)self personaAdapter];
    altDSID = [cCopy altDSID];
    containerName = [cCopy containerName];
    v42 = cCopy;
    contextID = [cCopy contextID];
    v43 = 0;
    v24 = [accountsAdapter findAccountForCurrentThread:personaAdapter2 optionalAltDSID:altDSID cloudkitContainerName:containerName octagonContextID:contextID error:&v43];
    v25 = v43;

    v26 = v24;
    if (v24 && !v25)
    {
      if (v41 || ([v24 isPrimaryAccount] & 1) != 0)
      {
        v17 = [(OTManager *)self contextForClientRPCWithActiveAccount:v24 createIfMissing:v40 allowNonPrimaryAccounts:v41 error:errorCopy];
        cCopy = v42;
LABEL_34:

        goto LABEL_35;
      }

      v35 = sub_100006274("octagon-account");
      cCopy = v42;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Rejecting finding a OTCuttlefishContext for non-primary account (on primary persona)", buf, 2u);
      }

      if (errorCopy)
      {
        [NSError errorWithDomain:@"com.apple.security.octagon" code:29 description:@"Octagon APIs do not support non-primary accounts"];
        *errorCopy = v17 = 0;
        goto LABEL_34;
      }

LABEL_33:
      v17 = 0;
      goto LABEL_34;
    }

    cCopy = v42;
    if (currentThreadIsForPrimaryiCloudAccount)
    {
      altDSID2 = [v42 altDSID];
      if (altDSID2 || ([v42 containerName], altDSID2 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(altDSID2, "isEqualToString:", @"com.apple.security.keychain")))
      {
      }

      else
      {
        contextID2 = [v42 contextID];
        v29 = [contextID2 isEqualToString:@"defaultContext"];

        if (v29)
        {
          v30 = sub_100006274("octagon-account");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v45 = v42;
            v46 = 2112;
            v47 = v25;
            _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Cannot find an account matching primary persona/altDSID, allowing default context return: %@ %@", buf, 0x16u);
          }

          containerName2 = [v42 containerName];
          contextID3 = [v42 contextID];
          v17 = [(OTManager *)self contextForContainerName:containerName2 contextID:contextID3];

          goto LABEL_34;
        }
      }
    }

    if (!errorCopy)
    {
      goto LABEL_33;
    }

    if (v25)
    {
      v34 = v25;
      *errorCopy = v25;
    }

    else
    {
      v36 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
      *errorCopy = v36;
      if (!v36)
      {
        goto LABEL_33;
      }
    }

    v37 = sub_100006274("octagon-account");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *errorCopy;
      *buf = 138412546;
      v45 = v42;
      v46 = 2112;
      v47 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Cannot find an account matching: %@ %@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  if (currentThreadIsForPrimaryiCloudAccount)
  {
    containerName3 = [cCopy containerName];
    contextID4 = [cCopy contextID];
    v17 = [(OTManager *)self contextForContainerName:containerName3 contextID:contextID4];
  }

  else
  {
    v33 = sub_100006274("octagon-account");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Rejecting non-primary request on HomePod", buf, 2u);
    }

    if (error)
    {
      [NSError errorWithDomain:@"com.apple.security.octagon" code:60 description:@"Non-primary personas not supported on this platform"];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

LABEL_35:

  return v17;
}

- (id)contextForClientRPCWithActiveAccount:(id)account createIfMissing:(BOOL)missing allowNonPrimaryAccounts:(BOOL)accounts error:(id *)error
{
  missingCopy = missing;
  accountCopy = account;
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if ((byte_10039E100 & 1) != 0 || ([accountCopy isPrimaryAccount] & 1) == 0)
  {
    v8 = sub_100006274("octagon-account");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = accountCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finding a context for user: %@", buf, 0xCu);
    }
  }

  cloudkitContainerName = [accountCopy cloudkitContainerName];
  [accountCopy octagonContextID];
  v10 = v9 = accountCopy;
  sosAdapter = [(OTManager *)self sosAdapter];
  accountsAdapter = [(OTManager *)self accountsAdapter];
  authKitAdapter = [(OTManager *)self authKitAdapter];
  tooManyPeersAdapter = [(OTManager *)self tooManyPeersAdapter];
  tapToRadarAdapter = [(OTManager *)self tapToRadarAdapter];
  lockStateTracker = [(OTManager *)self lockStateTracker];
  deviceInformationAdapter = [(OTManager *)self deviceInformationAdapter];
  v29 = v9;
  v18 = [(OTManager *)self contextForContainerName:cloudkitContainerName contextID:v10 possibleAccount:v9 createIfMissing:missingCopy sosAdapter:sosAdapter accountsAdapter:accountsAdapter authKitAdapter:authKitAdapter tooManyPeersAdapter:tooManyPeersAdapter tapToRadarAdapter:tapToRadarAdapter lockStateTracker:lockStateTracker deviceInformationAdapter:deviceInformationAdapter];

  if (error && !v18)
  {
    *error = [NSError errorWithDomain:@"com.apple.security.octagon" code:31 description:@"Context does not exist"];
  }

  activeAccount = [v18 activeAccount];
  if (activeAccount)
  {
    v20 = activeAccount;
    activeAccount2 = [v18 activeAccount];
    v22 = [activeAccount2 isEqual:v29];

    if ((v22 & 1) == 0)
    {
      v23 = sub_100006274("octagon-account");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        activeAccount3 = [v18 activeAccount];
        *buf = 138412546;
        v31 = v29;
        v32 = 2112;
        v33 = activeAccount3;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Context for user(%@) is for user(%@) instead", buf, 0x16u);
      }
    }
  }

  return v18;
}

- (id)contextForContainerName:(id)name contextID:(id)d possibleAccount:(id)account
{
  accountCopy = account;
  dCopy = d;
  nameCopy = name;
  sosAdapter = [(OTManager *)self sosAdapter];
  accountsAdapter = [(OTManager *)self accountsAdapter];
  authKitAdapter = [(OTManager *)self authKitAdapter];
  tooManyPeersAdapter = [(OTManager *)self tooManyPeersAdapter];
  tapToRadarAdapter = [(OTManager *)self tapToRadarAdapter];
  lockStateTracker = [(OTManager *)self lockStateTracker];
  deviceInformationAdapter = [(OTManager *)self deviceInformationAdapter];
  v16 = [(OTManager *)self contextForContainerName:nameCopy contextID:dCopy possibleAccount:accountCopy createIfMissing:1 sosAdapter:sosAdapter accountsAdapter:accountsAdapter authKitAdapter:authKitAdapter tooManyPeersAdapter:tooManyPeersAdapter tapToRadarAdapter:tapToRadarAdapter lockStateTracker:lockStateTracker deviceInformationAdapter:deviceInformationAdapter];

  return v16;
}

- (id)contextForContainerName:(id)name contextID:(id)d possibleAccount:(id)account createIfMissing:(BOOL)missing sosAdapter:(id)adapter accountsAdapter:(id)accountsAdapter authKitAdapter:(id)kitAdapter tooManyPeersAdapter:(id)self0 tapToRadarAdapter:(id)self1 lockStateTracker:(id)self2 deviceInformationAdapter:(id)self3
{
  nameCopy = name;
  dCopy = d;
  accountCopy = account;
  v19 = nameCopy;
  v41 = accountCopy;
  adapterCopy = adapter;
  accountsAdapterCopy = accountsAdapter;
  kitAdapterCopy = kitAdapter;
  peersAdapterCopy = peersAdapter;
  radarAdapterCopy = radarAdapter;
  trackerCopy = tracker;
  informationAdapterCopy = informationAdapter;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1000B8394;
  v63 = sub_1000B83A4;
  v64 = 0;
  if (!nameCopy)
  {
    v19 = @"com.apple.security.keychain";
    v23 = @"com.apple.security.keychain";
  }

  queue = [(OTManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BF93C;
  block[3] = &unk_1003366C0;
  v46 = v19;
  v47 = dCopy;
  missingCopy = missing;
  selfCopy = self;
  v49 = v41;
  v50 = accountsAdapterCopy;
  v51 = adapterCopy;
  v52 = kitAdapterCopy;
  v53 = peersAdapterCopy;
  v54 = radarAdapterCopy;
  v55 = trackerCopy;
  v56 = informationAdapterCopy;
  v57 = &v59;
  v44 = informationAdapterCopy;
  v39 = trackerCopy;
  v34 = radarAdapterCopy;
  v36 = peersAdapterCopy;
  v24 = kitAdapterCopy;
  v25 = adapterCopy;
  v26 = accountsAdapterCopy;
  v27 = v41;
  v28 = dCopy;
  v29 = v19;
  dispatch_sync(queue, block);

  v30 = v60[5];
  _Block_object_dispose(&v59, 8);

  return v30;
}

- (void)cancelPendingOperations
{
  savedTLKNotifier = [(OTManager *)self savedTLKNotifier];
  [savedTLKNotifier cancel];
}

- (id)restartCKKSAccountSyncWithoutSettingPolicy:(id)policy
{
  policyCopy = policy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000B8394;
  v17 = sub_1000B83A4;
  v18 = 0;
  queue = [(OTManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0010;
  block[3] = &unk_100344920;
  block[4] = self;
  v6 = policyCopy;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(queue, block);

  if (v14[5])
  {
    v7 = [(OTManager *)self restartOctagonContext:?];
    ckks = [v7 ckks];
  }

  else
  {
    v7 = sub_100019104(@"ckkstests", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not find a parent OTCuttlefishContext for view: %@", buf, 0xCu);
    }

    ckks = 0;
  }

  _Block_object_dispose(&v13, 8);

  return ckks;
}

- (id)restartOctagonContext:(id)context
{
  contextCopy = context;
  ckks = [contextCopy ckks];
  viewAllowList = [ckks viewAllowList];
  containerName = [contextCopy containerName];
  contextID = [contextCopy contextID];

  v21 = ckks;
  operationDependencies = [ckks operationDependencies];
  activeAccount = [operationDependencies activeAccount];

  [(OTManager *)self removeContextForContainerName:containerName contextID:contextID];
  sosAdapter = [(OTManager *)self sosAdapter];
  accountsAdapter = [(OTManager *)self accountsAdapter];
  authKitAdapter = [(OTManager *)self authKitAdapter];
  tooManyPeersAdapter = [(OTManager *)self tooManyPeersAdapter];
  tapToRadarAdapter = [(OTManager *)self tapToRadarAdapter];
  lockStateTracker = [(OTManager *)self lockStateTracker];
  deviceInformationAdapter = [(OTManager *)self deviceInformationAdapter];
  v16 = [(OTManager *)self contextForContainerName:containerName contextID:contextID possibleAccount:activeAccount createIfMissing:1 sosAdapter:sosAdapter accountsAdapter:accountsAdapter authKitAdapter:authKitAdapter tooManyPeersAdapter:tooManyPeersAdapter tapToRadarAdapter:tapToRadarAdapter lockStateTracker:lockStateTracker deviceInformationAdapter:deviceInformationAdapter];

  if (viewAllowList)
  {
    ckks2 = [v16 ckks];
    [ckks2 setSyncingViewsAllowList:viewAllowList];
  }

  return v16;
}

- (id)ckksAccountSyncForContainer:(id)container contextID:(id)d possibleAccount:(id)account
{
  v5 = [(OTManager *)self contextForContainerName:container contextID:d possibleAccount:account];
  if (!v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No context for container/contextID", v9, 2u);
    }
  }

  ckks = [v5 ckks];

  return ckks;
}

- (void)removeContextForContainerName:(id)name contextID:(id)d
{
  nameCopy = name;
  dCopy = d;
  queue = [(OTManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0590;
  block[3] = &unk_100343C28;
  v12 = nameCopy;
  v13 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  v10 = nameCopy;
  dispatch_sync(queue, block);
}

- (NSXPCProxyCreating)cuttlefishXPCConnection
{
  cuttlefishXPCConnection = self->_cuttlefishXPCConnection;
  if (!cuttlefishXPCConnection)
  {
    selfCopy = self;
    v16 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.TrustedPeersHelper"];
    v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TrustedPeersHelperProtocol];
    if (qword_10039E2E0 != -1)
    {
      dispatch_once(&qword_10039E2E0, &stru_1003448C8);
    }

    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v5 = [NSArray arrayWithObjects:v39 count:2];
    v28 = [NSSet setWithArray:v5];

    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v38 count:2];
    v30 = [NSSet setWithArray:v6];

    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v37 count:2];
    v29 = [NSSet setWithArray:v7];

    v26 = [NSSet setWithObject:objc_opt_class()];
    v27 = [NSSet setWithObject:objc_opt_class()];
    v24 = [NSSet setWithObject:objc_opt_class()];
    v23 = [NSSet setWithObject:objc_opt_class()];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v36 count:2];
    v22 = [NSSet setWithArray:v8];

    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v35[3] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v35 count:4];
    v25 = [NSSet setWithArray:v9];

    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v34 count:2];
    v21 = [NSSet setWithArray:v10];

    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v33 count:2];
    v20 = [NSSet setWithArray:v11];

    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v32 count:2];
    v19 = [NSSet setWithArray:v12];

    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v31 count:2];
    v18 = [NSSet setWithArray:v13];

    [v4 setXPCType:&_xpc_type_fd forSelector:"dumpWithSpecificUser:fileDescriptor:reply:" argumentIndex:1 ofReply:0];
    [v4 setClasses:qword_10039E2D8 forSelector:"dumpWithSpecificUser:fileDescriptor:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"honorIDMSListChangesForSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"octagonPeerIDGivenBottleIDWithSpecificUser:bottleID:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"trustedDeviceNamesByPeerIDWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"departByDistrustingSelfWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"distrustPeerIDsWithSpecificUser:peerIDs:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"dropPeerIDsWithSpecificUser:peerIDs:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"trustStatusWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"resetWithSpecificUser:resetReason:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:isGuitarfish:accountIsW:accountType:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"performCKServerUnreadableDataRemovalWithSpecificUser:isGuitarfish:accountIsW:internalAccount:demoAccount:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"localResetWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"setAllowedMachineIDsWithSpecificUser:allowedMachineIDs:userInitiatedRemovals:evictedRemovals:unknownReasonRemovals:honorIDMSListChanges:version:flowID:deviceSessionID:canSendMetrics:altDSID:trustedDeviceHash:deletedDeviceHash:trustedDevicesUpdateTimestamp:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"markTrustedDeviceListFetchFailed:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchAllowedMachineIDsWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchEgoEpochWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"prepareWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:setting:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:reply:" argumentIndex:6 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:"preflightVouchWithBottleWithSpecificUser:bottleID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:"preflightVouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"preflightPreapprovedJoinWithSpecificUser:preapprovedKeys:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:"setPreapprovedKeysWithSpecificUser:preapprovedKeys:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchViableBottlesWithSpecificUser:source:flowID:deviceSessionID:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchViableEscrowRecordsWithSpecificUser:source:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchEscrowContentsWithSpecificUser:reply:" argumentIndex:3 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchPolicyDocumentsWithSpecificUser:versions:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchRecoverableTLKSharesWithSpecificUser:peerID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchCurrentPolicyWithSpecificUser:modelIDOverride:isInheritedAccount:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"removeCustodianRecoveryKeyWithSpecificUser:uuid:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:? argumentIndex:? ofReply:?];
    [v4 setClasses:qword_10039E2D8 forSelector:"getSupportAppInfoWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"resetAccountCDPContentsWithSpecificUser:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"removeEscrowCacheWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchAccountSettingsWithSpecificUser:forceFetch:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"isRecoveryKeySet:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"removeRecoveryKey:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"performATOPRVActionsWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"testSemaphoreWithSpecificUser:arg:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"preflightRecoverOctagonUsingRecoveryKey:recoveryKey:salt:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchTrustedPeerCountWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchTrustedFullPeerCountWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"octagonContainsDistrustedRecoveryKeysWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:qword_10039E2D8 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:v25 forSelector:"fetchAccountSettingsWithSpecificUser:forceFetch:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v29 forSelector:"fetchRecoverableTLKSharesWithSpecificUser:peerID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v28 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:0];
    [v4 setClasses:v30 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:0];
    [v4 setClasses:v29 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:v28 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:0];
    [v4 setClasses:v30 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:4 ofReply:0];
    [v4 setClasses:v29 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:v28 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:0];
    [v4 setClasses:v30 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:0];
    [v4 setClasses:v29 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:v28 forSelector:"vouchWithSpecificUser:peerID:permanentInfo:permanentInfoSig:stableInfo:stableInfoSig:ckksKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:6 ofReply:0];
    [v4 setClasses:v30 forSelector:"vouchWithBottleWithSpecificUser:bottleID:entropy:bottleSalt:tlkShares:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:4 ofReply:0];
    [v4 setClasses:v30 forSelector:"vouchWithBottleWithSpecificUser:bottleID:entropy:bottleSalt:tlkShares:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:v28 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:3 ofReply:0];
    [v4 setClasses:v29 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v28 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:3 ofReply:0];
    [v4 setClasses:v29 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v30 forSelector:"vouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:tlkShares:reply:" argumentIndex:3 ofReply:0];
    [v4 setClasses:v30 forSelector:"vouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:tlkShares:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:v30 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:0];
    [v4 setClasses:v30 forSelector:"vouchWithRerollWithSpecificUser:oldPeerID:tlkShares:reply:" argumentIndex:2 ofReply:0];
    [v4 setClasses:v29 forSelector:"prepareInheritancePeerWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:crk:reply:" argumentIndex:7 ofReply:1];
    [v4 setClasses:v30 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:1];
    [v4 setClasses:v30 forSelector:"recoverTLKSharesForInheritorWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:0];
    [v4 setClasses:v30 forSelector:"recoverTLKSharesForInheritorWithSpecificUser:crk:tlkShares:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v27 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:v27 forSelector:"preflightVouchWithCustodianRecoveryKeyWithSpecificUser:crk:reply:" argumentIndex:1 ofReply:0];
    [v4 setClasses:v27 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:1 ofReply:0];
    [v4 setClasses:v27 forSelector:"findCustodianRecoveryKeyWithSpecificUser:uuid:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v24 forSelector:"requestHealthCheckWithSpecificUser:requiresEscrowCheck:repair:danglingPeerCleanup:caesarPeerCleanup:updateIdMS:knownFederations:flowID:deviceSessionID:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v23 forSelector:"requestEscrowCheckWithSpecificUser:requiresEscrowCheck:passcodeGeneration:knownFederations:isBackgroundCheck:flowID:deviceSessionID:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v26 forSelector:"updateWithSpecificUser:forceRefetch:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:walrusSetting:webAccess:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v26 forSelector:"fetchTrustStateWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v22 forSelector:"fetchTrustStateWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:v28 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:1 ofReply:0];
    [v4 setClasses:v30 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:2 ofReply:0];
    [v4 setClasses:v29 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v19 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:1 ofReply:0];
    [v4 setClasses:v18 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v29 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:1 ofReply:1];
    [v4 setClasses:v21 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:1 ofReply:0];
    [v4 setClasses:v20 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:0 ofReply:1];
    [v4 setClasses:v29 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:1 ofReply:1];

    [v16 setRemoteObjectInterface:v4];
    [v16 resume];
    v14 = selfCopy->_cuttlefishXPCConnection;
    selfCopy->_cuttlefishXPCConnection = v16;

    cuttlefishXPCConnection = selfCopy->_cuttlefishXPCConnection;
  }

  return cuttlefishXPCConnection;
}

- (void)notifyIDMSTrustLevelChangeForAltDSID:(id)d reply:(id)reply
{
  dCopy = d;
  v14 = 0;
  replyCopy = reply;
  v8 = [(OTManager *)self contextForClientRPC:dCopy error:&v14];
  v9 = v14;
  v10 = sub_100006274("octagon");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v16 = dCopy;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Rejecting a IDMS trust level change RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v9);
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received a notification of IDMS trust level change in %@", buf, 0xCu);
    }

    v13 = 0;
    [v8 idmsTrustLevelChanged:&v13];
    v12 = v13;
    replyCopy[2](replyCopy, v12);

    replyCopy = v12;
  }
}

- (void)appleAccountSignedOut:(id)out reply:(id)reply
{
  outCopy = out;
  replyCopy = reply;
  v28 = outCopy;
  altDSID = [outCopy altDSID];

  if (altDSID)
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = outCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "signing out of octagon trust: %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = sub_1000B8394;
    v40 = sub_1000B83A4;
    v41 = 0;
    queue = [(OTManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C1E10;
    block[3] = &unk_100344E90;
    block[4] = self;
    block[5] = &buf;
    dispatch_sync(queue, block);

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = *(*(&buf + 1) + 40);
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v10)
    {
      v11 = 0;
      v12 = *v30;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          altDSID2 = [v28 altDSID];
          activeAccount = [v14 activeAccount];
          altDSID3 = [activeAccount altDSID];
          v18 = [altDSID2 isEqualToString:altDSID3];

          if (v18)
          {
            v19 = sub_100006274("octagon");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *v34 = 138412290;
              v35 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "signing out of octagon trust for context: %@", v34, 0xCu);
            }

            logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
            v21 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityAccountNotAvailable"];

            [v14 accountNoLongerAvailable];
            [v21 stopWithEvent:@"OctagonEventSignOut" result:0];

            v11 = 1;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v10);

      if (v11)
      {
        replyCopy[2](replyCopy, 0);
LABEL_24:
        _Block_object_dispose(&buf, 8);

        goto LABEL_25;
      }
    }

    else
    {
    }

    v24 = sub_100006274("octagon");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to find a context to sign out.", v34, 2u);
    }

    v25 = [NSError errorWithDomain:@"com.apple.security.octagon" code:31 description:@"Couldn't find a context with this altDSID"];
    (replyCopy)[2](replyCopy, v25);

    goto LABEL_24;
  }

  v22 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = outCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "rejecting a signout RPC due to missing altDSID: %@", &buf, 0xCu);
  }

  v23 = [NSError errorWithDomain:@"com.apple.security.octagon" code:29 description:@"Must provide an altDSID to sign out"];
  (replyCopy)[2](replyCopy, v23);

LABEL_25:
}

- (void)appleAccountSignedIn:(id)in reply:(id)reply
{
  inCopy = in;
  v19 = 0;
  replyCopy = reply;
  v8 = [(OTManager *)self contextForClientRPC:inCopy error:&v19];
  v9 = v19;
  v10 = v9;
  if (!v8 || v9)
  {
    v17 = sub_100006274("octagon");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = inCopy;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Rejecting a signin RPC for arguments (%@): %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    logger = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v12 = [logger startLogSystemMetricsForActivityNamed:@"OctagonActivityAccountAvailable"];

    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      altDSID = [inCopy altDSID];
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = altDSID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "signing in %@ for altDSID: %@", buf, 0x16u);
    }

    altDSID2 = [inCopy altDSID];
    v18 = 0;
    [v8 accountAvailable:altDSID2 error:&v18];
    v16 = v18;

    [v12 stopWithEvent:@"OctagonEventSignIn" result:v16];
    replyCopy[2](replyCopy, v16);

    replyCopy = v12;
  }
}

- (void)ensureRampsInitialized
{
  v3 = +[CKKSViewManager manager];
  container = [v3 container];

  privateCloudDatabase = [container privateCloudDatabase];
  v5 = [[CKRecordZoneID alloc] initWithZoneName:@"metadata_zone" ownerName:CKCurrentUserDefaultName];
  v6 = +[CKKSViewManager manager];
  accountTracker = [v6 accountTracker];

  v8 = +[CKKSViewManager manager];
  reachabilityTracker = [v8 reachabilityTracker];

  v10 = +[CKKSViewManager manager];
  lockStateTracker = [v10 lockStateTracker];

  gbmidRamp = [(OTManager *)self gbmidRamp];

  if (!gbmidRamp)
  {
    v13 = [[OTRamp alloc] initWithRecordName:@"metadata_rampstate_ghostBustMID" localSettingName:@"ghostBustMID" container:container database:privateCloudDatabase zoneID:v5 accountTracker:accountTracker lockStateTracker:lockStateTracker reachabilityTracker:reachabilityTracker fetchRecordRecordsOperationClass:objc_opt_class()];
    [(OTManager *)self setGbmidRamp:v13];
  }

  gbserialRamp = [(OTManager *)self gbserialRamp];

  if (!gbserialRamp)
  {
    v15 = [[OTRamp alloc] initWithRecordName:@"metadata_rampstate_ghostBustSerial" localSettingName:@"ghostBustSerial" container:container database:privateCloudDatabase zoneID:v5 accountTracker:accountTracker lockStateTracker:lockStateTracker reachabilityTracker:reachabilityTracker fetchRecordRecordsOperationClass:objc_opt_class()];
    [(OTManager *)self setGbserialRamp:v15];
  }

  gbAgeRamp = [(OTManager *)self gbAgeRamp];

  if (!gbAgeRamp)
  {
    v17 = [[OTRamp alloc] initWithRecordName:@"metadata_rampstate_ghostBustAge" localSettingName:@"ghostBustAge" container:container database:privateCloudDatabase zoneID:v5 accountTracker:accountTracker lockStateTracker:lockStateTracker reachabilityTracker:reachabilityTracker fetchRecordRecordsOperationClass:objc_opt_class()];
    [(OTManager *)self setGbAgeRamp:v17];
  }
}

- (void)setPasscodeStashAvailableForArguments:(id)arguments aksEventContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v7 = [(OTManager *)self contextForClientRPC:arguments createIfMissing:0 error:&v11];
  v8 = v11;
  v9 = v8;
  if (!v7 || v8)
  {
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cannot set passcode stash available flag: %@", buf, 0xCu);
    }
  }

  [v7 passcodeStashAvailable:contextCopy];
}

- (void)registerForPasscodeCacheFlowNotifications
{
  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(17, 0);
  objc_copyWeak(&v4, &location);
  [(OTManager *)self setAksEvent:AKSEventsRegister(), _NSConcreteStackBlock, 3221225472, sub_1000C2540, &unk_100336698];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)registerForCircleChangedNotifications
{
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    objc_initWeak(&location, self);
    out_token = -1;
    v3 = kSOSCCCircleChangedNotification;
    v4 = dispatch_get_global_queue(17, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000C2720;
    handler[3] = &unk_100344A08;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(v3, &out_token, v4, handler);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)moveToCheckTrustedStateForArguments:(id)arguments
{
  v6 = 0;
  v3 = [(OTManager *)self contextForClientRPC:arguments createIfMissing:0 error:&v6];
  v4 = v6;
  if (v4)
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cannot move to check trusted state: %@", buf, 0xCu);
    }
  }

  [v3 startOctagonStateMachine];
  [v3 moveToCheckTrustedState];
}

- (BOOL)waitForReady:(id)ready wait:(int64_t)wait
{
  v10 = 0;
  v5 = [(OTManager *)self contextForClientRPC:ready createIfMissing:0 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [v5 waitForReady:wait];
  }

  else
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cannot wait for ready: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)initializeOctagon
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing Octagon...", buf, 2u);
  }

  v4 = sub_100006274("octagon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "starting default state machine...", buf, 2u);
  }

  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    accountsAdapter = [(OTManager *)self accountsAdapter];
    v6 = [accountsAdapter inflateAllTPSpecificUsers:@"com.apple.security.keychain" octagonContextID:@"defaultContext"];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v23;
      *&v9 = 138412290;
      v20 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v21 = 0;
          v14 = [(OTManager *)self contextForClientRPCWithActiveAccount:v13 createIfMissing:1 allowNonPrimaryAccounts:1 error:&v21, v20];
          v15 = v21;
          v16 = sub_100006274("octagon");
          v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            v18 = v15 == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            if (v17)
            {
              *buf = v20;
              v27 = v13;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "kicking off state machine for active account: %@", buf, 0xCu);
            }

            [v14 startOctagonStateMachine];
          }

          else
          {
            if (v17)
            {
              *buf = 138412546;
              v27 = v13;
              v28 = 2112;
              v29 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "failed to get context for active account: %@, error:%@", buf, 0x16u);
            }
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v10);
    }
  }

  v19 = [(OTManager *)self contextForContainerName:@"com.apple.security.keychain" contextID:@"defaultContext"];
  [v19 startOctagonStateMachine];
  [(OTManager *)self registerForCircleChangedNotifications];
  [(OTManager *)self registerForPasscodeCacheFlowNotifications];
}

- (void)dealloc
{
  if ([(OTManager *)self aksEvent])
  {
    [(OTManager *)self aksEvent];
    AKSEventsUnregister();
    [(OTManager *)self setAksEvent:0];
  }

  v3.receiver = self;
  v3.super_class = OTManager;
  [(OTManager *)&v3 dealloc];
}

- (OTManager)initWithSOSAdapter:(id)adapter lockStateTracker:(id)tracker personaAdapter:(id)personaAdapter cloudKitClassDependencies:(id)dependencies
{
  adapterCopy = adapter;
  trackerCopy = tracker;
  personaAdapterCopy = personaAdapter;
  dependenciesCopy = dependencies;
  v45.receiver = self;
  v45.super_class = OTManager;
  v15 = [(OTManager *)&v45 init];
  v16 = v15;
  if (v15)
  {
    v41 = personaAdapterCopy;
    objc_storeStrong(&v15->_sosAdapter, adapter);
    objc_storeStrong(&v16->_lockStateTracker, tracker);
    objc_storeStrong(&v16->_personaAdapter, personaAdapter);
    objc_storeStrong(&v16->_cloudKitClassDependencies, dependencies);
    v17 = +[NSMutableDictionary dictionary];
    contexts = v16->_contexts;
    v16->_contexts = v17;

    v19 = [OTManager makeCKContainer:@"com.apple.security.keychain"];
    cloudKitContainer = v16->_cloudKitContainer;
    v16->_cloudKitContainer = v19;

    v21 = -[CKKSAccountStateTracker init:nsnotificationCenterClass:]([CKKSAccountStateTracker alloc], "init:nsnotificationCenterClass:", v16->_cloudKitContainer, [dependenciesCopy nsnotificationCenterClass]);
    accountStateTracker = v16->_accountStateTracker;
    v16->_accountStateTracker = v21;

    v23 = objc_alloc_init(CKKSReachabilityTracker);
    reachabilityTracker = v16->_reachabilityTracker;
    v16->_reachabilityTracker = v23;

    notifierClass = [dependenciesCopy notifierClass];
    notifierClass = v16->_notifierClass;
    v16->_notifierClass = notifierClass;

    v27 = [CKKSViewManager alloc];
    v29 = v16->_reachabilityTracker;
    v28 = v16->_cloudKitContainer;
    v30 = v16->_accountStateTracker;
    personaAdapter = v16->_personaAdapter;
    accountsAdapter = [(OTManager *)v16 accountsAdapter];
    v33 = [(CKKSViewManager *)v27 initWithContainer:v28 sosAdapter:adapterCopy accountStateTracker:v30 lockStateTracker:trackerCopy reachabilityTracker:v29 personaAdapter:personaAdapter cloudKitClassDependencies:dependenciesCopy accountsAdapter:accountsAdapter];
    viewManager = v16->_viewManager;
    v16->_viewManager = v33;

    v35 = dispatch_queue_create("otmanager", 0);
    queue = v16->_queue;
    v16->_queue = v35;

    objc_initWeak(&location, v16);
    v37 = [CKKSNearFutureScheduler alloc];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000C3030;
    v42[3] = &unk_1003452E8;
    objc_copyWeak(&v43, &location);
    v38 = [(CKKSNearFutureScheduler *)v37 initWithName:@"newtlks" delay:5000000000 keepProcessAlive:1 dependencyDescriptionCode:0 block:v42];
    savedTLKNotifier = v16->_savedTLKNotifier;
    v16->_savedTLKNotifier = v38;

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
    personaAdapterCopy = v41;
  }

  return v16;
}

- (OTManager)initWithSOSAdapter:(id)adapter accountsAdapter:(id)accountsAdapter authKitAdapter:(id)kitAdapter tooManyPeersAdapter:(id)peersAdapter tapToRadarAdapter:(id)radarAdapter deviceInformationAdapter:(id)informationAdapter secureBackupAdapter:(id)backupAdapter laContextAdapter:(id)self0 personaAdapter:(id)self1 apsConnectionClass:(Class)self2 escrowRequestClass:(Class)self3 notifierClass:(Class)self4 loggerClass:(Class)self5 lockStateTracker:(id)self6 reachabilityTracker:(id)self7 cloudKitClassDependencies:(id)self8 cuttlefishXPCConnection:(id)self9 cdpd:(id)cdpd
{
  adapterCopy = adapter;
  accountsAdapterCopy = accountsAdapter;
  accountsAdapterCopy2 = accountsAdapter;
  kitAdapterCopy = kitAdapter;
  peersAdapterCopy = peersAdapter;
  radarAdapterCopy = radarAdapter;
  radarAdapterCopy2 = radarAdapter;
  informationAdapterCopy = informationAdapter;
  backupAdapterCopy = backupAdapter;
  contextAdapterCopy = contextAdapter;
  personaAdapterCopy = personaAdapter;
  trackerCopy = tracker;
  reachabilityTrackerCopy = reachabilityTracker;
  dependenciesCopy = dependencies;
  connectionCopy = connection;
  cdpdCopy = cdpd;
  v65.receiver = self;
  v65.super_class = OTManager;
  v26 = [(OTManager *)&v65 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_sosAdapter, adapter);
    objc_storeStrong(&v27->_accountsAdapter, accountsAdapterCopy);
    objc_storeStrong(&v27->_authKitAdapter, kitAdapter);
    objc_storeStrong(&v27->_tooManyPeersAdapter, peersAdapter);
    objc_storeStrong(&v27->_tapToRadarAdapter, radarAdapterCopy);
    objc_storeStrong(&v27->_deviceInformationAdapter, informationAdapter);
    objc_storeStrong(&v27->_secureBackupAdapter, backupAdapter);
    objc_storeStrong(&v27->_laContextAdapter, contextAdapter);
    objc_storeStrong(&v27->_personaAdapter, personaAdapter);
    objc_storeStrong(&v27->_loggerClass, loggerClass);
    objc_storeStrong(&v27->_lockStateTracker, tracker);
    objc_storeStrong(&v27->_reachabilityTracker, reachabilityTracker);
    objc_storeStrong(&v27->_cuttlefishXPCConnection, connection);
    v28 = [OTManager makeCKContainer:@"com.apple.security.keychain"];
    cloudKitContainer = v27->_cloudKitContainer;
    v27->_cloudKitContainer = v28;

    v30 = -[CKKSAccountStateTracker init:nsnotificationCenterClass:]([CKKSAccountStateTracker alloc], "init:nsnotificationCenterClass:", v27->_cloudKitContainer, [dependenciesCopy nsnotificationCenterClass]);
    accountStateTracker = v27->_accountStateTracker;
    v27->_accountStateTracker = v30;

    objc_storeStrong(&v27->_cloudKitClassDependencies, dependencies);
    v32 = +[NSMutableDictionary dictionary];
    contexts = v27->_contexts;
    v27->_contexts = v32;

    v34 = dispatch_queue_create("otmanager", 0);
    queue = v27->_queue;
    v27->_queue = v34;

    objc_storeStrong(&v27->_apsConnectionClass, class);
    objc_storeStrong(&v27->_escrowRequestClass, requestClass);
    objc_storeStrong(&v27->_notifierClass, notifierClass);
    objc_storeStrong(&v27->_cdpd, cdpd);
    v36 = [[CKKSViewManager alloc] initWithContainer:v27->_cloudKitContainer sosAdapter:adapterCopy accountStateTracker:v27->_accountStateTracker lockStateTracker:trackerCopy reachabilityTracker:v27->_reachabilityTracker personaAdapter:v27->_personaAdapter cloudKitClassDependencies:dependenciesCopy accountsAdapter:accountsAdapterCopy2];
    viewManager = v27->_viewManager;
    v27->_viewManager = v36;

    objc_initWeak(&location, v27);
    v38 = [CKKSNearFutureScheduler alloc];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_1000C3534;
    v62[3] = &unk_1003452E8;
    objc_copyWeak(&v63, &location);
    v39 = [(CKKSNearFutureScheduler *)v38 initWithName:@"newtlks" delay:5000000000 keepProcessAlive:1 dependencyDescriptionCode:0 block:v62];
    savedTLKNotifier = v27->_savedTLKNotifier;
    v27->_savedTLKNotifier = v39;

    v41 = [(OTManager *)v27 contextForContainerName:@"com.apple.security.keychain" contextID:@"defaultContext"];
    v42 = sub_100006274("octagon");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "otmanager init", buf, 2u);
    }

    objc_destroyWeak(&v63);
    objc_destroyWeak(&location);
  }

  return v27;
}

- (OTManager)init
{
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if (byte_10039CB18)
  {
    v2 = [[OTSOSActualAdapter alloc] initAsEssential:0];
  }

  else
  {
    v2 = objc_alloc_init(OTSOSMissingAdapter);
  }

  v22 = v2;
  v18 = objc_alloc_init(OTAccountsActualAdapter);
  v19 = objc_alloc_init(OTAuthKitActualAdapter);
  v17 = objc_alloc_init(OTTooManyPeersActualAdapter);
  v16 = objc_alloc_init(OTTapToRadarActualAdapter);
  v15 = objc_alloc_init(OTDeviceInformationActualAdapter);
  v13 = objc_alloc_init(OTSecureBackupActualAdapter);
  v12 = objc_alloc_init(OTLAContextActualAdapter);
  v14 = objc_alloc_init(OTPersonaActualAdapter);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v11 = +[CKKSLockStateTracker globalTracker];
  v7 = objc_alloc_init(CKKSReachabilityTracker);
  v8 = +[CKKSCloudKitClassDependencies forLiveCloudKit];
  v9 = objc_alloc_init(CDPFollowUpController);
  v21 = [(OTManager *)self initWithSOSAdapter:v22 accountsAdapter:v18 authKitAdapter:v19 tooManyPeersAdapter:v17 tapToRadarAdapter:v16 deviceInformationAdapter:v15 secureBackupAdapter:v13 laContextAdapter:v12 personaAdapter:v14 apsConnectionClass:v3 escrowRequestClass:v4 notifierClass:v5 loggerClass:v6 lockStateTracker:v11 reachabilityTracker:v7 cloudKitClassDependencies:v8 cuttlefishXPCConnection:0 cdpd:v9];

  return v21;
}

+ (id)makeCKContainer:(id)container
{
  containerCopy = container;
  v4 = objc_alloc_init(CKContainerOptions);
  [v4 setBypassPCSEncryption:1];
  v5 = [CKContainer containerIDForContainerIdentifier:containerCopy];

  v6 = [[CKContainer alloc] initWithContainerID:v5 options:v4];

  return v6;
}

+ (id)resetManager:(BOOL)manager to:(id)to
{
  managerCopy = manager;
  toCopy = to;
  if (toCopy || ((v6 = qword_10039DDF0) != 0 ? (v7 = !managerCopy) : (v7 = 0), !v7))
  {
    v8 = objc_opt_class();
    objc_sync_enter(v8);
    if (toCopy)
    {
      v9 = toCopy;
    }

    else
    {
      v10 = qword_10039DDF0;
      if (managerCopy)
      {
        v9 = 0;
        goto LABEL_11;
      }

      if (qword_10039DDF0)
      {
        goto LABEL_12;
      }

      v9 = objc_alloc_init(OTManager);
    }

    v10 = qword_10039DDF0;
LABEL_11:
    qword_10039DDF0 = v9;

LABEL_12:
    objc_sync_exit(v8);

    v6 = qword_10039DDF0;
  }

  v11 = v6;

  return v6;
}

@end