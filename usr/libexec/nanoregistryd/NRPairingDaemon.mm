@interface NRPairingDaemon
+ (id)countdown:(int64_t)a3 toCompletion:(id)a4;
+ (id)sharedInstance;
+ (void)debugDump:(id)a3 public:(BOOL)a4;
+ (void)updateActiveFlag:(BOOL)a3 andPost:(BOOL)a4;
+ (void)updatePingMyWatchControlCenterModuleVisibility:(id)a3;
- (BOOL)_deviceIsInSetupBasedOnIsSetupValue:(id)a3;
- (BOOL)_hasUpdateModeDevicesInCollection:(id)a3;
- (BOOL)_isBridgeForeground;
- (BOOL)_isIDSPairedAndConsistentWithIDSDevices:(id)a3;
- (BOOL)_requiresNetworkRelayPairingIdentifierUpdateForDevice:(id)a3;
- (BOOL)didRestoreFromBackup;
- (BOOL)isBluetoothConnected;
- (BOOL)isBluetoothPoweredOn;
- (BOOL)isSecureDataAvailable;
- (BOOL)legacyDidRestoreFromBackup;
- (BOOL)managedConfigurationWatchDisabled;
- (BOOL)pairingCompatibilityVersionInitWithCollection:(id)a3;
- (BOOL)proxyIsSecureDataAvailable:(id)a3;
- (BOOL)setPairingClientCrashMonitoringCache:(BOOL)a3 proxy:(id)a4;
- (BOOL)shouldCollectPairingPerfStackshots;
- (BOOL)supportsEarlyPairedSync;
- (NRMutableDevice)mirrorOfActiveDevice;
- (NRPairingDaemon)init;
- (NRPairingProxy)lastCaller;
- (NSNumber)chipIDOfActiveDevice;
- (OS_dispatch_queue)pairingQueue;
- (id)IDSGetPairedDevices;
- (id)_bluetoothIDFromPairingID:(id)a3;
- (id)_bluetoothIDOfActiveDevice;
- (id)_deviceFromIDSBTUUID:(id)a3;
- (id)_migrationReporter;
- (id)_resolveIsSetupNumberForDevice:(id)a3;
- (id)activeDeviceAssertions;
- (id)dumpStateGivenCachedHistoryIndex:(unint64_t)a3;
- (id)getTrafficClassifiersForCompatibilityState:(unsigned __int16)a3;
- (id)legacyUnpairTriggerFileContents;
- (id)localizedString:(id)a3;
- (id)termsAcknowledgementServiceForAltAccount;
- (id)termsAcknowledgementServiceGetCloudObject;
- (id)termsAcknowledgementServiceGetRemoteObject;
- (id)unpairReasonString:(unint64_t)a3;
- (id)unpairTriggerFileContents;
- (int)getNotifyTokenWithName:(id)a3;
- (int64_t)maxPairingCompatibilityVersion;
- (int64_t)minPairingCompatibilityVersion;
- (int64_t)pairingVersionFromAdvertisedName:(id)a3;
- (unint64_t)lastStatusCodeCache;
- (unint64_t)readNotifyToken:(int)a3;
- (void)_archiveDevices:(id)a3 withCollection:(id)a4;
- (void)_beginNetworkRelayDiscovery;
- (void)_cancelScheduleTimerOnQueue:(id)a3;
- (void)_deleteSharingPathWithPairingID:(id)a3;
- (void)_forceMigrationSync:(id)a3 withCollection:(id)a4;
- (void)_isIDSReady;
- (void)_markDeviceIsSetupWhereApplicable:(id)a3 bypassIsSetupNoCheck:(BOOL)a4;
- (void)_notifyClients;
- (void)_onRestartMarkPairedDevicesIsSetup:(id)a3;
- (void)_queueMarkDeviceIsSetup:(id)a3;
- (void)_scheduleTimerOnQueue:(id)a3 afterDelay:(double)a4 block:(id)a5;
- (void)_setBridgeBadgeWithCollection:(id)a3;
- (void)_transactionCoordinatorHasBecomeIdle;
- (void)_updateCompatibilityStateForDeviceID:(id)a3 withDeviceCollection:(id)a4;
- (void)_updateCompatibilityStateForDeviceID:(id)a3 withDeviceCollection:(id)a4 oldCompatibilityState:(id)a5 newCompatibilityState:(id)a6;
- (void)_updateIsSetupPropertyForNewlyPairedDevice:(id)a3;
- (void)_updateNetworkRelayIdentifierForDevice:(id)a3;
- (void)_updateNetworkRelayIdentifierForDevicesInCollection:(id)a3;
- (void)_updatePairedDevicePropertiesFromIDSDevice:(id)a3 completion:(id)a4;
- (void)_upsertDeviceDiscoveredBy:(unint64_t)a3 pairingID:(id)a4 advertisedName:(id)a5 bluetoothDeviceID:(id)a6 rssiValue:(int64_t)a7 withBlock:(id)a8;
- (void)_xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4;
- (void)abortPairingReason:(id)a3 proxy:(id)a4 withBlock:(id)a5;
- (void)ackXPCEvents;
- (void)allocateDictionaries;
- (void)areWePairedOrPairing:(id)a3;
- (void)assertionDescription:(id)a3;
- (void)assertionFactoryDidBecomeIdle:(id)a3;
- (void)beginDiscovery:(BOOL)a3 withDeviceIDToDiscover:(id)a4;
- (void)broadcastActiveDeviceChipID:(id)a3 from:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)checkAndDisableStandAloneMode;
- (void)checkForWatchNeedsGraduation:(id)a3;
- (void)checkLaunchNotificationsSetup;
- (void)cleanupPairingStoreWithCompletion:(id)a3;
- (void)clearMagicSwitchAdvertisingIdentifierSeedIfNeeded;
- (void)createDeviceFromBluetoothDiscoveryWithAdvertisementData:(id)a3 withBluetoothPeer:(id)a4 withRSSI:(id)a5 withBlock:(id)a6;
- (void)createDeviceFromBluetoothPairRequestWithBluetoothPeer:(id)a3 advertisedName:(id)a4 withBlock:(id)a5;
- (void)createDeviceFromNetworkRelayDiscoveryWithAdvertisementName:(id)a3 bluetoothIdentifier:(id)a4 withRSSI:(id)a5 withBlock:(id)a6;
- (void)createUnpairTransactionsWithCompletion:(id)a3;
- (void)dealloc;
- (void)debounceOnQueue:(id)a3 block:(id)a4;
- (void)deleteLocalPairingStore:(id)a3 withCompletion:(id)a4;
- (void)deleteUnexpectedIDSPairedDevicesWithCompletion:(id)a3;
- (void)deviceHasUnpairedBluetooth:(id)a3;
- (void)discoveredCandidateName:(id)a3 bluetoothIdentifier:(id)a4;
- (void)enqueueSetLastPairedDeviceTransactionWithCompletion:(id)a3;
- (void)enterCompatibilityState:(unsigned __int16)a3 withDeviceID:(id)a4 withCompletion:(id)a5;
- (void)forceEndDiscovery;
- (void)getAdvertisedNameFromDeviceID:(id)a3 withCompletion:(id)a4;
- (void)getCanPairAnotherDeviceWithCompletion:(id)a3;
- (void)getEnsureActiveDeviceWithCompletion:(id)a3;
- (void)getPairedPairedPairingIDForBluetoothID:(id)a3 completion:(id)a4;
- (void)getPairedPairingIDForBluetoothID:(id)a3 completion:(id)a4;
- (void)handleDeadPairingClient:(id)a3;
- (void)idsConnectivityTimeout;
- (void)initBluetoothWithBlock:(id)a3;
- (void)initIDSService:(Class)a3 block:(id)a4;
- (void)initNetworkRelayPairerWithBlock:(id)a3;
- (void)initializeAllIDSChannelsBlock:(id)a3;
- (void)initializeTrafficClassBlock:(id)a3;
- (void)initiateSyncAfterSoftwareUpdateForDevice:(id)a3;
- (void)invalidateIDSChannels;
- (void)keychainSyncStatusDidChange:(BOOL)a3;
- (void)lastPairedDeviceWithBlock:(id)a3;
- (void)logIfVersionsAreOverridden;
- (void)lostCandidateWithName:(id)a3;
- (void)normalizeDaemonStateWithBlock:(id)a3;
- (void)nuke:(id)a3 completion:(id)a4;
- (void)postFirstUnlockInitBlock:(id)a3;
- (void)preFirstUnlockInitCompletion:(id)a3;
- (void)presentWatchWasUpdatedAlertIfNeededForNewBuildVersion:(id)a3 oldBuildVersion:(id)a4;
- (void)purgeDiscoveredDevices:(id)a3;
- (void)purgeIDSPairedDevicesExceptFor:(id)a3 withQueue:(id)a4 andCompletion:(id)a5;
- (void)receivedMigrationAuthenticationRequest;
- (void)refreshPropertyCache;
- (void)registerManagedConfigurationChanged:(id)a3;
- (void)remoteObject:(id)a3 isConnected:(BOOL)a4;
- (void)remoteObject:(id)a3 receivedAddTermsEvent:(id)a4 fromIDSBTUUID:(id)a5 responseBlock:(id)a6;
- (void)remoteObject:(id)a3 receivedCheckTermsEvent:(id)a4 fromIDSBTUUID:(id)a5 responseBlock:(id)a6;
- (void)remoteObject:(id)a3 receivedMigratedAwayWithAdvertisedName:(id)a4;
- (void)remoteObject:(id)a3 receivedMigrationRequestWithShouldCancel:(BOOL)a4 responseBlock:(id)a5;
- (void)remoteObject:(id)a3 receivedPropertyChanges:(id)a4 isAllProperties:(BOOL)a5 fromIDSBTUUID:(id)a6;
- (void)remoteObject:(id)a3 receivedPropertyRequestWithRequestIdentifier:(id)a4 fromIDSBTUUID:(id)a5;
- (void)remoteObject:(id)a3 receivedSystemVersionBroadcast:(id)a4 fromDeviceID:(id)a5;
- (void)remoteObject:(id)a3 receivedTinkerMigrationRequestWithShouldCancel:(BOOL)a4 responseBlock:(id)a5;
- (void)remoteObject:(id)a3 receivedUnpairRequestWithAdvertisedName:(id)a4 shouldObliterate:(BOOL)a5 shouldBrick:(BOOL)a6 shouldPreserveESim:(BOOL)a7 withPairingFailureCode:(id)a8 withAbortReason:(id)a9 withRequestIdentifier:(id)a10 fromIDSBTUUID:(id)a11;
- (void)remoteObject:(id)a3 receivedWatchTransferStagingRequestWithData:(id)a4;
- (void)remoteObjectDevicesChanged:(id)a3;
- (void)remoteObjectIDSServiceAvailable:(id)a3 withIDSDevice:(id)a4;
- (void)remoteObjectReceivedWatchMigrationCompletion:(unint64_t)a3;
- (void)remoteObjectReveivedWatchMigrationMetricSessionID:(id)a3;
- (void)removeAssertionInfo:(id)a3;
- (void)removeAssertionsForProxy:(id)a3 newDeviceID:(id)a4;
- (void)removeCandidateDeviceWithName:(id)a3;
- (void)removeExternalAssertionsForPairingID:(id)a3;
- (void)removeStaleDiscoveredDevices;
- (void)resetIDSConnectivityTimeout;
- (void)resetPhoneStateForNewPairing;
- (void)resetWatchStateForNewPairing;
- (void)resourceAvailabilityDidChange:(id)a3;
- (void)saveAssertionInfo:(id)a3;
- (void)sendPairingIdToActiveDevice:(id)a3;
- (void)sendRemoteUnpairingDidBeginNotificationWithBlock:(id)a3;
- (void)sendXPCDeviceNeedsPasscodeMessage:(id)a3 passcode:(id)a4;
- (void)sendXPCOOBKeyChanged:(id)a3;
- (void)setChipIDOfActiveDevice:(id)a3;
- (void)setDidRestoreFromBackup:(BOOL)a3;
- (void)setIDSTrafficClassifiersForActiveDeviceWithNewCompatibilityState:(id)a3;
- (void)setLastCaller:(id)a3;
- (void)setLastStatusCodeCache:(unint64_t)a3;
- (void)setStatusCode:(unint64_t)a3 InCollection:(id)a4;
- (void)setUpClientReferenceCounters;
- (void)setUpHistoryCompletionBlocks;
- (void)setupSignalHandlers;
- (void)sigTerm;
- (void)sigUsr1;
- (void)startIDSConnectivityTimeout;
- (void)startPushing;
- (void)statusCodeManager:(id)a3 electionOutcomeChanged:(unint64_t)a4;
- (void)stopPushing;
- (void)syncPairingClientCrashMonitoringCache;
- (void)termsAcknowledgementServiceGetDeviceMirrorFromDeviceID:(id)a3 block:(id)a4;
- (void)termsAcknowledgementServiceGetNRIDFromBTID:(id)a3 block:(id)a4;
- (void)transactionCoordinatorHasBecomeIdle;
- (void)unpairDeviceWithPairingID:(id)a3 obliterationString:(id)a4 shouldBrick:(id)a5 storeUnpair:(id)a6 migrationUnpair:(id)a7 shouldPreserveESim:(id)a8 pairingReport:(id)a9 remoteUnpairRequestUUID:(id)a10 shouldConnectionWithDevice:(BOOL)a11;
- (void)updateDeviceID:(id)a3 withProperties:(id)a4 withCompletion:(id)a5;
- (void)updateFromBTState;
- (void)updateFromBTState:(int64_t)a3;
- (void)updateIsPairedTelemetryKey;
- (void)updateMirrorWithCollection:(id)a3;
- (void)updateNotifyToken:(int)a3 withValue:(unint64_t)a4 withNotificationName:(id)a5 alwaysPost:(BOOL)a6;
- (void)updatePairingSessionIdIfNeededForActiveDevice;
- (void)updateShouldMonitorProxy:(id)a3;
- (void)updateTrafficClass;
- (void)voidIDSService:(Class)a3;
- (void)xpcAbortPairingReason:(id)a3 withBlock:(id)a4;
- (void)xpcActiveDeviceAssertions:(id)a3;
- (void)xpcApplyDiff:(id)a3 withSecureProperties:(id)a4 block:(id)a5;
- (void)xpcBeginDiscoveryWithBlock:(id)a3;
- (void)xpcBeginMigrationWithCompletion:(id)a3;
- (void)xpcBeginMigrationWithDeviceID:(id)a3 completion:(id)a4;
- (void)xpcBeginMigrationWithDeviceID:(id)a3 passcode:(id)a4 withBlock:(id)a5;
- (void)xpcBooleanForInternalPreference:(id)a3 withBlock:(id)a4;
- (void)xpcCheckIfFlaggedForRecoveryWithCompletion:(id)a3;
- (void)xpcClearRecoveryFlagWithCompletion:(id)a3;
- (void)xpcClearWatchNeedsGraduation:(id)a3;
- (void)xpcClientInfo:(id)a3;
- (void)xpcCompanionOOBDiscoverAndPairWithName:(id)a3 withOutOfBandPairingKey:(id)a4 withOptions:(id)a5 operationHasBegun:(id)a6;
- (void)xpcCompanionPasscodePairWithDeviceID:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5;
- (void)xpcDeviceIDAtSwitchIndex:(unsigned int)a3 withBlock:(id)a4;
- (void)xpcEndDiscoveryWithBlock:(id)a3;
- (void)xpcFakePairedSyncIsCompleteWithCompletion:(id)a3;
- (void)xpcFakePairedSyncStartWithCompletion:(id)a3;
- (void)xpcGetChangeHistoryWithBlock:(id)a3;
- (void)xpcGetDeviceCollectionWithBlock:(id)a3;
- (void)xpcGetInitialSyncCompletedForPairingID:(id)a3 completion:(id)a4;
- (void)xpcGetLastMigrationRequestPhoneNameWithCompletion:(id)a3;
- (void)xpcGetLastSwitchIndex:(id)a3;
- (void)xpcGetMigrationCountForPairingID:(id)a3 completion:(id)a4;
- (void)xpcGetMigrationPairingCharacteristicReadDataWithCompletion:(id)a3;
- (void)xpcGizmoOOBAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4;
- (void)xpcGizmoPasscodeAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4;
- (void)xpcInvalidateSwitchAssertionWithIdentifier:(id)a3 block:(id)a4;
- (void)xpcIsAssertionActive:(id)a3 withCompletion:(id)a4;
- (void)xpcIsPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4;
- (void)xpcListWatchStagedForTransferWithCompletion:(id)a3;
- (void)xpcLongForInternalPreference:(id)a3 withBlock:(id)a4;
- (void)xpcNotifyActivationCompleted:(id)a3 withSuccess:(BOOL)a4;
- (void)xpcNotifyPasscode:(id)a3 withDeviceID:(id)a4;
- (void)xpcPairWithSimulator:(id)a3 withCompletion:(id)a4;
- (void)xpcPairingClientDidEnterPhase:(id)a3 withBlock:(id)a4;
- (void)xpcPairingClientSetAltAccountName:(id)a3 altDSID:(id)a4 forPairingID:(id)a5 completion:(id)a6;
- (void)xpcPairingClientSetPairingParentName:(id)a3 pairingParentAltDSID:(id)a4 forPairingID:(id)a5 completion:(id)a6;
- (void)xpcPingActiveGizmoWithPriority:(int)a3 withMessageSize:(int64_t)a4 withBlock:(id)a5;
- (void)xpcPutMigrationChallengeCharacteristicWriteData:(id)a3 completion:(id)a4;
- (void)xpcResumePairingClientCrashMonitoring:(id)a3;
- (void)xpcRetrieveSecureProperties:(id)a3 block:(id)a4;
- (void)xpcRetriggerUnpairInfoDialogWithBlock:(id)a3;
- (void)xpcScanForMigratableWatchesWithBlock:(id)a3;
- (void)xpcServer:(id)a3 proxyDidDisconnect:(id)a4;
- (void)xpcServer:(id)a3 proxyDidResume:(id)a4;
- (void)xpcServer:(id)a3 proxyDidSuspend:(id)a4;
- (void)xpcSetMigrationConsented:(BOOL)a3 forDeviceID:(id)a4 withBlock:(id)a5;
- (void)xpcStageWatchForGraduationWithDeviceID:(id)a3 completion:(id)a4;
- (void)xpcStageWatchForTransferWithDeviceID:(id)a3 completion:(id)a4;
- (void)xpcStartWatchSetupPushWithBlock:(id)a3;
- (void)xpcStopWatchSetupPushWithBlock:(id)a3;
- (void)xpcSubmitAlbertPairingReport:(id)a3;
- (void)xpcSubmitServerRequestReportWithRequestType:(id)a3 duration:(double)a4 errorCode:(unsigned int)a5 block:(id)a6;
- (void)xpcSuspendPairingClientCrashMonitoring:(id)a3;
- (void)xpcSwitchActiveDeviceWithDeviceID:(id)a3 isMagicSwitch:(BOOL)a4 operationHasCompleted:(id)a5;
- (void)xpcSwitchActiveDeviceWithDeviceID:(id)a3 withAssertionHandler:(id)a4;
- (void)xpcSwitchIndex:(id)a3;
- (void)xpcSwitchToSimulator:(id)a3 withCompletion:(id)a4;
- (void)xpcTriggerTailspinFrom:(unint64_t)a3 forApp:(id)a4;
- (void)xpcUnpairWithDeviceID:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5;
- (void)xpcUnpairWithSimulator:(id)a3 withCompletion:(id)a4;
- (void)xpcUpdateWatchBuddyStage:(unsigned int)a3 forPairingID:(id)a4;
- (void)xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4;
- (void)xpcWatchBuddyCompletedSetupSteps:(id)a3;
- (void)xpcWatchNeedsGraduation:(id)a3;
@end

@implementation NRPairingDaemon

- (OS_dispatch_queue)pairingQueue
{
  v2 = +[NRQueue xpcPairingQueue];
  v3 = [v2 queue];

  return v3;
}

- (void)_isIDSReady
{
  v3 = +[NRQueue registryDaemonQueue];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v6 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v7 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v8 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v47 = [v5 defaultPairedDevice];
  v46 = [v6 defaultPairedDevice];
  v9 = [v7 defaultPairedDevice];
  v10 = [v8 defaultPairedDevice];
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v47)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v44 = v14;
      v45 = v8;
      if ([v5 hasAccounts])
      {
        v15 = "hA";
      }

      else
      {
        v15 = "noA!";
      }

      v16 = "noA!";
      v42 = v15;
      if ([v5 isDisconnected])
      {
        v17 = 68;
      }

      else
      {
        v17 = 69;
      }

      v41 = v17;
      v18 = @"NO";
      if (v46)
      {
        v18 = @"YES";
      }

      v43 = v18;
      if ([v6 hasAccounts])
      {
        v19 = "hA";
      }

      else
      {
        v19 = "noA!";
      }

      v40 = v19;
      if ([v6 isDisconnected])
      {
        v20 = 68;
      }

      else
      {
        v20 = 69;
      }

      v39 = v20;
      v21 = @"NO";
      if (v9)
      {
        v21 = @"YES";
      }

      v38 = v21;
      if ([v7 hasAccounts])
      {
        v22 = "hA";
      }

      else
      {
        v22 = "noA!";
      }

      v37 = v22;
      if ([v7 isDisconnected])
      {
        v23 = 68;
      }

      else
      {
        v23 = 69;
      }

      v36 = v23;
      v24 = @"NO";
      if (v10)
      {
        v24 = @"YES";
      }

      v35 = v24;
      if ([v45 hasAccounts])
      {
        v16 = "hA";
      }

      *buf = 138417154;
      if ([v45 isDisconnected])
      {
        v25 = 68;
      }

      else
      {
        v25 = 69;
      }

      v50 = v44;
      v51 = 2080;
      v52 = v42;
      v53 = 2048;
      v54 = v5;
      v55 = 2048;
      v56 = v47;
      v57 = 1024;
      v58 = v41;
      v59 = 2112;
      v60 = v43;
      v61 = 2080;
      v62 = v40;
      v63 = 2048;
      v64 = v6;
      v65 = 2048;
      v66 = v46;
      v67 = 1024;
      v68 = v39;
      v69 = 2112;
      v70 = v38;
      v71 = 2080;
      v72 = v37;
      v73 = 2048;
      v74 = v7;
      v75 = 2048;
      v76 = v9;
      v77 = 1024;
      v78 = v36;
      v79 = 2112;
      v80 = v35;
      v81 = 2080;
      v82 = v16;
      v8 = v45;
      v83 = 2048;
      v84 = v45;
      v85 = 2048;
      v86 = v10;
      v87 = 1024;
      v88 = v25;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cloud=%@ %s [%p-%p]%c A=%@ %s [%p-%p]%c C=%@ %s [%p-%p]%c D=%@ %s [%p-%p]%c", buf, 0xBAu);
    }
  }

  if (!v9 || !v10)
  {
    if (!(v9 | v10))
    {
      [(NRConnectivityPublisher *)self->_connectivityPublisher setConnected:0];
    }

    goto LABEL_49;
  }

  v48[0] = v9;
  v48[1] = v10;
  v26 = [NSArray arrayWithObjects:v48 count:2];
  v27 = [(NRPairingDaemon *)self _isIDSPairedAndConsistentWithIDSDevices:v26];

  if (!v27)
  {
LABEL_49:
    self->_initRemoteProperties = 1;
    [(NRLocalPropertyMonitor *)self->_localProperties unregisterFromNotifications];
    goto LABEL_50;
  }

  [(NRPairingDaemon *)self logIfVersionsAreOverridden];
  kdebug_trace();
  v28 = nr_daemon_log();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

  if (v29)
  {
    v30 = nr_daemon_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "IDS account+device found", buf, 2u);
    }
  }

  v31 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  [v31 accountAndDeviceReady];
  if (self->_useNetworkRelayPairing)
  {
    v32 = +[NRNetworkRelayPair sharedInstance];
    [v32 accountAndDeviceReady];
  }

  v33 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v34 = [v9 nsuuid];
  [v33 idsAccountPlusDeviceReceivedWithBTID:v34];

