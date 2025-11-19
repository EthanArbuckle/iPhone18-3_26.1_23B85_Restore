@interface SDAutoUnlockSessionManager
+ (id)sharedManager;
- (BOOL)behaviorChangedAfterUpgrade;
- (BOOL)deviceCurrentlyUnlockedByWatch;
- (BOOL)disablePairingForDeviceID:(id)a3 pairingID:(id)a4;
- (BOOL)isDisplayOff;
- (BOOL)phoneAutoUnlockSupportedByDevice:(id)a3;
- (BOOL)previousSessionExists:(id)a3;
- (BOOL)shouldNotify;
- (BOOL)shouldShowErrorForBluetoothEnabled:(BOOL)a3;
- (BOOL)shouldShowErrorForWiFiEnabled:(BOOL)a3;
- (NSString)state;
- (SDAutoUnlockSessionManager)init;
- (SDAutoUnlockSessionManager)initWithTransport:(id)a3 magnetTransport:(id)a4 keyManager:(id)a5;
- (SDAutoUnlockTransportProtocol)autoUnlockTransport;
- (SDKeyManaging)keyManager;
- (SDUnlockMagnetTransport)magnetTransport;
- (id)baseResultsDictionaryForError:(id)a3;
- (id)errorStringForBluetoothEnabled:(BOOL)a3 wifiEnabled:(BOOL)a4 faceIDEnabled:(BOOL)a5;
- (id)getUpsellNotificationBodyTextForEvent:(id)a3;
- (id)stringForState:(int64_t)a3;
- (int64_t)errorCodeForBluetoothEnabled:(BOOL)a3 wifiEnabled:(BOOL)a4 faceIDEnabled:(BOOL)a5;
- (int64_t)idsMacCount;
- (os_state_data_s)dumpState;
- (void)addNotificationsObservers;
- (void)addServiceClientForIdentifier:(id)a3;
- (void)armDevicesWaitingForUnlock;
- (void)attemptAutoUnlock;
- (void)attemptAutoUnlockForSiri;
- (void)attemptAutoUnlockWithoutNotifyingWatch;
- (void)authPromptInfoWithCompletionHandler:(id)a3;
- (void)autoUnlockStateWithCompletionHandler:(id)a3;
- (void)beginKeyRegistrationIfNecessary;
- (void)btPipeConnectionChanged:(id)a3;
- (void)cancelAllLockSessionsForScanTimeout;
- (void)cancelAttemptsForDeviceUnlocked;
- (void)cancelAutoUnlockWithCancelReason:(int64_t)a3 usingTool:(BOOL)a4;
- (void)cancelEnablingAllDevices;
- (void)cancelEnablingAutoUnlockForDevice:(id)a3;
- (void)cancelEnablingAutoUnlockForDeviceID:(id)a3;
- (void)cancelMagnetLinkTimer;
- (void)cancelParallelRegistrationSessionsForDeviceID:(id)a3 newSessionID:(id)a4;
- (void)cleanUpProxySessions;
- (void)clearAllKeysWithTokens;
- (void)completeAutoUnlockWithNotification:(BOOL)a3;
- (void)completeSuccessfulAttempt;
- (void)createLockSessionWithWatchDevice:(id)a3;
- (void)createPairingKeySessionWithIdentifier:(id)a3 deviceID:(id)a4 requestData:(id)a5;
- (void)createPairingLockSessionWithDevice:(id)a3 passcode:(id)a4;
- (void)createProxySessionWithDeviceID:(id)a3;
- (void)createRegistrationLockSessionWithDeviceID:(id)a3 sessionID:(id)a4 requestData:(id)a5;
- (void)decrementAttemptCount;
- (void)disableAutoUnlockForAllWatches;
- (void)disableAutoUnlockForDevice:(id)a3 completionHandler:(id)a4;
- (void)disableKeyPairingForDeviceID:(id)a3;
- (void)donateDeviceUnlockedWithMask:(BOOL)a3;
- (void)eligibleDevicesFilterCompatibleDevices:(id)a3;
- (void)eligibleDevicesRequestFromBundleID:(id)a3 withCompletionHandler:(id)a4;
- (void)enableAutoUnlockWithDevice:(id)a3 passcode:(id)a4;
- (void)failedAttemptBeforeStarting:(id)a3 metricErrorString:(id)a4;
- (void)generateAttemptForType:(int64_t)a3;
- (void)generateStateDump;
- (void)grabLanguageAssertionForAutoRelock;
- (void)handleAuthenticationSessionStarted;
- (void)handleBLEDataReceivedNotification:(id)a3;
- (void)handleBLEScanTimerFired;
- (void)handleBioLockout;
- (void)handleBluetoothPowerChanged:(id)a3;
- (void)handleDisableMessageForKey:(id)a3 fromDeviceID:(id)a4;
- (void)handleDisableMessageForLock:(id)a3 fromDeviceID:(id)a4;
- (void)handleDisplayStateChanged:(unint64_t)a3;
- (void)handleFoundPeer:(id)a3;
- (void)handleLockConnectionStartedForSession:(id)a3;
- (void)handleLockSessionCompleted:(id)a3 error:(id)a4;
- (void)handleLockStateChanged;
- (void)handleNearbyStateChanged;
- (void)handlePairedDeviceLockStateChanged;
- (void)handleProxyConnectionStartedForSession:(id)a3;
- (void)handleProxySessionCompleted:(id)a3 error:(id)a4;
- (void)handleRelockMessage;
- (void)handleScanTimerFired;
- (void)handleUnexpectedDisablement:(id)a3;
- (void)handleWiFiPowerChanged:(id)a3;
- (void)idsController:(id)a3 didReceiveProtoData:(id)a4 forType:(unsigned __int16)a5 deviceID:(id)a6;
- (void)incrementAttemptCount;
- (void)initializeAttemptState;
- (void)initializeCaptureBlock;
- (void)initializeRemotePeer;
- (void)invalidateAttempt;
- (void)invalidateExistingSessionsForBLEDevice:(id)a3 incomingSessionID:(id)a4;
- (void)invalidateScanTimer;
- (void)invalidateScanner;
- (void)keyBagLockStateChange:(id)a3;
- (void)loadPresentedBluetoothError;
- (void)loadPresentedWiFiError;
- (void)loadPreviousSessionIDs;
- (void)logUnintentionalAutoUnlockAttempt:(unint64_t)a3;
- (void)notifyObserverOfAttemptBeganWithDevice:(id)a3;
- (void)notifyObserverOfEnabledDevice:(id)a3;
- (void)notifyObserverOfFailedToEnableDevice:(id)a3 error:(id)a4;
- (void)notifyObserverOfKeyDeviceLockWithDevice:(id)a3;
- (void)notifyObserversOfUnlockCompletionWithDevice:(id)a3;
- (void)notifyObserversOfUnlockFailureWithResults:(id)a3 error:(id)a4;
- (void)onqueue_keyBagLockStateChange:(id)a3;
- (void)onqueue_start;
- (void)performRegistrationIfNecessaryForLockSession:(id)a3 error:(id)a4;
- (void)pipeConnectionChanged:(id)a3;
- (void)prewarmAutoUnlock;
- (void)registerObserver:(id)a3;
- (void)registerRemotePeerIfNecessary;
- (void)releaseLanguageAssertionForAutoRelock;
- (void)removeServiceClientForIdentifier:(id)a3;
- (void)repairCloudPairing;
- (void)requestRelock;
- (void)restartScanTimer:(unint64_t)a3;
- (void)savePresentedBluetoothError;
- (void)savePresentedWiFiError;
- (void)sendDisableMessageToDeviceID:(id)a3 pairingID:(id)a4;
- (void)session:(id)a3 didCompleteWithError:(id)a4;
- (void)sessionDidReceiveKeyDeviceLocked:(id)a3;
- (void)sessionDidStartConnection:(id)a3;
- (void)setUpMagnetLinkTimer;
- (void)start;
- (void)startScannerWithWatchBluetoothIDs:(id)a3 phoneBluetoothIDs:(id)a4;
- (void)storePreviousSessionID:(id)a3;
- (void)transport:(id)a3 didReceiveDisableMessage:(id)a4 fromDeviceID:(id)a5;
- (void)transport:(id)a3 didReceiveKeyOriginatingRegistrationRequestWithSessionID:(id)a4 deviceID:(id)a5 requestData:(id)a6;
- (void)transport:(id)a3 didReceivePairingRequestWithSessionID:(id)a4 deviceID:(id)a5 requestData:(id)a6;
- (void)transport:(id)a3 didReceiveRegistrationRequestWithSessionID:(id)a4 deviceID:(id)a5 requestData:(id)a6;
- (void)transportDidChangeDevices:(id)a3;
- (void)transportDidChangeNearbyState:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateAdvertising;
- (void)updateStringForProxySession;
- (void)upsellBehaviorChangedAfterUpgradeIfNecessary;
- (void)upsellPhoneAutoUnlock;
@end

@implementation SDAutoUnlockSessionManager

- (void)handleLockStateChanged
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[SDStatusMonitor sharedMonitor];
  v5 = [v4 deviceKeyBagUnlocked];

  if (v5)
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
      v11 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
      [v11 setObject:v10 forKeyedSubscript:SDAutoUnlockManagerMetricPeriocularStatus];
    }

    [(SDAutoUnlockSessionManager *)self setPeriocularStatus:0];
    [(SDAutoUnlockSessionManager *)self setLastUnlockedByWatch:0];
    [(SDAutoUnlockSessionManager *)self setSuppressAlert:0];
    [(SDAutoUnlockSessionManager *)self cancelMagnetLinkTimer];
    v12 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
    if (v12)
    {
      v13 = v12;
      v14 = [(SDAutoUnlockSessionManager *)self isBeingUsedForSiri];

      if ((v14 & 1) == 0)
      {
        v15 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
        sub_10010F888(v15);

        [(SDAutoUnlockSessionManager *)self setCachedMetrics:0];
      }
    }
  }
}

- (void)armDevicesWaitingForUnlock
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[SDStatusMonitor sharedMonitor];
  v5 = [v4 deviceKeyBagUnlocked];

  if (v5)
  {
    v6 = [(SDAutoUnlockSessionManager *)self remotePeer];
    [v6 handleDeviceUnlocked];
  }
}

