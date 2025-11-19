@interface OTCuttlefishContext
- (BOOL)accountAvailable:(id)a3 error:(id *)a4;
- (BOOL)accountNoLongerAvailable;
- (BOOL)checkAllStateCleared;
- (BOOL)checkForPhonePeerPresence:(id)a3;
- (BOOL)fetchSendingMetricsPermitted:(id *)a3;
- (BOOL)idmsTrustLevelChanged:(id *)a3;
- (BOOL)leaveTrust:(id *)a3;
- (BOOL)machineIDOnMemoizedList:(id)a3 error:(id *)a4;
- (BOOL)persistSendingMetricsPermitted:(BOOL)a3 error:(id *)a4;
- (BOOL)postConfirmPasscodeCFU:(id *)a3;
- (BOOL)postRepairCFU:(id *)a3;
- (BOOL)recheckCKKSTrustStatus:(id *)a3;
- (BOOL)setCDPEnabled:(id *)a3;
- (BOOL)shouldPostConfirmPasscodeCFU:(id *)a3;
- (BOOL)waitForReady:(int64_t)a3;
- (NSString)description;
- (OTCuttlefishContext)initWithContainerName:(id)a3 contextID:(id)a4 activeAccount:(id)a5 cuttlefish:(id)a6 ckksAccountSync:(id)a7 sosAdapter:(id)a8 accountsAdapter:(id)a9 authKitAdapter:(id)a10 personaAdapter:(id)a11 tooManyPeersAdapter:(id)a12 tapToRadarAdapter:(id)a13 lockStateTracker:(id)a14 reachabilityTracker:(id)a15 accountStateTracker:(id)a16 deviceInformationAdapter:(id)a17 secureBackupAdapter:(id)a18 laContextAdapter:(id)a19 apsConnectionClass:(Class)a20 escrowRequestClass:(Class)a21 notifierClass:(Class)a22 cdpd:(id)a23;
- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5;
- (id)appleAccountSignOutOperation;
- (id)becomeInheritedOperation;
- (id)becomeReadyOperation;
- (id)becomeUntrustedOperation:(id)a3;
- (id)checkForAccountFixupsOperation:(id)a3;
- (id)ckksPeerStatus:(id)a3;
- (id)cloudKitAccountNewlyAvailableOperation:(id)a3;
- (id)currentlyEnforcingIDMSTDL_testOnly:(id *)a3;
- (id)cuttlefishTrustEvaluation;
- (id)egoPeerStatus:(id *)a3;
- (id)errorIfNoCKAccount:(id)a3;
- (id)establishStatePathDictionary;
- (id)evaluateSecdOctagonTrust;
- (id)evaluateTPHOctagonTrust:(id)a3;
- (id)extractStringKey:(id)a3 fromDictionary:(id)a4;
- (id)initializingOperation;
- (id)joinStatePathDictionary;
- (id)mergedAccountSettings:(id)a3;
- (id)operationDependencies;
- (id)postRepairCFUAndBecomeUntrusted;
- (id)prepareInformation;
- (id)repairAccountIfTrustedByTPHWithIntendedState:(id)a3;
- (id)sosSelvesStatus;
- (id)sosTrustedPeersStatus;
- (int)currentMemoizedAccountState;
- (int)currentMemoizedTrustState;
- (int64_t)checkForCKAccount:(id)a3;
- (int64_t)getCDPStatus:(id *)a3;
- (void)accountStateUpdated:(id)a3 from:(id)a4;
- (void)areRecoveryKeysDistrusted:(id)a3;
- (void)checkOctagonHealth:(BOOL)a3 repair:(BOOL)a4 danglingPeerCleanup:(BOOL)a5 caesarPeerCleanup:(BOOL)a6 updateIdMS:(BOOL)a7 reply:(id)a8;
- (void)checkTrustStatusAndPostRepairCFUIfNecessary:(id)a3;
- (void)clearContextState;
- (void)cloudkitAccountStateChange:(id)a3 to:(id)a4;
- (void)dealloc;
- (void)deviceNameUpdated;
- (void)fetchEscrowContents:(id)a3;
- (void)fetchTrustedDeviceNamesByPeerID:(id)a3;
- (void)getAccountMetadataWithReply:(id)a3;
- (void)handlePairingRestart:(id)a3;
- (void)handleTTRRequest:(id)a3;
- (void)icscRepairResetWithReply:(id)a3;
- (void)joinWithBottle:(id)a3 entropy:(id)a4 bottleSalt:(id)a5 reply:(id)a6;
- (void)joinWithCustodianRecoveryKey:(id)a3 reply:(id)a4;
- (void)joinWithInheritanceKey:(id)a3 reply:(id)a4;
- (void)joinWithRecoveryKey:(id)a3 reply:(id)a4;
- (void)localReset:(id)a3;
- (void)moveToCheckTrustedState;
- (void)notificationOfMachineIDListChange;
- (void)notifyContainerChange:(id)a3;
- (void)notifyContainerChangeWithUserInfo:(id)a3;
- (void)notifyTrustChanged:(int)a3;
- (void)octagonPeerIDGivenBottleID:(id)a3 reply:(id)a4;
- (void)passcodeStashAvailable:(id)a3;
- (void)performCKServerUnreadableDataRemoval:(BOOL)a3 accountIsW:(BOOL)a4 altDSID:(id)a5 reply:(id)a6;
- (void)popTooManyPeersDialogWithEgoPeerStatus:(id)a3 accountMeta:(id)a4;
- (void)preflightJoinWithCustodianRecoveryKey:(id)a3 reply:(id)a4;
- (void)preflightJoinWithInheritanceKey:(id)a3 reply:(id)a4;
- (void)preflightRecoverOctagonUsingRecoveryKey:(id)a3 reply:(id)a4;
- (void)requestTrustedDeviceListRefresh;
- (void)rerollWithReply:(id)a3;
- (void)rpcCheckCustodianRecoveryKeyWithUUID:(id)a3 reply:(id)a4;
- (void)rpcCheckInheritanceKeyWithUUID:(id)a3 reply:(id)a4;
- (void)rpcCreateCustodianRecoveryKeyWithUUID:(id)a3 reply:(id)a4;
- (void)rpcCreateInheritanceKeyWithUUID:(id)a3 claimTokenData:(id)a4 wrappingKeyData:(id)a5 reply:(id)a6;
- (void)rpcCreateInheritanceKeyWithUUID:(id)a3 reply:(id)a4;
- (void)rpcEpoch:(id)a3;
- (void)rpcEstablish:(id)a3 reply:(id)a4;
- (void)rpcFetchAccountSettings:(id)a3;
- (void)rpcFetchAllViableBottlesFromSource:(int64_t)a3 reply:(id)a4;
- (void)rpcFetchAllViableEscrowRecordsFromSource:(int64_t)a3 reply:(id)a4;
- (void)rpcFetchCountOfTrustedFullPeers:(id)a3;
- (void)rpcFetchEgoPeerID:(id)a3;
- (void)rpcFetchTotalCountOfTrustedPeers:(id)a3;
- (void)rpcFetchTrustedSecureElementIdentities:(id)a3;
- (void)rpcFetchUserControllableViewsSyncingStatus:(id)a3;
- (void)rpcGenerateInheritanceKeyWithUUID:(id)a3 reply:(id)a4;
- (void)rpcInvalidateEscrowCache:(id)a3;
- (void)rpcIsRecoveryKeySet:(id)a3;
- (void)rpcJoin:(id)a3 vouchSig:(id)a4 reply:(id)a5;
- (void)rpcLeaveClique:(id)a3;
- (void)rpcPrepareIdentityAsApplicantWithConfiguration:(id)a3 epoch:(unint64_t)a4 reply:(id)a5;
- (void)rpcRecreateInheritanceKeyWithUUID:(id)a3 oldIK:(id)a4 reply:(id)a5;
- (void)rpcRefetchCKKSPolicy:(id)a3;
- (void)rpcRemoveCustodianRecoveryKeyWithUUID:(id)a3 reply:(id)a4;
- (void)rpcRemoveFriendsInClique:(id)a3 reply:(id)a4;
- (void)rpcRemoveInheritanceKeyWithUUID:(id)a3 reply:(id)a4;
- (void)rpcRemoveLocalSecureElementIdentityPeerID:(id)a3 reply:(id)a4;
- (void)rpcRemoveRecoveryKey:(id)a3;
- (void)rpcReset:(int64_t)a3 isGuitarfish:(BOOL)a4 reply:(id)a5;
- (void)rpcResetAndEstablish:(int64_t)a3 idmsTargetContext:(id)a4 idmsCuttlefishPassword:(id)a5 notifyIdMS:(BOOL)a6 accountSettings:(id)a7 isGuitarfish:(BOOL)a8 accountIsW:(BOOL)a9 reply:(id)a10;
- (void)rpcSetAccountSetting:(id)a3 reply:(id)a4;
- (void)rpcSetLocalSecureElementIdentity:(id)a3 reply:(id)a4;
- (void)rpcSetRecoveryKey:(id)a3 reply:(id)a4;
- (void)rpcSetUserControllableViewsSyncingStatus:(BOOL)a3 reply:(id)a4;
- (void)rpcStatus:(id)a3 reply:(id)a4;
- (void)rpcStoreInheritanceKeyWithIK:(id)a3 reply:(id)a4;
- (void)rpcTlkRecoverabilityForEscrowRecordData:(id)a3 source:(int64_t)a4 reply:(id)a5;
- (void)rpcTrustStatus:(id)a3 reply:(id)a4;
- (void)rpcTrustStatusCachedStatus:(id)a3 reply:(id)a4;
- (void)rpcVoucherWithConfiguration:(id)a3 permanentInfo:(id)a4 permanentInfoSig:(id)a5 stableInfo:(id)a6 stableInfoSig:(id)a7 reply:(id)a8;
- (void)rpcWaitForPriorityViewKeychainDataRecovery:(id)a3;
- (void)setMachineIDOverride:(id)a3;
- (void)setMetricsStateToActive;
- (void)setMetricsStateToInactive;
- (void)setMetricsToState:(int)a3;
- (void)startOctagonStateMachine;
- (void)tlkRecoverabilityInOctagon:(id)a3 source:(int64_t)a4 reply:(id)a5;
- (void)trustedPeerSetChanged:(id)a3;
- (void)waitForOctagonUpgrade:(id)a3;
@end

@implementation OTCuttlefishContext

- (BOOL)persistSendingMetricsPermitted:(BOOL)a3 error:(id *)a4
{
  if (a3)
  {
    [(OTCuttlefishContext *)self setMetricsStateToActive];
  }

  else
  {
    [(OTCuttlefishContext *)self setMetricsStateToInactive];
  }

  v6 = [(OTCuttlefishContext *)self accountMetadataStore];
  v7 = [v6 persistSendingMetricsPermitted:-[OTCuttlefishContext shouldSendMetricsForOctagon](self error:{"shouldSendMetricsForOctagon"), a4}];

  return v7;
}

- (BOOL)fetchSendingMetricsPermitted:(id *)a3
{
  v5 = [(OTCuttlefishContext *)self accountMetadataStore];
  LOBYTE(a3) = -[OTCuttlefishContext canSendMetricsUsingAccountState:](self, "canSendMetricsUsingAccountState:", [v5 fetchSendingMetricsPermitted:a3]);

  return a3;
}

- (BOOL)checkAllStateCleared
{
  v3 = [(OTCuttlefishContext *)self inheritanceKey];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(OTCuttlefishContext *)self custodianRecoveryKey];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(OTCuttlefishContext *)self recoveryKey];
      if (v6 || self->_bottleID || self->_bottleSalt || self->_entropy || self->_resetReason || self->_idmsTargetContext || self->_idmsCuttlefishPassword || self->_notifyIdMS)
      {
        v4 = 0;
      }

      else
      {
        v8 = [(OTCuttlefishContext *)self accountSettings];
        v4 = !v8 && !self->_skipRateLimitingCheck && !self->_repair && !self->_danglingPeersCleanup && !self->_updateIdMS && !self->_reportRateLimitingError && self->_healthCheckResults == 0;

        v6 = 0;
      }
    }
  }

  return v4;
}

- (void)clearContextState
{
  bottleID = self->_bottleID;
  self->_bottleID = 0;

  bottleSalt = self->_bottleSalt;
  self->_bottleSalt = 0;

  entropy = self->_entropy;
  self->_entropy = 0;

  idmsTargetContext = self->_idmsTargetContext;
  self->_resetReason = 0;
  self->_idmsTargetContext = 0;

  idmsCuttlefishPassword = self->_idmsCuttlefishPassword;
  self->_idmsCuttlefishPassword = 0;

  self->_notifyIdMS = 0;
  [(OTCuttlefishContext *)self setAccountSettings:0];
  *&self->_skipRateLimitingCheck = 0;
  self->_danglingPeersCleanup = 0;
  *&self->_updateIdMS = 0;
  [(OTCuttlefishContext *)self setRecoveryKey:0];
  [(OTCuttlefishContext *)self setInheritanceKey:0];
  [(OTCuttlefishContext *)self setCustodianRecoveryKey:0];
  healthCheckResults = self->_healthCheckResults;
  self->_healthCheckResults = 0;
}

- (void)getAccountMetadataWithReply:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self accountMetadataStore];
  v9 = 0;
  v6 = [v5 loadOrCreateAccountMetadata:&v9];
  v7 = v9;

  if (!v6 || v7)
  {
    v8 = sub_100006274("octagon-account-metadata");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "error fetching account metadata: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v7);
  }

  else
  {
    (v4)[2](v4, v6, 0);
  }
}

- (id)egoPeerStatus:(id *)a3
{
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", &buf, 0xCu);
    }

    if (a3)
    {
      v7 = v5;
      v8 = 0;
      *a3 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x3032000000;
    v22 = sub_1001266A4;
    v23 = sub_1001266B4;
    v24 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_1001266A4;
    v18 = sub_1001266B4;
    v19 = 0;
    v9 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v10 = [(OTCuttlefishContext *)self activeAccount];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001266BC;
    v13[3] = &unk_100337EE8;
    v13[4] = &v14;
    v13[5] = &buf;
    [v9 trustStatusWithSpecificUser:v10 reply:v13];

    if (a3)
    {
      v11 = v15[5];
      if (v11)
      {
        *a3 = v11;
      }
    }

    v8 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&buf, 8);
  }

  return v8;
}

- (id)currentlyEnforcingIDMSTDL_testOnly:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1001266A4;
  v15 = sub_1001266B4;
  v16 = 0;
  v5 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
  v6 = [(OTCuttlefishContext *)self activeAccount];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012695C;
  v10[3] = &unk_100337EC0;
  v10[4] = &v11;
  v10[5] = &v17;
  [v5 honorIDMSListChangesForSpecificUser:v6 reply:v10];

  v7 = v12[5];
  if (v7)
  {
    v8 = 0;
    if (a3)
    {
      *a3 = v7;
    }
  }

  else if (*(v18 + 24))
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (BOOL)machineIDOnMemoizedList:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v7)
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v9 = v7;
      v10 = 0;
      *a4 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = sub_1001266A4;
    v26 = sub_1001266B4;
    v27 = 0;
    v11 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v12 = [(OTCuttlefishContext *)self activeAccount];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100126CCC;
    v15[3] = &unk_100337E98;
    p_buf = &buf;
    v16 = v6;
    v18 = &v19;
    [v11 fetchAllowedMachineIDsWithSpecificUser:v12 reply:v15];

    if (a4)
    {
      v13 = *(*(&buf + 1) + 40);
      if (v13)
      {
        *a4 = v13;
      }
    }

    v10 = *(v20 + 24);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v19, 8);
  }

  return v10 & 1;
}

- (void)waitForOctagonUpgrade:(id)a3
{
  v4 = a3;
  v5 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "waitForOctagonUpgrade", buf, 2u);
  }

  v6 = [(OTCuttlefishContext *)self sosAdapter];
  v7 = [v6 sosEnabled];

  if (v7)
  {
    v8 = [(OTCuttlefishContext *)self sosAdapter];
    v41 = 0;
    v9 = [v8 circleStatus:&v41];
    v10 = v41;

    v11 = sub_100006274("octagon-sos");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        v13 = [(OTCuttlefishContext *)self sosAdapter];
        v40 = v10;
        v14 = [v13 circleStatus:&v40];
        v15 = v40;

        *buf = 67109120;
        LODWORD(v52) = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SOS circle status: %d, cannot perform sos upgrade", buf, 8u);

        v10 = v15;
      }

      if (v10)
      {
        v16 = sub_100006274("SecError");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = v10;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "octagon-sos: error retrieving circle status: %@", buf, 0xCu);
        }
      }

      else
      {
        v25 = kSOSErrorDomain;
        v53 = NSLocalizedDescriptionKey;
        v54 = @"Not in circle";
        v16 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v10 = [NSError errorWithDomain:v25 code:1037 userInfo:v16];
      }

      v4[2](v4, v10);
      goto LABEL_27;
    }

    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "in sos circle!, attempting upgrade", buf, 2u);
    }

    v18 = [(OTCuttlefishContext *)self stateMachine];
    v19 = [v18 isPaused];

    v20 = [(OTCuttlefishContext *)self stateMachine];
    v21 = v20;
    if (v19)
    {
      v22 = [v20 currentState];
      v23 = [v22 isEqualToString:@"Ready"];

      if (v23)
      {
        v24 = sub_100006274("octagon-sos");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "waitForOctagonUpgrade: already ready, returning", buf, 2u);
        }

LABEL_26:
        v4[2](v4, 0);
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v26 = [v20 waitForState:@"Ready" wait:10000000000];
      v27 = [v26 isEqualToString:@"Ready"];

      v28 = sub_100006274("octagon-sos");
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v29)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "waitForOctagonUpgrade: in ready (after waiting), returning", buf, 2u);
        }

        goto LABEL_26;
      }

      if (v29)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "waitForOctagonUpgrade: fail to get to ready after timeout, attempting upgrade", buf, 2u);
      }
    }

    v50[0] = @"WaitForCDP";
    v50[1] = @"Untrusted";
    v30 = [NSArray arrayWithObjects:v50 count:2];
    v31 = [NSSet setWithArray:v30];

    v48 = @"AttemptSOSUpgradeDetermineCDPState";
    v46 = @"AttemptSOSUpgrade";
    v44 = @"BecomeReady";
    v42 = @"Ready";
    v32 = +[OctagonStateTransitionPathStep success];
    v43 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v45 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v47 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v49 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v37 = [OctagonStateTransitionPath pathFromDictionary:v36];

    v38 = [(OTCuttlefishContext *)self stateMachine];
    v39 = [v38 doWatchedStateMachineRPC:@"sos-upgrade-to-ready" sourceStates:v31 path:v37 reply:v4];

    goto LABEL_27;
  }

  v17 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "sos not enabled, nothing to do for waitForOctagonUpgrade", buf, 2u);
  }

  v4[2](v4, 0);
LABEL_28:
}

- (void)checkOctagonHealth:(BOOL)a3 repair:(BOOL)a4 danglingPeerCleanup:(BOOL)a5 caesarPeerCleanup:(BOOL)a6 updateIdMS:(BOOL)a7 reply:(id)a8
{
  v14 = a8;
  v15 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beginning checking overall Octagon Trust", buf, 2u);
  }

  v16 = [(OTCuttlefishContext *)self stateMachine];
  v17 = [v16 isPaused];

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = [(OTCuttlefishContext *)self stateMachine];
  v19 = [v18 currentState];
  v20 = [v19 isEqualToString:@"WaitForClassCUnlock"];

  if (v20)
  {
    v21 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "currently waiting for class C unlock", buf, 2u);
    }

    v22 = [NSError errorWithDomain:@"com.apple.security.octagon" code:57 description:@"Not performing health check, waiting for Class C Unlock"];
    v14[2](v14, 0, v22);

    goto LABEL_16;
  }

  v23 = [(OTCuttlefishContext *)self stateMachine];
  v24 = [v23 currentState];
  v25 = [v24 isEqualToString:@"NoAccount"];

  if (!v25)
  {
LABEL_12:
    self->_skipRateLimitingCheck = a3;
    self->_repair = a4;
    self->_danglingPeersCleanup = a5;
    self->_caesarPeersCleanup = a6;
    self->_updateIdMS = a7;
    self->_reportRateLimitingError = 1;
    objc_initWeak(buf, self);
    v28 = [(OTCuttlefishContext *)self stateMachine];
    v29 = [v28 currentState];
    v30 = [v29 isEqualToString:@"WaitForCDPCapableSecurityLevel"];

    [(OTCuttlefishContext *)self stateMachine];
    if (v30)
      v31 = {;
      [v31 handleFlag:@"idms_level"];

      v32 = [NSError errorWithDomain:@"com.apple.security.octagon" code:69 description:@"Unable to perform health check on this account type"];
      v14[2](v14, 0, v32);
    }

    else
      v44 = {;
      v43 = +[OTStates OctagonHealthSourceStates];
      v64 = @"CDPHealthCheck";
      v62[0] = @"SecurityTrustCheck";
      v60 = @"TPHTrustCheck";
      v58[0] = @"CuttlefishTrustCheck";
      v56[0] = @"BecomeReady";
      v54[0] = @"Ready";
      v33 = +[OctagonStateTransitionPathStep success];
      v54[1] = @"WaitForUnlock";
      v55[0] = v33;
      v49 = +[OctagonStateTransitionPathStep success];
      v55[1] = v49;
      v48 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
      v57[0] = v48;
      v56[1] = @"HealthCheckReset";
      v47 = +[OctagonStateTransitionPathStep success];
      v57[1] = v47;
      v56[2] = @"HealthCheckLeaveClique";
      v46 = +[OctagonStateTransitionPathStep success];
      v57[2] = v46;
      v45 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
      v59[0] = v45;
      v58[1] = @"WaitForUnlock";
      v34 = +[OctagonStateTransitionPathStep success];
      v59[1] = v34;
      v58[2] = @"Untrusted";
      v35 = +[OctagonStateTransitionPathStep success];
      v59[2] = v35;
      v36 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];
      v61 = v36;
      v37 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v62[1] = @"WaitForCDP";
      v63[0] = v37;
      v38 = +[OctagonStateTransitionPathStep success];
      v63[1] = v38;
      v39 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
      v65 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v41 = [OctagonStateTransitionPath pathFromDictionary:v40];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100127D54;
      v50[3] = &unk_100337E48;
      objc_copyWeak(&v52, buf);
      v51 = v14;
      v42 = [v44 doWatchedStateMachineRPC:@"octagon-trust-health-check" sourceStates:v43 path:v41 reply:v50];

      objc_destroyWeak(&v52);
    }

    objc_destroyWeak(buf);
    goto LABEL_16;
  }

  v26 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not performing health check, not currently signed in", buf, 2u);
  }

  v27 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"Not performing health check, not currently signed in"];
  v14[2](v14, 0, v27);

