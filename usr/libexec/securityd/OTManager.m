@interface OTManager
+ (id)makeCKContainer:(id)a3;
+ (id)manager;
+ (id)resetManager:(BOOL)a3 to:(id)a4;
- (BOOL)allContextsPause:(unint64_t)a3;
- (BOOL)fetchSendingMetricsPermitted:(id)a3 error:(id *)a4;
- (BOOL)ghostbustByAgeEnabled;
- (BOOL)ghostbustByMidEnabled;
- (BOOL)ghostbustBySerialEnabled;
- (BOOL)isFullPeer;
- (BOOL)waitForReady:(id)a3 wait:(int64_t)a4;
- (NSXPCProxyCreating)cuttlefishXPCConnection;
- (OTManager)init;
- (OTManager)initWithSOSAdapter:(id)a3 accountsAdapter:(id)a4 authKitAdapter:(id)a5 tooManyPeersAdapter:(id)a6 tapToRadarAdapter:(id)a7 deviceInformationAdapter:(id)a8 secureBackupAdapter:(id)a9 laContextAdapter:(id)a10 personaAdapter:(id)a11 apsConnectionClass:(Class)a12 escrowRequestClass:(Class)a13 notifierClass:(Class)a14 loggerClass:(Class)a15 lockStateTracker:(id)a16 reachabilityTracker:(id)a17 cloudKitClassDependencies:(id)a18 cuttlefishXPCConnection:(id)a19 cdpd:(id)a20;
- (OTManager)initWithSOSAdapter:(id)a3 lockStateTracker:(id)a4 personaAdapter:(id)a5 cloudKitClassDependencies:(id)a6;
- (id)cdpContextTypes;
- (id)ckksAccountSyncForContainer:(id)a3 contextID:(id)a4 possibleAccount:(id)a5;
- (id)contextForClientRPC:(id)a3 createIfMissing:(BOOL)a4 allowNonPrimaryAccounts:(BOOL)a5 error:(id *)a6;
- (id)contextForClientRPCWithActiveAccount:(id)a3 createIfMissing:(BOOL)a4 allowNonPrimaryAccounts:(BOOL)a5 error:(id *)a6;
- (id)contextForContainerName:(id)a3 contextID:(id)a4 possibleAccount:(id)a5;
- (id)contextForContainerName:(id)a3 contextID:(id)a4 possibleAccount:(id)a5 createIfMissing:(BOOL)a6 sosAdapter:(id)a7 accountsAdapter:(id)a8 authKitAdapter:(id)a9 tooManyPeersAdapter:(id)a10 tapToRadarAdapter:(id)a11 lockStateTracker:(id)a12 deviceInformationAdapter:(id)a13;
- (id)restartCKKSAccountSyncWithoutSettingPolicy:(id)a3;
- (id)restartOctagonContext:(id)a3;
- (void)allContextsDisablePendingFlags;
- (void)allContextsHalt;
- (void)appleAccountSignedIn:(id)a3 reply:(id)a4;
- (void)appleAccountSignedOut:(id)a3 reply:(id)a4;
- (void)areRecoveryKeysDistrusted:(id)a3 reply:(id)a4;
- (void)cancelPendingOperations;
- (void)checkCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)checkInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)clearAllContexts;
- (void)createCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)createInheritanceKey:(id)a3 uuid:(id)a4 claimTokenData:(id)a5 wrappingKeyData:(id)a6 reply:(id)a7;
- (void)createInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)createRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5;
- (void)dealloc;
- (void)ensureRampsInitialized;
- (void)establish:(id)a3 reply:(id)a4;
- (void)fetchAccountSettings:(id)a3 reply:(id)a4;
- (void)fetchAllViableBottles:(id)a3 source:(int64_t)a4 reply:(id)a5;
- (void)fetchCliqueStatus:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)fetchEgoPeerID:(id)a3 reply:(id)a4;
- (void)fetchEscrowContents:(id)a3 reply:(id)a4;
- (void)fetchEscrowRecords:(id)a3 source:(int64_t)a4 reply:(id)a5;
- (void)fetchTrustStatus:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)fetchTrustedSecureElementIdentities:(id)a3 reply:(id)a4;
- (void)fetchUserControllableViewsSyncStatus:(id)a3 reply:(id)a4;
- (void)generateInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)getAccountMetadata:(id)a3 reply:(id)a4;
- (void)getCDPStatus:(id)a3 reply:(id)a4;
- (void)icscRepairReset:(id)a3 reply:(id)a4;
- (void)initializeOctagon;
- (void)invalidateEscrowCache:(id)a3 reply:(id)a4;
- (void)isRecoveryKeySet:(id)a3 reply:(id)a4;
- (void)joinWithCustodianRecoveryKey:(id)a3 custodianRecoveryKey:(id)a4 reply:(id)a5;
- (void)joinWithInheritanceKey:(id)a3 inheritanceKey:(id)a4 reply:(id)a5;
- (void)joinWithRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5;
- (void)leaveClique:(id)a3 reply:(id)a4;
- (void)moveToCheckTrustedStateForArguments:(id)a3;
- (void)notifyIDMSTrustLevelChangeForAltDSID:(id)a3 reply:(id)a4;
- (void)peerDeviceNamesByPeerID:(id)a3 reply:(id)a4;
- (void)postCDPFollowupResult:(id)a3 success:(BOOL)a4 type:(id)a5 error:(id)a6 reply:(id)a7;
- (void)preflightJoinWithCustodianRecoveryKey:(id)a3 custodianRecoveryKey:(id)a4 reply:(id)a5;
- (void)preflightJoinWithInheritanceKey:(id)a3 inheritanceKey:(id)a4 reply:(id)a5;
- (void)preflightRecoverOctagonUsingRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5;
- (void)recoverWithRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5;
- (void)recreateInheritanceKey:(id)a3 uuid:(id)a4 oldIK:(id)a5 reply:(id)a6;
- (void)refetchCKKSPolicy:(id)a3 reply:(id)a4;
- (void)registerForCircleChangedNotifications;
- (void)registerForPasscodeCacheFlowNotifications;
- (void)removeContextForContainerName:(id)a3 contextID:(id)a4;
- (void)removeCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)removeFriendsInClique:(id)a3 peerIDs:(id)a4 reply:(id)a5;
- (void)removeInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)removeLocalSecureElementIdentityPeerID:(id)a3 secureElementIdentityPeerID:(id)a4 reply:(id)a5;
- (void)removeRecoveryKey:(id)a3 reply:(id)a4;
- (void)reroll:(id)a3 reply:(id)a4;
- (void)resetAndEstablish:(id)a3 resetReason:(int64_t)a4 idmsTargetContext:(id)a5 idmsCuttlefishPassword:(id)a6 notifyIdMS:(BOOL)a7 accountSettings:(id)a8 isGuitarfish:(BOOL)a9 accountIsW:(BOOL)a10 reply:(id)a11;
- (void)resetAndEstablish:(id)a3 resetReason:(int64_t)a4 isGuitarfish:(BOOL)a5 accountIsW:(BOOL)a6 reply:(id)a7;
- (void)restoreFromBottle:(id)a3 entropy:(id)a4 bottleID:(id)a5 reply:(id)a6;
- (void)rpcEpochWithArguments:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)rpcJoinWithArguments:(id)a3 configuration:(id)a4 vouchData:(id)a5 vouchSig:(id)a6 reply:(id)a7;
- (void)rpcPrepareIdentityAsApplicantWithArguments:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)rpcVoucherWithArguments:(id)a3 configuration:(id)a4 peerID:(id)a5 permanentInfo:(id)a6 permanentInfoSig:(id)a7 stableInfo:(id)a8 stableInfoSig:(id)a9 maxCapability:(id)a10 reply:(id)a11;
- (void)setAccountSetting:(id)a3 setting:(id)a4 reply:(id)a5;
- (void)setCDPEnabled:(id)a3 reply:(id)a4;
- (void)setLocalSecureElementIdentity:(id)a3 secureElementIdentity:(id)a4 reply:(id)a5;
- (void)setMachineIDOverride:(id)a3 machineID:(id)a4 reply:(id)a5;
- (void)setPasscodeStashAvailableForArguments:(id)a3 aksEventContext:(id)a4;
- (void)setupAnalytics;
- (void)simulateReceivePush:(id)a3 reply:(id)a4;
- (void)simulateReceiveTDLChangePush:(id)a3 reply:(id)a4;
- (void)startOctagonStateMachine:(id)a3 reply:(id)a4;
- (void)status:(id)a3 xpcFd:(id)a4 reply:(id)a5;
- (void)storeInheritanceKey:(id)a3 ik:(id)a4 reply:(id)a5;
- (void)tapToRadar:(id)a3 description:(id)a4 radar:(id)a5 reply:(id)a6;
- (void)tlkRecoverabilityForEscrowRecordData:(id)a3 recordData:(id)a4 source:(int64_t)a5 reply:(id)a6;
- (void)totalTrustedPeers:(id)a3 reply:(id)a4;
- (void)trustedFullPeers:(id)a3 reply:(id)a4;
- (void)waitForOctagonUpgrade:(id)a3 reply:(id)a4;
- (void)waitForPriorityViewKeychainDataRecovery:(id)a3 reply:(id)a4;
- (void)xpc24HrNotification;
@end