- (void)registerRemotePeerIfNecessary
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v4 activeDevice];

  v6 = [(SDAutoUnlockSessionManager *)self remotePeer];
  v7 = [v6 deviceID];
  v8 = [v5 uniqueIDOverride];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    [(SDAutoUnlockSessionManager *)self initializeRemotePeer];
  }

  v10 = [(SDAutoUnlockSessionManager *)self remotePeer];
  v11 = [v10 shouldRegister];

  if (v11)
  {
    v12 = [(SDAutoUnlockSessionManager *)self remotePeer];
    [v12 handleRegistrationBegan];

    v13 = [(SDAutoUnlockSessionManager *)self remotePeer];
    v14 = [v13 deviceID];
    [(SDAutoUnlockSessionManager *)self createRegistrationLockSessionWithDeviceID:v14 sessionID:0 requestData:0];
LABEL_10:

    goto LABEL_11;
  }

  v15 = +[SDAutoUnlockAKSManager sharedManager];
  v16 = [(SDAutoUnlockSessionManager *)self remotePeer];
  v17 = [v16 deviceID];
  v13 = [v15 remoteLTKForDeviceID:v17];

  v18 = sub_100021BD4(v13);
  v19 = [(SDAutoUnlockSessionManager *)self remotePeer];
  LODWORD(v17) = [v19 canPerformUnlocks];

  if (v17 && v18 != 3)
  {
    v20 = auto_unlock_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(SDAutoUnlockSessionManager *)self remotePeer];
      v22 = sub_10005CDC0(v18);
      v25 = 138412546;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Mismatch between peer state (%@) and AKS state (%@)", &v25, 0x16u);
    }

    sub_10005CB84(v13);
    v23 = [(SDAutoUnlockSessionManager *)self remotePeer];
    [v23 handleRegistrationBegan];

    v14 = [(SDAutoUnlockSessionManager *)self remotePeer];
    v24 = [v14 deviceID];
    [(SDAutoUnlockSessionManager *)self createRegistrationLockSessionWithDeviceID:v24 sessionID:0 requestData:0];

    goto LABEL_10;
  }

LABEL_11:
}

- (void)initializeRemotePeer
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v4 activeDevice];

  v6 = [v5 uniqueIDOverride];
  if (v6)
  {
    v7 = [(SDAutoUnlockSessionManager *)self keyManager];
    v8 = [v7 remoteLTKForDeviceID:v6];

    v9 = auto_unlock_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initialized remote peer to %@", &v12, 0xCu);
      }

      v11 = [[SDAutoUnlockPeer alloc] initWithDeviceID:v6];
      [(SDAutoUnlockSessionManager *)self setRemotePeer:v11];
    }

    else
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not find remote LTK for active device: %@", &v12, 0xCu);
      }

      [(SDAutoUnlockSessionManager *)self setRemotePeer:0];
    }
  }
}

- (void)cancelAttemptsForDeviceUnlocked
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
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
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(SDAutoUnlockSessionManager *)self localDeviceController];
  if ([v3 faceIDEnabled] && SFDeviceSupportsAutoUnlock())
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
        v10 = [v9 pairedAutoUnlockDevice];

        if (!v10 || ([v10 unlockEnabled]& 1) != 0 || ![(SDAutoUnlockSessionManager *)self phoneAutoUnlockSupportedByDevice:v10])
        {
          v30 = auto_unlock_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = @"YES";
            if (!v10)
            {
              v31 = @"NO";
            }

            *buf = 138412290;
            v48 = *&v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Skipping upsell. Current Active Watch found:%@", buf, 0xCu);
          }

          if (v10)
          {
            v32 = auto_unlock_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              if ([v10 unlockEnabled])
              {
                v33 = @"YES";
              }

              else
              {
                v33 = @"NO";
              }

              if ([(SDAutoUnlockSessionManager *)self phoneAutoUnlockSupportedByDevice:v10])
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

            if ([v10 unlockEnabled])
            {
              [v5 setBool:1 forKey:@"AutoUnlockAlreadyEnabledBefore"];
            }
          }

          goto LABEL_29;
        }

        v11 = auto_unlock_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 uniqueID];
          *buf = 138412290;
          v48 = *&v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current Active Watch ID %@", buf, 0xCu);
        }

        v13 = +[SDStatusMonitor sharedMonitor];
        if ([v13 pairedWatchWristState] == 3)
        {
          v14 = +[SDStatusMonitor sharedMonitor];
          v15 = [v14 pairedWatchLockState];

          if (!v15)
          {
            if ([(SDAutoUnlockSessionManager *)self shouldNotify])
            {
              v16 = sub_1001134F0(1);
              v17 = [v16 firstObject];
              if (v17)
              {
                v18 = +[NSDate date];
                v19 = [v17 endDate];
                [v18 timeIntervalSinceDate:v19];
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
                v43 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
                v45[0] = _NSConcreteStackBlock;
                v45[1] = 3221225472;
                v45[2] = sub_1000E0838;
                v45[3] = &unk_1008CE028;
                v45[4] = self;
                v46 = v17;
                dispatch_after(v42, v43, v45);
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
          v37 = [v36 pairedWatchWristState];
          v38 = +[SDStatusMonitor sharedMonitor];
          v39 = [v38 pairedWatchLockState];
          *buf = 134218240;
          v48 = *&v37;
          v49 = 1024;
          LODWORD(v50) = v39;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Skipping upsell. Active watch not on wrist (state: %ld) and unlocked (state: %d). Skipping upsell.", buf, 0x12u);
        }

LABEL_56:

        goto LABEL_29;
      }

      v10 = auto_unlock_log();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
      v26 = v10;
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
    v10 = [(SDAutoUnlockSessionManager *)self localDeviceController];
    if ([v10 faceIDEnabled])
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
  v5 = [(SDAutoUnlockSessionManager *)self state];
  v6 = v5;
  if (v5)
  {
    v20 = v5;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  v8 = +[SDAutoUnlockAKSManager sharedManager];
  v9 = [v8 state];

  if (v9)
  {
    v21 = v9;
    NSAppendPrintF();
    v10 = v4;

    v4 = v10;
  }

  v11 = +[SDAutoUnlockTransport sharedTransport];
  v12 = [v11 state];

  if (v12)
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
  v39 = [v12 modelCode];
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

  v20 = [(SDAutoUnlockSessionManager *)self lockStateChangedDate];
  v42 = sub_100024974(v20);
  NSAppendPrintF();
  v21 = v19;

  NSAppendPrintF();
  v22 = v21;

  v43 = [(SDAutoUnlockSessionManager *)self attemptCount];
  NSAppendPrintF();
  v23 = v22;

  v24 = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
  if (v24)
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

  v27 = [(SDAutoUnlockSessionManager *)self advertisingChangedDate];
  v45 = sub_100024974(v27);
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

  v32 = [(SDAutoUnlockSessionManager *)self nearbyDeviceChangedDate];
  v47 = sub_100024974(v32);
  NSAppendPrintF();
  v33 = v31;

  v48 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
  NSAppendPrintF();
  v34 = v33;

  v49 = [(SDAutoUnlockSessionManager *)self remotePeer];
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

- (SDAutoUnlockSessionManager)initWithTransport:(id)a3 magnetTransport:(id)a4 keyManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v58.receiver = self;
  v58.super_class = SDAutoUnlockSessionManager;
  v11 = [(SDAutoUnlockSessionManager *)&v58 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_autoUnlockTransport, v8);
    v13 = objc_storeWeak(&v12->_magnetTransport, v9);
    [v9 addDelegate:v12];

    objc_storeWeak(&v12->_keyManager, v10);
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
      v51 = [v50 sharedNearbyPipe];
    }

    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)start
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2A74;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)onqueue_start
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

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
  v20 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v21 = [(SDAutoUnlockLocalDeviceController *)v19 initWithQueue:v20];
  [(SDAutoUnlockSessionManager *)self setLocalDeviceController:v21];

  objc_initWeak(buf, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000D2E24;
  v23[3] = &unk_1008CDD98;
  objc_copyWeak(&v24, buf);
  v22 = [(SDAutoUnlockSessionManager *)self localDeviceController];
  [v22 setDeviceEnteredBioLockoutHandler:v23];

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
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  self->_attemptCount = 0;
  v4 = +[SDStatusMonitor sharedMonitor];
  v5 = [v4 deviceKeyBagUnlocked];

  v6 = auto_unlock_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
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
      v15 = [v10 deviceKeyBagState];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "### Device not unlocked on start up (state: %ld)", buf, 0xCu);
    }

    v11 = dispatch_time(0, 5000000000);
    v12 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D3060;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_after(v11, v12, block);
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
  v12 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D3568;
  v13[3] = &unk_1008CDD58;
  objc_copyWeak(&v14, &location);
  notify_register_dispatch("com.apple.iokit.hid.displayStatus", &self->_screenDisplayChangedToken, v12, v13);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D3674;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D37EC;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)notifyObserverOfKeyDeviceLockWithDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D3964;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)notifyObserverOfEnabledDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D3BB0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)notifyObserverOfFailedToEnableDevice:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3E20;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)notifyObserverOfAttemptBeganWithDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4070;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)notifyObserversOfUnlockCompletionWithDevice:(id)a3
{
  v4 = a3;
  if (![(SDAutoUnlockSessionManager *)self suppressAlert])
  {
    [(SDAutoUnlockSessionManager *)self completeSuccessfulAttempt];
  }

  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D42D0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)notifyObserversOfUnlockFailureWithResults:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D4540;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)repairCloudPairing
{
  v2 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_async(v2, &stru_1008CFD08);
}

- (void)eligibleDevicesFilterCompatibleDevices:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        v11 = [v10 modelIdentifier];
        v12 = sub_1001123D8(v11);

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

- (BOOL)phoneAutoUnlockSupportedByDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 modelIdentifier];
  if (sub_1001123D8(v4))
  {
    v5 = [v3 productVersion];
    v6 = sub_1001124CC(v5);

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
    sub_1000E3514(v3, v8);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)eligibleDevicesRequestFromBundleID:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D4ADC;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)enableAutoUnlockWithDevice:(id)a3 passcode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self localDeviceController];
  v9 = [v8 faceIDEnabled];

  if ((v9 & 1) == 0)
  {
    v17 = SFAutoUnlockErrorDomain;
    v30 = NSLocalizedDescriptionKey;
    v31 = @"FaceID not enabled";
    v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v15 = v17;
    v16 = 205;
LABEL_7:
    v18 = [NSError errorWithDomain:v15 code:v16 userInfo:v14];
    [(SDAutoUnlockSessionManager *)self notifyObserverOfFailedToEnableDevice:v6 error:v18];

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
    v19 = [v6 uniqueID];
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Enabling device %@, id %@", buf, 0x16u);
  }

  v20 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D50EC;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v22 = v6;
  v23 = v7;
  dispatch_async(v20, block);

LABEL_11:
}

