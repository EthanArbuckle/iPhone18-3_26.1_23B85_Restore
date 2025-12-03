@interface OTCuttlefishContext
- (BOOL)accountAvailable:(id)available error:(id *)error;
- (BOOL)accountNoLongerAvailable;
- (BOOL)checkAllStateCleared;
- (BOOL)checkForPhonePeerPresence:(id)presence;
- (BOOL)fetchSendingMetricsPermitted:(id *)permitted;
- (BOOL)idmsTrustLevelChanged:(id *)changed;
- (BOOL)leaveTrust:(id *)trust;
- (BOOL)machineIDOnMemoizedList:(id)list error:(id *)error;
- (BOOL)persistSendingMetricsPermitted:(BOOL)permitted error:(id *)error;
- (BOOL)postConfirmPasscodeCFU:(id *)u;
- (BOOL)postRepairCFU:(id *)u;
- (BOOL)recheckCKKSTrustStatus:(id *)status;
- (BOOL)setCDPEnabled:(id *)enabled;
- (BOOL)shouldPostConfirmPasscodeCFU:(id *)u;
- (BOOL)waitForReady:(int64_t)ready;
- (NSString)description;
- (OTCuttlefishContext)initWithContainerName:(id)name contextID:(id)d activeAccount:(id)account cuttlefish:(id)cuttlefish ckksAccountSync:(id)sync sosAdapter:(id)adapter accountsAdapter:(id)accountsAdapter authKitAdapter:(id)self0 personaAdapter:(id)self1 tooManyPeersAdapter:(id)self2 tapToRadarAdapter:(id)self3 lockStateTracker:(id)self4 reachabilityTracker:(id)self5 accountStateTracker:(id)self6 deviceInformationAdapter:(id)self7 secureBackupAdapter:(id)self8 laContextAdapter:(id)self9 apsConnectionClass:(Class)class escrowRequestClass:(Class)requestClass notifierClass:(Class)notifierClass cdpd:(id)cdpd;
- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags;
- (id)appleAccountSignOutOperation;
- (id)becomeInheritedOperation;
- (id)becomeReadyOperation;
- (id)becomeUntrustedOperation:(id)operation;
- (id)checkForAccountFixupsOperation:(id)operation;
- (id)ckksPeerStatus:(id)status;
- (id)cloudKitAccountNewlyAvailableOperation:(id)operation;
- (id)currentlyEnforcingIDMSTDL_testOnly:(id *)only;
- (id)cuttlefishTrustEvaluation;
- (id)egoPeerStatus:(id *)status;
- (id)errorIfNoCKAccount:(id)account;
- (id)establishStatePathDictionary;
- (id)evaluateSecdOctagonTrust;
- (id)evaluateTPHOctagonTrust:(id)trust;
- (id)extractStringKey:(id)key fromDictionary:(id)dictionary;
- (id)initializingOperation;
- (id)joinStatePathDictionary;
- (id)mergedAccountSettings:(id)settings;
- (id)operationDependencies;
- (id)postRepairCFUAndBecomeUntrusted;
- (id)prepareInformation;
- (id)repairAccountIfTrustedByTPHWithIntendedState:(id)state;
- (id)sosSelvesStatus;
- (id)sosTrustedPeersStatus;
- (int)currentMemoizedAccountState;
- (int)currentMemoizedTrustState;
- (int64_t)checkForCKAccount:(id)account;
- (int64_t)getCDPStatus:(id *)status;
- (void)accountStateUpdated:(id)updated from:(id)from;
- (void)areRecoveryKeysDistrusted:(id)distrusted;
- (void)checkOctagonHealth:(BOOL)health repair:(BOOL)repair danglingPeerCleanup:(BOOL)cleanup caesarPeerCleanup:(BOOL)peerCleanup updateIdMS:(BOOL)s reply:(id)reply;
- (void)checkTrustStatusAndPostRepairCFUIfNecessary:(id)necessary;
- (void)clearContextState;
- (void)cloudkitAccountStateChange:(id)change to:(id)to;
- (void)dealloc;
- (void)deviceNameUpdated;
- (void)fetchEscrowContents:(id)contents;
- (void)fetchTrustedDeviceNamesByPeerID:(id)d;
- (void)getAccountMetadataWithReply:(id)reply;
- (void)handlePairingRestart:(id)restart;
- (void)handleTTRRequest:(id)request;
- (void)icscRepairResetWithReply:(id)reply;
- (void)joinWithBottle:(id)bottle entropy:(id)entropy bottleSalt:(id)salt reply:(id)reply;
- (void)joinWithCustodianRecoveryKey:(id)key reply:(id)reply;
- (void)joinWithInheritanceKey:(id)key reply:(id)reply;
- (void)joinWithRecoveryKey:(id)key reply:(id)reply;
- (void)localReset:(id)reset;
- (void)moveToCheckTrustedState;
- (void)notificationOfMachineIDListChange;
- (void)notifyContainerChange:(id)change;
- (void)notifyContainerChangeWithUserInfo:(id)info;
- (void)notifyTrustChanged:(int)changed;
- (void)octagonPeerIDGivenBottleID:(id)d reply:(id)reply;
- (void)passcodeStashAvailable:(id)available;
- (void)performCKServerUnreadableDataRemoval:(BOOL)removal accountIsW:(BOOL)w altDSID:(id)d reply:(id)reply;
- (void)popTooManyPeersDialogWithEgoPeerStatus:(id)status accountMeta:(id)meta;
- (void)preflightJoinWithCustodianRecoveryKey:(id)key reply:(id)reply;
- (void)preflightJoinWithInheritanceKey:(id)key reply:(id)reply;
- (void)preflightRecoverOctagonUsingRecoveryKey:(id)key reply:(id)reply;
- (void)requestTrustedDeviceListRefresh;
- (void)rerollWithReply:(id)reply;
- (void)rpcCheckCustodianRecoveryKeyWithUUID:(id)d reply:(id)reply;
- (void)rpcCheckInheritanceKeyWithUUID:(id)d reply:(id)reply;
- (void)rpcCreateCustodianRecoveryKeyWithUUID:(id)d reply:(id)reply;
- (void)rpcCreateInheritanceKeyWithUUID:(id)d claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply;
- (void)rpcCreateInheritanceKeyWithUUID:(id)d reply:(id)reply;
- (void)rpcEpoch:(id)epoch;
- (void)rpcEstablish:(id)establish reply:(id)reply;
- (void)rpcFetchAccountSettings:(id)settings;
- (void)rpcFetchAllViableBottlesFromSource:(int64_t)source reply:(id)reply;
- (void)rpcFetchAllViableEscrowRecordsFromSource:(int64_t)source reply:(id)reply;
- (void)rpcFetchCountOfTrustedFullPeers:(id)peers;
- (void)rpcFetchEgoPeerID:(id)d;
- (void)rpcFetchTotalCountOfTrustedPeers:(id)peers;
- (void)rpcFetchTrustedSecureElementIdentities:(id)identities;
- (void)rpcFetchUserControllableViewsSyncingStatus:(id)status;
- (void)rpcGenerateInheritanceKeyWithUUID:(id)d reply:(id)reply;
- (void)rpcInvalidateEscrowCache:(id)cache;
- (void)rpcIsRecoveryKeySet:(id)set;
- (void)rpcJoin:(id)join vouchSig:(id)sig reply:(id)reply;
- (void)rpcLeaveClique:(id)clique;
- (void)rpcPrepareIdentityAsApplicantWithConfiguration:(id)configuration epoch:(unint64_t)epoch reply:(id)reply;
- (void)rpcRecreateInheritanceKeyWithUUID:(id)d oldIK:(id)k reply:(id)reply;
- (void)rpcRefetchCKKSPolicy:(id)policy;
- (void)rpcRemoveCustodianRecoveryKeyWithUUID:(id)d reply:(id)reply;
- (void)rpcRemoveFriendsInClique:(id)clique reply:(id)reply;
- (void)rpcRemoveInheritanceKeyWithUUID:(id)d reply:(id)reply;
- (void)rpcRemoveLocalSecureElementIdentityPeerID:(id)d reply:(id)reply;
- (void)rpcRemoveRecoveryKey:(id)key;
- (void)rpcReset:(int64_t)reset isGuitarfish:(BOOL)guitarfish reply:(id)reply;
- (void)rpcResetAndEstablish:(int64_t)establish idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s accountSettings:(id)settings isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w reply:(id)self0;
- (void)rpcSetAccountSetting:(id)setting reply:(id)reply;
- (void)rpcSetLocalSecureElementIdentity:(id)identity reply:(id)reply;
- (void)rpcSetRecoveryKey:(id)key reply:(id)reply;
- (void)rpcSetUserControllableViewsSyncingStatus:(BOOL)status reply:(id)reply;
- (void)rpcStatus:(id)status reply:(id)reply;
- (void)rpcStoreInheritanceKeyWithIK:(id)k reply:(id)reply;
- (void)rpcTlkRecoverabilityForEscrowRecordData:(id)data source:(int64_t)source reply:(id)reply;
- (void)rpcTrustStatus:(id)status reply:(id)reply;
- (void)rpcTrustStatusCachedStatus:(id)status reply:(id)reply;
- (void)rpcVoucherWithConfiguration:(id)configuration permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig reply:(id)reply;
- (void)rpcWaitForPriorityViewKeychainDataRecovery:(id)recovery;
- (void)setMachineIDOverride:(id)override;
- (void)setMetricsStateToActive;
- (void)setMetricsStateToInactive;
- (void)setMetricsToState:(int)state;
- (void)startOctagonStateMachine;
- (void)tlkRecoverabilityInOctagon:(id)octagon source:(int64_t)source reply:(id)reply;
- (void)trustedPeerSetChanged:(id)changed;
- (void)waitForOctagonUpgrade:(id)upgrade;
@end

@implementation OTCuttlefishContext

- (BOOL)persistSendingMetricsPermitted:(BOOL)permitted error:(id *)error
{
  if (permitted)
  {
    [(OTCuttlefishContext *)self setMetricsStateToActive];
  }

  else
  {
    [(OTCuttlefishContext *)self setMetricsStateToInactive];
  }

  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v7 = [accountMetadataStore persistSendingMetricsPermitted:-[OTCuttlefishContext shouldSendMetricsForOctagon](self error:{"shouldSendMetricsForOctagon"), error}];

  return v7;
}

- (BOOL)fetchSendingMetricsPermitted:(id *)permitted
{
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  LOBYTE(permitted) = -[OTCuttlefishContext canSendMetricsUsingAccountState:](self, "canSendMetricsUsingAccountState:", [accountMetadataStore fetchSendingMetricsPermitted:permitted]);

  return permitted;
}

- (BOOL)checkAllStateCleared
{
  inheritanceKey = [(OTCuttlefishContext *)self inheritanceKey];
  if (inheritanceKey)
  {
    v4 = 0;
  }

  else
  {
    custodianRecoveryKey = [(OTCuttlefishContext *)self custodianRecoveryKey];
    if (custodianRecoveryKey)
    {
      v4 = 0;
    }

    else
    {
      recoveryKey = [(OTCuttlefishContext *)self recoveryKey];
      if (recoveryKey || self->_bottleID || self->_bottleSalt || self->_entropy || self->_resetReason || self->_idmsTargetContext || self->_idmsCuttlefishPassword || self->_notifyIdMS)
      {
        v4 = 0;
      }

      else
      {
        accountSettings = [(OTCuttlefishContext *)self accountSettings];
        v4 = !accountSettings && !self->_skipRateLimitingCheck && !self->_repair && !self->_danglingPeersCleanup && !self->_updateIdMS && !self->_reportRateLimitingError && self->_healthCheckResults == 0;

        recoveryKey = 0;
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

- (void)getAccountMetadataWithReply:(id)reply
{
  replyCopy = reply;
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v9 = 0;
  v6 = [accountMetadataStore loadOrCreateAccountMetadata:&v9];
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

    replyCopy[2](replyCopy, 0, v7);
  }

  else
  {
    (replyCopy)[2](replyCopy, v6, 0);
  }
}

- (id)egoPeerStatus:(id *)status
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

    if (status)
    {
      v7 = v5;
      v8 = 0;
      *status = v5;
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
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001266BC;
    v13[3] = &unk_100337EE8;
    v13[4] = &v14;
    v13[5] = &buf;
    [cuttlefishXPCWrapper trustStatusWithSpecificUser:activeAccount reply:v13];

    if (status)
    {
      v11 = v15[5];
      if (v11)
      {
        *status = v11;
      }
    }

    v8 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&buf, 8);
  }

  return v8;
}

- (id)currentlyEnforcingIDMSTDL_testOnly:(id *)only
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
  cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
  activeAccount = [(OTCuttlefishContext *)self activeAccount];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012695C;
  v10[3] = &unk_100337EC0;
  v10[4] = &v11;
  v10[5] = &v17;
  [cuttlefishXPCWrapper honorIDMSListChangesForSpecificUser:activeAccount reply:v10];

  v7 = v12[5];
  if (v7)
  {
    v8 = 0;
    if (only)
    {
      *only = v7;
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

- (BOOL)machineIDOnMemoizedList:(id)list error:(id *)error
{
  listCopy = list;
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

    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v7;
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
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100126CCC;
    v15[3] = &unk_100337E98;
    p_buf = &buf;
    v16 = listCopy;
    v18 = &v19;
    [cuttlefishXPCWrapper fetchAllowedMachineIDsWithSpecificUser:activeAccount reply:v15];

    if (error)
    {
      v13 = *(*(&buf + 1) + 40);
      if (v13)
      {
        *error = v13;
      }
    }

    v10 = *(v20 + 24);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v19, 8);
  }

  return v10 & 1;
}

- (void)waitForOctagonUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  v5 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "waitForOctagonUpgrade", buf, 2u);
  }

  sosAdapter = [(OTCuttlefishContext *)self sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  if (sosEnabled)
  {
    sosAdapter2 = [(OTCuttlefishContext *)self sosAdapter];
    v41 = 0;
    v9 = [sosAdapter2 circleStatus:&v41];
    v10 = v41;

    v11 = sub_100006274("octagon-sos");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        sosAdapter3 = [(OTCuttlefishContext *)self sosAdapter];
        v40 = v10;
        v14 = [sosAdapter3 circleStatus:&v40];
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

      upgradeCopy[2](upgradeCopy, v10);
      goto LABEL_27;
    }

    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "in sos circle!, attempting upgrade", buf, 2u);
    }

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    isPaused = [stateMachine isPaused];

    stateMachine2 = [(OTCuttlefishContext *)self stateMachine];
    v21 = stateMachine2;
    if (isPaused)
    {
      currentState = [stateMachine2 currentState];
      v23 = [currentState isEqualToString:@"Ready"];

      if (v23)
      {
        v24 = sub_100006274("octagon-sos");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "waitForOctagonUpgrade: already ready, returning", buf, 2u);
        }

LABEL_26:
        upgradeCopy[2](upgradeCopy, 0);
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v26 = [stateMachine2 waitForState:@"Ready" wait:10000000000];
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

    stateMachine3 = [(OTCuttlefishContext *)self stateMachine];
    v39 = [stateMachine3 doWatchedStateMachineRPC:@"sos-upgrade-to-ready" sourceStates:v31 path:v37 reply:upgradeCopy];

    goto LABEL_27;
  }

  v17 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "sos not enabled, nothing to do for waitForOctagonUpgrade", buf, 2u);
  }

  upgradeCopy[2](upgradeCopy, 0);
LABEL_28:
}

- (void)checkOctagonHealth:(BOOL)health repair:(BOOL)repair danglingPeerCleanup:(BOOL)cleanup caesarPeerCleanup:(BOOL)peerCleanup updateIdMS:(BOOL)s reply:(id)reply
{
  replyCopy = reply;
  v15 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beginning checking overall Octagon Trust", buf, 2u);
  }

  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  isPaused = [stateMachine isPaused];

  if (!isPaused)
  {
    goto LABEL_12;
  }

  stateMachine2 = [(OTCuttlefishContext *)self stateMachine];
  currentState = [stateMachine2 currentState];
  v20 = [currentState isEqualToString:@"WaitForClassCUnlock"];

  if (v20)
  {
    v21 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "currently waiting for class C unlock", buf, 2u);
    }

    v22 = [NSError errorWithDomain:@"com.apple.security.octagon" code:57 description:@"Not performing health check, waiting for Class C Unlock"];
    replyCopy[2](replyCopy, 0, v22);

    goto LABEL_16;
  }

  stateMachine3 = [(OTCuttlefishContext *)self stateMachine];
  currentState2 = [stateMachine3 currentState];
  v25 = [currentState2 isEqualToString:@"NoAccount"];

  if (!v25)
  {
LABEL_12:
    self->_skipRateLimitingCheck = health;
    self->_repair = repair;
    self->_danglingPeersCleanup = cleanup;
    self->_caesarPeersCleanup = peerCleanup;
    self->_updateIdMS = s;
    self->_reportRateLimitingError = 1;
    objc_initWeak(buf, self);
    stateMachine4 = [(OTCuttlefishContext *)self stateMachine];
    currentState3 = [stateMachine4 currentState];
    v30 = [currentState3 isEqualToString:@"WaitForCDPCapableSecurityLevel"];

    [(OTCuttlefishContext *)self stateMachine];
    if (v30)
      v31 = {;
      [v31 handleFlag:@"idms_level"];

      v32 = [NSError errorWithDomain:@"com.apple.security.octagon" code:69 description:@"Unable to perform health check on this account type"];
      replyCopy[2](replyCopy, 0, v32);
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
      v51 = replyCopy;
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
  replyCopy[2](replyCopy, 0, v27);

LABEL_16:
}

- (BOOL)postConfirmPasscodeCFU:(id *)u
{
  followupHandler = [(OTCuttlefishContext *)self followupHandler];
  activeAccount = [(OTCuttlefishContext *)self activeAccount];
  v12 = 0;
  v7 = [followupHandler postFollowUp:3 activeAccount:activeAccount error:&v12];
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

    if (u)
    {
      v10 = v8;
      *u = v8;
    }
  }

  return v7;
}