@implementation OTManager

+ (id)manager
{
  if (objc_opt_class())
  {
    v3 = [a1 resetManager:0 to:0];
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

- (void)icscRepairReset:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting icscRepairReset RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
  }

  else
  {
    [v8 icscRepairResetWithReply:v7];
  }
}

- (void)reroll:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v18];
  v9 = v18;
  v10 = sub_100006274("octagon");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Rejecting a reroll RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v9);
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "reroll invoked for arguments (%@)", buf, 0xCu);
    }

    v12 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v13 = [v12 startLogSystemMetricsForActivityNamed:@"OctagonActivityReroll"];

    [v8 startOctagonStateMachine];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B06D4;
    v15[3] = &unk_1003386E8;
    v16 = v13;
    v17 = v7;
    v14 = v13;
    [v8 rerollWithReply:v15];
  }
}

- (void)areRecoveryKeysDistrusted:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a areRecoveryKeysDistrusted RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    [v8 areRecoveryKeysDistrusted:v7];
  }
}

- (void)getAccountMetadata:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a getAccountMetadata RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    [v8 getAccountMetadataWithReply:v7];
  }
}

- (void)preflightRecoverOctagonUsingRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v15];
  v12 = v15;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a preflightRecoverOctagonUsingRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, 0, v13);
  }

  else
  {
    [v11 preflightRecoverOctagonUsingRecoveryKey:v9 reply:v10];
  }
}

- (void)setMachineIDOverride:(id)a3 machineID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16 = 0;
  v10 = a5;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v16];
  v12 = v16;
  v13 = v12;
  if (!v11 || v12)
  {
    v15 = sub_100006274("octagon");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rejecting a setMachineIDOverride RPC for arguments (%@): %@", buf, 0x16u);
    }

    v14 = v13;
  }

  else
  {
    [v11 setMachineIDOverride:v9];
    v14 = 0;
  }

  (v10)[2](v10, v14);
}

- (void)removeRecoveryKey:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon-remove-recovery-key");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a removeRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B0E0C;
    v12[3] = &unk_100337BD8;
    v13 = v7;
    [v8 rpcRemoveRecoveryKey:v12];
  }
}

- (void)recoverWithRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v17];
  v12 = v17;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon-recover-with-recovery-key");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a recoverWithRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B10DC;
    v15[3] = &unk_100337928;
    v16 = v10;
    [v11 joinWithRecoveryKey:v9 reply:v15];
  }
}

- (void)isRecoveryKeySet:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a isRecoveryKeySet RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    [v8 rpcIsRecoveryKeySet:v7];
  }
}

- (void)tlkRecoverabilityForEscrowRecordData:(id)a3 recordData:(id)a4 source:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17 = 0;
  v13 = [(OTManager *)self contextForClientRPC:v10 error:&v17];
  v14 = v17;
  v15 = v14;
  if (!v13 || v14)
  {
    v16 = sub_100006274("octagon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rejecting a tlkRecoverabilityForEscrowRecordData RPC for arguments (%@): %@", buf, 0x16u);
    }

    v12[2](v12, 0, v15);
  }

  else
  {
    [v13 rpcTlkRecoverabilityForEscrowRecordData:v11 source:a5 reply:v12];
  }
}

- (void)fetchAccountSettings:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchAccountSettings RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    [v8 rpcFetchAccountSettings:v7];
  }
}

- (void)setAccountSetting:(id)a3 setting:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v15];
  v12 = v15;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a setAccountSetting RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    [v11 rpcSetAccountSetting:v9 reply:v10];
  }
}

- (void)fetchTrustedSecureElementIdentities:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchTrustedSecureElementIdentities RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    [v8 rpcFetchTrustedSecureElementIdentities:v7];
  }
}

- (void)removeLocalSecureElementIdentityPeerID:(id)a3 secureElementIdentityPeerID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v15];
  v12 = v15;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a removeLocalSecureElementIdentityPeerID RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    [v11 rpcRemoveLocalSecureElementIdentityPeerID:v9 reply:v10];
  }
}

- (void)setLocalSecureElementIdentity:(id)a3 secureElementIdentity:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v15];
  v12 = v15;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a setLocalSecureElementIdentity RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    [v11 rpcSetLocalSecureElementIdentity:v9 reply:v10];
  }
}

- (void)fetchUserControllableViewsSyncStatus:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchUserControllableViewsSyncStatus RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B21A4;
    v12[3] = &unk_100337BD8;
    v13 = v7;
    [v8 rpcFetchUserControllableViewsSyncingStatus:v12];
  }
}

- (void)invalidateEscrowCache:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rejecting a invalidateEscrowCache RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
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
    v14 = v7;
    [v8 rpcInvalidateEscrowCache:v13];
  }
}

- (void)fetchEscrowRecords:(id)a3 source:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v10 = [(OTManager *)self contextForClientRPC:v8 error:&v17];
  v11 = v17;
  v12 = v11;
  if (!v10 || v11)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchEscrowRecords RPC for arguments (%@): %@", buf, 0x16u);
    }

    v9[2](v9, 0, v12);
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
    v16 = v9;
    [v10 rpcFetchAllViableEscrowRecordsFromSource:a4 reply:v15];
  }
}

- (void)setCDPEnabled:(id)a3 reply:(id)a4
{
  v6 = a3;
  v15 = 0;
  v7 = a4;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a setCDPEnabled RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
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
    v7[2](v7, v12);

    v7 = v12;
  }
}

- (void)getCDPStatus:(id)a3 reply:(id)a4
{
  v6 = a3;
  v16 = 0;
  v7 = a4;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v16];
  v9 = v16;
  v10 = v9;
  if (!v8 || v9)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a getCDPStatus RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
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
    (v7)[2](v7, v12, v13);

    v7 = v13;
  }
}

- (void)refetchCKKSPolicy:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rejecting a refetchCKKSPolicy RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
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
    v14 = v7;
    [v8 rpcRefetchCKKSPolicy:v13];
  }
}

- (void)tapToRadar:(id)a3 description:(id)a4 radar:(id)a5 reply:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[SecTapToRadar alloc] initTapToRadar:v12 description:v11 radar:v10];

  [v13 trigger];
  v9[2](v9, 0);
}

- (void)postCDPFollowupResult:(id)a3 success:(BOOL)a4 type:(id)a5 error:(id)a6 reply:(id)a7
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v18 = [NSString stringWithFormat:@"%@%@", @"OACDPStateRun", v11];
  v12 = [NSString stringWithFormat:@"%@%@Tries", @"OACDPStateRun", v11];

  v13 = +[CKKSAnalytics logger];
  [v13 logResultForEvent:v18 hardFailure:0 result:v10];

  v14 = +[CKKSAnalytics logger];
  v15 = v14;
  if (v10)
  {
    v16 = +[NSDate date];
    [v15 setDateProperty:v16 forKey:v18];

    v17 = +[CKKSAnalytics logger];
    [v17 incrementIntegerPropertyForKey:v12];
  }

  else
  {
    [v14 setDateProperty:0 forKey:v18];

    v17 = +[CKKSAnalytics logger];
    [v17 setNumberProperty:0 forKey:v12];
  }

  v9[2](v9, 0);
}

- (void)waitForPriorityViewKeychainDataRecovery:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rejecting a waitForPriorityViewKeychainDataRecovery RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
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
    v14 = v7;
    [v8 rpcWaitForPriorityViewKeychainDataRecovery:v13];
  }
}

- (void)waitForOctagonUpgrade:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rejecting a waitForOctagonUpgrade RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
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
    v14 = v7;
    [v8 waitForOctagonUpgrade:v13];
  }
}