LABEL_50:
}

- (void)logIfVersionsAreOverridden
{
  v3 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v4 = [v3 isOverrideActive];

  if (v4)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000FE768(self);
    }

    goto LABEL_9;
  }

  v8 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v9 = [v8 isRevlockFeatureFlagActive];

  if ((v9 & 1) == 0)
  {
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000FE64C(self);
      }

LABEL_9:
    }
  }

LABEL_10:
  if (qword_1001B37A0 != -1)
  {
    sub_1000FE884();
  }

  if (byte_1001B3798 == 1)
  {
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000FE8AC();
      }
    }
  }
}

+ (id)sharedInstance
{
  if (qword_1001B3788 != -1)
  {
    sub_1000FE20C();
  }

  v3 = qword_1001B3780;

  return v3;
}

- (NRPairingDaemon)init
{
  v26.receiver = self;
  v26.super_class = NRPairingDaemon;
  v2 = [(NRPairingDaemon *)&v26 init];
  if (v2)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NRRegistryDaemon init]", buf, 2u);
      }
    }

    v6 = objc_alloc_init(NSMutableSet);
    waitForBridgeCompletedPairingIDs = v2->_waitForBridgeCompletedPairingIDs;
    v2->_waitForBridgeCompletedPairingIDs = v6;

    v8 = +[NRFeatureFlags sharedInstance];
    if ([v8 networkRelayPairing])
    {
      v2->_useNetworkRelayPairing = 1;
    }

    else
    {
      v9 = +[NRSystemProperties sharedInstance];
      v2->_useNetworkRelayPairing = [v9 isVirtualDevice];
    }

    objc_initWeak(&location, v2);
    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = sub_100023050;
    v23 = sub_100023060;
    v24 = [NROSTransaction transactionWithName:@"init"];
    v2->_lastCallerLock._os_unfair_lock_opaque = 0;
    v2->_pairingQueueWriteLock._os_unfair_lock_opaque = 0;
    [(NRPairingDaemon *)v2 setPairingQueueIsSuspended:1];
    v2->_lastStatusCodeCacheLock._os_unfair_lock_opaque = 0;
    [(NRPairingDaemon *)v2 updateIsPairedTelemetryKey];
    v10 = +[NRQueue delayPairingRequestQueue];
    [v10 suspend];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100023068;
    v15[3] = &unk_100176418;
    v16 = v2;
    objc_copyWeak(&v18, &location);
    v17 = buf;
    [(NRPairingDaemon *)v16 grabRegistryWithReadBlock:v15];
    objc_destroyWeak(&v18);

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);
  }

  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[NRRegistryDaemon init] Complete", buf, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NRPairingDaemon;
  [(NRPairingDaemon *)&v2 dealloc];
}

- (void)xpcBeginDiscoveryWithBlock:(id)a3
{
  v5 = a3;
  [(NRPairingDaemon *)self beginDiscovery:1 withDeviceIDToDiscover:0];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)xpcEndDiscoveryWithBlock:(id)a3
{
  v4 = a3;
  [(NRPairingDaemon *)self forceEndDiscovery];
  v4[2]();
}

+ (void)updateActiveFlag:(BOOL)a3 andPost:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (qword_1001B3790 != -1)
  {
    sub_1000FE220();
  }

  if (dword_1001B2460 != -1)
  {
    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "not ";
        v11 = 138412802;
        if (v4)
        {
          v10 = "";
        }

        v12 = NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification;
        v13 = 2048;
        v14 = v6;
        v15 = 2080;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NRPairingDaemon updating %@ to %ld and %sposting", &v11, 0x20u);
      }
    }

    notify_set_state(dword_1001B2460, v6);
    if (v4)
    {
      notify_post([NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification UTF8String]);
    }
  }
}

- (void)setLastStatusCodeCache:(unint64_t)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023A24;
  v4[3] = &unk_1001761C0;
  v4[4] = self;
  v4[5] = a3;
  os_unfair_lock_lock_with_options();
  sub_100023A24(v4);
  os_unfair_lock_unlock(&self->_lastStatusCodeCacheLock);
}

- (unint64_t)lastStatusCodeCache
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100023B2C;
  v8 = &unk_1001758D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  v7(v3);

  os_unfair_lock_unlock(&self->_lastStatusCodeCacheLock);
  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)setUpHistoryCompletionBlocks
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023C0C;
  v4[3] = &unk_100175D30;
  objc_copyWeak(&v5, &location);
  v3 = [(NRPairingDaemon *)self addDiffObserverWithWriteBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_setBridgeBadgeWithCollection:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    v8 = _NRDevicePropertyCompatibilityState;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [v3 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
        v11 = [v10 objectForKeyedSubscript:v8];
        v12 = [v11 value];

        if ([v10 isPaired] && (objc_msgSend(v10, "isArchived") & 1) == 0 && objc_msgSend(v12, "integerValue") == 2)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [[UISApplicationState alloc] initWithBundleIdentifier:@"com.apple.Bridge"];
  v14 = [NSNumber numberWithInteger:v6];
  [v13 setBadgeValue:v14];
}

- (void)setIDSTrafficClassifiersForActiveDeviceWithNewCompatibilityState:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000FE2B4();
    }
  }

  if (v4)
  {
    v8 = objc_opt_new();
    v9 = -[NRPairingDaemon getTrafficClassifiersForCompatibilityState:](self, "getTrafficClassifiersForCompatibilityState:", [v4 integerValue]);
    if ([v4 integerValue] == 2)
    {
      [v8 setShouldDropUnmatchingTraffic:1];
    }

    [v8 setTrafficClasses:v9];
    v10 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v10 updateTrafficClassesWithClasses:v8];
    v11 = [v4 integerValue];
    v12 = [(NRPairingDaemon *)self _bluetoothIDOfActiveDevice];
    [v10 sendPairingModeRequest:v11 toIDSBTUUID:v12 withSentBlock:0];
  }
}

- (void)_deleteSharingPathWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self collection];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:NRDevicePropertyLocalPairingDataStorePath];
  v8 = [v7 value];

  if (v8)
  {
    v9 = [v8 stringByAppendingPathComponent:@"com.apple.sharing"];
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleting %@", buf, 0xCu);
      }
    }

    v13 = +[NSFileManager defaultManager];
    v18 = 0;
    [v13 removeItemAtPath:v9 error:&v18];
    v14 = v18;

    if (v14)
    {
      v15 = nr_daemon_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = nr_daemon_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000FE334();
        }
      }
    }
  }
}

- (BOOL)_hasUpdateModeDevicesInCollection:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = _NRDevicePropertyCompatibilityState;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [v3 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
        if ([v9 isPaired] && objc_msgSend(v9, "isActive"))
        {
          v10 = [v9 objectForKeyedSubscript:v7];
          v11 = [v10 value];

          if (v11 && [v11 integerValue] == 2)
          {

            v12 = 1;
            goto LABEL_15;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  v13 = nr_daemon_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = nr_daemon_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Collection has device in update mode: %{BOOL}d", buf, 8u);
    }
  }

  return v12;
}

- (BOOL)_isBridgeForeground
{
  v2 = [RBSProcessPredicate predicateMatchingBundleIdentifier:@"com.apple.Bridge"];
  v10 = 0;
  v3 = [RBSProcessHandle handleForPredicate:v2 error:&v10];
  v4 = v10;

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v7 = [v3 currentState];
    LOBYTE(v8) = [v7 taskState]== 4;
LABEL_10:

    goto LABEL_11;
  }

  v6 = nr_daemon_log();
  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000FE3B4();
    }

    LOBYTE(v8) = 0;
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (void)saveAssertionInfo:(id)a3
{
  v22 = a3;
  v4 = [v22 clientProxy];
  v5 = [v22 pairingID];
  [(NRPairingDaemon *)self removeAssertionsForProxy:v4 newDeviceID:v5];

  assertionToAssertionInfo = self->_assertionToAssertionInfo;
  if (!assertionToAssertionInfo)
  {
    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    v8 = self->_assertionToAssertionInfo;
    self->_assertionToAssertionInfo = v7;

    v9 = +[NSMapTable strongToStrongObjectsMapTable];
    clientProxyToAssertionInfo = self->_clientProxyToAssertionInfo;
    self->_clientProxyToAssertionInfo = v9;

    v11 = +[NSMutableDictionary dictionary];
    clientAssertionIDToAssertionInfo = self->_clientAssertionIDToAssertionInfo;
    self->_clientAssertionIDToAssertionInfo = v11;

    assertionToAssertionInfo = self->_assertionToAssertionInfo;
  }

  v13 = [v22 assertion];
  [(NSMapTable *)assertionToAssertionInfo setObject:v22 forKey:v13];

  v14 = self->_clientProxyToAssertionInfo;
  v15 = [v22 clientProxy];
  v16 = [(NSMapTable *)v14 objectForKey:v15];

  if (!v16)
  {
    v16 = +[NSMutableSet set];
  }

  [v16 addObject:v22];
  v17 = self->_clientProxyToAssertionInfo;
  v18 = [v22 clientProxy];
  [(NSMapTable *)v17 setObject:v16 forKey:v18];

  v19 = self->_clientAssertionIDToAssertionInfo;
  v20 = [v22 assertionID];
  [(NSMutableDictionary *)v19 setObject:v22 forKey:v20];

  v21 = [v22 clientProxy];
  [(NRPairingDaemon *)self updateShouldMonitorProxy:v21];
}

- (void)removeAssertionInfo:(id)a3
{
  v18 = a3;
  v4 = [v18 assertion];
  [v4 invalidate];

  assertionToAssertionInfo = self->_assertionToAssertionInfo;
  v6 = [v18 assertion];
  [(NSMapTable *)assertionToAssertionInfo removeObjectForKey:v6];

  clientProxyToAssertionInfo = self->_clientProxyToAssertionInfo;
  v8 = [v18 clientProxy];
  v9 = [(NSMapTable *)clientProxyToAssertionInfo objectForKey:v8];

  if ([v9 containsObject:v18])
  {
    [v9 removeObject:v18];
  }

  else
  {
    v10 = [v18 clientBlock];

    if (v10)
    {
      v11 = [v18 clientBlock];
      v12 = nrGetPairingError();
      (v11)[2](v11, v12, 0);

      [v18 setClientBlock:0];
    }
  }

  if (![v9 count])
  {
    v13 = self->_clientProxyToAssertionInfo;
    v14 = [v18 clientProxy];
    [(NSMapTable *)v13 removeObjectForKey:v14];
  }

  clientAssertionIDToAssertionInfo = self->_clientAssertionIDToAssertionInfo;
  v16 = [v18 assertionID];
  [(NSMutableDictionary *)clientAssertionIDToAssertionInfo removeObjectForKey:v16];

  v17 = [v18 clientProxy];
  [(NRPairingDaemon *)self updateShouldMonitorProxy:v17];
}

- (void)removeAssertionsForProxy:(id)a3 newDeviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = v6;
  [(NSMapTable *)self->_clientProxyToAssertionInfo objectForKey:v6];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v24 = 0u;
  v8 = [v19 copy];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 pairingID];
        v15 = [v14 isEqual:v7];

        if ((v15 & 1) == 0)
        {
          v16 = nr_daemon_log();
          v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (v17)
          {
            v18 = nr_daemon_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000FE434(v25, v13);
            }
          }

          [(NRPairingDaemon *)self removeAssertionInfo:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  [(NRPairingDaemon *)self updateShouldMonitorProxy:v20];
}

- (void)removeExternalAssertionsForPairingID:(id)a3
{
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(NSMapTable *)self->_clientProxyToAssertionInfo copy];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [(NSMapTable *)self->_clientProxyToAssertionInfo objectForKey:*(*(&v27 + 1) + 8 * i)];
        v7 = [v6 copy];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = v7;
        v8 = [v7 copy];
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v23 + 1) + 8 * j);
              v14 = [v13 pairingID];
              v15 = [v14 isEqual:v4];

              if (v15)
              {
                v16 = nr_daemon_log();
                v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

                if (v17)
                {
                  v18 = nr_daemon_log();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000FE434(v31, v13);
                  }
                }

                [(NRPairingDaemon *)self removeAssertionInfo:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
          }

          while (v10);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v21);
  }
}

- (NRPairingProxy)lastCaller
{
  os_unfair_lock_lock(&self->_lastCallerLock);
  v3 = self->_lastCaller;
  lastCaller = self->_lastCaller;
  self->_lastCaller = 0;

  os_unfair_lock_unlock(&self->_lastCallerLock);

  return v3;
}

- (void)setLastCaller:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lastCallerLock);
  lastCaller = self->_lastCaller;
  self->_lastCaller = v4;

  os_unfair_lock_unlock(&self->_lastCallerLock);
}

- (void)xpcSwitchActiveDeviceWithDeviceID:(id)a3 withAssertionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NRPairingDaemon *)self lastCaller];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026298;
  v11[3] = &unk_100176148;
  v13 = v12 = v6;
  v14 = self;
  v15 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v11];
}

- (void)xpcInvalidateSwitchAssertionWithIdentifier:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NRPairingDaemon *)self lastCaller];
  v9 = [(NSMutableDictionary *)self->_clientAssertionIDToAssertionInfo objectForKey:v7];

  v10 = [v9 clientProxy];

  if (v10 == v8)
  {
    [(NRPairingDaemon *)self removeAssertionInfo:v9];
    v6[2](v6, 0);
  }

  else
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"You don't own this assertion";
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.NanoRegistry" code:999 userInfo:v11];

    v6[2](v6, v12);
    v6 = v12;
  }
}

- (void)xpcDeviceIDAtSwitchIndex:(unsigned int)a3 withBlock:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002684C;
  v6[3] = &unk_1001762D8;
  v8 = a3;
  v7 = a4;
  v5 = v7;
  [(NRPairingDaemon *)self grabHistoryWithReadBlock:v6];
}

- (void)nuke:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Nuking device %@", buf, 0xCu);
    }
  }

  if ([(NRPairingDaemon *)self storeMode])
  {
    if (v7)
    {
      v7[2](v7);
    }
  }

  else if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026A70;
    v11[3] = &unk_100176588;
    v12 = v6;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v11];
  }
}

- (id)unpairTriggerFileContents
{
  v3 = [(NRPairingDaemon *)self legacyUnpairTriggerFileContents];
  v4 = [v3 mutableCopy];

  v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v6 = [v5 backupHash];
  if (v6)
  {
    v7 = [NSKeyedArchiver secureArchivedDataWithRootObject:v6];
    if (v7)
    {
      v8 = [NSKeyedArchiver secureArchivedDataWithRootObject:v6];
      [v4 appendData:v8];
    }
  }

  return v4;
}

- (id)legacyUnpairTriggerFileContents
{
  v2 = [@"don't delete me unless you want to unpair\n" dataUsingEncoding:4];
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)setDidRestoreFromBackup:(BOOL)a3
{
  v3 = a3;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (v3)
      {
        v7 = @"YES";
      }

      v10 = 136446466;
      v11 = "[NRPairingDaemon setDidRestoreFromBackup:]";
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", &v10, 0x16u);
    }
  }

  v8 = +[NRRestoreFromBackupTracker sharedInstance];
  v9 = v8;
  if (v3)
  {
    [v8 stopTracking];
  }

  else
  {
    [v8 refresh];
  }
}

- (BOOL)didRestoreFromBackup
{
  v3 = +[NRRestoreFromBackupTracker sharedInstance];
  v4 = [v3 isTracked];

  if (v4)
  {
    v5 = +[NRRestoreFromBackupTracker sharedInstance];
    v6 = [v5 didRestoredFromBackup];

    return v6;
  }

  else
  {

    return [(NRPairingDaemon *)self legacyDidRestoreFromBackup];
  }
}

- (BOOL)legacyDidRestoreFromBackup
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v34 = "[NRPairingDaemon legacyDidRestoreFromBackup]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  v6 = +[NRDataFilePaths _pathToUnpairTriggerFile];
  v7 = [NSData dataWithContentsOfFile:v6];

  if (v7)
  {
    v8 = [(NRPairingDaemon *)self legacyUnpairTriggerFileContents];
    if ([v7 isEqual:v8])
    {
      [(NRPairingDaemon *)self setDidRestoreFromBackup:0];
      v9 = nr_daemon_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (!v10)
      {
LABEL_22:
        v24 = 0;
LABEL_38:

        goto LABEL_39;
      }

      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "unpairTriggerFileDoesNotExist- legacy file found (match)", buf, 2u);
      }

LABEL_21:

      goto LABEL_22;
    }

    v14 = [v7 length];
    v15 = v14 - [v8 length];
    if (v15 < 1)
    {
      v25 = nr_daemon_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (!v26)
      {
LABEL_37:
        v24 = 1;
        goto LABEL_38;
      }

      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v34 = "[NRPairingDaemon legacyDidRestoreFromBackup]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: unpairTriggerFileDoesNotExist- restore date not present in trigger file", buf, 0xCu);
      }
    }

    else
    {
      v11 = [v7 subdataWithRange:{-[NSObject length](v8, "length"), v15}];
      v16 = [NSSet setWithObject:objc_opt_class()];
      v17 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v16 withData:v11];

      if (v17)
      {
        v18 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
        v19 = [v18 backupHash];
        v20 = [v17 isEqual:v19];

        v21 = nr_daemon_log();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

        if (v20)
        {
          if (v22)
          {
            v23 = nr_daemon_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v34 = "[NRPairingDaemon legacyDidRestoreFromBackup]";
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: unpairTriggerFileDoesNotExist- restore date match", buf, 0xCu);
            }
          }

          [(NRPairingDaemon *)self setDidRestoreFromBackup:0];

          goto LABEL_21;
        }

        if (v22)
        {
          v27 = nr_daemon_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v34 = "[NRPairingDaemon legacyDidRestoreFromBackup]";
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: unpairTriggerFileDoesNotExist- restore date mismatch", buf, 0xCu);
          }
        }

        goto LABEL_35;
      }

      v28 = nr_daemon_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v17 = nr_daemon_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 136446210;
          v32 = "[NRPairingDaemon legacyDidRestoreFromBackup]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: unpairTriggerFileDoesNotExist- could not unarchive trigger file", &v31, 0xCu);
        }

LABEL_35:
      }
    }

    goto LABEL_37;
  }

  v12 = nr_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v34 = "[NRPairingDaemon legacyDidRestoreFromBackup]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: unpairTriggerFileDoesNotExist- trigger file not present", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v24 = 1;
LABEL_39:

  return v24;
}

- (id)unpairReasonString:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    v4 = [NSString stringWithFormat:@"unexpectedReason%lu", a3];
  }

  else
  {
    v4 = off_1001777C8[a3 - 2];
  }

  return v4;
}

- (void)unpairDeviceWithPairingID:(id)a3 obliterationString:(id)a4 shouldBrick:(id)a5 storeUnpair:(id)a6 migrationUnpair:(id)a7 shouldPreserveESim:(id)a8 pairingReport:(id)a9 remoteUnpairRequestUUID:(id)a10 shouldConnectionWithDevice:(BOOL)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = nr_daemon_log();
  LODWORD(a7) = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (a7)
  {
    v25 = nr_daemon_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = @"(nil)";
      if (v16)
      {
        v26 = v16;
      }

      *buf = 138543362;
      v119 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "unpairDeviceWithPairingID: Unpairing device %{public}@", buf, 0xCu);
    }
  }

  if (v22 && [v22 isErrorSet])
  {
    v27 = +[NRRTCPairingReporter sharedInstance];
    [v27 addToOrCapOffRTCPairingMetric:{objc_msgSend(v22, "subreason")}];
    if (!_NRIsInternalInstall())
    {
LABEL_23:

      goto LABEL_24;
    }

    v106 = v21;
    v108 = v23;
    v28 = v19;
    v104 = v18;
    v29 = v17;
    v30 = [v22 subreason];
    v31 = v30;
    v32 = sub_1000922D4(v30);
    v33 = nr_daemon_log();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

    if (v34)
    {
      v35 = nr_daemon_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v119 = v16;
        v120 = 2112;
        v121 = v32;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Unpairing device %{public}@ due to pairing error with subreason %@", buf, 0x16u);
      }
    }

    v102 = v20;
    v36 = [v22 detailedError];
    v37 = [v36 domain];
    if ([v37 isEqual:@"com.apple.nanoregistry.pairingerror"])
    {
      v38 = [v36 code];

      if (v38 != 42)
      {
        v17 = v29;
        goto LABEL_22;
      }

      v39 = [v36 userInfo];
      v37 = v39;
      if (v39)
      {
        v100 = v16;
        v40 = [v39 objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (v40)
        {
          v41 = [v37 objectForKeyedSubscript:NSUnderlyingErrorKey];
          v42 = [v41 domain];
          v98 = [v32 stringByAppendingFormat:@"\nUnderlying: %@ (%ld)", v42, objc_msgSend(v41, "code")];

          v32 = v98;
        }

        v16 = v100;
      }
    }

    v17 = v29;

LABEL_22:
    v19 = v28;
    v43 = +[NRRepeatingAlertEngine sharedInstance];
    [v43 setEnabled:1 withName:@"InternalPairingFailed"];

    v44 = +[NRRepeatingAlertEngine sharedInstance];
    [v44 addErrorCodeToPairingFailureAlert:v31 withReasonString:v32];

    v45 = +[NRRepeatingAlertEngine sharedInstance];
    [v45 presentAlertsIfNeeded];

    v20 = v102;
    v18 = v104;
    v21 = v106;
    v23 = v108;
    goto LABEL_23;
  }

