@interface SDNearbyAgent
+ (SDNearbyAgent)sharedNearbyAgent;
- (BOOL)_bleNearbyActionScannerShouldScan;
- (BOOL)_bleNearbyInfoAdvertiserLingerIfNeeded;
- (BOOL)_bleNearbyInfoAdvertiserShouldAddField3;
- (BOOL)_bleNearbyInfoAdvertiserShouldAdvertise;
- (BOOL)_bleNearbyInfoScannerShouldScan;
- (BOOL)_bleProximityPairingScannerShouldScan;
- (BOOL)_deviceCanTriggerEnhancedDiscovery:(id)a3;
- (BOOL)_identificationIdentifyDevice:(id)a3 sfDevice:(id)a4;
- (BOOL)_idsHasActiveWatch;
- (BOOL)_idsShouldAdvertiseNearbyInfo;
- (BOOL)_isDeviceMountedAndScreenOff;
- (BOOL)_onlyRingVisionDeviceWhenDonned;
- (BOOL)hasAdHocPairings;
- (BOOL)idsIsSignedIn;
- (BOOL)isDeviceValidRIServer:(id)a3;
- (BOOL)isTempAuthTagKnown:(id)a3 bluetoothAddressData:(id)a4;
- (NSArray)adHocPairedDeviceIdentities;
- (NSString)description;
- (SDNearbyAgent)init;
- (double)_activityMonitorLastUserEventDelta;
- (id)_bleUpdateUseCases:(id)a3;
- (id)_idsBluetoothDeviceIDsForAnnouncements;
- (id)_idsBluetoothDeviceIDsForHomePods;
- (id)_idsBluetoothDeviceIDsForLEPipe;
- (id)_idsBluetoothDeviceIDsForMe;
- (id)_idsBluetoothDeviceIDsForOneness;
- (id)_idsBluetoothDeviceIDsForSMSRelay;
- (id)_idsBluetoothDeviceIDsForSharing;
- (id)_idsBluetoothDeviceIDsForSharingLocked;
- (id)_idsBluetoothDeviceIDsForiMessage;
- (id)_idsDeviceArrayLocked;
- (id)_useCasesToHexString:(id)a3;
- (id)bleProximityInfo;
- (id)bleProximityInfoForActionType:(unsigned __int8)a3 device:(id)a4;
- (id)bleProximityInfoForType:(id)a3 device:(id)a4;
- (id)bleProximityInfoForType:(id)a3 device:(id)a4 allInfo:(id)a5;
- (id)bleProximityRSSIEstimatorInfo;
- (id)idsBluetoothDeviceIDsForLEPipe;
- (id)idsBluetoothDeviceIDsForRIServers;
- (id)idsBluetoothDeviceIDsForSharing;
- (id)idsBluetoothDeviceIDsForWatches;
- (id)idsDeviceArray;
- (id)idsDeviceForBluetoothDeviceID:(id)a3 conflictDetected:(BOOL *)a4;
- (id)idsDeviceIDsForFamily;
- (id)idsDeviceIDsForRIServers;
- (id)sharedNearbyPipe;
- (int)_allowEnhancedDiscovery;
- (int)_bleNearbyInfoReceivedFrameType:(unsigned __int8)a3 src:(const char *)a4 end:(const char *)a5 cnx:(id)a6;
- (int)_idsAppleTVCount;
- (int)_idsContinuityDeviceCount;
- (int)_idsHomePodCount;
- (int)_idsMacCount;
- (int)_idsShouldEncryptActivityLevel;
- (int)_idsVisionOS1Count;
- (int)_idsVisionOS2OrHigherCount;
- (int)_idsWatchCount;
- (int)_sendMessage:(id)a3 frameType:(unsigned __int8)a4 service:(id)a5 session:(id)a6;
- (int)_setupHandleCreateSession:(id)a3 data:(id)a4;
- (int)_setupHandleSessionCreated:(id)a3 data:(id)a4;
- (int)_setupHandleSessionMessageType:(unsigned __int8)a3 src:(const char *)a4 end:(const char *)a5 cnx:(id)a6 session:(id)a7;
- (int)_setupSendCreateSession:(id)a3 cnx:(id)a4;
- (int)_setupSendData:(id)a3 sessionIdentifier:(id)a4 cnx:(id)a5 clientSession:(id)a6;
- (int)bleNearbyInfoStartConnectionToDevice:(id)a3 owner:(id)a4 connected:(BOOL *)a5;
- (int)serviceStart:(id)a3;
- (int)sessionStart:(id)a3;
- (int64_t)bleProximityRSSIThreshold:(id)a3;
- (int64_t)bleProximityRSSIThresholdForType:(int64_t)a3 device:(id)a4;
- (unsigned)_activityMonitorCurrentLevelAndNeedsPoll:(BOOL *)a3 recentUserActivity:(BOOL *)a4;
- (unsigned)_bleEncryptActivityLevel:(unsigned __int8)a3;
- (unsigned)_bleProximityUpdateDeviceCloseNearbyActionDevice:(id)a3;
- (unsigned)_bleProximityUpdateNearbyActionDevice:(id)a3;
- (unsigned)_bleProximityUpdateNearbyInfoDevice:(id)a3;
- (unsigned)_identificationDecryptActivityLevel:(unsigned __int8)a3 device:(id)a4 authTag:(id)a5 identity:(id)a6;
- (void)_activate;
- (void)_activityMonitorCarPlayStatusChanged:(id)a3;
- (void)_activityMonitorEnsureStarted;
- (void)_activityMonitorEnsureStopped;
- (void)_activityMonitorMediaAccessControlSettingChanged:(id)a3;
- (void)_activityMonitorMultipleUsersLoggedInChanged:(id)a3;
- (void)_activityMonitorScreenStateChanged:(id)a3;
- (void)_activityMonitorUILockStatusChanged:(id)a3;
- (void)_activityMonitorUpdate;
- (void)_activityMonitorUpdateUserActive:(BOOL)a3;
- (void)_activityMonitorWatchWristStateChanged:(id)a3;
- (void)_bleAdvertisingAddressChanged;
- (void)_bleNearbyActionAdvertiserEnsureStarted;
- (void)_bleNearbyActionAdvertiserEnsureStopped;
- (void)_bleNearbyActionScannerEnsureStarted;
- (void)_bleNearbyActionScannerEnsureStopped;
- (void)_bleNearbyInfoAdvertiserEnsureStarted;
- (void)_bleNearbyInfoAdvertiserEnsureStopped;
- (void)_bleNearbyInfoAdvertiserLingerStart:(id)a3;
- (void)_bleNearbyInfoAdvertiserUpdate;
- (void)_bleNearbyInfoAdvertiserUpdateAddAudioRoutingScore:(id)a3;
- (void)_bleNearbyInfoAdvertiserUpdateAddHotspotInfo:(id)a3;
- (void)_bleNearbyInfoAdvertiserUpdateAdvertiseReason:(id)a3;
- (void)_bleNearbyInfoAdvertisingUpdateAddCameraState:(id)a3;
- (void)_bleNearbyInfoReceivedData:(id)a3 cnx:(id)a4 peer:(id)a5;
- (void)_bleNearbyInfoScannerEnsureStarted;
- (void)_bleNearbyInfoScannerEnsureStopped;
- (void)_bleProximityPairingScannerEnsureStarted;
- (void)_bleProximityPairingScannerEnsureStopped;
- (void)_bleUpdateAuthTagIfNeeded;
- (void)_bleUpdateScanner:(id)a3 typeFlag:(unint64_t)a4;
- (void)_btPipeEnsureStarted;
- (void)_btPipeEnsureStopped;
- (void)_btPipeHandleFrameType:(unsigned __int8)a3 data:(id)a4;
- (void)_btPipeStateChanged:(id)a3;
- (void)_cameraStateChanged;
- (void)_cancelDonStateRetryTimers;
- (void)_checkBrightnessLuxValue;
- (void)_checkConditionsForEnhancedDiscovery;
- (void)_deliverDoffedEvent;
- (void)_deliverDonnedEventToDevice:(id)a3 allowRetry:(BOOL)a4;
- (void)_deliverDonnedEventsStart;
- (void)_deviceDiscoveryBLEDeviceFound:(id)a3 type:(int64_t)a4;
- (void)_deviceDiscoveryBLEDeviceLost:(id)a3 type:(int64_t)a4;
- (void)_deviceDiscoveryBLEScanStateChanged:(int64_t)a3 type:(int64_t)a4;
- (void)_deviceDiscoveryFastScanEvaluate:(id)a3 device:(id)a4;
- (void)_deviceDiscoveryFastScanStart:(id)a3 device:(id)a4 reason:(id)a5;
- (void)_deviceDiscoveryFastScanStop:(id)a3 reset:(BOOL)a4 reason:(id)a5;
- (void)_deviceDiscoveryRequestStart:(id)a3;
- (void)_disableEnhancedDiscovery:(id)a3;
- (void)_discoverySessionStateChange:(BOOL)a3;
- (void)_enhancedDiscoveryScreenChange:(BOOL)a3;
- (void)_enhancedDiscoveryTimerFired;
- (void)_handleAirDropDiscoverableModeChanged:(id)a3;
- (void)_handleAppleIDChanged:(id)a3;
- (void)_handleBluetoothDeviceConnected:(id)a3;
- (void)_handleDonStateReceivedRequest:(id)a3 withOptions:(id)a4;
- (void)_handleRetryTimerForDevice:(id)a3;
- (void)_identificationCheckFlagsAndACL;
- (void)_identificationDecryptAudioRoutingScoreData:(id)a3 device:(id)a4 authTag:(id)a5 identity:(id)a6;
- (void)_identificationDecryptHotspotData:(id)a3 device:(id)a4 authTag:(id)a5 identity:(id)a6;
- (void)_identificationEnsureStarted;
- (void)_identificationEnsureStopped;
- (void)_identificationGetIdentities;
- (void)_identificationHandleDeviceFound:(id)a3 flags:(unint64_t)a4;
- (void)_identificationHandleDeviceLost:(id)a3 flags:(unint64_t)a4;
- (void)_identificationHandleDiscoveryStop;
- (void)_identificationMaintenanceTimer;
- (void)_identificationReIdentify;
- (void)_identificationReIdentifySameAccountDevices:(id)a3 type:(int64_t)a4;
- (void)_idsEnsureStarted;
- (void)_idsEnsureStopped;
- (void)_idsMeDeviceChanged;
- (void)_invalidate;
- (void)_invalidateActiveDeviceDiscoveryIfNeeded;
- (void)_mirroringStateChanged:(id)a3;
- (void)_notifyCameraConfigChange;
- (void)_performTemporaryScan;
- (void)_postNotificationForWombatState:(unsigned int)a3;
- (void)_registerForDonStateRequest;
- (void)_registerForMagicMountUpdates;
- (void)_registerForWombatActivityNotification;
- (void)_sendUnlockData:(id)a3 toBLEDevice:(id)a4 direct:(BOOL)a5 completion:(id)a6;
- (void)_smartCoverStatusChanged:(id)a3;
- (void)_startPeriodicScanner;
- (void)_stopPeriodicScanner;
- (void)_stopUnlockBLEConnectionWithDevice:(id)a3;
- (void)_systemHasPoweredOn;
- (void)_systemWillSleep;
- (void)_testPipePing;
- (void)_unlockApproveBluetoothIDsChanged:(id)a3;
- (void)_unlockDeviceFilterChangedForRequest:(id)a3;
- (void)_unlockReceivedFrameData:(id)a3 peer:(id)a4 device:(id)a5;
- (void)_unregisterForMagicMountUpdates;
- (void)_unregisterForWombatActivityNotification;
- (void)_update;
- (void)_updateCameraState;
- (void)_updateDonState;
- (void)_useLuxValue;
- (void)_wirelessCriticalChanged:(id)a3;
- (void)activate;
- (void)activityStateWithCompletion:(id)a3;
- (void)bleNearbyInfoStopConnectionToDevice:(id)a3 owner:(id)a4;
- (void)bleProximityEstimatorsResetDeviceClose;
- (void)coordinatedAlertRequestCancel:(id)a3;
- (void)coordinatedAlertRequestFinish:(id)a3;
- (void)coordinatedAlertRequestStart:(id)a3;
- (void)cutWiFiManagerLinkDidChange:(id)a3 context:(id)a4;
- (void)deviceDiscoveryFastScanCancel:(id)a3 reason:(id)a4;
- (void)deviceDiscoveryFastScanTrigger:(id)a3 reason:(id)a4;
- (void)deviceDiscoveryRequestStart:(id)a3;
- (void)deviceDiscoveryRequestStop:(id)a3;
- (void)deviceDiscoveryRequestUpdate:(id)a3;
- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)a3 reason:(id)a4;
- (void)diagnosticBLEModeStart:(id)a3;
- (void)diagnosticBLEModeStop:(id)a3;
- (void)diagnosticMockChanged:(id)a3;
- (void)diagnosticMockFound:(id)a3;
- (void)diagnosticMockLost:(id)a3;
- (void)idsAddCachedIDSIdentifier:(id)a3 device:(id)a4;
- (void)idsAddCachedIDSIdentifierToDevice:(id)a3;
- (void)idsDevicesAppendDescription:(id *)a3;
- (void)invalidate;
- (void)nearby:(id)a3 didConnectToPeer:(id)a4 transport:(int64_t)a5 error:(id)a6;
- (void)nearby:(id)a3 didDisconnectFromPeer:(id)a4 error:(id)a5;
- (void)nearby:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5;
- (void)nearbyDidUpdateState:(id)a3;
- (void)prefillDefaultsForGenuineCheckIfNecessary;
- (void)prefsChanged;
- (void)sendUnlockData:(id)a3 toBLEDevice:(id)a4 completion:(id)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)serviceReceivedFrameType:(unsigned __int8)a3 serviceType:(unsigned __int8)a4 data:(id)a5 peer:(id)a6;
- (void)serviceSendRequest:(id)a3 service:(id)a4;
- (void)serviceStop:(id)a3;
- (void)sessionReceivedFrameType:(unsigned __int8)a3 serviceType:(unsigned __int8)a4 data:(id)a5 peer:(id)a6;
- (void)sessionSendEvent:(id)a3 session:(id)a4;
- (void)sessionSendRequest:(id)a3 session:(id)a4;
- (void)sessionStop:(id)a3;
- (void)setAudioRoutingScore:(int)a3;
- (void)setAutoUnlockActive:(BOOL)a3;
- (void)setBoostNearbyInfo:(BOOL)a3;
- (void)setEnhancedDiscovery:(BOOL)a3;
- (void)setHotspotInfo:(unsigned int)a3;
- (void)startUnlockBLEConnectionWithDevice:(id)a3 encrypted:(BOOL)a4;
- (void)stopUnlockBLEConnectionWithDevice:(id)a3;
- (void)testPipePing;
- (void)unlockStartTestClientWithDevice:(id)a3;
- (void)unlockStartTestServer;
- (void)unlockStopTestClient;
- (void)unlockStopTestServer;
- (void)unlockUpdateAdvertising:(unsigned int)a3 mask:(unsigned int)a4;
- (void)update;
@end

@implementation SDNearbyAgent

- (void)_identificationEnsureStarted
{
  if (self->_idIdentitiesChangedNotifyToken == -1)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100265DA8();
      }

      dispatchQueue = self->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1002577A4;
      handler[3] = &unk_1008CE690;
      handler[4] = self;
      notify_register_dispatch("com.apple.rapport.identitiesChanged", &self->_idIdentitiesChangedNotifyToken, dispatchQueue, handler);
      [(SDNearbyAgent *)self _identificationGetIdentities];
    }

    else if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265D8C();
    }
  }
}

- (void)_bleNearbyActionAdvertiserEnsureStarted
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v4 = self->_services;
  v68 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v68)
  {
    v70 = 0;
    v71 = 0;
    v60 = 0;
    v64 = 0;
    v62 = 0;
    v65 = 0;
    v66 = 0;
    v5 = 0;
    v6 = 0;
    v72 = 0;
    v7 = 0;
    v63 = SFDeviceColorCodeUnknown;
    v67 = *v75;
    v69 = 1;
    v59 = v3;
    obj = v4;
LABEL_3:
    v8 = 0;
    while (2)
    {
      if (*v75 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:*(*(&v74 + 1) + 8 * v8)];
      v10 = [v9 deviceActionType];
      v11 = 990;
      switch(v10)
      {
        case 0u:
          goto LABEL_48;
        case 1u:
          if (SFIsDeviceAudioAccessory())
          {
            goto LABEL_108;
          }

          v11 = 680;
LABEL_44:
          v12 = v11 < v5;
          if (v11 > v5)
          {
            v5 = v11;
          }

          if (!v12)
          {
            v6 = v10;
          }

LABEL_48:
          if ((!-[CUSystemMonitor screenOn](self->_systemMonitor, "screenOn") || -[CUSystemMonitor screenSaverActive](self->_systemMonitor, "screenSaverActive")) && ![v9 overrideScreenOff])
          {
            goto LABEL_108;
          }

          if ([v9 advertiseRate] > v66)
          {
            v66 = [v9 advertiseRate];
          }

          v13 = [v9 authTagOverride];
          v14 = v13;
          if (v13)
          {
            v15 = v13;

            v65 = v15;
          }

          if ([v9 deviceClassCode])
          {
            v62 = [v9 deviceClassCode];
          }

          if ([v9 deviceColorCode])
          {
            v63 = [v9 deviceColorCode];
          }

          if ([v9 deviceModelCode])
          {
            v64 = [v9 deviceModelCode];
          }

          if ([v9 needsKeyboard])
          {
            v16 = v7 | 0x20;
          }

          else
          {
            v16 = v7;
          }

          if ([v9 needsSetup])
          {
            v7 = v16 | 0x40;
          }

          else
          {
            v7 = v16;
          }

          v17 = [v9 sessionFlags];
          v18 = v17;
          if ((v17 & 0x200) != 0)
          {
            if ([(SDStatusMonitor *)self->_statusMonitor mediaAccessControlSetting]== 1)
            {
              v19 = 24;
            }

            else
            {
              v19 = 16;
            }

            v7 |= v19;
          }

          v20 = [v9 problemFlags];
          v21 = v71;
          if (!v71)
          {
            if ([v9 deviceActionType] == 8)
            {
              v22 = [v9 requestSSID];
              v23 = [v22 UTF8String];

              if (v23)
              {
                *md = 0u;
                v79 = 0u;
                v24 = strlen(v23);
                CC_SHA256(v23, v24, md);
                v21 = [[NSData alloc] initWithBytes:md length:3];
              }

              else
              {
                v21 = 0;
              }

              v3 = v59;
            }

            else
            {
              v21 = 0;
            }
          }

          v71 = v21;
          v72 |= (v18 & 0x80) >> 7;
          if ((v69 & 1) == 0)
          {
            v69 = 0;
            goto LABEL_102;
          }

          if ([v9 deviceActionType] != 51)
          {
            goto LABEL_97;
          }

          v25 = [v9 targetAuthTag];
          if (v25)
          {
            v26 = v25;
            v27 = [v9 targetAuthTag];
            v28 = [v27 length];

            if (v28 == 3)
            {
              v3 = v59;
              if (!v60)
              {
                v60 = [v9 targetAuthTag];
                v72 |= 4u;
              }
            }

            else
            {
              v3 = v59;
            }
          }

          v29 = [v9 targetAuthTag];

          if (v29)
          {
            if (!v60)
            {
              v60 = 0;
LABEL_97:
              v69 = 1;
              goto LABEL_102;
            }

            v30 = [v9 targetAuthTag];
            if (!v30)
            {
              goto LABEL_97;
            }

            v31 = v30;
            v32 = [v9 targetAuthTag];
            v33 = [v60 isEqual:v32];

            if (v33)
            {
              v69 = 1;
              v3 = v59;
              goto LABEL_102;
            }

            v3 = v59;
            if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100262E50(v9);
            }
          }

          else if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100262EAC();
          }

          v69 = 0;
          v60 = 0;
          v72 &= ~4u;
LABEL_102:
          if ([v9 deviceActionType] == 84)
          {
            v62 = SFDeviceClassCodeGet();
            v64 = SFDeviceModelCodeGet();
            v63 = SFDeviceColorCodeGet();
          }

          v70 |= v20;
          if ([v9 deviceActionType] == 90)
          {
            v34 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v9 payloadDovePeace2]);
            [v3 setObject:v34 forKeyedSubscript:@"dpp"];

            if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100262EE0();
            }
          }

LABEL_108:

          if (v68 != ++v8)
          {
            continue;
          }

          v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v74 objects:v80 count:16];
          v68 = v35;
          if (v35)
          {
            goto LABEL_3;
          }

          if (!v7 && (v6 - 28 > 0x38 || ((1 << (v6 - 28)) & 0x10000001A008053) == 0) && v6 != 19)
          {
            v40 = v65;
            goto LABEL_131;
          }

          self->_bleNearbyActionAdvertiseActive = 1;
          if (v66)
          {
            v36 = v66;
          }

          else
          {
            v36 = 40;
          }

          if (v62)
          {
            v37 = [NSNumber numberWithUnsignedChar:v62];
            [v3 setObject:v37 forKeyedSubscript:@"cl"];
          }

          if (v63)
          {
            v38 = [NSNumber numberWithUnsignedChar:v63];
            [v3 setObject:v38 forKeyedSubscript:@"cc"];
          }

          if (v64)
          {
            v39 = [NSNumber numberWithUnsignedChar:v64];
            [v3 setObject:v39 forKeyedSubscript:@"md"];
          }

          if ((v7 & 0x20) != 0)
          {
            [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"nk"];
          }

          if (v7 >= 0x40u)
          {
            [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ns"];
          }

          else if (!v7)
          {
            goto LABEL_142;
          }

          v46 = [NSNumber numberWithUnsignedChar:v7];
          [v3 setObject:v46 forKeyedSubscript:@"af1"];

LABEL_142:
          if (v72)
          {
            v47 = [NSNumber numberWithUnsignedChar:v72];
            [v3 setObject:v47 forKeyedSubscript:@"af2"];
          }

          v40 = v65;
          if (v60)
          {
            [v3 setObject:v60 forKeyedSubscript:@"tatag"];
          }

          v48 = [NSNumber numberWithUnsignedChar:v6];
          [v3 setObject:v48 forKeyedSubscript:@"dt"];

          [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
          bleAuthTagOverride = self->_bleAuthTagOverride;
          if (bleAuthTagOverride || (bleAuthTagOverride = v65) != 0 || (bleAuthTagOverride = self->_bleAuthTag) != 0)
          {
            [v3 setObject:bleAuthTagOverride forKeyedSubscript:@"at"];
          }

          if (v6 != 8 || !self->_contactHashesEnabled)
          {
            goto LABEL_156;
          }

          v50 = self->_contactHashesCached;
          if (v50)
          {
            v51 = v50;
          }

          else
          {
            v51 = [(SDStatusMonitor *)self->_statusMonitor myMediumHashes];
            objc_storeStrong(&self->_contactHashesCached, v51);
            if (!v51)
            {
              goto LABEL_156;
            }
          }

          [v3 setObject:v51 forKeyedSubscript:@"ach"];

LABEL_156:
          if (v70)
          {
            v52 = [NSNumber numberWithUnsignedLongLong:?];
            [v3 setObject:v52 forKeyedSubscript:@"pf"];
          }

          if (v71)
          {
            [v3 setObject:v71 forKeyedSubscript:@"ssidH"];
          }

          v53 = self->_bleNearbyActionAdvertiseLingerTimer;
          v54 = v53;
          if (v53)
          {
            dispatch_source_cancel(v53);
            bleNearbyActionAdvertiseLingerTimer = self->_bleNearbyActionAdvertiseLingerTimer;
            self->_bleNearbyActionAdvertiseLingerTimer = 0;
          }

          if (self->_bleNearbyActionAdvertiser)
          {
            if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100262F24();
            }

            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setPayloadFields:v3];
            if (v36 != [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser advertiseRate])
            {
              [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setAdvertiseRate:v36];
            }
          }

          else
          {
            if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v56 = [[SFBLEAdvertiser alloc] initWithType:15];
            bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
            self->_bleNearbyActionAdvertiser = v56;

            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setAdvertiseRate:v36];
            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setDispatchQueue:self->_dispatchQueue];
            v58 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForLEPipe];
            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setLePipeDevices:v58];

            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setPayloadFields:v3];
            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser activateWithCompletion:&stru_1008D55B0];
          }

          break;
        case 4u:
          v11 = 480;
          goto LABEL_44;
        case 5u:
          v11 = 450;
          goto LABEL_44;
        case 6u:
          v11 = 960;
          goto LABEL_44;
        case 7u:
          v11 = 470;
          goto LABEL_44;
        case 8u:
          v11 = 950;
          goto LABEL_44;
        case 9u:
          v11 = 670;
          goto LABEL_44;
        case 0xAu:
          v11 = 630;
          goto LABEL_44;
        case 0xBu:
          v11 = 690;
          goto LABEL_44;
        case 0xCu:
          v11 = 980;
          goto LABEL_44;
        case 0xDu:
          v11 = 660;
          goto LABEL_44;
        case 0xEu:
          v11 = 930;
          goto LABEL_44;
        case 0x11u:
          v11 = 590;
          goto LABEL_44;
        case 0x12u:
          v11 = 580;
          goto LABEL_44;
        case 0x13u:
          v11 = 920;
          goto LABEL_44;
        case 0x14u:
          v11 = 490;
          goto LABEL_44;
        case 0x15u:
          v11 = 460;
          goto LABEL_44;
        case 0x16u:
          v11 = 910;
          goto LABEL_44;
        case 0x18u:
          v11 = 640;
          goto LABEL_44;
        case 0x19u:
        case 0x1Eu:
          v11 = 940;
          goto LABEL_44;
        case 0x1Bu:
          v11 = 900;
          goto LABEL_44;
        case 0x1Cu:
          v11 = 970;
          goto LABEL_44;
        case 0x1Du:
          v11 = 880;
          goto LABEL_44;
        case 0x1Fu:
          v11 = 895;
          goto LABEL_44;
        case 0x20u:
          v11 = 965;
          goto LABEL_44;
        case 0x21u:
          v11 = 700;
          goto LABEL_44;
        case 0x22u:
          v11 = 971;
          goto LABEL_44;
        case 0x24u:
          v11 = 665;
          goto LABEL_44;
        case 0x2Bu:
          v11 = 966;
          goto LABEL_44;
        case 0x32u:
          goto LABEL_44;
        case 0x33u:
          v11 = 790;
          goto LABEL_44;
        case 0x35u:
          v11 = 890;
          goto LABEL_44;
        case 0x37u:
          v11 = 985;
          goto LABEL_44;
        case 0x38u:
          v11 = 860;
          goto LABEL_44;
        case 0x54u:
          v11 = 870;
          goto LABEL_44;
        case 0x5Au:
          v11 = 667;
          goto LABEL_44;
        default:
          v11 = 1;
          goto LABEL_44;
      }

      break;
    }
  }

  else
  {

    v71 = 0;
    v60 = 0;
    v40 = 0;
LABEL_131:
    self->_bleNearbyActionAdvertiseActive = 0;
    if (self->_bleNearbyActionAdvertiser && !self->_bleNearbyActionAdvertiseLingerTimer)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100262F6C();
      }

      [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setPayloadFields:v3];
      [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setAdvertiseRate:50];
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100262FB4();
      }

      v41 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v42 = self->_bleNearbyActionAdvertiseLingerTimer;
      self->_bleNearbyActionAdvertiseLingerTimer = v41;

      v43 = self->_bleNearbyActionAdvertiseLingerTimer;
      v44 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v43, v44, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      v45 = self->_bleNearbyActionAdvertiseLingerTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10024973C;
      handler[3] = &unk_1008CDEA0;
      handler[4] = self;
      dispatch_source_set_event_handler(v45, handler);
      dispatch_resume(self->_bleNearbyActionAdvertiseLingerTimer);
    }
  }
}

- (id)idsBluetoothDeviceIDsForSharing
{
  v2 = self;
  objc_sync_enter(v2);
  idsBluetoothDevicesSet = v2->_idsBluetoothDevicesSet;
  if (!idsBluetoothDevicesSet)
  {
    v4 = [NSSet alloc];
    v5 = [(SDNearbyAgent *)v2 _idsBluetoothDeviceIDsForSharingLocked];
    v6 = [v4 initWithArray:v5];
    v7 = v2->_idsBluetoothDevicesSet;
    v2->_idsBluetoothDevicesSet = v6;

    idsBluetoothDevicesSet = v2->_idsBluetoothDevicesSet;
  }

  v8 = idsBluetoothDevicesSet;
  objc_sync_exit(v2);

  return v8;
}

- (void)_update
{
  if (self->_activated)
  {
    bleNearbyInfoAdvertiseAlways = self->_bleNearbyInfoAdvertiseAlways;
    if (!self->_caEnabled)
    {
      goto LABEL_12;
    }

    if (self->_caSingleDevice)
    {
      goto LABEL_13;
    }

    if ([(SDNearbyAgent *)self idsIsSignedIn])
    {
      if ([(SDNearbyAgent *)self _idsContinuityDeviceCount]<= 0 && !bleNearbyInfoAdvertiseAlways)
      {
        goto LABEL_7;
      }
    }

    else
    {
LABEL_12:
      if (!bleNearbyInfoAdvertiseAlways)
      {
LABEL_7:
        [(SDNearbyAgent *)self _activityMonitorEnsureStopped];
        v4 = 0;
        goto LABEL_14;
      }
    }

LABEL_13:
    [(SDNearbyAgent *)self _activityMonitorEnsureStarted];
    v4 = 1;
LABEL_14:
    if (self->_idEnabled)
    {
      [(SDNearbyAgent *)self _identificationEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)self _identificationEnsureStopped];
    }

    if ([(SDNearbyAgent *)self _bleNearbyActionAdvertiserShouldAdvertise])
    {
      [(SDNearbyAgent *)self _bleNearbyActionAdvertiserEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)self _bleNearbyActionAdvertiserEnsureStopped];
    }

    if ([(SDNearbyAgent *)self _bleNearbyActionScannerShouldScan])
    {
      [(SDNearbyAgent *)self _bleNearbyActionScannerEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)self _bleNearbyActionScannerEnsureStopped];
    }

    if ([(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAdvertise]|| [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserLingerIfNeeded])
    {
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserEnsureStopped];
    }

    if ([(SDNearbyAgent *)self _bleNearbyInfoScannerShouldScan])
    {
      [(SDNearbyAgent *)self _bleNearbyInfoScannerEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)self _bleNearbyInfoScannerEnsureStopped];
    }

    if ([(SDNearbyAgent *)self _bleProximityPairingScannerShouldScan])
    {
      [(SDNearbyAgent *)self _bleProximityPairingScannerEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)self _bleProximityPairingScannerEnsureStopped];
    }

    v5 = self;
    objc_sync_enter(v5);
    if (v5->_btPipeEnabled || v5->_btPipeForced)
    {
      [(SDNearbyAgent *)v5 _btPipeEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)v5 _btPipeEnsureStopped];
    }

    objc_sync_exit(v5);

    if (v4)
    {

      [(SDNearbyAgent *)v5 _activityMonitorUpdate];
    }

    else if ([(SDNearbyAgent *)v5 _bleNearbyInfoAdvertiserShouldAdvertise])
    {

      [(SDNearbyAgent *)v5 _bleNearbyInfoAdvertiserUpdate];
    }

    return;
  }

  if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262DBC();
  }
}

- (id)_idsBluetoothDeviceIDsForMe
{
  v2 = self;
  objc_sync_enter(v2);
  obj = &v2->super.isa;
  idsBluetoothDeviceIDsForMe = v2->_idsBluetoothDeviceIDsForMe;
  if (idsBluetoothDeviceIDsForMe)
  {
    v4 = idsBluetoothDeviceIDsForMe;
  }

  else
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = [(CUSystemMonitor *)v2->_systemMonitor meDeviceIDSDeviceID];
    if (v6)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [(SDNearbyAgent *)v2 idsDeviceArray];
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            v12 = [v11 nsuuid];
            if (v12)
            {
              v13 = [v11 uniqueIDOverride];
              v14 = [v13 isEqual:v6];

              if ((v14 & 1) != 0 || ([v11 modelIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hasPrefix:", @"Watch"), v15, v16))
              {
                [v5 addObject:v12];
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }
    }

    v17 = [v5 copy];
    v18 = obj[77];
    obj[77] = v17;

    v4 = obj[77];
  }

  objc_sync_exit(obj);

  return v4;
}

- (id)bleProximityInfo
{
  v2 = self;
  objc_sync_enter(v2);
  bleProximityInfo = v2->_bleProximityInfo;
  if (!bleProximityInfo)
  {
    v2->_bleProximityInfo = &off_10090FE60;

    bleProximityInfo = v2->_bleProximityInfo;
  }

  v4 = bleProximityInfo;
  objc_sync_exit(v2);

  return v4;
}

- (BOOL)idsIsSignedIn
{
  v2 = self;
  objc_sync_enter(v2);
  if ((v2->_idsIsSignedInCache & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  v2->_idsIsSignedInCache = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(IDSService *)v2->_idsService accounts];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * i) isActive])
        {
          v2->_idsIsSignedInCache = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (!v2->_idsIsSignedInCache)
  {
    v7 = [(SDNearbyAgent *)v2 _idsDeviceArrayLocked];
    if ([v7 count])
    {
    }

    else
    {
      v8 = [(IDSService *)v2->_idsService devices];
      v9 = [v8 count] == 0;

      if (v9)
      {
        goto LABEL_13;
      }
    }

    v2->_idsIsSignedInCache = 1;
    if (dword_100973248 > 90)
    {
      goto LABEL_24;
    }

    if (dword_100973248 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

LABEL_13:
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    v2->_idsIsSignedInCache;
    LogPrintF();
  }

LABEL_24:
  v10 = v2->_idsIsSignedInCache != 0;
  objc_sync_exit(v2);

  return v10;
}

- (void)_activityMonitorEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activityMonitorStarted)
  {
    *&self->_activityLevel = 0;
  }

  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  if (activityLevelNotifyToken != -1)
  {
    notify_set_state(activityLevelNotifyToken, self->_activityLevel);
    notify_post("com.apple.sharing.activity-level-changed");
    notify_cancel(self->_activityLevelNotifyToken);
    self->_activityLevelNotifyToken = -1;
  }

  if (self->_activityCarPlayRegistered)
  {
    self->_activityCarPlayRegistered = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"com.apple.sharingd.CarPlayStatusChanged" object:0];
  }

  if (self->_activityMultipleUsersRegistered)
  {
    self->_activityMultipleUsersRegistered = 0;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:@"com.apple.sharingd.MultipleUsersLoggedInChanged" object:0];
  }

  activityTimer = self->_activityTimer;
  if (activityTimer)
  {
    v8 = activityTimer;
    dispatch_source_cancel(v8);
    v7 = self->_activityTimer;
    self->_activityTimer = 0;
  }
}