- (BOOL)leaveTrust:(id *)trust
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
    if (trust)
    {
      *trust = v8;
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

- (BOOL)recheckCKKSTrustStatus:(id *)status
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

    if (status)
    {
      v8 = v5;
      v9 = 0;
      *status = v5;
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

  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  v11 = [stateMachine waitForState:@"Ready" wait:10000000000];
  v12 = [v11 isEqualToString:@"Ready"];

  if (!v12)
  {
    v21 = sub_100006274("SecError");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "octagon-ckks: recheckCKKSTrustStatus: failed to get to ready after timeout", buf, 2u);
    }

    if (status)
    {
      [NSError errorWithDomain:@"com.apple.security.octagon" code:76 description:@"Octagon has not reached a ready state yet"];
      *status = v9 = 0;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v13 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    ckks = [(OTCuttlefishContext *)self ckks];
    *buf = 138412290;
    v29 = ckks;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resetting CKKS(%@) peer providers", buf, 0xCu);
  }

  sosAdapter = [(OTCuttlefishContext *)self sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  octagonAdapter = [(OTCuttlefishContext *)self octagonAdapter];
  v18 = octagonAdapter;
  if (sosEnabled)
  {
    v27[0] = octagonAdapter;
    sosAdapter2 = [(OTCuttlefishContext *)self sosAdapter];
    v27[1] = sosAdapter2;
    v20 = [NSArray arrayWithObjects:v27 count:2];
  }

  else
  {
    v26 = octagonAdapter;
    v20 = [NSArray arrayWithObjects:&v26 count:1];
  }

  ckks2 = [(OTCuttlefishContext *)self ckks];
  suggestTLKUploadNotifier = [(OTCuttlefishContext *)self suggestTLKUploadNotifier];
  requestPolicyCheckNotifier = [(OTCuttlefishContext *)self requestPolicyCheckNotifier];
  [ckks2 beginTrustedOperation:v20 suggestTLKUpload:suggestTLKUploadNotifier requestPolicyCheck:requestPolicyCheckNotifier];

  v9 = 1;
LABEL_20:

  return v9;
}

- (BOOL)shouldPostConfirmPasscodeCFU:(id *)u
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

    if (u)
    {
      v11 = v6;
      *u = v6;
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

- (BOOL)postRepairCFU:(id *)u
{
  followupHandler = [(OTCuttlefishContext *)self followupHandler];
  activeAccount = [(OTCuttlefishContext *)self activeAccount];
  v12 = 0;
  [followupHandler postFollowUp:2 activeAccount:activeAccount error:&v12];
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

    if (u)
    {
      v9 = v7;
      *u = v7;
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

- (void)icscRepairResetWithReply:(id)reply
{
  replyCopy = reply;
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v7 = 0;
  [accountMetadataStore persistAccountChanges:&stru_100337E20 error:&v7];
  v6 = v7;

  replyCopy[2](replyCopy, v6);
}

- (void)rerollWithReply:(id)reply
{
  replyCopy = reply;
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

    replyCopy[2](replyCopy, v6);
  }

  else
  {
    v20 = @"OctagonStateStashAccountSettingsForReroll";
    v18 = @"OctagonStateCreateIdentityForReroll";
    joinStatePathDictionary = [(OTCuttlefishContext *)self joinStatePathDictionary];
    v17 = joinStatePathDictionary;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [OctagonStateTransitionPath pathFromDictionary:v11];

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    v14 = +[OTStates OctagonReadyStates];
    v15 = [stateMachine doWatchedStateMachineRPC:@"reroll" sourceStates:v14 path:v12 reply:replyCopy];
  }
}

- (void)rpcFetchCountOfTrustedFullPeers:(id)peers
{
  peersCopy = peers;
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

    peersCopy[2](peersCopy, &off_1003648D0, v5);
  }

  else
  {
    cloudKitAccountInfo = [(OTCuttlefishContext *)self cloudKitAccountInfo];
    hasValidCredentials = [cloudKitAccountInfo hasValidCredentials];

    if (hasValidCredentials)
    {
      cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
      activeAccount = [(OTCuttlefishContext *)self activeAccount];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100128CF8;
      v13[3] = &unk_100337E00;
      v14 = peersCopy;
      [cuttlefishXPCWrapper fetchTrustedFullPeerCountWithSpecificUser:activeAccount reply:v13];
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

      peersCopy[2](peersCopy, &off_1003648D0, v11);
    }
  }
}

- (void)rpcFetchTotalCountOfTrustedPeers:(id)peers
{
  peersCopy = peers;
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

    peersCopy[2](peersCopy, &off_1003648D0, v5);
  }

  else
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100128E90;
    v9[3] = &unk_100337E00;
    v10 = peersCopy;
    [cuttlefishXPCWrapper fetchTrustedPeerCountWithSpecificUser:activeAccount reply:v9];
  }
}

- (void)rpcTlkRecoverabilityForEscrowRecordData:(id)data source:(int64_t)source reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  if (source == 1 || ([(OTCuttlefishContext *)self errorIfNoCKAccount:0], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100129020;
    v13[3] = &unk_100337C78;
    v14 = replyCopy;
    [(OTCuttlefishContext *)self tlkRecoverabilityInOctagon:dataCopy source:source reply:v13];
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

    (*(replyCopy + 2))(replyCopy, 0, v11);
  }
}

- (void)tlkRecoverabilityInOctagon:(id)octagon source:(int64_t)source reply:(id)reply
{
  octagonCopy = octagon;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100129334;
  v11[3] = &unk_100337DD8;
  selfCopy = self;
  replyCopy = reply;
  v12 = octagonCopy;
  v9 = octagonCopy;
  v10 = replyCopy;
  [(OTCuttlefishContext *)self rpcFetchAllViableBottlesFromSource:source reply:v11];
}

- (void)octagonPeerIDGivenBottleID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, 0, v8);
  }

  else
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012994C;
    v12[3] = &unk_100337D88;
    v13 = replyCopy;
    [cuttlefishXPCWrapper octagonPeerIDGivenBottleIDWithSpecificUser:activeAccount bottleID:dCopy reply:v12];
  }
}

- (void)rpcWaitForPriorityViewKeychainDataRecovery:(id)recovery
{
  recoveryCopy = recovery;
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

    recoveryCopy[2](recoveryCopy, v5);
  }

  else
  {
    v7 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Beginning to wait for CKKS Priority view download", buf, 2u);
    }

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    v9 = [stateMachine waitForState:@"Ready" wait:500000000000];
    v10 = [v9 isEqualToString:@"Ready"];

    if (v10)
    {
      ckks = [(OTCuttlefishContext *)self ckks];
      rpcWaitForPriorityViewProcessing = [ckks rpcWaitForPriorityViewProcessing];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100129D40;
      v18[3] = &unk_100337D60;
      v19 = rpcWaitForPriorityViewProcessing;
      selfCopy = self;
      v21 = recoveryCopy;
      v13 = rpcWaitForPriorityViewProcessing;
      v14 = [CKKSResultOperation named:@"wait-for-sync-reply" withBlockTakingSelf:v18];
      [v14 addDependency:v13];
      operationQueue = [(OTCuttlefishContext *)self operationQueue];
      [operationQueue addOperation:v14];
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
      recoveryCopy[2](recoveryCopy, v17);
    }
  }
}

- (void)rpcFetchAccountSettings:(id)settings
{
  settingsCopy = settings;
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

    settingsCopy[2](settingsCopy, 0, v5);
  }

  else
  {
    v7 = sub_100006274("octagon-settings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetching account settings", buf, 2u);
    }

    sessionMetrics = [(OTCuttlefishContext *)self sessionMetrics];
    flowID = [sessionMetrics flowID];

    sessionMetrics2 = [(OTCuttlefishContext *)self sessionMetrics];
    deviceSessionID = [sessionMetrics2 deviceSessionID];

    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    containerName = [(OTCuttlefishContext *)self containerName];
    contextID = [(OTCuttlefishContext *)self contextID];
    v15 = [(OTCuttlefishContext *)self shouldSendMetricsForOctagon]!= 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10012A8A8;
    v18[3] = &unk_100337D38;
    v19 = settingsCopy;
    LOBYTE(v16) = v15;
    [OTStashAccountSettingsOperation performWithAccountWide:0 forceFetch:0 cuttlefishXPCWrapper:cuttlefishXPCWrapper activeAccount:activeAccount containerName:containerName contextID:contextID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v16 reply:v18];
  }
}

- (void)rpcFetchTrustedSecureElementIdentities:(id)identities
{
  identitiesCopy = identities;
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

    identitiesCopy[2](identitiesCopy, 0, v5);
  }

  else
  {
    accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
    v21 = 0;
    v8 = [accountMetadataStore loadOrCreateAccountMetadata:&v21];
    v9 = v21;

    if (!v8 || v9)
    {
      v11 = sub_100006274("octagon");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        containerName = [(OTCuttlefishContext *)self containerName];
        contextID = [(OTCuttlefishContext *)self contextID];
        *buf = 138412802;
        v23 = containerName;
        v24 = 2112;
        v25 = contextID;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to load account metadata for (%@,%@): %@", buf, 0x20u);
      }

      parsedSecureElementIdentity = 0;
    }

    else
    {
      parsedSecureElementIdentity = [v8 parsedSecureElementIdentity];
    }

    objc_initWeak(buf, self);
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10012ACD8;
    v17[3] = &unk_100337D10;
    objc_copyWeak(&v20, buf);
    v19 = identitiesCopy;
    v16 = parsedSecureElementIdentity;
    v18 = v16;
    [cuttlefishXPCWrapper fetchTrustStateWithSpecificUser:activeAccount reply:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (void)rpcRemoveLocalSecureElementIdentityPeerID:(id)d reply:(id)reply
{
  replyCopy = reply;
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v11 = 0;
  [accountMetadataStore persistAccountChanges:&stru_100337CE8 error:&v11];
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

    replyCopy[2](replyCopy, v7);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully persisted removal of SE identity", buf, 2u);
    }

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    [stateMachine handleFlag:@"se_id_changed"];

    replyCopy[2](replyCopy, 0);
  }
}

- (void)rpcSetLocalSecureElementIdentity:(id)identity reply:(id)reply
{
  identityCopy = identity;
  replyCopy = reply;
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012B4E4;
  v15[3] = &unk_100344BD8;
  v9 = identityCopy;
  v16 = v9;
  v14 = 0;
  [accountMetadataStore persistAccountChanges:v15 error:&v14];
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

    replyCopy[2](replyCopy, v10);
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully persisted new SE identity: %@", buf, 0xCu);
    }

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    [stateMachine handleFlag:@"se_id_changed"];

    replyCopy[2](replyCopy, 0);
  }
}

- (void)rpcSetAccountSetting:(id)setting reply:(id)reply
{
  settingCopy = setting;
  replyCopy = reply;
  v8 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (!v8)
  {
    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    isPaused = [stateMachine isPaused];

    if (isPaused)
    {
      v12 = +[OTStates OctagonReadyStates];
      stateMachine2 = [(OTCuttlefishContext *)self stateMachine];
      currentState = [stateMachine2 currentState];
      v15 = [NSSet setWithObject:currentState];
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

      stateMachine3 = [NSError errorWithDomain:@"com.apple.security.octagon" code:73 description:@"Device is not in Octagon yet to set account settings"];
      replyCopy[2](replyCopy, stateMachine3);
LABEL_17:

      goto LABEL_18;
    }

    v19 = sub_100006274("octagon-settings");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = settingCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting account settings %@", buf, 0xCu);
    }

    v20 = [(OTCuttlefishContext *)self mergedAccountSettings:settingCopy];
    [(OTCuttlefishContext *)self setAccountSettings:v20];

    stateMachine3 = [(OTCuttlefishContext *)self stateMachine];
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
    v28 = [stateMachine3 doWatchedStateMachineRPC:@"octagon-set-account-settings" sourceStates:v22 path:v27 reply:replyCopy];

    goto LABEL_17;
  }

  v9 = sub_100006274("octagon");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
  }

  replyCopy[2](replyCopy, v8);
LABEL_18:
}

- (void)rpcSetUserControllableViewsSyncingStatus:(BOOL)status reply:(id)reply
{
  statusCopy = status;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, 0, v7);
  }

  else
  {
    accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
    v31 = 0;
    v10 = [accountMetadataStore loadOrCreateAccountMetadata:&v31];
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
      replyCopy[2](replyCopy, 0, v14);
    }

    else
    {
      v26 = v11;
      v27 = v10;
      v15 = @"DisableUserControllableViews";
      if (statusCopy)
      {
        v15 = @"EnableUserControllableViews";
      }

      v14 = v15;
      v16 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"disabled";
        if (statusCopy)
        {
          v17 = @"enabled";
        }

        *buf = 138412290;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Settting user-controllable sync status as '%@'", buf, 0xCu);
      }

      stateMachine = [(OTCuttlefishContext *)self stateMachine];
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
      v30 = statusCopy;
      v28[4] = self;
      v29 = replyCopy;
      v23 = [stateMachine doWatchedStateMachineRPC:@"octagon-set-policy" sourceStates:v24 path:v22 reply:v28];

      v11 = v26;
      v10 = v27;
    }
  }
}

- (void)rpcFetchUserControllableViewsSyncingStatus:(id)status
{
  statusCopy = status;
  v5 = [(OTCuttlefishContext *)self errorIfNoCKAccount:0];
  if (!v5)
  {
    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    isPaused = [stateMachine isPaused];

    if (isPaused)
    {
      v9 = +[OTStates OctagonNotInCliqueStates];
      stateMachine2 = [(OTCuttlefishContext *)self stateMachine];
      currentState = [stateMachine2 currentState];
      v12 = [NSSet setWithObject:currentState];
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

      stateMachine3 = [(OTCuttlefishContext *)self stateMachine];
      currentState2 = [stateMachine3 currentState];
      v18 = [currentState2 isEqualToString:@"Error"];

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

        v19 = statusCopy[2];
        v20 = statusCopy;
        v21 = 0;
        goto LABEL_25;
      }
    }

    ckks = [(OTCuttlefishContext *)self ckks];
    syncingPolicy = [ckks syncingPolicy];

    if (!syncingPolicy)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10012C450;
      v33[3] = &unk_1003386E8;
      v33[4] = self;
      v34 = statusCopy;
      [(OTCuttlefishContext *)self rpcRefetchCKKSPolicy:v33];

      goto LABEL_26;
    }

    ckks2 = [(OTCuttlefishContext *)self ckks];
    syncingPolicy2 = [ckks2 syncingPolicy];
    syncUserControllableViewsAsBoolean = [syncingPolicy2 syncUserControllableViewsAsBoolean];

    v27 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (syncUserControllableViewsAsBoolean)
      {
        v28 = @"enabled";
      }

      else
      {
        v28 = @"disabled";
      }

      ckks3 = [(OTCuttlefishContext *)self ckks];
      syncingPolicy3 = [ckks3 syncingPolicy];
      syncUserControllableViews = [syncingPolicy3 syncUserControllableViews];
      if (syncUserControllableViews >= 4)
      {
        v32 = [NSString stringWithFormat:@"(unknown: %i)", syncUserControllableViews];
      }

      else
      {
        v32 = off_100337F20[syncUserControllableViews];
      }

      *buf = 138412546;
      v36 = v28;
      v37 = 2112;
      v38 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Returning user-controllable status as %@ (%@)", buf, 0x16u);
    }

    v19 = statusCopy[2];
    v20 = statusCopy;
    v21 = syncUserControllableViewsAsBoolean;
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

  (statusCopy[2])(statusCopy, 0, v5);
LABEL_26:
}

- (void)rpcRefetchCKKSPolicy:(id)policy
{
  policyCopy = policy;
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
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
  v12 = [stateMachine doWatchedStateMachineRPC:@"octagon-refetch-ckks-policy" sourceStates:v6 path:v11 reply:policyCopy];
}

- (void)fetchEscrowContents:(id)contents
{
  contentsCopy = contents;
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

    (*(contentsCopy + 2))(contentsCopy, 0, 0, 0, v5);
  }

  else
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012CA44;
    v9[3] = &unk_100337CA0;
    v10 = contentsCopy;
    [cuttlefishXPCWrapper fetchEscrowContentsWithSpecificUser:activeAccount reply:v9];
  }
}

- (void)rpcInvalidateEscrowCache:(id)cache
{
  cacheCopy = cache;
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

    cacheCopy[2](cacheCopy, v5);
  }

  else
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012CD58;
    v9[3] = &unk_100337928;
    v10 = cacheCopy;
    [cuttlefishXPCWrapper removeEscrowCacheWithSpecificUser:activeAccount reply:v9];
  }
}

- (void)rpcFetchAllViableEscrowRecordsFromSource:(int64_t)source reply:(id)reply
{
  replyCopy = reply;
  if (source == 1 || ([(OTCuttlefishContext *)self errorIfNoCKAccount:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012D020;
    v12[3] = &unk_100337C78;
    v13 = replyCopy;
    [cuttlefishXPCWrapper fetchViableEscrowRecordsWithSpecificUser:activeAccount source:source reply:v12];

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

    (*(replyCopy + 2))(replyCopy, 0, v8);
  }
}

- (void)rpcFetchAllViableBottlesFromSource:(int64_t)source reply:(id)reply
{
  replyCopy = reply;
  if (source == 1 || ([(OTCuttlefishContext *)self errorIfNoCKAccount:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    sessionMetrics = [(OTCuttlefishContext *)self sessionMetrics];
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    flowID = [sessionMetrics flowID];
    deviceSessionID = [sessionMetrics deviceSessionID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10012D364;
    v14[3] = &unk_100337C50;
    v15 = replyCopy;
    [cuttlefishXPCWrapper fetchViableBottlesWithSpecificUser:activeAccount source:source flowID:flowID deviceSessionID:deviceSessionID reply:v14];
  }

  else
  {
    sessionMetrics = v7;
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = sessionMetrics;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cloudkit account present: %@", buf, 0xCu);
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, sessionMetrics);
  }
}

- (void)rpcTrustStatus:(id)status reply:(id)reply
{
  statusCopy = status;
  replyCopy = reply;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1001266A4;
  v56 = sub_1001266B4;
  v57 = 0;
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v9 = v53;
  v51 = v53[5];
  v10 = [accountMetadataStore loadOrCreateAccountMetadata:&v51];
  objc_storeStrong(v9 + 5, v51);

  if (v53[5])
  {
    lockStateTracker = [(OTCuttlefishContext *)self lockStateTracker];
    v12 = [lockStateTracker isLockedError:v53[5]];

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
      (*(replyCopy + 2))(replyCopy, v15, 0, 0, 0, 0, v14);
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

  if ([statusCopy useCachedAccountStatus])
  {
    [(OTCuttlefishContext *)self rpcTrustStatusCachedStatus:v10 reply:replyCopy];
    goto LABEL_31;
  }

  v17 = [(OTCuttlefishContext *)self checkForCKAccount:statusCopy];
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

    [(OTCuttlefishContext *)self rpcTrustStatusCachedStatus:v10 reply:replyCopy];
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

    (*(replyCopy + 2))(replyCopy, 4, 0, 0, 0, 0, 0);
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

    (*(replyCopy + 2))(replyCopy, 4, 0, 0, 0, 0, v21);
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
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
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
    [cuttlefishXPCWrapper trustStatusWithSpecificUser:activeAccount reply:v25];

    (*(replyCopy + 2))(replyCopy, v38[3], *(*(&buf + 1) + 40), v46[5], *(v42 + 24), *(v34 + 24), v53[5]);
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);

    _Block_object_dispose(&buf, 8);
  }

LABEL_31:
  _Block_object_dispose(&v52, 8);
}

- (void)rpcTrustStatusCachedStatus:(id)status reply:(id)reply
{
  statusCopy = status;
  replyCopy = reply;
  if (([statusCopy isInheritedAccount] & 1) != 0 || objc_msgSend(statusCopy, "trustState") == 2)
  {
    v7 = 0;
  }

  else if ([statusCopy trustState] == 1)
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

  peerID = [statusCopy peerID];
  (*(replyCopy + 2))(replyCopy, v7, peerID, 0, 0, 0, 0);
}

- (void)rpcCreateInheritanceKeyWithUUID:(id)d claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply
{
  dCopy = d;
  dataCopy = data;
  keyDataCopy = keyData;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, 0, v14);
  }

  else
  {
    v16 = [OTCreateInheritanceKeyWithClaimTokenAndWrappingKey alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v18 = [(OTCreateInheritanceKeyWithClaimTokenAndWrappingKey *)v16 initWithUUID:dCopy claimTokenData:dataCopy wrappingKeyData:keyDataCopy dependencies:operationDependencies];

    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10012E2B8;
    v26 = &unk_100344DC8;
    v27 = v18;
    v28 = replyCopy;
    v19 = v18;
    v20 = [CKKSResultOperation named:@"createInheritanceKeyWithClaimTokenAndWrappingKey-callback" withBlock:&v23];
    [v20 addDependency:{v19, v23, v24, v25, v26}];
    operationQueue = [(OTCuttlefishContext *)self operationQueue];
    [operationQueue addOperation:v20];

    operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
    [operationQueue2 addOperation:v19];
  }
}

- (void)rpcRecreateInheritanceKeyWithUUID:(id)d oldIK:(id)k reply:(id)reply
{
  dCopy = d;
  kCopy = k;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, 0, v11);
  }

  else
  {
    v13 = [OTRecreateInheritanceKeyOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTRecreateInheritanceKeyOperation *)v13 initWithUUID:dCopy oldIK:kCopy dependencies:operationDependencies];

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10012E5F8;
    v23 = &unk_100344DC8;
    v24 = v15;
    v25 = replyCopy;
    v16 = v15;
    v17 = [CKKSResultOperation named:@"recreateInheritanceKey-callback" withBlock:&v20];
    [v17 addDependency:{v16, v20, v21, v22, v23}];
    operationQueue = [(OTCuttlefishContext *)self operationQueue];
    [operationQueue addOperation:v17];

    operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
    [operationQueue2 addOperation:v16];
  }
}

- (void)rpcCheckInheritanceKeyWithUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = [OTFindCustodianRecoveryKeyOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTFindCustodianRecoveryKeyOperation *)v8 initWithUUID:dCopy dependencies:operationDependencies];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012E864;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = replyCopy;
  v11 = replyCopy;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"checkInheritanceKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v13];

  operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue2 addOperation:v12];
}

- (void)rpcRemoveInheritanceKeyWithUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = [OTRemoveCustodianRecoveryKeyOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTRemoveCustodianRecoveryKeyOperation *)v8 initWithUUID:dCopy dependencies:operationDependencies];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012EB28;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = replyCopy;
  v11 = replyCopy;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"removeInheritanceKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v13];

  operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue2 addOperation:v12];
}

- (void)rpcStoreInheritanceKeyWithIK:(id)k reply:(id)reply
{
  replyCopy = reply;
  kCopy = k;
  v8 = [OTStoreInheritanceKeyOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTStoreInheritanceKeyOperation *)v8 initWithIK:kCopy dependencies:operationDependencies];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012ED7C;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = replyCopy;
  v11 = replyCopy;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"storeInheritanceKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v13];

  operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue2 addOperation:v12];
}

- (void)rpcGenerateInheritanceKeyWithUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (!dCopy)
  {
    dCopy = objc_alloc_init(NSUUID);
  }

  v10 = 0;
  v7 = [[OTInheritanceKey alloc] initWithUUID:dCopy error:&v10];
  v8 = v10;
  if (v7)
  {
    replyCopy[2](replyCopy, v7, 0);
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

    (replyCopy)[2](replyCopy, 0, v8);
  }
}

- (void)rpcCreateInheritanceKeyWithUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = [OTCreateInheritanceKeyOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTCreateInheritanceKeyOperation *)v8 initWithUUID:dCopy dependencies:operationDependencies];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012F120;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = replyCopy;
  v11 = replyCopy;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"createInheritanceKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v13];

  operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue2 addOperation:v12];
}

- (void)rpcCheckCustodianRecoveryKeyWithUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = [OTFindCustodianRecoveryKeyOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTFindCustodianRecoveryKeyOperation *)v8 initWithUUID:dCopy dependencies:operationDependencies];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012F38C;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = replyCopy;
  v11 = replyCopy;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"checkCustodianRecoveryKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v13];

  operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue2 addOperation:v12];
}

- (void)rpcRemoveCustodianRecoveryKeyWithUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = [OTRemoveCustodianRecoveryKeyOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTRemoveCustodianRecoveryKeyOperation *)v8 initWithUUID:dCopy dependencies:operationDependencies];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012F650;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = replyCopy;
  v11 = replyCopy;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"removeCustodianRecoveryKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v13];

  operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue2 addOperation:v12];
}

- (void)rpcCreateCustodianRecoveryKeyWithUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = [OTCreateCustodianRecoveryKeyOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v10 = [(OTCreateCustodianRecoveryKeyOperation *)v8 initWithUUID:dCopy dependencies:operationDependencies];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10012F8A4;
  v19 = &unk_100344DC8;
  v20 = v10;
  v21 = replyCopy;
  v11 = replyCopy;
  v12 = v10;
  v13 = [CKKSResultOperation named:@"createCustodianRecoveryKey-callback" withBlock:&v16];
  [v13 addDependency:{v12, v16, v17, v18, v19}];
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v13];

  operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue2 addOperation:v12];
}

- (void)areRecoveryKeysDistrusted:(id)distrusted
{
  distrustedCopy = distrusted;
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

    distrustedCopy[2](distrustedCopy, 0, v5);
  }

  else
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012FB30;
    v9[3] = &unk_100337BD8;
    v10 = distrustedCopy;
    [cuttlefishXPCWrapper octagonContainsDistrustedRecoveryKeysWithSpecificUser:activeAccount reply:v9];
  }
}

- (void)rpcRemoveRecoveryKey:(id)key
{
  keyCopy = key;
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

    keyCopy[2](keyCopy, 0, v5);
  }

  else
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012FCC4;
    v9[3] = &unk_100337BD8;
    v10 = keyCopy;
    [cuttlefishXPCWrapper removeRecoveryKey:activeAccount reply:v9];
  }
}

- (void)rpcIsRecoveryKeySet:(id)set
{
  setCopy = set;
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

    setCopy[2](setCopy, 0, v5);
  }

  else
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012FE58;
    v9[3] = &unk_100337BD8;
    v10 = setCopy;
    [cuttlefishXPCWrapper isRecoveryKeySet:activeAccount reply:v9];
  }
}

- (void)rpcSetRecoveryKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  keyCopy = key;
  lockStateTracker = [(OTCuttlefishContext *)self lockStateTracker];

  if (lockStateTracker)
  {
    lockStateTracker2 = [(OTCuttlefishContext *)self lockStateTracker];
    [lockStateTracker2 recheck];
  }

  v10 = [OTSetRecoveryKeyOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v12 = [(OTSetRecoveryKeyOperation *)v10 initWithDependencies:operationDependencies recoveryKey:keyCopy];

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10012FFF8;
  v21 = &unk_100344DC8;
  v22 = v12;
  v23 = replyCopy;
  v13 = replyCopy;
  v14 = v12;
  v15 = [CKKSResultOperation named:@"setRecoveryKey-callback" withBlock:&v18];
  [v15 addDependency:{v14, v18, v19, v20, v21}];
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v15];

  operationQueue2 = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue2 addOperation:v14];
}

- (void)fetchTrustedDeviceNamesByPeerID:(id)d
{
  dCopy = d;
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

    dCopy[2](dCopy, 0, v5);
  }

  else
  {
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013026C;
    v9[3] = &unk_100344F58;
    v10 = dCopy;
    [cuttlefishXPCWrapper trustedDeviceNamesByPeerIDWithSpecificUser:activeAccount reply:v9];
  }
}

- (void)rpcFetchEgoPeerID:(id)d
{
  dCopy = d;
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v11 = 0;
  v6 = [accountMetadataStore getEgoPeerID:&v11];
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

  dCopy[2](dCopy, v6, v7);
}

- (void)rpcStatus:(id)status reply:(id)reply
{
  statusCopy = status;
  replyCopy = reply;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1001266A4;
  v75 = sub_1001266B4;
  v76 = +[NSMutableDictionary dictionary];
  containerName = [(OTCuttlefishContext *)self containerName];
  [v72[5] setObject:containerName forKeyedSubscript:@"containerName"];

  contextID = [(OTCuttlefishContext *)self contextID];
  [v72[5] setObject:contextID forKeyedSubscript:@"contextID"];

  activeAccount = [(OTCuttlefishContext *)self activeAccount];
  v9 = [activeAccount description];
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

    replyCopy[2](replyCopy, 0, v11);
  }

  else
  {
    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    paused = [stateMachine paused];
    v15 = [paused wait:3000000000] == 0;

    if (!v15)
    {
      v16 = sub_100006274("octagon");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        containerName2 = [(OTCuttlefishContext *)self containerName];
        contextID2 = [(OTCuttlefishContext *)self contextID];
        *buf = 138412546;
        v78 = containerName2;
        v79 = 2112;
        v80 = contextID2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning status of unpaused state machine for container (%@) and context (%@)", buf, 0x16u);
      }

      [v72[5] setObject:&off_1003648B8 forKeyedSubscript:@"stateUnpaused"];
    }

    stateMachine2 = [(OTCuttlefishContext *)self stateMachine];
    currentState = [stateMachine2 currentState];
    [v72[5] setObject:currentState forKeyedSubscript:@"state"];

    stateMachine3 = [(OTCuttlefishContext *)self stateMachine];
    dumpPendingFlags = [stateMachine3 dumpPendingFlags];
    [v72[5] setObject:dumpPendingFlags forKeyedSubscript:@"statePendingFlags"];

    stateMachine4 = [(OTCuttlefishContext *)self stateMachine];
    flags = [stateMachine4 flags];
    dumpFlags = [flags dumpFlags];
    [v72[5] setObject:dumpFlags forKeyedSubscript:@"stateFlags"];

    accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
    v70 = 0;
    v27 = [accountMetadataStore loadOrCreateAccountMetadata:&v70];
    v62 = v70;

    if (v62)
    {
      v28 = sub_100006274("octagon");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        containerName3 = [(OTCuttlefishContext *)self containerName];
        contextID3 = [(OTCuttlefishContext *)self contextID];
        *buf = 138412802;
        v78 = containerName3;
        v79 = 2112;
        v80 = contextID3;
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

    launchSequence = [(OTCuttlefishContext *)self launchSequence];
    eventsByTime = [launchSequence eventsByTime];
    [v72[5] setObject:eventsByTime forKeyedSubscript:@"octagonLaunchSeqence"];

    memoizedLastEscrowRepairTriggered = [v27 memoizedLastEscrowRepairTriggered];
    v37 = memoizedLastEscrowRepairTriggered;
    if (memoizedLastEscrowRepairTriggered)
    {
      v38 = memoizedLastEscrowRepairTriggered;
    }

    else
    {
      v38 = @"never";
    }

    [v72[5] setObject:v38 forKeyedSubscript:@"lastEscrowRepairTriggered"];
    memoizedLastEscrowRepairAttempted = [v27 memoizedLastEscrowRepairAttempted];
    v61 = memoizedLastEscrowRepairAttempted;
    if (memoizedLastEscrowRepairAttempted)
    {
      v40 = memoizedLastEscrowRepairAttempted;
    }

    else
    {
      v40 = @"never";
    }

    [v72[5] setObject:v40 forKeyedSubscript:@"lastEscrowRepairAttempted"];
    v41 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v27 escrowRepairAttemptVersion]);
    [v72[5] setObject:v41 forKeyedSubscript:@"escrowRepairAttemptVersion"];

    memoizedLastHealthCheck = [v27 memoizedLastHealthCheck];
    v43 = memoizedLastHealthCheck;
    if (memoizedLastHealthCheck)
    {
      v44 = memoizedLastHealthCheck;
    }

    else
    {
      v44 = @"Never checked";
    }

    [v72[5] setObject:v44 forKeyedSubscript:@"memoizedlastHealthCheck"];
    sosAdapter = [(OTCuttlefishContext *)self sosAdapter];
    sosEnabled = [sosAdapter sosEnabled];

    if (sosEnabled)
    {
      sosTrustedPeersStatus = [(OTCuttlefishContext *)self sosTrustedPeersStatus];
      [v72[5] setObject:sosTrustedPeersStatus forKeyedSubscript:@"sosTrustedPeersStatus"];

      sosSelvesStatus = [(OTCuttlefishContext *)self sosSelvesStatus];
      [v72[5] setObject:sosSelvesStatus forKeyedSubscript:@"sosSelvesStatus"];
    }

    v69 = 0;
    v49 = [(objc_class *)[(OTCuttlefishContext *)self escrowRequestClass] request:&v69];
    v50 = v69;
    v68 = v50;
    v51 = [v49 fetchStatuses:&v68];
    v52 = v68;

    [v72[5] setObject:v51 forKeyedSubscript:@"escrowRequest"];
    followupHandler = [(OTCuttlefishContext *)self followupHandler];
    sysdiagnoseStatus = [followupHandler sysdiagnoseStatus];
    [v72[5] setObject:sysdiagnoseStatus forKeyedSubscript:@"CoreFollowUp"];

    v55 = +[CKKSAnalytics logger];
    v56 = [v55 datePropertyForKey:@"lastOctagonPush"];
    [v72[5] setObject:v56 forKeyedSubscript:@"lastOctagonPush"];

    apsReceiver = [(OTCuttlefishContext *)self apsReceiver];
    registeredPushEnvironments = [apsReceiver registeredPushEnvironments];
    [v72[5] setObject:registeredPushEnvironments forKeyedSubscript:@"pushEnvironments"];

    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount2 = [(OTCuttlefishContext *)self activeAccount];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100130DD0;
    v65[3] = &unk_100337C00;
    v66 = replyCopy;
    v67 = &v71;
    [cuttlefishXPCWrapper dumpWithSpecificUser:activeAccount2 fileDescriptor:statusCopy reply:v65];
  }

  _Block_object_dispose(&v71, 8);
}

- (id)sosSelvesStatus
{
  sosAdapter = [(OTCuttlefishContext *)self sosAdapter];
  v23 = 0;
  v4 = [sosAdapter fetchSelfPeers:&v23];
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
    currentSelf = [v4 currentSelf];
    v8 = [(OTCuttlefishContext *)self ckksPeerStatus:currentSelf];
    [v6 setObject:v8 forKeyedSubscript:@"currentSelf"];

    allSelves = [v4 allSelves];
    v10 = [allSelves mutableCopy];

    currentSelf2 = [v4 currentSelf];
    [v10 removeObject:currentSelf2];

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
  sosAdapter = [(OTCuttlefishContext *)self sosAdapter];
  v18 = 0;
  v4 = [sosAdapter fetchTrustedPeers:&v18];
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

- (id)ckksPeerStatus:(id)status
{
  statusCopy = status;
  v4 = +[NSMutableDictionary dictionary];
  peerID = [statusCopy peerID];

  if (peerID)
  {
    peerID2 = [statusCopy peerID];
    [v4 setObject:peerID2 forKeyedSubscript:@"peerID"];
  }

  publicSigningKey = [statusCopy publicSigningKey];
  encodeSubjectPublicKeyInfo = [publicSigningKey encodeSubjectPublicKeyInfo];

  if (encodeSubjectPublicKeyInfo)
  {
    v9 = [encodeSubjectPublicKeyInfo base64EncodedStringWithOptions:0];
    [v4 setObject:v9 forKeyedSubscript:@"signingSPKI"];

    v10 = [TPHashBuilder hashWithAlgo:1 ofData:encodeSubjectPublicKeyInfo];
    [v4 setObject:v10 forKeyedSubscript:@"signingSPKIHash"];
  }

  return v4;
}

- (void)rpcJoin:(id)join vouchSig:(id)sig reply:(id)reply
{
  joinCopy = join;
  sigCopy = sig;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, v11);
  }

  else
  {
    accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100131748;
    v24[3] = &unk_100338E48;
    v25 = joinCopy;
    v26 = sigCopy;
    v23 = 0;
    [accountMetadataStore persistAccountChanges:v24 error:&v23];
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

      replyCopy[2](replyCopy, v14);
    }

    else
    {
      v16 = [NSSet setWithObjects:@"InitiatorAwaitingVoucher", @"Untrusted", 0];
      joinStatePathDictionary = [(OTCuttlefishContext *)self joinStatePathDictionary];
      v18 = [OctagonStateTransitionPath pathFromDictionary:joinStatePathDictionary];

      stateMachine = [(OTCuttlefishContext *)self stateMachine];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100131798;
      v21[3] = &unk_1003386E8;
      v21[4] = self;
      v22 = replyCopy;
      v20 = [stateMachine doWatchedStateMachineRPC:@"rpc-join" sourceStates:v16 path:v18 reply:v21];
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

- (void)preflightRecoverOctagonUsingRecoveryKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, 0, v8);
  }

  else
  {
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    altDSID = [activeAccount altDSID];

    if (altDSID)
    {
      v12 = altDSID;
      cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
      activeAccount2 = [(OTCuttlefishContext *)self activeAccount];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100131F5C;
      v18[3] = &unk_100337BD8;
      v19 = replyCopy;
      [cuttlefishXPCWrapper preflightRecoverOctagonUsingRecoveryKey:activeAccount2 recoveryKey:keyCopy salt:v12 reply:v18];

      v15 = v19;
    }

    else
    {
      v16 = sub_100006274("octagon-preflight-rk");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        activeAccount3 = [(OTCuttlefishContext *)self activeAccount];
        *buf = 138412290;
        v21 = activeAccount3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
      }

      v15 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
      replyCopy[2](replyCopy, 0, v15);
    }
  }
}

- (void)preflightJoinWithInheritanceKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, v9);
  }

  else
  {
    v11 = [OTCustodianRecoveryKey alloc];
    uuid = [keyCopy uuid];
    recoveryKeyData = [keyCopy recoveryKeyData];
    v14 = [recoveryKeyData base64EncodedStringWithOptions:0];
    v29 = 0;
    v15 = [v11 initWithUUID:uuid recoveryString:v14 error:&v29];
    v16 = v29;

    if (v15)
    {
      v17 = [TrustedPeersHelperCustodianRecoveryKey alloc];
      uuid2 = [v15 uuid];
      uUIDString = [uuid2 UUIDString];
      [v15 recoveryString];
      v20 = v28 = v16;
      v21 = [(TrustedPeersHelperCustodianRecoveryKey *)v17 initWithUUID:uUIDString encryptionKey:0 signingKey:0 recoveryString:v20 salt:&stru_100348050 kind:2];

      v22 = [OTPreflightVouchWithCustodianRecoveryKeyOperation alloc];
      operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
      v24 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)v22 initWithDependencies:operationDependencies intendedState:@"BecomeReady" errorState:@"BecomeReady" tphcrk:v21];

      v25 = +[OTStates OctagonReadyStates];
      stateMachine = [(OTCuttlefishContext *)self stateMachine];
      [stateMachine doSimpleStateMachineRPC:@"preflight-inheritance-recovery-key" op:v24 sourceStates:v25 reply:replyCopy];

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

      replyCopy[2](replyCopy, v16);
    }
  }
}

- (void)joinWithInheritanceKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  [(OTCuttlefishContext *)self setInheritanceKey:key];
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

    replyCopy[2](replyCopy, v8);
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

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    v16 = +[OTStates OctagonInAccountStates];
    v17 = [stateMachine doWatchedStateMachineRPC:@"rpc-join-with-inheritance-key" sourceStates:v16 path:v14 reply:replyCopy];
  }
}

- (void)preflightJoinWithCustodianRecoveryKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, v9);
  }

  else
  {
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    altDSID = [activeAccount altDSID];

    if (altDSID)
    {
      v13 = altDSID;
      v14 = [TrustedPeersHelperCustodianRecoveryKey alloc];
      uuid = [keyCopy uuid];
      uUIDString = [uuid UUIDString];
      [keyCopy recoveryString];
      v17 = v27 = altDSID;
      v18 = [(TrustedPeersHelperCustodianRecoveryKey *)v14 initWithUUID:uUIDString encryptionKey:0 signingKey:0 recoveryString:v17 salt:v13 kind:1];

      v19 = [OTPreflightVouchWithCustodianRecoveryKeyOperation alloc];
      operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
      v21 = [(OTPreflightVouchWithCustodianRecoveryKeyOperation *)v19 initWithDependencies:operationDependencies intendedState:@"BecomeReady" errorState:@"BecomeReady" tphcrk:v18];

      v22 = +[OTStates OctagonReadyStates];
      stateMachine = [(OTCuttlefishContext *)self stateMachine];
      [stateMachine doSimpleStateMachineRPC:@"preflight-custodian-recovery-key" op:v21 sourceStates:v22 reply:replyCopy];

      altDSID = v27;
    }

    else
    {
      v24 = sub_100006274("authkit");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        activeAccount2 = [(OTCuttlefishContext *)self activeAccount];
        *buf = 138412290;
        v29 = activeAccount2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
      }

      v26 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
      replyCopy[2](replyCopy, v26);
    }
  }
}

- (void)joinWithCustodianRecoveryKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  [(OTCuttlefishContext *)self setCustodianRecoveryKey:key];
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

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v19 = @"CreateIdentityForCustodianRecoveryKey";
    joinStatePathDictionary = [(OTCuttlefishContext *)self joinStatePathDictionary];
    v18 = joinStatePathDictionary;
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [OctagonStateTransitionPath pathFromDictionary:v12];

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    v15 = +[OTStates OctagonInAccountStates];
    v16 = [stateMachine doWatchedStateMachineRPC:@"rpc-join-with-custodian-recovery-key" sourceStates:v15 path:v13 reply:replyCopy];
  }
}