LABEL_16:
}

- (BOOL)postConfirmPasscodeCFU:(id *)a3
{
  v5 = [(OTCuttlefishContext *)self followupHandler];
  v6 = [(OTCuttlefishContext *)self activeAccount];
  v12 = 0;
  v7 = [v5 postFollowUp:3 activeAccount:v6 error:&v12];
  v8 = v12;

  if (v8)
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon-health: CoreCDP confirm existing secret failed: %@", buf, 0xCu);
    }

    if (a3)
    {
      v10 = v8;
      *a3 = v8;
    }
  }

  return v7;
}

- (BOOL)leaveTrust:(id *)a3
{
  if ([OTSOSActualAdapter sosEnabled]_0() && ((v8 = 0, !sub_10024B760(&v8)) || v8))
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to leave SOS circle: %@", buf, 0xCu);
    }

    v7 = v8;
    if (a3)
    {
      *a3 = v8;
    }

    else if (v8)
    {
      v8 = 0;
      CFRelease(v7);
    }

    return 0;
  }

  else
  {
    v4 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully left SOS", buf, 2u);
    }

    return 1;
  }
}

- (BOOL)recheckCKKSTrustStatus:(id *)a3
{
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  v6 = sub_100006274("octagon");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    if (a3)
    {
      v8 = v5;
      v9 = 0;
      *a3 = v5;
      goto LABEL_20;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_20;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to re-check CKKS's trust status", buf, 2u);
  }

  v10 = [(OTCuttlefishContext *)self stateMachine];
  v11 = [v10 waitForState:@"Ready" wait:10000000000];
  v12 = [v11 isEqualToString:@"Ready"];

  if (!v12)
  {
    v21 = sub_100006274("SecError");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "octagon-ckks: recheckCKKSTrustStatus: failed to get to ready after timeout", buf, 2u);
    }

    if (a3)
    {
      [NSError errorWithDomain:@"com.apple.security.octagon" code:76 description:@"Octagon has not reached a ready state yet"];
      *a3 = v9 = 0;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v13 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(OTCuttlefishContext *)self ckks];
    *buf = 138412290;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resetting CKKS(%@) peer providers", buf, 0xCu);
  }

  v15 = [(OTCuttlefishContext *)self sosAdapter];
  v16 = [v15 sosEnabled];

  v17 = [(OTCuttlefishContext *)self octagonAdapter];
  v18 = v17;
  if (v16)
  {
    v27[0] = v17;
    v19 = [(OTCuttlefishContext *)self sosAdapter];
    v27[1] = v19;
    v20 = [NSArray arrayWithObjects:v27 count:2];
  }

  else
  {
    v26 = v17;
    v20 = [NSArray arrayWithObjects:&v26 count:1];
  }

  v22 = [(OTCuttlefishContext *)self ckks];
  v23 = [(OTCuttlefishContext *)self suggestTLKUploadNotifier];
  v24 = [(OTCuttlefishContext *)self requestPolicyCheckNotifier];
  [v22 beginTrustedOperation:v20 suggestTLKUpload:v23 requestPolicyCheck:v24];

  v9 = 1;
LABEL_20:

  return v9;
}

- (BOOL)shouldPostConfirmPasscodeCFU:(id *)a3
{
  v15 = 0;
  v4 = [(objc_class *)[(OTCuttlefishContext *)self escrowRequestClass] request:&v15];
  v5 = v15;
  v6 = v5;
  if (!v4 || v5)
  {
    v8 = sub_100006274("octagon-health");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v17 = v6;
    v10 = "Unable to acquire a EscrowRequest object: %@";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
LABEL_9:

    if (a3)
    {
      v11 = v6;
      *a3 = v6;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v14 = 0;
  v7 = [v4 pendingEscrowUpload:&v14];
  v6 = v14;
  v8 = sub_100006274("octagon-health");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v17 = v6;
    v10 = "Failed to check escrow prerecord status: %@";
    goto LABEL_8;
  }

  if (!v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "no pending prerecords, posting CFU", buf, 2u);
    }

    v6 = 0;
    goto LABEL_11;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "prerecord is pending, NOT posting CFU", buf, 2u);
  }

  v6 = 0;
  v12 = 0;
LABEL_12:

  return v12;
}

- (BOOL)postRepairCFU:(id *)a3
{
  v5 = [(OTCuttlefishContext *)self followupHandler];
  v6 = [(OTCuttlefishContext *)self activeAccount];
  v12 = 0;
  [v5 postFollowUp:2 activeAccount:v6 error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-health: CoreCDP repair failed: %@", buf, 0xCu);
    }

    if (a3)
    {
      v9 = v7;
      *a3 = v7;
    }
  }

  else
  {
    v10 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CoreCDP post repair success", buf, 2u);
    }
  }

  return v7 == 0;
}

- (void)icscRepairResetWithReply:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self accountMetadataStore];
  v7 = 0;
  [v5 persistAccountChanges:&stru_100337E20 error:&v7];
  v6 = v7;

  v4[2](v4, v6);
}

- (void)rerollWithReply:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(OTOperationConfiguration);
  v6 = [(OTCuttlefishContext *)self errorIfNoCKAccount:v5];
  if (v6)
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, v6);
  }

  else
  {
    v20 = @"OctagonStateStashAccountSettingsForReroll";
    v18 = @"OctagonStateCreateIdentityForReroll";
    v8 = [(OTCuttlefishContext *)self joinStatePathDictionary];
    v17 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [OctagonStateTransitionPath pathFromDictionary:v11];

    v13 = [(OTCuttlefishContext *)self stateMachine];
    v14 = +[OTStates OctagonReadyStates];
    v15 = [v13 doWatchedStateMachineRPC:@"reroll" sourceStates:v14 path:v12 reply:v4];
  }
}

- (void)rpcFetchCountOfTrustedFullPeers:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, &off_1003648D0, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
    v8 = [v7 hasValidCredentials];

    if (v8)
    {
      v9 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
      v10 = [(OTCuttlefishContext *)self activeAccount];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100128CF8;
      v13[3] = &unk_100337E00;
      v14 = v4;
      [v9 fetchTrustedFullPeerCountWithSpecificUser:v10 reply:v13];
    }

    else
    {
      v11 = [NSError errorWithDomain:@"com.apple.security.octagon" code:87 description:@"No valid credentials for signed in account"];
      v12 = sub_100006274("SecError");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "rpc-vouch: Don't have valid credentials for account: %@", buf, 0xCu);
      }

      v4[2](v4, &off_1003648D0, v11);
    }
  }
}

- (void)rpcFetchTotalCountOfTrustedPeers:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, &off_1003648D0, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v8 = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100128E90;
    v9[3] = &unk_100337E00;
    v10 = v4;
    [v7 fetchTrustedPeerCountWithSpecificUser:v8 reply:v9];
  }
}

- (void)rpcTlkRecoverabilityForEscrowRecordData:(id)a3 source:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 1 || ([(OTCuttlefishContext *)self errorIfNoCKAccount:0], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100129020;
    v13[3] = &unk_100337C78;
    v14 = v9;
    [(OTCuttlefishContext *)self tlkRecoverabilityInOctagon:v8 source:a4 reply:v13];
    v11 = v14;
  }

  else
  {
    v11 = v10;
    v12 = sub_100006274("octagon-tlk-recoverability");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    (*(v9 + 2))(v9, 0, v11);
  }
}

- (void)tlkRecoverabilityInOctagon:(id)a3 source:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100129334;
  v11[3] = &unk_100337DD8;
  v13 = self;
  v14 = a5;
  v12 = v8;
  v9 = v8;
  v10 = v14;
  [(OTCuttlefishContext *)self rpcFetchAllViableBottlesFromSource:a4 reply:v11];
}

- (void)octagonPeerIDGivenBottleID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v8)
  {
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v7[2](v7, 0, v8);
  }

  else
  {
    v10 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v11 = [(OTCuttlefishContext *)self activeAccount];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012994C;
    v12[3] = &unk_100337D88;
    v13 = v7;
    [v10 octagonPeerIDGivenBottleIDWithSpecificUser:v11 bottleID:v6 reply:v12];
  }
}

- (void)rpcWaitForPriorityViewKeychainDataRecovery:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, v5);
  }

  else
  {
    v7 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Beginning to wait for CKKS Priority view download", buf, 2u);
    }

    v8 = [(OTCuttlefishContext *)self stateMachine];
    v9 = [v8 waitForState:@"Ready" wait:500000000000];
    v10 = [v9 isEqualToString:@"Ready"];

    if (v10)
    {
      v11 = [(OTCuttlefishContext *)self ckks];
      v12 = [v11 rpcWaitForPriorityViewProcessing];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100129D40;
      v18[3] = &unk_100337D60;
      v19 = v12;
      v20 = self;
      v21 = v4;
      v13 = v12;
      v14 = [CKKSResultOperation named:@"wait-for-sync-reply" withBlockTakingSelf:v18];
      [v14 addDependency:v13];
      v15 = [(OTCuttlefishContext *)self operationQueue];
      [v15 addOperation:v14];
    }

    else
    {
      v16 = sub_100006274("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "octagon-ckks: rpcWaitForPriorityViewKeychainDataRecovery: failed to get to ready after timeout", buf, 2u);
      }

      v17 = [NSError errorWithDomain:@"com.apple.security.octagon" code:76 description:@"Octagon has not reached a ready state yet"];
      v4[2](v4, v17);
    }
  }
}

- (void)rpcFetchAccountSettings:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v5);
  }

  else
  {
    v7 = sub_100006274("octagon-settings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetching account settings", buf, 2u);
    }

    v8 = [(OTCuttlefishContext *)self sessionMetrics];
    v17 = [v8 flowID];

    v9 = [(OTCuttlefishContext *)self sessionMetrics];
    v10 = [v9 deviceSessionID];

    v11 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v12 = [(OTCuttlefishContext *)self activeAccount];
    v13 = [(OTCuttlefishContext *)self containerName];
    v14 = [(OTCuttlefishContext *)self contextID];
    v15 = [(OTCuttlefishContext *)self shouldSendMetricsForOctagon]!= 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10012A8A8;
    v18[3] = &unk_100337D38;
    v19 = v4;
    LOBYTE(v16) = v15;
    [OTStashAccountSettingsOperation performWithAccountWide:0 forceFetch:0 cuttlefishXPCWrapper:v11 activeAccount:v12 containerName:v13 contextID:v14 flowID:v17 deviceSessionID:v10 canSendMetrics:v16 reply:v18];
  }
}

- (void)rpcFetchTrustedSecureElementIdentities:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self accountMetadataStore];
    v21 = 0;
    v8 = [v7 loadOrCreateAccountMetadata:&v21];
    v9 = v21;

    if (!v8 || v9)
    {
      v11 = sub_100006274("octagon");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(OTCuttlefishContext *)self containerName];
        v13 = [(OTCuttlefishContext *)self contextID];
        *buf = 138412802;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to load account metadata for (%@,%@): %@", buf, 0x20u);
      }

      v10 = 0;
    }

    else
    {
      v10 = [v8 parsedSecureElementIdentity];
    }

    objc_initWeak(buf, self);
    v14 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v15 = [(OTCuttlefishContext *)self activeAccount];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10012ACD8;
    v17[3] = &unk_100337D10;
    objc_copyWeak(&v20, buf);
    v19 = v4;
    v16 = v10;
    v18 = v16;
    [v14 fetchTrustStateWithSpecificUser:v15 reply:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (void)rpcRemoveLocalSecureElementIdentityPeerID:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(OTCuttlefishContext *)self accountMetadataStore];
  v11 = 0;
  [v6 persistAccountChanges:&stru_100337CE8 error:&v11];
  v7 = v11;

  v8 = sub_100006274("octagon-se");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to persist removal of identity: %@", buf, 0xCu);
    }

    v5[2](v5, v7);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully persisted removal of SE identity", buf, 2u);
    }

    v10 = [(OTCuttlefishContext *)self stateMachine];
    [v10 handleFlag:@"se_id_changed"];

    v5[2](v5, 0);
  }
}

- (void)rpcSetLocalSecureElementIdentity:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OTCuttlefishContext *)self accountMetadataStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012B4E4;
  v15[3] = &unk_100344BD8;
  v9 = v6;
  v16 = v9;
  v14 = 0;
  [v8 persistAccountChanges:v15 error:&v14];
  v10 = v14;

  v11 = sub_100006274("octagon-se");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to persist identity: %@", buf, 0xCu);
    }

    v7[2](v7, v10);
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully persisted new SE identity: %@", buf, 0xCu);
    }

    v13 = [(OTCuttlefishContext *)self stateMachine];
    [v13 handleFlag:@"se_id_changed"];

    v7[2](v7, 0);
  }
}

- (void)rpcSetAccountSetting:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (!v8)
  {
    v10 = [(OTCuttlefishContext *)self stateMachine];
    v11 = [v10 isPaused];

    if (v11)
    {
      v12 = +[OTStates OctagonReadyStates];
      v13 = [(OTCuttlefishContext *)self stateMachine];
      v14 = [v13 currentState];
      v15 = [NSSet setWithObject:v14];
      v16 = [v12 intersectsSet:v15];

      if ((v16 & 1) == 0)
      {
        v17 = sub_100006274("octagon-settings");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v18 = "device is not in a ready state to set account settings, returning";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else if (![(OTCuttlefishContext *)self waitForReady:10000000000])
    {
      v17 = sub_100006274("octagon-settings");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "rpcSetAccountSetting: failed to reach Ready state";
        goto LABEL_15;
      }

LABEL_16:

      v21 = [NSError errorWithDomain:@"com.apple.security.octagon" code:73 description:@"Device is not in Octagon yet to set account settings"];
      v7[2](v7, v21);
LABEL_17:

      goto LABEL_18;
    }

    v19 = sub_100006274("octagon-settings");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting account settings %@", buf, 0xCu);
    }

    v20 = [(OTCuttlefishContext *)self mergedAccountSettings:v6];
    [(OTCuttlefishContext *)self setAccountSettings:v20];

    v21 = [(OTCuttlefishContext *)self stateMachine];
    v22 = +[OTStates OctagonReadyStates];
    v33 = @"SetAccountSettings";
    v31 = @"BecomeReady";
    v23 = +[OctagonStateTransitionPathStep success];
    v30 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v32 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v34 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v27 = [OctagonStateTransitionPath pathFromDictionary:v26];
    v28 = [v21 doWatchedStateMachineRPC:@"octagon-set-account-settings" sourceStates:v22 path:v27 reply:v7];

    goto LABEL_17;
  }

  v9 = sub_100006274("octagon");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
  }

  v7[2](v7, v8);
LABEL_18:
}

- (void)rpcSetUserControllableViewsSyncingStatus:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v7)
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v6[2](v6, 0, v7);
  }

  else
  {
    v9 = [(OTCuttlefishContext *)self accountMetadataStore];
    v31 = 0;
    v10 = [v9 loadOrCreateAccountMetadata:&v31];
    v11 = v31;

    if (v11)
    {
      v12 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error fetching acount state: %@", buf, 0xCu);
      }
    }

    if ([v10 isInheritedAccount])
    {
      v13 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Account is inherited, user controllable views cannot be set", buf, 2u);
      }

      v14 = [NSError errorWithDomain:@"com.apple.security.octagon" code:55 description:@"Cannot set user controllable views"];
      v6[2](v6, 0, v14);
    }

    else
    {
      v26 = v11;
      v27 = v10;
      v15 = @"DisableUserControllableViews";
      if (v4)
      {
        v15 = @"EnableUserControllableViews";
      }

      v14 = v15;
      v16 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"disabled";
        if (v4)
        {
          v17 = @"enabled";
        }

        *buf = 138412290;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Settting user-controllable sync status as '%@'", buf, 0xCu);
      }

      v25 = [(OTCuttlefishContext *)self stateMachine];
      v24 = +[OTStates OctagonReadyStates];
      v36 = v14;
      v34 = @"BecomeReady";
      v32 = @"Ready";
      v18 = +[OctagonStateTransitionPathStep success];
      v33 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v35 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v37 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v22 = [OctagonStateTransitionPath pathFromDictionary:v21];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10012BD98;
      v28[3] = &unk_100337CC8;
      v30 = v4;
      v28[4] = self;
      v29 = v6;
      v23 = [v25 doWatchedStateMachineRPC:@"octagon-set-policy" sourceStates:v24 path:v22 reply:v28];

      v11 = v26;
      v10 = v27;
    }
  }
}

- (void)rpcFetchUserControllableViewsSyncingStatus:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (!v5)
  {
    v7 = [(OTCuttlefishContext *)self stateMachine];
    v8 = [v7 isPaused];

    if (v8)
    {
      v9 = +[OTStates OctagonNotInCliqueStates];
      v10 = [(OTCuttlefishContext *)self stateMachine];
      v11 = [v10 currentState];
      v12 = [NSSet setWithObject:v11];
      v13 = [v9 intersectsSet:v12];

      if (v13)
      {
        v14 = sub_100006274("octagon-ckks");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v15 = "device is not in clique, returning not syncing";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
          goto LABEL_13;
        }

        goto LABEL_13;
      }

      v16 = [(OTCuttlefishContext *)self stateMachine];
      v17 = [v16 currentState];
      v18 = [v17 isEqualToString:@"Error"];

      if (v18)
      {
        v14 = sub_100006274("octagon-ckks");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v15 = "state machine in the error state, cannot service request";
          goto LABEL_12;
        }

LABEL_13:

        v19 = v4[2];
        v20 = v4;
        v21 = 0;
        goto LABEL_25;
      }
    }

    v22 = [(OTCuttlefishContext *)self ckks];
    v23 = [v22 syncingPolicy];

    if (!v23)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10012C450;
      v33[3] = &unk_1003386E8;
      v33[4] = self;
      v34 = v4;
      [(OTCuttlefishContext *)self rpcRefetchCKKSPolicy:v33];

      goto LABEL_26;
    }

    v24 = [(OTCuttlefishContext *)self ckks];
    v25 = [v24 syncingPolicy];
    v26 = [v25 syncUserControllableViewsAsBoolean];

    v27 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (v26)
      {
        v28 = @"enabled";
      }

      else
      {
        v28 = @"disabled";
      }

      v29 = [(OTCuttlefishContext *)self ckks];
      v30 = [v29 syncingPolicy];
      v31 = [v30 syncUserControllableViews];
      if (v31 >= 4)
      {
        v32 = [NSString stringWithFormat:@"(unknown: %i)", v31];
      }

      else
      {
        v32 = off_100337F20[v31];
      }

      *buf = 138412546;
      v36 = v28;
      v37 = 2112;
      v38 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Returning user-controllable status as %@ (%@)", buf, 0x16u);
    }

    v19 = v4[2];
    v20 = v4;
    v21 = v26;
LABEL_25:
    v19(v20, v21, 0);
    goto LABEL_26;
  }

  v6 = sub_100006274("octagon");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
  }

  (v4[2])(v4, 0, v5);
LABEL_26:
}

- (void)rpcRefetchCKKSPolicy:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self stateMachine];
  v6 = +[OTStates OctagonReadyStates];
  v17 = @"RefetchCKKSPolicy";
  v15 = @"BecomeReady";
  v13 = @"Ready";
  v7 = +[OctagonStateTransitionPathStep success];
  v14 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v11 = [OctagonStateTransitionPath pathFromDictionary:v10];
  v12 = [v5 doWatchedStateMachineRPC:@"octagon-refetch-ckks-policy" sourceStates:v6 path:v11 reply:v4];
}

- (void)fetchEscrowContents:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    (*(v4 + 2))(v4, 0, 0, 0, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v8 = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012CA44;
    v9[3] = &unk_100337CA0;
    v10 = v4;
    [v7 fetchEscrowContentsWithSpecificUser:v8 reply:v9];
  }
}

- (void)rpcInvalidateEscrowCache:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v8 = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012CD58;
    v9[3] = &unk_100337928;
    v10 = v4;
    [v7 removeEscrowCacheWithSpecificUser:v8 reply:v9];
  }
}

- (void)rpcFetchAllViableEscrowRecordsFromSource:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  if (a3 == 1 || ([(OTCuttlefishContext *)self errorIfNoCKAccount:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v11 = [(OTCuttlefishContext *)self activeAccount];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012D020;
    v12[3] = &unk_100337C78;
    v13 = v6;
    [v10 fetchViableEscrowRecordsWithSpecificUser:v11 source:a3 reply:v12];

    v8 = v13;
  }

  else
  {
    v8 = v7;
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0, v8);
  }
}

- (void)rpcFetchAllViableBottlesFromSource:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  if (a3 == 1 || ([(OTCuttlefishContext *)self errorIfNoCKAccount:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(OTCuttlefishContext *)self sessionMetrics];
    v10 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v11 = [(OTCuttlefishContext *)self activeAccount];
    v12 = [v8 flowID];
    v13 = [v8 deviceSessionID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10012D364;
    v14[3] = &unk_100337C50;
    v15 = v6;
    [v10 fetchViableBottlesWithSpecificUser:v11 source:a3 flowID:v12 deviceSessionID:v13 reply:v14];
  }

  else
  {
    v8 = v7;
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0, 0, v8);
  }
}

- (void)rpcTrustStatus:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1001266A4;
  v56 = sub_1001266B4;
  v57 = 0;
  v8 = [(OTCuttlefishContext *)self accountMetadataStore];
  v9 = v53;
  v51 = v53[5];
  v10 = [v8 loadOrCreateAccountMetadata:&v51];
  objc_storeStrong(v9 + 5, v51);

  if (v53[5])
  {
    v11 = [(OTCuttlefishContext *)self lockStateTracker];
    v12 = [v11 isLockedError:v53[5]];

    if (v12)
    {
      v13 = sub_100006274("octagon");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device is locked! pending initialization on unlock", &buf, 2u);
      }

      v14 = v53[5];
      v15 = -1;
LABEL_10:
      (*(v7 + 2))(v7, v15, 0, 0, 0, 0, v14);
      goto LABEL_31;
    }
  }

  if ([v10 icloudAccountState] == 1)
  {
    v16 = sub_100006274("octagon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "no account! returning clique status 'no account'", &buf, 2u);
    }

    v14 = 0;
    v15 = 4;
    goto LABEL_10;
  }

  if ([v6 useCachedAccountStatus])
  {
    [(OTCuttlefishContext *)self rpcTrustStatusCachedStatus:v10 reply:v7];
    goto LABEL_31;
  }

  v17 = [(OTCuttlefishContext *)self checkForCKAccount:v6];
  if (!v17)
  {
    v19 = sub_100006274("octagon");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v20 = "Unknown cloudkit account status, returning cached trust value";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &buf, 2u);
    }