- (BOOL)allContextsPause:(unint64_t)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(OTManager *)self contexts];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 stateMachine];
        v12 = [v11 currentState];

        if (v12 != @"not_started")
        {
          v13 = [v10 stateMachine];
          v14 = [v13 paused];
          v15 = [v14 wait:a3];

          if (v15)
          {
            goto LABEL_14;
          }
        }

        v16 = [v10 pendingEscrowCacheWarmup];
        v17 = v16;
        if (v16 && [v16 wait:a3])
        {

LABEL_14:
          v18 = 0;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v2 = [(OTManager *)self contexts];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) stateMachine];
        [v8 disablePendingFlags];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(OTManager *)self contexts];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 stateMachine];
        [v9 haltOperation];

        v10 = [v8 ckks];
        [v10 halt];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)simulateReceiveTDLChangePush:(id)a3 reply:(id)a4
{
  v6 = a3;
  v14 = 0;
  v7 = a4;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v6;
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

  (v7)[2](v7, v12);
}

- (void)simulateReceivePush:(id)a3 reply:(id)a4
{
  v6 = a3;
  v14 = 0;
  v7 = a4;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v6;
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

  (v7)[2](v7, v12);
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

- (void)createInheritanceKey:(id)a3 uuid:(id)a4 claimTokenData:(id)a5 wrappingKeyData:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30 = 0;
  v17 = [(OTManager *)self contextForClientRPC:v12 error:&v30];
  v18 = v30;
  v19 = v18;
  if (!v17 || v18)
  {
    v24 = sub_100006274("octagon");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = v12;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Rejecting a createInheritanceKey (w/claimToken+wrappingKey) RPC for arguments (%@): %@", buf, 0x16u);
    }

    v16[2](v16, 0, v19);
  }

  else
  {
    v20 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating Inheritance Key given claimToken+wrappingKey for arguments (%@)", buf, 0xCu);
    }

    v21 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v22 = [v21 startLogSystemMetricsForActivityNamed:@"OctagonEventCreateInheritanceKeyWithClaimTokenAndWrappingKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v17 startOctagonStateMachine];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000B49E0;
      v27[3] = &unk_100336910;
      v28 = v22;
      v29 = v16;
      [v17 rpcCreateInheritanceKeyWithUUID:v13 claimTokenData:v14 wrappingKeyData:v15 reply:v27];

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
      v16[2](v16, 0, v23);
    }
  }
}

- (void)recreateInheritanceKey:(id)a3 uuid:(id)a4 oldIK:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v14 = [(OTManager *)self contextForClientRPC:v10 error:&v27];
  v15 = v27;
  v16 = v15;
  if (!v14 || v15)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v10;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a recreateInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v13[2](v13, 0, v16);
  }

  else
  {
    v17 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Recreating Inheritance Key for arguments (%@)", buf, 0xCu);
    }

    v18 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [v18 startLogSystemMetricsForActivityNamed:@"OctagonActivityRecreateInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v14 startOctagonStateMachine];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000B4DC8;
      v24[3] = &unk_100336910;
      v25 = v19;
      v26 = v13;
      [v14 rpcRecreateInheritanceKeyWithUUID:v11 oldIK:v12 reply:v24];

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
      v13[2](v13, 0, v20);
    }
  }
}

- (void)checkInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v20 = sub_100006274("octagon");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rejecting a checkInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-custodian-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 containerName];
      v16 = [v8 contextID];
      *buf = 138412802;
      v26 = v9;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Check Custodian Recovery Key %@ for container: %@, context: %@", buf, 0x20u);
    }

    v17 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [v17 startLogSystemMetricsForActivityNamed:@"OctagonActivityCheckInheritanceKey"];

    [v11 startOctagonStateMachine];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B50F0;
    v21[3] = &unk_1003368E8;
    v22 = v18;
    v23 = v10;
    v19 = v18;
    [v11 rpcCheckInheritanceKeyWithUUID:v9 reply:v21];
  }
}

- (void)removeInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v27];
  v12 = v27;
  v13 = v12;
  if (!v11 || v12)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a removeInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 containerName];
      v16 = [v8 contextID];
      *buf = 138412802;
      v31 = v9;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remove Inheritance Key %@ for container: %@, context: %@", buf, 0x20u);
    }

    v17 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [v17 startLogSystemMetricsForActivityNamed:@"OctagonActivityRemoveInheritanceKey"];

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
      v26 = v10;
      [v11 rpcRemoveInheritanceKeyWithUUID:v9 reply:v24];

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
      v10[2](v10, v20);
    }
  }
}

- (void)preflightJoinWithInheritanceKey:(id)a3 inheritanceKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v25];
  v12 = v25;
  v13 = v12;
  if (!v11 || v12)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v8;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a preflightJoinWithInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 uuid];
      v16 = [v8 containerName];
      v17 = [v8 contextID];
      *buf = 138412802;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "preflight join with inheritance key %@ invoked for container: %@, context: %@", buf, 0x20u);
    }

    v18 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [v18 startLogSystemMetricsForActivityNamed:@"OctagonActivityPreflightJoinWithInheritanceKey"];

    [v11 startOctagonStateMachine];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B5854;
    v22[3] = &unk_1003386E8;
    v23 = v19;
    v24 = v10;
    v20 = v19;
    [v11 preflightJoinWithInheritanceKey:v9 reply:v22];
  }
}

- (void)joinWithInheritanceKey:(id)a3 inheritanceKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v25];
  v12 = v25;
  v13 = v12;
  if (!v11 || v12)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v8;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a joinWithInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 uuid];
      v16 = [v8 containerName];
      v17 = [v8 contextID];
      *buf = 138412802;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "join with inheritance key %@ invoked for container: %@, context: %@", buf, 0x20u);
    }

    v18 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [v18 startLogSystemMetricsForActivityNamed:@"OctagonActivityJoinWithInheritanceKey"];

    [v11 startOctagonStateMachine];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B5C34;
    v22[3] = &unk_1003386E8;
    v23 = v19;
    v24 = v10;
    v20 = v19;
    [v11 joinWithInheritanceKey:v9 reply:v22];
  }
}

- (void)storeInheritanceKey:(id)a3 ik:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a storeInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Storing Inheritance Key for arguments (%@)", buf, 0xCu);
    }

    v15 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [v15 startLogSystemMetricsForActivityNamed:@"OctagonActivityStoreInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v11 startOctagonStateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B60A0;
      v21[3] = &unk_1003386E8;
      v22 = v16;
      v23 = v10;
      [v11 rpcStoreInheritanceKeyWithIK:v9 reply:v21];

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
      v10[2](v10, v17);
    }
  }
}

- (void)generateInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a generateInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Generating Inheritance Key for arguments (%@)", buf, 0xCu);
    }

    v15 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [v15 startLogSystemMetricsForActivityNamed:@"OctagonActivityGenerateInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v11 startOctagonStateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B6450;
      v21[3] = &unk_100336910;
      v22 = v16;
      v23 = v10;
      [v11 rpcGenerateInheritanceKeyWithUUID:v9 reply:v21];

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
      v10[2](v10, 0, v17);
    }
  }
}

- (void)createInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a createInheritanceKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating Inheritance Key for arguments (%@)", buf, 0xCu);
    }

    v15 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [v15 startLogSystemMetricsForActivityNamed:@"OctagonActivityCreateInheritanceKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v11 startOctagonStateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B681C;
      v21[3] = &unk_100336910;
      v22 = v16;
      v23 = v10;
      [v11 rpcCreateInheritanceKeyWithUUID:v9 reply:v21];

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
      v10[2](v10, 0, v17);
    }
  }
}

- (void)checkCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v20 = sub_100006274("octagon");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rejecting a checkCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-custodian-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 containerName];
      v16 = [v8 contextID];
      *buf = 138412802;
      v26 = v9;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Check Custodian Recovery Key %@ for container: %@, context: %@", buf, 0x20u);
    }

    v17 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [v17 startLogSystemMetricsForActivityNamed:@"OctagonActivityCheckCustodianRecoveryKey"];

    [v11 startOctagonStateMachine];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B6B44;
    v21[3] = &unk_1003368E8;
    v22 = v18;
    v23 = v10;
    v19 = v18;
    [v11 rpcCheckCustodianRecoveryKeyWithUUID:v9 reply:v21];
  }
}

- (void)removeCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v27];
  v12 = v27;
  v13 = v12;
  if (!v11 || v12)
  {
    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejecting a removeCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-custodian-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 containerName];
      v16 = [v8 contextID];
      *buf = 138412802;
      v31 = v9;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remove Custodian Recovery Key %@ for container: %@, context: %@", buf, 0x20u);
    }

    v17 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [v17 startLogSystemMetricsForActivityNamed:@"OctagonActivityRemoveCustodianRecoveryKey"];

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
      v26 = v10;
      [v11 rpcRemoveCustodianRecoveryKeyWithUUID:v9 reply:v24];

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
      v10[2](v10, v20);
    }
  }
}