- (void)joinWithRecoveryKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  [(OTCuttlefishContext *)self setRecoveryKey:key];
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

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v22 = @"OctagonStateStashAccountSettingsForRecoveryKey";
    v20 = @"CreateIdentityForRecoveryKey";
    joinStatePathDictionary = [(OTCuttlefishContext *)self joinStatePathDictionary];
    v19 = joinStatePathDictionary;
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = [OctagonStateTransitionPath pathFromDictionary:v13];

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    v16 = +[OTStates OctagonInAccountStates];
    v17 = [stateMachine doWatchedStateMachineRPC:@"rpc-join-with-recovery-key" sourceStates:v16 path:v14 reply:replyCopy];
  }
}

- (void)joinWithBottle:(id)bottle entropy:(id)entropy bottleSalt:(id)salt reply:(id)reply
{
  bottleCopy = bottle;
  entropyCopy = entropy;
  saltCopy = salt;
  replyCopy = reply;
  objc_storeStrong(&self->_bottleID, bottle);
  objc_storeStrong(&self->_entropy, entropy);
  objc_storeStrong(&self->_bottleSalt, salt);
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

    replyCopy[2](replyCopy, v16);
  }

  else
  {
    v30 = @"BottleJoinCreateIdentity";
    v28 = @"BottleJoinVouchWithBottle";
    joinStatePathDictionary = [(OTCuttlefishContext *)self joinStatePathDictionary];
    v29 = joinStatePathDictionary;
    v25 = bottleCopy;
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v31 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [OctagonStateTransitionPath pathFromDictionary:v20];

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    v23 = +[OTStates OctagonInAccountStates];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10013306C;
    v26[3] = &unk_1003386E8;
    v26[4] = self;
    v27 = replyCopy;
    v24 = [stateMachine doWatchedStateMachineRPC:@"rpc-join-with-bottle" sourceStates:v23 path:v21 reply:v26];

    bottleCopy = v25;
  }
}

- (void)rpcPrepareIdentityAsApplicantWithConfiguration:(id)configuration epoch:(unint64_t)epoch reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
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

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0, 0, v10);
  }

  else
  {
    v12 = sub_100006274("otrpc");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preparing identity as applicant", buf, 2u);
    }

    lockStateTracker = [(OTCuttlefishContext *)self lockStateTracker];

    if (lockStateTracker)
    {
      lockStateTracker2 = [(OTCuttlefishContext *)self lockStateTracker];
      [lockStateTracker2 recheck];
    }

    v15 = [OTPrepareOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    prepareInformation = [(OTCuttlefishContext *)self prepareInformation];
    policyOverride = [(OTCuttlefishContext *)self policyOverride];
    accountSettings = [(OTCuttlefishContext *)self accountSettings];
    v20 = [(OTPrepareOperation *)v15 initWithDependencies:operationDependencies intendedState:@"InitiatorAwaitingVoucher" errorState:@"BecomeUntrusted" deviceInfo:prepareInformation policyOverride:policyOverride accountSettings:accountSettings epoch:epoch];

    deviceAdapter = [(OTCuttlefishContext *)self deviceAdapter];
    longerTimeout = [deviceAdapter longerTimeout];

    if ([configurationCopy timeout])
    {
      timeout = [configurationCopy timeout];
    }

    else if (longerTimeout)
    {
      timeout = 1000000000000;
    }

    else
    {
      timeout = 500000000000;
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
    queue = [(OTCuttlefishContext *)self queue];
    v28 = [(OctagonStateTransitionRequest *)v24 init:@"prepareForApplicant" sourceStates:v26 serialQueue:queue transitionOp:v20];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100133518;
    v33[3] = &unk_100344DC8;
    v34 = v20;
    v35 = replyCopy;
    v29 = v20;
    v30 = [CKKSResultOperation named:@"rpcPrepare-callback" withBlock:v33];
    [v30 addDependency:v29];
    operationQueue = [(OTCuttlefishContext *)self operationQueue];
    [operationQueue addOperation:v30];

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    [stateMachine handleExternalRequest:v28 startTimeout:timeout];
  }
}

- (void)rpcVoucherWithConfiguration:(id)configuration permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig reply:(id)reply
{
  configurationCopy = configuration;
  infoCopy = info;
  sigCopy = sig;
  stableInfoCopy = stableInfo;
  infoSigCopy = infoSig;
  replyCopy = reply;
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

    (*(replyCopy + 2))(replyCopy, 0, 0, v16);
  }

  else
  {
    cloudKitAccountInfo = [(OTCuttlefishContext *)self cloudKitAccountInfo];
    hasValidCredentials = [cloudKitAccountInfo hasValidCredentials];

    if (hasValidCredentials)
    {
      v20 = sub_100006274("rpc-vouch");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating voucher", buf, 2u);
      }

      lockStateTracker = [(OTCuttlefishContext *)self lockStateTracker];

      if (lockStateTracker)
      {
        lockStateTracker2 = [(OTCuttlefishContext *)self lockStateTracker];
        [lockStateTracker2 recheck];
      }

      v23 = [OTUpdateTrustedDeviceListOperation alloc];
      operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
      v48 = [(OTUpdateTrustedDeviceListOperation *)v23 initWithDependencies:operationDependencies intendedState:@"BecomeReady" listUpdatesState:@"BecomeReady" errorState:@"BecomeReady" retryFlag:0];

      v25 = [OctagonStateTransitionRequest alloc];
      v26 = +[OTStates OctagonReadyStates];
      queue = [(OTCuttlefishContext *)self queue];
      v47 = [(OctagonStateTransitionRequest *)v25 init:@"updateTDL" sourceStates:v26 serialQueue:queue transitionOp:v48];

      v28 = [OTPairingVoucherOperation alloc];
      operationDependencies2 = [(OTCuttlefishContext *)self operationDependencies];
      prepareInformation = [(OTCuttlefishContext *)self prepareInformation];
      v31 = [(OTPairingVoucherOperation *)v28 initWithDependencies:operationDependencies2 intendedState:@"BecomeReady" errorState:@"BecomeReady" deviceInfo:prepareInformation peerID:configurationCopy permanentInfo:infoCopy permanentInfoSig:sigCopy stableInfo:stableInfoCopy stableInfoSig:infoSigCopy];

      v32 = [OctagonStateTransitionRequest alloc];
      v33 = +[OTStates OctagonReadyStates];
      queue2 = [(OTCuttlefishContext *)self queue];
      v35 = [(OctagonStateTransitionRequest *)v32 init:@"rpcVoucher" sourceStates:v33 serialQueue:queue2 transitionOp:v31];

      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100133CE0;
      v59[3] = &unk_100344DC8;
      v36 = v31;
      v60 = v36;
      v37 = replyCopy;
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
      operationQueue = [(OTCuttlefishContext *)self operationQueue];
      [operationQueue addOperation:v42];

      [(CKKSGroupOperation *)v36 addDependency:v42];
      [v40 addDependency:v36];
      stateMachine = [(OTCuttlefishContext *)self stateMachine];
      [stateMachine handleExternalRequest:v47 startTimeout:500000000000];

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

      (*(replyCopy + 2))(replyCopy, 0, 0, v45);
    }
  }
}

- (void)rpcEpoch:(id)epoch
{
  epochCopy = epoch;
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

    epochCopy[2](epochCopy, 0, v5);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching epoch", buf, 2u);
    }

    lockStateTracker = [(OTCuttlefishContext *)self lockStateTracker];

    if (lockStateTracker)
    {
      lockStateTracker2 = [(OTCuttlefishContext *)self lockStateTracker];
      [lockStateTracker2 recheck];
    }

    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100134190;
    v12[3] = &unk_100337B88;
    v13 = epochCopy;
    [cuttlefishXPCWrapper fetchEgoEpochWithSpecificUser:activeAccount reply:v12];
  }
}

- (id)errorIfNoCKAccount:(id)account
{
  v3 = [(OTCuttlefishContext *)self checkForCKAccount:account];
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

- (int64_t)checkForCKAccount:(id)account
{
  accountCopy = account;
  deviceAdapter = [(OTCuttlefishContext *)self deviceAdapter];
  if ([deviceAdapter longerTimeout])
  {
    v6 = 45000000000;
  }

  else
  {
    v6 = 5000000000;
  }

  if ([accountCopy timeoutWaitForCKAccount])
  {
    timeoutWaitForCKAccount = [accountCopy timeoutWaitForCKAccount];
    if (timeoutWaitForCKAccount < 2)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v6 = timeoutWaitForCKAccount >> 1;
  }

  cloudKitAccountStateKnown = [(OTCuttlefishContext *)self cloudKitAccountStateKnown];
  v9 = [cloudKitAccountStateKnown wait:v6];

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
  queue = [(OTCuttlefishContext *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100134784;
  block[3] = &unk_100344BB0;
  block[4] = self;
  block[5] = &v27;
  block[6] = buf;
  dispatch_sync(queue, block);

  if (*(v28 + 24) != 1 || (v12 = v32[24], (v12 & 1) == 0))
  {
    v13 = sub_100006274("octagon-ck");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      contextID = [(OTCuttlefishContext *)self contextID];
      *v35 = 138412290;
      v36 = contextID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No CK account present(%@). Attempting to refetch CK account status...", v35, 0xCu);
    }

    accountStateTracker = [(OTCuttlefishContext *)self accountStateTracker];
    v16 = [accountStateTracker notifyCKAccountStatusChangeAndWait:v6];

    if ((v16 & 1) == 0)
    {
      v17 = sub_100006274("octagon-ck");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetching new CK account status did not complete in time", v35, 2u);
      }
    }

    queue2 = [(OTCuttlefishContext *)self queue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100134834;
    v25[3] = &unk_100344BB0;
    v25[4] = self;
    v25[5] = &v27;
    v25[6] = buf;
    dispatch_sync(queue2, v25);

    v19 = sub_100006274("octagon-ck");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      contextID2 = [(OTCuttlefishContext *)self contextID];
      v21 = contextID2;
      if (v32[24])
      {
        v22 = @"present";
      }

      else
      {
        v22 = @"missing";
      }

      *v35 = 138412546;
      v36 = contextID2;
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

- (void)trustedPeerSetChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received an update of an SOS trust set change", buf, 2u);
  }

  sosAdapter = [(OTCuttlefishContext *)self sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  if ((sosEnabled & 1) == 0)
  {
    v8 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "This platform doesn't support SOS. This is probably a bug?", buf, 2u);
    }
  }

  sosConsistencyRateLimiter = [(OTCuttlefishContext *)self sosConsistencyRateLimiter];

  if (!sosConsistencyRateLimiter)
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

  sosConsistencyRateLimiter2 = [(OTCuttlefishContext *)self sosConsistencyRateLimiter];
  [sosConsistencyRateLimiter2 trigger];
}

- (void)deviceNameUpdated
{
  v3 = sub_100006274("octagon-devicename");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    contextID = [(OTCuttlefishContext *)self contextID];
    v7 = 138412290;
    v8 = contextID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "device name updated: %@", &v7, 0xCu);
  }

  v5 = [[OctagonPendingFlag alloc] initWithFlag:@"recd_push" conditions:1];
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  [stateMachine handlePendingFlag:v5];
}

- (void)requestTrustedDeviceListRefresh
{
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  [stateMachine handleFlag:@"attempt_machine_id_list"];
}

- (int)currentMemoizedAccountState
{
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v8 = 0;
  v3 = [accountMetadataStore loadOrCreateAccountMetadata:&v8];
  v4 = v8;

  if (v3)
  {
    icloudAccountState = [v3 icloudAccountState];
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

    icloudAccountState = 0;
  }

  return icloudAccountState;
}

- (int)currentMemoizedTrustState
{
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v8 = 0;
  v3 = [accountMetadataStore loadOrCreateAccountMetadata:&v8];
  v4 = v8;

  if (v3)
  {
    trustState = [v3 trustState];
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

    trustState = 0;
  }

  return trustState;
}

- (void)setMachineIDOverride:(id)override
{
  overrideCopy = override;
  deviceAdapter = [(OTCuttlefishContext *)self deviceAdapter];
  [deviceAdapter setOverriddenMachineID:overrideCopy];
}

- (void)popTooManyPeersDialogWithEgoPeerStatus:(id)status accountMeta:(id)meta
{
  statusCopy = status;
  metaCopy = meta;
  tooManyPeersAdapter = [(OTCuttlefishContext *)self tooManyPeersAdapter];
  shouldPopDialog = [tooManyPeersAdapter shouldPopDialog];

  if (shouldPopDialog)
  {
    if ([metaCopy warnedTooManyPeers])
    {
      v10 = sub_100006274("octagon");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        goto LABEL_29;
      }

      altDSID = [metaCopy altDSID];
      *buf = 138412290;
      v38 = altDSID;
      v12 = "popdialog: Already checked this altDSID: %@";
      v13 = v10;
      v14 = 12;
      goto LABEL_25;
    }

    accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
    v35 = 0;
    [accountMetadataStore persistAccountChanges:&stru_100337B60 error:&v35];
    v10 = v35;

    if (v10)
    {
      v16 = sub_100006274("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        altDSID2 = [metaCopy altDSID];
        *buf = 138412546;
        v38 = altDSID2;
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
        altDSID2 = [metaCopy altDSID];
        *buf = 138412290;
        v38 = altDSID2;
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
    peerCountsByMachineID = [statusCopy peerCountsByMachineID];
    allValues = [peerCountsByMachineID allValues];

    v23 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v25 += [*(*(&v31 + 1) + 8 * i) longValue];
        }

        v24 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
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

    tooManyPeersAdapter2 = [(OTCuttlefishContext *)self tooManyPeersAdapter];
    getLimit = [tooManyPeersAdapter2 getLimit];

    if (v25 >= getLimit)
    {
      altDSID = [(OTCuttlefishContext *)self tooManyPeersAdapter];
      [altDSID popDialogWithCount:v25 limit:getLimit];
      goto LABEL_27;
    }

    altDSID = sub_100006274("octagon");
    if (!os_log_type_enabled(altDSID, OS_LOG_TYPE_DEFAULT))
    {
LABEL_27:

      goto LABEL_28;
    }

    *buf = 134218240;
    v38 = v25;
    v39 = 2048;
    v40 = getLimit;
    v12 = "popdialog: not popping dialog, number of peers ok: %lu < %lu";
    v13 = altDSID;
    v14 = 22;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    goto LABEL_27;
  }

LABEL_29:
}

- (BOOL)waitForReady:(int64_t)ready
{
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  v5 = [stateMachine waitForState:@"Ready" wait:ready];

  LOBYTE(stateMachine) = [v5 isEqualToString:@"Ready"];
  return stateMachine;
}

- (void)notifyContainerChangeWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100006274("octagonpush");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    containerName = [(OTCuttlefishContext *)self containerName];
    *buf = 138412546;
    *&buf[4] = containerName;
    *&buf[12] = 2112;
    *&buf[14] = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received a cuttlefish push notification (%@): %@", buf, 0x16u);
  }

  v7 = [infoCopy objectForKeyedSubscript:@"cf"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(OTCuttlefishContext *)self extractStringKey:@"k" fromDictionary:v7], v8 = objc_claimAutoreleasedReturnValue(), (apsRateLimiter2 = v8) != 0))
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
        *&buf[4] = apsRateLimiter2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "octagon: unknown command: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    apsRateLimiter = [(OTCuttlefishContext *)self apsRateLimiter];
    v11 = apsRateLimiter == 0;

    if (v11)
    {
      deviceAdapter = [(OTCuttlefishContext *)self deviceAdapter];
      modelID = [deviceAdapter modelID];
      v14 = [OTDeviceInformation isFullPeer:modelID];

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

    apsRateLimiter2 = [(OTCuttlefishContext *)self apsRateLimiter];
    [apsRateLimiter2 trigger];
  }
}

- (void)notifyContainerChange:(id)change
{
  userInfo = [change userInfo];
  [(OTCuttlefishContext *)self notifyContainerChangeWithUserInfo:userInfo];
}