- (BOOL)_bleNearbyActionScannerShouldScan
{
  if (self->_bleNearbyActionScanNever || [(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    return 0;
  }

  if (self->_bleNearbyActionScanAlways)
  {
    return 1;
  }

  if (!self->_ddNearbyActionEnabled)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_ddRequests;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
LABEL_21:

    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_10:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if (([v9 discoveryFlags] & 0x10) == 0 || !self->_activityScreenOn && !objc_msgSend(v9, "overrideScreenOff"))
    {
      goto LABEL_19;
    }

    v10 = [v9 deviceFilter];
    v11 = v10;
    if (!v10 || [v10 count])
    {
      break;
    }

LABEL_19:
    if (v6 == ++v8)
    {
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  if (!self->_ddNearbyActionScreenOff && [(SDNearbyAgent *)self _idsAppleTVCount]<= 0)
  {
    return [(SDStatusMonitor *)self->_statusMonitor screenOn];
  }

  return 1;
}

- (int)_idsAppleTVCount
{
  result = self->_idsAppleTVCountCache;
  if (result < 0)
  {
    self->_idsAppleTVCountCache = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * v8) modelIdentifier];
          v10 = [v9 hasPrefix:@"AppleTV"];

          if (v10)
          {
            ++self->_idsAppleTVCountCache;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return self->_idsAppleTVCountCache;
  }

  return result;
}

- (void)_bleNearbyActionScannerEnsureStarted
{
  if (self->_bleNearbyActionScanner)
  {

    [SDNearbyAgent _bleUpdateScanner:"_bleUpdateScanner:typeFlag:" typeFlag:?];
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10002A66C();
    }

    v3 = [[SFBLEScanner alloc] initWithType:15];
    bleNearbyActionScanner = self->_bleNearbyActionScanner;
    self->_bleNearbyActionScanner = v3;

    [(SFBLEScanner *)self->_bleNearbyActionScanner setDispatchQueue:self->_dispatchQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002498B0;
    v8[3] = &unk_1008CE810;
    v8[4] = self;
    [(SFBLEScanner *)self->_bleNearbyActionScanner setDeviceFoundHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100009C74;
    v7[3] = &unk_1008CE810;
    v7[4] = self;
    [(SFBLEScanner *)self->_bleNearbyActionScanner setDeviceLostHandler:v7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100007694;
    v6[3] = &unk_1008CE878;
    v6[4] = self;
    [(SFBLEScanner *)self->_bleNearbyActionScanner setDeviceChangedHandler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10024999C;
    v5[3] = &unk_1008CEA50;
    v5[4] = self;
    [(SFBLEScanner *)self->_bleNearbyActionScanner setScanStateChangedHandler:v5];
    [(SDNearbyAgent *)self _bleUpdateScanner:self->_bleNearbyActionScanner typeFlag:16];
    if (self->_bleNearbyActionRSSILog)
    {
      [(SFBLEScanner *)self->_bleNearbyActionScanner setRssiLog:1];
    }

    [(SFBLEScanner *)self->_bleNearbyActionScanner activateWithCompletion:&stru_1008D55D0];
  }
}

- (void)_bleNearbyInfoScannerEnsureStopped
{
  if (self->_bleNearbyInfoScanner && dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100009F00();
  }

  [(SFBLEScanner *)self->_bleNearbyInfoScanner invalidate];
  bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
  self->_bleNearbyInfoScanner = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_bleNearbyInfoDevices allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_bleNearbyInfoDevices objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceLost:v9 type:16];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_bleNearbyInfoDevices removeAllObjects];
  bleNearbyInfoDevices = self->_bleNearbyInfoDevices;
  self->_bleNearbyInfoDevices = 0;
}

- (BOOL)_bleNearbyInfoScannerShouldScan
{
  if (self->_systemWillPowerDown || [(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    return 0;
  }

  if ([(NSMutableSet *)self->_caRequests count])
  {
    return 1;
  }

  if (!self->_ddNearbyInfoEnabled)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_ddRequests;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
LABEL_21:

    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_10:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if (([v9 discoveryFlags] & 1) == 0 || !self->_activityScreenOn && !objc_msgSend(v9, "overrideScreenOff"))
    {
      goto LABEL_19;
    }

    v10 = [v9 deviceFilter];
    v11 = v10;
    if (!v10 || [v10 count])
    {
      break;
    }

LABEL_19:
    if (v6 == ++v8)
    {
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  if (self->_ddNearbyInfoScreenOff)
  {
    return 1;
  }

  return [(SDStatusMonitor *)self->_statusMonitor screenOn];
}

- (BOOL)_bleNearbyInfoAdvertiserShouldAdvertise
{
  if (![(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    if (self->_bleNearbyInfoAdvertiseDisabled)
    {
      v3 = @"_bleNearbyInfoAdvertiseDisabled";
      goto LABEL_7;
    }

    if (self->_autoUnlockActive)
    {
      v3 = @"_autoUnlockActive";
      goto LABEL_7;
    }

    if (self->_bleNearbyInfoAdvertiseAlways)
    {
      v6 = @"_bleNearbyInfoAdvertiseAlways set";
LABEL_26:
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:v6];
      return 1;
    }

    if (self->_bleNearbyInfoAdvertiseLingerTimer)
    {
      v6 = @"_bleNearbyInfoAdvertiseLingerTimer";
      goto LABEL_26;
    }

    if (self->_unlockAdvertiseAlways)
    {
      v6 = @"_unlockAdvertiseAlways";
      goto LABEL_26;
    }

    if (self->_unlockAdvertiseEnabled)
    {
      v6 = @"_unlockAdvertiseEnabled";
      goto LABEL_26;
    }

    if (self->_unlockAdvertiseWatch)
    {
      v6 = @"_unlockAdvertiseWatch";
      goto LABEL_26;
    }

    if (self->_unlockAdvertiseWatchLocked)
    {
      v6 = @"_unlockAdvertiseWatchLocked";
      goto LABEL_26;
    }

    if ((self->_familyFlags & 2) != 0)
    {
      v6 = @"familyFlags set";
      goto LABEL_26;
    }

    DeviceClass = GestaltGetDeviceClass();
    if (DeviceClass == 7 || DeviceClass == 4)
    {
      v6 = @"device is communal";
      goto LABEL_26;
    }

    v8 = [(SDStatusMonitor *)self->_statusMonitor screenOn];
    v9 = [(CUBluetoothClient *)self->_btConnectedDeviceMonitor statusFlags];
    if (v8 && (v9 & 8) != 0)
    {
      v6 = @"ShareAudio is ongoing while screen on";
      goto LABEL_26;
    }

    if (self->_adHocPairedIdentityPresent)
    {
      v6 = @"_adHocPairedIdentityPresent";
      goto LABEL_26;
    }

    v10 = v8;
    if (![(SDNearbyAgent *)self idsIsSignedIn])
    {
      v3 = @"Not signed into iCloud";
      goto LABEL_7;
    }

    if ([(SDStatusMonitor *)self->_statusMonitor iCloudSharedPhotoLibraryEnabled])
    {
      v6 = @"Shared iCloud Photo Library is enabled";
      goto LABEL_26;
    }

    if (self->_coreDeviceEnabled)
    {
      v11 = +[SDStatusMonitor sharedMonitor];
      v12 = [v11 supportsXcodePairing];

      if (v12)
      {
        v6 = @"CoreDeviceEnabled";
        goto LABEL_26;
      }
    }

    if (self->_fitnessPairingEnabled)
    {
      v13 = +[SDStatusMonitor sharedMonitor];
      v14 = [v13 supportsFitnessPlusPairing];

      if (v14)
      {
        v6 = @"FitnessPairingEnabled";
        goto LABEL_26;
      }
    }

    if (self->_sessionPairingEnabled)
    {
      v6 = @"SessionPairingEnabled";
      goto LABEL_26;
    }

    if ([(SDNearbyAgent *)self _idsShouldAdvertiseNearbyInfo])
    {
      v6 = @"Same account devices";
      goto LABEL_26;
    }

    if (v10)
    {
      v6 = @"Screen on";
      goto LABEL_26;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100249B98;
    v23 = sub_100249BA8;
    v24 = 0;
    services = self->_services;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100249BB0;
    v18[3] = &unk_1008D55F8;
    v18[4] = &v19;
    v18[5] = &v25;
    [(NSMutableDictionary *)services enumerateKeysAndObjectsUsingBlock:v18];
    if (*(v26 + 24) == 1)
    {
      v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SFServiceType %s active", sub_100249C34([v20[5] serviceType]));
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:v16];
    }

    else
    {
      if (self->_caEnabled && self->_activityUserActive && (self->_caSingleDevice || [(SDNearbyAgent *)self _idsContinuityDeviceCount]> 0))
      {
        v17 = @"caEnabled";
      }

      else
      {
        if (!self->_inDiscoverySession)
        {
          [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:@"Don't advertise by default"];
          v4 = 0;
          goto LABEL_59;
        }

        v17 = @"inDiscoverySession";
      }

      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:v17];
    }

    v4 = 1;
LABEL_59:
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
    return v4;
  }

  v3 = @"_bleDiagnosticModeClients.count > 0";
LABEL_7:
  [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:v3];
  return 0;
}

- (int)_idsShouldEncryptActivityLevel
{
  idsShouldEncryptActivityLevel = self->_idsShouldEncryptActivityLevel;
  if (idsShouldEncryptActivityLevel < 0)
  {
    if (([(CUSystemMonitor *)self->_systemMonitor manateeAvailable]& 1) != 0)
    {
      [(SDNearbyAgent *)self idsDeviceArray];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v16 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v13 + 1) + 8 * i);
            v10 = [v9 modelIdentifier];
            v11 = GestaltProductTypeStringToDeviceClass();

            if (v9)
            {
              [v9 operatingSystemVersion];
            }

            if (v11 && (DeviceOSVersionAtOrLater() & 1) == 0)
            {
              if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
              {
                sub_1002660F0();
              }

              idsShouldEncryptActivityLevel = 0;
              goto LABEL_23;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      idsShouldEncryptActivityLevel = 1;
LABEL_23:
    }

    else
    {
      if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002660D4();
      }

      idsShouldEncryptActivityLevel = 0;
    }

    self->_idsShouldEncryptActivityLevel = idsShouldEncryptActivityLevel;
  }

  return idsShouldEncryptActivityLevel;
}

- (int)_allowEnhancedDiscovery
{
  result = self->_allowEnhancedDiscovery;
  if (result < 0)
  {
    v4 = SFDeviceClassCodeGet();
    v5 = SFDeviceClassCodeGet();
    v6 = SFDeviceClassCodeGet();
    v7 = SFDeviceClassCodeGet();
    v36 = v6;
    v11 = v4 == 5 || v5 == 3 || v6 == 1 || v7 == 6;
    v34 = v5;
    v35 = v11;
    v37 = self;
    [(SDNearbyAgent *)self idsDeviceArray];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v38 = 0;
      v39 = 0;
      v15 = 0;
      v16 = *v42;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = [v18 modelIdentifier];
          GestaltProductTypeStringToDeviceClass();

          if (v18)
          {
            [v18 operatingSystemVersion];
          }

          if (DeviceOSVersionAtOrLater())
          {
            v20 = [v18 modelIdentifier];
            v21 = [v20 containsString:@"Mac"];

            if (v21)
            {
              ++v15;
            }

            else
            {
              v22 = [v18 modelIdentifier];
              v23 = [v22 containsString:@"iPad"];

              if (v23)
              {
                ++v38;
              }

              else
              {
                v24 = [v18 modelIdentifier];
                v25 = [v24 containsString:@"iPhone"];

                v39 += v25;
              }
            }
          }

          if (DeviceOSVersionAtOrLater())
          {
            v26 = [v18 modelIdentifier];
            v27 = [v26 containsString:@"AppleTV"];

            v14 += v27;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
      v38 = 0;
      v39 = 0;
      v15 = 0;
    }

    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v4 != 5 || v15 || v38 || v39)
    {
      if (v36 == 1 || v34 == 3)
      {
        if (v15 | v14)
        {
          v30 = +[AVCaptureDevice continuityCaptureLastUsedDate];
          v28 = v37;
          v29 = v35;
          if (v30)
          {
            v31 = +[NSDate date];
            [v31 timeIntervalSinceDate:v30];
            v33 = v32;

            if (v33 > 3024000.0)
            {
              [(SDNearbyAgent *)v37 _unregisterForMagicMountUpdates];
              v29 = 0;
            }

            if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_1002657B0();
            }
          }

          else
          {
            if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_10026581C();
            }

            v29 = 0;
          }
        }

        else
        {
          v28 = v37;
          if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265850();
          }

          v29 = 0;
        }

        if (v28->_inDiscoverySession && (v29 & 1) == 0)
        {
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265884();
          }

          v29 = 1;
        }
      }

      else
      {
        v28 = v37;
        v29 = v35;
      }
    }

    else if (dword_100973248 > 40)
    {
      v29 = 0;
      v28 = v37;
    }

    else
    {
      v28 = v37;
      if (dword_100973248 != -1 || _LogCategory_Initialize())
      {
        sub_1002658B8();
      }

      v29 = 0;
    }

    v28->_allowEnhancedDiscovery = v29;

    return v28->_allowEnhancedDiscovery;
  }

  return result;
}

- (BOOL)_bleNearbyInfoAdvertiserLingerIfNeeded
{
  bleNearbyInfoAirDropUsable = self->_bleNearbyInfoAirDropUsable;
  if (bleNearbyInfoAirDropUsable)
  {
    self->_bleNearbyInfoAirDropUsable = 0;
    [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserLingerStart:@"AirDropUsable"];
  }

  return bleNearbyInfoAirDropUsable;
}

- (void)_bleNearbyInfoAdvertiserEnsureStopped
{
  if (self->_bleNearbyInfoAdvertiser && dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002631E4(self);
  }

  [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"StopNearbyInfo"];
  [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser invalidate];
  bleNearbyInfoAdvertiser = self->_bleNearbyInfoAdvertiser;
  self->_bleNearbyInfoAdvertiser = 0;

  self->_bleNearbyInfoAdvertised = 0;
  bleNearbyInfoAdvertiseLingerTimer = self->_bleNearbyInfoAdvertiseLingerTimer;
  if (bleNearbyInfoAdvertiseLingerTimer)
  {
    v6 = bleNearbyInfoAdvertiseLingerTimer;
    dispatch_source_cancel(v6);
    v5 = self->_bleNearbyInfoAdvertiseLingerTimer;
    self->_bleNearbyInfoAdvertiseLingerTimer = 0;
  }
}

- (void)_bleProximityPairingScannerEnsureStarted
{
  if (self->_bleProximityPairingScanner)
  {

    [SDNearbyAgent _bleUpdateScanner:"_bleUpdateScanner:typeFlag:" typeFlag:?];
  }

  else
  {
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10002A858();
    }

    v3 = [[SFBLEScanner alloc] initWithType:7];
    bleProximityPairingScanner = self->_bleProximityPairingScanner;
    self->_bleProximityPairingScanner = v3;

    [(SFBLEScanner *)self->_bleProximityPairingScanner setDispatchQueue:self->_dispatchQueue];
    [(SFBLEScanner *)self->_bleProximityPairingScanner setChangeFlags:13];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000337C0;
    v8[3] = &unk_1008CE810;
    v8[4] = self;
    [(SFBLEScanner *)self->_bleProximityPairingScanner setDeviceFoundHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002FF28;
    v7[3] = &unk_1008CE810;
    v7[4] = self;
    [(SFBLEScanner *)self->_bleProximityPairingScanner setDeviceLostHandler:v7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002FCF8;
    v6[3] = &unk_1008CE878;
    v6[4] = self;
    [(SFBLEScanner *)self->_bleProximityPairingScanner setDeviceChangedHandler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10024C0B0;
    v5[3] = &unk_1008CEA50;
    v5[4] = self;
    [(SFBLEScanner *)self->_bleProximityPairingScanner setScanStateChangedHandler:v5];
    [(SDNearbyAgent *)self _bleUpdateScanner:self->_bleProximityPairingScanner typeFlag:2];
    if (self->_bleProximityRSSILog)
    {
      [(SFBLEScanner *)self->_bleProximityPairingScanner setRssiLog:1];
    }

    [(SFBLEScanner *)self->_bleProximityPairingScanner activateWithCompletion:&stru_1008D56A8];
  }
}

- (BOOL)_bleProximityPairingScannerShouldScan
{
  if (!self->_bleProximityEnabled || !self->_ddProximityPairingEnabled || [(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    return 0;
  }

  if (self->_ddProximityPairingScreenOff && !self->_systemWillPowerDown)
  {
    return 1;
  }

  statusMonitor = self->_statusMonitor;

  return [(SDStatusMonitor *)statusMonitor screenOn];
}

- (void)_btPipeEnsureStarted
{
  if (!self->_unlockBtPipe)
  {
    v7[7] = v2;
    v7[8] = v3;
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264190();
    }

    v5 = [[SFBLEPipe alloc] initWithPriority:4];
    unlockBtPipe = self->_unlockBtPipe;
    self->_unlockBtPipe = v5;

    [(SFBLEPipe *)self->_unlockBtPipe setDispatchQueue:self->_dispatchQueue];
    [(SFBLEPipe *)self->_unlockBtPipe setIdentifier:@"com.apple.sharing.pautounlock"];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024C134;
    v7[3] = &unk_1008D23C0;
    v7[4] = self;
    [(SFBLEPipe *)self->_unlockBtPipe setFrameHandler:v7];
    [(SFBLEPipe *)self->_unlockBtPipe activate];
  }
}

- (int)_idsContinuityDeviceCount
{
  result = self->_idsContinuityDeviceCountCache;
  if (result < 0)
  {
    if (self->_idsService)
    {
      self->_idsContinuityDeviceCountCache = 0;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = [(SDNearbyAgent *)self idsDeviceArray];
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v9 + 1) + 8 * v8) supportsHandoff])
            {
              ++self->_idsContinuityDeviceCountCache;
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }

      return self->_idsContinuityDeviceCountCache;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_bleNearbyInfoAdvertiserEnsureStarted
{
  if (self->_bleNearbyInfoAdvertiser)
  {
    if (self->_bleNearbyInfoAdvertiseReasonChanged)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_10026315C(self);
      }

      self->_bleNearbyInfoAdvertiseReasonChanged = 0;
    }
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002631A0(self);
    }

    v3 = [[SFBLEAdvertiser alloc] initWithType:16];
    bleNearbyInfoAdvertiser = self->_bleNearbyInfoAdvertiser;
    self->_bleNearbyInfoAdvertiser = v3;

    dispatchQueue = self->_dispatchQueue;
    v6 = self->_bleNearbyInfoAdvertiser;

    [(SFBLEAdvertiser *)v6 setDispatchQueue:dispatchQueue];
  }
}

- (BOOL)_idsShouldAdvertiseNearbyInfo
{
  idsShouldAdvertiseNearbyInfo = self->_idsShouldAdvertiseNearbyInfo;
  if ((idsShouldAdvertiseNearbyInfo & 0x80000000) == 0)
  {
    return idsShouldAdvertiseNearbyInfo > 0;
  }

  self->_idsShouldAdvertiseNearbyInfo = 0;
  v5 = [(SDNearbyAgent *)self idsDeviceArray];
  DeviceClass = GestaltGetDeviceClass();
  v7 = [v5 count];
  if (DeviceClass == 6)
  {
    if (v7 < 2)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v5;
      v15 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
LABEL_19:
        v18 = 0;
        while (1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = [*(*(&v20 + 1) + 8 * v18) modelIdentifier];
          v14 = v19;
          if (v19)
          {
            if (([v19 hasPrefix:@"iPhone"] & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          if (v16 == ++v18)
          {
            v16 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v16)
            {
              goto LABEL_19;
            }

            goto LABEL_26;
          }
        }
      }

      goto LABEL_26;
    }
  }

  else if (DeviceClass == 1)
  {
    if (v7 < 2)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
LABEL_8:
        v12 = 0;
        while (1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v24 + 1) + 8 * v12) modelIdentifier];
          v14 = v13;
          if (v13)
          {
            if (([v13 hasPrefix:@"Watch"] & 1) == 0)
            {
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
            if (v10)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }
        }

LABEL_30:
        self->_idsShouldAdvertiseNearbyInfo = 1;

        goto LABEL_31;
      }

LABEL_26:

LABEL_29:
      idsShouldAdvertiseNearbyInfo = self->_idsShouldAdvertiseNearbyInfo;
      return idsShouldAdvertiseNearbyInfo > 0;
    }
  }

  else if (!v7)
  {
    goto LABEL_29;
  }

  self->_idsShouldAdvertiseNearbyInfo = 1;
LABEL_31:

  return 1;
}

- (void)_updateCameraState
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_prefWombatAssumeNotInPocket)
  {
    isDeviceNotInPocket = self->_isDeviceNotInPocket;
    if (![(SDNearbyAgent *)self _isDeviceMountedAndScreenOff]|| !isDeviceNotInPocket && !self->_inDiscoverySession)
    {
      goto LABEL_8;
    }

LABEL_7:
    v4 = 0;
    v5 = 1;
    v6 = "Usable";
    goto LABEL_9;
  }

  if ([(SDNearbyAgent *)self _isDeviceMountedAndScreenOff])
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = 0;
  v6 = "?";
  v4 = 1;
LABEL_9:
  cameraState = self->_cameraState;
  if (v5 != cameraState)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
LABEL_12:
        v8 = "?";
        if (cameraState == 1)
        {
          v8 = "Usable";
        }

        if (cameraState)
        {
          v9 = v8;
        }

        else
        {
          v9 = "Nearby";
        }

        if (v4)
        {
          v10 = "Nearby";
        }

        else
        {
          v10 = v6;
        }

        v12 = v9;
        v13 = v10;
        LogPrintF();
        goto LABEL_22;
      }

      if (_LogCategory_Initialize())
      {
        cameraState = self->_cameraState;
        goto LABEL_12;
      }
    }

LABEL_22:
    self->_cameraState = v5;
    if (v4)
    {
      [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"CameraStateNearby"];
      v11 = 1;
    }

    else
    {
      [(SDNearbyAgent *)self _enableEnhancedDiscovery:@"CameraStateUsable" useCase:131078];
      v11 = 2;
    }

    [(SDNearbyAgent *)self _postNotificationForWombatState:v11, v12, v13];
  }

  [(SDNearbyAgent *)self _update];
}

- (BOOL)_isDeviceMountedAndScreenOff
{
  v3 = self->_prefWombatAssumeLocked || [(CUSystemMonitor *)self->_systemMonitor systemLockState]== 3 || [(CUSystemMonitor *)self->_systemMonitor systemLockState]== 2;
  if (self->_prefWombatAssumeScreenOff)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [(CUSystemMonitor *)self->_systemMonitor screenOn]^ 1;
  }

  v5 = self->_prefWombatAssumeMounted || self->_isDeviceMounted;
  if (!self->_prefWombatAssumeNotInPocket)
  {
    self->_isDeviceNotInPocket;
  }

  inDiscoverySession = self->_inDiscoverySession;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v3 || !v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4 | inDiscoverySession;
  }

  return v7 & 1;
}

- (NSString)description
{
  v227 = 0;
  NSAppendPrintF();
  v2 = 0;
  v226 = v2;
  Current = CFAbsoluteTimeGetCurrent();
  activityLevel = self->_activityLevel;
  if (activityLevel > 0xE)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1008D60A0[self->_activityLevel];
  }

  v173 = v5;
  startTime = self->_startTime;
  if (self->_activityTimer)
  {
    v7 = "on";
  }

  else
  {
    v7 = "off";
  }

  [(SDNearbyAgent *)self _activityMonitorLastUserEventDelta];
  v9 = v8;
  if (self->_bleNearbyInfoAdvertiseLingerTimer)
  {
    v10 = "on";
  }

  else
  {
    v10 = "off";
  }

  p_statusMonitor = &self->_statusMonitor;
  if ([(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    v12 = "on";
  }

  else
  {
    v12 = "off";
  }

  if ([(SDStatusMonitor *)*p_statusMonitor deviceUIUnlocked])
  {
    v13 = "unlocked";
  }

  else
  {
    v13 = "locked";
  }

  if ([(SDStatusMonitor *)*p_statusMonitor smartCoverIsClosed])
  {
    v14 = "closed";
  }

  else
  {
    v14 = "not closed";
  }

  if ([(SDStatusMonitor *)*p_statusMonitor multipleUsersLoggedIn])
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  v16 = [(SDStatusMonitor *)*p_statusMonitor systemUIFlags];
  v17 = [(SDStatusMonitor *)*p_statusMonitor pairedWatchWristState];
  audioRoutingScore = self->_audioRoutingScore;
  if (audioRoutingScore > 0xF)
  {
    v19 = "?";
  }

  else
  {
    v19 = off_1008D5A20[audioRoutingScore];
  }

  familyFlags = self->_familyFlags;
  v171 = v19;
  v168 = v16;
  v169 = v17;
  v166 = v10;
  v153 = activityLevel;
  NSAppendPrintF();
  v20 = v226;

  v21 = objc_autoreleasePoolPush();
  v22 = objc_alloc_init(CUAppleIDClient);
  v23 = [v22 copyMyAppleIDAndReturnError:{0, (Current - startTime), v153, v173, v7, v9, v166, v12, v13, v14, v15, v168, v169, familyFlags, v171}];
  v225 = v20;
  NSAppendPrintF();
  v24 = v20;

  v224 = v24;
  v25 = [v22 securityLevel];
  v26 = "?";
  if (v25 <= 5)
  {
    v26 = off_1008D59F0[v25];
  }

  v141 = v26;
  NSAppendPrintF();
  v27 = v224;

  objc_autoreleasePoolPop(v21);
  v28 = objc_autoreleasePoolPush();
  v233 = 0;
  v234 = &v233;
  v235 = 0x2050000000;
  v29 = qword_10098A440;
  v236 = qword_10098A440;
  if (!qword_10098A440)
  {
    v228 = _NSConcreteStackBlock;
    v229 = 3221225472;
    v230 = sub_100261548;
    v231 = &unk_1008CDA20;
    v232 = &v233;
    sub_100261548(&v228);
    v29 = v234[3];
  }

  v30 = v29;
  _Block_object_dispose(&v233, 8);
  v31 = [v29 defaultStore];
  v32 = [v31 activeAccount];

  v33 = [v32 altDSID];
  if (!v33)
  {
    v223 = v27;
    v41 = [v32 accountName];
LABEL_40:
    v39 = v41;
    goto LABEL_41;
  }

  v233 = 0;
  v234 = &v233;
  v235 = 0x2050000000;
  v34 = qword_10098A450;
  v236 = qword_10098A450;
  if (!qword_10098A450)
  {
    v228 = _NSConcreteStackBlock;
    v229 = 3221225472;
    v230 = sub_1002616E8;
    v231 = &unk_1008CDA20;
    v232 = &v233;
    sub_1002616E8(&v228);
    v34 = v234[3];
  }

  v35 = v34;
  _Block_object_dispose(&v233, 8);
  v36 = [v34 sharedInstance];
  v37 = [v36 authKitAccountWithAltDSID:v33];
  if (!v37)
  {

    v223 = v27;
    v41 = [v32 accountName];
    goto LABEL_40;
  }

  v38 = [v36 securityLevelForAccount:v37];

  v223 = v27;
  v39 = [v32 accountName];
  if (v38 <= 2)
  {
    if (v38)
    {
      if (v38 != 1)
      {
        if (v38 == 2)
        {
          v40 = "SA";
          goto LABEL_42;
        }

LABEL_152:
        v40 = "?";
        goto LABEL_42;
      }

      v40 = "PWOnly";
      goto LABEL_42;
    }

LABEL_41:
    v40 = "Unknown";
    goto LABEL_42;
  }

  if (v38 == 3)
  {
    v40 = "HSA1";
    goto LABEL_42;
  }

  if (v38 != 4)
  {
    if (v38 == 5)
    {
      v40 = "Managed";
      goto LABEL_42;
    }

    goto LABEL_152;
  }

  v40 = "HSA2";
LABEL_42:
  v154 = v40;
  NSAppendPrintF();
  v42 = v223;

  objc_autoreleasePoolPop(v28);
  v222 = v42;
  v43 = [(CUSystemMonitor *)self->_systemMonitor meDeviceFMFDeviceID:v39];
  v44 = [(CUSystemMonitor *)self->_systemMonitor meDeviceIDSDeviceID];
  [(CUSystemMonitor *)self->_systemMonitor meDeviceName];
  v162 = v155 = v44;
  v142 = v43;
  NSAppendPrintF();
  v45 = v42;

  v221 = v45;
  NSAppendPrintF();
  v46 = v45;

  v47 = self;
  if (self->_autoUnlockActive)
  {
    v220 = v46;
    NSAppendPrintF();
    v48 = v46;

    v46 = v48;
    v47 = self;
  }

  if (v47->_boostNearbyInfo)
  {
    v219 = v46;
    NSAppendPrintF();
    v49 = v46;

    v46 = v49;
    v47 = self;
  }

  if ([(NSMutableDictionary *)v47->_bleConnections count:v142])
  {
    v218 = v46;
    v143 = [(NSMutableDictionary *)self->_bleConnections count];
    NSAppendPrintF();
    v50 = v46;

    v46 = v50;
  }

  if ([(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    v217 = v46;
    v144 = [(NSMutableSet *)self->_bleDiagnosticModeClients count];
    NSAppendPrintF();
    v51 = v46;

    v46 = v51;
  }

  v52 = self;
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  if (bleNearbyActionAdvertiser)
  {
    v216 = v46;
    v54 = "on";
    if (!self->_bleNearbyActionAdvertiseLingerTimer)
    {
      v54 = "off";
    }

    v144 = bleNearbyActionAdvertiser;
    bleNearbyInfoAdvertiseReason = v54;
    NSAppendPrintF();
    v55 = v216;

    v46 = v55;
    v52 = self;
  }

  bleNearbyActionScanner = v52->_bleNearbyActionScanner;
  if (bleNearbyActionScanner)
  {
    v215 = v46;
    v144 = bleNearbyActionScanner;
    NSAppendPrintF();
    v57 = v46;

    v46 = v57;
    v52 = self;
  }

  bleNearbyInfoAdvertiser = v52->_bleNearbyInfoAdvertiser;
  if (bleNearbyInfoAdvertiser)
  {
    v214 = v46;
    v144 = bleNearbyInfoAdvertiser;
    bleNearbyInfoAdvertiseReason = v52->_bleNearbyInfoAdvertiseReason;
    NSAppendPrintF();
    v59 = v46;

    v46 = v59;
    v52 = self;
  }

  bleNearbyInfoScanner = v52->_bleNearbyInfoScanner;
  if (bleNearbyInfoScanner)
  {
    v213 = v46;
    v144 = bleNearbyInfoScanner;
    NSAppendPrintF();
    v61 = v46;

    v46 = v61;
    v52 = self;
  }

  bleProximityPairingScanner = v52->_bleProximityPairingScanner;
  if (bleProximityPairingScanner)
  {
    v212 = v46;
    v144 = bleProximityPairingScanner;
    NSAppendPrintF();
    v63 = v46;

    v46 = v63;
    v52 = self;
  }

  if (v52->_enhancedDiscovery)
  {
    v211 = v46;
    v144 = "yes";
    NSAppendPrintF();
    v64 = v46;

    v46 = v64;
    v52 = self;
  }

  v210 = v46;
  [(SDNearbyAgent *)v52 _allowEnhancedDiscovery:v144];
  self->_enhancedDiscoveryShouldRun;
  NSAppendPrintF();
  v65 = v46;

  v209 = v65;
  v66 = "Usable";
  if (self->_cameraState != 1)
  {
    v66 = "?";
  }

  if (self->_cameraState)
  {
    v67 = v66;
  }

  else
  {
    v67 = "Nearby";
  }

  if (self->_isDeviceMounted)
  {
    v68 = "yes";
  }

  else
  {
    v68 = "no";
  }

  if (self->_isDeviceNotInPocket)
  {
    v69 = "yes";
  }

  else
  {
    v69 = "no";
  }

  v157 = v68;
  v163 = v69;
  v145 = v67;
  NSAppendPrintF();
  v70 = v209;

  v71 = self;
  unlockBtPipe = self->_unlockBtPipe;
  if (unlockBtPipe)
  {
    v208[18] = v70;
    v145 = unlockBtPipe;
    NSAppendPrintF();
    v73 = v70;

    v70 = v73;
    v71 = self;
  }

  v208[17] = v70;
  v146 = [(NSMutableSet *)v71->_ddRequests count:v145];
  NSAppendPrintF();
  v74 = v70;

  v75 = self;
  if (self->_coreDeviceEnabled)
  {
    v208[16] = v74;
    NSAppendPrintF();
    v76 = v74;

    v74 = v76;
    v75 = self;
  }

  if (v75->_ddNearbyActionEnabled)
  {
    v208[15] = v74;
    NSAppendPrintF();
    v77 = v74;

    v74 = v77;
    v75 = self;
  }

  if (v75->_ddNearbyActionScreenOff)
  {
    v208[14] = v74;
    NSAppendPrintF();
    v78 = v74;

    v74 = v78;
    v75 = self;
  }

  if (v75->_ddNearbyInfoEnabled)
  {
    v208[13] = v74;
    NSAppendPrintF();
    v79 = v74;

    v74 = v79;
    v75 = self;
  }

  if (v75->_ddNearbyInfoScreenOff)
  {
    v208[12] = v74;
    NSAppendPrintF();
    v80 = v74;

    v74 = v80;
    v75 = self;
  }

  if (v75->_ddProximityPairingEnabled)
  {
    v208[11] = v74;
    NSAppendPrintF();
    v81 = v74;

    v74 = v81;
    v75 = self;
  }

  if (v75->_ddProximityPairingScreenOff)
  {
    v208[10] = v74;
    NSAppendPrintF();
    v82 = v74;

    v74 = v82;
    v75 = self;
  }

  if (v75->_fitnessPairingEnabled)
  {
    v208[9] = v74;
    NSAppendPrintF();
    v83 = v74;

    v74 = v83;
    v75 = self;
  }

  if (v75->_sessionPairingEnabled)
  {
    v208[8] = v74;
    NSAppendPrintF();
    v84 = v74;

    v74 = v84;
    v75 = self;
  }

  v208[7] = v74;
  v147 = [(NSMutableDictionary *)v75->_ddNearbyActionDevices count];
  NSAppendPrintF();
  v85 = v74;

  v208[6] = v85;
  v148 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices count];
  NSAppendPrintF();
  v86 = v85;

  v208[5] = v86;
  v149 = [(NSMutableDictionary *)self->_ddProximityPairingDevices count];
  NSAppendPrintF();
  v87 = v86;

  v228 = 0;
  v229 = &v228;
  v230 = 0x2020000000;
  LODWORD(v231) = 0;
  idDevices = self->_idDevices;
  v208[0] = _NSConcreteStackBlock;
  v208[1] = 3221225472;
  v208[2] = sub_100245418;
  v208[3] = &unk_1008D5500;
  v208[4] = &v228;
  [(NSMutableDictionary *)idDevices enumerateKeysAndObjectsUsingBlock:v208, v149];
  v207 = v87;
  v89 = *(v229 + 24);
  v158 = [(NSMutableDictionary *)self->_idDevices count];
  NSAppendPrintF();
  v90 = v87;

  v206 = v90;
  NSAppendPrintF();
  v91 = v90;

  v92 = [IDSService alloc];
  v174 = [v92 initWithService:{IDSServiceNameiMessage, v89, v158}];
  v205 = v91;
  v93 = "on";
  if (!self->_idsService)
  {
    v93 = "off";
  }

  v172 = v93;
  if ([(SDNearbyAgent *)self idsIsSignedIn])
  {
    v94 = "signed in";
  }

  else
  {
    v94 = "not signed in";
  }

  v95 = [(SDNearbyAgent *)self idsDeviceArray];
  v96 = [v95 count];
  v97 = [(SDNearbyAgent *)self _idsAppleTVCount];
  v98 = [(SDNearbyAgent *)self _idsContinuityDeviceCount];
  v99 = [(SDNearbyAgent *)self _idsHomePodCount];
  if (v174)
  {
    v100 = "on";
  }

  else
  {
    v100 = "off";
  }

  v101 = [v174 devices];
  v102 = [v101 count];
  v167 = [(SDNearbyAgent *)self _idsShouldEncryptActivityLevel];
  v164 = v96;
  NSAppendPrintF();
  v103 = v205;

  v204 = v103;
  v104 = [(NSMutableDictionary *)self->_services count:v172];
  v159 = [(NSMutableDictionary *)self->_sessions count];
  v165 = [(NSMutableDictionary *)self->_setupSessions count];
  v150 = v104;
  NSAppendPrintF();
  v105 = v103;

  systemService = self->_systemService;
  if (systemService)
  {
    v203 = v105;
    v150 = systemService;
    NSAppendPrintF();
    v107 = v105;

    v105 = v107;
  }

  v202 = v105;
  NSAppendPrintF();
  v108 = v105;

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v109 = CFPrefs_CopyKeys();
  v110 = [v109 countByEnumeratingWithState:&v198 objects:v240 count:{16, v150, v159, v165}];
  if (!v110)
  {
    goto LABEL_116;
  }

  v111 = 0;
  v112 = *v199;
  do
  {
    for (i = 0; i != v110; i = i + 1)
    {
      if (*v199 != v112)
      {
        objc_enumerationMutation(v109);
      }

      v114 = *(*(&v198 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v197 = v108;
        v151 = v114;
        v160 = CFPrefs_CopyTypedValue();
        NSAppendPrintF();
        v115 = v108;

        ++v111;
        v108 = v115;
      }
    }

    v110 = [v109 countByEnumeratingWithState:&v198 objects:v240 count:16];
  }

  while (v110);

  if (v111 >= 1)
  {
    v196 = v108;
    NSAppendPrintF();
    v109 = v108;
    v108 = v108;
LABEL_116:
  }

  if ([(NSMutableDictionary *)self->_bleConnections count:v151])
  {
    v195 = v108;
    NSAppendPrintF();
    v116 = v108;

    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v117 = self->_bleConnections;
    v118 = [(NSMutableDictionary *)v117 countByEnumeratingWithState:&v191 objects:v239 count:16];
    if (v118)
    {
      v119 = *v192;
      do
      {
        v120 = 0;
        v121 = v116;
        do
        {
          if (*v192 != v119)
          {
            objc_enumerationMutation(v117);
          }

          v122 = *(*(&v191 + 1) + 8 * v120);
          v190 = v121;
          v152 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v122, v152];
          NSAppendPrintF();
          v116 = v121;

          v120 = v120 + 1;
          v121 = v116;
        }

        while (v118 != v120);
        v118 = [(NSMutableDictionary *)v117 countByEnumeratingWithState:&v191 objects:v239 count:16, v152];
      }

      while (v118);
    }

    v189 = v116;
    NSAppendPrintF();
    v108 = v116;
  }

  if ([(NSMutableDictionary *)self->_setupSessions count])
  {
    v188 = v108;
    NSAppendPrintF();
    v123 = v108;

    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v124 = self->_setupSessions;
    v125 = [(NSMutableDictionary *)v124 countByEnumeratingWithState:&v184 objects:v238 count:16];
    if (v125)
    {
      v126 = *v185;
      do
      {
        v127 = 0;
        v128 = v123;
        do
        {
          if (*v185 != v126)
          {
            objc_enumerationMutation(v124);
          }

          v129 = *(*(&v184 + 1) + 8 * v127);
          v183 = v128;
          [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v129, v152, v161];
          v161 = v152 = v129;
          NSAppendPrintF();
          v123 = v128;

          v127 = v127 + 1;
          v128 = v123;
        }

        while (v125 != v127);
        v125 = [(NSMutableDictionary *)v124 countByEnumeratingWithState:&v184 objects:v238 count:16, v152, v161];
      }

      while (v125);
    }

    v182 = v123;
    NSAppendPrintF();
    v108 = v123;
  }

  if ([(NSMutableDictionary *)self->_sessions count])
  {
    v181 = v108;
    NSAppendPrintF();
    v130 = v108;

    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v131 = self->_sessions;
    v132 = [(NSMutableDictionary *)v131 countByEnumeratingWithState:&v177 objects:v237 count:16];
    if (v132)
    {
      v133 = *v178;
      do
      {
        v134 = 0;
        v135 = v130;
        do
        {
          if (*v178 != v133)
          {
            objc_enumerationMutation(v131);
          }

          v136 = *(*(&v177 + 1) + 8 * v134);
          v176[3] = v135;
          [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v136, v152, v161];
          v161 = v152 = v136;
          NSAppendPrintF();
          v130 = v135;

          v134 = v134 + 1;
          v135 = v130;
        }

        while (v132 != v134);
        v132 = [(NSMutableDictionary *)v131 countByEnumeratingWithState:&v177 objects:v237 count:16, v152, v161];
      }

      while (v132);
    }

    v176[2] = v130;
    NSAppendPrintF();
    v108 = v130;
  }

  v176[1] = v108;
  NSAppendPrintF();
  v137 = v108;

  v176[0] = v137;
  [(SDNearbyAgent *)self idsDevicesAppendDescription:v176];
  v138 = v176[0];

  v139 = v138;
  _Block_object_dispose(&v228, 8);

  return v139;
}

- (double)_activityMonitorLastUserEventDelta
{
  v2 = CACurrentMediaTime();
  BKSHIDServicesLastUserEventTime();
  return v2 - v3;
}

- (id)idsDeviceArray
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SDNearbyAgent *)v2 _idsDeviceArrayLocked];
  objc_sync_exit(v2);

  return v3;
}