- (void)preflightJoinWithCustodianRecoveryKey:(id)a3 custodianRecoveryKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v24];
  v12 = v24;
  v13 = sub_100006274("octagon");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11 || v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a preflightJoinWithCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v12);
  }

  else
  {
    if (v14)
    {
      v15 = [v9 uuid];
      v16 = [v8 containerName];
      v17 = [v8 contextID];
      *buf = 138412802;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "preflight join with custodian recovery key %@ invoked for container: %@, context: %@", buf, 0x20u);
    }

    v18 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [v18 startLogSystemMetricsForActivityNamed:@"OctagonActivityPreflightJoinWithCustodianRecoveryKey"];

    [v11 startOctagonStateMachine];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B728C;
    v21[3] = &unk_1003386E8;
    v22 = v19;
    v23 = v10;
    v20 = v19;
    [v11 preflightJoinWithCustodianRecoveryKey:v9 reply:v21];
  }
}

- (void)joinWithCustodianRecoveryKey:(id)a3 custodianRecoveryKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v24];
  v12 = v24;
  v13 = sub_100006274("octagon");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11 || v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a joinWithCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v12);
  }

  else
  {
    if (v14)
    {
      v15 = [v9 uuid];
      v16 = [v8 containerName];
      v17 = [v8 contextID];
      *buf = 138412802;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "join with custodian recovery key %@ invoked for container: %@, context: %@", buf, 0x20u);
    }

    v18 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v19 = [v18 startLogSystemMetricsForActivityNamed:@"OctagonActivityJoinWithCustodianRecoveryKey"];

    [v11 startOctagonStateMachine];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B7650;
    v21[3] = &unk_1003386E8;
    v22 = v19;
    v23 = v10;
    v20 = v19;
    [v11 joinWithCustodianRecoveryKey:v9 reply:v21];
  }
}

- (void)createCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting a createCustodianRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, 0, v13);
  }

  else
  {
    v14 = sub_100006274("octagon-custodian-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating Custodian Recovery Key for arguments (%@)", buf, 0xCu);
    }

    v15 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [v15 startLogSystemMetricsForActivityNamed:@"OctagonActivityCreateCustodianRecoveryKey"];

    if ([(OTManager *)self isFullPeer])
    {
      [v11 startOctagonStateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B7AC4;
      v21[3] = &unk_1003368C0;
      v22 = v16;
      v23 = v10;
      [v11 rpcCreateCustodianRecoveryKeyWithUUID:v9 reply:v21];

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
      v10[2](v10, 0, v17);
    }
  }
}

- (void)joinWithRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v27];
  v12 = v27;
  v13 = sub_100006274("octagon");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11 || v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v29 = v8;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a joinWithRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v12);
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "join with recovery key invoked for arguments (%@)", buf, 0xCu);
    }

    v15 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [v15 startLogSystemMetricsForActivityNamed:@"OctagonActivityJoinWithRecoveryKey"];

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
      v25 = v10;
      v22 = v11;
      v23 = v8;
      v24 = v9;
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
      v10[2](v10, v18);
    }
  }
}

- (void)createRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v27];
  v12 = v27;
  v13 = sub_100006274("octagon");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11 || v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting a createRecoveryKey RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v12);
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting recovery key for arguments (%@)", buf, 0xCu);
    }

    v15 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v16 = [v15 startLogSystemMetricsForActivityNamed:@"OctagonActivitySetRecoveryKey"];

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
        v25 = v10;
        [v11 rpcSetRecoveryKey:v9 reply:v23];

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
        v10[2](v10, v17);
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
      v10[2](v10, v20);
    }
  }
}

- (BOOL)isFullPeer
{
  v2 = [(OTManager *)self deviceInformationAdapter];
  v3 = [v2 modelID];
  v4 = [OTDeviceInformation isFullPeer:v3];

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
  v3 = [(objc_class *)[(OTManager *)self loggerClass] logger];
  v4 = SFAnalyticsSamplerIntervalOncePerReport;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B8EEC;
  v9[3] = &unk_100338610;
  objc_copyWeak(&v10, &location);
  v5 = [v3 AddMultiSamplerForName:@"Octagon-healthSummary" withTimeInterval:v9 block:v4];

  v6 = [(objc_class *)[(OTManager *)self loggerClass] logger];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BA09C;
  v8[3] = &unk_100336800;
  v8[4] = self;
  v7 = [v6 AddMultiSamplerForName:@"CFU-healthSummary" withTimeInterval:v8 block:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)fetchSendingMetricsPermitted:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v7 = [(OTManager *)self contextForClientRPC:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7 || v8)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchSendingMetricsPermitted for arguments (%@): %@", buf, 0x16u);
    }

    if (a4)
    {
      v12 = v9;
      v10 = 0;
      *a4 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [v7 fetchSendingMetricsPermitted:a4];
  }

  return v10;
}

- (BOOL)ghostbustByAgeEnabled
{
  [(OTManager *)self ensureRampsInitialized];
  v3 = [(OTManager *)self gbAgeRamp];
  v4 = [v3 checkRampStateWithError:0];

  return v4;
}

- (BOOL)ghostbustBySerialEnabled
{
  [(OTManager *)self ensureRampsInitialized];
  v3 = [(OTManager *)self gbserialRamp];
  v4 = [v3 checkRampStateWithError:0];

  return v4;
}

- (BOOL)ghostbustByMidEnabled
{
  [(OTManager *)self ensureRampsInitialized];
  v3 = [(OTManager *)self gbmidRamp];
  v4 = [v3 checkRampStateWithError:0];

  return v4;
}

- (void)restoreFromBottle:(id)a3 entropy:(id)a4 bottleID:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26 = 0;
  v14 = [(OTManager *)self contextForClientRPC:v10 error:&v26];
  v15 = v26;
  v16 = v15;
  if (!v14 || v15)
  {
    v22 = sub_100006274("octagon");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v10;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rejecting a restoreFromBottle RPC for arguments (%@): %@", buf, 0x16u);
    }

    v13[2](v13, v16);
  }

  else
  {
    v17 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v18 = [v17 startLogSystemMetricsForActivityNamed:@"OctagonActivityBottledPeerRestore"];

    v19 = sub_100006274("octagon");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "restore via bottle invoked for arguments (%@)", buf, 0xCu);
    }

    [v14 startOctagonStateMachine];
    v20 = [v10 altDSID];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000BA6FC;
    v23[3] = &unk_1003386E8;
    v24 = v18;
    v25 = v13;
    v21 = v18;
    [v14 joinWithBottle:v12 entropy:v11 bottleSalt:v20 reply:v23];
  }
}

- (void)rpcVoucherWithArguments:(id)a3 configuration:(id)a4 peerID:(id)a5 permanentInfo:(id)a6 permanentInfoSig:(id)a7 stableInfo:(id)a8 stableInfoSig:(id)a9 maxCapability:(id)a10 reply:(id)a11
{
  v17 = a3;
  v54 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v55 = a8;
  v56 = a9;
  v21 = a10;
  v22 = a11;
  v63 = 0;
  v23 = [(OTManager *)self contextForClientRPC:v17 error:&v63];
  v24 = v63;
  v25 = v24;
  if (v23 && !v24)
  {
    v26 = objc_alloc_init(TPECPublicKeyFactory);
    v53 = [TPPeerPermanentInfo permanentInfoWithPeerID:v18 data:v19 sig:v20 keyFactory:v26];

    if (!v53)
    {
      v48 = sub_100006274("SecError");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "octagon-rpc-voucher: aborting pairing: unable to validate provided permanentInfo with peerID!", buf, 2u);
      }

      v25 = [NSError errorWithDomain:@"com.apple.security.octagon" code:74 description:@"Unable to validate peerID with provided permanentInfo"];
      (*(v22 + 2))(v22, 0, 0, v25);
      goto LABEL_30;
    }

    if (!sub_1000BAF48())
    {
      goto LABEL_21;
    }

    if (!v21)
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

      v21 = *v27;
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
      if ([v21 isEqualToString:*v30])
      {
        v33 = [v53 modelID];
        v34 = [OTDeviceInformation isFullPeer:v33];

        if (v34)
        {
          v35 = sub_100006274("SecError");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "octagon-rpc-voucher: aborting pairing: full peer is attempting to get a voucher on a limited capability pairing context!", buf, 2u);
          }

          v25 = [NSError errorWithDomain:@"com.apple.security.octagon" code:75 description:@"full peer attempting to join limited capability pairing context"];
          (*(v22 + 2))(v22, 0, 0, v25);
LABEL_30:

          goto LABEL_31;
        }
      }