- (void)handleTTRRequest:(id)request
{
  requestCopy = request;
  v5 = [(OTCuttlefishContext *)self extractStringKey:@"s" fromDictionary:requestCopy];
  v6 = [(OTCuttlefishContext *)self extractStringKey:@"D" fromDictionary:requestCopy];
  v7 = [(OTCuttlefishContext *)self extractStringKey:@"a" fromDictionary:requestCopy];
  v8 = [(OTCuttlefishContext *)self extractStringKey:@"d" fromDictionary:requestCopy];
  v9 = [(OTCuttlefishContext *)self extractStringKey:@"R" fromDictionary:requestCopy];
  v10 = [(OTCuttlefishContext *)self extractStringKey:@"n" fromDictionary:requestCopy];
  v29 = [(OTCuttlefishContext *)self extractStringKey:@"v" fromDictionary:requestCopy];
  v28 = [(OTCuttlefishContext *)self extractStringKey:@"I" fromDictionary:requestCopy];
  if (!v5)
  {
    goto LABEL_3;
  }

  deviceAdapter = [(OTCuttlefishContext *)self deviceAdapter];
  [deviceAdapter serialNumber];
  v27 = requestCopy;
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
  requestCopy = v27;

  if (v18)
  {
LABEL_3:
    if (v6)
    {
      accountStateTracker = [(OTCuttlefishContext *)self accountStateTracker];
      ckdeviceID = [accountStateTracker ckdeviceID];

      if (!v5 || ([ckdeviceID isEqualToString:v5]& 1) == 0)
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

    ckdeviceID = sub_100006274("SecError");
    v23 = v29;
    if (os_log_type_enabled(ckdeviceID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = requestCopy;
      _os_log_impl(&_mh_execute_header, ckdeviceID, OS_LOG_TYPE_DEFAULT, "octagon: invalid type of TTR requeat: %@", buf, 0xCu);
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

- (id)extractStringKey:(id)key fromDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:key];
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

- (id)becomeUntrustedOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001376A0;
  v7[3] = &unk_100345338;
  objc_copyWeak(&v8, &location);
  v5 = [OctagonStateTransitionOperation named:@"octagon-become-untrusted" intending:operationCopy errorState:@"Error" withBlockTakingSelf:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (void)checkTrustStatusAndPostRepairCFUIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(OTOperationConfiguration);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100137DF4;
  v7[3] = &unk_100337AD0;
  objc_copyWeak(&v9, &location);
  v6 = necessaryCopy;
  v8 = v6;
  [(OTCuttlefishContext *)self rpcTrustStatus:v5 reply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)checkForPhonePeerPresence:(id)presence
{
  presenceCopy = presence;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [presenceCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 hasPrefix:@"iPhone"];
        v11 = [v9 hasPrefix:@"iPad"];
        if ((v10 & 1) != 0 || v11)
        {
          v12 = [presenceCopy objectForKeyedSubscript:v9];
          intValue = [v12 intValue];

          if (intValue >= 1)
          {
            v15 = sub_100006274("octagon");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              v22 = intValue;
              v23 = 2112;
              v24 = v9;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Have %d peers with model %@", buf, 0x12u);
            }

            v14 = 1;
            goto LABEL_15;
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
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

- (id)repairAccountIfTrustedByTPHWithIntendedState:(id)state
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1001266A4;
  v18 = sub_1001266B4;
  stateCopy = state;
  v19 = stateCopy;
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
  v7 = stateCopy;
  v11 = v7;
  [(OTCuttlefishContext *)self rpcTrustStatus:v6 reply:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)cloudKitAccountNewlyAvailableOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100138DB8;
  v7[3] = &unk_100345338;
  objc_copyWeak(&v8, &location);
  v5 = [OctagonStateTransitionOperation named:@"octagon-icloud-account-available" intending:operationCopy errorState:@"Error" withBlockTakingSelf:v7];
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
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  prepareInformation = [(OTCuttlefishContext *)self prepareInformation];
  LODWORD(v12) = *&self->_repair;
  v6 = [OTCheckHealthOperation initWithDependencies:v3 intendedState:"initWithDependencies:intendedState:errorState:deviceInfo:skipRateLimitedCheck:reportRateLimitingError:repair:danglingPeerCleanup:caesarPeerCleanup:updateIdMS:" errorState:operationDependencies deviceInfo:@"BecomeReady" skipRateLimitedCheck:@"BecomeReady" reportRateLimitingError:prepareInformation repair:self->_skipRateLimitingCheck danglingPeerCleanup:self->_reportRateLimitingError caesarPeerCleanup:v12 updateIdMS:?];

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
  operationQueue = [(OTCuttlefishContext *)self operationQueue];
  [operationQueue addOperation:v8];

  v10 = v7;
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

- (id)evaluateTPHOctagonTrust:(id)trust
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013A32C;
  v5[3] = &unk_1003379C0;
  v5[4] = self;
  v3 = [OctagonStateTransitionOperation named:@"octagon-health-tph-trust-check" intending:trust errorState:@"PostRepairCFU" withBlockTakingSelf:v5];

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

- (id)checkForAccountFixupsOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013A9CC;
  v8[3] = &unk_100343B78;
  objc_copyWeak(&v10, &location);
  v5 = operationCopy;
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

- (void)setMetricsToState:(int)state
{
  if (state == 2)
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

  ckks = [(OTCuttlefishContext *)self ckks];
  operationDependencies = [ckks operationDependencies];
  [operationDependencies setSendMetric:0];

  ckks2 = [(OTCuttlefishContext *)self ckks];
  zoneChangeFetcher = [ckks2 zoneChangeFetcher];
  [zoneChangeFetcher setSendMetric:0];

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

  ckks = [(OTCuttlefishContext *)self ckks];
  operationDependencies = [ckks operationDependencies];
  [operationDependencies setSendMetric:1];

  ckks2 = [(OTCuttlefishContext *)self ckks];
  zoneChangeFetcher = [ckks2 zoneChangeFetcher];
  [zoneChangeFetcher setSendMetric:1];

  [(OTCuttlefishContext *)self setShouldSendMetricsForOctagon:1];
}

- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags
{
  transitionCopy = transition;
  flagsCopy = flags;
  pendingFlagsCopy = pendingFlags;
  queue = [(OTCuttlefishContext *)self queue];
  dispatch_assert_queue_V2(queue);

  launchSequence = [(OTCuttlefishContext *)self launchSequence];
  [launchSequence addEvent:transitionCopy];

  if ([flagsCopy _onqueueContains:@"apple_account_signed_out"])
  {
    [flagsCopy _onqueueRemoveFlag:@"apple_account_signed_out"];
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handling apple account signed out flag", buf, 2u);
    }

    appleAccountSignOutOperation = [(OTCuttlefishContext *)self appleAccountSignOutOperation];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"Initializing"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self initializingOperation];
LABEL_7:
    v15 = appleAccountSignOutOperation;
    goto LABEL_8;
  }

  if ([transitionCopy isEqualToString:@"WaitForCDPCapableSecurityLevel"])
  {
    if ([flagsCopy _onqueueContains:@"idms_level"])
    {
      [flagsCopy _onqueueRemoveFlag:@"idms_level"];
      appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"cdp-capable-check" entering:@"DetermineiCloudAccountState"];
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

  if ([transitionCopy isEqualToString:@"WaitingForCloudKitAccount"])
  {
    cloudKitAccountInfo = [(OTCuttlefishContext *)self cloudKitAccountInfo];
    if (cloudKitAccountInfo)
    {
      cloudKitAccountInfo2 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
      accountStatus = [cloudKitAccountInfo2 accountStatus];

      if (accountStatus == 1)
      {
        v20 = sub_100006274("octagon");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CloudKit reports an account is available!", buf, 2u);
        }

        appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"ck-available" entering:@"CloudKitNewlyAvailable"];
        goto LABEL_7;
      }
    }

    v22 = sub_100006274("octagon");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      cloudKitAccountInfo3 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
      v24 = cloudKitAccountInfo3;
      v25 = @"uninitialized";
      if (cloudKitAccountInfo3)
      {
        v25 = cloudKitAccountInfo3;
      }

      *buf = 138412290;
      v250 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Waiting for a CloudKit account; current state is %@", buf, 0xCu);
    }

    cloudKitAccountInfo4 = [(OTCuttlefishContext *)self cloudKitAccountInfo];
    v27 = cloudKitAccountInfo4 == 0;

    if (v27)
    {
      v28 = sub_100006274("octagon");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Asking for a real CK account state", buf, 2u);
      }

      accountStateTracker = [(OTCuttlefishContext *)self accountStateTracker];
      [accountStateTracker recheckCKAccountStatus];
    }

    goto LABEL_33;
  }

  if ([transitionCopy isEqualToString:@"CloudKitNewlyAvailable"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self cloudKitAccountNewlyAvailableOperation:@"DetermineCDPState"];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"DetermineCDPState"])
  {
    v30 = [OTDetermineCDPBitStatusOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v32 = @"CheckForAccountFixups";
LABEL_36:
    v33 = @"WaitForCDP";
LABEL_37:
    v34 = v30;
    v35 = operationDependencies;
LABEL_38:
    v36 = [v34 initWithDependencies:v35 intendedState:v32 errorState:v33];
LABEL_39:
    v15 = v36;
LABEL_40:

    goto LABEL_8;
  }

  if ([transitionCopy isEqualToString:@"WaitForCDP"])
  {
    if ([flagsCopy _onqueueContains:@"cdp_enabled"])
    {
      [flagsCopy _onqueueRemoveFlag:@"cdp_enabled"];
      v37 = sub_100006274("octagon");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "CDP is newly available!", buf, 2u);
      }

      appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"cdp_enabled" entering:@"DetermineiCloudAccountState"];
      goto LABEL_7;
    }

    if ([flagsCopy _onqueueContains:@"recd_push"])
    {
      [flagsCopy _onqueueRemoveFlag:@"recd_push"];
      appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"cdp_enabled_push_received" entering:@"WaitForCDPUpdated"];
      goto LABEL_7;
    }

    if ([flagsCopy _onqueueContains:@"pending_network_availablility"])
    {
      [flagsCopy _onqueueRemoveFlag:@"pending_network_availablility"];
      appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"check_cdp_status_upon_network_availability" entering:@"WaitForCDPUpdated"];
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  if ([transitionCopy isEqualToString:@"WaitForCDPUpdated"])
  {
    v38 = [OTUpdateTPHOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    prepareInformation = [(OTCuttlefishContext *)self prepareInformation];
    LOBYTE(v241) = 0;
    v40 = [(OTUpdateTPHOperation *)v38 initWithDependencies:operationDependencies deviceInfo:prepareInformation intendedState:@"DetermineCDPState" peerUnknownState:0 determineCDPState:@"DetermineCDPState" errorState:@"DetermineCDPState" forceRefetch:v241 retryFlag:@"recd_push"];
LABEL_48:
    v15 = v40;

    goto LABEL_40;
  }

  if ([transitionCopy isEqualToString:@"CheckForAccountFixups"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self checkForAccountFixupsOperation:@"PerformAccountFixups"];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"PerformAccountFixups"])
  {
    appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"fixups-complete" entering:@"CheckTrustState"];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"CheckTrustState"])
  {
    v41 = [OctagonCheckTrustStateOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v32 = @"BecomeUntrusted";
    v34 = v41;
    v35 = operationDependencies;
    v33 = @"BecomeUntrusted";
    goto LABEL_38;
  }

  if ([transitionCopy isEqualToString:@"CDPHealthCheck"])
  {
    v30 = [OTDetermineCDPBitStatusOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v32 = @"SecurityTrustCheck";
    goto LABEL_36;
  }

  if ([transitionCopy isEqualToString:@"SecurityTrustCheck"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self evaluateSecdOctagonTrust];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"TPHTrustCheck"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self evaluateTPHOctagonTrust:@"CuttlefishTrustCheck"];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"CuttlefishTrustCheck"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self cuttlefishTrustEvaluation];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"PostRepairCFU"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self postRepairCFUAndBecomeUntrusted];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"HealthCheckReset"])
  {
    self->_resetReason = 2;
    appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"begin-reset" entering:@"ResetBecomeUntrusted"];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"BecomeUntrusted"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self becomeUntrustedOperation:@"Untrusted"];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"BecomeReady"])
  {
    appleAccountSignOutOperation = [(OTCuttlefishContext *)self becomeReadyOperation];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"RefetchCKKSPolicy"])
  {
    v30 = [OTFetchViewsOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v32 = @"BecomeReady";
    v33 = @"Error";
    goto LABEL_37;
  }

  if ([transitionCopy isEqualToString:@"EnableUserControllableViews"])
  {
    v42 = [OTModifyUserControllableViewStatusOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v43 = v42;
    v44 = operationDependencies;
    v45 = 2;
LABEL_83:
    v36 = [(OTModifyUserControllableViewStatusOperation *)v43 initWithDependencies:v44 intendedViewStatus:v45 intendedState:@"BecomeReady" peerMissingState:@"ReadyUpdated" errorState:@"BecomeReady"];
    goto LABEL_39;
  }

  if ([transitionCopy isEqualToString:@"DisableUserControllableViews"])
  {
    v46 = [OTModifyUserControllableViewStatusOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v43 = v46;
    v44 = operationDependencies;
    v45 = 1;
    goto LABEL_83;
  }

  if ([transitionCopy isEqualToString:@"SetUserControllableViewsToPeerConsensus"])
  {
    v47 = [OTModifyUserControllableViewStatusOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v43 = v47;
    v44 = operationDependencies;
    v45 = 3;
    goto LABEL_83;
  }

  if ([transitionCopy isEqualToString:@"SetAccountSettings"])
  {
    v48 = [OTSetAccountSettingsOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    prepareInformation = [(OTCuttlefishContext *)self accountSettings];
    v40 = [(OTSetAccountSettingsOperation *)v48 initWithDependencies:operationDependencies intendedState:@"BecomeReady" errorState:@"CheckTrustState" settings:prepareInformation];
    goto LABEL_48;
  }

  if ([transitionCopy isEqualToString:@"NoAccount"] && objc_msgSend(flagsCopy, "_onqueueContains:", @"account_available"))
  {
    [flagsCopy _onqueueRemoveFlag:@"account_available"];
    v49 = sub_100006274("octagon");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Account is available!  Attempting initializing op!", buf, 2u);
    }

    appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"account-probably-present" entering:@"Initializing"];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"Untrusted"])
  {
    if ([flagsCopy _onqueueContains:@"preapproved"])
    {
      [flagsCopy _onqueueRemoveFlag:@"preapproved"];
      sosAdapter = [(OTCuttlefishContext *)self sosAdapter];
      sosEnabled = [sosAdapter sosEnabled];

      v52 = sub_100006274("octagon");
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      if (sosEnabled)
      {
        if (v53)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Preapproved flag is high. Attempt SOS upgrade again!", buf, 2u);
        }

        appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"ck-available" entering:@"AttemptSOSUpgrade"];
        goto LABEL_7;
      }

      if (v53)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "We are untrusted, but it seems someone preapproves us now. Unfortunately, this platform doesn't support SOS.", buf, 2u);
      }
    }

    if ([flagsCopy _onqueueContains:@"attempt_sos_upgrade"])
    {
      [flagsCopy _onqueueRemoveFlag:@"attempt_sos_upgrade"];
      sosAdapter2 = [(OTCuttlefishContext *)self sosAdapter];
      sosEnabled2 = [sosAdapter2 sosEnabled];

      v56 = sub_100006274("octagon");
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      if (sosEnabled2)
      {
        if (v57)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Attempt SOS upgrade again!", buf, 2u);
        }

LABEL_104:

        appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"attempt-sos-upgrade" entering:@"AttemptSOSUpgrade"];
        goto LABEL_7;
      }

      if (v57)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "We are untrusted, but this platform doesn't support SOS.", buf, 2u);
      }
    }

    if ([flagsCopy _onqueueContains:@"attempt_sos_consistency"])
    {
      [flagsCopy _onqueueRemoveFlag:@"attempt_sos_consistency"];
      sosAdapter3 = [(OTCuttlefishContext *)self sosAdapter];
      sosEnabled3 = [sosAdapter3 sosEnabled];

      v56 = sub_100006274("octagon");
      v60 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      if (sosEnabled3)
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

    if ([flagsCopy _onqueueContains:@"recd_push"])
    {
      [flagsCopy _onqueueRemoveFlag:@"recd_push"];
      v61 = sub_100006274("octagon");
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Updating TPH (while untrusted) due to push", buf, 2u);
      }

      appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"untrusted-update" entering:@"UntrustedUpdated"];
      goto LABEL_7;
    }

    if ([flagsCopy _onqueueContains:@"idms_level"])
    {
      [flagsCopy _onqueueRemoveFlag:@"idms_level"];
    }

    if ([flagsCopy _onqueueContains:@"cdp_enabled"])
    {
      v62 = sub_100006274("octagon");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Removing 'CDP enabled' flag", buf, 2u);
      }

      [flagsCopy _onqueueRemoveFlag:@"cdp_enabled"];
    }

    if ([flagsCopy _onqueueContains:@"check_trust_state"])
    {
      v63 = sub_100006274("octagon");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Checking trust state", buf, 2u);
      }

      [flagsCopy _onqueueRemoveFlag:@"check_trust_state"];
      appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"check-trust-state" entering:@"CheckTrustState"];
      goto LABEL_7;
    }
  }

  if ([transitionCopy isEqualToString:@"UntrustedUpdated"])
  {
    v64 = [OTUpdateTPHOperation alloc];
    operationDependencies2 = [(OTCuttlefishContext *)self operationDependencies];
    prepareInformation2 = [(OTCuttlefishContext *)self prepareInformation];
    LOBYTE(v241) = 0;
    v15 = [(OTUpdateTPHOperation *)v64 initWithDependencies:operationDependencies2 deviceInfo:prepareInformation2 intendedState:@"Untrusted" peerUnknownState:@"PeerMissingFromServer" determineCDPState:0 errorState:@"Untrusted" forceRefetch:v241 retryFlag:@"recd_push"];

    goto LABEL_8;
  }

  if ([transitionCopy isEqualToString:@"DetermineiCloudAccountState"])
  {
    v67 = sub_100006274("octagon");
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Determine iCloud account status", buf, 2u);
    }

    v68 = [OTDetermineCDPCapableAccountStatusOperation alloc];
    operationDependencies3 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTDetermineCDPCapableAccountStatusOperation *)v68 initWithDependencies:operationDependencies3 stateIfCDPCapable:@"Initializing" stateIfNotCDPCapable:@"WaitForCDPCapableSecurityLevel" stateIfNoAccount:@"NoAccount" errorState:@"Error"];

    goto LABEL_8;
  }

  if ([transitionCopy isEqualToString:@"CuttlefishReset"])
  {
    v70 = sub_100006274("octagon");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Resetting cuttlefish", buf, 2u);
    }

    v245 = [OTResetOperation alloc];
    containerName = [(OTCuttlefishContext *)self containerName];
    contextID = [(OTCuttlefishContext *)self contextID];
    resetReason = self->_resetReason;
    accountType = self->_accountType;
    operationDependencies4 = [(OTCuttlefishContext *)self operationDependencies];
    cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
    v15 = [(OTResetOperation *)v245 init:containerName contextID:contextID reason:resetReason idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountType:accountType intendedState:@"LocalReset" dependencies:operationDependencies4 errorState:@"Error" cuttlefishXPCWrapper:cuttlefishXPCWrapper];

    goto LABEL_8;
  }

  if ([transitionCopy isEqualToString:@"CKKSResetAfterOctagonReset"])
  {
    v77 = [OTLocalCKKSResetOperation alloc];
    operationDependencies5 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLocalCKKSResetOperation *)v77 initWithDependencies:operationDependencies5 intendedState:@"LocalReset" errorState:@"BecomeUntrusted"];

    goto LABEL_8;
  }

  if ([transitionCopy isEqualToString:@"LocalReset"])
  {
    v79 = sub_100006274("octagon");
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Attempting local-reset", buf, 2u);
    }

    v80 = [OTLocalResetOperation alloc];
    operationDependencies6 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLocalResetOperation *)v80 initWithDependencies:operationDependencies6 intendedState:@"LocalResetClearLocalContextState" errorState:@"Initializing"];

    goto LABEL_8;
  }

  if ([transitionCopy isEqualToString:@"LocalResetClearLocalContextState"])
  {
    [(OTCuttlefishContext *)self clearContextState];
    appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"move-to-initializing" entering:@"Initializing"];
    goto LABEL_7;
  }

  if ([transitionCopy isEqualToString:@"NoAccountDoReset"])
  {
    v82 = sub_100006274("octagon");
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Attempting local-reset as part of signout", buf, 2u);
    }

    [(OTCuttlefishContext *)self clearContextState];
    v83 = [OTLocalResetOperation alloc];
    operationDependencies7 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLocalResetOperation *)v83 initWithDependencies:operationDependencies7 intendedState:@"NoAccount" errorState:@"NoAccount"];

    goto LABEL_8;
  }

  if ([transitionCopy isEqualToString:@"PeerMissingFromServer"])
  {
    [(OTCuttlefishContext *)self clearContextState];
    v85 = [OTLocalResetOperation alloc];
    operationDependencies8 = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLocalResetOperation *)v85 initWithDependencies:operationDependencies8 intendedState:@"BecomeUntrusted" errorState:@"BecomeUntrusted"];

    goto LABEL_8;
  }

  if (![transitionCopy isEqualToString:@"EnsureConsistency"])
  {
    if ([transitionCopy isEqualToString:@"BottlePreloadOctagonKeysInSOS"])
    {
      v92 = sub_100006274("octagon");
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Preloading Octagon Keys on the SOS Account", buf, 2u);
      }

      sosAdapter4 = [(OTCuttlefishContext *)self sosAdapter];
      sosEnabled4 = [sosAdapter4 sosEnabled];

      if (!sosEnabled4)
      {
        appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"no-preload-octagon-key" entering:@"SetAccountSettings"];
        goto LABEL_7;
      }

      custodianRecoveryKey = [(OTCuttlefishContext *)self custodianRecoveryKey];
      if (custodianRecoveryKey)
      {
        v96 = @"JoinSOSAfterCKKSFetch";
        v97 = @"JoinSOSAfterCKKSFetch";
      }

      else
      {
        recoveryKey = [(OTCuttlefishContext *)self recoveryKey];
        v109 = @"JoinSOSAfterCKKSFetch";
        if (!recoveryKey)
        {
          v109 = @"SetAccountSettings";
        }

        v96 = v109;
      }

      v110 = [OTPreloadOctagonKeysOperation alloc];
      operationDependencies9 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTPreloadOctagonKeysOperation *)v110 initWithDependencies:operationDependencies9 intendedState:v96 errorState:v96];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"EnsureUpdatePreapprovals"])
    {
      v98 = sub_100006274("octagon");
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "SOS is enabled; ensuring preapprovals are correct", buf, 2u);
      }

      v99 = [OTSOSUpdatePreapprovalsOperation alloc];
      operationDependencies10 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTSOSUpdatePreapprovalsOperation *)v99 initWithDependencies:operationDependencies10 intendedState:@"BecomeReady" sosNotPresentState:@"BecomeReady" errorState:@"BecomeReady"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"AttemptSOSUpgradeDetermineCDPState"])
    {
      v101 = [OTDetermineCDPBitStatusOperation alloc];
      operationDependencies11 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTDetermineCDPBitStatusOperation *)v101 initWithDependencies:operationDependencies11 intendedState:@"AttemptSOSUpgrade" errorState:@"WaitForCDP"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"AttemptSOSUpgrade"])
    {
      v103 = sub_100006274("octagon");
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Investigating SOS status", buf, 2u);
      }

      v104 = [OTSOSUpgradeOperation alloc];
      operationDependencies12 = [(OTCuttlefishContext *)self operationDependencies];
      prepareInformation3 = [(OTCuttlefishContext *)self prepareInformation];
      policyOverride = [(OTCuttlefishContext *)self policyOverride];
      v15 = [(OTSOSUpgradeOperation *)v104 initWithDependencies:operationDependencies12 intendedState:@"BecomeReady" ckksConflictState:@"SOSUpgradeCKKSReset" errorState:@"BecomeUntrusted" deviceInfo:prepareInformation3 policyOverride:policyOverride];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"SOSUpgradeCKKSReset"])
    {
      v112 = [OTLocalCKKSResetOperation alloc];
      operationDependencies13 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTLocalCKKSResetOperation *)v112 initWithDependencies:operationDependencies13 intendedState:@"SOSUpgradeAfterCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"SOSUpgradeAfterCKKSReset"])
    {
      v114 = [OTSOSUpgradeOperation alloc];
      operationDependencies14 = [(OTCuttlefishContext *)self operationDependencies];
      prepareInformation4 = [(OTCuttlefishContext *)self prepareInformation];
      policyOverride2 = [(OTCuttlefishContext *)self policyOverride];
      v15 = [(OTSOSUpgradeOperation *)v114 initWithDependencies:operationDependencies14 intendedState:@"BecomeReady" ckksConflictState:@"BecomeUntrusted" errorState:@"BecomeUntrusted" deviceInfo:prepareInformation4 policyOverride:policyOverride2];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"OctagonStateStashAccountSettingsForRecoveryKey"])
    {
      v118 = [OTStashAccountSettingsOperation alloc];
      operationDependencies15 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTStashAccountSettingsOperation *)v118 initWithDependencies:operationDependencies15 intendedState:@"CreateIdentityForRecoveryKey" errorState:@"CreateIdentityForRecoveryKey" accountSettings:self accountWide:1 forceFetch:1];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"CreateIdentityForRecoveryKey"])
    {
      v120 = [OTPrepareOperation alloc];
      operationDependencies16 = [(OTCuttlefishContext *)self operationDependencies];
      prepareInformation5 = [(OTCuttlefishContext *)self prepareInformation];
      policyOverride3 = [(OTCuttlefishContext *)self policyOverride];
      accountSettings = [(OTCuttlefishContext *)self accountSettings];
      v15 = [(OTPrepareOperation *)v120 initWithDependencies:operationDependencies16 intendedState:@"VouchWithRecoveryKey" errorState:@"BecomeUntrusted" deviceInfo:prepareInformation5 policyOverride:policyOverride3 accountSettings:accountSettings epoch:1];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"CreateIdentityForCustodianRecoveryKey"])
    {
      v125 = [OTPrepareOperation alloc];
      operationDependencies17 = [(OTCuttlefishContext *)self operationDependencies];
      prepareInformation6 = [(OTCuttlefishContext *)self prepareInformation];
      policyOverride4 = [(OTCuttlefishContext *)self policyOverride];
      accountSettings2 = [(OTCuttlefishContext *)self accountSettings];
      v15 = [(OTPrepareOperation *)v125 initWithDependencies:operationDependencies17 intendedState:@"VouchWithCustodianRecoveryKey" errorState:@"BecomeUntrusted" deviceInfo:prepareInformation6 policyOverride:policyOverride4 accountSettings:accountSettings2 epoch:1];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"BottleJoinCreateIdentity"])
    {
      v130 = [OTPrepareOperation alloc];
      operationDependencies18 = [(OTCuttlefishContext *)self operationDependencies];
      prepareInformation7 = [(OTCuttlefishContext *)self prepareInformation];
      policyOverride5 = [(OTCuttlefishContext *)self policyOverride];
      accountSettings3 = [(OTCuttlefishContext *)self accountSettings];
      v15 = [(OTPrepareOperation *)v130 initWithDependencies:operationDependencies18 intendedState:@"BottleJoinVouchWithBottle" errorState:@"BecomeUntrusted" deviceInfo:prepareInformation7 policyOverride:policyOverride5 accountSettings:accountSettings3 epoch:1];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"BottleJoinVouchWithBottle"])
    {
      v135 = [OTVouchWithBottleOperation alloc];
      operationDependencies19 = [(OTCuttlefishContext *)self operationDependencies];
      LOBYTE(v241) = 1;
      v15 = [(OTVouchWithBottleOperation *)v135 initWithDependencies:operationDependencies19 intendedState:@"InitiatorSetCDPBit" errorState:@"BecomeUntrusted" bottleID:self->_bottleID entropy:self->_entropy bottleSalt:self->_bottleSalt saveVoucher:v241];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"VouchWithRecoveryKey"])
    {
      v137 = [OTVouchWithRecoveryKeyOperation alloc];
      operationDependencies20 = [(OTCuttlefishContext *)self operationDependencies];
      recoveryKey2 = [(OTCuttlefishContext *)self recoveryKey];
      v15 = [(OTVouchWithRecoveryKeyOperation *)v137 initWithDependencies:operationDependencies20 intendedState:@"InitiatorSetCDPBit" errorState:@"BecomeUntrusted" recoveryKey:recoveryKey2 saveVoucher:1];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"VouchWithCustodianRecoveryKey"])
    {
      v140 = [OTVouchWithCustodianRecoveryKeyOperation alloc];
      operationDependencies21 = [(OTCuttlefishContext *)self operationDependencies];
      custodianRecoveryKey2 = [(OTCuttlefishContext *)self custodianRecoveryKey];
      v15 = [(OTVouchWithCustodianRecoveryKeyOperation *)v140 initWithDependencies:operationDependencies21 intendedState:@"InitiatorSetCDPBit" errorState:@"BecomeUntrusted" custodianRecoveryKey:custodianRecoveryKey2 saveVoucher:1];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"PrepareAndRecoverTLKSharesForInheritancePeer"])
    {
      v143 = [OTPrepareAndRecoverTLKSharesForInheritancePeerOperation alloc];
      operationDependencies22 = [(OTCuttlefishContext *)self operationDependencies];
      inheritanceKey = [(OTCuttlefishContext *)self inheritanceKey];
      prepareInformation8 = [(OTCuttlefishContext *)self prepareInformation];
      policyOverride6 = [(OTCuttlefishContext *)self policyOverride];
      LOBYTE(v241) = 1;
      v15 = [(OTPrepareAndRecoverTLKSharesForInheritancePeerOperation *)v143 initWithDependencies:operationDependencies22 intendedState:@"BecomeInherited" errorState:@"Error" ik:inheritanceKey deviceInfo:prepareInformation8 policyOverride:policyOverride6 isInheritedAccount:v241 epoch:1];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"JoinSOSAfterCKKSFetch"])
    {
      v148 = [OTJoinSOSAfterCKKSFetchOperation alloc];
      operationDependencies23 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTJoinSOSAfterCKKSFetchOperation *)v148 initWithDependencies:operationDependencies23 intendedState:@"SetAccountSettings" errorState:@"SetAccountSettings"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"InitiatorSetCDPBit"])
    {
      v150 = [OTSetCDPBitOperation alloc];
      operationDependencies24 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTSetCDPBitOperation *)v150 initWithDependencies:operationDependencies24 intendedState:@"InitiatorUpdateDeviceList" errorState:@"DetermineCDPState"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"InitiatorUpdateDeviceList"])
    {
      v152 = [OTUpdateTrustedDeviceListOperation alloc];
      operationDependencies25 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTUpdateTrustedDeviceListOperation *)v152 initWithDependencies:operationDependencies25 intendedState:@"InitiatorJoin" listUpdatesState:@"InitiatorJoin" errorState:@"BecomeUntrusted" retryFlag:0];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"InitiatorJoin"])
    {
      v154 = [OTJoinWithVoucherOperation alloc];
      operationDependencies26 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTJoinWithVoucherOperation *)v154 initWithDependencies:operationDependencies26 intendedState:@"BottlePreloadOctagonKeysInSOS" ckksConflictState:@"InitiatorJoinCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"InitiatorJoinCKKSReset"])
    {
      v156 = [OTLocalCKKSResetOperation alloc];
      operationDependencies27 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTLocalCKKSResetOperation *)v156 initWithDependencies:operationDependencies27 intendedState:@"InitiatorJoinAfterCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"InitiatorJoinAfterCKKSReset"])
    {
      v158 = [OTJoinWithVoucherOperation alloc];
      operationDependencies28 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTJoinWithVoucherOperation *)v158 initWithDependencies:operationDependencies28 intendedState:@"BottlePreloadOctagonKeysInSOS" ckksConflictState:@"BecomeUntrusted" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"ResetBecomeUntrusted"])
    {
      appleAccountSignOutOperation = [(OTCuttlefishContext *)self becomeUntrustedOperation:@"ResetAnyMissingTLKCKKSViews"];
      goto LABEL_7;
    }

    if ([transitionCopy isEqualToString:@"ResetAndEstablish"])
    {
      v244 = [OTResetOperation alloc];
      containerName2 = [(OTCuttlefishContext *)self containerName];
      contextID2 = [(OTCuttlefishContext *)self contextID];
      idmsTargetContext = self->_idmsTargetContext;
      idmsCuttlefishPassword = self->_idmsCuttlefishPassword;
      v242 = idmsCuttlefishPassword;
      v243 = self->_resetReason;
      notifyIdMS = self->_notifyIdMS;
      v164 = self->_accountType;
      operationDependencies29 = [(OTCuttlefishContext *)self operationDependencies];
      cuttlefishXPCWrapper2 = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
      v15 = [(OTResetOperation *)v244 init:containerName2 contextID:contextID2 reason:v243 idmsTargetContext:idmsTargetContext idmsCuttlefishPassword:v242 notifyIdMS:notifyIdMS accountType:v164 intendedState:@"EstablishEnableCDPBit" dependencies:operationDependencies29 errorState:@"Error" cuttlefishXPCWrapper:cuttlefishXPCWrapper2];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"ResetAnyMissingTLKCKKSViews"])
    {
      v167 = [OTResetCKKSZonesLackingTLKsOperation alloc];
      operationDependencies30 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTResetCKKSZonesLackingTLKsOperation *)v167 initWithDependencies:operationDependencies30 intendedState:@"ResetAndEstablish" errorState:@"Error"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"EstablishEnableCDPBit"])
    {
      v169 = [OTSetCDPBitOperation alloc];
      operationDependencies31 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTSetCDPBitOperation *)v169 initWithDependencies:operationDependencies31 intendedState:@"ReEnactDeviceList" errorState:@"Error"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"ReEnactDeviceList"])
    {
      v171 = [OTUpdateTrustedDeviceListOperation alloc];
      operationDependencies32 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTUpdateTrustedDeviceListOperation *)v171 initWithDependencies:operationDependencies32 intendedState:@"ReEnactPrepare" listUpdatesState:@"ReEnactPrepare" errorState:@"BecomeUntrusted" retryFlag:0];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"ReEnactPrepare"])
    {
      v173 = [OTPrepareOperation alloc];
      operationDependencies33 = [(OTCuttlefishContext *)self operationDependencies];
      prepareInformation9 = [(OTCuttlefishContext *)self prepareInformation];
      policyOverride7 = [(OTCuttlefishContext *)self policyOverride];
      accountSettings4 = [(OTCuttlefishContext *)self accountSettings];
      v15 = [(OTPrepareOperation *)v173 initWithDependencies:operationDependencies33 intendedState:@"ResetAndEstablishClearLocalContextState" errorState:@"Error" deviceInfo:prepareInformation9 policyOverride:policyOverride7 accountSettings:accountSettings4 epoch:0];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"ResetAndEstablishClearLocalContextState"])
    {
      v178 = sub_100006274("octagon");
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "clear cuttlefish context state", buf, 2u);
      }

      [(OTCuttlefishContext *)self clearContextState];
      appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"moving-to-re-enact-ready-to-establish" entering:@"ReEnactReadyToEstablish"];
      goto LABEL_7;
    }

    if ([transitionCopy isEqualToString:@"ReEnactReadyToEstablish"])
    {
      v179 = [OTEstablishOperation alloc];
      operationDependencies34 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTEstablishOperation *)v179 initWithDependencies:operationDependencies34 intendedState:@"EscrowTriggerUpdate" ckksConflictState:@"EstablishCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"EstablishCKKSReset"])
    {
      v181 = [OTLocalCKKSResetOperation alloc];
      operationDependencies35 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTLocalCKKSResetOperation *)v181 initWithDependencies:operationDependencies35 intendedState:@"EstablishAfterCKKSReset" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"EstablishAfterCKKSReset"])
    {
      v183 = [OTEstablishOperation alloc];
      operationDependencies36 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTEstablishOperation *)v183 initWithDependencies:operationDependencies36 intendedState:@"EscrowTriggerUpdate" ckksConflictState:@"BecomeUntrusted" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"EscrowTriggerUpdate"])
    {
      v185 = [OTTriggerEscrowUpdateOperation alloc];
      operationDependencies37 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTTriggerEscrowUpdateOperation *)v185 initWithDependencies:operationDependencies37 intendedState:@"BecomeReady" errorState:@"Error"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"HealthCheckLeaveClique"])
    {
      v187 = [OTLeaveCliqueOperation alloc];
      operationDependencies38 = [(OTCuttlefishContext *)self operationDependencies];
      v15 = [(OTLeaveCliqueOperation *)v187 initWithDependencies:operationDependencies38 intendedState:@"BecomeUntrusted" errorState:@"BecomeUntrusted"];

      goto LABEL_8;
    }

    if ([transitionCopy isEqualToString:@"WaitForClassCUnlock"])
    {
      if ([flagsCopy _onqueueContains:@"unlocked"])
      {
        [flagsCopy _onqueueRemoveFlag:@"unlocked"];
        v189 = [NSString stringWithFormat:@"%@", @"initializing-after-initial-unlock"];
        v15 = [OctagonStateTransitionOperation named:v189 entering:@"Initializing"];

        goto LABEL_8;
      }
    }

    else
    {
      if (![transitionCopy isEqualToString:@"WaitForUnlock"])
      {
        if ([transitionCopy isEqualToString:@"UpdateSOSPreapprovals"])
        {
          v192 = sub_100006274("octagon");
          if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_DEFAULT, "Updating SOS preapprovals", buf, 2u);
          }

          v193 = [OTSOSUpdatePreapprovalsOperation alloc];
          operationDependencies39 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTSOSUpdatePreapprovalsOperation *)v193 initWithDependencies:operationDependencies39 intendedState:@"Ready" sosNotPresentState:@"Ready" errorState:@"Ready"];

          goto LABEL_8;
        }

        if ([transitionCopy isEqualToString:@"AssistCKKSTLKUpload"])
        {
          v195 = [OTUploadNewCKKSTLKsOperation alloc];
          operationDependencies40 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTUploadNewCKKSTLKsOperation *)v195 initWithDependencies:operationDependencies40 intendedState:@"Ready" ckksConflictState:@"AssistCKKSTLKUploadCKKSReset" peerMissingState:@"ReadyUpdated" errorState:@"Ready"];

          goto LABEL_8;
        }

        if ([transitionCopy isEqualToString:@"AssistCKKSTLKUploadCKKSReset"])
        {
          v197 = [OTLocalCKKSResetOperation alloc];
          operationDependencies41 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTLocalCKKSResetOperation *)v197 initWithDependencies:operationDependencies41 intendedState:@"AssistCKKSTLKUploadAfterCKKSReset" errorState:@"BecomeReady"];

          goto LABEL_8;
        }

        if ([transitionCopy isEqualToString:@"AssistCKKSTLKUploadAfterCKKSReset"])
        {
          v199 = [OTUploadNewCKKSTLKsOperation alloc];
          operationDependencies42 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTUploadNewCKKSTLKsOperation *)v199 initWithDependencies:operationDependencies42 intendedState:@"Ready" ckksConflictState:@"Ready" peerMissingState:@"ReadyUpdated" errorState:@"Ready"];

          goto LABEL_8;
        }

        if ([transitionCopy isEqualToString:@"OctagonStateStashAccountSettingsForReroll"])
        {
          v201 = [OTStashAccountSettingsOperation alloc];
          operationDependencies43 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTStashAccountSettingsOperation *)v201 initWithDependencies:operationDependencies43 intendedState:@"OctagonStateCreateIdentityForReroll" errorState:@"OctagonStateCreateIdentityForReroll" accountSettings:self accountWide:1 forceFetch:1];

          goto LABEL_8;
        }

        if ([transitionCopy isEqualToString:@"OctagonStateCreateIdentityForReroll"])
        {
          v203 = [OTPrepareOperation alloc];
          operationDependencies44 = [(OTCuttlefishContext *)self operationDependencies];
          prepareInformation10 = [(OTCuttlefishContext *)self prepareInformation];
          policyOverride8 = [(OTCuttlefishContext *)self policyOverride];
          accountSettings5 = [(OTCuttlefishContext *)self accountSettings];
          v15 = [(OTPrepareOperation *)v203 initWithDependencies:operationDependencies44 intendedState:@"OctagonStateVouchWithReroll" errorState:@"BecomeUntrusted" deviceInfo:prepareInformation10 policyOverride:policyOverride8 accountSettings:accountSettings5 epoch:1];

          goto LABEL_8;
        }

        if ([transitionCopy isEqualToString:@"OctagonStateVouchWithReroll"])
        {
          v208 = [OTVouchWithRerollOperation alloc];
          operationDependencies45 = [(OTCuttlefishContext *)self operationDependencies];
          v15 = [(OTVouchWithRerollOperation *)v208 initWithDependencies:operationDependencies45 intendedState:@"InitiatorSetCDPBit" errorState:@"BecomeUntrusted" saveVoucher:1];

          goto LABEL_8;
        }

        if ([transitionCopy isEqualToString:@"BecomeInherited"])
        {
          appleAccountSignOutOperation = [(OTCuttlefishContext *)self becomeInheritedOperation];
          goto LABEL_7;
        }

        if (![transitionCopy isEqualToString:@"Inherited"])
        {
          if (![transitionCopy isEqualToString:@"Ready"])
          {
            if ([transitionCopy isEqualToString:@"ReadyUpdated"])
            {
              v216 = [OTUpdateTPHOperation alloc];
              operationDependencies46 = [(OTCuttlefishContext *)self operationDependencies];
              prepareInformation11 = [(OTCuttlefishContext *)self prepareInformation];
              LOBYTE(v241) = 0;
              v15 = [(OTUpdateTPHOperation *)v216 initWithDependencies:operationDependencies46 deviceInfo:prepareInformation11 intendedState:@"Ready" peerUnknownState:@"PeerMissingFromServer" determineCDPState:0 errorState:@"Ready" forceRefetch:v241 retryFlag:@"recd_push"];

              goto LABEL_8;
            }

            [transitionCopy isEqualToString:@"Error"];
LABEL_33:
            v15 = 0;
            goto LABEL_8;
          }

          if ([flagsCopy _onqueueContains:@"recd_push"])
          {
            [flagsCopy _onqueueRemoveFlag:@"recd_push"];
            v215 = sub_100006274("octagon");
            if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "Updating TPH (while ready) due to push", buf, 2u);
            }

            appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"octagon-update" entering:@"ReadyUpdated"];
            goto LABEL_7;
          }

          if ([flagsCopy _onqueueContains:@"tlk_upload_needed"])
          {
            [flagsCopy _onqueueRemoveFlag:@"tlk_upload_needed"];
            appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"ckks-assist" entering:@"AssistCKKSTLKUpload"];
            goto LABEL_7;
          }

          if ([flagsCopy _onqueueContains:@"attempt_machine_id_list"])
          {
            [flagsCopy _onqueueRemoveFlag:@"attempt_machine_id_list"];
            v219 = sub_100006274("octagon");
            if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "Received an suggestion to update the machine ID list (while ready); updating trusted device list", buf, 2u);
            }

            v220 = [OTUpdateTrustedDeviceListOperation alloc];
            operationDependencies47 = [(OTCuttlefishContext *)self operationDependencies];
            v15 = [(OTUpdateTrustedDeviceListOperation *)v220 initWithDependencies:operationDependencies47 intendedState:@"Ready" listUpdatesState:@"ReadyUpdated" errorState:@"Ready" retryFlag:@"attempt_machine_id_list"];

            goto LABEL_8;
          }

          if ([flagsCopy _onqueueContains:@"passcode_stash_available"])
          {
            [flagsCopy _onqueueRemoveFlag:@"passcode_stash_available"];
            v222 = sub_100006274("octagon-escrow-repair");
            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "passcode stash available, beginning escrow repair", buf, 2u);
            }

            v223 = [OTEscrowRepairOperation alloc];
            operationDependencies48 = [(OTCuttlefishContext *)self operationDependencies];
            followupHandler = [(OTCuttlefishContext *)self followupHandler];
            v15 = [(OTEscrowRepairOperation *)v223 initWithDependencies:operationDependencies48 intendedState:@"Ready" errorState:@"Ready" followupHandler:followupHandler contextType:self->_contextType];

            goto LABEL_8;
          }

          if ([flagsCopy _onqueueContains:@"attempt_sos_update_preapprovals"])
          {
            [flagsCopy _onqueueRemoveFlag:@"attempt_sos_update_preapprovals"];
            sosAdapter5 = [(OTCuttlefishContext *)self sosAdapter];
            sosEnabled5 = [sosAdapter5 sosEnabled];

            v228 = sub_100006274("octagon");
            v229 = os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT);
            if (sosEnabled5)
            {
              if (v229)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "Attempt SOS Update preapprovals again!", buf, 2u);
              }

              appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"attempt-sos-update-preapproval" entering:@"UpdateSOSPreapprovals"];
              goto LABEL_7;
            }

            if (v229)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "We are untrusted, but this platform doesn't support SOS.", buf, 2u);
            }
          }

          if ([flagsCopy _onqueueContains:@"attempt_sos_consistency"])
          {
            [flagsCopy _onqueueRemoveFlag:@"attempt_sos_consistency"];
            sosAdapter6 = [(OTCuttlefishContext *)self sosAdapter];
            sosEnabled6 = [sosAdapter6 sosEnabled];

            v232 = sub_100006274("octagon");
            v233 = os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT);
            if (sosEnabled6)
            {
              if (v233)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "Attempting SOS consistency checks", buf, 2u);
              }

              appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"attempt-sos-update-preapproval" entering:@"EnsureConsistency"];
              goto LABEL_7;
            }

            if (v233)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "Someone would like us to check SOS consistency, but this platform doesn't support SOS.", buf, 2u);
            }
          }

          if ([flagsCopy _onqueueContains:@"attempt_ucv_upgrade"])
          {
            [flagsCopy _onqueueRemoveFlag:@"attempt_ucv_upgrade"];
            v234 = sub_100006274("octagon");
            if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "Attempting user-view control upgrade", buf, 2u);
            }

            appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"attempt-user-view-upgrade" entering:@"SetUserControllableViewsToPeerConsensus"];
            goto LABEL_7;
          }

          if ([flagsCopy _onqueueContains:@"policy_check_needed"])
          {
            [flagsCopy _onqueueRemoveFlag:@"policy_check_needed"];
            v235 = sub_100006274("octagon");
            if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_DEFAULT, "Updating CKKS policy", buf, 2u);
            }

            appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"ckks-policy-update" entering:@"ReadyUpdated"];
            goto LABEL_7;
          }

          if ([flagsCopy _onqueueContains:@"ckks_views_changed"])
          {
            [flagsCopy _onqueueRemoveFlag:@"ckks_views_changed"];
            appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"ckks-update-trust" entering:@"BecomeReady"];
            goto LABEL_7;
          }

          if ([flagsCopy _onqueueContains:@"se_id_changed"])
          {
            [flagsCopy _onqueueRemoveFlag:@"se_id_changed"];
            appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"octagon-set-secureelement" entering:@"ReadyUpdated"];
            goto LABEL_7;
          }

          if ([flagsCopy _onqueueContains:@"account_available"])
          {
            v236 = sub_100006274("octagon");
            if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "Removing 'account is available' flag", buf, 2u);
            }

            [flagsCopy _onqueueRemoveFlag:@"account_available"];
          }

          if ([flagsCopy _onqueueContains:@"idms_level"])
          {
            v237 = sub_100006274("octagon");
            if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "Removing 'IDMS level changed' flag", buf, 2u);
            }

            [flagsCopy _onqueueRemoveFlag:@"idms_level"];
          }

          if ([flagsCopy _onqueueContains:@"cdp_enabled"])
          {
            v238 = sub_100006274("octagon");
            if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "Removing 'CDP enabled' flag", buf, 2u);
            }

            [flagsCopy _onqueueRemoveFlag:@"cdp_enabled"];
          }

          if ([flagsCopy _onqueueContains:@"check_on_rtc_metrics"])
          {
            v239 = sub_100006274("octagon-metrics");
            if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEFAULT, "Checking metrics", buf, 2u);
            }

            [flagsCopy _onqueueRemoveFlag:@"check_on_rtc_metrics"];
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

          if ([flagsCopy _onqueueContains:@"reroll_identity"])
          {
            v240 = sub_100006274("octagon");
            if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "Rerolling identity", buf, 2u);
            }

            [flagsCopy _onqueueRemoveFlag:@"reroll_identity"];
            appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"reroll-identity" entering:@"OctagonStateStashAccountSettingsForReroll"];
            goto LABEL_7;
          }
        }

        v210 = +[CKKSAnalytics logger];
        v211 = +[NSDate date];
        [v210 setDateProperty:v211 forKey:@"OALastKSR"];

        launchSequence2 = [(OTCuttlefishContext *)self launchSequence];
        [launchSequence2 launch];

        v213 = +[CKKSAnalytics logger];
        launchSequence3 = [(OTCuttlefishContext *)self launchSequence];
        [v213 noteLaunchSequence:launchSequence3];

        goto LABEL_33;
      }

      if ([flagsCopy _onqueueContains:@"unlocked"])
      {
        [flagsCopy _onqueueRemoveFlag:@"unlocked"];
        v190 = [NSString stringWithFormat:@"%@", @"initializing-after-unlock"];
        v15 = [OctagonStateTransitionOperation named:v190 entering:@"Initializing"];

        goto LABEL_8;
      }
    }

    v191 = [[OctagonPendingFlag alloc] initWithFlag:@"unlocked" conditions:1];
    [pendingFlagsCopy _onqueueHandlePendingFlagLater:v191];

    goto LABEL_33;
  }

  v87 = sub_100006274("octagon");
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Ensuring consistency of things that might've changed", buf, 2u);
  }

  sosAdapter7 = [(OTCuttlefishContext *)self sosAdapter];
  sosEnabled7 = [sosAdapter7 sosEnabled];

  if (!sosEnabled7)
  {
    appleAccountSignOutOperation = [OctagonStateTransitionOperation named:@"no-consistency-checks" entering:@"BecomeReady"];
    goto LABEL_7;
  }

  v90 = [OTEnsureOctagonKeyConsistency alloc];
  operationDependencies49 = [(OTCuttlefishContext *)self operationDependencies];
  v15 = [(OTEnsureOctagonKeyConsistency *)v90 initWithDependencies:operationDependencies49 intendedState:@"EnsureUpdatePreapprovals" errorState:@"BecomeReady"];

