@interface NRPairingDaemon
+ (id)countdown:(int64_t)countdown toCompletion:(id)completion;
+ (id)sharedInstance;
+ (void)debugDump:(id)dump public:(BOOL)public;
+ (void)updateActiveFlag:(BOOL)flag andPost:(BOOL)post;
+ (void)updatePingMyWatchControlCenterModuleVisibility:(id)visibility;
- (BOOL)_deviceIsInSetupBasedOnIsSetupValue:(id)value;
- (BOOL)_hasUpdateModeDevicesInCollection:(id)collection;
- (BOOL)_isBridgeForeground;
- (BOOL)_isIDSPairedAndConsistentWithIDSDevices:(id)devices;
- (BOOL)_requiresNetworkRelayPairingIdentifierUpdateForDevice:(id)device;
- (BOOL)didRestoreFromBackup;
- (BOOL)isBluetoothConnected;
- (BOOL)isBluetoothPoweredOn;
- (BOOL)isSecureDataAvailable;
- (BOOL)legacyDidRestoreFromBackup;
- (BOOL)managedConfigurationWatchDisabled;
- (BOOL)pairingCompatibilityVersionInitWithCollection:(id)collection;
- (BOOL)proxyIsSecureDataAvailable:(id)available;
- (BOOL)setPairingClientCrashMonitoringCache:(BOOL)cache proxy:(id)proxy;
- (BOOL)shouldCollectPairingPerfStackshots;
- (BOOL)supportsEarlyPairedSync;
- (NRMutableDevice)mirrorOfActiveDevice;
- (NRPairingDaemon)init;
- (NRPairingProxy)lastCaller;
- (NSNumber)chipIDOfActiveDevice;
- (OS_dispatch_queue)pairingQueue;
- (id)IDSGetPairedDevices;
- (id)_bluetoothIDFromPairingID:(id)d;
- (id)_bluetoothIDOfActiveDevice;
- (id)_deviceFromIDSBTUUID:(id)d;
- (id)_migrationReporter;
- (id)_resolveIsSetupNumberForDevice:(id)device;
- (id)activeDeviceAssertions;
- (id)dumpStateGivenCachedHistoryIndex:(unint64_t)index;
- (id)getTrafficClassifiersForCompatibilityState:(unsigned __int16)state;
- (id)legacyUnpairTriggerFileContents;
- (id)localizedString:(id)string;
- (id)termsAcknowledgementServiceForAltAccount;
- (id)termsAcknowledgementServiceGetCloudObject;
- (id)termsAcknowledgementServiceGetRemoteObject;
- (id)unpairReasonString:(unint64_t)string;
- (id)unpairTriggerFileContents;
- (int)getNotifyTokenWithName:(id)name;
- (int64_t)maxPairingCompatibilityVersion;
- (int64_t)minPairingCompatibilityVersion;
- (int64_t)pairingVersionFromAdvertisedName:(id)name;
- (unint64_t)lastStatusCodeCache;
- (unint64_t)readNotifyToken:(int)token;
- (void)_archiveDevices:(id)devices withCollection:(id)collection;
- (void)_beginNetworkRelayDiscovery;
- (void)_cancelScheduleTimerOnQueue:(id)queue;
- (void)_deleteSharingPathWithPairingID:(id)d;
- (void)_forceMigrationSync:(id)sync withCollection:(id)collection;
- (void)_isIDSReady;
- (void)_markDeviceIsSetupWhereApplicable:(id)applicable bypassIsSetupNoCheck:(BOOL)check;
- (void)_notifyClients;
- (void)_onRestartMarkPairedDevicesIsSetup:(id)setup;
- (void)_queueMarkDeviceIsSetup:(id)setup;
- (void)_scheduleTimerOnQueue:(id)queue afterDelay:(double)delay block:(id)block;
- (void)_setBridgeBadgeWithCollection:(id)collection;
- (void)_transactionCoordinatorHasBecomeIdle;
- (void)_updateCompatibilityStateForDeviceID:(id)d withDeviceCollection:(id)collection;
- (void)_updateCompatibilityStateForDeviceID:(id)d withDeviceCollection:(id)collection oldCompatibilityState:(id)state newCompatibilityState:(id)compatibilityState;
- (void)_updateIsSetupPropertyForNewlyPairedDevice:(id)device;
- (void)_updateNetworkRelayIdentifierForDevice:(id)device;
- (void)_updateNetworkRelayIdentifierForDevicesInCollection:(id)collection;
- (void)_updatePairedDevicePropertiesFromIDSDevice:(id)device completion:(id)completion;
- (void)_upsertDeviceDiscoveredBy:(unint64_t)by pairingID:(id)d advertisedName:(id)name bluetoothDeviceID:(id)iD rssiValue:(int64_t)value withBlock:(id)block;
- (void)_xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion;
- (void)abortPairingReason:(id)reason proxy:(id)proxy withBlock:(id)block;
- (void)ackXPCEvents;
- (void)allocateDictionaries;
- (void)areWePairedOrPairing:(id)pairing;
- (void)assertionDescription:(id)description;
- (void)assertionFactoryDidBecomeIdle:(id)idle;
- (void)beginDiscovery:(BOOL)discovery withDeviceIDToDiscover:(id)discover;
- (void)broadcastActiveDeviceChipID:(id)d from:(id)from;
- (void)centralManagerDidUpdateState:(id)state;
- (void)checkAndDisableStandAloneMode;
- (void)checkForWatchNeedsGraduation:(id)graduation;
- (void)checkLaunchNotificationsSetup;
- (void)cleanupPairingStoreWithCompletion:(id)completion;
- (void)clearMagicSwitchAdvertisingIdentifierSeedIfNeeded;
- (void)createDeviceFromBluetoothDiscoveryWithAdvertisementData:(id)data withBluetoothPeer:(id)peer withRSSI:(id)i withBlock:(id)block;
- (void)createDeviceFromBluetoothPairRequestWithBluetoothPeer:(id)peer advertisedName:(id)name withBlock:(id)block;
- (void)createDeviceFromNetworkRelayDiscoveryWithAdvertisementName:(id)name bluetoothIdentifier:(id)identifier withRSSI:(id)i withBlock:(id)block;
- (void)createUnpairTransactionsWithCompletion:(id)completion;
- (void)dealloc;
- (void)debounceOnQueue:(id)queue block:(id)block;
- (void)deleteLocalPairingStore:(id)store withCompletion:(id)completion;
- (void)deleteUnexpectedIDSPairedDevicesWithCompletion:(id)completion;
- (void)deviceHasUnpairedBluetooth:(id)bluetooth;
- (void)discoveredCandidateName:(id)name bluetoothIdentifier:(id)identifier;
- (void)enqueueSetLastPairedDeviceTransactionWithCompletion:(id)completion;
- (void)enterCompatibilityState:(unsigned __int16)state withDeviceID:(id)d withCompletion:(id)completion;
- (void)forceEndDiscovery;
- (void)getAdvertisedNameFromDeviceID:(id)d withCompletion:(id)completion;
- (void)getCanPairAnotherDeviceWithCompletion:(id)completion;
- (void)getEnsureActiveDeviceWithCompletion:(id)completion;
- (void)getPairedPairedPairingIDForBluetoothID:(id)d completion:(id)completion;
- (void)getPairedPairingIDForBluetoothID:(id)d completion:(id)completion;
- (void)handleDeadPairingClient:(id)client;
- (void)idsConnectivityTimeout;
- (void)initBluetoothWithBlock:(id)block;
- (void)initIDSService:(Class)service block:(id)block;
- (void)initNetworkRelayPairerWithBlock:(id)block;
- (void)initializeAllIDSChannelsBlock:(id)block;
- (void)initializeTrafficClassBlock:(id)block;
- (void)initiateSyncAfterSoftwareUpdateForDevice:(id)device;
- (void)invalidateIDSChannels;
- (void)keychainSyncStatusDidChange:(BOOL)change;
- (void)lastPairedDeviceWithBlock:(id)block;
- (void)logIfVersionsAreOverridden;
- (void)lostCandidateWithName:(id)name;
- (void)normalizeDaemonStateWithBlock:(id)block;
- (void)nuke:(id)nuke completion:(id)completion;
- (void)postFirstUnlockInitBlock:(id)block;
- (void)preFirstUnlockInitCompletion:(id)completion;
- (void)presentWatchWasUpdatedAlertIfNeededForNewBuildVersion:(id)version oldBuildVersion:(id)buildVersion;
- (void)purgeDiscoveredDevices:(id)devices;
- (void)purgeIDSPairedDevicesExceptFor:(id)for withQueue:(id)queue andCompletion:(id)completion;
- (void)receivedMigrationAuthenticationRequest;
- (void)refreshPropertyCache;
- (void)registerManagedConfigurationChanged:(id)changed;
- (void)remoteObject:(id)object isConnected:(BOOL)connected;
- (void)remoteObject:(id)object receivedAddTermsEvent:(id)event fromIDSBTUUID:(id)d responseBlock:(id)block;
- (void)remoteObject:(id)object receivedCheckTermsEvent:(id)event fromIDSBTUUID:(id)d responseBlock:(id)block;
- (void)remoteObject:(id)object receivedMigratedAwayWithAdvertisedName:(id)name;
- (void)remoteObject:(id)object receivedMigrationRequestWithShouldCancel:(BOOL)cancel responseBlock:(id)block;
- (void)remoteObject:(id)object receivedPropertyChanges:(id)changes isAllProperties:(BOOL)properties fromIDSBTUUID:(id)d;
- (void)remoteObject:(id)object receivedPropertyRequestWithRequestIdentifier:(id)identifier fromIDSBTUUID:(id)d;
- (void)remoteObject:(id)object receivedSystemVersionBroadcast:(id)broadcast fromDeviceID:(id)d;
- (void)remoteObject:(id)object receivedTinkerMigrationRequestWithShouldCancel:(BOOL)cancel responseBlock:(id)block;
- (void)remoteObject:(id)object receivedUnpairRequestWithAdvertisedName:(id)name shouldObliterate:(BOOL)obliterate shouldBrick:(BOOL)brick shouldPreserveESim:(BOOL)sim withPairingFailureCode:(id)code withAbortReason:(id)reason withRequestIdentifier:(id)self0 fromIDSBTUUID:(id)self1;
- (void)remoteObject:(id)object receivedWatchTransferStagingRequestWithData:(id)data;
- (void)remoteObjectDevicesChanged:(id)changed;
- (void)remoteObjectIDSServiceAvailable:(id)available withIDSDevice:(id)device;
- (void)remoteObjectReceivedWatchMigrationCompletion:(unint64_t)completion;
- (void)remoteObjectReveivedWatchMigrationMetricSessionID:(id)d;
- (void)removeAssertionInfo:(id)info;
- (void)removeAssertionsForProxy:(id)proxy newDeviceID:(id)d;
- (void)removeCandidateDeviceWithName:(id)name;
- (void)removeExternalAssertionsForPairingID:(id)d;
- (void)removeStaleDiscoveredDevices;
- (void)resetIDSConnectivityTimeout;
- (void)resetPhoneStateForNewPairing;
- (void)resetWatchStateForNewPairing;
- (void)resourceAvailabilityDidChange:(id)change;
- (void)saveAssertionInfo:(id)info;
- (void)sendPairingIdToActiveDevice:(id)device;
- (void)sendRemoteUnpairingDidBeginNotificationWithBlock:(id)block;
- (void)sendXPCDeviceNeedsPasscodeMessage:(id)message passcode:(id)passcode;
- (void)sendXPCOOBKeyChanged:(id)changed;
- (void)setChipIDOfActiveDevice:(id)device;
- (void)setDidRestoreFromBackup:(BOOL)backup;
- (void)setIDSTrafficClassifiersForActiveDeviceWithNewCompatibilityState:(id)state;
- (void)setLastCaller:(id)caller;
- (void)setLastStatusCodeCache:(unint64_t)cache;
- (void)setStatusCode:(unint64_t)code InCollection:(id)collection;
- (void)setUpClientReferenceCounters;
- (void)setUpHistoryCompletionBlocks;
- (void)setupSignalHandlers;
- (void)sigTerm;
- (void)sigUsr1;
- (void)startIDSConnectivityTimeout;
- (void)startPushing;
- (void)statusCodeManager:(id)manager electionOutcomeChanged:(unint64_t)changed;
- (void)stopPushing;
- (void)syncPairingClientCrashMonitoringCache;
- (void)termsAcknowledgementServiceGetDeviceMirrorFromDeviceID:(id)d block:(id)block;
- (void)termsAcknowledgementServiceGetNRIDFromBTID:(id)d block:(id)block;
- (void)transactionCoordinatorHasBecomeIdle;
- (void)unpairDeviceWithPairingID:(id)d obliterationString:(id)string shouldBrick:(id)brick storeUnpair:(id)unpair migrationUnpair:(id)migrationUnpair shouldPreserveESim:(id)sim pairingReport:(id)report remoteUnpairRequestUUID:(id)self0 shouldConnectionWithDevice:(BOOL)self1;
- (void)updateDeviceID:(id)d withProperties:(id)properties withCompletion:(id)completion;
- (void)updateFromBTState;
- (void)updateFromBTState:(int64_t)state;
- (void)updateIsPairedTelemetryKey;
- (void)updateMirrorWithCollection:(id)collection;
- (void)updateNotifyToken:(int)token withValue:(unint64_t)value withNotificationName:(id)name alwaysPost:(BOOL)post;
- (void)updatePairingSessionIdIfNeededForActiveDevice;
- (void)updateShouldMonitorProxy:(id)proxy;
- (void)updateTrafficClass;
- (void)voidIDSService:(Class)service;
- (void)xpcAbortPairingReason:(id)reason withBlock:(id)block;
- (void)xpcActiveDeviceAssertions:(id)assertions;
- (void)xpcApplyDiff:(id)diff withSecureProperties:(id)properties block:(id)block;
- (void)xpcBeginDiscoveryWithBlock:(id)block;
- (void)xpcBeginMigrationWithCompletion:(id)completion;
- (void)xpcBeginMigrationWithDeviceID:(id)d completion:(id)completion;
- (void)xpcBeginMigrationWithDeviceID:(id)d passcode:(id)passcode withBlock:(id)block;
- (void)xpcBooleanForInternalPreference:(id)preference withBlock:(id)block;
- (void)xpcCheckIfFlaggedForRecoveryWithCompletion:(id)completion;
- (void)xpcClearRecoveryFlagWithCompletion:(id)completion;
- (void)xpcClearWatchNeedsGraduation:(id)graduation;
- (void)xpcClientInfo:(id)info;
- (void)xpcCompanionOOBDiscoverAndPairWithName:(id)name withOutOfBandPairingKey:(id)key withOptions:(id)options operationHasBegun:(id)begun;
- (void)xpcCompanionPasscodePairWithDeviceID:(id)d withOptions:(id)options operationHasBegun:(id)begun;
- (void)xpcDeviceIDAtSwitchIndex:(unsigned int)index withBlock:(id)block;
- (void)xpcEndDiscoveryWithBlock:(id)block;
- (void)xpcFakePairedSyncIsCompleteWithCompletion:(id)completion;
- (void)xpcFakePairedSyncStartWithCompletion:(id)completion;
- (void)xpcGetChangeHistoryWithBlock:(id)block;
- (void)xpcGetDeviceCollectionWithBlock:(id)block;
- (void)xpcGetInitialSyncCompletedForPairingID:(id)d completion:(id)completion;
- (void)xpcGetLastMigrationRequestPhoneNameWithCompletion:(id)completion;
- (void)xpcGetLastSwitchIndex:(id)index;
- (void)xpcGetMigrationCountForPairingID:(id)d completion:(id)completion;
- (void)xpcGetMigrationPairingCharacteristicReadDataWithCompletion:(id)completion;
- (void)xpcGizmoOOBAdvertiseAndPairWithName:(id)name operationHasBegun:(id)begun;
- (void)xpcGizmoPasscodeAdvertiseAndPairWithName:(id)name operationHasBegun:(id)begun;
- (void)xpcInvalidateSwitchAssertionWithIdentifier:(id)identifier block:(id)block;
- (void)xpcIsAssertionActive:(id)active withCompletion:(id)completion;
- (void)xpcIsPhoneReadyToMigrateDevice:(id)device withCompletion:(id)completion;
- (void)xpcListWatchStagedForTransferWithCompletion:(id)completion;
- (void)xpcLongForInternalPreference:(id)preference withBlock:(id)block;
- (void)xpcNotifyActivationCompleted:(id)completed withSuccess:(BOOL)success;
- (void)xpcNotifyPasscode:(id)passcode withDeviceID:(id)d;
- (void)xpcPairWithSimulator:(id)simulator withCompletion:(id)completion;
- (void)xpcPairingClientDidEnterPhase:(id)phase withBlock:(id)block;
- (void)xpcPairingClientSetAltAccountName:(id)name altDSID:(id)d forPairingID:(id)iD completion:(id)completion;
- (void)xpcPairingClientSetPairingParentName:(id)name pairingParentAltDSID:(id)d forPairingID:(id)iD completion:(id)completion;
- (void)xpcPingActiveGizmoWithPriority:(int)priority withMessageSize:(int64_t)size withBlock:(id)block;
- (void)xpcPutMigrationChallengeCharacteristicWriteData:(id)data completion:(id)completion;
- (void)xpcResumePairingClientCrashMonitoring:(id)monitoring;
- (void)xpcRetrieveSecureProperties:(id)properties block:(id)block;
- (void)xpcRetriggerUnpairInfoDialogWithBlock:(id)block;
- (void)xpcScanForMigratableWatchesWithBlock:(id)block;
- (void)xpcServer:(id)server proxyDidDisconnect:(id)disconnect;
- (void)xpcServer:(id)server proxyDidResume:(id)resume;
- (void)xpcServer:(id)server proxyDidSuspend:(id)suspend;
- (void)xpcSetMigrationConsented:(BOOL)consented forDeviceID:(id)d withBlock:(id)block;
- (void)xpcStageWatchForGraduationWithDeviceID:(id)d completion:(id)completion;
- (void)xpcStageWatchForTransferWithDeviceID:(id)d completion:(id)completion;
- (void)xpcStartWatchSetupPushWithBlock:(id)block;
- (void)xpcStopWatchSetupPushWithBlock:(id)block;
- (void)xpcSubmitAlbertPairingReport:(id)report;
- (void)xpcSubmitServerRequestReportWithRequestType:(id)type duration:(double)duration errorCode:(unsigned int)code block:(id)block;
- (void)xpcSuspendPairingClientCrashMonitoring:(id)monitoring;
- (void)xpcSwitchActiveDeviceWithDeviceID:(id)d isMagicSwitch:(BOOL)switch operationHasCompleted:(id)completed;
- (void)xpcSwitchActiveDeviceWithDeviceID:(id)d withAssertionHandler:(id)handler;
- (void)xpcSwitchIndex:(id)index;
- (void)xpcSwitchToSimulator:(id)simulator withCompletion:(id)completion;
- (void)xpcTriggerTailspinFrom:(unint64_t)from forApp:(id)app;
- (void)xpcUnpairWithDeviceID:(id)d withOptions:(id)options operationHasBegun:(id)begun;
- (void)xpcUnpairWithSimulator:(id)simulator withCompletion:(id)completion;
- (void)xpcUpdateWatchBuddyStage:(unsigned int)stage forPairingID:(id)d;
- (void)xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion;
- (void)xpcWatchBuddyCompletedSetupSteps:(id)steps;
- (void)xpcWatchNeedsGraduation:(id)graduation;
@end

