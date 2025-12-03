@interface SDAutoUnlockSessionManager
+ (id)sharedManager;
- (BOOL)behaviorChangedAfterUpgrade;
- (BOOL)deviceCurrentlyUnlockedByWatch;
- (BOOL)disablePairingForDeviceID:(id)d pairingID:(id)iD;
- (BOOL)isDisplayOff;
- (BOOL)phoneAutoUnlockSupportedByDevice:(id)device;
- (BOOL)previousSessionExists:(id)exists;
- (BOOL)shouldNotify;
- (BOOL)shouldShowErrorForBluetoothEnabled:(BOOL)enabled;
- (BOOL)shouldShowErrorForWiFiEnabled:(BOOL)enabled;
- (NSString)state;
- (SDAutoUnlockSessionManager)init;
- (SDAutoUnlockSessionManager)initWithTransport:(id)transport magnetTransport:(id)magnetTransport keyManager:(id)manager;
- (SDAutoUnlockTransportProtocol)autoUnlockTransport;
- (SDKeyManaging)keyManager;
- (SDUnlockMagnetTransport)magnetTransport;
- (id)baseResultsDictionaryForError:(id)error;
- (id)errorStringForBluetoothEnabled:(BOOL)enabled wifiEnabled:(BOOL)wifiEnabled faceIDEnabled:(BOOL)dEnabled;
- (id)getUpsellNotificationBodyTextForEvent:(id)event;
- (id)stringForState:(int64_t)state;
- (int64_t)errorCodeForBluetoothEnabled:(BOOL)enabled wifiEnabled:(BOOL)wifiEnabled faceIDEnabled:(BOOL)dEnabled;
- (int64_t)idsMacCount;
- (os_state_data_s)dumpState;
- (void)addNotificationsObservers;
- (void)addServiceClientForIdentifier:(id)identifier;
- (void)armDevicesWaitingForUnlock;
- (void)attemptAutoUnlock;
- (void)attemptAutoUnlockForSiri;
- (void)attemptAutoUnlockWithoutNotifyingWatch;
- (void)authPromptInfoWithCompletionHandler:(id)handler;
- (void)autoUnlockStateWithCompletionHandler:(id)handler;
- (void)beginKeyRegistrationIfNecessary;
- (void)btPipeConnectionChanged:(id)changed;
- (void)cancelAllLockSessionsForScanTimeout;
- (void)cancelAttemptsForDeviceUnlocked;
- (void)cancelAutoUnlockWithCancelReason:(int64_t)reason usingTool:(BOOL)tool;
- (void)cancelEnablingAllDevices;
- (void)cancelEnablingAutoUnlockForDevice:(id)device;
- (void)cancelEnablingAutoUnlockForDeviceID:(id)d;
- (void)cancelMagnetLinkTimer;
- (void)cancelParallelRegistrationSessionsForDeviceID:(id)d newSessionID:(id)iD;
- (void)cleanUpProxySessions;
- (void)clearAllKeysWithTokens;
- (void)completeAutoUnlockWithNotification:(BOOL)notification;
- (void)completeSuccessfulAttempt;
- (void)createLockSessionWithWatchDevice:(id)device;
- (void)createPairingKeySessionWithIdentifier:(id)identifier deviceID:(id)d requestData:(id)data;
- (void)createPairingLockSessionWithDevice:(id)device passcode:(id)passcode;
- (void)createProxySessionWithDeviceID:(id)d;
- (void)createRegistrationLockSessionWithDeviceID:(id)d sessionID:(id)iD requestData:(id)data;
- (void)decrementAttemptCount;
- (void)disableAutoUnlockForAllWatches;
- (void)disableAutoUnlockForDevice:(id)device completionHandler:(id)handler;
- (void)disableKeyPairingForDeviceID:(id)d;
- (void)donateDeviceUnlockedWithMask:(BOOL)mask;
- (void)eligibleDevicesFilterCompatibleDevices:(id)devices;
- (void)eligibleDevicesRequestFromBundleID:(id)d withCompletionHandler:(id)handler;
- (void)enableAutoUnlockWithDevice:(id)device passcode:(id)passcode;
- (void)failedAttemptBeforeStarting:(id)starting metricErrorString:(id)string;
- (void)generateAttemptForType:(int64_t)type;
- (void)generateStateDump;
- (void)grabLanguageAssertionForAutoRelock;
- (void)handleAuthenticationSessionStarted;
- (void)handleBLEDataReceivedNotification:(id)notification;
- (void)handleBLEScanTimerFired;
- (void)handleBioLockout;
- (void)handleBluetoothPowerChanged:(id)changed;
- (void)handleDisableMessageForKey:(id)key fromDeviceID:(id)d;
- (void)handleDisableMessageForLock:(id)lock fromDeviceID:(id)d;
- (void)handleDisplayStateChanged:(unint64_t)changed;
- (void)handleFoundPeer:(id)peer;
- (void)handleLockConnectionStartedForSession:(id)session;
- (void)handleLockSessionCompleted:(id)completed error:(id)error;
- (void)handleLockStateChanged;
- (void)handleNearbyStateChanged;
- (void)handlePairedDeviceLockStateChanged;
- (void)handleProxyConnectionStartedForSession:(id)session;
- (void)handleProxySessionCompleted:(id)completed error:(id)error;
- (void)handleRelockMessage;
- (void)handleScanTimerFired;
- (void)handleUnexpectedDisablement:(id)disablement;
- (void)handleWiFiPowerChanged:(id)changed;
- (void)idsController:(id)controller didReceiveProtoData:(id)data forType:(unsigned __int16)type deviceID:(id)d;
- (void)incrementAttemptCount;
- (void)initializeAttemptState;
- (void)initializeCaptureBlock;
- (void)initializeRemotePeer;
- (void)invalidateAttempt;
- (void)invalidateExistingSessionsForBLEDevice:(id)device incomingSessionID:(id)d;
- (void)invalidateScanTimer;
- (void)invalidateScanner;
- (void)keyBagLockStateChange:(id)change;
- (void)loadPresentedBluetoothError;
- (void)loadPresentedWiFiError;
- (void)loadPreviousSessionIDs;
- (void)logUnintentionalAutoUnlockAttempt:(unint64_t)attempt;
- (void)notifyObserverOfAttemptBeganWithDevice:(id)device;
- (void)notifyObserverOfEnabledDevice:(id)device;
- (void)notifyObserverOfFailedToEnableDevice:(id)device error:(id)error;
- (void)notifyObserverOfKeyDeviceLockWithDevice:(id)device;
- (void)notifyObserversOfUnlockCompletionWithDevice:(id)device;
- (void)notifyObserversOfUnlockFailureWithResults:(id)results error:(id)error;
- (void)onqueue_keyBagLockStateChange:(id)change;
- (void)onqueue_start;
- (void)performRegistrationIfNecessaryForLockSession:(id)session error:(id)error;
- (void)pipeConnectionChanged:(id)changed;
- (void)prewarmAutoUnlock;
- (void)registerObserver:(id)observer;
- (void)registerRemotePeerIfNecessary;
- (void)releaseLanguageAssertionForAutoRelock;
- (void)removeServiceClientForIdentifier:(id)identifier;
- (void)repairCloudPairing;
- (void)requestRelock;
- (void)restartScanTimer:(unint64_t)timer;
- (void)savePresentedBluetoothError;
- (void)savePresentedWiFiError;
- (void)sendDisableMessageToDeviceID:(id)d pairingID:(id)iD;
- (void)session:(id)session didCompleteWithError:(id)error;
- (void)sessionDidReceiveKeyDeviceLocked:(id)locked;
- (void)sessionDidStartConnection:(id)connection;
- (void)setUpMagnetLinkTimer;
- (void)start;
- (void)startScannerWithWatchBluetoothIDs:(id)ds phoneBluetoothIDs:(id)iDs;
- (void)storePreviousSessionID:(id)d;
- (void)transport:(id)transport didReceiveDisableMessage:(id)message fromDeviceID:(id)d;
- (void)transport:(id)transport didReceiveKeyOriginatingRegistrationRequestWithSessionID:(id)d deviceID:(id)iD requestData:(id)data;
- (void)transport:(id)transport didReceivePairingRequestWithSessionID:(id)d deviceID:(id)iD requestData:(id)data;
- (void)transport:(id)transport didReceiveRegistrationRequestWithSessionID:(id)d deviceID:(id)iD requestData:(id)data;
- (void)transportDidChangeDevices:(id)devices;
- (void)transportDidChangeNearbyState:(id)state;
- (void)unregisterObserver:(id)observer;
- (void)updateAdvertising;
- (void)updateStringForProxySession;
- (void)upsellBehaviorChangedAfterUpgradeIfNecessary;
- (void)upsellPhoneAutoUnlock;
@end

@implementation SDAutoUnlockSessionManager

- (void)handleLockStateChanged
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v4 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v4 deviceKeyBagUnlocked];

  if (deviceKeyBagUnlocked)
  {
    v6 = +[SDAutoUnlockTransport sharedTransport];
    [v6 updateApproveBluetoothIDs];

    [(SDAutoUnlockSessionManager *)self armDevicesWaitingForUnlock];
    [(SDAutoUnlockSessionManager *)self registerRemotePeerIfNecessary];
    if (![(SDAutoUnlockSessionManager *)self doNotPostUnlockConfirmation])
    {
      [(SDAutoUnlockSessionManager *)self cancelAttemptsForDeviceUnlocked];
    }

    if (![(SDAutoUnlockSessionManager *)self lastUnlockedByWatch])
    {
      [(SDAutoUnlockSessionManager *)self setLastLockedByRelock:0];
      [(SDAutoUnlockSessionManager *)self upsellPhoneAutoUnlock];
    }

    v7 = +[NSDate date];
    [(SDAutoUnlockSessionManager *)self setLastUnlockDate:v7];

    if ([(SDAutoUnlockSessionManager *)self attemptCount]>= 1)
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resetting attempt count", v16, 2u);
      }

      [(SDAutoUnlockSessionManager *)self setAttemptCount:0];
    }
  }

  else
  {
    v9 = +[SDStatusMonitor sharedMonitor];
    -[SDAutoUnlockSessionManager setCachedDeviceWiFiState:](self, "setCachedDeviceWiFiState:", [v9 wirelessEnabled]);

    if ([(SDAutoUnlockSessionManager *)self lastUnlockedByWatch])
    {
      [(SDAutoUnlockSessionManager *)self releaseLanguageAssertionForAutoRelock];
    }

    if ([(SDAutoUnlockSessionManager *)self periocularStatus])
    {
      v10 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self periocularStatus]];
      cachedMetrics = [(SDAutoUnlockSessionManager *)self cachedMetrics];
      [cachedMetrics setObject:v10 forKeyedSubscript:SDAutoUnlockManagerMetricPeriocularStatus];
    }

    [(SDAutoUnlockSessionManager *)self setPeriocularStatus:0];
    [(SDAutoUnlockSessionManager *)self setLastUnlockedByWatch:0];
    [(SDAutoUnlockSessionManager *)self setSuppressAlert:0];
    [(SDAutoUnlockSessionManager *)self cancelMagnetLinkTimer];
    cachedMetrics2 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
    if (cachedMetrics2)
    {
      v13 = cachedMetrics2;
      isBeingUsedForSiri = [(SDAutoUnlockSessionManager *)self isBeingUsedForSiri];

      if ((isBeingUsedForSiri & 1) == 0)
      {
        cachedMetrics3 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
        sub_10010F888(cachedMetrics3);

        [(SDAutoUnlockSessionManager *)self setCachedMetrics:0];
      }
    }
  }
}

- (void)armDevicesWaitingForUnlock
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v4 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v4 deviceKeyBagUnlocked];

  if (deviceKeyBagUnlocked)
  {
    remotePeer = [(SDAutoUnlockSessionManager *)self remotePeer];
    [remotePeer handleDeviceUnlocked];
  }
}

- (void)registerRemotePeerIfNecessary
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v4 = +[SDAutoUnlockTransport sharedTransport];
  activeDevice = [v4 activeDevice];

  remotePeer = [(SDAutoUnlockSessionManager *)self remotePeer];
  deviceID = [remotePeer deviceID];
  uniqueIDOverride = [activeDevice uniqueIDOverride];
  v9 = [deviceID isEqualToString:uniqueIDOverride];

  if ((v9 & 1) == 0)
  {
    [(SDAutoUnlockSessionManager *)self initializeRemotePeer];
  }

  remotePeer2 = [(SDAutoUnlockSessionManager *)self remotePeer];
  shouldRegister = [remotePeer2 shouldRegister];

  if (shouldRegister)
  {
    remotePeer3 = [(SDAutoUnlockSessionManager *)self remotePeer];
    [remotePeer3 handleRegistrationBegan];

    remotePeer4 = [(SDAutoUnlockSessionManager *)self remotePeer];
    deviceID2 = [remotePeer4 deviceID];
    [(SDAutoUnlockSessionManager *)self createRegistrationLockSessionWithDeviceID:deviceID2 sessionID:0 requestData:0];
LABEL_10:

    goto LABEL_11;
  }

  v15 = +[SDAutoUnlockAKSManager sharedManager];
  remotePeer5 = [(SDAutoUnlockSessionManager *)self remotePeer];
  deviceID3 = [remotePeer5 deviceID];
  remotePeer4 = [v15 remoteLTKForDeviceID:deviceID3];

  v18 = sub_100021BD4(remotePeer4);
  remotePeer6 = [(SDAutoUnlockSessionManager *)self remotePeer];
  LODWORD(deviceID3) = [remotePeer6 canPerformUnlocks];

  if (deviceID3 && v18 != 3)
  {
    v20 = auto_unlock_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      remotePeer7 = [(SDAutoUnlockSessionManager *)self remotePeer];
      v22 = sub_10005CDC0(v18);
      v25 = 138412546;
      v26 = remotePeer7;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Mismatch between peer state (%@) and AKS state (%@)", &v25, 0x16u);
    }

    sub_10005CB84(remotePeer4);
    remotePeer8 = [(SDAutoUnlockSessionManager *)self remotePeer];
    [remotePeer8 handleRegistrationBegan];

    deviceID2 = [(SDAutoUnlockSessionManager *)self remotePeer];
    v14DeviceID = [deviceID2 deviceID];
    [(SDAutoUnlockSessionManager *)self createRegistrationLockSessionWithDeviceID:v14DeviceID sessionID:0 requestData:0];

    goto LABEL_10;
  }

LABEL_11:
}

- (void)initializeRemotePeer
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v4 = +[SDAutoUnlockTransport sharedTransport];
  activeDevice = [v4 activeDevice];

  uniqueIDOverride = [activeDevice uniqueIDOverride];
  if (uniqueIDOverride)
  {
    keyManager = [(SDAutoUnlockSessionManager *)self keyManager];
    v8 = [keyManager remoteLTKForDeviceID:uniqueIDOverride];

    v9 = auto_unlock_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = uniqueIDOverride;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initialized remote peer to %@", &v12, 0xCu);
      }

      v11 = [[SDAutoUnlockPeer alloc] initWithDeviceID:uniqueIDOverride];
      [(SDAutoUnlockSessionManager *)self setRemotePeer:v11];
    }

    else
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = uniqueIDOverride;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not find remote LTK for active device: %@", &v12, 0xCu);
      }

      [(SDAutoUnlockSessionManager *)self setRemotePeer:0];
    }
  }
}

- (void)cancelAttemptsForDeviceUnlocked
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
  allValues = [lockAuthSessions allValues];

  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        if (![*(*(&v12 + 1) + 8 * v9) aksSuccess])
        {

          v10 = auto_unlock_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Canceling attempt in progress – device unlocked", v11, 2u);
          }

          [(SDAutoUnlockSessionManager *)self cancelAutoUnlock];
          return;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)upsellPhoneAutoUnlock
{
  localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
  if ([localDeviceController faceIDEnabled] && SFDeviceSupportsAutoUnlock())
  {
    v4 = sub_100022E18();

    if ((v4 & 1) == 0)
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      v6 = [v5 BOOLForKey:@"AutoUnlockDeclinedToEnablePAU"];
      v7 = [v5 BOOLForKey:@"AutoUnlockAlreadyEnabledBefore"];
      v8 = v7;
      if ((v6 & 1) == 0 && !v7)
      {
        v9 = +[SDAutoUnlockTransport sharedTransport];
        pairedAutoUnlockDevice = [v9 pairedAutoUnlockDevice];

        if (!pairedAutoUnlockDevice || ([pairedAutoUnlockDevice unlockEnabled]& 1) != 0 || ![(SDAutoUnlockSessionManager *)self phoneAutoUnlockSupportedByDevice:pairedAutoUnlockDevice])
        {
          v30 = auto_unlock_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = @"YES";
            if (!pairedAutoUnlockDevice)
            {
              v31 = @"NO";
            }

            *buf = 138412290;
            v48 = *&v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Skipping upsell. Current Active Watch found:%@", buf, 0xCu);
          }

          if (pairedAutoUnlockDevice)
          {
            v32 = auto_unlock_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              if ([pairedAutoUnlockDevice unlockEnabled])
              {
                v33 = @"YES";
              }

              else
              {
                v33 = @"NO";
              }

              if ([(SDAutoUnlockSessionManager *)self phoneAutoUnlockSupportedByDevice:pairedAutoUnlockDevice])
              {
                v34 = @"YES";
              }

              else
              {
                v34 = @"NO";
              }

              *buf = 138412546;
              v48 = *&v33;
              v49 = 2112;
              v50 = v34;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Watch unlockEnabled:%@, Watch HW/SW compatible:%@", buf, 0x16u);
            }

            if ([pairedAutoUnlockDevice unlockEnabled])
            {
              [v5 setBool:1 forKey:@"AutoUnlockAlreadyEnabledBefore"];
            }
          }

          goto LABEL_29;
        }

        v11 = auto_unlock_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID = [pairedAutoUnlockDevice uniqueID];
          *buf = 138412290;
          v48 = *&uniqueID;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current Active Watch ID %@", buf, 0xCu);
        }

        v13 = +[SDStatusMonitor sharedMonitor];
        if ([v13 pairedWatchWristState] == 3)
        {
          v14 = +[SDStatusMonitor sharedMonitor];
          pairedWatchLockState = [v14 pairedWatchLockState];

          if (!pairedWatchLockState)
          {
            if ([(SDAutoUnlockSessionManager *)self shouldNotify])
            {
              v16 = sub_1001134F0(1);
              firstObject = [v16 firstObject];
              if (firstObject)
              {
                v18 = +[NSDate date];
                endDate = [firstObject endDate];
                [v18 timeIntervalSinceDate:endDate];
                v21 = v20;
              }

              else
              {
                v21 = 10.0;
              }

              v40 = auto_unlock_log();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v48 = v21;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Last Mask Detection %f seconds ago", buf, 0xCu);
              }

              if (v21 >= 10.0)
              {
                v44 = auto_unlock_log();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Skipping upsell. Last Mask Detection too long ago", buf, 2u);
                }
              }

              else
              {
                [v5 setInteger:[v5 integerForKey:@"AutoUnlockLastUpsellState"]+ 1 forKey:@"AutoUnlockLastUpsellState"];
                v41 = +[NSDate date];
                [v5 setObject:v41 forKey:@"AutoUnlockLastUpsellDate"];

                v42 = dispatch_time(0, 3000000000);
                sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
                v45[0] = _NSConcreteStackBlock;
                v45[1] = 3221225472;
                v45[2] = sub_1000E0838;
                v45[3] = &unk_1008CE028;
                v45[4] = self;
                v46 = firstObject;
                dispatch_after(v42, sessionManagerQueue, v45);
              }

              goto LABEL_29;
            }

            v35 = auto_unlock_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Skipping upsell. Should not notify based on previous notification and upsell state", buf, 2u);
            }

            goto LABEL_56;
          }
        }

        else
        {
        }

        v35 = auto_unlock_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = +[SDStatusMonitor sharedMonitor];
          pairedWatchWristState = [v36 pairedWatchWristState];
          v38 = +[SDStatusMonitor sharedMonitor];
          pairedWatchLockState2 = [v38 pairedWatchLockState];
          *buf = 134218240;
          v48 = *&pairedWatchWristState;
          v49 = 1024;
          LODWORD(v50) = pairedWatchLockState2;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Skipping upsell. Active watch not on wrist (state: %ld) and unlocked (state: %d). Skipping upsell.", buf, 0x12u);
        }