LABEL_8:

  return v15;
}

- (void)handlePairingRestart:(id)restart
{
  restartCopy = restart;
  pairingUUID = [(OTCuttlefishContext *)self pairingUUID];

  if (!pairingUUID)
  {
    v6 = sub_100006274("octagon-pairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      pairingUUID2 = [restartCopy pairingUUID];
      *buf = 138412290;
      v23 = pairingUUID2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received new pairing UUID (%@)", buf, 0xCu);
    }

    pairingUUID3 = [restartCopy pairingUUID];
    [(OTCuttlefishContext *)self setPairingUUID:pairingUUID3];
  }

  pairingUUID4 = [(OTCuttlefishContext *)self pairingUUID];
  pairingUUID5 = [restartCopy pairingUUID];
  v11 = [pairingUUID4 isEqualToString:pairingUUID5];

  if ((v11 & 1) == 0)
  {
    v12 = sub_100006274("octagon-pairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      pairingUUID6 = [(OTCuttlefishContext *)self pairingUUID];
      pairingUUID7 = [restartCopy pairingUUID];
      *buf = 138412546;
      v23 = pairingUUID6;
      v24 = 2112;
      v25 = pairingUUID7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "current pairing UUID (%@) does not match config UUID (%@)", buf, 0x16u);
    }

    v15 = dispatch_semaphore_create(0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013F498;
    v19[3] = &unk_100337950;
    v19[4] = self;
    v20 = restartCopy;
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
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  [stateMachine startOperation];
}

- (id)operationDependencies
{
  sessionMetrics = [(OTCuttlefishContext *)self sessionMetrics];
  v23 = [OTOperationDependencies alloc];
  containerName = [(OTCuttlefishContext *)self containerName];
  contextID = [(OTCuttlefishContext *)self contextID];
  activeAccount = [(OTCuttlefishContext *)self activeAccount];
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  sosAdapter = [(OTCuttlefishContext *)self sosAdapter];
  octagonAdapter = [(OTCuttlefishContext *)self octagonAdapter];
  accountsAdapter = [(OTCuttlefishContext *)self accountsAdapter];
  authKitAdapter = [(OTCuttlefishContext *)self authKitAdapter];
  personaAdapter = [(OTCuttlefishContext *)self personaAdapter];
  deviceAdapter = [(OTCuttlefishContext *)self deviceAdapter];
  secureBackupAdapter = [(OTCuttlefishContext *)self secureBackupAdapter];
  laContextAdapter = [(OTCuttlefishContext *)self laContextAdapter];
  ckks = [(OTCuttlefishContext *)self ckks];
  lockStateTracker = [(OTCuttlefishContext *)self lockStateTracker];
  cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
  escrowRequestClass = [(OTCuttlefishContext *)self escrowRequestClass];
  notifierClass = [(OTCuttlefishContext *)self notifierClass];
  v22 = sessionMetrics;
  flowID = [sessionMetrics flowID];
  deviceSessionID = [sessionMetrics deviceSessionID];
  v7 = [(OTCuttlefishContext *)self canSendMetricsUsingAccountState:[(OTCuttlefishContext *)self shouldSendMetricsForOctagon]];
  isGuitarfish = self->_isGuitarfish;
  LOBYTE(sessionMetrics) = self->_accountIsW;
  reachabilityTracker = [(OTCuttlefishContext *)self reachabilityTracker];
  BYTE2(v11) = sessionMetrics;
  BYTE1(v11) = isGuitarfish;
  LOBYTE(v11) = v7;
  v24 = [OTOperationDependencies initForContainer:v23 contextID:"initForContainer:contextID:activeAccount:stateHolder:flagHandler:sosAdapter:octagonAdapter:accountsAdapter:authKitAdapter:personaAdapter:deviceInfoAdapter:secureBackupAdapter:laContextAdapter:ckksAccountSync:lockStateTracker:cuttlefishXPCWrapper:escrowRequestClass:notifierClass:flowID:deviceSessionID:permittedToSendMetrics:accountIsG:accountIsW:reachabilityTracker:escrowChecker:" activeAccount:containerName stateHolder:contextID flagHandler:activeAccount sosAdapter:accountMetadataStore octagonAdapter:stateMachine accountsAdapter:sosAdapter authKitAdapter:octagonAdapter personaAdapter:accountsAdapter deviceInfoAdapter:authKitAdapter secureBackupAdapter:personaAdapter laContextAdapter:deviceAdapter ckksAccountSync:secureBackupAdapter lockStateTracker:laContextAdapter cuttlefishXPCWrapper:ckks escrowRequestClass:lockStateTracker notifierClass:cuttlefishXPCWrapper flowID:escrowRequestClass deviceSessionID:notifierClass permittedToSendMetrics:flowID accountIsG:deviceSessionID accountIsW:v11 reachabilityTracker:reachabilityTracker escrowChecker:self];

  return v24;
}

- (id)prepareInformation
{
  deviceAdapter = [(OTCuttlefishContext *)self deviceAdapter];
  isMachineIDOverridden = [deviceAdapter isMachineIDOverridden];

  if (isMachineIDOverridden)
  {
    deviceAdapter2 = [(OTCuttlefishContext *)self deviceAdapter];
    getOverriddenMachineID = [deviceAdapter2 getOverriddenMachineID];

    v7 = 0;
  }

  else
  {
    sessionMetrics = [(OTCuttlefishContext *)self sessionMetrics];
    authKitAdapter = [(OTCuttlefishContext *)self authKitAdapter];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    altDSID = [activeAccount altDSID];
    flowID = [sessionMetrics flowID];
    deviceSessionID = [sessionMetrics deviceSessionID];
    v30 = 0;
    getOverriddenMachineID = [authKitAdapter machineID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:-[OTCuttlefishContext canSendMetricsUsingAccountState:](self error:{"canSendMetricsUsingAccountState:", -[OTCuttlefishContext shouldSendMetricsForOctagon](self, "shouldSendMetricsForOctagon")), &v30}];
    v7 = v30;
  }

  v29 = getOverriddenMachineID;
  if (!getOverriddenMachineID || v7)
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
  containerName = [(OTCuttlefishContext *)self containerName];
  contextID = [(OTCuttlefishContext *)self contextID];
  deviceAdapter3 = [(OTCuttlefishContext *)self deviceAdapter];
  modelID = [deviceAdapter3 modelID];
  deviceAdapter4 = [(OTCuttlefishContext *)self deviceAdapter];
  deviceName = [deviceAdapter4 deviceName];
  [(OTCuttlefishContext *)self deviceAdapter];
  v20 = v27 = v7;
  serialNumber = [v20 serialNumber];
  deviceAdapter5 = [(OTCuttlefishContext *)self deviceAdapter];
  osVersion = [deviceAdapter5 osVersion];
  v26 = [(OTDeviceInformation *)v25 initForContainerName:containerName contextID:contextID epoch:0 machineID:v29 modelID:modelID deviceName:deviceName serialNumber:serialNumber osVersion:osVersion];

  return v26;
}

- (void)rpcRemoveFriendsInClique:(id)clique reply:(id)reply
{
  replyCopy = reply;
  cliqueCopy = clique;
  v8 = [OTRemovePeersOperation alloc];
  operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
  v12 = [(OTRemovePeersOperation *)v8 initWithDependencies:operationDependencies intendedState:@"BecomeReady" errorState:@"BecomeReady" peerIDs:cliqueCopy];

  v10 = +[OTStates OctagonReadyStates];
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  [stateMachine doSimpleStateMachineRPC:@"remove-friends" op:v12 sourceStates:v10 reply:replyCopy];
}

- (void)rpcLeaveClique:(id)clique
{
  cliqueCopy = clique;
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  isPaused = [stateMachine isPaused];

  if (!isPaused)
  {
    goto LABEL_6;
  }

  v7 = +[OTStates OctagonNotInCliqueStates];
  stateMachine2 = [(OTCuttlefishContext *)self stateMachine];
  currentState = [stateMachine2 currentState];
  v10 = [NSSet setWithObject:currentState];
  v11 = [v7 intersectsSet:v10];

  if (v11)
  {
    v12 = sub_100006274("octagon-leave-clique");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "device is not in clique to begin with - returning", v18, 2u);
    }

    cliqueCopy[2](cliqueCopy, 0);
  }

  else
  {
LABEL_6:
    v13 = [OTLeaveCliqueOperation alloc];
    operationDependencies = [(OTCuttlefishContext *)self operationDependencies];
    v15 = [(OTLeaveCliqueOperation *)v13 initWithDependencies:operationDependencies intendedState:@"BecomeUntrusted" errorState:@"CheckTrustState"];

    stateMachine3 = [(OTCuttlefishContext *)self stateMachine];
    v17 = +[OTStates OctagonInAccountStates];
    [stateMachine3 doSimpleStateMachineRPC:@"leave-clique" op:v15 sourceStates:v17 reply:cliqueCopy];
  }
}