LABEL_24:
  if (MKBDeviceUnlockedSinceBoot())
  {
    if (!CFPreferencesGetAppBooleanValue(@"storeBlockPairingFailure", @"com.apple.NanoRegistry", 0))
    {
      if ([v19 BOOLValue])
      {
        CFPreferencesSetAppValue(@"storeBlockPairingFailure", &__kCFBooleanTrue, @"com.apple.NanoRegistry");
        CFPreferencesAppSynchronize(@"com.apple.NanoRegistry");
        [(NSMutableSet *)self->_waitForBridgeCompletedPairingIDs addObject:v16];
        v49 = +[NSNotificationCenter defaultCenter];
        [v49 postNotificationName:@"NRNotificationWaitForBridgeComplete" object:self];
      }

      v109 = v23;
      v50 = nr_daemon_log();
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

      if (v51)
      {
        v52 = nr_daemon_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [v19 BOOLValue];
          *buf = 67109120;
          LODWORD(v119) = v53;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "unpairDeviceWithPairingID: Doing minimal store unpair? %{BOOL}d", buf, 8u);
        }
      }

      v54 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      v55 = nrGetPairingError();
      v96 = v54;
      v95 = [v54 cancelAllQueuedOperationsForPairingID:v16 error:v55];

      v116[0] = @"nrDeviceIdentifier";
      v101 = v16;
      v94 = [[EPSagaOperandUUID alloc] initWithUUID:v16];
      v117[0] = v94;
      v116[1] = @"obliterationString";
      v99 = v17;
      v93 = [[EPSagaOperandString alloc] initWithString:v17];
      v117[1] = v93;
      v116[2] = @"shouldPreserveESim";
      v107 = v21;
      v56 = [[EPSagaOperandNumber alloc] initWithNumber:v21];
      v117[2] = v56;
      v116[3] = @"shouldBrick";
      v105 = v18;
      v57 = [[EPSagaOperandNumber alloc] initWithNumber:v18];
      v117[3] = v57;
      v116[4] = @"pairingReport";
      v58 = [[EPSagaOperandPairingReport alloc] initWithPairingReport:v22];
      v117[4] = v58;
      v116[5] = @"remoteUnpairRequestID";
      v59 = [[EPSagaOperandUUID alloc] initWithUUID:v109];
      v117[5] = v59;
      v116[6] = @"migrationUnpair";
      v103 = v20;
      v60 = [[EPSagaOperandNumber alloc] initWithNumber:v20];
      v117[6] = v60;
      v116[7] = @"storeUnpair";
      v97 = v19;
      v61 = [[EPSagaOperandNumber alloc] initWithNumber:v19];
      v117[7] = v61;
      v116[8] = @"shouldConnectDevice";
      v62 = [EPSagaOperandNumber alloc];
      v63 = [NSNumber numberWithBool:a11];
      v64 = [(EPSagaOperandNumber *)v62 initWithNumber:v63];
      v117[8] = v64;
      v65 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:9];

      v66 = v65;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v67 = v95;
      v68 = [v67 countByEnumeratingWithState:&v111 objects:v115 count:16];
      v48 = v66;
      if (v68)
      {
        v69 = v68;
        v70 = *v112;
        while (2)
        {
          for (i = 0; i != v69; i = i + 1)
          {
            if (*v112 != v70)
            {
              objc_enumerationMutation(v67);
            }

            v72 = *(*(&v111 + 1) + 8 * i);
            v73 = [v72 operationType];

            if (v73 == @"unpair")
            {
              v74 = [v72 entry];
              v48 = [v74 operands];

              v75 = nr_daemon_log();
              v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);

              if (v76)
              {
                v77 = nr_daemon_log();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v119 = v48;
                  _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Override transaction operands, unpairing with: %@", buf, 0xCu);
                }
              }

              goto LABEL_48;
            }
          }

          v69 = [v67 countByEnumeratingWithState:&v111 objects:v115 count:16];
          if (v69)
          {
            continue;
          }

          break;
        }

        v48 = v66;
      }

LABEL_48:

      v78 = objc_opt_new();
      v79 = [EPRoutingSlipEntry alloc];
      v16 = v101;
      v80 = [(__CFString *)v101 UUIDString];
      v81 = v80;
      if (v80)
      {
        v82 = v80;
      }

      else
      {
        v82 = @"none";
      }

      v83 = [@"unpair-" stringByAppendingString:v82];
      v84 = [(EPRoutingSlipEntry *)v79 initWithName:v83 transactionClass:objc_opt_class() operands:v48];
      [v78 setEntry:v84];

      v85 = nr_daemon_log();
      v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);

      v23 = v109;
      if (v86)
      {
        v87 = nr_daemon_log();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v88 = [v78 entry];
          *buf = 138412290;
          v119 = v88;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Unpair transaction: %@", buf, 0xCu);

          v23 = v109;
        }
      }

      [v78 setRunningStatusCode:5];
      [v78 setPersistWhilePending:1];
      [v78 setNotUnrollable:1];
      v19 = v97;
      v89 = [v97 BOOLValue];
      v90 = &off_100175828;
      if (!v89)
      {
        v90 = &off_1001757F8;
      }

      [v78 setOperationType:*v90];
      [v78 setTargetPairingID:v101];
      [v78 setDidEnd:&stru_1001765C8];
      v17 = v99;
      if ([v22 isErrorSet])
      {
        v91 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
        v92 = v91;
        if (v91 && ([v91 isErrorSet] & 1) == 0)
        {
          [(EPServiceRegistry *)self->_serviceRegistry addService:v22];
        }

        v23 = v109;
      }

      [v96 addTransaction:v78];

      v20 = v103;
      v18 = v105;
      goto LABEL_63;
    }

    v46 = nr_daemon_log();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

    if (v47)
    {
      v107 = v21;
      v48 = nr_daemon_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v119 = "[NRPairingDaemon unpairDeviceWithPairingID:obliterationString:shouldBrick:storeUnpair:migrationUnpair:shouldPreserveESim:pairingReport:remoteUnpairRequestUUID:shouldConnectionWithDevice:]";
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: skipping unpair on pairing failure due to store demo setup", buf, 0xCu);
      }

LABEL_63:

      v21 = v107;
    }
  }
}

- (void)_archiveDevices:(id)a3 withCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v66 = +[NSMutableDictionary dictionary];
  v65 = +[NSDate date];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v5;
  v67 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v67)
  {
    v64 = *v83;
    v7 = _NRDevicePropertyMigrationCount;
    v63 = NRDevicePropertyIsActive;
    v62 = NRDevicePropertyLastInactiveDate;
    v61 = NRDevicePropertyIsPaired;
    v60 = NRDevicePropertyIsArchived;
    v59 = NRDevicePropertyMigrationConsent;
    v58 = NRDevicePropertyIsSetup;
    v57 = NRDevicePropertyMigrationConsentDate;
    v56 = _NRDevicePropertyBluetoothIdentifier;
    v75 = _NRDevicePropertyMigrationCount;
    v76 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v83 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v69 = v8;
        v9 = *(*(&v82 + 1) + 8 * v8);
        v10 = +[NSMutableDictionary dictionary];
        v11 = [v6 objectForKeyedSubscript:v9];
        v12 = [v11 objectForKeyedSubscript:v7];
        v13 = [v12 value];

        v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 integerValue] + 1);

        v15 = nr_daemon_log();
        LODWORD(v12) = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

        if (v12)
        {
          v16 = nr_daemon_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v87 = v9;
            v88 = 2114;
            v89 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[archiveDevices:withCollection] Updating migration counter for %{public}@ to %{public}@", buf, 0x16u);
          }
        }

        v74 = v14;
        v17 = [[NRDevicePropertyDiff alloc] initWithValue:v14];
        v18 = [[NRDevicePropertyDiffType alloc] initWithDiff:v17 andChangeType:1];
        v19 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];

        v20 = [[NRDevicePropertyDiffType alloc] initWithDiff:v19 andChangeType:1];
        v21 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanFalse];

        v71 = v21;
        v22 = v9;
        v23 = [[NRDevicePropertyDiffType alloc] initWithDiff:v21 andChangeType:1];
        v24 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
        v25 = [NRDevicePropertyDiffType alloc];
        v26 = [[NRDevicePropertyDiff alloc] initWithValue:v65];
        v27 = [v25 initWithDiff:v26 andChangeType:1];

        v73 = v18;
        [v10 setObject:v18 forKeyedSubscript:v75];
        [v10 setObject:v23 forKeyedSubscript:v63];
        v68 = v27;
        [v10 setObject:v27 forKeyedSubscript:v62];
        v70 = v23;
        v28 = v23;
        v29 = v24;
        [v10 setObject:v28 forKeyedSubscript:v61];
        v72 = v20;
        [v10 setObject:v20 forKeyedSubscript:v60];
        [v10 setObject:v24 forKeyedSubscript:v59];
        [v10 setObject:v24 forKeyedSubscript:v58];
        [v10 setObject:v24 forKeyedSubscript:v57];
        v30 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v10];
        v31 = [[NRDeviceDiffType alloc] initWithDiff:v30 andChangeType:1];
        [v66 setObject:v31 forKeyedSubscript:v22];
        v32 = [v76 objectForKeyedSubscript:v22];
        v33 = [v32 objectForKeyedSubscript:v56];
        v34 = [v33 value];

        v35 = nr_daemon_log();
        v36 = v35;
        if (v34)
        {
          v37 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

          if (v37)
          {
            v38 = nr_daemon_log();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v87 = v22;
              v88 = 2112;
              v89 = v34;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Unpairing archived watch device nr=%@ bt=%@ in IDS...", buf, 0x16u);
            }
          }

          v39 = dispatch_get_global_queue(17, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100028940;
          block[3] = &unk_100175598;
          v40 = v34;
          v80 = v40;
          v81 = v39;
          v41 = v39;
          dispatch_async(v41, block);
          v42 = nr_daemon_log();
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

          if (v43)
          {
            v44 = nr_daemon_log();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v87 = v40;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Done calling IDS to unpair %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v45 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

          if (!v45)
          {
            goto LABEL_24;
          }

          v41 = nr_daemon_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_1000FE54C(&v77, v78);
          }
        }

LABEL_24:
        v8 = v69 + 1;
        v7 = v75;
        v6 = v76;
      }

      while (v67 != (v69 + 1));
      v67 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v67);
  }

  if ([v66 count])
  {
    v46 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v66];
    v47 = nr_daemon_log();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

    if (v48)
    {
      v49 = nr_daemon_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = v46;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "archiveDevice:withCollection: Built diff: %@ for different phone migration", buf, 0xCu);
      }
    }

    v50 = [v6 applyDiff:v46];
    v51 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    v52 = objc_opt_new();
    v53 = [[EPRoutingSlipEntry alloc] initWithName:@"updateAppRemovability" transactionClass:objc_opt_class() operands:&__NSDictionary0__struct];
    [v52 setEntry:v53];

    [v51 addTransaction:v52];
  }
}

- (void)_forceMigrationSync:(id)a3 withCollection:(id)a4
{
  v5 = a3;
  v40 = a4;
  v39 = +[NSMutableDictionary dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v6)
  {
    v8 = v6;
    v38 = *v43;
    v9 = _NRDevicePropertyMigrationCount;
    *&v7 = 138543618;
    v36 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v12 = +[NSMutableDictionary dictionary];
        v13 = [v40 objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:v9];
        v15 = [v14 value];

        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 integerValue] + 1);

        v17 = nr_daemon_log();
        LODWORD(v15) = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

        if (v15)
        {
          v18 = nr_daemon_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v36;
            v47 = v11;
            v48 = 2114;
            v49 = v16;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating migration counter for %{public}@ to %{public}@", buf, 0x16u);
          }
        }

        v19 = [[NRDevicePropertyDiff alloc] initWithValue:v16];
        v20 = [[NRDevicePropertyDiffType alloc] initWithDiff:v19 andChangeType:1];
        [v12 setObject:v20 forKeyedSubscript:v9];
        v21 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v12];
        v22 = [[NRDeviceDiffType alloc] initWithDiff:v21 andChangeType:1];
        [v39 setObject:v22 forKeyedSubscript:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v8);
  }

  if ([v39 count])
  {
    v23 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v39];
    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = nr_daemon_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Built diff for same phone migration: %@", buf, 0xCu);
      }
    }

    v27 = [v40 applyDiff:v23];
    v28 = +[MSDKDemoState sharedInstance];
    v41 = 0;
    v29 = [v28 isStoreDemoModeEnabled:&v41];
    v30 = v41;

    v31 = nr_daemon_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v33 = nr_daemon_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v47) = v29;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo enabled: %{BOOL}d", buf, 8u);
      }
    }

    if (v30)
    {
      v34 = 0;
    }

    else
    {
      v34 = v29;
    }

    if ((v34 & 1) == 0)
    {
      v35 = +[NRQueue registryDaemonQueue];
      [v35 dispatchAsync:&stru_100176628];
    }
  }
}

- (void)createUnpairTransactionsWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100028FC8;
  v4[3] = &unk_100175FA0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NRPairingDaemon *)v5 purgeDiscoveredDevices:v4];
}

- (id)_migrationReporter
{
  v3 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  if (!v3)
  {
    v3 = [[NRRTCMigrationReporter alloc] initWithServiceRegistry:self->_serviceRegistry];
    [(EPServiceRegistry *)self->_serviceRegistry addService:v3];
  }

  return v3;
}

- (void)initBluetoothWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[NRSystemProperties sharedInstance];
  v6 = [v5 isBluetoothCapable];

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = &stru_10017A258;
      if (!v4)
      {
        v10 = @"no ";
      }

      v18 = 138412546;
      v19 = v10;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "initBluetoothWithBlock(%@block); device supports Bluetooth = %{BOOL}d.", &v18, 0x12u);
    }
  }

  if (v6)
  {
    if (v4)
    {
      [(NSLock *)self->_bluetoothInitBlockLock lock];
      bluetoothInitBlocks = self->_bluetoothInitBlocks;
      v12 = [v4 copy];
      [(NSMutableArray *)bluetoothInitBlocks addObject:v12];

      [(NSLock *)self->_bluetoothInitBlockLock unlock];
    }

    v13 = [CBCentralManager alloc];
    v14 = +[NRQueue registryDaemonQueue];
    v15 = [v14 queue];
    v16 = [v13 initWithDelegate:self queue:v15];
    central = self->_central;
    self->_central = v16;

    [(NRPairingDaemon *)self updateFromBTState];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)initNetworkRelayPairerWithBlock:(id)a3
{
  v3 = a3;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"block";
      if (!v3)
      {
        v7 = @"no block";
      }

      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "initNetworkRelayPairerWithBlock(%@)", &v11, 0xCu);
    }
  }

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating appropriate NetworkRelayPairer for Phone", &v11, 2u);
    }
  }

  if (v3)
  {
    v3[2](v3);
  }
}

- (void)setChipIDOfActiveDevice:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self chipIDOfActiveDeviceQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B7DC;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (NSNumber)chipIDOfActiveDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100023050;
  v11 = sub_100023060;
  v12 = 0;
  v3 = [(NRPairingDaemon *)self chipIDOfActiveDeviceQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002B90C;
  v6[3] = &unk_1001758D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)pairingCompatibilityVersionInitWithCollection:(id)a3
{
  v4 = a3;
  if (notify_register_check("com.apple.nanoregistry.activedevicechipid", &self->_activeDeviceChipIDNotifyToken))
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000FE610();
      }
    }
  }

  v8 = dispatch_queue_create("com.apple.nanoregistry.chipid.update", 0);
  [(NRPairingDaemon *)self setChipIDOfActiveDeviceQueue:v8];

  v9 = [v4 activeDevice];

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:NRDevicePropertyChipID];
    v11 = [v10 value];

    [(NRPairingDaemon *)self broadcastActiveDeviceChipID:v11 from:@"Init from active device in device collection"];
  }

  [(NRPairingDaemon *)self logIfVersionsAreOverridden];

  return 1;
}

- (void)updateMirrorWithCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 activeDevice];
  v22 = [v4 copyWithZone:0];

  v21 = [v3 activeDeviceID];
  v20 = [v3 paired];
  v5 = +[NSMutableDictionary dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = 0;
    v9 = *v32;
    v10 = _NRDevicePropertyBluetoothIdentifier;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        v14 = [v13 objectForKeyedSubscript:v10];
        v15 = [v14 value];

        if (v15)
        {
          [v5 setObject:v12 forKeyedSubscript:v15];
        }

        if ([v13 isPaired] && (objc_msgSend(v13, "isAltAccount") & 1) == 0)
        {
          v24 += [v13 isArchived] ^ 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v24 = 0;
  }

  v16 = +[NRQueue registryDaemonQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002BCF8;
  v25[3] = &unk_100176780;
  v25[4] = self;
  v26 = v5;
  v27 = v22;
  v28 = v21;
  v30 = v20;
  v29 = v24;
  v17 = v21;
  v18 = v22;
  v19 = v5;
  [v16 dispatchAsync:v25];
}

- (NRMutableDevice)mirrorOfActiveDevice
{
  v3 = +[NRQueue registryDaemonQueue];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  mirrorOfActiveDevice = self->_mirrorOfActiveDevice;

  return mirrorOfActiveDevice;
}

- (void)broadcastActiveDeviceChipID:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NRPairingDaemon *)self chipIDOfActiveDevice];
    if (v8 != v6)
    {
      v9 = [(NRPairingDaemon *)self chipIDOfActiveDevice];
      v10 = [v9 isEqual:v6];

      if (v10)
      {
        goto LABEL_8;
      }

      v11 = nr_daemon_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (!v12)
      {
        goto LABEL_8;
      }

      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ChipID %@ broadcast from %@", &v13, 0x16u);
      }
    }

LABEL_8:
    [(NRPairingDaemon *)self updateNotifyToken:self->_activeDeviceChipIDNotifyToken withValue:[v6 unsignedLongLongValue] withNotificationName:@"com.apple.nanoregistry.activedevicechipid" alwaysPost:0];
    [(NRPairingDaemon *)self setChipIDOfActiveDevice:v6];
    [(NRLocalPropertyMonitor *)self->_localProperties setRemoteDeviceChipIDNumber:v6];
  }
}

- (void)setupSignalHandlers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C10C;
  block[3] = &unk_100175660;
  block[4] = self;
  if (qword_1001B37B8 != -1)
  {
    dispatch_once(&qword_1001B37B8, block);
  }
}

- (void)sigTerm
{
  v2 = +[NRQueue registryDaemonQueue];
  [v2 dispatchAsync:&stru_1001767C0];
}

- (void)sigUsr1
{
  v4 = [(NRPairingDaemon *)self dumpStateGivenCachedHistoryIndex:0];
  v2 = objc_opt_class();
  v3 = [v4 objectForKeyedSubscript:@"NROSLogStateStateString"];
  [v2 debugDump:v3 public:1];
}

+ (void)debugDump:(id)a3 public:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 componentsSeparatedByString:@"\n"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = nr_daemon_log();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

        if (v4)
        {
          if (!v12)
          {
            goto LABEL_13;
          }

          v13 = nr_daemon_log();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          *buf = 138543362;
          v22 = v10;
          v14 = v13;
          v15 = "%{public}@";
          goto LABEL_16;
        }

        if (!v12)
        {
          goto LABEL_13;
        }

        v13 = nr_daemon_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v10;
          v14 = v13;
          v15 = "%@";
LABEL_16:
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
        }

LABEL_12:

LABEL_13:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v16 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      v7 = v16;
    }

    while (v16);
  }
}

- (void)initIDSService:(Class)a3 block:(id)a4
{
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100023050;
  v24 = sub_100023060;
  v25 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:a3];
  if (v21[5])
  {
    v7 = +[NRQueue registryDaemonQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002C9EC;
    v13[3] = &unk_100176838;
    v15 = &v20;
    v14 = v6;
    [v7 dispatchAsync:v13];
  }

  else
  {
    self->_initRemoteProperties = 1;
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromClass(a3);
        *buf = 138412546;
        v27 = v11;
        v28 = 2080;
        v29 = "connected";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initIDSService: Initializing class %@ as %s", buf, 0x16u);
      }
    }

    v12 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C84C;
    block[3] = &unk_100176810;
    v18 = &v20;
    v19 = a3;
    block[4] = self;
    v17 = v6;
    dispatch_async(v12, block);
  }

  _Block_object_dispose(&v20, 8);
}

+ (id)countdown:(int64_t)a3 toCompletion:(id)a4
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2810000000;
  v31[3] = "";
  v32 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10002CCE8;
  v28 = sub_10002CD14;
  v29 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10002CD1C;
  v18 = &unk_100176888;
  v20 = v31;
  v21 = v30;
  v22 = &v24;
  v23 = a3;
  v5 = a4;
  v19 = v5;
  v6 = objc_retainBlock(&v15);
  v7 = v25[5];
  v25[5] = v6;

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v25[5]);
      v12 = [NSNumber numberWithInteger:a3, v15, v16, v17, v18];
      *buf = 134218242;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%p] countdown:%@ toCompletion: --started--", buf, 0x16u);
    }
  }

  v13 = objc_retainBlock(v25[5]);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);

  return v13;
}

- (void)initializeTrafficClassBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D198;
  v7[3] = &unk_100175FA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NRPairingDaemon *)self initIDSService:v5 block:v7];
}

- (void)areWePairedOrPairing:(id)a3
{
  v4 = a3;
  v5 = +[EPNanoRegistryStatusCodeElection sharedInstance];
  if ([v5 statusCode] == 1)
  {
  }

  else
  {
    v6 = +[EPNanoRegistryStatusCodeElection sharedInstance];
    v7 = [v6 statusCode];

    if (v7 != 4)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10002D6B0;
      v8[3] = &unk_100176928;
      v9 = v4;
      [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];

      goto LABEL_6;
    }
  }

  (*(v4 + 2))(v4, 1);
LABEL_6:
}

- (void)initializeAllIDSChannelsBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002DA90;
  v25[3] = &unk_100175FA0;
  v25[4] = self;
  v26 = v4;
  v6 = v4;
  [v5 countdown:5 toCompletion:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002DB40;
  v7 = v23[3] = &unk_100175D58;
  v24 = v7;
  [(NRPairingDaemon *)self initializeTrafficClassBlock:v23];
  v8 = objc_opt_class();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002DB58;
  v21[3] = &unk_100175D58;
  v9 = v7;
  v22 = v9;
  [(NRPairingDaemon *)self initIDSService:v8 block:v21];
  v10 = objc_opt_class();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002DB70;
  v19[3] = &unk_100175D58;
  v11 = v9;
  v20 = v11;
  [(NRPairingDaemon *)self initIDSService:v10 block:v19];
  v12 = objc_opt_class();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002DB88;
  v17[3] = &unk_100175D58;
  v13 = v11;
  v18 = v13;
  [(NRPairingDaemon *)self initIDSService:v12 block:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002DBA0;
  v15[3] = &unk_100176900;
  v15[4] = self;
  v16 = v13;
  v14 = v13;
  [(NRPairingDaemon *)self areWePairedOrPairing:v15];
}

- (void)invalidateIDSChannels
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = @"class-a";
      v8 = 2112;
      v9 = @"class-c";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating IDS channels %@ and %@.", &v6, 0x16u);
    }
  }

  [(NRPairingDaemon *)self voidIDSService:objc_opt_class()];
  [(NRPairingDaemon *)self voidIDSService:objc_opt_class()];
}

- (id)dumpStateGivenCachedHistoryIndex:(unint64_t)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100023050;
  v22 = sub_100023060;
  v23 = +[NSMutableString string];
  v5 = +[NSDate date];
  v6 = v19[5];
  [v5 timeIntervalSince1970];
  [v6 appendFormat:@"Dump timestamp: %.6f", v7];
  [v19[5] appendString:@"\nActive assertions:\n"];
  [(NRPairingDaemon *)self assertionDescription:v19[5]];
  [v19[5] appendString:@"Transaction Coordinator:\n"];
  v8 = +[NRQueue registryDaemonQueue];
  v9 = [v8 queue];
  dispatch_assert_queue_not_V2(v9);

  v10 = +[NRQueue registryDaemonQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002E1BC;
  v17[3] = &unk_100176950;
  v17[4] = self;
  v17[5] = &v18;
  [v10 dispatchSync:v17];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002E2A8;
  v16[3] = &unk_100176978;
  v16[4] = self;
  v16[5] = &v24;
  v16[6] = &v18;
  v16[7] = a3;
  [(NRPairingDaemon *)self enqueueBypass:v16];
  v11 = [NSMutableDictionary alloc];
  v12 = [NSNumber numberWithUnsignedLongLong:v25[3]];
  v13 = [v11 initWithObjectsAndKeys:{v12, @"NROSLogStateHistoryIndex", 0}];

  v14 = v19[5];
  if (v14)
  {
    [v13 setObject:v14 forKeyedSubscript:@"NROSLogStateStateString"];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

- (void)preFirstUnlockInitCompletion:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "preFirstUnlockInit", buf, 2u);
    }
  }

  v8 = objc_opt_class();
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10002E854;
  v30[3] = &unk_100175FA0;
  v30[4] = self;
  v31 = v4;
  v9 = v4;
  v10 = [v8 countdown:4 toCompletion:v30];
  [(NRPairingDaemon *)self setupSignalHandlers];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10002E968;
  v29[3] = &unk_1001769A0;
  v29[4] = self;
  v11 = [[NROSLogStateProvider alloc] initWithName:@"com.apple.nanoregistry" maxStringLength:0x20000 block:v29];
  dumper = self->_dumper;
  self->_dumper = v11;

  mach_timebase_info(&stru_1001B37C0);
  [(NRPairingDaemon *)self allocateDictionaries];
  [(NRPairingDaemon *)self setUpHistoryCompletionBlocks];
  v13 = [EPStaticServiceRegistry alloc];
  v14 = +[NRQueue registryDaemonQueue];
  v15 = [v14 queue];
  v16 = [(EPStaticServiceRegistry *)v13 initWithQueue:v15];
  serviceRegistry = self->_serviceRegistry;
  self->_serviceRegistry = v16;

  [(EPServiceRegistry *)self->_serviceRegistry addService:self];
  v18 = [(EPServiceRegistry *)self->_serviceRegistry instantiateServiceByClass:objc_opt_class()];
  v19 = [(EPServiceRegistry *)self->_serviceRegistry instantiateServiceByClass:objc_opt_class()];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002E974;
  v27[3] = &unk_100175D58;
  v20 = v10;
  v28 = v20;
  [(NRPairingDaemon *)self normalizeDaemonStateWithBlock:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002E98C;
  v25[3] = &unk_100175D58;
  v21 = v20;
  v26 = v21;
  [(NRPairingDaemon *)self cleanupPairingStoreWithCompletion:v25];
  [(NRPairingDaemon *)self ackXPCEvents];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002E9A4;
  v23[3] = &unk_1001768D8;
  v23[4] = self;
  v24 = v21;
  v22 = v21;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v23];
  v22[2](v22, @"preFirstUnlockInitCompletion");
}

- (void)postFirstUnlockInitBlock:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "postFirstUnlockInit", &buf, 2u);
    }
  }

  if (self->_useNetworkRelayPairing)
  {
    v8 = 7;
  }

  else
  {
    v8 = 6;
  }

  v9 = objc_opt_class();
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10002F344;
  v68[3] = &unk_100175FA0;
  v68[4] = self;
  v50 = v4;
  v69 = v50;
  v10 = [v9 countdown:v8 toCompletion:v68];
  v11 = [NSSet setWithObject:@"migrationRetryWrapper"];
  [NRPowerAssertionActivity addActivityGroup:v11];

  v12 = [NSSet setWithObject:@"syncActive"];
  [NRPowerAssertionActivity addActivityGroup:v12];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10002F7B8;
  v66[3] = &unk_100175D58;
  v13 = v10;
  v67 = v13;
  [(NRPairingDaemon *)self deleteUnexpectedIDSPairedDevicesWithCompletion:v66];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10002F7D0;
  v64[3] = &unk_100175D58;
  v14 = v13;
  v65 = v14;
  [(NRPairingDaemon *)self initializeAllIDSChannelsBlock:v64];
  v15 = +[NRLocalPropertyMonitor sharedInstance];
  localProperties = self->_localProperties;
  self->_localProperties = v15;

  [(NRLocalPropertyMonitor *)self->_localProperties addPropertyObserver:self];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10002F7E8;
  v62[3] = &unk_100175D58;
  v17 = v14;
  v63 = v17;
  [(NRPairingDaemon *)self initBluetoothWithBlock:v62];
  if (self->_useNetworkRelayPairing)
  {
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10002F800;
    v60[3] = &unk_100175D58;
    v61 = v17;
    [(NRPairingDaemon *)self initNetworkRelayPairerWithBlock:v60];
  }

  v18 = [(EPServiceRegistry *)self->_serviceRegistry instantiateServiceByClass:objc_opt_class()];
  v19 = [(EPServiceRegistry *)self->_serviceRegistry instantiateServiceByClass:objc_opt_class()];
  v20 = +[NRTermsAcknowledgementRegistryService sharedInstance];
  [v20 setDelegate:self];
  [v20 resume];
  [(EPServiceRegistry *)self->_serviceRegistry addService:v20];
  v49 = [[NRSystemVersionRequestService alloc] initWithServiceRegistry:self->_serviceRegistry];
  [(EPServiceRegistry *)self->_serviceRegistry addService:?];
  [(NRPairingDaemon *)self setUpClientReferenceCounters];
  v21 = [(EPServiceRegistry *)self->_serviceRegistry instantiateServiceByClass:objc_opt_class()];
  v22 = [(EPServiceRegistry *)self->_serviceRegistry instantiateServiceByClass:objc_opt_class()];
  v23 = +[NRFeatureFlags sharedInstance];
  v24 = [v23 watchTransfer];

  if (v24)
  {
    v25 = [[WatchTransferManager alloc] initWithServiceRegistry:self->_serviceRegistry];
    [(EPServiceRegistry *)self->_serviceRegistry addService:v25];
  }

  if (!self->_keymaster)
  {
    v26 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    objc_initWeak(&buf, self);
    v27 = [EPKeymaster alloc];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10002F818;
    v57[3] = &unk_1001769C8;
    objc_copyWeak(&v58, &buf);
    v28 = +[NRQueue registryDaemonQueue];
    v29 = [v28 queue];
    v30 = [(EPKeymaster *)v27 initWithKeyName:@"migration2" shouldExport:1 unlockAssertionManager:v26 okayToCreateKeyBlock:v57 queue:v29];
    keymaster = self->_keymaster;
    self->_keymaster = v30;

    [(EPServiceRegistry *)self->_serviceRegistry addService:self->_keymaster];
    v32 = [(EPServiceRegistry *)self->_serviceRegistry instantiateServiceByClass:objc_opt_class()];
    objc_destroyWeak(&v58);
    objc_destroyWeak(&buf);
  }

  serviceRegistry = self->_serviceRegistry;
  v34 = +[NRRepeatingAlertEngine sharedInstance];
  [(EPServiceRegistry *)serviceRegistry addService:v34];

  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10002F860;
  v55[3] = &unk_1001768D8;
  v55[4] = self;
  v35 = v17;
  v56 = v35;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v55];
  v36 = objc_opt_new();
  connectivityPublisher = self->_connectivityPublisher;
  self->_connectivityPublisher = v36;

  v38 = [(EPServiceRegistry *)self->_serviceRegistry instantiateServiceByClass:objc_opt_class()];
  v39 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v40 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v39 addObserver:v40];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10002F91C;
  v53[3] = &unk_100175D58;
  v41 = v35;
  v54 = v41;
  [(NRPairingDaemon *)self createUnpairTransactionsWithCompletion:v53];
  v42 = +[NetworkRelayAgent sharedInstance];
  [v42 addDelegate:self];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10002F934;
  v51[3] = &unk_100175948;
  v43 = v42;
  v52 = v43;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v51];
  v44 = +[NRSystemProperties sharedInstance];
  v45 = [v44 isVirtualDevice];

  if (v45)
  {
    v46 = nr_daemon_log();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

    if (v47)
    {
      v48 = nr_daemon_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Virtual device, setting device limit to 1", &buf, 2u);
      }
    }

    CFPreferencesSetAppValue(@"maxAllPairedDeviceCount", &off_100186BC8, @"com.apple.NanoRegistry");
    CFPreferencesAppSynchronize(@"com.apple.NanoRegistry");
  }

  (*(v41 + 2))(v41, @"postFirstUnlockInitBlock");
}

- (void)lastPairedDeviceWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002FA9C;
  v6[3] = &unk_100176A40;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disableSatelliteDisconnect", @"com.apple.NanoRegistry", 0);
  v7 = v4;
  v5 = v4;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v6];
}

- (void)enqueueSetLastPairedDeviceTransactionWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003045C;
  v4[3] = &unk_100176A90;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NRPairingDaemon *)v5 lastPairedDeviceWithBlock:v4];
}

- (void)transactionCoordinatorHasBecomeIdle
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transactionCoordinatorHasBecomeIdle", v7, 2u);
    }
  }

  v6 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  if ([v6 idle])
  {
    [(NRPairingDaemon *)self _transactionCoordinatorHasBecomeIdle];
  }
}

- (void)_transactionCoordinatorHasBecomeIdle
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_transactionCoordinatorHasBecomeIdle", buf, 2u);
    }
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = sub_100023050;
  v17 = sub_100023060;
  v18 = [NROSTransaction transactionWithName:@"idleTasks"];
  v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v7 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v8 = [v7 assertions];
  v9 = [v8 count];

  if (v9)
  {
    [v6 resume];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100030A54;
    v10[3] = &unk_100176B08;
    v10[4] = self;
    v11 = v6;
    v12 = buf;
    [(NRPairingDaemon *)self enqueueSetLastPairedDeviceTransactionWithCompletion:v10];
  }

  _Block_object_dispose(buf, 8);
}

- (void)purgeDiscoveredDevices:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[NRPairingDaemon purgeDiscoveredDevices:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100030FB8;
  v9[3] = &unk_100176B30;
  v10 = v4;
  v8 = v4;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v9];
}

- (void)syncPairingClientCrashMonitoringCache
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restoring crash monitoring", buf, 2u);
    }
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  *buf = 0;
  v27 = buf;
  v28 = 0x3032000000;
  v29 = sub_100023050;
  v30 = sub_100023060;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100023050;
  v24[4] = sub_100023060;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v18 = sub_10003156C;
  v19 = &unk_100176B58;
  v20 = self;
  v21 = &v32;
  v22 = v24;
  v23 = buf;
  v6 = v17;
  os_unfair_lock_lock_with_options();
  v18(v6);

  os_unfair_lock_unlock(&self->_pairingQueueWriteLock);
  if (*(v27 + 5))
  {
    if (*(v33 + 24) == 1)
    {
      v7 = nr_daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = nr_daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restoring suspend crash monitoring", v16, 2u);
        }
      }

      v10 = +[NRQueue delayPairingRequestQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100031618;
      v15[3] = &unk_1001756D0;
      v15[4] = self;
      v15[5] = buf;
      v15[6] = v24;
      [v10 dispatchAsync:v15];
    }

    else
    {
      v11 = nr_daemon_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = nr_daemon_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Restoring resume crash monitoring", v16, 2u);
        }
      }

      v10 = +[NRQueue delayPairingRequestQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000316C0;
      v14[3] = &unk_1001756D0;
      v14[4] = self;
      v14[5] = buf;
      v14[6] = v24;
      [v10 dispatchAsync:v14];
    }
  }

  _Block_object_dispose(v24, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v32, 8);
}

- (BOOL)setPairingClientCrashMonitoringCache:(BOOL)a3 proxy:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v10 = "NO";
      }

      else
      {
        v10 = "YES";
      }

      v11 = [v6 appPath];
      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting crash monitoring %s for %@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v17 = sub_10003196C;
  v18 = &unk_100176B80;
  v19 = self;
  v21 = buf;
  v22 = v4;
  v12 = v6;
  v20 = v12;
  v13 = v16;
  os_unfair_lock_lock_with_options();
  v17(v13);

  os_unfair_lock_unlock(&self->_pairingQueueWriteLock);
  v14 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v14 & 1;
}

- (void)cleanupPairingStoreWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031B5C;
  v4[3] = &unk_100176BA8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NRPairingDaemon *)v5 grabHistoryWithReadBlock:v4];
}

- (void)debounceOnQueue:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NRPairingDaemon debounceOnQueue:block:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
    }
  }

  if (v6 && v7)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x3032000000;
    v33 = sub_100023050;
    v34 = sub_100023060;
    v35 = 0;
    mcDebounceSource = self->_mcDebounceSource;
    if (mcDebounceSource || ([NROSTransaction transactionWithName:@"debounceOnQueue"], v12 = objc_claimAutoreleasedReturnValue(), v13 = *(*(&buf + 1) + 40), *(*(&buf + 1) + 40) = v12, v13, (mcDebounceSource = self->_mcDebounceSource) != 0))
    {
      dispatch_source_cancel(mcDebounceSource);
      v14 = self->_mcDebounceSource;
      self->_mcDebounceSource = 0;
    }

    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
    v16 = self->_mcDebounceSource;
    self->_mcDebounceSource = v15;

    v17 = self->_mcDebounceSource;
    if (v17)
    {
      v18 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      v19 = self->_mcDebounceSource;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100032148;
      handler[3] = &unk_100176BD0;
      handler[4] = self;
      v29 = v7;
      p_buf = &buf;
      dispatch_source_set_event_handler(v19, handler);
      dispatch_resume(self->_mcDebounceSource);
    }

    else
    {
      v23 = nr_daemon_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v25 = nr_daemon_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Could not create dispatch source", v27, 2u);
        }
      }

      v7[2](v7);
      v26 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v20 = nr_daemon_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = nr_daemon_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Invalid debounce parameter", &buf, 2u);
      }
    }
  }
}

- (void)ackXPCEvents
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100023050;
  v14[4] = sub_100023060;
  v15 = [NROSTransaction transactionWithName:@"waitForLaunchEvents"];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ackXPCEvents", buf, 2u);
    }
  }

  [(NRPairingDaemon *)self checkLaunchNotificationsSetup];
  v6 = [NRQueue globalQueueWithIdentifier:21];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000324A8;
  v12[3] = &unk_100175880;
  v12[4] = v14;
  [v6 dispatchAsync:v12];

  v7 = +[NRQueue registryDaemonQueue];
  v8 = [v7 queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000324F0;
  v11[3] = &unk_100176C60;
  v11[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v8, v11);

  v9 = +[NRQueue registryDaemonQueue];
  v10 = [v9 queue];
  xpc_set_event_stream_handler("com.apple.MobileGestalt.MobileGestaltEvents", v10, &stru_100176CA0);

  _Block_object_dispose(v14, 8);
}

- (void)allocateDictionaries
{
  v3 = +[NSMutableArray array];
  bluetoothInitBlocks = self->_bluetoothInitBlocks;
  self->_bluetoothInitBlocks = v3;

  v5 = objc_alloc_init(NSLock);
  bluetoothInitBlockLock = self->_bluetoothInitBlockLock;
  self->_bluetoothInitBlockLock = v5;

  v7 = +[NSMutableSet set];
  outstandingBluetoothConnectRequests = self->_outstandingBluetoothConnectRequests;
  self->_outstandingBluetoothConnectRequests = v7;

  if (!self->_bluetoothDiscoveryEventDedupe)
  {
    v9 = +[NSMutableSet set];
    bluetoothDiscoveryEventDedupe = self->_bluetoothDiscoveryEventDedupe;
    self->_bluetoothDiscoveryEventDedupe = v9;

    _objc_release_x1(v9, bluetoothDiscoveryEventDedupe);
  }
}

- (int)getNotifyTokenWithName:(id)a3
{
  v3 = a3;
  out_token = -1;
  if (notify_register_check([v3 UTF8String], &out_token))
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to get notify token for %@", buf, 0xCu);
      }
    }
  }

  v7 = out_token;

  return v7;
}

- (void)updateNotifyToken:(int)a3 withValue:(unint64_t)a4 withNotificationName:(id)a5 alwaysPost:(BOOL)a6
{
  v6 = a6;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100032EA4;
  v18[3] = &unk_100176CC8;
  v9 = a5;
  v19 = v9;
  v20 = a4;
  v21 = a3;
  v10 = objc_retainBlock(v18);
  if (a3 == -1)
  {
    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000FE93C();
      }
    }
  }

  else if (v6 || (v17 = 0, notify_get_state(a3, &v17), v17 != a4))
  {
    (v10[2])(v10);
  }

  else
  {
    v11 = nr_daemon_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = nr_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v9;
        v24 = 2048;
        v25 = a4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping token %@ update, looks like it is already set to value %lld", buf, 0x16u);
      }
    }
  }
}

- (unint64_t)readNotifyToken:(int)a3
{
  if (a3 == -1)
  {
    return 0;
  }

  state64 = 0;
  if (notify_get_state(a3, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

- (void)registerManagedConfigurationChanged:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Registering for managed configuration updates", buf, 2u);
    }
  }

  if (!self->_mcConnection)
  {
    v8 = +[MCProfileConnection sharedConnection];
    mcConnection = self->_mcConnection;
    self->_mcConnection = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = MCEffectiveSettingsChangedNotification;
    v12 = self->_mcConnection;
    v13 = +[NSOperationQueue mainQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100033180;
    v16[3] = &unk_100176CF0;
    v17 = v4;
    v14 = [v10 addObserverForName:v11 object:v12 queue:v13 usingBlock:v16];
    mcConnectionSettingsChangedNotificationToken = self->_mcConnectionSettingsChangedNotificationToken;
    self->_mcConnectionSettingsChangedNotificationToken = v14;
  }
}

- (BOOL)managedConfigurationWatchDisabled
{
  mcConnection = self->_mcConnection;
  if (!mcConnection)
  {
    v4 = +[MCProfileConnection sharedConnection];
    v5 = self->_mcConnection;
    self->_mcConnection = v4;

    mcConnection = self->_mcConnection;
  }

  v6 = [(MCProfileConnection *)mcConnection effectiveBoolValueForSetting:MCFeaturePairedWatchAllowed];
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "managedConfigurationWatchDisabled = %ld", &v11, 0xCu);
    }
  }

  return v6 == 2;
}

- (BOOL)isSecureDataAvailable
{
  v2 = [(NRPairingDaemon *)self secureProperties];
  v3 = v2 != 0;

  return v3;
}

- (void)normalizeDaemonStateWithBlock:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[NRPairingDaemon normalizeDaemonStateWithBlock:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: trace", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100033424;
  v9[3] = &unk_100176BA8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(NRPairingDaemon *)self grabHistoryWithReadBlock:v9];
}

- (void)getEnsureActiveDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[NRPairingDaemon getEnsureActiveDeviceWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: trace", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100033828;
  v9[3] = &unk_100176928;
  v10 = v4;
  v8 = v4;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v9];
}

- (void)voidIDSService:(Class)a3
{
  v4 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:a3];
  [(EPServiceRegistry *)self->_serviceRegistry removeService:v4];
  [v4 invalidate];
}

- (BOOL)isBluetoothConnected
{
  v3 = [(CBCentralManager *)self->_central state];

  return [(NRPairingDaemon *)self isBluetoothConnected:v3];
}

- (BOOL)isBluetoothPoweredOn
{
  v3 = [(CBCentralManager *)self->_central state];

  return [(NRPairingDaemon *)self isBluetoothPoweredOn:v3];
}

- (void)updateIsPairedTelemetryKey
{
  if (!qword_1001B37C8)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateIsPairedTelemetryKey" selector:0 userInfo:1 repeats:43200.0];
    v4 = qword_1001B37C8;
    qword_1001B37C8 = v3;
  }

  [(NRPairingDaemon *)self grabRegistryWithReadBlock:&stru_100176D30];
}

- (void)forceEndDiscovery
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[NRPairingDaemon forceEndDiscovery]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: trace", &v14, 0xCu);
    }
  }

  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Making the call to Bluetooth central stopScan", &v14, 2u);
    }
  }

  [(CBCentralManager *)self->_central stopScan];
  self->_bluetoothIsScanning = 0;
  if (self->_useNetworkRelayPairing && self->_networkRelayPairerIsScanning)
  {
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Making the call to NetworkRelayPairer to stop discovery", &v14, 2u);
      }
    }

    v12 = +[NRNetworkRelayPair sharedInstance];
    [v12 stopScanningForCandidatesWithDelegate:self];
    self->_networkRelayPairerIsScanning = 0;
  }

  [(NSMutableSet *)self->_bluetoothDiscoveryEventDedupe removeAllObjects];
  [(NRSimpleReferenceCounter *)self->_pushingClients removeAllObjects];
  [(NRSimpleReferenceCounter *)self->_discoveringClients removeAllObjects];
  discoveryTransaction = self->_discoveryTransaction;
  self->_discoveryTransaction = 0;
}