@implementation NRPairingDaemon

- (OS_dispatch_queue)pairingQueue
{
  v2 = +[NRQueue xpcPairingQueue];
  queue = [v2 queue];

  return queue;
}

- (void)_isIDSReady
{
  v3 = +[NRQueue registryDaemonQueue];
  queue = [v3 queue];
  dispatch_assert_queue_V2(queue);

  v5 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v6 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v7 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v8 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  defaultPairedDevice = [v5 defaultPairedDevice];
  defaultPairedDevice2 = [v6 defaultPairedDevice];
  defaultPairedDevice3 = [v7 defaultPairedDevice];
  defaultPairedDevice4 = [v8 defaultPairedDevice];
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (defaultPairedDevice)
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
      if (defaultPairedDevice2)
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
      if (defaultPairedDevice3)
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
      if (defaultPairedDevice4)
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
      v56 = defaultPairedDevice;
      v57 = 1024;
      v58 = v41;
      v59 = 2112;
      v60 = v43;
      v61 = 2080;
      v62 = v40;
      v63 = 2048;
      v64 = v6;
      v65 = 2048;
      v66 = defaultPairedDevice2;
      v67 = 1024;
      v68 = v39;
      v69 = 2112;
      v70 = v38;
      v71 = 2080;
      v72 = v37;
      v73 = 2048;
      v74 = v7;
      v75 = 2048;
      v76 = defaultPairedDevice3;
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
      v86 = defaultPairedDevice4;
      v87 = 1024;
      v88 = v25;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cloud=%@ %s [%p-%p]%c A=%@ %s [%p-%p]%c C=%@ %s [%p-%p]%c D=%@ %s [%p-%p]%c", buf, 0xBAu);
    }
  }

  if (!defaultPairedDevice3 || !defaultPairedDevice4)
  {
    if (!(defaultPairedDevice3 | defaultPairedDevice4))
    {
      [(NRConnectivityPublisher *)self->_connectivityPublisher setConnected:0];
    }

    goto LABEL_49;
  }

  v48[0] = defaultPairedDevice3;
  v48[1] = defaultPairedDevice4;
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
  nsuuid = [defaultPairedDevice3 nsuuid];
  [v33 idsAccountPlusDeviceReceivedWithBTID:nsuuid];

LABEL_50:
}

- (void)logIfVersionsAreOverridden
{
  v3 = +[NRPairingCompatibilityVersionInfo systemVersions];
  isOverrideActive = [v3 isOverrideActive];

  if (isOverrideActive)
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
  isRevlockFeatureFlagActive = [v8 isRevlockFeatureFlagActive];

  if ((isRevlockFeatureFlagActive & 1) == 0)
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

- (void)xpcBeginDiscoveryWithBlock:(id)block
{
  blockCopy = block;
  [(NRPairingDaemon *)self beginDiscovery:1 withDeviceIDToDiscover:0];
  v4 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v4 = blockCopy;
  }
}

- (void)xpcEndDiscoveryWithBlock:(id)block
{
  blockCopy = block;
  [(NRPairingDaemon *)self forceEndDiscovery];
  blockCopy[2]();
}

+ (void)updateActiveFlag:(BOOL)flag andPost:(BOOL)post
{
  postCopy = post;
  flagCopy = flag;
  if (qword_1001B3790 != -1)
  {
    sub_1000FE220();
  }

  if (dword_1001B2460 != -1)
  {
    if (flagCopy)
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
        if (postCopy)
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
    if (postCopy)
    {
      notify_post([NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification UTF8String]);
    }
  }
}

- (void)setLastStatusCodeCache:(unint64_t)cache
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023A24;
  v4[3] = &unk_1001761C0;
  v4[4] = self;
  v4[5] = cache;
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
  selfCopy = self;
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

- (void)_setBridgeBadgeWithCollection:(id)collection
{
  collectionCopy = collection;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [collectionCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(collectionCopy);
        }

        v10 = [collectionCopy objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
        v11 = [v10 objectForKeyedSubscript:v8];
        value = [v11 value];

        if ([v10 isPaired] && (objc_msgSend(v10, "isArchived") & 1) == 0 && objc_msgSend(value, "integerValue") == 2)
        {
          ++v6;
        }
      }

      v5 = [collectionCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)setIDSTrafficClassifiersForActiveDeviceWithNewCompatibilityState:(id)state
{
  stateCopy = state;
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

  if (stateCopy)
  {
    v8 = objc_opt_new();
    v9 = -[NRPairingDaemon getTrafficClassifiersForCompatibilityState:](self, "getTrafficClassifiersForCompatibilityState:", [stateCopy integerValue]);
    if ([stateCopy integerValue] == 2)
    {
      [v8 setShouldDropUnmatchingTraffic:1];
    }

    [v8 setTrafficClasses:v9];
    v10 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v10 updateTrafficClassesWithClasses:v8];
    integerValue = [stateCopy integerValue];
    _bluetoothIDOfActiveDevice = [(NRPairingDaemon *)self _bluetoothIDOfActiveDevice];
    [v10 sendPairingModeRequest:integerValue toIDSBTUUID:_bluetoothIDOfActiveDevice withSentBlock:0];
  }
}

- (void)_deleteSharingPathWithPairingID:(id)d
{
  dCopy = d;
  collection = [(NRPairingDaemon *)self collection];
  v6 = [collection objectForKeyedSubscript:dCopy];

  v7 = [v6 objectForKeyedSubscript:NRDevicePropertyLocalPairingDataStorePath];
  value = [v7 value];

  if (value)
  {
    v9 = [value stringByAppendingPathComponent:@"com.apple.sharing"];
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

- (BOOL)_hasUpdateModeDevicesInCollection:(id)collection
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  collectionCopy = collection;
  v4 = [collectionCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(collectionCopy);
        }

        v9 = [collectionCopy objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
        if ([v9 isPaired] && objc_msgSend(v9, "isActive"))
        {
          v10 = [v9 objectForKeyedSubscript:v7];
          value = [v10 value];

          if (value && [value integerValue] == 2)
          {

            v12 = 1;
            goto LABEL_15;
          }
        }
      }

      v5 = [collectionCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
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
    currentState = [v3 currentState];
    LOBYTE(v8) = [currentState taskState]== 4;
LABEL_10:

    goto LABEL_11;
  }

  v6 = nr_daemon_log();
  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    currentState = nr_daemon_log();
    if (os_log_type_enabled(currentState, OS_LOG_TYPE_ERROR))
    {
      sub_1000FE3B4();
    }

    LOBYTE(v8) = 0;
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (void)saveAssertionInfo:(id)info
{
  infoCopy = info;
  clientProxy = [infoCopy clientProxy];
  pairingID = [infoCopy pairingID];
  [(NRPairingDaemon *)self removeAssertionsForProxy:clientProxy newDeviceID:pairingID];

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

  assertion = [infoCopy assertion];
  [(NSMapTable *)assertionToAssertionInfo setObject:infoCopy forKey:assertion];

  v14 = self->_clientProxyToAssertionInfo;
  clientProxy2 = [infoCopy clientProxy];
  v16 = [(NSMapTable *)v14 objectForKey:clientProxy2];

  if (!v16)
  {
    v16 = +[NSMutableSet set];
  }

  [v16 addObject:infoCopy];
  v17 = self->_clientProxyToAssertionInfo;
  clientProxy3 = [infoCopy clientProxy];
  [(NSMapTable *)v17 setObject:v16 forKey:clientProxy3];

  v19 = self->_clientAssertionIDToAssertionInfo;
  assertionID = [infoCopy assertionID];
  [(NSMutableDictionary *)v19 setObject:infoCopy forKey:assertionID];

  clientProxy4 = [infoCopy clientProxy];
  [(NRPairingDaemon *)self updateShouldMonitorProxy:clientProxy4];
}

- (void)removeAssertionInfo:(id)info
{
  infoCopy = info;
  assertion = [infoCopy assertion];
  [assertion invalidate];

  assertionToAssertionInfo = self->_assertionToAssertionInfo;
  assertion2 = [infoCopy assertion];
  [(NSMapTable *)assertionToAssertionInfo removeObjectForKey:assertion2];

  clientProxyToAssertionInfo = self->_clientProxyToAssertionInfo;
  clientProxy = [infoCopy clientProxy];
  v9 = [(NSMapTable *)clientProxyToAssertionInfo objectForKey:clientProxy];

  if ([v9 containsObject:infoCopy])
  {
    [v9 removeObject:infoCopy];
  }

  else
  {
    clientBlock = [infoCopy clientBlock];

    if (clientBlock)
    {
      clientBlock2 = [infoCopy clientBlock];
      v12 = nrGetPairingError();
      (clientBlock2)[2](clientBlock2, v12, 0);

      [infoCopy setClientBlock:0];
    }
  }

  if (![v9 count])
  {
    v13 = self->_clientProxyToAssertionInfo;
    clientProxy2 = [infoCopy clientProxy];
    [(NSMapTable *)v13 removeObjectForKey:clientProxy2];
  }

  clientAssertionIDToAssertionInfo = self->_clientAssertionIDToAssertionInfo;
  assertionID = [infoCopy assertionID];
  [(NSMutableDictionary *)clientAssertionIDToAssertionInfo removeObjectForKey:assertionID];

  clientProxy3 = [infoCopy clientProxy];
  [(NRPairingDaemon *)self updateShouldMonitorProxy:clientProxy3];
}

- (void)removeAssertionsForProxy:(id)proxy newDeviceID:(id)d
{
  proxyCopy = proxy;
  dCopy = d;
  v20 = proxyCopy;
  [(NSMapTable *)self->_clientProxyToAssertionInfo objectForKey:proxyCopy];
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
        pairingID = [v13 pairingID];
        v15 = [pairingID isEqual:dCopy];

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

- (void)removeExternalAssertionsForPairingID:(id)d
{
  dCopy = d;
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
              pairingID = [v13 pairingID];
              v15 = [pairingID isEqual:dCopy];

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

- (void)setLastCaller:(id)caller
{
  callerCopy = caller;
  os_unfair_lock_lock(&self->_lastCallerLock);
  lastCaller = self->_lastCaller;
  self->_lastCaller = callerCopy;

  os_unfair_lock_unlock(&self->_lastCallerLock);
}

- (void)xpcSwitchActiveDeviceWithDeviceID:(id)d withAssertionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  [(NRPairingDaemon *)self lastCaller];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026298;
  v11[3] = &unk_100176148;
  v13 = v12 = dCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v8 = handlerCopy;
  v9 = v13;
  v10 = dCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v11];
}

- (void)xpcInvalidateSwitchAssertionWithIdentifier:(id)identifier block:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  v9 = [(NSMutableDictionary *)self->_clientAssertionIDToAssertionInfo objectForKey:identifierCopy];

  clientProxy = [v9 clientProxy];

  if (clientProxy == lastCaller)
  {
    [(NRPairingDaemon *)self removeAssertionInfo:v9];
    blockCopy[2](blockCopy, 0);
  }

  else
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"You don't own this assertion";
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.NanoRegistry" code:999 userInfo:v11];

    blockCopy[2](blockCopy, v12);
    blockCopy = v12;
  }
}

- (void)xpcDeviceIDAtSwitchIndex:(unsigned int)index withBlock:(id)block
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002684C;
  v6[3] = &unk_1001762D8;
  indexCopy = index;
  blockCopy = block;
  v5 = blockCopy;
  [(NRPairingDaemon *)self grabHistoryWithReadBlock:v6];
}

- (void)nuke:(id)nuke completion:(id)completion
{
  nukeCopy = nuke;
  completionCopy = completion;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = nukeCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Nuking device %@", buf, 0xCu);
    }
  }

  if ([(NRPairingDaemon *)self storeMode])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else if (nukeCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026A70;
    v11[3] = &unk_100176588;
    v12 = nukeCopy;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v11];
  }
}