- (id)_idsDeviceArrayLocked
{
  idsDeviceArray = self->_idsDeviceArray;
  if (!idsDeviceArray)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002660B8();
    }

    v4 = [(IDSService *)self->_idsService devices];
    v5 = self->_idsDeviceArray;
    self->_idsDeviceArray = v4;

    idsDeviceArray = self->_idsDeviceArray;
  }

  return idsDeviceArray;
}

- (int)_idsHomePodCount
{
  result = self->_idsHomePodCountCache;
  if (result < 0)
  {
    self->_idsHomePodCountCache = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = v5;
    v7 = *v14;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 modelIdentifier];
        if ([v10 hasPrefix:@"AudioAccessory"])
        {
        }

        else
        {
          v11 = [v9 modelIdentifier];
          v12 = [v11 hasPrefix:{@"HomePod1, "}];

          if (!v12)
          {
            continue;
          }
        }

        ++self->_idsHomePodCountCache;
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v6)
      {
LABEL_13:

        return self->_idsHomePodCountCache;
      }
    }
  }

  return result;
}

+ (SDNearbyAgent)sharedNearbyAgent
{
  if (qword_10098A430 != -1)
  {
    sub_100261F6C();
  }

  v3 = gSFNearbyAgent;

  return v3;
}

- (void)_systemHasPoweredOn
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FBD0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)idsBluetoothDeviceIDsForRIServers
{
  v14 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(SDNearbyAgent *)self idsDeviceArray];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 modelIdentifier];
        if ([v9 hasPrefix:@"AppleTV"])
        {
        }

        else
        {
          v10 = [v8 modelIdentifier];
          v11 = [(SDNearbyAgent *)self isDeviceValidRIServer:v10];

          if (!v11)
          {
            continue;
          }
        }

        v12 = [v8 nsuuid];
        if (v12)
        {
          [v14 addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v14;
}

- (id)idsDeviceIDsForRIServers
{
  v3 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_idIdentityArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 model];
        v11 = [v10 hasPrefix:@"AppleTV"];

        if (v11)
        {
          v12 = [v9 idsDeviceID];
          if (v12)
          {
            [v3 addObject:v12];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_activityMonitorEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_activityCarPlayRegistered)
  {
    self->_activityCarPlayRegistered = 1;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_activityMonitorCarPlayStatusChanged:" name:@"com.apple.sharingd.CarPlayStatusChanged" object:0];
  }

  if (!self->_activityMultipleUsersRegistered)
  {
    self->_activityMultipleUsersRegistered = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_activityMonitorMultipleUsersLoggedInChanged:" name:@"com.apple.sharingd.MultipleUsersLoggedInChanged" object:0];
  }

  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  p_activityLevelNotifyToken = &self->_activityLevelNotifyToken;
  *(p_activityLevelNotifyToken + 5) = 1;
  if (activityLevelNotifyToken == -1)
  {

    notify_register_check("com.apple.sharing.activity-level-changed", p_activityLevelNotifyToken);
  }
}

- (void)_identificationMaintenanceTimer
{
  v3 = mach_absolute_time();
  v4 = SecondsToUpTicks();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NSMutableDictionary *)self->_idDevices allKeys];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)self->_idDevices objectForKeyedSubscript:v10];
        if (![v11 discoveryFlags] && v3 - objc_msgSend(v11, "lastUpdateTicks") >= v4)
        {
          [(NSMutableDictionary *)self->_idDevices removeObjectForKey:v10];
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265F94();
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = v12;
    }

    while (v12);
  }

  if (![(NSMutableDictionary *)self->_idDevices count])
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265FD4();
    }

    idMaintenanceTimer = self->_idMaintenanceTimer;
    if (idMaintenanceTimer)
    {
      v14 = idMaintenanceTimer;
      dispatch_source_cancel(v14);
      v15 = self->_idMaintenanceTimer;
      self->_idMaintenanceTimer = 0;
    }
  }
}

- (void)_bleProximityPairingScannerEnsureStopped
{
  if (self->_bleProximityPairingScanner)
  {
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264174();
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(NSMutableDictionary *)self->_ddProximityPairingDevices allKeys];
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

          v8 = [(NSMutableDictionary *)self->_ddProximityPairingDevices objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
          v9 = [v8 bleDevice];

          if (v9)
          {
            [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceLost:v9 type:7];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    [(SFBLEScanner *)self->_bleProximityPairingScanner invalidate];
    bleProximityPairingScanner = self->_bleProximityPairingScanner;
    self->_bleProximityPairingScanner = 0;
  }
}

- (void)_activityMonitorUpdate
{
  v15 = 0;
  [(SDNearbyAgent *)self _activityMonitorCurrentLevelAndNeedsPoll:&v15 recentUserActivity:0];
  activityTimer = self->_activityTimer;
  if (v15 == 1)
  {
    if (!activityTimer && self->_activityPollSeconds >= 1)
    {
      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v5 = self->_activityTimer;
      self->_activityTimer = v4;

      v6 = self->_activityTimer;
      if (!v6)
      {
        v12 = sub_100262DD8();
        [(SDNearbyAgent *)v12 _bleNearbyInfoAdvertiserUpdate];
        return;
      }

      v7 = 1000000000 * self->_activityPollSeconds;
      v8 = dispatch_time(0, v7);
      dispatch_source_set_timer(v6, v8, v7, v7 >> 2);
      v9 = self->_activityTimer;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100248BBC;
      v14[3] = &unk_1008CDEA0;
      v14[4] = self;
      dispatch_source_set_event_handler(v9, v14);
      dispatch_resume(self->_activityTimer);
    }
  }

  else if (activityTimer)
  {
    v10 = activityTimer;
    dispatch_source_cancel(v10);
    v11 = self->_activityTimer;
    self->_activityTimer = 0;
  }

  if ([(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAdvertise])
  {
    [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserEnsureStarted];
    [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdate];
  }

  else
  {
    [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserEnsureStopped];
  }
}

- (void)_bleNearbyInfoAdvertiserUpdate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleNearbyInfoAdvertiser)
  {
    return;
  }

  if (dword_100973248 <= 9 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263228();
  }

  v3 = +[NSMutableDictionary dictionary];
  v4 = [(SDNearbyAgent *)self _activityMonitorCurrentLevelAndNeedsPoll:0 recentUserActivity:0];
  if ([(SDNearbyAgent *)self _idsShouldEncryptActivityLevel]>= 1)
  {
    v4 = [(SDNearbyAgent *)self _bleEncryptActivityLevel:v4];
  }

  v5 = [NSNumber numberWithUnsignedChar:v4];
  [v3 setObject:v5 forKeyedSubscript:@"al"];

  if ([(SDStatusMonitor *)self->_statusMonitor screenStateSupportsAirDrop]&& [(SDStatusMonitor *)self->_statusMonitor currentConsoleUser]&& [(SDStatusMonitor *)self->_statusMonitor discoverableLevel]&& [(SDStatusMonitor *)self->_statusMonitor wirelessEnabled])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"adU"];
    self->_bleNearbyInfoAirDropUsable = 1;
  }

  else
  {
    if (self->_bleNearbyInfoAirDropUsable)
    {
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserLingerStart:@"AirDropUsable"];
    }

    self->_bleNearbyInfoAirDropUsable = 0;
  }

  [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAddAudioRoutingScore:v3];
  if (!self->_bleNearbyActionAdvertiseActive)
  {
    [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
    bleAuthTagOverride = self->_bleAuthTagOverride;
    if (bleAuthTagOverride || (bleAuthTagOverride = self->_bleAuthTag) != 0)
    {
      [v3 setObject:bleAuthTagOverride forKeyedSubscript:@"at"];
    }
  }

  [(SDNearbyAgent *)self _bleNearbyInfoAdvertisingUpdateAddCameraState:v3];
  if (self->_shareAudioEnabled && [(SDStatusMonitor *)self->_statusMonitor screenOn]&& ([(CUBluetoothClient *)self->_btConnectedDeviceMonitor statusFlags]& 8) != 0 && [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAddField3])
  {
    v7 = [NSNumber numberWithUnsignedInt:2048];
    [v3 setObject:v7 forKeyedSubscript:@"df"];
  }

  if (self->_enhancedDiscoveryAdvActive)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enD"];
  }

  [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAddHotspotInfo:v3];
  v8 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForLEPipe];
  v9 = [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser lePipeDevices];
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_33;
  }

  if ((v10 == 0) == (v9 != 0))
  {

    goto LABEL_32;
  }

  v12 = [v9 isEqual:v10];

  if ((v12 & 1) == 0)
  {
LABEL_32:
    [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser setLePipeDevices:v11];
  }

LABEL_33:
  v33 = v11;
  if (self->_inDiscoverySession)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"iLagS"];
  }

  v34 = v3;
  unlockAdvertiseEnabled = self->_unlockAdvertiseEnabled;
  unlockAdvertiseWatch = self->_unlockAdvertiseWatch;
  unlockAdvertiseWatchLocked = self->_unlockAdvertiseWatchLocked;
  v35 = byte_1009A0615;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = self->_services;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v37;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:*(*(&v36 + 1) + 8 * i)];
        if (([v22 needsAWDL] & 1) == 0 && (objc_msgSend(v22, "needsKeyboard") & 1) == 0 && (objc_msgSend(v22, "needsSetup") & 1) == 0)
        {
          if ([v22 advertiseRate] > v19)
          {
            v19 = [v22 advertiseRate];
          }

          unlockAdvertiseEnabled |= [v22 autoUnlockEnabled];
          unlockAdvertiseWatch |= [v22 autoUnlockWatch];
          v35 |= [v22 duetSync];
          unlockAdvertiseWatchLocked |= [v22 watchLocked];
        }
      }

      v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v23 = v34;
  if (unlockAdvertiseEnabled)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ue"];
  }

  v24 = unlockAdvertiseWatch;
  if (unlockAdvertiseWatch)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"uw"];
  }

  if (unlockAdvertiseWatchLocked)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"wl"];
  }

  if (v35)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ds"];
  }

  if ([(CUSystemMonitor *)self->_systemMonitor meDeviceIsMe])
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"meD"];
  }

  if (self->_bleNearbyInfoWiFiP2P)
  {
    v25 = [(CUSystemMonitor *)self->_systemMonitor manateeAvailable];
    v26 = [(CUSystemMonitor *)self->_systemMonitor wifiState];
    v27 = [(CUSystemMonitor *)self->_systemMonitor wifiFlags];
    if (_os_feature_enabled_impl())
    {
      if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1000348BC();
      }

      v28 = 0;
      if (!v26)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v28 = (v27 >> 5) & 1;
      if (!v26)
      {
LABEL_72:
        v23 = v34;
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100263248(v26, v28, self, &self->_systemMonitor);
        }

        goto LABEL_75;
      }
    }

    if (v26 != 10 && (v28 & 1) == 0 && ((self->_bleNearbyActionScanner != 0) & v25) == 1)
    {
      v23 = v34;
      [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"wp"];
      goto LABEL_75;
    }

    goto LABEL_72;
  }

LABEL_75:
  if (GestaltGetBoolean())
  {
    [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:@"rgC"];
  }

  if (v19 <= 59 && self->_unlockAdvertiseAggressive || v19 <= 59 && self->_enhancedDiscoveryShouldRun)
  {
    v19 = 60;
  }

  else
  {
    if (self->_cameraState != 1 || v19 >= 40)
    {
      if (self->_unlockAdvertiseBackground)
      {
        v29 = v33;
        if (v19 <= 29)
        {
          v32 = daemon_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            sub_100263350(v32);
          }

          v19 = 30;
        }

        goto LABEL_83;
      }

      if ((unlockAdvertiseEnabled | v24))
      {
        v29 = v33;
        if (v19 > 39)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v29 = v33;
        if ((unlockAdvertiseWatchLocked & (v19 < 40)) == 0)
        {
          if (!v19)
          {
            v19 = 30;
          }

          goto LABEL_83;
        }
      }

      v19 = 40;
      goto LABEL_83;
    }

    v19 = 40;
  }

  v29 = v33;
LABEL_83:
  v30 = 50;
  if (v19 > 50)
  {
    v30 = v19;
  }

  if (self->_boostNearbyInfo)
  {
    v31 = v30;
  }

  else
  {
    v31 = v19;
  }

  if (v31 != [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser advertiseRate])
  {
    [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser setAdvertiseRate:v31];
  }

  [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser setPayloadFields:v23];
  if (!self->_bleNearbyInfoAdvertised)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263394();
    }

    self->_bleNearbyInfoAdvertised = 1;
    [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser activateWithCompletion:&stru_1008D5618];
  }
}

- (void)_bleUpdateAuthTagIfNeeded
{
  if (!self->_bleAuthTag)
  {
    v14[5] = v2;
    v14[6] = v3;
    if (self->_idSelfIdentity)
    {
      v5 = self->_bleAdvertisingAddress;
      if ([(NSData *)v5 length]!= 6)
      {
        v6 = [(CUSystemMonitor *)self->_systemMonitor bluetoothAddressData];

        v5 = v6;
      }

      if ([(NSData *)v5 length]!= 6)
      {
        goto LABEL_13;
      }

      idSelfIdentity = self->_idSelfIdentity;
      v14[0] = 0;
      v8 = [(RPIdentity *)idSelfIdentity authTagForData:v5 type:2 error:v14];
      v9 = v14[0];
      bleAuthTag = self->_bleAuthTag;
      self->_bleAuthTag = v8;

      v11 = self->_bleAuthTag;
      if (!v11)
      {
        sub_1002645A0(dword_100973248);
        goto LABEL_12;
      }

      if (dword_100973248 <= 30)
      {
        if (dword_100973248 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_11;
          }

          v11 = self->_bleAuthTag;
        }

        v13 = v11;
        LogPrintF();
      }

LABEL_11:
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 postNotificationName:@"SDNotificationNameNearbyBLEAuthTagChanged" object:self userInfo:0];

LABEL_12:
LABEL_13:
    }
  }
}

- (id)_idsBluetoothDeviceIDsForLEPipe
{
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SDNearbyAgent *)self idsDeviceArray];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v9)
        {
          [v9 operatingSystemVersion];
        }

        v10 = [v9 modelIdentifier];
        if (([v10 hasPrefix:@"Mac"] & 1) == 0 && !objc_msgSend(v10, "hasPrefix:", @"iMac"))
        {
          [v10 hasPrefix:@"Watch"];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)_bleNearbyInfoAdvertiserShouldAddField3
{
  v3 = +[SDActivityAdvertiser sharedAdvertiser];
  if ([v3 isAdvertising])
  {
    bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;

    if (bleNearbyActionAdvertiser)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

- (void)_bleNearbyInfoScannerEnsureStarted
{
  if (self->_bleNearbyInfoScanner)
  {

    [SDNearbyAgent _bleUpdateScanner:"_bleUpdateScanner:typeFlag:" typeFlag:?];
  }

  else
  {
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100035AA0();
    }

    v3 = [[SFBLEScanner alloc] initWithType:16];
    bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
    self->_bleNearbyInfoScanner = v3;

    [(SFBLEScanner *)self->_bleNearbyInfoScanner setDispatchQueue:self->_dispatchQueue];
    if ([(NSMutableSet *)self->_caRequests count])
    {
      v5 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForSharing];
      [(SFBLEScanner *)self->_bleNearbyInfoScanner setDeviceFilter:v5];
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008F7C;
    v9[3] = &unk_1008CE810;
    v9[4] = self;
    [(SFBLEScanner *)self->_bleNearbyInfoScanner setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024BF84;
    v8[3] = &unk_1008CE810;
    v8[4] = self;
    [(SFBLEScanner *)self->_bleNearbyInfoScanner setDeviceLostHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000302B8;
    v7[3] = &unk_1008CE878;
    v7[4] = self;
    [(SFBLEScanner *)self->_bleNearbyInfoScanner setDeviceChangedHandler:v7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10024C038;
    v6[3] = &unk_1008CEA50;
    v6[4] = self;
    [(SFBLEScanner *)self->_bleNearbyInfoScanner setScanStateChangedHandler:v6];
    [(SDNearbyAgent *)self _bleUpdateScanner:self->_bleNearbyInfoScanner typeFlag:1];
    if (self->_bleNearbyInfoRSSILog)
    {
      [(SFBLEScanner *)self->_bleNearbyInfoScanner setRssiLog:1];
    }

    [(SFBLEScanner *)self->_bleNearbyInfoScanner activateWithCompletion:&stru_1008D5688];
  }
}

- (int)_idsVisionOS2OrHigherCount
{
  result = self->_idsVisionOS2OrHigherCountCache;
  if (result < 0)
  {
    self->_idsVisionOS2OrHigherCountCache = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v13;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 productName];
        if (![v10 isEqualToString:@"xrOS"])
        {
          goto LABEL_12;
        }

        if (!v9)
        {
          v11 = 0;
LABEL_12:

          continue;
        }

        [v9 operatingSystemVersion];

        if (v11 >= 2)
        {
          ++self->_idsVisionOS2OrHigherCountCache;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v6)
      {
LABEL_15:

        return self->_idsVisionOS2OrHigherCountCache;
      }
    }
  }

  return result;
}

- (void)_identificationHandleDiscoveryStop
{
  v2 = 16;
  if (self->_ddNearbyActionEnabled)
  {
    v2 = 0;
  }

  v3 = v2 | !self->_ddNearbyInfoEnabled;
  idDevices = self->_idDevices;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002589E0;
  v5[3] = &unk_1008D5890;
  v5[4] = v3;
  [(NSMutableDictionary *)idDevices enumerateKeysAndObjectsUsingBlock:v5];
}

- (id)sharedNearbyPipe
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = SFDeviceClassCodeGet();
  v5 = v3 == 1 || v3 == 7;
  v2->_btPipeForced = v5;
  if (v2->_activated)
  {
    [(SDNearbyAgent *)v2 _btPipeEnsureStarted];
    v6 = v2->_unlockBtPipe;
  }

  else
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (SDNearbyAgent)init
{
  v11.receiver = self;
  v11.super_class = SDNearbyAgent;
  v2 = [(SDNearbyAgent *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_activityLevelNotifyToken = -1;
    v2->_allowEnhancedDiscovery = -1;
    v2->_caForce = -1;
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_familyNotifyToken = -1;
    v3->_idIdentitiesChangedNotifyToken = -1;
    v3->_idsAppleTVCountCache = -1;
    v3->_idsContinuityDeviceCountCache = -1;
    v3->_idsWatchCountCache = -1;
    v3->_homePodModelCodeOverride = -1;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *&v3->_idsHasActiveWatchCache = v6;
    *&v3->_idsIsSignedInCache = v6;
    v7 = objc_alloc_init(NSMutableSet);
    enhancedDiscoveryUseCases = v3->_enhancedDiscoveryUseCases;
    v3->_enhancedDiscoveryUseCases = v7;

    v3->_wombatActivityToken = -1;
    [(SDNearbyAgent *)v3 prefillDefaultsForGenuineCheckIfNecessary];
    v9 = v3;
  }

  return v3;
}

- (void)prefillDefaultsForGenuineCheckIfNecessary
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Sharing"];
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100261F80(v2);
  }

  v3 = [v2 objectForKey:@"hasDoneGenuineDeviceCheck"];

  if (!v3)
  {
    v24 = 0;
    v4 = [CBDiscovery devicesWithDiscoveryFlags:0x800000 error:&v24];
    v5 = v24;
    v6 = v5;
    if (!v5 || v4)
    {
      v18 = v5;
      v19 = v4;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            if ([v12 deviceFlags])
            {
              if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
              {
                sub_10026201C();
              }

              v13 = [v12 btAddressData];
              if (v13)
              {
                v14 = CUPrintNSDataAddress();
                v15 = [v14 uppercaseString];

                v16 = [v2 objectForKey:v15];

                if (!v16)
                {
                  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10026205C();
                  }

                  [v2 setObject:&off_10090ED30 forKey:v15];
                }
              }
            }

            else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_10026209C();
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v17 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
          v9 = v17;
        }

        while (v17);
      }

      [v2 setBool:1 forKey:@"hasDoneGenuineDeviceCheck"];
      [v2 synchronize];
      v6 = v18;
      v4 = v19;
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002620DC(v2);
      }
    }

    else if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100261FDC();
    }
  }
}

- (void)setAudioRoutingScore:(int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10024581C;
  v4[3] = &unk_1008D5528;
  v5 = a3;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setAutoUnlockActive:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10024599C;
  v4[3] = &unk_1008CF798;
  v5 = a3;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setBoostNearbyInfo:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100245AF8;
  v4[3] = &unk_1008CF798;
  v5 = a3;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setEnhancedDiscovery:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100245C54;
  v4[3] = &unk_1008CF798;
  v5 = a3;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setHotspotInfo:(unsigned int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100245E58;
  v4[3] = &unk_1008D5528;
  v5 = a3;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100245FA0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262138();
  }

  self->_activated = 1;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  if (!self->_bleWPNearby)
  {
    v3 = +[SFBLEClient sharedClient];
    v4 = [v3 addNearbyDelegate:self];
    bleWPNearby = self->_bleWPNearby;
    self->_bleWPNearby = v4;
  }

  if (!self->_btConnectedDeviceMonitor)
  {
    v6 = objc_alloc_init(CUBluetoothClient);
    btConnectedDeviceMonitor = self->_btConnectedDeviceMonitor;
    self->_btConnectedDeviceMonitor = v6;

    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor setDispatchQueue:self->_dispatchQueue];
    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor setFlags:24];
    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor setLabel:@"Sharing-CA"];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1002467E8;
    v35[3] = &unk_1008D5550;
    v35[4] = self;
    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor setDeviceConnectedHandler:v35];
    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor activate];
  }

  if (self->_familyNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1002467F4;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.rapport.familyFlagsChanged", &self->_familyNotifyToken, dispatchQueue, handler);
    familyNotifyToken = self->_familyNotifyToken;
    state64 = 0;
    notify_get_state(familyNotifyToken, &state64);
    self->_familyFlags = state64;
  }

  if (!self->_statusMonitor)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_handleAirDropDiscoverableModeChanged:" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];
    [v10 addObserver:self selector:"_handleAppleIDChanged:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
    [v10 addObserver:self selector:"_handleAppleIDChanged:" name:@"com.apple.sharingd.AppleIDChanged" object:0];
    [v10 addObserver:self selector:"_activityMonitorMediaAccessControlSettingChanged:" name:@"com.apple.sharingd.MediaAccessControlSettingChanged" object:0];
    [v10 addObserver:self selector:"_activityMonitorWatchWristStateChanged:" name:@"com.apple.sharingd.PairedWatchWristStateChanged" object:0];
    [v10 addObserver:self selector:"_activityMonitorScreenStateChanged:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    [v10 addObserver:self selector:"_activityMonitorUILockStatusChanged:" name:@"com.apple.sharingd.UILockStatusChanged" object:0];
    [v10 addObserver:self selector:"_unlockApproveBluetoothIDsChanged:" name:@"ApproveBluetoothIDsChanged" object:0];
    [v10 addObserver:self selector:"_systemWillSleep" name:@"com.apple.sharingd.SystemWillSleep" object:0];
    [v10 addObserver:self selector:"_systemHasPoweredOn" name:@"com.apple.sharingd.SystemHasPoweredOn" object:0];
    [v10 addObserver:self selector:"_btPipeStateChanged:" name:SFNotificationNamePipeConnectionStateChanged object:0];
    [v10 addObserver:self selector:"_smartCoverStatusChanged:" name:@"com.apple.sharingd.SmartCoverClosedChanged" object:0];
    [v10 addObserver:self selector:"_wirelessCriticalChanged:" name:@"com.apple.sharingd.WirelessCriticalChanged" object:0];
    [v10 addObserver:self selector:"_mirroringStateChanged:" name:@"com.apple.sharingd.MirroringStateChanged" object:0];
    v11 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = v11;

    self->_activityScreenOn = [(SDStatusMonitor *)self->_statusMonitor screenOn];
    self->_activityUIUnlocked = [(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked];
  }

  if (!self->_systemMonitor)
  {
    v13 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v13;

    [(CUSystemMonitor *)self->_systemMonitor setMeDeviceUseFindMyLocate:1];
    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10024687C;
    v33[3] = &unk_1008CDEA0;
    v33[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setBluetoothAddressChangedHandler:v33];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000329CC;
    v32[3] = &unk_1008CDEA0;
    v32[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setCallChangedHandler:v32];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1002468E4;
    v31[3] = &unk_1008CDEA0;
    v31[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v31];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10024694C;
    v30[3] = &unk_1008CDEA0;
    v30[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setManateeChangedHandler:v30];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1002469AC;
    v29[3] = &unk_1008CDEA0;
    v29[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setMeDeviceChangedHandler:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100246A14;
    v28[3] = &unk_1008CDEA0;
    v28[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v28];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100246A88;
    v27[3] = &unk_1008CDEA0;
    v27[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v27];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100246B0C;
    v26[3] = &unk_1008CDEA0;
    v26[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenSaverChangedHandler:v26];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100015DEC;
    v25[3] = &unk_1008CDEA0;
    v25[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setSystemLockStateChangedHandler:v25];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100246B74;
    v24[3] = &unk_1008CDEA0;
    v24[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setWifiStateChangedHandler:v24];
    v15 = self->_systemMonitor;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100246BDC;
    v23[3] = &unk_1008CDEA0;
    v23[4] = self;
    [(CUSystemMonitor *)v15 activateWithCompletion:v23];
  }

  [(SDNearbyAgent *)self _idsEnsureStarted];
  [(SDNearbyAgent *)self prefsChanged];
  if (!self->_wifiManager)
  {
    v16 = +[CUTWiFiManager sharedInstance];
    wifiManager = self->_wifiManager;
    self->_wifiManager = v16;

    [(CUTWiFiManager *)self->_wifiManager addDelegate:self];
  }

  DeviceClass = GestaltGetDeviceClass();
  if ((DeviceClass == 7 || DeviceClass == 4) && !self->_systemService)
  {
    v19 = objc_alloc_init(SFSystemService);
    systemService = self->_systemService;
    self->_systemService = v19;

    [(SFSystemService *)self->_systemService setDispatchQueue:self->_dispatchQueue];
    [(SFSystemService *)self->_systemService activate];
  }

  [(SDNearbyAgent *)self _registerForMagicMountUpdates];
  v21 = objc_alloc_init(_TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager);
  digitalEngravingManager = self->_digitalEngravingManager;
  self->_digitalEngravingManager = v21;

  [(HeadphoneDigitalEngravingManager *)self->_digitalEngravingManager setFetchEngravingDataHandler:&stru_1008D5590];
  [(SDNearbyAgent *)self _registerForWombatActivityNotification];
  if ([(SDNearbyAgent *)self _onlyRingVisionDeviceWhenDonned])
  {
    [(SDNearbyAgent *)self _registerForDonStateRequest];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100246E28;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002622D8();
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  if (self->_statusMonitor)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.AppleIDChanged" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.MediaAccessControlSettingChanged" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.PairedWatchWristStateChanged" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.UILockStatusChanged" object:0];
    [v4 removeObserver:self name:@"ApproveBluetoothIDsChanged" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.SystemWillSleep" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.SystemHasPoweredOn" object:0];
    [v4 removeObserver:self name:SFNotificationNamePipeConnectionStateChanged object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.SmartCoverClosedChanged" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.WirelessCriticalChanged" object:0];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = 0;
  }

  airDropController = self->_airDropController;
  self->_airDropController = 0;

  [(CUBluetoothClient *)self->_btConnectedDeviceMonitor invalidate];
  btConnectedDeviceMonitor = self->_btConnectedDeviceMonitor;
  self->_btConnectedDeviceMonitor = 0;

  [(SDNearbyAgent *)self _activityMonitorEnsureStopped];
  [(SDNearbyAgent *)self _identificationEnsureStopped];
  [(SDNearbyAgent *)self _bleNearbyActionAdvertiserEnsureStopped];
  [(SDNearbyAgent *)self _bleNearbyActionScannerEnsureStopped];
  [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserEnsureStopped];
  [(SDNearbyAgent *)self _bleNearbyInfoScannerEnsureStopped];
  [(SDNearbyAgent *)self _bleProximityPairingScannerEnsureStopped];
  cameraMagicMountManager = self->_cameraMagicMountManager;
  if (cameraMagicMountManager)
  {
    [(CMMagicMountManager *)cameraMagicMountManager stopMagicMountUpdates];
    v9 = self->_cameraMagicMountManager;
    self->_cameraMagicMountManager = 0;
  }

  brightnessSystemClient = self->_brightnessSystemClient;
  self->_brightnessSystemClient = 0;

  cameraConfigChangeTimer = self->_cameraConfigChangeTimer;
  if (cameraConfigChangeTimer)
  {
    v12 = cameraConfigChangeTimer;
    dispatch_source_cancel(v12);
    v13 = self->_cameraConfigChangeTimer;
    self->_cameraConfigChangeTimer = 0;
  }

  v14 = self;
  objc_sync_enter(v14);
  [(SDNearbyAgent *)v14 _btPipeEnsureStopped];
  objc_sync_exit(v14);

  familyNotifyToken = v14->_familyNotifyToken;
  if (familyNotifyToken != -1)
  {
    notify_cancel(familyNotifyToken);
    v14->_familyNotifyToken = -1;
  }

  [(SDNearbyAgent *)v14 _idsEnsureStopped];
  [(SDNearbyAgent *)v14 _unregisterForWombatActivityNotification];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = v14->_bleConnections;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v17)
  {
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v44 + 1) + 8 * i) invalidate];
      }

      v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v17);
  }

  [(NSMutableDictionary *)v14->_bleConnections removeAllObjects];
  bleConnections = v14->_bleConnections;
  v14->_bleConnections = 0;

  [(NSMutableSet *)v14->_bleDiagnosticModeClients removeAllObjects];
  bleDiagnosticModeClients = v14->_bleDiagnosticModeClients;
  v14->_bleDiagnosticModeClients = 0;

  v22 = +[SFBLEClient sharedClient];
  [v22 removeNearbyDelegate:v14];

  bleWPNearby = v14->_bleWPNearby;
  v14->_bleWPNearby = 0;

  [(NSMutableSet *)v14->_caRequests removeAllObjects];
  caRequests = v14->_caRequests;
  v14->_caRequests = 0;

  [(NSMutableSet *)v14->_ddRequests removeAllObjects];
  [(NSMutableSet *)v14->_caRequestsNoScans removeAllObjects];
  caRequestsNoScans = v14->_caRequestsNoScans;
  v14->_caRequestsNoScans = 0;

  ddRequests = v14->_ddRequests;
  v14->_ddRequests = 0;

  ddFastScanTimer = v14->_ddFastScanTimer;
  if (ddFastScanTimer)
  {
    v28 = ddFastScanTimer;
    dispatch_source_cancel(v28);
    v29 = v14->_ddFastScanTimer;
    v14->_ddFastScanTimer = 0;
  }

  [(NSMutableDictionary *)v14->_ddNearbyActionDevices removeAllObjects];
  ddNearbyActionDevices = v14->_ddNearbyActionDevices;
  v14->_ddNearbyActionDevices = 0;

  [(NSMutableDictionary *)v14->_ddNearbyInfoDevices removeAllObjects];
  ddNearbyInfoDevices = v14->_ddNearbyInfoDevices;
  v14->_ddNearbyInfoDevices = 0;

  [(NSMutableDictionary *)v14->_ddProximityPairingDevices removeAllObjects];
  ddProximityPairingDevices = v14->_ddProximityPairingDevices;
  v14->_ddProximityPairingDevices = 0;

  [(NSMutableDictionary *)v14->_deliveredDonnedIdentifiers removeAllObjects];
  deliveredDonnedIdentifiers = v14->_deliveredDonnedIdentifiers;
  v14->_deliveredDonnedIdentifiers = 0;

  [(NSMutableDictionary *)v14->_donnedDevices removeAllObjects];
  donnedDevices = v14->_donnedDevices;
  v14->_donnedDevices = 0;

  [(SDNearbyAgent *)v14 _cancelDonStateRetryTimers];
  [(NSMutableDictionary *)v14->_donStateRetryTimerDictionary removeAllObjects];
  donStateRetryTimerDictionary = v14->_donStateRetryTimerDictionary;
  v14->_donStateRetryTimerDictionary = 0;

  [(RPCompanionLinkClient *)v14->_receiveDonStateClient invalidate];
  receiveDonStateClient = v14->_receiveDonStateClient;
  v14->_receiveDonStateClient = 0;

  [(NSMutableDictionary *)v14->_services removeAllObjects];
  services = v14->_services;
  v14->_services = 0;

  [(NSMutableDictionary *)v14->_sessions removeAllObjects];
  sessions = v14->_sessions;
  v14->_sessions = 0;

  [(NSMutableDictionary *)v14->_setupSessions removeAllObjects];
  setupSessions = v14->_setupSessions;
  v14->_setupSessions = 0;

  [(SFSystemService *)v14->_systemService invalidate];
  systemService = v14->_systemService;
  v14->_systemService = 0;

  unlockTestClientTimer = v14->_unlockTestClientTimer;
  if (unlockTestClientTimer)
  {
    v42 = unlockTestClientTimer;
    dispatch_source_cancel(v42);
    v43 = v14->_unlockTestClientTimer;
    v14->_unlockTestClientTimer = 0;
  }
}

- (void)_handleAirDropDiscoverableModeChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024743C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleAppleIDChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100247528;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleBluetoothDeviceConnected:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v6 notifyForNonGenuineDevice:v5];

  v7 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v7 promptForAdaptiveControlsProxForDevice:v5];

  v8 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v8 promptForWhatsNewProxForDevice:v5];

  v9 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v9 promptForSiriNotificationsForDevice:v5];

  v10 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v10 promptForSpatialAudioProfileForDevice:v5];

  [(HeadphoneDigitalEngravingManager *)self->_digitalEngravingManager deviceDidConnect:v5];

  [(SDNearbyAgent *)self _update];
}

- (void)prefsChanged
{
  v74 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  Int64 = CFPrefs_GetInt64();
  v4 = 1000;
  if (Int64 < 1000)
  {
    v4 = Int64;
  }

  if (v4 <= 1)
  {
    LODWORD(v4) = 1;
  }

  if (Int64 < 0)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
  }

  activityPollSeconds = self->_activityPollSeconds;
  if (v5 != activityPollSeconds)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        activityPollSeconds = self->_activityPollSeconds;
      }

      v72 = activityPollSeconds;
      v73 = *&v5;
      LogPrintF();
    }

LABEL_13:
    self->_activityPollSeconds = v5;
  }

  v7 = CFPrefs_GetInt64();
  v8 = 1000;
  if (v7 < 1000)
  {
    v8 = v7;
  }

  *&v9 = v8 & ~(v8 >> 63);
  activityRecentSeconds = self->_activityRecentSeconds;
  if (LODWORD(v9) != activityRecentSeconds)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        activityRecentSeconds = self->_activityRecentSeconds;
      }

      v72 = activityRecentSeconds;
      v73 = v9;
      LogPrintF();
    }

LABEL_21:
    self->_activityRecentSeconds = LODWORD(v9);
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_btPipeEnabled != v11)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026232C();
    }

    self->_btPipeEnabled = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_caEnabled != v12)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262384();
    }

    self->_caEnabled = v12;
  }

  v13 = CFPrefs_GetInt64();
  if (v13 < 0)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = v13 != 0;
  }

  caForce = self->_caForce;
  if (v14 != caForce)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        caForce = self->_caForce;
      }

      v72 = caForce;
      v73 = *&v14;
      LogPrintF();
    }

LABEL_40:
    self->_caForce = v14;
  }

  v16 = CFPrefs_GetInt64() != 0;
  if (self->_caPhoneCalls != v16)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002623DC();
    }

    self->_caPhoneCalls = v16;
  }

  v17 = CFPrefs_GetInt64() != 0;
  if (self->_caPhoneCallsOnlyRingDonnedDevice != v17)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262434();
    }

    self->_caPhoneCallsOnlyRingDonnedDevice = v17;
  }

  v18 = CFPrefs_GetInt64() != 0;
  if (self->_caScanIfVeryActive != v18)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026248C();
    }

    self->_caScanIfVeryActive = v18;
  }

  v19 = CFPrefs_GetInt64() != 0;
  if (self->_caScanIfHasVisionOS1 != v19)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002624E4();
    }

    self->_caScanIfHasVisionOS1 = v19;
  }

  v20 = CFPrefs_GetInt64() != 0;
  if (self->_caSingleDevice != v20)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026253C();
    }

    self->_caSingleDevice = v20;
  }

  v21 = CFPrefs_GetInt64();
  if (v21 >= 480)
  {
    v22 = 480;
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= 1)
  {
    LODWORD(v22) = 1;
  }

  *&v23 = v22;
  donnedDeviceScanIntervalSeconds = self->_donnedDeviceScanIntervalSeconds;
  if (v22 != donnedDeviceScanIntervalSeconds)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_76;
        }

        donnedDeviceScanIntervalSeconds = self->_donnedDeviceScanIntervalSeconds;
      }

      v72 = donnedDeviceScanIntervalSeconds;
      v73 = v23;
      LogPrintF();
    }