LABEL_56:

        goto LABEL_29;
      }

      pairedAutoUnlockDevice = auto_unlock_log();
      if (!os_log_type_enabled(pairedAutoUnlockDevice, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:

        goto LABEL_30;
      }

      v28 = @"NO";
      if (v6)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      if (v8)
      {
        v28 = @"YES";
      }

      *buf = 138412546;
      v48 = *&v29;
      v49 = 2112;
      v50 = v28;
      v25 = "Skipping upsell. User declined to enable PAU after reading the pop up: %@, PAU already enabled before: %@";
      v26 = pairedAutoUnlockDevice;
      v27 = 22;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    pairedAutoUnlockDevice = [(SDAutoUnlockSessionManager *)self localDeviceController];
    if ([pairedAutoUnlockDevice faceIDEnabled])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    if (SFDeviceSupportsAutoUnlock())
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    *buf = 138412802;
    if (sub_100022E18())
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v48 = *&v22;
    v49 = 2112;
    v50 = v23;
    v51 = 2112;
    v52 = v24;
    v25 = "Skipping upsell. FaceIDEnabled:%@, SFDeviceSupportsAutoUnlock:%@, SDAutoUnlockDisallowedDueToManagement:%@";
    v26 = v5;
    v27 = 32;
    goto LABEL_28;
  }

LABEL_30:
}

- (os_state_data_s)dumpState
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dumping state", buf, 2u);
  }

  NSAppendPrintF();
  v4 = 0;
  state = [(SDAutoUnlockSessionManager *)self state];
  v6 = state;
  if (state)
  {
    v20 = state;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  v8 = +[SDAutoUnlockAKSManager sharedManager];
  state2 = [v8 state];

  if (state2)
  {
    v21 = state2;
    NSAppendPrintF();
    v10 = v4;

    v4 = v10;
  }

  v11 = +[SDAutoUnlockTransport sharedTransport];
  state3 = [v11 state];

  if (state3)
  {
    NSAppendPrintF();
    v13 = v4;

    v4 = v13;
  }

  NSAppendPrintF();
  v14 = v4;

  if (v14)
  {
    v15 = [NSPropertyListSerialization dataWithPropertyList:v14 format:200 options:0 error:0];
    v16 = [v15 length];
    v17 = malloc_type_calloc(1uLL, v16 + 200, 0x1000040BEF03554uLL);
    v18 = v17;
    if (v17)
    {
      v17->var0 = 1;
      v17->var1.var1 = v16;
      __strlcpy_chk();
      memcpy(v18->var4, [v15 bytes], v16);
    }
  }

  else
  {
    v18 = 0;
    v15 = 0;
  }

  return v18;
}

- (NSString)state
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF();
  v5 = 0;

  NSAppendPrintF();
  v6 = v5;

  v7 = objc_opt_new();
  v37 = sub_100024974(v7);
  NSAppendPrintF();
  v8 = v6;

  v9 = +[SDStatusMonitor sharedMonitor];
  if ([v9 deviceSupportsRanging])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v38 = v10;
  NSAppendPrintF();
  v11 = v8;

  v12 = +[SDStatusMonitor sharedMonitor];
  modelCode = [v12 modelCode];
  NSAppendPrintF();
  v13 = v11;

  v14 = +[SDStatusMonitor sharedMonitor];
  if ([v14 deviceKeyBagDisabled])
  {
    v15 = @"NO";
  }

  else
  {
    v15 = @"YES";
  }

  v40 = v15;
  NSAppendPrintF();
  v16 = v13;

  v17 = +[SDStatusMonitor sharedMonitor];
  if ([v17 deviceKeyBagUnlocked])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v41 = v18;
  NSAppendPrintF();
  v19 = v16;

  lockStateChangedDate = [(SDAutoUnlockSessionManager *)self lockStateChangedDate];
  v42 = sub_100024974(lockStateChangedDate);
  NSAppendPrintF();
  v21 = v19;

  NSAppendPrintF();
  v22 = v21;

  attemptCount = [(SDAutoUnlockSessionManager *)self attemptCount];
  NSAppendPrintF();
  v23 = v22;

  lastUnlockDate = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
  if (lastUnlockDate)
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v44 = v25;
  NSAppendPrintF();
  v26 = v23;

  advertisingChangedDate = [(SDAutoUnlockSessionManager *)self advertisingChangedDate];
  v45 = sub_100024974(advertisingChangedDate);
  NSAppendPrintF();
  v28 = v26;

  v29 = +[SDAutoUnlockTransport sharedTransport];
  if ([v29 deviceNearby])
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  v46 = v30;
  NSAppendPrintF();
  v31 = v28;

  nearbyDeviceChangedDate = [(SDAutoUnlockSessionManager *)self nearbyDeviceChangedDate];
  v47 = sub_100024974(nearbyDeviceChangedDate);
  NSAppendPrintF();
  v33 = v31;

  lockRegistrationSessionsByDeviceID = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
  NSAppendPrintF();
  v34 = v33;

  remotePeer = [(SDAutoUnlockSessionManager *)self remotePeer];
  NSAppendPrintF();
  v35 = v34;

  return v34;
}

+ (id)sharedManager
{
  if (qword_100989C60 != -1)
  {
    sub_1000E3488();
  }

  v3 = qword_100989C58;

  return v3;
}

- (SDAutoUnlockSessionManager)init
{
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = +[SDUnlockIDSController sharedController];
  v5 = +[SDAutoUnlockAKSManager sharedManager];
  v6 = [(SDAutoUnlockSessionManager *)self initWithTransport:v3 magnetTransport:v4 keyManager:v5];

  return v6;
}

- (SDAutoUnlockSessionManager)initWithTransport:(id)transport magnetTransport:(id)magnetTransport keyManager:(id)manager
{
  transportCopy = transport;
  magnetTransportCopy = magnetTransport;
  managerCopy = manager;
  v58.receiver = self;
  v58.super_class = SDAutoUnlockSessionManager;
  v11 = [(SDAutoUnlockSessionManager *)&v58 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_autoUnlockTransport, transportCopy);
    v13 = objc_storeWeak(&v12->_magnetTransport, magnetTransportCopy);
    [magnetTransportCopy addDelegate:v12];

    objc_storeWeak(&v12->_keyManager, managerCopy);
    isSignedIntoPrimaryiCloudAccount = v12->_isSignedIntoPrimaryiCloudAccount;
    v12->_isSignedIntoPrimaryiCloudAccount = &stru_1008CFC80;

    objc_initWeak(&location, v12);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000D28CC;
    v55[3] = &unk_1008CFCA8;
    objc_copyWeak(&v56, &location);
    v15 = objc_retainBlock(v55);
    isFaceIDEnabled = v12->_isFaceIDEnabled;
    v12->_isFaceIDEnabled = v15;

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000D291C;
    v53[3] = &unk_1008CFCA8;
    objc_copyWeak(&v54, &location);
    v17 = objc_retainBlock(v53);
    isWifiEnabled = v12->_isWifiEnabled;
    v12->_isWifiEnabled = v17;

    isBluetoothEnabled = v12->_isBluetoothEnabled;
    v12->_isBluetoothEnabled = &stru_1008CFCC8;

    isActiveDeviceNearby = v12->_isActiveDeviceNearby;
    v12->_isActiveDeviceNearby = &stru_1008CFCE8;

    v12->_idsMacCountCache = -1;
    v12->_timeSinceLastMachineWake = -1;
    v21 = objc_opt_new();
    lockAuthSessions = v12->_lockAuthSessions;
    v12->_lockAuthSessions = v21;

    v23 = objc_opt_new();
    keyAuthSessions = v12->_keyAuthSessions;
    v12->_keyAuthSessions = v23;

    v25 = objc_opt_new();
    lockPairingSessions = v12->_lockPairingSessions;
    v12->_lockPairingSessions = v25;

    v27 = objc_opt_new();
    keyPairingSessions = v12->_keyPairingSessions;
    v12->_keyPairingSessions = v27;

    v29 = objc_opt_new();
    canceledAuthLockSessions = v12->_canceledAuthLockSessions;
    v12->_canceledAuthLockSessions = v29;

    v31 = objc_opt_new();
    canceledPairingKeySessions = v12->_canceledPairingKeySessions;
    v12->_canceledPairingKeySessions = v31;

    v33 = objc_opt_new();
    serviceClients = v12->_serviceClients;
    v12->_serviceClients = v33;

    v35 = objc_opt_new();
    proxySessions = v12->_proxySessions;
    v12->_proxySessions = v35;

    v37 = objc_opt_new();
    locksWithAKSTokens = v12->_locksWithAKSTokens;
    v12->_locksWithAKSTokens = v37;

    v39 = objc_opt_new();
    keysWithAKSTokens = v12->_keysWithAKSTokens;
    v12->_keysWithAKSTokens = v39;

    v41 = +[NSMutableDictionary dictionary];
    keyRegistrationSessionsByDeviceID = v12->_keyRegistrationSessionsByDeviceID;
    v12->_keyRegistrationSessionsByDeviceID = v41;

    v43 = +[NSMutableDictionary dictionary];
    lockRegistrationSessionsByDeviceID = v12->_lockRegistrationSessionsByDeviceID;
    v12->_lockRegistrationSessionsByDeviceID = v43;

    v45 = dispatch_queue_create("com.apple.sharingd.auto-unlock.session-manager-queue", 0);
    sessionManagerQueue = v12->_sessionManagerQueue;
    v12->_sessionManagerQueue = v45;

    v47 = [NSHashTable hashTableWithOptions:517];
    observerTable = v12->_observerTable;
    v12->_observerTable = v47;

    v49 = SFDeviceClassCodeGet();
    if (v49 == 7 || v49 == 1)
    {
      v50 = +[SDNearbyAgent sharedNearbyAgent];
      sharedNearbyPipe = [v50 sharedNearbyPipe];
    }

    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)start
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2A74;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionManagerQueue, block);
}

- (void)onqueue_start
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Session manager starting", buf, 2u);
  }

  [(SDAutoUnlockSessionManager *)self addNotificationsObservers];
  v5 = +[SDAutoUnlockTransport sharedTransport];
  [v5 setPrimaryClient:self];

  v6 = +[SDAutoUnlockAKSManager sharedManager];
  [v6 start];

  v7 = objc_opt_new();
  suggestionManager = self->_suggestionManager;
  self->_suggestionManager = v7;

  v9 = +[SDAutoUnlockTransport sharedTransport];
  self->_previousNearbyState = [v9 deviceNearby];

  v10 = objc_alloc_init(SDAutoUnlockIconTransferStore);
  iconTransferStore = self->_iconTransferStore;
  self->_iconTransferStore = v10;

  [(SDAutoUnlockSessionManager *)self initializeAttemptState];
  [(SDAutoUnlockSessionManager *)self initializeCaptureBlock];
  [(SDAutoUnlockSessionManager *)self updateAdvertising];
  v12 = auto_unlock_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resetting in progress state", buf, 2u);
  }

  sub_100111BA4(0);
  [(SDAutoUnlockSessionManager *)self loadPresentedBluetoothError];
  [(SDAutoUnlockSessionManager *)self loadPresentedWiFiError];
  if (SFDeviceClassCodeGet() != 8)
  {
    v13 = +[SDStatusMonitor sharedMonitor];
    -[SDAutoUnlockSessionManager setCachedDeviceWiFiState:](self, "setCachedDeviceWiFiState:", [v13 wirelessEnabled]);
  }

  v14 = +[SDAutoUnlockTransport sharedTransport];
  v15 = [v14 autoUnlockEligibleWatchesWithCloudPairing:0];

  v16 = auto_unlock_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Auto Unlock eligible devices %@", buf, 0xCu);
  }

  v17 = +[SDAutoUnlockWiFiManager sharedManager];
  [v17 start];

  v18 = +[SDAutoUnlockTransport sharedTransport];
  [v18 updateApproveBluetoothIDs];

  v19 = [SDAutoUnlockLocalDeviceController alloc];
  sessionManagerQueue2 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v21 = [(SDAutoUnlockLocalDeviceController *)v19 initWithQueue:sessionManagerQueue2];
  [(SDAutoUnlockSessionManager *)self setLocalDeviceController:v21];

  objc_initWeak(buf, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000D2E24;
  v23[3] = &unk_1008CDD98;
  objc_copyWeak(&v24, buf);
  localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
  [localDeviceController setDeviceEnteredBioLockoutHandler:v23];

  [(SDAutoUnlockSessionManager *)self initializeRemotePeer];
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    [(SDAutoUnlockSessionManager *)self registerRemotePeerIfNecessary];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)initializeAttemptState
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  self->_attemptCount = 0;
  v4 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v4 deviceKeyBagUnlocked];

  v6 = auto_unlock_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (deviceKeyBagUnlocked)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device unlocked on start up", buf, 2u);
    }

    v8 = +[NSDate date];
    [(SDAutoUnlockSessionManager *)self setLastUnlockDate:v8];

    v9 = +[NSDate date];
    [(SDAutoUnlockSessionManager *)self setLockStateChangedDate:v9];
  }

  else
  {
    if (v7)
    {
      v10 = +[SDStatusMonitor sharedMonitor];
      *buf = 134217984;
      deviceKeyBagState = [v10 deviceKeyBagState];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "### Device not unlocked on start up (state: %ld)", buf, 0xCu);
    }

    v11 = dispatch_time(0, 5000000000);
    sessionManagerQueue2 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D3060;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_after(v11, sessionManagerQueue2, block);
  }
}

- (void)addNotificationsObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleBLEDataReceivedNotification:" name:@"SDNearbyAgentNotificationUnlockBLEDataReceived" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyBagLockStateChange:" name:@"com.apple.sharingd.KeyBagLockStatusChanged" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleWiFiPowerChanged:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"btPipeConnectionChanged:" name:SFNotificationNamePipeConnectionStateChanged object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"handleAuthenticationSessionStarted" name:@"SDAuthenticationSessionStarted" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"btPipeConnectionChanged:" name:SFNotificationNameBTPoweredOff object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"handlePairedDeviceLockStateChanged" name:@"com.apple.sharingd.PairedWatchLockStateChanged" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"handleUnexpectedDisablement:" name:@"SDAutoUnlockAKSManagerUnexpectedDisablementNotification" object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000D3474, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  objc_initWeak(&location, self);
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D3568;
  v13[3] = &unk_1008CDD58;
  objc_copyWeak(&v14, &location);
  notify_register_dispatch("com.apple.iokit.hid.displayStatus", &self->_screenDisplayChangedToken, sessionManagerQueue, v13);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D3674;
  v7[3] = &unk_1008CE028;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D37EC;
  v7[3] = &unk_1008CE028;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)notifyObserverOfKeyDeviceLockWithDevice:(id)device
{
  deviceCopy = device;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D3964;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)notifyObserverOfEnabledDevice:(id)device
{
  deviceCopy = device;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D3BB0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)notifyObserverOfFailedToEnableDevice:(id)device error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3E20;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = deviceCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = deviceCopy;
  dispatch_async(sessionManagerQueue, block);
}

- (void)notifyObserverOfAttemptBeganWithDevice:(id)device
{
  deviceCopy = device;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4070;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)notifyObserversOfUnlockCompletionWithDevice:(id)device
{
  deviceCopy = device;
  if (![(SDAutoUnlockSessionManager *)self suppressAlert])
  {
    [(SDAutoUnlockSessionManager *)self completeSuccessfulAttempt];
  }

  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D42D0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)notifyObserversOfUnlockFailureWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D4540;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = resultsCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultsCopy;
  dispatch_async(sessionManagerQueue, block);
}

- (void)repairCloudPairing
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_async(sessionManagerQueue, &stru_1008CFD08);
}