- (void)sendXPCDeviceNeedsPasscodeMessage:(id)a3 passcode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 UUIDString];
      v12 = v11;
      v13 = @"present";
      if (!v7)
      {
        v13 = @"absent";
      }

      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sendXPCDeviceNeedsPasscodeMessage: pairingID=%{public}@ passcode=%@", buf, 0x16u);
    }
  }

  pairingClients = self->_pairingClients;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000341CC;
  v17[3] = &unk_100176D58;
  v18 = v6;
  v19 = v7;
  v15 = v7;
  v16 = v6;
  [(NRSimpleReferenceCounter *)pairingClients enumerateObjects:v17];
}

- (void)refreshPropertyCache
{
  v3 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v4 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v5 = [(NRMutableDevice *)self->_mirrorOfActiveDevice objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v6 = [v5 value];

  v7 = [v3 defaultPairedDevice];
  if (([v7 isConnected] & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = [v3 defaultPairedDevice];
  v9 = [v8 nsuuid];
  if (([v6 isEqual:v9] & 1) == 0)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v10 = [v4 defaultPairedDevice];
  if (![v10 isConnected])
  {

    goto LABEL_12;
  }

  v11 = [v4 defaultPairedDevice];
  v12 = [v11 nsuuid];
  v16 = [v6 isEqual:v12];

  if (v16)
  {
    if (self->_initRemoteProperties)
    {
      self->_initRemoteProperties = 0;
      v13 = nr_daemon_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v15 = nr_daemon_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "refreshPropertyCache: IDS is paired AND connected! Sending all the properties now.", buf, 2u);
        }
      }

      [(NRLocalPropertyMonitor *)self->_localProperties registerForNotifications];
      [(NRLocalPropertyMonitor *)self->_localProperties refreshPropertyCache];
      [(NRPairingDaemon *)self initializeTrafficClassBlock:0];
    }

    else
    {
      [(NRLocalPropertyMonitor *)self->_localProperties pollProperties];
    }
  }

LABEL_14:
}

- (void)deleteLocalPairingStore:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 UUIDString];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deviceID=%{public}@", &v13, 0xCu);
    }
  }

  if (v5)
  {
    v10 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    v11 = +[NRQueue registryDaemonQueue];
    v12 = [v11 queue];
    [v10 deletePairedStoreWithUUID:v5 withQueue:v12 withCompletion:0];
  }
}

- (void)updateDeviceID:(id)a3 withProperties:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v9 count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100034C9C;
    v11[3] = &unk_100176DD0;
    v12 = v9;
    v13 = v8;
    v14 = self;
    v15 = v10;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v11];
  }
}

- (void)deleteUnexpectedIDSPairedDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[NRPairingDaemon deleteUnexpectedIDSPairedDevicesWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: trace", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100035224;
  v9[3] = &unk_1001768D8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v9];
}

- (void)purgeIDSPairedDevicesExceptFor:(id)a3 withQueue:(id)a4 andCompletion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3020000000;
  v33 = 2;
  v10 = dispatch_queue_create("com.apple.NanoRegistry.purgeIDSPairedDevicesExceptFor", 0);
  v11 = dispatch_get_global_queue(25, 0);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100035974;
  v28[3] = &unk_100176E20;
  v30 = v9;
  v31 = v32;
  v29 = v8;
  v12 = v8;
  v13 = v9;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100035A38;
  v23[3] = &unk_100176E98;
  v24 = v7;
  v25 = v11;
  v27 = objc_retainBlock(v28);
  v14 = v10;
  v26 = v14;
  v15 = v27;
  v16 = v11;
  v17 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035F64;
  block[3] = &unk_100175688;
  v21 = v14;
  v22 = objc_retainBlock(v23);
  v18 = v14;
  v19 = v22;
  dispatch_async(v16, block);

  _Block_object_dispose(v32, 8);
}

- (id)IDSGetPairedDevices
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100023050;
  v18 = sub_100023060;
  v19 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(21, 0);
  IDSGetPairedDevicesWithCompletionBlock();

  v4 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v2, v4))
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDS returned paired devices: nil", buf, 2u);
      }
    }

    v8 = 0;
  }

  else
  {
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v15[5];
        *buf = 138543362;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "IDS returned paired devices: %{public}@", buf, 0xCu);
      }
    }

    v8 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (void)setStatusCode:(unint64_t)a3 InCollection:(id)a4
{
  v14 = a4;
  v5 = [v14 activeDevice];

  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [NRDevicePropertyDiff alloc];
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    v9 = [v7 initWithValue:v8];

    v10 = [[NRDevicePropertyDiffType alloc] initWithDiff:v9 andChangeType:1];
    [v6 setObject:v10 forKeyedSubscript:_NRDevicePropertyStatusCode];
    v11 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v6];
    v12 = [v14 activeDevice];
    v13 = [v12 applyDiff:v11];
  }
}

- (void)statusCodeManager:(id)a3 electionOutcomeChanged:(unint64_t)a4
{
  [(NRPairingDaemon *)self setLastStatusCodeCache:a4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003644C;
  v6[3] = &unk_100176EE8;
  v6[4] = self;
  v6[5] = a4;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v6];
}

- (void)_updateCompatibilityStateForDeviceID:(id)a3 withDeviceCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v48 = v6;
      v49 = 1024;
      LODWORD(v50) = [v8 isActive];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating compatibility state for device with pairing ID %{public}@; active = %{BOOL}d", buf, 0x12u);
    }
  }

  v12 = [v8 objectForKeyedSubscript:NRDevicePropertyModelNumber];
  v13 = [v12 value];

  v14 = [v8 objectForKeyedSubscript:_NRDevicePropertyCompatibilityState];
  v15 = [v14 value];

  v16 = [v8 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v46 = [v16 value];

  v17 = [v8 objectForKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];
  v18 = [v17 value];

  v19 = [v8 objectForKeyedSubscript:_NRDevicePropertyStatusCode];
  v20 = [v19 value];
  v44 = [v20 integerValue];

  v21 = [v8 objectForKeyedSubscript:NRDevicePropertyChipID];
  v22 = [v21 value];

  if (v18)
  {
    v45 = v15;
    v43 = v13;
    v23 = [v18 integerValue];
    v24 = +[NRPairingCompatibilityVersionInfo systemVersions];
    if (v23 < [v24 minPairingCompatibilityVersionWithChipID] || v22)
    {
      v42 = self;
      v27 = [v24 minPairingCompatibilityVersionForChipID:v22];
      v28 = nr_daemon_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v30 = nr_daemon_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v24 maxPairingCompatibilityVersion];
          *buf = 134218496;
          v48 = v23;
          v49 = 2048;
          v50 = v27;
          v51 = 2048;
          v52 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "watchVersion: %ld;                      allowedMinimumWatchVersion: %ld;                      maxPairingCompatibilityVersion: %ld", buf, 0x20u);
        }
      }

      v25 = &__kCFBooleanTrue;
      v32 = v23 < v27;
      self = v42;
      if (!v32 && v23 <= [v24 maxPairingCompatibilityVersion])
      {
        v25 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v25 = 0;
    }

    v33 = nr_daemon_log();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

    if (v34)
    {
      v35 = nr_daemon_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v25 BOOLValue];
        v37 = @"NO";
        if (v36)
        {
          v37 = @"YES";
        }

        *buf = 138412290;
        v48 = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Is device rev locked %@", buf, 0xCu);
      }
    }

    if (![v8 isPaired])
    {
      v13 = v43;
      v39 = [v8 isArchived] & (v44 != 4);
      if (v39)
      {
        v38 = &off_100186BE0;
      }

      else
      {
        v38 = &off_100186C58;
      }

      v26 = v46;
      if ((v39 & 1) != 0 || !v43)
      {
        goto LABEL_39;
      }

      v40 = [v25 BOOLValue];
      v41 = &off_100186C40;
      goto LABEL_36;
    }

    v13 = v43;
    v26 = v46;
LABEL_26:
    if ([v8 isArchived])
    {
      v38 = &off_100186BE0;
LABEL_39:
      v15 = v45;
      [(NRPairingDaemon *)self _updateCompatibilityStateForDeviceID:v6 withDeviceCollection:v7 oldCompatibilityState:v45 newCompatibilityState:v38];

      goto LABEL_40;
    }

    v40 = [v25 BOOLValue];
    v41 = &off_100186C10;
    if (!v26)
    {
      v41 = &off_100186C28;
    }

LABEL_36:
    if (v40)
    {
      v41 = &off_100186BF8;
    }

    v38 = v41;
    goto LABEL_39;
  }

  v26 = v46;
  if ([v8 isPaired])
  {
    v45 = v15;
    v25 = 0;
    goto LABEL_26;
  }

LABEL_40:
}

- (void)_updateCompatibilityStateForDeviceID:(id)a3 withDeviceCollection:(id)a4 oldCompatibilityState:(id)a5 newCompatibilityState:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [a4 objectForKeyedSubscript:a3];
  v13 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  if ([v11 isEqual:&off_100186BF8] && objc_msgSend(v13, "hasTransactionType:", @"migration"))
  {
    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "We are moving to update. But we are migrating. Differ setting the compatibility state for now.", buf, 2u);
      }
    }

    v11 = &off_100186C40;
  }

  v17 = nr_daemon_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v19 = nr_daemon_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updating compatibility state from (old)%@ to (new)%@ for device %{public}@", buf, 0x20u);
    }
  }

  if (v11 && ([v11 isEqual:v10] & 1) == 0)
  {
    v20 = +[NSMutableDictionary dictionary];
    v21 = [[NRDevicePropertyDiff alloc] initWithValue:v11];
    v22 = [[NRDevicePropertyDiffType alloc] initWithDiff:v21 andChangeType:1];
    [v20 setObject:v22 forKeyedSubscript:_NRDevicePropertyCompatibilityState];
    v23 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v20];
    v24 = [v12 applyDiff:v23];
    if ([v11 isEqualToNumber:&off_100186BF8])
    {
      v25 = [(NRPairingDaemon *)self _isBridgeForeground];
      v26 = +[NRRepeatingAlertEngine sharedInstance];
      [v26 setEnabled:v25 ^ 1 withName:@"PairedWatchIsIncompatible"];

      v27 = +[NRRepeatingAlertEngine sharedInstance];
      [v27 presentAlertIfEnabledWithName:@"PairedWatchIsIncompatible"];
    }

    else if ([v10 isEqualToNumber:&off_100186BF8] && (objc_msgSend(v13, "hasTransactionType:", @"pair") & 1) == 0)
    {
      [(NRPairingDaemon *)self initiateSyncAfterSoftwareUpdateForDevice:v12];
    }
  }
}

- (void)initiateSyncAfterSoftwareUpdateForDevice:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = "[NRPairingDaemon initiateSyncAfterSoftwareUpdateForDevice:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100036E08;
  v9[3] = &unk_1001757C0;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v9];
}

- (void)createDeviceFromBluetoothPairRequestWithBluetoothPeer:(id)a3 advertisedName:(id)a4 withBlock:(id)a5
{
  v7 = a5;
  v8 = [a3 identifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003713C;
  v10[3] = &unk_100176F10;
  v11 = v7;
  v9 = v7;
  [(NRPairingDaemon *)self getPairedPairingIDForBluetoothID:v8 completion:v10];
}

- (void)removeStaleDiscoveredDevices
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (self->_lastDiscoveryPurgeSeconds != v3)
  {
    self->_lastDiscoveryPurgeSeconds = v3;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000372BC;
    v4[3] = &unk_100176588;
    v4[4] = self;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v4];
  }
}

- (void)removeCandidateDeviceWithName:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100037594;
  v5[3] = &unk_100176588;
  v6 = a3;
  v4 = v6;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v5];
}

- (void)createDeviceFromBluetoothDiscoveryWithAdvertisementData:(id)a3 withBluetoothPeer:(id)a4 withRSSI:(id)a5 withBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  [(NRPairingDaemon *)self removeStaleDiscoveredDevices];
  v14 = [v13 objectForKeyedSubscript:CBAdvertisementDataLocalNameKey];

  v15 = [v11 integerValue];
  if (sub_1000A163C(v15) && [v14 length])
  {
    v16 = +[NSDate date];
    v17 = [v10 identifier];
    if (self->_bluetoothIsScanningToMatchThisDeviceID)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000379DC;
      v26[3] = &unk_100176F38;
      v26[4] = self;
      v27 = v14;
      v28 = v16;
      v29 = v11;
      v30 = v17;
      v32 = v15;
      v31 = v12;
      [(NRPairingDaemon *)self grabRegistryWithReadBlock:v26];

      v18 = v27;
    }

    else
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100037C2C;
      v19[3] = &unk_100176F60;
      v20 = v14;
      v21 = self;
      v22 = v11;
      v23 = v17;
      v25 = v15;
      v24 = v12;
      [(NRPairingDaemon *)self grabRegistryWithReadBlock:v19];

      v18 = v20;
    }
  }
}

- (void)createDeviceFromNetworkRelayDiscoveryWithAdvertisementName:(id)a3 bluetoothIdentifier:(id)a4 withRSSI:(id)a5 withBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  [(NRPairingDaemon *)self removeStaleDiscoveredDevices];
  v14 = [v13 integerValue];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100037F84;
  v18[3] = &unk_100176F88;
  v19 = v10;
  v20 = self;
  v22 = v12;
  v23 = v14;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v18];
}

- (void)_upsertDeviceDiscoveredBy:(unint64_t)a3 pairingID:(id)a4 advertisedName:(id)a5 bluetoothDeviceID:(id)a6 rssiValue:(int64_t)a7 withBlock:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = v17;
  if (v14)
  {
    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219010;
        v35 = a3;
        v36 = 2112;
        v37 = v14;
        v38 = 2112;
        v39 = v15;
        v40 = 2112;
        v41 = v16;
        v42 = 2048;
        v43 = a7;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "UPSERT device discoveredBy: %lu, pairingID: %@, advertisedName: %@, bluetoothDeviceID: %@, rssi: %ld", buf, 0x34u);
      }
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000383F4;
    v24[3] = &unk_100176FB0;
    v24[4] = self;
    v25 = v15;
    v29 = a7;
    v30 = a3;
    v26 = v16;
    v27 = v14;
    v28 = v18;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v24];

    v22 = v25;
    goto LABEL_9;
  }

  if (v17)
  {
    v23 = +[NRQueue registryDaemonQueue];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000383E0;
    v31[3] = &unk_100175688;
    v32 = 0;
    v33 = v18;
    [v23 dispatchAsync:v31];

    v22 = v33;
LABEL_9:
  }
}

- (id)_bluetoothIDFromPairingID:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self collection];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v8 = [v7 value];

  return v8;
}

- (id)_bluetoothIDOfActiveDevice
{
  v2 = [(NRPairingDaemon *)self collection];
  v3 = [v2 activeDevice];
  v4 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v5 = [v4 value];

  return v5;
}

- (void)getAdvertisedNameFromDeviceID:(id)a3 withCompletion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100038BB4;
  v8[3] = &unk_1001768D8;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)beginDiscovery:(BOOL)a3 withDeviceIDToDiscover:(id)a4
{
  v4 = a3;
  v6 = a4;
  kdebug_trace();
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[NRPairingDaemon beginDiscovery:withDeviceIDToDiscover:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: trace", buf, 0xCu);
    }
  }

  if (!self->_discoveryTransaction)
  {
    v10 = [NROSTransaction transactionWithName:@"discovery"];
    discoveryTransaction = self->_discoveryTransaction;
    self->_discoveryTransaction = v10;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100038F1C;
  v17[3] = &unk_100175598;
  v17[4] = self;
  v12 = v6;
  v18 = v12;
  v13 = objc_retainBlock(v17);
  [(NSMutableSet *)self->_bluetoothDiscoveryEventDedupe removeAllObjects];
  if (v4)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000390D0;
    v15[3] = &unk_100176AE0;
    v15[4] = self;
    v16 = v13;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v15];
  }

  else
  {
    v14 = +[NRQueue registryDaemonQueue];
    [v14 dispatchAsync:v13];
  }
}

- (void)_beginNetworkRelayDiscovery
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Making the call to NetworkRelayPairer to start scanning", v7, 2u);
    }
  }

  v6 = +[NRNetworkRelayPair sharedInstance];
  [v6 startScanningForCandidatesWithDelegate:self];
  self->_networkRelayPairerIsScanning = 1;
}

- (void)sendXPCOOBKeyChanged:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "(data)";
      if (!v4)
      {
        v8 = "nil";
      }

      *buf = 136315138;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sendXPCOOBKeyChanged with %s", buf, 0xCu);
    }
  }

  pairingClients = self->_pairingClients;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000393C0;
  v11[3] = &unk_100176FD8;
  v12 = v4;
  v10 = v4;
  [(NRSimpleReferenceCounter *)pairingClients enumerateObjects:v11];
}

- (BOOL)_requiresNetworkRelayPairingIdentifierUpdateForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v5 = [v4 value];

  if (v5)
  {
    v6 = [NetworkRelayAgent networkRelayIdentifierForBluetoothIdentifier:v5];
    if (v6)
    {
      v7 = [v3 objectForKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
      v8 = [v7 value];

      if (v8)
      {
        LODWORD(v9) = [v8 isEqual:v6] ^ 1;
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      v9 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v5 UUIDString];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to retrieve NetworkRelayIdentifier for device with Bluetooth identifier %@", &v12, 0xCu);
      }

      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_updateNetworkRelayIdentifierForDevicesInCollection:(id)a3
{
  v4 = a3;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NRPairingDaemon _updateNetworkRelayIdentifierForDevicesInCollection:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [v4 allPairingIDs];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    *&v8 = 138412290;
    v16 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [v4 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v11), v16}];
        if ([v12 isPaired] && (objc_msgSend(v12, "isArchived") & 1) == 0 && -[NRPairingDaemon _requiresNetworkRelayPairingIdentifierUpdateForDevice:](self, "_requiresNetworkRelayPairingIdentifierUpdateForDevice:", v12))
        {
          [(NRPairingDaemon *)self _updateNetworkRelayIdentifierForDevice:v12];
        }

        else
        {
          v13 = networkrelay_pairing_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 pairingID];
            v15 = [v14 UUIDString];
            *buf = v16;
            v23 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not updating NetworkRelayIdentifier for %@", buf, 0xCu);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_updateNetworkRelayIdentifierForDevice:(id)a3
{
  v3 = a3;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[NRPairingDaemon _updateNetworkRelayIdentifierForDevice:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v6 = [v5 value];

  if (v6)
  {
    v7 = [NetworkRelayAgent networkRelayIdentifierForBluetoothIdentifier:v6];
    if (v7)
    {
      v8 = +[NSMutableDictionary dictionary];
      v9 = [[NRDevicePropertyDiff alloc] initWithValue:v7];
      v10 = [[NRDevicePropertyDiffType alloc] initWithDiff:v9 andChangeType:1];
      [v8 setObject:v10 forKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
      v11 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v8];
      v12 = [v3 applyDiff:v11];
    }

    else
    {
      v8 = networkrelay_pairing_log_handle();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_12;
      }

      v9 = [v6 UUIDString];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to retrieve NetworkRelayIdentifier for device with Bluetooth identifier %@", &v13, 0xCu);
    }

    goto LABEL_11;
  }

  v7 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to update NetworkRelayIdentifier for device with no Bluetooth identifier: %@", &v13, 0xCu);
  }

LABEL_12:
}

- (id)getTrafficClassifiersForCompatibilityState:(unsigned __int16)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4;
  if (v3 <= 2)
  {
    if (v3 < 2)
    {
      v6 = off_100179DC0;
      goto LABEL_12;
    }

    if (v3 != 2)
    {
      goto LABEL_13;
    }

    [v4 addObject:@"com.apple.ids.trafficclass.nanoregistry.update"];
    goto LABEL_9;
  }

  switch(v3)
  {
    case 3:
LABEL_9:
      v6 = off_100179DD0;
      break;
    case 4:
      v6 = off_100179DD8;
      break;
    case 5:
      v6 = &off_100179DE0;
      break;
    default:
      goto LABEL_13;
  }

LABEL_12:
  [v5 addObject:*v6];
LABEL_13:

  return v5;
}

- (void)updateTrafficClass
{
  v3 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v4 = [v3 defaultPairedDevice];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100039BD8;
    v7[3] = &unk_1001757C0;
    v7[4] = self;
    v8 = v3;
    [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v7];
  }
}

- (id)localizedString:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.private.NanoRegistry"];
  v5 = [v4 localizedStringForKey:v3 value:&stru_10017A258 table:@"Localizable-tinker"];

  return v5;
}

- (void)xpcSubmitAlbertPairingReport:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending Albert pairing report due to xpc client API request", buf, 2u);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003A024;
  v9[3] = &unk_1001768D8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v9];
}

- (void)xpcPairingClientDidEnterPhase:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setup entered %{public}@ phase", &v12, 0xCu);
    }
  }

  pairingClientPhase = self->_pairingClientPhase;
  self->_pairingClientPhase = v6;

  v7[2](v7);
}

- (void)xpcPairingClientSetPairingParentName:(id)a3 pairingParentAltDSID:(id)a4 forPairingID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003A324;
  v16[3] = &unk_100176DD0;
  v17 = a5;
  v18 = v10;
  v19 = v11;
  v20 = a6;
  v12 = v20;
  v13 = v11;
  v14 = v10;
  v15 = v17;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v16];
}

- (void)xpcPairingClientSetAltAccountName:(id)a3 altDSID:(id)a4 forPairingID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003A7B8;
  v16[3] = &unk_100176DD0;
  v17 = a5;
  v18 = v10;
  v19 = v11;
  v20 = a6;
  v12 = v20;
  v13 = v11;
  v14 = v10;
  v15 = v17;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v16];
}

- (void)checkForWatchNeedsGraduation:(id)a3
{
  v4 = a3;
  if (!_NRIsInternalInstall())
  {
    goto LABEL_8;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FakeFoundTinkerGraduationPairing", @"com.apple.NanoRegistry", 0);
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = AppBooleanValue != 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "found tinker watch override: %d", buf, 8u);
    }
  }

  if (AppBooleanValue)
  {
    v4[2](v4, 1);
  }

  else
  {
LABEL_8:
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003ACCC;
    v9[3] = &unk_100176DF8;
    v10 = v4;
    [(NRPairingDaemon *)self xpcWatchNeedsGraduation:v9];
  }
}