LABEL_24:

    [(OTCuttlefishContext *)self rpcTrustStatusCachedStatus:v10 reply:v7];
    goto LABEL_31;
  }

  if (v17 == 3)
  {
    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No cloudkit account present", &buf, 2u);
    }

    (*(v7 + 2))(v7, 4, 0, 0, 0, 0, 0);
    goto LABEL_31;
  }

  if ([v10 isInheritedAccount])
  {
    v19 = sub_100006274("octagon");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v20 = "Inherited account -- should circuit to cached trust value";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v21 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v21)
  {
    v22 = sub_100006274("octagon");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", &buf, 0xCu);
    }

    (*(v7 + 2))(v7, 4, 0, 0, 0, 0, v21);
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v59 = 0x3032000000;
    v60 = sub_1001266A4;
    v61 = sub_1001266B4;
    v62 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_1001266A4;
    v49 = sub_1001266B4;
    v50 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = -1;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v23 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v24 = [(OTCuttlefishContext *)self activeAccount];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10012DBB8;
    v25[3] = &unk_100337C28;
    v28 = &v41;
    v29 = &v45;
    v30 = &v33;
    v31 = &v52;
    p_buf = &buf;
    v25[4] = self;
    v26 = v10;
    v32 = &v37;
    [v23 trustStatusWithSpecificUser:v24 reply:v25];

    (*(v7 + 2))(v7, v38[3], *(*(&buf + 1) + 40), v46[5], *(v42 + 24), *(v34 + 24), v53[5]);
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);

    _Block_object_dispose(&buf, 8);
  }

LABEL_31:
  _Block_object_dispose(&v52, 8);
}

- (void)rpcTrustStatusCachedStatus:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isInheritedAccount] & 1) != 0 || objc_msgSend(v5, "trustState") == 2)
  {
    v7 = 0;
  }

  else if ([v5 trustState] == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v8 = sub_100006274("octagon");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = OTCliqueStatusToString();
    v11 = 138412290;
    v12 = v10;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "returning cached clique status: %@", &v11, 0xCu);
  }

  v9 = [v5 peerID];
  (*(v6 + 2))(v6, v7, v9, 0, 0, 0, 0);
}

- (void)rpcCreateInheritanceKeyWithUUID:(id)a3 claimTokenData:(id)a4 wrappingKeyData:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v14)
  {
    v15 = sub_100006274("octagon");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v13[2](v13, 0, v14);
  }

  else
  {
    v16 = [OTCreateInheritanceKeyWithClaimTokenAndWrappingKey alloc];
    v17 = [(OTCuttlefishContext *)self operationDependencies];
    v18 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)v16 initWithUUID:v10 claimTokenData:v11 wrappingKeyData:v12 dependencies:v17];

    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10012E2B8;
    v26 = &unk_100344DC8;
    v27 = v18;
    v28 = v13;
    v19 = v18;
    v20 = [CKKSResultOperation named:@"createInheritanceKeyWithClaimTokenAndWrappingKey-callback" withBlock:&v23];
    [v20 addDependency:{v19, v23, v24, v25, v26}];
    v21 = [(OTCuttlefishContext *)self operationQueue];
    [v21 addOperation:v20];

    v22 = [(OTCuttlefishContext *)self operationQueue];
    [v22 addOperation:v19];
  }
}

- (void)rpcRecreateInheritanceKeyWithUUID:(id)a3 oldIK:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v11)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v10[2](v10, 0, v11);
  }

  else
  {
    v13 = [OTRecreateInheritanceKeyOperation alloc];
    v14 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTRecreateInheritanceKeyOperation *)v13 initWithUUID:v8 oldIK:v9 dependencies:v14];

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10012E5F8;
    v23 = &unk_100344DC8;
    v24 = v15;
    v25 = v10;
    v16 = v15;
    v17 = [CKKSResultOperation named:@"recreateInheritanceKey-callback" withBlock:&v20];
    [v17 addDependency:{v16, v20, v21, v22, v23}];
    v18 = [(OTCuttlefishContext *)self operationQueue];
    [v18 addOperation:v17];

    v19 = [(OTCuttlefishContext *)self operationQueue];
    [v19 addOperation:v16];
  }
}

- (void)rpcCheckInheritanceKeyWithUUID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [OTFindCustodianRecoveryKeyOperation alloc];
  v9 = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTFindCustodianRecoveryKeyOperation *)v8 initWithUUID:v7 dependencies:v9];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012E864;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"checkInheritanceKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  v14 = [(OTCuttlefishContext *)self operationQueue];
  [v14 addOperation:v13];

  v15 = [(OTCuttlefishContext *)self operationQueue];
  [v15 addOperation:v12];
}

- (void)rpcRemoveInheritanceKeyWithUUID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [OTRemoveCustodianRecoveryKeyOperation alloc];
  v9 = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTRemoveCustodianRecoveryKeyOperation *)v8 initWithUUID:v7 dependencies:v9];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012EB28;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"removeInheritanceKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  v14 = [(OTCuttlefishContext *)self operationQueue];
  [v14 addOperation:v13];

  v15 = [(OTCuttlefishContext *)self operationQueue];
  [v15 addOperation:v12];
}

- (void)rpcStoreInheritanceKeyWithIK:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [OTStoreInheritanceKeyOperation alloc];
  v9 = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTStoreInheritanceKeyOperation *)v8 initWithIK:v7 dependencies:v9];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012ED7C;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"storeInheritanceKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  v14 = [(OTCuttlefishContext *)self operationQueue];
  [v14 addOperation:v13];

  v15 = [(OTCuttlefishContext *)self operationQueue];
  [v15 addOperation:v12];
}

- (void)rpcGenerateInheritanceKeyWithUUID:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v5 = objc_alloc_init(NSUUID);
  }

  v10 = 0;
  v7 = [[OTInheritanceKey alloc] initWithUUID:v5 error:&v10];
  v8 = v10;
  if (v7)
  {
    v6[2](v6, v7, 0);
  }

  else
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon: failed to generate inheritance key: %@", buf, 0xCu);
    }

    (v6)[2](v6, 0, v8);
  }
}

- (void)rpcCreateInheritanceKeyWithUUID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [OTCreateInheritanceKeyOperation alloc];
  v9 = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTCreateInheritanceKeyOperation *)v8 initWithUUID:v7 dependencies:v9];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012F120;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"createInheritanceKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  v14 = [(OTCuttlefishContext *)self operationQueue];
  [v14 addOperation:v13];

  v15 = [(OTCuttlefishContext *)self operationQueue];
  [v15 addOperation:v12];
}

- (void)rpcCheckCustodianRecoveryKeyWithUUID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [OTFindCustodianRecoveryKeyOperation alloc];
  v9 = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTFindCustodianRecoveryKeyOperation *)v8 initWithUUID:v7 dependencies:v9];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012F38C;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"checkCustodianRecoveryKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  v14 = [(OTCuttlefishContext *)self operationQueue];
  [v14 addOperation:v13];

  v15 = [(OTCuttlefishContext *)self operationQueue];
  [v15 addOperation:v12];
}

- (void)rpcRemoveCustodianRecoveryKeyWithUUID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [OTRemoveCustodianRecoveryKeyOperation alloc];
  v9 = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTRemoveCustodianRecoveryKeyOperation *)v8 initWithUUID:v7 dependencies:v9];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012F650;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"removeCustodianRecoveryKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  v14 = [(OTCuttlefishContext *)self operationQueue];
  [v14 addOperation:v13];

  v15 = [(OTCuttlefishContext *)self operationQueue];
  [v15 addOperation:v12];
}

- (void)rpcCreateCustodianRecoveryKeyWithUUID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [OTCreateCustodianRecoveryKeyOperation alloc];
  v9 = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTCreateCustodianRecoveryKeyOperation *)v8 initWithUUID:v7 dependencies:v9];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012F8A4;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"createCustodianRecoveryKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  v14 = [(OTCuttlefishContext *)self operationQueue];
  [v14 addOperation:v13];

  v15 = [(OTCuttlefishContext *)self operationQueue];
  [v15 addOperation:v12];
}

- (void)areRecoveryKeysDistrusted:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v8 = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012FB30;
    v9[3] = &unk_100337BD8;
    v10 = v4;
    [v7 octagonContainsDistrustedRecoveryKeysWithSpecificUser:v8 reply:v9];
  }
}

- (void)rpcRemoveRecoveryKey:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v8 = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012FCC4;
    v9[3] = &unk_100337BD8;
    v10 = v4;
    [v7 removeRecoveryKey:v8 reply:v9];
  }
}

- (void)rpcIsRecoveryKeySet:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v8 = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012FE58;
    v9[3] = &unk_100337BD8;
    v10 = v4;
    [v7 isRecoveryKeySet:v8 reply:v9];
  }
}

- (void)rpcSetRecoveryKey:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(OTCuttlefishContext *)self lockStateTracker];

  if (v8)
  {
    v9 = [(OTCuttlefishContext *)self lockStateTracker];
    [v9 recheck];
  }

  v10 = [OTSetRecoveryKeyOperation alloc];
  v11 = [(OTCuttlefishContext *)self operationDependencies];
  v12 = [(OTSetRecoveryKeyOperation *)v10 initWithDependencies:v11 recoveryKey:v7];

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10012FFF8;
  v21 = &unk_100344DC8;
  v22 = v12;
  v23 = v6;
  v13 = v6;
  v14 = v12;
  v15 = [CKKSResultOperation named:@"setRecoveryKey-callback" withBlock:&v18];
  [v15 addDependency:{v14, v18, v19, v20, v21}];
  v16 = [(OTCuttlefishContext *)self operationQueue];
  [v16 addOperation:v15];

  v17 = [(OTCuttlefishContext *)self operationQueue];
  [v17 addOperation:v14];
}

- (void)fetchTrustedDeviceNamesByPeerID:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v5)
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v5);
  }

  else
  {
    v7 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v8 = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013026C;
    v9[3] = &unk_100344F58;
    v10 = v4;
    [v7 trustedDeviceNamesByPeerIDWithSpecificUser:v8 reply:v9];
  }
}

- (void)rpcFetchEgoPeerID:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self accountMetadataStore];
  v11 = 0;
  v6 = [v5 getEgoPeerID:&v11];
  v7 = v11;

  v8 = sub_100006274("octagon");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 138412290;
      v13 = v6;
      v10 = "Returning peer ID: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }

  else if (v9)
  {
    *buf = 138412290;
    v13 = v7;
    v10 = "Unable to fetch peer ID: %@";
    goto LABEL_6;
  }

  v4[2](v4, v6, v7);
}

- (void)rpcStatus:(id)a3 reply:(id)a4
{
  v63 = a3;
  v64 = a4;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1001266A4;
  v75 = sub_1001266B4;
  v76 = +[NSMutableDictionary dictionary];
  v6 = [(OTCuttlefishContext *)self containerName];
  [v72[5] setObject:v6 forKeyedSubscript:@"containerName"];

  v7 = [(OTCuttlefishContext *)self contextID];
  [v72[5] setObject:v7 forKeyedSubscript:@"contextID"];

  v8 = [(OTCuttlefishContext *)self activeAccount];
  v9 = [v8 description];
  [v72[5] setObject:v9 forKeyedSubscript:@"activeAccount"];

  v10 = objc_alloc_init(OTOperationConfiguration);
  [v10 setTimeoutWaitForCKAccount:2000000000];
  v11 = [(OTCuttlefishContext *)self errorIfNoCKAccount:v10];
  if (v11)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v64[2](v64, 0, v11);
  }

  else
  {
    v13 = [(OTCuttlefishContext *)self stateMachine];
    v14 = [v13 paused];
    v15 = [v14 wait:3000000000] == 0;

    if (!v15)
    {
      v16 = sub_100006274("octagon");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(OTCuttlefishContext *)self containerName];
        v18 = [(OTCuttlefishContext *)self contextID];
        *buf = 138412546;
        v78 = v17;
        v79 = 2112;
        v80 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning status of unpaused state machine for container (%@) and context (%@)", buf, 0x16u);
      }

      [v72[5] setObject:&off_1003648B8 forKeyedSubscript:@"stateUnpaused"];
    }

    v19 = [(OTCuttlefishContext *)self stateMachine];
    v20 = [v19 currentState];
    [v72[5] setObject:v20 forKeyedSubscript:@"state"];

    v21 = [(OTCuttlefishContext *)self stateMachine];
    v22 = [v21 dumpPendingFlags];
    [v72[5] setObject:v22 forKeyedSubscript:@"statePendingFlags"];

    v23 = [(OTCuttlefishContext *)self stateMachine];
    v24 = [v23 flags];
    v25 = [v24 dumpFlags];
    [v72[5] setObject:v25 forKeyedSubscript:@"stateFlags"];

    v26 = [(OTCuttlefishContext *)self accountMetadataStore];
    v70 = 0;
    v27 = [v26 loadOrCreateAccountMetadata:&v70];
    v62 = v70;

    if (v62)
    {
      v28 = sub_100006274("octagon");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(OTCuttlefishContext *)self containerName];
        v30 = [(OTCuttlefishContext *)self contextID];
        *buf = 138412802;
        v78 = v29;
        v79 = 2112;
        v80 = v30;
        v81 = 2112;
        v82 = v62;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to load account metaada for container (%@) and context (%@): %@", buf, 0x20u);
      }
    }

    v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 trustState]);
    [v72[5] setObject:v31 forKeyedSubscript:@"memoizedTrustState"];

    v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 icloudAccountState]);
    [v72[5] setObject:v32 forKeyedSubscript:@"memoizedAccountState"];

    v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 cdpState]);
    [v72[5] setObject:v33 forKeyedSubscript:@"memoizedCDPStatus"];

    v34 = [(OTCuttlefishContext *)self launchSequence];
    v35 = [v34 eventsByTime];
    [v72[5] setObject:v35 forKeyedSubscript:@"octagonLaunchSeqence"];

    v36 = [v27 memoizedLastEscrowRepairTriggered];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = @"never";
    }

    [v72[5] setObject:v38 forKeyedSubscript:@"lastEscrowRepairTriggered"];
    v39 = [v27 memoizedLastEscrowRepairAttempted];
    v61 = v39;
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = @"never";
    }

    [v72[5] setObject:v40 forKeyedSubscript:@"lastEscrowRepairAttempted"];
    v41 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v27 escrowRepairAttemptVersion]);
    [v72[5] setObject:v41 forKeyedSubscript:@"escrowRepairAttemptVersion"];

    v42 = [v27 memoizedLastHealthCheck];
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = @"Never checked";
    }

    [v72[5] setObject:v44 forKeyedSubscript:@"memoizedlastHealthCheck"];
    v45 = [(OTCuttlefishContext *)self sosAdapter];
    v46 = [v45 sosEnabled];

    if (v46)
    {
      v47 = [(OTCuttlefishContext *)self sosTrustedPeersStatus];
      [v72[5] setObject:v47 forKeyedSubscript:@"sosTrustedPeersStatus"];

      v48 = [(OTCuttlefishContext *)self sosSelvesStatus];
      [v72[5] setObject:v48 forKeyedSubscript:@"sosSelvesStatus"];
    }

    v69 = 0;
    v49 = [(objc_class *)[(OTCuttlefishContext *)self escrowRequestClass] request:&v69];
    v50 = v69;
    v68 = v50;
    v51 = [v49 fetchStatuses:&v68];
    v52 = v68;

    [v72[5] setObject:v51 forKeyedSubscript:@"escrowRequest"];
    v53 = [(OTCuttlefishContext *)self followupHandler];
    v54 = [v53 sysdiagnoseStatus];
    [v72[5] setObject:v54 forKeyedSubscript:@"CoreFollowUp"];

    v55 = +[CKKSAnalytics logger];
    v56 = [v55 datePropertyForKey:@"lastOctagonPush"];
    [v72[5] setObject:v56 forKeyedSubscript:@"lastOctagonPush"];

    v57 = [(OTCuttlefishContext *)self apsReceiver];
    v58 = [v57 registeredPushEnvironments];
    [v72[5] setObject:v58 forKeyedSubscript:@"pushEnvironments"];

    v59 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v60 = [(OTCuttlefishContext *)self activeAccount];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100130DD0;
    v65[3] = &unk_100337C00;
    v66 = v64;
    v67 = &v71;
    [v59 dumpWithSpecificUser:v60 fileDescriptor:v63 reply:v65];
  }

  _Block_object_dispose(&v71, 8);
}

- (id)sosSelvesStatus
{
  v3 = [(OTCuttlefishContext *)self sosAdapter];
  v23 = 0;
  v4 = [v3 fetchSelfPeers:&v23];
  v5 = v23;

  if (!v4 || v5)
  {
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No SOS selves present: %@, skipping in status", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [v4 currentSelf];
    v8 = [(OTCuttlefishContext *)self ckksPeerStatus:v7];
    [v6 setObject:v8 forKeyedSubscript:@"currentSelf"];

    v9 = [v4 allSelves];
    v10 = [v9 mutableCopy];

    v11 = [v4 currentSelf];
    [v10 removeObject:v11];

    if ([v10 count])
    {
      v12 = +[NSMutableArray array];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v10;
      v13 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v10);
            }

            v17 = [(OTCuttlefishContext *)self ckksPeerStatus:*(*(&v19 + 1) + 8 * i), v19];
            if (v17)
            {
              [v12 addObject:v17];
            }
          }

          v14 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v14);
      }

      [v6 setObject:v12 forKeyedSubscript:@"pastSelves"];
    }
  }

  return v6;
}

- (id)sosTrustedPeersStatus
{
  v3 = [(OTCuttlefishContext *)self sosAdapter];
  v18 = 0;
  v4 = [v3 fetchTrustedPeers:&v18];
  v5 = v18;

  if (!v4 || v5)
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No SOS peers present: %@, skipping in status", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(OTCuttlefishContext *)self ckksPeerStatus:*(*(&v14 + 1) + 8 * i), v14];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (id)ckksPeerStatus:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 peerID];

  if (v5)
  {
    v6 = [v3 peerID];
    [v4 setObject:v6 forKeyedSubscript:@"peerID"];
  }

  v7 = [v3 publicSigningKey];
  v8 = [v7 encodeSubjectPublicKeyInfo];

  if (v8)
  {
    v9 = [v8 base64EncodedStringWithOptions:0];
    [v4 setObject:v9 forKeyedSubscript:@"signingSPKI"];

    v10 = [TPHashBuilder hashWithAlgo:1 ofData:v8];
    [v4 setObject:v10 forKeyedSubscript:@"signingSPKIHash"];
  }

  return v4;
}

- (void)rpcJoin:(id)a3 vouchSig:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v11)
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v10[2](v10, v11);
  }

  else
  {
    v13 = [(OTCuttlefishContext *)self accountMetadataStore];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100131748;
    v24[3] = &unk_100338E48;
    v25 = v8;
    v26 = v9;
    v23 = 0;
    [v13 persistAccountChanges:v24 error:&v23];
    v14 = v23;

    if (v14)
    {
      v15 = sub_100006274("octagon");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to save voucher for joining: %@", buf, 0xCu);
      }

      v10[2](v10, v14);
    }

    else
    {
      v16 = [NSSet setWithObjects:@"InitiatorAwaitingVoucher", @"Untrusted", 0];
      v17 = [(OTCuttlefishContext *)self joinStatePathDictionary];
      v18 = [OctagonStateTransitionPath pathFromDictionary:v17];

      v19 = [(OTCuttlefishContext *)self stateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100131798;
      v21[3] = &unk_1003386E8;
      v21[4] = self;
      v22 = v10;
      v20 = [v19 doWatchedStateMachineRPC:@"rpc-join" sourceStates:v16 path:v18 reply:v21];
    }
  }
}

- (id)joinStatePathDictionary
{
  v59 = @"InitiatorSetCDPBit";
  v57 = @"InitiatorUpdateDeviceList";
  v55 = @"InitiatorJoin";
  v53[0] = @"BottlePreloadOctagonKeysInSOS";
  v51[0] = @"JoinSOSAfterCKKSFetch";
  v49 = @"SetAccountSettings";
  v47 = @"BecomeReady";
  v45 = @"Ready";
  v24 = +[OctagonStateTransitionPathStep success];
  v46 = v24;
  v23 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v48 = v23;
  v22 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v50 = v22;
  v21 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v51[1] = @"SetAccountSettings";
  v52[0] = v21;
  v43 = @"BecomeReady";
  v41 = @"Ready";
  v20 = +[OctagonStateTransitionPathStep success];
  v42 = v20;
  v19 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v44 = v19;
  v18 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v52[1] = v18;
  v17 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
  v53[1] = @"InitiatorJoinCKKSReset";
  v54[0] = v17;
  v39 = @"InitiatorJoinAfterCKKSReset";
  v37 = @"BottlePreloadOctagonKeysInSOS";
  v35[0] = @"JoinSOSAfterCKKSFetch";
  v33 = @"SetAccountSettings";
  v31 = @"BecomeReady";
  v29 = @"Ready";
  v16 = +[OctagonStateTransitionPathStep success];
  v30 = v16;
  v15 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v32 = v15;
  v14 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v34 = v14;
  v13 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v35[1] = @"SetAccountSettings";
  v36[0] = v13;
  v27 = @"BecomeReady";
  v25 = @"Ready";
  v2 = +[OctagonStateTransitionPathStep success];
  v26 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v36[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v38 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v40 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v54[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
  v56 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v58 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v60 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];

  return v11;
}

- (void)preflightRecoverOctagonUsingRecoveryKey:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v8)
  {
    v9 = sub_100006274("octagon-preflight-rk");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v7[2](v7, 0, v8);
  }

  else
  {
    v10 = [(OTCuttlefishContext *)self activeAccount];
    v11 = [v10 altDSID];

    if (v11)
    {
      v12 = v11;
      v13 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
      v14 = [(OTCuttlefishContext *)self activeAccount];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100131F5C;
      v18[3] = &unk_100337BD8;
      v19 = v7;
      [v13 preflightRecoverOctagonUsingRecoveryKey:v14 recoveryKey:v6 salt:v12 reply:v18];

      v15 = v19;
    }

    else
    {
      v16 = sub_100006274("octagon-preflight-rk");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(OTCuttlefishContext *)self activeAccount];
        *buf = 138412290;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
      }

      v15 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
      v7[2](v7, 0, v15);
    }
  }
}