- (void)eligibleDevicesFilterCompatibleDevices:(id)devices
{
  devicesCopy = devices;
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = devicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        modelIdentifier = [v10 modelIdentifier];
        v12 = sub_1001123D8(modelIdentifier);

        if (!v12)
        {
          v13 = auto_unlock_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E349C(v18, v10, &v19, v13);
          }

          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  [v5 minusSet:v4];
}

- (BOOL)phoneAutoUnlockSupportedByDevice:(id)device
{
  deviceCopy = device;
  modelIdentifier = [deviceCopy modelIdentifier];
  if (sub_1001123D8(modelIdentifier))
  {
    productVersion = [deviceCopy productVersion];
    v6 = sub_1001124CC(productVersion);

    if (v6)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E3514(deviceCopy, v8);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)eligibleDevicesRequestFromBundleID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D4ADC;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(sessionManagerQueue, block);
}

- (void)enableAutoUnlockWithDevice:(id)device passcode:(id)passcode
{
  deviceCopy = device;
  passcodeCopy = passcode;
  localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
  faceIDEnabled = [localDeviceController faceIDEnabled];

  if ((faceIDEnabled & 1) == 0)
  {
    v17 = SFAutoUnlockErrorDomain;
    v30 = NSLocalizedDescriptionKey;
    v31 = @"FaceID not enabled";
    v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v15 = v17;
    v16 = 205;
LABEL_7:
    v18 = [NSError errorWithDomain:v15 code:v16 userInfo:v14];
    [(SDAutoUnlockSessionManager *)self notifyObserverOfFailedToEnableDevice:deviceCopy error:v18];

    goto LABEL_11;
  }

  v10 = sub_100022E18();
  v11 = auto_unlock_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "### Unable to enable Auto Unlock due to profile", buf, 2u);
    }

    v13 = SFAutoUnlockErrorDomain;
    v28 = NSLocalizedDescriptionKey;
    v29 = @"Disabled due to profile";
    v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v15 = v13;
    v16 = 111;
    goto LABEL_7;
  }

  if (v12)
  {
    uniqueID = [deviceCopy uniqueID];
    *buf = 138412546;
    v25 = deviceCopy;
    v26 = 2112;
    v27 = uniqueID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Enabling device %@, id %@", buf, 0x16u);
  }

  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D50EC;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v22 = deviceCopy;
  v23 = passcodeCopy;
  dispatch_async(sessionManagerQueue, block);

LABEL_11:
}

- (void)cancelEnablingAllDevices
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5184;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionManagerQueue, block);
}

- (void)cancelEnablingAutoUnlockForDevice:(id)device
{
  deviceCopy = device;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D5388;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)cancelEnablingAutoUnlockForDeviceID:(id)d
{
  dCopy = d;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancel enabling device %@", &v10, 0xCu);
  }

  lockPairingSessions = [(SDAutoUnlockSessionManager *)self lockPairingSessions];
  v7 = [lockPairingSessions objectForKeyedSubscript:dCopy];

  if (v7 && ([v7 canceled] & 1) == 0)
  {
    [v7 cancel];
    sessionID = [v7 sessionID];
    uUIDString = [sessionID UUIDString];
    [(SDAutoUnlockSessionManager *)self disablePairingForDeviceID:dCopy pairingID:uUIDString];
  }

  else
  {
    sessionID = auto_unlock_log();
    if (os_log_type_enabled(sessionID, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dCopy;
      _os_log_impl(&_mh_execute_header, sessionID, OS_LOG_TYPE_DEFAULT, "No pairing lock session to cancel (device id: %@)", &v10, 0xCu);
    }
  }
}

- (void)disableAutoUnlockForAllWatches
{
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 enabledAutoUnlockDevicesUsingCache:1];
  allObjects = [v4 allObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 type] == 1)
        {
          [(SDAutoUnlockSessionManager *)self disableAutoUnlockForDevice:v11 completionHandler:0];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)disableAutoUnlockForDevice:(id)device completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disabling Auto Unlock (device: %@)", buf, 0xCu);
  }

  sub_100113448(@"com.apple.watch.auto-unlock.disabled");
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D580C;
  block[3] = &unk_1008CE730;
  v13 = deviceCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = deviceCopy;
  dispatch_async(sessionManagerQueue, block);
}

- (void)generateAttemptForType:(int64_t)type
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Test mode attempt", buf, 2u);
  }

  v6 = type == 2;
  v7 = objc_alloc_init(SFAutoUnlockDevice);
  [v7 setName:@"Apple Watch"];
  [v7 setModelName:@"Apple Watch"];
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];
  [v7 setUniqueID:uUIDString];

  [(SDAutoUnlockSessionManager *)self notifyObserverOfAttemptBeganWithDevice:v7];
  v10 = variable initialization expression of HeadphoneProxFeatureClient.delegate();
  v11 = sub_1001122DC();
  v12 = variable initialization expression of HeadphoneProxFeatureClient.delegate();
  v13 = sub_1001118D4();
  v14 = v13;
  v15 = &off_1009105F8;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  [v16 doubleValue];
  v18 = dispatch_time(0, (v17 * 1000000000.0));
  v19 = SFMainQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5E1C;
  block[3] = &unk_1008CFD58;
  v23 = v7;
  v24 = v16;
  v27 = v11;
  v28 = v12;
  selfCopy = self;
  v26 = v10;
  v29 = v6;
  v20 = v16;
  v21 = v7;
  dispatch_after(v18, v19, block);
}

- (void)failedAttemptBeforeStarting:(id)starting metricErrorString:(id)string
{
  stringCopy = string;
  startingCopy = starting;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  [(SDAutoUnlockSessionManager *)self setAttemptStart:0];
  [(SDAutoUnlockSessionManager *)self setPrewarmStart:0];
  v15[0] = SDAutoUnlockManagerMetricSuccessKey;
  v15[1] = SDAutoUnlockManagerMetricErrorDomainKey;
  v16[0] = &off_10090BA30;
  v16[1] = SFAutoUnlockErrorDomain;
  v15[2] = SDAutoUnlockManagerMetricErrorCodeKey;
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [startingCopy code]);
  v16[2] = v9;
  v16[3] = stringCopy;
  v15[3] = SDAutoUnlockManagerMetricErrorStringKey;
  v15[4] = @"SDAutoUnlockBypassMetricLog";
  v16[4] = &__kCFBooleanTrue;
  v15[5] = SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey;
  v10 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self connectedBluetoothDevices]];
  v16[5] = v10;
  v15[6] = SDAutoUnlockManagerMetricTimeSinceLastWakeKey;
  v11 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake]];
  v16[6] = v11;
  v15[7] = SDAutoUnlockManagerMetricLastSleepTypeKey;
  v12 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self lastSleepType]];
  v16[7] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:8];

  v14 = [v13 mutableCopy];
  [(SDAutoUnlockSessionManager *)self setCachedMetrics:v14];

  [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v13 error:startingCopy];
  [(SDAutoUnlockSessionManager *)self setLastSleepType:0];
  [(SDAutoUnlockSessionManager *)self setTimeSinceLastMachineWake:-1];
  [(SDAutoUnlockSessionManager *)self setConnectedBluetoothDevices:0];
}

- (void)attemptAutoUnlock
{
  if ([(SDAutoUnlockSessionManager *)self attemptInProgress]&& [(SDAutoUnlockSessionManager *)self attemptPrewarmed])
  {
    [(SDAutoUnlockSessionManager *)self setAttemptPrewarmed:0];
    if ([(SDAutoUnlockSessionManager *)self isBeingUsedForSiri])
    {
      v3 = auto_unlock_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SPI attempt overlap with prewarm attempt", buf, 2u);
      }

      v4 = SFAutoUnlockErrorDomain;
      v145 = NSLocalizedDescriptionKey;
      v146 = @"SPI attempt overlap with prewarm attempt, try again when phone is not prewarming";
      v5 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      allValues = [NSError errorWithDomain:v4 code:219 userInfo:v5];

      [(SDAutoUnlockSessionManager *)self failedAttemptBeforeStarting:allValues metricErrorString:@"SPI attempt overlap with prewarm attempt, try again when phone is not prewarming"];
    }

    else
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
      allValues = [lockAuthSessions allValues];

      v41 = [allValues countByEnumeratingWithState:&v117 objects:v147 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v118;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v118 != v43)
            {
              objc_enumerationMutation(allValues);
            }

            v45 = *(*(&v117 + 1) + 8 * i);
            if ([v45 attemptPrewarmed])
            {
              [v45 setDoNotPostUnlockConfirmation:{-[SDAutoUnlockSessionManager doNotPostUnlockConfirmation](self, "doNotPostUnlockConfirmation")}];
              [v45 completeAttemptIfNecessary];
            }
          }

          v42 = [allValues countByEnumeratingWithState:&v117 objects:v147 count:16];
        }

        while (v42);
      }
    }

    goto LABEL_52;
  }

  if (![(SDAutoUnlockSessionManager *)self attemptInProgress])
  {
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_1000D7578;
    v115[3] = &unk_1008CFD80;
    v115[4] = self;
    v116 = 0;
    v9 = objc_retainBlock(v115);
    [(SDAutoUnlockSessionManager *)self setConnectedBluetoothDevices:variable initialization expression of HeadphoneProxFeatureClient.delegate()];
    [(SDAutoUnlockSessionManager *)self setTimeSinceLastMachineWake:sub_1001122DC()];
    [(SDAutoUnlockSessionManager *)self setLastSleepType:variable initialization expression of HeadphoneProxFeatureClient.delegate()];
    v10 = objc_opt_new();
    [(SDAutoUnlockSessionManager *)self setAttemptStart:v10];

    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      attemptCount = [(SDAutoUnlockSessionManager *)self attemptCount];
      connectedBluetoothDevices = [(SDAutoUnlockSessionManager *)self connectedBluetoothDevices];
      timeSinceLastMachineWake = [(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake];
      [(SDAutoUnlockSessionManager *)self lastSleepType];
      v15 = sub_1001123CC();
      *buf = 134218754;
      v138 = attemptCount;
      v139 = 2048;
      v140 = connectedBluetoothDevices;
      v141 = 2048;
      v142 = timeSinceLastMachineWake;
      v143 = 2112;
      v144 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting attempt (attempt count: %ld, bluetooth devices: %ld, time since last wake: %ld seconds, sleep type: %@)", buf, 0x2Au);
    }

    autoUnlockTransport = [(SDAutoUnlockSessionManager *)self autoUnlockTransport];
    v17 = [autoUnlockTransport enabledAutoUnlockDevicesUsingCache:1];
    allObjects = [v17 allObjects];

    if ([allObjects count])
    {
      isBluetoothEnabled = [(SDAutoUnlockSessionManager *)self isBluetoothEnabled];
      v20 = isBluetoothEnabled[2]();

      isWifiEnabled = [(SDAutoUnlockSessionManager *)self isWifiEnabled];
      v22 = isWifiEnabled[2]();

      if ([(SDAutoUnlockSessionManager *)self attemptType]!= 2 && (v22 & 1) == 0)
      {
        [(SDAutoUnlockSessionManager *)self presentedWiFiError];
      }

      isFaceIDEnabled = [(SDAutoUnlockSessionManager *)self isFaceIDEnabled];
      v24 = isFaceIDEnabled[2]();

      if (v24)
      {
        if (v20 & v22)
        {
          v25 = +[SDStatusMonitor sharedMonitor];
          internetSharingEnabled = [v25 internetSharingEnabled];

          if (internetSharingEnabled)
          {
            v27 = auto_unlock_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "### Mac is internet sharing", buf, 2u);
            }

            v28 = SFLocalizedStringForKey();
            v29 = SFAutoUnlockErrorDomain;
            v131 = NSLocalizedDescriptionKey;
            v132 = v28;
            v30 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];
            allValues = [NSError errorWithDomain:v29 code:146 userInfo:v30];

            [(SDAutoUnlockSessionManager *)self failedAttemptBeforeStarting:allValues metricErrorString:v28];
            (v9[2])(v9, 0);
            goto LABEL_24;
          }

          isActiveDeviceNearby = [(SDAutoUnlockSessionManager *)self isActiveDeviceNearby];
          v57 = isActiveDeviceNearby[2]();

          if ((v57 & 1) == 0)
          {
            v63 = auto_unlock_log();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "### Device is not nearby", buf, 2u);
            }

            v64 = SFAutoUnlockErrorDomain;
            v129 = NSLocalizedDescriptionKey;
            v130 = @"Device not connected";
            v65 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];
            allValues = [NSError errorWithDomain:v64 code:186 userInfo:v65];

            v39 = @"Device not nearby";
            goto LABEL_61;
          }

          remotePeer = [(SDAutoUnlockSessionManager *)self remotePeer];
          isKeyBagLocked = [remotePeer isKeyBagLocked];

          if (isKeyBagLocked)
          {
            v60 = auto_unlock_log();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "### Watch needs to be unlocked", buf, 2u);
            }

            v61 = SFAutoUnlockErrorDomain;
            v127 = NSLocalizedDescriptionKey;
            v128 = @"Watch needs to be unlocked";
            v62 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
            allValues = [NSError errorWithDomain:v61 code:102 userInfo:v62];

            v39 = @"Watch locked and unarmed";
LABEL_61:
            selfCopy2 = self;
            v38 = allValues;
            goto LABEL_29;
          }

          [(SDAutoUnlockSessionManager *)self attemptCount];
          remotePeer2 = [(SDAutoUnlockSessionManager *)self remotePeer];
          canPerformUnlocks = [remotePeer2 canPerformUnlocks];

          if (canPerformUnlocks)
          {
            [(SDAutoUnlockSessionManager *)self lastUnlockDate];

            v28 = [NSDate dateWithTimeIntervalSinceNow:-23400.0];
            lastUnlockDate = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
            [lastUnlockDate timeIntervalSinceDate:v28];
            v70 = v69;

            if (v70 < 0.0)
            {
              v84 = auto_unlock_log();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                lastUnlockDate2 = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
                *buf = 138412546;
                v138 = lastUnlockDate2;
                v139 = 2112;
                v140 = v28;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Last unlock date: %@, should be after: %@", buf, 0x16u);
              }
            }

            else if (![(SDAutoUnlockSessionManager *)self lastLockedByRelock])
            {
              v104 = v28;
              sub_100111BA4(1);
              [(SDAutoUnlockSessionManager *)self setAttemptInProgress:1];
              v71 = +[NSUUID UUID];
              uUIDString = [v71 UUIDString];
              [(SDAutoUnlockSessionManager *)self setAttemptID:uUIDString];

              v73 = objc_opt_new();
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              obj = allObjects;
              v74 = [obj countByEnumeratingWithState:&v111 objects:v122 count:16];
              if (v74)
              {
                v75 = v74;
                v106 = *v112;
                v103 = v73;
                while (2)
                {
                  for (j = 0; j != v75; j = j + 1)
                  {
                    if (*v112 != v106)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v77 = *(*(&v111 + 1) + 8 * j);
                    uniqueID = [v77 uniqueID];
                    remotePeer3 = [(SDAutoUnlockSessionManager *)self remotePeer];
                    deviceID = [remotePeer3 deviceID];
                    v81 = [uniqueID isEqualToString:deviceID];

                    if (v81)
                    {
                      v73 = v103;
                      [v103 addObject:v77];
                      goto LABEL_93;
                    }
                  }

                  v75 = [obj countByEnumeratingWithState:&v111 objects:v122 count:16];
                  v73 = v103;
                  if (v75)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_93:

              [(SDAutoUnlockSessionManager *)self setScanAutoUnlockDevices:v73];
              v94 = +[SDNearbyAgent sharedNearbyAgent];
              [v94 setAutoUnlockActive:1];

              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              0x4018000000000000 = v73;
              v95 = [(__CFString *)0x4018000000000000 countByEnumeratingWithState:&v107 objects:v121 count:16];
              if (v95)
              {
                v96 = v95;
                LODWORD(v97) = 0;
                v98 = *v108;
                do
                {
                  for (k = 0; k != v96; k = k + 1)
                  {
                    if (*v108 != v98)
                    {
                      objc_enumerationMutation(0x4018000000000000);
                    }

                    v100 = *(*(&v107 + 1) + 8 * k);
                    if ([v100 supportsHEIC])
                    {
                      v101 = 2;
                    }

                    else
                    {
                      v101 = 1;
                    }

                    v97 = v101 | v97;
                    [(SDAutoUnlockSessionManager *)self createLockSessionWithWatchDevice:v100];
                  }

                  v96 = [(__CFString *)0x4018000000000000 countByEnumeratingWithState:&v107 objects:v121 count:16];
                }

                while (v96);
              }

              else
              {
                v97 = 0;
              }

              if ([(SDAutoUnlockSessionManager *)self attemptType]== 2)
              {
                [(SDAutoUnlockSessionManager *)self generateAppIconImageWithOptions:v97];
              }

              v102 = auto_unlock_log();
              v28 = v104;
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v138 = 0x4018000000000000;
                _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Connecting to watches: %@", buf, 0xCu);
              }

              (v9[2])(v9, 1);
              allValues = 0;
              goto LABEL_110;
            }

            v86 = auto_unlock_log();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              if (v70 < 0.0)
              {
                v87 = @"NO";
              }

              else
              {
                v87 = @"YES";
              }

              if ([(SDAutoUnlockSessionManager *)self lastLockedByRelock])
              {
                v88 = @"YES";
              }

              else
              {
                v88 = @"NO";
              }

              *buf = 138412546;
              v138 = v87;
              v139 = 2112;
              v140 = v88;
              _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "### Device needs to be unlocked through another method first (unlocked recently: %@, last locked by relock %@)", buf, 0x16u);
            }

            if (v70 < 0.0)
            {
              0x4018000000000000 = [NSString stringWithFormat:@"No unlocks in the last %f hrs", 0x4018000000000000];
              v90 = 214;
            }

            else
            {
              0x4018000000000000 = @"Blocked PAU attempt due to Relock";
              v90 = 216;
            }

            v91 = SFLocalizedStringForKey();
            v92 = SFAutoUnlockErrorDomain;
            v123 = NSLocalizedDescriptionKey;
            v124 = v91;
            v93 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
            allValues = [NSError errorWithDomain:v92 code:v90 userInfo:v93];

            [(SDAutoUnlockSessionManager *)self failedAttemptBeforeStarting:allValues metricErrorString:0x4018000000000000];
            (v9[2])(v9, 0);