- (void)xpcWatchNeedsGraduation:(id)a3
{
  v3 = a3;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "xpcWatchNeedsGraduation", buf, 2u);
    }
  }

  v16[0] = kSecAttrLabel;
  v7 = [NSString stringWithFormat:@"%@.%@", @"com.apple.nanoregistry", @"watchgraduation"];
  v17[0] = v7;
  v17[1] = @"com.apple.nanoregistry.watchgraduation";
  v16[1] = kSecAttrAccessGroup;
  v16[2] = kSecClass;
  v17[2] = kSecClassGenericPassword;
  v17[3] = kCFBooleanTrue;
  v16[3] = kSecAttrSynchronizable;
  v16[4] = kSecAttrAccessible;
  v17[4] = kSecAttrAccessibleAfterFirstUnlock;
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
  v9 = [v8 mutableCopy];

  v10 = [EPKeychain keyExistsInKeychain:@"watchgraduation" keychainGroup:@"com.apple.nanoregistry.watchgraduation" attributes:v9];
  v11 = nr_framework_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (!v10)
  {
    if (!v12)
    {
      v10 = 0;
      goto LABEL_16;
    }

    v13 = nr_framework_log();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v14 = "Did not find keychain data for watch graduation";
    goto LABEL_12;
  }

  if (!v12)
  {
    v10 = 1;
    goto LABEL_16;
  }

  v13 = nr_framework_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "Found keychain data for watch graduation";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
  }

LABEL_13:

LABEL_16:
  v3[2](v3, v10);
}

- (void)xpcClearWatchNeedsGraduation:(id)a3
{
  v3 = a3;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "xpcClearWatchNeedsGraduation", buf, 2u);
    }
  }

  v18[0] = kSecAttrLabel;
  v7 = [NSString stringWithFormat:@"%@.%@", @"com.apple.nanoregistry", @"watchgraduation"];
  v19[0] = v7;
  v19[1] = @"com.apple.nanoregistry.watchgraduation";
  v18[1] = kSecAttrAccessGroup;
  v18[2] = kSecClass;
  v19[2] = kSecClassGenericPassword;
  v19[3] = kCFBooleanTrue;
  v18[3] = kSecAttrSynchronizable;
  v18[4] = kSecAttrAccessible;
  v19[4] = kSecAttrAccessibleAfterFirstUnlock;
  v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];
  v9 = [v8 mutableCopy];

  v10 = [EPKeychain removeKeyWithName:@"watchgraduation" keychainGroup:@"com.apple.nanoregistry.watchgraduation" attributes:v9];
  v11 = nr_framework_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    if (v12)
    {
      v13 = nr_framework_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to delete graduation key from keychain: %@", buf, 0xCu);
      }
    }

    v3[2](v3, v10);
  }

  else
  {
    if (v12)
    {
      v14 = nr_framework_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleted graduation key from keychain", buf, 2u);
      }
    }

    v3[2](v3, 0);
  }

  v15 = +[NRRepeatingAlertEngine sharedInstance];
  [v15 clearUINotificationwithName:@"TinkerWatchFoundInAccount"];
}

- (void)xpcWatchBuddyCompletedSetupSteps:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[NRPairingDaemon xpcWatchBuddyCompletedSetupSteps:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - watch has completed all setup steps", buf, 0xCu);
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003B414;
  v12[3] = &unk_100176900;
  v12[4] = self;
  v13 = v4;
  v8 = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B548;
  v10[3] = &unk_1001768D8;
  v10[4] = self;
  v11 = objc_retainBlock(v12);
  v9 = v11;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v10];
}

- (void)xpcUpdateWatchBuddyStage:(unsigned int)a3 forPairingID:(id)a4
{
  v6 = a4;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[NRPairingDaemon xpcUpdateWatchBuddyStage:forPairingID:]";
      v15 = 1026;
      v16 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s stage: %{public}d", buf, 0x12u);
    }
  }

  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003B7B0;
    v10[3] = &unk_100177000;
    v11 = v6;
    v12 = a3;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v10];
  }
}

- (void)_updateIsSetupPropertyForNewlyPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self queuedNotIsPairedDeviceIDToMarkIsSetup];
  v6 = [v4 pairingID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 pairingID];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "isSetup is queued, and now %@ isPaired, will try to set isSetup", &v14, 0xCu);
      }
    }

    [(NRPairingDaemon *)self _markDeviceIsSetupWhereApplicable:v4 bypassIsSetupNoCheck:1];
    [(NRPairingDaemon *)self setQueuedNotIsPairedDeviceIDToMarkIsSetup:0];
  }

  else
  {
    v12 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
    v13 = [v4 supportsCapability:v12];

    if ((v13 & 1) == 0)
    {
      [(NRPairingDaemon *)self _markDeviceIsSetupWhereApplicable:v4 bypassIsSetupNoCheck:0];
    }
  }
}

- (void)_queueMarkDeviceIsSetup:(id)a3
{
  v4 = a3;
  if ([v4 isPaired])
  {
    [(NRPairingDaemon *)self _markDeviceIsSetupWhereApplicable:v4 bypassIsSetupNoCheck:1];
  }

  else
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 pairingID];
        v10 = 136315394;
        v11 = "[NRPairingDaemon _queueMarkDeviceIsSetup:]";
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - device is not paired, queueing %@ to be marked as isSetup once the device is paired", &v10, 0x16u);
      }
    }

    v9 = [v4 pairingID];
    [(NRPairingDaemon *)self setQueuedNotIsPairedDeviceIDToMarkIsSetup:v9];
  }
}

- (void)_onRestartMarkPairedDevicesIsSetup:(id)a3
{
  v4 = a3;
  v5 = [v4 allPairingIDs];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9)];
        if (([v10 isArchived] & 1) == 0 && objc_msgSend(v10, "isPaired"))
        {
          [(NRPairingDaemon *)self _markDeviceIsSetupWhereApplicable:v10 bypassIsSetupNoCheck:0];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_resolveIsSetupNumberForDevice:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:NRDevicePropertyIsSetup];
  v5 = [v4 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000FEC1C();
      }
    }

    v9 = [(NRPairingDaemon *)self secureProperties];
    v10 = [v9 objectForKeyedSubscript:v5];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (BOOL)_deviceIsInSetupBasedOnIsSetupValue:(id)a3
{
  v3 = [(NRPairingDaemon *)self _resolveIsSetupNumberForDevice:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_markDeviceIsSetupWhereApplicable:(id)a3 bypassIsSetupNoCheck:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NRPairingDaemon *)self _resolveIsSetupNumberForDevice:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  if (![v8 BOOLValue] && ((v9 | v4) & 1) != 0)
  {
    v10 = [v6 objectForKeyedSubscript:NRDevicePropertyIsPaired];
    v11 = [v10 value];

    v12 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
    v13 = [v6 supportsCapability:v12];

    if (v13)
    {
      v14 = [(NRPairingDaemon *)self pairingClients];
      if ([v14 count])
      {
        v15 = 0;
      }

      else
      {
        v15 = [v11 BOOLValue];
      }
    }

    else
    {
      v15 = [v11 BOOLValue];
    }

    v18 = nr_daemon_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = nr_daemon_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(NRPairingDaemon *)self pairingClients];
        v34 = 67109632;
        *v35 = v13;
        *&v35[4] = 2048;
        *&v35[6] = [v21 count];
        *&v35[14] = 1024;
        *&v35[16] = [v11 BOOLValue];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "supportsEarlyPairedSync %{BOOL}d pairing client count %lu isPaired %{BOOL}d", &v34, 0x18u);
      }
    }

    v22 = [v6 objectForKeyedSubscript:NRDevicePropertyPairingID];
    v23 = [v22 value];

    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      if (v25)
      {
        v26 = nr_daemon_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 136315394;
          *v35 = "[NRPairingDaemon _markDeviceIsSetupWhereApplicable:bypassIsSetupNoCheck:]";
          *&v35[8] = 2112;
          *&v35[10] = v23;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s - Marking device %@ as isSetup", &v34, 0x16u);
        }
      }

      v27 = [NRDevicePropertyDiffType alloc];
      v28 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
      v29 = [v27 initWithDiff:v28 andChangeType:1];

      v30 = [NRDeviceDiff alloc];
      v37 = NRDevicePropertyIsSetup;
      v38 = v29;
      v31 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v32 = [v30 initWithDiffPropertyDiffs:v31];

      v33 = [v6 applyDiff:v32];
    }

    else
    {
      if (!v25)
      {
        goto LABEL_29;
      }

      v29 = nr_daemon_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136315650;
        *v35 = "[NRPairingDaemon _markDeviceIsSetupWhereApplicable:bypassIsSetupNoCheck:]";
        *&v35[8] = 2112;
        *&v35[10] = v23;
        *&v35[18] = 1024;
        v36 = 1;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s - device %@ isInSetup: %{BOOL}d - Will not mark as isSetup", &v34, 0x1Cu);
      }
    }

LABEL_29:
LABEL_30:

    goto LABEL_31;
  }

  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412546;
      *v35 = v8;
      *&v35[8] = 1024;
      *&v35[10] = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Will not change isSetup to 1 based on isSetup value - isSetup: %@, isSetupNoAllowed: %{BOOL}d", &v34, 0x12u);
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (void)updateFromBTState:(int64_t)a3
{
  v5 = [(NRPairingDaemon *)self isBluetoothPoweredOn:?];
  v6 = [(NRPairingDaemon *)self isBluetoothConnected:a3];
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v6)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (v5)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "connected=%@ poweredOn=%@", buf, 0x16u);
    }
  }

  if (v6)
  {
    [(NRPairingDaemon *)self grabPairingAgent];
    [(NSLock *)self->_bluetoothInitBlockLock lock];
    v12 = [(NSMutableArray *)self->_bluetoothInitBlocks copy];
    [(NSMutableArray *)self->_bluetoothInitBlocks removeAllObjects];
    [(NSLock *)self->_bluetoothInitBlockLock unlock];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v20 + 1) + 8 * v17) + 16))();
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    if (v5)
    {
      if (self->_bluetoothIsScanning)
      {
        v18 = +[NRQueue registryDaemonQueue];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10003C6B4;
        v19[3] = &unk_100175660;
        v19[4] = self;
        [v18 dispatchAsync:v19];
      }
    }
  }

  else
  {
    [(NSMutableSet *)self->_bluetoothDiscoveryEventDedupe removeAllObjects];
  }
}

- (void)updateFromBTState
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[NRPairingDaemon updateFromBTState]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: trace", &v6, 0xCu);
    }
  }

  [(NRPairingDaemon *)self updateFromBTState:[(CBCentralManager *)self->_central state]];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = [a3 state];

  [(NRPairingDaemon *)self updateFromBTState:v4];
}

- (void)xpcSubmitServerRequestReportWithRequestType:(id)a3 duration:(double)a4 errorCode:(unsigned int)a5 block:(id)a6
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C8AC;
  v8[3] = &unk_100176928;
  v9 = a6;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)xpcServer:(id)a3 proxyDidSuspend:(id)a4
{
  v5 = a4;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v27 = "[NRPairingDaemon xpcServer:proxyDidSuspend:]";
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Proxy(%@)", buf, 0x16u);
    }
  }

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10003CB60;
  v23 = &unk_100175598;
  v24 = self;
  v9 = v5;
  v25 = v9;
  v10 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v20);
  if ([(NRMutableDevice *)self->_mirrorOfActiveDevice isAltAccount:v20])
  {
    v11 = [[NRPreferences alloc] initWithDomain:@"com.apple.NanoRegistry"];
    v12 = [(NRPreferences *)v11 objectForKeyedSubscript:@"delayForTinkerAssertionRemoval"];
    [v12 doubleValue];
    v14 = v13;

    if ((_NRIsInternalInstall() & (v14 > 0.0)) == 0)
    {
      v14 = 30.0;
    }

    v15 = nr_daemon_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = nr_daemon_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v27 = *&v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Will let go of assertion after %fseconds.", buf, 0xCu);
      }
    }

    v18 = +[NRQueue registryDaemonQueue];
    v19 = [v18 queue];
    [(NRPairingDaemon *)self _scheduleTimerOnQueue:v19 afterDelay:v10 block:v14];
  }

  else
  {
    v11 = +[NRQueue registryDaemonQueue];
    [(NRPreferences *)v11 dispatchAsync:v10];
  }
}

- (void)xpcServer:(id)a3 proxyDidResume:(id)a4
{
  v5 = a4;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "[NRPairingDaemon xpcServer:proxyDidResume:]";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Proxy(%@)", &v11, 0x16u);
    }
  }

  if ([(NRMutableDevice *)self->_mirrorOfActiveDevice isAltAccount])
  {
    v9 = +[NRQueue registryDaemonQueue];
    v10 = [v9 queue];
    [(NRPairingDaemon *)self _cancelScheduleTimerOnQueue:v10];
  }
}

- (void)xpcServer:(id)a3 proxyDidDisconnect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v18 = "[NRPairingDaemon xpcServer:proxyDidDisconnect:]";
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Proxy(%@)", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  v11 = +[NRQueue registryDaemonQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003CEC4;
  v13[3] = &unk_1001770B8;
  v12 = v7;
  v14 = v12;
  v15 = self;
  objc_copyWeak(&v16, buf);
  [v11 dispatchAsync:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_scheduleTimerOnQueue:(id)a3 afterDelay:(double)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 < 0.0 || v8 == 0 || v9 == 0)
  {
    v13 = nr_daemon_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000FECA4();
      }
    }
  }

  else
  {
    scheduledTimer = self->_scheduledTimer;
    if (scheduledTimer)
    {
      dispatch_source_cancel(scheduledTimer);
      v17 = self->_scheduledTimer;
      self->_scheduledTimer = 0;
    }

    v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
    v19 = self->_scheduledTimer;
    self->_scheduledTimer = v18;

    v20 = self->_scheduledTimer;
    v21 = dispatch_time(0, (a4 * 1000000000.0));
    dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0);
    v22 = self->_scheduledTimer;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10003D4AC;
    v23[3] = &unk_100175FA0;
    v23[4] = self;
    v24 = v10;
    dispatch_source_set_event_handler(v22, v23);
    dispatch_resume(self->_scheduledTimer);
  }
}

- (void)_cancelScheduleTimerOnQueue:(id)a3
{
  if (a3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003D5C8;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(a3, block);
  }

  else
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000FED24();
      }
    }
  }
}

- (void)updateShouldMonitorProxy:(id)a3
{
  v4 = a3;
  if ([(NRSimpleReferenceCounter *)self->_pairingClients containsObject:v4]|| [(NRSimpleReferenceCounter *)self->_pushingClients containsObject:v4]|| [(NRSimpleReferenceCounter *)self->_discoveringClients containsObject:v4]|| [(NRSimpleReferenceCounter *)self->_advertisingClients containsObject:v4])
  {
    v5 = 1;
  }

  else
  {
    v11 = [(NSMapTable *)self->_clientProxyToAssertionInfo objectForKey:v4];
    v5 = v11 != 0;
  }

  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v9 = "MONITORING";
      }

      else
      {
        v9 = "NOT MONITORING";
      }

      v10 = [v4 appPath];
      v12 = 136315394;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s pairing client %@", &v12, 0x16u);
    }
  }

  [v4 setMonitorClientForSuspension:v5];
}

- (void)setUpClientReferenceCounters
{
  if (!self->_pairingClients)
  {
    objc_initWeak(location, self);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10003DCB0;
    v31[3] = &unk_1001770E0;
    objc_copyWeak(&v32, location);
    v31[4] = self;
    v3 = objc_retainBlock(v31);
    v4 = [[NRSimpleReferenceCounter alloc] initWithIdentifier:@"Pairing Clients Counter" allocateBlock:&stru_100177100 freeBlock:&stru_100177120 queue:0 async:0];
    pairingClients = self->_pairingClients;
    self->_pairingClients = v4;

    [(NRSimpleReferenceCounter *)self->_pairingClients setDidAddBlock:v3];
    [(NRSimpleReferenceCounter *)self->_pairingClients setDidRemoveBlock:v3];
    v6 = [[NRSimpleReferenceCounter alloc] initWithIdentifier:@"Switching Clients Counter" allocateBlock:0 freeBlock:0 queue:0 async:0];
    switchingClients = self->_switchingClients;
    self->_switchingClients = v6;

    [(NRSimpleReferenceCounter *)self->_switchingClients setDidAddBlock:v3];
    [(NRSimpleReferenceCounter *)self->_switchingClients setDidRemoveBlock:v3];
    v8 = [NRSimpleReferenceCounter alloc];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10003DDB4;
    v29[3] = &unk_100175EB8;
    objc_copyWeak(&v30, location);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10003DDF4;
    v27[3] = &unk_100175EB8;
    objc_copyWeak(&v28, location);
    v9 = +[NRQueue registryDaemonQueue];
    v10 = [v9 queue];
    v11 = [(NRSimpleReferenceCounter *)v8 initWithIdentifier:@"Pushing Clients Counter" allocateBlock:v29 freeBlock:v27 queue:v10 async:1];
    pushingClients = self->_pushingClients;
    self->_pushingClients = v11;

    [(NRSimpleReferenceCounter *)self->_pushingClients setDidAddBlock:v3];
    [(NRSimpleReferenceCounter *)self->_pushingClients setDidRemoveBlock:v3];
    v13 = [NRSimpleReferenceCounter alloc];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10003DE34;
    v25[3] = &unk_100175EB8;
    objc_copyWeak(&v26, location);
    v14 = +[NRQueue delayPairingRequestQueue];
    v15 = [v14 queue];
    v16 = [(NRSimpleReferenceCounter *)v13 initWithIdentifier:@"Discovering Clients Counter" allocateBlock:0 freeBlock:v25 queue:v15 async:1];
    discoveringClients = self->_discoveringClients;
    self->_discoveringClients = v16;

    [(NRSimpleReferenceCounter *)self->_discoveringClients setDidAddBlock:v3];
    [(NRSimpleReferenceCounter *)self->_discoveringClients setDidRemoveBlock:v3];
    v18 = [NRSimpleReferenceCounter alloc];
    objc_copyWeak(&v24, location);
    v19 = [NRQueue delayPairingRequestQueue:_NSConcreteStackBlock];
    v20 = [v19 queue];
    v21 = [(NRSimpleReferenceCounter *)v18 initWithIdentifier:@"Advertising Clients Counter" allocateBlock:0 freeBlock:&v23 queue:v20 async:1];
    advertisingClients = self->_advertisingClients;
    self->_advertisingClients = v21;

    [(NRSimpleReferenceCounter *)self->_advertisingClients setDidAddBlock:v3];
    [(NRSimpleReferenceCounter *)self->_advertisingClients setDidRemoveBlock:v3];
    notify_post([NRRestartedDarwinNotification cStringUsingEncoding:4]);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }
}

- (void)xpcPairWithSimulator:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = nrGetPairingError();
  (*(a4 + 2))(v5, v6);
}

- (void)xpcUnpairWithSimulator:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = nrGetPairingError();
  (*(a4 + 2))(v5, v6);
}

- (void)xpcSwitchToSimulator:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = nrGetPairingError();
  (*(a4 + 2))(v5, v6);
}

- (int64_t)pairingVersionFromAdvertisedName:(id)a3
{
  v3 = NRAdvertisingInfoFromPayload();
  v4 = [v3 objectForKeyedSubscript:NRBridgeAdvertisingVersionKey];
  v5 = [v4 integerValue];

  return v5;
}

- (void)checkAndDisableStandAloneMode
{
  if (qword_1001B37D0 != -1)
  {
    sub_1000FEE24();
  }
}

- (void)xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NRNetworkRelayPair candidateSupportsNetworkRelayPairing:v6];
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Using NetworkRelayPair to wait for watch pairing extended metadata of %{public}@", buf, 0xCu);
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003E468;
    v15[3] = &unk_100177190;
    v16 = v7;
    v12 = objc_retainBlock(v15);
    v13 = +[NRNetworkRelayPair sharedInstance];
    [v13 waitForWatchPairingExtendedMetadataForAdvertisedName:v6 completion:v12];
  }

  else
  {
    if (v10)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using legacy path to wait for watch pairing extended metadata of %{public}@", buf, 0xCu);
      }
    }

    [(NRPairingDaemon *)self _xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:v6 completion:v7];
  }
}

- (void)_xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003E7B4;
  v27[3] = &unk_1001771B8;
  v8 = v6;
  v28 = v8;
  v9 = v7;
  v29 = v9;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10002CCE8;
  v25 = sub_10002CD14;
  v26 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003E8D0;
  v14[3] = &unk_100177258;
  v17 = v32;
  v18 = v34;
  v14[4] = self;
  v19 = v30;
  v10 = objc_retainBlock(v27);
  v16 = v10;
  v20 = &v21;
  v11 = v8;
  v15 = v11;
  v12 = objc_retainBlock(v14);
  v13 = v22[5];
  v22[5] = v12;

  (*(v22[5] + 16))();
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
}

- (void)xpcCompanionOOBDiscoverAndPairWithName:(id)a3 withOutOfBandPairingKey:(id)a4 withOptions:(id)a5 operationHasBegun:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = nr_daemon_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

  if (v15)
  {
    v16 = nr_daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000FEE38();
    }
  }

  v17 = nr_daemon_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v19 = nr_daemon_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = v10;
      v36 = 2114;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "xpcCompanionOOBDiscoverAndPairWithName: advertisedName=%{public}@ options=%{public}@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  v20 = [(NRPairingDaemon *)self lastCaller];
  objc_storeStrong(&self->_pairingClientProxy, v20);
  pairingClients = self->_pairingClients;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003F2C4;
  v27[3] = &unk_1001772D0;
  v22 = v10;
  v28 = v22;
  v23 = v12;
  v29 = v23;
  objc_copyWeak(&v33, buf);
  v24 = v20;
  v30 = v24;
  v25 = v13;
  v32 = v25;
  v26 = v11;
  v31 = v26;
  [(NRSimpleReferenceCounter *)pairingClients addObject:v24 withAllocationBlock:v27];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

- (void)xpcCompanionPasscodePairWithDeviceID:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000FEF28(v8);
    }
  }

  objc_initWeak(&location, self);
  v14 = [(NRPairingDaemon *)self lastCaller];
  objc_storeStrong(&self->_pairingClientProxy, v14);
  pairingClients = self->_pairingClients;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003FFBC;
  v20[3] = &unk_100177370;
  v16 = v8;
  v21 = v16;
  v17 = v9;
  v22 = v17;
  objc_copyWeak(&v25, &location);
  v18 = v14;
  v23 = v18;
  v19 = v10;
  v24 = v19;
  [(NRSimpleReferenceCounter *)pairingClients addObject:v18 withAllocationBlock:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)clearMagicSwitchAdvertisingIdentifierSeedIfNeeded
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 1;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100040E00;
  v2[3] = &unk_100176D80;
  v2[4] = v3;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v2];
  _Block_object_dispose(v3, 8);
}