- (id)unpairTriggerFileContents
{
  legacyUnpairTriggerFileContents = [(NRPairingDaemon *)self legacyUnpairTriggerFileContents];
  v4 = [legacyUnpairTriggerFileContents mutableCopy];

  v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  backupHash = [v5 backupHash];
  if (backupHash)
  {
    v7 = [NSKeyedArchiver secureArchivedDataWithRootObject:backupHash];
    if (v7)
    {
      v8 = [NSKeyedArchiver secureArchivedDataWithRootObject:backupHash];
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

- (void)setDidRestoreFromBackup:(BOOL)backup
{
  backupCopy = backup;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (backupCopy)
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
  if (backupCopy)
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
  isTracked = [v3 isTracked];

  if (isTracked)
  {
    v5 = +[NRRestoreFromBackupTracker sharedInstance];
    didRestoredFromBackup = [v5 didRestoredFromBackup];

    return didRestoredFromBackup;
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
    legacyUnpairTriggerFileContents = [(NRPairingDaemon *)self legacyUnpairTriggerFileContents];
    if ([v7 isEqual:legacyUnpairTriggerFileContents])
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
    v15 = v14 - [legacyUnpairTriggerFileContents length];
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
      v11 = [v7 subdataWithRange:{-[NSObject length](legacyUnpairTriggerFileContents, "length"), v15}];
      v16 = [NSSet setWithObject:objc_opt_class()];
      v17 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v16 withData:v11];

      if (v17)
      {
        v18 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
        backupHash = [v18 backupHash];
        v20 = [v17 isEqual:backupHash];

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
    legacyUnpairTriggerFileContents = nr_daemon_log();
    if (os_log_type_enabled(legacyUnpairTriggerFileContents, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v34 = "[NRPairingDaemon legacyDidRestoreFromBackup]";
      _os_log_impl(&_mh_execute_header, legacyUnpairTriggerFileContents, OS_LOG_TYPE_DEFAULT, "%{public}s: unpairTriggerFileDoesNotExist- trigger file not present", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v24 = 1;
LABEL_39:

  return v24;
}

- (id)unpairReasonString:(unint64_t)string
{
  if (string - 2 >= 3)
  {
    string = [NSString stringWithFormat:@"unexpectedReason%lu", string];
  }

  else
  {
    string = off_1001777C8[string - 2];
  }

  return string;
}

- (void)unpairDeviceWithPairingID:(id)d obliterationString:(id)string shouldBrick:(id)brick storeUnpair:(id)unpair migrationUnpair:(id)migrationUnpair shouldPreserveESim:(id)sim pairingReport:(id)report remoteUnpairRequestUUID:(id)self0 shouldConnectionWithDevice:(BOOL)self1
{
  dCopy = d;
  stringCopy = string;
  brickCopy = brick;
  unpairCopy = unpair;
  migrationUnpairCopy = migrationUnpair;
  simCopy = sim;
  reportCopy = report;
  iDCopy = iD;
  v24 = nr_daemon_log();
  LODWORD(migrationUnpair) = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (migrationUnpair)
  {
    v25 = nr_daemon_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = @"(nil)";
      if (dCopy)
      {
        v26 = dCopy;
      }

      *buf = 138543362;
      v119 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "unpairDeviceWithPairingID: Unpairing device %{public}@", buf, 0xCu);
    }
  }

  if (reportCopy && [reportCopy isErrorSet])
  {
    v27 = +[NRRTCPairingReporter sharedInstance];
    [v27 addToOrCapOffRTCPairingMetric:{objc_msgSend(reportCopy, "subreason")}];
    if (!_NRIsInternalInstall())
    {
LABEL_23:

      goto LABEL_24;
    }

    v106 = simCopy;
    v108 = iDCopy;
    v28 = unpairCopy;
    v104 = brickCopy;
    v29 = stringCopy;
    subreason = [reportCopy subreason];
    v31 = subreason;
    v32 = sub_1000922D4(subreason);
    v33 = nr_daemon_log();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

    if (v34)
    {
      v35 = nr_daemon_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v119 = dCopy;
        v120 = 2112;
        v121 = v32;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Unpairing device %{public}@ due to pairing error with subreason %@", buf, 0x16u);
      }
    }

    v102 = migrationUnpairCopy;
    detailedError = [reportCopy detailedError];
    domain = [detailedError domain];
    if ([domain isEqual:@"com.apple.nanoregistry.pairingerror"])
    {
      code = [detailedError code];

      if (code != 42)
      {
        stringCopy = v29;
        goto LABEL_22;
      }

      userInfo = [detailedError userInfo];
      domain = userInfo;
      if (userInfo)
      {
        v100 = dCopy;
        v40 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (v40)
        {
          v41 = [domain objectForKeyedSubscript:NSUnderlyingErrorKey];
          domain2 = [v41 domain];
          v98 = [v32 stringByAppendingFormat:@"\nUnderlying: %@ (%ld)", domain2, objc_msgSend(v41, "code")];

          v32 = v98;
        }

        dCopy = v100;
      }
    }

    stringCopy = v29;

LABEL_22:
    unpairCopy = v28;
    v43 = +[NRRepeatingAlertEngine sharedInstance];
    [v43 setEnabled:1 withName:@"InternalPairingFailed"];

    v44 = +[NRRepeatingAlertEngine sharedInstance];
    [v44 addErrorCodeToPairingFailureAlert:v31 withReasonString:v32];

    v45 = +[NRRepeatingAlertEngine sharedInstance];
    [v45 presentAlertsIfNeeded];

    migrationUnpairCopy = v102;
    brickCopy = v104;
    simCopy = v106;
    iDCopy = v108;
    goto LABEL_23;
  }

LABEL_24:
  if (MKBDeviceUnlockedSinceBoot())
  {
    if (!CFPreferencesGetAppBooleanValue(@"storeBlockPairingFailure", @"com.apple.NanoRegistry", 0))
    {
      if ([unpairCopy BOOLValue])
      {
        CFPreferencesSetAppValue(@"storeBlockPairingFailure", &__kCFBooleanTrue, @"com.apple.NanoRegistry");
        CFPreferencesAppSynchronize(@"com.apple.NanoRegistry");
        [(NSMutableSet *)self->_waitForBridgeCompletedPairingIDs addObject:dCopy];
        v49 = +[NSNotificationCenter defaultCenter];
        [v49 postNotificationName:@"NRNotificationWaitForBridgeComplete" object:self];
      }

      v109 = iDCopy;
      v50 = nr_daemon_log();
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

      if (v51)
      {
        v52 = nr_daemon_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          bOOLValue = [unpairCopy BOOLValue];
          *buf = 67109120;
          LODWORD(v119) = bOOLValue;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "unpairDeviceWithPairingID: Doing minimal store unpair? %{BOOL}d", buf, 8u);
        }
      }

      v54 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      v55 = nrGetPairingError();
      v96 = v54;
      v95 = [v54 cancelAllQueuedOperationsForPairingID:dCopy error:v55];

      v116[0] = @"nrDeviceIdentifier";
      v101 = dCopy;
      v94 = [[EPSagaOperandUUID alloc] initWithUUID:dCopy];
      v117[0] = v94;
      v116[1] = @"obliterationString";
      v99 = stringCopy;
      v93 = [[EPSagaOperandString alloc] initWithString:stringCopy];
      v117[1] = v93;
      v116[2] = @"shouldPreserveESim";
      v107 = simCopy;
      v56 = [[EPSagaOperandNumber alloc] initWithNumber:simCopy];
      v117[2] = v56;
      v116[3] = @"shouldBrick";
      v105 = brickCopy;
      v57 = [[EPSagaOperandNumber alloc] initWithNumber:brickCopy];
      v117[3] = v57;
      v116[4] = @"pairingReport";
      v58 = [[EPSagaOperandPairingReport alloc] initWithPairingReport:reportCopy];
      v117[4] = v58;
      v116[5] = @"remoteUnpairRequestID";
      v59 = [[EPSagaOperandUUID alloc] initWithUUID:v109];
      v117[5] = v59;
      v116[6] = @"migrationUnpair";
      v103 = migrationUnpairCopy;
      v60 = [[EPSagaOperandNumber alloc] initWithNumber:migrationUnpairCopy];
      v117[6] = v60;
      v116[7] = @"storeUnpair";
      v97 = unpairCopy;
      v61 = [[EPSagaOperandNumber alloc] initWithNumber:unpairCopy];
      v117[7] = v61;
      v116[8] = @"shouldConnectDevice";
      v62 = [EPSagaOperandNumber alloc];
      v63 = [NSNumber numberWithBool:device];
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
      operands = v66;
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
            operationType = [v72 operationType];

            if (operationType == @"unpair")
            {
              entry = [v72 entry];
              operands = [entry operands];

              v75 = nr_daemon_log();
              v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);

              if (v76)
              {
                v77 = nr_daemon_log();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v119 = operands;
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

        operands = v66;
      }

LABEL_48:

      v78 = objc_opt_new();
      v79 = [EPRoutingSlipEntry alloc];
      dCopy = v101;
      uUIDString = [(__CFString *)v101 UUIDString];
      v81 = uUIDString;
      if (uUIDString)
      {
        v82 = uUIDString;
      }

      else
      {
        v82 = @"none";
      }

      v83 = [@"unpair-" stringByAppendingString:v82];
      v84 = [(EPRoutingSlipEntry *)v79 initWithName:v83 transactionClass:objc_opt_class() operands:operands];
      [v78 setEntry:v84];

      v85 = nr_daemon_log();
      v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);

      iDCopy = v109;
      if (v86)
      {
        v87 = nr_daemon_log();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          entry2 = [v78 entry];
          *buf = 138412290;
          v119 = entry2;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Unpair transaction: %@", buf, 0xCu);

          iDCopy = v109;
        }
      }

      [v78 setRunningStatusCode:5];
      [v78 setPersistWhilePending:1];
      [v78 setNotUnrollable:1];
      unpairCopy = v97;
      bOOLValue2 = [v97 BOOLValue];
      v90 = &off_100175828;
      if (!bOOLValue2)
      {
        v90 = &off_1001757F8;
      }

      [v78 setOperationType:*v90];
      [v78 setTargetPairingID:v101];
      [v78 setDidEnd:&stru_1001765C8];
      stringCopy = v99;
      if ([reportCopy isErrorSet])
      {
        v91 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
        v92 = v91;
        if (v91 && ([v91 isErrorSet] & 1) == 0)
        {
          [(EPServiceRegistry *)self->_serviceRegistry addService:reportCopy];
        }

        iDCopy = v109;
      }

      [v96 addTransaction:v78];

      migrationUnpairCopy = v103;
      brickCopy = v105;
      goto LABEL_63;
    }

    v46 = nr_daemon_log();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

    if (v47)
    {
      v107 = simCopy;
      operands = nr_daemon_log();
      if (os_log_type_enabled(operands, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v119 = "[NRPairingDaemon unpairDeviceWithPairingID:obliterationString:shouldBrick:storeUnpair:migrationUnpair:shouldPreserveESim:pairingReport:remoteUnpairRequestUUID:shouldConnectionWithDevice:]";
        _os_log_impl(&_mh_execute_header, operands, OS_LOG_TYPE_DEFAULT, "%s: skipping unpair on pairing failure due to store demo setup", buf, 0xCu);
      }

LABEL_63:

      simCopy = v107;
    }
  }
}

- (void)_archiveDevices:(id)devices withCollection:(id)collection
{
  devicesCopy = devices;
  collectionCopy = collection;
  v66 = +[NSMutableDictionary dictionary];
  v65 = +[NSDate date];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = devicesCopy;
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
    v76 = collectionCopy;
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
        v11 = [collectionCopy objectForKeyedSubscript:v9];
        v12 = [v11 objectForKeyedSubscript:v7];
        value = [v12 value];

        v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [value integerValue] + 1);

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
        value2 = [v33 value];

        v35 = nr_daemon_log();
        v36 = v35;
        if (value2)
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
              v89 = value2;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Unpairing archived watch device nr=%@ bt=%@ in IDS...", buf, 0x16u);
            }
          }

          v39 = dispatch_get_global_queue(17, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100028940;
          block[3] = &unk_100175598;
          v40 = value2;
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
        collectionCopy = v76;
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

    v50 = [collectionCopy applyDiff:v46];
    v51 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    v52 = objc_opt_new();
    v53 = [[EPRoutingSlipEntry alloc] initWithName:@"updateAppRemovability" transactionClass:objc_opt_class() operands:&__NSDictionary0__struct];
    [v52 setEntry:v53];

    [v51 addTransaction:v52];
  }
}

- (void)_forceMigrationSync:(id)sync withCollection:(id)collection
{
  syncCopy = sync;
  collectionCopy = collection;
  v39 = +[NSMutableDictionary dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = syncCopy;
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
        v13 = [collectionCopy objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:v9];
        value = [v14 value];

        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [value integerValue] + 1);

        v17 = nr_daemon_log();
        LODWORD(value) = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

        if (value)
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

    v27 = [collectionCopy applyDiff:v23];
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

- (void)createUnpairTransactionsWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100028FC8;
  v4[3] = &unk_100175FA0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(NRPairingDaemon *)selfCopy purgeDiscoveredDevices:v4];
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