LABEL_110:
LABEL_24:

LABEL_51:
            goto LABEL_52;
          }

          v82 = auto_unlock_log();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "### Device needs to be unlocked through another method first (device armed: NO)", buf, 2u);
          }

          v83 = SFAutoUnlockErrorDomain;
          v125 = NSLocalizedDescriptionKey;
          v33 = @"Token not armed";
          v126 = @"Token not armed";
          v34 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
          v35 = v83;
          v36 = 213;
LABEL_28:
          allValues = [NSError errorWithDomain:v35 code:v36 userInfo:v34];

          selfCopy2 = self;
          v38 = allValues;
          v39 = v33;
LABEL_29:
          [(SDAutoUnlockSessionManager *)selfCopy2 failedAttemptBeforeStarting:v38 metricErrorString:v39];
          (v9[2])(v9, 0);
          goto LABEL_51;
        }
      }

      else
      {
        v46 = auto_unlock_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "### FaceID disabled. Disabling Auto Unlock for all key devices", buf, 2u);
        }

        [(SDAutoUnlockSessionManager *)self disableAutoUnlockForAllWatches];
      }

      v47 = auto_unlock_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = @"YES";
        if (v20)
        {
          v49 = @"NO";
        }

        else
        {
          v49 = @"YES";
        }

        if (v22)
        {
          v48 = @"NO";
        }

        *buf = 138412546;
        v138 = v49;
        v139 = 2112;
        v140 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "### Interfaces off (bluetooth off: %@, wifi off: %@)", buf, 0x16u);
      }

      v50 = [(SDAutoUnlockSessionManager *)self errorCodeForBluetoothEnabled:v20 wifiEnabled:v22 faceIDEnabled:v24];
      v51 = [(SDAutoUnlockSessionManager *)self errorStringForBluetoothEnabled:v20 wifiEnabled:v22 faceIDEnabled:v24];
      v52 = [(SDAutoUnlockSessionManager *)self shouldShowErrorForBluetoothEnabled:v20];
      v53 = SFAutoUnlockErrorDomain;
      v134[0] = v51;
      v133[0] = NSLocalizedDescriptionKey;
      v133[1] = @"SDAutoUnlockShowScreenLockError";
      v54 = [NSNumber numberWithBool:v52];
      v134[1] = v54;
      v55 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:2];
      allValues = [NSError errorWithDomain:v53 code:v50 userInfo:v55];

      [(SDAutoUnlockSessionManager *)self failedAttemptBeforeStarting:allValues metricErrorString:v51];
      (v9[2])(v9, 0);

      goto LABEL_51;
    }

    v31 = auto_unlock_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "### No enabled devices for attempt", buf, 2u);
    }

    v32 = SFAutoUnlockErrorDomain;
    v135 = NSLocalizedDescriptionKey;
    v33 = @"No enabled devices";
    v136 = @"No enabled devices";
    v34 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v35 = v32;
    v36 = 117;
    goto LABEL_28;
  }

  allValues = auto_unlock_log();
  if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
  {
    attemptInProgress = [(SDAutoUnlockSessionManager *)self attemptInProgress];
    v8 = @"NO";
    if (attemptInProgress)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v138 = v8;
    _os_log_impl(&_mh_execute_header, allValues, OS_LOG_TYPE_DEFAULT, "Attempt already in progress (progress state: %@)", buf, 0xCu);
  }

LABEL_52:
}

- (void)prewarmAutoUnlock
{
  localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
  shouldPrewarmAttempt = [localDeviceController shouldPrewarmAttempt];

  if (shouldPrewarmAttempt)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Beginning prewarming of unlock attempt", v7, 2u);
    }

    [(SDAutoUnlockSessionManager *)self setAttemptPrewarmed:1];
    v6 = objc_opt_new();
    [(SDAutoUnlockSessionManager *)self setPrewarmStart:v6];

    [(SDAutoUnlockSessionManager *)self attemptAutoUnlockForType:1];
  }

  else
  {

    [(SDAutoUnlockSessionManager *)self setAttemptPrewarmed:0];
  }
}

- (void)attemptAutoUnlockForSiri
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "attemptAutoUnlockForSiri", v4, 2u);
  }

  [(SDAutoUnlockSessionManager *)self setIsBeingUsedForSiri:1];
  [(SDAutoUnlockSessionManager *)self attemptAutoUnlockForType:1];
}

- (void)attemptAutoUnlockWithoutNotifyingWatch
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling attemptAutoUnlockWithoutNotifyingWatch", v4, 2u);
  }

  [(SDAutoUnlockSessionManager *)self setDoNotPostUnlockConfirmation:1];
  [(SDAutoUnlockSessionManager *)self attemptAutoUnlockForType:1];
}

- (void)completeAutoUnlockWithNotification:(BOOL)notification
{
  notificationCopy = notification;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (notificationCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Complete Auto Unlock, Post Notification: %@", buf, 0xCu);
  }

  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D79BC;
  v8[3] = &unk_1008CF798;
  v8[4] = self;
  v9 = notificationCopy;
  dispatch_async(sessionManagerQueue, v8);
}

- (void)donateDeviceUnlockedWithMask:(BOOL)mask
{
  maskCopy = mask;
  v5 = [NSNumber numberWithInt:!mask];
  cachedMetrics = [(SDAutoUnlockSessionManager *)self cachedMetrics];
  [cachedMetrics setObject:v5 forKeyedSubscript:SDAutoUnlockManagerMetricMaskKey];

  localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
  [localDeviceController deviceUnlockedWithMask:!maskCopy];
}

- (void)invalidateAttempt
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating attempt", buf, 2u);
  }

  [(SDAutoUnlockSessionManager *)self setAttemptActivatedHandler:0];
  [(SDAutoUnlockSessionManager *)self setAttemptType:0];
  [(SDAutoUnlockSessionManager *)self setAttemptDevice:0];
  [(SDAutoUnlockSessionManager *)self setAttemptExternalACMContext:0];
  [(SDAutoUnlockSessionManager *)self setAttemptBundlePath:0];
  [(SDAutoUnlockSessionManager *)self setAttemptAppName:0];
  [(SDAutoUnlockSessionManager *)self setAttemptID:0];
  [(SDAutoUnlockSessionManager *)self setAttemptStart:0];
  [(SDAutoUnlockSessionManager *)self setPrewarmStart:0];
  [(SDAutoUnlockSessionManager *)self setAuthSessionError:0];
  [(SDAutoUnlockSessionManager *)self setIncrementedCountID:0];
  [(SDAutoUnlockSessionManager *)self setLastSleepType:0];
  [(SDAutoUnlockSessionManager *)self setTimeSinceLastMachineWake:-1];
  [(SDAutoUnlockSessionManager *)self setConnectedBluetoothDevices:0];
  [(SDAutoUnlockSessionManager *)self setAttemptPrewarmed:0];
  [(SDAutoUnlockSessionManager *)self setAttemptInProgress:0];
  [(SDAutoUnlockSessionManager *)self setProxyNotAvailableForUnlock:0];
  [(SDAutoUnlockSessionManager *)self setScanWatchIDs:0];
  [(SDAutoUnlockSessionManager *)self setScanPhoneIDs:0];
  [(SDAutoUnlockSessionManager *)self setScanAutoUnlockDevices:0];
  [(SDAutoUnlockSessionManager *)self setDoNotPostUnlockConfirmation:0];
  [(SDAutoUnlockSessionManager *)self invalidateScanner];
  v4 = +[SDNearbyAgent sharedNearbyAgent];
  [v4 setAutoUnlockActive:0];

  [(SDAutoUnlockSessionManager *)self setIsBeingUsedForSiri:0];
  [(SDAutoUnlockSessionManager *)self cleanUpProxySessions];
  sub_100111BA4(0);
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Posting state changed: Attempt invalidated", v9, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, SFAutoUnlockStateChangedNotification, 0, 0, 1u);
  if ([(SDAutoUnlockSessionManager *)self wifiStateNeedsUpdating])
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating WiFi state after attempt", v8, 2u);
    }

    [(SDAutoUnlockSessionManager *)self handleWiFiPowerChanged:0];
  }
}

- (void)completeSuccessfulAttempt
{
  [(SDAutoUnlockSessionManager *)self setLastUnlockedByWatch:1];

  [(SDAutoUnlockSessionManager *)self grabLanguageAssertionForAutoRelock];
}

- (void)cancelAutoUnlockWithCancelReason:(int64_t)reason usingTool:(BOOL)tool
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D81E8;
  block[3] = &unk_1008CFDA8;
  toolCopy = tool;
  block[4] = self;
  block[5] = reason;
  dispatch_async(sessionManagerQueue, block);
}

- (void)logUnintentionalAutoUnlockAttempt:(unint64_t)attempt
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D882C;
  v6[3] = &unk_1008CFD30;
  v6[4] = self;
  v6[5] = attempt;
  dispatch_async(sessionManagerQueue, v6);
}

- (void)incrementAttemptCount
{
  v3 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v3 deviceKeyBagUnlocked];

  if ((deviceKeyBagUnlocked & 1) == 0)
  {
    attemptID = [(SDAutoUnlockSessionManager *)self attemptID];
    incrementedCountID = [(SDAutoUnlockSessionManager *)self incrementedCountID];
    v7 = [attemptID isEqualToString:incrementedCountID];

    if ((v7 & 1) == 0)
    {
      attemptID2 = [(SDAutoUnlockSessionManager *)self attemptID];
      [(SDAutoUnlockSessionManager *)self setIncrementedCountID:attemptID2];

      [(SDAutoUnlockSessionManager *)self setAttemptCount:[(SDAutoUnlockSessionManager *)self attemptCount]+ 1];
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 67109120;
        v10[1] = [(SDAutoUnlockSessionManager *)self attemptCount];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Incremented attempt count %d", v10, 8u);
      }
    }
  }
}

- (void)decrementAttemptCount
{
  if ([(SDAutoUnlockSessionManager *)self attemptCount]>= 1)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Decrementing", v4, 2u);
    }

    [(SDAutoUnlockSessionManager *)self setAttemptCount:[(SDAutoUnlockSessionManager *)self attemptCount]- 1];
  }
}

- (void)requestRelock
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending relock request", v7, 2u);
  }

  v4 = objc_alloc_init(SDAutoUnlockRelockRequest);
  [(SDAutoUnlockRelockRequest *)v4 setVersion:1];
  data = [(SDAutoUnlockRelockRequest *)v4 data];
  magnetTransport = [(SDAutoUnlockSessionManager *)self magnetTransport];
  [magnetTransport sendProtocolBufferData:data withType:110 timeout:0 option:1 errorHandler:&stru_1008CFDC8];
}

- (void)autoUnlockStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SDAutoUnlockSessionManager *)self attemptInProgress])
  {
    attemptDevice = [(SDAutoUnlockSessionManager *)self attemptDevice];

    if (attemptDevice)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ([(SDAutoUnlockSessionManager *)self attemptInProgress])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    attemptDevice2 = [(SDAutoUnlockSessionManager *)self attemptDevice];
    v10 = [(SDAutoUnlockSessionManager *)self stringForState:v6];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = attemptDevice2;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "State requested (attempt in progress: %@, device: %@, state: %@)", &v12, 0x20u);
  }

  v11 = [NSNumber numberWithInteger:v6];
  handlerCopy[2](handlerCopy, v11, 0);
}

- (id)stringForState:(int64_t)state
{
  if (state > 3)
  {
    return @"Unexpected";
  }

  else
  {
    return *(&off_1008CFEE0 + state);
  }
}

- (void)authPromptInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning auth prompt info", v7, 2u);
  }

  v5 = +[SDAutoUnlockNotificationsManager sharedManager];
  notificationModel = [v5 notificationModel];
  handlerCopy[2](handlerCopy, notificationModel, 0);
}

- (BOOL)disablePairingForDeviceID:(id)d pairingID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = dCopy;
    v14 = 2112;
    v15 = iDCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disabling (device ID: %@, pairingID: %@)", &v12, 0x16u);
  }

  v9 = +[SDAutoUnlockAKSManager sharedManager];
  v10 = [v9 disablePairingWithKeyDevice:dCopy];

  [(SDAutoUnlockSessionManager *)self sendDisableMessageToDeviceID:dCopy pairingID:iDCopy];
  return v10;
}

- (void)sendDisableMessageToDeviceID:(id)d pairingID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = objc_alloc_init(SDUnlockDisable);
  [(SDUnlockDisable *)v7 setVersion:1];
  [(SDUnlockDisable *)v7 setPairingID:iDCopy];

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending %@ %@", buf, 0x16u);
  }

  v11 = +[SDAutoUnlockTransport sharedTransport];
  data = [(SDUnlockDisable *)v7 data];
  v13 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D9208;
  v15[3] = &unk_1008CDF90;
  v16 = dCopy;
  v14 = dCopy;
  [v11 sendPayload:data toDevice:v14 type:2 sessionID:0 timeout:v13 errorHandler:v15];
}

- (void)transport:(id)transport didReceiveDisableMessage:(id)message fromDeviceID:(id)d
{
  messageCopy = message;
  dCopy = d;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9344;
  block[3] = &unk_1008CE900;
  v13 = dCopy;
  v14 = messageCopy;
  selfCopy = self;
  v10 = messageCopy;
  v11 = dCopy;
  dispatch_async(sessionManagerQueue, block);
}

- (void)handleDisableMessageForKey:(id)key fromDeviceID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v8 = +[SDAutoUnlockAKSManager sharedManager];
  v9 = [v8 keyPairingIDForDeviceID:dCopy];

  keyPairingSessions = [(SDAutoUnlockSessionManager *)self keyPairingSessions];
  v11 = [keyPairingSessions objectForKeyedSubscript:dCopy];

  if (v9)
  {
    pairingID = [keyCopy pairingID];
    v13 = [pairingID isEqualToString:v9];

    if ((v13 & 1) == 0 && !v11)
    {
      v14 = auto_unlock_log();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_14;
      }

      pairingID2 = [keyCopy pairingID];
      v25 = 138412546;
      v26 = v9;
      v27 = 2112;
      v28 = pairingID2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not disabling (local pairingID: %@, received pairingID: %@)", &v25, 0x16u);
LABEL_6:

      goto LABEL_13;
    }
  }

  if (v11)
  {
    [v11 cancel];
    pairingID3 = [keyCopy pairingID];

    if (pairingID3)
    {
      canceledPairingKeySessions = [(SDAutoUnlockSessionManager *)self canceledPairingKeySessions];
      pairingID4 = [keyCopy pairingID];
      [canceledPairingKeySessions addObject:pairingID4];
    }

    sessionID = [v11 sessionID];
    uUIDString = [sessionID UUIDString];
    pairingID5 = [keyCopy pairingID];
    v22 = [uUIDString isEqualToString:pairingID5];

    if (!v22)
    {
      v14 = auto_unlock_log();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      pairingID2 = [keyCopy pairingID];
      sessionID2 = [v11 sessionID];
      uUIDString2 = [sessionID2 UUIDString];
      v25 = 138412802;
      v26 = dCopy;
      v27 = 2112;
      v28 = pairingID2;
      v29 = 2112;
      v30 = uUIDString2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "### Received disable while enabling device but pairing IDs don't match (lock device: %@, received pairing ID: %@, session ID: %@)", &v25, 0x20u);

      goto LABEL_6;
    }
  }

  [(SDAutoUnlockSessionManager *)self disableKeyPairingForDeviceID:dCopy];
LABEL_14:
}

- (void)handleDisableMessageForLock:(id)lock fromDeviceID:(id)d
{
  lockCopy = lock;
  dCopy = d;
  v7 = +[SDAutoUnlockAKSManager sharedManager];
  v8 = [v7 pairingIDForWatchID:dCopy];

  if (v8 && [lockCopy hasPairingID] && (objc_msgSend(lockCopy, "pairingID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v8), v9, !v10))
  {
    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      pairingID = [lockCopy pairingID];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = pairingID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not disabling (local pairingID: %@, received pairingID: %@)", &v13, 0x16u);
    }
  }

  else
  {
    v11 = +[SDAutoUnlockAKSManager sharedManager];
    [v11 disablePairingWithKeyDevice:dCopy];
  }
}

- (void)disableKeyPairingForDeviceID:(id)d
{
  dCopy = d;
  v5 = +[SDAutoUnlockAKSManager sharedManager];
  [v5 deleteEscrowSecretForDeviceID:dCopy];

  v6 = +[SDAutoUnlockAKSManager sharedManager];
  [v6 deleteRangingKeyForDeviceID:dCopy];

  v7 = +[SDAutoUnlockTransport sharedTransport];
  v8 = [v7 deviceTypeForDeviceID:dCopy];

  if (v8 == 2)
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing remote LTK for %@", buf, 0xCu);
    }

    v10 = +[SDAutoUnlockAKSManager sharedManager];
    [v10 removeRemoteLTKForDeviceID:dCopy];
  }

  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9AA4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionManagerQueue, block);
}