LABEL_76:
    self->_donnedDeviceScanIntervalSeconds = LODWORD(v23);
  }

  v25 = CFPrefs_GetInt64() != 0;
  if (self->_idEnabled != v25)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262594();
    }

    self->_idEnabled = v25;
  }

  v26 = CFPrefs_GetInt64() != 0;
  if (self->_ignoreWatchWristLockState != v26)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002625EC();
    }

    self->_ignoreWatchWristLockState = v26;
  }

  v27 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyActionAdvertiseDisabled != v27)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262644();
    }

    self->_bleNearbyActionAdvertiseDisabled = v27;
  }

  v28 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyActionRSSILog != v28)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026269C();
    }

    self->_bleNearbyActionRSSILog = v28;
  }

  v29 = CFPrefs_GetInt64();
  v30 = v29 != 0;
  if (self->_bleNearbyActionScanAlways != v30)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002626F4();
    }

    self->_bleNearbyActionScanAlways = v30;
  }

  v31 = v29 == 0;
  if (self->_bleNearbyActionScanNever != v31)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026274C();
    }

    self->_bleNearbyActionScanNever = v31;
  }

  CFPrefs_GetData();
  v32 = [[NSData alloc] initWithBytes:&v74 length:0];
  bleAuthTagOverride = self->_bleAuthTagOverride;
  *&v34 = COERCE_DOUBLE(v32);
  v35 = bleAuthTagOverride;
  v36 = v35;
  if (v34 == v35)
  {

    v38 = v34;
LABEL_118:

    goto LABEL_119;
  }

  if ((v34 != 0) == (v35 == 0))
  {

LABEL_113:
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      v72 = self->_bleAuthTagOverride;
      v73 = *&v34;
      LogPrintF();
    }

    v39 = v34;
    v38 = self->_bleAuthTagOverride;
    self->_bleAuthTagOverride = v39;
    goto LABEL_118;
  }

  v37 = [(NSData *)v34 isEqual:v35];

  if ((v37 & 1) == 0)
  {
    goto LABEL_113;
  }

LABEL_119:
  v40 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyInfoAdvertiseAlways != v40)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002627A4();
    }

    self->_bleNearbyInfoAdvertiseAlways = v40;
  }

  v41 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyInfoAdvertiseDisabled != v41)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002627FC();
    }

    self->_bleNearbyInfoAdvertiseDisabled = v41;
  }

  CFPrefs_GetDouble();
  if (v42 <= 1000.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 5.0;
  }

  bleNearbyInfoAdvertiseLingerSecs = self->_bleNearbyInfoAdvertiseLingerSecs;
  if (v43 != bleNearbyInfoAdvertiseLingerSecs)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_137;
        }

        bleNearbyInfoAdvertiseLingerSecs = self->_bleNearbyInfoAdvertiseLingerSecs;
      }

      v72 = *&bleNearbyInfoAdvertiseLingerSecs;
      v73 = v43;
      LogPrintF();
    }

LABEL_137:
    self->_bleNearbyInfoAdvertiseLingerSecs = v43;
  }

  v45 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyInfoRSSILog != v45)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262854();
    }

    self->_bleNearbyInfoRSSILog = v45;
  }

  v46 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyInfoWiFiP2P != v46)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002628AC();
    }

    self->_bleNearbyInfoWiFiP2P = v46;
  }

  v47 = CFPrefs_GetInt64() != 0;
  if (self->_contactHashesEnabled != v47)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262904();
    }

    self->_contactHashesEnabled = v47;
  }

  v48 = CFPrefs_GetInt64() != 0;
  if (self->_logProxAdvFields != v48)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026295C();
    }

    self->_logProxAdvFields = v48;
  }

  v49 = CFPrefs_GetInt64() != 0;
  if (self->_bleProximityEnabled != v49)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002629B4();
    }

    self->_bleProximityEnabled = v49;
  }

  CFDictionaryGetTypeID();
  v50 = CFPrefs_CopyTypedValue();
  bleProximityInfoOverride = self->_bleProximityInfoOverride;
  v52 = v50;
  v53 = bleProximityInfoOverride;
  v54 = v53;
  if (v52 == v53)
  {

    v56 = v52;
LABEL_173:

    goto LABEL_174;
  }

  if ((v52 != 0) == (v53 == 0))
  {

LABEL_169:
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262A0C();
    }

    v57 = v52;
    v56 = self->_bleProximityInfoOverride;
    self->_bleProximityInfoOverride = v57;
    goto LABEL_173;
  }

  v55 = [(NSDictionary *)v52 isEqual:v53];

  if ((v55 & 1) == 0)
  {
    goto LABEL_169;
  }

LABEL_174:
  CFDictionaryGetTypeID();
  v58 = CFPrefs_CopyTypedValue();

  if (!v58)
  {
    v59 = [(SDNearbyAgent *)self bleProximityRSSIEstimatorInfo];
    if (!v59)
    {
      goto LABEL_178;
    }

    v58 = v59;
  }

  [SFBLEDevice setRSSIEstimatorInfo:v58, v72, *&v73];

LABEL_178:
  v60 = CFPrefs_GetInt64() != 0;
  if (self->_bleProximityRSSILog != v60)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262A4C();
    }

    self->_bleProximityRSSILog = v60;
  }

  v61 = CFPrefs_GetInt64() != 0;
  if (self->_shareAudioEnabled != v61)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262AA4();
    }

    self->_shareAudioEnabled = v61;
  }

  v62 = CFPrefs_GetInt64() != 0;
  if (self->_homePodIdentifiesAsB520 != v62)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262AFC();
    }

    self->_homePodIdentifiesAsB520 = v62;
  }

  v63 = CFPrefs_GetInt64() != 0;
  if (self->_homePodIdentifiesAsB620 != v63)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262B54();
    }

    self->_homePodIdentifiesAsB620 = v63;
  }

  *&v64 = COERCE_DOUBLE(CFPrefs_GetInt64());
  homePodModelCodeOverride = self->_homePodModelCodeOverride;
  if (v64 != homePodModelCodeOverride)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_203;
        }

        homePodModelCodeOverride = self->_homePodModelCodeOverride;
      }

      v72 = homePodModelCodeOverride;
      v73 = *&v64;
      LogPrintF();
    }

LABEL_203:
    self->_homePodModelCodeOverride = v64;
  }

  v66 = CFPrefs_GetInt64() != 0;
  if (self->_isRIClientEnabled != v66)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262BAC();
    }

    self->_isRIClientEnabled = v66;
  }

  v67 = CFPrefs_GetInt64() != 0;
  if (self->_simulateDonStateChanges != v67)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262C04();
    }

    self->_simulateDonStateChanges = v67;
  }

  v68 = CFPrefs_GetInt64() != 0;
  if (self->_prefWombatAssumeScreenOff != v68)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262C5C();
    }

    self->_prefWombatAssumeScreenOff = v68;
    [(SDNearbyAgent *)self _updateCameraState:v72];
  }

  v69 = CFPrefs_GetInt64() != 0;
  if (self->_prefWombatAssumeLocked != v69)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262CB4();
    }

    self->_prefWombatAssumeLocked = v69;
    [(SDNearbyAgent *)self _updateCameraState:v72];
  }

  v70 = CFPrefs_GetInt64() != 0;
  if (self->_prefWombatAssumeMounted != v70)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262D0C();
    }

    self->_prefWombatAssumeMounted = v70;
    [(SDNearbyAgent *)self _updateCameraState:v72];
  }

  v71 = CFPrefs_GetInt64() != 0;
  if (self->_prefWombatAssumeNotInPocket != v71)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262D64();
    }

    self->_prefWombatAssumeNotInPocket = v71;
    [(SDNearbyAgent *)self _updateCameraState:v72];
  }

  [(SDNearbyAgent *)self _update:v72];
}

- (void)update
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100248A68;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_useCasesToHexString:(id)a3
{
  v3 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = [*(*(&v12 + 1) + 8 * i) unsignedIntValue];
        NSAppendPrintF();
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:{16, v11}];
    }

    while (v5);
  }

  v8 = v16;
  if (!v16)
  {
    v8 = &stru_1008EFBD0;
  }

  v9 = v8;

  return v9;
}

- (unsigned)_activityMonitorCurrentLevelAndNeedsPoll:(BOOL *)a3 recentUserActivity:(BOOL *)a4
{
  [(SDNearbyAgent *)self _activityMonitorLastUserEventDelta];
  v8 = v7;
  if (!self->_activityMonitorStarted || [(SDStatusMonitor *)self->_statusMonitor multipleUsersLoggedIn])
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_11;
  }

  if ([(CUSystemMonitor *)self->_systemMonitor activeCallCount]>= 1 && (!SFDeviceIsRealityDevice() || [(SDStatusMonitor *)self->_statusMonitor deviceKeyBagUnlockedAndScreenOn]))
  {
    v10 = 0;
    v11 = 14;
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if ([(SDStatusMonitor *)self->_statusMonitor carplayConnected])
  {
    v10 = 0;
    v11 = 13;
    goto LABEL_10;
  }

  if ([(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked])
  {
    if (v8 <= self->_activityRecentSeconds)
    {
      v11 = 11;
      goto LABEL_34;
    }

    if ([(SDStatusMonitor *)self->_statusMonitor pairedWatchWristState]== 3)
    {
      v11 = 10;
LABEL_34:
      v9 = 1;
      v10 = 1;
      goto LABEL_11;
    }

    if (SFDeviceClassCodeGet() == 3 && [(SDStatusMonitor *)self->_statusMonitor smartCoverIsClosed])
    {
      goto LABEL_42;
    }

    if ([(SDStatusMonitor *)self->_statusMonitor screenOn])
    {
      v9 = 0;
      v10 = 1;
      v11 = 7;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      if (SFDeviceClassCodeGet() == 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }
    }
  }

  else
  {
    if ([(SDStatusMonitor *)self->_statusMonitor pairedWatchWristState]== 3)
    {
      v10 = 0;
      v11 = 10;
      goto LABEL_10;
    }

    if (SFDeviceClassCodeGet() == 3 && [(SDStatusMonitor *)self->_statusMonitor smartCoverIsClosed])
    {
LABEL_42:
      v9 = 0;
      v10 = 0;
      v11 = 2;
      goto LABEL_11;
    }

    v9 = 0;
    v10 = 0;
    if ([(SDStatusMonitor *)self->_statusMonitor screenOn])
    {
      v11 = 7;
    }

    else
    {
      v11 = 3;
    }
  }

LABEL_11:
  activityLevel = self->_activityLevel;
  if (v11 == activityLevel)
  {
    goto LABEL_22;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      activityLevel = self->_activityLevel;
    }

    if (activityLevel > 0xE)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_1008D60A0[activityLevel];
    }

    v16 = activityLevel;
    v17 = v13;
    v18 = v11;
    v19 = off_1008D5AA0[v11 - 1];
    LogPrintF();
  }

LABEL_20:
  self->_activityLevel = v11;
  [(SDNearbyAgent *)self _activityMonitorUpdateUserActive:v9, v16, v17, v18, v19];
  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  if (activityLevelNotifyToken != -1)
  {
    notify_set_state(activityLevelNotifyToken, v11);
    notify_post("com.apple.sharing.activity-level-changed");
  }

LABEL_22:
  if (a3)
  {
    *a3 = v10;
  }

  if (a4)
  {
    *a4 = v8 <= self->_activityRecentSeconds;
  }

  return v11;
}

- (void)_activityMonitorCarPlayStatusChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100248EF0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activityMonitorMultipleUsersLoggedInChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100249040;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activityMonitorScreenStateChanged:(id)a3
{
  v4 = [(SDStatusMonitor *)self->_statusMonitor screenOn];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002491A8;
  v6[3] = &unk_1008CF798;
  v6[4] = self;
  v7 = v4;
  dispatch_async(dispatchQueue, v6);
}

- (void)_activityMonitorUILockStatusChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100249270;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activityMonitorUpdateUserActive:(BOOL)a3
{
  if (self->_activityUserActive != a3)
  {
    self->_activityUserActive = a3;
    if (!a3 && self->_bleNearbyInfoAdvertiseLingerSecs > 0.0)
    {
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserLingerStart:@"UserActive"];
    }
  }
}

- (void)_activityMonitorMediaAccessControlSettingChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002493C0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activityMonitorWatchWristStateChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002494F8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activityStateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024965C;
  v7[3] = &unk_1008CE708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_bleNearbyActionAdvertiserEnsureStopped
{
  self->_bleDiagnosticAdvSuppressLogged = 0;
  self->_bleNearbyActionAdvertiseActive = 0;
  if (self->_bleNearbyActionAdvertiser && dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263044();
  }

  [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser invalidate];
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  self->_bleNearbyActionAdvertiser = 0;

  bleNearbyActionAdvertiseLingerTimer = self->_bleNearbyActionAdvertiseLingerTimer;
  if (bleNearbyActionAdvertiseLingerTimer)
  {
    v6 = bleNearbyActionAdvertiseLingerTimer;
    dispatch_source_cancel(v6);
    v5 = self->_bleNearbyActionAdvertiseLingerTimer;
    self->_bleNearbyActionAdvertiseLingerTimer = 0;
  }
}

- (void)_bleNearbyActionScannerEnsureStopped
{
  if (self->_bleNearbyActionScanner && dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263140();
  }

  [(SFBLEScanner *)self->_bleNearbyActionScanner invalidate];
  bleNearbyActionScanner = self->_bleNearbyActionScanner;
  self->_bleNearbyActionScanner = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_bleNearbyActionDevices allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_bleNearbyActionDevices objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceLost:v9 type:15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_bleNearbyActionDevices removeAllObjects];
  bleNearbyActionDevices = self->_bleNearbyActionDevices;
  self->_bleNearbyActionDevices = 0;
}

- (void)_bleNearbyInfoAdvertiserUpdateAdvertiseReason:(id)a3
{
  v5 = a3;
  if (self->_bleNearbyInfoAdvertiseReason != v5)
  {
    self->_bleNearbyInfoAdvertiseReasonChanged = 1;
    v6 = v5;
    objc_storeStrong(&self->_bleNearbyInfoAdvertiseReason, a3);
    v5 = v6;
  }
}

- (void)_bleNearbyInfoAdvertiserUpdateAddAudioRoutingScore:(id)a3
{
  v4 = a3;
  audioRoutingScore = self->_audioRoutingScore;
  if (audioRoutingScore)
  {
    if ([(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAddField3])
    {
      v6 = self->_bleAudioRoutingScoreEncryptedData;
      if (v6)
      {
LABEL_4:
        [v4 setObject:v6 forKeyedSubscript:@"ars"];

        goto LABEL_17;
      }

      v7 = [(RPIdentity *)self->_idSelfIdentity deviceIRKData];
      if ([v7 length])
      {
        [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
        v8 = self->_bleAuthTag;
        if ([(NSData *)v8 length])
        {
          memset(v11, 0, sizeof(v11));
          [v7 bytes];
          [v7 length];
          [(NSData *)v8 bytes];
          [(NSData *)v8 length];
          CryptoHKDF();
          v10 = audioRoutingScore & 7;
          ccchacha20();
          v6 = [NSData _newZeroingDataWithBytes:&v10 length:1, v11];
          bleAudioRoutingScoreEncryptedData = self->_bleAudioRoutingScoreEncryptedData;
          self->_bleAudioRoutingScoreEncryptedData = v6;

          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100263430(audioRoutingScore);
          }

          goto LABEL_4;
        }
      }

      goto LABEL_17;
    }

    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263414();
    }
  }

LABEL_17:
}

- (void)_bleNearbyInfoAdvertiserUpdateAddHotspotInfo:(id)a3
{
  v4 = a3;
  hotspotInfo = self->_hotspotInfo;
  if (!hotspotInfo)
  {
    goto LABEL_16;
  }

  v6 = +[SDActivityAdvertiser sharedAdvertiser];
  v7 = [v6 isAdvertising];

  if (!v7)
  {
    v8 = self->_bleHotspotEncryptedData;
    if (v8)
    {
LABEL_8:
      [v4 setObject:v8 forKeyedSubscript:{@"hsi", v12, v13}];

      goto LABEL_16;
    }

    v9 = [(RPIdentity *)self->_idSelfIdentity deviceIRKData];
    if ([v9 length])
    {
      [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
      v10 = self->_bleAuthTag;
      if ([(NSData *)v10 length])
      {
        memset(v15, 0, sizeof(v15));
        [v9 bytes];
        [v9 length];
        [(NSData *)v10 bytes];
        [(NSData *)v10 length];
        CryptoHKDF();
        v14 = hotspotInfo;
        ccchacha20();
        v8 = [NSData _newZeroingDataWithBytes:&v14 length:1, v15];
        bleHotspotEncryptedData = self->_bleHotspotEncryptedData;
        self->_bleHotspotEncryptedData = v8;

        if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          v12 = hotspotInfo;
          v13 = v8;
          LogPrintF();
        }

        goto LABEL_8;
      }
    }

    goto LABEL_16;
  }

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263480();
  }

LABEL_16:
}

- (void)_bleNearbyInfoAdvertisingUpdateAddCameraState:(id)a3
{
  if (self->_cameraState == 1)
  {
    [a3 setObject:&off_10090C210 forKeyedSubscript:@"camS"];
  }
}

- (unsigned)_bleEncryptActivityLevel:(unsigned __int8)a3
{
  v5 = [(RPIdentity *)self->_idSelfIdentity deviceIRKData];
  if ([v5 length])
  {
    [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
    if ([(NSData *)self->_bleAuthTag length])
    {
      [v5 bytes];
      [v5 length];
      [(NSData *)self->_bleAuthTag bytes];
      [(NSData *)self->_bleAuthTag length];
      CryptoHKDF();
      ccchacha20();
      v6 = a3 & 0xF;
      if (dword_100973248 <= 20)
      {
        if (dword_100973248 != -1 || (v7 = _LogCategory_Initialize(), v6 = a3 & 0xF, v7))
        {
          LogPrintF();
          v6 = a3 & 0xF;
        }
      }

      a3 = v6;
    }

    else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026349C();
    }
  }

  else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002634B8();
  }

  return a3;
}

- (void)_bleNearbyInfoAdvertiserLingerStart:(id)a3
{
  v4 = a3;
  if (self->_bleNearbyInfoAdvertiseLingerSecs > 0.0)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    bleNearbyInfoAdvertiseLingerTimer = self->_bleNearbyInfoAdvertiseLingerTimer;
    if (bleNearbyInfoAdvertiseLingerTimer)
    {
      v6 = bleNearbyInfoAdvertiseLingerTimer;
      dispatch_source_cancel(v6);
      v7 = self->_bleNearbyInfoAdvertiseLingerTimer;
      self->_bleNearbyInfoAdvertiseLingerTimer = 0;
    }

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v9 = self->_bleNearbyInfoAdvertiseLingerTimer;
    self->_bleNearbyInfoAdvertiseLingerTimer = v8;
    v10 = v8;

    CUDispatchTimerSet();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10024A704;
    handler[3] = &unk_1008CE900;
    handler[4] = v10;
    handler[5] = self;
    v12 = v4;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_activate(v10);
  }
}

- (void)_bleNearbyInfoReceivedData:(id)a3 cnx:(id)a4 peer:(id)a5
{
  v32 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v32;
  v11 = [v32 bytes];
  v12 = [v32 length];
  v13 = v12;
  if (v12 <= 0)
  {
    if ((sub_10026379C() & 1) == 0)
    {
LABEL_55:
      sub_100263830();
    }
  }

  else
  {
    v14 = *v11;
    v15 = 1;
    v16 = 1;
    switch(*v11)
    {
      case 1u:
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100263740();
        }

        break;
      case 2u:
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100263700();
        }

        v22 = [NSMutableData dataWithData:v32, v32];
        if (!v22)
        {
          goto LABEL_55;
        }

        v23 = v22;
        *[v22 mutableBytes] = 3;
        [v8 sendData:v23 completion:0];
        goto LABEL_48;
      case 3u:
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002636C0();
        }

        break;
      case 5u:
      case 6u:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x1Cu:
      case 0x1Du:
        goto LABEL_5;
      case 7u:
        v20 = [v32 subdataWithRange:{1, objc_msgSend(v32, "length") - 1}];
        v21 = [v8 peerDevice];
        [(SDNearbyAgent *)self _unlockReceivedFrameData:v20 peer:v9 device:v21];

        break;
      case 8u:
      case 9u:
      case 0xAu:
        if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100263670(v32);
        }

        if ([(SDNearbyAgent *)self _bleNearbyInfoReceivedFrameType:v14 src:v11 + 1 end:&v13[v11] cnx:v8, v32])
        {
          goto LABEL_55;
        }

        break;
      case 0xBu:
        remoteAppServiceUUID = self->_remoteAppServiceUUID;
        if (!remoteAppServiceUUID)
        {
          v25 = [[NSUUID alloc] initWithUUIDBytes:&unk_1007F54CD];
          v26 = self->_remoteAppServiceUUID;
          self->_remoteAppServiceUUID = v25;

          remoteAppServiceUUID = self->_remoteAppServiceUUID;
        }

        v27 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:remoteAppServiceUUID, v32];
        v23 = v27;
        if (v27)
        {
          v28 = [v27 eventMessageHandler];

          if (v28)
          {
            v29 = objc_alloc_init(SFEventMessage);
            v30 = [v32 subdataWithRange:{1, objc_msgSend(v32, "length") - 1}];
            [v29 setBodyData:v30];

            v31 = [v23 eventMessageHandler];
            (v31)[2](v31, v29);

            goto LABEL_48;
          }

          if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            goto LABEL_63;
          }
        }

        else if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
LABEL_63:
          sub_100263658();
        }

LABEL_48:

        break;
      case 0x15u:
      case 0x17u:
      case 0x40u:
      case 0x41u:
        v16 = 0;
        goto LABEL_5;
      case 0x16u:
      case 0x18u:
      case 0x1Eu:
      case 0x30u:
      case 0x31u:
        v15 = 0;
LABEL_5:
        if (v12 != 1)
        {
          v17 = v11[1];
          if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100263518(v14, v17, v32);
          }

          v18 = [v32 length];
          v19 = [v32 subdataWithRange:{2, v18 - 2}];
          if (v15)
          {
            [(SDNearbyAgent *)self serviceReceivedFrameType:v14 serviceType:v17 data:v19 peer:v9];
          }

          if (v16)
          {
            [(SDNearbyAgent *)self sessionReceivedFrameType:v14 serviceType:v17 data:v19 peer:v9];
          }

          break;
        }

        if (sub_1002635B8(*v11, &v33))
        {
          break;
        }

        goto LABEL_55;
      case 0x20u:
        [(SDNearbyAgent *)self _setupHandleCreateSession:v8 data:v32];
        break;
      case 0x21u:
        [(SDNearbyAgent *)self _setupHandleSessionCreated:v8 data:v32];
        break;
      case 0x22u:
      case 0x23u:
      case 0x24u:
        [(SDNearbyAgent *)self _setupHandleSessionEncryptedFrame:v32 type:*v11 cnx:v8];
        break;
      default:
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_10026375C();
        }

        break;
    }
  }
}

- (int)_bleNearbyInfoReceivedFrameType:(unsigned __int8)a3 src:(const char *)a4 end:(const char *)a5 cnx:(id)a6
{
  v8 = a3;
  v76 = a4;
  v70 = a6;
  v75 = 0;
  if (a5 - a4 <= 15)
  {
    v75 = -6750;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002639EC();
    }

    v24 = 0;
    v22 = 0;
    v69 = 0;
    v10 = 0;
    v66 = 0;
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v25 = 0;
    v20 = 0;
    goto LABEL_71;
  }

  v68 = [[NSUUID alloc] initWithUUIDBytes:a4];
  v76 = a4 + 16;
  if (a5 - (a4 + 16) <= 15)
  {
    v75 = -6750;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002639AC();
    }

    v22 = 0;
    v69 = 0;
    v10 = 0;
    v66 = 0;
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v25 = 0;
    v20 = 0;
    v24 = v68;
    goto LABEL_71;
  }

  v69 = [[NSUUID alloc] initWithUUIDBytes:a4 + 16];
  v76 = a4 + 32;
  v10 = CFBinaryPlistStreamedCreateWithBytesEx2();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0;
    v66 = 0;
LABEL_93:
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v25 = 0;
    v20 = 0;
    v75 = -6756;
    v24 = v68;
    goto LABEL_70;
  }

  v66 = CFBinaryPlistStreamedCreateWithBytesEx2();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0;
    goto LABEL_93;
  }

  switch(v8)
  {
    case 10:
      v11 = objc_alloc_init(SFResponseMessage);
      v14 = 0;
      v12 = 0;
      v13 = v11;
      break;
    case 9:
      v11 = objc_alloc_init(SFRequestMessage);
      v14 = 0;
      v13 = 0;
      v12 = v11;
      break;
    case 8:
      v11 = objc_alloc_init(SFEventMessage);
      v12 = 0;
      v13 = 0;
      v14 = v11;
      break;
    default:
      v59 = FatalErrorF();
      return [(SDNearbyAgent *)v59 bleNearbyInfoStartConnectionToDevice:v60 owner:v61 connected:v62, v63];
  }

  v15 = v11;
  [v15 setIdentifier:v69];
  v67 = v10;
  [v15 setHeaderFields:v10];
  [v15 setBodyData:v66];
  v16 = objc_alloc_init(SFDevice);
  v17 = [v70 peerDevice];
  v18 = [v17 identifier];
  [v16 setIdentifier:v18];

  v65 = v15;
  v19 = v15;
  v20 = v16;
  [v19 setPeerDevice:v16];
  v21 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v68];
  if (!v21)
  {
    v30 = [v68 UUIDString];
    v31 = [v30 isEqual:@"00000000-0000-0000-0000-000000000000"];

    if (v31)
    {
      v64 = v16;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v32 = self->_sessions;
      v33 = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (!v33)
      {
        v22 = 0;
        goto LABEL_63;
      }

      v34 = v33;
      v22 = 0;
      v35 = *v72;
      while (1)
      {
        for (i = 0; i != v34; i = i + 1)
        {
          v37 = v22;
          if (*v72 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v22 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:*(*(&v71 + 1) + 8 * i)];

          if (v14)
          {
            v38 = [v22 eventMessageHandler];

            if (v38)
            {
              v39 = [v22 eventMessageHandler];
              v40 = v39[2];
LABEL_36:
              v40();

              continue;
            }
          }

          if (v12)
          {
            v41 = [v22 requestMessageHandler];

            if (v41)
            {
              v39 = [v22 requestMessageHandler];
              v40 = v39[2];
              goto LABEL_36;
            }
          }

          if (v13)
          {
            v42 = [v22 responseMessageInternalHandler];

            if (v42)
            {
              v39 = [v22 responseMessageInternalHandler];
              v40 = v39[2];
              goto LABEL_36;
            }
          }
        }

        v34 = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v71 objects:v77 count:16];
        if (!v34)
        {
LABEL_63:

          v10 = v67;
          v24 = v68;
          p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
          v20 = v64;
          v25 = v65;
          goto LABEL_71;
        }
      }
    }

    if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026392C();
    }

    v10 = v67;
    v44 = [v67 objectForKeyedSubscript:@"_serviceUUID"];
    if (v44)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v65;
        if ([v44 length] == 16)
        {
          v45 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v44, "bytes")}];
          if (v45)
          {
            v46 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v45];
            v47 = v46;
            v24 = v68;
            if (!v46)
            {
              v75 = -6720;
              goto LABEL_69;
            }

            if (v14 && ([v46 eventMessageHandler], v48 = objc_claimAutoreleasedReturnValue(), v48, v48))
            {
              v49 = [v47 eventMessageHandler];
              v50 = v49[2];
            }

            else if (v12 && ([v47 requestMessageHandler], v51 = objc_claimAutoreleasedReturnValue(), v51, v51))
            {
              v49 = [v47 requestMessageHandler];
              v50 = v49[2];
            }

            else
            {
              if (!v13 || ([v47 responseMessageInternalHandler], v52 = objc_claimAutoreleasedReturnValue(), v52, !v52))
              {
                if (dword_100973248 <= 50)
                {
                  v10 = v67;
                  if (dword_100973248 != -1 || _LogCategory_Initialize())
                  {
                    sub_10026396C();
                  }

                  goto LABEL_69;
                }

                goto LABEL_68;
              }

              v49 = [v47 responseMessageInternalHandler];
              v50 = v49[2];
            }

            v50();

LABEL_68:
            v10 = v67;
LABEL_69:

            v22 = 0;
LABEL_70:
            p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
            goto LABEL_71;
          }

          v47 = 0;
          v58 = -6700;
        }

        else
        {
          v45 = 0;
          v47 = 0;
          v58 = -6743;
        }

        v75 = v58;
        v24 = v68;
        goto LABEL_69;
      }

      v45 = 0;
      v47 = 0;
      v57 = -6756;
    }

    else
    {
      v45 = 0;
      v47 = 0;
      v57 = -6727;
    }

    v75 = v57;
    v24 = v68;
    v25 = v65;
    goto LABEL_69;
  }

  v22 = v21;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002638AC();
  }

  v10 = v67;
  v24 = v68;
  v25 = v65;
  if (v14 && ([v22 eventMessageHandler], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
  {
    v27 = [v22 eventMessageHandler];
    v28 = v27[2];
  }

  else if (v12 && ([v22 requestMessageHandler], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
  {
    v27 = [v22 requestMessageHandler];
    v28 = v27[2];
  }

  else
  {
    if (!v13 || ([v22 responseMessageInternalHandler], v43 = objc_claimAutoreleasedReturnValue(), v43, !v43))
    {
      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002638EC();
      }

      goto LABEL_71;
    }

    v27 = [v22 responseMessageInternalHandler];
    v28 = v27[2];
  }

  v28();

LABEL_71:
  v53 = v75;
  if (v75)
  {
    v54 = *(p_opt_class_meths + 146);
    if (v54 <= 50)
    {
      if (v54 != -1 || (v55 = _LogCategory_Initialize(), v53 = v75, v55))
      {
        LogPrintF();
        v53 = v75;
      }
    }
  }

  return v53;
}

- (int)bleNearbyInfoStartConnectionToDevice:(id)a3 owner:(id)a4 connected:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v8];
  if (v10)
  {
    v11 = v10;
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263A2C();
    }

    [v11 addClient:v9];
    [v11 setAcceptor:0];
    if (a5)
    {
      *a5 = [v11 connectionState] == 1;
    }
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263A8C();
    }

    v12 = objc_alloc_init(SFBLEDevice);
    [v12 setIdentifier:v8];
    [v12 setUseBTPipe:0];
    v11 = [[SFBLEConnection alloc] initWithDevice:v12 acceptor:0];
    [v11 setDispatchQueue:self->_dispatchQueue];
    bleConnections = self->_bleConnections;
    if (!bleConnections)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = self->_bleConnections;
      self->_bleConnections = v14;

      bleConnections = self->_bleConnections;
    }

    [(NSMutableDictionary *)bleConnections setObject:v11 forKeyedSubscript:v8];
    [v11 addClient:v9];
    [v11 activateDirect];
    if (a5)
    {
      *a5 = 0;
    }
  }

  return 0;
}

- (void)bleNearbyInfoStopConnectionToDevice:(id)a3 owner:(id)a4
{
  v9 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v9];
  v8 = v7;
  if (v7 && ([v7 removeClient:v6] & 1) == 0)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263AEC();
    }

    [(NSMutableDictionary *)self->_bleConnections removeObjectForKey:v9];
    [v8 invalidate];
  }
}

- (void)_btPipeEnsureStopped
{
  if (self->_unlockBtPipe)
  {
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002641AC();
    }

    [(SFBLEPipe *)self->_unlockBtPipe invalidate];
    unlockBtPipe = self->_unlockBtPipe;
    self->_unlockBtPipe = 0;
  }
}

- (void)_btPipeStateChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:SFNotificationKeyConnectionState];
  v6 = [v5 integerValue];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 > 2)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1008D5F08[v6];
    }

    v13 = 136315138;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_btPipeStateChanged to %s", &v13, 0xCu);
  }

  if (v6 == 1)
  {
    v9 = [(SFBLEPipe *)self->_unlockBtPipe getPeerUUID];
    v10 = objc_alloc_init(SFBLEDevice);
    [v10 setIdentifier:v9];
    [v10 setUseBTPipe:1];
    btPipePeer = self->_btPipePeer;
    self->_btPipePeer = v10;

    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "connected to BT peer %@", &v13, 0xCu);
    }
  }

  else
  {
    v9 = self->_btPipePeer;
    self->_btPipePeer = 0;
  }
}

- (void)_btPipeHandleFrameType:(unsigned __int8)a3 data:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  switch(v4)
  {
    case 3:
      v19 = v6;
      v9 = [(SFBLEPipe *)self->_unlockBtPipe getPeerUUID];
      v15 = self->_btPipePeer;
      v16 = [(SFBLEDevice *)v15 identifier];

      if (v9 != v16 && dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002641C8(v15);
      }

      [(SDNearbyAgent *)self _unlockReceivedFrameData:v19 peer:v9 device:v15];

      goto LABEL_19;
    case 2:
      v18 = v6;
      if ([v6 length] <= 7)
      {
        sub_100264290(v18);
      }

      else
      {
        CFAbsoluteTimeGetCurrent();
        v10 = v18;
        v11 = [v18 bytes];
        v12 = v18;
        if (dword_100973248 <= 50)
        {
          v13 = *v11;
          if (dword_100973248 != -1 || (v14 = _LogCategory_Initialize(), v12 = v18, v14))
          {
            sub_100264230(v12);
          }
        }
      }

      break;
    case 1:
      v17 = v6;
      if (dword_100973248 <= 50)
      {
        if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v7 = v17, v8))
        {
          sub_100264314(v7);
          v7 = v17;
        }
      }

      if ([v7 length] > 7)
      {
        v9 = [v17 subdataWithRange:{0, 8}];
        [(SFBLEPipe *)self->_unlockBtPipe sendFrameType:2 payload:v9 completion:&stru_1008D56C8];
LABEL_19:

        break;
      }

      sub_100264358(v17);
      break;
    default:
      break;
  }

  _objc_release_x2();
}

- (void)_smartCoverStatusChanged:(id)a3
{
  v4 = a3;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_10026441C();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024C6BC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_wirelessCriticalChanged:(id)a3
{
  v4 = a3;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264438(self);
  }

  if ([(SDStatusMonitor *)self->_statusMonitor wirelessCritical])
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264490();
    }

    [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"WirelessCritical"];
  }
}

- (void)_mirroringStateChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024C800;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_bleAdvertisingAddressChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(CUSystemMonitor *)self->_systemMonitor bluetoothAddressData];
  obj = [v3 copy];

  if (obj)
  {
    bleAdvertisingAddress = self->_bleAdvertisingAddress;
    v5 = obj;
    v6 = bleAdvertisingAddress;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v6)
      {

        goto LABEL_12;
      }

      v8 = [(NSData *)v5 isEqual:v6];

      if (!v8)
      {
LABEL_12:
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002644C8(v5);
        }

        objc_storeStrong(&self->_bleAdvertisingAddress, obj);
        bleAudioRoutingScoreEncryptedData = self->_bleAudioRoutingScoreEncryptedData;
        self->_bleAudioRoutingScoreEncryptedData = 0;

        bleAuthTag = self->_bleAuthTag;
        self->_bleAuthTag = 0;

        bleHotspotEncryptedData = self->_bleHotspotEncryptedData;
        self->_bleHotspotEncryptedData = 0;

        [(SDNearbyAgent *)self _update];
        goto LABEL_16;
      }
    }
  }

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264534(obj);
  }

LABEL_16:
}

- (void)_bleUpdateScanner:(id)a3 typeFlag:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(NSMutableSet *)self->_caRequests count];
    v8 = 40;
    if (!v7)
    {
      v8 = 0;
    }

    v69 = v8;
  }

  else
  {
    v69 = 0;
  }

  v86 = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = self->_ddRequests;
  v9 = [(NSMutableSet *)obj countByEnumeratingWithState:&v82 objects:v87 count:16];
  v58 = self;
  if (!v9)
  {
    v36 = 0;
    v39 = 0;
    v62 = 0;
    v57 = 0;
    v37 = 0;
    v38 = 0;
    v68 = 1;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_61;
  }

  v10 = v9;
  v54 = v6;
  v55 = a4;
  v11 = 0;
  v64 = 0;
  v66 = 0;
  v67 = 0;
  v12 = 0;
  v62 = 0;
  v59 = 0;
  v13 = *v83;
  v68 = 1;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = 0;
  do
  {
    v14 = 0;
    v61 = v10;
    do
    {
      if (*v83 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v82 + 1) + 8 * v14);
      v16 = [v15 discoveryFlags];
      if ((v16 & a4) != 0)
      {
        v17 = v16;
        if (self->_activityScreenOn || [v15 overrideScreenOff])
        {
          v18 = [v15 deviceFilter];
          v19 = v18;
          if (v18)
          {
            if (![v18 count])
            {
              goto LABEL_53;
            }

            if ((v12 & 1) == 0)
            {
              v20 = v59;
              if (!v59)
              {
                v20 = objc_alloc_init(NSMutableSet);
              }

              v59 = v20;
              [v20 unionSet:v19];
              v21 = 0;
LABEL_23:
              v66 |= (v17 & 0x40) == 0;
              if ((v66 & 1) == 0)
              {
                v86 |= 0x20u;
              }

              v22 = [v15 trackPeers];
              v65 = v21;
              if (v19 && v22)
              {
                v23 = v57;
                if (!v57)
                {
                  v23 = objc_alloc_init(NSMutableSet);
                }

                v24 = v11;
                v57 = v23;
                [v23 unionSet:v19];
              }

              else
              {
                v24 = v11;
              }

              v25 = [v15 changeFlags];
              if ((v25 & 0x10) != 0)
              {
                v26 = 4;
              }

              else
              {
                v26 = (2 * v25) & 4;
              }

              v27 = [v15 rssiThreshold] == 0;
              if ([v15 rssiThreshold] < v64)
              {
                v64 = [v15 rssiThreshold];
              }

              v28 = v13;
              v29 = [v15 scanCache];
              v30 = v69;
              if ([v15 scanRate] > v69)
              {
                v30 = [v15 scanRate];
              }

              if ([v15 scanRateOverride] > v30)
              {
                v30 = [v15 scanRateOverride];
              }

              v69 = v30;
              v13 = v28;
              if ([v15 overrideScreenOff])
              {
                v31 = [v15 overrideScreenOffRescanInterval];
                v32 = 10;
                if (v31 > 10)
                {
                  v32 = v31;
                }

                v33 = v56;
                if (v56 >= v32)
                {
                  v33 = v32;
                }

                v56 = v33;
              }

              v67 |= v25 | v26;
              v11 = v27 | v24;
              v68 &= v29;
              v34 = [v15 useCases];

              if (v34)
              {
                v35 = [v15 useCases];
                self = v58;
                a4 = v55;
                v12 = v65;
                if (!v62)
                {
                  v62 = objc_alloc_init(NSMutableSet);
                }

                v10 = v61;
                if (v35)
                {
                  [v62 unionSet:v35];
                }
              }

              else
              {
                self = v58;
                a4 = v55;
                v10 = v61;
                v12 = v65;
              }

LABEL_53:

              goto LABEL_54;
            }
          }

          else if ((v12 & 1) == 0)
          {

            v59 = 0;
          }

          v21 = 1;
          goto LABEL_23;
        }
      }

LABEL_54:
      v14 = v14 + 1;
    }

    while (v10 != v14);
    v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v82 objects:v87 count:16];
  }

  while (v10);
  if (v11)
  {
    v36 = 0;
  }

  else
  {
    v36 = v64;
  }

  v6 = v54;
  v37 = v59;
  v39 = v66;
  v38 = v67;
  v40 = v56;