- (void)initBluetoothWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[NRSystemProperties sharedInstance];
  isBluetoothCapable = [v5 isBluetoothCapable];

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = &stru_10017A258;
      if (!blockCopy)
      {
        v10 = @"no ";
      }

      v18 = 138412546;
      v19 = v10;
      v20 = 1024;
      v21 = isBluetoothCapable;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "initBluetoothWithBlock(%@block); device supports Bluetooth = %{BOOL}d.", &v18, 0x12u);
    }
  }

  if (isBluetoothCapable)
  {
    if (blockCopy)
    {
      [(NSLock *)self->_bluetoothInitBlockLock lock];
      bluetoothInitBlocks = self->_bluetoothInitBlocks;
      v12 = [blockCopy copy];
      [(NSMutableArray *)bluetoothInitBlocks addObject:v12];

      [(NSLock *)self->_bluetoothInitBlockLock unlock];
    }

    v13 = [CBCentralManager alloc];
    v14 = +[NRQueue registryDaemonQueue];
    queue = [v14 queue];
    v16 = [v13 initWithDelegate:self queue:queue];
    central = self->_central;
    self->_central = v16;

    [(NRPairingDaemon *)self updateFromBTState];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)initNetworkRelayPairerWithBlock:(id)block
{
  blockCopy = block;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"block";
      if (!blockCopy)
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

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)setChipIDOfActiveDevice:(id)device
{
  deviceCopy = device;
  chipIDOfActiveDeviceQueue = [(NRPairingDaemon *)self chipIDOfActiveDeviceQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B7DC;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(chipIDOfActiveDeviceQueue, v7);
}

- (NSNumber)chipIDOfActiveDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100023050;
  v11 = sub_100023060;
  v12 = 0;
  chipIDOfActiveDeviceQueue = [(NRPairingDaemon *)self chipIDOfActiveDeviceQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002B90C;
  v6[3] = &unk_1001758D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(chipIDOfActiveDeviceQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)pairingCompatibilityVersionInitWithCollection:(id)collection
{
  collectionCopy = collection;
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

  activeDevice = [collectionCopy activeDevice];

  if (activeDevice)
  {
    v10 = [activeDevice objectForKeyedSubscript:NRDevicePropertyChipID];
    value = [v10 value];

    [(NRPairingDaemon *)self broadcastActiveDeviceChipID:value from:@"Init from active device in device collection"];
  }

  [(NRPairingDaemon *)self logIfVersionsAreOverridden];

  return 1;
}

- (void)updateMirrorWithCollection:(id)collection
{
  collectionCopy = collection;
  activeDevice = [collectionCopy activeDevice];
  v22 = [activeDevice copyWithZone:0];

  activeDeviceID = [collectionCopy activeDeviceID];
  paired = [collectionCopy paired];
  v5 = +[NSMutableDictionary dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = collectionCopy;
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
        value = [v14 value];

        if (value)
        {
          [v5 setObject:v12 forKeyedSubscript:value];
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
  v28 = activeDeviceID;
  v30 = paired;
  v29 = v24;
  v17 = activeDeviceID;
  v18 = v22;
  v19 = v5;
  [v16 dispatchAsync:v25];
}

- (NRMutableDevice)mirrorOfActiveDevice
{
  v3 = +[NRQueue registryDaemonQueue];
  queue = [v3 queue];
  dispatch_assert_queue_V2(queue);

  mirrorOfActiveDevice = self->_mirrorOfActiveDevice;

  return mirrorOfActiveDevice;
}

- (void)broadcastActiveDeviceChipID:(id)d from:(id)from
{
  dCopy = d;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    chipIDOfActiveDevice = [(NRPairingDaemon *)self chipIDOfActiveDevice];
    if (chipIDOfActiveDevice != dCopy)
    {
      chipIDOfActiveDevice2 = [(NRPairingDaemon *)self chipIDOfActiveDevice];
      v10 = [chipIDOfActiveDevice2 isEqual:dCopy];

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

      chipIDOfActiveDevice = nr_daemon_log();
      if (os_log_type_enabled(chipIDOfActiveDevice, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = dCopy;
        v15 = 2112;
        v16 = fromCopy;
        _os_log_impl(&_mh_execute_header, chipIDOfActiveDevice, OS_LOG_TYPE_DEFAULT, "ChipID %@ broadcast from %@", &v13, 0x16u);
      }
    }

LABEL_8:
    [(NRPairingDaemon *)self updateNotifyToken:self->_activeDeviceChipIDNotifyToken withValue:[dCopy unsignedLongLongValue] withNotificationName:@"com.apple.nanoregistry.activedevicechipid" alwaysPost:0];
    [(NRPairingDaemon *)self setChipIDOfActiveDevice:dCopy];
    [(NRLocalPropertyMonitor *)self->_localProperties setRemoteDeviceChipIDNumber:dCopy];
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

+ (void)debugDump:(id)dump public:(BOOL)public
{
  publicCopy = public;
  v5 = [dump componentsSeparatedByString:@"\n"];
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

        if (publicCopy)
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

- (void)initIDSService:(Class)service block:(id)block
{
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100023050;
  v24 = sub_100023060;
  v25 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:service];
  if (v21[5])
  {
    v7 = +[NRQueue registryDaemonQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002C9EC;
    v13[3] = &unk_100176838;
    v15 = &v20;
    v14 = blockCopy;
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
        v11 = NSStringFromClass(service);
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
    serviceCopy = service;
    block[4] = self;
    v17 = blockCopy;
    dispatch_async(v12, block);
  }

  _Block_object_dispose(&v20, 8);
}

+ (id)countdown:(int64_t)countdown toCompletion:(id)completion
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2810000000;
  v31[3] = "";
  v32 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = countdown;
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
  countdownCopy = countdown;
  completionCopy = completion;
  v19 = completionCopy;
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
      v12 = [NSNumber numberWithInteger:countdown, v15, v16, v17, v18];
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

- (void)initializeTrafficClassBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_class();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D198;
  v7[3] = &unk_100175FA0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NRPairingDaemon *)self initIDSService:v5 block:v7];
}

- (void)areWePairedOrPairing:(id)pairing
{
  pairingCopy = pairing;
  v5 = +[EPNanoRegistryStatusCodeElection sharedInstance];
  if ([v5 statusCode] == 1)
  {
  }

  else
  {
    v6 = +[EPNanoRegistryStatusCodeElection sharedInstance];
    statusCode = [v6 statusCode];

    if (statusCode != 4)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10002D6B0;
      v8[3] = &unk_100176928;
      v9 = pairingCopy;
      [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];

      goto LABEL_6;
    }
  }

  (*(pairingCopy + 2))(pairingCopy, 1);
LABEL_6:
}

- (void)initializeAllIDSChannelsBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_class();
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002DA90;
  v25[3] = &unk_100175FA0;
  v25[4] = self;
  v26 = blockCopy;
  v6 = blockCopy;
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

- (id)dumpStateGivenCachedHistoryIndex:(unint64_t)index
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
  queue = [v8 queue];
  dispatch_assert_queue_not_V2(queue);

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
  v16[7] = index;
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

- (void)preFirstUnlockInitCompletion:(id)completion
{
  completionCopy = completion;
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
  v31 = completionCopy;
  v9 = completionCopy;
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
  queue = [v14 queue];
  v16 = [(EPStaticServiceRegistry *)v13 initWithQueue:queue];
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

- (void)postFirstUnlockInitBlock:(id)block
{
  blockCopy = block;
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
  v50 = blockCopy;
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
  watchTransfer = [v23 watchTransfer];

  if (watchTransfer)
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
    queue = [v28 queue];
    v30 = [(EPKeymaster *)v27 initWithKeyName:@"migration2" shouldExport:1 unlockAssertionManager:v26 okayToCreateKeyBlock:v57 queue:queue];
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
  isVirtualDevice = [v44 isVirtualDevice];

  if (isVirtualDevice)
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

- (void)lastPairedDeviceWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002FA9C;
  v6[3] = &unk_100176A40;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disableSatelliteDisconnect", @"com.apple.NanoRegistry", 0);
  v7 = blockCopy;
  v5 = blockCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v6];
}

- (void)enqueueSetLastPairedDeviceTransactionWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003045C;
  v4[3] = &unk_100176A90;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(NRPairingDaemon *)selfCopy lastPairedDeviceWithBlock:v4];
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
  assertions = [v7 assertions];
  v9 = [assertions count];

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

- (void)purgeDiscoveredDevices:(id)devices
{
  devicesCopy = devices;
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
  v10 = devicesCopy;
  v8 = devicesCopy;
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
  selfCopy = self;
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

- (BOOL)setPairingClientCrashMonitoringCache:(BOOL)cache proxy:(id)proxy
{
  cacheCopy = cache;
  proxyCopy = proxy;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (cacheCopy)
      {
        v10 = "NO";
      }

      else
      {
        v10 = "YES";
      }

      appPath = [proxyCopy appPath];
      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = appPath;
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
  selfCopy = self;
  v21 = buf;
  v22 = cacheCopy;
  v12 = proxyCopy;
  v20 = v12;
  v13 = v16;
  os_unfair_lock_lock_with_options();
  v17(v13);

  os_unfair_lock_unlock(&self->_pairingQueueWriteLock);
  v14 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v14 & 1;
}

- (void)cleanupPairingStoreWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031B5C;
  v4[3] = &unk_100176BA8;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(NRPairingDaemon *)selfCopy grabHistoryWithReadBlock:v4];
}

- (void)debounceOnQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
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

  if (queueCopy && blockCopy)
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

    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);
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
      v29 = blockCopy;
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

      blockCopy[2](blockCopy);
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
  queue = [v7 queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000324F0;
  v11[3] = &unk_100176C60;
  v11[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", queue, v11);

  v9 = +[NRQueue registryDaemonQueue];
  queue2 = [v9 queue];
  xpc_set_event_stream_handler("com.apple.MobileGestalt.MobileGestaltEvents", queue2, &stru_100176CA0);

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

- (int)getNotifyTokenWithName:(id)name
{
  nameCopy = name;
  out_token = -1;
  if (notify_register_check([nameCopy UTF8String], &out_token))
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = nameCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to get notify token for %@", buf, 0xCu);
      }
    }
  }

  v7 = out_token;

  return v7;
}

- (void)updateNotifyToken:(int)token withValue:(unint64_t)value withNotificationName:(id)name alwaysPost:(BOOL)post
{
  postCopy = post;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100032EA4;
  v18[3] = &unk_100176CC8;
  nameCopy = name;
  v19 = nameCopy;
  valueCopy = value;
  tokenCopy = token;
  v10 = objc_retainBlock(v18);
  if (token == -1)
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

  else if (postCopy || (v17 = 0, notify_get_state(token, &v17), v17 != value))
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
        v23 = nameCopy;
        v24 = 2048;
        valueCopy2 = value;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping token %@ update, looks like it is already set to value %lld", buf, 0x16u);
      }
    }
  }
}

- (unint64_t)readNotifyToken:(int)token
{
  if (token == -1)
  {
    return 0;
  }

  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

- (void)registerManagedConfigurationChanged:(id)changed
{
  changedCopy = changed;
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
    v17 = changedCopy;
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
  secureProperties = [(NRPairingDaemon *)self secureProperties];
  v3 = secureProperties != 0;

  return v3;
}

- (void)normalizeDaemonStateWithBlock:(id)block
{
  blockCopy = block;
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
  v10 = blockCopy;
  v8 = blockCopy;
  [(NRPairingDaemon *)self grabHistoryWithReadBlock:v9];
}

- (void)getEnsureActiveDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v10 = completionCopy;
  v8 = completionCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v9];
}

- (void)voidIDSService:(Class)service
{
  v4 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:service];
  [(EPServiceRegistry *)self->_serviceRegistry removeService:v4];
  [v4 invalidate];
}

- (BOOL)isBluetoothConnected
{
  state = [(CBCentralManager *)self->_central state];

  return [(NRPairingDaemon *)self isBluetoothConnected:state];
}

- (BOOL)isBluetoothPoweredOn
{
  state = [(CBCentralManager *)self->_central state];

  return [(NRPairingDaemon *)self isBluetoothPoweredOn:state];
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

- (void)sendXPCDeviceNeedsPasscodeMessage:(id)message passcode:(id)passcode
{
  messageCopy = message;
  passcodeCopy = passcode;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [messageCopy UUIDString];
      v12 = uUIDString;
      v13 = @"present";
      if (!passcodeCopy)
      {
        v13 = @"absent";
      }

      *buf = 138543618;
      v21 = uUIDString;
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
  v18 = messageCopy;
  v19 = passcodeCopy;
  v15 = passcodeCopy;
  v16 = messageCopy;
  [(NRSimpleReferenceCounter *)pairingClients enumerateObjects:v17];
}

- (void)refreshPropertyCache
{
  v3 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v4 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v5 = [(NRMutableDevice *)self->_mirrorOfActiveDevice objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  value = [v5 value];

  defaultPairedDevice = [v3 defaultPairedDevice];
  if (([defaultPairedDevice isConnected] & 1) == 0)
  {
    goto LABEL_13;
  }

  defaultPairedDevice2 = [v3 defaultPairedDevice];
  nsuuid = [defaultPairedDevice2 nsuuid];
  if (([value isEqual:nsuuid] & 1) == 0)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  defaultPairedDevice3 = [v4 defaultPairedDevice];
  if (![defaultPairedDevice3 isConnected])
  {

    goto LABEL_12;
  }

  defaultPairedDevice4 = [v4 defaultPairedDevice];
  nsuuid2 = [defaultPairedDevice4 nsuuid];
  v16 = [value isEqual:nsuuid2];

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

- (void)deleteLocalPairingStore:(id)store withCompletion:(id)completion
{
  storeCopy = store;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [storeCopy UUIDString];
      v13 = 138543362;
      v14 = uUIDString;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deviceID=%{public}@", &v13, 0xCu);
    }
  }

  if (storeCopy)
  {
    v10 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    v11 = +[NRQueue registryDaemonQueue];
    queue = [v11 queue];
    [v10 deletePairedStoreWithUUID:storeCopy withQueue:queue withCompletion:0];
  }
}

- (void)updateDeviceID:(id)d withProperties:(id)properties withCompletion:(id)completion
{
  dCopy = d;
  propertiesCopy = properties;
  completionCopy = completion;
  if (propertiesCopy && [propertiesCopy count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100034C9C;
    v11[3] = &unk_100176DD0;
    v12 = propertiesCopy;
    v13 = dCopy;
    selfCopy = self;
    v15 = completionCopy;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v11];
  }
}

- (void)deleteUnexpectedIDSPairedDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v10 = completionCopy;
  v8 = completionCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v9];
}

- (void)purgeIDSPairedDevicesExceptFor:(id)for withQueue:(id)queue andCompletion:(id)completion
{
  forCopy = for;
  queueCopy = queue;
  completionCopy = completion;
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
  v30 = completionCopy;
  v31 = v32;
  v29 = queueCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100035A38;
  v23[3] = &unk_100176E98;
  v24 = forCopy;
  v25 = v11;
  v27 = objc_retainBlock(v28);
  v14 = v10;
  v26 = v14;
  v15 = v27;
  v16 = v11;
  v17 = forCopy;
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

- (void)setStatusCode:(unint64_t)code InCollection:(id)collection
{
  collectionCopy = collection;
  activeDevice = [collectionCopy activeDevice];

  if (activeDevice)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [NRDevicePropertyDiff alloc];
    v8 = [NSNumber numberWithUnsignedInteger:code];
    v9 = [v7 initWithValue:v8];

    v10 = [[NRDevicePropertyDiffType alloc] initWithDiff:v9 andChangeType:1];
    [v6 setObject:v10 forKeyedSubscript:_NRDevicePropertyStatusCode];
    v11 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v6];
    activeDevice2 = [collectionCopy activeDevice];
    v13 = [activeDevice2 applyDiff:v11];
  }
}

- (void)statusCodeManager:(id)manager electionOutcomeChanged:(unint64_t)changed
{
  [(NRPairingDaemon *)self setLastStatusCodeCache:changed];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003644C;
  v6[3] = &unk_100176EE8;
  v6[4] = self;
  v6[5] = changed;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v6];
}

- (void)_updateCompatibilityStateForDeviceID:(id)d withDeviceCollection:(id)collection
{
  dCopy = d;
  collectionCopy = collection;
  v8 = [collectionCopy objectForKeyedSubscript:dCopy];
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v48 = dCopy;
      v49 = 1024;
      LODWORD(v50) = [v8 isActive];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating compatibility state for device with pairing ID %{public}@; active = %{BOOL}d", buf, 0x12u);
    }
  }

  v12 = [v8 objectForKeyedSubscript:NRDevicePropertyModelNumber];
  value = [v12 value];

  v14 = [v8 objectForKeyedSubscript:_NRDevicePropertyCompatibilityState];
  value2 = [v14 value];

  v16 = [v8 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  value3 = [v16 value];

  v17 = [v8 objectForKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];
  value4 = [v17 value];

  v19 = [v8 objectForKeyedSubscript:_NRDevicePropertyStatusCode];
  value5 = [v19 value];
  integerValue = [value5 integerValue];

  v21 = [v8 objectForKeyedSubscript:NRDevicePropertyChipID];
  value6 = [v21 value];

  if (value4)
  {
    v45 = value2;
    v43 = value;
    integerValue2 = [value4 integerValue];
    v24 = +[NRPairingCompatibilityVersionInfo systemVersions];
    if (integerValue2 < [v24 minPairingCompatibilityVersionWithChipID] || value6)
    {
      selfCopy = self;
      v27 = [v24 minPairingCompatibilityVersionForChipID:value6];
      v28 = nr_daemon_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v30 = nr_daemon_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          maxPairingCompatibilityVersion = [v24 maxPairingCompatibilityVersion];
          *buf = 134218496;
          v48 = integerValue2;
          v49 = 2048;
          v50 = v27;
          v51 = 2048;
          v52 = maxPairingCompatibilityVersion;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "watchVersion: %ld;                      allowedMinimumWatchVersion: %ld;                      maxPairingCompatibilityVersion: %ld", buf, 0x20u);
        }
      }

      v25 = &__kCFBooleanTrue;
      v32 = integerValue2 < v27;
      self = selfCopy;
      if (!v32 && integerValue2 <= [v24 maxPairingCompatibilityVersion])
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
        bOOLValue = [v25 BOOLValue];
        v37 = @"NO";
        if (bOOLValue)
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
      value = v43;
      v39 = [v8 isArchived] & (integerValue != 4);
      if (v39)
      {
        v38 = &off_100186BE0;
      }

      else
      {
        v38 = &off_100186C58;
      }

      v26 = value3;
      if ((v39 & 1) != 0 || !v43)
      {
        goto LABEL_39;
      }

      bOOLValue2 = [v25 BOOLValue];
      v41 = &off_100186C40;
      goto LABEL_36;
    }

    value = v43;
    v26 = value3;
LABEL_26:
    if ([v8 isArchived])
    {
      v38 = &off_100186BE0;
LABEL_39:
      value2 = v45;
      [(NRPairingDaemon *)self _updateCompatibilityStateForDeviceID:dCopy withDeviceCollection:collectionCopy oldCompatibilityState:v45 newCompatibilityState:v38];

      goto LABEL_40;
    }

    bOOLValue2 = [v25 BOOLValue];
    v41 = &off_100186C10;
    if (!v26)
    {
      v41 = &off_100186C28;
    }

LABEL_36:
    if (bOOLValue2)
    {
      v41 = &off_100186BF8;
    }

    v38 = v41;
    goto LABEL_39;
  }

  v26 = value3;
  if ([v8 isPaired])
  {
    v45 = value2;
    v25 = 0;
    goto LABEL_26;
  }

LABEL_40:
}