- (void)createPairingLockSessionWithDevice:(id)device passcode:(id)passcode
{
  deviceCopy = device;
  passcodeCopy = passcode;
  lockPairingSessions = [(SDAutoUnlockSessionManager *)self lockPairingSessions];
  uniqueID = [deviceCopy uniqueID];
  v10 = [lockPairingSessions objectForKeyedSubscript:uniqueID];

  if (!v10)
  {
    v13 = [SDAutoUnlockPairingLockSession alloc];
    uniqueID2 = [deviceCopy uniqueID];
    v15 = +[NSUUID UUID];
    v11 = [(SDAutoUnlockPairingLockSession *)v13 initWithDevice:uniqueID2 sessionID:v15];

    [v11 setDelegate:self];
    [v11 setPasscode:passcodeCopy];
    -[NSObject setPlaceholder:](v11, "setPlaceholder:", [deviceCopy placeholder]);
    suggestionManager = [(SDAutoUnlockSessionManager *)self suggestionManager];
    suggestedDeviceID = [suggestionManager suggestedDeviceID];
    uniqueID3 = [deviceCopy uniqueID];
    v19 = [suggestedDeviceID isEqualToString:uniqueID3];

    if (v19)
    {
      suggestionManager2 = [(SDAutoUnlockSessionManager *)self suggestionManager];
      [suggestionManager2 setSuggestedDeviceID:0];
    }

    suggestionManager3 = [(SDAutoUnlockSessionManager *)self suggestionManager];
    setupRetryDeviceID = [suggestionManager3 setupRetryDeviceID];
    uniqueID4 = [deviceCopy uniqueID];
    v24 = [setupRetryDeviceID isEqualToString:uniqueID4];

    if (v24)
    {
      suggestionManager4 = [(SDAutoUnlockSessionManager *)self suggestionManager];
      [suggestionManager4 setSetupRetryDeviceID:0];
    }

    [v11 setSetupRetryDevice:v24];
    [v11 setUpsellDevice:v19];
    [v11 start];
    lockPairingSessions2 = [(SDAutoUnlockSessionManager *)self lockPairingSessions];
    uniqueID5 = [deviceCopy uniqueID];
    [lockPairingSessions2 setObject:v11 forKeyedSubscript:uniqueID5];

    goto LABEL_9;
  }

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    lockPairingSessions2 = [(SDAutoUnlockSessionManager *)self lockPairingSessions];
    v27 = 138412290;
    v28 = lockPairingSessions2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Pairing lock session in progress %@", &v27, 0xCu);
LABEL_9:
  }
}

- (void)createPairingKeySessionWithIdentifier:(id)identifier deviceID:(id)d requestData:(id)data
{
  identifierCopy = identifier;
  dCopy = d;
  dataCopy = data;
  if (dCopy)
  {
    keyPairingSessions = [(SDAutoUnlockSessionManager *)self keyPairingSessions];
    v12 = [keyPairingSessions objectForKeyedSubscript:dCopy];

    if (v12)
    {
      v13 = auto_unlock_log();
      if (!os_log_type_enabled(&v13->super.super, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      keyPairingSessions2 = [(SDAutoUnlockSessionManager *)self keyPairingSessions];
      v17 = 138412290;
      v18 = keyPairingSessions2;
      _os_log_impl(&_mh_execute_header, &v13->super.super, OS_LOG_TYPE_DEFAULT, "Pairing key session in progress %@", &v17, 0xCu);
    }

    else
    {
      v13 = [[SDAutoUnlockPairingKeySession alloc] initWithDevice:dCopy sessionID:identifierCopy];
      [(SDAutoUnlockPairingSession *)v13 setDelegate:self];
      [(SDAutoUnlockPairingKeySession *)v13 setRequestData:dataCopy];
      [(SDAutoUnlockPairingKeySession *)v13 start];
      keyPairingSessions2 = [(SDAutoUnlockSessionManager *)self keyPairingSessions];
      [keyPairingSessions2 setObject:v13 forKeyedSubscript:dCopy];
    }

    goto LABEL_10;
  }

  v15 = auto_unlock_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1000E3784();
  }

  v16 = +[SDAutoUnlockTransport sharedTransport];
  [v16 logDevices];

LABEL_11:
}

- (void)createLockSessionWithWatchDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_alloc_init(SFBLEDevice);
  bluetoothID = [deviceCopy bluetoothID];
  [v5 setIdentifier:bluetoothID];

  [v5 setUseBTPipe:1];
  lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
  identifier = [v5 identifier];
  v9 = [lockAuthSessions objectForKeyedSubscript:identifier];

  if (!v9)
  {
    v12 = [SDAutoUnlockLockSession alloc];
    v13 = +[NSUUID UUID];
    v10 = [(SDAutoUnlockLockSession *)v12 initWithAutoUnlockDevice:deviceCopy sessionID:v13 bleDevice:v5];

    [v10 setUseProxy:0];
    attemptStart = [(SDAutoUnlockSessionManager *)self attemptStart];
    [v10 setAttemptStartDate:attemptStart];

    prewarmStart = [(SDAutoUnlockSessionManager *)self prewarmStart];
    [v10 setPrewarmStartDate:prewarmStart];

    [v10 setAttemptType:[(SDAutoUnlockSessionManager *)self attemptType]];
    -[NSObject setUseEncryption:](v10, "setUseEncryption:", [deviceCopy supportsEncryption]);
    [v10 setConnectedBluetoothDevices:[(SDAutoUnlockSessionManager *)self connectedBluetoothDevices]];
    [v10 setTimeSinceLastMachineWake:[(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake]];
    [v10 setLastSleepType:[(SDAutoUnlockSessionManager *)self lastSleepType]];
    [v10 setAttemptPrewarmed:[(SDAutoUnlockSessionManager *)self attemptPrewarmed]];
    [v10 setDoNotPostUnlockConfirmation:[(SDAutoUnlockSessionManager *)self doNotPostUnlockConfirmation]];
    [v10 setIsAuthenticatingForSiri:[(SDAutoUnlockSessionManager *)self isBeingUsedForSiri]];
    [v10 setDelegate:self];
    lastUnlockDate = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
    [v10 setLastLocalUnlockDate:lastUnlockDate];

    lockStateChangedDate = [(SDAutoUnlockSessionManager *)self lockStateChangedDate];
    [lockStateChangedDate timeIntervalSinceNow];
    v19 = v18;

    v20 = auto_unlock_log();
    v21 = v20;
    if (v19 < -480)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E37C0(480, self, v21);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      lockStateChangedDate2 = [(SDAutoUnlockSessionManager *)self lockStateChangedDate];
      v29 = 67109378;
      LODWORD(v30[0]) = 8;
      WORD2(v30[0]) = 2112;
      *(v30 + 6) = lockStateChangedDate2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Phone was used within the last %d min. Last lock/unlock date: %@. Telling Watch to skip motion check", &v29, 0x12u);
    }

    [v10 setSkipMotionCheck:v19 >= -480];
    if ([(SDAutoUnlockSessionManager *)self attemptType]== 2)
    {
      v23 = auto_unlock_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        attemptExternalACMContext = [(SDAutoUnlockSessionManager *)self attemptExternalACMContext];
        v29 = 138412290;
        v30[0] = attemptExternalACMContext;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Lock session setting context %@", &v29, 0xCu);
      }

      attemptExternalACMContext2 = [(SDAutoUnlockSessionManager *)self attemptExternalACMContext];
      [v10 setExternalACMContext:attemptExternalACMContext2];
    }

    locksWithAKSTokens = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
    uniqueID = [deviceCopy uniqueID];
    -[NSObject setUseAKSToken:](v10, "setUseAKSToken:", [locksWithAKSTokens containsObject:uniqueID]);

    [v10 start];
    lockAuthSessions2 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    identifier2 = [v5 identifier];
    [lockAuthSessions2 setObject:v10 forKeyedSubscript:identifier2];

    goto LABEL_14;
  }

  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    lockAuthSessions2 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    v29 = 138412290;
    v30[0] = lockAuthSessions2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Auth lock session in progress %@", &v29, 0xCu);
LABEL_14:
  }
}

- (void)createProxySessionWithDeviceID:(id)d
{
  dCopy = d;
  v5 = +[SDAutoUnlockTransport sharedTransport];
  v6 = [v5 bluetoothIDForIDSID:dCopy];
  v7 = objc_alloc_init(SFBLEDevice);
  [v7 setIdentifier:v6];
  proxySessions = [(SDAutoUnlockSessionManager *)self proxySessions];
  identifier = [v7 identifier];
  v10 = [proxySessions objectForKeyedSubscript:identifier];

  if (v10)
  {
    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Already sent trigger to device", v19, 2u);
    }
  }

  else
  {
    kdebug_trace();
    v12 = [SDAutoUnlockProxySession alloc];
    v13 = +[NSUUID UUID];
    v14 = [(SDAutoUnlockProxySession *)v12 initWithDevice:dCopy sessionID:v13 bleDevice:v7];

    v15 = [v5 modelIdentifierForDeviceID:dCopy];
    [(SDAutoUnlockProxySession *)v14 setModel:v15];

    attemptStart = [(SDAutoUnlockSessionManager *)self attemptStart];
    [(SDAutoUnlockProxySession *)v14 setStartDate:attemptStart];

    [(SDAutoUnlockPairingSession *)v14 setDelegate:self];
    [(SDAutoUnlockProxySession *)v14 start];
    proxySessions2 = [(SDAutoUnlockSessionManager *)self proxySessions];
    identifier2 = [v7 identifier];
    [proxySessions2 setObject:v14 forKeyedSubscript:identifier2];
  }
}

- (void)updateStringForProxySession
{
  if (![(SDAutoUnlockSessionManager *)self proxyErrorCode])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    proxySessions = [(SDAutoUnlockSessionManager *)self proxySessions];
    allValues = [proxySessions allValues];

    v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          state = [v9 state];
          if (state <= [(SDAutoUnlockSessionManager *)self lastProxyState])
          {
            lastProxyState = [(SDAutoUnlockSessionManager *)self lastProxyState];
          }

          else
          {
            lastProxyState = [v9 state];
          }

          [(SDAutoUnlockSessionManager *)self setLastProxyState:lastProxyState];
        }

        v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    if ([(SDAutoUnlockSessionManager *)self lastProxyState]== 2)
    {
      v12 = @"Trigger Send Failed With Timeout";
      v13 = 142;
    }

    else
    {
      if ([(SDAutoUnlockSessionManager *)self lastProxyState]!= 3)
      {
        return;
      }

      v12 = @"Unable to Find Proxy Watch";
      v13 = 132;
    }

    [(SDAutoUnlockSessionManager *)self setScanErrorString:v12];
    [(SDAutoUnlockSessionManager *)self setProxyErrorCode:v13];
  }
}

- (void)cleanUpProxySessions
{
  [(SDAutoUnlockSessionManager *)self updateStringForProxySession];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  proxySessions = [(SDAutoUnlockSessionManager *)self proxySessions];
  allValues = [proxySessions allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v8) invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  proxySessions2 = [(SDAutoUnlockSessionManager *)self proxySessions];
  [proxySessions2 removeAllObjects];

  [(SDAutoUnlockSessionManager *)self setLastProxyState:0];
  [(SDAutoUnlockSessionManager *)self setNotifiedForProxy:0];
  [(SDAutoUnlockSessionManager *)self setProxyDiscoverTime:0.0];
  [(SDAutoUnlockSessionManager *)self setProxyDeviceModel:0];
  [(SDAutoUnlockSessionManager *)self setProxyConnectionTime:0.0];
  [(SDAutoUnlockSessionManager *)self setProxyErrorCode:0];
  [(SDAutoUnlockSessionManager *)self setProxyRSSI:0];
}

- (void)clearAllKeysWithTokens
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing all keys with tokens", v5, 2u);
  }

  keysWithAKSTokens = [(SDAutoUnlockSessionManager *)self keysWithAKSTokens];
  [keysWithAKSTokens removeAllObjects];
}

- (void)cancelAllLockSessionsForScanTimeout
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
  allValues = [lockAuthSessions allValues];

  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setAttemptTimedOut:1];
        [v8 cancel];
      }

      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)invalidateExistingSessionsForBLEDevice:(id)device incomingSessionID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v8 = +[SDAutoUnlockTransport sharedTransport];
  identifier = [deviceCopy identifier];
  v10 = [v8 cachedIDSDeviceIDsForBluetoothID:identifier];
  firstObject = [v10 firstObject];

  selfCopy = self;
  keyAuthSessions = [(SDAutoUnlockSessionManager *)self keyAuthSessions];
  v12 = [keyAuthSessions copy];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
  v15 = v13;
  if (!v14)
  {
LABEL_16:

    goto LABEL_17;
  }

  v16 = v14;
  v25 = deviceCopy;
  v27 = 0;
  v17 = *v30;
  do
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v30 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v29 + 1) + 8 * i);
      v20 = [v13 objectForKeyedSubscript:v19];
      uUIDString = [dCopy UUIDString];
      if (([uUIDString isEqualToString:v19] & 1) == 0)
      {
        deviceID = [v20 deviceID];
        v23 = [deviceID isEqualToString:firstObject];

        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = auto_unlock_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v20;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Invalidating existing session: %@", buf, 0xCu);
        }

        [v20 invalidateOnQueue];
        uUIDString = [(SDAutoUnlockSessionManager *)selfCopy keyAuthSessions];
        [uUIDString setObject:0 forKeyedSubscript:v19];
        v27 = 1;
      }

LABEL_12:
    }

    v16 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
  }

  while (v16);

  deviceCopy = v25;
  if (v27)
  {
    v15 = +[SDAutoUnlockNotificationsManager sharedManager];
    [v15 removeAutoUnlockNotification];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)createRegistrationLockSessionWithDeviceID:(id)d sessionID:(id)iD requestData:(id)data
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  if (dCopy)
  {
    lockRegistrationSessionsByDeviceID = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
    v12 = [lockRegistrationSessionsByDeviceID objectForKeyedSubscript:dCopy];

    if (v12)
    {
      v13 = auto_unlock_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        lockRegistrationSessionsByDeviceID2 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
        v20 = 138412290;
        v21 = lockRegistrationSessionsByDeviceID2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Registration lock session in progress %@", &v20, 0xCu);
      }
    }

    else
    {
      if (iDCopy)
      {
        v17 = iDCopy;
      }

      else
      {
        v17 = +[NSUUID UUID];
      }

      v13 = v17;
      v18 = [[SDAutoUnlockRegistrationLockSession alloc] initWithDevice:dCopy sessionID:v17];
      [(SDAutoUnlockPairingSession *)v18 setDelegate:self];
      [(SDAutoUnlockRegistrationLockSession *)v18 setRequestData:dataCopy];
      [(SDAutoUnlockRegistrationLockSession *)v18 start];
      lockRegistrationSessionsByDeviceID3 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
      [lockRegistrationSessionsByDeviceID3 setObject:v18 forKeyedSubscript:dCopy];
    }
  }

  else
  {
    v15 = auto_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E38B4();
    }

    v16 = +[SDAutoUnlockTransport sharedTransport];
    [v16 logDevices];
  }
}

- (void)cancelParallelRegistrationSessionsForDeviceID:(id)d newSessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  lockRegistrationSessionsByDeviceID = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
  v10 = [lockRegistrationSessionsByDeviceID objectForKeyedSubscript:dCopy];
  v11 = v10;
  if (v10)
  {
    sessionID = [v10 sessionID];
    uUIDString = [sessionID UUIDString];
    uUIDString2 = [iDCopy UUIDString];
    v15 = [uUIDString compare:uUIDString2];

    if (v15 == 1)
    {
      v16 = auto_unlock_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invalidating existing registration session: %@", &v17, 0xCu);
      }

      [v11 invalidate];
      [lockRegistrationSessionsByDeviceID setObject:0 forKeyedSubscript:dCopy];
    }
  }
}

- (void)session:(id)session didCompleteWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB67C;
  block[3] = &unk_1008CE900;
  v12 = sessionCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = sessionCopy;
  dispatch_async(sessionManagerQueue, block);
}