LABEL_61:

  enhancedDiscoveryShouldRun = self->_enhancedDiscoveryShouldRun;
  v60 = v37;
  v42 = [v37 allObjects];
  v43 = 0;
  if (v86 && (v39 & 1) == 0)
  {
    v43 = [[NSData alloc] initWithBytes:&v86 length:1];
  }

  v44 = 30;
  if (v69 > 30)
  {
    v44 = v69;
  }

  if ((a4 & enhancedDiscoveryShouldRun) != 0)
  {
    v45 = v38 | 4;
  }

  else
  {
    v45 = v38;
  }

  if ((a4 & enhancedDiscoveryShouldRun) != 0)
  {
    v46 = v44;
  }

  else
  {
    v46 = v69;
  }

  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = 20;
  }

  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v48 = 10;
  }

  else
  {
    v48 = v40;
  }

  v49 = [(SDNearbyAgent *)v58 _bleUpdateUseCases:v62];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10024CF64;
  v70[3] = &unk_1008D56F0;
  v71 = v6;
  v72 = v42;
  v80 = v45;
  v81 = v68 & 1;
  v77 = v36;
  v78 = v47;
  v79 = v48;
  v73 = v43;
  v74 = v57;
  v75 = v49;
  v76 = v58;
  v50 = v57;
  v51 = v43;
  v52 = v42;
  v53 = v6;
  [v53 performUpdate:v70];
}

- (id)_bleUpdateUseCases:(id)a3
{
  v4 = [a3 mutableCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableSet);
  }

  if (([v4 containsObject:&off_10090C228] & 1) == 0)
  {
    [v4 addObject:&off_10090C228];
  }

  if ([(NSMutableSet *)self->_enhancedDiscoveryUseCases count])
  {
    [v4 unionSet:self->_enhancedDiscoveryUseCases];
  }

  if (self->_cameraState == 1 && ([(NSMutableSet *)self->_enhancedDiscoveryUseCases containsObject:&off_10090C240]& 1) == 0)
  {
    [v4 addObject:&off_10090C258];
    [(SDNearbyAgent *)self _postNotificationForWombatState:3];
  }

  return v4;
}

- (void)bleProximityEstimatorsResetDeviceClose
{
  v2 = [(NSMutableDictionary *)self->_ddNearbyActionDevices allValues];
  v3 = v2;
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * v8) bleDevice];
          if (!v9)
          {
            while (1)
            {
              [NSException raise:@"CUGuardLetNoReturn" format:@"CUGuardLet with no return"];
            }
          }

          v10 = v9;
          [v9 setInsideMediumBubble:0];
          [v10 setInsideSmallBubble:0];
          [v10 setCloseProximityEstimatorMedium:0];
          [v10 setCloseProximityEstimatorSmall:0];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (id)bleProximityInfoForActionType:(unsigned __int8)a3 device:(id)a4
{
  v4 = a3 - 1;
  v5 = @"apay";
  switch(v4)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 6:
    case 14:
    case 15:
    case 17:
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 30:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 50:
    case 51:
    case 52:
    case 53:
      goto LABEL_8;
    case 4:
      v5 = @"ws";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 5:
      v5 = @"atvp";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 7:
      v5 = @"wps";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 8:
    case 26:
      v5 = @"ioss";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 9:
      v5 = @"rp";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 10:
    case 32:
      v5 = @"homepod";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 11:
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 12:
      v5 = @"whas";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 13:
      v5 = @"dtp";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 16:
      v5 = @"ded";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 18:
      v5 = @"raf";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 19:
      v5 = @"clp";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 24:
    case 29:
      v5 = @"atvc";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 27:
      v5 = @"asi";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 28:
      v5 = @"fit";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 31:
      v5 = @"aa";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 33:
      v5 = @"compauth";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 35:
      goto LABEL_7;
    case 42:
      v5 = @"aa2";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 49:
      v5 = @"rd";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    case 54:
      v5 = @"aua";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
    default:
      if (@"apay" == 90)
      {
LABEL_7:
        v5 = @"dovePeace";
      }

      else
      {
LABEL_8:
        v5 = @"atv";
      }

      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:a4];
  }
}

- (id)bleProximityInfoForType:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_bleProximityInfoOverride;
  if (!v8 || ([(SDNearbyAgent *)self bleProximityInfoForType:v6 device:v7 allInfo:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [(SDNearbyAgent *)self bleProximityInfo];
    v9 = [(SDNearbyAgent *)self bleProximityInfoForType:v6 device:v7 allInfo:v10];
  }

  return v9;
}

- (id)bleProximityInfoForType:(id)a3 device:(id)a4 allInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SFDeviceModel();
  v11 = [v8 model];
  if (v10 && (+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v10 rangeOfCharacterFromSet:v12], v12, v13 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = [v10 substringToIndex:v13];
    if (v11)
    {
LABEL_4:
      v15 = +[NSCharacterSet decimalDigitCharacterSet];
      v16 = [(__CFString *)v11 rangeOfCharacterFromSet:v15];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [(__CFString *)v11 substringToIndex:v16];
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_4;
    }
  }

  v18 = [v8 deviceModelCode];
  switch(v18)
  {
    case 4u:
      v11 = @"iPod9,1";
      break;
    case 6u:
      v19 = "B620ish";
      goto LABEL_12;
    case 5u:
      v19 = "B520ish";
LABEL_12:
      v11 = [NSString stringWithUTF8String:v19];
      break;
    default:
      if ([v8 deviceActionType] == 5)
      {
        v20 = [v8 bleDevice];
        v21 = [v20 name];

        if ([v21 length] < 8)
        {
          v11 = 0;
        }

        else
        {
          v22 = [v21 substringWithRange:{7, 1}];
          if ([v22 isEqualToString:@"T"])
          {
            v11 = @"Watch6,18";
          }

          else
          {
            v11 = 0;
          }
        }
      }

      else
      {
        v11 = 0;
      }

      break;
  }

  v23 = [v8 deviceClassCode];
  if (v23)
  {
    if (v23 > 8)
    {
      v24 = "?";
    }

    else
    {
      v24 = off_1008D5F20[v23 - 1];
    }

    v17 = [NSString stringWithUTF8String:v24];
LABEL_30:
    v25 = v17;
    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_26:
  v25 = 0;
  if (!v10)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v11)
  {
    v26 = [[NSString alloc] initWithFormat:@"%@-%@-%@", v7, v10, v11];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }
  }

LABEL_33:
  if (v14 && v11)
  {
    v28 = [[NSString alloc] initWithFormat:@"%@-%@-%@", v7, v14, v11];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }
  }

  else if (!v11)
  {
    goto LABEL_39;
  }

  v29 = [[NSString alloc] initWithFormat:@"%@-*-%@", v7, v11];
  CFDictionaryGetTypeID();
  v27 = CFDictionaryGetTypedValue();

  if (v27)
  {
    goto LABEL_54;
  }

LABEL_39:
  if (v10 && v25)
  {
    v30 = [[NSString alloc] initWithFormat:@"%@-%@-%@", v7, v10, v25];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }
  }

  else if (!v10)
  {
    goto LABEL_45;
  }

  v31 = [[NSString alloc] initWithFormat:@"%@-%@-*", v7, v10];
  CFDictionaryGetTypeID();
  v27 = CFDictionaryGetTypedValue();

  if (v27)
  {
    goto LABEL_54;
  }

LABEL_45:
  if (v14 && v25)
  {
    v32 = [[NSString alloc] initWithFormat:@"%@-%@-%@", v7, v14, v25];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }

LABEL_50:
    v33 = [[NSString alloc] initWithFormat:@"%@-*-%@", v7, v25];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v25)
  {
    goto LABEL_50;
  }

LABEL_51:
  if (!v14 || (v34 = [[NSString alloc] initWithFormat:@"%@-%@-*", v7, v14], CFDictionaryGetTypeID(), CFDictionaryGetTypedValue(), v27 = objc_claimAutoreleasedReturnValue(), v34, !v27))
  {
    v35 = [[NSString alloc] initWithFormat:@"%@", v7];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();
  }

LABEL_54:

  return v27;
}

- (id)bleProximityRSSIEstimatorInfo
{
  [(SDNearbyAgent *)self bleProximityInfo];
  CFDictionaryGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (int64_t)bleProximityRSSIThresholdForType:(int64_t)a3 device:(id)a4
{
  v6 = a4;
  v7 = SFDeviceModel();
  v8 = [v6 model];

  if ((a3 - 1) > 7)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v9 = *(&off_1008D5F60 + a3 - 1);
  if (v7 && v8)
  {
    v10 = [[NSString alloc] initWithFormat:@"%@-%@-%@", v9, v7, v8];
    v11 = [(SDNearbyAgent *)self bleProximityRSSIThreshold:v10];

    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v8)
  {
LABEL_7:
    v12 = [[NSString alloc] initWithFormat:@"%@-%@", v9, v8];
    v11 = [(SDNearbyAgent *)self bleProximityRSSIThreshold:v12];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (!v7 || (v13 = [[NSString alloc] initWithFormat:@"%@-%@", v9, v7], v11 = -[SDNearbyAgent bleProximityRSSIThreshold:](self, "bleProximityRSSIThreshold:", v13), v13, !v11))
  {
    v14 = [[NSString alloc] initWithFormat:@"%@", v9];
    v11 = [(SDNearbyAgent *)self bleProximityRSSIThreshold:v14];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

LABEL_12:

  return v11;
}

- (int64_t)bleProximityRSSIThreshold:(id)a3
{
  v4 = a3;
  v5 = [(SDNearbyAgent *)self bleProximityInfo];
  CFDictionaryGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  Int64Ranged = CFDictionaryGetInt64Ranged();
  return Int64Ranged;
}

- (unsigned)_bleProximityUpdateDeviceCloseNearbyActionDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 bleDevice];
  v5 = [v3 model];
  v6 = [v5 isEqualToString:{@"AudioAccessory5, 1"}];

  if (v6)
  {
    v7 = @"b520ho";
  }

  else
  {
    v8 = [v3 model];
    v9 = [v8 isEqualToString:{@"AudioAccessory6, 1"}];

    if (v9)
    {
      v7 = @"b620ho";
    }

    else
    {
      v7 = @"ho";
    }
  }

  v10 = +[SDNearbyAgent sharedNearbyAgent];
  v11 = [v10 bleProximityInfoForType:v7 device:v3];

  if (v11)
  {
    v12 = [v4 closeProximityEstimatorSmall];
    if (!v12)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      Int64 = CFDictionaryGetInt64();
      v15 = CFDictionaryGetInt64();
      v16 = CFDictionaryGetInt64Ranged();
      v38[0] = @"algo";
      v17 = [NSNumber numberWithInt:Int64Ranged];
      v39[0] = v17;
      v38[1] = @"rssi";
      v18 = [NSNumber numberWithLongLong:Int64];
      v39[1] = v18;
      v38[2] = @"rssiExit";
      v19 = [NSNumber numberWithLongLong:v15];
      v39[2] = v19;
      v38[3] = @"sc";
      v20 = [NSNumber numberWithUnsignedInt:v16];
      v39[3] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
      v12 = [SFProximityEstimator proximityEstimatorWithProximityInfo:v21];

      [v4 setCloseProximityEstimatorSmall:v12];
    }

    v22 = [v12 updateWithSFBLEDevice:v4];
    v23 = [v4 closeProximityEstimatorMedium];
    if (!v23)
    {
      v24 = CFDictionaryGetInt64Ranged();
      v25 = CFDictionaryGetInt64();
      v26 = CFDictionaryGetInt64();
      v27 = CFDictionaryGetInt64Ranged();
      v36[0] = @"algo";
      v35 = v22;
      v28 = [NSNumber numberWithInt:v24];
      v37[0] = v28;
      v36[1] = @"rssi";
      v29 = [NSNumber numberWithLongLong:v25];
      v37[1] = v29;
      v36[2] = @"rssiExit";
      v30 = [NSNumber numberWithLongLong:v26];
      v37[2] = v30;
      v36[3] = @"sc";
      v31 = [NSNumber numberWithUnsignedInt:v27];
      v37[3] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
      v23 = [SFProximityEstimator proximityEstimatorWithProximityInfo:v32];

      v22 = v35;
      [v4 setCloseProximityEstimatorMedium:v23];
    }

    v33 = [v23 updateWithSFBLEDevice:v4] | v22;
  }

  else
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264A5C();
    }

    v33 = 0;
  }

  return v33;
}

- (unsigned)_bleProximityUpdateNearbyActionDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 bleDevice];
  v6 = [v5 setupProximityEstimator];
  if (!v6)
  {
    v7 = +[SDNearbyAgent sharedNearbyAgent];
    v6 = [v7 bleProximityEstimatorForActionType:objc_msgSend(v4 device:{"deviceActionType"), v4}];

    if (!v6)
    {
      v8 = 0;
      goto LABEL_9;
    }

    [v5 setSetupProximityEstimator:v6];
  }

  v8 = [v6 updateWithSFBLEDevice:v5];
  if ((v8 & 2) != 0)
  {
    [v4 setDistance:{objc_msgSend(v5, "distance")}];
  }

  if (([v4 deviceFlags] & 0x200) != 0)
  {
    v8 |= [(SDNearbyAgent *)self _bleProximityUpdateDeviceCloseNearbyActionDevice:v4];
  }

LABEL_9:

  return v8;
}

- (unsigned)_bleProximityUpdateNearbyInfoDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 bleDevice];
  v6 = [v5 infoProximityEstimator];
  if (!v6)
  {
    v8 = [(SDNearbyAgent *)self bleProximityInfoForType:@"info" device:v4];
    if (!v8 || ([SFProximityEstimator proximityEstimatorWithProximityInfo:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      v6 = 0;
      v7 = 0;
      goto LABEL_8;
    }

    v6 = v9;
    [v5 setInfoProximityEstimator:v9];
  }

  v7 = [v6 updateWithSFBLEDevice:v5];
  if ((v7 & 2) != 0)
  {
    [v4 setDistance:{objc_msgSend(v5, "distance")}];
  }

LABEL_8:

  return v7;
}

- (void)_postNotificationForWombatState:(unsigned int)a3
{
  if (dword_1009732B8 == -1)
  {
    notify_register_check("com.apple.sharing.wombat-state", &dword_1009732B8);
  }

  v4 = dword_10098A438;
  if (dword_10098A438 != a3)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
LABEL_6:
        if (v4 <= 3)
        {
          v5 = off_1008D5FA0[v4];
        }

        if (a3 <= 3)
        {
          v6 = off_1008D5FA0[a3];
        }

        LogPrintF();
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        v4 = dword_10098A438;
        goto LABEL_6;
      }
    }

LABEL_13:
    notify_set_state(dword_1009732B8, a3);
    notify_post("com.apple.sharing.wombat-state");
    dword_10098A438 = a3;
  }
}

- (void)_registerForMagicMountUpdates
{
  if (self->_cameraMagicMountManager)
  {
    return;
  }

  v12[9] = v2;
  v12[10] = v3;
  DeviceClass = GestaltGetDeviceClass();
  if ((DeviceClass | 2) != 3)
  {
    return;
  }

  v6 = DeviceClass;
  if ([(SDNearbyAgent *)self _allowEnhancedDiscovery]< 1 || !+[CMMagicMountManager isAvailable])
  {
    return;
  }

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264A9C();
  }

  v7 = objc_alloc_init(CMMagicMountManager);
  cameraMagicMountManager = self->_cameraMagicMountManager;
  self->_cameraMagicMountManager = v7;

  v9 = 1;
  [(CMMagicMountManager *)self->_cameraMagicMountManager setMagicMountConfiguration:1];
  if (v6 == 1)
  {
    goto LABEL_11;
  }

  if (v6 == 3)
  {
    v9 = 0;
LABEL_11:
    [(CMMagicMountManager *)self->_cameraMagicMountManager setAPWakesAllowed:v9];
  }

  v10 = self->_cameraMagicMountManager;
  v11 = +[NSOperationQueue mainQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10024EA30;
  v12[3] = &unk_1008D5718;
  v12[4] = self;
  [(CMMagicMountManager *)v10 startMagicMountUpdatesToQueue:v11 withHandler:v12];

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264AB8();
  }
}

- (void)_unregisterForMagicMountUpdates
{
  cameraMagicMountManager = self->_cameraMagicMountManager;
  if (cameraMagicMountManager)
  {
    [(CMMagicMountManager *)cameraMagicMountManager stopMagicMountUpdates];
    v4 = self->_cameraMagicMountManager;
    self->_cameraMagicMountManager = 0;

    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264B2C();
    }

    brightnessSystemClient = self->_brightnessSystemClient;
    self->_brightnessSystemClient = 0;

    self->_isDeviceMounted = 0;

    [(SDNearbyAgent *)self _updateCameraState];
  }
}

- (void)_cameraStateChanged
{
  if (![(SDNearbyAgent *)self _allowEnhancedDiscovery])
  {
    return;
  }

  if (self->_prefWombatAssumeMounted || self->_isDeviceMounted)
  {
    if (!self->_prefWombatAssumeNotInPocket && !self->_inDiscoverySession)
    {

      [(SDNearbyAgent *)self _checkBrightnessLuxValue];
      return;
    }
  }

  else
  {
    self->_isDeviceNotInPocket = 0;
  }

  [(SDNearbyAgent *)self _updateCameraState];
}

- (void)_useLuxValue
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024ED0C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_checkBrightnessLuxValue
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_brightnessSystemClient)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v3 = qword_10098A460;
    v23 = qword_10098A460;
    if (!qword_10098A460)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100261888;
      v19[3] = &unk_1008CDA20;
      v19[4] = &v20;
      sub_100261888(v19);
      v3 = v21[3];
    }

    v4 = v3;
    _Block_object_dispose(&v20, 8);
    v5 = objc_alloc_init(v3);
    brightnessSystemClient = self->_brightnessSystemClient;
    self->_brightnessSystemClient = v5;

    self->_supportsRearLux = MGGetBoolAnswer();
  }

  __asm { FMOV            V0.2S, #-1.0 }

  *&self->_alsLuxValue = _D0;
  v12 = [NSMutableArray arrayWithObject:@"Lux"];
  v13 = v12;
  if (self->_supportsRearLux)
  {
    [v12 addObject:@"RLuxOutput"];
  }

  [(BrightnessSystemClient *)self->_brightnessSystemClient setProperty:&__kCFBooleanTrue forKey:@"ActivateALS"];
  v14 = self->_brightnessSystemClient;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10024F0EC;
  v18[3] = &unk_1008CE2A0;
  v18[4] = self;
  [(BrightnessSystemClient *)v14 registerNotificationBlock:v18 forProperties:v13];
  if (self->_supportsRearLux)
  {
    [(BrightnessSystemClient *)self->_brightnessSystemClient setProperty:&off_10090C1F8 forKey:@"RLuxSampleWithMaxAge"];
  }

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264B48();
  }

  v15 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:@"Lux"];
  [v15 floatValue];
  v17 = v16;

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264B88();
  }

  if (v17 >= 0.0)
  {
    self->_alsLuxValue = v17;
    [(SDNearbyAgent *)self _useLuxValue];
  }
}

- (void)_registerForWombatActivityNotification
{
  if (self->_wombatActivityToken == -1)
  {
    handler[5] = v2;
    handler[6] = v3;
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10024F378;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.rapport.wombat-activity", &self->_wombatActivityToken, dispatchQueue, handler);
  }
}

- (void)_unregisterForWombatActivityNotification
{
  wombatActivityToken = self->_wombatActivityToken;
  if (wombatActivityToken != -1)
  {
    notify_cancel(wombatActivityToken);
    self->_wombatActivityToken = -1;
  }
}

- (void)_discoverySessionStateChange:(BOOL)a3
{
  if (self->_inDiscoverySession == a3)
  {
    return;
  }

  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      inDiscoverySession = self->_inDiscoverySession;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->_inDiscoverySession = a3;
  if (SFDeviceClassCodeGet() != 6)
  {

    [(SDNearbyAgent *)self _update];
  }
}

- (void)_cancelDonStateRetryTimers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_donStateRetryTimerDictionary allKeys];
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
        v9 = [(NSMutableDictionary *)self->_donStateRetryTimerDictionary objectForKeyedSubscript:v8];
        v10 = v9;
        if (v9)
        {
          dispatch_source_cancel(v9);
        }

        [(NSMutableDictionary *)self->_donStateRetryTimerDictionary setObject:0 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_deliverDonnedEventToDevice:(id)a3 allowRetry:(BOOL)a4
{
  v6 = a3;
  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setDispatchQueue:self->_dispatchQueue];
  [v7 setUseCase:131100];
  [v7 setDestinationDevice:v6];
  v8 = [v6 model];
  v9 = [v8 containsString:@"Watch"];

  if (v9)
  {
    v10 = 6291712;
  }

  else
  {
    v10 = 12;
  }

  [v7 setControlFlags:v10];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024F7A4;
  v13[3] = &unk_1008D5768;
  v17 = a4;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v11 = v7;
  v12 = v6;
  [v11 activateWithCompletion:v13];
}

- (void)_deliverDonnedEventsStart
{
  if ([(SDNearbyAgent *)self idsIsSignedIn])
  {
    activeDeviceDiscovery = self->_activeDeviceDiscovery;
    if (activeDeviceDiscovery)
    {
      [(RPCompanionLinkClient *)activeDeviceDiscovery invalidate];
    }

    v4 = objc_alloc_init(RPCompanionLinkClient);
    v5 = self->_activeDeviceDiscovery;
    self->_activeDeviceDiscovery = v4;

    [(RPCompanionLinkClient *)self->_activeDeviceDiscovery setControlFlags:2];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024FCFC;
    v9[3] = &unk_1008CE210;
    v9[4] = self;
    [(RPCompanionLinkClient *)self->_activeDeviceDiscovery setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024FEA8;
    v8[3] = &unk_1008CE210;
    v8[4] = self;
    [(RPCompanionLinkClient *)self->_activeDeviceDiscovery setDeviceLostHandler:v8];
    v6 = self->_activeDeviceDiscovery;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024FF0C;
    v7[3] = &unk_1008CDF90;
    v7[4] = self;
    [(RPCompanionLinkClient *)v6 activateWithCompletion:v7];
  }
}

- (void)_deliverDoffedEvent
{
  [(SDNearbyAgent *)self _invalidateActiveDeviceDiscoveryIfNeeded];
  deliveredDonnedIdentifiers = self->_deliveredDonnedIdentifiers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100250028;
  v4[3] = &unk_1008D1A70;
  v4[4] = self;
  [(NSMutableDictionary *)deliveredDonnedIdentifiers enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)_handleDonStateReceivedRequest:(id)a3 withOptions:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (!self->_donnedDevices)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    donnedDevices = self->_donnedDevices;
    self->_donnedDevices = v7;
  }

  v9 = [v6 objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
  v10 = [[NSUUID alloc] initWithUUIDString:v9];
  v11 = objc_alloc_init(SFDevice);
  [v11 setIdentifier:v10];
  [v11 setIdsIdentifier:v9];
  v12 = [v6 objectForKeyedSubscript:RPOptionSenderModelID];
  [v11 setModel:v12];

  v13 = [v6 objectForKeyedSubscript:RPOptionSenderDeviceName];
  [v11 setName:v13];

  v14 = [v18 objectForKeyedSubscript:@"donState"];
  v15 = [v14 intValue];
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    v16 = v15;
    v17 = v9;
    LogPrintF();
  }

  if (v15 == 1)
  {
    [(NSMutableDictionary *)self->_donnedDevices setObject:v11 forKeyedSubscript:v10];
  }

  else if (!v15)
  {
    [(NSMutableDictionary *)self->_donnedDevices removeObjectForKey:v10];
  }

  [(SDNearbyAgent *)self _handleDonnedDevicesChanged:v16];
}

- (void)_handleRetryTimerForDevice:(id)a3
{
  v7 = a3;
  v4 = [v7 idsDeviceIdentifier];
  v5 = [(NSMutableDictionary *)self->_donStateRetryTimerDictionary objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    dispatch_source_cancel(v5);
  }

  [(NSMutableDictionary *)self->_donStateRetryTimerDictionary setObject:0 forKeyedSubscript:v4];
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264EA8();
  }

  [(SDNearbyAgent *)self _deliverDonnedEventToDevice:v7 allowRetry:0];
}

- (void)_invalidateActiveDeviceDiscoveryIfNeeded
{
  if (![(NSMutableDictionary *)self->_deliveredDonnedIdentifiers count])
  {
    [(RPCompanionLinkClient *)self->_activeDeviceDiscovery invalidate];
    activeDeviceDiscovery = self->_activeDeviceDiscovery;
    self->_activeDeviceDiscovery = 0;
  }
}

- (void)_performTemporaryScan
{
  if (self->_ignoreWatchWristLockState)
  {
    goto LABEL_2;
  }

  v17 = +[SDStatusMonitor sharedMonitor];
  v18 = [v17 watchWristState];

  if (v18 == 3)
  {
    v19 = +[SDStatusMonitor sharedMonitor];
    v20 = [v19 deviceKeyBagLocked];

    if ((v20 & 1) == 0)
    {
LABEL_2:
      v3 = objc_alloc_init(NSMutableSet);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v4 = [(NSMutableDictionary *)self->_donnedDevices allKeys];
      v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v5)
      {
        v6 = *v31;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v31 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = [*(*(&v30 + 1) + 8 * i) UUIDString];
            [v3 addObject:v8];
          }

          v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v5);
      }

      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x2020000000;
      v29 = 0;
      tempDonDeviceDiscovery = self->_tempDonDeviceDiscovery;
      if (tempDonDeviceDiscovery)
      {
        [(RPCompanionLinkClient *)tempDonDeviceDiscovery invalidate];
        v10 = self->_tempDonDeviceDiscovery;
        self->_tempDonDeviceDiscovery = 0;
      }

      v11 = objc_alloc_init(RPCompanionLinkClient);
      v12 = self->_tempDonDeviceDiscovery;
      self->_tempDonDeviceDiscovery = v11;

      [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setDispatchQueue:self->_dispatchQueue];
      [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setUseCase:131099];
      [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setControlFlags:98306];
      v13 = [v3 allObjects];
      [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setDeviceFilter:v13];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100250AB0;
      v24[3] = &unk_1008D57B8;
      v14 = v3;
      v25 = v14;
      v26 = self;
      v27 = v28;
      [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setDeviceFoundHandler:v24];
      v15 = self->_tempDonDeviceDiscovery;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100250C04;
      v21[3] = &unk_1008D5808;
      v21[4] = self;
      v16 = v14;
      v22 = v16;
      v23 = v28;
      [(RPCompanionLinkClient *)v15 activateWithCompletion:v21];

      _Block_object_dispose(v28, 8);
    }
  }
}

- (void)_registerForDonStateRequest
{
  if (!self->_receiveDonStateClient)
  {
    v8[7] = v2;
    v8[8] = v3;
    v5 = objc_alloc_init(RPCompanionLinkClient);
    receiveDonStateClient = self->_receiveDonStateClient;
    self->_receiveDonStateClient = v5;

    v7 = self->_receiveDonStateClient;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100251014;
    v8[3] = &unk_1008CF358;
    v8[4] = self;
    [(RPCompanionLinkClient *)v7 registerRequestID:@"com.sharing.donState" options:0 handler:v8];
    [(RPCompanionLinkClient *)self->_receiveDonStateClient activateWithCompletion:&stru_1008D5828];
  }
}

- (void)_startPeriodicScanner
{
  if (!self->_periodicScanTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    periodicScanTimer = self->_periodicScanTimer;
    self->_periodicScanTimer = v5;

    v7 = self->_periodicScanTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100251218;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    v8 = self->_periodicScanTimer;
    donnedDeviceScanIntervalSeconds = self->_donnedDeviceScanIntervalSeconds;
    SFDispatchTimerSet();
    dispatch_resume(self->_periodicScanTimer);
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026508C(&self->_donnedDeviceScanIntervalSeconds);
    }
  }
}

- (void)_stopPeriodicScanner
{
  tempDonDeviceDiscovery = self->_tempDonDeviceDiscovery;
  if (tempDonDeviceDiscovery)
  {
    [(RPCompanionLinkClient *)tempDonDeviceDiscovery invalidate];
    v4 = self->_tempDonDeviceDiscovery;
    self->_tempDonDeviceDiscovery = 0;
  }

  periodicScanTimer = self->_periodicScanTimer;
  if (periodicScanTimer)
  {
    v6 = periodicScanTimer;
    dispatch_source_cancel(v6);
    v7 = self->_periodicScanTimer;
    self->_periodicScanTimer = 0;

    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002650D0();
    }
  }
}

- (void)_updateDonState
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(CUSystemMonitor *)self->_systemMonitor screenOn])
  {

    [(SDNearbyAgent *)self _deliverDonnedEventsStart];
  }

  else
  {

    [(SDNearbyAgent *)self _deliverDoffedEvent];
  }
}

- (void)nearby:(id)a3 didConnectToPeer:(id)a4 transport:(int64_t)a5 error:(id)a6
{
  v20 = a4;
  v8 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v20)
  {
    v9 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:?];
    if (v9)
    {
      v10 = v9;
      if (v8)
      {
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          v18 = v20;
          v19 = v8;
          LogPrintF();
        }
      }

      else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002650EC();
      }
    }

    else if (v8)
    {
      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        v18 = v20;
        v19 = v8;
        LogPrintF();
      }

      v10 = 0;
    }

    else
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_10026512C();
      }

      v11 = objc_alloc_init(SFBLEDevice);
      [v11 setIdentifier:v20];
      v10 = [[SFBLEConnection alloc] initWithDevice:v11 acceptor:1];
      [v10 setDispatchQueue:self->_dispatchQueue];
      bleConnections = self->_bleConnections;
      if (!bleConnections)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = self->_bleConnections;
        self->_bleConnections = v13;

        bleConnections = self->_bleConnections;
      }

      [(NSMutableDictionary *)bleConnections setObject:v10 forKeyedSubscript:v20];
      [v10 addClient:self];
      [v10 activateDirect];
    }

    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = v15;
    if (v8)
    {
      [v15 setObject:v8 forKeyedSubscript:@"SDBluetoothNotificationKeyError"];
    }

    [v16 setObject:v20 forKeyedSubscript:{@"SDBluetoothNotificationKeyPeerIdentifier", v18, v19}];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"SDNotificationNameNearbyBLEConnected" object:self userInfo:v16];
  }

  else
  {
    sub_10026516C();
  }
}

- (void)nearby:(id)a3 didDisconnectFromPeer:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v8)
  {
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      v50 = v7;
      v52 = v8;
      LogPrintF();
    }
  }

  else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002651E8();
  }

  v9 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v7, v50, v52];
  v10 = v9;
  if (v9 && ([v9 removeClient:self] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_bleConnections removeObjectForKey:v7];
    [v10 invalidate];
  }

  v54 = v10;
  v57 = v8;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v11 = [(NSMutableDictionary *)self->_setupSessions allKeys];
  v12 = [v11 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v67;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v67 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        v17 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v16];
        v18 = [v17 peerIdentifier];
        v19 = [v18 isEqual:v7];

        if (v19)
        {
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
            [(NSMutableDictionary *)self->_setupSessions removeObjectForKey:v16, v16, v7];
          }

          else
          {
            [(NSMutableDictionary *)self->_setupSessions removeObjectForKey:v16, v51, v53];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v13);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = self->_services;
  v20 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v63;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v63 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:*(*(&v62 + 1) + 8 * j)];
        v25 = [v24 peerDisconnectedHandler];

        if (v25)
        {
          v26 = [v24 peerDisconnectedHandler];
          (v26)[2](v26, v7, v57);
        }

        v27 = [v24 errorHandler];

        if (v27)
        {
          v28 = [v24 errorHandler];
          v73 = NSLocalizedDescriptionKey;
          v29 = [NSString stringWithUTF8String:DebugGetErrorString()];
          v30 = v29;
          v31 = @"?";
          if (v29)
          {
            v31 = v29;
          }

          v74 = v31;
          v32 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v33 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6753 userInfo:v32];
          (v28)[2](v28, v33);
        }
      }

      v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v21);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = self->_sessions;
  v34 = [(NSMutableDictionary *)v56 countByEnumeratingWithState:&v58 objects:v72 count:16];
  v35 = v57;
  if (v34)
  {
    v36 = v34;
    v37 = *v59;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(v56);
        }

        v39 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:*(*(&v58 + 1) + 8 * k)];
        v40 = [v39 peerDevice];
        v41 = [v40 identifier];

        if ([v41 isEqual:v7])
        {
          v70 = NSLocalizedDescriptionKey;
          v71 = @"kConnectionErr";
          v42 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          v43 = [v42 mutableCopy];

          if (v35)
          {
            [v43 setObject:v35 forKeyedSubscript:NSUnderlyingErrorKey];
          }

          v44 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6753 userInfo:v43];
          v45 = [v39 errorHandler];

          if (v45)
          {
            v46 = [v39 errorHandler];
            (v46)[2](v46, v44);
          }

          v35 = v57;
        }
      }

      v36 = [(NSMutableDictionary *)v56 countByEnumeratingWithState:&v58 objects:v72 count:16];
    }

    while (v36);
  }

  v47 = objc_alloc_init(NSMutableDictionary);
  v48 = v47;
  if (v35)
  {
    [v47 setObject:v35 forKeyedSubscript:@"SDBluetoothNotificationKeyError"];
  }

  [v48 setObject:v7 forKeyedSubscript:@"SDBluetoothNotificationKeyPeerIdentifier"];
  v49 = +[NSNotificationCenter defaultCenter];
  [v49 postNotificationName:@"SDNotificationNameNearbyBLEDisconnected" object:self userInfo:v48];
}

- (void)nearby:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5
{
  v10 = a4;
  v7 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v7)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265228();
    }

    v8 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = v8;
      [(SDNearbyAgent *)self _bleNearbyInfoReceivedData:v10 cnx:v8 peer:v7];
    }

    else if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026527C();
    }
  }

  else
  {
    sub_1002652BC(dword_100973248);
  }
}

- (void)nearbyDidUpdateState:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = [v5 state];

  if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265314(v6);
  }

  sessions = self->_sessions;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100251EDC;
  v8[3] = &unk_1008D5848;
  v8[4] = v6;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v8];
}

- (BOOL)_onlyRingVisionDeviceWhenDonned
{
  if (self->_caPhoneCallsOnlyRingDonnedDevice)
  {
    return 1;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

- (void)coordinatedAlertRequestStart:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265374();
  }

  if (!self->_caEnabled)
  {
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265390();
    }

    v7 = [v4 completionHandler];

    v36 = 0;
    v37 = 0;
    v38 = 1;
    if (!v7)
    {
      goto LABEL_42;
    }

LABEL_16:
    v8 = [v4 completionHandler];
    v8[2](v8, 0, 1, 0);

LABEL_42:
    if ([v4 type] != 1)
    {
LABEL_45:
      v39[0] = @"eventType";
      v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 type]);
      v40[0] = v21;
      v39[1] = @"activityLevel";
      v22 = [NSNumber numberWithUnsignedChar:v38];
      v40[1] = v22;
      v40[2] = &off_10090C4B0;
      v39[2] = @"otherDevicesCount";
      v39[3] = @"bestIsMe";
      v40[3] = &__kCFBooleanTrue;
      v39[4] = @"skipScanBcPhoneCall";
      v23 = [NSNumber numberWithBool:v37];
      v40[4] = v23;
      v39[5] = @"skipScanBcVeryActive";
      v24 = [NSNumber numberWithBool:v36];
      v40[5] = v24;
      v39[6] = @"MsgScans";
      v25 = [NSNumber numberWithUnsignedInt:self->_caMessageScans];
      v40[6] = v25;
      v39[7] = @"MsgNoScans";
      v26 = [NSNumber numberWithUnsignedInt:self->_caMessageNoScans];
      v40[7] = v26;
      v27 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:8];
      SFMetricsLog();

      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        [v4 type];
        caMessageScans = self->_caMessageScans;
        caMessageNoScans = self->_caMessageNoScans;
        LogPrintF();
      }

      goto LABEL_115;
    }

    v17 = 0;
    ++self->_caMessageNoScans;
LABEL_44:
    v41[0] = @"noScans";
    v18 = [NSNumber numberWithUnsignedInt:?];
    v41[1] = @"scans";
    v42[0] = v18;
    v19 = [NSNumber numberWithUnsignedInt:self->_caMessageScans];
    v42[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
    SFPowerLogEvent();

    if (v17)
    {
      goto LABEL_115;
    }

    goto LABEL_45;
  }

  DeviceClass = GestaltGetDeviceClass();
  if ([v4 type] != 6 || DeviceClass == 1 || DeviceClass == 100)
  {
    if (self->_caSingleDevice || [(SDNearbyAgent *)self idsIsSignedIn]&& [(SDNearbyAgent *)self _idsContinuityDeviceCount]> 0)
    {
      v6 = 1;
      goto LABEL_28;
    }

    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002653AC();
    }

    v9 = [v4 completionHandler];

    if (!v9)
    {
      goto LABEL_27;
    }

    v10 = 1;
LABEL_26:
    v12 = [v4 completionHandler];
    v12[2](v12, 0, v10, 0);

LABEL_27:
    v6 = 0;
    goto LABEL_28;
  }

  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002653C8();
  }

  v11 = [v4 completionHandler];

  v10 = 0;
  v6 = 0;
  if (v11)
  {
    goto LABEL_26;
  }