LABEL_21:
      [v23 startOctagonStateMachine];
      v37 = [OTMetricsSessionData alloc];
      v38 = [v17 flowID];
      v39 = [v17 deviceSessionID];
      v40 = [(OTMetricsSessionData *)v37 initWithFlowID:v38 deviceSessionID:v39];
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
      v59 = v22;
      [v58 rpcVoucherWithConfiguration:v18 permanentInfo:v19 permanentInfoSig:v20 stableInfo:v55 stableInfoSig:v56 reply:v57];

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
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v25;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Rejecting a rpcVoucher RPC for arguments (%@): %@", buf, 0x16u);
  }

  (*(v22 + 2))(v22, 0, 0, v25);
LABEL_31:
}

- (void)rpcEpochWithArguments:(id)a3 configuration:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v32];
  v12 = v32;
  v13 = v12;
  if (!v11 || v12)
  {
    v25 = sub_100006274("octagon");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Rejecting a rpcEpoch RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, 0, v13);
  }

  else
  {
    [v11 startOctagonStateMachine];
    v14 = [OTMetricsSessionData alloc];
    v15 = [v8 flowID];
    v16 = [v8 deviceSessionID];
    v17 = [(OTMetricsSessionData *)v14 initWithFlowID:v15 deviceSessionID:v16];
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
    v28 = v10;
    [v27 rpcEpoch:v26];

    _Block_object_dispose(buf, 8);
  }
}

- (void)rpcJoinWithArguments:(id)a3 configuration:(id)a4 vouchData:(id)a5 vouchSig:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v39 = 0;
  v17 = [(OTManager *)self contextForClientRPC:v12 error:&v39];
  v18 = v39;
  v19 = v18;
  if (!v17 || v18)
  {
    v31 = sub_100006274("octagon");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Rejecting a rpcJoinWithArguments RPC for arguments (%@): %@", buf, 0x16u);
    }

    v16[2](v16, v19);
  }

  else
  {
    [v17 handlePairingRestart:v13];
    [v17 startOctagonStateMachine];
    v20 = [OTMetricsSessionData alloc];
    v21 = [v12 flowID];
    v22 = [v12 deviceSessionID];
    v23 = [(OTMetricsSessionData *)v20 initWithFlowID:v21 deviceSessionID:v22];
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
    v35 = v16;
    [v34 rpcJoin:v14 vouchSig:v15 reply:v33];

    _Block_object_dispose(buf, 8);
  }
}

- (void)rpcPrepareIdentityAsApplicantWithArguments:(id)a3 configuration:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v33];
  v12 = v33;
  v13 = v12;
  if (!v11 || v12)
  {
    v26 = sub_100006274("octagon");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Rejecting a rpcPrepareIdentityAsApplicant RPC for arguments (%@): %@", buf, 0x16u);
    }

    (*(v10 + 2))(v10, 0, 0, 0, 0, 0, v13);
  }

  else
  {
    [v11 handlePairingRestart:v9];
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
    v22 = [v8 flowID];
    v23 = [v8 deviceSessionID];
    v24 = [(OTMetricsSessionData *)v21 initWithFlowID:v22 deviceSessionID:v23];
    [v11 setSessionMetrics:v24];

    [v11 setShouldSendMetricsForOctagon:1];
    v25 = [v9 epoch];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000BC17C;
    v27[3] = &unk_100336760;
    v30 = buf;
    v28 = v11;
    v31 = v15;
    v32 = v17;
    v29 = v10;
    [v28 rpcPrepareIdentityAsApplicantWithConfiguration:v9 epoch:v25 reply:v27];

    _Block_object_dispose(buf, 8);
  }
}

- (void)trustedFullPeers:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a trustedFullPeers RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    [v8 rpcFetchCountOfTrustedFullPeers:v7];
  }
}

- (void)totalTrustedPeers:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a totalTrustedPeers RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    [v8 rpcFetchTotalCountOfTrustedPeers:v7];
  }
}

- (void)fetchEscrowContents:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v18];
  v9 = v18;
  v10 = v9;
  if (!v8 || v9)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchEscrowContents RPC for arguments (%@): %@", buf, 0x16u);
    }

    (*(v7 + 2))(v7, 0, 0, 0, v10);
  }

  else
  {
    v11 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v12 = [v11 startLogSystemMetricsForActivityNamed:@"OctagonActivityFetchEscrowContents"];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BC80C;
    v15[3] = &unk_100336738;
    v16 = v12;
    v17 = v7;
    v13 = v12;
    [v8 fetchEscrowContents:v15];
  }
}

- (void)fetchAllViableBottles:(id)a3 source:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v10 = [(OTManager *)self contextForClientRPC:v8 error:&v20];
  v11 = v20;
  v12 = v11;
  if (!v10 || v11)
  {
    v16 = sub_100006274("octagon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchAllViableBottles RPC for arguments (%@): %@", buf, 0x16u);
    }

    (*(v9 + 2))(v9, 0, 0, v12);
  }

  else
  {
    v13 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v14 = [v13 startLogSystemMetricsForActivityNamed:@"OctagonActivityFetchAllViableBottles"];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000BCAB8;
    v17[3] = &unk_100336710;
    v18 = v14;
    v19 = v9;
    v15 = v14;
    [v10 rpcFetchAllViableBottlesFromSource:a4 reply:v17];
  }
}

- (void)peerDeviceNamesByPeerID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v12];
  v9 = v12;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rejecting a peerDeviceNamesByPeerID RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    [v8 fetchTrustedDeviceNamesByPeerID:v7];
  }
}

- (void)removeFriendsInClique:(id)a3 peerIDs:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v21];
  v12 = v21;
  v13 = v12;
  if (!v11 || v12)
  {
    v17 = sub_100006274("octagon");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Rejecting a removeFriendsInClique RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, v13);
  }

  else
  {
    v14 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v15 = [v14 startLogSystemMetricsForActivityNamed:@"OctagonActivityRemoveFriendsInClique"];

    [v11 startOctagonStateMachine];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000BCEA0;
    v18[3] = &unk_1003386E8;
    v19 = v15;
    v20 = v10;
    v16 = v15;
    [v11 rpcRemoveFriendsInClique:v9 reply:v18];
  }
}

- (void)leaveClique:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v18];
  v9 = v18;
  v10 = v9;
  if (!v8 || v9)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a leaveClique RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
  }

  else
  {
    v11 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v12 = [v11 startLogSystemMetricsForActivityNamed:@"OctagonActivityLeaveClique"];

    [v8 startOctagonStateMachine];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BD0F0;
    v15[3] = &unk_1003386E8;
    v16 = v12;
    v17 = v7;
    v13 = v12;
    [v8 rpcLeaveClique:v15];
  }
}

- (void)establish:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v19];
  v9 = v19;
  v10 = v9;
  if (!v8 || v9)
  {
    v15 = sub_100006274("octagon");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rejecting a establish RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
  }

  else
  {
    v11 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v12 = [v11 startLogSystemMetricsForActivityNamed:@"OctagonActivityEstablish"];

    [v8 startOctagonStateMachine];
    v13 = [v6 altDSID];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BD358;
    v16[3] = &unk_1003386E8;
    v17 = v12;
    v18 = v7;
    v14 = v12;
    [v8 rpcEstablish:v13 reply:v16];
  }
}

- (void)resetAndEstablish:(id)a3 resetReason:(int64_t)a4 idmsTargetContext:(id)a5 idmsCuttlefishPassword:(id)a6 notifyIdMS:(BOOL)a7 accountSettings:(id)a8 isGuitarfish:(BOOL)a9 accountIsW:(BOOL)a10 reply:(id)a11
{
  v12 = a7;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a11;
  v42 = 0;
  v21 = [(OTManager *)self contextForClientRPC:v16 error:&v42];
  v22 = v42;
  v23 = v22;
  if (!v21 || v22)
  {
    v34 = sub_100006274("octagon");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = v16;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Rejecting a resetAndEstablish RPC for arguments (%@): %@", buf, 0x16u);
    }

    v20[2](v20, v23);
  }

  else
  {
    [(objc_class *)[(OTManager *)self loggerClass] logger];
    v24 = v37 = v12;
    v36 = [v24 startLogSystemMetricsForActivityNamed:@"OctagonActivityResetAndEstablish"];

    v25 = [OTMetricsSessionData alloc];
    [v16 flowID];
    v26 = v20;
    v27 = v19;
    v28 = v18;
    v30 = v29 = v17;
    v31 = [v16 deviceSessionID];
    v32 = [(OTMetricsSessionData *)v25 initWithFlowID:v30 deviceSessionID:v31];
    [v21 setSessionMetrics:v32];

    v17 = v29;
    v18 = v28;
    v19 = v27;
    v20 = v26;
    [v21 setShouldSendMetricsForOctagon:1];
    [v21 startOctagonStateMachine];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000BDAE4;
    v39[3] = &unk_1003386E8;
    v40 = v36;
    v41 = v26;
    v33 = v36;
    LOBYTE(v35) = a10;
    [v21 rpcResetAndEstablish:a4 idmsTargetContext:v17 idmsCuttlefishPassword:v18 notifyIdMS:v37 accountSettings:v19 isGuitarfish:a9 accountIsW:v35 reply:v39];
  }
}