- (void)preflightJoinWithInheritanceKey:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(OTOperationConfiguration);
  v9 = [(OTCuttlefishContext *)self errorIfNoCKAccount:v8];
  if (v9)
  {
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v7[2](v7, v9);
  }

  else
  {
    v11 = [OTCustodianRecoveryKey alloc];
    v12 = [v6 uuid];
    v13 = [v6 recoveryKeyData];
    v14 = [v13 base64EncodedStringWithOptions:0];
    v29 = 0;
    v15 = [v11 initWithUUID:v12 recoveryString:v14 error:&v29];
    v16 = v29;

    if (v15)
    {
      v17 = [TrustedPeersHelperCustodianRecoveryKey alloc];
      v18 = [v15 uuid];
      v19 = [v18 UUIDString];
      [v15 recoveryString];
      v20 = v28 = v16;
      v21 = [(TrustedPeersHelperCustodianRecoveryKey *)v17 initWithUUID:v19 encryptionKey:0 signingKey:0 recoveryString:v20 salt:&stru_100348050 kind:2];

      v22 = [OTPreflightVouchWithCustodianRecoveryKeyOperation alloc];
      v23 = [(OTCuttlefishContext *)self operationDependencies];
      v24 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)v22 initWithDependencies:v23 intendedState:@"BecomeReady" errorState:@"BecomeReady" tphcrk:v21];

      v25 = +[OTStates OctagonReadyStates];
      v26 = [(OTCuttlefishContext *)self stateMachine];
      [v26 doSimpleStateMachineRPC:@"preflight-inheritance-recovery-key" op:v24 sourceStates:v25 reply:v7];

      v16 = v28;
    }

    else
    {
      v27 = sub_100006274("SecError");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "octagon-inheritance: failed to create CRK: %@", buf, 0xCu);
      }

      v7[2](v7, v16);
    }
  }
}

- (void)joinWithInheritanceKey:(id)a3 reply:(id)a4
{
  v6 = a4;
  [(OTCuttlefishContext *)self setInheritanceKey:a3];
  v7 = objc_alloc_init(OTOperationConfiguration);
  v8 = [(OTCuttlefishContext *)self errorIfNoCKAccount:v7];
  if (v8)
  {
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v6[2](v6, v8);
  }

  else
  {
    v22 = @"PrepareAndRecoverTLKSharesForInheritancePeer";
    v20 = @"BecomeInherited";
    v10 = +[OctagonStateTransitionPathStep success];
    v19 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = [OctagonStateTransitionPath pathFromDictionary:v13];

    v15 = [(OTCuttlefishContext *)self stateMachine];
    v16 = +[OTStates OctagonInAccountStates];
    v17 = [v15 doWatchedStateMachineRPC:@"rpc-join-with-inheritance-key" sourceStates:v16 path:v14 reply:v6];
  }
}

- (void)preflightJoinWithCustodianRecoveryKey:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(OTOperationConfiguration);
  v9 = [(OTCuttlefishContext *)self errorIfNoCKAccount:v8];
  if (v9)
  {
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v7[2](v7, v9);
  }

  else
  {
    v11 = [(OTCuttlefishContext *)self activeAccount];
    v12 = [v11 altDSID];

    if (v12)
    {
      v13 = v12;
      v14 = [TrustedPeersHelperCustodianRecoveryKey alloc];
      v15 = [v6 uuid];
      v16 = [v15 UUIDString];
      [v6 recoveryString];
      v17 = v27 = v12;
      v18 = [(TrustedPeersHelperCustodianRecoveryKey *)v14 initWithUUID:v16 encryptionKey:0 signingKey:0 recoveryString:v17 salt:v13 kind:1];

      v19 = [OTPreflightVouchWithCustodianRecoveryKeyOperation alloc];
      v20 = [(OTCuttlefishContext *)self operationDependencies];
      v21 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)v19 initWithDependencies:v20 intendedState:@"BecomeReady" errorState:@"BecomeReady" tphcrk:v18];

      v22 = +[OTStates OctagonReadyStates];
      v23 = [(OTCuttlefishContext *)self stateMachine];
      [v23 doSimpleStateMachineRPC:@"preflight-custodian-recovery-key" op:v21 sourceStates:v22 reply:v7];

      v12 = v27;
    }

    else
    {
      v24 = sub_100006274("authkit");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(OTCuttlefishContext *)self activeAccount];
        *buf = 138412290;
        v29 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
      }

      v26 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
      v7[2](v7, v26);
    }
  }
}

- (void)joinWithCustodianRecoveryKey:(id)a3 reply:(id)a4
{
  v6 = a4;
  [(OTCuttlefishContext *)self setCustodianRecoveryKey:a3];
  v7 = objc_alloc_init(OTOperationConfiguration);
  v8 = [(OTCuttlefishContext *)self errorIfNoCKAccount:v7];
  if (v8)
  {
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v6[2](v6, v8);
  }

  else
  {
    v19 = @"CreateIdentityForCustodianRecoveryKey";
    v10 = [(OTCuttlefishContext *)self joinStatePathDictionary];
    v18 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [OctagonStateTransitionPath pathFromDictionary:v12];

    v14 = [(OTCuttlefishContext *)self stateMachine];
    v15 = +[OTStates OctagonInAccountStates];
    v16 = [v14 doWatchedStateMachineRPC:@"rpc-join-with-custodian-recovery-key" sourceStates:v15 path:v13 reply:v6];
  }
}

- (void)joinWithRecoveryKey:(id)a3 reply:(id)a4
{
  v6 = a4;
  [(OTCuttlefishContext *)self setRecoveryKey:a3];
  v7 = objc_alloc_init(OTOperationConfiguration);
  v8 = [(OTCuttlefishContext *)self errorIfNoCKAccount:v7];
  if (v8)
  {
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v6[2](v6, v8);
  }

  else
  {
    v22 = @"OctagonStateStashAccountSettingsForRecoveryKey";
    v20 = @"CreateIdentityForRecoveryKey";
    v10 = [(OTCuttlefishContext *)self joinStatePathDictionary];
    v19 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = [OctagonStateTransitionPath pathFromDictionary:v13];

    v15 = [(OTCuttlefishContext *)self stateMachine];
    v16 = +[OTStates OctagonInAccountStates];
    v17 = [v15 doWatchedStateMachineRPC:@"rpc-join-with-recovery-key" sourceStates:v16 path:v14 reply:v6];
  }
}

- (void)joinWithBottle:(id)a3 entropy:(id)a4 bottleSalt:(id)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_storeStrong(&self->_bottleID, a3);
  objc_storeStrong(&self->_entropy, a4);
  objc_storeStrong(&self->_bottleSalt, a5);
  v15 = objc_alloc_init(OTOperationConfiguration);
  v16 = [(OTCuttlefishContext *)self errorIfNoCKAccount:v15];
  if (v16)
  {
    v17 = sub_100006274("octagon");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v14[2](v14, v16);
  }

  else
  {
    v30 = @"BottleJoinCreateIdentity";
    v28 = @"BottleJoinVouchWithBottle";
    v18 = [(OTCuttlefishContext *)self joinStatePathDictionary];
    v29 = v18;
    v25 = v11;
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v31 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [OctagonStateTransitionPath pathFromDictionary:v20];

    v22 = [(OTCuttlefishContext *)self stateMachine];
    v23 = +[OTStates OctagonInAccountStates];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10013306C;
    v26[3] = &unk_1003386E8;
    v26[4] = self;
    v27 = v14;
    v24 = [v22 doWatchedStateMachineRPC:@"rpc-join-with-bottle" sourceStates:v23 path:v21 reply:v26];

    v11 = v25;
  }
}

- (void)rpcPrepareIdentityAsApplicantWithConfiguration:(id)a3 epoch:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v10)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    (*(v9 + 2))(v9, 0, 0, 0, 0, 0, v10);
  }

  else
  {
    v12 = sub_100006274("otrpc");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preparing identity as applicant", buf, 2u);
    }

    v13 = [(OTCuttlefishContext *)self lockStateTracker];

    if (v13)
    {
      v14 = [(OTCuttlefishContext *)self lockStateTracker];
      [v14 recheck];
    }

    v15 = [OTPrepareOperation alloc];
    v16 = [(OTCuttlefishContext *)self operationDependencies];
    v17 = [(OTCuttlefishContext *)self prepareInformation];
    v18 = [(OTCuttlefishContext *)self policyOverride];
    v19 = [(OTCuttlefishContext *)self accountSettings];
    v20 = [(OTPrepareOperation *)v15 initWithDependencies:v16 intendedState:@"InitiatorAwaitingVoucher" errorState:@"BecomeUntrusted" deviceInfo:v17 policyOverride:v18 accountSettings:v19 epoch:a4];

    v21 = [(OTCuttlefishContext *)self deviceAdapter];
    v22 = [v21 longerTimeout];

    if ([v8 timeout])
    {
      v23 = [v8 timeout];
    }

    else if (v22)
    {
      v23 = 1000000000000;
    }

    else
    {
      v23 = 500000000000;
    }

    v24 = [OctagonStateTransitionRequest alloc];
    v36[0] = @"Untrusted";
    v36[1] = @"WaitForCDP";
    v36[2] = @"WaitingForCloudKitAccount";
    v36[3] = @"DetermineiCloudAccountState";
    v36[4] = @"NoAccount";
    v36[5] = @"not_started";
    v25 = [NSArray arrayWithObjects:v36 count:6];
    v26 = [NSSet setWithArray:v25];
    v27 = [(OTCuttlefishContext *)self queue];
    v28 = [(OctagonStateTransitionRequest *)v24 init:@"prepareForApplicant" sourceStates:v26 serialQueue:v27 transitionOp:v20];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100133518;
    v33[3] = &unk_100344DC8;
    v34 = v20;
    v35 = v9;
    v29 = v20;
    v30 = [CKKSResultOperation named:@"rpcPrepare-callback" withBlock:v33];
    [v30 addDependency:v29];
    v31 = [(OTCuttlefishContext *)self operationQueue];
    [v31 addOperation:v30];

    v32 = [(OTCuttlefishContext *)self stateMachine];
    [v32 handleExternalRequest:v28 startTimeout:v23];
  }
}

- (void)rpcVoucherWithConfiguration:(id)a3 permanentInfo:(id)a4 permanentInfoSig:(id)a5 stableInfo:(id)a6 stableInfoSig:(id)a7 reply:(id)a8
{
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v14 = a7;
  v15 = a8;
  v16 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v16)
  {
    v17 = sub_100006274("rpc-vouch");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    (*(v15 + 2))(v15, 0, 0, v16);
  }

  else
  {
    v18 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
    v19 = [v18 hasValidCredentials];

    if (v19)
    {
      v20 = sub_100006274("rpc-vouch");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating voucher", buf, 2u);
      }

      v21 = [(OTCuttlefishContext *)self lockStateTracker];

      if (v21)
      {
        v22 = [(OTCuttlefishContext *)self lockStateTracker];
        [v22 recheck];
      }

      v23 = [OTUpdateTrustedDeviceListOperation alloc];
      v24 = [(OTCuttlefishContext *)self operationDependencies];
      v48 = [(OTUpdateTrustedDeviceListOperation *)v23 initWithDependencies:v24 intendedState:@"BecomeReady" listUpdatesState:@"BecomeReady" errorState:@"BecomeReady" retryFlag:0];

      v25 = [OctagonStateTransitionRequest alloc];
      v26 = +[OTStates OctagonReadyStates];
      v27 = [(OTCuttlefishContext *)self queue];
      v47 = [(OctagonStateTransitionRequest *)v25 init:@"updateTDL" sourceStates:v26 serialQueue:v27 transitionOp:v48];

      v28 = [OTPairingVoucherOperation alloc];
      v29 = [(OTCuttlefishContext *)self operationDependencies];
      v30 = [(OTCuttlefishContext *)self prepareInformation];
      v31 = [(OTPairingVoucherOperation *)v28 initWithDependencies:v29 intendedState:@"BecomeReady" errorState:@"BecomeReady" deviceInfo:v30 peerID:v49 permanentInfo:v50 permanentInfoSig:v51 stableInfo:v52 stableInfoSig:v14];

      v32 = [OctagonStateTransitionRequest alloc];
      v33 = +[OTStates OctagonReadyStates];
      v34 = [(OTCuttlefishContext *)self queue];
      v35 = [(OctagonStateTransitionRequest *)v32 init:@"rpcVoucher" sourceStates:v33 serialQueue:v34 transitionOp:v31];

      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100133CE0;
      v59[3] = &unk_100344DC8;
      v36 = v31;
      v60 = v36;
      v37 = v15;
      v61 = v37;
      v38 = [CKKSResultOperation named:@"rpcVoucher-callback" withBlock:v59];
      objc_initWeak(buf, self);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100133E44;
      v53[3] = &unk_100337BB0;
      objc_copyWeak(&v58, buf);
      v39 = v48;
      v54 = v39;
      v57 = v37;
      v40 = v38;
      v55 = v40;
      v41 = v35;
      v56 = v41;
      v42 = [CKKSResultOperation named:@"updateTDL-callback" withBlock:v53];
      [v42 addDependency:v39];
      v43 = [(OTCuttlefishContext *)self operationQueue];
      [v43 addOperation:v42];

      [(CKKSGroupOperation *)v36 addDependency:v42];
      [v40 addDependency:v36];
      v44 = [(OTCuttlefishContext *)self stateMachine];
      [v44 handleExternalRequest:v47 startTimeout:500000000000];

      objc_destroyWeak(&v58);
      objc_destroyWeak(buf);
    }

    else
    {
      v45 = [NSError errorWithDomain:@"com.apple.security.octagon" code:87 description:@"No valid credentials for signed in account"];
      v46 = sub_100006274("SecError");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v63 = v45;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "rpc-vouch: Don't have valid credentials for account: %@", buf, 0xCu);
      }

      (*(v15 + 2))(v15, 0, 0, v45);
    }
  }
}

- (void)rpcEpoch:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  v6 = sub_100006274("rpc-epoch");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v4[2](v4, 0, v5);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching epoch", buf, 2u);
    }

    v8 = [(OTCuttlefishContext *)self lockStateTracker];

    if (v8)
    {
      v9 = [(OTCuttlefishContext *)self lockStateTracker];
      [v9 recheck];
    }

    v10 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v11 = [(OTCuttlefishContext *)self activeAccount];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100134190;
    v12[3] = &unk_100337B88;
    v13 = v4;
    [v10 fetchEgoEpochWithSpecificUser:v11 reply:v12];
  }
}

- (id)errorIfNoCKAccount:(id)a3
{
  v3 = [(OTCuttlefishContext *)self checkForCKAccount:a3];
  if (v3 == 3)
  {
    v4 = @"User is not signed into iCloud.";
    v5 = 25;
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = @"Cannot determine iCloud Account state; try again later";
    v5 = 56;
LABEL_5:
    v6 = [NSError errorWithDomain:@"com.apple.security.octagon" code:v5 description:v4];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (int64_t)checkForCKAccount:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self deviceAdapter];
  if ([v5 longerTimeout])
  {
    v6 = 45000000000;
  }

  else
  {
    v6 = 5000000000;
  }

  if ([v4 timeoutWaitForCKAccount])
  {
    v7 = [v4 timeoutWaitForCKAccount];
    if (v7 < 2)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v6 = v7 >> 1;
  }

  v8 = [(OTCuttlefishContext *)self cloudKitAccountStateKnown];
  v9 = [v8 wait:v6];

  if (v9)
  {
    v10 = sub_100006274("octagon-ck");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to determine CloudKit account state?", buf, 2u);
    }
  }

LABEL_12:
  *buf = 0;
  v32 = buf;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = [(OTCuttlefishContext *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100134784;
  block[3] = &unk_100344BB0;
  block[4] = self;
  block[5] = &v27;
  block[6] = buf;
  dispatch_sync(v11, block);

  if (*(v28 + 24) != 1 || (v12 = v32[24], (v12 & 1) == 0))
  {
    v13 = sub_100006274("octagon-ck");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(OTCuttlefishContext *)self contextID];
      *v35 = 138412290;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No CK account present(%@). Attempting to refetch CK account status...", v35, 0xCu);
    }

    v15 = [(OTCuttlefishContext *)self accountStateTracker];
    v16 = [v15 notifyCKAccountStatusChangeAndWait:v6];

    if ((v16 & 1) == 0)
    {
      v17 = sub_100006274("octagon-ck");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetching new CK account status did not complete in time", v35, 2u);
      }
    }

    v18 = [(OTCuttlefishContext *)self queue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100134834;
    v25[3] = &unk_100344BB0;
    v25[4] = self;
    v25[5] = &v27;
    v25[6] = buf;
    dispatch_sync(v18, v25);

    v19 = sub_100006274("octagon-ck");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(OTCuttlefishContext *)self contextID];
      v21 = v20;
      if (v32[24])
      {
        v22 = @"present";
      }

      else
      {
        v22 = @"missing";
      }

      *v35 = 138412546;
      v36 = v20;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "After refetch, CK account status(%@) is %@", v35, 0x16u);
    }

    if ((v28[3] & 1) == 0)
    {
      v23 = 0;
      goto LABEL_31;
    }

    v12 = v32[24];
  }

  if (v12)
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

LABEL_31:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);

  return v23;
}

- (void)trustedPeerSetChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received an update of an SOS trust set change", buf, 2u);
  }

  v6 = [(OTCuttlefishContext *)self sosAdapter];
  v7 = [v6 sosEnabled];

  if ((v7 & 1) == 0)
  {
    v8 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "This platform doesn't support SOS. This is probably a bug?", buf, 2u);
    }
  }

  v9 = [(OTCuttlefishContext *)self sosConsistencyRateLimiter];

  if (!v9)
  {
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "creating SOS consistency rate limiter", buf, 2u);
    }

    if (qword_10039DEC8 != -1)
    {
      dispatch_once(&qword_10039DEC8, &stru_100337248);
    }

    v11 = byte_10039DED0;
    v12 = byte_10039DED0;
    objc_initWeak(buf, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100134B9C;
    v19[3] = &unk_1003452E8;
    objc_copyWeak(&v20, buf);
    v13 = objc_retainBlock(v19);
    v14 = [CKKSNearFutureScheduler alloc];
    if (v12)
    {
      v15 = 10000000000;
    }

    else
    {
      v15 = 30000000000;
    }

    if (v11)
    {
      v16 = 200000000;
    }

    else
    {
      v16 = 2000000000;
    }

    v17 = [(CKKSNearFutureScheduler *)v14 initWithName:@"sos-consistency-ratelimiter" initialDelay:v16 exponentialBackoff:v15 maximumDelay:0 keepProcessAlive:1000 dependencyDescriptionCode:v13 block:2.0];
    [(OTCuttlefishContext *)self setSosConsistencyRateLimiter:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v18 = [(OTCuttlefishContext *)self sosConsistencyRateLimiter];
  [v18 trigger];
}

- (void)deviceNameUpdated
{
  v3 = sub_100006274("octagon-devicename");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(OTCuttlefishContext *)self contextID];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "device name updated: %@", &v7, 0xCu);
  }

  v5 = [[OctagonPendingFlag alloc] initWithFlag:@"recd_push" conditions:1];
  v6 = [(OTCuttlefishContext *)self stateMachine];
  [v6 handlePendingFlag:v5];
}

- (void)requestTrustedDeviceListRefresh
{
  v2 = [(OTCuttlefishContext *)self stateMachine];
  [v2 handleFlag:@"attempt_machine_id_list"];
}

- (int)currentMemoizedAccountState
{
  v2 = [(OTCuttlefishContext *)self accountMetadataStore];
  v8 = 0;
  v3 = [v2 loadOrCreateAccountMetadata:&v8];
  v4 = v8;

  if (v3)
  {
    v5 = [v3 icloudAccountState];
  }

  else
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to fetch account metadata: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (int)currentMemoizedTrustState
{
  v2 = [(OTCuttlefishContext *)self accountMetadataStore];
  v8 = 0;
  v3 = [v2 loadOrCreateAccountMetadata:&v8];
  v4 = v8;

  if (v3)
  {
    v5 = [v3 trustState];
  }

  else
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to fetch account metadata: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (void)setMachineIDOverride:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self deviceAdapter];
  [v5 setOverriddenMachineID:v4];
}

- (void)popTooManyPeersDialogWithEgoPeerStatus:(id)a3 accountMeta:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OTCuttlefishContext *)self tooManyPeersAdapter];
  v9 = [v8 shouldPopDialog];

  if (v9)
  {
    if ([v7 warnedTooManyPeers])
    {
      v10 = sub_100006274("octagon");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        goto LABEL_29;
      }

      v11 = [v7 altDSID];
      *buf = 138412290;
      v38 = v11;
      v12 = "popdialog: Already checked this altDSID: %@";
      v13 = v10;
      v14 = 12;
      goto LABEL_25;
    }

    v15 = [(OTCuttlefishContext *)self accountMetadataStore];
    v35 = 0;
    [v15 persistAccountChanges:&stru_100337B60 error:&v35];
    v10 = v35;

    if (v10)
    {
      v16 = sub_100006274("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v7 altDSID];
        *buf = 138412546;
        v38 = v17;
        v39 = 2112;
        v40 = v10;
        v18 = "octagon: popdialog: Failed to persist warned-too-many-peers state for %@: %@";
        v19 = v16;
        v20 = 22;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }

    else
    {
      v16 = sub_100006274("octagon");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v7 altDSID];
        *buf = 138412290;
        v38 = v17;
        v18 = "popdialog: Successfully persisted warned-too-many-peers state for %@";
        v19 = v16;
        v20 = 12;
        goto LABEL_10;
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = [v6 peerCountsByMachineID];
    v22 = [v21 allValues];

    v23 = [v22 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v32;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v25 += [*(*(&v31 + 1) + 8 * i) longValue];
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
    }

    v28 = sub_100006274("octagon");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v38 = v25;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "popdialog: ego peer status says peer count is: %lu", buf, 0xCu);
    }

    v29 = [(OTCuttlefishContext *)self tooManyPeersAdapter];
    v30 = [v29 getLimit];

    if (v25 >= v30)
    {
      v11 = [(OTCuttlefishContext *)self tooManyPeersAdapter];
      [v11 popDialogWithCount:v25 limit:v30];
      goto LABEL_27;
    }

    v11 = sub_100006274("octagon");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_27:

      goto LABEL_28;
    }

    *buf = 134218240;
    v38 = v25;
    v39 = 2048;
    v40 = v30;
    v12 = "popdialog: not popping dialog, number of peers ok: %lu < %lu";
    v13 = v11;
    v14 = 22;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    goto LABEL_27;
  }

LABEL_29:
}

- (BOOL)waitForReady:(int64_t)a3
{
  v4 = [(OTCuttlefishContext *)self stateMachine];
  v5 = [v4 waitForState:@"Ready" wait:a3];

  LOBYTE(v4) = [v5 isEqualToString:@"Ready"];
  return v4;
}