- (void)xpcGizmoOOBAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF0B8();
    }
  }

  objc_initWeak(&location, self);
  v11 = [(NRPairingDaemon *)self lastCaller];
  objc_storeStrong(&self->_pairingClientProxy, v11);
  pairingClients = self->_pairingClients;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100041168;
  v16[3] = &unk_1001773C0;
  v13 = v6;
  v17 = v13;
  objc_copyWeak(&v20, &location);
  v14 = v7;
  v19 = v14;
  v15 = v11;
  v18 = v15;
  [(NRSimpleReferenceCounter *)pairingClients addObject:v15 withAllocationBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)xpcBeginMigrationWithDeviceID:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000419B4;
  v8[3] = &unk_1001773E8;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)xpcBeginMigrationWithCompletion:(id)a3
{
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Not implemented on watch";
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:@"com.apple.NanoRegistry" code:1200 userInfo:v5];
  (*(a3 + 2))(v4, v6);
}

- (void)resetPhoneStateForNewPairing
{
  self->_syncTrapUIPushed = 0;
  [(NSMutableSet *)self->_waitForBridgeCompletedPairingIDs removeAllObjects];
  self->_monitoringPairingClientBeyondNewWatchPairingTransactionComplete = 0;
  self->_clientRequestedSuspensionOfMonitoringPairingClientBeyondNewWatchPairingTransactionComplete = 0;
}

- (void)resetWatchStateForNewPairing
{
  self->_syncTrapUIPushed = 0;
  [(NSMutableSet *)self->_waitForBridgeCompletedPairingIDs removeAllObjects];
  self->_monitoringPairingClientBeyondNewWatchPairingTransactionComplete = 0;
  self->_clientRequestedSuspensionOfMonitoringPairingClientBeyondNewWatchPairingTransactionComplete = 0;
  v3 = +[NRAccountsManager sharedInstance];
  [v3 reset];
}

- (BOOL)supportsEarlyPairedSync
{
  v2 = [(NRPairingDaemon *)self collection];
  v3 = [v2 activeDevice];

  v4 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
  if (![v3 supportsCapability:v4])
  {

    goto LABEL_5;
  }

  v5 = [v3 isAltAccount];

  if (v5)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)xpcGizmoPasscodeAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF1A0();
    }
  }

  objc_initWeak(&location, self);
  v11 = [(NRPairingDaemon *)self lastCaller];
  objc_storeStrong(&self->_pairingClientProxy, v11);
  pairingClients = self->_pairingClients;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100042308;
  v16[3] = &unk_1001773C0;
  v13 = v6;
  v17 = v13;
  objc_copyWeak(&v20, &location);
  v14 = v7;
  v19 = v14;
  v15 = v11;
  v18 = v15;
  [(NRSimpleReferenceCounter *)pairingClients addObject:v15 withAllocationBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)handleDeadPairingClient:(id)a3
{
  v4 = a3;
  if (!self->_monitoringPairingClientBeyondNewWatchPairingTransactionComplete || self->_clientRequestedSuspensionOfMonitoringPairingClientBeyondNewWatchPairingTransactionComplete || self->_syncTrapUIPushed)
  {
    v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    v6 = nrGetPairingError();
    [v5 clearTransactionsWithUserInfo:v4 error:v6];
  }

  else
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting unpair because pairing client exited", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    v10 = +[NRQueue registryDaemonQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100042B74;
    v11[3] = &unk_100175E90;
    objc_copyWeak(&v13, buf);
    v11[4] = self;
    v12 = v4;
    [v10 dispatchAsync:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  self->_monitoringPairingClientBeyondNewWatchPairingTransactionComplete = 0;
}

- (void)xpcAbortPairingReason:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NRPairingDaemon *)self lastCaller];
  [(NRPairingDaemon *)self abortPairingReason:v7 proxy:v8 withBlock:v6];
}

- (void)abortPairingReason:(id)a3 proxy:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 appPath];
      *buf = 138543618;
      v26 = v14;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ called abort pairing with reason %{public}@", buf, 0x16u);
    }
  }

  if (!-[NRMutableDevice isAltAccount](self->_mirrorOfActiveDevice, "isAltAccount") || ([v9 appPath], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "lastPathComponent"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", @"sharingd"), v16, v15, (v17 & 1) == 0))
  {
    [(NRPairingDaemon *)self forceEndDiscovery];
    v20 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
    v21 = [v9 appPath];
    [v20 setPairingReportErrorForPairingClient:v21 reason:v8];

    pairingClients = self->_pairingClients;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100043050;
    v23[3] = &unk_100176900;
    v23[4] = self;
    v24 = v10;
    [(NRSimpleReferenceCounter *)pairingClients removeAllObjectsWithCleanupBlock:v23];

LABEL_11:
    goto LABEL_12;
  }

  v18 = nr_daemon_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v20 = nr_daemon_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Ignoring sharingd abort", buf, 2u);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)xpcNotifyActivationCompleted:(id)a3 withSuccess:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000431A0;
    v7[3] = &unk_1001757C0;
    v8 = v5;
    v9 = self;
    [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v7];
  }
}

- (void)xpcNotifyPasscode:(id)a3 withDeviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 UUIDString];
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "xpcNotifyPasscode withDeviceID=%{public}@ passcode=%@", &v13, 0x16u);
    }
  }

  v12 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  [v12 notifyPasscode:v6];
}

- (void)enterCompatibilityState:(unsigned __int16)a3 withDeviceID:(id)a4 withCompletion:(id)a5
{
  v5 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 UUIDString];
      *buf = 138543618;
      v21 = v11;
      v22 = 1024;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_enterCompatibilityState: deviceID=%{public}@ withCompatibilityState=%d", buf, 0x12u);
    }
  }

  if ((v5 & 0xFFFE) == 4)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100043640;
    v18[3] = &unk_100177410;
    v18[4] = self;
    v12 = v7;
    v19 = v12;
    v13 = objc_retainBlock(v18);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000437B0;
    v15[3] = &unk_1001768D8;
    v16 = v12;
    v17 = v13;
    v14 = v13;
    [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v15];
  }
}

- (void)xpcUnpairWithDeviceID:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5
{
  v37 = a3;
  v8 = a4;
  v35 = a5;
  v38 = [(NRPairingDaemon *)self lastCaller];
  [(NRPairingDaemon *)self removeAssertionsForProxy:v38 newDeviceID:v37];
  [(NRPairingDaemon *)self forceEndDiscovery];
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v55 = 0;
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "xpcUnpairWithDeviceID: options=%@", buf, 0xCu);
    }
  }

  v12 = [(__CFString *)v8 objectForKeyedSubscript:NRUnpairOptionObliterate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = [v12 BOOLValue];
  }

  else
  {
    v36 = 1;
  }

  v13 = [(__CFString *)v8 objectForKeyedSubscript:NRUnpairOptionBrick];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(__CFString *)v8 objectForKeyedSubscript:@"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 BOOLValue];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(__CFString *)v8 objectForKeyedSubscript:NRUnpairOptionStore];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 BOOLValue];
    v16 &= v18 ^ 1;
    v14 &= v18 ^ 1;
    v36 &= v18 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(__CFString *)v8 objectForKeyedSubscript:NRUnpairOptionUnpairAbortErrorReason];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_alloc_init(NRPairingReport);
    v21 = [v38 appPath];
    [(NRPairingReport *)v20 setPairingReportErrorForPairingClient:v21 reason:v19];
  }

  else
  {
    v20 = 0;
  }

  v22 = nr_daemon_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v24 = nr_daemon_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v37 UUIDString];
      v26 = MKBDeviceUnlockedSinceBoot();
      v27 = @"(nil)";
      *buf = 138544898;
      if (v25)
      {
        v27 = v25;
      }

      v57 = v27;
      v58 = 1024;
      v59 = v36;
      v60 = 1024;
      v61 = v14;
      v62 = 1024;
      v63 = v18;
      v64 = 1024;
      v65 = v16;
      v66 = 1024;
      v67 = v26 != 0;
      v68 = 1024;
      v69 = v20 != 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "xpcUnpairWithDeviceID: deviceID=%{public}@ shouldObliterate=%{BOOL}d shouldBrick=%{BOOL}d shouldStore=%{BOOL}d shouldPreserveESim=%{BOOL}d unlockedSinceBoot=%{BOOL}d, pairingReport=%{BOOL}d", buf, 0x30u);
    }
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100043E14;
  v49[3] = &unk_100177438;
  v28 = v37;
  v50 = v28;
  v51 = self;
  v53 = v54;
  v29 = v38;
  v52 = v29;
  [(NRPairingDaemon *)self grabHistoryWithReadBlock:v49];
  v30 = +[NRQueue delayPairingRequestQueue];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100044098;
  v39[3] = &unk_100177460;
  v44 = v54;
  v39[4] = self;
  v31 = v28;
  v40 = v31;
  v45 = v36;
  v32 = v29;
  v41 = v32;
  v46 = v14;
  v47 = v18;
  v48 = v16;
  v33 = v20;
  v42 = v33;
  v34 = v35;
  v43 = v34;
  [v30 dispatchAsync:v39];

  _Block_object_dispose(v54, 8);
}

- (void)xpcSuspendPairingClientCrashMonitoring:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self lastCaller];
  v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v7 = [v6 requestSetResumable:1 userInfo:v5 forRunningOperationType:@"pair"];
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[NRPairingDaemon xpcSuspendPairingClientCrashMonitoring:]";
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s resumableRequestAccepted: %d", buf, 0x12u);
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100044410;
  v11[3] = &unk_100175948;
  v11[4] = self;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v11];
  v4[2](v4);
}

- (void)xpcResumePairingClientCrashMonitoring:(id)a3
{
  v4 = a3;
  if (!CFPreferencesGetAppBooleanValue(@"store", @"com.apple.NanoRegistry", 0))
  {
    v5 = [(NRPairingDaemon *)self lastCaller];
    v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100044680;
    v9[3] = &unk_100177090;
    objc_copyWeak(&v11, &location);
    v7 = v5;
    v10 = v7;
    [v6 queueResumeCrashMonitoringRequest:v7 forRunningOperationType:@"pair" completion:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000446E8;
    v8[3] = &unk_100175948;
    v8[4] = self;
    [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v4[2](v4);
}

- (void)xpcRetriggerUnpairInfoDialogWithBlock:(id)a3
{
  v4 = a3;
  v3 = +[NRRepeatingAlertEngine sharedInstance];
  [v3 presentAlertIfEnabledWithName:@"WatchUnexpectedlyUnpairedBridge"];

  v4[2]();
}

- (void)getCanPairAnotherDeviceWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004489C;
  v4[3] = &unk_1001774B0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NRPairingDaemon *)v5 grabRegistryWithReadBlock:v4];
}

- (BOOL)_isIDSPairedAndConsistentWithIDSDevices:(id)a3
{
  v4 = a3;
  v5 = [(NRMutableDevice *)self->_mirrorOfActiveDevice objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v6 = [v5 value];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isDefaultPairedDevice])
        {
          v13 = [v12 nsuuid];
          v14 = [v6 isEqual:v13];

          if (v14)
          {
            continue;
          }
        }

        v15 = 0;
        goto LABEL_13;
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_13:

  return v15;
}

- (void)remoteObject:(id)a3 isConnected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
    v8 = v7;
    if (v7 == v6)
    {
    }

    else
    {
      v9 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];

      if (v9 != v6)
      {
        goto LABEL_7;
      }
    }

    [(NRPairingDaemon *)self refreshPropertyCache];
  }

LABEL_7:
  v10 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];

  if (v10 == v6)
  {
    if (v4)
    {
      [(NRConnectivityPublisher *)self->_connectivityPublisher setConnected:1];
      [(NRPairingDaemon *)self resetIDSConnectivityTimeout];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100044ECC;
      v12[3] = &unk_100175948;
      v12[4] = self;
      [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v12];
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100045014;
    v11[3] = &unk_100176588;
    v11[4] = self;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v11];
  }
}

- (void)remoteObjectIDSServiceAvailable:(id)a3 withIDSDevice:(id)a4
{
  v8 = a3;
  [(NRPairingDaemon *)self _isIDSReady];
  v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];

  v6 = v8;
  if (v5 == v8)
  {
    [(NRPairingDaemon *)self updateTrafficClass];
    v7 = [v8 defaultPairedDevice];
    if (v7)
    {
      [(NRPairingDaemon *)self _updatePairedDevicePropertiesFromIDSDevice:v7 completion:0];
    }

    v6 = v8;
  }
}

- (void)remoteObjectDevicesChanged:(id)a3
{
  v4 = a3;
  [(NRPairingDaemon *)self _isIDSReady];
  v5 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];

  if (v5 == v4)
  {
    v7 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v7 checkIfShouldRetryMigrationWhenIDSDevicesChange];
    v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v6 broadcastVersionChangeToDisconnectedWatches];
  }
}

- (void)getPairedPairedPairingIDForBluetoothID:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045304;
  v8[3] = &unk_1001768D8;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)_notifyClients
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 _notifyClients];
  [(NRPairingDaemon *)self checkLaunchNotificationsSetup];
}

- (void)checkLaunchNotificationsSetup
{
  if (qword_1001B37E0 != -1)
  {
    sub_1000FF2C4();
  }

  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_100023050;
  v4[4] = sub_100023060;
  v5 = [NROSTransaction transactionWithName:@"launchNotificationSetup"];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000456F8;
  v3[3] = &unk_100176D80;
  v3[4] = v4;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v3];
  [qword_1001B37D8 setLaunchEvent:@"com.apple.purplebuddy.setupexited" enable:1];
  [qword_1001B37D8 setLaunchEvent:@"com.apple.mobile.keybagd.first_unlock" enable:1];
  _Block_object_dispose(v4, 8);
}

- (void)presentWatchWasUpdatedAlertIfNeededForNewBuildVersion:(id)a3 oldBuildVersion:(id)a4
{
  v11 = a3;
  v5 = a4;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"hasAdvertisedFaceGallery", @"com.apple.NanoRegistry", 0);
  if (!AppBooleanValue)
  {
    v7 = sub_1000459E8(AppBooleanValue, v5);
    if (v7)
    {
      if ((sub_1000459E8(v7, v11) & 1) == 0)
      {
        v8 = +[NRRepeatingAlertEngine sharedInstance];
        [v8 resetStateForAlertWithName:@"PairedWatchWasUpdatedCheckoutFaceGallery"];

        v9 = +[NRRepeatingAlertEngine sharedInstance];
        [v9 setEnabled:1 withName:@"PairedWatchWasUpdatedCheckoutFaceGallery"];

        CFPreferencesSetAppValue(@"hasAdvertisedFaceGallery", kCFBooleanTrue, @"com.apple.NanoRegistry");
        CFPreferencesAppSynchronize(@"com.apple.NanoRegistry");
      }
    }
  }

  v10 = +[NRRepeatingAlertEngine sharedInstance];
  [v10 presentAlertsIfNeeded];
}

- (void)_updatePairedDevicePropertiesFromIDSDevice:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045B14;
  v8[3] = &unk_1001762B0;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v8];
}

- (void)remoteObject:(id)a3 receivedUnpairRequestWithAdvertisedName:(id)a4 shouldObliterate:(BOOL)a5 shouldBrick:(BOOL)a6 shouldPreserveESim:(BOOL)a7 withPairingFailureCode:(id)a8 withAbortReason:(id)a9 withRequestIdentifier:(id)a10 fromIDSBTUUID:(id)a11
{
  v27 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = v20;
  v23 = [v22 protobuf];
  if (CFPreferencesGetAppBooleanValue(@"storeBlockPairingFailure", @"com.apple.NanoRegistry", 0))
  {
    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = nr_daemon_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[NRPairingDaemon remoteObject:receivedUnpairRequestWithAdvertisedName:shouldObliterate:shouldBrick:shouldPreserveESim:withPairingFailureCode:withAbortReason:withRequestIdentifier:fromIDSBTUUID:]";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s: skipping unpair on pairing failure due to store demo setup", &buf, 0xCu);
      }
    }
  }

  else if (MKBDeviceUnlockedSinceBoot())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x2020000000;
    v39 = a5;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100046BB0;
    v28[3] = &unk_100177548;
    v28[4] = self;
    v29 = v21;
    v30 = v17;
    p_buf = &buf;
    v35 = a6;
    v36 = a7;
    v31 = v18;
    v32 = v19;
    v33 = v23;
    [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v28];

    _Block_object_dispose(&buf, 8);
  }
}

- (id)_deviceFromIDSBTUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(NRPairingDaemon *)self collection];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = _NRDevicePropertyBluetoothIdentifier;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [(NRPairingDaemon *)self collection];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [v13 objectForKeyedSubscript:v9];
        v15 = [v14 value];

        LOBYTE(v14) = [v15 isEqual:v4];
        if (v14)
        {
          goto LABEL_15;
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

LABEL_14:
    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF4B8();
    }

    goto LABEL_14;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (void)remoteObject:(id)a3 receivedPropertyChanges:(id)a4 isAllProperties:(BOOL)a5 fromIDSBTUUID:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[NRPairingDaemon remoteObject:receivedPropertyChanges:isAllProperties:fromIDSBTUUID:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: trace", buf, 0xCu);
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100047474;
  v16[3] = &unk_100177570;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = a5;
  v14 = v9;
  v15 = v10;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v16];
}

- (void)remoteObject:(id)a3 receivedPropertyRequestWithRequestIdentifier:(id)a4 fromIDSBTUUID:(id)a5
{
  localProperties = self->_localProperties;
  v7 = a4;
  v9 = [(NRLocalPropertyMonitor *)localProperties properties];
  v8 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v8 sendPropertyResponseWithTimeout:0 withProperties:v9 withRequestIdentifier:v7 withSentBlock:0];
}

- (void)remoteObject:(id)a3 receivedAddTermsEvent:(id)a4 fromIDSBTUUID:(id)a5 responseBlock:(id)a6
{
  serviceRegistry = self->_serviceRegistry;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v14 remoteObject:v13 receivedAddTermsEvent:v12 fromIDSBTUUID:v11 responseBlock:v10];
}

- (void)remoteObject:(id)a3 receivedCheckTermsEvent:(id)a4 fromIDSBTUUID:(id)a5 responseBlock:(id)a6
{
  serviceRegistry = self->_serviceRegistry;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v14 remoteObject:v13 receivedCheckTermsEvent:v12 fromIDSBTUUID:v11 responseBlock:v10];
}

- (void)remoteObject:(id)a3 receivedSystemVersionBroadcast:(id)a4 fromDeviceID:(id)a5
{
  serviceRegistry = self->_serviceRegistry;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v11 remoteObject:v10 receivedSystemVersionBroadcast:v9 fromDeviceID:v8];
}

- (void)assertionFactoryDidBecomeIdle:(id)a3
{
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NRPairingDaemon assertionFactoryDidBecomeIdle:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
    }
  }

  [(NRPairingDaemon *)self transactionCoordinatorHasBecomeIdle];
}

- (void)resourceAvailabilityDidChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSMapTable *)self->_assertionToAssertionInfo objectForKey:v5];
    if ([v5 availability] == 1)
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = sub_100023050;
      v13[4] = sub_100023060;
      v14 = [v6 pairingID];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100047EDC;
      v9[3] = &unk_100177608;
      v12 = v13;
      v10 = v6;
      v11 = self;
      [(NRPairingDaemon *)self grabHistoryWithReadBlock:v9];

      _Block_object_dispose(v13, 8);
    }

    else if ([v5 availability] == 2)
    {
      v7 = [v6 clientBlock];
      if (v7)
      {
        [v6 setClientBlock:0];
        v8 = [v5 error];
        (v7)[2](v7, v8, 0);
      }

      [(NRPairingDaemon *)self removeAssertionInfo:v6];
    }
  }
}

- (void)remoteObject:(id)a3 receivedTinkerMigrationRequestWithShouldCancel:(BOOL)a4 responseBlock:(id)a5
{
  v5 = a4;
  v6 = a5;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v5)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receivedMigrationRequestWithShouldCancel:%@", &v12, 0xCu);
    }
  }

  if (v5)
  {
    v11 = @"com.apple.nanoregistry.idsplugin.stopadvertising";
  }

  else
  {
    v11 = @"com.apple.nanoregistry.idsplugin.startadvertising";
  }

  notify_post([(__CFString *)v11 UTF8String]);
  v6[2](v6, 0);
}

- (void)remoteObject:(id)a3 receivedWatchTransferStagingRequestWithData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"YES";
      if (!v7)
      {
        v11 = @"NO";
      }

      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receivedWatchTransferStagingRequestWithData: %@", &v15, 0xCu);
    }
  }

  v12 = +[NRFeatureFlags sharedInstance];
  v13 = [v12 watchTransfer];

  if (v13)
  {
    v14 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v14 remoteObject:v6 receivedWatchTransferStagingRequestWithData:v7];
  }
}

- (void)remoteObject:(id)a3 receivedMigrationRequestWithShouldCancel:(BOOL)a4 responseBlock:(id)a5
{
  v5 = a4;
  v6 = a5;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v5)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receivedMigrationRequestWithShouldCancel:%@", &v12, 0xCu);
    }
  }

  if (v5)
  {
    v11 = @"com.apple.nanoregistry.idsplugin.stopadvertising";
  }

  else
  {
    v11 = @"com.apple.nanoregistry.idsplugin.startadvertising";
  }

  notify_post([(__CFString *)v11 UTF8String]);
  v6[2](v6, 0);
}

- (void)remoteObject:(id)a3 receivedMigratedAwayWithAdvertisedName:(id)a4
{
  v5 = a4;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "receivedMigratedAwayWithAdvertisedName:%@", buf, 0xCu);
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100048BA4;
  v10[3] = &unk_1001757C0;
  v11 = v5;
  v12 = self;
  v9 = v5;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v10];
}

- (void)xpcPingActiveGizmoWithPriority:(int)a3 withMessageSize:(int64_t)a4 withBlock:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004905C;
  v8[3] = &unk_100177658;
  v11 = a3;
  v9 = a5;
  v10 = a4;
  v8[4] = self;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (BOOL)shouldCollectPairingPerfStackshots
{
  v2 = _NRIsInternalInstall();
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"shouldNotCollectPairingPerfStackshots", @"com.apple.NanoRegistry", 0) == 0;
  }

  return v2;
}