- (void)_updateCompatibilityStateForDeviceID:(id)d withDeviceCollection:(id)collection oldCompatibilityState:(id)state newCompatibilityState:(id)compatibilityState
{
  stateCopy = state;
  compatibilityStateCopy = compatibilityState;
  v12 = [collection objectForKeyedSubscript:d];
  v13 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  if ([compatibilityStateCopy isEqual:&off_100186BF8] && objc_msgSend(v13, "hasTransactionType:", @"migration"))
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

    compatibilityStateCopy = &off_100186C40;
  }

  v17 = nr_daemon_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v19 = nr_daemon_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = stateCopy;
      v30 = 2112;
      v31 = compatibilityStateCopy;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updating compatibility state from (old)%@ to (new)%@ for device %{public}@", buf, 0x20u);
    }
  }

  if (compatibilityStateCopy && ([compatibilityStateCopy isEqual:stateCopy] & 1) == 0)
  {
    v20 = +[NSMutableDictionary dictionary];
    v21 = [[NRDevicePropertyDiff alloc] initWithValue:compatibilityStateCopy];
    v22 = [[NRDevicePropertyDiffType alloc] initWithDiff:v21 andChangeType:1];
    [v20 setObject:v22 forKeyedSubscript:_NRDevicePropertyCompatibilityState];
    v23 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v20];
    v24 = [v12 applyDiff:v23];
    if ([compatibilityStateCopy isEqualToNumber:&off_100186BF8])
    {
      _isBridgeForeground = [(NRPairingDaemon *)self _isBridgeForeground];
      v26 = +[NRRepeatingAlertEngine sharedInstance];
      [v26 setEnabled:_isBridgeForeground ^ 1 withName:@"PairedWatchIsIncompatible"];

      v27 = +[NRRepeatingAlertEngine sharedInstance];
      [v27 presentAlertIfEnabledWithName:@"PairedWatchIsIncompatible"];
    }

    else if ([stateCopy isEqualToNumber:&off_100186BF8] && (objc_msgSend(v13, "hasTransactionType:", @"pair") & 1) == 0)
    {
      [(NRPairingDaemon *)self initiateSyncAfterSoftwareUpdateForDevice:v12];
    }
  }
}

- (void)initiateSyncAfterSoftwareUpdateForDevice:(id)device
{
  deviceCopy = device;
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
  v10 = deviceCopy;
  selfCopy = self;
  v8 = deviceCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v9];
}

- (void)createDeviceFromBluetoothPairRequestWithBluetoothPeer:(id)peer advertisedName:(id)name withBlock:(id)block
{
  blockCopy = block;
  identifier = [peer identifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003713C;
  v10[3] = &unk_100176F10;
  v11 = blockCopy;
  v9 = blockCopy;
  [(NRPairingDaemon *)self getPairedPairingIDForBluetoothID:identifier completion:v10];
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

- (void)removeCandidateDeviceWithName:(id)name
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100037594;
  v5[3] = &unk_100176588;
  nameCopy = name;
  v4 = nameCopy;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v5];
}

- (void)createDeviceFromBluetoothDiscoveryWithAdvertisementData:(id)data withBluetoothPeer:(id)peer withRSSI:(id)i withBlock:(id)block
{
  peerCopy = peer;
  iCopy = i;
  blockCopy = block;
  dataCopy = data;
  [(NRPairingDaemon *)self removeStaleDiscoveredDevices];
  v14 = [dataCopy objectForKeyedSubscript:CBAdvertisementDataLocalNameKey];

  integerValue = [iCopy integerValue];
  if (sub_1000A163C(integerValue) && [v14 length])
  {
    v16 = +[NSDate date];
    identifier = [peerCopy identifier];
    if (self->_bluetoothIsScanningToMatchThisDeviceID)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000379DC;
      v26[3] = &unk_100176F38;
      v26[4] = self;
      v27 = v14;
      v28 = v16;
      v29 = iCopy;
      v30 = identifier;
      v32 = integerValue;
      v31 = blockCopy;
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
      selfCopy = self;
      v22 = iCopy;
      v23 = identifier;
      v25 = integerValue;
      v24 = blockCopy;
      [(NRPairingDaemon *)self grabRegistryWithReadBlock:v19];

      v18 = v20;
    }
  }
}

- (void)createDeviceFromNetworkRelayDiscoveryWithAdvertisementName:(id)name bluetoothIdentifier:(id)identifier withRSSI:(id)i withBlock:(id)block
{
  nameCopy = name;
  identifierCopy = identifier;
  blockCopy = block;
  iCopy = i;
  [(NRPairingDaemon *)self removeStaleDiscoveredDevices];
  integerValue = [iCopy integerValue];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100037F84;
  v18[3] = &unk_100176F88;
  v19 = nameCopy;
  selfCopy = self;
  v22 = blockCopy;
  v23 = integerValue;
  v21 = identifierCopy;
  v15 = blockCopy;
  v16 = identifierCopy;
  v17 = nameCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v18];
}

- (void)_upsertDeviceDiscoveredBy:(unint64_t)by pairingID:(id)d advertisedName:(id)name bluetoothDeviceID:(id)iD rssiValue:(int64_t)value withBlock:(id)block
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  blockCopy = block;
  v18 = blockCopy;
  if (dCopy)
  {
    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219010;
        byCopy = by;
        v36 = 2112;
        v37 = dCopy;
        v38 = 2112;
        v39 = nameCopy;
        v40 = 2112;
        v41 = iDCopy;
        v42 = 2048;
        valueCopy = value;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "UPSERT device discoveredBy: %lu, pairingID: %@, advertisedName: %@, bluetoothDeviceID: %@, rssi: %ld", buf, 0x34u);
      }
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000383F4;
    v24[3] = &unk_100176FB0;
    v24[4] = self;
    v25 = nameCopy;
    valueCopy2 = value;
    byCopy2 = by;
    v26 = iDCopy;
    v27 = dCopy;
    v28 = v18;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v24];

    v22 = v25;
    goto LABEL_9;
  }

  if (blockCopy)
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

- (id)_bluetoothIDFromPairingID:(id)d
{
  dCopy = d;
  collection = [(NRPairingDaemon *)self collection];
  v6 = [collection objectForKeyedSubscript:dCopy];

  v7 = [v6 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  value = [v7 value];

  return value;
}

- (id)_bluetoothIDOfActiveDevice
{
  collection = [(NRPairingDaemon *)self collection];
  activeDevice = [collection activeDevice];
  v4 = [activeDevice objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  value = [v4 value];

  return value;
}

- (void)getAdvertisedNameFromDeviceID:(id)d withCompletion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100038BB4;
  v8[3] = &unk_1001768D8;
  dCopy = d;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = dCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)beginDiscovery:(BOOL)discovery withDeviceIDToDiscover:(id)discover
{
  discoveryCopy = discovery;
  discoverCopy = discover;
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
  v12 = discoverCopy;
  v18 = v12;
  v13 = objc_retainBlock(v17);
  [(NSMutableSet *)self->_bluetoothDiscoveryEventDedupe removeAllObjects];
  if (discoveryCopy)
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

- (void)sendXPCOOBKeyChanged:(id)changed
{
  changedCopy = changed;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "(data)";
      if (!changedCopy)
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
  v12 = changedCopy;
  v10 = changedCopy;
  [(NRSimpleReferenceCounter *)pairingClients enumerateObjects:v11];
}

- (BOOL)_requiresNetworkRelayPairingIdentifierUpdateForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  value = [v4 value];

  if (value)
  {
    v6 = [NetworkRelayAgent networkRelayIdentifierForBluetoothIdentifier:value];
    if (v6)
    {
      v7 = [deviceCopy objectForKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
      value2 = [v7 value];

      if (value2)
      {
        LODWORD(v9) = [value2 isEqual:v6] ^ 1;
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
        uUIDString = [value UUIDString];
        v12 = 138412290;
        v13 = uUIDString;
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

- (void)_updateNetworkRelayIdentifierForDevicesInCollection:(id)collection
{
  collectionCopy = collection;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NRPairingDaemon _updateNetworkRelayIdentifierForDevicesInCollection:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  allPairingIDs = [collectionCopy allPairingIDs];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [allPairingIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allPairingIDs);
        }

        v12 = [collectionCopy objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v11), v16}];
        if ([v12 isPaired] && (objc_msgSend(v12, "isArchived") & 1) == 0 && -[NRPairingDaemon _requiresNetworkRelayPairingIdentifierUpdateForDevice:](self, "_requiresNetworkRelayPairingIdentifierUpdateForDevice:", v12))
        {
          [(NRPairingDaemon *)self _updateNetworkRelayIdentifierForDevice:v12];
        }

        else
        {
          v13 = networkrelay_pairing_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            pairingID = [v12 pairingID];
            uUIDString = [pairingID UUIDString];
            *buf = v16;
            v23 = uUIDString;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not updating NetworkRelayIdentifier for %@", buf, 0xCu);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allPairingIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_updateNetworkRelayIdentifierForDevice:(id)device
{
  deviceCopy = device;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[NRPairingDaemon _updateNetworkRelayIdentifierForDevice:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  v5 = [deviceCopy objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  value = [v5 value];

  if (value)
  {
    v7 = [NetworkRelayAgent networkRelayIdentifierForBluetoothIdentifier:value];
    if (v7)
    {
      v8 = +[NSMutableDictionary dictionary];
      uUIDString = [[NRDevicePropertyDiff alloc] initWithValue:v7];
      v10 = [[NRDevicePropertyDiffType alloc] initWithDiff:uUIDString andChangeType:1];
      [v8 setObject:v10 forKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
      v11 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v8];
      v12 = [deviceCopy applyDiff:v11];
    }

    else
    {
      v8 = networkrelay_pairing_log_handle();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_12;
      }

      uUIDString = [value UUIDString];
      v13 = 138412290;
      v14 = uUIDString;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to retrieve NetworkRelayIdentifier for device with Bluetooth identifier %@", &v13, 0xCu);
    }

    goto LABEL_11;
  }

  v7 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = 138412290;
    v14 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to update NetworkRelayIdentifier for device with no Bluetooth identifier: %@", &v13, 0xCu);
  }

LABEL_12:
}

- (id)getTrafficClassifiersForCompatibilityState:(unsigned __int16)state
{
  stateCopy = state;
  v4 = objc_opt_new();
  v5 = v4;
  if (stateCopy <= 2)
  {
    if (stateCopy < 2)
    {
      v6 = off_100179DC0;
      goto LABEL_12;
    }

    if (stateCopy != 2)
    {
      goto LABEL_13;
    }

    [v4 addObject:@"com.apple.ids.trafficclass.nanoregistry.update"];
    goto LABEL_9;
  }

  switch(stateCopy)
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
  defaultPairedDevice = [v3 defaultPairedDevice];
  v5 = defaultPairedDevice;
  if (v3)
  {
    v6 = defaultPairedDevice == 0;
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

- (id)localizedString:(id)string
{
  stringCopy = string;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.private.NanoRegistry"];
  v5 = [v4 localizedStringForKey:stringCopy value:&stru_10017A258 table:@"Localizable-tinker"];

  return v5;
}

- (void)xpcSubmitAlbertPairingReport:(id)report
{
  reportCopy = report;
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
  v10 = reportCopy;
  v8 = reportCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v9];
}

- (void)xpcPairingClientDidEnterPhase:(id)phase withBlock:(id)block
{
  phaseCopy = phase;
  blockCopy = block;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = phaseCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setup entered %{public}@ phase", &v12, 0xCu);
    }
  }

  pairingClientPhase = self->_pairingClientPhase;
  self->_pairingClientPhase = phaseCopy;

  blockCopy[2](blockCopy);
}

- (void)xpcPairingClientSetPairingParentName:(id)name pairingParentAltDSID:(id)d forPairingID:(id)iD completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003A324;
  v16[3] = &unk_100176DD0;
  iDCopy = iD;
  v18 = nameCopy;
  v19 = dCopy;
  completionCopy = completion;
  v12 = completionCopy;
  v13 = dCopy;
  v14 = nameCopy;
  v15 = iDCopy;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v16];
}

- (void)xpcPairingClientSetAltAccountName:(id)name altDSID:(id)d forPairingID:(id)iD completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003A7B8;
  v16[3] = &unk_100176DD0;
  iDCopy = iD;
  v18 = nameCopy;
  v19 = dCopy;
  completionCopy = completion;
  v12 = completionCopy;
  v13 = dCopy;
  v14 = nameCopy;
  v15 = iDCopy;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v16];
}

- (void)checkForWatchNeedsGraduation:(id)graduation
{
  graduationCopy = graduation;
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
    graduationCopy[2](graduationCopy, 1);
  }

  else
  {
LABEL_8:
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003ACCC;
    v9[3] = &unk_100176DF8;
    v10 = graduationCopy;
    [(NRPairingDaemon *)self xpcWatchNeedsGraduation:v9];
  }
}

- (void)xpcWatchNeedsGraduation:(id)graduation
{
  graduationCopy = graduation;
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
  graduationCopy[2](graduationCopy, v10);
}

- (void)xpcClearWatchNeedsGraduation:(id)graduation
{
  graduationCopy = graduation;
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

    graduationCopy[2](graduationCopy, v10);
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

    graduationCopy[2](graduationCopy, 0);
  }

  v15 = +[NRRepeatingAlertEngine sharedInstance];
  [v15 clearUINotificationwithName:@"TinkerWatchFoundInAccount"];
}

- (void)xpcWatchBuddyCompletedSetupSteps:(id)steps
{
  stepsCopy = steps;
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
  v13 = stepsCopy;
  v8 = stepsCopy;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B548;
  v10[3] = &unk_1001768D8;
  v10[4] = self;
  v11 = objc_retainBlock(v12);
  v9 = v11;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v10];
}

- (void)xpcUpdateWatchBuddyStage:(unsigned int)stage forPairingID:(id)d
{
  dCopy = d;
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
      stageCopy = stage;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s stage: %{public}d", buf, 0x12u);
    }
  }

  if (dCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003B7B0;
    v10[3] = &unk_100177000;
    v11 = dCopy;
    stageCopy2 = stage;
    [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v10];
  }
}

- (void)_updateIsSetupPropertyForNewlyPairedDevice:(id)device
{
  deviceCopy = device;
  queuedNotIsPairedDeviceIDToMarkIsSetup = [(NRPairingDaemon *)self queuedNotIsPairedDeviceIDToMarkIsSetup];
  pairingID = [deviceCopy pairingID];
  v7 = [queuedNotIsPairedDeviceIDToMarkIsSetup isEqual:pairingID];

  if (v7)
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        pairingID2 = [deviceCopy pairingID];
        v14 = 138412290;
        v15 = pairingID2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "isSetup is queued, and now %@ isPaired, will try to set isSetup", &v14, 0xCu);
      }
    }

    [(NRPairingDaemon *)self _markDeviceIsSetupWhereApplicable:deviceCopy bypassIsSetupNoCheck:1];
    [(NRPairingDaemon *)self setQueuedNotIsPairedDeviceIDToMarkIsSetup:0];
  }

  else
  {
    v12 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
    v13 = [deviceCopy supportsCapability:v12];

    if ((v13 & 1) == 0)
    {
      [(NRPairingDaemon *)self _markDeviceIsSetupWhereApplicable:deviceCopy bypassIsSetupNoCheck:0];
    }
  }
}

- (void)_queueMarkDeviceIsSetup:(id)setup
{
  setupCopy = setup;
  if ([setupCopy isPaired])
  {
    [(NRPairingDaemon *)self _markDeviceIsSetupWhereApplicable:setupCopy bypassIsSetupNoCheck:1];
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
        pairingID = [setupCopy pairingID];
        v10 = 136315394;
        v11 = "[NRPairingDaemon _queueMarkDeviceIsSetup:]";
        v12 = 2112;
        v13 = pairingID;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - device is not paired, queueing %@ to be marked as isSetup once the device is paired", &v10, 0x16u);
      }
    }

    pairingID2 = [setupCopy pairingID];
    [(NRPairingDaemon *)self setQueuedNotIsPairedDeviceIDToMarkIsSetup:pairingID2];
  }
}

- (void)_onRestartMarkPairedDevicesIsSetup:(id)setup
{
  setupCopy = setup;
  allPairingIDs = [setupCopy allPairingIDs];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [allPairingIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allPairingIDs);
        }

        v10 = [setupCopy objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9)];
        if (([v10 isArchived] & 1) == 0 && objc_msgSend(v10, "isPaired"))
        {
          [(NRPairingDaemon *)self _markDeviceIsSetupWhereApplicable:v10 bypassIsSetupNoCheck:0];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allPairingIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_resolveIsSetupNumberForDevice:(id)device
{
  v4 = [device objectForKeyedSubscript:NRDevicePropertyIsSetup];
  value = [v4 value];

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

    secureProperties = [(NRPairingDaemon *)self secureProperties];
    v10 = [secureProperties objectForKeyedSubscript:value];
  }

  else
  {
    v10 = value;
  }

  return v10;
}