LABEL_28:
  v38 = [(SDNearbyAgent *)self _activityMonitorCurrentLevelAndNeedsPoll:0 recentUserActivity:0];
  if ([(SDNearbyAgent *)self _idsVisionOS2OrHigherCount]< 1)
  {
    caScanIfHasVisionOS1 = 0;
  }

  else if ([(SDNearbyAgent *)self _idsVisionOS1Count])
  {
    caScanIfHasVisionOS1 = self->_caScanIfHasVisionOS1;
  }

  else
  {
    caScanIfHasVisionOS1 = 1;
  }

  v14 = [(CUBluetoothClient *)self->_btConnectedDeviceMonitor statusFlags];
  if (caScanIfHasVisionOS1)
  {
    v16 = (v14 & 1) == 0 && v38 == 14;
    if (!v6)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v16 = 0;
    if (!v6)
    {
LABEL_41:
      v36 = 0;
      v37 = 0;
      goto LABEL_42;
    }
  }

  if (self->_caPhoneCalls || [v4 type] != 2)
  {
    goto LABEL_107;
  }

  if ((SFDeviceIsRealityDevice() & 1) != 0 || (DeviceClass == 6 || SFIsDevicePhone()) && ![(SDNearbyAgent *)self _onlyRingVisionDeviceWhenDonned])
  {
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002654F0();
    }

    goto LABEL_71;
  }

  if (dword_100973248 > 50 || dword_100973248 == -1 && !_LogCategory_Initialize())
  {
    if (v16)
    {
      goto LABEL_59;
    }

LABEL_93:
    if (DeviceClass != 6 && !SFIsDevicePhone())
    {
      if (!self->_caScanIfVeryActive && v38 >= 0xB && (DeviceClass == 100 || DeviceClass == 3))
      {
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265484();
        }

LABEL_119:
        v33 = [v4 completionHandler];

        v36 = 1;
        v37 = 0;
        if (!v33)
        {
          goto LABEL_42;
        }

        goto LABEL_16;
      }

LABEL_107:
      if (self->_caScanIfVeryActive || v38 < 0xB || v16 && [v4 type] == 2)
      {
        goto LABEL_111;
      }

      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_10026550C();
      }

      goto LABEL_119;
    }

    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002654A0();
    }

    goto LABEL_71;
  }

  sub_1002653E4(v16, v38);
  if (!v16)
  {
    goto LABEL_93;
  }

LABEL_59:
  if ([(SDNearbyAgent *)self _onlyRingVisionDeviceWhenDonned])
  {
    if ((SFIsDevicePhone() & 1) == 0 && DeviceClass != 3 && DeviceClass != 100 && DeviceClass != 6)
    {
      goto LABEL_107;
    }

    if ([(NSMutableDictionary *)self->_donnedDevices count])
    {
      if (dword_100973248 > 50 || dword_100973248 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_111;
      }

      goto LABEL_80;
    }

    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002654D4();
    }

LABEL_71:
    v28 = [v4 completionHandler];

    v36 = 0;
    v37 = 1;
    if (!v28)
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  if (DeviceClass != 100 && DeviceClass != 3)
  {
    goto LABEL_107;
  }

  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
LABEL_80:
    sub_1002654BC();
  }

LABEL_111:
  caRequests = self->_caRequests;
  if (!caRequests)
  {
    v30 = objc_alloc_init(NSMutableSet);
    v31 = self->_caRequests;
    self->_caRequests = v30;

    caRequests = self->_caRequests;
  }

  [(NSMutableSet *)caRequests addObject:v4];
  [(SDNearbyAgent *)self _update];
  if ([v4 type] == 1)
  {
    v36 = 0;
    v37 = 0;
    ++self->_caMessageScans;
    v32 = self->_caMessageNoScans;
    v17 = 1;
    goto LABEL_44;
  }

LABEL_115:
}

- (void)coordinatedAlertRequestFinish:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 type] == 1)
  {
    v5 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForiMessage];
  }

  else if ([v4 type] == 3)
  {
    v5 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForSMSRelay];
  }

  else if ([v4 type] == 4)
  {
    v5 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForAnnouncements];
  }

  else
  {
    if ([v4 type] != 6)
    {
LABEL_10:
      v7 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForSharing];
      v6 = [NSSet setWithArray:v7];

      goto LABEL_11;
    }

    v5 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForOneness];
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_11:
  v74 = v4;
  v8 = [(SDNearbyAgent *)self _activityMonitorCurrentLevelAndNeedsPoll:0 recentUserActivity:0];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = self->_bleNearbyInfoDevices;
  v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v93 objects:v101 count:16];
  v83 = self;
  v84 = v6;
  if (!v9)
  {
    v73 = 0;
    v72 = 1;
    goto LABEL_104;
  }

  v10 = v9;
  v73 = 0;
  v72 = 1;
  v11 = *v94;
  v77 = (v8 - 10);
  v79 = *v94;
  do
  {
    v12 = 0;
    do
    {
      if (*v94 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [(NSMutableDictionary *)self->_bleNearbyInfoDevices objectForKeyedSubscript:*(*(&v93 + 1) + 8 * v12), v63, v65, v66, v67, v68];
      if ([v13 decryptedActivityLevel] == 16)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v13 decryptedActivityLevel];
      }

      v15 = [v13 identifier];
      v16 = v15;
      if (v84 && (!v15 || ([v84 containsObject:v15] & 1) == 0))
      {
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265528(v74);
        }

        v18 = 0;
        goto LABEL_75;
      }

      if (v14 == 14)
      {
        v17 = [(SDNearbyAgent *)self idsDeviceForBluetoothDeviceID:v16 conflictDetected:0];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 productName];
          v20 = [v19 isEqualToString:@"xrOS"];

          if (v20)
          {
            if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100265598();
            }

            goto LABEL_103;
          }

          v11 = v79;
        }
      }

      else
      {
        v18 = 0;
      }

      if ([v74 type] != 6 || v14 != v8)
      {
        goto LABEL_49;
      }

      v21 = [v18 modelIdentifier];
      v22 = [v21 lowercaseString];

      if (GestaltGetDeviceClass() == 100 && [v22 containsString:@"iphone"])
      {
        v11 = v79;
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          v23 = "?";
          if (v8 <= 0xE)
          {
            v23 = off_1008D60A0[v8];
          }

          v65 = v14;
          v66 = v23;
          v63 = v16;
          LogPrintF();
        }

        v28 = 0;
        v72 = 0;
      }

      else
      {
        v11 = v79;
        if (GestaltGetDeviceClass() != 1 || ([v22 containsString:@"mac"] & 1) == 0 && !objc_msgSend(v22, "containsString:", @"imac"))
        {

LABEL_49:
          if (v14 > 9)
          {
            if (v14 <= v8)
            {
              if (dword_100973248 > 50 || dword_100973248 == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_74;
              }

              v26 = "?";
              if ((v14 - 10) <= 4)
              {
                v26 = off_1008D6078[(v14 - 10)];
              }

              v27 = "?";
              if (v77 <= 4)
              {
                v27 = off_1008D6078[v77];
              }

              v68 = v27;
              v66 = v26;
              v67 = v8;
              v63 = v16;
              v65 = v14;
            }

            else
            {
              if (v14 != 10 || ([(CUBluetoothClient *)v83->_btConnectedDeviceMonitor statusFlags]& 1) == 0)
              {
                if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                {
                  if ((v14 - 10) > 4)
                  {
                    v30 = "?";
                  }

                  else
                  {
                    v30 = off_1008D6078[(v14 - 10)];
                  }

                  if (v8 > 0xE)
                  {
                    v31 = "?";
                  }

                  else
                  {
                    v31 = off_1008D60A0[v8];
                  }

                  v68 = v31;
                  v66 = v30;
                  v67 = v8;
                  v63 = v16;
                  v65 = v14;
                  LogPrintF();
                }

LABEL_103:

                v72 = 0;
                v73 = 1;
                self = v83;
                v6 = v84;
                goto LABEL_104;
              }

              if (dword_100973248 > 50 || dword_100973248 == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_74;
              }

              v25 = "?";
              if (v8 <= 0xE)
              {
                v25 = off_1008D60A0[v8];
              }

              v67 = v8;
              v68 = v25;
              v65 = 10;
              v66 = "Watch";
              v63 = v16;
            }

LABEL_68:
            LogPrintF();
          }

          else if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            v65 = v14;
            v66 = off_1008D6028[v14];
            v63 = v16;
            goto LABEL_68;
          }

LABEL_74:
          v73 = 1;
LABEL_75:

          self = v83;
          v6 = v84;
          goto LABEL_76;
        }

        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          v24 = "?";
          if (v8 <= 0xE)
          {
            v24 = off_1008D60A0[v8];
          }

          v65 = v14;
          v66 = v24;
          v63 = v16;
          LogPrintF();
        }

        v28 = 1;
      }

      v73 = 1;
      self = v83;
      v6 = v84;
      if (!v28)
      {
        goto LABEL_104;
      }

LABEL_76:
      v12 = v12 + 1;
    }

    while (v10 != v12);
    v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v93 objects:v101 count:16];
    v10 = v29;
  }

  while (v29);
LABEL_104:
  v71 = v8;

  v32 = v74;
  if (-[SDNearbyAgent _onlyRingVisionDeviceWhenDonned](self, "_onlyRingVisionDeviceWhenDonned") && [v74 type] == 2)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v33 = [(NSMutableDictionary *)self->_donnedDevices allKeys];
    v80 = [v33 countByEnumeratingWithState:&v89 objects:v100 count:16];
    if (v80)
    {
      v75 = v33;
      v76 = 0;
      v78 = *v90;
      do
      {
        v34 = 0;
        do
        {
          if (*v90 != v78)
          {
            objc_enumerationMutation(v75);
          }

          obja = v34;
          v35 = *(*(&v89 + 1) + 8 * v34);
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v36 = [(NSMutableDictionary *)self->_bleNearbyInfoDevices allValues:v63];
          v37 = [v36 countByEnumeratingWithState:&v85 objects:v99 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v86;
            while (2)
            {
              for (i = 0; i != v38; i = i + 1)
              {
                if (*v86 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = [*(*(&v85 + 1) + 8 * i) identifier];
                v42 = v41;
                if (!v6 || v41 && [v6 containsObject:v41])
                {
                  v43 = [(SDNearbyAgent *)self idsDeviceForBluetoothDeviceID:v42 conflictDetected:0];
                  v44 = [NSUUID alloc];
                  v45 = [v43 uniqueID];
                  v46 = [v44 initWithUUIDString:v45];

                  LODWORD(v45) = [v46 isEqual:v35];
                  v6 = v84;

                  self = v83;
                  if (v45)
                  {

                    goto LABEL_127;
                  }
                }
              }

              v38 = [v36 countByEnumeratingWithState:&v85 objects:v99 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }

          if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_1002655E8();
          }

          [(NSMutableDictionary *)self->_donnedDevices removeObjectForKey:v35];
          ++v76;
LABEL_127:
          v34 = obja + 1;
        }

        while (obja + 1 != v80);
        v47 = [v75 countByEnumeratingWithState:&v89 objects:v100 count:16];
        v80 = v47;
      }

      while (v47);

      v32 = v74;
      if (v76 >= 1)
      {
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265628(&self->_donnedDevices);
        }

        [(SDNearbyAgent *)self _handleDonnedDevicesChanged];
      }
    }

    else
    {
    }
  }

  if (v73)
  {
    v48 = v72;
  }

  else
  {
    v48 = v72;
    if (!-[SDStatusMonitor screenOn](self->_statusMonitor, "screenOn") && [v32 type] == 6 && GestaltGetDeviceClass() == 1)
    {
      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_10026567C();
      }

      v48 = 0;
    }
  }

  v49 = [(NSMutableDictionary *)self->_bleNearbyInfoDevices count];
  if (!v49 && dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002656B0();
  }

  caForce = self->_caForce;
  if ((caForce & 0x80000000) == 0)
  {
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (v52 = _LogCategory_Initialize(), caForce = self->_caForce, v52))
      {
        if (caForce)
        {
          v51 = "yes";
        }

        else
        {
          v51 = "no";
        }

        v64 = v51;
        LogPrintF();
        caForce = self->_caForce;
      }
    }

    v48 = caForce != 0;
  }

  [(NSMutableSet *)self->_caRequests removeObject:v32, v64];
  v53 = [v32 completionHandler];
  v54 = v53;
  if (v53)
  {
    (*(v53 + 16))(v53, 0, v48, 0);
  }

  [(SDNearbyAgent *)self _update];
  v97[0] = @"eventType";
  v55 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 type]);
  v98[0] = v55;
  v97[1] = @"activityLevel";
  v56 = [NSNumber numberWithUnsignedChar:v71];
  v98[1] = v56;
  v97[2] = @"otherDevicesCount";
  [NSNumber numberWithInt:v49];
  v58 = v57 = self;
  v98[2] = v58;
  v97[3] = @"bestIsMe";
  v59 = [NSNumber numberWithBool:v48];
  v98[3] = v59;
  v98[4] = &__kCFBooleanFalse;
  v97[4] = @"skipScanBcPhoneCall";
  v97[5] = @"skipScanBcVeryActive";
  v98[5] = &__kCFBooleanFalse;
  v97[6] = @"MsgScans";
  v60 = [NSNumber numberWithUnsignedInt:v57->_caMessageScans];
  v98[6] = v60;
  v97[7] = @"MsgNoScans";
  v61 = [NSNumber numberWithUnsignedInt:v57->_caMessageNoScans];
  v98[7] = v61;
  v62 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:8];
  SFMetricsLog();

  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    [v74 type];
    caMessageScans = v83->_caMessageScans;
    caMessageNoScans = v83->_caMessageNoScans;
    LogPrintF();
  }
}

- (void)coordinatedAlertRequestCancel:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002656E4();
  }

  [(NSMutableSet *)self->_caRequests removeObject:v5];
  [(NSMutableSet *)self->_caRequestsNoScans removeObject:v5];

  [(SDNearbyAgent *)self _update];
}

- (void)_disableEnhancedDiscovery:(id)a3
{
  v4 = a3;
  if (self->_enhancedDiscoveryShouldRun)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026571C();
    }

    self->_enhancedDiscoveryShouldRun = 0;
    self->_enhancedDiscoveryAdvActive = 0;
    [(NSMutableSet *)self->_enhancedDiscoveryUseCases removeAllObjects];
    enhancedDiscoveryTimer = self->_enhancedDiscoveryTimer;
    if (enhancedDiscoveryTimer)
    {
      v6 = enhancedDiscoveryTimer;
      dispatch_source_cancel(v6);
      v7 = self->_enhancedDiscoveryTimer;
      self->_enhancedDiscoveryTimer = 0;
    }

    v10[1] = @"Enabled";
    v11[0] = v4;
    v10[0] = @"Reason";
    v8 = [NSNumber numberWithBool:self->_enhancedDiscoveryShouldRun];
    v11[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    SFPowerLogEvent();
  }
}

- (void)_enhancedDiscoveryScreenChange:(BOOL)a3
{
  v3 = a3;
  if ([(SDNearbyAgent *)self _allowEnhancedDiscovery])
  {
    if (v3)
    {
      [(SDNearbyAgent *)self _activityMonitorLastUserEventDelta];
      v6 = v5 < 5.0 && v5 > 0.0;
      if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v6)
      {
        if ([(SDStatusMonitor *)self->_statusMonitor wirelessCritical])
        {
          if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265794();
          }
        }

        else if ([(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAdvertise])
        {

          [(SDNearbyAgent *)self _enableEnhancedDiscovery:@"UserInitiatedScreenOn" useCase:131076];
        }

        else if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265778();
        }
      }

      else if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_10026575C();
      }
    }

    else
    {

      [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"ScreenOff"];
    }
  }
}

- (void)_checkConditionsForEnhancedDiscovery
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_allowEnhancedDiscovery = -1;
  if ([(SDNearbyAgent *)self _allowEnhancedDiscovery]< 1)
  {

    [(SDNearbyAgent *)self _unregisterForMagicMountUpdates];
  }

  else
  {

    [(SDNearbyAgent *)self _registerForMagicMountUpdates];
  }
}

- (void)_notifyCameraConfigChange
{
  v3 = +[AVCaptureDevice continuityCaptureLastUsedDate];
  if (!v3)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002658EC();
    }

    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"ContinuityCaptureNotificationOnBoardingComplete" object:@"YES" userInfo:0 deliverImmediately:1];

    if (!self->_cameraConfigChangeTimer)
    {
      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      cameraConfigChangeTimer = self->_cameraConfigChangeTimer;
      self->_cameraConfigChangeTimer = v5;

      v7 = self->_cameraConfigChangeTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100254884;
      handler[3] = &unk_1008CDEA0;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      v8 = self->_cameraConfigChangeTimer;
      SFDispatchTimerSet();
      dispatch_resume(self->_cameraConfigChangeTimer);
    }
  }
}

- (void)_enhancedDiscoveryTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"TimerFired"];

  [(SDNearbyAgent *)self _update];
}

- (BOOL)_deviceCanTriggerEnhancedDiscovery:(id)a3
{
  v4 = a3;
  if (!self->_enhancedDiscoveryShouldRun && -[SDNearbyAgent _allowEnhancedDiscovery](self, "_allowEnhancedDiscovery") && !-[SDNearbyAgent isWifiCritical](self, "isWifiCritical") && [v4 enhancedDiscovery] && objc_msgSend(v4, "paired"))
  {
    v5 = SFDeviceModel();
    v6 = [v4 model];
    if ([v6 containsString:@"iPhone"])
    {
      if (([v5 containsString:@"iPhone"] & 1) == 0)
      {
        v7 = [v5 containsString:@"Mac"];

        if ((v7 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v10 = [v4 model];
      if (([v10 containsString:@"Mac"] & 1) == 0)
      {

        goto LABEL_21;
      }

      if (![v5 containsString:@"iPhone"])
      {
        v14 = [v5 containsString:@"Mac"];

        if ((v14 & 1) == 0)
        {
LABEL_21:
          v11 = [v4 model];
          if ([v11 containsString:@"iPad"])
          {
            if (([v5 containsString:@"iPad"] & 1) == 0)
            {
              v12 = [v5 containsString:@"Mac"];

              if ((v12 & 1) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_29;
            }
          }

          else
          {
            v13 = [v4 model];
            if (([v13 containsString:@"Mac"] & 1) == 0)
            {

LABEL_37:
              v8 = 0;
              goto LABEL_33;
            }

            if (![v5 containsString:@"iPad"])
            {
              v15 = [v5 containsString:@"Mac"];

              if ((v15 & 1) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_29;
            }
          }

LABEL_29:
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265908();
          }

LABEL_32:
          v8 = 1;
LABEL_33:

          goto LABEL_11;
        }

LABEL_16:
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265948();
        }

        goto LABEL_32;
      }
    }

    goto LABEL_16;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)deviceDiscoveryRequestStart:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100254C68;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_deviceDiscoveryRequestStart:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265988();
  }

  ddRequests = self->_ddRequests;
  if (!ddRequests)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_ddRequests;
    self->_ddRequests = v6;

    ddRequests = self->_ddRequests;
  }

  [(NSMutableSet *)ddRequests addObject:v4];
  if (([v4 discoveryFlags] & 0x20) != 0)
  {
    v10 = [(SDNearbyAgent *)self idsBluetoothDeviceIDsForSharing];
LABEL_14:
    v8 = v10;
    [v4 setDeviceFilter:v10];
    goto LABEL_15;
  }

  if (([v4 discoveryFlags] & 0x100000) != 0)
  {
    v10 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForMe];
    goto LABEL_14;
  }

  if (([v4 discoveryFlags] & 0x200000) != 0)
  {
    v10 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForHomePods];
    goto LABEL_14;
  }

  if (([v4 discoveryFlags] & 0x1000000) == 0)
  {
    goto LABEL_16;
  }

  v8 = +[SDAutoUnlockTransport sharedTransport];
  v9 = [v8 approveBluetoothIDs];
  [v4 setDeviceFilter:v9];

LABEL_15:
LABEL_16:
  v34 = self;
  if (([v4 discoveryFlags] & 0x10) != 0)
  {
    v12 = [(SFBLEScanner *)self->_bleNearbyActionScanner scanState];
    self->_ddNearbyActionEnabled = 1;
    if ([v4 overrideScreenOff])
    {
      self->_ddNearbyActionScreenOff = 1;
    }

    v11 = [v4 deviceFoundHandler];

    if (!v11)
    {
      goto LABEL_35;
    }

    v13 = 440;
    goto LABEL_34;
  }

  if ([v4 discoveryFlags])
  {
    v12 = [(SFBLEScanner *)self->_bleNearbyInfoScanner scanState];
    self->_ddNearbyInfoEnabled = 1;
    if ([v4 overrideScreenOff])
    {
      self->_ddNearbyInfoScreenOff = 1;
    }

    v11 = [v4 deviceFoundHandler];

    if (!v11)
    {
      goto LABEL_35;
    }

    v13 = 456;
    goto LABEL_34;
  }

  if (([v4 discoveryFlags] & 2) == 0)
  {
    v11 = 0;
    goto LABEL_38;
  }

  v12 = [(SFBLEScanner *)self->_bleProximityPairingScanner scanState];
  if (![v4 rssiThreshold])
  {
    [v4 setRssiThreshold:-60];
  }

  self->_ddProximityPairingEnabled = 1;
  if ([v4 overrideScreenOff])
  {
    self->_ddProximityPairingScreenOff = 1;
  }

  v11 = [v4 deviceFoundHandler];

  if (v11)
  {
    v13 = 472;
LABEL_34:
    v11 = *(&self->super.isa + v13);
  }

LABEL_35:
  if (v12)
  {
    v14 = [v4 scanStateChangedHandler];

    if (v14)
    {
      v15 = [v4 scanStateChangedHandler];
      (v15)[2](v15, v12);
    }
  }

LABEL_38:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * v20);
        v22 = [v16 objectForKeyedSubscript:{v21, v32, v33}];
        if (v22)
        {
          v23 = [v4 deviceFilter];
          if (!v23 || (v24 = v23, [v4 deviceFilter], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "containsObject:", v21), v25, v24, v26))
          {
            if ([v4 rssiThreshold] && (objc_msgSend(v22, "bleDevice"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "rssi"), v29 = objc_msgSend(v4, "rssiThreshold"), v27, v28 < v29))
            {
              if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
              {
                v32 = v22;
                v33 = v4;
                LogPrintF();
              }
            }

            else
            {
              v30 = [v4 deviceFoundHandler];
              (v30)[2](v30, v22);
            }
          }
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v31 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v18 = v31;
    }

    while (v31);
  }

  if ([v4 fastScanMode] == 1)
  {
    [(SDNearbyAgent *)v34 _deviceDiscoveryFastScanStart:v4 device:0 reason:@"Start"];
  }

  [(SDNearbyAgent *)v34 _update:v32];
}

- (void)deviceDiscoveryRequestStop:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002659A4();
  }

  [(NSMutableSet *)self->_ddRequests removeObject:v4];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_ddRequests;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {

    LOBYTE(v12) = 0;
    v11 = 0;
    LOBYTE(v10) = 0;
    v17 = 0;
    LOBYTE(v9) = 0;
    goto LABEL_22;
  }

  v7 = v6;
  v21 = v4;
  v22 = self;
  v8 = 0;
  v9 = 0;
  v23 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *v25;
  do
  {
    v14 = v5;
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(v14);
      }

      v16 = *(*(&v24 + 1) + 8 * i);
      if (([v16 discoveryFlags] & 0x10) != 0)
      {
        v9 |= [v16 overrideScreenOff];
        v8 = 1;
      }

      if ([v16 discoveryFlags])
      {
        v10 |= [v16 overrideScreenOff];
        v23 = 1;
      }

      if (([v16 discoveryFlags] & 2) != 0)
      {
        v12 |= [v16 overrideScreenOff];
        v11 = 1;
      }
    }

    v5 = v14;
    v7 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v7);

  if ((v8 & 1) == 0)
  {
    v4 = v21;
    self = v22;
    v17 = v23;
LABEL_22:
    self->_ddNearbyActionEnabled = 0;
    [(NSMutableDictionary *)self->_ddNearbyActionDevices removeAllObjects];
    ddNearbyActionDevices = self->_ddNearbyActionDevices;
    self->_ddNearbyActionDevices = 0;

    self->_ddNearbyActionScreenOff = v9 & 1;
    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v4 = v21;
  self = v22;
  v22->_ddNearbyActionScreenOff = v9 & 1;
  if ((v23 & 1) == 0)
  {
LABEL_23:
    self->_ddNearbyInfoEnabled = 0;
    [(NSMutableDictionary *)self->_ddNearbyInfoDevices removeAllObjects];
    ddNearbyInfoDevices = self->_ddNearbyInfoDevices;
    self->_ddNearbyInfoDevices = 0;
  }

LABEL_24:
  self->_ddNearbyInfoScreenOff = v10 & 1;
  if ((v11 & 1) == 0)
  {
    self->_ddProximityPairingEnabled = 0;
    [(NSMutableDictionary *)self->_ddProximityPairingDevices removeAllObjects];
    ddProximityPairingDevices = self->_ddProximityPairingDevices;
    self->_ddProximityPairingDevices = 0;
  }

  self->_ddProximityPairingScreenOff = v12 & 1;
  [(SDNearbyAgent *)self _identificationHandleDiscoveryStop];
  [(SDNearbyAgent *)self _update];
}

- (void)deviceDiscoveryRequestUpdate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100255448;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)deviceDiscoveryFastScanTrigger:(id)a3 reason:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [(SDNearbyAgent *)self _deviceDiscoveryFastScanStart:v8 device:0 reason:v7];
}

- (void)deviceDiscoveryFastScanCancel:(id)a3 reason:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [v8 setFastScanMode:0];
  [(SDNearbyAgent *)self _deviceDiscoveryFastScanStop:v8 reset:1 reason:v7];
}

- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)a3 reason:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(SDNearbyAgent *)self _allowEnhancedDiscovery])
  {
    if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002659C0();
    }

    [(SDNearbyAgent *)self _enableEnhancedDiscovery:v5 useCase:0];
    [(SDNearbyAgent *)self _update];
  }

  else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002659DC();
  }
}

- (void)_deviceDiscoveryFastScanEvaluate:(id)a3 device:(id)a4
{
  v15 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activityScreenOn && self->_activityUIUnlocked && [v15 fastScanMode] == 2)
  {
    if ([v15 rssiThreshold])
    {
      v7 = [v6 bleDevice];
      if ([v7 rssi])
      {
        v8 = [v6 bleDevice];
        v9 = [v8 rssi];
        v10 = [v15 rssiThreshold];

        if (v9 < v10)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    v11 = [v15 discoveryFlags];
    if (v11 & 0x20000) != 0 && ([v6 needsAWDL])
    {
      v12 = @"MatchAWDL";
      goto LABEL_25;
    }

    if (v11 & 0x40) != 0 && ([v6 needsKeyboardOnly])
    {
      v12 = @"MatchKeyboard";
      goto LABEL_25;
    }

    if ((v11 & 2) != 0)
    {
      v12 = @"MatchProx";
      goto LABEL_25;
    }

    if ((v11 & 0xE01FF80) != 0 && [v6 needsSetup])
    {
      v13 = [v6 deviceActionType];
      if (v13 > 19)
      {
        if (v13 <= 32)
        {
          if (v13 == 20)
          {
            v14 = 0x4000;
            goto LABEL_50;
          }

          if (v13 == 21)
          {
            v14 = 0x8000;
            goto LABEL_50;
          }
        }

        else
        {
          switch(v13)
          {
            case '!':
              v14 = 0x2000000;
              goto LABEL_50;
            case '$':
              v14 = 0x4000000;
              goto LABEL_50;
            case 'Z':
              v14 = 0x8000000;
              goto LABEL_50;
          }
        }
      }

      else if (v13 <= 8)
      {
        if (v13 == 1)
        {
          v14 = 128;
          goto LABEL_50;
        }

        if (v13 == 8)
        {
          v14 = 2048;
          goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 9:
            v14 = 512;
            goto LABEL_50;
          case 11:
            v14 = 256;
            goto LABEL_50;
          case 13:
            v14 = 1024;
LABEL_50:
            if ((v14 & v11) == 0)
            {
              goto LABEL_26;
            }

            v12 = @"MatchSetup";
LABEL_25:
            [(SDNearbyAgent *)self _deviceDiscoveryFastScanStart:v15 device:v6 reason:v12];
            goto LABEL_26;
        }
      }

      v14 = 0;
      goto LABEL_50;
    }

    if ((v11 & 0x800000) != 0 && ([v6 deviceFlags] & 0x200) != 0)
    {
      v12 = @"MatchClose";
      goto LABEL_25;
    }
  }

LABEL_26:
}

- (void)_deviceDiscoveryFastScanStart:(id)a3 device:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activityScreenOn && self->_activityUIUnlocked)
  {
    mach_absolute_time();
    ddFastScanLastEndTicks = self->_ddFastScanLastEndTicks;
    if (UpTicksToSeconds() > 0x63)
    {
      if (![v8 scanRateOverride])
      {
        if (v9)
        {
          if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265AA8(v9);
          }
        }

        else if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265B10();
        }

        [v8 setScanRateOverride:50];
        [(SDNearbyAgent *)self _update];
      }

      if (!self->_ddFastScanTimer)
      {
        v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        ddFastScanTimer = self->_ddFastScanTimer;
        self->_ddFastScanTimer = v13;

        v15 = self->_ddFastScanTimer;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100255FA0;
        handler[3] = &unk_1008CE900;
        handler[4] = self;
        v18 = v8;
        v19 = v10;
        dispatch_source_set_event_handler(v15, handler);
        v16 = self->_ddFastScanTimer;
        SFDispatchTimerSet();
        dispatch_resume(self->_ddFastScanTimer);
      }
    }

    else if (!v9 && dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265B50();
    }
  }

  else if (!v9 && dword_100973248 <= 30)
  {
    if (dword_100973248 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

      activityScreenOn = self->_activityScreenOn;
    }

    self->_activityUIUnlocked;
    LogPrintF();
  }

LABEL_27:
}

- (void)_deviceDiscoveryFastScanStop:(id)a3 reset:(BOOL)a4 reason:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v8 scanRateOverride])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_ddRequests;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v12)
  {

    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v23;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v22 + 1) + 8 * i);
      if ([v17 scanRateOverride])
      {
        [v17 setScanRateOverride:0];
        v14 = 1;
      }
    }

    v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v13);

  if ((v14 & 1) == 0)
  {
LABEL_20:
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265B94();
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  if (v10)
  {
    goto LABEL_21;
  }

LABEL_18:
  v18 = mach_absolute_time();
LABEL_22:
  self->_ddFastScanLastEndTicks = v18;
LABEL_23:
  ddFastScanTimer = self->_ddFastScanTimer;
  if (ddFastScanTimer)
  {
    v20 = ddFastScanTimer;
    dispatch_source_cancel(v20);
    v21 = self->_ddFastScanTimer;
    self->_ddFastScanTimer = 0;
  }

  [(SDNearbyAgent *)self _update];
}

- (void)_deviceDiscoveryBLEDeviceFound:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v46 = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v45 = v6;
  v47 = [v6 identifier];
  if (v47)
  {
    v7 = objc_alloc_init(SFDevice);
    [v7 updateWithBLEDevice:v6];
    v44 = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForMe];
    if ([v44 containsObject:v47])
    {
      if (([v7 autoUnlockEnabled] & 1) != 0 || (objc_msgSend(v7, "model"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"Watch"), v8, (v9 & 1) == 0))
      {
        [v7 setDeviceFlags:{objc_msgSend(v7, "deviceFlags") | 1}];
      }
    }

    if (a4 == 7)
    {
      ddProximityPairingDevices = self->_ddProximityPairingDevices;
      if (!ddProximityPairingDevices)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        v22 = self->_ddProximityPairingDevices;
        self->_ddProximityPairingDevices = v21;

        ddProximityPairingDevices = self->_ddProximityPairingDevices;
      }

      v43 = ddProximityPairingDevices;
      v16 = 2;
    }

    else
    {
      v10 = self;
      if (a4 == 16)
      {
        [(SDNearbyAgent *)self _bleProximityUpdateNearbyInfoDevice:v7];
        [(SDNearbyAgent *)self _identificationHandleDeviceFound:v7 flags:1];
        ddNearbyInfoDevices = self->_ddNearbyInfoDevices;
        if (!ddNearbyInfoDevices)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_ddNearbyInfoDevices;
          self->_ddNearbyInfoDevices = v18;

          ddNearbyInfoDevices = self->_ddNearbyInfoDevices;
        }

        v43 = ddNearbyInfoDevices;
        if ([(SDNearbyAgent *)self _deviceCanTriggerEnhancedDiscovery:v7])
        {
          [(SDNearbyAgent *)self _enableEnhancedDiscovery:@"IncomingAdv" useCase:131086];
          self->_enhancedDiscoveryAdvActive = 0;
          [(SDNearbyAgent *)self update];
        }

        v16 = 1;
      }

      else
      {
        if (a4 != 15)
        {
LABEL_55:

          goto LABEL_56;
        }

        if ([v7 deviceActionType] == 10)
        {
          v11 = [v7 idsIdentifier];
          v12 = [v11 length];

          v10 = self;
          if (!v12)
          {
            [(SDNearbyAgent *)self idsAddCachedIDSIdentifierToDevice:v7];
          }
        }

        [(SDNearbyAgent *)v10 _bleProximityUpdateNearbyActionDevice:v7];
        [(SDNearbyAgent *)v10 _identificationHandleDeviceFound:v7 flags:16];
        ddNearbyActionDevices = v10->_ddNearbyActionDevices;
        if (!ddNearbyActionDevices)
        {
          v14 = objc_alloc_init(NSMutableDictionary);
          v15 = v10->_ddNearbyActionDevices;
          v10->_ddNearbyActionDevices = v14;

          ddNearbyActionDevices = v10->_ddNearbyActionDevices;
        }

        v43 = ddNearbyActionDevices;
        v16 = 16;
      }
    }

    v23 = [v7 rapportIdentifier];
    v24 = v23;
    if (v23)
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x3032000000;
      v58 = sub_100249B98;
      v59 = sub_100249BA8;
      v60 = 0;
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100256830;
      v52[3] = &unk_1008D5870;
      v52[4] = v23;
      v53 = v47;
      v54 = &v55;
      [(NSMutableDictionary *)v43 enumerateKeysAndObjectsUsingBlock:v52];
      v25 = v56[5];
      if (v25 && ([v25 paired] & 1) == 0 && (objc_msgSend(v56[5], "deviceFlags") & 0x8000) == 0)
      {
        v26 = [v56[5] bleDevice];
        [v56[5] setIsBLEDeviceReplaced:1];
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          v41 = v56[5];
          v42 = v7;
          v40 = off_1008D6118[a4 - 7];
          LogPrintF();
        }

        [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceLost:v26 type:a4, v40, v41, v42];
      }

      _Block_object_dispose(&v55, 8);
    }

    [(NSMutableDictionary *)v43 setObject:v7 forKeyedSubscript:v47];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v27 = self->_ddRequests;
    v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v28)
    {
      v29 = *v49;
      do
      {
        v30 = 0;
        do
        {
          if (*v49 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v48 + 1) + 8 * v30);
          if (([v31 discoveryFlags] & v16) != 0)
          {
            v32 = [v31 deviceFilter];
            if (!v32 || ([v31 deviceFilter], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "containsObject:", v47), v33, v32, v34))
            {
              if ([v31 rssiThreshold] && (objc_msgSend(v7, "bleDevice"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "rssi"), LODWORD(v36) = v36 < objc_msgSend(v31, "rssiThreshold"), v35, v36))
              {
                if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                {
                  v40 = v7;
                  v41 = v31;
                  LogPrintF();
                }
              }

              else
              {
                v37 = [v31 deviceFoundHandler];

                if (v37)
                {
                  v38 = [v31 deviceFoundHandler];
                  (v38)[2](v38, v7);
                }

                [(SDNearbyAgent *)v46 _deviceDiscoveryFastScanEvaluate:v31 device:v7];
              }
            }
          }

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v39 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v48 objects:v61 count:16];
        v28 = v39;
      }

      while (v39);
    }

    goto LABEL_55;
  }

LABEL_56:
}

- (void)_deviceDiscoveryBLEDeviceLost:(id)a3 type:(int64_t)a4
{
  v6 = [a3 identifier];
  if (v6)
  {
    if (a4 == 7)
    {
      v14 = [(NSMutableDictionary *)self->_ddProximityPairingDevices objectForKeyedSubscript:v6];
      if (!v14)
      {
        goto LABEL_23;
      }

      v8 = v14;
      [(NSMutableDictionary *)self->_ddProximityPairingDevices removeObjectForKey:v6];
      v9 = 2;
    }

    else
    {
      if (a4 == 16)
      {
        v13 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:v6];
        if (!v13)
        {
          goto LABEL_23;
        }

        v8 = v13;
        [(NSMutableDictionary *)self->_ddNearbyInfoDevices removeObjectForKey:v6];
        v9 = 1;
        v10 = self;
        v11 = v8;
        v12 = 1;
      }

      else
      {
        if (a4 != 15)
        {
          goto LABEL_23;
        }

        v7 = [(NSMutableDictionary *)self->_ddNearbyActionDevices objectForKeyedSubscript:v6];
        if (!v7)
        {
          goto LABEL_23;
        }

        v8 = v7;
        [(NSMutableDictionary *)self->_ddNearbyActionDevices removeObjectForKey:v6];
        v9 = 16;
        v10 = self;
        v11 = v8;
        v12 = 16;
      }

      [(SDNearbyAgent *)v10 _identificationHandleDeviceLost:v11 flags:v12];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = self->_ddRequests;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          if (([v20 discoveryFlags] & v9) != 0)
          {
            v21 = [v20 deviceLostHandler];

            if (v21)
            {
              v22 = [v20 deviceLostHandler];
              (v22)[2](v22, v8);
            }
          }
        }

        v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

LABEL_23:
}