- (void)handleLockSessionCompleted:(id)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  autoUnlockDevice = [completedCopy autoUnlockDevice];
  canceledAuthLockSessions = [(SDAutoUnlockSessionManager *)self canceledAuthLockSessions];
  sessionID = [completedCopy sessionID];
  v12 = [canceledAuthLockSessions containsObject:sessionID];

  if (v12)
  {
    canceledAuthLockSessions2 = [(SDAutoUnlockSessionManager *)self canceledAuthLockSessions];
    sessionID2 = [completedCopy sessionID];
    [canceledAuthLockSessions2 removeObject:sessionID2];

    suggestionManager = [(SDAutoUnlockSessionManager *)self suggestionManager];
    [suggestionManager setLastSuccessfulDevice:0];

    if (errorCopy)
    {
      [(SDAutoUnlockSessionManager *)self performRegistrationIfNecessaryForLockSession:completedCopy error:errorCopy];
    }

    else
    {
      v21 = auto_unlock_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Canceled at end", buf, 2u);
      }

      [completedCopy handleCanceledAfterSuccess];
    }

    if ([completedCopy otherSessionCancel])
    {
      locksWithAKSTokens = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
      deviceID = [completedCopy deviceID];
      [locksWithAKSTokens removeObject:deviceID];

LABEL_31:
    }
  }

  else if (errorCopy)
  {
    lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    v17 = [lockAuthSessions count];

    if (v17 <= 1)
    {
      [completedCopy logResults];
      autoUnlockDevice2 = [completedCopy autoUnlockDevice];
      v62 = autoUnlockDevice2;
      v26 = [NSArray arrayWithObjects:&v62 count:1];
      wifiRangingResults = [completedCopy wifiRangingResults];
      [(SDAutoUnlockSessionManager *)self createRadarForError:errorCopy devices:v26 rangingResults:wifiRangingResults];

      attemptResults = [completedCopy attemptResults];
      v29 = [attemptResults mutableCopy];
      [(SDAutoUnlockSessionManager *)self setCachedMetrics:v29];

      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:attemptResults error:errorCopy];
      locksWithAKSTokens2 = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
      deviceID2 = [completedCopy deviceID];
      [locksWithAKSTokens2 removeObject:deviceID2];

      suggestionManager2 = [(SDAutoUnlockSessionManager *)self suggestionManager];
      [suggestionManager2 setLastSuccessfulDevice:0];

      if ([errorCopy code] == 145)
      {
        [(SDAutoUnlockSessionManager *)self decrementAttemptCount];
      }

      else
      {
        [(SDAutoUnlockSessionManager *)self performRegistrationIfNecessaryForLockSession:completedCopy error:errorCopy];
      }

      [(SDAutoUnlockSessionManager *)self invalidateAttempt];
    }

    else
    {
      v18 = auto_unlock_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [completedCopy sessionID];
        lockAuthSessions2 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
        *buf = 138412802;
        v57 = sessionID3;
        v58 = 2112;
        v59 = errorCopy;
        v60 = 2112;
        v61 = lockAuthSessions2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Session failed (id: %@, error: %@, outstanding sessions: %@)", buf, 0x20u);
      }

      [(SDAutoUnlockSessionManager *)self setAuthSessionError:errorCopy];
    }

    if ([errorCopy code] == 101)
    {
      [(SDAutoUnlockSessionManager *)self registerRemotePeerIfNecessary];
    }
  }

  else
  {
    if ([(SDAutoUnlockSessionManager *)self attemptType]== 1)
    {
      locksWithAKSTokens = +[NSUserDefaults standardUserDefaults];
      if ([locksWithAKSTokens BOOLForKey:@"phoneAutoUnlockSkipPrewarmOnNextUnlock"])
      {
        localDeviceController = auto_unlock_log();
        if (os_log_type_enabled(localDeviceController, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, localDeviceController, OS_LOG_TYPE_DEFAULT, "Skipped donating positive mask signal due to default phoneAutoUnlockSkipPrewarmOnNextUnlock", buf, 2u);
        }
      }

      else
      {
        localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
        [localDeviceController deviceUnlockedWithMask:1];
      }

      [completedCopy logResults];
      attemptResults2 = [completedCopy attemptResults];
      [autoUnlockDevice setResults:attemptResults2];

      results = [autoUnlockDevice results];
      v40 = [results mutableCopy];
      [(SDAutoUnlockSessionManager *)self setCachedMetrics:v40];

      locksWithAKSTokens3 = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
      deviceID3 = [completedCopy deviceID];
      [locksWithAKSTokens3 addObject:deviceID3];

      suggestionManager3 = [(SDAutoUnlockSessionManager *)self suggestionManager];
      [suggestionManager3 setLastSuccessfulDevice:autoUnlockDevice];

      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockCompletionWithDevice:autoUnlockDevice];
      [(SDAutoUnlockSessionManager *)self invalidateAttempt];
      goto LABEL_31;
    }

    if ([(SDAutoUnlockSessionManager *)self attemptType]!= 2)
    {
      locksWithAKSTokens = auto_unlock_log();
      if (os_log_type_enabled(locksWithAKSTokens, OS_LOG_TYPE_ERROR))
      {
        sub_1000E392C(self);
      }

      goto LABEL_31;
    }

    [completedCopy logResults];
    attemptResults3 = [completedCopy attemptResults];
    [autoUnlockDevice setResults:attemptResults3];

    results2 = [autoUnlockDevice results];
    v35 = [results2 mutableCopy];
    [(SDAutoUnlockSessionManager *)self setCachedMetrics:v35];

    hintToken = [completedCopy hintToken];
    [autoUnlockDevice setHintToken:hintToken];

    hintToken2 = [autoUnlockDevice hintToken];

    if (hintToken2)
    {
      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockCompletionWithDevice:autoUnlockDevice];
    }

    else
    {
      v47 = auto_unlock_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1000E39B0(self);
      }

      results3 = [autoUnlockDevice results];
      v49 = SFAutoUnlockErrorDomain;
      v54 = NSLocalizedDescriptionKey;
      v55 = @"Missing authorization token";
      v50 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v51 = [NSError errorWithDomain:v49 code:185 userInfo:v50];
      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:results3 error:v51];
    }

    locksWithAKSTokens4 = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
    deviceID4 = [completedCopy deviceID];
    [locksWithAKSTokens4 removeObject:deviceID4];

    [(SDAutoUnlockSessionManager *)self invalidateAttempt];
  }

  [completedCopy invalidate];
  lockAuthSessions3 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
  bleDevice = [completedCopy bleDevice];
  identifier = [bleDevice identifier];
  [lockAuthSessions3 removeObjectForKey:identifier];

  [(SDAutoUnlockSessionManager *)self setScanErrorString:0];
}

- (void)handleProxySessionCompleted:(id)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  [completedCopy connectionTime];
  [(SDAutoUnlockSessionManager *)self setProxyConnectionTime:?];
  if (errorCopy)
  {
    -[SDAutoUnlockSessionManager setProxyErrorCode:](self, "setProxyErrorCode:", [errorCopy code]);
    localizedDescription = [errorCopy localizedDescription];
    [(SDAutoUnlockSessionManager *)self setScanErrorString:localizedDescription];

    -[SDAutoUnlockSessionManager setProxyNotAvailableForUnlock:](self, "setProxyNotAvailableForUnlock:", [errorCopy code] == 144);
    if ([errorCopy code] != 135)
    {
      goto LABEL_8;
    }

    lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    if ([lockAuthSessions count] < 2)
    {
      proxySessions = [(SDAutoUnlockSessionManager *)self proxySessions];
      v10 = [proxySessions count];

      if (v10 != 1)
      {
        goto LABEL_8;
      }

      lockAuthSessions = [(SDAutoUnlockSessionManager *)self baseResultsDictionaryForError:errorCopy];
      results = [completedCopy results];
      [lockAuthSessions addEntriesFromDictionary:results];

      [(SDAutoUnlockSessionManager *)self setCachedMetrics:lockAuthSessions];
      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:lockAuthSessions error:errorCopy];
      [(SDAutoUnlockSessionManager *)self invalidateAttempt];
    }
  }

  else
  {
    -[SDAutoUnlockSessionManager setLastProxyState:](self, "setLastProxyState:", [completedCopy state]);
  }

LABEL_8:
  [completedCopy invalidate];
  proxySessions2 = [(SDAutoUnlockSessionManager *)self proxySessions];
  bleDevice = [completedCopy bleDevice];
  identifier = [bleDevice identifier];
  [proxySessions2 removeObjectForKey:identifier];
}

- (void)sessionDidStartConnection:(id)connection
{
  connectionCopy = connection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SDAutoUnlockSessionManager *)self handleLockConnectionStartedForSession:connectionCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SDAutoUnlockSessionManager *)self handleProxyConnectionStartedForSession:connectionCopy];
    }
  }
}

- (void)handleLockConnectionStartedForSession:(id)session
{
  sessionCopy = session;
  localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
  faceIDEnabled = [localDeviceController faceIDEnabled];

  cachedDeviceWiFiState = [(SDAutoUnlockSessionManager *)self cachedDeviceWiFiState];
  v8 = ([(SDAutoUnlockSessionManager *)self attemptType]== 2) | cachedDeviceWiFiState;
  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (cachedDeviceWiFiState)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v52 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wi-Fi powered on: %@", buf, 0xCu);
  }

  [(SDAutoUnlockSessionManager *)self invalidateScanner];
  if (v8)
  {
    autoUnlockDevice = [sessionCopy autoUnlockDevice];
    attemptDevice = [(SDAutoUnlockSessionManager *)self attemptDevice];

    if (attemptDevice)
    {
      allValues = auto_unlock_log();
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
      {
        attemptDevice2 = [(SDAutoUnlockSessionManager *)self attemptDevice];
        *buf = 138412546;
        v52 = autoUnlockDevice;
        v53 = 2112;
        v54 = attemptDevice2;
        _os_log_impl(&_mh_execute_header, allValues, OS_LOG_TYPE_DEFAULT, "Already connected (new device: %@, attempt device: %@)", buf, 0x16u);
      }
    }

    else
    {
      [(SDAutoUnlockSessionManager *)self setAttemptDevice:autoUnlockDevice];
      [sessionCopy setChosenDevice:1];
      if (![(SDAutoUnlockSessionManager *)self notifiedForProxy])
      {
        attemptDevice3 = [(SDAutoUnlockSessionManager *)self attemptDevice];
        [(SDAutoUnlockSessionManager *)self notifyObserverOfAttemptBeganWithDevice:attemptDevice3];

        [(SDAutoUnlockSessionManager *)self incrementAttemptCount];
      }

      v30 = auto_unlock_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Posting state changed: Scan stopped - session in progress", buf, 2u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, SFAutoUnlockStateChangedNotification, 0, 0, 1u);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
      allValues = [lockAuthSessions allValues];

      v33 = [allValues countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v33)
      {
        v34 = v33;
        v42 = autoUnlockDevice;
        v35 = *v44;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(allValues);
            }

            v37 = *(*(&v43 + 1) + 8 * i);
            sessionID = [v37 sessionID];
            sessionID2 = [sessionCopy sessionID];
            v40 = [sessionID isEqual:sessionID2];

            if ((v40 & 1) == 0)
            {
              canceledAuthLockSessions = [(SDAutoUnlockSessionManager *)self canceledAuthLockSessions];
              [canceledAuthLockSessions addObject:sessionID];

              [v37 setOtherSessionCancel:1];
              [v37 cancel];
            }
          }

          v34 = [allValues countByEnumeratingWithState:&v43 objects:v55 count:16];
        }

        while (v34);
        autoUnlockDevice = v42;
      }
    }
  }

  else
  {
    v15 = auto_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "### Discovered peer but Wi-Fi is off", buf, 2u);
    }

    v16 = +[SDStatusMonitor sharedMonitor];
    bluetoothEnabled = [v16 bluetoothEnabled];

    v18 = [(SDAutoUnlockSessionManager *)self errorCodeForBluetoothEnabled:bluetoothEnabled wifiEnabled:0 faceIDEnabled:faceIDEnabled];
    autoUnlockDevice = [(SDAutoUnlockSessionManager *)self errorStringForBluetoothEnabled:bluetoothEnabled wifiEnabled:0 faceIDEnabled:faceIDEnabled];
    v19 = [(SDAutoUnlockSessionManager *)self shouldShowErrorForWiFiEnabled:0];
    v20 = SFAutoUnlockErrorDomain;
    v49[0] = NSLocalizedDescriptionKey;
    v49[1] = @"SDAutoUnlockShowScreenLockError";
    v50[0] = autoUnlockDevice;
    v21 = [NSNumber numberWithBool:v19];
    v50[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
    allValues = [NSError errorWithDomain:v20 code:v18 userInfo:v22];

    v47[0] = SDAutoUnlockManagerMetricSuccessKey;
    v47[1] = SDAutoUnlockManagerMetricErrorDomainKey;
    v48[0] = &off_10090BA30;
    v48[1] = v20;
    v47[2] = SDAutoUnlockManagerMetricErrorCodeKey;
    v23 = [NSNumber numberWithInteger:v18];
    v48[2] = v23;
    v48[3] = autoUnlockDevice;
    v47[3] = SDAutoUnlockManagerMetricErrorStringKey;
    v47[4] = SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey;
    v24 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self connectedBluetoothDevices]];
    v48[4] = v24;
    v47[5] = SDAutoUnlockManagerMetricTimeSinceLastWakeKey;
    v25 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake]];
    v48[5] = v25;
    v47[6] = SDAutoUnlockManagerMetricLastSleepTypeKey;
    v26 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self lastSleepType]];
    v48[6] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:7];

    v28 = [v27 mutableCopy];
    [(SDAutoUnlockSessionManager *)self setCachedMetrics:v28];

    [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v27 error:allValues];
    [(SDAutoUnlockSessionManager *)self invalidateAttempt];
  }
}

- (void)handleProxyConnectionStartedForSession:(id)session
{
  sessionCopy = session;
  if (![(SDAutoUnlockSessionManager *)self notifiedForProxy])
  {
    attemptDevice = [(SDAutoUnlockSessionManager *)self attemptDevice];

    if (!attemptDevice)
    {
      v6 = objc_alloc_init(SFAutoUnlockDevice);
      [v6 setName:@"Proxied Apple Watch"];
      [v6 setModelName:@"Apple Watch"];
      [(SDAutoUnlockSessionManager *)self notifyObserverOfAttemptBeganWithDevice:v6];
      [(SDAutoUnlockSessionManager *)self setNotifiedForProxy:1];
      [(SDAutoUnlockSessionManager *)self incrementAttemptCount];
      scanTimer = [(SDAutoUnlockSessionManager *)self scanTimer];

      if (scanTimer)
      {
        scanner = [(SDAutoUnlockSessionManager *)self scanner];
        [scanner setTimeout:0.0];

        scanner2 = [(SDAutoUnlockSessionManager *)self scanner];
        [scanner2 setTimeoutHandler:0];

        [(SDAutoUnlockSessionManager *)self restartScanTimer:sub_1001F0530(12.0)];
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
      allValues = [lockAuthSessions allValues];

      v12 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(allValues);
            }

            v16 = *(*(&v19 + 1) + 8 * v15);
            [sessionCopy connectionTime];
            [v16 setProxyConnectionTime:?];
            model = [sessionCopy model];
            [v16 setProxyDeviceModel:model];

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      model2 = [sessionCopy model];
      [(SDAutoUnlockSessionManager *)self setProxyDeviceModel:model2];

      -[SDAutoUnlockSessionManager setProxyRSSI:](self, "setProxyRSSI:", [sessionCopy proxyRSSI]);
      [sessionCopy proxyDiscoveryTime];
      [(SDAutoUnlockSessionManager *)self setProxyDiscoverTime:?];
    }
  }
}

- (void)sessionDidReceiveKeyDeviceLocked:(id)locked
{
  lockedCopy = locked;
  v5 = +[SDAutoUnlockTransport sharedTransport];
  deviceID = [lockedCopy deviceID];

  v7 = [v5 autoUnlockDeviceForDeviceID:deviceID];

  [(SDAutoUnlockSessionManager *)self notifyObserverOfKeyDeviceLockWithDevice:v7];
}

- (BOOL)isDisplayOff
{
  v2 = +[SDStatusMonitor sharedMonitor];
  screenOn = [v2 screenOn];

  return screenOn ^ 1;
}

- (void)performRegistrationIfNecessaryForLockSession:(id)session error:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  code = [errorCopy code];
  if (code == 136)
  {
    if ([(SDAutoUnlockSessionManager *)self suppressAlert])
    {
LABEL_7:
      remotePeer = [(SDAutoUnlockSessionManager *)self remotePeer];
      [remotePeer handleConfirmationFailed];

      [(SDAutoUnlockSessionManager *)self registerRemotePeerIfNecessary];
      goto LABEL_10;
    }

    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Locking device on confirmation failed error", buf, 2u);
    }

    localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
    [localDeviceController lockDevice];
LABEL_6:

    goto LABEL_7;
  }

  if ([sessionCopy aksSuccess] && (objc_msgSend(sessionCopy, "unlockSucceeded") & 1) == 0)
  {
    localDeviceController = auto_unlock_log();
    if (os_log_type_enabled(localDeviceController, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, localDeviceController, OS_LOG_TYPE_DEFAULT, "AKS unlocked but unlock did not succeed", v13, 2u);
    }

    goto LABEL_6;
  }

LABEL_10:
}

- (void)transportDidChangeDevices:(id)devices
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD5CC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionManagerQueue, block);
}

- (void)transportDidChangeNearbyState:(id)state
{
  stateCopy = state;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD700;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)transport:(id)transport didReceivePairingRequestWithSessionID:(id)d deviceID:(id)iD requestData:(id)data
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000DD88C;
  v16[3] = &unk_1008CE158;
  v16[4] = self;
  v17 = dCopy;
  v18 = iDCopy;
  v19 = dataCopy;
  v13 = dataCopy;
  v14 = iDCopy;
  v15 = dCopy;
  dispatch_async(sessionManagerQueue, v16);
}

- (void)transport:(id)transport didReceiveRegistrationRequestWithSessionID:(id)d deviceID:(id)iD requestData:(id)data
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000DD99C;
  v16[3] = &unk_1008CE158;
  v16[4] = self;
  v17 = iDCopy;
  v18 = dCopy;
  v19 = dataCopy;
  v13 = dataCopy;
  v14 = dCopy;
  v15 = iDCopy;
  dispatch_async(sessionManagerQueue, v16);
}

- (void)transport:(id)transport didReceiveKeyOriginatingRegistrationRequestWithSessionID:(id)d deviceID:(id)iD requestData:(id)data
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000DDAE4;
  v16[3] = &unk_1008CE158;
  v16[4] = self;
  v17 = iDCopy;
  v18 = dCopy;
  v19 = dataCopy;
  v13 = dataCopy;
  v14 = dCopy;
  v15 = iDCopy;
  dispatch_async(sessionManagerQueue, v16);
}

- (void)idsController:(id)controller didReceiveProtoData:(id)data forType:(unsigned __int16)type deviceID:(id)d
{
  typeCopy = type;
  controllerCopy = controller;
  dataCopy = data;
  dCopy = d;
  if (typeCopy == 2001)
  {
    v15 = [[SDAutoUnlockSessionWrapper alloc] initWithData:dataCopy];
    if (-[SDAutoUnlockSessionWrapper hasSessionID](v15, "hasSessionID") && (-[SDAutoUnlockSessionWrapper sessionID](v15, "sessionID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 length], v16, v17 == 16))
    {
      v18 = [NSUUID alloc];
      sessionID = [(SDAutoUnlockSessionWrapper *)v15 sessionID];
      v20 = [v18 initWithUUIDBytes:{objc_msgSend(sessionID, "bytes")}];

      sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000DDE9C;
      v23[3] = &unk_1008CE158;
      v23[4] = self;
      v24 = v20;
      v25 = dCopy;
      v26 = v15;
      v22 = v20;
      dispatch_async(sessionManagerQueue, v23);
    }

    else
    {
      v22 = auto_unlock_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E3A34(v15);
      }
    }
  }

  else if (typeCopy == 110)
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received relock request", buf, 2u);
    }

    sessionManagerQueue2 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DDDDC;
    block[3] = &unk_1008CE028;
    block[4] = self;
    v28 = dCopy;
    dispatch_async(sessionManagerQueue2, block);
  }
}