- (BOOL)_deviceIsInSetupBasedOnIsSetupValue:(id)value
{
  v3 = [(NRPairingDaemon *)self _resolveIsSetupNumberForDevice:value];
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

- (void)_markDeviceIsSetupWhereApplicable:(id)applicable bypassIsSetupNoCheck:(BOOL)check
{
  checkCopy = check;
  applicableCopy = applicable;
  v7 = [(NRPairingDaemon *)self _resolveIsSetupNumberForDevice:applicableCopy];
  v8 = v7;
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  if (![v8 BOOLValue] && ((bOOLValue | checkCopy) & 1) != 0)
  {
    v10 = [applicableCopy objectForKeyedSubscript:NRDevicePropertyIsPaired];
    value = [v10 value];

    v12 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
    v13 = [applicableCopy supportsCapability:v12];

    if (v13)
    {
      pairingClients = [(NRPairingDaemon *)self pairingClients];
      if ([pairingClients count])
      {
        bOOLValue2 = 0;
      }

      else
      {
        bOOLValue2 = [value BOOLValue];
      }
    }

    else
    {
      bOOLValue2 = [value BOOLValue];
    }

    v18 = nr_daemon_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = nr_daemon_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        pairingClients2 = [(NRPairingDaemon *)self pairingClients];
        v34 = 67109632;
        *v35 = v13;
        *&v35[4] = 2048;
        *&v35[6] = [pairingClients2 count];
        *&v35[14] = 1024;
        *&v35[16] = [value BOOLValue];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "supportsEarlyPairedSync %{BOOL}d pairing client count %lu isPaired %{BOOL}d", &v34, 0x18u);
      }
    }

    v22 = [applicableCopy objectForKeyedSubscript:NRDevicePropertyPairingID];
    value2 = [v22 value];

    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (bOOLValue2)
    {
      if (v25)
      {
        v26 = nr_daemon_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 136315394;
          *v35 = "[NRPairingDaemon _markDeviceIsSetupWhereApplicable:bypassIsSetupNoCheck:]";
          *&v35[8] = 2112;
          *&v35[10] = value2;
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

      v33 = [applicableCopy applyDiff:v32];
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
        *&v35[10] = value2;
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
    value = nr_daemon_log();
    if (os_log_type_enabled(value, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412546;
      *v35 = v8;
      *&v35[8] = 1024;
      *&v35[10] = checkCopy;
      _os_log_impl(&_mh_execute_header, value, OS_LOG_TYPE_DEFAULT, "Will not change isSetup to 1 based on isSetup value - isSetup: %@, isSetupNoAllowed: %{BOOL}d", &v34, 0x12u);
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (void)updateFromBTState:(int64_t)state
{
  v5 = [(NRPairingDaemon *)self isBluetoothPoweredOn:?];
  v6 = [(NRPairingDaemon *)self isBluetoothConnected:state];
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

- (void)centralManagerDidUpdateState:(id)state
{
  state = [state state];

  [(NRPairingDaemon *)self updateFromBTState:state];
}

- (void)xpcSubmitServerRequestReportWithRequestType:(id)type duration:(double)duration errorCode:(unsigned int)code block:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C8AC;
  v8[3] = &unk_100176928;
  blockCopy = block;
  v7 = blockCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)xpcServer:(id)server proxyDidSuspend:(id)suspend
{
  suspendCopy = suspend;
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
      v29 = suspendCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Proxy(%@)", buf, 0x16u);
    }
  }

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10003CB60;
  v23 = &unk_100175598;
  selfCopy = self;
  v9 = suspendCopy;
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
    queue = [v18 queue];
    [(NRPairingDaemon *)self _scheduleTimerOnQueue:queue afterDelay:v10 block:v14];
  }

  else
  {
    v11 = +[NRQueue registryDaemonQueue];
    [(NRPreferences *)v11 dispatchAsync:v10];
  }
}

- (void)xpcServer:(id)server proxyDidResume:(id)resume
{
  resumeCopy = resume;
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
      v14 = resumeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Proxy(%@)", &v11, 0x16u);
    }
  }

  if ([(NRMutableDevice *)self->_mirrorOfActiveDevice isAltAccount])
  {
    v9 = +[NRQueue registryDaemonQueue];
    queue = [v9 queue];
    [(NRPairingDaemon *)self _cancelScheduleTimerOnQueue:queue];
  }
}

- (void)xpcServer:(id)server proxyDidDisconnect:(id)disconnect
{
  serverCopy = server;
  disconnectCopy = disconnect;
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
      v20 = disconnectCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Proxy(%@)", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  v11 = +[NRQueue registryDaemonQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003CEC4;
  v13[3] = &unk_1001770B8;
  v12 = disconnectCopy;
  v14 = v12;
  selfCopy = self;
  objc_copyWeak(&v16, buf);
  [v11 dispatchAsync:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_scheduleTimerOnQueue:(id)queue afterDelay:(double)delay block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v10 = blockCopy;
  if (delay < 0.0 || queueCopy == 0 || blockCopy == 0)
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

    v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);
    v19 = self->_scheduledTimer;
    self->_scheduledTimer = v18;

    v20 = self->_scheduledTimer;
    v21 = dispatch_time(0, (delay * 1000000000.0));
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

- (void)_cancelScheduleTimerOnQueue:(id)queue
{
  if (queue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003D5C8;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(queue, block);
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

- (void)updateShouldMonitorProxy:(id)proxy
{
  proxyCopy = proxy;
  if ([(NRSimpleReferenceCounter *)self->_pairingClients containsObject:proxyCopy]|| [(NRSimpleReferenceCounter *)self->_pushingClients containsObject:proxyCopy]|| [(NRSimpleReferenceCounter *)self->_discoveringClients containsObject:proxyCopy]|| [(NRSimpleReferenceCounter *)self->_advertisingClients containsObject:proxyCopy])
  {
    v5 = 1;
  }

  else
  {
    v11 = [(NSMapTable *)self->_clientProxyToAssertionInfo objectForKey:proxyCopy];
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

      appPath = [proxyCopy appPath];
      v12 = 136315394;
      v13 = v9;
      v14 = 2112;
      v15 = appPath;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s pairing client %@", &v12, 0x16u);
    }
  }

  [proxyCopy setMonitorClientForSuspension:v5];
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
    queue = [v9 queue];
    v11 = [(NRSimpleReferenceCounter *)v8 initWithIdentifier:@"Pushing Clients Counter" allocateBlock:v29 freeBlock:v27 queue:queue async:1];
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
    queue2 = [v14 queue];
    v16 = [(NRSimpleReferenceCounter *)v13 initWithIdentifier:@"Discovering Clients Counter" allocateBlock:0 freeBlock:v25 queue:queue2 async:1];
    discoveringClients = self->_discoveringClients;
    self->_discoveringClients = v16;

    [(NRSimpleReferenceCounter *)self->_discoveringClients setDidAddBlock:v3];
    [(NRSimpleReferenceCounter *)self->_discoveringClients setDidRemoveBlock:v3];
    v18 = [NRSimpleReferenceCounter alloc];
    objc_copyWeak(&v24, location);
    v19 = [NRQueue delayPairingRequestQueue:_NSConcreteStackBlock];
    queue3 = [v19 queue];
    v21 = [(NRSimpleReferenceCounter *)v18 initWithIdentifier:@"Advertising Clients Counter" allocateBlock:0 freeBlock:&v23 queue:queue3 async:1];
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

- (void)xpcPairWithSimulator:(id)simulator withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = nrGetPairingError();
  (*(completion + 2))(completionCopy, v6);
}

- (void)xpcUnpairWithSimulator:(id)simulator withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = nrGetPairingError();
  (*(completion + 2))(completionCopy, v6);
}

- (void)xpcSwitchToSimulator:(id)simulator withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = nrGetPairingError();
  (*(completion + 2))(completionCopy, v6);
}

- (int64_t)pairingVersionFromAdvertisedName:(id)name
{
  v3 = NRAdvertisingInfoFromPayload();
  v4 = [v3 objectForKeyedSubscript:NRBridgeAdvertisingVersionKey];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (void)checkAndDisableStandAloneMode
{
  if (qword_1001B37D0 != -1)
  {
    sub_1000FEE24();
  }
}

- (void)xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = [NRNetworkRelayPair candidateSupportsNetworkRelayPairing:nameCopy];
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
        v18 = nameCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Using NetworkRelayPair to wait for watch pairing extended metadata of %{public}@", buf, 0xCu);
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003E468;
    v15[3] = &unk_100177190;
    v16 = completionCopy;
    v12 = objc_retainBlock(v15);
    v13 = +[NRNetworkRelayPair sharedInstance];
    [v13 waitForWatchPairingExtendedMetadataForAdvertisedName:nameCopy completion:v12];
  }

  else
  {
    if (v10)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = nameCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using legacy path to wait for watch pairing extended metadata of %{public}@", buf, 0xCu);
      }
    }

    [(NRPairingDaemon *)self _xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:nameCopy completion:completionCopy];
  }
}

- (void)_xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
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
  v8 = nameCopy;
  v28 = v8;
  v9 = completionCopy;
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

- (void)xpcCompanionOOBDiscoverAndPairWithName:(id)name withOutOfBandPairingKey:(id)key withOptions:(id)options operationHasBegun:(id)begun
{
  nameCopy = name;
  keyCopy = key;
  optionsCopy = options;
  begunCopy = begun;
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
      v35 = nameCopy;
      v36 = 2114;
      v37 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "xpcCompanionOOBDiscoverAndPairWithName: advertisedName=%{public}@ options=%{public}@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  objc_storeStrong(&self->_pairingClientProxy, lastCaller);
  pairingClients = self->_pairingClients;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003F2C4;
  v27[3] = &unk_1001772D0;
  v22 = nameCopy;
  v28 = v22;
  v23 = optionsCopy;
  v29 = v23;
  objc_copyWeak(&v33, buf);
  v24 = lastCaller;
  v30 = v24;
  v25 = begunCopy;
  v32 = v25;
  v26 = keyCopy;
  v31 = v26;
  [(NRSimpleReferenceCounter *)pairingClients addObject:v24 withAllocationBlock:v27];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

- (void)xpcCompanionPasscodePairWithDeviceID:(id)d withOptions:(id)options operationHasBegun:(id)begun
{
  dCopy = d;
  optionsCopy = options;
  begunCopy = begun;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000FEF28(dCopy);
    }
  }

  objc_initWeak(&location, self);
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  objc_storeStrong(&self->_pairingClientProxy, lastCaller);
  pairingClients = self->_pairingClients;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003FFBC;
  v20[3] = &unk_100177370;
  v16 = dCopy;
  v21 = v16;
  v17 = optionsCopy;
  v22 = v17;
  objc_copyWeak(&v25, &location);
  v18 = lastCaller;
  v23 = v18;
  v19 = begunCopy;
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

- (void)xpcGizmoOOBAdvertiseAndPairWithName:(id)name operationHasBegun:(id)begun
{
  nameCopy = name;
  begunCopy = begun;
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
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  objc_storeStrong(&self->_pairingClientProxy, lastCaller);
  pairingClients = self->_pairingClients;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100041168;
  v16[3] = &unk_1001773C0;
  v13 = nameCopy;
  v17 = v13;
  objc_copyWeak(&v20, &location);
  v14 = begunCopy;
  v19 = v14;
  v15 = lastCaller;
  v18 = v15;
  [(NRSimpleReferenceCounter *)pairingClients addObject:v15 withAllocationBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)xpcBeginMigrationWithDeviceID:(id)d completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000419B4;
  v8[3] = &unk_1001773E8;
  dCopy = d;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = dCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)xpcBeginMigrationWithCompletion:(id)completion
{
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Not implemented on watch";
  completionCopy = completion;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:@"com.apple.NanoRegistry" code:1200 userInfo:v5];
  (*(completion + 2))(completionCopy, v6);
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
  collection = [(NRPairingDaemon *)self collection];
  activeDevice = [collection activeDevice];

  v4 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
  if (![activeDevice supportsCapability:v4])
  {

    goto LABEL_5;
  }

  isAltAccount = [activeDevice isAltAccount];

  if (isAltAccount)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)xpcGizmoPasscodeAdvertiseAndPairWithName:(id)name operationHasBegun:(id)begun
{
  nameCopy = name;
  begunCopy = begun;
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
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  objc_storeStrong(&self->_pairingClientProxy, lastCaller);
  pairingClients = self->_pairingClients;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100042308;
  v16[3] = &unk_1001773C0;
  v13 = nameCopy;
  v17 = v13;
  objc_copyWeak(&v20, &location);
  v14 = begunCopy;
  v19 = v14;
  v15 = lastCaller;
  v18 = v15;
  [(NRSimpleReferenceCounter *)pairingClients addObject:v15 withAllocationBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)handleDeadPairingClient:(id)client
{
  clientCopy = client;
  if (!self->_monitoringPairingClientBeyondNewWatchPairingTransactionComplete || self->_clientRequestedSuspensionOfMonitoringPairingClientBeyondNewWatchPairingTransactionComplete || self->_syncTrapUIPushed)
  {
    v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    v6 = nrGetPairingError();
    [v5 clearTransactionsWithUserInfo:clientCopy error:v6];
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
    v12 = clientCopy;
    [v10 dispatchAsync:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  self->_monitoringPairingClientBeyondNewWatchPairingTransactionComplete = 0;
}

- (void)xpcAbortPairingReason:(id)reason withBlock:(id)block
{
  blockCopy = block;
  reasonCopy = reason;
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  [(NRPairingDaemon *)self abortPairingReason:reasonCopy proxy:lastCaller withBlock:blockCopy];
}

- (void)abortPairingReason:(id)reason proxy:(id)proxy withBlock:(id)block
{
  reasonCopy = reason;
  proxyCopy = proxy;
  blockCopy = block;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      appPath = [proxyCopy appPath];
      *buf = 138543618;
      v26 = appPath;
      v27 = 2114;
      v28 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ called abort pairing with reason %{public}@", buf, 0x16u);
    }
  }

  if (!-[NRMutableDevice isAltAccount](self->_mirrorOfActiveDevice, "isAltAccount") || ([proxyCopy appPath], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "lastPathComponent"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", @"sharingd"), v16, v15, (v17 & 1) == 0))
  {
    [(NRPairingDaemon *)self forceEndDiscovery];
    v20 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
    appPath2 = [proxyCopy appPath];
    [v20 setPairingReportErrorForPairingClient:appPath2 reason:reasonCopy];

    pairingClients = self->_pairingClients;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100043050;
    v23[3] = &unk_100176900;
    v23[4] = self;
    v24 = blockCopy;
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

- (void)xpcNotifyActivationCompleted:(id)completed withSuccess:(BOOL)success
{
  completedCopy = completed;
  v6 = completedCopy;
  if (completedCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000431A0;
    v7[3] = &unk_1001757C0;
    v8 = completedCopy;
    selfCopy = self;
    [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v7];
  }
}

- (void)xpcNotifyPasscode:(id)passcode withDeviceID:(id)d
{
  passcodeCopy = passcode;
  dCopy = d;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [dCopy UUIDString];
      v13 = 138543618;
      v14 = uUIDString;
      v15 = 2112;
      v16 = passcodeCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "xpcNotifyPasscode withDeviceID=%{public}@ passcode=%@", &v13, 0x16u);
    }
  }

  v12 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  [v12 notifyPasscode:passcodeCopy];
}

- (void)enterCompatibilityState:(unsigned __int16)state withDeviceID:(id)d withCompletion:(id)completion
{
  stateCopy = state;
  dCopy = d;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [dCopy UUIDString];
      *buf = 138543618;
      v21 = uUIDString;
      v22 = 1024;
      v23 = stateCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_enterCompatibilityState: deviceID=%{public}@ withCompatibilityState=%d", buf, 0x12u);
    }
  }

  if ((stateCopy & 0xFFFE) == 4)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100043640;
    v18[3] = &unk_100177410;
    v18[4] = self;
    v12 = dCopy;
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

- (void)xpcUnpairWithDeviceID:(id)d withOptions:(id)options operationHasBegun:(id)begun
{
  dCopy = d;
  optionsCopy = options;
  begunCopy = begun;
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  [(NRPairingDaemon *)self removeAssertionsForProxy:lastCaller newDeviceID:dCopy];
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
      v57 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "xpcUnpairWithDeviceID: options=%@", buf, 0xCu);
    }
  }

  v12 = [(__CFString *)optionsCopy objectForKeyedSubscript:NRUnpairOptionObliterate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v13 = [(__CFString *)optionsCopy objectForKeyedSubscript:NRUnpairOptionBrick];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue2 = [v13 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v15 = [(__CFString *)optionsCopy objectForKeyedSubscript:@"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue3 = [v15 BOOLValue];
  }

  else
  {
    bOOLValue3 = 0;
  }

  v17 = [(__CFString *)optionsCopy objectForKeyedSubscript:NRUnpairOptionStore];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue4 = [v17 BOOLValue];
    bOOLValue3 &= bOOLValue4 ^ 1;
    bOOLValue2 &= bOOLValue4 ^ 1;
    bOOLValue &= bOOLValue4 ^ 1;
  }

  else
  {
    bOOLValue4 = 0;
  }

  v19 = [(__CFString *)optionsCopy objectForKeyedSubscript:NRUnpairOptionUnpairAbortErrorReason];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_alloc_init(NRPairingReport);
    appPath = [lastCaller appPath];
    [(NRPairingReport *)v20 setPairingReportErrorForPairingClient:appPath reason:v19];
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
      uUIDString = [dCopy UUIDString];
      v26 = MKBDeviceUnlockedSinceBoot();
      v27 = @"(nil)";
      *buf = 138544898;
      if (uUIDString)
      {
        v27 = uUIDString;
      }

      v57 = v27;
      v58 = 1024;
      v59 = bOOLValue;
      v60 = 1024;
      v61 = bOOLValue2;
      v62 = 1024;
      v63 = bOOLValue4;
      v64 = 1024;
      v65 = bOOLValue3;
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
  v28 = dCopy;
  v50 = v28;
  selfCopy = self;
  v53 = v54;
  v29 = lastCaller;
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
  v45 = bOOLValue;
  v32 = v29;
  v41 = v32;
  v46 = bOOLValue2;
  v47 = bOOLValue4;
  v48 = bOOLValue3;
  v33 = v20;
  v42 = v33;
  v34 = begunCopy;
  v43 = v34;
  [v30 dispatchAsync:v39];

  _Block_object_dispose(v54, 8);
}

- (void)xpcSuspendPairingClientCrashMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v7 = [v6 requestSetResumable:1 userInfo:lastCaller forRunningOperationType:@"pair"];
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
  monitoringCopy[2](monitoringCopy);
}

- (void)xpcResumePairingClientCrashMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  if (!CFPreferencesGetAppBooleanValue(@"store", @"com.apple.NanoRegistry", 0))
  {
    lastCaller = [(NRPairingDaemon *)self lastCaller];
    v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100044680;
    v9[3] = &unk_100177090;
    objc_copyWeak(&v11, &location);
    v7 = lastCaller;
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

  monitoringCopy[2](monitoringCopy);
}

- (void)xpcRetriggerUnpairInfoDialogWithBlock:(id)block
{
  blockCopy = block;
  v3 = +[NRRepeatingAlertEngine sharedInstance];
  [v3 presentAlertIfEnabledWithName:@"WatchUnexpectedlyUnpairedBridge"];

  blockCopy[2]();
}

- (void)getCanPairAnotherDeviceWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004489C;
  v4[3] = &unk_1001774B0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(NRPairingDaemon *)selfCopy grabRegistryWithReadBlock:v4];
}

- (BOOL)_isIDSPairedAndConsistentWithIDSDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [(NRMutableDevice *)self->_mirrorOfActiveDevice objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  value = [v5 value];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = devicesCopy;
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
          nsuuid = [v12 nsuuid];
          v14 = [value isEqual:nsuuid];

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

- (void)remoteObject:(id)object isConnected:(BOOL)connected
{
  connectedCopy = connected;
  objectCopy = object;
  if (connectedCopy)
  {
    v7 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
    v8 = v7;
    if (v7 == objectCopy)
    {
    }

    else
    {
      v9 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];

      if (v9 != objectCopy)
      {
        goto LABEL_7;
      }
    }

    [(NRPairingDaemon *)self refreshPropertyCache];
  }

LABEL_7:
  v10 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];

  if (v10 == objectCopy)
  {
    if (connectedCopy)
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

- (void)remoteObjectIDSServiceAvailable:(id)available withIDSDevice:(id)device
{
  availableCopy = available;
  [(NRPairingDaemon *)self _isIDSReady];
  v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];

  v6 = availableCopy;
  if (v5 == availableCopy)
  {
    [(NRPairingDaemon *)self updateTrafficClass];
    defaultPairedDevice = [availableCopy defaultPairedDevice];
    if (defaultPairedDevice)
    {
      [(NRPairingDaemon *)self _updatePairedDevicePropertiesFromIDSDevice:defaultPairedDevice completion:0];
    }

    v6 = availableCopy;
  }
}

- (void)remoteObjectDevicesChanged:(id)changed
{
  changedCopy = changed;
  [(NRPairingDaemon *)self _isIDSReady];
  v5 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];

  if (v5 == changedCopy)
  {
    v7 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v7 checkIfShouldRetryMigrationWhenIDSDevicesChange];
    v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v6 broadcastVersionChangeToDisconnectedWatches];
  }
}

- (void)getPairedPairedPairingIDForBluetoothID:(id)d completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045304;
  v8[3] = &unk_1001768D8;
  dCopy = d;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = dCopy;
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

- (void)presentWatchWasUpdatedAlertIfNeededForNewBuildVersion:(id)version oldBuildVersion:(id)buildVersion
{
  versionCopy = version;
  buildVersionCopy = buildVersion;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"hasAdvertisedFaceGallery", @"com.apple.NanoRegistry", 0);
  if (!AppBooleanValue)
  {
    v7 = sub_1000459E8(AppBooleanValue, buildVersionCopy);
    if (v7)
    {
      if ((sub_1000459E8(v7, versionCopy) & 1) == 0)
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

- (void)_updatePairedDevicePropertiesFromIDSDevice:(id)device completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045B14;
  v8[3] = &unk_1001762B0;
  deviceCopy = device;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = deviceCopy;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v8];
}

- (void)remoteObject:(id)object receivedUnpairRequestWithAdvertisedName:(id)name shouldObliterate:(BOOL)obliterate shouldBrick:(BOOL)brick shouldPreserveESim:(BOOL)sim withPairingFailureCode:(id)code withAbortReason:(id)reason withRequestIdentifier:(id)self0 fromIDSBTUUID:(id)self1
{
  objectCopy = object;
  nameCopy = name;
  codeCopy = code;
  reasonCopy = reason;
  identifierCopy = identifier;
  dCopy = d;
  v22 = identifierCopy;
  protobuf = [v22 protobuf];
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
    obliterateCopy = obliterate;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100046BB0;
    v28[3] = &unk_100177548;
    v28[4] = self;
    v29 = dCopy;
    v30 = nameCopy;
    p_buf = &buf;
    brickCopy = brick;
    simCopy = sim;
    v31 = codeCopy;
    v32 = reasonCopy;
    v33 = protobuf;
    [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v28];

    _Block_object_dispose(&buf, 8);
  }
}

- (id)_deviceFromIDSBTUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    collection = [(NRPairingDaemon *)self collection];
    v6 = [collection countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(collection);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        collection2 = [(NRPairingDaemon *)self collection];
        v13 = [collection2 objectForKeyedSubscript:v11];

        v14 = [v13 objectForKeyedSubscript:v9];
        value = [v14 value];

        LOBYTE(v14) = [value isEqual:dCopy];
        if (v14)
        {
          goto LABEL_15;
        }

        if (v7 == ++v10)
        {
          v7 = [collection countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    collection = nr_daemon_log();
    if (os_log_type_enabled(collection, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF4B8();
    }

    goto LABEL_14;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (void)remoteObject:(id)object receivedPropertyChanges:(id)changes isAllProperties:(BOOL)properties fromIDSBTUUID:(id)d
{
  changesCopy = changes;
  dCopy = d;
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
  v17 = dCopy;
  v18 = changesCopy;
  propertiesCopy = properties;
  v14 = changesCopy;
  v15 = dCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v16];
}

- (void)remoteObject:(id)object receivedPropertyRequestWithRequestIdentifier:(id)identifier fromIDSBTUUID:(id)d
{
  localProperties = self->_localProperties;
  identifierCopy = identifier;
  properties = [(NRLocalPropertyMonitor *)localProperties properties];
  v8 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v8 sendPropertyResponseWithTimeout:0 withProperties:properties withRequestIdentifier:identifierCopy withSentBlock:0];
}

- (void)remoteObject:(id)object receivedAddTermsEvent:(id)event fromIDSBTUUID:(id)d responseBlock:(id)block
{
  serviceRegistry = self->_serviceRegistry;
  blockCopy = block;
  dCopy = d;
  eventCopy = event;
  objectCopy = object;
  v14 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v14 remoteObject:objectCopy receivedAddTermsEvent:eventCopy fromIDSBTUUID:dCopy responseBlock:blockCopy];
}

- (void)remoteObject:(id)object receivedCheckTermsEvent:(id)event fromIDSBTUUID:(id)d responseBlock:(id)block
{
  serviceRegistry = self->_serviceRegistry;
  blockCopy = block;
  dCopy = d;
  eventCopy = event;
  objectCopy = object;
  v14 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v14 remoteObject:objectCopy receivedCheckTermsEvent:eventCopy fromIDSBTUUID:dCopy responseBlock:blockCopy];
}

- (void)remoteObject:(id)object receivedSystemVersionBroadcast:(id)broadcast fromDeviceID:(id)d
{
  serviceRegistry = self->_serviceRegistry;
  dCopy = d;
  broadcastCopy = broadcast;
  objectCopy = object;
  v11 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v11 remoteObject:objectCopy receivedSystemVersionBroadcast:broadcastCopy fromDeviceID:dCopy];
}

- (void)assertionFactoryDidBecomeIdle:(id)idle
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

- (void)resourceAvailabilityDidChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = changeCopy;
    v6 = [(NSMapTable *)self->_assertionToAssertionInfo objectForKey:v5];
    if ([v5 availability] == 1)
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = sub_100023050;
      v13[4] = sub_100023060;
      pairingID = [v6 pairingID];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100047EDC;
      v9[3] = &unk_100177608;
      v12 = v13;
      v10 = v6;
      selfCopy = self;
      [(NRPairingDaemon *)self grabHistoryWithReadBlock:v9];

      _Block_object_dispose(v13, 8);
    }

    else if ([v5 availability] == 2)
    {
      clientBlock = [v6 clientBlock];
      if (clientBlock)
      {
        [v6 setClientBlock:0];
        error = [v5 error];
        (clientBlock)[2](clientBlock, error, 0);
      }

      [(NRPairingDaemon *)self removeAssertionInfo:v6];
    }
  }
}

- (void)remoteObject:(id)object receivedTinkerMigrationRequestWithShouldCancel:(BOOL)cancel responseBlock:(id)block
{
  cancelCopy = cancel;
  blockCopy = block;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (cancelCopy)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receivedMigrationRequestWithShouldCancel:%@", &v12, 0xCu);
    }
  }

  if (cancelCopy)
  {
    v11 = @"com.apple.nanoregistry.idsplugin.stopadvertising";
  }

  else
  {
    v11 = @"com.apple.nanoregistry.idsplugin.startadvertising";
  }

  notify_post([(__CFString *)v11 UTF8String]);
  blockCopy[2](blockCopy, 0);
}

- (void)remoteObject:(id)object receivedWatchTransferStagingRequestWithData:(id)data
{
  objectCopy = object;
  dataCopy = data;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"YES";
      if (!dataCopy)
      {
        v11 = @"NO";
      }

      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receivedWatchTransferStagingRequestWithData: %@", &v15, 0xCu);
    }
  }

  v12 = +[NRFeatureFlags sharedInstance];
  watchTransfer = [v12 watchTransfer];

  if (watchTransfer)
  {
    v14 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v14 remoteObject:objectCopy receivedWatchTransferStagingRequestWithData:dataCopy];
  }
}

- (void)remoteObject:(id)object receivedMigrationRequestWithShouldCancel:(BOOL)cancel responseBlock:(id)block
{
  cancelCopy = cancel;
  blockCopy = block;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (cancelCopy)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receivedMigrationRequestWithShouldCancel:%@", &v12, 0xCu);
    }
  }

  if (cancelCopy)
  {
    v11 = @"com.apple.nanoregistry.idsplugin.stopadvertising";
  }

  else
  {
    v11 = @"com.apple.nanoregistry.idsplugin.startadvertising";
  }

  notify_post([(__CFString *)v11 UTF8String]);
  blockCopy[2](blockCopy, 0);
}

- (void)remoteObject:(id)object receivedMigratedAwayWithAdvertisedName:(id)name
{
  nameCopy = name;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = nameCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "receivedMigratedAwayWithAdvertisedName:%@", buf, 0xCu);
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100048BA4;
  v10[3] = &unk_1001757C0;
  v11 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v10];
}

- (void)xpcPingActiveGizmoWithPriority:(int)priority withMessageSize:(int64_t)size withBlock:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004905C;
  v8[3] = &unk_100177658;
  priorityCopy = priority;
  blockCopy = block;
  sizeCopy = size;
  v8[4] = self;
  v7 = blockCopy;
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

- (void)xpcGetMigrationPairingCharacteristicReadDataWithCompletion:(id)completion
{
  completionCopy = completion;
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

  completionCopy[2](completionCopy, 0);
}

- (void)xpcPutMigrationChallengeCharacteristicWriteData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dataCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Call to xpcPutMigrationChallengeCharacteristicWriteData(%@)", &v10, 0xCu);
    }
  }

  completionCopy[2](completionCopy, 0);
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

- (void)xpcStageWatchForGraduationWithDeviceID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
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
  watchTransfer = [v11 watchTransfer];

  if (!completionCopy || (watchTransfer & 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100049648;
    v14[3] = &unk_100177680;
    v15 = dCopy;
    selfCopy = self;
    v17 = completionCopy;
    [(NRPairingDaemon *)self grabRegistryWithReadBlock:v14];

    v13 = v15;
  }

  else
  {
    v13 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:44 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (void)xpcStageWatchForTransferWithDeviceID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
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
  watchTransfer = [v11 watchTransfer];

  if (!completionCopy || (watchTransfer & 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100049B0C;
    v14[3] = &unk_100177680;
    v15 = dCopy;
    selfCopy = self;
    v17 = completionCopy;
    [(NRPairingDaemon *)self grabRegistryWithReadBlock:v14];

    v13 = v15;
  }

  else
  {
    v13 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:44 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (void)xpcListWatchStagedForTransferWithCompletion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    v8 = +[NRFeatureFlags sharedInstance];
    watchTransfer = [v8 watchTransfer];

    if (watchTransfer)
    {
      v10 = +[NRQueue registryDaemonQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100049FCC;
      v12[3] = &unk_100175FA0;
      v12[4] = self;
      v13 = completionCopy;
      [v10 dispatchAsync:v12];
    }

    else
    {
      v11 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:44 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)xpcStartWatchSetupPushWithBlock:(id)block
{
  blockCopy = block;
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  pairingClients = self->_pairingClients;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10004A49C;
  v11 = &unk_1001776A8;
  v7 = lastCaller;
  v12 = v7;
  v13 = &v14;
  [(NRSimpleReferenceCounter *)pairingClients enumerateObjects:&v8];
  if ((v15[3] & 1) == 0)
  {
    [(NRSimpleReferenceCounter *)self->_pushingClients addObject:v7, v8, v9, v10, v11];
  }

  blockCopy[2](blockCopy);

  _Block_object_dispose(&v14, 8);
}

- (void)xpcStopWatchSetupPushWithBlock:(id)block
{
  blockCopy = block;
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  [(NRSimpleReferenceCounter *)self->_pushingClients removeObject:lastCaller];
  blockCopy[2](blockCopy);
}

- (void)xpcSetMigrationConsented:(BOOL)consented forDeviceID:(id)d withBlock:(id)block
{
  consentedCopy = consented;
  dCopy = d;
  blockCopy = block;
  if (consentedCopy)
  {
    [(NRPairingDaemon *)self checkAndDisableStandAloneMode];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004A614;
  v12[3] = &unk_1001760F8;
  v13 = dCopy;
  selfCopy = self;
  v16 = consentedCopy;
  v15 = blockCopy;
  v10 = blockCopy;
  v11 = dCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v12];
}

- (void)xpcApplyDiff:(id)diff withSecureProperties:(id)properties block:(id)block
{
  v5.receiver = self;
  v5.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v5 xpcApplyDiff:diff withSecureProperties:properties block:block];
}

- (void)xpcClientInfo:(id)info
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 xpcClientInfo:info];
}

- (void)xpcGetChangeHistoryWithBlock:(id)block
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 xpcGetChangeHistoryWithBlock:block];
}