- (void)resetAndEstablish:(id)a3 resetReason:(int64_t)a4 isGuitarfish:(BOOL)a5 accountIsW:(BOOL)a6 reply:(id)a7
{
  BYTE1(v7) = a6;
  LOBYTE(v7) = a5;
  [(OTManager *)self resetAndEstablish:a3 resetReason:a4 idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:v7 accountIsW:a7 reply:?];
}

- (void)startOctagonStateMachine:(id)a3 reply:(id)a4
{
  v6 = a3;
  v13 = 0;
  v7 = a4;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v13];
  v9 = v13;
  v10 = sub_100006274("octagon");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v15 = v6;
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
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received a start-state-machine RPC for arguments (%@)", buf, 0xCu);
    }

    [v8 startOctagonStateMachine];
    v12 = 0;
  }

  (v7)[2](v7, v12);
}

- (void)status:(id)a3 xpcFd:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 createIfMissing:0 error:&v18];
  v12 = v18;
  v13 = sub_100006274("octagon");
  v14 = v13;
  if (!v11 || v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a status RPC for arguments(%@): %@", buf, 0x16u);
    }

    v10[2](v10, 0, v12);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received a status RPC for arguments (%@): %@", buf, 0x16u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BDF28;
    v15[3] = &unk_1003390F8;
    v16 = v8;
    v17 = v10;
    [v11 rpcStatus:v9 reply:v15];
  }
}

- (void)fetchCliqueStatus:(id)a3 configuration:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 createIfMissing:0 error:&v17];
  v12 = v17;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchCliqueStatus RPC for arguments (%@): %@", buf, 0x16u);
    }

    v10[2](v10, -1, v13);
  }

  else
  {
    if (!v9)
    {
      v9 = objc_alloc_init(OTOperationConfiguration);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BE1F4;
    v15[3] = &unk_1003366E8;
    v16 = v10;
    [v11 rpcTrustStatus:v9 reply:v15];
  }
}

- (void)fetchTrustStatus:(id)a3 configuration:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = [(OTManager *)self contextForClientRPC:v8 error:&v17];
  v12 = v17;
  v13 = sub_100006274("octagon");
  v14 = v13;
  if (!v11 || v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchTrustStatus RPC for arguments (%@): %@", buf, 0x16u);
    }

    (*(v10 + 2))(v10, -1, 0, 0, 0, v12);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received a trust status for arguments (%@)", buf, 0xCu);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BE410;
    v15[3] = &unk_1003366E8;
    v16 = v10;
    [v11 rpcTrustStatus:v9 reply:v15];
  }
}

- (void)fetchEgoPeerID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v14];
  v9 = v14;
  v10 = sub_100006274("octagon");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Rejecting a fetchEgoPeerID RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, 0, v9);
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received a fetch peer ID for arguments (%@)", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BE764;
    v12[3] = &unk_100337D88;
    v13 = v7;
    [v8 rpcFetchEgoPeerID:v12];
  }
}

- (void)clearAllContexts
{
  v3 = [(OTManager *)self contexts];

  if (v3)
  {
    v4 = [(OTManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BE880;
    block[3] = &unk_100346018;
    block[4] = self;
    dispatch_sync(v4, block);
  }
}

- (id)contextForClientRPC:(id)a3 createIfMissing:(BOOL)a4 allowNonPrimaryAccounts:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = [(OTManager *)self personaAdapter];
  v12 = [v11 currentThreadIsForPrimaryiCloudAccount];

  v13 = [(OTManager *)self deviceInformationAdapter];
  v14 = [v13 isHomePod];

  if (!v14)
  {
    v40 = v8;
    v41 = v7;
    v18 = a6;
    v19 = [(OTManager *)self accountsAdapter];
    v20 = [(OTManager *)self personaAdapter];
    v21 = [v10 altDSID];
    v22 = [v10 containerName];
    v42 = v10;
    v23 = [v10 contextID];
    v43 = 0;
    v24 = [v19 findAccountForCurrentThread:v20 optionalAltDSID:v21 cloudkitContainerName:v22 octagonContextID:v23 error:&v43];
    v25 = v43;

    v26 = v24;
    if (v24 && !v25)
    {
      if (v41 || ([v24 isPrimaryAccount] & 1) != 0)
      {
        v17 = [(OTManager *)self contextForClientRPCWithActiveAccount:v24 createIfMissing:v40 allowNonPrimaryAccounts:v41 error:v18];
        v10 = v42;
LABEL_34:

        goto LABEL_35;
      }

      v35 = sub_100006274("octagon-account");
      v10 = v42;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Rejecting finding a OTCuttlefishContext for non-primary account (on primary persona)", buf, 2u);
      }

      if (v18)
      {
        [NSError errorWithDomain:@"com.apple.security.octagon" code:29 description:@"Octagon APIs do not support non-primary accounts"];
        *v18 = v17 = 0;
        goto LABEL_34;
      }

LABEL_33:
      v17 = 0;
      goto LABEL_34;
    }

    v10 = v42;
    if (v12)
    {
      v27 = [v42 altDSID];
      if (v27 || ([v42 containerName], v27 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v27, "isEqualToString:", @"com.apple.security.keychain")))
      {
      }

      else
      {
        v28 = [v42 contextID];
        v29 = [v28 isEqualToString:@"defaultContext"];

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

          v31 = [v42 containerName];
          v32 = [v42 contextID];
          v17 = [(OTManager *)self contextForContainerName:v31 contextID:v32];

          goto LABEL_34;
        }
      }
    }

    if (!v18)
    {
      goto LABEL_33;
    }

    if (v25)
    {
      v34 = v25;
      *v18 = v25;
    }

    else
    {
      v36 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
      *v18 = v36;
      if (!v36)
      {
        goto LABEL_33;
      }
    }

    v37 = sub_100006274("octagon-account");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *v18;
      *buf = 138412546;
      v45 = v42;
      v46 = 2112;
      v47 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Cannot find an account matching: %@ %@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  if (v12)
  {
    v15 = [v10 containerName];
    v16 = [v10 contextID];
    v17 = [(OTManager *)self contextForContainerName:v15 contextID:v16];
  }

  else
  {
    v33 = sub_100006274("octagon-account");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Rejecting non-primary request on HomePod", buf, 2u);
    }

    if (a6)
    {
      [NSError errorWithDomain:@"com.apple.security.octagon" code:60 description:@"Non-primary personas not supported on this platform"];
      *a6 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

LABEL_35:

  return v17;
}

- (id)contextForClientRPCWithActiveAccount:(id)a3 createIfMissing:(BOOL)a4 allowNonPrimaryAccounts:(BOOL)a5 error:(id *)a6
{
  v27 = a4;
  v7 = a3;
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if ((byte_10039E100 & 1) != 0 || ([v7 isPrimaryAccount] & 1) == 0)
  {
    v8 = sub_100006274("octagon-account");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finding a context for user: %@", buf, 0xCu);
    }
  }

  v26 = [v7 cloudkitContainerName];
  [v7 octagonContextID];
  v10 = v9 = v7;
  v11 = [(OTManager *)self sosAdapter];
  v12 = [(OTManager *)self accountsAdapter];
  v13 = [(OTManager *)self authKitAdapter];
  v14 = [(OTManager *)self tooManyPeersAdapter];
  v15 = [(OTManager *)self tapToRadarAdapter];
  v16 = [(OTManager *)self lockStateTracker];
  v17 = [(OTManager *)self deviceInformationAdapter];
  v29 = v9;
  v18 = [(OTManager *)self contextForContainerName:v26 contextID:v10 possibleAccount:v9 createIfMissing:v27 sosAdapter:v11 accountsAdapter:v12 authKitAdapter:v13 tooManyPeersAdapter:v14 tapToRadarAdapter:v15 lockStateTracker:v16 deviceInformationAdapter:v17];

  if (a6 && !v18)
  {
    *a6 = [NSError errorWithDomain:@"com.apple.security.octagon" code:31 description:@"Context does not exist"];
  }

  v19 = [v18 activeAccount];
  if (v19)
  {
    v20 = v19;
    v21 = [v18 activeAccount];
    v22 = [v21 isEqual:v29];

    if ((v22 & 1) == 0)
    {
      v23 = sub_100006274("octagon-account");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v18 activeAccount];
        *buf = 138412546;
        v31 = v29;
        v32 = 2112;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Context for user(%@) is for user(%@) instead", buf, 0x16u);
      }
    }
  }

  return v18;
}