- (void)rpcResetAndEstablish:(int64_t)establish idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s accountSettings:(id)settings isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w reply:(id)self0
{
  contextCopy = context;
  passwordCopy = password;
  replyCopy = reply;
  idmsTargetContext = self->_idmsTargetContext;
  self->_resetReason = establish;
  self->_idmsTargetContext = contextCopy;
  v20 = contextCopy;
  settingsCopy = settings;

  idmsCuttlefishPassword = self->_idmsCuttlefishPassword;
  self->_idmsCuttlefishPassword = passwordCopy;
  v23 = passwordCopy;

  self->_notifyIdMS = s;
  self->_isGuitarfish = guitarfish;
  self->_accountType = 2;
  self->_accountIsW = w;
  v24 = [(OTCuttlefishContext *)self mergedAccountSettings:settingsCopy];

  [(OTCuttlefishContext *)self setAccountSettings:v24];
  v37 = @"ResetBecomeUntrusted";
  v35 = @"ResetAnyMissingTLKCKKSViews";
  v33 = @"ResetAndEstablish";
  establishStatePathDictionary = [(OTCuttlefishContext *)self establishStatePathDictionary];
  v34 = establishStatePathDictionary;
  v26 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v36 = v26;
  v27 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v38 = v27;
  v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v29 = [OctagonStateTransitionPath pathFromDictionary:v28];

  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  v31 = +[OTStates OctagonInAccountStates];

  v32 = [stateMachine doWatchedStateMachineRPC:@"rpc-reset-and-establish" sourceStates:v31 path:v29 reply:replyCopy];
}

- (id)mergedAccountSettings:(id)settings
{
  settingsCopy = settings;
  accountSettings = [(OTCuttlefishContext *)self accountSettings];
  v6 = objc_alloc_init(OTAccountSettings);
  if ([settingsCopy hasWalrus])
  {
    v7 = settingsCopy;
  }

  else
  {
    v7 = accountSettings;
  }

  walrus = [v7 walrus];
  [v6 setWalrus:walrus];

  if ([settingsCopy hasWebAccess])
  {
    v9 = settingsCopy;
  }

  else
  {
    v9 = accountSettings;
  }

  webAccess = [v9 webAccess];
  [v6 setWebAccess:webAccess];

  return v6;
}

- (void)performCKServerUnreadableDataRemoval:(BOOL)removal accountIsW:(BOOL)w altDSID:(id)d reply:(id)reply
{
  wCopy = w;
  removalCopy = removal;
  dCopy = d;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, v12);
    goto LABEL_12;
  }

  if (dCopy)
  {
    goto LABEL_7;
  }

  v24 = +[AKAccountManager sharedInstance];
  if (v24)
  {
    dCopy = v24;
    primaryAuthKitAccount = [v24 primaryAuthKitAccount];
    if (primaryAuthKitAccount)
    {
      v26 = primaryAuthKitAccount;
      aa_altDSID = [primaryAuthKitAccount aa_altDSID];

      dCopy = aa_altDSID;
LABEL_7:
      v34 = removalCopy;
      v35 = wCopy;
      authKitAdapter = [(OTCuttlefishContext *)self authKitAdapter];
      v38 = 0;
      v33 = [authKitAdapter accountIsDemoAccountByAltDSID:dCopy error:&v38];
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
      sessionMetrics = [(OTCuttlefishContext *)self sessionMetrics];
      flowID = [sessionMetrics flowID];

      sessionMetrics2 = [(OTCuttlefishContext *)self sessionMetrics];
      deviceSessionID = [sessionMetrics2 deviceSessionID];

      cuttlefishXPCWrapper = [(OTCuttlefishContext *)self cuttlefishXPCWrapper];
      activeAccount = [(OTCuttlefishContext *)self activeAccount];
      v23 = [(OTCuttlefishContext *)self shouldSendMetricsForOctagon]!= 0;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001405F4;
      v36[3] = &unk_100337928;
      v37 = replyCopy;
      LOBYTE(v31) = v23;
      [cuttlefishXPCWrapper performCKServerUnreadableDataRemovalWithSpecificUser:activeAccount isGuitarfish:v34 accountIsW:v35 internalAccount:IsInternalRelease demoAccount:v33 altDSID:dCopy flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v31 reply:v36];

      goto LABEL_12;
    }

    v29 = sub_100006274("SecError");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "octagon-perform-ckserver-unreadable-data-removal, Primary Authkit Account is nil", buf, 2u);
    }

    v30 = [NSError errorWithDomain:@"com.apple.security.octagon" code:44 description:@"Primary Authkit Account is nil"];
    replyCopy[2](replyCopy, v30);
  }

  else
  {
    v28 = sub_100006274("SecError");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "octagon-perform-ckserver-unreadable-data-removal, AuthKit Account Manager is nil", buf, 2u);
    }

    dCopy = [NSError errorWithDomain:@"com.apple.security.octagon" code:77 description:@"AuthKit Account Manager is nil"];
    replyCopy[2](replyCopy, dCopy);
  }