- (void)cancelEnablingAllDevices
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5184;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)cancelEnablingAutoUnlockForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D5388;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)cancelEnablingAutoUnlockForDeviceID:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancel enabling device %@", &v10, 0xCu);
  }

  v6 = [(SDAutoUnlockSessionManager *)self lockPairingSessions];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7 && ([v7 canceled] & 1) == 0)
  {
    [v7 cancel];
    v8 = [v7 sessionID];
    v9 = [v8 UUIDString];
    [(SDAutoUnlockSessionManager *)self disablePairingForDeviceID:v4 pairingID:v9];
  }

  else
  {
    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No pairing lock session to cancel (device id: %@)", &v10, 0xCu);
    }
  }
}

- (void)disableAutoUnlockForAllWatches
{
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 enabledAutoUnlockDevicesUsingCache:1];
  v5 = [v4 allObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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

- (void)disableAutoUnlockForDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disabling Auto Unlock (device: %@)", buf, 0xCu);
  }

  sub_100113448(@"com.apple.watch.auto-unlock.disabled");
  v9 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D580C;
  block[3] = &unk_1008CE730;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)generateAttemptForType:(int64_t)a3
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Test mode attempt", buf, 2u);
  }

  v6 = a3 == 2;
  v7 = objc_alloc_init(SFAutoUnlockDevice);
  [v7 setName:@"Apple Watch"];
  [v7 setModelName:@"Apple Watch"];
  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];
  [v7 setUniqueID:v9];

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
  v25 = self;
  v26 = v10;
  v29 = v6;
  v20 = v16;
  v21 = v7;
  dispatch_after(v18, v19, block);
}

- (void)failedAttemptBeforeStarting:(id)a3 metricErrorString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v8);

  [(SDAutoUnlockSessionManager *)self setAttemptStart:0];
  [(SDAutoUnlockSessionManager *)self setPrewarmStart:0];
  v15[0] = SDAutoUnlockManagerMetricSuccessKey;
  v15[1] = SDAutoUnlockManagerMetricErrorDomainKey;
  v16[0] = &off_10090BA30;
  v16[1] = SFAutoUnlockErrorDomain;
  v15[2] = SDAutoUnlockManagerMetricErrorCodeKey;
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
  v16[2] = v9;
  v16[3] = v6;
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

  [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v13 error:v7];
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
      v6 = [NSError errorWithDomain:v4 code:219 userInfo:v5];

      [(SDAutoUnlockSessionManager *)self failedAttemptBeforeStarting:v6 metricErrorString:@"SPI attempt overlap with prewarm attempt, try again when phone is not prewarming"];
    }

    else
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v40 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
      v6 = [v40 allValues];

      v41 = [v6 countByEnumeratingWithState:&v117 objects:v147 count:16];
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
              objc_enumerationMutation(v6);
            }

            v45 = *(*(&v117 + 1) + 8 * i);
            if ([v45 attemptPrewarmed])
            {
              [v45 setDoNotPostUnlockConfirmation:{-[SDAutoUnlockSessionManager doNotPostUnlockConfirmation](self, "doNotPostUnlockConfirmation")}];
              [v45 completeAttemptIfNecessary];
            }
          }

          v42 = [v6 countByEnumeratingWithState:&v117 objects:v147 count:16];
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
      v12 = [(SDAutoUnlockSessionManager *)self attemptCount];
      v13 = [(SDAutoUnlockSessionManager *)self connectedBluetoothDevices];
      v14 = [(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake];
      [(SDAutoUnlockSessionManager *)self lastSleepType];
      v15 = sub_1001123CC();
      *buf = 134218754;
      v138 = v12;
      v139 = 2048;
      v140 = v13;
      v141 = 2048;
      v142 = v14;
      v143 = 2112;
      v144 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting attempt (attempt count: %ld, bluetooth devices: %ld, time since last wake: %ld seconds, sleep type: %@)", buf, 0x2Au);
    }

    v16 = [(SDAutoUnlockSessionManager *)self autoUnlockTransport];
    v17 = [v16 enabledAutoUnlockDevicesUsingCache:1];
    v18 = [v17 allObjects];

    if ([v18 count])
    {
      v19 = [(SDAutoUnlockSessionManager *)self isBluetoothEnabled];
      v20 = v19[2]();

      v21 = [(SDAutoUnlockSessionManager *)self isWifiEnabled];
      v22 = v21[2]();

      if ([(SDAutoUnlockSessionManager *)self attemptType]!= 2 && (v22 & 1) == 0)
      {
        [(SDAutoUnlockSessionManager *)self presentedWiFiError];
      }

      v23 = [(SDAutoUnlockSessionManager *)self isFaceIDEnabled];
      v24 = v23[2]();

      if (v24)
      {
        if (v20 & v22)
        {
          v25 = +[SDStatusMonitor sharedMonitor];
          v26 = [v25 internetSharingEnabled];

          if (v26)
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
            v6 = [NSError errorWithDomain:v29 code:146 userInfo:v30];

            [(SDAutoUnlockSessionManager *)self failedAttemptBeforeStarting:v6 metricErrorString:v28];
            (v9[2])(v9, 0);
            goto LABEL_24;
          }

          v56 = [(SDAutoUnlockSessionManager *)self isActiveDeviceNearby];
          v57 = v56[2]();

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
            v6 = [NSError errorWithDomain:v64 code:186 userInfo:v65];

            v39 = @"Device not nearby";
            goto LABEL_61;
          }

          v58 = [(SDAutoUnlockSessionManager *)self remotePeer];
          v59 = [v58 isKeyBagLocked];

          if (v59)
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
            v6 = [NSError errorWithDomain:v61 code:102 userInfo:v62];

            v39 = @"Watch locked and unarmed";
LABEL_61:
            v37 = self;
            v38 = v6;
            goto LABEL_29;
          }

          [(SDAutoUnlockSessionManager *)self attemptCount];
          v66 = [(SDAutoUnlockSessionManager *)self remotePeer];
          v67 = [v66 canPerformUnlocks];

          if (v67)
          {
            [(SDAutoUnlockSessionManager *)self lastUnlockDate];

            v28 = [NSDate dateWithTimeIntervalSinceNow:-23400.0];
            v68 = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
            [v68 timeIntervalSinceDate:v28];
            v70 = v69;

            if (v70 < 0.0)
            {
              v84 = auto_unlock_log();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                v85 = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
                *buf = 138412546;
                v138 = v85;
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
              v72 = [v71 UUIDString];
              [(SDAutoUnlockSessionManager *)self setAttemptID:v72];

              v73 = objc_opt_new();
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              obj = v18;
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
                    v78 = [v77 uniqueID];
                    v79 = [(SDAutoUnlockSessionManager *)self remotePeer];
                    v80 = [v79 deviceID];
                    v81 = [v78 isEqualToString:v80];

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
              v89 = v73;
              v95 = [(__CFString *)v89 countByEnumeratingWithState:&v107 objects:v121 count:16];
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
                      objc_enumerationMutation(v89);
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

                  v96 = [(__CFString *)v89 countByEnumeratingWithState:&v107 objects:v121 count:16];
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
                v138 = v89;
                _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Connecting to watches: %@", buf, 0xCu);
              }

              (v9[2])(v9, 1);
              v6 = 0;
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
              v89 = [NSString stringWithFormat:@"No unlocks in the last %f hrs", 0x4018000000000000];
              v90 = 214;
            }

            else
            {
              v89 = @"Blocked PAU attempt due to Relock";
              v90 = 216;
            }

            v91 = SFLocalizedStringForKey();
            v92 = SFAutoUnlockErrorDomain;
            v123 = NSLocalizedDescriptionKey;
            v124 = v91;
            v93 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
            v6 = [NSError errorWithDomain:v92 code:v90 userInfo:v93];

            [(SDAutoUnlockSessionManager *)self failedAttemptBeforeStarting:v6 metricErrorString:v89];
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
          v6 = [NSError errorWithDomain:v35 code:v36 userInfo:v34];

          v37 = self;
          v38 = v6;
          v39 = v33;
LABEL_29:
          [(SDAutoUnlockSessionManager *)v37 failedAttemptBeforeStarting:v38 metricErrorString:v39];
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
      v6 = [NSError errorWithDomain:v53 code:v50 userInfo:v55];

      [(SDAutoUnlockSessionManager *)self failedAttemptBeforeStarting:v6 metricErrorString:v51];
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

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SDAutoUnlockSessionManager *)self attemptInProgress];
    v8 = @"NO";
    if (v7)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v138 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempt already in progress (progress state: %@)", buf, 0xCu);
  }

LABEL_52:
}

- (void)prewarmAutoUnlock
{
  v3 = [(SDAutoUnlockSessionManager *)self localDeviceController];
  v4 = [v3 shouldPrewarmAttempt];

  if (v4)
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

- (void)completeAutoUnlockWithNotification:(BOOL)a3
{
  v3 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Complete Auto Unlock, Post Notification: %@", buf, 0xCu);
  }

  v7 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D79BC;
  v8[3] = &unk_1008CF798;
  v8[4] = self;
  v9 = v3;
  dispatch_async(v7, v8);
}

- (void)donateDeviceUnlockedWithMask:(BOOL)a3
{
  v3 = a3;
  v5 = [NSNumber numberWithInt:!a3];
  v6 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
  [v6 setObject:v5 forKeyedSubscript:SDAutoUnlockManagerMetricMaskKey];

  v7 = [(SDAutoUnlockSessionManager *)self localDeviceController];
  [v7 deviceUnlockedWithMask:!v3];
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

- (void)cancelAutoUnlockWithCancelReason:(int64_t)a3 usingTool:(BOOL)a4
{
  v7 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D81E8;
  block[3] = &unk_1008CFDA8;
  v9 = a4;
  block[4] = self;
  block[5] = a3;
  dispatch_async(v7, block);
}

- (void)logUnintentionalAutoUnlockAttempt:(unint64_t)a3
{
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D882C;
  v6[3] = &unk_1008CFD30;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)incrementAttemptCount
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceKeyBagUnlocked];

  if ((v4 & 1) == 0)
  {
    v5 = [(SDAutoUnlockSessionManager *)self attemptID];
    v6 = [(SDAutoUnlockSessionManager *)self incrementedCountID];
    v7 = [v5 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [(SDAutoUnlockSessionManager *)self attemptID];
      [(SDAutoUnlockSessionManager *)self setIncrementedCountID:v8];

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
  v5 = [(SDAutoUnlockRelockRequest *)v4 data];
  v6 = [(SDAutoUnlockSessionManager *)self magnetTransport];
  [v6 sendProtocolBufferData:v5 withType:110 timeout:0 option:1 errorHandler:&stru_1008CFDC8];
}

- (void)autoUnlockStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SDAutoUnlockSessionManager *)self attemptInProgress])
  {
    v5 = [(SDAutoUnlockSessionManager *)self attemptDevice];

    if (v5)
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

    v9 = [(SDAutoUnlockSessionManager *)self attemptDevice];
    v10 = [(SDAutoUnlockSessionManager *)self stringForState:v6];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "State requested (attempt in progress: %@, device: %@, state: %@)", &v12, 0x20u);
  }

  v11 = [NSNumber numberWithInteger:v6];
  v4[2](v4, v11, 0);
}