- (void)_deviceDiscoveryBLEScanStateChanged:(int64_t)a3 type:(int64_t)a4
{
  switch(a4)
  {
    case 7:
      v5 = 2;
      break;
    case 15:
      v5 = 16;
      break;
    case 16:
      v5 = 1;
      break;
    default:
      return;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_ddRequests;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 discoveryFlags] & v5) != 0)
        {
          v12 = [v11 scanStateChangedHandler];

          if (v12)
          {
            v13 = [v11 scanStateChangedHandler];
            v13[2](v13, a3);
          }
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)diagnosticBLEModeStart:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265BD4();
  }

  bleDiagnosticModeClients = self->_bleDiagnosticModeClients;
  if (!bleDiagnosticModeClients)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = self->_bleDiagnosticModeClients;
    self->_bleDiagnosticModeClients = v5;

    bleDiagnosticModeClients = self->_bleDiagnosticModeClients;
  }

  [(NSMutableSet *)bleDiagnosticModeClients addObject:v7];
  [(SDNearbyAgent *)self _update];
}

- (void)diagnosticBLEModeStop:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265BF0();
  }

  [(NSMutableSet *)self->_bleDiagnosticModeClients removeObject:v4];
  [(SDNearbyAgent *)self _update];
}

- (void)diagnosticMockChanged:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100265C0C();
      v4 = v6;
    }
  }

  [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceChanged:v4 type:15 changes:0];
}

- (void)diagnosticMockFound:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100265C4C();
      v4 = v6;
    }
  }

  [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceFound:v4 type:15];
}

- (void)diagnosticMockLost:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100265C8C();
      v4 = v6;
    }
  }

  [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceLost:v4 type:15];
}

- (void)_identificationCheckFlagsAndACL
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_idIdentityArray;
  v2 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (!v2)
  {
    v27 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_35;
  }

  v4 = v2;
  v27 = 0;
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = *v30;
  do
  {
    v8 = 0;
    do
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v29 + 1) + 8 * v8);
      if (([v9 featureFlags] & 4) != 0)
      {
        v10 = *(p_opt_class_meths + 146);
        if (v10 <= 30 && (v10 != -1 || _LogCategory_Initialize()))
        {
          sub_100265CCC();
        }

        BYTE4(v27) = 1;
      }

      if (v6)
      {
        goto LABEL_12;
      }

      if ([v9 type] == 13)
      {
        v11 = *(p_opt_class_meths + 146);
        if (v11 <= 30 && (v11 != -1 || _LogCategory_Initialize()))
        {
          sub_100265D0C();
        }

LABEL_12:
        v6 = 1;
        goto LABEL_19;
      }

      v6 = 0;
LABEL_19:
      if (objc_opt_respondsToSelector())
      {
        v12 = [v9 performSelector:"acl"];

        if (v12)
        {
          v13 = p_opt_class_meths;
          v14 = [v12 objectForKeyedSubscript:@"com.apple.developer"];
          v15 = [v14 BOOLValue];

          if (v15)
          {
            p_opt_class_meths = v13;
            v16 = *(v13 + 146);
            if (v16 <= 30 && (v16 != -1 || _LogCategory_Initialize()))
            {
              sub_100265D4C();
            }

            LOBYTE(v27) = 1;
            v5 = v12;
          }

          else
          {
            v5 = v12;
            p_opt_class_meths = v13;
          }
        }

        else
        {
          v5 = 0;
        }
      }

      v8 = v8 + 1;
    }

    while (v4 != v8);
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    v4 = v17;
  }

  while (v17);
LABEL_35:

  v18 = BYTE4(v27) & 1;
  if (self->_fitnessPairingEnabled != v18)
  {
    v19 = *(p_opt_class_meths + 146);
    if (v19 <= 30)
    {
      if (v19 != -1)
      {
        goto LABEL_38;
      }

      if (_LogCategory_Initialize())
      {
        fitnessPairingEnabled = self->_fitnessPairingEnabled;
LABEL_38:
        LogPrintF();
      }
    }

    self->_fitnessPairingEnabled = v18;
  }

  if (self->_sessionPairingEnabled != v6)
  {
    v20 = *(p_opt_class_meths + 146);
    if (v20 <= 30)
    {
      if (v20 != -1)
      {
        goto LABEL_44;
      }

      if (_LogCategory_Initialize())
      {
        sessionPairingEnabled = self->_sessionPairingEnabled;
LABEL_44:
        LogPrintF();
      }
    }

    self->_sessionPairingEnabled = v6;
  }

  v21 = v27 & 1;
  if (self->_coreDeviceEnabled != v21)
  {
    v22 = *(p_opt_class_meths + 146);
    if (v22 <= 30)
    {
      if (v22 != -1)
      {
        goto LABEL_50;
      }

      if (_LogCategory_Initialize())
      {
        coreDeviceEnabled = self->_coreDeviceEnabled;
LABEL_50:
        LogPrintF();
      }
    }

    self->_coreDeviceEnabled = v21;
  }
}

- (void)_identificationEnsureStopped
{
  idIdentitiesChangedNotifyToken = self->_idIdentitiesChangedNotifyToken;
  if (idIdentitiesChangedNotifyToken != -1)
  {
    if (dword_100973248 > 30)
    {
      goto LABEL_6;
    }

    if (dword_100973248 != -1 || _LogCategory_Initialize())
    {
      sub_100265DE0();
    }

    idIdentitiesChangedNotifyToken = self->_idIdentitiesChangedNotifyToken;
    if (idIdentitiesChangedNotifyToken != -1)
    {
LABEL_6:
      notify_cancel(idIdentitiesChangedNotifyToken);
      self->_idIdentitiesChangedNotifyToken = -1;
    }
  }

  idMaintenanceTimer = self->_idMaintenanceTimer;
  if (idMaintenanceTimer)
  {
    v5 = idMaintenanceTimer;
    dispatch_source_cancel(v5);
    v6 = self->_idMaintenanceTimer;
    self->_idMaintenanceTimer = 0;
  }

  [(NSMutableDictionary *)self->_idDevices removeAllObjects];
  idDevices = self->_idDevices;
  self->_idDevices = 0;
}

- (void)_identificationGetIdentities
{
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265DFC();
  }

  v3 = objc_alloc_init(RPClient);
  [v3 setDispatchQueue:self->_dispatchQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002579A4;
  v5[3] = &unk_1008CF0C8;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [v4 getIdentitiesWithFlags:28075 completion:v5];
}

- (id)idsDeviceIDsForFamily
{
  v3 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_idIdentityArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 type] == 4 || objc_msgSend(v9, "type") == 2)
        {
          v10 = [v9 model];
          v11 = [v10 hasPrefix:@"AppleTV"];

          if (v11)
          {
            v12 = [v9 idsDeviceID];
            if (v12)
            {
              v13 = v12;
              [v3 addObject:v12];
            }
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_identificationHandleDeviceFound:(id)a3 flags:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 identifier];
  if (!v6)
  {
    goto LABEL_94;
  }

  v7 = [v5 bleDevice];
  v8 = [v7 advertisementFields];
  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = [(NSMutableDictionary *)self->_idDevices objectForKeyedSubscript:v6];
  if (v10)
  {
    v11 = v10;
    v12 = [(SDBLEIdentifiedDevice *)v10 authTag];
    v13 = v9;
    v14 = v9;
    v15 = v12;
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      if ((v14 != 0) != (v15 == 0))
      {
        v17 = [v14 isEqual:v15];

        if (v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      [(SDBLEIdentifiedDevice *)v11 setAuthTag:v14];
      CFDataGetTypeID();
      [(SDBLEIdentifiedDevice *)v11 setBtAddr:CFDictionaryGetTypedValue()];
    }

LABEL_14:
    v9 = v13;
LABEL_15:
    [(SDNearbyAgent *)self _identificationIdentifyDevice:v11 sfDevice:v5];
    v19 = [(SDBLEIdentifiedDevice *)v11 identity];
    [(SDBLEIdentifiedDevice *)v11 setDiscoveryFlags:[(SDBLEIdentifiedDevice *)v11 discoveryFlags]| a4];
    goto LABEL_42;
  }

  if (![v5 paired])
  {
    p_idDevices = &self->_idDevices;
    if ([(NSMutableDictionary *)self->_idDevices count]> 0x257)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100265EC8(&self->_idDevices);
      }

      v19 = 0;
LABEL_25:
      v11 = 0;
      goto LABEL_42;
    }

    v11 = objc_alloc_init(SDBLEIdentifiedDevice);
    [(SDBLEIdentifiedDevice *)v11 setAuthTag:v9];
    CFDataGetTypeID();
    [(SDBLEIdentifiedDevice *)v11 setBtAddr:CFDictionaryGetTypedValue()];
    [(SDBLEIdentifiedDevice *)v11 setIdentifier:v6];
    v21 = *p_idDevices;
    if (!*p_idDevices)
    {
      v22 = objc_alloc_init(NSMutableDictionary);
      v23 = *p_idDevices;
      *p_idDevices = v22;

      v21 = *p_idDevices;
    }

    [(NSMutableDictionary *)v21 setObject:v11 forKeyedSubscript:v6];
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v18 = [v7 rpIdentity];
  if (v18)
  {
    v19 = v18;
LABEL_10:
    [v5 updateWithRPIdentity:v19];
    goto LABEL_25;
  }

  v11 = [v5 idsIdentifier];
  if (!v11)
  {
LABEL_37:
    v19 = 0;
    goto LABEL_42;
  }

  v59 = v9;
  v60 = v8;
  v61 = v7;
  v62 = v6;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v24 = self->_idIdentityArray;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v68;
LABEL_29:
    v28 = 0;
    while (1)
    {
      if (*v68 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v67 + 1) + 8 * v28);
      if ([v29 type] == 2)
      {
        v30 = [v29 idsDeviceID];
        v31 = [v30 isEqual:v11];

        if (v31)
        {
          break;
        }
      }

      if (v26 == ++v28)
      {
        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (v26)
        {
          goto LABEL_29;
        }

        goto LABEL_36;
      }
    }

    v19 = v29;
    v7 = v61;
    [v61 setRpIdentity:v19];

    if (v19)
    {
      v6 = v62;
      v9 = v59;
      v8 = v60;
      goto LABEL_10;
    }

    v11 = 0;
    v6 = v62;
  }

  else
  {
LABEL_36:

    v19 = 0;
    v11 = 0;
    v7 = v61;
    v6 = v62;
  }

  v9 = v59;
  v8 = v60;
LABEL_42:
  [v5 setAudioRoutingScore:0];
  if (v9)
  {
    v32 = v19 == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  if (!v32)
  {
    CFDataGetTypeID();
    v34 = CFDictionaryGetTypedValue();
    if (v34)
    {
      [(SDNearbyAgent *)self _identificationDecryptAudioRoutingScoreData:v34 device:v5 authTag:v9 identity:v19];
    }
  }

  if ((a4 & 0x10) != 0 && self->_contactHashesEnabled && [v5 deviceActionType] == 8)
  {
    CFDataGetTypeID();
    v35 = CFDictionaryGetTypedValue();
    if ([v35 length] >= 9)
    {
      [(SDStatusMonitor *)self->_statusMonitor contactIdentifierForMediumHashes:v35];
      v63 = v6;
      v36 = v7;
      v37 = v9;
      v39 = v38 = v8;
      [v5 setContactIdentifier:v39];

      v8 = v38;
      v9 = v37;
      v7 = v36;
      v6 = v63;
    }
  }

  [v5 setHotspotInfo:0];
  if (v33)
  {
    CFDataGetTypeID();
    v40 = CFDictionaryGetTypedValue();
    if (v40)
    {
      [(SDNearbyAgent *)self _identificationDecryptHotspotData:v40 device:v5 authTag:v9 identity:v19];
    }
  }

  v66 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v42 = [(SDNearbyAgent *)self _idsShouldEncryptActivityLevel];
  v43 = 0;
  if (v42 < 1)
  {
    [v7 setDecryptedActivityLevel:Int64Ranged];
    goto LABEL_83;
  }

  if (v9 && v19)
  {
    [v7 setDecryptedActivityLevel:{-[SDNearbyAgent _identificationDecryptActivityLevel:device:authTag:identity:](self, "_identificationDecryptActivityLevel:device:authTag:identity:", Int64Ranged, v5, v9, v19)}];
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265F1C();
    }

    goto LABEL_83;
  }

  v44 = v9;
  if (v9)
  {
    v45 = 30;
  }

  else
  {
    v45 = 90;
  }

  if (v45 >= dword_100973248)
  {
    if (dword_100973248 != -1)
    {
LABEL_75:
      v46 = "no";
      if (v44)
      {
        v47 = "yes";
      }

      else
      {
        v47 = "no";
      }

      if (v19)
      {
        v46 = "yes";
      }

      v57 = v43;
      v58 = v5;
      v55 = v47;
      v56 = v46;
      LogPrintF();
      goto LABEL_82;
    }

    if (_LogCategory_Initialize())
    {
      v43 = v66;
      goto LABEL_75;
    }
  }

LABEL_82:
  [v7 setDecryptedActivityLevel:{16, v55, v56, v57, v58}];
  v9 = v44;
LABEL_83:
  if ((a4 & 0x10) != 0 && [v5 deviceActionType] == 8)
  {
    CFDataGetTypeID();
    v48 = CFDictionaryGetTypedValue();
    if ([v48 length] == 3)
    {
      [(SDStatusMonitor *)self->_statusMonitor wifiSSIDForSSIDHash:v48];
      v50 = v49 = v8;
      [v5 setRequestSSID:v50];

      v8 = v49;
    }
  }

  if (!self->_idMaintenanceTimer)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265F60();
    }

    v51 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    idMaintenanceTimer = self->_idMaintenanceTimer;
    self->_idMaintenanceTimer = v51;

    v53 = self->_idMaintenanceTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100258930;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v53, handler);
    v54 = self->_idMaintenanceTimer;
    SFDispatchTimerSet();
    dispatch_resume(self->_idMaintenanceTimer);
  }

LABEL_94:
}

- (void)_identificationHandleDeviceLost:(id)a3 flags:(unint64_t)a4
{
  v6 = [a3 identifier];
  if (v6)
  {
    v11 = v6;
    v7 = [(NSMutableDictionary *)self->_idDevices objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 discoveryFlags];
      v10 = v9 & ~a4;
      if (v10 != v9)
      {
        [v8 setDiscoveryFlags:v10];
        if (!v10)
        {
          [v8 setLastUpdateTicks:mach_absolute_time()];
        }
      }
    }

    v6 = v11;
  }
}

- (void)_identificationReIdentify
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDNearbyAgent *)self _identificationReIdentifySameAccountDevices:self->_ddNearbyActionDevices type:15];
  [(SDNearbyAgent *)self _identificationReIdentifySameAccountDevices:self->_ddNearbyInfoDevices type:16];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMutableDictionary *)self->_idDevices allKeys];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_idDevices objectForKeyedSubscript:v8];
        if (!v9)
        {
          while (1)
          {
            [NSException raise:@"CUGuardLetNoReturn" format:@"CUGuardLet with no return"];
          }
        }

        v10 = v9;
        v11 = [(NSMutableDictionary *)self->_ddNearbyActionDevices objectForKeyedSubscript:v8];
        v12 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:v8];
        if (v11 && [(SDNearbyAgent *)self _identificationIdentifyDevice:v10 sfDevice:v11])
        {
          v13 = [v11 bleDevice];
          if (v13)
          {
            [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceChanged:v13 type:15 changes:1];
          }
        }

        if (v12 && [(SDNearbyAgent *)self _identificationIdentifyDevice:v10 sfDevice:v12])
        {
          v14 = [v12 bleDevice];
          if (v14)
          {
            [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceChanged:v14 type:16 changes:1];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_identificationReIdentifySameAccountDevices:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v30 = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v5 allKeys];
  v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v27 = *v38;
    v28 = v5;
    do
    {
      v9 = 0;
      v29 = v7;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [v5 objectForKeyedSubscript:*(*(&v37 + 1) + 8 * v9)];
        if (![v10 paired])
        {
          goto LABEL_30;
        }

        v11 = [v10 idsIdentifier];
        if (!v11)
        {
          goto LABEL_29;
        }

        v32 = [v10 bleDevice];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = v30->_idIdentityArray;
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (!v13)
        {
          goto LABEL_28;
        }

        v14 = v13;
        v15 = *v34;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            if ([v17 type] == 2)
            {
              v18 = [v17 idsDeviceID];
              v19 = [v18 isEqual:v11];

              if (v19)
              {
                v20 = [v32 rpIdentity];
                v21 = v20;
                if (v20)
                {
                  v22 = [v20 compareWithRPIdentity:v17];
                  [v32 setRpIdentity:v17];
                  if (!v22)
                  {
LABEL_27:

                    goto LABEL_28;
                  }
                }

                else
                {
                  [v32 setRpIdentity:v17];
                }

                if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                  [(SDNearbyAgent *)v30 _deviceDiscoveryBLEDeviceChanged:v32 type:a4 changes:1, v10, v32, v17];
                }

                else
                {
                  [(SDNearbyAgent *)v30 _deviceDiscoveryBLEDeviceChanged:v32 type:a4 changes:1, v23, v24, v25];
                }

                goto LABEL_27;
              }
            }
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

LABEL_28:

        v8 = v27;
        v5 = v28;
        v7 = v29;
LABEL_29:

LABEL_30:
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }
}

- (BOOL)_identificationIdentifyDevice:(id)a3 sfDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 authTag];
  if (!v8)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v9 = [v6 btAddr];
  if (!v9)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v22 = v6;
  v21 = [v7 deviceFlags];
  [v7 setDeviceFlags:{objc_msgSend(v7, "deviceFlags") & 0xFFFE2BB9}];
  mach_absolute_time();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = self->_idIdentityArray;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v24;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v23 + 1) + 8 * i);
      if ([v16 verifyAuthTag:v8 data:v9 type:2 error:0])
      {
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100266008(v22);
          if (v13)
          {
            goto LABEL_13;
          }
        }

        else if (v13)
        {
LABEL_13:
          v17 = [v13 contactID];

          if (!v17)
          {
            v18 = [v16 contactID];
            [v13 setContactID:v18];
          }

          goto LABEL_17;
        }

        v13 = v16;
        [v22 setIdentity:v13];
LABEL_17:
        [v7 updateWithRPIdentity:v16];
        continue;
      }
    }

    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v12);
LABEL_24:

  v19 = (([v7 deviceFlags] ^ v21) & 0x1D446) != 0;
  v6 = v22;
LABEL_25:

LABEL_26:
  return v19;
}

- (void)_identificationDecryptAudioRoutingScoreData:(id)a3 device:(id)a4 authTag:(id)a5 identity:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [a6 deviceIRKData];
  if ([v12 length])
  {
    v13 = v11;
    if ([v13 length])
    {
      memset(v14, 0, sizeof(v14));
      [v12 bytes];
      [v12 length];
      [v13 bytes];
      [v13 length];
      CryptoHKDF();
      if ([v9 length])
      {
        [v9 bytes];
        ccchacha20();
        [v10 setAudioRoutingScore:0];
      }
    }
  }
}

- (void)_identificationDecryptHotspotData:(id)a3 device:(id)a4 authTag:(id)a5 identity:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [a6 deviceIRKData];
  if ([v12 length])
  {
    v13 = v11;
    if ([v13 length])
    {
      memset(v14, 0, sizeof(v14));
      [v12 bytes];
      [v12 length];
      [v13 bytes];
      [v13 length];
      CryptoHKDF();
      if ([v9 length])
      {
        [v9 bytes];
        ccchacha20();
        [v10 setHotspotInfo:256];
      }
    }
  }
}

- (unsigned)_identificationDecryptActivityLevel:(unsigned __int8)a3 device:(id)a4 authTag:(id)a5 identity:(id)a6
{
  v7 = a5;
  v8 = [a6 deviceIRKData];
  if ([v8 length])
  {
    v9 = v7;
    if ([v9 length])
    {
      [v8 bytes];
      [v8 length];
      [v9 bytes];
      [v9 length];
      CryptoHKDF();
      ccchacha20();
    }
  }

  return 0;
}

- (void)_idsEnsureStarted
{
  if (!self->_idsService)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100266080();
    }

    v4 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.nearby"];
    idsService = self->_idsService;
    self->_idsService = v4;

    v6 = self->_idsService;
    dispatchQueue = self->_dispatchQueue;

    [(IDSService *)v6 addDelegate:self queue:dispatchQueue];
  }
}

- (void)_idsEnsureStopped
{
  v2 = self;
  objc_sync_enter(v2);
  idsBluetoothDevicesArray = v2->_idsBluetoothDevicesArray;
  v2->_idsBluetoothDevicesArray = 0;

  idsBluetoothDevicesSet = v2->_idsBluetoothDevicesSet;
  v2->_idsBluetoothDevicesSet = 0;

  idsBluetoothDeviceIDsForLEPipe = v2->_idsBluetoothDeviceIDsForLEPipe;
  v2->_idsBluetoothDeviceIDsForLEPipe = 0;

  idsBluetoothDeviceIDsForMe = v2->_idsBluetoothDeviceIDsForMe;
  v2->_idsBluetoothDeviceIDsForMe = 0;

  idsDeviceBTDictionary = v2->_idsDeviceBTDictionary;
  v2->_idsDeviceBTDictionary = 0;

  idsDeviceCountBTDictionary = v2->_idsDeviceCountBTDictionary;
  v2->_idsDeviceCountBTDictionary = 0;

  objc_sync_exit(v2);
  if (v2->_idsService)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026609C();
    }

    [(IDSService *)v2->_idsService removeDelegate:v2];
    idsService = v2->_idsService;
    v2->_idsService = 0;
  }
}

- (void)idsAddCachedIDSIdentifier:(id)a3 device:(id)a4
{
  v20 = a3;
  v21 = a4;
  v6 = self;
  objc_sync_enter(v6);
  mach_absolute_time();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(NSMutableDictionary *)v6->_idsBTtoIDSInfoMap allKeys];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)v6->_idsBTtoIDSInfoMap objectForKeyedSubscript:v11];
        CFDictionaryGetInt64();
        if (UpTicksToSeconds() >= 0x385)
        {
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
            [(NSMutableDictionary *)v6->_idsBTtoIDSInfoMap setObject:0 forKeyedSubscript:v11, v11, v12];
          }

          else
          {
            [(NSMutableDictionary *)v6->_idsBTtoIDSInfoMap setObject:0 forKeyedSubscript:v11, v18, v19];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  v13 = [v21 identifier];
  if (v13)
  {
    if (!v6->_idsBTtoIDSInfoMap)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      idsBTtoIDSInfoMap = v6->_idsBTtoIDSInfoMap;
      v6->_idsBTtoIDSInfoMap = v14;
    }

    v26[0] = @"addTicks";
    v16 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    v26[1] = @"idsID";
    v27[0] = v16;
    v27[1] = v20;
    v17 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      v18 = v13;
      v19 = v17;
      LogPrintF();
    }

    [(NSMutableDictionary *)v6->_idsBTtoIDSInfoMap setObject:v17 forKeyedSubscript:v13, v18, v19];
  }

  else if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  objc_sync_exit(v6);
}

- (void)idsAddCachedIDSIdentifierToDevice:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v10 idsIdentifier];

  if (!v5)
  {
    v6 = [v10 identifier];
    if (v6)
    {
      v7 = [(NSMutableDictionary *)v4->_idsBTtoIDSInfoMap objectForKeyedSubscript:v6];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectForKeyedSubscript:@"idsID"];
        if (v9)
        {
          [v10 setIdsIdentifier:v9];
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }
      }
    }
  }

  objc_sync_exit(v4);
}

- (id)_idsBluetoothDeviceIDsForHomePods
{
  v3 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SDNearbyAgent *)self idsDeviceArray];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 modelIdentifier];
        v11 = [v10 hasPrefix:@"AudioAccessory"];

        if (v11)
        {
          v12 = [v9 nsuuid];
          if (v12)
          {
            [v3 addObject:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_idsBluetoothDeviceIDsForiMessage
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = [IDSService alloc];
  v4 = [v3 initWithService:IDSServiceNameiMessage];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 devices];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) nsuuid];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v2;
}

- (id)idsBluetoothDeviceIDsForLEPipe
{
  v2 = self;
  objc_sync_enter(v2);
  idsBluetoothDeviceIDsForLEPipe = v2->_idsBluetoothDeviceIDsForLEPipe;
  if (!idsBluetoothDeviceIDsForLEPipe)
  {
    v4 = [(SDNearbyAgent *)v2 _idsBluetoothDeviceIDsForLEPipe];
    v5 = v2->_idsBluetoothDeviceIDsForLEPipe;
    v2->_idsBluetoothDeviceIDsForLEPipe = v4;

    idsBluetoothDeviceIDsForLEPipe = v2->_idsBluetoothDeviceIDsForLEPipe;
  }

  v6 = idsBluetoothDeviceIDsForLEPipe;
  objc_sync_exit(v2);

  return v6;
}

- (id)_idsBluetoothDeviceIDsForOneness
{
  v33 = objc_alloc_init(NSMutableSet);
  v3 = objc_alloc_init(NSMutableSet);
  if (GestaltGetDeviceClass() == 1)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v4 = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v5)
    {
      v6 = v5;
      v32 = self;
      v7 = *v43;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          v10 = [v9 modelIdentifier];
          v11 = [v10 lowercaseString];

          if (([v11 containsString:@"mac"] & 1) != 0 || objc_msgSend(v11, "containsString:", @"imac"))
          {
            v12 = [v9 uniqueID];
            [v3 addObject:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v6);
      self = v32;
    }
  }

  else
  {
    if (GestaltGetDeviceClass() != 100)
    {
      goto LABEL_25;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v4 = [(SDNearbyAgent *)self idsDeviceArray];
    v13 = [v4 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = self;
      v16 = *v39;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v4);
          }

          v18 = *(*(&v38 + 1) + 8 * j);
          v19 = [v18 modelIdentifier];
          v20 = [v19 lowercaseString];

          if ([v20 containsString:@"iphone"])
          {
            v21 = [v18 uniqueID];
            [v3 addObject:v21];
          }
        }

        v14 = [v4 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v14);
      self = v15;
    }
  }

LABEL_25:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [(SDNearbyAgent *)self idsDeviceArray];
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v34 + 1) + 8 * k);
        v28 = [v27 uniqueID];
        v29 = [v3 containsObject:v28];

        if (v29)
        {
          v30 = [v27 nsuuid];
          if (v30)
          {
            [v33 addObject:v30];
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v24);
  }

  return v33;
}

- (id)idsBluetoothDeviceIDsForWatches
{
  v3 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SDNearbyAgent *)self idsDeviceArray];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 modelIdentifier];
        v11 = [v10 hasPrefix:@"Watch"];

        if (v11)
        {
          v12 = [v9 nsuuid];
          if (v12)
          {
            [v3 addObject:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_idsBluetoothDeviceIDsForSharing
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SDNearbyAgent *)v2 _idsBluetoothDeviceIDsForSharingLocked];
  objc_sync_exit(v2);

  return v3;
}

- (id)_idsBluetoothDeviceIDsForSharingLocked
{
  idsBluetoothDevicesArray = self->_idsBluetoothDevicesArray;
  if (!idsBluetoothDevicesArray)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(SDNearbyAgent *)self idsDeviceArray];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) nsuuid];
          if (v10)
          {
            [(NSArray *)v4 addObject:v10];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = self->_idsBluetoothDevicesArray;
    self->_idsBluetoothDevicesArray = v4;

    idsBluetoothDevicesArray = self->_idsBluetoothDevicesArray;
  }

  return idsBluetoothDevicesArray;
}

- (id)_idsBluetoothDeviceIDsForSMSRelay
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = [IDSService alloc];
  v4 = [v3 initWithService:IDSServiceNameSMSRelay];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 devices];
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
        if (([v10 supportsSMSRelay] & 1) != 0 || objc_msgSend(v10, "supportsMMSRelay"))
        {
          v11 = [v10 nsuuid];
          if (v11)
          {
            [v2 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v2;
}

- (id)_idsBluetoothDeviceIDsForAnnouncements
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100249B98;
  v17 = sub_100249BA8;
  v18 = objc_alloc_init(NSMutableSet);
  v2 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v3 = qword_10098A470;
  v23 = qword_10098A470;
  if (!qword_10098A470)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100261A28;
    v19[3] = &unk_1008CDA20;
    v19[4] = &v20;
    sub_100261A28(v19);
    v3 = v21[3];
  }

  v4 = v3;
  _Block_object_dispose(&v20, 8);
  v5 = objc_alloc_init(v3);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10025AA68;
  v10[3] = &unk_1008D58B8;
  v12 = &v13;
  v6 = v2;
  v11 = v6;
  [v5 getScanningDeviceCandidates:v10];
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)idsDeviceForBluetoothDeviceID:(id)a3 conflictDetected:(BOOL *)a4
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  idsDeviceBTDictionary = v6->_idsDeviceBTDictionary;
  if (!idsDeviceBTDictionary)
  {
    v26 = v5;
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = objc_alloc_init(NSMutableDictionary);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [(SDNearbyAgent *)v6 idsDeviceArray];
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = [v14 nsuuid];
          if (v15)
          {
            [(NSDictionary *)v8 setObject:v14 forKeyedSubscript:v15];
            v16 = [NSNumber numberWithUnsignedInt:CFDictionaryGetInt64Ranged() + 1];
            [(NSDictionary *)v9 setObject:v16 forKeyedSubscript:v15];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v17 = v6->_idsDeviceBTDictionary;
    v6->_idsDeviceBTDictionary = v8;
    v18 = v8;

    idsDeviceCountBTDictionary = v6->_idsDeviceCountBTDictionary;
    v6->_idsDeviceCountBTDictionary = v9;

    idsDeviceBTDictionary = v6->_idsDeviceBTDictionary;
    v5 = v26;
  }

  v20 = [(NSDictionary *)idsDeviceBTDictionary objectForKeyedSubscript:v5];
  v21 = v6->_idsDeviceCountBTDictionary;
  v22 = v5;
  v23 = (CFDictionaryGetInt64Ranged() & 0xFFFFFFFELL) == 0 || v20 == 0;
  v24 = !v23;
  if (!v23 && dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a4)
  {
    *a4 = v24;
  }

  objc_sync_exit(v6);

  return v20;
}

- (void)idsDevicesAppendDescription:(id *)a3
{
  v4 = [(NSData *)self->_bleAdvertisingAddress bytes];
  v5 = IDSCopyLocalDeviceUniqueID();
  v49 = SFDeviceModel();
  NSAppendPrintF();

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v6 = [(SDNearbyAgent *)self idsDeviceArray:v4];
  v55 = [v6 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v55)
  {
    v53 = *v68;
    v52 = IDSServiceNameiMessage;
    v51 = IDSServiceNameSMSRelay;
    v54 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v68 != v53)
        {
          objc_enumerationMutation(v6);
        }

        v58 = v7;
        v8 = *(*(&v67 + 1) + 8 * v7);
        v9 = [v8 name];
        v10 = [v8 uniqueIDOverride];
        v11 = [v8 modelIdentifier];
        v12 = [v8 productBuildVersion];
        v50 = [v8 nsuuid];
        NSAppendPrintF();

        v13 = [v8 nsuuid];

        if (v13)
        {
          v14 = [[IDSService alloc] initWithService:v52];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v56 = v14;
          v15 = [v14 devices];
          v16 = [v15 countByEnumeratingWithState:&v63 objects:v72 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v64;
            while (2)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v64 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v63 + 1) + 8 * i);
                v21 = [v8 uniqueIDOverride];
                if (!v21)
                {
                  goto LABEL_48;
                }

                v22 = v21;
                v23 = [v20 uniqueIDOverride];
                v24 = [v8 uniqueIDOverride];
                v25 = [v23 isEqual:v24];

                if (v25)
                {
LABEL_48:
                  v26 = [v8 nsuuid];
                  if (!v26)
                  {
                    goto LABEL_19;
                  }

                  v27 = v26;
                  v28 = [v20 nsuuid];
                  v29 = [v8 nsuuid];
                  v30 = [v28 isEqual:v29];

                  if (v30)
                  {
LABEL_19:

                    NSAppendPrintF();
                    goto LABEL_20;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v63 objects:v72 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_20:
        v31 = [v8 nsuuid];

        if (v31)
        {
          v32 = [[IDSService alloc] initWithService:v51];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v57 = v32;
          v33 = [v32 devices];
          v34 = [v33 countByEnumeratingWithState:&v59 objects:v71 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v60;
            while (2)
            {
              for (j = 0; j != v35; j = j + 1)
              {
                if (*v60 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v59 + 1) + 8 * j);
                if (([v38 supportsSMSRelay] & 1) != 0 || objc_msgSend(v38, "supportsMMSRelay"))
                {
                  v39 = [v8 uniqueIDOverride];
                  if (!v39)
                  {
                    goto LABEL_49;
                  }

                  v40 = v39;
                  v41 = [v38 uniqueIDOverride];
                  v42 = [v8 uniqueIDOverride];
                  v43 = [v41 isEqual:v42];

                  if (v43)
                  {
LABEL_49:
                    v44 = [v8 nsuuid];
                    if (!v44)
                    {
                      goto LABEL_35;
                    }

                    v45 = v44;
                    v46 = [v38 nsuuid];
                    v47 = [v8 nsuuid];
                    v48 = [v46 isEqual:v47];

                    if (v48)
                    {
LABEL_35:

                      NSAppendPrintF();
                      goto LABEL_36;
                    }
                  }
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v59 objects:v71 count:16];
              if (v35)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_36:
        if ([v8 isActive])
        {
          NSAppendPrintF();
        }

        v6 = v54;
        if ([v8 isConnected])
        {
          NSAppendPrintF();
        }

        if ([v8 isLocallyPaired])
        {
          NSAppendPrintF();
        }

        NSAppendPrintF();
        v7 = v58 + 1;
      }

      while ((v58 + 1) != v55);
      v55 = [v54 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v55);
  }

  else
  {

    NSAppendPrintF();
  }
}

- (BOOL)_idsHasActiveWatch
{
  if (self->_idsHasActiveWatchCache < 0)
  {
    self->_idsHasActiveWatchCache = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [(SDNearbyAgent *)self idsDeviceArray];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if ([v8 isLocallyPaired])
          {
            if ([v8 isActive] && (objc_msgSend(v8, "isConnected") & 1) != 0 || objc_msgSend(v8, "isConnected") && (objc_msgSend(v8, "productBuildVersion"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "compare:options:", @"14S", 65), v9, (v10 & 0x8000000000000000) != 0))
            {
              self->_idsHasActiveWatchCache = 1;
              goto LABEL_16;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  return self->_idsHasActiveWatchCache != 0;
}

- (int)_idsVisionOS1Count
{
  result = self->_idsVisionOS1CountCache;
  if (result < 0)
  {
    self->_idsVisionOS1CountCache = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v13;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 productName];
        if (![v10 isEqualToString:@"xrOS"])
        {
          goto LABEL_12;
        }

        if (!v9)
        {
          v11 = 0;
LABEL_12:

          continue;
        }

        [v9 operatingSystemVersion];

        if (v11 == 1)
        {
          ++self->_idsVisionOS1CountCache;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v6)
      {
LABEL_15:

        return self->_idsVisionOS1CountCache;
      }
    }
  }

  return result;
}

- (int)_idsMacCount
{
  result = self->_idsMacCountCache;
  if (result < 0)
  {
    self->_idsMacCountCache = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * v8) modelIdentifier];
          v10 = [v9 containsString:@"Mac"];

          if (v10)
          {
            ++self->_idsMacCountCache;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return self->_idsMacCountCache;
  }

  return result;
}

- (void)_idsMeDeviceChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self;
  objc_sync_enter(v3);
  idsBluetoothDeviceIDsForMe = v3->_idsBluetoothDeviceIDsForMe;
  v3->_idsBluetoothDeviceIDsForMe = 0;

  objc_sync_exit(v3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3->_ddRequests;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 discoveryFlags] & 0x100000) != 0)
        {
          v11 = [(SDNearbyAgent *)v3 _idsBluetoothDeviceIDsForMe];
          [v10 setDeviceFilter:v11];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(SDNearbyAgent *)v3 _update];
}