- (void)startScannerWithWatchBluetoothIDs:(id)ds phoneBluetoothIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  objc_initWeak(&location, self);
  scanner = [(SDAutoUnlockSessionManager *)self scanner];

  if (scanner)
  {
    scanner2 = [(SDAutoUnlockSessionManager *)self scanner];
    [scanner2 invalidate];
  }

  v10 = objc_opt_new();
  [(SDAutoUnlockSessionManager *)self setScanner:v10];

  scanner3 = [(SDAutoUnlockSessionManager *)self scanner];
  [scanner3 setDiscoveryFlags:1];

  scanner4 = [(SDAutoUnlockSessionManager *)self scanner];
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  [scanner4 setDispatchQueue:sessionManagerQueue];

  scanner5 = [(SDAutoUnlockSessionManager *)self scanner];
  [scanner5 setScanRate:50];

  scanner6 = [(SDAutoUnlockSessionManager *)self scanner];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000DE424;
  v34[3] = &unk_1008CFDF0;
  objc_copyWeak(&v35, &location);
  [scanner6 setDeviceFoundHandler:v34];

  scanner7 = [(SDAutoUnlockSessionManager *)self scanner];
  [scanner7 setChangeFlags:1];

  scanner8 = [(SDAutoUnlockSessionManager *)self scanner];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000DE4A8;
  v32[3] = &unk_1008CFE18;
  objc_copyWeak(&v33, &location);
  [scanner8 setDeviceChangedHandler:v32];

  scanner9 = [(SDAutoUnlockSessionManager *)self scanner];
  [scanner9 setInvalidationHandler:&stru_1008CFE38];

  v19 = [dsCopy setByAddingObjectsFromSet:iDsCopy];
  scanner10 = [(SDAutoUnlockSessionManager *)self scanner];
  [scanner10 setDeviceFilter:v19];

  v21 = auto_unlock_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = *&v19;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Scanning for bluetooth IDs %@", buf, 0xCu);
  }

  [(SDAutoUnlockSessionManager *)self setScanWatchIDs:dsCopy];
  [(SDAutoUnlockSessionManager *)self setScanPhoneIDs:iDsCopy];
  v22 = sub_10000C2C4(@"AUBLEScanTimeout");
  v23 = v22;
  if (v22)
  {
    integerValue = [v22 integerValue];
  }

  else
  {
    integerValue = 4.0;
  }

  scanner11 = [(SDAutoUnlockSessionManager *)self scanner];
  [scanner11 setTimeout:integerValue];

  scanner12 = [(SDAutoUnlockSessionManager *)self scanner];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000DE594;
  v30[3] = &unk_1008CDD98;
  objc_copyWeak(&v31, &location);
  [scanner12 setTimeoutHandler:v30];

  v27 = auto_unlock_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = integerValue;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Using BLE scan timeout %.2f seconds", buf, 0xCu);
  }

  scanner13 = [(SDAutoUnlockSessionManager *)self scanner];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000DE664;
  v29[3] = &unk_1008CDF90;
  v29[4] = self;
  [scanner13 activateWithCompletion:v29];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)invalidateScanner
{
  scanner = [(SDAutoUnlockSessionManager *)self scanner];

  if (scanner)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidating scanner", v9, 2u);
    }

    [(SDAutoUnlockSessionManager *)self setExtendedTimer:0];
    scanner2 = [(SDAutoUnlockSessionManager *)self scanner];
    [scanner2 setTimeout:0.0];

    scanner3 = [(SDAutoUnlockSessionManager *)self scanner];
    [scanner3 setTimeoutHandler:0];

    scanner4 = [(SDAutoUnlockSessionManager *)self scanner];
    [scanner4 setInvalidationHandler:0];

    scanner5 = [(SDAutoUnlockSessionManager *)self scanner];
    [scanner5 invalidate];

    [(SDAutoUnlockSessionManager *)self setScanner:0];
    [(SDAutoUnlockSessionManager *)self invalidateScanTimer];
  }
}

- (void)handleFoundPeer:(id)peer
{
  peerCopy = peer;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = peerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found BLE peer: %@", buf, 0xCu);
  }

  identifier = [peerCopy identifier];
  scanWatchIDs = [(SDAutoUnlockSessionManager *)self scanWatchIDs];
  v8 = [scanWatchIDs containsObject:identifier];

  if (v8)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    lockAuthSessions = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    allValues = [lockAuthSessions allValues];

    v11 = [allValues countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(allValues);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          bleDevice = [v15 bleDevice];
          identifier2 = [bleDevice identifier];
          v18 = [identifier2 isEqual:identifier];

          if (v18)
          {
            [v15 handleFoundBLEDevice:peerCopy];
          }
        }

        v12 = [allValues countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

LABEL_24:

    goto LABEL_25;
  }

  scanPhoneIDs = [(SDAutoUnlockSessionManager *)self scanPhoneIDs];
  v20 = [scanPhoneIDs containsObject:identifier];

  if (v20)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    proxySessions = [(SDAutoUnlockSessionManager *)self proxySessions];
    allValues = [proxySessions allValues];

    v22 = [allValues countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(allValues);
          }

          v26 = *(*(&v30 + 1) + 8 * j);
          bleDevice2 = [v26 bleDevice];
          identifier3 = [bleDevice2 identifier];
          v29 = [identifier3 isEqual:identifier];

          if (v29)
          {
            [v26 handleFoundBLEDevice:peerCopy];
          }
        }

        v23 = [allValues countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (void)restartScanTimer:(unint64_t)timer
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting scan timer", buf, 2u);
  }

  scanTimer = [(SDAutoUnlockSessionManager *)self scanTimer];

  if (!scanTimer)
  {
    sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000DED40;
    v11[3] = &unk_1008CDEA0;
    v11[4] = self;
    v8 = sub_1001F0548(0, sessionManagerQueue, v11);
    [(SDAutoUnlockSessionManager *)self setScanTimer:v8];

    scanTimer2 = [(SDAutoUnlockSessionManager *)self scanTimer];
    dispatch_resume(scanTimer2);
  }

  scanTimer3 = [(SDAutoUnlockSessionManager *)self scanTimer];
  sub_1001F05F0(scanTimer3, timer);
}

- (void)invalidateScanTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating scan timer", v6, 2u);
  }

  scanTimer = [(SDAutoUnlockSessionManager *)self scanTimer];

  if (scanTimer)
  {
    scanTimer2 = [(SDAutoUnlockSessionManager *)self scanTimer];
    dispatch_source_cancel(scanTimer2);

    [(SDAutoUnlockSessionManager *)self setScanTimer:0];
  }
}

- (void)handleBLEScanTimerFired
{
  [(SDAutoUnlockSessionManager *)self updateStringForProxySession];
  [(SDAutoUnlockSessionManager *)self cancelAllLockSessionsForScanTimeout];
  [(SDAutoUnlockSessionManager *)self handleScanTimerFired];
  [(SDAutoUnlockSessionManager *)self invalidateAttempt];

  [(SDAutoUnlockSessionManager *)self setScanErrorString:0];
}

- (void)handleScanTimerFired
{
  v3 = SFAutoUnlockErrorDomain;
  scanErrorString = [(SDAutoUnlockSessionManager *)self scanErrorString];
  v5 = scanErrorString;
  v6 = @"Apple Watch Not Found";
  if (scanErrorString)
  {
    v6 = scanErrorString;
  }

  v7 = v6;

  v8 = objc_opt_new();
  [v8 setObject:v3 forKeyedSubscript:SDAutoUnlockManagerMetricErrorDomainKey];
  [v8 setObject:&off_10090BA30 forKeyedSubscript:SDAutoUnlockManagerMetricSuccessKey];
  v9 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self connectedBluetoothDevices]];
  [v8 setObject:v9 forKeyedSubscript:SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey];

  v10 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake]];
  [v8 setObject:v10 forKeyedSubscript:SDAutoUnlockManagerMetricTimeSinceLastWakeKey];

  v11 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self lastSleepType]];
  [v8 setObject:v11 forKeyedSubscript:SDAutoUnlockManagerMetricLastSleepTypeKey];

  if ([(SDAutoUnlockSessionManager *)self notifiedForProxy])
  {
    proxyErrorCode = [(SDAutoUnlockSessionManager *)self proxyErrorCode];
    if (proxyErrorCode)
    {
      code = proxyErrorCode;
    }

    else
    {
      code = 143;
    }

    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:SDAutoUnlockManagerMetricUsingProxyDeviceKey];
    proxyDeviceModel = [(SDAutoUnlockSessionManager *)self proxyDeviceModel];
    [v8 setObject:proxyDeviceModel forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceModelKey];

    v15 = [NSNumber numberWithInt:[(SDAutoUnlockSessionManager *)self proxyRSSI]];
    [v8 setObject:v15 forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceRSSIKey];

    [(SDAutoUnlockSessionManager *)self proxyDiscoverTime];
    v16 = [NSNumber numberWithDouble:?];
    [v8 setObject:v16 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothProxyDeviceDiscoveryKey];

    [v8 setObject:&off_10090BA78 forKeyedSubscript:SDAutoUnlockManagerMetricErrorTypeKey];
  }

  else
  {
    authSessionError = [(SDAutoUnlockSessionManager *)self authSessionError];

    if (authSessionError)
    {
      authSessionError2 = [(SDAutoUnlockSessionManager *)self authSessionError];
      userInfo = [authSessionError2 userInfo];
      v20 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];

      authSessionError3 = [(SDAutoUnlockSessionManager *)self authSessionError];
      code = [authSessionError3 code];

      v7 = v20;
    }

    else if ([(SDAutoUnlockSessionManager *)self proxyNotAvailableForUnlock])
    {

      [v8 setObject:&off_10090BA90 forKeyedSubscript:SDAutoUnlockManagerMetricErrorTypeKey];
      v7 = @"Watch Not On Wrist";
      code = 144;
    }

    else
    {
      [v8 setObject:&off_10090BAA8 forKeyedSubscript:SDAutoUnlockManagerMetricErrorTypeKey];
      code = 131;
    }
  }

  [v8 setObject:v7 forKeyedSubscript:SDAutoUnlockManagerMetricErrorStringKey];
  v22 = [NSNumber numberWithInteger:code];
  [v8 setObject:v22 forKeyedSubscript:SDAutoUnlockManagerMetricErrorCodeKey];

  v27 = NSLocalizedDescriptionKey;
  v28 = v7;
  v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v24 = [NSError errorWithDomain:v3 code:code userInfo:v23];

  scanAutoUnlockDevices = [(SDAutoUnlockSessionManager *)self scanAutoUnlockDevices];
  allObjects = [scanAutoUnlockDevices allObjects];
  [(SDAutoUnlockSessionManager *)self createRadarForError:v24 devices:allObjects rangingResults:0];

  [(SDAutoUnlockSessionManager *)self setCachedMetrics:v8];
  [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v8 error:v24];
}

- (void)updateAdvertising
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);
}

- (int64_t)idsMacCount
{
  if ([(SDAutoUnlockSessionManager *)self idsMacCountCache]< 0)
  {
    v3 = +[SDAutoUnlockTransport sharedTransport];
    idsMacDeviceIDs = [v3 idsMacDeviceIDs];
    -[SDAutoUnlockSessionManager setIdsMacCountCache:](self, "setIdsMacCountCache:", [idsMacDeviceIDs count]);
  }

  return [(SDAutoUnlockSessionManager *)self idsMacCountCache];
}

- (void)addServiceClientForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DF568;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)removeServiceClientForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DF66C;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)handleBLEDataReceivedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"SDNearbyAgentNotificationInfoKeyBLEDevice"];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v6;
    v36 = 1024;
    LODWORD(v37) = [(SDAutoUnlockSessionWrapper *)v6 useBTPipe];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received message from bleDevice %@, useBTPipe %d", buf, 0x12u);
  }

  userInfo2 = [notificationCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:@"SDNearbyAgentNotificationInfoKeyBLEData"];

  v10 = [[SDAutoUnlockSessionWrapper alloc] initWithData:v9];
  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received wrapper %@", buf, 0xCu);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000DFB48;
  v31[3] = &unk_1008CFE60;
  v31[4] = self;
  v12 = v6;
  v32 = v12;
  v13 = v10;
  v33 = v13;
  v14 = objc_retainBlock(v31);
  if ([(SDAutoUnlockSessionWrapper *)v13 hasEncryptedPayload])
  {
    v30 = 0;
    v15 = +[SDAutoUnlockAKSManager sharedManager];
    encryptedPayload = [(SDAutoUnlockSessionWrapper *)v13 encryptedPayload];
    authTag = [(SDAutoUnlockSessionWrapper *)v13 authTag];
    nonce = [(SDAutoUnlockSessionWrapper *)v13 nonce];
    identifier = [(SDAutoUnlockSessionWrapper *)v12 identifier];
    v20 = [v15 decryptMessage:encryptedPayload authTag:authTag nonce:nonce bluetoothID:identifier cachedDevices:1 errorCode:&v30];

    if (v20)
    {
      v21 = [[SDAutoUnlockSessionWrapper alloc] initWithData:v20];
      (v14[2])(v14, v21, 1);
    }

    else
    {
      v22 = auto_unlock_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E3C08(&v30);
      }

      v21 = objc_opt_new();
      [(SDAutoUnlockSessionWrapper *)v21 setVersion:1];
      v23 = +[SDStatusMonitor sharedMonitor];
      if ([v23 deviceWasUnlockedOnce])
      {
        v24 = v30;
      }

      else
      {
        v24 = 195;
      }

      [(SDAutoUnlockSessionWrapper *)v21 setErrorCode:v24];

      v25 = objc_opt_new();
      [v25 setVersion:1];
      [v25 setMessageType:309];
      data = [(SDAutoUnlockSessionWrapper *)v21 data];
      [v25 setPayload:data];

      v27 = auto_unlock_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = v21;
        v36 = 2112;
        v37 = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sending %@ Wrapper %@", buf, 0x16u);
      }

      v28 = +[SDNearbyAgent sharedNearbyAgent];
      data2 = [v25 data];
      [v28 sendUnlockData:data2 toBLEDevice:v12 completion:&stru_1008CFE80];
    }
  }

  else
  {
    (v14[2])(v14, v13, 0);
  }
}

- (void)handleRelockMessage
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
  [localDeviceController lockWithBioLockOut];

  [(SDAutoUnlockSessionManager *)self setLastLockedByRelock:1];
  [(SDAutoUnlockSessionManager *)self cancelAutoUnlock];
  cachedMetrics = [(SDAutoUnlockSessionManager *)self cachedMetrics];
  [cachedMetrics setObject:&__kCFBooleanTrue forKeyedSubscript:SDAutoUnlockManagerMetricManualRelockKey];
}

- (void)keyBagLockStateChange:(id)change
{
  changeCopy = change;
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E002C;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(sessionManagerQueue, v7);
}

- (void)onqueue_keyBagLockStateChange:(id)change
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[SDStatusMonitor sharedMonitor];
    v7 = sub_100012AB0([v6 deviceKeyBagState]);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Keybag state changed to %@", &v10, 0xCu);
  }

  v8 = objc_opt_new();
  [(SDAutoUnlockSessionManager *)self setLockStateChangedDate:v8];

  v9 = +[SDAutoUnlockAKSManager sharedManager];
  [v9 handleKeyBagLockStateChanged];

  [(SDAutoUnlockSessionManager *)self handleLockStateChanged];
}

- (BOOL)behaviorChangedAfterUpgrade
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 floatForKey:@"AutoUnlockLastSeenVersion"];
  v5 = v4;
  v6 = SFDeviceProductVersion();
  [v6 floatValue];
  v8 = v7;

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    v12 = 138413058;
    if (v5 < 15.0)
    {
      v10 = @"YES";
    }

    v13 = v10;
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = 15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "behavior changed: %@, last seen version: %f, current version: %f, firstSupportedVersion: %ld", &v12, 0x2Au);
  }

  return v5 < 15.0;
}

- (void)upsellBehaviorChangedAfterUpgradeIfNecessary
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v4 enabledAutoUnlockDevicesUsingCache:1];
  v6 = [v5 count];

  behaviorChangedAfterUpgrade = [(SDAutoUnlockSessionManager *)self behaviorChangedAfterUpgrade];
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v6)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (behaviorChangedAfterUpgrade)
    {
      v9 = @"YES";
    }

    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AutoUnlock Enabled: %@, behavior changed after upgrade: %@", buf, 0x16u);
  }

  if (((v6 != 0) & behaviorChangedAfterUpgrade) == 1)
  {
    v11 = +[SFSiriController isSiriEnabled];
    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = SFDeviceProductVersion();
    [v13 floatValue];
    [v12 setFloat:@"AutoUnlockLastSeenVersion" forKey:?];

    v14 = dispatch_time(0, 3000000000);
    sessionManagerQueue2 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E0588;
    block[3] = &unk_1008CFEA0;
    v17 = v11;
    dispatch_after(v14, sessionManagerQueue2, block);
  }
}

- (id)getUpsellNotificationBodyTextForEvent:(id)event
{
  eventCopy = event;
  v5 = +[SFSiriController isSiriEnabled];
  localDeviceController = [(SDAutoUnlockSessionManager *)self localDeviceController];
  supportsPeriocular = [localDeviceController supportsPeriocular];

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (supportsPeriocular)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (v5)
    {
      v9 = @"YES";
    }

    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Displaying upsell text. Supports periocular: %@. Siri enabled: %@", &v15, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    value = [eventCopy value];
    stringValue = [value stringValue];
    [stringValue isEqualToString:@"com.apple.faceid.any-face-covering.detected"];
  }

  v13 = SFLocalizedStringForKey();

  return v13;
}

- (BOOL)shouldNotify
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"AutoUnlockLastUpsellDate"];
  if (v3)
  {
    v4 = +[NSCalendar currentCalendar];
    v5 = +[NSDate date];
    v6 = [v4 components:32 fromDate:v3 toDate:v5 options:0];
    hour = [v6 hour];
  }

  else
  {
    hour = 0;
  }

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v3;
    v16 = 2048;
    v17 = hour;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Last notification date: %@, %ld hours ago", &v14, 0x16u);
  }

  v9 = hour > 48;
  if (v3 && hour < 49)
  {
    goto LABEL_8;
  }

  v11 = [v2 integerForKey:@"AutoUnlockLastUpsellState"];
  v12 = auto_unlock_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Number of notifications sent for this phone: %ld", &v14, 0xCu);
  }

  if (!v11)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (v11 == 2)
  {
    v9 = hour > 168;
    goto LABEL_9;
  }

  if (v11 != 1)
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No more upselling for this watch", &v14, 2u);
    }

LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (void)handleUnexpectedDisablement:(id)disablement
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"AutoUnlockAlreadyEnabledBefore"];
  v5 = auto_unlock_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting upsell notification defaults", buf, 2u);
    }

    [v3 removeObjectForKey:@"AutoUnlockLastUpsellState"];
    [v3 removeObjectForKey:@"AutoUnlockLastUpsellDate"];
    [v3 removeObjectForKey:@"AutoUnlockDeclinedToEnablePAU"];
    [v3 removeObjectForKey:@"AutoUnlockAlreadyEnabledBefore"];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Keeping upsell notification defaults", v7, 2u);
    }
  }
}

- (void)pipeConnectionChanged:(id)changed
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E0C90;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionManagerQueue, block);
}

- (void)handleNearbyStateChanged
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E0D6C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionManagerQueue, block);
}

- (void)handleDisplayStateChanged:(unint64_t)changed
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  if (!changed && [(SDAutoUnlockSessionManager *)self attemptInProgress])
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Canceling attempt in progress – device screen turned off", v7, 2u);
    }

    [(SDAutoUnlockSessionManager *)self cancelAutoUnlock];
  }
}

- (void)beginKeyRegistrationIfNecessary
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v13 = +[SDStatusMonitor sharedMonitor];
  if ([v13 deviceKeyBagUnlocked])
  {
    needsArming = [(SDAutoUnlockSessionManager *)self needsArming];

    if (needsArming)
    {
      [(SDAutoUnlockSessionManager *)self setNeedsArming:0];
      v5 = auto_unlock_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if key originated registration is needed", buf, 2u);
      }

      v6 = +[SDAutoUnlockAKSManager sharedManager];
      [v6 updateLTKs];

      v7 = +[SDAutoUnlockTransport sharedTransport];
      pairedDeviceID = [v7 pairedDeviceID];

      v9 = +[SDAutoUnlockAKSManager sharedManager];
      v10 = [v9 remoteLTKForDeviceID:pairedDeviceID];

      v11 = auto_unlock_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning key originated registration", buf, 2u);
        }

        v11 = +[NSUUID UUID];
        [(SDAutoUnlockSessionManager *)self createRegistrationKeySessionWithIdentifier:v11 deviceID:pairedDeviceID requestData:0 locallyGenerated:1];
      }

      else if (v12)
      {
        *buf = 138412290;
        v15 = pairedDeviceID;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find remote LTK for %@", buf, 0xCu);
      }
    }
  }

  else
  {
  }
}

- (void)handleBioLockout
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(sessionManagerQueue);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device entered bio lockout, resetting all key devices", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  lockRegistrationSessionsByDeviceID = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
  allValues = [lockRegistrationSessionsByDeviceID allValues];

  v7 = [allValues countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v13 + 1) + 8 * v10) invalidate];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  remotePeer = [(SDAutoUnlockSessionManager *)self remotePeer];
  [remotePeer handleBioLockout];

  lockRegistrationSessionsByDeviceID2 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
  [lockRegistrationSessionsByDeviceID2 removeAllObjects];

  [(SDAutoUnlockSessionManager *)self cancelAutoUnlock];
  [(SDAutoUnlockSessionManager *)self registerRemotePeerIfNecessary];
}

- (void)handlePairedDeviceLockStateChanged
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E1294;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionManagerQueue, block);
}

- (void)handleAuthenticationSessionStarted
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E13B0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionManagerQueue, block);
}

- (void)grabLanguageAssertionForAutoRelock
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = 70;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delay releasing language assertion for Auto Relock for %ld seconds", &v7, 0xCu);
  }

  v3 = +[NSDate now];
  v4 = [v3 dateByAddingTimeInterval:70.0];

  v5 = +[SDStatusMonitor sharedMonitor];
  [v5 addPreventExitForLocaleReason:@"AutoUnlockAutoRelockPreventExitReason"];

  v6 = +[SDStatusMonitor sharedMonitor];
  [v6 pushDateForPreventExitForLocaleReason:@"AutoUnlockAutoRelockPreventExitReason" expirationDate:v4];
}

- (void)releaseLanguageAssertionForAutoRelock
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Release language assertion for Auto Relock", v4, 2u);
  }

  v3 = +[SDStatusMonitor sharedMonitor];
  [v3 removePreventExitForLocaleReason:@"AutoUnlockAutoRelockPreventExitReason"];
}

- (BOOL)deviceCurrentlyUnlockedByWatch
{
  v3 = +[SDStatusMonitor sharedMonitor];
  if ([v3 deviceKeyBagUnlocked])
  {
    lastUnlockedByWatch = [(SDAutoUnlockSessionManager *)self lastUnlockedByWatch];
  }

  else
  {
    lastUnlockedByWatch = 0;
  }

  return lastUnlockedByWatch;
}

- (void)setUpMagnetLinkTimer
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, sessionManagerQueue);
  [(SDAutoUnlockSessionManager *)self setMagnetLinkTimer:v4];

  magnetLinkTimer = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000E1844;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(magnetLinkTimer, handler);

  magnetLinkTimer2 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  v7 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(magnetLinkTimer2, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

  magnetLinkTimer3 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  dispatch_source_set_cancel_handler(magnetLinkTimer3, &stru_1008CFEC0);

  magnetLinkTimer4 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  dispatch_activate(magnetLinkTimer4);

  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Magnet Link Timer Activated", v11, 2u);
  }
}

- (void)btPipeConnectionChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [(__CFString *)changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:SFNotificationKeyConnectionState];
  integerValue = [v6 integerValue];

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = changedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "btPipeConnectionChanged Notification: %@", &v23, 0xCu);
  }

  if (integerValue != 2)
  {
    if (integerValue == 1)
    {
      [(SDAutoUnlockSessionManager *)self cancelMagnetLinkTimer];
    }

    goto LABEL_25;
  }

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    lastUnlockedByWatch = [(SDAutoUnlockSessionManager *)self lastUnlockedByWatch];
    v11 = @"NO";
    if (lastUnlockedByWatch)
    {
      v11 = @"YES";
    }

    v23 = 138412290;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device unlock by Phone Auto Unlock status: %@", &v23, 0xCu);
  }

  v12 = +[NSDate now];
  lastUnlockDate = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
  [v12 timeIntervalSinceDate:lastUnlockDate];
  v15 = v14;

  if (v15 > 60.0)
  {
    cachedMetrics = [(SDAutoUnlockSessionManager *)self cachedMetrics];
    [cachedMetrics setObject:&__kCFBooleanTrue forKeyedSubscript:SDAutoUnlockManagerMetricAutoRelockWindowExpiredKey];

    [(SDAutoUnlockSessionManager *)self deviceCurrentlyUnlockedByWatch];
  }

  else if ([(SDAutoUnlockSessionManager *)self deviceCurrentlyUnlockedByWatch])
  {
    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device Unlocked & AutoRelock Window Not Expired, BTPipe Disconnected, Create Magnet Link Timer", &v23, 2u);
    }

    magnetLinkTimer = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];

    if (!magnetLinkTimer)
    {
      [(SDAutoUnlockSessionManager *)self setUpMagnetLinkTimer];
    }

    goto LABEL_25;
  }

  v19 = auto_unlock_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    deviceCurrentlyUnlockedByWatch = [(SDAutoUnlockSessionManager *)self deviceCurrentlyUnlockedByWatch];
    v21 = @"NO";
    if (deviceCurrentlyUnlockedByWatch)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    if (v15 > 60.0)
    {
      v21 = @"YES";
    }

    v23 = 138412546;
    v24 = v22;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not Creating Magnet Link Timer, deviceCurrentlyUnlockedByWatch: %@, autoRelockWindowExpired: %@", &v23, 0x16u);
  }

LABEL_25:
}

- (void)cancelMagnetLinkTimer
{
  magnetLinkTimer = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  if (magnetLinkTimer)
  {
    v4 = magnetLinkTimer;
    magnetLinkTimer2 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
    v6 = dispatch_source_testcancel(magnetLinkTimer2);

    if (!v6)
    {
      magnetLinkTimer3 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
      dispatch_source_cancel(magnetLinkTimer3);

      [(SDAutoUnlockSessionManager *)self setMagnetLinkTimer:0];
      cachedMetrics = [(SDAutoUnlockSessionManager *)self cachedMetrics];
      v9 = SDAutoUnlockManagerMetricAutoRelockTimerCanceledKey;
      v10 = [cachedMetrics objectForKeyedSubscript:SDAutoUnlockManagerMetricAutoRelockTimerCanceledKey];

      cachedMetrics2 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
      v12 = cachedMetrics2;
      if (v10)
      {
        v13 = [cachedMetrics2 objectForKeyedSubscript:v9];
        intValue = [v13 intValue];

        v12 = [NSNumber numberWithInt:intValue + 1];
        cachedMetrics3 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
        [cachedMetrics3 setObject:v12 forKeyedSubscript:v9];
      }

      else
      {
        [cachedMetrics2 setObject:&off_10090BA60 forKeyedSubscript:v9];
      }

      v16 = auto_unlock_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cancelled Magnet Link Timer", v17, 2u);
      }
    }
  }
}

- (id)baseResultsDictionaryForError:(id)error
{
  errorCopy = error;
  v5 = objc_opt_new();
  domain = [errorCopy domain];
  [v5 setObject:domain forKeyedSubscript:SDAutoUnlockManagerMetricErrorDomainKey];

  [v5 setObject:&off_10090BA30 forKeyedSubscript:SDAutoUnlockManagerMetricSuccessKey];
  v7 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self connectedBluetoothDevices]];
  [v5 setObject:v7 forKeyedSubscript:SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey];

  v8 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake]];
  [v5 setObject:v8 forKeyedSubscript:SDAutoUnlockManagerMetricTimeSinceLastWakeKey];

  v9 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self lastSleepType]];
  [v5 setObject:v9 forKeyedSubscript:SDAutoUnlockManagerMetricLastSleepTypeKey];

  localizedDescription = [errorCopy localizedDescription];
  [v5 setObject:localizedDescription forKeyedSubscript:SDAutoUnlockManagerMetricErrorStringKey];

  code = [errorCopy code];
  v12 = [NSNumber numberWithInteger:code];
  [v5 setObject:v12 forKeyedSubscript:SDAutoUnlockManagerMetricErrorCodeKey];

  return v5;
}

- (void)handleBluetoothPowerChanged:(id)changed
{
  v4 = +[SDStatusMonitor sharedMonitor];
  bluetoothEnabled = [v4 bluetoothEnabled];

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (bluetoothEnabled)
    {
      v7 = @"YES";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bluetooth power changed (interface on: %@)", &v8, 0xCu);
  }

  if (bluetoothEnabled)
  {
    [(SDAutoUnlockSessionManager *)self setBluetoothErrorCount:0];
    [(SDAutoUnlockSessionManager *)self setPresentedBluetoothError:0];
    [(SDAutoUnlockSessionManager *)self savePresentedBluetoothError];
  }
}

- (void)handleWiFiPowerChanged:(id)changed
{
  v4 = +[SDStatusMonitor sharedMonitor];
  -[SDAutoUnlockSessionManager setCachedDeviceWiFiState:](self, "setCachedDeviceWiFiState:", [v4 wirelessEnabled]);

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cachedDeviceWiFiState = [(SDAutoUnlockSessionManager *)self cachedDeviceWiFiState];
    v7 = @"NO";
    if (cachedDeviceWiFiState)
    {
      v7 = @"YES";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi power changed (interface on: %@)", &v8, 0xCu);
  }
}

- (id)errorStringForBluetoothEnabled:(BOOL)enabled wifiEnabled:(BOOL)wifiEnabled faceIDEnabled:(BOOL)dEnabled
{
  if (!dEnabled)
  {
    v5 = @"### FaceID needs to be enabled for this feature to work";
    goto LABEL_10;
  }

  if (enabled || wifiEnabled)
  {
    if (!enabled)
    {
      goto LABEL_9;
    }

    if (wifiEnabled)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  SFIsGreenTeaDevice();
LABEL_9:
  v5 = SFLocalizedStringForKey();
LABEL_10:

  return v5;
}

- (int64_t)errorCodeForBluetoothEnabled:(BOOL)enabled wifiEnabled:(BOOL)wifiEnabled faceIDEnabled:(BOOL)dEnabled
{
  v5 = 123;
  if (!enabled && !wifiEnabled)
  {
    v5 = 124;
  }

  v6 = 120;
  if (wifiEnabled)
  {
    v6 = 0;
  }

  if (enabled)
  {
    v5 = v6;
  }

  if (dEnabled)
  {
    return v5;
  }

  else
  {
    return 205;
  }
}

- (BOOL)shouldShowErrorForBluetoothEnabled:(BOOL)enabled
{
  if (enabled)
  {
    return 0;
  }

  if ([(SDAutoUnlockSessionManager *)self presentedBluetoothError])
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already presented Bluetooth off error", v7, 2u);
    }

    return 0;
  }

  if ([(SDAutoUnlockSessionManager *)self bluetoothErrorCount]>= 5)
  {
    [(SDAutoUnlockSessionManager *)self setPresentedBluetoothError:1];
    [(SDAutoUnlockSessionManager *)self savePresentedBluetoothError];
    return 0;
  }

  [(SDAutoUnlockSessionManager *)self setBluetoothErrorCount:[(SDAutoUnlockSessionManager *)self bluetoothErrorCount]+ 1];
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [(SDAutoUnlockSessionManager *)self bluetoothErrorCount];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "### Bluetooth error count: %d", v7, 8u);
  }

  return 1;
}

- (BOOL)shouldShowErrorForWiFiEnabled:(BOOL)enabled
{
  if (enabled)
  {
    return 0;
  }

  if ([(SDAutoUnlockSessionManager *)self presentedWiFiError])
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already presented Wi-Fi off error", v7, 2u);
    }

    return 0;
  }

  if ([(SDAutoUnlockSessionManager *)self wifiErrorCount]>= 5)
  {
    [(SDAutoUnlockSessionManager *)self setPresentedWiFiError:1];
    [(SDAutoUnlockSessionManager *)self savePresentedWiFiError];
    return 0;
  }

  [(SDAutoUnlockSessionManager *)self setWifiErrorCount:[(SDAutoUnlockSessionManager *)self wifiErrorCount]+ 1];
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [(SDAutoUnlockSessionManager *)self wifiErrorCount];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "### WiFi error count: %d", v7, 8u);
  }

  return 1;
}

- (void)loadPresentedBluetoothError
{
  v3 = +[NSUserDefaults standardUserDefaults];
  -[SDAutoUnlockSessionManager setPresentedBluetoothError:](self, "setPresentedBluetoothError:", [v3 BOOLForKey:@"AutoUnlockPresentedBluetoothError"]);
}

- (void)loadPresentedWiFiError
{
  v3 = +[NSUserDefaults standardUserDefaults];
  -[SDAutoUnlockSessionManager setPresentedWiFiError:](self, "setPresentedWiFiError:", [v3 BOOLForKey:@"AutoUnlockPresentedWiFiError"]);
}

- (void)savePresentedBluetoothError
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:-[SDAutoUnlockSessionManager presentedBluetoothError](self forKey:{"presentedBluetoothError"), @"AutoUnlockPresentedBluetoothError"}];
  [v3 synchronize];
}

- (void)savePresentedWiFiError
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:-[SDAutoUnlockSessionManager presentedWiFiError](self forKey:{"presentedWiFiError"), @"AutoUnlockPresentedWiFiError"}];
  [v3 synchronize];
}

- (void)generateStateDump
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000E3EA4();
  }
}

- (void)initializeCaptureBlock
{
  sessionManagerQueue = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  [(SDAutoUnlockSessionManager *)self setStateHandle:os_state_add_handler()];
}

- (void)storePreviousSessionID:(id)d
{
  dCopy = d;
  [(SDAutoUnlockSessionManager *)self loadPreviousSessionIDs];
  previousSessionIDs = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
  uUIDString = [dCopy UUIDString];
  [previousSessionIDs insertObject:uUIDString atIndex:0];

  previousSessionIDs2 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
  v7 = [previousSessionIDs2 count];

  if (v7 >= 0x65)
  {
    do
    {
      previousSessionIDs3 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
      [previousSessionIDs3 removeLastObject];

      previousSessionIDs4 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
      v10 = [previousSessionIDs4 count];
    }

    while (v10 > 0x64);
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  previousSessionIDs5 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
  [v11 setObject:previousSessionIDs5 forKey:@"ApproveSessionIDs"];

  [v11 synchronize];
}

- (BOOL)previousSessionExists:(id)exists
{
  existsCopy = exists;
  [(SDAutoUnlockSessionManager *)self loadPreviousSessionIDs];
  previousSessionIDs = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
  uUIDString = [existsCopy UUIDString];

  LOBYTE(existsCopy) = [previousSessionIDs containsObject:uUIDString];
  return existsCopy;
}

- (void)loadPreviousSessionIDs
{
  previousSessionIDs = [(SDAutoUnlockSessionManager *)self previousSessionIDs];

  if (!previousSessionIDs)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v4 = [v8 objectForKey:@"ApproveSessionIDs"];
    v5 = [v4 mutableCopy];
    [(SDAutoUnlockSessionManager *)self setPreviousSessionIDs:v5];

    previousSessionIDs2 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];

    if (!previousSessionIDs2)
    {
      v7 = objc_opt_new();
      [(SDAutoUnlockSessionManager *)self setPreviousSessionIDs:v7];
    }
  }
}

- (SDAutoUnlockTransportProtocol)autoUnlockTransport
{
  WeakRetained = objc_loadWeakRetained(&self->_autoUnlockTransport);

  return WeakRetained;
}

- (SDUnlockMagnetTransport)magnetTransport
{
  WeakRetained = objc_loadWeakRetained(&self->_magnetTransport);

  return WeakRetained;
}

- (SDKeyManaging)keyManager
{
  WeakRetained = objc_loadWeakRetained(&self->_keyManager);

  return WeakRetained;
}

@end