- (void)notifyContainerChangeWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = sub_100006274("octagonpush");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTCuttlefishContext *)self containerName];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received a cuttlefish push notification (%@): %@", buf, 0x16u);
  }

  v7 = [v4 objectForKeyedSubscript:@"cf"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(OTCuttlefishContext *)self extractStringKey:@"k" fromDictionary:v7], v8 = objc_claimAutoreleasedReturnValue(), (v9 = v8) != 0))
  {
    if ([v8 isEqualToString:@"r"])
    {
      [(OTCuttlefishContext *)self handleTTRRequest:v7];
    }

    else
    {
      v17 = sub_100006274("SecError");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "octagon: unknown command: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = [(OTCuttlefishContext *)self apsRateLimiter];
    v11 = v10 == 0;

    if (v11)
    {
      v12 = [(OTCuttlefishContext *)self deviceAdapter];
      v13 = [v12 modelID];
      v14 = [OTDeviceInformation isFullPeer:v13];

      v15 = 2000000000;
      if ((v14 & 1) == 0)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v40 = sub_1001266A4;
        v41 = sub_1001266B4;
        v42 = 0;
        v31 = 0;
        v32 = &v31;
        v33 = 0x3032000000;
        v34 = sub_1001266A4;
        v35 = sub_1001266B4;
        v36 = 0;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1001359E4;
        v30[3] = &unk_100337B40;
        v30[4] = buf;
        v30[5] = &v31;
        [(OTCuttlefishContext *)self rpcFetchTotalCountOfTrustedPeers:v30];
        if (*(*&buf[8] + 40) || (v18 = v32[5]) == 0)
        {
          v16 = 300;
        }

        else
        {
          v16 = 3 * [v18 unsignedIntValue];
        }

        v19 = sub_100006274("octagon");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 67109120;
          v38 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "max splay window seconds for limiter %d", v37, 8u);
        }

        v20 = arc4random_uniform(1000 * v16);
        _Block_object_dispose(&v31, 8);

        _Block_object_dispose(buf, 8);
        v15 = 1000000 * v20 + 2000000000;
      }

      v21 = sub_100006274("octagon");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "creating aps rate limiter with min initial delay of %llu", buf, 0xCu);
      }

      if (qword_10039DEC8 != -1)
      {
        dispatch_once(&qword_10039DEC8, &stru_100337248);
      }

      v22 = byte_10039DED0;
      v23 = byte_10039DED0;
      objc_initWeak(buf, self);
      v24 = [CKKSNearFutureScheduler alloc];
      if (v23)
      {
        v25 = 2000000000;
      }

      else
      {
        v25 = 30000000000;
      }

      if (v22)
      {
        v26 = 200000000;
      }

      else
      {
        v26 = v15;
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100135B24;
      v28[3] = &unk_1003452E8;
      objc_copyWeak(&v29, buf);
      v27 = [(CKKSNearFutureScheduler *)v24 initWithName:@"aps-push-ratelimiter" initialDelay:v26 continuingDelay:v25 keepProcessAlive:1 dependencyDescriptionCode:0 block:v28];
      [(OTCuttlefishContext *)self setApsRateLimiter:v27];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    v9 = [(OTCuttlefishContext *)self apsRateLimiter];
    [v9 trigger];
  }
}

- (void)notifyContainerChange:(id)a3
{
  v4 = [a3 userInfo];
  [(OTCuttlefishContext *)self notifyContainerChangeWithUserInfo:v4];
}

- (void)handleTTRRequest:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self extractStringKey:@"s" fromDictionary:v4];
  v6 = [(OTCuttlefishContext *)self extractStringKey:@"D" fromDictionary:v4];
  v7 = [(OTCuttlefishContext *)self extractStringKey:@"a" fromDictionary:v4];
  v8 = [(OTCuttlefishContext *)self extractStringKey:@"d" fromDictionary:v4];
  v9 = [(OTCuttlefishContext *)self extractStringKey:@"R" fromDictionary:v4];
  v10 = [(OTCuttlefishContext *)self extractStringKey:@"n" fromDictionary:v4];
  v29 = [(OTCuttlefishContext *)self extractStringKey:@"v" fromDictionary:v4];
  v28 = [(OTCuttlefishContext *)self extractStringKey:@"I" fromDictionary:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v11 = [(OTCuttlefishContext *)self deviceAdapter];
  [v11 serialNumber];
  v27 = v4;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  v17 = v16 = v6;
  v18 = [v17 isEqualToString:v5];

  v6 = v16;
  v7 = v15;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  v4 = v27;

  if (v18)
  {
LABEL_3:
    if (v6)
    {
      v19 = [(OTCuttlefishContext *)self accountStateTracker];
      v20 = [v19 ckdeviceID];

      if (!v5 || ([v20 isEqualToString:v5]& 1) == 0)
      {
        v26 = sub_100006274("octagon");
        v23 = v29;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "TTR request not for me (deviceId)", buf, 2u);
        }

        goto LABEL_23;
      }
    }

    if (v7 && v8 && v9)
    {
      v21 = [[SecTapToRadar alloc] initTapToRadar:v7 description:v8 radar:v9];
      v22 = v21;
      v24 = v28;
      v23 = v29;
      if (v10 && v29 && v28)
      {
        [v21 setComponentName:v10];
        [v22 setComponentVersion:v29];
        [v22 setComponentID:v28];
      }

      [v22 trigger];

      goto LABEL_24;
    }

    v20 = sub_100006274("SecError");
    v23 = v29;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "octagon: invalid type of TTR requeat: %@", buf, 0xCu);
    }

LABEL_23:

    v24 = v28;
    goto LABEL_24;
  }

  v25 = sub_100006274("octagon");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "TTR request not for me (sn)", buf, 2u);
  }

  v24 = v28;
  v23 = v29;
LABEL_24:
}

- (id)extractStringKey:(id)a3 fromDictionary:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)becomeReadyOperation
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100136194;
  v4[3] = &unk_100345338;
  objc_copyWeak(&v5, &location);
  v2 = [OctagonStateTransitionOperation named:@"octagon-ready" intending:@"Ready" errorState:@"Error" withBlockTakingSelf:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)becomeInheritedOperation
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100136E08;
  v4[3] = &unk_100345338;
  objc_copyWeak(&v5, &location);
  v2 = [OctagonStateTransitionOperation named:@"octagon-inherited" intending:@"Inherited" errorState:@"Error" withBlockTakingSelf:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)becomeUntrustedOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001376A0;
  v7[3] = &unk_100345338;
  objc_copyWeak(&v8, &location);
  v5 = [OctagonStateTransitionOperation named:@"octagon-become-untrusted" intending:v4 errorState:@"Error" withBlockTakingSelf:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (void)checkTrustStatusAndPostRepairCFUIfNecessary:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(OTOperationConfiguration);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100137DF4;
  v7[3] = &unk_100337AD0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(OTCuttlefishContext *)self rpcTrustStatus:v5 reply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)checkForPhonePeerPresence:(id)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 hasPrefix:@"iPhone"];
        v11 = [v9 hasPrefix:@"iPad"];
        if ((v10 & 1) != 0 || v11)
        {
          v12 = [v3 objectForKeyedSubscript:v9];
          v13 = [v12 intValue];

          if (v13 >= 1)
          {
            v15 = sub_100006274("octagon");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              v22 = v13;
              v23 = 2112;
              v24 = v9;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Have %d peers with model %@", buf, 0x12u);
            }

            v14 = 1;
            goto LABEL_15;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (id)repairAccountIfTrustedByTPHWithIntendedState:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1001266A4;
  v18 = sub_1001266B4;
  v4 = a3;
  v19 = v4;
  v5 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "repairAccountIfTrustedByTPHWithIntendedState: calling into TPH for trust status", buf, 2u);
  }

  v6 = objc_alloc_init(OTOperationConfiguration);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10013884C;
  v10[3] = &unk_100337AA8;
  v12 = &v14;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  [(OTCuttlefishContext *)self rpcTrustStatus:v6 reply:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)cloudKitAccountNewlyAvailableOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100138DB8;
  v7[3] = &unk_100345338;
  objc_copyWeak(&v8, &location);
  v5 = [OctagonStateTransitionOperation named:@"octagon-icloud-account-available" intending:v4 errorState:@"Error" withBlockTakingSelf:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)postRepairCFUAndBecomeUntrusted
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100139754;
  v4[3] = &unk_1003379C0;
  v4[4] = self;
  v2 = [OctagonStateTransitionOperation named:@"octagon-health-post-repair-cfu" intending:@"Untrusted" errorState:@"Error" withBlockTakingSelf:v4];

  return v2;
}

- (id)cuttlefishTrustEvaluation
{
  v3 = [OTCheckHealthOperation alloc];
  v4 = [(OTCuttlefishContext *)self operationDependencies];
  v5 = [(OTCuttlefishContext *)self prepareInformation];
  LODWORD(v12) = *&self->_repair;
  v6 = [OTCheckHealthOperation initWithDependencies:v3 intendedState:"initWithDependencies:intendedState:errorState:deviceInfo:skipRateLimitedCheck:reportRateLimitingError:repair:danglingPeerCleanup:caesarPeerCleanup:updateIdMS:" errorState:v4 deviceInfo:@"BecomeReady" skipRateLimitedCheck:@"BecomeReady" reportRateLimitingError:v5 repair:self->_skipRateLimitingCheck danglingPeerCleanup:self->_reportRateLimitingError caesarPeerCleanup:v12 updateIdMS:?];

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100139B3C;
  v13[3] = &unk_100344D38;
  objc_copyWeak(&v15, &location);
  v7 = v6;
  v14 = v7;
  v8 = [CKKSResultOperation named:@"rpcHealthCheck" withBlock:v13];
  [v8 addDependency:v7];
  v9 = [(OTCuttlefishContext *)self operationQueue];
  [v9 addOperation:v8];

  v10 = v7;
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

- (id)evaluateTPHOctagonTrust:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013A32C;
  v5[3] = &unk_1003379C0;
  v5[4] = self;
  v3 = [OctagonStateTransitionOperation named:@"octagon-health-tph-trust-check" intending:a3 errorState:@"PostRepairCFU" withBlockTakingSelf:v5];

  return v3;
}

- (id)evaluateSecdOctagonTrust
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013A6B8;
  v4[3] = &unk_1003379C0;
  v4[4] = self;
  v2 = [OctagonStateTransitionOperation named:@"octagon-health-securityd-trust-check" intending:@"TPHTrustCheck" errorState:@"PostRepairCFU" withBlockTakingSelf:v4];

  return v2;
}

- (id)checkForAccountFixupsOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013A9CC;
  v8[3] = &unk_100343B78;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = [OctagonStateTransitionOperation named:@"octagon-fixup_check" intending:v5 errorState:@"Error" withBlockTakingSelf:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)appleAccountSignOutOperation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013AC1C;
  v4[3] = &unk_1003379C0;
  v4[4] = self;
  v2 = [OctagonStateTransitionOperation named:@"octagon-account-gone" intending:@"NoAccountDoReset" errorState:@"NoAccountDoReset" withBlockTakingSelf:v4];

  return v2;
}

- (id)initializingOperation
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013AFA4;
  v4[3] = &unk_100345338;
  objc_copyWeak(&v5, &location);
  v2 = [OctagonStateTransitionOperation named:@"octagon-initializing" intending:@"NoAccount" errorState:@"Error" withBlockTakingSelf:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)setMetricsToState:(int)a3
{
  if (a3 == 2)
  {
    [(OTCuttlefishContext *)self setMetricsStateToInactive];
  }

  else
  {
    [(OTCuttlefishContext *)self setMetricsStateToActive];
  }
}

- (void)setMetricsStateToInactive
{
  v3 = sub_100006274("octagon-metrics");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Metrics now switching to OFF", v8, 2u);
  }

  v4 = [(OTCuttlefishContext *)self ckks];
  v5 = [v4 operationDependencies];
  [v5 setSendMetric:0];

  v6 = [(OTCuttlefishContext *)self ckks];
  v7 = [v6 zoneChangeFetcher];
  [v7 setSendMetric:0];

  [(OTCuttlefishContext *)self setShouldSendMetricsForOctagon:2];
}

- (void)setMetricsStateToActive
{
  v3 = sub_100006274("octagon-metrics");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Metrics now switching to ON", v8, 2u);
  }

  v4 = [(OTCuttlefishContext *)self ckks];
  v5 = [v4 operationDependencies];
  [v5 setSendMetric:1];

  v6 = [(OTCuttlefishContext *)self ckks];
  v7 = [v6 zoneChangeFetcher];
  [v7 setSendMetric:1];

  [(OTCuttlefishContext *)self setShouldSendMetricsForOctagon:1];
}

- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(OTCuttlefishContext *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(OTCuttlefishContext *)self launchSequence];
  [v12 addEvent:v8];

  if ([v9 _onqueueContains:@"apple_account_signed_out"])
  {
    [v9 _onqueueRemoveFlag:@"apple_account_signed_out"];
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handling apple account signed out flag", buf, 2u);
    }

    v14 = [(OTCuttlefishContext *)self appleAccountSignOutOperation];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"Initializing"])
  {
    v14 = [(OTCuttlefishContext *)self initializingOperation];
LABEL_7:
    v15 = v14;
    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"WaitForCDPCapableSecurityLevel"])
  {
    if ([v9 _onqueueContains:@"idms_level"])
    {
      [v9 _onqueueRemoveFlag:@"idms_level"];
      v14 = [OctagonStateTransitionOperation named:@"cdp-capable-check" entering:@"DetermineiCloudAccountState"];
      goto LABEL_7;
    }

    v21 = sub_100006274("octagon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Waiting for an CDP Capable account", buf, 2u);
    }

    goto LABEL_33;
  }

  if ([v8 isEqualToString:@"WaitingForCloudKitAccount"])
  {
    v17 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
    if (v17)
    {
      v18 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
      v19 = [v18 accountStatus];

      if (v19 == 1)
      {
        v20 = sub_100006274("octagon");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CloudKit reports an account is available!", buf, 2u);
        }

        v14 = [OctagonStateTransitionOperation named:@"ck-available" entering:@"CloudKitNewlyAvailable"];
        goto LABEL_7;
      }
    }

    v22 = sub_100006274("octagon");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
      v24 = v23;
      v25 = @"uninitialized";
      if (v23)
      {
        v25 = v23;
      }

      *buf = 138412290;
      v250 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Waiting for a CloudKit account; current state is %@", buf, 0xCu);
    }

    v26 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
    v27 = v26 == 0;

    if (v27)
    {
      v28 = sub_100006274("octagon");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Asking for a real CK account state", buf, 2u);
      }

      v29 = [(OTCuttlefishContext *)self accountStateTracker];
      [v29 recheckCKAccountStatus];
    }

    goto LABEL_33;
  }

  if ([v8 isEqualToString:@"CloudKitNewlyAvailable"])
  {
    v14 = [(OTCuttlefishContext *)self cloudKitAccountNewlyAvailableOperation:@"DetermineCDPState"];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"DetermineCDPState"])
  {
    v30 = [OTDetermineCDPBitStatusOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v32 = @"CheckForAccountFixups";
LABEL_36:
    v33 = @"WaitForCDP";
LABEL_37:
    v34 = v30;
    v35 = v31;
LABEL_38:
    v36 = [v34 initWithDependencies:v35 intendedState:v32 errorState:v33];
LABEL_39:
    v15 = v36;
LABEL_40:

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"WaitForCDP"])
  {
    if ([v9 _onqueueContains:@"cdp_enabled"])
    {
      [v9 _onqueueRemoveFlag:@"cdp_enabled"];
      v37 = sub_100006274("octagon");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "CDP is newly available!", buf, 2u);
      }

      v14 = [OctagonStateTransitionOperation named:@"cdp_enabled" entering:@"DetermineiCloudAccountState"];
      goto LABEL_7;
    }

    if ([v9 _onqueueContains:@"recd_push"])
    {
      [v9 _onqueueRemoveFlag:@"recd_push"];
      v14 = [OctagonStateTransitionOperation named:@"cdp_enabled_push_received" entering:@"WaitForCDPUpdated"];
      goto LABEL_7;
    }

    if ([v9 _onqueueContains:@"pending_network_availablility"])
    {
      [v9 _onqueueRemoveFlag:@"pending_network_availablility"];
      v14 = [OctagonStateTransitionOperation named:@"check_cdp_status_upon_network_availability" entering:@"WaitForCDPUpdated"];
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  if ([v8 isEqualToString:@"WaitForCDPUpdated"])
  {
    v38 = [OTUpdateTPHOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v39 = [(OTCuttlefishContext *)self prepareInformation];
    LOBYTE(v241) = 0;
    v40 = [(OTUpdateTPHOperation *)v38 initWithDependencies:v31 deviceInfo:v39 intendedState:@"DetermineCDPState" peerUnknownState:0 determineCDPState:@"DetermineCDPState" errorState:@"DetermineCDPState" forceRefetch:v241 retryFlag:@"recd_push"];
LABEL_48:
    v15 = v40;

    goto LABEL_40;
  }

  if ([v8 isEqualToString:@"CheckForAccountFixups"])
  {
    v14 = [(OTCuttlefishContext *)self checkForAccountFixupsOperation:@"PerformAccountFixups"];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"PerformAccountFixups"])
  {
    v14 = [OctagonStateTransitionOperation named:@"fixups-complete" entering:@"CheckTrustState"];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"CheckTrustState"])
  {
    v41 = [OctagonCheckTrustStateOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v32 = @"BecomeUntrusted";
    v34 = v41;
    v35 = v31;
    v33 = @"BecomeUntrusted";
    goto LABEL_38;
  }

  if ([v8 isEqualToString:@"CDPHealthCheck"])
  {
    v30 = [OTDetermineCDPBitStatusOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v32 = @"SecurityTrustCheck";
    goto LABEL_36;
  }

  if ([v8 isEqualToString:@"SecurityTrustCheck"])
  {
    v14 = [(OTCuttlefishContext *)self evaluateSecdOctagonTrust];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"TPHTrustCheck"])
  {
    v14 = [(OTCuttlefishContext *)self evaluateTPHOctagonTrust:@"CuttlefishTrustCheck"];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"CuttlefishTrustCheck"])
  {
    v14 = [(OTCuttlefishContext *)self cuttlefishTrustEvaluation];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"PostRepairCFU"])
  {
    v14 = [(OTCuttlefishContext *)self postRepairCFUAndBecomeUntrusted];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"HealthCheckReset"])
  {
    self->_resetReason = 2;
    v14 = [OctagonStateTransitionOperation named:@"begin-reset" entering:@"ResetBecomeUntrusted"];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"BecomeUntrusted"])
  {
    v14 = [(OTCuttlefishContext *)self becomeUntrustedOperation:@"Untrusted"];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"BecomeReady"])
  {
    v14 = [(OTCuttlefishContext *)self becomeReadyOperation];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"RefetchCKKSPolicy"])
  {
    v30 = [OTFetchViewsOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v32 = @"BecomeReady";
    v33 = @"Error";
    goto LABEL_37;
  }

  if ([v8 isEqualToString:@"EnableUserControllableViews"])
  {
    v42 = [OTModifyUserControllableViewStatusOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v43 = v42;
    v44 = v31;
    v45 = 2;
LABEL_83:
    v36 = [(OTModifyUserControllableViewStatusOperation *)v43 initWithDependencies:v44 intendedViewStatus:v45 intendedState:@"BecomeReady" peerMissingState:@"ReadyUpdated" errorState:@"BecomeReady"];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"DisableUserControllableViews"])
  {
    v46 = [OTModifyUserControllableViewStatusOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v43 = v46;
    v44 = v31;
    v45 = 1;
    goto LABEL_83;
  }

  if ([v8 isEqualToString:@"SetUserControllableViewsToPeerConsensus"])
  {
    v47 = [OTModifyUserControllableViewStatusOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v43 = v47;
    v44 = v31;
    v45 = 3;
    goto LABEL_83;
  }

  if ([v8 isEqualToString:@"SetAccountSettings"])
  {
    v48 = [OTSetAccountSettingsOperation alloc];
    v31 = [(OTCuttlefishContext *)self operationDependencies];
    v39 = [(OTCuttlefishContext *)self accountSettings];
    v40 = [(OTSetAccountSettingsOperation *)v48 initWithDependencies:v31 intendedState:@"BecomeReady" errorState:@"CheckTrustState" settings:v39];
    goto LABEL_48;
  }

  if ([v8 isEqualToString:@"NoAccount"] && objc_msgSend(v9, "_onqueueContains:", @"account_available"))
  {
    [v9 _onqueueRemoveFlag:@"account_available"];
    v49 = sub_100006274("octagon");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Account is available!  Attempting initializing op!", buf, 2u);
    }

    v14 = [OctagonStateTransitionOperation named:@"account-probably-present" entering:@"Initializing"];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"Untrusted"])
  {
    if ([v9 _onqueueContains:@"preapproved"])
    {
      [v9 _onqueueRemoveFlag:@"preapproved"];
      v50 = [(OTCuttlefishContext *)self sosAdapter];
      v51 = [v50 sosEnabled];

      v52 = sub_100006274("octagon");
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      if (v51)
      {
        if (v53)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Preapproved flag is high. Attempt SOS upgrade again!", buf, 2u);
        }

        v14 = [OctagonStateTransitionOperation named:@"ck-available" entering:@"AttemptSOSUpgrade"];
        goto LABEL_7;
      }

      if (v53)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "We are untrusted, but it seems someone preapproves us now. Unfortunately, this platform doesn't support SOS.", buf, 2u);
      }
    }

    if ([v9 _onqueueContains:@"attempt_sos_upgrade"])
    {
      [v9 _onqueueRemoveFlag:@"attempt_sos_upgrade"];
      v54 = [(OTCuttlefishContext *)self sosAdapter];
      v55 = [v54 sosEnabled];

      v56 = sub_100006274("octagon");
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      if (v55)
      {
        if (v57)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Attempt SOS upgrade again!", buf, 2u);
        }

LABEL_104:

        v14 = [OctagonStateTransitionOperation named:@"attempt-sos-upgrade" entering:@"AttemptSOSUpgrade"];
        goto LABEL_7;
      }

      if (v57)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "We are untrusted, but this platform doesn't support SOS.", buf, 2u);
      }
    }

    if ([v9 _onqueueContains:@"attempt_sos_consistency"])
    {
      [v9 _onqueueRemoveFlag:@"attempt_sos_consistency"];
      v58 = [(OTCuttlefishContext *)self sosAdapter];
      v59 = [v58 sosEnabled];

      v56 = sub_100006274("octagon");
      v60 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      if (v59)
      {
        if (v60)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Attempting SOS upgrade again (due to a consistency notification)", buf, 2u);
        }

        goto LABEL_104;
      }

      if (v60)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Someone would like us to check SOS consistency, but this platform doesn't support SOS.", buf, 2u);
      }
    }

    if ([v9 _onqueueContains:@"recd_push"])
    {
      [v9 _onqueueRemoveFlag:@"recd_push"];
      v61 = sub_100006274("octagon");
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Updating TPH (while untrusted) due to push", buf, 2u);
      }

      v14 = [OctagonStateTransitionOperation named:@"untrusted-update" entering:@"UntrustedUpdated"];
      goto LABEL_7;
    }

    if ([v9 _onqueueContains:@"idms_level"])
    {
      [v9 _onqueueRemoveFlag:@"idms_level"];
    }

    if ([v9 _onqueueContains:@"cdp_enabled"])
    {
      v62 = sub_100006274("octagon");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Removing 'CDP enabled' flag", buf, 2u);
      }

      [v9 _onqueueRemoveFlag:@"cdp_enabled"];
    }

    if ([v9 _onqueueContains:@"check_trust_state"])
    {
      v63 = sub_100006274("octagon");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Checking trust state", buf, 2u);
      }

      [v9 _onqueueRemoveFlag:@"check_trust_state"];
      v14 = [OctagonStateTransitionOperation named:@"check-trust-state" entering:@"CheckTrustState"];
      goto LABEL_7;
    }
  }

  if ([v8 isEqualToString:@"UntrustedUpdated"])
  {
    v64 = [OTUpdateTPHOperation alloc];
    v65 = [(OTCuttlefishContext *)self operationDependencies];
    v66 = [(OTCuttlefishContext *)self prepareInformation];
    LOBYTE(v241) = 0;
    v15 = [(OTUpdateTPHOperation *)v64 initWithDependencies:v65 deviceInfo:v66 intendedState:@"Untrusted" peerUnknownState:@"PeerMissingFromServer" determineCDPState:0 errorState:@"Untrusted" forceRefetch:v241 retryFlag:@"recd_push"];

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"DetermineiCloudAccountState"])
  {
    v67 = sub_100006274("octagon");
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Determine iCloud account status", buf, 2u);
    }

    v68 = [OTDetermineCDPCapableAccountStatusOperation alloc];
    v69 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTDetermineCDPCapableAccountStatusOperation *)v68 initWithDependencies:v69 stateIfCDPCapable:@"Initializing" stateIfNotCDPCapable:@"WaitForCDPCapableSecurityLevel" stateIfNoAccount:@"NoAccount" errorState:@"Error"];

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"CuttlefishReset"])
  {
    v70 = sub_100006274("octagon");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Resetting cuttlefish", buf, 2u);
    }

    v245 = [OTResetOperation alloc];
    v71 = [(OTCuttlefishContext *)self containerName];
    v72 = [(OTCuttlefishContext *)self contextID];
    resetReason = self->_resetReason;
    accountType = self->_accountType;
    v75 = [(OTCuttlefishContext *)self operationDependencies];
    v76 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v15 = [(OTResetOperation *)v245 init:v71 contextID:v72 reason:resetReason idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountType:accountType intendedState:@"LocalReset" dependencies:v75 errorState:@"Error" cuttlefishXPCWrapper:v76];

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"CKKSResetAfterOctagonReset"])
  {
    v77 = [OTLocalCKKSResetOperation alloc];
    v78 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLocalCKKSResetOperation *)v77 initWithDependencies:v78 intendedState:@"LocalReset" errorState:@"BecomeUntrusted"];

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"LocalReset"])
  {
    v79 = sub_100006274("octagon");
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Attempting local-reset", buf, 2u);
    }

    v80 = [OTLocalResetOperation alloc];
    v81 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLocalResetOperation *)v80 initWithDependencies:v81 intendedState:@"LocalResetClearLocalContextState" errorState:@"Initializing"];

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"LocalResetClearLocalContextState"])
  {
    [(OTCuttlefishContext *)self clearContextState];
    v14 = [OctagonStateTransitionOperation named:@"move-to-initializing" entering:@"Initializing"];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"NoAccountDoReset"])
  {
    v82 = sub_100006274("octagon");
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Attempting local-reset as part of signout", buf, 2u);
    }

    [(OTCuttlefishContext *)self clearContextState];
    v83 = [OTLocalResetOperation alloc];
    v84 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLocalResetOperation *)v83 initWithDependencies:v84 intendedState:@"NoAccount" errorState:@"NoAccount"];

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"PeerMissingFromServer"])
  {
    [(OTCuttlefishContext *)self clearContextState];
    v85 = [OTLocalResetOperation alloc];
    v86 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLocalResetOperation *)v85 initWithDependencies:v86 intendedState:@"BecomeUntrusted" errorState:@"BecomeUntrusted"];

    goto LABEL_8;
  }

  if (![v8 isEqualToString:@"EnsureConsistency"])
  {
    if ([v8 isEqualToString:@"BottlePreloadOctagonKeysInSOS"])
    {
      v92 = sub_100006274("octagon");
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Preloading Octagon Keys on the SOS Account", buf, 2u);
      }

      v93 = [(OTCuttlefishContext *)self sosAdapter];
      v94 = [v93 sosEnabled];

      if (!v94)
      {
        v14 = [OctagonStateTransitionOperation named:@"no-preload-octagon-key" entering:@"SetAccountSettings"];
        goto LABEL_7;
      }

      v95 = [(OTCuttlefishContext *)self custodianRecoveryKey];
      if (v95)
      {
        v96 = @"JoinSOSAfterCKKSFetch";
        v97 = @"JoinSOSAfterCKKSFetch";
      }

      else
      {
        v108 = [(OTCuttlefishContext *)self recoveryKey];
        v109 = @"JoinSOSAfterCKKSFetch";
        if (!v108)
        {
          v109 = @"SetAccountSettings";
        }

        v96 = v109;
      }

      v110 = [OTPreloadOctagonKeysOperation alloc];
      v111 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTPreloadOctagonKeysOperation *)v110 initWithDependencies:v111 intendedState:v96 errorState:v96];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"EnsureUpdatePreapprovals"])
    {
      v98 = sub_100006274("octagon");
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "SOS is enabled; ensuring preapprovals are correct", buf, 2u);
      }

      v99 = [OTSOSUpdatePreapprovalsOperation alloc];
      v100 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTSOSUpdatePreapprovalsOperation *)v99 initWithDependencies:v100 intendedState:@"BecomeReady" sosNotPresentState:@"BecomeReady" errorState:@"BecomeReady"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"AttemptSOSUpgradeDetermineCDPState"])
    {
      v101 = [OTDetermineCDPBitStatusOperation alloc];
      v102 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTDetermineCDPBitStatusOperation *)v101 initWithDependencies:v102 intendedState:@"AttemptSOSUpgrade" errorState:@"WaitForCDP"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"AttemptSOSUpgrade"])
    {
      v103 = sub_100006274("octagon");
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Investigating SOS status", buf, 2u);
      }

      v104 = [OTSOSUpgradeOperation alloc];
      v105 = [(OTCuttlefishContext *)self operationDependencies];
      v106 = [(OTCuttlefishContext *)self prepareInformation];
      v107 = [(OTCuttlefishContext *)self policyOverride];
      v15 = [(OTSOSUpgradeOperation *)v104 initWithDependencies:v105 intendedState:@"BecomeReady" ckksConflictState:@"SOSUpgradeCKKSReset" errorState:@"BecomeUntrusted" deviceInfo:v106 policyOverride:v107];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"SOSUpgradeCKKSReset"])
    {
      v112 = [OTLocalCKKSResetOperation alloc];
      v113 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTLocalCKKSResetOperation *)v112 initWithDependencies:v113 intendedState:@"SOSUpgradeAfterCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"SOSUpgradeAfterCKKSReset"])
    {
      v114 = [OTSOSUpgradeOperation alloc];
      v115 = [(OTCuttlefishContext *)self operationDependencies];
      v116 = [(OTCuttlefishContext *)self prepareInformation];
      v117 = [(OTCuttlefishContext *)self policyOverride];
      v15 = [(OTSOSUpgradeOperation *)v114 initWithDependencies:v115 intendedState:@"BecomeReady" ckksConflictState:@"BecomeUntrusted" errorState:@"BecomeUntrusted" deviceInfo:v116 policyOverride:v117];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"OctagonStateStashAccountSettingsForRecoveryKey"])
    {
      v118 = [OTStashAccountSettingsOperation alloc];
      v119 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTStashAccountSettingsOperation *)v118 initWithDependencies:v119 intendedState:@"CreateIdentityForRecoveryKey" errorState:@"CreateIdentityForRecoveryKey" accountSettings:self accountWide:1 forceFetch:1];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"CreateIdentityForRecoveryKey"])
    {
      v120 = [OTPrepareOperation alloc];
      v121 = [(OTCuttlefishContext *)self operationDependencies];
      v122 = [(OTCuttlefishContext *)self prepareInformation];
      v123 = [(OTCuttlefishContext *)self policyOverride];
      v124 = [(OTCuttlefishContext *)self accountSettings];
      v15 = [(OTPrepareOperation *)v120 initWithDependencies:v121 intendedState:@"VouchWithRecoveryKey" errorState:@"BecomeUntrusted" deviceInfo:v122 policyOverride:v123 accountSettings:v124 epoch:1];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"CreateIdentityForCustodianRecoveryKey"])
    {
      v125 = [OTPrepareOperation alloc];
      v126 = [(OTCuttlefishContext *)self operationDependencies];
      v127 = [(OTCuttlefishContext *)self prepareInformation];
      v128 = [(OTCuttlefishContext *)self policyOverride];
      v129 = [(OTCuttlefishContext *)self accountSettings];
      v15 = [(OTPrepareOperation *)v125 initWithDependencies:v126 intendedState:@"VouchWithCustodianRecoveryKey" errorState:@"BecomeUntrusted" deviceInfo:v127 policyOverride:v128 accountSettings:v129 epoch:1];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"BottleJoinCreateIdentity"])
    {
      v130 = [OTPrepareOperation alloc];
      v131 = [(OTCuttlefishContext *)self operationDependencies];
      v132 = [(OTCuttlefishContext *)self prepareInformation];
      v133 = [(OTCuttlefishContext *)self policyOverride];
      v134 = [(OTCuttlefishContext *)self accountSettings];
      v15 = [(OTPrepareOperation *)v130 initWithDependencies:v131 intendedState:@"BottleJoinVouchWithBottle" errorState:@"BecomeUntrusted" deviceInfo:v132 policyOverride:v133 accountSettings:v134 epoch:1];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"BottleJoinVouchWithBottle"])
    {
      v135 = [OTVouchWithBottleOperation alloc];
      v136 = [(OTCuttlefishContext *)self operationDependencies];
      LOBYTE(v241) = 1;
      v15 = [(OTVouchWithBottleOperation *)v135 initWithDependencies:v136 intendedState:@"InitiatorSetCDPBit" errorState:@"BecomeUntrusted" bottleID:self->_bottleID entropy:self->_entropy bottleSalt:self->_bottleSalt saveVoucher:v241];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"VouchWithRecoveryKey"])
    {
      v137 = [OTVouchWithRecoveryKeyOperation alloc];
      v138 = [(OTCuttlefishContext *)self operationDependencies];
      v139 = [(OTCuttlefishContext *)self recoveryKey];
      v15 = [(OTVouchWithRecoveryKeyOperation *)v137 initWithDependencies:v138 intendedState:@"InitiatorSetCDPBit" errorState:@"BecomeUntrusted" recoveryKey:v139 saveVoucher:1];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"VouchWithCustodianRecoveryKey"])
    {
      v140 = [OTVouchWithCustodianRecoveryKeyOperation alloc];
      v141 = [(OTCuttlefishContext *)self operationDependencies];
      v142 = [(OTCuttlefishContext *)self custodianRecoveryKey];
      v15 = [(OTVouchWithCustodianRecoveryKeyOperation *)v140 initWithDependencies:v141 intendedState:@"InitiatorSetCDPBit" errorState:@"BecomeUntrusted" custodianRecoveryKey:v142 saveVoucher:1];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"PrepareAndRecoverTLKSharesForInheritancePeer"])
    {
      v143 = [OTPrepareAndRecoverTLKSharesForInheritancePeerOperation alloc];
      v144 = [(OTCuttlefishContext *)self operationDependencies];
      v145 = [(OTCuttlefishContext *)self inheritanceKey];
      v146 = [(OTCuttlefishContext *)self prepareInformation];
      v147 = [(OTCuttlefishContext *)self policyOverride];
      LOBYTE(v241) = 1;
      v15 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)v143 initWithDependencies:v144 intendedState:@"BecomeInherited" errorState:@"Error" ik:v145 deviceInfo:v146 policyOverride:v147 isInheritedAccount:v241 epoch:1];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"JoinSOSAfterCKKSFetch"])
    {
      v148 = [OTJoinSOSAfterCKKSFetchOperation alloc];
      v149 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTJoinSOSAfterCKKSFetchOperation *)v148 initWithDependencies:v149 intendedState:@"SetAccountSettings" errorState:@"SetAccountSettings"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"InitiatorSetCDPBit"])
    {
      v150 = [OTSetCDPBitOperation alloc];
      v151 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTSetCDPBitOperation *)v150 initWithDependencies:v151 intendedState:@"InitiatorUpdateDeviceList" errorState:@"DetermineCDPState"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"InitiatorUpdateDeviceList"])
    {
      v152 = [OTUpdateTrustedDeviceListOperation alloc];
      v153 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTUpdateTrustedDeviceListOperation *)v152 initWithDependencies:v153 intendedState:@"InitiatorJoin" listUpdatesState:@"InitiatorJoin" errorState:@"BecomeUntrusted" retryFlag:0];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"InitiatorJoin"])
    {
      v154 = [OTJoinWithVoucherOperation alloc];
      v155 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTJoinWithVoucherOperation *)v154 initWithDependencies:v155 intendedState:@"BottlePreloadOctagonKeysInSOS" ckksConflictState:@"InitiatorJoinCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"InitiatorJoinCKKSReset"])
    {
      v156 = [OTLocalCKKSResetOperation alloc];
      v157 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTLocalCKKSResetOperation *)v156 initWithDependencies:v157 intendedState:@"InitiatorJoinAfterCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"InitiatorJoinAfterCKKSReset"])
    {
      v158 = [OTJoinWithVoucherOperation alloc];
      v159 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTJoinWithVoucherOperation *)v158 initWithDependencies:v159 intendedState:@"BottlePreloadOctagonKeysInSOS" ckksConflictState:@"BecomeUntrusted" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"ResetBecomeUntrusted"])
    {
      v14 = [(OTCuttlefishContext *)self becomeUntrustedOperation:@"ResetAnyMissingTLKCKKSViews"];
      goto LABEL_7;
    }

    if ([v8 isEqualToString:@"ResetAndEstablish"])
    {
      v244 = [OTResetOperation alloc];
      v246 = [(OTCuttlefishContext *)self containerName];
      v160 = [(OTCuttlefishContext *)self contextID];
      idmsTargetContext = self->_idmsTargetContext;
      idmsCuttlefishPassword = self->_idmsCuttlefishPassword;
      v242 = idmsCuttlefishPassword;
      v243 = self->_resetReason;
      notifyIdMS = self->_notifyIdMS;
      v164 = self->_accountType;
      v165 = [(OTCuttlefishContext *)self operationDependencies];
      v166 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
      v15 = [(OTResetOperation *)v244 init:v246 contextID:v160 reason:v243 idmsTargetContext:idmsTargetContext idmsCuttlefishPassword:v242 notifyIdMS:notifyIdMS accountType:v164 intendedState:@"EstablishEnableCDPBit" dependencies:v165 errorState:@"Error" cuttlefishXPCWrapper:v166];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"ResetAnyMissingTLKCKKSViews"])
    {
      v167 = [OTResetCKKSZonesLackingTLKsOperation alloc];
      v168 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTResetCKKSZonesLackingTLKsOperation *)v167 initWithDependencies:v168 intendedState:@"ResetAndEstablish" errorState:@"Error"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"EstablishEnableCDPBit"])
    {
      v169 = [OTSetCDPBitOperation alloc];
      v170 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTSetCDPBitOperation *)v169 initWithDependencies:v170 intendedState:@"ReEnactDeviceList" errorState:@"Error"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"ReEnactDeviceList"])
    {
      v171 = [OTUpdateTrustedDeviceListOperation alloc];
      v172 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTUpdateTrustedDeviceListOperation *)v171 initWithDependencies:v172 intendedState:@"ReEnactPrepare" listUpdatesState:@"ReEnactPrepare" errorState:@"BecomeUntrusted" retryFlag:0];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"ReEnactPrepare"])
    {
      v173 = [OTPrepareOperation alloc];
      v174 = [(OTCuttlefishContext *)self operationDependencies];
      v175 = [(OTCuttlefishContext *)self prepareInformation];
      v176 = [(OTCuttlefishContext *)self policyOverride];
      v177 = [(OTCuttlefishContext *)self accountSettings];
      v15 = [(OTPrepareOperation *)v173 initWithDependencies:v174 intendedState:@"ResetAndEstablishClearLocalContextState" errorState:@"Error" deviceInfo:v175 policyOverride:v176 accountSettings:v177 epoch:0];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"ResetAndEstablishClearLocalContextState"])
    {
      v178 = sub_100006274("octagon");
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "clear cuttlefish context state", buf, 2u);
      }

      [(OTCuttlefishContext *)self clearContextState];
      v14 = [OctagonStateTransitionOperation named:@"moving-to-re-enact-ready-to-establish" entering:@"ReEnactReadyToEstablish"];
      goto LABEL_7;
    }

    if ([v8 isEqualToString:@"ReEnactReadyToEstablish"])
    {
      v179 = [OTEstablishOperation alloc];
      v180 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTEstablishOperation *)v179 initWithDependencies:v180 intendedState:@"EscrowTriggerUpdate" ckksConflictState:@"EstablishCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"EstablishCKKSReset"])
    {
      v181 = [OTLocalCKKSResetOperation alloc];
      v182 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTLocalCKKSResetOperation *)v181 initWithDependencies:v182 intendedState:@"EstablishAfterCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"EstablishAfterCKKSReset"])
    {
      v183 = [OTEstablishOperation alloc];
      v184 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTEstablishOperation *)v183 initWithDependencies:v184 intendedState:@"EscrowTriggerUpdate" ckksConflictState:@"BecomeUntrusted" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"EscrowTriggerUpdate"])
    {
      v185 = [OTTriggerEscrowUpdateOperation alloc];
      v186 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTTriggerEscrowUpdateOperation *)v185 initWithDependencies:v186 intendedState:@"BecomeReady" errorState:@"Error"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"HealthCheckLeaveClique"])
    {
      v187 = [OTLeaveCliqueOperation alloc];
      v188 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTLeaveCliqueOperation *)v187 initWithDependencies:v188 intendedState:@"BecomeUntrusted" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"WaitForClassCUnlock"])
    {
      if ([v9 _onqueueContains:@"unlocked"])
      {
        [v9 _onqueueRemoveFlag:@"unlocked"];
        v189 = [NSString stringWithFormat:@"%@", @"initializing-after-initial-unlock"];
        v15 = [OctagonStateTransitionOperation named:v189 entering:@"Initializing"];

        goto LABEL_8;
      }
    }

    else
    {
      if (![v8 isEqualToString:@"WaitForUnlock"])
      {
        if ([v8 isEqualToString:@"UpdateSOSPreapprovals"])
        {
          v192 = sub_100006274("octagon");
          if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_DEFAULT, "Updating SOS preapprovals", buf, 2u);
          }

          v193 = [OTSOSUpdatePreapprovalsOperation alloc];
          v194 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTSOSUpdatePreapprovalsOperation *)v193 initWithDependencies:v194 intendedState:@"Ready" sosNotPresentState:@"Ready" errorState:@"Ready"];

          goto LABEL_8;
        }

        if ([v8 isEqualToString:@"AssistCKKSTLKUpload"])
        {
          v195 = [OTUploadNewCKKSTLKsOperation alloc];
          v196 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTUploadNewCKKSTLKsOperation *)v195 initWithDependencies:v196 intendedState:@"Ready" ckksConflictState:@"AssistCKKSTLKUploadCKKSReset" peerMissingState:@"ReadyUpdated" errorState:@"Ready"];

          goto LABEL_8;
        }

        if ([v8 isEqualToString:@"AssistCKKSTLKUploadCKKSReset"])
        {
          v197 = [OTLocalCKKSResetOperation alloc];
          v198 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTLocalCKKSResetOperation *)v197 initWithDependencies:v198 intendedState:@"AssistCKKSTLKUploadAfterCKKSReset" errorState:@"BecomeReady"];

          goto LABEL_8;
        }

        if ([v8 isEqualToString:@"AssistCKKSTLKUploadAfterCKKSReset"])
        {
          v199 = [OTUploadNewCKKSTLKsOperation alloc];
          v200 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTUploadNewCKKSTLKsOperation *)v199 initWithDependencies:v200 intendedState:@"Ready" ckksConflictState:@"Ready" peerMissingState:@"ReadyUpdated" errorState:@"Ready"];

          goto LABEL_8;
        }

        if ([v8 isEqualToString:@"OctagonStateStashAccountSettingsForReroll"])
        {
          v201 = [OTStashAccountSettingsOperation alloc];
          v202 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTStashAccountSettingsOperation *)v201 initWithDependencies:v202 intendedState:@"OctagonStateCreateIdentityForReroll" errorState:@"OctagonStateCreateIdentityForReroll" accountSettings:self accountWide:1 forceFetch:1];

          goto LABEL_8;
        }

        if ([v8 isEqualToString:@"OctagonStateCreateIdentityForReroll"])
        {
          v203 = [OTPrepareOperation alloc];
          v204 = [(OTCuttlefishContext *)self operationDependencies];
          v205 = [(OTCuttlefishContext *)self prepareInformation];
          v206 = [(OTCuttlefishContext *)self policyOverride];
          v207 = [(OTCuttlefishContext *)self accountSettings];
          v15 = [(OTPrepareOperation *)v203 initWithDependencies:v204 intendedState:@"OctagonStateVouchWithReroll" errorState:@"BecomeUntrusted" deviceInfo:v205 policyOverride:v206 accountSettings:v207 epoch:1];

          goto LABEL_8;
        }

        if ([v8 isEqualToString:@"OctagonStateVouchWithReroll"])
        {
          v208 = [OTVouchWithRerollOperation alloc];
          v209 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTVouchWithRerollOperation *)v208 initWithDependencies:v209 intendedState:@"InitiatorSetCDPBit" errorState:@"BecomeUntrusted" saveVoucher:1];

          goto LABEL_8;
        }

        if ([v8 isEqualToString:@"BecomeInherited"])
        {
          v14 = [(OTCuttlefishContext *)self becomeInheritedOperation];
          goto LABEL_7;
        }

        if (![v8 isEqualToString:@"Inherited"])
        {
          if (![v8 isEqualToString:@"Ready"])
          {
            if ([v8 isEqualToString:@"ReadyUpdated"])
            {
              v216 = [OTUpdateTPHOperation alloc];
              v217 = [(OTCuttlefishContext *)self operationDependencies];
              v218 = [(OTCuttlefishContext *)self prepareInformation];
              LOBYTE(v241) = 0;
              v15 = [(OTUpdateTPHOperation *)v216 initWithDependencies:v217 deviceInfo:v218 intendedState:@"Ready" peerUnknownState:@"PeerMissingFromServer" determineCDPState:0 errorState:@"Ready" forceRefetch:v241 retryFlag:@"recd_push"];

              goto LABEL_8;
            }

            [v8 isEqualToString:@"Error"];
LABEL_33:
            v15 = 0;
            goto LABEL_8;
          }

          if ([v9 _onqueueContains:@"recd_push"])
          {
            [v9 _onqueueRemoveFlag:@"recd_push"];
            v215 = sub_100006274("octagon");
            if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "Updating TPH (while ready) due to push", buf, 2u);
            }

            v14 = [OctagonStateTransitionOperation named:@"octagon-update" entering:@"ReadyUpdated"];
            goto LABEL_7;
          }

          if ([v9 _onqueueContains:@"tlk_upload_needed"])
          {
            [v9 _onqueueRemoveFlag:@"tlk_upload_needed"];
            v14 = [OctagonStateTransitionOperation named:@"ckks-assist" entering:@"AssistCKKSTLKUpload"];
            goto LABEL_7;
          }

          if ([v9 _onqueueContains:@"attempt_machine_id_list"])
          {
            [v9 _onqueueRemoveFlag:@"attempt_machine_id_list"];
            v219 = sub_100006274("octagon");
            if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "Received an suggestion to update the machine ID list (while ready); updating trusted device list", buf, 2u);
            }

            v220 = [OTUpdateTrustedDeviceListOperation alloc];
            v221 = [(OTCuttlefishContext *)self operationDependencies];
            v15 = [(OTUpdateTrustedDeviceListOperation *)v220 initWithDependencies:v221 intendedState:@"Ready" listUpdatesState:@"ReadyUpdated" errorState:@"Ready" retryFlag:@"attempt_machine_id_list"];

            goto LABEL_8;
          }

          if ([v9 _onqueueContains:@"passcode_stash_available"])
          {
            [v9 _onqueueRemoveFlag:@"passcode_stash_available"];
            v222 = sub_100006274("octagon-escrow-repair");
            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "passcode stash available, beginning escrow repair", buf, 2u);
            }

            v223 = [OTEscrowRepairOperation alloc];
            v224 = [(OTCuttlefishContext *)self operationDependencies];
            v225 = [(OTCuttlefishContext *)self followupHandler];
            v15 = [(OTEscrowRepairOperation *)v223 initWithDependencies:v224 intendedState:@"Ready" errorState:@"Ready" followupHandler:v225 contextType:self->_contextType];

            goto LABEL_8;
          }

          if ([v9 _onqueueContains:@"attempt_sos_update_preapprovals"])
          {
            [v9 _onqueueRemoveFlag:@"attempt_sos_update_preapprovals"];
            v226 = [(OTCuttlefishContext *)self sosAdapter];
            v227 = [v226 sosEnabled];

            v228 = sub_100006274("octagon");
            v229 = os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT);
            if (v227)
            {
              if (v229)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "Attempt SOS Update preapprovals again!", buf, 2u);
              }

              v14 = [OctagonStateTransitionOperation named:@"attempt-sos-update-preapproval" entering:@"UpdateSOSPreapprovals"];
              goto LABEL_7;
            }

            if (v229)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "We are untrusted, but this platform doesn't support SOS.", buf, 2u);
            }
          }

          if ([v9 _onqueueContains:@"attempt_sos_consistency"])
          {
            [v9 _onqueueRemoveFlag:@"attempt_sos_consistency"];
            v230 = [(OTCuttlefishContext *)self sosAdapter];
            v231 = [v230 sosEnabled];

            v232 = sub_100006274("octagon");
            v233 = os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT);
            if (v231)
            {
              if (v233)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "Attempting SOS consistency checks", buf, 2u);
              }

              v14 = [OctagonStateTransitionOperation named:@"attempt-sos-update-preapproval" entering:@"EnsureConsistency"];
              goto LABEL_7;
            }

            if (v233)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "Someone would like us to check SOS consistency, but this platform doesn't support SOS.", buf, 2u);
            }
          }

          if ([v9 _onqueueContains:@"attempt_ucv_upgrade"])
          {
            [v9 _onqueueRemoveFlag:@"attempt_ucv_upgrade"];
            v234 = sub_100006274("octagon");
            if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "Attempting user-view control upgrade", buf, 2u);
            }

            v14 = [OctagonStateTransitionOperation named:@"attempt-user-view-upgrade" entering:@"SetUserControllableViewsToPeerConsensus"];
            goto LABEL_7;
          }

          if ([v9 _onqueueContains:@"policy_check_needed"])
          {
            [v9 _onqueueRemoveFlag:@"policy_check_needed"];
            v235 = sub_100006274("octagon");
            if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_DEFAULT, "Updating CKKS policy", buf, 2u);
            }

            v14 = [OctagonStateTransitionOperation named:@"ckks-policy-update" entering:@"ReadyUpdated"];
            goto LABEL_7;
          }

          if ([v9 _onqueueContains:@"ckks_views_changed"])
          {
            [v9 _onqueueRemoveFlag:@"ckks_views_changed"];
            v14 = [OctagonStateTransitionOperation named:@"ckks-update-trust" entering:@"BecomeReady"];
            goto LABEL_7;
          }

          if ([v9 _onqueueContains:@"se_id_changed"])
          {
            [v9 _onqueueRemoveFlag:@"se_id_changed"];
            v14 = [OctagonStateTransitionOperation named:@"octagon-set-secureelement" entering:@"ReadyUpdated"];
            goto LABEL_7;
          }

          if ([v9 _onqueueContains:@"account_available"])
          {
            v236 = sub_100006274("octagon");
            if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "Removing 'account is available' flag", buf, 2u);
            }

            [v9 _onqueueRemoveFlag:@"account_available"];
          }

          if ([v9 _onqueueContains:@"idms_level"])
          {
            v237 = sub_100006274("octagon");
            if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "Removing 'IDMS level changed' flag", buf, 2u);
            }

            [v9 _onqueueRemoveFlag:@"idms_level"];
          }

          if ([v9 _onqueueContains:@"cdp_enabled"])
          {
            v238 = sub_100006274("octagon");
            if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "Removing 'CDP enabled' flag", buf, 2u);
            }

            [v9 _onqueueRemoveFlag:@"cdp_enabled"];
          }

          if ([v9 _onqueueContains:@"check_on_rtc_metrics"])
          {
            v239 = sub_100006274("octagon-metrics");
            if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEFAULT, "Checking metrics", buf, 2u);
            }

            [v9 _onqueueRemoveFlag:@"check_on_rtc_metrics"];
            objc_initWeak(buf, self);
            v247[0] = _NSConcreteStackBlock;
            v247[1] = 3221225472;
            v247[2] = sub_10013EF54;
            v247[3] = &unk_100345338;
            objc_copyWeak(&v248, buf);
            v15 = [OctagonStateTransitionOperation named:@"check-on-metrics" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v247];
            objc_destroyWeak(&v248);
            objc_destroyWeak(buf);
            goto LABEL_8;
          }

          if ([v9 _onqueueContains:@"reroll_identity"])
          {
            v240 = sub_100006274("octagon");
            if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "Rerolling identity", buf, 2u);
            }

            [v9 _onqueueRemoveFlag:@"reroll_identity"];
            v14 = [OctagonStateTransitionOperation named:@"reroll-identity" entering:@"OctagonStateStashAccountSettingsForReroll"];
            goto LABEL_7;
          }
        }

        v210 = +[CKKSAnalytics logger];
        v211 = +[NSDate date];
        [v210 setDateProperty:v211 forKey:@"OALastKSR"];

        v212 = [(OTCuttlefishContext *)self launchSequence];
        [v212 launch];

        v213 = +[CKKSAnalytics logger];
        v214 = [(OTCuttlefishContext *)self launchSequence];
        [v213 noteLaunchSequence:v214];

        goto LABEL_33;
      }

      if ([v9 _onqueueContains:@"unlocked"])
      {
        [v9 _onqueueRemoveFlag:@"unlocked"];
        v190 = [NSString stringWithFormat:@"%@", @"initializing-after-unlock"];
        v15 = [OctagonStateTransitionOperation named:v190 entering:@"Initializing"];

        goto LABEL_8;
      }
    }

    v191 = [[OctagonPendingFlag alloc] initWithFlag:@"unlocked" conditions:1];
    [v10 _onqueueHandlePendingFlagLater:v191];

    goto LABEL_33;
  }

  v87 = sub_100006274("octagon");
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Ensuring consistency of things that might've changed", buf, 2u);
  }

  v88 = [(OTCuttlefishContext *)self sosAdapter];
  v89 = [v88 sosEnabled];

  if (!v89)
  {
    v14 = [OctagonStateTransitionOperation named:@"no-consistency-checks" entering:@"BecomeReady"];
    goto LABEL_7;
  }

  v90 = [OTEnsureOctagonKeyConsistency alloc];
  v91 = [(OTCuttlefishContext *)self operationDependencies];
  v15 = [(OTEnsureOctagonKeyConsistency *)v90 initWithDependencies:v91 intendedState:@"EnsureUpdatePreapprovals" errorState:@"BecomeReady"];