- (int)_idsWatchCount
{
  result = self->_idsWatchCountCache;
  if (result < 0)
  {
    self->_idsWatchCountCache = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = self;
    v4 = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 modelIdentifier];
          v11 = [v10 containsString:@"Watch"];

          if (v11)
          {
            v12 = [v9 modelIdentifier];
            GestaltProductTypeStringToDeviceClass();
            if (v9)
            {
              [v9 operatingSystemVersion];
              [v9 operatingSystemVersion];
              [v9 operatingSystemVersion];
            }

            LODWORD(v14) = 10100;
            v13 = DeviceOSVersionAtOrLaterEx();

            if (v13)
            {
              ++v15->_idsWatchCountCache;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    return v15->_idsWatchCountCache;
  }

  return result;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v17 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v9 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = self;
  objc_sync_enter(v7);
  v7->_idsIsSignedInCache = -1;
  objc_sync_exit(v7);

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"SDNotificationNameIDSAccountsChanged" object:v7];

  [(SDNearbyAgent *)v7 service:v9 devicesChanged:0];
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v9 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    v7 = v9;
    v8 = v6;
    LogPrintF();
  }

  self->_idsHasActiveWatchCache = -1;
  [(SDNearbyAgent *)self _update:v7];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266130(v6);
  }

  v7 = self;
  objc_sync_enter(v7);
  idsBluetoothDevicesArray = v7->_idsBluetoothDevicesArray;
  v7->_idsBluetoothDevicesArray = 0;

  idsBluetoothDevicesSet = v7->_idsBluetoothDevicesSet;
  v7->_idsBluetoothDevicesSet = 0;

  idsBluetoothDeviceIDsForLEPipe = v7->_idsBluetoothDeviceIDsForLEPipe;
  v7->_idsBluetoothDeviceIDsForLEPipe = 0;

  idsBluetoothDeviceIDsForMe = v7->_idsBluetoothDeviceIDsForMe;
  v7->_idsBluetoothDeviceIDsForMe = 0;

  objc_storeStrong(&v7->_idsDeviceArray, a4);
  idsDeviceBTDictionary = v7->_idsDeviceBTDictionary;
  v7->_idsDeviceBTDictionary = 0;

  idsDeviceCountBTDictionary = v7->_idsDeviceCountBTDictionary;
  v7->_idsDeviceCountBTDictionary = 0;

  v7->_idsIsSignedInCache = -1;
  objc_sync_exit(v7);

  v7->_allowEnhancedDiscovery = -1;
  v7->_idsAppleTVCountCache = -1;
  v7->_idsContinuityDeviceCountCache = -1;
  v7->_idsMacCountCache = -1;
  *&v7->_idsShouldAdvertiseNearbyInfo = -1;
  v7->_idsWatchCountCache = -1;
  *&v7->_idsHasActiveWatchCache = -1;
  *&v7->_idsVisionOS1CountCache = -1;
  if (v7->_bleNearbyInfoScanner)
  {
    if ([(NSMutableSet *)v7->_caRequests count])
    {
      v14 = [(SDNearbyAgent *)v7 _idsBluetoothDeviceIDsForSharing];
      [(SFBLEScanner *)v7->_bleNearbyInfoScanner setDeviceFilter:v14];
    }

    else
    {
      [(SFBLEScanner *)v7->_bleNearbyInfoScanner setDeviceFilter:0];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v7->_ddRequests;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        if (([v20 discoveryFlags] & 0x20) != 0)
        {
          v21 = [(SDNearbyAgent *)v7 idsBluetoothDeviceIDsForSharing];
LABEL_21:
          v22 = v21;
          [v20 setDeviceFilter:v21];

          continue;
        }

        if (([v20 discoveryFlags] & 0x100000) != 0)
        {
          v21 = [(SDNearbyAgent *)v7 _idsBluetoothDeviceIDsForMe];
          goto LABEL_21;
        }

        if (([v20 discoveryFlags] & 0x200000) != 0)
        {
          v21 = [(SDNearbyAgent *)v7 _idsBluetoothDeviceIDsForHomePods];
          goto LABEL_21;
        }

        if (([v20 discoveryFlags] & 0x1000000) != 0)
        {
          [(SDNearbyAgent *)v7 _unlockDeviceFilterChangedForRequest:v20];
        }
      }

      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  [(SDNearbyAgent *)v7 _registerForMagicMountUpdates];
  [(SDNearbyAgent *)v7 _update];
  v23 = +[NSNotificationCenter defaultCenter];
  [v23 postNotificationName:@"SDNotificationNameIDSDevicesChanged" object:v7];
}

- (BOOL)isDeviceValidRIServer:(id)a3
{
  if (self->_isRIClientEnabled)
  {
    return [a3 hasPrefix:@"iProd"];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isTempAuthTagKnown:(id)a3 bluetoothAddressData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_idIdentityArray;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * i) verifyAuthTag:v6 data:v7 type:2 error:{0, v13}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (int)serviceStart:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceUUID];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266174();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_48:
    v16 = -6745;
    goto LABEL_52;
  }

  if (!v5)
  {
    goto LABEL_48;
  }

LABEL_5:
  v6 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v5];

  if (!v6)
  {
    if ([v4 needsSetup] && ((v7 = objc_msgSend(v4, "deviceActionType"), v7 == 11) || v7 == 33 || objc_msgSend(v4, "deviceActionType") == 9 || objc_msgSend(v4, "deviceActionType") == 10 || objc_msgSend(v4, "deviceActionType") == 36 || objc_msgSend(v4, "deviceActionType") == 90 || objc_msgSend(v4, "deviceActionType") == 1) || objc_msgSend(v4, "deviceActionType") == 19 || objc_msgSend(v4, "deviceActionType") == 22)
    {
      if (![v4 deviceClassCode])
      {
        [v4 setDeviceClassCode:SFDeviceClassCodeGet()];
      }

      v8 = [v4 deviceColorCode];
      if (v8 == SFDeviceColorCodeUnknown)
      {
        [v4 setDeviceColorCode:SFDeviceColorCodeGet()];
      }

      if (![v4 deviceModelCode])
      {
        [v4 setDeviceModelCode:SFDeviceModelCodeGet()];
      }

      if (self->_homePodIdentifiesAsB520)
      {
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002661B4();
        }

        [v4 setDeviceModelCode:5];
      }

      if (self->_homePodIdentifiesAsB620)
      {
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002661F4();
        }

        [v4 setDeviceModelCode:6];
      }

      homePodModelCodeOverride = self->_homePodModelCodeOverride;
      if ((homePodModelCodeOverride & 0x80000000) != 0)
      {
        goto LABEL_43;
      }

      if (dword_100973248 <= 30)
      {
        if (dword_100973248 != -1 || (v12 = _LogCategory_Initialize(), homePodModelCodeOverride = self->_homePodModelCodeOverride, v12))
        {
          v19 = homePodModelCodeOverride;
          LogPrintF();
          [v4 setDeviceModelCode:{self->_homePodModelCodeOverride, v19}];
LABEL_43:
          services = self->_services;
          if (!services)
          {
            v14 = objc_alloc_init(NSMutableDictionary);
            v15 = self->_services;
            self->_services = v14;

            services = self->_services;
          }

          [(NSMutableDictionary *)services setObject:v4 forKeyedSubscript:v5];
          [(SDNearbyAgent *)self _update];
          v16 = 0;
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = [v4 identifier];
      v11 = SFServiceIdentifierProxHandoff;

      if (v10 != v11)
      {
        goto LABEL_43;
      }

      if (![v4 deviceClassCode])
      {
        [v4 setDeviceClassCode:SFDeviceClassCodeGet()];
      }

      if ([v4 deviceModelCode])
      {
        goto LABEL_43;
      }

      LOBYTE(homePodModelCodeOverride) = SFDeviceModelCodeGet();
    }

    [v4 setDeviceModelCode:{homePodModelCodeOverride, v18}];
    goto LABEL_43;
  }

  v16 = -6721;
LABEL_52:
  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266234();
  }

LABEL_46:

  return v16;
}

- (void)serviceStop:(id)a3
{
  v5 = a3;
  v4 = [v5 serviceUUID];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266274();
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    [(NSMutableDictionary *)self->_services removeObjectForKey:v4];
    [(SDNearbyAgent *)self _update];
    goto LABEL_6;
  }

  sub_1002662B4();
LABEL_6:
}

- (void)serviceReceivedFrameType:(unsigned __int8)a3 serviceType:(unsigned __int8)a4 data:(id)a5 peer:(id)a6
{
  v10 = a5;
  v11 = a6;
  services = self->_services;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10025C9D4;
  v15[3] = &unk_1008D58E0;
  v18 = a4;
  v19 = a3;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  [(NSMutableDictionary *)services enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)serviceSendRequest:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDNearbyAgent *)self _sendMessage:v6 frameType:9 service:v7 session:0];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 responseMessageInternalHandler];

    if (v10)
    {
      if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266328(v6, v7);
      }

      v11 = [[SFResponseMessage alloc] initWithRequestMessage:v6];
      v15 = @"error";
      v12 = [NSNumber numberWithInt:v9];
      v16 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [v11 setHeaderFields:v13];

      v14 = [v7 responseMessageInternalHandler];
      (v14)[2](v14, v11);
    }
  }
}

- (int)sessionStart:(id)a3
{
  v4 = a3;
  v5 = [v4 peerDevice];
  v6 = [v5 identifier];
  v7 = [v4 identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002663A4(v4);
  }

  v8 = 0;
  v9 = -6708;
  if (!v6 || !v7)
  {
    goto LABEL_37;
  }

  v10 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v7];

  if (v10)
  {
    v8 = 0;
    v9 = -6721;
    goto LABEL_37;
  }

  if ([(NSMutableDictionary *)self->_sessions count]> 0x7F)
  {
    v8 = 0;
    v9 = -6764;
    goto LABEL_37;
  }

  v11 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v6];
  if (v11)
  {
    v8 = v11;
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100266410();
    }

    [v8 addClient:v4];
    [v8 setAcceptor:0];
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100266450();
    }

    v12 = [v5 bleDevice];
    if (!v12)
    {
      v12 = objc_alloc_init(SFBLEDevice);
      [v12 setIdentifier:v6];
    }

    v8 = [[SFBLEConnection alloc] initWithDevice:v12 acceptor:0];
    [v8 setDispatchQueue:self->_dispatchQueue];
    [v8 setSessionFlags:{objc_msgSend(v4, "sessionFlags")}];
    if ([v4 serviceType] == 4)
    {
      [v8 setUseCase:131103];
    }

    bleConnections = self->_bleConnections;
    if (!bleConnections)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = self->_bleConnections;
      self->_bleConnections = v14;

      bleConnections = self->_bleConnections;
    }

    [(NSMutableDictionary *)bleConnections setObject:v8 forKeyedSubscript:v6];
    [v8 addClient:v4];
    [v8 activateDirect];
  }

  if (![v4 serviceType])
  {
    v27 = 0;
    v28 = 0;
    v16 = [v4 serviceUUID];
    [v16 getUUIDBytes:&v27];

    if (v27 == 0x10000001000000 && v28 == 0xDF80FBF31F000080)
    {
      v26 = [(SDNearbyAgent *)self _setupSendCreateSession:v4 cnx:v8];
      if (v26)
      {
        v9 = v26;
LABEL_37:
        if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100266490();
        }

        goto LABEL_34;
      }
    }
  }

  v18 = [self->_bleWPNearby state];
  if (v18)
  {
    v19 = v18;
    v20 = [v4 bluetoothStateChangedHandler];

    if (v20)
    {
      v21 = [v4 bluetoothStateChangedHandler];
      (v21)[2](v21, v19);
    }
  }

  sessions = self->_sessions;
  if (!sessions)
  {
    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = self->_sessions;
    self->_sessions = v23;

    sessions = self->_sessions;
  }

  [(NSMutableDictionary *)sessions setObject:v4 forKeyedSubscript:v7];
  [(SDNearbyAgent *)self _update];
  v9 = 0;
LABEL_34:

  return v9;
}

- (void)sessionStop:(id)a3
{
  v11 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v11 peerDevice];
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v5];
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      v9 = v5;
      v10 = v6;
      v8 = v11;
      LogPrintF();
    }

    if (v6 && ([v6 removeClient:v11] & 1) == 0)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002664D0();
      }

      [(NSMutableDictionary *)self->_bleConnections removeObjectForKey:v5, v8, v9, v10];
      [v6 invalidate];
    }
  }

  else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266510();
  }

  v7 = [v11 identifier];

  if (v7)
  {
    [(NSMutableDictionary *)self->_sessions removeObjectForKey:v7];
  }

  [(SDNearbyAgent *)self _update];
}

- (void)sessionReceivedFrameType:(unsigned __int8)a3 serviceType:(unsigned __int8)a4 data:(id)a5 peer:(id)a6
{
  v10 = a5;
  v11 = a6;
  sessions = self->_sessions;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10025D290;
  v15[3] = &unk_1008D5908;
  v18 = a4;
  v19 = a3;
  v16 = v11;
  v17 = v10;
  v13 = v10;
  v14 = v11;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)sessionSendEvent:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 serviceUUID];
  v23 = 0;
  v24 = 0;
  if (v8)
  {
    v9 = v8;
    [v8 getUUIDBytes:&v23];
    v10 = v23 == 0x10000006000000 && v24 == 0xDF80FBF31F000080;
    v11 = !v10;

    if (!v11)
    {
      v12 = [v7 peerDevice];
      v13 = [v12 identifier];

      if (v13)
      {
        v14 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = v14;
          v16 = [v6 headerFields];

          if (!v16)
          {
            v17 = [v6 bodyData];
            if ([v17 length])
            {
              v18 = objc_alloc_init(NSMutableData);
              v22 = 11;
              [v18 appendBytes:&v22 length:1];
              [v18 appendData:v17];
              v19[0] = _NSConcreteStackBlock;
              v19[1] = 3221225472;
              v19[2] = sub_10025D654;
              v19[3] = &unk_1008CF250;
              v17 = v17;
              v20 = v17;
              v21 = v13;
              [v15 sendData:v18 completion:v19];
            }

            else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100266584();
            }

            goto LABEL_15;
          }

          if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100266550();
          }

LABEL_25:
          v17 = 0;
LABEL_15:

          goto LABEL_16;
        }

        if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002665B8();
        }
      }

      else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002665F8();
      }

      v15 = 0;
      goto LABEL_25;
    }
  }

  [(SDNearbyAgent *)self _sendMessage:v6 frameType:8 service:0 session:v7];
LABEL_16:
}

- (void)sessionSendRequest:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDNearbyAgent *)self _sendMessage:v6 frameType:9 service:0 session:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 responseMessageInternalHandler];

    if (v10)
    {
      if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266688(v6, v7);
      }

      v11 = [[SFResponseMessage alloc] initWithRequestMessage:v6];
      v15 = @"error";
      v12 = [NSNumber numberWithInt:v9];
      v16 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [v11 setHeaderFields:v13];

      v14 = [v7 responseMessageInternalHandler];
      (v14)[2](v14, v11);
    }
  }
}

- (int)_sendMessage:(id)a3 frameType:(unsigned __int8)a4 service:(id)a5 session:(id)a6
{
  v10 = a3;
  v74 = a4;
  v11 = a5;
  v12 = a6;
  v62 = v10;
  v13 = [v10 identifier];
  v73 = 0;
  v78 = 0;
  v79 = 0;
  v77[0] = 0;
  v77[1] = 0;
  if ([(NSMutableDictionary *)self->_bleConnections count])
  {
    if (v12)
    {
      v14 = [v12 peerDevice];
      v15 = [v14 identifier];

      v16 = [v12 identifier];
      v17 = v12;
    }

    else
    {
      v18 = [v62 peerDevice];
      v15 = [v18 identifier];

      if (!v15)
      {
        v19 = [(NSMutableDictionary *)self->_bleConnections allValues];
        v20 = [v19 firstObject];
        v21 = [v20 peerDevice];
        v15 = [v21 identifier];
      }

      v16 = [[NSUUID alloc] initWithUUIDBytes:&unk_1007F5651];
      v17 = v11;
    }

    v22 = [v17 serviceUUID];
    if (v15)
    {
      v23 = objc_alloc_init(NSMutableData);
      [v23 appendBytes:&v74 length:1];
      if (v16)
      {
        [v16 getUUIDBytes:v77];
        [v23 appendBytes:v77 length:16];
        if (v13)
        {
          [v13 getUUIDBytes:v77];
          [v23 appendBytes:v77 length:16];
          v24 = [v62 headerFields];
          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = &__NSDictionary0__struct;
          }

          v26 = [v25 mutableCopy];
          if (v22)
          {
            v61 = v16;
            v58 = v25;
            v27 = v12;
            v28 = v13;
            v29 = v11;
            v30 = v23;
            [v22 getUUIDBytes:&v78];
            v31 = [NSData dataWithBytes:&v78 length:16];
            [v26 setObject:v31 forKeyedSubscript:@"_serviceUUID"];

            v59 = v26;
            Data = CFBinaryPlistStreamedCreateDataEx();
            v23 = v30;
            [v30 appendData:Data];
            v33 = [v62 bodyData];
            if (!v33)
            {
              v33 = +[NSData data];
            }

            v57 = v33;
            v34 = CFBinaryPlistStreamedCreateDataEx();

            v60 = v34;
            [v30 appendData:v34];
            if (v78 == 0x10000001000000 && v79 == 0xDF80FBF31F000080)
            {
              v45 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v15];
              if (v45)
              {
                v46 = [v30 mutableBytes];
                v11 = v29;
                if (v74 - 8 <= 2)
                {
                  *v46 = v74 + 26;
                }

                v12 = v27;
                v73 = [(SDNearbyAgent *)self _setupSendData:v23 sessionIdentifier:v61 cnx:v45 clientSession:v27];
                v13 = v28;
              }

              else
              {
                sub_1002667C4(&v73);
                v11 = v29;
                v13 = v28;
                v12 = v27;
              }

              v25 = v58;
              v26 = v59;
              v16 = v61;
            }

            else
            {
              v56 = v22;
              v36 = [v62 deviceIDs];
              v37 = v36;
              if (v36)
              {
                v55 = v29;
                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                v38 = [v36 countByEnumeratingWithState:&v69 objects:v76 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v70;
                  do
                  {
                    v41 = 0;
                    do
                    {
                      v42 = v15;
                      if (*v70 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v15 = *(*(&v69 + 1) + 8 * v41);

                      v43 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v15];
                      if (v43)
                      {
                        v66[0] = _NSConcreteStackBlock;
                        v66[1] = 3221225472;
                        v66[2] = sub_10025E0F4;
                        v66[3] = &unk_1008CF250;
                        v67 = v15;
                        v68 = v62;
                        [v43 sendData:v30 completion:v66];
                      }

                      else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                      {
                        sub_100266704();
                      }

                      v41 = v41 + 1;
                    }

                    while (v39 != v41);
                    v44 = [v37 countByEnumeratingWithState:&v69 objects:v76 count:16];
                    v39 = v44;
                  }

                  while (v44);
                }

                v15 = 0;
                v12 = v27;
                v13 = v28;
                v16 = v61;
                v23 = v30;
                v11 = v55;
              }

              else
              {
                v47 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v15];
                if (v47)
                {
                  v48 = v47;
                  v63[0] = _NSConcreteStackBlock;
                  v63[1] = 3221225472;
                  v63[2] = sub_10025E17C;
                  v63[3] = &unk_1008CF250;
                  v15 = v15;
                  v64 = v15;
                  v65 = v62;
                  [v48 sendData:v30 completion:v63];
                }

                else
                {
                  sub_100266744(&v73, v15, &v75);
                  v15 = v75;
                }

                v11 = v29;
                v13 = v28;
                v12 = v27;
                v16 = v61;
              }

              v22 = v56;
              v25 = v58;
              v26 = v59;
            }

            v49 = v57;
          }

          else
          {
            v73 = -6708;
            if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100266834();
            }

            v60 = 0;
            v49 = 0;
            v22 = 0;
          }
        }

        else
        {
          v73 = -6708;
          if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100266868();
          }

          v26 = 0;
          v60 = 0;
          v49 = 0;
          v25 = 0;
        }
      }

      else
      {
        v73 = -6708;
        if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_10026689C();
        }

        v26 = 0;
        v60 = 0;
        v49 = 0;
        v25 = 0;
        v16 = 0;
      }
    }

    else
    {
      v73 = 0;
      if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002668D0();
      }

      v26 = 0;
      v60 = 0;
      v49 = 0;
      v25 = 0;
      v23 = 0;
      v15 = 0;
    }
  }

  else
  {
    v26 = 0;
    v60 = 0;
    v49 = 0;
    v25 = 0;
    v23 = 0;
    v22 = 0;
    v16 = 0;
    v15 = 0;
    v73 = 0;
  }

  v50 = v73;
  if (v73)
  {
    if (dword_100973248 <= 60)
    {
      if (dword_100973248 != -1 || (v52 = v49, v53 = _LogCategory_Initialize(), v49 = v52, v50 = v73, v53))
      {
        v51 = v49;
        LogPrintF();
        v49 = v51;
        v50 = v73;
      }
    }
  }

  return v50;
}

- (int)_setupHandleCreateSession:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 bytes];
  v9 = [v7 length];
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266984(v6);
  }

  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  v10 = [[NSUUID alloc] initWithUUIDBytes:&unk_1007F5640];
  if (!v10)
  {
    v11 = 0;
LABEL_18:
    v23 = -6700;
    goto LABEL_21;
  }

  v11 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v10];
  if (!v11)
  {
    v23 = -6727;
    goto LABEL_21;
  }

  if (v9 > 16)
  {
    if (v9 < 0x31)
    {
      v23 = -6743;
      goto LABEL_21;
    }

    v12 = [[NSUUID alloc] initWithUUIDBytes:v8 + 1];
    if (v12)
    {
      v13 = v12;
      v14 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v12];
      if (!v14)
      {
        v14 = objc_alloc_init(SDSession);
        [(SDSession *)v14 setIdentifier:v13];
        v15 = [v6 peerDevice];
        v16 = [v15 identifier];
        [(SDSession *)v14 setPeerIdentifier:v16];

        setupSessions = self->_setupSessions;
        if (!setupSessions)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_setupSessions;
          self->_setupSessions = v18;

          setupSessions = self->_setupSessions;
        }

        [(NSMutableDictionary *)setupSessions setObject:v14 forKeyedSubscript:v13];
      }

      [(SDSession *)v14 setSessionCreated:1];
      RandomBytes();
      cccurve25519_make_pub();
      cccurve25519();
      CryptoHKDF();
      v20 = [NSData dataWithBytes:v26 length:32, v26];
      [(SDSession *)v14 setReadKey:v20];

      [(SDSession *)v14 setReadNonce:0];
      CryptoHKDF();
      v21 = [NSData dataWithBytes:v26 length:32, v26];
      [(SDSession *)v14 setWriteKey:v21];

      [(SDSession *)v14 setWriteNonce:0];
      v22 = objc_alloc_init(NSMutableData);
      v25 = 33;
      [v22 appendBytes:&v25 length:1];
      [v22 appendBytes:v8 + 1 length:16];
      [v22 appendBytes:v27 length:32];
      [v6 sendData:v22 completion:0];

      v23 = 0;
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v23 = -6708;
LABEL_21:
  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266A00();
  }

LABEL_14:

  return v23;
}

- (int)_setupHandleSessionMessageType:(unsigned __int8)a3 src:(const char *)a4 end:(const char *)a5 cnx:(id)a6 session:(id)a7
{
  v10 = a3;
  v53 = a6;
  v52 = a7;
  v54 = 0;
  if (a5 - a4 <= 15)
  {
    v54 = -6750;
    if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100266C18();
    }

    v12 = 0;
    v50 = 0;
    v15 = 0;
    v19 = 0;
    v18 = 0;
    v31 = 0;
    v20 = 0;
    v22 = 0;
    goto LABEL_35;
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:a4];
  v13 = CFBinaryPlistStreamedCreateWithBytesEx2();
  v50 = v13;
  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
LABEL_60:
    v19 = 0;
    v18 = 0;
    v31 = 0;
    v20 = 0;
    v22 = 0;
    v26 = 0;
    v54 = -6756;
    goto LABEL_36;
  }

  v15 = CFBinaryPlistStreamedCreateWithBytesEx2();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  switch(v10)
  {
    case '$':
      v16 = self;
      v17 = objc_alloc_init(SFResponseMessage);
      v19 = 0;
      v18 = 0;
      v51 = v17;
      break;
    case '#':
      v16 = self;
      v17 = objc_alloc_init(SFRequestMessage);
      v19 = 0;
      v51 = 0;
      v18 = v17;
      break;
    case '""':
      v16 = self;
      v17 = objc_alloc_init(SFEventMessage);
      v18 = 0;
      v51 = 0;
      v19 = v17;
      break;
    default:
      v46 = FatalErrorF();
      return [(SDNearbyAgent *)v46 _setupSendCreateSession:v47 cnx:v48, v49];
  }

  v20 = v17;
  v21 = v12;
  [v20 setIdentifier:v12];
  [v20 setHeaderFields:v14];
  [v20 setBodyData:v15];
  v22 = objc_alloc_init(SFDevice);
  v23 = [v53 peerDevice];
  v24 = [v23 identifier];
  [v22 setIdentifier:v24];

  [v20 setPeerDevice:v22];
  v25 = [v52 clientSession];
  if (!v25)
  {
    v32 = [[NSUUID alloc] initWithUUIDBytes:&unk_1007F5640];
    if (v32)
    {
      v33 = [(NSMutableDictionary *)v16->_services objectForKeyedSubscript:v32];
      v34 = v33;
      if (v33)
      {
        if (v19 && ([v33 eventMessageHandler], v35 = objc_claimAutoreleasedReturnValue(), v35, v35))
        {
          v36 = [v34 eventMessageHandler];
          v37 = v36[2];
        }

        else
        {
          if (!v18 || ([v34 requestMessageHandler], v40 = objc_claimAutoreleasedReturnValue(), v40, !v40))
          {
            if (v51)
            {
              v42 = [v34 responseMessageInternalHandler];

              if (v42)
              {
                v43 = [v34 responseMessageInternalHandler];
                v31 = v51;
                (v43)[2](v43, v51);

                v12 = v21;
                goto LABEL_34;
              }
            }

            if (dword_100973248 <= 60)
            {
              v12 = v21;
              if (dword_100973248 != -1 || _LogCategory_Initialize())
              {
                sub_100266BD8();
              }

              goto LABEL_33;
            }

LABEL_32:
            v12 = v21;
LABEL_33:
            v31 = v51;
LABEL_34:

LABEL_35:
            v26 = 0;
            goto LABEL_36;
          }

          v36 = [v34 requestMessageHandler];
          v37 = v36[2];
        }

        v37();

        goto LABEL_32;
      }

      v45 = -6727;
    }

    else
    {
      v34 = 0;
      v45 = -6700;
    }

    v54 = v45;
    goto LABEL_32;
  }

  v26 = v25;
  if (v19 && ([v25 eventMessageHandler], v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    v28 = [v26 eventMessageHandler];
    (v28)[2](v28, v19);

    v12 = v21;
  }

  else
  {
    v12 = v21;
    if (!v18 || ([v26 requestMessageHandler], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
    {
      v31 = v51;
      if (v51 && ([v26 responseMessageInternalHandler], v38 = objc_claimAutoreleasedReturnValue(), v38, v38))
      {
        v39 = [v26 responseMessageInternalHandler];
        (v39)[2](v39, v51);
      }

      else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266B98();
      }

      goto LABEL_36;
    }

    v30 = [v26 requestMessageHandler];
    (v30)[2](v30, v18);
  }

  v31 = v51;
LABEL_36:
  v41 = v54;
  if (v54)
  {
    if (dword_100973248 <= 60)
    {
      if (dword_100973248 != -1 || (v41 = v54, _LogCategory_Initialize()))
      {
        LogPrintF();
        v41 = v54;
      }
    }
  }

  return v41;
}

- (int)_setupSendCreateSession:(id)a3 cnx:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266C58();
  }

  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21[0] = 0;
  v21[1] = 0;
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v8];
    if (!v9)
    {
      v9 = objc_alloc_init(SDSession);
      [(SDSession *)v9 setIdentifier:v8];
      v10 = [v7 peerDevice];
      v11 = [v10 identifier];
      [(SDSession *)v9 setPeerIdentifier:v11];

      setupSessions = self->_setupSessions;
      if (!setupSessions)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = self->_setupSessions;
        self->_setupSessions = v13;

        setupSessions = self->_setupSessions;
      }

      [(NSMutableDictionary *)setupSessions setObject:v9 forKeyedSubscript:v8];
    }

    [(SDSession *)v9 setClientSession:v6];
    RandomBytes();
    cccurve25519_make_pub();
    v15 = [NSData dataWithBytes:v22 length:32];
    [(SDSession *)v9 setDhSecretKey:v15];

    v16 = objc_alloc_init(NSMutableData);
    v19 = 32;
    [v16 appendBytes:&v19 length:1];
    [v8 getUUIDBytes:v21];
    [v16 appendBytes:v21 length:16];
    [v16 appendBytes:v23 length:32];
    [v7 sendData:v16 completion:0];

    v17 = 0;
  }

  else
  {
    sub_100266C98(&v20);
    v17 = v20;
  }

  return v17;
}

- (int)_setupSendData:(id)a3 sessionIdentifier:(id)a4 cnx:(id)a5 clientSession:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v34[0] = 0;
  v34[1] = 0;
  v14 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v11];
  if (v14 || (-[NSMutableDictionary allValues](self->_setupSessions, "allValues"), v30 = objc_claimAutoreleasedReturnValue(), [v30 firstObject], v14 = objc_claimAutoreleasedReturnValue(), v30, !v13) || v14)
  {
LABEL_2:
    if ([v14 sessionCreated])
    {
      v15 = [v14 writeKey];
      v16 = [v15 bytes];

      if (!v16)
      {
        v28 = -6745;
        goto LABEL_23;
      }

      v35 = 0;
      v36 = [v14 writeNonce];
      [v14 setWriteNonce:{objc_msgSend(v14, "writeNonce") + 1}];
      if ([v10 length] < 0x11)
      {
        v28 = -6743;
        goto LABEL_23;
      }

      v17 = [v10 mutableCopy];
      v18 = [v17 mutableBytes];
      [v17 length];
      if (*(v18 + 1) == 0)
      {
        [v14 identifier];
        v33 = v10;
        v19 = v11;
        v20 = v12;
        v22 = v21 = v13;
        [v22 getUUIDBytes:v18 + 1];

        v13 = v21;
        v12 = v20;
        v11 = v19;
        v10 = v33;
      }

      chacha20_poly1305_encrypt_all_96x32();
      [v17 appendBytes:v34 length:16];
      [v12 sendData:v17 completion:0];
    }

    else
    {
      v23 = [v14 sendDataQueue];
      v24 = [v23 count];

      if (v24 > 0x7F)
      {
        v28 = -6764;
        goto LABEL_23;
      }

      v25 = [v14 sendDataQueue];

      if (!v25)
      {
        v26 = objc_alloc_init(NSMutableArray);
        [v14 setSendDataQueue:v26];
      }

      v27 = [v14 sendDataQueue];
      [v27 addObject:v10];

      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266D60(v14);
      }
    }

    v28 = 0;
    goto LABEL_15;
  }

  v31 = v13;
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266D20();
  }

  v28 = [(SDNearbyAgent *)self _setupSendCreateSession:v31 cnx:v12];
  if (v28)
  {
    goto LABEL_22;
  }

  v32 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v11];
  if (v32)
  {
    v14 = v32;

    goto LABEL_2;
  }

  sub_100266DC4(&v35);
  v28 = v35;
LABEL_22:

  v14 = 0;
LABEL_23:
  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266E3C();
  }

LABEL_15:

  return v28;
}

- (void)startUnlockBLEConnectionWithDevice:(id)a3 encrypted:(BOOL)a4
{
  v6 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025F570;
  block[3] = &unk_1008CF940;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)stopUnlockBLEConnectionWithDevice:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025F7D4;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_stopUnlockBLEConnectionWithDevice:(id)a3
{
  v13 = a3;
  v4 = [v13 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6 && ([v6 removeClient:self] & 1) == 0)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266ECC();
      }

      [(NSMutableDictionary *)self->_bleConnections removeObjectForKey:v5];
      [v7 invalidate];
    }
  }

  else
  {
    v8 = sub_100266EE8();
    [(SDNearbyAgent *)v8 sendUnlockData:v9 toBLEDevice:v10 completion:v11, v12];
  }
}

- (void)sendUnlockData:(id)a3 toBLEDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10025F99C;
  v15[3] = &unk_1008CFB48;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

- (void)_sendUnlockData:(id)a3 toBLEDevice:(id)a4 direct:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = [v11 identifier];
  if (v13)
  {
    v14 = v13;
    if (self->_unlockBtPipe && [v11 useBTPipe])
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266F00(v10);
      }

      unlockBtPipe = self->_unlockBtPipe;
      if (v7)
      {
        [(SFBLEPipe *)unlockBtPipe sendFrameTypeDirect:3 payload:v10 completion:v12];
      }

      else
      {
        [(SFBLEPipe *)unlockBtPipe sendFrameType:3 payload:v10 completion:v12];
      }
    }

    else
    {
      v16 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v14];
      if (v16)
      {
        v24 = 7;
        v17 = [NSMutableData dataWithBytes:&v24 length:1];
        [v17 appendData:v10];
        if (v7)
        {
          [v16 sendDataDirect:v17 completion:v12];
        }

        else
        {
          [v16 sendData:v17 completion:v12];
        }
      }

      else
      {
        v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6745 userInfo:0];
        v12[2](v12, v18);
      }
    }
  }

  else
  {
    v19 = sub_100266F50();
    [(SDNearbyAgent *)v19 _unlockReceivedFrameData:v20 peer:v21 device:v22, v23];
  }
}

- (void)_unlockReceivedFrameData:(id)a3 peer:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266F68(v8);
  }

  services = self->_services;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10025FD1C;
  v16[3] = &unk_1008D5930;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  [(NSMutableDictionary *)services enumerateKeysAndObjectsUsingBlock:v16];
  v14 = +[NSNotificationCenter defaultCenter];
  v19[0] = @"SDNearbyAgentNotificationInfoKeyBLEDevice";
  v19[1] = @"SDNearbyAgentNotificationInfoKeyBLEData";
  v20[0] = v10;
  v20[1] = v13;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v14 postNotificationName:@"SDNearbyAgentNotificationUnlockBLEDataReceived" object:self userInfo:v15];
}

- (void)_unlockApproveBluetoothIDsChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025FE34;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_unlockDeviceFilterChangedForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceFilter];
  v6 = +[SDAutoUnlockTransport sharedTransport];
  v7 = [v6 approveBluetoothIDs];
  [v4 setDeviceFilter:v7];

  v8 = [v4 deviceFilter];

  if (!v8)
  {
    v9 = objc_opt_new();
    [v4 setDeviceFilter:v9];
  }

  v10 = [v4 deviceFilter];
  v11 = [v4 deviceLostHandler];

  if (v11)
  {
    v12 = [NSMutableSet setWithSet:v5];
    [v12 minusSet:v10];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        v17 = 0;
        do
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v17)];
          if (v18)
          {
            v19 = [v4 deviceLostHandler];
            (v19)[2](v19, v18);
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v15);
    }
  }

  v20 = [v4 deviceFoundHandler];

  if (v20)
  {
    v21 = [NSMutableSet setWithSet:v10];
    [v21 minusSet:v5];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        v26 = 0;
        do
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:*(*(&v29 + 1) + 8 * v26), v29];
          if (v27)
          {
            v28 = [v4 deviceFoundHandler];
            (v28)[2](v28, v27);
          }

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v24);
    }
  }
}

- (void)unlockUpdateAdvertising:(unsigned int)a3 mask:(unsigned int)a4
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002602CC;
  v5[3] = &unk_1008CFD30;
  v6 = a3;
  v7 = a4;
  v5[4] = self;
  dispatch_async(dispatchQueue, v5);
}

- (void)unlockStartTestClientWithDevice:(id)a3
{
  v4 = a3;
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266FFC();
  }

  [(SDNearbyAgent *)self startUnlockBLEConnectionWithDevice:v4 encrypted:1];
  unlockTestClientTimer = self->_unlockTestClientTimer;
  if (unlockTestClientTimer)
  {
    v6 = unlockTestClientTimer;
    dispatch_source_cancel(v6);
    v7 = self->_unlockTestClientTimer;
    self->_unlockTestClientTimer = 0;
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v9 = self->_unlockTestClientTimer;
  self->_unlockTestClientTimer = v8;

  v10 = self->_unlockTestClientTimer;
  v11 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v10, v11, 0x3B9ACA00uLL, 0xEE6B280uLL);
  v12 = self->_unlockTestClientTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1002605FC;
  handler[3] = &unk_1008CE028;
  handler[4] = self;
  v13 = v4;
  v19 = v13;
  dispatch_source_set_event_handler(v12, handler);
  v14 = self->_unlockTestClientTimer;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002606E8;
  v16[3] = &unk_1008CE028;
  v16[4] = self;
  v17 = v13;
  v15 = v13;
  dispatch_source_set_cancel_handler(v14, v16);
  dispatch_resume(self->_unlockTestClientTimer);
}

- (void)unlockStopTestClient
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002670A8();
  }

  unlockTestClientTimer = self->_unlockTestClientTimer;
  if (unlockTestClientTimer)
  {
    v5 = unlockTestClientTimer;
    dispatch_source_cancel(v5);
    v4 = self->_unlockTestClientTimer;
    self->_unlockTestClientTimer = 0;
  }
}

- (void)unlockStartTestServer
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002670C4();
  }
}

- (void)unlockStopTestServer
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002670E0();
  }
}

- (void)_systemWillSleep
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260920;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)hasAdHocPairings
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_idIdentityArray;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) type] == 15)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSArray)adHocPairedDeviceIdentities
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_idIdentityArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 type] == 15)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)cutWiFiManagerLinkDidChange:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002670FC();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260C40;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)testPipePing
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260CBC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_testPipePing
{
  if (self->_unlockBtPipe)
  {
    v5 = [[NSMutableData alloc] initWithLength:8];
    v3 = v5;
    v4 = [v5 mutableBytes];
    *v4 = CFAbsoluteTimeGetCurrent();
    [(SFBLEPipe *)self->_unlockBtPipe sendFrameType:1 payload:v5 completion:&stru_1008D5970];
  }

  else if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100267118();
  }
}

- (int)_setupHandleSessionCreated:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 bytes];
  v9 = [v7 length];
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    v10 = [v6 peerDevice];
    v25 = [v10 identifier];
    LogPrintF();
  }

  memset(v26, 0, sizeof(v26));
  if (v9 <= 16)
  {
    v11 = 0;
    v13 = 0;
    v23 = -6708;
  }

  else if (v9 < 0x31)
  {
    v11 = 0;
    v13 = 0;
    v23 = -6743;
  }

  else
  {
    v11 = [[NSUUID alloc] initWithUUIDBytes:v8 + 1];
    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v11];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 dhSecretKey];
        v15 = [v14 bytes];

        if (v15)
        {
          cccurve25519();
          CryptoHKDF();
          v16 = [NSData dataWithBytes:v26 length:32, v26];
          [v13 setReadKey:v16];

          [v13 setReadNonce:0];
          CryptoHKDF();
          v17 = [NSData dataWithBytes:v26 length:32, v26];
          [v13 setWriteKey:v17];

          [v13 setWriteNonce:0];
          [v13 setSessionCreated:1];
          while (1)
          {
            v18 = [v13 sendDataQueue];
            v19 = [v18 count];

            if (!v19)
            {
              break;
            }

            v20 = [v13 sendDataQueue];
            v21 = [v20 firstObject];

            v22 = [v13 sendDataQueue];
            [v22 removeObjectAtIndex:0];

            [(SDNearbyAgent *)self _setupSendData:v21 sessionIdentifier:v11 cnx:v6 clientSession:0];
          }

          v23 = 0;
        }

        else
        {
          v23 = -6745;
        }
      }

      else
      {
        v23 = -6727;
      }
    }

    else
    {
      v13 = 0;
      v23 = -6700;
    }
  }

  return v23;
}

@end