- (void)xpcGetDeviceCollectionWithBlock:(id)block
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 xpcGetDeviceCollectionWithBlock:block];
}

- (void)xpcRetrieveSecureProperties:(id)properties block:(id)block
{
  v4.receiver = self;
  v4.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v4 xpcRetrieveSecureProperties:properties block:block];
}

- (void)xpcSwitchIndex:(id)index
{
  v3.receiver = self;
  v3.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v3 xpcSwitchIndex:index];
}

- (void)xpcLongForInternalPreference:(id)preference withBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v4 xpcLongForInternalPreference:preference withBlock:block];
}

- (void)xpcBooleanForInternalPreference:(id)preference withBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = NRPairingDaemon;
  [(NRRegistryServer *)&v4 xpcBooleanForInternalPreference:preference withBlock:block];
}

- (void)xpcBeginMigrationWithDeviceID:(id)d passcode:(id)passcode withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  passcodeCopy = passcode;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [dCopy UUIDString];
      v16 = 138412290;
      v17 = uUIDString;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "xpcBeginMigrationWithDeviceID: Setting migration consent for device ID %@", &v16, 0xCu);
    }
  }

  v15 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v15 setPasscode:passcodeCopy];

  [v15 setMigrationConsent:1 forDeviceID:dCopy completion:blockCopy];
}

- (void)remoteObjectReceivedWatchMigrationCompletion:(unint64_t)completion
{
  v7 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v7 migrationCompletionRequestReceivedWithStatus:completion];
  v5 = objc_opt_new();
  mirrorOfActiveDeviceID = [(NRPairingDaemon *)self mirrorOfActiveDeviceID];
  [v5 submitPairingReportWithRegistry:self deviceID:mirrorOfActiveDeviceID];
}

- (void)remoteObjectReveivedWatchMigrationMetricSessionID:(id)d
{
  serviceRegistry = self->_serviceRegistry;
  dCopy = d;
  v5 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v5 migrationMetricSessionIDReceivedWithID:dCopy];
}

- (int64_t)minPairingCompatibilityVersion
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  minPairingCompatibilityVersion = [v2 minPairingCompatibilityVersion];

  return minPairingCompatibilityVersion;
}

- (int64_t)maxPairingCompatibilityVersion
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  maxPairingCompatibilityVersion = [v2 maxPairingCompatibilityVersion];

  return maxPairingCompatibilityVersion;
}

- (void)xpcGetLastMigrationRequestPhoneNameWithCompletion:(id)completion
{
  serviceRegistry = self->_serviceRegistry;
  completionCopy = completion;
  v6 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  lastMigrationRequestPhoneName = [v6 lastMigrationRequestPhoneName];
  completionCopy[2](completionCopy, lastMigrationRequestPhoneName);
}

- (void)keychainSyncStatusDidChange:(BOOL)change
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004B464;
  v3[3] = &unk_100177718;
  changeCopy = change;
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
    queue = [v3 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004B824;
    v7[3] = &unk_100175660;
    v7[4] = self;
    v5 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.connectivitytimer" delay:1 gracePeriod:queue waking:v7 handlerQueue:300.0 handlerBlock:0.0];
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

- (void)getPairedPairingIDForBluetoothID:(id)d completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B90C;
  v8[3] = &unk_1001768D8;
  dCopy = d;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = dCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlock:v8];
}

- (void)sendRemoteUnpairingDidBeginNotificationWithBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004BBF4;
  v5[3] = &unk_100176B30;
  blockCopy = block;
  v4 = blockCopy;
  [(NRPairingDaemon *)self grabRegistryWithWriteBlockAsync:v5];
}

- (BOOL)proxyIsSecureDataAvailable:(id)available
{
  secureProperties = [(NRPairingDaemon *)self secureProperties];
  v4 = secureProperties != 0;

  return v4;
}

- (void)xpcScanForMigratableWatchesWithBlock:(id)block
{
  serviceRegistry = self->_serviceRegistry;
  blockCopy = block;
  v5 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  [v5 checkIfShouldRetryMigrationWhenIDSDevicesChange];
  blockCopy[2](blockCopy);
}

- (void)xpcGetLastSwitchIndex:(id)index
{
  if (index)
  {
    (*(index + 2))(index, 0, 0);
  }
}

- (void)xpcGetMigrationCountForPairingID:(id)d completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)xpcGetInitialSyncCompletedForPairingID:(id)d completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)termsAcknowledgementServiceGetDeviceMirrorFromDeviceID:(id)d block:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004C024;
  v8[3] = &unk_1001768D8;
  dCopy = d;
  blockCopy = block;
  v6 = blockCopy;
  v7 = dCopy;
  [(NRPairingDaemon *)self grabRegistryWithReadBlockAsync:v8];
}

- (void)termsAcknowledgementServiceGetNRIDFromBTID:(id)d block:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004C310;
  v8[3] = &unk_1001768D8;
  dCopy = d;
  blockCopy = block;
  v6 = blockCopy;
  v7 = dCopy;
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

- (void)xpcCheckIfFlaggedForRecoveryWithCompletion:(id)completion
{
  serviceRegistry = self->_serviceRegistry;
  completionCopy = completion;
  v7 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  v5 = +[NRQueue registryDaemonQueue];
  queue = [v5 queue];
  [v7 checkIfFlaggedForRecoveryWithQueue:queue completion:completionCopy];
}

- (void)xpcClearRecoveryFlagWithCompletion:(id)completion
{
  serviceRegistry = self->_serviceRegistry;
  completionCopy = completion;
  v7 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  v5 = +[NRQueue registryDaemonQueue];
  queue = [v5 queue];
  [v7 clearRecoveryFlagWithQueue:queue completion:completionCopy];
}

- (void)xpcFakePairedSyncStartWithCompletion:(id)completion
{
  completionCopy = completion;
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
  synchronize = [v10 synchronize];
  v12 = objc_opt_new();
  v13 = [NSSet setWithObjects:@"PSYWatchSyncClientState", @"PSYWatchSyncState", 0];
  [v12 synchronizeNanoDomain:@"com.apple.pairedsync" keys:v13];

  v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanoprefsyncd"];
  [v14 setBool:1 forKey:@"past-initial-sync"];
  synchronize2 = [v14 synchronize];
  v16 = objc_opt_new();
  v17 = [NSSet setWithObject:@"past-initial-sync"];
  [v16 synchronizeNanoDomain:@"com.apple.pairedsync" keys:v17];

  notify_post("PSYWatchSyncStateChangedNotification");
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)xpcFakePairedSyncIsCompleteWithCompletion:(id)completion
{
  completionCopy = completion;
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
  synchronize = [v10 synchronize];
  v12 = objc_opt_new();
  v13 = [NSSet setWithObjects:@"PSYWatchSyncClientState", @"PSYWatchSyncState", 0];
  [v12 synchronizeNanoDomain:@"com.apple.pairedsync" keys:v13];

  v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanoprefsyncd"];
  [v14 setBool:1 forKey:@"past-initial-sync"];
  synchronize2 = [v14 synchronize];
  v16 = objc_opt_new();
  v17 = [NSSet setWithObject:@"past-initial-sync"];
  [v16 synchronizeNanoDomain:@"com.apple.pairedsync" keys:v17];

  notify_post("com.apple.nanopreferencessync.initialSyncCompletion");
  notify_post("PSYWatchSyncStateChangedNotification");
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)xpcTriggerTailspinFrom:(unint64_t)from forApp:(id)app
{
  appCopy = app;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = +[NRTailspinCapture sharedInstance];
    if (appCopy)
    {
      v6 = appCopy;
    }

    else
    {
      v6 = @"unknown";
    }

    [v5 captureForApp:v6 startEdge:from];
  }
}

- (void)assertionDescription:(id)description
{
  descriptionCopy = description;
  activeDeviceAssertions = [(NRPairingDaemon *)self activeDeviceAssertions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [activeDeviceAssertions countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(activeDeviceAssertions);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [activeDeviceAssertions objectForKeyedSubscript:v10];
        if ([v11 BOOLValue])
        {
          v12 = "YES";
        }

        else
        {
          v12 = "NO";
        }

        [descriptionCopy appendFormat:@"%@ %s\n", v10, v12];
      }

      v7 = [activeDeviceAssertions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)xpcActiveDeviceAssertions:(id)assertions
{
  assertionsCopy = assertions;
  activeDeviceAssertions = [(NRPairingDaemon *)self activeDeviceAssertions];
  (*(assertions + 2))(assertionsCopy, activeDeviceAssertions);
}

- (id)activeDeviceAssertions
{
  +[NSMutableDictionary dictionary];
  v25 = v24 = self;
  v18 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  assertions = [v18 assertions];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = [assertions countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v21)
  {
    v19 = assertions;
    v20 = *v33;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(assertions);
        }

        v5 = [assertions objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
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
              pairingID = [v9 pairingID];
              uUIDString = [pairingID UUIDString];
              clientProxy = [v10 clientProxy];
              appPath = [clientProxy appPath];
              clientProxy2 = [v10 clientProxy];
              v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%p: pairingID=%@ process=%@.%ld", v9, uUIDString, appPath, [clientProxy2 pid]);

              v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 availability] == 1);

              [v25 setObject:v6 forKeyedSubscript:v16];
              v7 = v7 + 1;
              v8 = v6;
            }

            while (v27 != v7);
            v27 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v27);

          assertions = v19;
          i = v22;
        }
      }

      v21 = [assertions countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v21);
  }

  return v25;
}

- (void)xpcSwitchActiveDeviceWithDeviceID:(id)d isMagicSwitch:(BOOL)switch operationHasCompleted:(id)completed
{
  completedCopy = completed;
  dCopy = d;
  lastCaller = [(NRPairingDaemon *)self lastCaller];
  [(NRPairingDaemon *)self setLastCaller:lastCaller];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004D3E8;
  v12[3] = &unk_100177760;
  v13 = lastCaller;
  v14 = completedCopy;
  v12[4] = self;
  v10 = lastCaller;
  v11 = completedCopy;
  [(NRPairingDaemon *)self xpcSwitchActiveDeviceWithDeviceID:dCopy withAssertionHandler:v12];
}

- (void)xpcIsPhoneReadyToMigrateDevice:(id)device withCompletion:(id)completion
{
  completionCopy = completion;
  serviceRegistry = self->_serviceRegistry;
  deviceCopy = device;
  v9 = [(EPServiceRegistry *)serviceRegistry serviceFromClass:objc_opt_class()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004D554;
  v11[3] = &unk_100177788;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 isDevice:deviceCopy readyToMigrate:v11];
}

- (void)xpcIsAssertionActive:(id)active withCompletion:(id)completion
{
  clientAssertionIDToAssertionInfo = self->_clientAssertionIDToAssertionInfo;
  completionCopy = completion;
  v7 = [(NSMutableDictionary *)clientAssertionIDToAssertionInfo objectForKey:active];
  completionCopy[2](completionCopy, v7 != 0, 0);
}

- (void)deviceHasUnpairedBluetooth:(id)bluetooth
{
  bluetoothCopy = bluetooth;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = bluetoothCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch with Bluetooth identifier %@ unexpectedly unpaired from watch side.", &v7, 0xCu);
    }
  }
}

- (void)discoveredCandidateName:(id)name bluetoothIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = nameCopy;
      v13 = 2112;
      v14 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Discovered a candidate with name %{public}@, bt UUID %@", &v11, 0x16u);
    }
  }

  [(NRPairingDaemon *)self createDeviceFromNetworkRelayDiscoveryWithAdvertisementName:nameCopy bluetoothIdentifier:identifierCopy withRSSI:&off_100186CD0 withBlock:0];
}

- (void)lostCandidateWithName:(id)name
{
  nameCopy = name;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = nameCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Lost a candidate with name %{public}@", &v8, 0xCu);
    }
  }

  [(NRPairingDaemon *)self removeCandidateDeviceWithName:nameCopy];
}

+ (void)updatePingMyWatchControlCenterModuleVisibility:(id)visibility
{
  visibilityCopy = visibility;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [visibilityCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
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
        objc_enumerationMutation(visibilityCopy);
      }

      v10 = [visibilityCopy objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
      if ([v10 isPaired] && objc_msgSend(v10, "isSetup") && (objc_msgSend(v10, "isArchived") & 1) == 0)
      {
        v11 = [v10 objectForKeyedSubscript:v8];
        value = [v11 value];
        v13 = ~[value BOOLValue];

        v6 += v13 & 1;
      }
    }

    v5 = [visibilityCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
  }

  while (v5);
  if (!v6)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  activeDeviceID = [visibilityCopy activeDeviceID];
  if (!activeDeviceID)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = [visibilityCopy objectForKeyedSubscript:activeDeviceID];
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

    activeDeviceID = +[CCSControlCenterService sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004DBCC;
    v22[3] = &unk_1001777A8;
    v23 = v18;
    [activeDeviceID setVisibility:v18 forModuleWithIdentifier:@"com.apple.PingMyWatchControlCenterUI" completionHandler:v22];
    goto LABEL_22;
  }

LABEL_23:
}

- (void)updatePairingSessionIdIfNeededForActiveDevice
{
  collection = [(NRPairingDaemon *)self collection];
  activeDevice = [collection activeDevice];

  v5 = [[NSUUID alloc] initWithUUIDString:@"0B75AFAC-6373-41D2-A4F3-D4C1E9295A07"];
  v6 = [activeDevice supportsCapability:v5];

  if (v6)
  {
    v7 = NRDevicePropertyPairingSessionIdentifier;
    v8 = [activeDevice objectForKeyedSubscript:NRDevicePropertyPairingSessionIdentifier];
    value = [v8 value];

    if (!value)
    {
      v10 = +[NSUUID UUID];
      value = [v10 UUIDString];

      v11 = +[NSMutableDictionary dictionary];
      v12 = [[NRDevicePropertyDiff alloc] initWithValue:value];
      v13 = [[NRDevicePropertyDiffType alloc] initWithDiff:v12 andChangeType:0];
      [v11 setObject:v13 forKeyedSubscript:v7];
      v14 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v11];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1000E78C8;
      v24 = &unk_100175598;
      v25 = activeDevice;
      v26 = v14;
      v15 = v14;
      [(NRPairingDaemon *)self enqueueAsync:&v21];
      [(NRPairingDaemon *)self sendPairingIdToActiveDevice:value, v21, v22, v23, v24];
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
        v30 = value;
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
    value = nr_daemon_log();
    if (os_log_type_enabled(value, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[NRPairingDaemon(PairingSessionID) updatePairingSessionIdIfNeededForActiveDevice]";
      _os_log_impl(&_mh_execute_header, value, OS_LOG_TYPE_DEFAULT, "%s: Does not support pairing session Id.", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)sendPairingIdToActiveDevice:(id)device
{
  deviceCopy = device;
  serviceRegistry = [(NRPairingDaemon *)self serviceRegistry];
  v7 = [serviceRegistry serviceFromClass:objc_opt_class()];

  _bluetoothIDOfActiveDevice = [(NRPairingDaemon *)self _bluetoothIDOfActiveDevice];
  [v7 sendPairingSessionID:deviceCopy toIDSBTUUID:_bluetoothIDOfActiveDevice withResponseBlock:&stru_100179A70];
}

@end