LABEL_8:

  return v15;
}

- (void)handlePairingRestart:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self pairingUUID];

  if (!v5)
  {
    v6 = sub_100006274("octagon-pairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 pairingUUID];
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received new pairing UUID (%@)", buf, 0xCu);
    }

    v8 = [v4 pairingUUID];
    [(OTCuttlefishContext *)self setPairingUUID:v8];
  }

  v9 = [(OTCuttlefishContext *)self pairingUUID];
  v10 = [v4 pairingUUID];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12 = sub_100006274("octagon-pairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(OTCuttlefishContext *)self pairingUUID];
      v14 = [v4 pairingUUID];
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "current pairing UUID (%@) does not match config UUID (%@)", buf, 0x16u);
    }

    v15 = dispatch_semaphore_create(0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013F498;
    v19[3] = &unk_100337950;
    v19[4] = self;
    v20 = v4;
    v16 = v15;
    v21 = v16;
    [(OTCuttlefishContext *)self localReset:v19];
    v17 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v16, v17))
    {
      v18 = sub_100006274("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon: Timed out waiting for local reset to complete", buf, 2u);
      }
    }
  }
}

- (void)startOctagonStateMachine
{
  v2 = [(OTCuttlefishContext *)self stateMachine];
  [v2 startOperation];
}

- (id)operationDependencies
{
  v3 = [(OTCuttlefishContext *)self sessionMetrics];
  v23 = [OTOperationDependencies alloc];
  v31 = [(OTCuttlefishContext *)self containerName];
  v30 = [(OTCuttlefishContext *)self contextID];
  v29 = [(OTCuttlefishContext *)self activeAccount];
  v28 = [(OTCuttlefishContext *)self accountMetadataStore];
  v27 = [(OTCuttlefishContext *)self stateMachine];
  v21 = [(OTCuttlefishContext *)self sosAdapter];
  v26 = [(OTCuttlefishContext *)self octagonAdapter];
  v25 = [(OTCuttlefishContext *)self accountsAdapter];
  v20 = [(OTCuttlefishContext *)self authKitAdapter];
  v19 = [(OTCuttlefishContext *)self personaAdapter];
  v18 = [(OTCuttlefishContext *)self deviceAdapter];
  v17 = [(OTCuttlefishContext *)self secureBackupAdapter];
  v16 = [(OTCuttlefishContext *)self laContextAdapter];
  v13 = [(OTCuttlefishContext *)self ckks];
  v15 = [(OTCuttlefishContext *)self lockStateTracker];
  v14 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
  v4 = [(OTCuttlefishContext *)self escrowRequestClass];
  v5 = [(OTCuttlefishContext *)self notifierClass];
  v22 = v3;
  v12 = [v3 flowID];
  v6 = [v3 deviceSessionID];
  v7 = [(OTCuttlefishContext *)self canSendMetricsUsingAccountState:[(OTCuttlefishContext *)self shouldSendMetricsForOctagon]];
  isGuitarfish = self->_isGuitarfish;
  LOBYTE(v3) = self->_accountIsW;
  v9 = [(OTCuttlefishContext *)self reachabilityTracker];
  BYTE2(v11) = v3;
  BYTE1(v11) = isGuitarfish;
  LOBYTE(v11) = v7;
  v24 = [OTOperationDependencies initForContainer:v23 contextID:"initForContainer:contextID:activeAccount:stateHolder:flagHandler:sosAdapter:octagonAdapter:accountsAdapter:authKitAdapter:personaAdapter:deviceInfoAdapter:secureBackupAdapter:laContextAdapter:ckksAccountSync:lockStateTracker:cuttlefishXPCWrapper:escrowRequestClass:notifierClass:flowID:deviceSessionID:permittedToSendMetrics:accountIsG:accountIsW:reachabilityTracker:escrowChecker:" activeAccount:v31 stateHolder:v30 flagHandler:v29 sosAdapter:v28 octagonAdapter:v27 accountsAdapter:v21 authKitAdapter:v26 personaAdapter:v25 deviceInfoAdapter:v20 secureBackupAdapter:v19 laContextAdapter:v18 ckksAccountSync:v17 lockStateTracker:v16 cuttlefishXPCWrapper:v13 escrowRequestClass:v15 notifierClass:v14 flowID:v4 deviceSessionID:v5 permittedToSendMetrics:v12 accountIsG:v6 accountIsW:v11 reachabilityTracker:v9 escrowChecker:self];

  return v24;
}

- (id)prepareInformation
{
  v3 = [(OTCuttlefishContext *)self deviceAdapter];
  v4 = [v3 isMachineIDOverridden];

  if (v4)
  {
    v5 = [(OTCuttlefishContext *)self deviceAdapter];
    v6 = [v5 getOverriddenMachineID];

    v7 = 0;
  }

  else
  {
    v8 = [(OTCuttlefishContext *)self sessionMetrics];
    v9 = [(OTCuttlefishContext *)self authKitAdapter];
    v10 = [(OTCuttlefishContext *)self activeAccount];
    v11 = [v10 altDSID];
    v12 = [v8 flowID];
    v13 = [v8 deviceSessionID];
    v30 = 0;
    v6 = [v9 machineID:v11 flowID:v12 deviceSessionID:v13 canSendMetrics:-[OTCuttlefishContext canSendMetricsUsingAccountState:](self error:{"canSendMetricsUsingAccountState:", -[OTCuttlefishContext shouldSendMetricsForOctagon](self, "shouldSendMetricsForOctagon")), &v30}];
    v7 = v30;
  }

  v29 = v6;
  if (!v6 || v7)
  {
    v14 = sub_100006274("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "octagon: Unable to fetch machine ID; expect signin to fail: %@", buf, 0xCu);
    }
  }

  v25 = [OTDeviceInformation alloc];
  v15 = [(OTCuttlefishContext *)self containerName];
  v16 = [(OTCuttlefishContext *)self contextID];
  v28 = [(OTCuttlefishContext *)self deviceAdapter];
  v17 = [v28 modelID];
  v18 = [(OTCuttlefishContext *)self deviceAdapter];
  v19 = [v18 deviceName];
  [(OTCuttlefishContext *)self deviceAdapter];
  v20 = v27 = v7;
  v21 = [v20 serialNumber];
  v22 = [(OTCuttlefishContext *)self deviceAdapter];
  v23 = [v22 osVersion];
  v26 = [(OTDeviceInformation *)v25 initForContainerName:v15 contextID:v16 epoch:0 machineID:v29 modelID:v17 deviceName:v19 serialNumber:v21 osVersion:v23];

  return v26;
}

- (void)rpcRemoveFriendsInClique:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [OTRemovePeersOperation alloc];
  v9 = [(OTCuttlefishContext *)self operationDependencies];
  v12 = [(OTRemovePeersOperation *)v8 initWithDependencies:v9 intendedState:@"BecomeReady" errorState:@"BecomeReady" peerIDs:v7];

  v10 = +[OTStates OctagonReadyStates];
  v11 = [(OTCuttlefishContext *)self stateMachine];
  [v11 doSimpleStateMachineRPC:@"remove-friends" op:v12 sourceStates:v10 reply:v6];
}

- (void)rpcLeaveClique:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self stateMachine];
  v6 = [v5 isPaused];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = +[OTStates OctagonNotInCliqueStates];
  v8 = [(OTCuttlefishContext *)self stateMachine];
  v9 = [v8 currentState];
  v10 = [NSSet setWithObject:v9];
  v11 = [v7 intersectsSet:v10];

  if (v11)
  {
    v12 = sub_100006274("octagon-leave-clique");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "device is not in clique to begin with - returning", v18, 2u);
    }

    v4[2](v4, 0);
  }

  else
  {
LABEL_6:
    v13 = [OTLeaveCliqueOperation alloc];
    v14 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLeaveCliqueOperation *)v13 initWithDependencies:v14 intendedState:@"BecomeUntrusted" errorState:@"CheckTrustState"];

    v16 = [(OTCuttlefishContext *)self stateMachine];
    v17 = +[OTStates OctagonInAccountStates];
    [v16 doSimpleStateMachineRPC:@"leave-clique" op:v15 sourceStates:v17 reply:v4];
  }
}

- (void)rpcResetAndEstablish:(int64_t)a3 idmsTargetContext:(id)a4 idmsCuttlefishPassword:(id)a5 notifyIdMS:(BOOL)a6 accountSettings:(id)a7 isGuitarfish:(BOOL)a8 accountIsW:(BOOL)a9 reply:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a10;
  idmsTargetContext = self->_idmsTargetContext;
  self->_resetReason = a3;
  self->_idmsTargetContext = v16;
  v20 = v16;
  v21 = a7;

  idmsCuttlefishPassword = self->_idmsCuttlefishPassword;
  self->_idmsCuttlefishPassword = v17;
  v23 = v17;

  self->_notifyIdMS = a6;
  self->_isGuitarfish = a8;
  self->_accountType = 2;
  self->_accountIsW = a9;
  v24 = [(OTCuttlefishContext *)self mergedAccountSettings:v21];

  [(OTCuttlefishContext *)self setAccountSettings:v24];
  v37 = @"ResetBecomeUntrusted";
  v35 = @"ResetAnyMissingTLKCKKSViews";
  v33 = @"ResetAndEstablish";
  v25 = [(OTCuttlefishContext *)self establishStatePathDictionary];
  v34 = v25;
  v26 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v36 = v26;
  v27 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v38 = v27;
  v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v29 = [OctagonStateTransitionPath pathFromDictionary:v28];

  v30 = [(OTCuttlefishContext *)self stateMachine];
  v31 = +[OTStates OctagonInAccountStates];

  v32 = [v30 doWatchedStateMachineRPC:@"rpc-reset-and-establish" sourceStates:v31 path:v29 reply:v18];
}

- (id)mergedAccountSettings:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishContext *)self accountSettings];
  v6 = objc_alloc_init(OTAccountSettings);
  if ([v4 hasWalrus])
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = [v7 walrus];
  [v6 setWalrus:v8];

  if ([v4 hasWebAccess])
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = [v9 webAccess];
  [v6 setWebAccess:v10];

  return v6;
}

- (void)performCKServerUnreadableDataRemoval:(BOOL)a3 accountIsW:(BOOL)a4 altDSID:(id)a5 reply:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  self->_accountType = 2;
  v12 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (v12)
  {
    v13 = sub_100006274("octagon-perform-ckserver-unreadable-data-removal");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    v11[2](v11, v12);
    goto LABEL_12;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v24 = +[AKAccountManager sharedInstance];
  if (v24)
  {
    v10 = v24;
    v25 = [v24 primaryAuthKitAccount];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 aa_altDSID];

      v10 = v27;
LABEL_7:
      v34 = v8;
      v35 = v7;
      v14 = [(OTCuttlefishContext *)self authKitAdapter];
      v38 = 0;
      v33 = [v14 accountIsDemoAccountByAltDSID:v10 error:&v38];
      v15 = v38;

      if (v15)
      {
        v16 = sub_100006274("SecError");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "octagon-perform-ckserver-unreadable-data-removal: failed to fetch demo account flag: %@", buf, 0xCu);
        }
      }

      IsInternalRelease = SecIsInternalRelease();
      v17 = [(OTCuttlefishContext *)self sessionMetrics];
      v18 = [v17 flowID];

      v19 = [(OTCuttlefishContext *)self sessionMetrics];
      v20 = [v19 deviceSessionID];

      v21 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
      v22 = [(OTCuttlefishContext *)self activeAccount];
      v23 = [(OTCuttlefishContext *)self shouldSendMetricsForOctagon]!= 0;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001405F4;
      v36[3] = &unk_100337928;
      v37 = v11;
      LOBYTE(v31) = v23;
      [v21 performCKServerUnreadableDataRemovalWithSpecificUser:v22 isGuitarfish:v34 accountIsW:v35 internalAccount:IsInternalRelease demoAccount:v33 altDSID:v10 flowID:v18 deviceSessionID:v20 canSendMetrics:v31 reply:v36];

      goto LABEL_12;
    }

    v29 = sub_100006274("SecError");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "octagon-perform-ckserver-unreadable-data-removal, Primary Authkit Account is nil", buf, 2u);
    }

    v30 = [NSError errorWithDomain:@"com.apple.security.octagon" code:44 description:@"Primary Authkit Account is nil"];
    v11[2](v11, v30);
  }

  else
  {
    v28 = sub_100006274("SecError");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "octagon-perform-ckserver-unreadable-data-removal, AuthKit Account Manager is nil", buf, 2u);
    }

    v10 = [NSError errorWithDomain:@"com.apple.security.octagon" code:77 description:@"AuthKit Account Manager is nil"];
    v11[2](v11, v10);
  }

LABEL_12:
}

- (void)rpcReset:(int64_t)a3 isGuitarfish:(BOOL)a4 reply:(id)a5
{
  v8 = a5;
  self->_accountType = 1;
  self->_isGuitarfish = a4;
  self->_resetReason = a3;
  v24 = @"CuttlefishReset";
  v22 = @"LocalReset";
  v20 = @"LocalResetClearLocalContextState";
  v18 = @"Initializing";
  v9 = +[OctagonStateTransitionPathStep success];
  v19 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v14 = [OctagonStateTransitionPath pathFromDictionary:v13];

  v15 = [(OTCuttlefishContext *)self stateMachine];
  v16 = +[OTStates OctagonAllStates];
  v17 = [v15 doWatchedStateMachineRPC:@"rpc-reset" sourceStates:v16 path:v14 reply:v8];
}