- (id)contextForContainerName:(id)a3 contextID:(id)a4 possibleAccount:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v19 = [(OTManager *)self sosAdapter];
  v18 = [(OTManager *)self accountsAdapter];
  v11 = [(OTManager *)self authKitAdapter];
  v12 = [(OTManager *)self tooManyPeersAdapter];
  v13 = [(OTManager *)self tapToRadarAdapter];
  v14 = [(OTManager *)self lockStateTracker];
  v15 = [(OTManager *)self deviceInformationAdapter];
  v16 = [(OTManager *)self contextForContainerName:v10 contextID:v9 possibleAccount:v8 createIfMissing:1 sosAdapter:v19 accountsAdapter:v18 authKitAdapter:v11 tooManyPeersAdapter:v12 tapToRadarAdapter:v13 lockStateTracker:v14 deviceInformationAdapter:v15];

  return v16;
}

- (id)contextForContainerName:(id)a3 contextID:(id)a4 possibleAccount:(id)a5 createIfMissing:(BOOL)a6 sosAdapter:(id)a7 accountsAdapter:(id)a8 authKitAdapter:(id)a9 tooManyPeersAdapter:(id)a10 tapToRadarAdapter:(id)a11 lockStateTracker:(id)a12 deviceInformationAdapter:(id)a13
{
  v17 = a3;
  v42 = a4;
  v18 = a5;
  v19 = v17;
  v41 = v18;
  v40 = a7;
  v20 = a8;
  v37 = a9;
  v35 = a10;
  v33 = a11;
  v21 = a12;
  v22 = a13;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1000B8394;
  v63 = sub_1000B83A4;
  v64 = 0;
  if (!v17)
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
  v47 = v42;
  v58 = a6;
  v48 = self;
  v49 = v41;
  v50 = v20;
  v51 = v40;
  v52 = v37;
  v53 = v35;
  v54 = v33;
  v55 = v21;
  v56 = v22;
  v57 = &v59;
  v44 = v22;
  v39 = v21;
  v34 = v33;
  v36 = v35;
  v24 = v37;
  v25 = v40;
  v26 = v20;
  v27 = v41;
  v28 = v42;
  v29 = v19;
  dispatch_sync(queue, block);

  v30 = v60[5];
  _Block_object_dispose(&v59, 8);

  return v30;
}

- (void)cancelPendingOperations
{
  v2 = [(OTManager *)self savedTLKNotifier];
  [v2 cancel];
}

- (id)restartCKKSAccountSyncWithoutSettingPolicy:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000B8394;
  v17 = sub_1000B83A4;
  v18 = 0;
  v5 = [(OTManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0010;
  block[3] = &unk_100344920;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(v5, block);

  if (v14[5])
  {
    v7 = [(OTManager *)self restartOctagonContext:?];
    v8 = [v7 ckks];
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

    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)restartOctagonContext:(id)a3
{
  v4 = a3;
  v5 = [v4 ckks];
  v20 = [v5 viewAllowList];
  v6 = [v4 containerName];
  v19 = [v4 contextID];

  v21 = v5;
  v7 = [v5 operationDependencies];
  v8 = [v7 activeAccount];

  [(OTManager *)self removeContextForContainerName:v6 contextID:v19];
  v9 = [(OTManager *)self sosAdapter];
  v10 = [(OTManager *)self accountsAdapter];
  v11 = [(OTManager *)self authKitAdapter];
  v12 = [(OTManager *)self tooManyPeersAdapter];
  v13 = [(OTManager *)self tapToRadarAdapter];
  v14 = [(OTManager *)self lockStateTracker];
  v15 = [(OTManager *)self deviceInformationAdapter];
  v16 = [(OTManager *)self contextForContainerName:v6 contextID:v19 possibleAccount:v8 createIfMissing:1 sosAdapter:v9 accountsAdapter:v10 authKitAdapter:v11 tooManyPeersAdapter:v12 tapToRadarAdapter:v13 lockStateTracker:v14 deviceInformationAdapter:v15];

  if (v20)
  {
    v17 = [v16 ckks];
    [v17 setSyncingViewsAllowList:v20];
  }

  return v16;
}

- (id)ckksAccountSyncForContainer:(id)a3 contextID:(id)a4 possibleAccount:(id)a5
{
  v5 = [(OTManager *)self contextForContainerName:a3 contextID:a4 possibleAccount:a5];
  if (!v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No context for container/contextID", v9, 2u);
    }
  }

  v7 = [v5 ckks];

  return v7;
}

- (void)removeContextForContainerName:(id)a3 contextID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OTManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0590;
  block[3] = &unk_100343C28;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (NSXPCProxyCreating)cuttlefishXPCConnection
{
  cuttlefishXPCConnection = self->_cuttlefishXPCConnection;
  if (!cuttlefishXPCConnection)
  {
    v17 = self;
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
    v14 = v17->_cuttlefishXPCConnection;
    v17->_cuttlefishXPCConnection = v16;

    cuttlefishXPCConnection = v17->_cuttlefishXPCConnection;
  }

  return cuttlefishXPCConnection;
}

- (void)notifyIDMSTrustLevelChangeForAltDSID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v14 = 0;
  v7 = a4;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v14];
  v9 = v14;
  v10 = sub_100006274("octagon");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Rejecting a IDMS trust level change RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v9);
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
    v7[2](v7, v12);

    v7 = v12;
  }
}

- (void)appleAccountSignedOut:(id)a3 reply:(id)a4
{
  v5 = a3;
  v26 = a4;
  v28 = v5;
  v6 = [v5 altDSID];

  if (v6)
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "signing out of octagon trust: %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = sub_1000B8394;
    v40 = sub_1000B83A4;
    v41 = 0;
    v8 = [(OTManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C1E10;
    block[3] = &unk_100344E90;
    block[4] = self;
    block[5] = &buf;
    dispatch_sync(v8, block);

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
          v15 = [v28 altDSID];
          v16 = [v14 activeAccount];
          v17 = [v16 altDSID];
          v18 = [v15 isEqualToString:v17];

          if (v18)
          {
            v19 = sub_100006274("octagon");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *v34 = 138412290;
              v35 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "signing out of octagon trust for context: %@", v34, 0xCu);
            }

            v20 = [(objc_class *)[(OTManager *)self loggerClass] logger];
            v21 = [v20 startLogSystemMetricsForActivityNamed:@"OctagonActivityAccountNotAvailable"];

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
        v26[2](v26, 0);
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
    (v26)[2](v26, v25);

    goto LABEL_24;
  }

  v22 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "rejecting a signout RPC due to missing altDSID: %@", &buf, 0xCu);
  }

  v23 = [NSError errorWithDomain:@"com.apple.security.octagon" code:29 description:@"Must provide an altDSID to sign out"];
  (v26)[2](v26, v23);

LABEL_25:
}

- (void)appleAccountSignedIn:(id)a3 reply:(id)a4
{
  v6 = a3;
  v19 = 0;
  v7 = a4;
  v8 = [(OTManager *)self contextForClientRPC:v6 error:&v19];
  v9 = v19;
  v10 = v9;
  if (!v8 || v9)
  {
    v17 = sub_100006274("octagon");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Rejecting a signin RPC for arguments (%@): %@", buf, 0x16u);
    }

    v7[2](v7, v10);
  }

  else
  {
    v11 = [(objc_class *)[(OTManager *)self loggerClass] logger];
    v12 = [v11 startLogSystemMetricsForActivityNamed:@"OctagonActivityAccountAvailable"];

    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 altDSID];
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "signing in %@ for altDSID: %@", buf, 0x16u);
    }

    v15 = [v6 altDSID];
    v18 = 0;
    [v8 accountAvailable:v15 error:&v18];
    v16 = v18;

    [v12 stopWithEvent:@"OctagonEventSignIn" result:v16];
    v7[2](v7, v16);

    v7 = v12;
  }
}