- (id)stringForState:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unexpected";
  }

  else
  {
    return *(&off_1008CFEE0 + a3);
  }
}

- (void)authPromptInfoWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning auth prompt info", v7, 2u);
  }

  v5 = +[SDAutoUnlockNotificationsManager sharedManager];
  v6 = [v5 notificationModel];
  v3[2](v3, v6, 0);
}

- (BOOL)disablePairingForDeviceID:(id)a3 pairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disabling (device ID: %@, pairingID: %@)", &v12, 0x16u);
  }

  v9 = +[SDAutoUnlockAKSManager sharedManager];
  v10 = [v9 disablePairingWithKeyDevice:v6];

  [(SDAutoUnlockSessionManager *)self sendDisableMessageToDeviceID:v6 pairingID:v7];
  return v10;
}

- (void)sendDisableMessageToDeviceID:(id)a3 pairingID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SDUnlockDisable);
  [(SDUnlockDisable *)v7 setVersion:1];
  [(SDUnlockDisable *)v7 setPairingID:v6];

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
  v12 = [(SDUnlockDisable *)v7 data];
  v13 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D9208;
  v15[3] = &unk_1008CDF90;
  v16 = v5;
  v14 = v5;
  [v11 sendPayload:v12 toDevice:v14 type:2 sessionID:0 timeout:v13 errorHandler:v15];
}

- (void)transport:(id)a3 didReceiveDisableMessage:(id)a4 fromDeviceID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9344;
  block[3] = &unk_1008CE900;
  v13 = v8;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)handleDisableMessageForKey:(id)a3 fromDeviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SDAutoUnlockAKSManager sharedManager];
  v9 = [v8 keyPairingIDForDeviceID:v7];

  v10 = [(SDAutoUnlockSessionManager *)self keyPairingSessions];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (v9)
  {
    v12 = [v6 pairingID];
    v13 = [v12 isEqualToString:v9];

    if ((v13 & 1) == 0 && !v11)
    {
      v14 = auto_unlock_log();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_14;
      }

      v15 = [v6 pairingID];
      v25 = 138412546;
      v26 = v9;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not disabling (local pairingID: %@, received pairingID: %@)", &v25, 0x16u);
LABEL_6:

      goto LABEL_13;
    }
  }

  if (v11)
  {
    [v11 cancel];
    v16 = [v6 pairingID];

    if (v16)
    {
      v17 = [(SDAutoUnlockSessionManager *)self canceledPairingKeySessions];
      v18 = [v6 pairingID];
      [v17 addObject:v18];
    }

    v19 = [v11 sessionID];
    v20 = [v19 UUIDString];
    v21 = [v6 pairingID];
    v22 = [v20 isEqualToString:v21];

    if (!v22)
    {
      v14 = auto_unlock_log();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v15 = [v6 pairingID];
      v23 = [v11 sessionID];
      v24 = [v23 UUIDString];
      v25 = 138412802;
      v26 = v7;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v24;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "### Received disable while enabling device but pairing IDs don't match (lock device: %@, received pairing ID: %@, session ID: %@)", &v25, 0x20u);

      goto LABEL_6;
    }
  }

  [(SDAutoUnlockSessionManager *)self disableKeyPairingForDeviceID:v7];
LABEL_14:
}

- (void)handleDisableMessageForLock:(id)a3 fromDeviceID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SDAutoUnlockAKSManager sharedManager];
  v8 = [v7 pairingIDForWatchID:v6];

  if (v8 && [v5 hasPairingID] && (objc_msgSend(v5, "pairingID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v8), v9, !v10))
  {
    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 pairingID];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not disabling (local pairingID: %@, received pairingID: %@)", &v13, 0x16u);
    }
  }

  else
  {
    v11 = +[SDAutoUnlockAKSManager sharedManager];
    [v11 disablePairingWithKeyDevice:v6];
  }
}

- (void)disableKeyPairingForDeviceID:(id)a3
{
  v4 = a3;
  v5 = +[SDAutoUnlockAKSManager sharedManager];
  [v5 deleteEscrowSecretForDeviceID:v4];

  v6 = +[SDAutoUnlockAKSManager sharedManager];
  [v6 deleteRangingKeyForDeviceID:v4];

  v7 = +[SDAutoUnlockTransport sharedTransport];
  v8 = [v7 deviceTypeForDeviceID:v4];

  if (v8 == 2)
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing remote LTK for %@", buf, 0xCu);
    }

    v10 = +[SDAutoUnlockAKSManager sharedManager];
    [v10 removeRemoteLTKForDeviceID:v4];
  }

  v11 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9AA4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v11, block);
}

- (void)createPairingLockSessionWithDevice:(id)a3 passcode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self lockPairingSessions];
  v9 = [v6 uniqueID];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v13 = [SDAutoUnlockPairingLockSession alloc];
    v14 = [v6 uniqueID];
    v15 = +[NSUUID UUID];
    v11 = [(SDAutoUnlockPairingLockSession *)v13 initWithDevice:v14 sessionID:v15];

    [v11 setDelegate:self];
    [v11 setPasscode:v7];
    -[NSObject setPlaceholder:](v11, "setPlaceholder:", [v6 placeholder]);
    v16 = [(SDAutoUnlockSessionManager *)self suggestionManager];
    v17 = [v16 suggestedDeviceID];
    v18 = [v6 uniqueID];
    v19 = [v17 isEqualToString:v18];

    if (v19)
    {
      v20 = [(SDAutoUnlockSessionManager *)self suggestionManager];
      [v20 setSuggestedDeviceID:0];
    }

    v21 = [(SDAutoUnlockSessionManager *)self suggestionManager];
    v22 = [v21 setupRetryDeviceID];
    v23 = [v6 uniqueID];
    v24 = [v22 isEqualToString:v23];

    if (v24)
    {
      v25 = [(SDAutoUnlockSessionManager *)self suggestionManager];
      [v25 setSetupRetryDeviceID:0];
    }

    [v11 setSetupRetryDevice:v24];
    [v11 setUpsellDevice:v19];
    [v11 start];
    v12 = [(SDAutoUnlockSessionManager *)self lockPairingSessions];
    v26 = [v6 uniqueID];
    [v12 setObject:v11 forKeyedSubscript:v26];

    goto LABEL_9;
  }

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SDAutoUnlockSessionManager *)self lockPairingSessions];
    v27 = 138412290;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Pairing lock session in progress %@", &v27, 0xCu);
LABEL_9:
  }
}

- (void)createPairingKeySessionWithIdentifier:(id)a3 deviceID:(id)a4 requestData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [(SDAutoUnlockSessionManager *)self keyPairingSessions];
    v12 = [v11 objectForKeyedSubscript:v9];

    if (v12)
    {
      v13 = auto_unlock_log();
      if (!os_log_type_enabled(&v13->super.super, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      v14 = [(SDAutoUnlockSessionManager *)self keyPairingSessions];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, &v13->super.super, OS_LOG_TYPE_DEFAULT, "Pairing key session in progress %@", &v17, 0xCu);
    }

    else
    {
      v13 = [[SDAutoUnlockPairingKeySession alloc] initWithDevice:v9 sessionID:v8];
      [(SDAutoUnlockPairingSession *)v13 setDelegate:self];
      [(SDAutoUnlockPairingKeySession *)v13 setRequestData:v10];
      [(SDAutoUnlockPairingKeySession *)v13 start];
      v14 = [(SDAutoUnlockSessionManager *)self keyPairingSessions];
      [v14 setObject:v13 forKeyedSubscript:v9];
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

- (void)createLockSessionWithWatchDevice:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SFBLEDevice);
  v6 = [v4 bluetoothID];
  [v5 setIdentifier:v6];

  [v5 setUseBTPipe:1];
  v7 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
  v8 = [v5 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v12 = [SDAutoUnlockLockSession alloc];
    v13 = +[NSUUID UUID];
    v10 = [(SDAutoUnlockLockSession *)v12 initWithAutoUnlockDevice:v4 sessionID:v13 bleDevice:v5];

    [v10 setUseProxy:0];
    v14 = [(SDAutoUnlockSessionManager *)self attemptStart];
    [v10 setAttemptStartDate:v14];

    v15 = [(SDAutoUnlockSessionManager *)self prewarmStart];
    [v10 setPrewarmStartDate:v15];

    [v10 setAttemptType:[(SDAutoUnlockSessionManager *)self attemptType]];
    -[NSObject setUseEncryption:](v10, "setUseEncryption:", [v4 supportsEncryption]);
    [v10 setConnectedBluetoothDevices:[(SDAutoUnlockSessionManager *)self connectedBluetoothDevices]];
    [v10 setTimeSinceLastMachineWake:[(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake]];
    [v10 setLastSleepType:[(SDAutoUnlockSessionManager *)self lastSleepType]];
    [v10 setAttemptPrewarmed:[(SDAutoUnlockSessionManager *)self attemptPrewarmed]];
    [v10 setDoNotPostUnlockConfirmation:[(SDAutoUnlockSessionManager *)self doNotPostUnlockConfirmation]];
    [v10 setIsAuthenticatingForSiri:[(SDAutoUnlockSessionManager *)self isBeingUsedForSiri]];
    [v10 setDelegate:self];
    v16 = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
    [v10 setLastLocalUnlockDate:v16];

    v17 = [(SDAutoUnlockSessionManager *)self lockStateChangedDate];
    [v17 timeIntervalSinceNow];
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
      v22 = [(SDAutoUnlockSessionManager *)self lockStateChangedDate];
      v29 = 67109378;
      LODWORD(v30[0]) = 8;
      WORD2(v30[0]) = 2112;
      *(v30 + 6) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Phone was used within the last %d min. Last lock/unlock date: %@. Telling Watch to skip motion check", &v29, 0x12u);
    }

    [v10 setSkipMotionCheck:v19 >= -480];
    if ([(SDAutoUnlockSessionManager *)self attemptType]== 2)
    {
      v23 = auto_unlock_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(SDAutoUnlockSessionManager *)self attemptExternalACMContext];
        v29 = 138412290;
        v30[0] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Lock session setting context %@", &v29, 0xCu);
      }

      v25 = [(SDAutoUnlockSessionManager *)self attemptExternalACMContext];
      [v10 setExternalACMContext:v25];
    }

    v26 = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
    v27 = [v4 uniqueID];
    -[NSObject setUseAKSToken:](v10, "setUseAKSToken:", [v26 containsObject:v27]);

    [v10 start];
    v11 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    v28 = [v5 identifier];
    [v11 setObject:v10 forKeyedSubscript:v28];

    goto LABEL_14;
  }

  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    v29 = 138412290;
    v30[0] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Auth lock session in progress %@", &v29, 0xCu);