LABEL_12:
}

- (void)rpcReset:(int64_t)reset isGuitarfish:(BOOL)guitarfish reply:(id)reply
{
  replyCopy = reply;
  self->_accountType = 1;
  self->_isGuitarfish = guitarfish;
  self->_resetReason = reset;
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

  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  v16 = +[OTStates OctagonAllStates];
  v17 = [stateMachine doWatchedStateMachineRPC:@"rpc-reset" sourceStates:v16 path:v14 reply:replyCopy];
}

- (void)rpcEstablish:(id)establish reply:(id)reply
{
  replyCopy = reply;
  establishStatePathDictionary = [(OTCuttlefishContext *)self establishStatePathDictionary];
  v6 = [OctagonStateTransitionPath pathFromDictionary:establishStatePathDictionary];

  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  v8 = +[OTStates OctagonInAccountStates];
  v9 = [stateMachine doWatchedStateMachineRPC:@"establish" sourceStates:v8 path:v6 reply:replyCopy];
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

- (void)localReset:(id)reset
{
  resetCopy = reset;
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
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  v12 = [stateMachine doWatchedStateMachineRPC:@"local-reset-watcher" sourceStates:v10 path:v9 reply:resetCopy];
}

- (BOOL)setCDPEnabled:(id *)enabled
{
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v12 = 0;
  [accountMetadataStore persistAccountChanges:&stru_100337900 error:&v12];
  v6 = v12;

  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  [stateMachine handleFlag:@"cdp_enabled"];

  if (v6)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-cdp-status: unable to persist CDP enablement: %@", buf, 0xCu);
    }

    if (enabled)
    {
      v9 = v6;
      *enabled = v6;
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

- (int64_t)getCDPStatus:(id *)status
{
  accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
  v14 = 0;
  v5 = [accountMetadataStore loadOrCreateAccountMetadata:&v14];
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

    if (status)
    {
      v8 = v6;
      v9 = 0;
      *status = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    cdpState = [v5 cdpState];
    if (cdpState == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = cdpState == 1;
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
  lockStateTracker = [(OTCuttlefishContext *)self lockStateTracker];

  if (lockStateTracker)
  {
    lockStateTracker2 = [(OTCuttlefishContext *)self lockStateTracker];
    [lockStateTracker2 recheck];
  }

  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  [stateMachine handleFlag:@"apple_account_signed_out"];

  return 1;
}

- (BOOL)idmsTrustLevelChanged:(id *)changed
{
  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  [stateMachine handleFlag:@"idms_level"];

  return 1;
}

- (void)passcodeStashAvailable:(id)available
{
  availableCopy = available;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(OTOperationConfiguration);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100141354;
  v7[3] = &unk_1003378E0;
  objc_copyWeak(&v9, &location);
  v6 = availableCopy;
  v8 = v6;
  [(OTCuttlefishContext *)self rpcTrustStatus:v5 reply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)moveToCheckTrustedState
{
  lockStateTracker = [(OTCuttlefishContext *)self lockStateTracker];

  if (lockStateTracker)
  {
    lockStateTracker2 = [(OTCuttlefishContext *)self lockStateTracker];
    [lockStateTracker2 recheck];
  }

  stateMachine = [(OTCuttlefishContext *)self stateMachine];
  [stateMachine handleFlag:@"check_trust_state"];
}

- (BOOL)accountAvailable:(id)available error:(id *)error
{
  availableCopy = available;
  v7 = sub_100006274("octagon");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = availableCopy;
    v41 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Account available with altDSID: %@ %@", buf, 0x16u);
  }

  launchSequence = [(OTCuttlefishContext *)self launchSequence];
  [launchSequence setFirstLaunch:1];

  accountsAdapter = [(OTCuttlefishContext *)self accountsAdapter];
  personaAdapter = [(OTCuttlefishContext *)self personaAdapter];
  containerName = [(OTCuttlefishContext *)self containerName];
  contextID = [(OTCuttlefishContext *)self contextID];
  v38 = 0;
  v13 = [accountsAdapter findAccountForCurrentThread:personaAdapter optionalAltDSID:availableCopy cloudkitContainerName:containerName octagonContextID:contextID error:&v38];
  v14 = v38;
  [(OTCuttlefishContext *)self setActiveAccount:v13];

  activeAccount = [(OTCuttlefishContext *)self activeAccount];

  if (!activeAccount || v14)
  {
    makeCKContainer = sub_100006274("SecError");
    if (!os_log_type_enabled(makeCKContainer, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    contextID2 = [(OTCuttlefishContext *)self contextID];
    *buf = 138412546;
    v40 = contextID2;
    v41 = 2112;
    selfCopy = v14;
    _os_log_impl(&_mh_execute_header, makeCKContainer, OS_LOG_TYPE_DEFAULT, "octagon-account: unable to determine active account for context(%@). Issues ahead: %@", buf, 0x16u);
  }

  else
  {
    v16 = sub_100006274("octagon-account");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      contextID3 = [(OTCuttlefishContext *)self contextID];
      activeAccount2 = [(OTCuttlefishContext *)self activeAccount];
      *buf = 138412546;
      v40 = contextID3;
      v41 = 2112;
      selfCopy = activeAccount2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found a new account (%@): %@", buf, 0x16u);
    }

    accountMetadataStore = [(OTCuttlefishContext *)self accountMetadataStore];
    activeAccount3 = [(OTCuttlefishContext *)self activeAccount];
    [accountMetadataStore changeActiveAccount:activeAccount3];

    activeAccount4 = [(OTCuttlefishContext *)self activeAccount];
    LOBYTE(activeAccount3) = [activeAccount4 isPrimaryAccount];

    if (activeAccount3)
    {
      makeCKContainer = 0;
    }

    else
    {
      activeAccount5 = [(OTCuttlefishContext *)self activeAccount];
      makeCKContainer = [activeAccount5 makeCKContainer];

      accountStateTracker = [(OTCuttlefishContext *)self accountStateTracker];
      [accountStateTracker setContainer:makeCKContainer];
    }

    contextID2 = [(OTCuttlefishContext *)self ckks];
    activeAccount6 = [(OTCuttlefishContext *)self activeAccount];
    [contextID2 updateAccount:activeAccount6 container:makeCKContainer];
  }

LABEL_14:
  accountMetadataStore2 = [(OTCuttlefishContext *)self accountMetadataStore];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100141CAC;
  v36[3] = &unk_100344BD8;
  v28 = availableCopy;
  v37 = v28;
  v35 = 0;
  [accountMetadataStore2 persistAccountChanges:v36 error:&v35];
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

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    [stateMachine handleFlag:@"account_available"];

    if (error)
    {
      v32 = v29;
      *error = v29;
    }
  }

  else
  {
    stateMachine2 = [(OTCuttlefishContext *)self stateMachine];
    [stateMachine2 handleFlag:@"account_available"];
  }

  return v29 == 0;
}

- (void)cloudkitAccountStateChange:(id)change to:(id)to
{
  toCopy = to;
  queue = [(OTCuttlefishContext *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100141FE4;
  block[3] = &unk_100343E38;
  v7 = toCopy;
  v25 = v7;
  selfCopy = self;
  dispatch_sync(queue, block);

  if ([v7 accountStatus] != 1)
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Informed that the CK account is now unavailable: %@", buf, 0xCu);
    }

    sessionMetrics = [(OTCuttlefishContext *)self sessionMetrics];
    v10 = [AAFAnalyticsEventSecurity alloc];
    activeAccount = [(OTCuttlefishContext *)self activeAccount];
    altDSID = [activeAccount altDSID];
    flowID = [sessionMetrics flowID];
    deviceSessionID = [sessionMetrics deviceSessionID];
    v15 = kSecurityRTCEventNameCloudKitAccountAvailability;
    LOBYTE(v21) = [(OTCuttlefishContext *)self canSendMetricsUsingAccountState:[(OTCuttlefishContext *)self shouldSendMetricsForOctagon]];
    v16 = [v10 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v15 testsAreEnabled:0 canSendMetrics:v21 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    stateMachine = [(OTCuttlefishContext *)self stateMachine];
    v18 = [OctagonStateTransitionOperation named:@"cloudkit-account-gone" entering:@"WaitingForCloudKitAccount"];
    v19 = +[OTStates OctagonInAccountStates];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10014243C;
    v22[3] = &unk_1003378B8;
    v23 = v16;
    v20 = v16;
    [stateMachine doSimpleStateMachineRPC:@"cloudkit-account-gone" op:v18 sourceStates:v19 reply:v22];
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
  containerName = [(OTCuttlefishContext *)self containerName];
  contextID = [(OTCuttlefishContext *)self contextID];
  v5 = [NSString stringWithFormat:@"<OTCuttlefishContext: %@, %@>", containerName, contextID];

  return v5;
}

- (void)accountStateUpdated:(id)updated from:(id)from
{
  updatedCopy = updated;
  fromCopy = from;
  if ([updatedCopy icloudAccountState] == 2 && objc_msgSend(fromCopy, "icloudAccountState") != 2)
  {
    launchSequence = [(OTCuttlefishContext *)self launchSequence];
    [launchSequence addEvent:@"iCloudAccount"];
  }

  if ([updatedCopy trustState] == 2 && objc_msgSend(fromCopy, "trustState") != 2)
  {
    launchSequence2 = [(OTCuttlefishContext *)self launchSequence];
    [launchSequence2 addEvent:@"Trusted"];

    -[OTCuttlefishContext notifyTrustChanged:](self, "notifyTrustChanged:", [updatedCopy trustState]);
  }

  if ([updatedCopy trustState] != 2 && objc_msgSend(fromCopy, "trustState") == 2)
  {
    launchSequence3 = [(OTCuttlefishContext *)self launchSequence];
    [launchSequence3 addEvent:@"Untrusted"];

    -[OTCuttlefishContext notifyTrustChanged:](self, "notifyTrustChanged:", [updatedCopy trustState]);
    deviceAdapter = [(OTCuttlefishContext *)self deviceAdapter];
    isHomePod = [deviceAdapter isHomePod];

    v13 = sub_100006274("octagon");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (isHomePod)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Trust transition from TRUSTED to some other state, posting TTR", buf, 2u);
      }

      v15 = [NSMutableDictionary dictionaryWithCapacity:5];
      deviceAdapter2 = [(OTCuttlefishContext *)self deviceAdapter];
      serialNumber = [deviceAdapter2 serialNumber];
      [v15 setObject:serialNumber forKeyedSubscript:@"serial"];

      deviceAdapter3 = [(OTCuttlefishContext *)self deviceAdapter];
      deviceName = [deviceAdapter3 deviceName];
      [v15 setObject:deviceName forKeyedSubscript:@"name"];

      deviceAdapter4 = [(OTCuttlefishContext *)self deviceAdapter];
      osVersion = [deviceAdapter4 osVersion];
      [v15 setObject:osVersion forKeyedSubscript:@"os_version"];

      deviceAdapter5 = [(OTCuttlefishContext *)self deviceAdapter];
      modelID = [deviceAdapter5 modelID];
      [v15 setObject:modelID forKeyedSubscript:@"model_id"];

      peerID = [updatedCopy peerID];
      [v15 setObject:peerID forKeyedSubscript:@"peer_id"];

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
      tapToRadarAdapter = [(OTCuttlefishContext *)self tapToRadarAdapter];
      [tapToRadarAdapter postHomePodLostTrustTTR:v27];
    }

    else if (v14)
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Trust transition from TRUSTED to UNTRUSTED on a non-homepod", v38, 2u);
    }
  }

  syncingPolicy = [updatedCopy syncingPolicy];
  syncingPolicy2 = [fromCopy syncingPolicy];
  v31 = [syncingPolicy isEqualToData:syncingPolicy2];

  if ((v31 & 1) == 0)
  {
    getTPSyncingPolicy = [updatedCopy getTPSyncingPolicy];
    getTPSyncingPolicy2 = [fromCopy getTPSyncingPolicy];
    syncUserControllableViews = [getTPSyncingPolicy syncUserControllableViews];
    if (syncUserControllableViews != [getTPSyncingPolicy2 syncUserControllableViews])
    {
      v35 = sub_100006274("octagon-ucv");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "User controllable view state changed; posting notification", v37, 2u);
      }

      notifierClass = [(OTCuttlefishContext *)self notifierClass];
      [(objc_class *)notifierClass post:OTUserControllableViewStatusChanged];
    }
  }
}

- (void)notifyTrustChanged:(int)changed
{
  v5 = sub_100006274("octagon");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Untrusted";
    if (changed == 2)
    {
      v6 = @"Trusted";
    }

    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Changing trust status to: %@", &v11, 0xCu);
  }

  if (![OTSOSActualAdapter sosEnabled]_0())
  {
    notifierClass = [(OTCuttlefishContext *)self notifierClass];
    v8 = [NSString stringWithUTF8String:kSOSCCCircleChangedNotification];
    [(objc_class *)notifierClass post:v8];
  }

  notifierClass2 = [(OTCuttlefishContext *)self notifierClass];
  v10 = [NSString stringWithUTF8String:"com.apple.security.octagon.trust-status-change"];
  [(objc_class *)notifierClass2 post:v10];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OTCuttlefishContext;
  [(OTCuttlefishContext *)&v2 dealloc];
}

- (OTCuttlefishContext)initWithContainerName:(id)name contextID:(id)d activeAccount:(id)account cuttlefish:(id)cuttlefish ckksAccountSync:(id)sync sosAdapter:(id)adapter accountsAdapter:(id)accountsAdapter authKitAdapter:(id)self0 personaAdapter:(id)self1 tooManyPeersAdapter:(id)self2 tapToRadarAdapter:(id)self3 lockStateTracker:(id)self4 reachabilityTracker:(id)self5 accountStateTracker:(id)self6 deviceInformationAdapter:(id)self7 secureBackupAdapter:(id)self8 laContextAdapter:(id)self9 apsConnectionClass:(Class)class escrowRequestClass:(Class)requestClass notifierClass:(Class)notifierClass cdpd:(id)cdpd
{
  nameCopy = name;
  dCopy = d;
  accountCopy = account;
  cuttlefishCopy = cuttlefish;
  syncCopy = sync;
  adapterCopy = adapter;
  adapterCopy2 = adapter;
  accountsAdapterCopy = accountsAdapter;
  kitAdapterCopy = kitAdapter;
  personaAdapterCopy = personaAdapter;
  peersAdapterCopy = peersAdapter;
  radarAdapterCopy = radarAdapter;
  trackerCopy = tracker;
  reachabilityTrackerCopy = reachabilityTracker;
  stateTrackerCopy = stateTracker;
  informationAdapterCopy = informationAdapter;
  backupAdapterCopy = backupAdapter;
  contextAdapterCopy = contextAdapter;
  cdpdCopy = cdpd;
  v102.receiver = self;
  v102.super_class = OTCuttlefishContext;
  v30 = [(OTCuttlefishContext *)&v102 init];
  if (v30)
  {
    v85 = syncCopy;
    objc_initWeak(&location, v30);
    objc_storeStrong(&v30->_containerName, name);
    objc_storeStrong(&v30->_contextID, d);
    objc_storeStrong(&v30->_activeAccount, account);
    objc_storeStrong(&v30->_reachabilityTracker, reachabilityTracker);
    v31 = [OctagonAPSReceiver receiverForNamedDelegatePort:@"com.apple.securityd.aps" apsConnectionClass:class];
    apsReceiver = v30->_apsReceiver;
    v30->_apsReceiver = v31;

    v33 = v30->_apsReceiver;
    containerName = [(OTCuttlefishContext *)v30 containerName];
    v35 = [(OctagonAPSReceiver *)v33 registerCuttlefishReceiver:v30 forContainerName:containerName contextID:dCopy];

    objc_storeStrong(&v30->_ckks, sync);
    v30->_initialBecomeUntrustedPosted = 0;
    objc_storeStrong(&v30->_tooManyPeersAdapter, peersAdapter);
    objc_storeStrong(&v30->_tapToRadarAdapter, radarAdapter);
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

    v44 = [[OTCuttlefishAccountStateHolder alloc] initWithQueue:v30->_queue container:v30->_containerName context:v30->_contextID personaAdapter:personaAdapterCopy activeAccount:accountCopy];
    accountMetadataStore = v30->_accountMetadataStore;
    v30->_accountMetadataStore = v44;

    [(OTCuttlefishAccountStateHolder *)v30->_accountMetadataStore registerNotification:v30];
    v46 = [OctagonStateMachine alloc];
    v47 = [dCopy isEqualToString:@"defaultContext"];
    if (v47)
    {
      dCopy = @"octagon";
    }

    else
    {
      dCopy = [NSString stringWithFormat:@"octagon-%@", dCopy];
    }

    v49 = +[OTStates OctagonStateMap];
    v50 = +[OTStates AllOctagonFlags];
    v51 = [(OctagonStateMachine *)v46 initWithName:dCopy states:v49 flags:v50 initialState:@"Initializing" queue:v30->_queue stateEngine:v30 unexpectedStateErrorDomain:@"com.apple.security.octagon.state" lockStateTracker:trackerCopy reachabilityTracker:reachabilityTrackerCopy];
    stateMachine = v30->_stateMachine;
    v30->_stateMachine = v51;

    if ((v47 & 1) == 0)
    {
    }

    objc_storeStrong(&v30->_sosAdapter, adapterCopy);
    [(OTSOSAdapter *)v30->_sosAdapter registerForPeerChangeUpdates:v30];
    objc_storeStrong(&v30->_accountsAdapter, accountsAdapter);
    objc_storeStrong(&v30->_authKitAdapter, kitAdapter);
    objc_storeStrong(&v30->_personaAdapter, personaAdapter);
    objc_storeStrong(&v30->_deviceAdapter, informationAdapter);
    objc_storeStrong(&v30->_secureBackupAdapter, backupAdapter);
    objc_storeStrong(&v30->_laContextAdapter, contextAdapter);
    [(OTDeviceInformationAdapter *)v30->_deviceAdapter registerForDeviceNameUpdates:v30];
    v53 = [[CuttlefishXPCWrapper alloc] initWithCuttlefishXPCConnection:cuttlefishCopy];
    cuttlefishXPCWrapper = v30->_cuttlefishXPCWrapper;
    v30->_cuttlefishXPCWrapper = v53;

    objc_storeStrong(&v30->_lockStateTracker, tracker);
    objc_storeStrong(&v30->_accountStateTracker, stateTracker);
    v55 = [[OTFollowup alloc] initWithFollowupController:cdpdCopy];
    followupHandler = v30->_followupHandler;
    v30->_followupHandler = v55;

    v57 = [stateTrackerCopy registerForNotificationsOfCloudKitAccountStatusChange:v30];
    [(OTAuthKitAdapter *)v30->_authKitAdapter registerNotification:v30];
    objc_storeStrong(&v30->_notifierClass, notifierClass);
    objc_storeStrong(&v30->_escrowRequestClass, requestClass);
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
    syncCopy = v85;
  }

  return v30;
}

@end