- (void)ensureRampsInitialized
{
  v3 = +[CKKSViewManager manager];
  v18 = [v3 container];

  v4 = [v18 privateCloudDatabase];
  v5 = [[CKRecordZoneID alloc] initWithZoneName:@"metadata_zone" ownerName:CKCurrentUserDefaultName];
  v6 = +[CKKSViewManager manager];
  v7 = [v6 accountTracker];

  v8 = +[CKKSViewManager manager];
  v9 = [v8 reachabilityTracker];

  v10 = +[CKKSViewManager manager];
  v11 = [v10 lockStateTracker];

  v12 = [(OTManager *)self gbmidRamp];

  if (!v12)
  {
    v13 = [[OTRamp alloc] initWithRecordName:@"metadata_rampstate_ghostBustMID" localSettingName:@"ghostBustMID" container:v18 database:v4 zoneID:v5 accountTracker:v7 lockStateTracker:v11 reachabilityTracker:v9 fetchRecordRecordsOperationClass:objc_opt_class()];
    [(OTManager *)self setGbmidRamp:v13];
  }

  v14 = [(OTManager *)self gbserialRamp];

  if (!v14)
  {
    v15 = [[OTRamp alloc] initWithRecordName:@"metadata_rampstate_ghostBustSerial" localSettingName:@"ghostBustSerial" container:v18 database:v4 zoneID:v5 accountTracker:v7 lockStateTracker:v11 reachabilityTracker:v9 fetchRecordRecordsOperationClass:objc_opt_class()];
    [(OTManager *)self setGbserialRamp:v15];
  }

  v16 = [(OTManager *)self gbAgeRamp];

  if (!v16)
  {
    v17 = [[OTRamp alloc] initWithRecordName:@"metadata_rampstate_ghostBustAge" localSettingName:@"ghostBustAge" container:v18 database:v4 zoneID:v5 accountTracker:v7 lockStateTracker:v11 reachabilityTracker:v9 fetchRecordRecordsOperationClass:objc_opt_class()];
    [(OTManager *)self setGbAgeRamp:v17];
  }
}

- (void)setPasscodeStashAvailableForArguments:(id)a3 aksEventContext:(id)a4
{
  v6 = a4;
  v11 = 0;
  v7 = [(OTManager *)self contextForClientRPC:a3 createIfMissing:0 error:&v11];
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

  [v7 passcodeStashAvailable:v6];
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

- (void)moveToCheckTrustedStateForArguments:(id)a3
{
  v6 = 0;
  v3 = [(OTManager *)self contextForClientRPC:a3 createIfMissing:0 error:&v6];
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

- (BOOL)waitForReady:(id)a3 wait:(int64_t)a4
{
  v10 = 0;
  v5 = [(OTManager *)self contextForClientRPC:a3 createIfMissing:0 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [v5 waitForReady:a4];
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
    v5 = [(OTManager *)self accountsAdapter];
    v6 = [v5 inflateAllTPSpecificUsers:@"com.apple.security.keychain" octagonContextID:@"defaultContext"];

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

- (OTManager)initWithSOSAdapter:(id)a3 lockStateTracker:(id)a4 personaAdapter:(id)a5 cloudKitClassDependencies:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v45.receiver = self;
  v45.super_class = OTManager;
  v15 = [(OTManager *)&v45 init];
  v16 = v15;
  if (v15)
  {
    v41 = v13;
    objc_storeStrong(&v15->_sosAdapter, a3);
    objc_storeStrong(&v16->_lockStateTracker, a4);
    objc_storeStrong(&v16->_personaAdapter, a5);
    objc_storeStrong(&v16->_cloudKitClassDependencies, a6);
    v17 = +[NSMutableDictionary dictionary];
    contexts = v16->_contexts;
    v16->_contexts = v17;

    v19 = [OTManager makeCKContainer:@"com.apple.security.keychain"];
    cloudKitContainer = v16->_cloudKitContainer;
    v16->_cloudKitContainer = v19;

    v21 = -[CKKSAccountStateTracker init:nsnotificationCenterClass:]([CKKSAccountStateTracker alloc], "init:nsnotificationCenterClass:", v16->_cloudKitContainer, [v14 nsnotificationCenterClass]);
    accountStateTracker = v16->_accountStateTracker;
    v16->_accountStateTracker = v21;

    v23 = objc_alloc_init(CKKSReachabilityTracker);
    reachabilityTracker = v16->_reachabilityTracker;
    v16->_reachabilityTracker = v23;

    v25 = [v14 notifierClass];
    notifierClass = v16->_notifierClass;
    v16->_notifierClass = v25;

    v27 = [CKKSViewManager alloc];
    v29 = v16->_reachabilityTracker;
    v28 = v16->_cloudKitContainer;
    v30 = v16->_accountStateTracker;
    personaAdapter = v16->_personaAdapter;
    v32 = [(OTManager *)v16 accountsAdapter];
    v33 = [(CKKSViewManager *)v27 initWithContainer:v28 sosAdapter:v11 accountStateTracker:v30 lockStateTracker:v12 reachabilityTracker:v29 personaAdapter:personaAdapter cloudKitClassDependencies:v14 accountsAdapter:v32];
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
    v13 = v41;
  }

  return v16;
}

- (OTManager)initWithSOSAdapter:(id)a3 accountsAdapter:(id)a4 authKitAdapter:(id)a5 tooManyPeersAdapter:(id)a6 tapToRadarAdapter:(id)a7 deviceInformationAdapter:(id)a8 secureBackupAdapter:(id)a9 laContextAdapter:(id)a10 personaAdapter:(id)a11 apsConnectionClass:(Class)a12 escrowRequestClass:(Class)a13 notifierClass:(Class)a14 loggerClass:(Class)a15 lockStateTracker:(id)a16 reachabilityTracker:(id)a17 cloudKitClassDependencies:(id)a18 cuttlefishXPCConnection:(id)a19 cdpd:(id)a20
{
  v57 = a3;
  v45 = a4;
  v60 = a4;
  v56 = a5;
  v55 = a6;
  v46 = a7;
  v54 = a7;
  v53 = a8;
  v52 = a9;
  v51 = a10;
  v50 = a11;
  v59 = a16;
  v49 = a17;
  v25 = a18;
  v48 = a19;
  v47 = a20;
  v65.receiver = self;
  v65.super_class = OTManager;
  v26 = [(OTManager *)&v65 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_sosAdapter, a3);
    objc_storeStrong(&v27->_accountsAdapter, v45);
    objc_storeStrong(&v27->_authKitAdapter, a5);
    objc_storeStrong(&v27->_tooManyPeersAdapter, a6);
    objc_storeStrong(&v27->_tapToRadarAdapter, v46);
    objc_storeStrong(&v27->_deviceInformationAdapter, a8);
    objc_storeStrong(&v27->_secureBackupAdapter, a9);
    objc_storeStrong(&v27->_laContextAdapter, a10);
    objc_storeStrong(&v27->_personaAdapter, a11);
    objc_storeStrong(&v27->_loggerClass, a15);
    objc_storeStrong(&v27->_lockStateTracker, a16);
    objc_storeStrong(&v27->_reachabilityTracker, a17);
    objc_storeStrong(&v27->_cuttlefishXPCConnection, a19);
    v28 = [OTManager makeCKContainer:@"com.apple.security.keychain"];
    cloudKitContainer = v27->_cloudKitContainer;
    v27->_cloudKitContainer = v28;

    v30 = -[CKKSAccountStateTracker init:nsnotificationCenterClass:]([CKKSAccountStateTracker alloc], "init:nsnotificationCenterClass:", v27->_cloudKitContainer, [v25 nsnotificationCenterClass]);
    accountStateTracker = v27->_accountStateTracker;
    v27->_accountStateTracker = v30;

    objc_storeStrong(&v27->_cloudKitClassDependencies, a18);
    v32 = +[NSMutableDictionary dictionary];
    contexts = v27->_contexts;
    v27->_contexts = v32;

    v34 = dispatch_queue_create("otmanager", 0);
    queue = v27->_queue;
    v27->_queue = v34;

    objc_storeStrong(&v27->_apsConnectionClass, a12);
    objc_storeStrong(&v27->_escrowRequestClass, a13);
    objc_storeStrong(&v27->_notifierClass, a14);
    objc_storeStrong(&v27->_cdpd, a20);
    v36 = [[CKKSViewManager alloc] initWithContainer:v27->_cloudKitContainer sosAdapter:v57 accountStateTracker:v27->_accountStateTracker lockStateTracker:v59 reachabilityTracker:v27->_reachabilityTracker personaAdapter:v27->_personaAdapter cloudKitClassDependencies:v25 accountsAdapter:v60];
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

+ (id)makeCKContainer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKContainerOptions);
  [v4 setBypassPCSEncryption:1];
  v5 = [CKContainer containerIDForContainerIdentifier:v3];

  v6 = [[CKContainer alloc] initWithContainerID:v5 options:v4];

  return v6;
}

+ (id)resetManager:(BOOL)a3 to:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v5 || ((v6 = qword_10039DDF0) != 0 ? (v7 = !v4) : (v7 = 0), !v7))
  {
    v8 = objc_opt_class();
    objc_sync_enter(v8);
    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v10 = qword_10039DDF0;
      if (v4)
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