- (void)xpcGetMigrationPairingCharacteristicReadDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Call to xpcGetMigrationPairingCharacteristicReadDataWithCompletion", v7, 2u);
    }
  }

  v3[2](v3, 0);
}

- (void)xpcPutMigrationChallengeCharacteristicWriteData:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Call to xpcPutMigrationChallengeCharacteristicWriteData(%@)", &v10, 0xCu);
    }
  }

  v6[2](v6, 0);
}

- (void)receivedMigrationAuthenticationRequest
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[NRPairingDaemon receivedMigrationAuthenticationRequest]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
    }
  }
}

- (void)xpcStageWatchForGraduationWithDeviceID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[NRPairingDaemon xpcStageWatchForGraduationWithDeviceID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v11 = +[NRFeatureFlags sharedInstance];
  v12 = [v11 watchTransfer];

  if (!v7 || (v12 & 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100049648;
    v14[3] = &unk_100177680;
    v15 = v6;
    v16 = self;
    v17 = v7;
    [(NRPairingDaemon *)self grabRegistryWithReadBlock:v14];

    v13 = v15;
  }

  else
  {
    v13 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:44 userInfo:0];
    (*(v7 + 2))(v7, v13);
  }
}

- (void)xpcStageWatchForTransferWithDeviceID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[NRPairingDaemon xpcStageWatchForTransferWithDeviceID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v11 = +[NRFeatureFlags sharedInstance];
  v12 = [v11 watchTransfer];

  if (!v7 || (v12 & 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100049B0C;
    v14[3] = &unk_100177680;
    v15 = v6;
    v16 = self;
    v17 = v7;
    [(NRPairingDaemon *)self grabRegistryWithReadBlock:v14];

    v13 = v15;
  }

  else
  {
    v13 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:44 userInfo:0];
    (*(v7 + 2))(v7, v13);
  }
}

- (void)xpcListWatchStagedForTransferWithCompletion:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[NRPairingDaemon xpcListWatchStagedForTransferWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  if (v4)
  {
    v8 = +[NRFeatureFlags sharedInstance];
    v9 = [v8 watchTransfer];

    if (v9)
    {
      v10 = +[NRQueue registryDaemonQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100049FCC;
      v12[3] = &unk_100175FA0;
      v12[4] = self;
      v13 = v4;
      [v10 dispatchAsync:v12];
    }

    else
    {
      v11 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:44 userInfo:0];
      (*(v4 + 2))(v4, 0, v11);
    }
  }
}

- (void)startPushing
{
  if (!self->_pushingReferenceCounter)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to push watches", v16, 2u);
      }
    }

    [(NRPairingDaemon *)self checkAndDisableStandAloneMode];
    if (!CFPreferencesGetAppBooleanValue(@"pushDisabled", @"com.apple.NanoRegistry", 0))
    {
      v6 = +[EPScalablePipeManagerManagerFactory sharedPipeManagerManagerFactory];
      v7 = [v6 pipeManagerManagerWithName:@"com.apple.ep" type:1 priority:1];
      pusherPipeManager = self->_pusherPipeManager;
      self->_pusherPipeManager = v7;

      v9 = [(EPScalablePipeManagerManager *)self->_pusherPipeManager newManagerWithDelegate:self];
      pusherPipe = self->_pusherPipe;
      self->_pusherPipe = v9;

      v11 = [NROSTransaction transactionWithName:@"watchPusher"];
      watchPusherTransaction = self->_watchPusherTransaction;
      self->_watchPusherTransaction = v11;

      v13 = objc_opt_new();
      watchPusher = self->_watchPusher;
      self->_watchPusher = v13;

      if (self->_useNetworkRelayPairing)
      {
        v15 = +[NetworkRelayAgent sharedInstance];
        [v15 startPushingCandidates];
      }
    }
  }

  ++self->_pushingReferenceCounter;
}

- (void)stopPushing
{
  pushingReferenceCounter = self->_pushingReferenceCounter;
  if (pushingReferenceCounter == 1)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping watch pushing", v14, 2u);
      }
    }

    pusherPipe = self->_pusherPipe;
    self->_pusherPipe = 0;

    pusherPipeManager = self->_pusherPipeManager;
    self->_pusherPipeManager = 0;

    watchPusherTransaction = self->_watchPusherTransaction;
    self->_watchPusherTransaction = 0;

    [(EPWatchPusher *)self->_watchPusher invalidate];
    objc_storeStrong(&self->_lastWatchPusher, self->_watchPusher);
    watchPusher = self->_watchPusher;
    self->_watchPusher = 0;

    if (self->_useNetworkRelayPairing)
    {
      v11 = +[NetworkRelayAgent sharedInstance];
      [v11 stopPushingCandidates];
    }

    pushingReferenceCounter = self->_pushingReferenceCounter;
  }

  v12 = pushingReferenceCounter < 1;
  v13 = pushingReferenceCounter - 1;
  if (!v12)
  {
    self->_pushingReferenceCounter = v13;
  }
}

- (void)xpcStartWatchSetupPushWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self lastCaller];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  pairingClients = self->_pairingClients;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10004A49C;
  v11 = &unk_1001776A8;
  v7 = v5;
  v12 = v7;
  v13 = &v14;
  [(NRSimpleReferenceCounter *)pairingClients enumerateObjects:&v8];
  if ((v15[3] & 1) == 0)
  {
    [(NRSimpleReferenceCounter *)self->_pushingClients addObject:v7, v8, v9, v10, v11];
  }

  v4[2](v4);

  _Block_object_dispose(&v14, 8);
}

- (void)xpcStopWatchSetupPushWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self lastCaller];
  [(NRSimpleReferenceCounter *)self->_pushingClients removeObject:v5];
  v4[2](v4);
}

- (void)xpcSetMigrationConsented:(BOOL)a3 forDeviceID:(id)a4 withBlock:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    [(NRPairingDaemon *)self checkAndDisableStandAloneMode];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004A614;
  v12[3] = &unk_1001760F8;
  v13 = v8;
  v14 = self;
  v16 = v6;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v12];
}

- (void)xpcApplyDiff:(id)a3 withSecureProperties:(id)a4 block:(id)a5
{
  v5.receiver = self;
  v5.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v5 xpcApplyDiff:a3 withSecureProperties:a4 block:a5];
}

- (void)xpcClientInfo:(id)a3
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 xpcClientInfo:a3];
}

- (void)xpcGetChangeHistoryWithBlock:(id)a3
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 xpcGetChangeHistoryWithBlock:a3];
}

- (void)xpcGetDeviceCollectionWithBlock:(id)a3
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 xpcGetDeviceCollectionWithBlock:a3];
}

- (void)xpcRetrieveSecureProperties:(id)a3 block:(id)a4
{
  v4.receiver = self;
  v4.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v4 xpcRetrieveSecureProperties:a3 block:a4];
}

- (void)xpcSwitchIndex:(id)a3
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 xpcSwitchIndex:a3];
}

- (void)xpcLongForInternalPreference:(id)a3 withBlock:(id)a4
{
  v4.receiver = self;
  v4.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v4 xpcLongForInternalPreference:a3 withBlock:a4];
}

- (void)xpcBooleanForInternalPreference:(id)a3 withBlock:(id)a4
{
  v4.receiver = self;
  v4.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v4 xpcBooleanForInternalPreference:a3 withBlock:a4];
}

- (void)xpcBeginMigrationWithDeviceID:(id)a3 passcode:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 UUIDString];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "xpcBeginMigrationWithDeviceID: Setting migration consent for device ID %@", &v16, 0xCu);
    }
  }

  v15 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v15 setPasscode:v10];

  [v15 setMigrationConsent:1 forDeviceID:v8 completion:v9];
}

- (void)remoteObjectReceivedWatchMigrationCompletion:(unint64_t)a3
{
  v7 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v7 migrationCompletionRequestReceivedWithStatus:a3];
  v5 = objc_opt_new();
  v6 = [(NRPairingDaemon *)self mirrorOfActiveDeviceID];
  [v5 submitPairingReportWithRegistry:self deviceID:v6];
}

- (void)remoteObjectReveivedWatchMigrationMetricSessionID:(id)a3
{
  serviceRegistry = self->_serviceRegistry;
  v4 = a3;
  v5 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v5 migrationMetricSessionIDReceivedWithID:v4];
}

- (int64_t)minPairingCompatibilityVersion
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = [v2 minPairingCompatibilityVersion];

  return v3;
}

- (int64_t)maxPairingCompatibilityVersion
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = [v2 maxPairingCompatibilityVersion];

  return v3;
}

- (void)xpcGetLastMigrationRequestPhoneNameWithCompletion:(id)a3
{
  serviceRegistry = self->_serviceRegistry;
  v4 = a3;
  v6 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  v5 = [v6 lastMigrationRequestPhoneName];
  v4[2](v4, v5);
}

- (void)keychainSyncStatusDidChange:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004B464;
  v3[3] = &unk_100177718;
  v4 = a3;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v3];
}

- (void)resetIDSConnectivityTimeout
{
  self->_idsConnectivityTimedOut = 0;
  [(AbstractTimer *)self->_idsConnectivityTimer invalidate];
  idsConnectivityTimer = self->_idsConnectivityTimer;
  self->_idsConnectivityTimer = 0;
}

- (void)startIDSConnectivityTimeout
{
  if (!self->_idsConnectivityTimer && !self->_idsConnectivityTimedOut)
  {
    v3 = +[NRQueue registryDaemonQueue];
    v4 = [v3 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004B824;
    v7[3] = &unk_100175660;
    v7[4] = self;
    v5 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.connectivitytimer" delay:1 gracePeriod:v4 waking:v7 handlerQueue:300.0 handlerBlock:0.0];
    idsConnectivityTimer = self->_idsConnectivityTimer;
    self->_idsConnectivityTimer = v5;
  }
}

- (void)idsConnectivityTimeout
{
  self->_idsConnectivityTimedOut = 1;
  idsConnectivityTimer = self->_idsConnectivityTimer;
  self->_idsConnectivityTimer = 0;
  _objc_release_x1();
}

- (void)getPairedPairingIDForBluetoothID:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B90C;
  v8[3] = &unk_1001768D8;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)sendRemoteUnpairingDidBeginNotificationWithBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004BBF4;
  v5[3] = &unk_100176B30;
  v6 = a3;
  v4 = v6;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v5];
}

- (BOOL)proxyIsSecureDataAvailable:(id)a3
{
  v3 = [(NRPairingDaemon *)self secureProperties];
  v4 = v3 != 0;

  return v4;
}

- (void)xpcScanForMigratableWatchesWithBlock:(id)a3
{
  serviceRegistry = self->_serviceRegistry;
  v4 = a3;
  v5 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v5 checkIfShouldRetryMigrationWhenIDSDevicesChange];
  v4[2](v4);
}

- (void)xpcGetLastSwitchIndex:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)xpcGetMigrationCountForPairingID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (void)xpcGetInitialSyncCompletedForPairingID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (void)termsAcknowledgementServiceGetDeviceMirrorFromDeviceID:(id)a3 block:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004C024;
  v8[3] = &unk_1001768D8;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v8];
}

- (void)termsAcknowledgementServiceGetNRIDFromBTID:(id)a3 block:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004C310;
  v8[3] = &unk_1001768D8;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v8];
}

- (id)termsAcknowledgementServiceGetRemoteObject
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)termsAcknowledgementServiceGetCloudObject
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)termsAcknowledgementServiceForAltAccount
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (void)xpcCheckIfFlaggedForRecoveryWithCompletion:(id)a3
{
  serviceRegistry = self->_serviceRegistry;
  v4 = a3;
  v7 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  v5 = +[NRQueue registryDaemonQueue];
  v6 = [v5 queue];
  [v7 checkIfFlaggedForRecoveryWithQueue:v6 completion:v4];
}

- (void)xpcClearRecoveryFlagWithCompletion:(id)a3
{
  serviceRegistry = self->_serviceRegistry;
  v4 = a3;
  v7 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  v5 = +[NRQueue registryDaemonQueue];
  v6 = [v5 queue];
  [v7 clearRecoveryFlagWithQueue:v6 completion:v4];
}

- (void)xpcFakePairedSyncStartWithCompletion:(id)a3
{
  v4 = a3;
  v18 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v20[0] = @"activeActivityLabels";
  v20[1] = @"completedActivityLabels";
  v21[0] = &__NSArray0__struct;
  v21[1] = &__NSArray0__struct;
  v20[2] = @"migrationSync";
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 hasTransactionType:@"migration"]);
  v21[2] = v5;
  v21[3] = &off_100186C70;
  v20[3] = @"syncProgressState";
  v20[4] = @"syncSessionType";
  v20[5] = @"version";
  v21[4] = &off_100186C88;
  v21[5] = &off_100186BC8;
  v6 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:6];

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FakePairedSyncIsCompleteWithCompletion: Updating sync state using accessor.", buf, 2u);
    }
  }

  v10 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.pairedsync"];
  [v10 setObject:v6 forKey:@"PSYWatchSyncClientState"];
  [v10 setObject:&off_100187D48 forKey:@"PSYWatchSyncState"];
  v11 = [v10 synchronize];
  v12 = objc_opt_new();
  v13 = [NSSet setWithObjects:@"PSYWatchSyncClientState", @"PSYWatchSyncState", 0];
  [v12 synchronizeNanoDomain:@"com.apple.pairedsync" keys:v13];

  v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanoprefsyncd"];
  [v14 setBool:1 forKey:@"past-initial-sync"];
  v15 = [v14 synchronize];
  v16 = objc_opt_new();
  v17 = [NSSet setWithObject:@"past-initial-sync"];
  [v16 synchronizeNanoDomain:@"com.apple.pairedsync" keys:v17];

  notify_post("PSYWatchSyncStateChangedNotification");
  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)xpcFakePairedSyncIsCompleteWithCompletion:(id)a3
{
  v4 = a3;
  v18 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v20[0] = @"activeActivityLabels";
  v20[1] = @"completedActivityLabels";
  v21[0] = &off_100187EB0;
  v21[1] = &__NSArray0__struct;
  v20[2] = @"migrationSync";
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 hasTransactionType:@"migration"]);
  v21[2] = v5;
  v21[3] = &off_100186CA0;
  v20[3] = @"syncProgressState";
  v20[4] = @"syncSessionType";
  v20[5] = @"version";
  v21[4] = &off_100186C88;
  v21[5] = &off_100186BC8;
  v6 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:6];

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FakePairedSyncIsCompleteWithCompletion: Updating sync state using accessor.", buf, 2u);
    }
  }

  v10 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.pairedsync"];
  [v10 setObject:v6 forKey:@"PSYWatchSyncClientState"];
  [v10 setObject:&off_100187D70 forKey:@"PSYWatchSyncState"];
  v11 = [v10 synchronize];
  v12 = objc_opt_new();
  v13 = [NSSet setWithObjects:@"PSYWatchSyncClientState", @"PSYWatchSyncState", 0];
  [v12 synchronizeNanoDomain:@"com.apple.pairedsync" keys:v13];

  v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanoprefsyncd"];
  [v14 setBool:1 forKey:@"past-initial-sync"];
  v15 = [v14 synchronize];
  v16 = objc_opt_new();
  v17 = [NSSet setWithObject:@"past-initial-sync"];
  [v16 synchronizeNanoDomain:@"com.apple.pairedsync" keys:v17];

  notify_post("com.apple.nanopreferencessync.initialSyncCompletion");
  notify_post("PSYWatchSyncStateChangedNotification");
  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)xpcTriggerTailspinFrom:(unint64_t)a3 forApp:(id)a4
{
  v7 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = +[NRTailspinCapture sharedInstance];
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = @"unknown";
    }

    [v5 captureForApp:v6 startEdge:a3];
  }
}

- (void)assertionDescription:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self activeDeviceAssertions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        if ([v11 BOOLValue])
        {
          v12 = "YES";
        }

        else
        {
          v12 = "NO";
        }

        [v4 appendFormat:@"%@ %s\n", v10, v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)xpcActiveDeviceAssertions:(id)a3
{
  v5 = a3;
  v6 = [(NRPairingDaemon *)self activeDeviceAssertions];
  (*(a3 + 2))(v5, v6);
}

- (id)activeDeviceAssertions
{
  +[NSMutableDictionary dictionary];
  v25 = v24 = self;
  v18 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v3 = [v18 assertions];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v21)
  {
    v19 = v3;
    v20 = *v33;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v3);
        }

        v5 = [v3 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = v5;
        v27 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v27)
        {
          v22 = i;
          v6 = 0;
          v26 = *v29;
          do
          {
            v7 = 0;
            v8 = v6;
            do
            {
              if (*v29 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v28 + 1) + 8 * v7);
              v10 = [(NSMapTable *)v24->_assertionToAssertionInfo objectForKey:v9];
              v11 = [v9 pairingID];
              v12 = [v11 UUIDString];
              v13 = [v10 clientProxy];
              v14 = [v13 appPath];
              v15 = [v10 clientProxy];
              v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%p: pairingID=%@ process=%@.%ld", v9, v12, v14, [v15 pid]);

              v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 availability] == 1);

              [v25 setObject:v6 forKeyedSubscript:v16];
              v7 = v7 + 1;
              v8 = v6;
            }

            while (v27 != v7);
            v27 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v27);

          v3 = v19;
          i = v22;
        }
      }

      v21 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v21);
  }

  return v25;
}

- (void)xpcSwitchActiveDeviceWithDeviceID:(id)a3 isMagicSwitch:(BOOL)a4 operationHasCompleted:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(NRPairingDaemon *)self lastCaller];
  [(NRPairingDaemon *)self setLastCaller:v9];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004D3E8;
  v12[3] = &unk_100177760;
  v13 = v9;
  v14 = v7;
  v12[4] = self;
  v10 = v9;
  v11 = v7;
  [(NRPairingDaemon *)self xpcSwitchActiveDeviceWithDeviceID:v8 withAssertionHandler:v12];
}

- (void)xpcIsPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  serviceRegistry = self->_serviceRegistry;
  v8 = a3;
  v9 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004D554;
  v11[3] = &unk_100177788;
  v12 = v6;
  v10 = v6;
  [v9 isDevice:v8 readyToMigrate:v11];
}

- (void)xpcIsAssertionActive:(id)a3 withCompletion:(id)a4
{
  clientAssertionIDToAssertionInfo = self->_clientAssertionIDToAssertionInfo;
  v6 = a4;
  v7 = [(NSMutableDictionary *)clientAssertionIDToAssertionInfo objectForKey:a3];
  v6[2](v6, v7 != 0, 0);
}

- (void)deviceHasUnpairedBluetooth:(id)a3
{
  v3 = a3;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch with Bluetooth identifier %@ unexpectedly unpaired from watch side.", &v7, 0xCu);
    }
  }
}

- (void)discoveredCandidateName:(id)a3 bluetoothIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Discovered a candidate with name %{public}@, bt UUID %@", &v11, 0x16u);
    }
  }

  [(NRPairingDaemon *)self createDeviceFromNetworkRelayDiscoveryWithAdvertisementName:v6 bluetoothIdentifier:v7 withRSSI:&off_100186CD0 withBlock:0];
}

- (void)lostCandidateWithName:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Lost a candidate with name %{public}@", &v8, 0xCu);
    }
  }

  [(NRPairingDaemon *)self removeCandidateDeviceWithName:v4];
}

+ (void)updatePingMyWatchControlCenterModuleVisibility:(id)a3
{
  v3 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v25;
  v8 = NRDevicePropertyIsAltAccount;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = [v3 objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
      if ([v10 isPaired] && objc_msgSend(v10, "isSetup") && (objc_msgSend(v10, "isArchived") & 1) == 0)
      {
        v11 = [v10 objectForKeyedSubscript:v8];
        v12 = [v11 value];
        v13 = ~[v12 BOOLValue];

        v6 += v13 & 1;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  }

  while (v5);
  if (!v6)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v14 = [v3 activeDeviceID];
  if (!v14)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = [v3 objectForKeyedSubscript:v14];
  v16 = [[NSUUID alloc] initWithUUIDString:@"C5BAD2E8-BB79-4E9E-8A0D-757C60D31053"];
  v17 = [v15 supportsCapability:v16];

  if (v17)
  {
    v18 = 1;
LABEL_17:
    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = @"com.apple.PingMyWatchControlCenterUI";
        v30 = 1024;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Attempting to update the %@ visibility to: %{BOOL}d", buf, 0x12u);
      }
    }

    v14 = +[CCSControlCenterService sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004DBCC;
    v22[3] = &unk_1001777A8;
    v23 = v18;
    [v14 setVisibility:v18 forModuleWithIdentifier:@"com.apple.PingMyWatchControlCenterUI" completionHandler:v22];
    goto LABEL_22;
  }

LABEL_23:
}

- (void)updatePairingSessionIdIfNeededForActiveDevice
{
  v3 = [(NRPairingDaemon *)self collection];
  v4 = [v3 activeDevice];

  v5 = [[NSUUID alloc] initWithUUIDString:@"0B75AFAC-6373-41D2-A4F3-D4C1E9295A07"];
  v6 = [v4 supportsCapability:v5];

  if (v6)
  {
    v7 = NRDevicePropertyPairingSessionIdentifier;
    v8 = [v4 objectForKeyedSubscript:NRDevicePropertyPairingSessionIdentifier];
    v9 = [v8 value];

    if (!v9)
    {
      v10 = +[NSUUID UUID];
      v9 = [v10 UUIDString];

      v11 = +[NSMutableDictionary dictionary];
      v12 = [[NRDevicePropertyDiff alloc] initWithValue:v9];
      v13 = [[NRDevicePropertyDiffType alloc] initWithDiff:v12 andChangeType:0];
      [v11 setObject:v13 forKeyedSubscript:v7];
      v14 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v11];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1000E78C8;
      v24 = &unk_100175598;
      v25 = v4;
      v26 = v14;
      v15 = v14;
      [(NRPairingDaemon *)self enqueueAsync:&v21];
      [(NRPairingDaemon *)self sendPairingIdToActiveDevice:v9, v21, v22, v23, v24];
    }

    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[NRPairingDaemon(PairingSessionID) updatePairingSessionIdIfNeededForActiveDevice]";
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  v19 = nr_daemon_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[NRPairingDaemon(PairingSessionID) updatePairingSessionIdIfNeededForActiveDevice]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Does not support pairing session Id.", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)sendPairingIdToActiveDevice:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingDaemon *)self serviceRegistry];
  v7 = [v5 serviceFromClass:objc_opt_class()];

  v6 = [(NRPairingDaemon *)self _bluetoothIDOfActiveDevice];
  [v7 sendPairingSessionID:v4 toIDSBTUUID:v6 withResponseBlock:&stru_100179A70];
}

@end