LABEL_14:
  }
}

- (void)createProxySessionWithDeviceID:(id)a3
{
  v4 = a3;
  v5 = +[SDAutoUnlockTransport sharedTransport];
  v6 = [v5 bluetoothIDForIDSID:v4];
  v7 = objc_alloc_init(SFBLEDevice);
  [v7 setIdentifier:v6];
  v8 = [(SDAutoUnlockSessionManager *)self proxySessions];
  v9 = [v7 identifier];
  v10 = [v8 objectForKeyedSubscript:v9];

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
    v14 = [(SDAutoUnlockProxySession *)v12 initWithDevice:v4 sessionID:v13 bleDevice:v7];

    v15 = [v5 modelIdentifierForDeviceID:v4];
    [(SDAutoUnlockProxySession *)v14 setModel:v15];

    v16 = [(SDAutoUnlockSessionManager *)self attemptStart];
    [(SDAutoUnlockProxySession *)v14 setStartDate:v16];

    [(SDAutoUnlockPairingSession *)v14 setDelegate:self];
    [(SDAutoUnlockProxySession *)v14 start];
    v17 = [(SDAutoUnlockSessionManager *)self proxySessions];
    v18 = [v7 identifier];
    [v17 setObject:v14 forKeyedSubscript:v18];
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
    v3 = [(SDAutoUnlockSessionManager *)self proxySessions];
    v4 = [v3 allValues];

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
          v10 = [v9 state];
          if (v10 <= [(SDAutoUnlockSessionManager *)self lastProxyState])
          {
            v11 = [(SDAutoUnlockSessionManager *)self lastProxyState];
          }

          else
          {
            v11 = [v9 state];
          }

          [(SDAutoUnlockSessionManager *)self setLastProxyState:v11];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(SDAutoUnlockSessionManager *)self proxySessions];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(SDAutoUnlockSessionManager *)self proxySessions];
  [v9 removeAllObjects];

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

  v4 = [(SDAutoUnlockSessionManager *)self keysWithAKSTokens];
  [v4 removeAllObjects];
}

- (void)cancelAllLockSessionsForScanTimeout
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setAttemptTimedOut:1];
        [v8 cancel];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)invalidateExistingSessionsForBLEDevice:(id)a3 incomingSessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SDAutoUnlockTransport sharedTransport];
  v9 = [v6 identifier];
  v10 = [v8 cachedIDSDeviceIDsForBluetoothID:v9];
  v28 = [v10 firstObject];

  v26 = self;
  v11 = [(SDAutoUnlockSessionManager *)self keyAuthSessions];
  v12 = [v11 copy];

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
  v25 = v6;
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
      v21 = [v7 UUIDString];
      if (([v21 isEqualToString:v19] & 1) == 0)
      {
        v22 = [v20 deviceID];
        v23 = [v22 isEqualToString:v28];

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
        v21 = [(SDAutoUnlockSessionManager *)v26 keyAuthSessions];
        [v21 setObject:0 forKeyedSubscript:v19];
        v27 = 1;
      }

LABEL_12:
    }

    v16 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
  }

  while (v16);

  v6 = v25;
  if (v27)
  {
    v15 = +[SDAutoUnlockNotificationsManager sharedManager];
    [v15 removeAutoUnlockNotification];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)createRegistrationLockSessionWithDeviceID:(id)a3 sessionID:(id)a4 requestData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
    v12 = [v11 objectForKeyedSubscript:v8];

    if (v12)
    {
      v13 = auto_unlock_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
        v20 = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Registration lock session in progress %@", &v20, 0xCu);
      }
    }

    else
    {
      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = +[NSUUID UUID];
      }

      v13 = v17;
      v18 = [[SDAutoUnlockRegistrationLockSession alloc] initWithDevice:v8 sessionID:v17];
      [(SDAutoUnlockPairingSession *)v18 setDelegate:self];
      [(SDAutoUnlockRegistrationLockSession *)v18 setRequestData:v10];
      [(SDAutoUnlockRegistrationLockSession *)v18 start];
      v19 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
      [v19 setObject:v18 forKeyedSubscript:v8];
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

- (void)cancelParallelRegistrationSessionsForDeviceID:(id)a3 newSessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 sessionID];
    v13 = [v12 UUIDString];
    v14 = [v7 UUIDString];
    v15 = [v13 compare:v14];

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
      [v9 setObject:0 forKeyedSubscript:v6];
    }
  }
}

- (void)session:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB67C;
  block[3] = &unk_1008CE900;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleLockSessionCompleted:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 autoUnlockDevice];
  v10 = [(SDAutoUnlockSessionManager *)self canceledAuthLockSessions];
  v11 = [v6 sessionID];
  v12 = [v10 containsObject:v11];

  if (v12)
  {
    v13 = [(SDAutoUnlockSessionManager *)self canceledAuthLockSessions];
    v14 = [v6 sessionID];
    [v13 removeObject:v14];

    v15 = [(SDAutoUnlockSessionManager *)self suggestionManager];
    [v15 setLastSuccessfulDevice:0];

    if (v7)
    {
      [(SDAutoUnlockSessionManager *)self performRegistrationIfNecessaryForLockSession:v6 error:v7];
    }

    else
    {
      v21 = auto_unlock_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Canceled at end", buf, 2u);
      }

      [v6 handleCanceledAfterSuccess];
    }

    if ([v6 otherSessionCancel])
    {
      v22 = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
      v23 = [v6 deviceID];
      [v22 removeObject:v23];

LABEL_31:
    }
  }

  else if (v7)
  {
    v16 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    v17 = [v16 count];

    if (v17 <= 1)
    {
      [v6 logResults];
      v25 = [v6 autoUnlockDevice];
      v62 = v25;
      v26 = [NSArray arrayWithObjects:&v62 count:1];
      v27 = [v6 wifiRangingResults];
      [(SDAutoUnlockSessionManager *)self createRadarForError:v7 devices:v26 rangingResults:v27];

      v28 = [v6 attemptResults];
      v29 = [v28 mutableCopy];
      [(SDAutoUnlockSessionManager *)self setCachedMetrics:v29];

      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v28 error:v7];
      v30 = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
      v31 = [v6 deviceID];
      [v30 removeObject:v31];

      v32 = [(SDAutoUnlockSessionManager *)self suggestionManager];
      [v32 setLastSuccessfulDevice:0];

      if ([v7 code] == 145)
      {
        [(SDAutoUnlockSessionManager *)self decrementAttemptCount];
      }

      else
      {
        [(SDAutoUnlockSessionManager *)self performRegistrationIfNecessaryForLockSession:v6 error:v7];
      }

      [(SDAutoUnlockSessionManager *)self invalidateAttempt];
    }

    else
    {
      v18 = auto_unlock_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v6 sessionID];
        v20 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
        *buf = 138412802;
        v57 = v19;
        v58 = 2112;
        v59 = v7;
        v60 = 2112;
        v61 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Session failed (id: %@, error: %@, outstanding sessions: %@)", buf, 0x20u);
      }

      [(SDAutoUnlockSessionManager *)self setAuthSessionError:v7];
    }

    if ([v7 code] == 101)
    {
      [(SDAutoUnlockSessionManager *)self registerRemotePeerIfNecessary];
    }
  }

  else
  {
    if ([(SDAutoUnlockSessionManager *)self attemptType]== 1)
    {
      v22 = +[NSUserDefaults standardUserDefaults];
      if ([v22 BOOLForKey:@"phoneAutoUnlockSkipPrewarmOnNextUnlock"])
      {
        v24 = auto_unlock_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skipped donating positive mask signal due to default phoneAutoUnlockSkipPrewarmOnNextUnlock", buf, 2u);
        }
      }

      else
      {
        v24 = [(SDAutoUnlockSessionManager *)self localDeviceController];
        [v24 deviceUnlockedWithMask:1];
      }

      [v6 logResults];
      v38 = [v6 attemptResults];
      [v9 setResults:v38];

      v39 = [v9 results];
      v40 = [v39 mutableCopy];
      [(SDAutoUnlockSessionManager *)self setCachedMetrics:v40];

      v41 = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
      v42 = [v6 deviceID];
      [v41 addObject:v42];

      v43 = [(SDAutoUnlockSessionManager *)self suggestionManager];
      [v43 setLastSuccessfulDevice:v9];

      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockCompletionWithDevice:v9];
      [(SDAutoUnlockSessionManager *)self invalidateAttempt];
      goto LABEL_31;
    }

    if ([(SDAutoUnlockSessionManager *)self attemptType]!= 2)
    {
      v22 = auto_unlock_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E392C(self);
      }

      goto LABEL_31;
    }

    [v6 logResults];
    v33 = [v6 attemptResults];
    [v9 setResults:v33];

    v34 = [v9 results];
    v35 = [v34 mutableCopy];
    [(SDAutoUnlockSessionManager *)self setCachedMetrics:v35];

    v36 = [v6 hintToken];
    [v9 setHintToken:v36];

    v37 = [v9 hintToken];

    if (v37)
    {
      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockCompletionWithDevice:v9];
    }

    else
    {
      v47 = auto_unlock_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1000E39B0(self);
      }

      v48 = [v9 results];
      v49 = SFAutoUnlockErrorDomain;
      v54 = NSLocalizedDescriptionKey;
      v55 = @"Missing authorization token";
      v50 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v51 = [NSError errorWithDomain:v49 code:185 userInfo:v50];
      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v48 error:v51];
    }

    v52 = [(SDAutoUnlockSessionManager *)self locksWithAKSTokens];
    v53 = [v6 deviceID];
    [v52 removeObject:v53];

    [(SDAutoUnlockSessionManager *)self invalidateAttempt];
  }

  [v6 invalidate];
  v44 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
  v45 = [v6 bleDevice];
  v46 = [v45 identifier];
  [v44 removeObjectForKey:v46];

  [(SDAutoUnlockSessionManager *)self setScanErrorString:0];
}