- (void)rpcEstablish:(id)a3 reply:(id)a4
{
  v10 = a4;
  v5 = [(OTCuttlefishContext *)self establishStatePathDictionary];
  v6 = [OctagonStateTransitionPath pathFromDictionary:v5];

  v7 = [(OTCuttlefishContext *)self stateMachine];
  v8 = +[OTStates OctagonInAccountStates];
  v9 = [v7 doWatchedStateMachineRPC:@"establish" sourceStates:v8 path:v6 reply:v10];
}

- (id)establishStatePathDictionary
{
  v39 = @"EstablishEnableCDPBit";
  v37 = @"ReEnactDeviceList";
  v35 = @"ReEnactPrepare";
  v33 = @"ResetAndEstablishClearLocalContextState";
  v31 = @"ReEnactReadyToEstablish";
  v29[0] = @"EscrowTriggerUpdate";
  v27 = @"BecomeReady";
  v25 = @"Ready";
  v16 = +[OctagonStateTransitionPathStep success];
  v26 = v16;
  v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28 = v15;
  v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v29[1] = @"EstablishCKKSReset";
  v30[0] = v14;
  v23 = @"EstablishAfterCKKSReset";
  v21 = @"EscrowTriggerUpdate";
  v19 = @"BecomeReady";
  v17 = @"Ready";
  v13 = +[OctagonStateTransitionPathStep success];
  v18 = v13;
  v2 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v30[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v32 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v34 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v36 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v38 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v40 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  return v11;
}

- (void)localReset:(id)a3
{
  v4 = a3;
  v17 = @"LocalReset";
  v15 = @"LocalResetClearLocalContextState";
  v13 = @"Initializing";
  v5 = +[OctagonStateTransitionPathStep success];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v9 = [OctagonStateTransitionPath pathFromDictionary:v8];

  v10 = +[OTStates OctagonAllStates];
  v11 = [(OTCuttlefishContext *)self stateMachine];
  v12 = [v11 doWatchedStateMachineRPC:@"local-reset-watcher" sourceStates:v10 path:v9 reply:v4];
}

- (BOOL)setCDPEnabled:(id *)a3
{
  v5 = [(OTCuttlefishContext *)self accountMetadataStore];
  v12 = 0;
  [v5 persistAccountChanges:&stru_100337900 error:&v12];
  v6 = v12;

  v7 = [(OTCuttlefishContext *)self stateMachine];
  [v7 handleFlag:@"cdp_enabled"];

  if (v6)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-cdp-status: unable to persist CDP enablement: %@", buf, 0xCu);
    }

    if (a3)
    {
      v9 = v6;
      *a3 = v6;
    }
  }

  else
  {
    v10 = sub_100006274("octagon-cdp-status");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully set CDP status bit to 'enabled''", buf, 2u);
    }
  }

  return v6 == 0;
}

- (int64_t)getCDPStatus:(id *)a3
{
  v4 = [(OTCuttlefishContext *)self accountMetadataStore];
  v14 = 0;
  v5 = [v4 loadOrCreateAccountMetadata:&v14];
  v6 = v14;

  if (v6)
  {
    v7 = sub_100006274("octagon-cdp-status");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "error fetching account metadata: %@", buf, 0xCu);
    }

    if (a3)
    {
      v8 = v6;
      v9 = 0;
      *a3 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [v5 cdpState];
    if (v10 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v10 == 1;
    }

    v11 = sub_100006274("octagon-cdp-status");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = OTCDPStatusToString();
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "current cdp status is: %@", buf, 0xCu);
    }
  }

  return v9;
}

- (BOOL)accountNoLongerAvailable
{
  v3 = [(OTCuttlefishContext *)self lockStateTracker];

  if (v3)
  {
    v4 = [(OTCuttlefishContext *)self lockStateTracker];
    [v4 recheck];
  }

  v5 = [(OTCuttlefishContext *)self stateMachine];
  [v5 handleFlag:@"apple_account_signed_out"];

  return 1;
}

- (BOOL)idmsTrustLevelChanged:(id *)a3
{
  v3 = [(OTCuttlefishContext *)self stateMachine];
  [v3 handleFlag:@"idms_level"];

  return 1;
}

- (void)passcodeStashAvailable:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(OTOperationConfiguration);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100141354;
  v7[3] = &unk_1003378E0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(OTCuttlefishContext *)self rpcTrustStatus:v5 reply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)moveToCheckTrustedState
{
  v3 = [(OTCuttlefishContext *)self lockStateTracker];

  if (v3)
  {
    v4 = [(OTCuttlefishContext *)self lockStateTracker];
    [v4 recheck];
  }

  v5 = [(OTCuttlefishContext *)self stateMachine];
  [v5 handleFlag:@"check_trust_state"];
}

- (BOOL)accountAvailable:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = sub_100006274("octagon");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = v6;
    v41 = 2112;
    v42 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Account available with altDSID: %@ %@", buf, 0x16u);
  }

  v8 = [(OTCuttlefishContext *)self launchSequence];
  [v8 setFirstLaunch:1];

  v9 = [(OTCuttlefishContext *)self accountsAdapter];
  v10 = [(OTCuttlefishContext *)self personaAdapter];
  v11 = [(OTCuttlefishContext *)self containerName];
  v12 = [(OTCuttlefishContext *)self contextID];
  v38 = 0;
  v13 = [v9 findAccountForCurrentThread:v10 optionalAltDSID:v6 cloudkitContainerName:v11 octagonContextID:v12 error:&v38];
  v14 = v38;
  [(OTCuttlefishContext *)self setActiveAccount:v13];

  v15 = [(OTCuttlefishContext *)self activeAccount];

  if (!v15 || v14)
  {
    v22 = sub_100006274("SecError");
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v23 = [(OTCuttlefishContext *)self contextID];
    *buf = 138412546;
    v40 = v23;
    v41 = 2112;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "octagon-account: unable to determine active account for context(%@). Issues ahead: %@", buf, 0x16u);
  }

  else
  {
    v16 = sub_100006274("octagon-account");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(OTCuttlefishContext *)self contextID];
      v18 = [(OTCuttlefishContext *)self activeAccount];
      *buf = 138412546;
      v40 = v17;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found a new account (%@): %@", buf, 0x16u);
    }

    v19 = [(OTCuttlefishContext *)self accountMetadataStore];
    v20 = [(OTCuttlefishContext *)self activeAccount];
    [v19 changeActiveAccount:v20];

    v21 = [(OTCuttlefishContext *)self activeAccount];
    LOBYTE(v20) = [v21 isPrimaryAccount];

    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v24 = [(OTCuttlefishContext *)self activeAccount];
      v22 = [v24 makeCKContainer];

      v25 = [(OTCuttlefishContext *)self accountStateTracker];
      [v25 setContainer:v22];
    }

    v23 = [(OTCuttlefishContext *)self ckks];
    v26 = [(OTCuttlefishContext *)self activeAccount];
    [v23 updateAccount:v26 container:v22];
  }

LABEL_14:
  v27 = [(OTCuttlefishContext *)self accountMetadataStore];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100141CAC;
  v36[3] = &unk_100344BD8;
  v28 = v6;
  v37 = v28;
  v35 = 0;
  [v27 persistAccountChanges:v36 error:&v35];
  v29 = v35;

  if (v29)
  {
    v30 = sub_100006274("SecError");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "octagon: unable to persist new account availability: %@", buf, 0xCu);
    }

    v31 = [(OTCuttlefishContext *)self stateMachine];
    [v31 handleFlag:@"account_available"];

    if (a4)
    {
      v32 = v29;
      *a4 = v29;
    }
  }

  else
  {
    v33 = [(OTCuttlefishContext *)self stateMachine];
    [v33 handleFlag:@"account_available"];
  }

  return v29 == 0;
}

- (void)cloudkitAccountStateChange:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = [(OTCuttlefishContext *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100141FE4;
  block[3] = &unk_100343E38;
  v7 = v5;
  v25 = v7;
  v26 = self;
  dispatch_sync(v6, block);

  if ([v7 accountStatus] != 1)
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Informed that the CK account is now unavailable: %@", buf, 0xCu);
    }

    v9 = [(OTCuttlefishContext *)self sessionMetrics];
    v10 = [AAFAnalyticsEventSecurity alloc];
    v11 = [(OTCuttlefishContext *)self activeAccount];
    v12 = [v11 altDSID];
    v13 = [v9 flowID];
    v14 = [v9 deviceSessionID];
    v15 = kSecurityRTCEventNameCloudKitAccountAvailability;
    LOBYTE(v21) = [(OTCuttlefishContext *)self canSendMetricsUsingAccountState:[(OTCuttlefishContext *)self shouldSendMetricsForOctagon]];
    v16 = [v10 initWithKeychainCircleMetrics:0 altDSID:v12 flowID:v13 deviceSessionID:v14 eventName:v15 testsAreEnabled:0 canSendMetrics:v21 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    v17 = [(OTCuttlefishContext *)self stateMachine];
    v18 = [OctagonStateTransitionOperation named:@"cloudkit-account-gone" entering:@"WaitingForCloudKitAccount"];
    v19 = +[OTStates OctagonInAccountStates];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10014243C;
    v22[3] = &unk_1003378B8;
    v23 = v16;
    v20 = v16;
    [v17 doSimpleStateMachineRPC:@"cloudkit-account-gone" op:v18 sourceStates:v19 reply:v22];
  }
}

- (void)notificationOfMachineIDListChange
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "machine ID list notification -- refreshing device list", v4, 2u);
  }

  [(OTCuttlefishContext *)self requestTrustedDeviceListRefresh];
}

- (NSString)description
{
  v3 = [(OTCuttlefishContext *)self containerName];
  v4 = [(OTCuttlefishContext *)self contextID];
  v5 = [NSString stringWithFormat:@"<OTCuttlefishContext: %@, %@>", v3, v4];

  return v5;
}

- (void)accountStateUpdated:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 icloudAccountState] == 2 && objc_msgSend(v7, "icloudAccountState") != 2)
  {
    v8 = [(OTCuttlefishContext *)self launchSequence];
    [v8 addEvent:@"iCloudAccount"];
  }

  if ([v6 trustState] == 2 && objc_msgSend(v7, "trustState") != 2)
  {
    v9 = [(OTCuttlefishContext *)self launchSequence];
    [v9 addEvent:@"Trusted"];

    -[OTCuttlefishContext notifyTrustChanged:](self, "notifyTrustChanged:", [v6 trustState]);
  }

  if ([v6 trustState] != 2 && objc_msgSend(v7, "trustState") == 2)
  {
    v10 = [(OTCuttlefishContext *)self launchSequence];
    [v10 addEvent:@"Untrusted"];

    -[OTCuttlefishContext notifyTrustChanged:](self, "notifyTrustChanged:", [v6 trustState]);
    v11 = [(OTCuttlefishContext *)self deviceAdapter];
    v12 = [v11 isHomePod];

    v13 = sub_100006274("octagon");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Trust transition from TRUSTED to some other state, posting TTR", buf, 2u);
      }

      v15 = [NSMutableDictionary dictionaryWithCapacity:5];
      v16 = [(OTCuttlefishContext *)self deviceAdapter];
      v17 = [v16 serialNumber];
      [v15 setObject:v17 forKeyedSubscript:@"serial"];

      v18 = [(OTCuttlefishContext *)self deviceAdapter];
      v19 = [v18 deviceName];
      [v15 setObject:v19 forKeyedSubscript:@"name"];

      v20 = [(OTCuttlefishContext *)self deviceAdapter];
      v21 = [v20 osVersion];
      [v15 setObject:v21 forKeyedSubscript:@"os_version"];

      v22 = [(OTCuttlefishContext *)self deviceAdapter];
      v23 = [v22 modelID];
      [v15 setObject:v23 forKeyedSubscript:@"model_id"];

      v24 = [v6 peerID];
      [v15 setObject:v24 forKeyedSubscript:@"peer_id"];

      v39 = 0;
      v25 = [NSJSONSerialization dataWithJSONObject:v15 options:2 error:&v39];
      v13 = v39;
      if (v25)
      {
        v26 = [[NSString alloc] initWithData:v25 encoding:4];
      }

      else
      {
        v26 = [NSString stringWithFormat:@"Error while serializing identifiers: %@", v13];
      }

      v27 = v26;
      v28 = [(OTCuttlefishContext *)self tapToRadarAdapter];
      [v28 postHomePodLostTrustTTR:v27];
    }

    else if (v14)
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Trust transition from TRUSTED to UNTRUSTED on a non-homepod", v38, 2u);
    }
  }

  v29 = [v6 syncingPolicy];
  v30 = [v7 syncingPolicy];
  v31 = [v29 isEqualToData:v30];

  if ((v31 & 1) == 0)
  {
    v32 = [v6 getTPSyncingPolicy];
    v33 = [v7 getTPSyncingPolicy];
    v34 = [v32 syncUserControllableViews];
    if (v34 != [v33 syncUserControllableViews])
    {
      v35 = sub_100006274("octagon-ucv");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "User controllable view state changed; posting notification", v37, 2u);
      }

      v36 = [(OTCuttlefishContext *)self notifierClass];
      [(objc_class *)v36 post:OTUserControllableViewStatusChanged];
    }
  }
}

- (void)notifyTrustChanged:(int)a3
{
  v5 = sub_100006274("octagon");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Untrusted";
    if (a3 == 2)
    {
      v6 = @"Trusted";
    }

    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Changing trust status to: %@", &v11, 0xCu);
  }

  if (![OTSOSActualAdapter sosEnabled]_0())
  {
    v7 = [(OTCuttlefishContext *)self notifierClass];
    v8 = [NSString stringWithUTF8String:kSOSCCCircleChangedNotification];
    [(objc_class *)v7 post:v8];
  }

  v9 = [(OTCuttlefishContext *)self notifierClass];
  v10 = [NSString stringWithUTF8String:"com.apple.security.octagon.trust-status-change"];
  [(objc_class *)v9 post:v10];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OTCuttlefishContext;
  [(OTCuttlefishContext *)&v2 dealloc];
}

- (OTCuttlefishContext)initWithContainerName:(id)a3 contextID:(id)a4 activeAccount:(id)a5 cuttlefish:(id)a6 ckksAccountSync:(id)a7 sosAdapter:(id)a8 accountsAdapter:(id)a9 authKitAdapter:(id)a10 personaAdapter:(id)a11 tooManyPeersAdapter:(id)a12 tapToRadarAdapter:(id)a13 lockStateTracker:(id)a14 reachabilityTracker:(id)a15 accountStateTracker:(id)a16 deviceInformationAdapter:(id)a17 secureBackupAdapter:(id)a18 laContextAdapter:(id)a19 apsConnectionClass:(Class)a20 escrowRequestClass:(Class)a21 notifierClass:(Class)a22 cdpd:(id)a23
{
  v83 = a3;
  v92 = a4;
  v91 = a5;
  v87 = a6;
  v28 = a7;
  v73 = a8;
  v82 = a8;
  v81 = a9;
  v80 = a10;
  v90 = a11;
  v79 = a12;
  v78 = a13;
  v89 = a14;
  v88 = a15;
  v86 = a16;
  v77 = a17;
  v76 = a18;
  v75 = a19;
  v29 = a23;
  v102.receiver = self;
  v102.super_class = OTCuttlefishContext;
  v30 = [(OTCuttlefishContext *)&v102 init];
  if (v30)
  {
    v85 = v28;
    objc_initWeak(&location, v30);
    objc_storeStrong(&v30->_containerName, a3);
    objc_storeStrong(&v30->_contextID, a4);
    objc_storeStrong(&v30->_activeAccount, a5);
    objc_storeStrong(&v30->_reachabilityTracker, a15);
    v31 = [OctagonAPSReceiver receiverForNamedDelegatePort:@"com.apple.securityd.aps" apsConnectionClass:a20];
    apsReceiver = v30->_apsReceiver;
    v30->_apsReceiver = v31;

    v33 = v30->_apsReceiver;
    v34 = [(OTCuttlefishContext *)v30 containerName];
    v35 = [(OctagonAPSReceiver *)v33 registerCuttlefishReceiver:v30 forContainerName:v34 contextID:v92];

    objc_storeStrong(&v30->_ckks, a7);
    v30->_initialBecomeUntrustedPosted = 0;
    objc_storeStrong(&v30->_tooManyPeersAdapter, a12);
    objc_storeStrong(&v30->_tapToRadarAdapter, a13);
    v36 = [[SecLaunchSequence alloc] initWithRocketName:@"com.apple.octagon.launch"];
    launchSequence = v30->_launchSequence;
    v30->_launchSequence = v36;

    v38 = dispatch_queue_create("com.apple.security.otcuttlefishcontext", 0);
    queue = v30->_queue;
    v30->_queue = v38;

    v40 = objc_alloc_init(NSOperationQueue);
    operationQueue = v30->_operationQueue;
    v30->_operationQueue = v40;

    v42 = objc_alloc_init(CKKSCondition);
    cloudKitAccountStateKnown = v30->_cloudKitAccountStateKnown;
    v30->_cloudKitAccountStateKnown = v42;

    v44 = [[OTCuttlefishAccountStateHolder alloc] initWithQueue:v30->_queue container:v30->_containerName context:v30->_contextID personaAdapter:v90 activeAccount:v91];
    accountMetadataStore = v30->_accountMetadataStore;
    v30->_accountMetadataStore = v44;

    [(OTCuttlefishAccountStateHolder *)v30->_accountMetadataStore registerNotification:v30];
    v46 = [OctagonStateMachine alloc];
    v47 = [v92 isEqualToString:@"defaultContext"];
    if (v47)
    {
      v48 = @"octagon";
    }

    else
    {
      v48 = [NSString stringWithFormat:@"octagon-%@", v92];
    }

    v49 = +[OTStates OctagonStateMap];
    v50 = +[OTStates AllOctagonFlags];
    v51 = [(OctagonStateMachine *)v46 initWithName:v48 states:v49 flags:v50 initialState:@"Initializing" queue:v30->_queue stateEngine:v30 unexpectedStateErrorDomain:@"com.apple.security.octagon.state" lockStateTracker:v89 reachabilityTracker:v88];
    stateMachine = v30->_stateMachine;
    v30->_stateMachine = v51;

    if ((v47 & 1) == 0)
    {
    }

    objc_storeStrong(&v30->_sosAdapter, v73);
    [(OTSOSAdapter *)v30->_sosAdapter registerForPeerChangeUpdates:v30];
    objc_storeStrong(&v30->_accountsAdapter, a9);
    objc_storeStrong(&v30->_authKitAdapter, a10);
    objc_storeStrong(&v30->_personaAdapter, a11);
    objc_storeStrong(&v30->_deviceAdapter, a17);
    objc_storeStrong(&v30->_secureBackupAdapter, a18);
    objc_storeStrong(&v30->_laContextAdapter, a19);
    [(OTDeviceInformationAdapter *)v30->_deviceAdapter registerForDeviceNameUpdates:v30];
    v53 = [[CuttlefishXPCWrapper alloc] initWithCuttlefishXPCConnection:v87];
    cuttlefishXPCWrapper = v30->_cuttlefishXPCWrapper;
    v30->_cuttlefishXPCWrapper = v53;

    objc_storeStrong(&v30->_lockStateTracker, a14);
    objc_storeStrong(&v30->_accountStateTracker, a16);
    v55 = [[OTFollowup alloc] initWithFollowupController:v29];
    followupHandler = v30->_followupHandler;
    v30->_followupHandler = v55;

    v57 = [v86 registerForNotificationsOfCloudKitAccountStatusChange:v30];
    [(OTAuthKitAdapter *)v30->_authKitAdapter registerNotification:v30];
    objc_storeStrong(&v30->_notifierClass, a22);
    objc_storeStrong(&v30->_escrowRequestClass, a21);
    v58 = [CKKSNearFutureScheduler alloc];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_1001433C4;
    v99[3] = &unk_1003452E8;
    objc_copyWeak(&v100, &location);
    v59 = [(CKKSNearFutureScheduler *)v58 initWithName:@"octagon-tlk-request" delay:500000000 keepProcessAlive:0 dependencyDescriptionCode:0 block:v99];
    suggestTLKUploadNotifier = v30->_suggestTLKUploadNotifier;
    v30->_suggestTLKUploadNotifier = v59;

    v61 = [CKKSNearFutureScheduler alloc];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_100143464;
    v97[3] = &unk_1003452E8;
    objc_copyWeak(&v98, &location);
    v62 = [(CKKSNearFutureScheduler *)v61 initWithName:@"octagon-policy-check" delay:500000000 keepProcessAlive:0 dependencyDescriptionCode:0 block:v97];
    requestPolicyCheckNotifier = v30->_requestPolicyCheckNotifier;
    v30->_requestPolicyCheckNotifier = v62;

    v64 = [CKKSNearFutureScheduler alloc];
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_100143504;
    v95[3] = &unk_1003452E8;
    objc_copyWeak(&v96, &location);
    v65 = [(CKKSNearFutureScheduler *)v64 initWithName:@"octagon-upgrade-ucv" initialDelay:0 continuingDelay:10000000000 keepProcessAlive:0 dependencyDescriptionCode:0 block:v95];
    upgradeUserControllableViewsRateLimiter = v30->_upgradeUserControllableViewsRateLimiter;
    v30->_upgradeUserControllableViewsRateLimiter = v65;

    v67 = [[CKKSNearFutureScheduler alloc] initWithName:@"octagon-retry-fixup" initialDelay:10000000000 exponentialBackoff:600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:&stru_100337890 block:2.0];
    fixupRetryScheduler = v30->_fixupRetryScheduler;
    v30->_fixupRetryScheduler = v67;

    v30->_shouldSendMetricsForOctagon = 0;
    v69 = [CKKSNearFutureScheduler alloc];
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_100143588;
    v93[3] = &unk_1003452E8;
    objc_copyWeak(&v94, &location);
    v70 = [(CKKSNearFutureScheduler *)v69 initWithName:@"ensure-metrics-off" initialDelay:3600000000000 continuingDelay:0 keepProcessAlive:1 dependencyDescriptionCode:0 block:v93];
    checkMetricsTrigger = v30->_checkMetricsTrigger;
    v30->_checkMetricsTrigger = v70;

    v30->_accountType = 0;
    objc_destroyWeak(&v94);
    objc_destroyWeak(&v96);
    objc_destroyWeak(&v98);
    objc_destroyWeak(&v100);
    objc_destroyWeak(&location);
    v28 = v85;
  }

  return v30;
}

@end