- (void)handleProxySessionCompleted:(id)a3 error:(id)a4
{
  v15 = a3;
  v6 = a4;
  [v15 connectionTime];
  [(SDAutoUnlockSessionManager *)self setProxyConnectionTime:?];
  if (v6)
  {
    -[SDAutoUnlockSessionManager setProxyErrorCode:](self, "setProxyErrorCode:", [v6 code]);
    v7 = [v6 localizedDescription];
    [(SDAutoUnlockSessionManager *)self setScanErrorString:v7];

    -[SDAutoUnlockSessionManager setProxyNotAvailableForUnlock:](self, "setProxyNotAvailableForUnlock:", [v6 code] == 144);
    if ([v6 code] != 135)
    {
      goto LABEL_8;
    }

    v8 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    if ([v8 count] < 2)
    {
      v9 = [(SDAutoUnlockSessionManager *)self proxySessions];
      v10 = [v9 count];

      if (v10 != 1)
      {
        goto LABEL_8;
      }

      v8 = [(SDAutoUnlockSessionManager *)self baseResultsDictionaryForError:v6];
      v11 = [v15 results];
      [v8 addEntriesFromDictionary:v11];

      [(SDAutoUnlockSessionManager *)self setCachedMetrics:v8];
      [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v8 error:v6];
      [(SDAutoUnlockSessionManager *)self invalidateAttempt];
    }
  }

  else
  {
    -[SDAutoUnlockSessionManager setLastProxyState:](self, "setLastProxyState:", [v15 state]);
  }

LABEL_8:
  [v15 invalidate];
  v12 = [(SDAutoUnlockSessionManager *)self proxySessions];
  v13 = [v15 bleDevice];
  v14 = [v13 identifier];
  [v12 removeObjectForKey:v14];
}

- (void)sessionDidStartConnection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SDAutoUnlockSessionManager *)self handleLockConnectionStartedForSession:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SDAutoUnlockSessionManager *)self handleProxyConnectionStartedForSession:v4];
    }
  }
}

- (void)handleLockConnectionStartedForSession:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self localDeviceController];
  v6 = [v5 faceIDEnabled];

  v7 = [(SDAutoUnlockSessionManager *)self cachedDeviceWiFiState];
  v8 = ([(SDAutoUnlockSessionManager *)self attemptType]== 2) | v7;
  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v7)
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
    v11 = [v4 autoUnlockDevice];
    v12 = [(SDAutoUnlockSessionManager *)self attemptDevice];

    if (v12)
    {
      v13 = auto_unlock_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(SDAutoUnlockSessionManager *)self attemptDevice];
        *buf = 138412546;
        v52 = v11;
        v53 = 2112;
        v54 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Already connected (new device: %@, attempt device: %@)", buf, 0x16u);
      }
    }

    else
    {
      [(SDAutoUnlockSessionManager *)self setAttemptDevice:v11];
      [v4 setChosenDevice:1];
      if (![(SDAutoUnlockSessionManager *)self notifiedForProxy])
      {
        v29 = [(SDAutoUnlockSessionManager *)self attemptDevice];
        [(SDAutoUnlockSessionManager *)self notifyObserverOfAttemptBeganWithDevice:v29];

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
      v32 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
      v13 = [v32 allValues];

      v33 = [v13 countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v33)
      {
        v34 = v33;
        v42 = v11;
        v35 = *v44;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(v13);
            }

            v37 = *(*(&v43 + 1) + 8 * i);
            v38 = [v37 sessionID];
            v39 = [v4 sessionID];
            v40 = [v38 isEqual:v39];

            if ((v40 & 1) == 0)
            {
              v41 = [(SDAutoUnlockSessionManager *)self canceledAuthLockSessions];
              [v41 addObject:v38];

              [v37 setOtherSessionCancel:1];
              [v37 cancel];
            }
          }

          v34 = [v13 countByEnumeratingWithState:&v43 objects:v55 count:16];
        }

        while (v34);
        v11 = v42;
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
    v17 = [v16 bluetoothEnabled];

    v18 = [(SDAutoUnlockSessionManager *)self errorCodeForBluetoothEnabled:v17 wifiEnabled:0 faceIDEnabled:v6];
    v11 = [(SDAutoUnlockSessionManager *)self errorStringForBluetoothEnabled:v17 wifiEnabled:0 faceIDEnabled:v6];
    v19 = [(SDAutoUnlockSessionManager *)self shouldShowErrorForWiFiEnabled:0];
    v20 = SFAutoUnlockErrorDomain;
    v49[0] = NSLocalizedDescriptionKey;
    v49[1] = @"SDAutoUnlockShowScreenLockError";
    v50[0] = v11;
    v21 = [NSNumber numberWithBool:v19];
    v50[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
    v13 = [NSError errorWithDomain:v20 code:v18 userInfo:v22];

    v47[0] = SDAutoUnlockManagerMetricSuccessKey;
    v47[1] = SDAutoUnlockManagerMetricErrorDomainKey;
    v48[0] = &off_10090BA30;
    v48[1] = v20;
    v47[2] = SDAutoUnlockManagerMetricErrorCodeKey;
    v23 = [NSNumber numberWithInteger:v18];
    v48[2] = v23;
    v48[3] = v11;
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

    [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v27 error:v13];
    [(SDAutoUnlockSessionManager *)self invalidateAttempt];
  }
}

- (void)handleProxyConnectionStartedForSession:(id)a3
{
  v4 = a3;
  if (![(SDAutoUnlockSessionManager *)self notifiedForProxy])
  {
    v5 = [(SDAutoUnlockSessionManager *)self attemptDevice];

    if (!v5)
    {
      v6 = objc_alloc_init(SFAutoUnlockDevice);
      [v6 setName:@"Proxied Apple Watch"];
      [v6 setModelName:@"Apple Watch"];
      [(SDAutoUnlockSessionManager *)self notifyObserverOfAttemptBeganWithDevice:v6];
      [(SDAutoUnlockSessionManager *)self setNotifiedForProxy:1];
      [(SDAutoUnlockSessionManager *)self incrementAttemptCount];
      v7 = [(SDAutoUnlockSessionManager *)self scanTimer];

      if (v7)
      {
        v8 = [(SDAutoUnlockSessionManager *)self scanner];
        [v8 setTimeout:0.0];

        v9 = [(SDAutoUnlockSessionManager *)self scanner];
        [v9 setTimeoutHandler:0];

        [(SDAutoUnlockSessionManager *)self restartScanTimer:sub_1001F0530(12.0)];
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
      v11 = [v10 allValues];

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * v15);
            [v4 connectionTime];
            [v16 setProxyConnectionTime:?];
            v17 = [v4 model];
            [v16 setProxyDeviceModel:v17];

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      v18 = [v4 model];
      [(SDAutoUnlockSessionManager *)self setProxyDeviceModel:v18];

      -[SDAutoUnlockSessionManager setProxyRSSI:](self, "setProxyRSSI:", [v4 proxyRSSI]);
      [v4 proxyDiscoveryTime];
      [(SDAutoUnlockSessionManager *)self setProxyDiscoverTime:?];
    }
  }
}

- (void)sessionDidReceiveKeyDeviceLocked:(id)a3
{
  v4 = a3;
  v5 = +[SDAutoUnlockTransport sharedTransport];
  v6 = [v4 deviceID];

  v7 = [v5 autoUnlockDeviceForDeviceID:v6];

  [(SDAutoUnlockSessionManager *)self notifyObserverOfKeyDeviceLockWithDevice:v7];
}

- (BOOL)isDisplayOff
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 screenOn];

  return v3 ^ 1;
}

- (void)performRegistrationIfNecessaryForLockSession:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 code];
  if (v9 == 136)
  {
    if ([(SDAutoUnlockSessionManager *)self suppressAlert])
    {
LABEL_7:
      v12 = [(SDAutoUnlockSessionManager *)self remotePeer];
      [v12 handleConfirmationFailed];

      [(SDAutoUnlockSessionManager *)self registerRemotePeerIfNecessary];
      goto LABEL_10;
    }

    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Locking device on confirmation failed error", buf, 2u);
    }

    v11 = [(SDAutoUnlockSessionManager *)self localDeviceController];
    [v11 lockDevice];
LABEL_6:

    goto LABEL_7;
  }

  if ([v6 aksSuccess] && (objc_msgSend(v6, "unlockSucceeded") & 1) == 0)
  {
    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AKS unlocked but unlock did not succeed", v13, 2u);
    }

    goto LABEL_6;
  }

LABEL_10:
}

- (void)transportDidChangeDevices:(id)a3
{
  v4 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD5CC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)transportDidChangeNearbyState:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD700;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)transport:(id)a3 didReceivePairingRequestWithSessionID:(id)a4 deviceID:(id)a5 requestData:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000DD88C;
  v16[3] = &unk_1008CE158;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

- (void)transport:(id)a3 didReceiveRegistrationRequestWithSessionID:(id)a4 deviceID:(id)a5 requestData:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000DD99C;
  v16[3] = &unk_1008CE158;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_async(v12, v16);
}

- (void)transport:(id)a3 didReceiveKeyOriginatingRegistrationRequestWithSessionID:(id)a4 deviceID:(id)a5 requestData:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000DDAE4;
  v16[3] = &unk_1008CE158;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_async(v12, v16);
}

- (void)idsController:(id)a3 didReceiveProtoData:(id)a4 forType:(unsigned __int16)a5 deviceID:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v7 == 2001)
  {
    v15 = [[SDAutoUnlockSessionWrapper alloc] initWithData:v11];
    if (-[SDAutoUnlockSessionWrapper hasSessionID](v15, "hasSessionID") && (-[SDAutoUnlockSessionWrapper sessionID](v15, "sessionID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 length], v16, v17 == 16))
    {
      v18 = [NSUUID alloc];
      v19 = [(SDAutoUnlockSessionWrapper *)v15 sessionID];
      v20 = [v18 initWithUUIDBytes:{objc_msgSend(v19, "bytes")}];

      v21 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000DDE9C;
      v23[3] = &unk_1008CE158;
      v23[4] = self;
      v24 = v20;
      v25 = v12;
      v26 = v15;
      v22 = v20;
      dispatch_async(v21, v23);
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

  else if (v7 == 110)
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received relock request", buf, 2u);
    }

    v14 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DDDDC;
    block[3] = &unk_1008CE028;
    block[4] = self;
    v28 = v12;
    dispatch_async(v14, block);
  }
}

- (void)startScannerWithWatchBluetoothIDs:(id)a3 phoneBluetoothIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SDAutoUnlockSessionManager *)self scanner];

  if (v8)
  {
    v9 = [(SDAutoUnlockSessionManager *)self scanner];
    [v9 invalidate];
  }

  v10 = objc_opt_new();
  [(SDAutoUnlockSessionManager *)self setScanner:v10];

  v11 = [(SDAutoUnlockSessionManager *)self scanner];
  [v11 setDiscoveryFlags:1];

  v12 = [(SDAutoUnlockSessionManager *)self scanner];
  v13 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  [v12 setDispatchQueue:v13];

  v14 = [(SDAutoUnlockSessionManager *)self scanner];
  [v14 setScanRate:50];

  v15 = [(SDAutoUnlockSessionManager *)self scanner];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000DE424;
  v34[3] = &unk_1008CFDF0;
  objc_copyWeak(&v35, &location);
  [v15 setDeviceFoundHandler:v34];

  v16 = [(SDAutoUnlockSessionManager *)self scanner];
  [v16 setChangeFlags:1];

  v17 = [(SDAutoUnlockSessionManager *)self scanner];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000DE4A8;
  v32[3] = &unk_1008CFE18;
  objc_copyWeak(&v33, &location);
  [v17 setDeviceChangedHandler:v32];

  v18 = [(SDAutoUnlockSessionManager *)self scanner];
  [v18 setInvalidationHandler:&stru_1008CFE38];

  v19 = [v6 setByAddingObjectsFromSet:v7];
  v20 = [(SDAutoUnlockSessionManager *)self scanner];
  [v20 setDeviceFilter:v19];

  v21 = auto_unlock_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = *&v19;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Scanning for bluetooth IDs %@", buf, 0xCu);
  }

  [(SDAutoUnlockSessionManager *)self setScanWatchIDs:v6];
  [(SDAutoUnlockSessionManager *)self setScanPhoneIDs:v7];
  v22 = sub_10000C2C4(@"AUBLEScanTimeout");
  v23 = v22;
  if (v22)
  {
    v24 = [v22 integerValue];
  }

  else
  {
    v24 = 4.0;
  }

  v25 = [(SDAutoUnlockSessionManager *)self scanner];
  [v25 setTimeout:v24];

  v26 = [(SDAutoUnlockSessionManager *)self scanner];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000DE594;
  v30[3] = &unk_1008CDD98;
  objc_copyWeak(&v31, &location);
  [v26 setTimeoutHandler:v30];

  v27 = auto_unlock_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Using BLE scan timeout %.2f seconds", buf, 0xCu);
  }

  v28 = [(SDAutoUnlockSessionManager *)self scanner];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000DE664;
  v29[3] = &unk_1008CDF90;
  v29[4] = self;
  [v28 activateWithCompletion:v29];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)invalidateScanner
{
  v3 = [(SDAutoUnlockSessionManager *)self scanner];

  if (v3)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidating scanner", v9, 2u);
    }

    [(SDAutoUnlockSessionManager *)self setExtendedTimer:0];
    v5 = [(SDAutoUnlockSessionManager *)self scanner];
    [v5 setTimeout:0.0];

    v6 = [(SDAutoUnlockSessionManager *)self scanner];
    [v6 setTimeoutHandler:0];

    v7 = [(SDAutoUnlockSessionManager *)self scanner];
    [v7 setInvalidationHandler:0];

    v8 = [(SDAutoUnlockSessionManager *)self scanner];
    [v8 invalidate];

    [(SDAutoUnlockSessionManager *)self setScanner:0];
    [(SDAutoUnlockSessionManager *)self invalidateScanTimer];
  }
}

- (void)handleFoundPeer:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found BLE peer: %@", buf, 0xCu);
  }

  v6 = [v4 identifier];
  v7 = [(SDAutoUnlockSessionManager *)self scanWatchIDs];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = [(SDAutoUnlockSessionManager *)self lockAuthSessions];
    v10 = [v9 allValues];

    v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = [v15 bleDevice];
          v17 = [v16 identifier];
          v18 = [v17 isEqual:v6];

          if (v18)
          {
            [v15 handleFoundBLEDevice:v4];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

LABEL_24:

    goto LABEL_25;
  }

  v19 = [(SDAutoUnlockSessionManager *)self scanPhoneIDs];
  v20 = [v19 containsObject:v6];

  if (v20)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [(SDAutoUnlockSessionManager *)self proxySessions];
    v10 = [v21 allValues];

    v22 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(v10);
          }

          v26 = *(*(&v30 + 1) + 8 * j);
          v27 = [v26 bleDevice];
          v28 = [v27 identifier];
          v29 = [v28 isEqual:v6];

          if (v29)
          {
            [v26 handleFoundBLEDevice:v4];
          }
        }

        v23 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (void)restartScanTimer:(unint64_t)a3
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting scan timer", buf, 2u);
  }

  v6 = [(SDAutoUnlockSessionManager *)self scanTimer];

  if (!v6)
  {
    v7 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000DED40;
    v11[3] = &unk_1008CDEA0;
    v11[4] = self;
    v8 = sub_1001F0548(0, v7, v11);
    [(SDAutoUnlockSessionManager *)self setScanTimer:v8];

    v9 = [(SDAutoUnlockSessionManager *)self scanTimer];
    dispatch_resume(v9);
  }

  v10 = [(SDAutoUnlockSessionManager *)self scanTimer];
  sub_1001F05F0(v10, a3);
}

- (void)invalidateScanTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating scan timer", v6, 2u);
  }

  v4 = [(SDAutoUnlockSessionManager *)self scanTimer];

  if (v4)
  {
    v5 = [(SDAutoUnlockSessionManager *)self scanTimer];
    dispatch_source_cancel(v5);

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
  v4 = [(SDAutoUnlockSessionManager *)self scanErrorString];
  v5 = v4;
  v6 = @"Apple Watch Not Found";
  if (v4)
  {
    v6 = v4;
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
    v12 = [(SDAutoUnlockSessionManager *)self proxyErrorCode];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 143;
    }

    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:SDAutoUnlockManagerMetricUsingProxyDeviceKey];
    v14 = [(SDAutoUnlockSessionManager *)self proxyDeviceModel];
    [v8 setObject:v14 forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceModelKey];

    v15 = [NSNumber numberWithInt:[(SDAutoUnlockSessionManager *)self proxyRSSI]];
    [v8 setObject:v15 forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceRSSIKey];

    [(SDAutoUnlockSessionManager *)self proxyDiscoverTime];
    v16 = [NSNumber numberWithDouble:?];
    [v8 setObject:v16 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothProxyDeviceDiscoveryKey];

    [v8 setObject:&off_10090BA78 forKeyedSubscript:SDAutoUnlockManagerMetricErrorTypeKey];
  }

  else
  {
    v17 = [(SDAutoUnlockSessionManager *)self authSessionError];

    if (v17)
    {
      v18 = [(SDAutoUnlockSessionManager *)self authSessionError];
      v19 = [v18 userInfo];
      v20 = [v19 objectForKeyedSubscript:NSLocalizedDescriptionKey];

      v21 = [(SDAutoUnlockSessionManager *)self authSessionError];
      v13 = [v21 code];

      v7 = v20;
    }

    else if ([(SDAutoUnlockSessionManager *)self proxyNotAvailableForUnlock])
    {

      [v8 setObject:&off_10090BA90 forKeyedSubscript:SDAutoUnlockManagerMetricErrorTypeKey];
      v7 = @"Watch Not On Wrist";
      v13 = 144;
    }

    else
    {
      [v8 setObject:&off_10090BAA8 forKeyedSubscript:SDAutoUnlockManagerMetricErrorTypeKey];
      v13 = 131;
    }
  }

  [v8 setObject:v7 forKeyedSubscript:SDAutoUnlockManagerMetricErrorStringKey];
  v22 = [NSNumber numberWithInteger:v13];
  [v8 setObject:v22 forKeyedSubscript:SDAutoUnlockManagerMetricErrorCodeKey];

  v27 = NSLocalizedDescriptionKey;
  v28 = v7;
  v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v24 = [NSError errorWithDomain:v3 code:v13 userInfo:v23];

  v25 = [(SDAutoUnlockSessionManager *)self scanAutoUnlockDevices];
  v26 = [v25 allObjects];
  [(SDAutoUnlockSessionManager *)self createRadarForError:v24 devices:v26 rangingResults:0];

  [(SDAutoUnlockSessionManager *)self setCachedMetrics:v8];
  [(SDAutoUnlockSessionManager *)self notifyObserversOfUnlockFailureWithResults:v8 error:v24];
}

- (void)updateAdvertising
{
  v2 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v2);
}

- (int64_t)idsMacCount
{
  if ([(SDAutoUnlockSessionManager *)self idsMacCountCache]< 0)
  {
    v3 = +[SDAutoUnlockTransport sharedTransport];
    v4 = [v3 idsMacDeviceIDs];
    -[SDAutoUnlockSessionManager setIdsMacCountCache:](self, "setIdsMacCountCache:", [v4 count]);
  }

  return [(SDAutoUnlockSessionManager *)self idsMacCountCache];
}

- (void)addServiceClientForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DF568;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeServiceClientForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DF66C;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleBLEDataReceivedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"SDNearbyAgentNotificationInfoKeyBLEDevice"];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v6;
    v36 = 1024;
    LODWORD(v37) = [(SDAutoUnlockSessionWrapper *)v6 useBTPipe];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received message from bleDevice %@, useBTPipe %d", buf, 0x12u);
  }

  v8 = [v4 userInfo];

  v9 = [v8 objectForKeyedSubscript:@"SDNearbyAgentNotificationInfoKeyBLEData"];

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
    v16 = [(SDAutoUnlockSessionWrapper *)v13 encryptedPayload];
    v17 = [(SDAutoUnlockSessionWrapper *)v13 authTag];
    v18 = [(SDAutoUnlockSessionWrapper *)v13 nonce];
    v19 = [(SDAutoUnlockSessionWrapper *)v12 identifier];
    v20 = [v15 decryptMessage:v16 authTag:v17 nonce:v18 bluetoothID:v19 cachedDevices:1 errorCode:&v30];

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
      v26 = [(SDAutoUnlockSessionWrapper *)v21 data];
      [v25 setPayload:v26];

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
      v29 = [v25 data];
      [v28 sendUnlockData:v29 toBLEDevice:v12 completion:&stru_1008CFE80];
    }
  }

  else
  {
    (v14[2])(v14, v13, 0);
  }
}

- (void)handleRelockMessage
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SDAutoUnlockSessionManager *)self localDeviceController];
  [v4 lockWithBioLockOut];

  [(SDAutoUnlockSessionManager *)self setLastLockedByRelock:1];
  [(SDAutoUnlockSessionManager *)self cancelAutoUnlock];
  v5 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SDAutoUnlockManagerMetricManualRelockKey];
}

- (void)keyBagLockStateChange:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E002C;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)onqueue_keyBagLockStateChange:(id)a3
{
  v4 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v4);

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
  v2 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v2);

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
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v4 enabledAutoUnlockDevicesUsingCache:1];
  v6 = [v5 count];

  v7 = [(SDAutoUnlockSessionManager *)self behaviorChangedAfterUpgrade];
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

    if (v7)
    {
      v9 = @"YES";
    }

    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AutoUnlock Enabled: %@, behavior changed after upgrade: %@", buf, 0x16u);
  }

  if (((v6 != 0) & v7) == 1)
  {
    v11 = +[SFSiriController isSiriEnabled];
    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = SFDeviceProductVersion();
    [v13 floatValue];
    [v12 setFloat:@"AutoUnlockLastSeenVersion" forKey:?];

    v14 = dispatch_time(0, 3000000000);
    v15 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E0588;
    block[3] = &unk_1008CFEA0;
    v17 = v11;
    dispatch_after(v14, v15, block);
  }
}

- (id)getUpsellNotificationBodyTextForEvent:(id)a3
{
  v4 = a3;
  v5 = +[SFSiriController isSiriEnabled];
  v6 = [(SDAutoUnlockSessionManager *)self localDeviceController];
  v7 = [v6 supportsPeriocular];

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v7)
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
    v11 = [v4 value];
    v12 = [v11 stringValue];
    [v12 isEqualToString:@"com.apple.faceid.any-face-covering.detected"];
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
    v7 = [v6 hour];
  }

  else
  {
    v7 = 0;
  }

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v3;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Last notification date: %@, %ld hours ago", &v14, 0x16u);
  }

  v9 = v7 > 48;
  if (v3 && v7 < 49)
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
    v9 = v7 > 168;
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

- (void)handleUnexpectedDisablement:(id)a3
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

- (void)pipeConnectionChanged:(id)a3
{
  v4 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E0C90;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleNearbyStateChanged
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E0D6C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleDisplayStateChanged:(unint64_t)a3
{
  v5 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v5);

  if (!a3 && [(SDAutoUnlockSessionManager *)self attemptInProgress])
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
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

  v13 = +[SDStatusMonitor sharedMonitor];
  if ([v13 deviceKeyBagUnlocked])
  {
    v4 = [(SDAutoUnlockSessionManager *)self needsArming];

    if (v4)
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
      v8 = [v7 pairedDeviceID];

      v9 = +[SDAutoUnlockAKSManager sharedManager];
      v10 = [v9 remoteLTKForDeviceID:v8];

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
        [(SDAutoUnlockSessionManager *)self createRegistrationKeySessionWithIdentifier:v11 deviceID:v8 requestData:0 locallyGenerated:1];
      }

      else if (v12)
      {
        *buf = 138412290;
        v15 = v8;
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
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  dispatch_assert_queue_V2(v3);

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
  v5 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v10) invalidate];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(SDAutoUnlockSessionManager *)self remotePeer];
  [v11 handleBioLockout];

  v12 = [(SDAutoUnlockSessionManager *)self lockRegistrationSessionsByDeviceID];
  [v12 removeAllObjects];

  [(SDAutoUnlockSessionManager *)self cancelAutoUnlock];
  [(SDAutoUnlockSessionManager *)self registerRemotePeerIfNecessary];
}

- (void)handlePairedDeviceLockStateChanged
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E1294;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleAuthenticationSessionStarted
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E13B0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
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
    v4 = [(SDAutoUnlockSessionManager *)self lastUnlockedByWatch];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUpMagnetLinkTimer
{
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  [(SDAutoUnlockSessionManager *)self setMagnetLinkTimer:v4];

  v5 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000E1844;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);

  v6 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  v7 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

  v8 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  dispatch_source_set_cancel_handler(v8, &stru_1008CFEC0);

  v9 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  dispatch_activate(v9);

  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Magnet Link Timer Activated", v11, 2u);
  }
}

- (void)btPipeConnectionChanged:(id)a3
{
  v4 = a3;
  v5 = [(__CFString *)v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:SFNotificationKeyConnectionState];
  v7 = [v6 integerValue];

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "btPipeConnectionChanged Notification: %@", &v23, 0xCu);
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      [(SDAutoUnlockSessionManager *)self cancelMagnetLinkTimer];
    }

    goto LABEL_25;
  }

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SDAutoUnlockSessionManager *)self lastUnlockedByWatch];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    v23 = 138412290;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device unlock by Phone Auto Unlock status: %@", &v23, 0xCu);
  }

  v12 = +[NSDate now];
  v13 = [(SDAutoUnlockSessionManager *)self lastUnlockDate];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v15 > 60.0)
  {
    v18 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
    [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:SDAutoUnlockManagerMetricAutoRelockWindowExpiredKey];

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

    v17 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];

    if (!v17)
    {
      [(SDAutoUnlockSessionManager *)self setUpMagnetLinkTimer];
    }

    goto LABEL_25;
  }

  v19 = auto_unlock_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(SDAutoUnlockSessionManager *)self deviceCurrentlyUnlockedByWatch];
    v21 = @"NO";
    if (v20)
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
  v3 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
  if (v3)
  {
    v4 = v3;
    v5 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
    v6 = dispatch_source_testcancel(v5);

    if (!v6)
    {
      v7 = [(SDAutoUnlockSessionManager *)self magnetLinkTimer];
      dispatch_source_cancel(v7);

      [(SDAutoUnlockSessionManager *)self setMagnetLinkTimer:0];
      v8 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
      v9 = SDAutoUnlockManagerMetricAutoRelockTimerCanceledKey;
      v10 = [v8 objectForKeyedSubscript:SDAutoUnlockManagerMetricAutoRelockTimerCanceledKey];

      v11 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
      v12 = v11;
      if (v10)
      {
        v13 = [v11 objectForKeyedSubscript:v9];
        v14 = [v13 intValue];

        v12 = [NSNumber numberWithInt:v14 + 1];
        v15 = [(SDAutoUnlockSessionManager *)self cachedMetrics];
        [v15 setObject:v12 forKeyedSubscript:v9];
      }

      else
      {
        [v11 setObject:&off_10090BA60 forKeyedSubscript:v9];
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

- (id)baseResultsDictionaryForError:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 domain];
  [v5 setObject:v6 forKeyedSubscript:SDAutoUnlockManagerMetricErrorDomainKey];

  [v5 setObject:&off_10090BA30 forKeyedSubscript:SDAutoUnlockManagerMetricSuccessKey];
  v7 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self connectedBluetoothDevices]];
  [v5 setObject:v7 forKeyedSubscript:SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey];

  v8 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self timeSinceLastMachineWake]];
  [v5 setObject:v8 forKeyedSubscript:SDAutoUnlockManagerMetricTimeSinceLastWakeKey];

  v9 = [NSNumber numberWithInteger:[(SDAutoUnlockSessionManager *)self lastSleepType]];
  [v5 setObject:v9 forKeyedSubscript:SDAutoUnlockManagerMetricLastSleepTypeKey];

  v10 = [v4 localizedDescription];
  [v5 setObject:v10 forKeyedSubscript:SDAutoUnlockManagerMetricErrorStringKey];

  v11 = [v4 code];
  v12 = [NSNumber numberWithInteger:v11];
  [v5 setObject:v12 forKeyedSubscript:SDAutoUnlockManagerMetricErrorCodeKey];

  return v5;
}

- (void)handleBluetoothPowerChanged:(id)a3
{
  v4 = +[SDStatusMonitor sharedMonitor];
  v5 = [v4 bluetoothEnabled];

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bluetooth power changed (interface on: %@)", &v8, 0xCu);
  }

  if (v5)
  {
    [(SDAutoUnlockSessionManager *)self setBluetoothErrorCount:0];
    [(SDAutoUnlockSessionManager *)self setPresentedBluetoothError:0];
    [(SDAutoUnlockSessionManager *)self savePresentedBluetoothError];
  }
}

- (void)handleWiFiPowerChanged:(id)a3
{
  v4 = +[SDStatusMonitor sharedMonitor];
  -[SDAutoUnlockSessionManager setCachedDeviceWiFiState:](self, "setCachedDeviceWiFiState:", [v4 wirelessEnabled]);

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SDAutoUnlockSessionManager *)self cachedDeviceWiFiState];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi power changed (interface on: %@)", &v8, 0xCu);
  }
}

- (id)errorStringForBluetoothEnabled:(BOOL)a3 wifiEnabled:(BOOL)a4 faceIDEnabled:(BOOL)a5
{
  if (!a5)
  {
    v5 = @"### FaceID needs to be enabled for this feature to work";
    goto LABEL_10;
  }

  if (a3 || a4)
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    if (a4)
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

- (int64_t)errorCodeForBluetoothEnabled:(BOOL)a3 wifiEnabled:(BOOL)a4 faceIDEnabled:(BOOL)a5
{
  v5 = 123;
  if (!a3 && !a4)
  {
    v5 = 124;
  }

  v6 = 120;
  if (a4)
  {
    v6 = 0;
  }

  if (a3)
  {
    v5 = v6;
  }

  if (a5)
  {
    return v5;
  }

  else
  {
    return 205;
  }
}

- (BOOL)shouldShowErrorForBluetoothEnabled:(BOOL)a3
{
  if (a3)
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

- (BOOL)shouldShowErrorForWiFiEnabled:(BOOL)a3
{
  if (a3)
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
  v3 = [(SDAutoUnlockSessionManager *)self sessionManagerQueue];
  [(SDAutoUnlockSessionManager *)self setStateHandle:os_state_add_handler()];
}

- (void)storePreviousSessionID:(id)a3
{
  v13 = a3;
  [(SDAutoUnlockSessionManager *)self loadPreviousSessionIDs];
  v4 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
  v5 = [v13 UUIDString];
  [v4 insertObject:v5 atIndex:0];

  v6 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
  v7 = [v6 count];

  if (v7 >= 0x65)
  {
    do
    {
      v8 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
      [v8 removeLastObject];

      v9 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
      v10 = [v9 count];
    }

    while (v10 > 0x64);
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
  [v11 setObject:v12 forKey:@"ApproveSessionIDs"];

  [v11 synchronize];
}

- (BOOL)previousSessionExists:(id)a3
{
  v4 = a3;
  [(SDAutoUnlockSessionManager *)self loadPreviousSessionIDs];
  v5 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];
  v6 = [v4 UUIDString];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (void)loadPreviousSessionIDs
{
  v3 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];

  if (!v3)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v4 = [v8 objectForKey:@"ApproveSessionIDs"];
    v5 = [v4 mutableCopy];
    [(SDAutoUnlockSessionManager *)self setPreviousSessionIDs:v5];

    v6 = [(SDAutoUnlockSessionManager *)self previousSessionIDs];

    if (!v6)
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