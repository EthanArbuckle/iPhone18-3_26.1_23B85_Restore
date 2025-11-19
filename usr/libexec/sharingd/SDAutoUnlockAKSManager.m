@interface SDAutoUnlockAKSManager
+ (id)sharedManager;
- (BOOL)cachedEscrowSecretExistsForDeviceID:(id)a3;
- (BOOL)cachedEscrowSecretIsValidForDeviceID:(id)a3;
- (BOOL)canCreateTokenSessionForDeviceID:(id)a3;
- (BOOL)deviceEnabledAsKey:(id)a3;
- (BOOL)deviceEnabledAsKeyForAnyDevice;
- (BOOL)deviceEnabledAsKeyForAnyIDSDevice;
- (BOOL)deviceEnabledAsKeyForAnyIDSMac;
- (BOOL)deviceEnabledAsKeyForAnyMac;
- (BOOL)deviceEnabledAsKeyForIDSDeviceID:(id)a3;
- (BOOL)deviceIsLocalDevice:(id)a3;
- (BOOL)disablePairingWithKeyDevice:(id)a3;
- (BOOL)encryptMessageData:(id)a3 deviceID:(id)a4 encryptedMessage:(id *)a5 authTag:(id *)a6 nonce:(id *)a7;
- (BOOL)escrowSecretExistsForDevice:(id)a3;
- (BOOL)hashMatchesAnyRemoteLTKForDeviceID:(id)a3 ltkHash:(id)a4 isPreferred:(BOOL *)a5;
- (BOOL)loadLocalAttestedLTKIfNecessary;
- (BOOL)loadLocalLTK;
- (BOOL)localDeviceEnabledAsKey;
- (BOOL)localDeviceEnabledAsKeyForMac;
- (BOOL)ltkExistsForKeyDevice:(id)a3 updateLTKs:(BOOL)a4;
- (BOOL)sessionKeyExistsForDeviceID:(id)a3;
- (BOOL)signLTK:(id)a3 ltkModDate:(id)a4 modernLTK:(id)a5 modernLTKModDate:(id)a6 deviceID:(id)a7;
- (BOOL)signLTKsForDeviceID:(id)a3;
- (BOOL)storeAttestedLongTermKey:(id)a3 forDeviceID:(id)a4 name:(id)a5;
- (BOOL)storeEscrowSecret:(id)a3 pairingID:(id)a4 deviceID:(id)a5 requiresUnlock:(BOOL)a6;
- (BOOL)storeKeychainItemWithAttributeDictionary:(id)a3 updateDictionary:(id)a4 addDictionary:(id)a5;
- (BOOL)storeLongTermKey:(id)a3 forDeviceID:(id)a4 name:(id)a5;
- (BOOL)storeLongTermKey:(id)a3 forDeviceID:(id)a4 name:(id)a5 modern:(BOOL)a6;
- (BOOL)storeRangingKey:(id)a3 forDeviceID:(id)a4;
- (BOOL)viewSyncing;
- (NSString)companionIDStorageFilePath;
- (NSString)remoteLTKStorageFilePath;
- (NSString)state;
- (NSString)watchIDToCompanionIDStorageFilePath;
- (NSString)watchIDsToPairingRecordsStorageFilePath;
- (SDAutoUnlockAKSManager)init;
- (id)aksAuthSessionForDeviceID:(id)a3 attestation:(BOOL)a4 sessionType:(int64_t)a5 escrowSecret:(id)a6;
- (id)aksAuthorizationSessionForDeviceID:(id)a3 attestation:(BOOL)a4 originator:(BOOL)a5 externalACMContext:(id)a6 sessionType:(int64_t)a7;
- (id)allPairedWatchDeviceIDs;
- (id)allRemoteLTKData;
- (id)anyLongTermKeyForDeviceID:(id)a3;
- (id)attestedDictionaryForDevice:(id)a3;
- (id)autoUnlockFolderPath;
- (id)baseDictionary;
- (id)baseLocalKeysDictionary;
- (id)baseLocalKeysDictionaryForDevice:(id)a3 type:(id)a4;
- (id)baseModernSyncedDictionary;
- (id)baseRangingDictionary;
- (id)baseRangingDictionaryForDevice:(id)a3;
- (id)baseSyncedDictionary;
- (id)companionIDForWatchID:(id)a3;
- (id)decryptMessage:(id)a3 authTag:(id)a4 nonce:(id)a5 bluetoothID:(id)a6 cachedDevices:(BOOL)a7 errorCode:(int64_t *)a8;
- (id)deriveKeyFromSharedSecret:(id)a3;
- (id)deviceIDsMissingSessionKey;
- (id)escrowSecretCreationDateForDeviceID:(id)a3;
- (id)escrowSecretForDevice:(id)a3;
- (id)keyPairingIDForDeviceID:(id)a3;
- (id)keychainDataForQuery:(id)a3;
- (id)keychainDevices:(BOOL)a3;
- (id)loadCompanionIDs;
- (id)loadLegacyWatchIDToCompanionIDMapping;
- (id)longTermKeyIDForDeviceID:(id)a3;
- (id)ltkHashForLocalLTK;
- (id)ltkInfoForDeviceID:(id)a3 modern:(BOOL)a4 attested:(BOOL)a5;
- (id)ltksForRequest:(id)a3;
- (id)migrateLegacyCompanionIDs:(id)a3;
- (id)modernSignedDevices;
- (id)modernSyncedDictionaryForDevice:(id)a3;
- (id)modificationDataForDeviceID:(id)a3 modern:(BOOL)a4;
- (id)pairingIDForWatchID:(id)a3;
- (id)rangingKeyForDeviceID:(id)a3;
- (id)remoteLTKEntryForDeviceID:(id)a3;
- (id)remoteLTKForDeviceID:(id)a3;
- (id)remoteLTKHashForDeviceID:(id)a3 modern:(BOOL)a4;
- (id)remoteLTKList;
- (id)sessionKeyForDeviceID:(id)a3;
- (id)signedDevices;
- (id)syncedDictionaryForDevice:(id)a3;
- (int)ltkSyncStatusForDeviceID:(id)a3 hash:(id)a4 modern:(BOOL)a5;
- (int64_t)keyClassForDeviceID:(id)a3;
- (int64_t)ltkKeyClassWithAttestation:(BOOL)a3;
- (void)addDeviceIDMissingSessionKey:(id)a3;
- (void)addObservers;
- (void)addRemoteLTK:(id)a3 ltkHash:(id)a4 ltkModDate:(id)a5 modernLTK:(id)a6 modernLTKHash:(id)a7 modernLTKModeDate:(id)a8 deviceID:(id)a9;
- (void)appleAccountSignedIn:(id)a3;
- (void)appleAccountSignedOut:(id)a3;
- (void)checkLocalAttestedLTK;
- (void)checkLocalLTK;
- (void)checkPhoneRemoteLTKs;
- (void)checkRemoteLTKForDeviceID:(id)a3;
- (void)clearAllDeviceIDsMissingSessionKeys;
- (void)clearRemoteLTKs;
- (void)consoleUserChanged:(id)a3;
- (void)deleteAllEscrowSecrets;
- (void)deleteAllRangingKeys;
- (void)deleteEscrowSecretForAllDevices;
- (void)deleteEscrowSecretForDeviceID:(id)a3;
- (void)deleteEscrowSecretForPhones;
- (void)deleteLegacyCompanionIDs;
- (void)deleteLegacyWatchToCompanionIDs;
- (void)deleteLocalAttestedLTK;
- (void)deleteRangingKeyForDeviceID:(id)a3;
- (void)deleteRemoteLongTermKeyForDeviceID:(id)a3 modern:(BOOL)a4 tombstone:(BOOL)a5;
- (void)deviceFirstUnlocked:(id)a3;
- (void)disablePairingForAllKeyDevices;
- (void)disablePairingForAllLockPhones;
- (void)generateLocalAttestedLTKIfNeccessaryWithCompletion:(id)a3;
- (void)generateLocalLTKWithAttestation:(BOOL)a3 forceDCRTRetrievalWithCompletion:(id)a4;
- (void)handleKeyBagLockStateChanged;
- (void)handleLTKRequest:(id)a3;
- (void)handleManagementChanged:(id)a3;
- (void)loadLocalUniqueIDIfNeeded;
- (void)loadRemoteLTKs;
- (void)loadRemoteLTKsIfNeeded;
- (void)loadWatchIDsToPairingRecords;
- (void)migrateLegacyWatchIDToCompanionIDs;
- (void)releaseKeybagAssertion;
- (void)reloadPairingRecordsIfNeeded;
- (void)removeAllRemoteLTKsOnSignOut;
- (void)removeCompanionIDForWatchID:(id)a3;
- (void)removeDeviceIDMissingSessionKey:(id)a3;
- (void)removePairingIDForWatchID:(id)a3;
- (void)removePairingRecordForWatchID:(id)a3;
- (void)removeRemoteLTKForDeviceID:(id)a3;
- (void)restartKeybagAssertionTimer;
- (void)saveRemoteLTKs;
- (void)saveWatchIDsToPairingRecords;
- (void)screenLockUnlocked:(id)a3;
- (void)sendLTKResponseWithPayload:(id)a3 viewState:(id)a4 needsUnlock:(id)a5 currentlySyncing:(id)a6;
- (void)setCompanionID:(id)a3 forWatchID:(id)a4;
- (void)setPairingID:(id)a3 forWatchID:(id)a4;
- (void)signAndStoreRemoteLTK:(id)a3 forDeviceID:(id)a4;
- (void)start;
- (void)takeMobileKeybagAssertion;
- (void)transport:(id)a3 didReceivePayload:(id)a4 type:(unsigned __int16)a5 deviceID:(id)a6;
- (void)updateDynamicStoreEnabled;
- (void)updateLTKs;
- (void)updateLocalLTK;
- (void)updateLocalLTKForSignout;
- (void)updatePreferredRemoteLTKForDeviceID:(id)a3;
- (void)updateRangingKeysIfNeccesary;
- (void)updateSessionKeys;
@end

@implementation SDAutoUnlockAKSManager

- (void)handleKeyBagLockStateChanged
{
  v3 = +[SDStatusMonitor sharedMonitor];
  if ([v3 deviceKeyBagUnlocked])
  {
    if ([v3 deviceSupportsRanging] && SFDeviceSupportsAutoUnlock())
    {
      [(SDAutoUnlockAKSManager *)self loadLocalUniqueIDIfNeeded];
      [(SDAutoUnlockAKSManager *)self loadLocalLTK];
      [(SDAutoUnlockAKSManager *)self loadLocalAttestedLTKIfNecessary];
      [(SDAutoUnlockAKSManager *)self updateRemoteLTKs];
      [(SDAutoUnlockAKSManager *)self checkLocalLTK];
      [(SDAutoUnlockAKSManager *)self checkLocalAttestedLTK];
      [(SDAutoUnlockAKSManager *)self checkRemoteLTKs];
      [(SDAutoUnlockAKSManager *)self updateDynamicStoreEnabled];
      [(SDAutoUnlockAKSManager *)self updateSessionKeys];
      [(SDAutoUnlockAKSManager *)self reloadPairingRecordsIfNeeded];
    }

    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Auto Unlock dynamic store updated", v6, 2u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"SDAutoUnlockAKSManagerDynamicStoreUpdatedAfterFirstUnlockNotification" object:0 userInfo:0];
  }
}

+ (id)sharedManager
{
  if (qword_100989F90 != -1)
  {
    sub_10015E910();
  }

  v3 = qword_100989F88;

  return v3;
}

- (void)loadLocalUniqueIDIfNeeded
{
  v3 = [(SDAutoUnlockAKSManager *)self localDeviceID];

  if (!v3)
  {
    v4 = IDSCopyLocalDeviceUniqueID();
    [(SDAutoUnlockAKSManager *)self setLocalDeviceID:v4];

    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SDAutoUnlockAKSManager *)self localDeviceID];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading local unique ID: %@", &v7, 0xCu);
    }
  }
}

- (BOOL)loadLocalLTK
{
  if (SFDeviceClassCodeGet() == 7 || SFDeviceIsRealityDevice())
  {
    v3 = +[SDStatusMonitor sharedMonitor];
    v4 = [v3 deviceWasUnlockedOnce];
  }

  else
  {
    v4 = 1;
  }

  v5 = [(SDAutoUnlockAKSManager *)self localLTK];

  if (v5)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      v7 = "Local LTK Exists";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v34, 2u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (!v4)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      v7 = "Waiting for first unlock to load local LTK";
      goto LABEL_31;
    }

LABEL_32:
    v32 = 0;
    goto LABEL_33;
  }

  v8 = [(SDAutoUnlockAKSManager *)self localDeviceID];

  if (!v8)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10015ED18(self);
    }

    goto LABEL_32;
  }

  v9 = [(SDAutoUnlockAKSManager *)self localDeviceID];
  v6 = [(SDAutoUnlockAKSManager *)self ltkInfoForDeviceID:v9 modern:1];

  v10 = [v6 ltk];
  [(SDAutoUnlockAKSManager *)self setLocalLTK:v10];

  v11 = [(SDAutoUnlockAKSManager *)self localLTK];

  if (!v11)
  {
    v12 = [(SDAutoUnlockAKSManager *)self localDeviceID];
    v13 = [(SDAutoUnlockAKSManager *)self ltkInfoForDeviceID:v12 modern:0];

    if (v13)
    {
      v14 = auto_unlock_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding existing LTK to new syncing view", &v34, 2u);
      }

      v15 = [(SDAutoUnlockAKSManager *)self localDeviceID];
      v16 = +[SDStatusMonitor sharedMonitor];
      v17 = [v16 computerName];
      [(SDAutoUnlockAKSManager *)self storeLongTermKey:v13 forDeviceID:v15 name:v17];

      v18 = [v13 ltk];
      [(SDAutoUnlockAKSManager *)self setLocalLTK:v18];

      v19 = v13;
      v6 = v19;
    }
  }

  v20 = [(SDAutoUnlockAKSManager *)self localLTK];
  if (v20)
  {
    v21 = v20;
    v22 = [v6 version];

    if (v22 <= 1)
    {
      v23 = auto_unlock_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating version for local LTK", &v34, 2u);
      }

      [v6 setVersion:2];
      v24 = [(SDAutoUnlockAKSManager *)self localDeviceID];
      v25 = +[SDStatusMonitor sharedMonitor];
      v26 = [v25 computerName];
      [(SDAutoUnlockAKSManager *)self storeLongTermKey:v6 forDeviceID:v24 name:v26];
    }
  }

  v27 = [(SDAutoUnlockAKSManager *)self localLTK];

  if (!v27)
  {
    [(SDAutoUnlockAKSManager *)self generateLocalLTKWithAttestation:0];
  }

  v28 = auto_unlock_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(SDAutoUnlockAKSManager *)self localLTK];
    if (v29)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v31 = [(SDAutoUnlockAKSManager *)self localLTK];
    v34 = 138412547;
    v35 = v30;
    v36 = 2113;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Loaded local LTK: (%@), %{private}@", &v34, 0x16u);
  }

  v32 = 1;
LABEL_33:

  return v32;
}

- (BOOL)loadLocalAttestedLTKIfNecessary
{
  v3 = [(SDAutoUnlockAKSManager *)self localAttestedLTK];

  if (v3)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Local attested LTK Exists", buf, 2u);
    }

LABEL_32:
    v9 = 0;
    goto LABEL_33;
  }

  v5 = [(SDAutoUnlockAKSManager *)self localDeviceID];

  if (!v5)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10015EDA4(self);
    }

    goto LABEL_32;
  }

  v6 = [(SDAutoUnlockAKSManager *)self localDeviceID];
  v4 = [(SDAutoUnlockAKSManager *)self ltkInfoForDeviceID:v6 modern:1 attested:1];

  v7 = [v4 ltk];
  [(SDAutoUnlockAKSManager *)self setLocalAttestedLTK:v7];

  v8 = [(SDAutoUnlockAKSManager *)self localAttestedLTK];

  v9 = v8 != 0;
  v10 = auto_unlock_log();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SDAutoUnlockAKSManager *)self localAttestedLTK];
      if (v12)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = [(SDAutoUnlockAKSManager *)self localAttestedLTK];
      *buf = 138412547;
      v36 = v13;
      v37 = 2113;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Loaded local attested LTK: (%@), %{private}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100019B80(self);
    }

    if (SFDeviceClassCodeGet() != 5)
    {
      goto LABEL_32;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = +[SDAutoUnlockTransport sharedTransport];
    v16 = [v15 idsDevicesIDs];
    v11 = [v16 allObjects];

    v17 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v27 = v9;
      v19 = *v31;
LABEL_19:
      v20 = 0;
      while (1)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v11);
        }

        v21 = *(*(&v30 + 1) + 8 * v20);
        v22 = +[SDAutoUnlockTransport sharedTransport];
        v23 = [v22 deviceTypeForDeviceID:v21];

        if (v23 == 2)
        {
          [(SDAutoUnlockAKSManager *)self loadRemoteLTKsIfNeeded];
          if ([(SDAutoUnlockAKSManager *)self deviceEnabledAsKeyForIDSDeviceID:v21])
          {
            break;
          }
        }

        if (v18 == ++v20)
        {
          v18 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v18)
          {
            goto LABEL_19;
          }

          goto LABEL_31;
        }
      }

      v24 = v21;

      if (!v24)
      {
        goto LABEL_32;
      }

      v25 = auto_unlock_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found Enabled iPhone for MacUnlockPhone: %@", buf, 0xCu);
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001551D0;
      v28[3] = &unk_1008D1988;
      v28[4] = self;
      v29 = v24;
      v11 = v24;
      [(SDAutoUnlockAKSManager *)self generateLocalAttestedLTKIfNeccessaryWithCompletion:v28];

LABEL_31:
      v9 = v27;
    }
  }

LABEL_33:
  return v9;
}

- (id)baseDictionary
{
  v2 = objc_opt_new();
  [v2 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v2 setObject:@"com.apple.continuity.unlock" forKeyedSubscript:kSecAttrAccessGroup];

  return v2;
}

- (void)loadRemoteLTKsIfNeeded
{
  v3 = [(SDAutoUnlockAKSManager *)self remoteLTKs];

  if (!v3)
  {

    [(SDAutoUnlockAKSManager *)self loadRemoteLTKs];
  }
}

- (void)checkLocalLTK
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceKeyBagUnlocked];

  if (v4)
  {
    v5 = [(SDAutoUnlockAKSManager *)self localDeviceID];

    if (v5)
    {
      v6 = [(SDAutoUnlockAKSManager *)self localDeviceID];
      v7 = [(SDAutoUnlockAKSManager *)self ltkInfoForDeviceID:v6 modern:0];

      v8 = [(SDAutoUnlockAKSManager *)self localDeviceID];
      v9 = [(SDAutoUnlockAKSManager *)self ltkInfoForDeviceID:v8 modern:1];

      v10 = [v7 ltk];
      v11 = [v9 ltk];
      v12 = auto_unlock_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking Local LTKs", v38, 2u);
      }

      if (!(v10 | v11))
      {
        v14 = auto_unlock_log();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_20:

LABEL_21:
          [(SDAutoUnlockAKSManager *)self generateLocalLTKWithAttestation:0, *v38];
LABEL_22:
          v18 = 0;
LABEL_23:

          goto LABEL_24;
        }

        *v38 = 0;
        v19 = "Both LTKs missing, generating new LTK";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v19, v38, 2u);
        goto LABEL_20;
      }

      if (v10 && !v11)
      {
        v13 = sub_10001DBC0(v10, [(SDAutoUnlockAKSManager *)self ltkKeyClassWithAttestation:0], [(SDAutoUnlockAKSManager *)self t208Machine]);
        v14 = auto_unlock_log();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (!v15)
          {
LABEL_12:
            v17 = v7;
LABEL_32:

            v18 = v17;
            if (v18)
            {
              v23 = [(SDAutoUnlockAKSManager *)self localDeviceID];
              v24 = +[SDStatusMonitor sharedMonitor];
              v25 = [v24 computerName];
              v26 = [(SDAutoUnlockAKSManager *)self storeLongTermKey:v18 forDeviceID:v23 name:v25];

              if (v26)
              {
                v27 = auto_unlock_log();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = [(SDAutoUnlockAKSManager *)self localDeviceID];
                  *v38 = 138412546;
                  *&v38[4] = v28;
                  v39 = 2112;
                  v40 = @"YES";
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Saved Local LTK after validation check (device ID: %@, saved: %@)", v38, 0x16u);
                }

                v29 = [v18 ltk];
                [(SDAutoUnlockAKSManager *)self setLocalLTK:v29];
              }
            }

            goto LABEL_23;
          }

          *v38 = 0;
          v16 = "Modern LTK is missing: Storing legacy LTK";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, v38, 2u);
          goto LABEL_12;
        }

        if (!v15)
        {
          goto LABEL_20;
        }

        *v38 = 0;
        v19 = "Modern LTK is missing: Legacy LTK is invalid, regenerating";
        goto LABEL_19;
      }

      if (v10 || !v11)
      {
        v30 = [v10 isEqualToData:v11];
        v31 = [(SDAutoUnlockAKSManager *)self ltkKeyClassWithAttestation:0];
        v32 = [(SDAutoUnlockAKSManager *)self t208Machine];
        if (v30)
        {
          v33 = sub_10001DBC0(v11, v31, v32);
          v34 = auto_unlock_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = @"NO";
            if (v33)
            {
              v35 = @"YES";
            }

            *v38 = 138412290;
            *&v38[4] = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LTKs match (valid: %@)", v38, 0xCu);
          }

          if (v33)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (sub_10001DBC0(v10, v31, v32))
        {
          v14 = auto_unlock_log();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *v38 = 0;
          v16 = "LTK Mismatch: Legacy LTK is valid, overwriting modern LTK";
          goto LABEL_11;
        }

        v36 = sub_10001DBC0(v11, [(SDAutoUnlockAKSManager *)self ltkKeyClassWithAttestation:0], [(SDAutoUnlockAKSManager *)self t208Machine]);
        v14 = auto_unlock_log();
        v37 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!v36)
        {
          if (!v37)
          {
            goto LABEL_20;
          }

          *v38 = 0;
          v19 = "LTK Mismatch: Modern LTK is invalid, regenerating";
          goto LABEL_19;
        }

        if (v37)
        {
          *v38 = 0;
          v22 = "LTK Mismatch: Modern LTK is valid, overwriting legacy LTK";
          goto LABEL_30;
        }
      }

      else
      {
        v20 = sub_10001DBC0(v11, [(SDAutoUnlockAKSManager *)self ltkKeyClassWithAttestation:0], [(SDAutoUnlockAKSManager *)self t208Machine]);
        v14 = auto_unlock_log();
        v21 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!v20)
        {
          if (!v21)
          {
            goto LABEL_20;
          }

          *v38 = 0;
          v19 = "Legacy LTK is missing: Modern LTK is invalid, regenerating";
          goto LABEL_19;
        }

        if (v21)
        {
          *v38 = 0;
          v22 = "Legacy LTK is missing: Storing modern LTK";
LABEL_30:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v22, v38, 2u);
        }
      }

      v17 = v9;
      goto LABEL_32;
    }

    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10015EE30();
    }
  }

  else
  {
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device locked, not checking local LTK", v38, 2u);
    }
  }

LABEL_24:
}

- (id)baseSyncedDictionary
{
  v2 = [(SDAutoUnlockAKSManager *)self baseDictionary];
  [v2 setObject:@"com.apple.continuity.auto-unlock.sync" forKeyedSubscript:kSecAttrAccount];

  return v2;
}

- (id)baseModernSyncedDictionary
{
  v2 = [(SDAutoUnlockAKSManager *)self baseDictionary];
  [v2 setObject:@"com.apple.continuity.auto-unlock.sync" forKeyedSubscript:kSecAttrAccount];
  [v2 setObject:@"AutoUnlock" forKeyedSubscript:kSecAttrSyncViewHint];

  return v2;
}

- (void)checkLocalAttestedLTK
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceKeyBagUnlocked];

  if (v4)
  {
    v5 = [(SDAutoUnlockAKSManager *)self localDeviceID];

    if (v5)
    {
      v6 = [(SDAutoUnlockAKSManager *)self localDeviceID];
      v7 = [(SDAutoUnlockAKSManager *)self ltkInfoForDeviceID:v6 modern:0 attested:1];

      v8 = [v7 ltk];
      if (v8)
      {
        if (sub_10001DBC0(v8, [(SDAutoUnlockAKSManager *)self ltkKeyClassWithAttestation:1], [(SDAutoUnlockAKSManager *)self t208Machine]))
        {
LABEL_15:

          goto LABEL_16;
        }

        v9 = auto_unlock_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LTK Mismatch: Attested LTK is invalid, deleting", buf, 2u);
        }

        [(SDAutoUnlockAKSManager *)self setLocalAttestedLTK:0];
        [(SDAutoUnlockAKSManager *)self deleteLocalAttestedLTK];
        [(SDAutoUnlockAKSManager *)self disablePairingForAllKeyDevices];
        [(SDAutoUnlockAKSManager *)self clearRemoteLTKs];
        v10 = +[NSNotificationCenter defaultCenter];
        [v10 postNotificationName:@"SDAutoUnlockAKSManagerUnexpectedDisablementNotification" object:0];
      }

      else
      {
        v10 = auto_unlock_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Local attested LTK missing", v13, 2u);
        }
      }

      goto LABEL_15;
    }

    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10015EE30();
    }
  }

  else
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device locked, not checking local LTK", v11, 2u);
    }
  }

LABEL_16:
}

- (void)updateDynamicStoreEnabled
{
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v6 = [v3 activeDevice];

  if (v6)
  {
    v4 = [v6 uniqueIDOverride];
    v5 = [(SDAutoUnlockAKSManager *)self deviceEnabledAsKey:v4];
  }

  else
  {
    v5 = 0;
  }

  sub_10001F108(v5);
}

- (void)updateSessionKeys
{
  v3 = objc_opt_new();
  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v4 enabledAutoUnlockDevicesUsingCache:0];
  v6 = [v5 allObjects];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v34 + 1) + 8 * v11) uniqueID];
        [v3 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v9);
  }

  v13 = v3;
  os_unfair_lock_lock(&self->_cachedSessionKeysLock);
  v14 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];

  if (!v14)
  {
    v15 = objc_opt_new();
    [(SDAutoUnlockAKSManager *)self setCachedSessionKeys:v15];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * v20);
        v22 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];
        v23 = [v22 objectForKeyedSubscript:v21];

        if (!v23)
        {
          v24 = [(SDAutoUnlockAKSManager *)self rangingKeyForDeviceID:v21];
          if (v24)
          {
            v25 = [(SDAutoUnlockAKSManager *)self deriveKeyFromSharedSecret:v24];
            v26 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];
            [v26 setObject:v25 forKeyedSubscript:v21];
          }
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v18);
  }

  v27 = auto_unlock_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];
    v29 = [v28 allKeys];
    *buf = 138412290;
    v39 = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Cached session keys for devices %@", buf, 0xCu);
  }

  os_unfair_lock_unlock(&self->_cachedSessionKeysLock);
}

- (void)reloadPairingRecordsIfNeeded
{
  v3 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];

  if (!v3)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reloading pairing records", v5, 2u);
    }

    [(SDAutoUnlockAKSManager *)self loadWatchIDsToPairingRecords];
  }
}

- (NSString)state
{
  v80 = 0;
  v3 = objc_opt_class();
  v47 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  v79 = v4;
  NSAppendPrintF();
  v5 = v4;

  v78 = v5;
  v48 = [(SDAutoUnlockAKSManager *)self localDeviceID];
  NSAppendPrintF();
  v6 = v5;

  v77 = v6;
  NSAppendPrintF();
  v7 = v6;

  v76 = v7;
  if ([(SDAutoUnlockAKSManager *)self viewSyncing])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v49 = v8;
  NSAppendPrintF();
  v9 = v76;

  v75 = v9;
  v10 = +[SDStatusMonitor sharedMonitor];
  if ([v10 deviceWasUnlockedOnce])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v50 = v11;
  NSAppendPrintF();
  v12 = v75;

  v74 = v12;
  v13 = [(SDAutoUnlockAKSManager *)self allKeychainDevices];
  v14 = [v13 allObjects];
  v51 = SFCompactStringFromCollection();
  NSAppendPrintF();
  v15 = v12;

  v73 = v15;
  v52 = [(SDAutoUnlockAKSManager *)self remoteLTKStorageFilePath];
  NSAppendPrintF();
  v16 = v15;

  v72 = v16;
  NSAppendPrintF();
  v17 = v16;

  v59 = self;
  [(SDAutoUnlockAKSManager *)self remoteLTKList];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v61 = v71 = 0u;
  obj = [v61 allKeys];
  v18 = [obj countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v69;
    do
    {
      v21 = 0;
      v22 = v17;
      do
      {
        if (*v69 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v68 + 1) + 8 * v21);
        v24 = [v61 objectForKeyedSubscript:{v23, v53, v55, v57, v58}];
        v25 = [v24 objectForKeyedSubscript:@"LTK Data"];
        if (!v25)
        {
          v25 = [v24 objectForKeyedSubscript:@"Attested LTK Data"];
        }

        v67 = v22;
        v26 = [v24 objectForKeyedSubscript:@"LTK ID"];
        v27 = sub_100021BD4(v25);
        v28 = sub_10005CDC0(v27);
        [v25 description];
        v58 = v57 = v28;
        v53 = v23;
        v55 = v26;
        NSAppendPrintF();
        v17 = v22;

        v21 = v21 + 1;
        v22 = v17;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v68 objects:v82 count:{16, v53, v26, v28, v58}];
    }

    while (v19);
  }

  v66 = v17;
  NSAppendPrintF();
  v29 = v17;

  v30 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v31 = +[SDAutoUnlockTransport sharedTransport];
  v32 = [v31 devicesWithLTKs];
  v33 = [v32 allObjects];

  v34 = [v33 countByEnumeratingWithState:&v62 objects:v81 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v63;
    v37 = v59;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v63 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v39 = *(*(&v62 + 1) + 8 * i);
        v40 = [(SDAutoUnlockAKSManager *)v37 localDeviceID:v53];
        v41 = [v39 isEqualToString:v40];

        if ((v41 & 1) == 0 && [(SDAutoUnlockAKSManager *)v37 escrowSecretExistsForDevice:v39])
        {
          [v30 addObject:v39];
          v42 = [(SDAutoUnlockAKSManager *)v37 rangingKeyForDeviceID:v39];
          v56 = [v42 description];
          NSAppendPrintF();
          v43 = v29;

          [(SDAutoUnlockAKSManager *)v59 keyPairingIDForDeviceID:v39, v39, v56];
          v55 = v53 = v39;
          NSAppendPrintF();
          v29 = v43;

          v37 = v59;
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v62 objects:v81 count:16];
    }

    while (v35);
  }

  v54 = SFCompactStringFromCollection();
  NSAppendPrintF();
  v44 = v29;

  NSAppendPrintF();
  v45 = v44;

  return v44;
}

- (BOOL)viewSyncing
{
  v2 = objc_alloc_init(off_1009717D0());
  v7 = 0;
  v3 = [v2 isManateeAvailable:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100025310();
    }
  }

  return v3;
}

- (NSString)remoteLTKStorageFilePath
{
  remoteLTKStorageFilePath = self->_remoteLTKStorageFilePath;
  if (!remoteLTKStorageFilePath)
  {
    v4 = [(SDAutoUnlockAKSManager *)self autoUnlockFolderPath];
    v5 = [v4 stringByAppendingPathComponent:@"ltk.plist"];
    v6 = self->_remoteLTKStorageFilePath;
    self->_remoteLTKStorageFilePath = v5;

    remoteLTKStorageFilePath = self->_remoteLTKStorageFilePath;
  }

  return remoteLTKStorageFilePath;
}

- (id)remoteLTKList
{
  v3 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = v3;
  v5 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
  v6 = [v5 objectForKeyedSubscript:@"Remote LTKs"];

  if (!v6)
  {
LABEL_3:
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10015EF58(self);
    }
  }

  v8 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
  v9 = [v8 objectForKeyedSubscript:@"Remote LTKs"];

  return v9;
}

- (void)updateLocalLTK
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceSupportsRanging];

  if (v4)
  {
    [(SDAutoUnlockAKSManager *)self loadLocalLTK];

    [(SDAutoUnlockAKSManager *)self loadLocalAttestedLTKIfNecessary];
  }

  else
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device does not support ranging, not loading localLTKs", v6, 2u);
    }
  }
}

- (id)baseRangingDictionary
{
  v2 = [(SDAutoUnlockAKSManager *)self baseDictionary];
  [v2 setObject:@"com.apple.continuity.auto-unlock.rangingkeys" forKeyedSubscript:kSecAttrAccount];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecUseDataProtectionKeychain];

  return v2;
}

- (SDAutoUnlockAKSManager)init
{
  v18.receiver = self;
  v18.super_class = SDAutoUnlockAKSManager;
  v2 = [(SDAutoUnlockAKSManager *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_cachedSessionKeysLock._os_unfair_lock_opaque = 0;
    v4 = IDSCopyLocalDeviceUniqueID();
    localDeviceID = v3->_localDeviceID;
    v3->_localDeviceID = v4;

    v6 = objc_opt_new();
    cachedSessions = v3->_cachedSessions;
    v3->_cachedSessions = v6;

    v8 = objc_opt_new();
    preferredRemoteLTKForDeviceID = v3->_preferredRemoteLTKForDeviceID;
    v3->_preferredRemoteLTKForDeviceID = v8;

    v3->_t208Machine = variable initialization expression of SDAirDropHashStoreCDB.destroyed();
    v10 = objc_opt_new();
    activeAKSSessions = v3->_activeAKSSessions;
    v3->_activeAKSSessions = v10;

    v12 = +[SDAutoUnlockTransport sharedTransport];
    [v12 addClient:v3 forIdentifer:@"A70C5EAF-F24F-48A7-B834-F5297000C7A2"];

    [(SDAutoUnlockAKSManager *)v3 addObservers];
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v3->_localDeviceID;
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Local Unique ID:%@", buf, 0xCu);
    }

    v15 = auto_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (v3->_t208Machine)
      {
        v16 = @"YES";
      }

      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Touch Bar:%@", buf, 0xCu);
    }
  }

  return v3;
}

- (void)start
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceSupportsRanging];

  if (v4)
  {
    [(SDAutoUnlockAKSManager *)self loadWatchIDsToPairingRecords];
    [(SDAutoUnlockAKSManager *)self updateLTKs];
    v5 = +[SDStatusMonitor sharedMonitor];
    v6 = [v5 deviceKeyBagUnlocked];

    if (v6)
    {
      [(SDAutoUnlockAKSManager *)self updateSessionKeys];
    }

    [(SDAutoUnlockAKSManager *)self updateDynamicStoreEnabled];
    v7 = +[SDStatusMonitor sharedMonitor];
    v8 = [v7 myAltDSID];
    [(SDAutoUnlockAKSManager *)self setAltDSID:v8];

    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SDAutoUnlockAKSManager *)self altDSID];
      v11 = @"YES";
      if (!v10)
      {
        v11 = @"NO";
      }

      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DSID: %@", &v12, 0xCu);
    }

    if (sub_100022E18())
    {
      [(SDAutoUnlockAKSManager *)self setAutoUnlockDisabledDueToManagement:1];
      [(SDAutoUnlockAKSManager *)self handleRequiredStateDisabled];
    }

    [(SDAutoUnlockAKSManager *)self updateRangingKeysIfNeccesary];
  }
}

- (void)updateLTKs
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceSupportsRanging];

  if (v4)
  {
    v5 = [(SDAutoUnlockAKSManager *)self loadLocalAttestedLTKIfNecessary];
    [(SDAutoUnlockAKSManager *)self updateRemoteLTKs];
    [(SDAutoUnlockAKSManager *)self checkLocalLTK];
    if (v5)
    {

      [(SDAutoUnlockAKSManager *)self checkLocalAttestedLTK];
    }
  }
}

- (void)addObservers
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10015E924();
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"appleAccountSignedIn:" name:@"com.apple.sharingd.AppleAccountSignIn" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"appleAccountSignedOut:" name:@"com.apple.sharingd.AppleAccountSignOut" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"deviceFirstUnlocked:" name:@"com.apple.sharingd.KeyBagFirstUnlock" object:0];

  v7 = +[MCProfileConnection sharedConnection];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"handleManagementChanged:" name:MCEffectiveSettingsChangedNotification object:0];

  objc_initWeak(&location, self);
  out_token = 0;
  v9 = [kMANotificationDCRTOOBPerformed UTF8String];
  v10 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001531F4;
  handler[3] = &unk_1008CDD58;
  objc_copyWeak(&v12, &location);
  notify_register_dispatch(v9, &out_token, &_dispatch_main_q, handler);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)handleManagementChanged:(id)a3
{
  v4 = SFMainQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001532FC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)deviceFirstUnlocked:(id)a3
{
  v8 = objc_opt_new();
  [v8 setVersion:1];
  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v8 data];
  v6 = IDSDefaultPairedDevice;
  v7 = [[NSUUID alloc] initWithUUIDString:@"A70C5EAF-F24F-48A7-B834-F5297000C7A2"];
  [v4 sendPayload:v5 toDevice:v6 type:308 sessionID:v7 queueOneID:0 timeout:0 errorHandler:&stru_1008D1938];

  [(SDAutoUnlockAKSManager *)self updateRangingKeysIfNeccesary];
}

- (void)appleAccountSignedIn:(id)a3
{
  v3 = sharing_persistent_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AKS received Apple Account sign in", v4, 2u);
  }
}

- (void)appleAccountSignedOut:(id)a3
{
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AKS received Apple Account sign out", v6, 2u);
  }

  [(SDAutoUnlockAKSManager *)self removeAllRemoteLTKsOnSignOut];
  v5 = +[SDAutoUnlockTransport sharedTransport];
  [v5 resetAppleWatchExisted];
}

- (void)screenLockUnlocked:(id)a3
{
  v4 = +[SDStatusMonitor sharedMonitor];
  if ([v4 deviceSupportsRanging])
  {
    [(SDAutoUnlockAKSManager *)self loadLocalUniqueIDIfNeeded];
    [(SDAutoUnlockAKSManager *)self loadLocalLTK];
    [(SDAutoUnlockAKSManager *)self loadLocalAttestedLTKIfNecessary];
    [(SDAutoUnlockAKSManager *)self updateRemoteLTKs];
    [(SDAutoUnlockAKSManager *)self checkLocalLTK];
    [(SDAutoUnlockAKSManager *)self checkLocalAttestedLTK];
    [(SDAutoUnlockAKSManager *)self checkRemoteLTKs];
    [(SDAutoUnlockAKSManager *)self updateSessionKeys];
  }
}

- (void)consoleUserChanged:(id)a3
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 currentConsoleUser];

  if (v4)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109376;
      v7[1] = getuid();
      v8 = 1024;
      v9 = getpid();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current console user changed (uid: %d, pid: %d)", v7, 0xEu);
    }

    v6 = +[SDAutoUnlockAKSManager sharedManager];
    [v6 updateDynamicStoreEnabled];
  }
}

- (id)aksAuthSessionForDeviceID:(id)a3 attestation:(BOOL)a4 sessionType:(int64_t)a5 escrowSecret:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (v8)
  {
    [(SDAutoUnlockAKSManager *)self localAttestedLTK];
  }

  else
  {
    [(SDAutoUnlockAKSManager *)self localLTK];
  }
  v12 = ;
  v13 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v10];
  v14 = auto_unlock_log();
  v15 = v14;
  if (v13 && v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"YES";
      if (!v11)
      {
        v16 = @"NO";
      }

      v26 = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Escrow secret (exists: %@, device ID: %@)", &v26, 0x16u);
    }

    v17 = auto_unlock_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10015E9D0();
    }

    if (v11)
    {
      v18 = [[SDAutoUnlockAKSSession alloc] initWithLocalLTK:v12 remoteLTK:v13 sessionType:a5 originator:1 deviceID:v10 escrowSecret:v11];
      goto LABEL_20;
    }

    v19 = auto_unlock_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10015EA38();
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = [(SDAutoUnlockAKSManager *)self viewSyncing];
      v26 = 138414083;
      v22 = @"NO";
      v27 = v10;
      v28 = 2112;
      if (v21)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v29 = v23;
      if (v12)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v30 = 2112;
      if (v13)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v31 = v24;
      v32 = 2113;
      if (v8)
      {
        v22 = @"YES";
      }

      v33 = v12;
      v34 = 2112;
      v35 = v25;
      v36 = 2113;
      v37 = v13;
      v38 = 2112;
      v39 = @"YES";
      v40 = 2112;
      v41 = v22;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "AKS session missing keys (device: %@, syncing %@, local exists %@, local LTK: %{private}@, remote exists %@, remote LTK: %{private}@, originator: %@, attested: %@)", &v26, 0x52u);
    }
  }

  v18 = 0;
LABEL_20:

  return v18;
}

- (id)aksAuthorizationSessionForDeviceID:(id)a3 attestation:(BOOL)a4 originator:(BOOL)a5 externalACMContext:(id)a6 sessionType:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a6;
  if (a4)
  {
    [(SDAutoUnlockAKSManager *)self localAttestedLTK];
  }

  else
  {
    [(SDAutoUnlockAKSManager *)self localLTK];
  }
  v14 = ;
  v15 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v12];
  v16 = 0;
  if (!v15 || !v14)
  {
    goto LABEL_24;
  }

  if (!v9)
  {
    v16 = [[SDAutoUnlockAKSSession alloc] initWithLocalLTK:v14 remoteLTK:v15 sessionType:a7 originator:0 deviceID:v12 externalACMContext:v13];
    goto LABEL_24;
  }

  if (a7 != 3)
  {
    v17 = 0;
LABEL_20:
    v22 = [SDAutoUnlockAKSSession alloc];
    if (v13)
    {
      v23 = [(SDAutoUnlockAKSSession *)v22 initWithLocalLTK:v14 remoteLTK:v15 sessionType:a7 originator:1 deviceID:v12 externalACMContext:v13];
    }

    else
    {
      v23 = [(SDAutoUnlockAKSSession *)v22 initWithLocalLTK:v14 remoteLTK:v15 sessionType:a7 originator:1 deviceID:v12 escrowSecret:v17];
    }

    v16 = v23;

    goto LABEL_24;
  }

  v17 = [(SDAutoUnlockAKSManager *)self escrowSecretForDevice:v12];
  v18 = auto_unlock_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"YES";
    if (!v17)
    {
      v19 = @"NO";
    }

    v25 = 138412546;
    v26 = v19;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Escrow secret for authorization (exists: %@, device ID: %@)", &v25, 0x16u);
  }

  v20 = auto_unlock_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10015E9D0();
  }

  if (v17)
  {
    goto LABEL_20;
  }

  v21 = auto_unlock_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10015EA74();
  }

  v16 = 0;
LABEL_24:

  return v16;
}

- (BOOL)canCreateTokenSessionForDeviceID:(id)a3
{
  v3 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = sub_100021BD4(v3) == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)encryptMessageData:(id)a3 deviceID:(id)a4 encryptedMessage:(id *)a5 authTag:(id *)a6 nonce:(id *)a7
{
  v12 = a4;
  v23 = 0;
  v22 = 0;
  v13 = [a3 mutableCopy];
  v21[0] = 0;
  v21[1] = 0;
  if (a5 && a6 && a7)
  {
    v14 = [(SDAutoUnlockAKSManager *)self sessionKeyForDeviceID:v12];
    if (v14)
    {
      if (RandomBytes())
      {
        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10015EB2C();
        }
      }

      else
      {
        [v14 bytes];
        [v14 length];
        [v13 mutableBytes];
        v19 = [v13 length];
        v20 = [v13 mutableBytes];
        if (!CryptoAEADEncryptMessageOneShot())
        {
          v18 = v13;
          *a5 = v13;
          *a6 = [NSData dataWithBytes:v21 length:16, v19, v20, v21, 16];
          *a7 = [NSData dataWithBytes:&v22 length:12];
          v16 = 1;
          goto LABEL_17;
        }

        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10015EBA4();
        }
      }
    }

    else
    {
      v15 = auto_unlock_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10015EC1C();
      }
    }
  }

  else
  {
    v14 = auto_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10015EAB0();
    }
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (id)decryptMessage:(id)a3 authTag:(id)a4 nonce:(id)a5 bluetoothID:(id)a6 cachedDevices:(BOOL)a7 errorCode:(int64_t *)a8
{
  v9 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v61 = objc_opt_new();
  p_cache = SDActivityDecryptionKey.cache;
  v18 = +[SDAutoUnlockTransport sharedTransport];
  v19 = v18;
  if (v9)
  {
    v20 = [v18 cachedIDSDeviceIDsForBluetoothID:v16];

    v21 = auto_unlock_log();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v22 = "Decrypting with cached device IDs";
  }

  else
  {
    v20 = [v18 idsDeviceIDsForBluetoothID:v16];

    v21 = auto_unlock_log();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v22 = "Decrypting without cached device IDs";
  }

  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
LABEL_7:

  if ([v20 count] >= 2)
  {
    os_unfair_lock_lock(&self->_cachedSessionKeysLock);
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100154D50;
    v69[3] = &unk_1008D1960;
    v69[4] = self;
    v23 = [v20 sortedArrayUsingComparator:v69];

    os_unfair_lock_unlock(&self->_cachedSessionKeysLock);
    v20 = v23;
  }

  v24 = auto_unlock_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Attempting to decrypt message with sorted device IDs %@", buf, 0xCu);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v20;
  v63 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v63)
  {
    v52 = v9;
    v53 = a8;
    v54 = v16;
    v59 = v14;
    v25 = 0;
    v62 = *v66;
    v56 = v15;
    v57 = v13;
    v26 = v14;
    while (2)
    {
      for (i = 0; i != v63; i = i + 1)
      {
        if (*v66 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v65 + 1) + 8 * i);
        v29 = [(SDAutoUnlockAKSManager *)self sessionKeyForDeviceID:v28, v48, v49, v50, v51];
        if (v29)
        {
          v58 = v25;
          v60 = v28;
          [v61 addObject:v28];
          v30 = [[NSMutableData alloc] initWithLength:{objc_msgSend(v13, "length")}];
          [v29 bytes];
          [v29 length];
          [v15 bytes];
          [v15 length];
          [v13 bytes];
          v31 = [v13 length];
          v32 = v30;
          v33 = [v30 mutableBytes];
          v50 = [v26 bytes];
          v51 = [v26 length];
          v48 = v31;
          v49 = v33;
          v34 = CryptoAEADDecryptMessageOneShot();
          v35 = auto_unlock_log();
          v36 = v35;
          if (!v34)
          {
            v37 = v32;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [v32 length];
              *buf = 138412546;
              v71 = v60;
              v72 = 2048;
              v73 = v39;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Decrypted message (deviceID: %@, length: %ld)", buf, 0x16u);
            }

            v38 = 0;
            v15 = v56;
            v13 = v57;
            goto LABEL_27;
          }

          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v71 = v60;
            v72 = 2048;
            v73 = v34;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error decryption failure (device ID: %@, error %ld)", buf, 0x16u);
          }

          v25 = 190;
          v15 = v56;
          v13 = v57;
        }
      }

      v63 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v63)
      {
        continue;
      }

      break;
    }

    v58 = v25;
    v37 = 0;
    v38 = 1;
LABEL_27:
    v14 = v59;
    a8 = v53;
    v16 = v54;
    p_cache = (SDActivityDecryptionKey + 16);
    v9 = v52;
  }

  else
  {
    v37 = 0;
    v58 = 0;
    v38 = 1;
  }

  v40 = auto_unlock_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v61;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Devices with session keys: %@", buf, 0xCu);
  }

  if ((v38 & v9) != 1)
  {
    if ([obj count])
    {
      v44 = 191;
      if (!v38)
      {
        v44 = v58;
      }

      if (!a8)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v47 = auto_unlock_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_10015EC8C(v16);
      }

      v44 = 198;
      if (!a8)
      {
        goto LABEL_40;
      }
    }

    *a8 = v44;
LABEL_40:
    v43 = v37;
    goto LABEL_41;
  }

  v41 = auto_unlock_log();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed to find key with cached devices, trying without cache", buf, 2u);
  }

  v42 = [p_cache + 153 sharedTransport];
  [v42 logBluetoothIDCache];

  v43 = [(SDAutoUnlockAKSManager *)self decryptMessage:v13 authTag:v14 nonce:v15 bluetoothID:v16 cachedDevices:0 errorCode:a8];
LABEL_41:
  v45 = v43;

  return v45;
}

- (void)addDeviceIDMissingSessionKey:(id)a3
{
  v12 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];

  if (!v5)
  {
    v6 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
  }

  v7 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
  v8 = [v7 containsObject:v12];

  if ((v8 & 1) == 0)
  {
    v9 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
    [v9 addObject:v12];

    v10 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
    [v4 setObject:v10 forKey:@"AutoUnlockDevicesMissingSessionKey"];

    [v4 synchronize];
    v11 = +[SDAutoUnlockTransport sharedTransport];
    [v11 refreshAutoUnlockDeviceCache];
  }
}

- (void)removeDeviceIDMissingSessionKey:(id)a3
{
  v4 = a3;
  v10 = +[NSUserDefaults standardUserDefaults];
  v5 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];

  if (!v5)
  {
    v6 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
  }

  v7 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
  [v7 removeObject:v4];

  v8 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
  [v10 setObject:v8 forKey:@"AutoUnlockDevicesMissingSessionKey"];

  [v10 synchronize];
  v9 = +[SDAutoUnlockTransport sharedTransport];
  [v9 refreshAutoUnlockDeviceCache];
}

- (void)clearAllDeviceIDsMissingSessionKeys
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v3 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];

  if (!v3)
  {
    v4 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
  }

  v5 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
  [v5 removeAllObjects];

  v6 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
  [v8 setObject:v6 forKey:@"AutoUnlockDevicesMissingSessionKey"];

  [v8 synchronize];
  v7 = +[SDAutoUnlockTransport sharedTransport];
  [v7 refreshAutoUnlockDeviceCache];
}

- (id)deviceIDsMissingSessionKey
{
  v3 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];

  if (!v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 arrayForKey:@"AutoUnlockDevicesMissingSessionKey"];
    v6 = [v5 mutableCopy];
    [(SDAutoUnlockAKSManager *)self setWatchIDsMissingSessionKey:v6];

    v7 = [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];

    if (!v7)
    {
      v8 = objc_opt_new();
      [(SDAutoUnlockAKSManager *)self setWatchIDsMissingSessionKey:v8];
    }
  }

  return [(SDAutoUnlockAKSManager *)self watchIDsMissingSessionKey];
}

- (void)generateLocalLTKWithAttestation:(BOOL)a3 forceDCRTRetrievalWithCompletion:(id)a4
{
  v6 = a4;
  v7 = sharing_persistent_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generating local LTK", buf, 2u);
  }

  v8 = +[SDStatusMonitor sharedMonitor];
  v9 = [v8 runningAsSetupUser];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(SDAutoUnlockAKSManager *)self localDeviceID];
    v10 = v11 != 0;
  }

  if (SFDeviceClassCodeGet() == 7 || SFDeviceIsRealityDevice())
  {
    if (!v10 || ([v8 deviceKeyBagUnlocked] & 1) == 0 && (objc_msgSend(v8, "deviceKeyBagDisabled") & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100155654;
    v25[3] = &unk_1008CF450;
    v25[4] = self;
    v28 = a3;
    v26 = v8;
    v19 = v6;
    v27 = v19;
    v20 = objc_retainBlock(v25);
    v21 = v20;
    if (v19)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100155934;
      v22[3] = &unk_1008D19B0;
      v22[4] = self;
      v23 = v20;
      v24 = v19;
      sub_10005D638(v22);
    }

    else
    {
      (v20[2])(v20);
    }

    goto LABEL_22;
  }

  if (v10)
  {
    goto LABEL_18;
  }

LABEL_11:
  v12 = auto_unlock_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(SDAutoUnlockAKSManager *)self localDeviceID];
    v14 = [v8 deviceKeyBagState];
    v15 = @"NO";
    *buf = 138412802;
    v32 = v13;
    if (v9)
    {
      v15 = @"YES";
    }

    v33 = 1024;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to generate LTK (local device ID: %@, keybag state: %d, setup user: %@)", buf, 0x1Cu);
  }

  if (v6)
  {
    v16 = SFAutoUnlockErrorDomain;
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Unable to generate LTK";
    v17 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v18 = [NSError errorWithDomain:v16 code:149 userInfo:v17];

    (*(v6 + 2))(v6, 0, v18);
  }

LABEL_22:
}

- (id)ltkHashForLocalLTK
{
  v3 = [(SDAutoUnlockAKSManager *)self localLTK];

  if (v3)
  {
    v4 = [(SDAutoUnlockAKSManager *)self localLTK];
    v5 = sub_1001F0D2C(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateLocalLTKForSignout
{
  v3 = sharing_persistent_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating local ltk for sign out", v9, 2u);
  }

  v4 = [(SDAutoUnlockAKSManager *)self localDeviceID];
  v5 = [(SDAutoUnlockAKSManager *)self ltkInfoForDeviceID:v4];

  [v5 setSignout:1];
  v6 = [(SDAutoUnlockAKSManager *)self localDeviceID];
  v7 = +[SDStatusMonitor sharedMonitor];
  v8 = [v7 computerName];
  [(SDAutoUnlockAKSManager *)self storeLongTermKey:v5 forDeviceID:v6 name:v8];
}

- (int64_t)ltkKeyClassWithAttestation:(BOOL)a3
{
  v3 = a3;
  v4 = SFDeviceClassCodeGet();
  if (v4 == 7)
  {
    v5 = auto_unlock_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      v8 = 1;
      goto LABEL_20;
    }

    *buf = 0;
    v6 = "Using key class A for watch";
    v7 = buf;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    goto LABEL_5;
  }

  v9 = v4;
  if (!SFDeviceIsRealityDevice())
  {
    v5 = auto_unlock_log();
    v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v9 == 5)
    {
      if (v3)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        v16 = 0;
        v6 = "Using key class A for mac";
        v7 = &v16;
        goto LABEL_4;
      }

      if (v10)
      {
        *v15 = 0;
        v11 = "Using key class C for mac";
        v8 = 2;
        v12 = v15;
        goto LABEL_18;
      }
    }

    else if (v10)
    {
      v14 = 0;
      v11 = "Using key class C";
      v8 = 2;
      v12 = &v14;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
      goto LABEL_20;
    }

    v8 = 2;
    goto LABEL_20;
  }

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using key class D", v17, 2u);
  }

  v8 = 3;
LABEL_20:

  return v8;
}

- (int64_t)keyClassForDeviceID:(id)a3
{
  v3 = a3;
  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v4 idsDeviceForUniqueID:v3];

  v6 = SFDeviceClassCodeGet();
  if (v5)
  {
    v7 = v6;
    v8 = +[SDAutoUnlockTransport sharedTransport];
    v9 = [v8 deviceTypeForDevice:v5];

    if (v9 > 3)
    {
      if (v9 == 5)
      {
LABEL_12:
        v9 = 3;
        goto LABEL_14;
      }

      if (v9 != 4)
      {
LABEL_13:
        v9 = 1;
        goto LABEL_14;
      }

      if (v7 == 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    else if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (BOOL)deviceIsLocalDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self localDeviceID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (int)ltkSyncStatusForDeviceID:(id)a3 hash:(id)a4 modern:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(SDAutoUnlockAKSManager *)self remoteLTKEntryForDeviceID:a3];
  v10 = v9;
  if (v5)
  {
    v11 = @"Modern LTK Data";
  }

  else
  {
    v11 = @"LTK Data";
  }

  if (v5)
  {
    v12 = @"Modern LTK Hash";
  }

  else
  {
    v12 = @"LTK Hash";
  }

  v13 = [v9 objectForKeyedSubscript:v11];

  v14 = [v10 objectForKeyedSubscript:v12];
  v15 = [v8 isEqualToData:v14];

  if (v13 && (v15 & 1) != 0)
  {
    v16 = 3;
  }

  else if (v8 && v13 && v14)
  {
    v16 = 2;
  }

  else
  {
    if (v8)
    {
      v17 = v14 == 0;
    }

    else
    {
      v17 = 1;
    }

    v16 = v17 && v13 != 0;
    if (((v16 | v15 ^ 1) & 1) == 0)
    {
      v19 = auto_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_10015EE6C();
      }

      v16 = 0;
    }
  }

  return v16;
}

- (void)generateLocalAttestedLTKIfNeccessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"forcelocalAttestedLTKRegeneration"];
  v7 = [(SDAutoUnlockAKSManager *)self localAttestedLTK];

  v8 = auto_unlock_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7 || (v6 & 1) != 0)
  {
    if (v9)
    {
      v11 = @"NO";
      if (v6)
      {
        v11 = @"YES";
      }

      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Generating cached local attested LTK (forcedRegeneration: %@)", &v12, 0xCu);
    }

    [(SDAutoUnlockAKSManager *)self generateLocalLTKWithAttestation:1 forceDCRTRetrievalWithCompletion:v4];
  }

  else
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning cached local attested LTK", &v12, 2u);
    }

    v10 = [(SDAutoUnlockAKSManager *)self localAttestedLTK];
    v4[2](v4, v10, 0);

    v4 = v10;
  }
}

- (void)checkRemoteLTKForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self longTermKeyForDevice:v4 modern:0];
  v6 = [(SDAutoUnlockAKSManager *)self longTermKeyForDevice:v4 modern:1];
  v7 = [(SDAutoUnlockAKSManager *)self remoteLTKHashForDeviceID:v4 modern:0];
  v8 = sub_1001F0D2C(v5);
  v9 = v8;
  if (v8 && ([v8 isEqualToData:v7] & 1) == 0)
  {
    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Remote LTK needs resigning for pairing for hash", v13, 2u);
    }

    [(SDAutoUnlockAKSManager *)self signLTK:v5 modernLTK:v6 forDeviceID:v4];
  }

  else
  {
    v10 = [(SDAutoUnlockAKSManager *)self remoteLTKHashForDeviceID:v4 modern:1];

    v11 = sub_1001F0D2C(v6);

    if (v11)
    {
      if (([v11 isEqualToData:v10] & 1) == 0)
      {
        [(SDAutoUnlockAKSManager *)self signLTK:v5 modernLTK:v6 forDeviceID:v4];
      }

      v9 = v11;
    }

    else
    {
      v9 = 0;
    }

    v7 = v10;
  }
}

- (void)checkPhoneRemoteLTKs
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 idsDevicesIDs];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = +[SDAutoUnlockTransport sharedTransport];
        v12 = [v11 deviceTypeForDeviceID:v10];

        if (v12 == 2 && [(SDAutoUnlockAKSManager *)self deviceEnabledAsKeyForIDSDeviceID:v10])
        {
          [(SDAutoUnlockAKSManager *)self removeCorruptedRemoteLTKIfNecessaryForDeviceID:v10];
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (BOOL)signLTKsForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self longTermKeyForDevice:v4 modern:0];
  v6 = [(SDAutoUnlockAKSManager *)self longTermKeyForDevice:v4 modern:1];
  LOBYTE(self) = [(SDAutoUnlockAKSManager *)self signLTK:v5 modernLTK:v6 forDeviceID:v4];

  return self;
}

- (BOOL)signLTK:(id)a3 ltkModDate:(id)a4 modernLTK:(id)a5 modernLTKModDate:(id)a6 deviceID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(SDAutoUnlockAKSManager *)self localLTK];
  v18 = [(SDAutoUnlockAKSManager *)self keyClassForDeviceID:v16];
  if ((v18 | 2) != 2)
  {
    v20 = v18;
    v21 = auto_unlock_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = @"YES";
      *buf = 138412802;
      v35 = v16;
      if (!v12)
      {
        v22 = @"NO";
      }

      v36 = 2112;
      v37 = v22;
      v38 = 1024;
      LODWORD(v39) = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Signing remote LTK (device: %@ LTK: %@, class: %d)", buf, 0x1Cu);
    }

    if (!(v12 | v14) || !v17)
    {
      v25 = auto_unlock_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = @"NO";
        *buf = 138413059;
        if (v12)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        v35 = v31;
        v36 = 2113;
        v37 = v12;
        if (v17)
        {
          v30 = @"YES";
        }

        v38 = 2112;
        v39 = v30;
        v40 = 2113;
        v41 = v17;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Missing signing info (remoteLTK exists %@, remoteLTK %{private}@, localLTK exists %@, localLTK %{private}@)", buf, 0x2Au);
      }

      v19 = 0;
      goto LABEL_26;
    }

    if (v12)
    {
      v23 = sub_10005D3B0(v12, v20, v17, 2);
      if (v23)
      {
        v33 = v23;
        v23 = sub_1001F0D2C(v12);
        v24 = v23 != 0;
        goto LABEL_17;
      }

      v24 = 0;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v33 = 0;
LABEL_17:
    v32 = v23;
    if (v14)
    {
      v26 = sub_10005D3B0(v14, v20, v17, 2);
      if (v26)
      {
        v27 = sub_1001F0D2C(v14);
        if (v27)
        {
          goto LABEL_22;
        }
      }

      if (v24)
      {
LABEL_21:
        v27 = 0;
LABEL_22:
        v28 = v32;
        [(SDAutoUnlockAKSManager *)self addRemoteLTK:v33 ltkHash:v32 ltkModDate:v13 modernLTK:v26 modernLTKHash:v27 modernLTKModeDate:v15 deviceID:v16];

        v19 = 1;
LABEL_25:

        v25 = v33;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      v26 = 0;
      if (v24)
      {
        goto LABEL_21;
      }
    }

    v19 = 0;
    v28 = v32;
    goto LABEL_25;
  }

  v19 = 0;
LABEL_27:

  return v19;
}

- (id)keychainDevices:(BOOL)a3
{
  v3 = a3;
  result = 0;
  v5 = objc_opt_new();
  if (v3)
  {
    [(SDAutoUnlockAKSManager *)self baseModernSyncedDictionary];
  }

  else
  {
    [(SDAutoUnlockAKSManager *)self baseSyncedDictionary];
  }
  v6 = ;
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
  [v6 setObject:kSecAttrSynchronizableAny forKeyedSubscript:kSecAttrSynchronizable];
  [v6 setObject:kSecMatchLimitAll forKeyedSubscript:kSecMatchLimit];
  if (!SecItemCopyMatching(v6, &result))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = result;
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

          v12 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:{kSecAttrService, v14}];
          if (![(SDAutoUnlockAKSManager *)self deviceIsLocalDevice:v12])
          {
            [v5 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (id)modificationDataForDeviceID:(id)a3 modern:(BOOL)a4
{
  v6 = a3;
  result = 0;
  if (a4)
  {
    [(SDAutoUnlockAKSManager *)self modernSyncedDictionaryForDevice:v6];
  }

  else
  {
    [(SDAutoUnlockAKSManager *)self syncedDictionaryForDevice:v6];
  }
  v7 = ;
  v8 = [[NSMutableDictionary alloc] initWithDictionary:v7];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
  v9 = SecItemCopyMatching(v8, &result);
  if (v9 == -25300)
  {
    v12 = 0;
  }

  else
  {
    v10 = v9;
    if (v9)
    {
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Query for attributtes status: %d", buf, 8u);
      }

      v12 = 0;
    }

    else
    {
      v11 = result;
      v12 = [result objectForKeyedSubscript:kSecAttrModificationDate];
    }
  }

  return v12;
}

- (id)modernSignedDevices
{
  v3 = objc_opt_new();
  v4 = [(SDAutoUnlockAKSManager *)self remoteLTKList];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100156D94;
  v8[3] = &unk_1008D19D8;
  v9 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (id)signedDevices
{
  v3 = objc_opt_new();
  v4 = [(SDAutoUnlockAKSManager *)self remoteLTKList];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100156EF0;
  v8[3] = &unk_1008D19D8;
  v9 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (void)signAndStoreRemoteLTK:(id)a3 forDeviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 138412290;
    *&v23[4] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to store remote LTK for %@", v23, 0xCu);
  }

  v9 = [(SDAutoUnlockAKSManager *)self localAttestedLTK];
  v10 = [(SDAutoUnlockAKSManager *)self ltkKeyClassWithAttestation:1];
  v11 = [(SDAutoUnlockAKSManager *)self keyClassForDeviceID:v7];
  v12 = auto_unlock_log();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"YES";
      *v23 = 138413058;
      *&v23[12] = 2112;
      *&v23[4] = v7;
      if (!v6)
      {
        v14 = @"NO";
      }

      *&v23[14] = v14;
      v24 = 1024;
      *v25 = v11;
      *&v25[4] = 1024;
      *&v25[6] = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Signing remote LTK (device: %@ LTK: %@, class: %d) with localLTK (class: %d)", v23, 0x22u);
    }

    if (v6 && v9)
    {
      v13 = sub_10005D3B0(v6, v11, v9, v10);
      if (v13)
      {
        v15 = [(SDAutoUnlockAKSManager *)self remoteLTKList];
        v16 = [v15 mutableCopy];

        v17 = [v16 objectForKeyedSubscript:v7];

        if (v17)
        {
          v18 = auto_unlock_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Overriding existing LTK", v23, 2u);
          }
        }

        v27 = @"Attested LTK Data";
        v28 = v13;
        v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1, *v23];
        [v16 setObject:v19 forKeyedSubscript:v7];

        v20 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
        [v20 setObject:v16 forKeyedSubscript:@"Remote LTKs"];

        [(SDAutoUnlockAKSManager *)self saveRemoteLTKs];
        [(SDAutoUnlockAKSManager *)self updatePreferredRemoteLTKForDeviceID:v7];
      }

      else
      {
        v16 = auto_unlock_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10015EEAC();
        }
      }
    }

    else
    {
      v13 = auto_unlock_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = @"NO";
        *v23 = 138413059;
        if (v6)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        *&v23[4] = v22;
        *&v23[12] = 2113;
        *&v23[14] = v6;
        if (v9)
        {
          v21 = @"YES";
        }

        v24 = 2112;
        *v25 = v21;
        *&v25[8] = 2113;
        v26 = v9;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Missing signing info (remoteLTK exists %@, remoteLTK %{private}@, localLTK exists %@, localLTK %{private}@)", v23, 0x2Au);
      }
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10015EEE8();
  }
}

- (id)allRemoteLTKData
{
  v3 = objc_opt_new();
  v4 = [(SDAutoUnlockAKSManager *)self remoteLTKList];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001573D0;
  v8[3] = &unk_1008D19D8;
  v9 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (id)remoteLTKForDeviceID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      [(SDAutoUnlockAKSManager *)self updatePreferredRemoteLTKForDeviceID:v4];
      v7 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
      v6 = [v7 objectForKeyedSubscript:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hashMatchesAnyRemoteLTKForDeviceID:(id)a3 ltkHash:(id)a4 isPreferred:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (!v11)
  {
    [(SDAutoUnlockAKSManager *)self updatePreferredRemoteLTKForDeviceID:v8];
    v12 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
    v11 = [v12 objectForKeyedSubscript:v8];

    if (!v11)
    {
      v20 = 0;
      v21 = 0;
      if (!a5)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v26 = a5;
  v13 = [(SDAutoUnlockAKSManager *)self remoteLTKEntryForDeviceID:v8];
  v14 = [v13 objectForKeyedSubscript:@"LTK Data"];
  v15 = [v13 objectForKeyedSubscript:@"Modern LTK Data"];
  v16 = [v14 isEqualToData:v15];
  v17 = [v11 isEqualToData:v15];
  v18 = [(SDAutoUnlockAKSManager *)self remoteLTKHashForDeviceID:v8 modern:0];
  v19 = [(SDAutoUnlockAKSManager *)self remoteLTKHashForDeviceID:v8 modern:1];
  if ([v9 isEqualToData:v18])
  {
    v20 = v16 | v17 ^ 1;
LABEL_7:
    v21 = 1;
    goto LABEL_16;
  }

  if ([v9 isEqualToData:v19])
  {
    v20 = v16 | v17;
    goto LABEL_7;
  }

  v22 = auto_unlock_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"nil";
    *buf = 138413058;
    if (v18)
    {
      v24 = v18;
    }

    else
    {
      v24 = @"nil";
    }

    v28 = v8;
    v29 = 2112;
    if (v19)
    {
      v23 = v19;
    }

    v30 = v9;
    v31 = 2112;
    v32 = v24;
    v33 = 2112;
    v34 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "LTK hashes do not match {\n\tdevice ID: %@, \n\trequestLTKHash: %@, \n\tlegacyRemoteLTKHash: %@, \n\tmodernRemoteLTKHash: %@\n}", buf, 0x2Au);
  }

  v20 = 0;
  v21 = 0;
LABEL_16:

  a5 = v26;
  if (v26)
  {
LABEL_17:
    *a5 = v20 & 1;
  }

LABEL_18:

  return v21;
}

- (id)remoteLTKHashForDeviceID:(id)a3 modern:(BOOL)a4
{
  v4 = a4;
  v5 = [(SDAutoUnlockAKSManager *)self remoteLTKEntryForDeviceID:a3];
  v6 = v5;
  if (v4)
  {
    v7 = @"Modern LTK Hash";
  }

  else
  {
    v7 = @"LTK Hash";
  }

  v8 = [v5 objectForKeyedSubscript:v7];

  return v8;
}

- (id)remoteLTKEntryForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self remoteLTKList];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)updatePreferredRemoteLTKForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self remoteLTKEntryForDeviceID:v4];
  v6 = [v5 objectForKeyedSubscript:@"LTK Data"];
  v7 = [v5 objectForKeyedSubscript:@"Modern LTK Data"];
  v8 = [v5 objectForKeyedSubscript:@"Attested LTK Data"];
  if (v8)
  {
    v9 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
    v10 = v9;
    v11 = v8;
LABEL_3:
    [v9 setObject:v11 forKeyedSubscript:v4];
LABEL_4:

    goto LABEL_5;
  }

  if (!(v6 | v7))
  {
    v10 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
    [v10 removeObjectForKey:v4];
    goto LABEL_4;
  }

  if (v6 && !v7)
  {
    goto LABEL_9;
  }

  if (!v6 && v7)
  {
    v9 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
    v10 = v9;
    v11 = v7;
    goto LABEL_3;
  }

  if ([v6 isEqualToData:v7])
  {
LABEL_9:
    v9 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
    v10 = v9;
    v11 = v6;
    goto LABEL_3;
  }

  v12 = auto_unlock_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LTK's are mismatched between keychain views (device ID: %@)", &v21, 0xCu);
  }

  v13 = [v5 objectForKeyedSubscript:@"LTK Mod Date"];
  v14 = [v5 objectForKeyedSubscript:@"Modern LTK Mod Date"];
  v15 = v14;
  if ((!v6 || !v13 || v14) && (v7 && v14 && !v13 || v13 && v14 && (!v6 || ([v13 timeIntervalSinceDate:v14], v19 < 0.0)) && v7 && (objc_msgSend(v15, "timeIntervalSinceDate:", v13), v20 >= 0.0)))
  {
    v16 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
    v17 = v16;
    v18 = v7;
  }

  else
  {
    v16 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
    v17 = v16;
    v18 = v6;
  }

  [v16 setObject:v18 forKeyedSubscript:v4];

LABEL_5:
}

- (void)sendLTKResponseWithPayload:(id)a3 viewState:(id)a4 needsUnlock:(id)a5 currentlySyncing:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  [v13 setVersion:2];
  if (v9)
  {
    [v13 setLtkData:v9];
  }

  if (v10)
  {
    [v13 setViewState:{objc_msgSend(v10, "BOOLValue")}];
  }

  if (v11)
  {
    [v13 setNeedsUnlock:{objc_msgSend(v11, "BOOLValue")}];
  }

  if (v12)
  {
    [v13 setCurrentlySyncing:{objc_msgSend(v12, "BOOLValue")}];
  }

  v14 = auto_unlock_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending LTK Response %@", buf, 0xCu);
  }

  v15 = +[SDAutoUnlockTransport sharedTransport];
  v16 = [v13 data];
  v17 = IDSDefaultPairedDevice;
  v18 = [[NSUUID alloc] initWithUUIDString:@"A70C5EAF-F24F-48A7-B834-F5297000C7A2"];
  [v15 sendPayload:v16 toDevice:v17 type:202 sessionID:v18 queueOneID:@"com.apple.sharing.auto-unlock.watch-ltk-response" timeout:0 errorHandler:&stru_1008D19F8];
}

- (void)handleLTKRequest:(id)a3
{
  v4 = a3;
  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 deviceWasUnlockedOnce];

  v7 = [[SDAutoUnlockLTKRequest alloc] initWithData:v4];
  if (v6)
  {
    if ([(SDAutoUnlockLTKRequest *)v7 hasLocalID]&& [(SDAutoUnlockLTKRequest *)v7 hasLtk])
    {
      v8 = [(SDAutoUnlockAKSManager *)self ltksForRequest:v7];
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(__CFString *)v8 allKeys];
        *buf = 138412290;
        v40 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending LTKs for devices to Watch: %@", buf, 0xCu);
      }

      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v40 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending LTKs to Watch: %{private}@", buf, 0xCu);
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100158354;
      v36[3] = &unk_1008D1A20;
      v12 = v8;
      v37 = v12;
      v38 = self;
      v13 = objc_retainBlock(v36);
      if ([(SDAutoUnlockLTKRequest *)v7 hasCheckViewState]&& [(SDAutoUnlockLTKRequest *)v7 checkViewState])
      {
        v14 = [(SDAutoUnlockAKSManager *)self viewSyncing];
        v15 = auto_unlock_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "View syncing", buf, 2u);
          }

          (v13[2])(v13, &__kCFBooleanTrue, &__kCFBooleanFalse, &__kCFBooleanTrue);
        }

        else
        {
          if (v16)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Posting follow up", buf, 2u);
          }

          v31 = +[CDPFollowUpContext contextForStateRepair];
          [v31 setShouldNotify:1];
          [v31 setForce:1];
          v32 = objc_alloc_init(CDPFollowUpController);
          v35 = 0;
          [v32 postFollowUpWithContext:v31 error:&v35];
          v33 = v35;
          if (v33)
          {
            v34 = auto_unlock_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10015F134();
            }
          }

          (v13[2])(v13, &__kCFBooleanFalse, &__kCFBooleanFalse, &__kCFBooleanFalse);
        }
      }

      else
      {
        v19 = auto_unlock_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "View sync state not requested", buf, 2u);
        }

        (v13[2])(v13, 0, 0, 0);
      }

      v20 = +[SDAutoUnlockTransport sharedTransport];
      v21 = [v20 activeDevice];

      v22 = objc_opt_new();
      [v22 setVersion:2];
      v23 = [(SDAutoUnlockLTKRequest *)v7 ltk];
      [v22 setLtk:v23];

      if ([(SDAutoUnlockLTKRequest *)v7 hasLtkID])
      {
        v24 = [(SDAutoUnlockLTKRequest *)v7 ltkID];
        [v22 setLtkID:v24];
      }

      v25 = [(SDAutoUnlockLTKRequest *)v7 localID];
      v26 = [v21 name];
      v27 = [(SDAutoUnlockAKSManager *)self storeLongTermKey:v22 forDeviceID:v25 name:v26];

      v28 = auto_unlock_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = @"NO";
        if (v27)
        {
          v29 = @"YES";
        }

        *buf = 138412290;
        v40 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Stored Watch LTK %@", buf, 0xCu);
      }

      if (v27)
      {
        [(SDAutoUnlockAKSManager *)self updateRemoteLTKs];
      }

      else
      {
        v30 = auto_unlock_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10015F1A4();
        }
      }

      goto LABEL_24;
    }

    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10015F068(v7);
    }

LABEL_23:

    goto LABEL_24;
  }

  if (![(SDAutoUnlockLTKRequest *)v7 hasCheckViewState]|| ![(SDAutoUnlockLTKRequest *)v7 checkViewState])
  {
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Companion not first unlocked, not sending LTKs", buf, 2u);
    }

    goto LABEL_23;
  }

  v17 = auto_unlock_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Companion not first unlocked, responding with state", buf, 2u);
  }

  [(SDAutoUnlockAKSManager *)self sendLTKResponseWithPayload:0 viewState:0 needsUnlock:&__kCFBooleanTrue currentlySyncing:0];
LABEL_24:
}

- (id)ltksForRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100158654;
  v26[3] = &unk_1008D1A48;
  v26[4] = self;
  v6 = v4;
  v27 = v6;
  v7 = v5;
  v28 = v7;
  v8 = objc_retainBlock(v26);
  v9 = [v6 remoteDeviceID];

  if (v9)
  {
    v10 = [v6 remoteDeviceID];
    (v8[2])(v8, v10);
  }

  else
  {
    [(SDAutoUnlockAKSManager *)self allKeychainDevices];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = v25 = 0u;
    v11 = [v21 allObjects];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v6 localID];
          v18 = [v16 isEqualToString:v17];

          if ((v18 & 1) == 0)
          {
            (v8[2])(v8, v16);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v13);
    }

    v10 = v21;
  }

  v19 = [v7 copy];

  return v19;
}

- (void)takeMobileKeybagAssertion
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Taking keybag assertion", &v6, 2u);
  }

  if (!self->_keybagAssertion)
  {
    v7[0] = @"MKBAssertionKey";
    v7[1] = @"MKBAssertionTimeout";
    v8[0] = @"RemoteProfile";
    v8[1] = &off_10090BD90;
    [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2, 0];
    v4 = MKBDeviceLockAssertion();
    keybagAssertion = self->_keybagAssertion;
    self->_keybagAssertion = v4;

    [(SDAutoUnlockAKSManager *)self restartKeybagAssertionTimer];
  }
}

- (void)releaseKeybagAssertion
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing keybag assertion", v5, 2u);
  }

  keybagAssertion = self->_keybagAssertion;
  self->_keybagAssertion = 0;
}

- (void)restartKeybagAssertionTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting keybag assertion timer", buf, 2u);
  }

  v4 = [(SDAutoUnlockAKSManager *)self keybagAssertionTimer];

  if (!v4)
  {
    v5 = SFMainQueue();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100158B38;
    v10[3] = &unk_1008CDEA0;
    v10[4] = self;
    v6 = sub_1001F0548(0, v5, v10);
    [(SDAutoUnlockAKSManager *)self setKeybagAssertionTimer:v6];

    v7 = [(SDAutoUnlockAKSManager *)self keybagAssertionTimer];
    dispatch_resume(v7);
  }

  v8 = [(SDAutoUnlockAKSManager *)self keybagAssertionTimer];
  v9 = sub_1001F0530(55.0);
  sub_1001F05F0(v8, v9);
}

- (void)transport:(id)a3 didReceivePayload:(id)a4 type:(unsigned __int16)a5 deviceID:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v7 != 308)
  {
    if (v7 == 202)
    {
      [(SDAutoUnlockAKSManager *)self handleLTKResponse:v11];
    }

    else if (v7 == 201)
    {
      [(SDAutoUnlockAKSManager *)self handleLTKRequest:v11];
    }

    else
    {
      v13 = auto_unlock_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10015F250();
      }
    }
  }
}

- (BOOL)localDeviceEnabledAsKey
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceWasUnlockedOnce];

  if (v4)
  {

    return [(SDAutoUnlockAKSManager *)self deviceEnabledAsKeyForAnyDevice];
  }

  else
  {

    return [(SDAutoUnlockAKSManager *)self deviceEnabledAsKeyForAnyIDSDevice];
  }
}

- (BOOL)localDeviceEnabledAsKeyForMac
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceWasUnlockedOnce];

  if (v4)
  {

    return [(SDAutoUnlockAKSManager *)self deviceEnabledAsKeyForAnyMac];
  }

  else
  {

    return [(SDAutoUnlockAKSManager *)self deviceEnabledAsKeyForAnyIDSMac];
  }
}

- (BOOL)deviceEnabledAsKeyForIDSDeviceID:(id)a3
{
  v4 = a3;
  v5 = +[SDAutoUnlockTransport sharedTransport];
  v6 = [v5 deviceTypeForDeviceID:v4];

  if ([(SDAutoUnlockAKSManager *)self escrowSecretExistsForDevice:v4])
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10015F2C8();
    }

LABEL_8:

    LOBYTE(v7) = 1;
    goto LABEL_10;
  }

  if (v6 != 2)
  {
    LOBYTE(v7) = 0;
    goto LABEL_10;
  }

  v7 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v4];

  if (v7)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10015F28C();
    }

    goto LABEL_8;
  }

LABEL_10:

  return v7;
}

- (BOOL)deviceEnabledAsKeyForAnyIDSDevice
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 idsDevicesIDs];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(SDAutoUnlockAKSManager *)self localDeviceID];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0 && [(SDAutoUnlockAKSManager *)self deviceEnabledAsKeyForIDSDeviceID:v10])
        {
          v13 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)deviceEnabledAsKeyForAnyIDSMac
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 idsDevicesIDs];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(SDAutoUnlockAKSManager *)self localDeviceID];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          if ([(SDAutoUnlockAKSManager *)self escrowSecretExistsForDevice:v10])
          {
            v13 = +[SDAutoUnlockTransport sharedTransport];
            v14 = [v13 deviceTypeForDeviceID:v10];

            if (v14 == 4)
            {
              v16 = auto_unlock_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                sub_10015F2C8();
              }

              v15 = 1;
              goto LABEL_15;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)deviceEnabledAsKeyForAnyDevice
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 devicesWithLTKs];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(SDAutoUnlockAKSManager *)self localDeviceID];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          v13 = +[SDAutoUnlockTransport sharedTransport];
          v14 = [v13 deviceTypeForDeviceID:v10];

          if ([(SDAutoUnlockAKSManager *)self escrowSecretExistsForDevice:v10])
          {
            v17 = auto_unlock_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              sub_10015F2C8();
            }

            goto LABEL_17;
          }

          if (v14 == 2)
          {
            v15 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v10];

            if (v15)
            {
              v17 = auto_unlock_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                sub_10015F28C();
              }

LABEL_17:

              v16 = 1;
              goto LABEL_18;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (BOOL)deviceEnabledAsKeyForAnyMac
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 devicesWithLTKs];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(SDAutoUnlockAKSManager *)self localDeviceID];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          if ([(SDAutoUnlockAKSManager *)self escrowSecretExistsForDevice:v10])
          {
            v13 = +[SDAutoUnlockTransport sharedTransport];
            v14 = [v13 deviceTypeForDeviceID:v10];

            if (v14 == 4)
            {
              v16 = auto_unlock_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                sub_10015F2C8();
              }

              v15 = 1;
              goto LABEL_15;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)deviceEnabledAsKey:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self rangingKeyForDeviceID:v4];

  v6 = [(SDAutoUnlockAKSManager *)self companionIDForWatchID:v4];
  v7 = v6 != 0;

  v8 = [(SDAutoUnlockAKSManager *)self viewSyncing];
  v9 = [(SDAutoUnlockAKSManager *)self localLTK];
  if (v5)
  {
    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10015F330(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = +[SDAutoUnlockTransport sharedTransport];
  v19 = [v18 deviceTypeForDeviceID:v4];

  v20 = SFDeviceClassCodeGet();
  v21 = v20;
  if (v20 == 8 || v20 == 1)
  {
    v22 = [(SDAutoUnlockAKSManager *)self localAttestedLTK];

    v8 = 1;
    v9 = v22;
    v7 = 1;
  }

  v23 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v4];
  v24 = v23;
  if (v21 == 5 && v19 == 7)
  {
    if (!v23)
    {
      goto LABEL_21;
    }

LABEL_15:
    *v39 = 0;
    v25 = sub_10005DDF0(v9, v23, 0, 1, 0, 0, 0, 1, v39);
    if (*v39 == -536363002 || *v39 == -536870194)
    {
      if (v21 == 5)
      {
        v26 = auto_unlock_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Attempting to fix remote LTK for check", buf, 2u);
        }

        [(SDAutoUnlockAKSManager *)self resignRemoteLTKForDeviceID:v4];
        v27 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v4];

        v25 = sub_10005DDF0(v9, v27, 0, 1, 0, 0, 0, 1, 0);
        v24 = v27;
      }

      else
      {
        v30 = auto_unlock_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Local and remote LTKs don't match", buf, 2u);
        }
      }
    }

    if (v25 < 0)
    {
      goto LABEL_36;
    }

    v29 = 1;
    goto LABEL_31;
  }

  if (!v23)
  {
LABEL_21:
    v28 = auto_unlock_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_10015F3A8();
    }

    v24 = 0;
    goto LABEL_36;
  }

  if (v21 == 7 && v19 == 5)
  {
    goto LABEL_15;
  }

  if (!sub_100021BD4(v23))
  {
LABEL_36:
    v33 = auto_unlock_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_10015F410();
    }

    v31 = 0;
    goto LABEL_39;
  }

  v29 = 0;
  LODWORD(v25) = -1;
LABEL_31:
  v31 = (v5 != 0 && v7) & v8;
  if (!v31)
  {
    v32 = auto_unlock_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v35 = @"NO";
      if (v5)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      *v39 = 138413058;
      v40 = v4;
      if (v7)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v42 = v36;
      v41 = 2112;
      v43 = 2112;
      if (v8)
      {
        v35 = @"YES";
      }

      v44 = v37;
      v45 = 2112;
      v46 = v35;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Device not enabled but can create session (device: %@, ranging key exists: %@, companion ID exists: %@, view syncing: %@)", v39, 0x2Au);
    }
  }

  if (v29)
  {
    sub_10005E9C4(v25);
  }

LABEL_39:

  return v31;
}

- (void)deleteEscrowSecretForAllDevices
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 devicesWithLTKs];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [(SDAutoUnlockAKSManager *)self localDeviceID];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          v13 = +[SDAutoUnlockTransport sharedTransport];
          v14 = [v13 autoUnlockDeviceForDeviceID:v10];

          v15 = [(SDAutoUnlockAKSManager *)self keyPairingIDForDeviceID:v10];
          [(SDAutoUnlockAKSManager *)self deleteEscrowSecretForDeviceID:v10];
          [(SDAutoUnlockAKSManager *)self deleteRangingKeyForDeviceID:v10];
          if ([v14 type] == 2 || v15 != 0)
          {
            v17 = +[SDAutoUnlockSessionManager sharedManager];
            [v17 sendDisableMessageToDeviceID:v10 pairingID:v15];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [(SDAutoUnlockAKSManager *)self deleteAllEscrowSecrets];
  [(SDAutoUnlockAKSManager *)self deleteAllRangingKeys];
  v18 = +[SDAutoUnlockSessionManager sharedManager];
  [v18 clearAllKeysWithTokens];

  [(SDAutoUnlockAKSManager *)self updateDynamicStoreEnabled];
}

- (void)deleteEscrowSecretForPhones
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 devicesWithLTKs];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 138412290;
    v18 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = +[SDAutoUnlockTransport sharedTransport];
        v13 = [v12 autoUnlockDeviceForDeviceID:v11];

        if ([v13 type] == 2)
        {
          v14 = [(SDAutoUnlockAKSManager *)self localDeviceID];
          v15 = [v11 isEqualToString:v14];

          if ((v15 & 1) == 0)
          {
            v16 = auto_unlock_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v18;
              v24 = v13;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Disabling feature for device: %@", buf, 0xCu);
            }

            [(SDAutoUnlockAKSManager *)self deleteEscrowSecretForDeviceID:v11];
            [(SDAutoUnlockAKSManager *)self deleteRangingKeyForDeviceID:v11];
            v17 = +[SDAutoUnlockSessionManager sharedManager];
            [v17 sendDisableMessageToDeviceID:v11 pairingID:0];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }
}

- (void)disablePairingForAllKeyDevices
{
  v3 = [(SDAutoUnlockAKSManager *)self allPairedWatchDeviceIDs];
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling pairing for all keys %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(SDAutoUnlockAKSManager *)self pairingIDForWatchID:v10, v15];
        v12 = +[SDAutoUnlockSessionManager sharedManager];
        [v12 sendDisableMessageToDeviceID:v10 pairingID:v11];

        v13 = [(SDAutoUnlockAKSManager *)self localDeviceID];
        v14 = [v10 isEqualToString:v13];

        if ((v14 & 1) == 0)
        {
          [(SDAutoUnlockAKSManager *)self disablePairingWithKeyDevice:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(SDAutoUnlockAKSManager *)self deleteAllRangingKeys];
}

- (void)disablePairingForAllLockPhones
{
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [v3 devicesWithLTKs];

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabling pairing for all phones", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = +[SDAutoUnlockTransport sharedTransport];
        v13 = [v12 idsDeviceForUniqueID:v11];

        v14 = +[SDAutoUnlockTransport sharedTransport];
        v15 = [v14 deviceTypeForDevice:v13];

        if (v15 == 2)
        {
          v16 = [(SDAutoUnlockAKSManager *)self localDeviceID];
          v17 = [v11 isEqualToString:v16];

          if ((v17 & 1) == 0)
          {
            [(SDAutoUnlockAKSManager *)self disablePairingWithKeyDevice:v11];
            [(SDAutoUnlockAKSManager *)self removeRemoteLTKForDeviceID:v11];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)removeAllRemoteLTKsOnSignOut
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing all remote LTKs on sign out", buf, 2u);
  }

  v4 = [(SDAutoUnlockAKSManager *)self keychainDevices:0];
  v5 = [(SDAutoUnlockAKSManager *)self keychainDevices:1];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SDAutoUnlockAKSManager *)self deleteRemoteLongTermKeyForDeviceID:*(*(&v20 + 1) + 8 * v10) modern:0 tombstone:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SDAutoUnlockAKSManager *)self deleteRemoteLongTermKeyForDeviceID:*(*(&v16 + 1) + 8 * v15) modern:1 tombstone:0, v16];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v13);
  }

  [(SDAutoUnlockAKSManager *)self clearRemoteLTKs];
}

- (BOOL)ltkExistsForKeyDevice:(id)a3 updateLTKs:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v6];

  if (v7)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    LOBYTE(v8) = v4;
  }

  if (v4 && !v7)
  {
    v8 = [(SDAutoUnlockAKSManager *)self anyLongTermKeyForDeviceID:v6];

    if (v8)
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating remote LTK for %@", &v11, 0xCu);
      }

      [(SDAutoUnlockAKSManager *)self updateRemoteLTKs];
      v9 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v6];
      LOBYTE(v8) = v9 != 0;
    }
  }

  return v8;
}

- (BOOL)disablePairingWithKeyDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self remoteLTKForDeviceID:v4];
  if (v5)
  {
    v6 = [(SDAutoUnlockAKSManager *)self localLTK];
    v7 = sub_10005E384(v6, v5);
  }

  else
  {
    v7 = 0;
  }

  [(SDAutoUnlockAKSManager *)self removePairingRecordForWatchID:v4];
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing remote LTK for %@", &v10, 0xCu);
  }

  [(SDAutoUnlockAKSManager *)self removeRemoteLTKForDeviceID:v4];
  [(SDAutoUnlockAKSManager *)self deleteRangingKeyForDeviceID:v4];
  [(SDAutoUnlockAKSManager *)self updateDynamicStoreEnabled];

  return v7;
}

- (void)addRemoteLTK:(id)a3 ltkHash:(id)a4 ltkModDate:(id)a5 modernLTK:(id)a6 modernLTKHash:(id)a7 modernLTKModeDate:(id)a8 deviceID:(id)a9
{
  v28 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [(SDAutoUnlockAKSManager *)self remoteLTKList];
  v22 = [v21 mutableCopy];

  v23 = [v22 objectForKeyedSubscript:v20];

  if (v23)
  {
    v24 = auto_unlock_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Overriding existing LTK", buf, 2u);
    }
  }

  v25 = objc_opt_new();
  v26 = v25;
  if (v28)
  {
    [v25 setObject:v28 forKeyedSubscript:@"LTK Data"];
  }

  if (v15)
  {
    [v26 setObject:v15 forKeyedSubscript:@"LTK Hash"];
  }

  if (v16)
  {
    [v26 setObject:v16 forKeyedSubscript:@"LTK Mod Date"];
  }

  if (v17)
  {
    [v26 setObject:v17 forKeyedSubscript:@"Modern LTK Data"];
  }

  if (v18)
  {
    [v26 setObject:v18 forKeyedSubscript:@"Modern LTK Hash"];
  }

  if (v19)
  {
    [v26 setObject:v19 forKeyedSubscript:@"Modern LTK Mod Date"];
  }

  [v22 setObject:v26 forKeyedSubscript:v20];
  v27 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
  [v27 setObject:v22 forKeyedSubscript:@"Remote LTKs"];

  [(SDAutoUnlockAKSManager *)self saveRemoteLTKs];
  [(SDAutoUnlockAKSManager *)self updatePreferredRemoteLTKForDeviceID:v20];
}

- (void)removeRemoteLTKForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self remoteLTKList];
  v8 = [v5 mutableCopy];

  [v8 removeObjectForKey:v4];
  v6 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
  [v6 setObject:v8 forKeyedSubscript:@"Remote LTKs"];

  [(SDAutoUnlockAKSManager *)self saveRemoteLTKs];
  v7 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
  [v7 removeObjectForKey:v4];
}

- (void)clearRemoteLTKs
{
  v3 = objc_opt_new();
  [(SDAutoUnlockAKSManager *)self setRemoteLTKs:v3];

  v4 = objc_opt_new();
  v5 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
  [v5 setObject:v4 forKeyedSubscript:@"Remote LTKs"];

  [(SDAutoUnlockAKSManager *)self saveRemoteLTKs];
  v6 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
  [v6 removeAllObjects];
}

- (void)saveRemoteLTKs
{
  v3 = [(SDAutoUnlockAKSManager *)self remoteLTKStorageFilePath];
  if (v3)
  {
    v4 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
    v13 = 0;
    v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v13];
    v6 = v13;

    if (v5)
    {
      if (SFDeviceIsRealityDevice())
      {
        v7 = 268435457;
      }

      else
      {
        v7 = 1;
      }

      v12 = v6;
      v8 = [v5 writeToFile:v3 options:v7 error:&v12];
      v9 = v12;

      v10 = auto_unlock_log();
      v11 = v10;
      if (v8)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_10015F4E8(self);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10015F478();
      }
    }

    else
    {
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10015F56C();
      }

      v9 = v6;
    }
  }
}

- (void)loadRemoteLTKs
{
  v3 = [(SDAutoUnlockAKSManager *)self remoteLTKStorageFilePath];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:0];

  if ((v5 & 1) == 0)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating Remote LTK file", buf, 2u);
    }

    v7 = objc_opt_new();
    [(SDAutoUnlockAKSManager *)self setRemoteLTKs:v7];

    v8 = objc_opt_new();
    v9 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
    [v9 setObject:v8 forKeyedSubscript:@"Remote LTKs"];

    [(SDAutoUnlockAKSManager *)self saveRemoteLTKs];
  }

  if (v3)
  {
    v24 = 0;
    v10 = [[NSData alloc] initWithContentsOfFile:v3 options:0 error:&v24];
    v11 = v24;
    v12 = v11;
    if (v10)
    {
      v23 = 0;
      v13 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v23];
      v14 = v23;

      if (v13)
      {
        v15 = [v13 mutableCopy];
        [(SDAutoUnlockAKSManager *)self setRemoteLTKs:v15];

        v16 = [(SDAutoUnlockAKSManager *)self preferredRemoteLTKForDeviceID];
        [v16 removeAllObjects];

        v17 = auto_unlock_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(SDAutoUnlockAKSManager *)self remoteLTKList];
          v19 = [v18 allKeys];
          v20 = SFCompactStringFromCollection();
          *buf = 138412290;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Loaded remote LTKs: %@", buf, 0xCu);
        }

        v21 = auto_unlock_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [(SDAutoUnlockAKSManager *)self remoteLTKs];
          *buf = 138477827;
          v26 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Remote LTK Data: %{private}@", buf, 0xCu);
        }
      }

      else
      {
        v21 = auto_unlock_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10015F5DC();
        }
      }
    }

    else
    {
      if ([v11 code] == -1100 || objc_msgSend(v12, "code") == 260 || objc_msgSend(v12, "code") == 4)
      {
        goto LABEL_22;
      }

      v13 = auto_unlock_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10015F64C();
      }

      v14 = v12;
    }

    v12 = v14;
LABEL_22:
  }
}

- (id)allPairedWatchDeviceIDs
{
  v2 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  v3 = [v2 allKeys];

  return v3;
}

- (void)setCompanionID:(id)a3 forWatchID:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  v8 = [v7 objectForKeyedSubscript:v13];
  if (v8)
  {
    v9 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
    v10 = [v9 objectForKeyedSubscript:v13];
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = objc_opt_new();
  }

  [v11 setObject:v6 forKeyedSubscript:@"Companion ID"];
  v12 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  [v12 setObject:v11 forKeyedSubscript:v13];

  [(SDAutoUnlockAKSManager *)self saveWatchIDsToPairingRecords];
}

- (id)companionIDForWatchID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"Companion ID"];

  return v7;
}

- (void)removeCompanionIDForWatchID:(id)a3
{
  v10 = a3;
  v4 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  v5 = [v4 objectForKeyedSubscript:v10];
  if (v5)
  {
    v6 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
    v7 = [v6 objectForKeyedSubscript:v10];
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  [v8 removeObjectForKey:@"Companion ID"];
  v9 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  [v9 setObject:v8 forKeyedSubscript:v10];

  [(SDAutoUnlockAKSManager *)self saveWatchIDsToPairingRecords];
}

- (void)setPairingID:(id)a3 forWatchID:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  v8 = [v7 objectForKeyedSubscript:v13];
  if (v8)
  {
    v9 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
    v10 = [v9 objectForKeyedSubscript:v13];
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = objc_opt_new();
  }

  [v11 setObject:v6 forKeyedSubscript:@"Pairing ID"];
  v12 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  [v12 setObject:v11 forKeyedSubscript:v13];

  [(SDAutoUnlockAKSManager *)self saveWatchIDsToPairingRecords];
}

- (id)pairingIDForWatchID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"Pairing ID"];

  return v7;
}

- (void)removePairingIDForWatchID:(id)a3
{
  v10 = a3;
  v4 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  v5 = [v4 objectForKeyedSubscript:v10];
  if (v5)
  {
    v6 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
    v7 = [v6 objectForKeyedSubscript:v10];
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  [v8 removeObjectForKey:@"Pairing ID"];
  v9 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  [v9 setObject:v8 forKeyedSubscript:v10];

  [(SDAutoUnlockAKSManager *)self saveWatchIDsToPairingRecords];
}

- (void)removePairingRecordForWatchID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
  [v5 removeObjectForKey:v4];

  [(SDAutoUnlockAKSManager *)self saveWatchIDsToPairingRecords];
}

- (void)saveWatchIDsToPairingRecords
{
  v3 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecordsStorageFilePath];
  if (v3)
  {
    v4 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecords];
    v12 = 0;
    v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v12];
    v6 = v12;

    if (v5)
    {
      v11 = v6;
      v7 = [v5 writeToFile:v3 options:1 error:&v11];
      v8 = v11;

      v9 = auto_unlock_log();
      v10 = v9;
      if (v7)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10015F72C(self);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10015F6BC();
      }
    }

    else
    {
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10015F7B0();
      }

      v8 = v6;
    }
  }
}

- (void)loadWatchIDsToPairingRecords
{
  v3 = [(SDAutoUnlockAKSManager *)self watchIDsToPairingRecordsStorageFilePath];
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10015F820();
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v3 isDirectory:0];

  if ((v6 & 1) == 0)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10015F888();
    }

    v8 = objc_opt_new();
    [(SDAutoUnlockAKSManager *)self setWatchIDsToPairingRecords:v8];

    [(SDAutoUnlockAKSManager *)self saveWatchIDsToPairingRecords];
  }

  if (v3)
  {
    v23 = 0;
    v9 = [[NSData alloc] initWithContentsOfFile:v3 options:0 error:&v23];
    v10 = v23;
    v11 = v10;
    if (v9)
    {
      v22 = 0;
      v12 = [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:&v22];
      v13 = v22;

      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 mutableCopy];
          [(SDAutoUnlockAKSManager *)self setWatchIDsToPairingRecords:v14];

          v15 = auto_unlock_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_10015F950(self);
          }
        }

        else
        {
          v21 = auto_unlock_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10015F8C4();
          }

          v15 = objc_opt_new();
          [(SDAutoUnlockAKSManager *)self setWatchIDsToPairingRecords:v15];
        }
      }

      else
      {
        v16 = auto_unlock_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10015F9D4();
        }

        v15 = +[NSUserDefaults standardUserDefaults];
        v17 = [v15 BOOLForKey:@"AutoUnlockErrorLoadingPairingRecords"];
        p_super = auto_unlock_log();
        v19 = os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR);
        if (v17)
        {
          if (v19)
          {
            sub_10015FA80();
          }

          v20 = objc_opt_new();
          p_super = &self->_watchIDsToPairingRecords->super.super;
          self->_watchIDsToPairingRecords = v20;
        }

        else if (v19)
        {
          sub_10015FA44();
        }

        [v15 setBool:v17 ^ 1 forKey:@"AutoUnlockErrorLoadingPairingRecords"];
      }
    }

    else
    {
      if ([v10 code] == -1100 || objc_msgSend(v11, "code") == 260 || objc_msgSend(v11, "code") == 4)
      {
        goto LABEL_34;
      }

      v12 = auto_unlock_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10015FABC();
      }

      v13 = v11;
    }

    v11 = v13;
LABEL_34:

    goto LABEL_35;
  }

  v11 = 0;
LABEL_35:
  [(SDAutoUnlockAKSManager *)self migrateLegacyWatchIDToCompanionIDs];
}

- (NSString)watchIDsToPairingRecordsStorageFilePath
{
  watchIDsToPairingRecordsStorageFilePath = self->_watchIDsToPairingRecordsStorageFilePath;
  if (!watchIDsToPairingRecordsStorageFilePath)
  {
    v4 = [(SDAutoUnlockAKSManager *)self autoUnlockFolderPath];
    v5 = [v4 stringByAppendingPathComponent:@"pairing-records.plist"];
    v6 = self->_watchIDsToPairingRecordsStorageFilePath;
    self->_watchIDsToPairingRecordsStorageFilePath = v5;

    watchIDsToPairingRecordsStorageFilePath = self->_watchIDsToPairingRecordsStorageFilePath;
  }

  return watchIDsToPairingRecordsStorageFilePath;
}

- (void)migrateLegacyWatchIDToCompanionIDs
{
  v3 = [(SDAutoUnlockAKSManager *)self loadLegacyWatchIDToCompanionIDMapping];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015BA18;
  v4[3] = &unk_1008D1A70;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  [(SDAutoUnlockAKSManager *)self saveWatchIDsToPairingRecords];
  [(SDAutoUnlockAKSManager *)self deleteLegacyWatchToCompanionIDs];
}

- (void)deleteLegacyWatchToCompanionIDs
{
  v2 = [(SDAutoUnlockAKSManager *)self watchIDToCompanionIDStorageFilePath];
  v3 = +[NSFileManager defaultManager];
  v7 = 0;
  v4 = [v3 removeItemAtPath:v2 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0 && [v5 code] != -1100 && objc_msgSend(v5, "code") != 260 && objc_msgSend(v5, "code") != 4)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10015FB2C();
    }
  }
}

- (id)loadLegacyWatchIDToCompanionIDMapping
{
  v3 = [(SDAutoUnlockAKSManager *)self watchIDToCompanionIDStorageFilePath];
  if (!v3)
  {
    v9 = 0;
    v6 = 0;
    goto LABEL_17;
  }

  v14 = 0;
  v4 = [[NSData alloc] initWithContentsOfFile:v3 options:0 error:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    v13 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v13];
    v8 = v13;

    if (v7)
    {
      v9 = [v7 mutableCopy];
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10015FB9C();
      }
    }

    else
    {
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10015FC04();
      }

      v9 = 0;
    }

LABEL_15:
    v6 = v8;
    goto LABEL_16;
  }

  if ([v5 code] != -1100 && objc_msgSend(v6, "code") != 260 && objc_msgSend(v6, "code") != 4)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10015FC74();
    }

    v9 = 0;
    v8 = v6;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_16:

LABEL_17:
  v11 = [(SDAutoUnlockAKSManager *)self migrateLegacyCompanionIDs:v9];

  return v11;
}

- (NSString)watchIDToCompanionIDStorageFilePath
{
  watchIDToCompanionIDStorageFilePath = self->_watchIDToCompanionIDStorageFilePath;
  if (!watchIDToCompanionIDStorageFilePath)
  {
    v4 = [(SDAutoUnlockAKSManager *)self autoUnlockFolderPath];
    v5 = [v4 stringByAppendingPathComponent:@"watch-companion-mapping.plist"];
    v6 = self->_watchIDToCompanionIDStorageFilePath;
    self->_watchIDToCompanionIDStorageFilePath = v5;

    watchIDToCompanionIDStorageFilePath = self->_watchIDToCompanionIDStorageFilePath;
  }

  return watchIDToCompanionIDStorageFilePath;
}

- (id)migrateLegacyCompanionIDs:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v6 = [(SDAutoUnlockAKSManager *)self loadCompanionIDs];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10015BEC4;
  v9[3] = &unk_1008D1A70;
  v7 = v5;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  [(SDAutoUnlockAKSManager *)self deleteLegacyCompanionIDs];

  return v7;
}

- (void)deleteLegacyCompanionIDs
{
  v2 = [(SDAutoUnlockAKSManager *)self companionIDStorageFilePath];
  v3 = +[NSFileManager defaultManager];
  v7 = 0;
  v4 = [v3 removeItemAtPath:v2 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0 && [v5 code] != -1100 && objc_msgSend(v5, "code") != 260 && objc_msgSend(v5, "code") != 4)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10015FCE4();
    }
  }
}

- (id)loadCompanionIDs
{
  v2 = [(SDAutoUnlockAKSManager *)self companionIDStorageFilePath];
  if (!v2)
  {
    v8 = 0;
    v5 = 0;
    goto LABEL_17;
  }

  v12 = 0;
  v3 = [[NSData alloc] initWithContentsOfFile:v2 options:0 error:&v12];
  v4 = v12;
  v5 = v4;
  if (v3)
  {
    v11 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v11];
    v7 = v11;

    if (v6)
    {
      v8 = [v6 mutableCopy];
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loaded companion IDs: %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10015FD54();
      }

      v8 = 0;
    }

LABEL_15:
    v5 = v7;
    goto LABEL_16;
  }

  if ([v4 code] != -1100 && objc_msgSend(v5, "code") != 260 && objc_msgSend(v5, "code") != 4)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10015FDC4();
    }

    v8 = 0;
    v7 = v5;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_16:

LABEL_17:

  return v8;
}

- (NSString)companionIDStorageFilePath
{
  companionIDStorageFilePath = self->_companionIDStorageFilePath;
  if (!companionIDStorageFilePath)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v5 = [v4 firstObject];

    v6 = [v5 stringByAppendingPathComponent:@"Sharing"];
    v7 = +[NSFileManager defaultManager];
    v13 = 0;
    v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v13];
    v9 = v13;

    if (v8)
    {
      v10 = [v6 stringByAppendingPathComponent:@"companion-paired-devices.plist"];
      v11 = self->_companionIDStorageFilePath;
      self->_companionIDStorageFilePath = v10;
    }

    else
    {
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10015FE34();
      }
    }

    companionIDStorageFilePath = self->_companionIDStorageFilePath;
  }

  return companionIDStorageFilePath;
}

- (id)autoUnlockFolderPath
{
  v2 = sub_1001F149C();
  v3 = [v2 stringByAppendingPathComponent:@"AutoUnlock"];
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10015FEA4();
    }
  }

  return v3;
}

- (BOOL)storeKeychainItemWithAttributeDictionary:(id)a3 updateDictionary:(id)a4 addDictionary:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!SecItemAdd(v9, 0))
  {
    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v12 = "Added keychain item";
      v13 = &v15;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    }

LABEL_12:
    v11 = 1;
    goto LABEL_13;
  }

  if (!SecItemUpdate(v7, v8))
  {
    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Updated keychain item";
      v13 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  SecItemDelete(v7);
  if (!SecItemAdd(v9, 0))
  {
    v11 = 1;
    goto LABEL_14;
  }

  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10015FF14();
  }

  v11 = 0;
LABEL_13:

LABEL_14:
  return v11;
}

- (id)escrowSecretForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionaryForDevice:v4 type:&off_10090BDA8];
  v6 = [(SDAutoUnlockAKSManager *)self keychainDataForQuery:v5];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loaded escrowSecret from keychain", buf, 2u);
  }

  if (v6)
  {
    v8 = [[SDAutoUnlockEscrowSecretInfo alloc] initWithData:v6];
    v9 = v8;
    if (v8 && [(SDAutoUnlockEscrowSecretInfo *)v8 hasSecret])
    {
      v10 = [v9 secret];
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Using new secret", v20, 2u);
      }
    }

    else
    {
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10015FF90(v9);
      }

      v10 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v12 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionaryForDevice:v4 type:0];
  v10 = [(SDAutoUnlockAKSManager *)self keychainDataForQuery:v12];

  v9 = auto_unlock_log();
  v13 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrating escrow secret", v19, 2u);
    }

    v9 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionaryForDevice:v4 type:0];
    v11 = [[NSMutableDictionary alloc] initWithDictionary:v9];
    [v11 setObject:&off_10090BDA8 forKeyedSubscript:kSecAttrKeyType];
    [v11 setObject:kSecAttrAccessibleWhenUnlockedThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
    v14 = objc_opt_new();
    [v14 setSecret:v10];
    v15 = [v14 data];
    [v11 setObject:v15 forKeyedSubscript:kSecValueData];

    SecItemDelete(v9);
    if (SecItemAdd(v11, 0))
    {
      v16 = auto_unlock_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10015FF14();
      }
    }

    goto LABEL_19;
  }

  if (v13)
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No secret", v18, 2u);
  }

  v10 = 0;
LABEL_20:

  return v10;
}

- (BOOL)cachedEscrowSecretExistsForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self escrowSecretForDeviceID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (BOOL)cachedEscrowSecretIsValidForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self escrowSecretForDeviceID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 isValid];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)keyPairingIDForDeviceID:(id)a3
{
  v4 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionaryForDevice:a3 type:&off_10090BDA8];
  v5 = [(SDAutoUnlockAKSManager *)self keychainDataForQuery:v4];

  if (v5)
  {
    v6 = [[SDAutoUnlockEscrowSecretInfo alloc] initWithData:v5];
    v7 = [(SDAutoUnlockEscrowSecretInfo *)v6 pairingID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)storeEscrowSecret:(id)a3 pairingID:(id)a4 deviceID:(id)a5 requiresUnlock:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionaryForDevice:a5 type:&off_10090BDA8];
  v13 = objc_opt_new();
  v14 = v13;
  v15 = &kSecAttrAccessibleAfterFirstUnlock;
  if (v6)
  {
    v15 = &kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  }

  [v13 setObject:*v15 forKeyedSubscript:kSecAttrAccessible];
  v16 = objc_opt_new();
  [v16 setSecret:v11];

  [v16 setPairingID:v10];
  v17 = [v16 data];
  [v14 setObject:v17 forKeyedSubscript:kSecValueData];

  v18 = [[NSMutableDictionary alloc] initWithDictionary:v12];
  [v18 addEntriesFromDictionary:v14];
  v19 = [(SDAutoUnlockAKSManager *)self storeKeychainItemWithAttributeDictionary:v12 updateDictionary:v14 addDictionary:v18];

  return v19;
}

- (BOOL)escrowSecretExistsForDevice:(id)a3
{
  v3 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionaryForDevice:a3 type:0];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnPersistentRef];
  v4 = SecItemCopyMatching(v3, 0);
  v5 = 1;
  if (v4 != -25308)
  {
    if (v4 == -25300)
    {
LABEL_7:
      v5 = 0;
      goto LABEL_8;
    }

    if (v4)
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10016003C();
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v5;
}

- (id)escrowSecretCreationDateForDeviceID:(id)a3
{
  result = 0;
  v3 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionaryForDevice:a3 type:0];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
  v4 = SecItemCopyMatching(v3, &result);
  if (v4 == -25300)
  {
    v7 = 0;
  }

  else
  {
    v5 = v4;
    if (v4)
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Query for attributtes status: %d", buf, 8u);
      }

      v7 = 0;
    }

    else
    {
      v6 = result;
      v7 = [result objectForKeyedSubscript:kSecAttrCreationDate];
    }
  }

  return v7;
}

- (void)deleteEscrowSecretForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionaryForDevice:v4 type:0];
  v6 = SecItemDelete(v5);
  if (v6 != -25300)
  {
    if (v6)
    {
      v7 = auto_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001600AC();
      }
    }

    else
    {
      v7 = auto_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleted escrow secret for device %@", &v8, 0xCu);
      }
    }
  }
}

- (void)deleteAllEscrowSecrets
{
  v2 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionary];
  v3 = SecItemDelete(v2);
  if (v3 != -25300)
  {
    if (v3)
    {
      v4 = auto_unlock_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10016011C();
      }
    }

    else
    {
      v4 = auto_unlock_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleted all escrow secrets", v5, 2u);
      }
    }
  }
}

- (BOOL)storeLongTermKey:(id)a3 forDeviceID:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  if ([(SDAutoUnlockAKSManager *)self storeLongTermKey:v8 forDeviceID:v9 name:v10 modern:0])
  {
    v11 = [(SDAutoUnlockAKSManager *)self storeLongTermKey:v8 forDeviceID:v9 name:v10 modern:1];
  }

  return v11;
}

- (BOOL)storeLongTermKey:(id)a3 forDeviceID:(id)a4 name:(id)a5 modern:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    [(SDAutoUnlockAKSManager *)self modernSyncedDictionaryForDevice:v11];
  }

  else
  {
    [(SDAutoUnlockAKSManager *)self syncedDictionaryForDevice:v11];
  }
  v13 = ;
  v14 = objc_opt_new();
  [v14 setObject:kSecAttrAccessibleAfterFirstUnlock forKeyedSubscript:kSecAttrAccessible];
  v15 = [NSString stringWithFormat:@"%@: %@", @"Auto Unlock", v12];
  [v14 setObject:v15 forKeyedSubscript:kSecAttrLabel];

  v16 = [v10 data];
  [v14 setObject:v16 forKeyedSubscript:kSecValueData];

  v17 = [[NSMutableDictionary alloc] initWithDictionary:v13];
  [v17 addEntriesFromDictionary:v14];
  v18 = sharing_persistent_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"YES";
    *buf = 138413571;
    if (!v10)
    {
      v19 = @"NO";
    }

    v23 = v19;
    v24 = 2113;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v13;
    v30 = 2113;
    v31 = v14;
    v32 = 2113;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Store LTK (ltkInfo exists: %@, ltkInfo: %{private}@, deviceID: %@ attributes: %@, update: %{private}@, add: %{private}@)", buf, 0x3Eu);
  }

  v20 = [(SDAutoUnlockAKSManager *)self storeKeychainItemWithAttributeDictionary:v13 updateDictionary:v14 addDictionary:v17];
  return v20;
}

- (BOOL)storeAttestedLongTermKey:(id)a3 forDeviceID:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SDAutoUnlockAKSManager *)self attestedDictionaryForDevice:v9];
  v12 = objc_opt_new();
  IsRealityDevice = SFDeviceIsRealityDevice();
  v14 = &kSecAttrAccessibleAfterFirstUnlock;
  if (IsRealityDevice)
  {
    v14 = &kSecAttrAccessibleAlways;
  }

  [v12 setObject:*v14 forKeyedSubscript:kSecAttrAccessible];
  v15 = [NSString stringWithFormat:@"%@: %@", @"Auto Unlock", v10];

  [v12 setObject:v15 forKeyedSubscript:kSecAttrLabel];
  v16 = [v8 data];
  [v12 setObject:v16 forKeyedSubscript:kSecValueData];

  v17 = [[NSMutableDictionary alloc] initWithDictionary:v11];
  [v17 addEntriesFromDictionary:v12];
  v18 = sharing_persistent_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"YES";
    *buf = 138413571;
    if (!v8)
    {
      v19 = @"NO";
    }

    v23 = v19;
    v24 = 2113;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v11;
    v30 = 2113;
    v31 = v12;
    v32 = 2113;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Store attested LTK (ltkInfo exists: %@, ltkInfo: %{private}@, deviceID: %@ attributes: %@, update: %{private}@, add: %{private}@)", buf, 0x3Eu);
  }

  v20 = [(SDAutoUnlockAKSManager *)self storeKeychainItemWithAttributeDictionary:v11 updateDictionary:v12 addDictionary:v17];
  return v20;
}

- (void)deleteRemoteLongTermKeyForDeviceID:(id)a3 modern:(BOOL)a4 tombstone:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    [(SDAutoUnlockAKSManager *)self modernSyncedDictionaryForDevice:v8];
  }

  else
  {
    [(SDAutoUnlockAKSManager *)self syncedDictionaryForDevice:v8];
  }
  v9 = ;
  v10 = v9;
  if (!a5)
  {
    [(__CFDictionary *)v9 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecUseTombstones];
  }

  v11 = SecItemDelete(v10);
  if (v11 != -25300 && v11)
  {
    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10016018C();
    }
  }
}

- (id)anyLongTermKeyForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self longTermKeyForDevice:v4 modern:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SDAutoUnlockAKSManager *)self longTermKeyForDevice:v4 modern:0];
  }

  v8 = v7;

  return v8;
}

- (id)longTermKeyIDForDeviceID:(id)a3
{
  v3 = [(SDAutoUnlockAKSManager *)self ltkInfoForDeviceID:a3];
  if ([v3 hasLtkID])
  {
    v4 = [NSUUID alloc];
    v5 = [v3 ltkID];
    v6 = [v4 initWithUUIDBytes:{objc_msgSend(v5, "bytes")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)ltkInfoForDeviceID:(id)a3 modern:(BOOL)a4 attested:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v5)
  {
    v9 = [(SDAutoUnlockAKSManager *)self attestedDictionaryForDevice:v8];
  }

  else
  {
    if (v6)
    {
      [(SDAutoUnlockAKSManager *)self modernSyncedDictionaryForDevice:v8];
    }

    else
    {
      [(SDAutoUnlockAKSManager *)self syncedDictionaryForDevice:v8];
    }
    v9 = ;
  }

  v10 = v9;
  v11 = [(SDAutoUnlockAKSManager *)self keychainDataForQuery:v9];
  if (v11)
  {
    v12 = [[SDAutoUnlockLTKInfo alloc] initWithData:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)deleteLocalAttestedLTK
{
  v3 = [(SDAutoUnlockAKSManager *)self localDeviceID];
  v4 = [(SDAutoUnlockAKSManager *)self attestedDictionaryForDevice:v3];

  v5 = SecItemDelete(v4);
  if (v5 != -25300)
  {
    if (v5)
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10016020C();
      }
    }

    else
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleted local attested LTK", v7, 2u);
      }
    }
  }
}

- (void)updateRangingKeysIfNeccesary
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 deviceWasUnlockedOnce];

  if (v4)
  {
    result = 0;
    v5 = [(SDAutoUnlockAKSManager *)self baseRangingDictionary];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
    [v5 setObject:kSecAttrSynchronizableAny forKeyedSubscript:kSecAttrSynchronizable];
    [v5 setObject:kSecMatchLimitAll forKeyedSubscript:kSecMatchLimit];
    if (!SecItemCopyMatching(v5, &result))
    {
      v16 = v5;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = result;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = [v11 objectForKeyedSubscript:kSecAttrIsInvisible];

            if (!v12)
            {
              v13 = [v11 objectForKeyedSubscript:kSecAttrService];
              if (v13)
              {
                v14 = [(SDAutoUnlockAKSManager *)self rangingKeyForDeviceID:v13];
                if (v14)
                {
                  v15 = auto_unlock_log();
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v23 = v13;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating session key (device id: %@)", buf, 0xCu);
                  }

                  [(SDAutoUnlockAKSManager *)self storeRangingKey:v14 forDeviceID:v13];
                }
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v24 count:16];
        }

        while (v8);
      }

      v5 = v16;
    }
  }
}

- (id)deriveKeyFromSharedSecret:(id)a3
{
  v3 = a3;
  if (a3)
  {
    memset(v6, 0, sizeof(v6));
    v4 = a3;
    [v4 bytes];
    [v4 length];

    CryptoHKDF();
    v3 = [NSData dataWithBytes:v6 length:32, v6];
  }

  return v3;
}

- (BOOL)sessionKeyExistsForDeviceID:(id)a3
{
  v3 = [(SDAutoUnlockAKSManager *)self sessionKeyForDeviceID:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)sessionKeyForDeviceID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cachedSessionKeysLock);
  if (v4)
  {
    v5 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v7 = [(SDAutoUnlockAKSManager *)self rangingKeyForDeviceID:v4];
      if (v7)
      {
        v6 = [(SDAutoUnlockAKSManager *)self deriveKeyFromSharedSecret:v7];
        v8 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];
        [v8 setObject:v6 forKeyedSubscript:v4];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10016027C();
    }

    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_cachedSessionKeysLock);

  return v6;
}

- (id)rangingKeyForDeviceID:(id)a3
{
  v4 = [(SDAutoUnlockAKSManager *)self baseRangingDictionaryForDevice:a3];
  v5 = [(SDAutoUnlockAKSManager *)self keychainDataForQuery:v4];

  return v5;
}

- (BOOL)storeRangingKey:(id)a3 forDeviceID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SDAutoUnlockAKSManager *)self baseRangingDictionaryForDevice:v6];
  v9 = objc_opt_new();
  [v9 setObject:v7 forKeyedSubscript:kSecValueData];

  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrIsInvisible];
  IsRealityDevice = SFDeviceIsRealityDevice();
  v11 = &kSecAttrAccessibleAfterFirstUnlock;
  if (IsRealityDevice)
  {
    v11 = &kSecAttrAccessibleAlways;
  }

  [v9 setObject:*v11 forKeyedSubscript:kSecAttrAccessible];
  v12 = [[NSMutableDictionary alloc] initWithDictionary:v8];
  [v12 addEntriesFromDictionary:v9];
  v13 = auto_unlock_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138413059;
    v18 = v6;
    v19 = 2113;
    v20 = v8;
    v21 = 2113;
    v22 = v9;
    v23 = 2113;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Storing Session Key (deviceID: %@ attributes: %{private}@, update: %{private}@, add: %{private}@)", &v17, 0x2Au);
  }

  v14 = [(SDAutoUnlockAKSManager *)self storeKeychainItemWithAttributeDictionary:v8 updateDictionary:v9 addDictionary:v12];
  if (v14)
  {
    os_unfair_lock_lock(&self->_cachedSessionKeysLock);
    v15 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];
    [v15 removeObjectForKey:v6];

    os_unfair_lock_unlock(&self->_cachedSessionKeysLock);
    [(SDAutoUnlockAKSManager *)self removeDeviceIDMissingSessionKey:v6];
    [(SDAutoUnlockAKSManager *)self updateSessionKeys];
  }

  return v14;
}

- (void)deleteRangingKeyForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self baseRangingDictionaryForDevice:v4];
  v6 = SecItemDelete(v5);
  if (v6 != -25300)
  {
    if (v6)
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001602B8();
      }
    }

    else
    {
      v7 = auto_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting session key (device ID: %@)", &v10, 0xCu);
      }

      os_unfair_lock_lock(&self->_cachedSessionKeysLock);
      v8 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];
      [v8 removeObjectForKey:v4];

      os_unfair_lock_unlock(&self->_cachedSessionKeysLock);
      [(SDAutoUnlockAKSManager *)self removeDeviceIDMissingSessionKey:v4];
      [(SDAutoUnlockAKSManager *)self updateSessionKeys];
    }
  }
}

- (void)deleteAllRangingKeys
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting all ranging keys", buf, 2u);
  }

  v4 = [(SDAutoUnlockAKSManager *)self baseDictionary];
  [v4 setObject:@"com.apple.continuity.auto-unlock.rangingkeys" forKeyedSubscript:kSecAttrAccount];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecUseDataProtectionKeychain];
  v5 = SecItemDelete(v4);
  if (v5 != -25300)
  {
    if (v5)
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100160328();
      }
    }

    else
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleted all ranging keys", v9, 2u);
      }

      os_unfair_lock_lock(&self->_cachedSessionKeysLock);
      v7 = [(SDAutoUnlockAKSManager *)self cachedSessionKeys];
      [v7 removeAllObjects];

      os_unfair_lock_unlock(&self->_cachedSessionKeysLock);
      [(SDAutoUnlockAKSManager *)self clearAllDeviceIDsMissingSessionKeys];
    }
  }
}

- (id)keychainDataForQuery:(id)a3
{
  result = 0;
  v3 = a3;
  v4 = [[NSMutableDictionary alloc] initWithDictionary:v3];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  v5 = SecItemCopyMatching(v4, &result);
  if (v5 != -25300)
  {
    v6 = v5;
    if (!v5)
    {
      v7 = result;
      goto LABEL_8;
    }

    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Query status: %d", buf, 8u);
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)baseRangingDictionaryForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self baseRangingDictionary];
  [v5 setObject:v4 forKeyedSubscript:kSecAttrService];

  return v5;
}

- (id)syncedDictionaryForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self baseSyncedDictionary];
  [v5 setObject:v4 forKeyedSubscript:kSecAttrService];

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrIsInvisible];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];

  return v5;
}

- (id)modernSyncedDictionaryForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self baseModernSyncedDictionary];
  [v5 setObject:v4 forKeyedSubscript:kSecAttrService];

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrIsInvisible];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];

  return v5;
}

- (id)attestedDictionaryForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockAKSManager *)self baseDictionary];
  [v5 setObject:@"com.apple.continuity.auto-unlock.attested" forKeyedSubscript:kSecAttrAccount];
  [v5 setObject:v4 forKeyedSubscript:kSecAttrService];

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrIsInvisible];

  return v5;
}

- (id)baseLocalKeysDictionaryForDevice:(id)a3 type:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SDAutoUnlockAKSManager *)self baseLocalKeysDictionary];
  [v8 setObject:v7 forKeyedSubscript:kSecAttrService];

  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:kSecAttrKeyType];
  }

  return v8;
}

- (id)baseLocalKeysDictionary
{
  v2 = [(SDAutoUnlockAKSManager *)self baseDictionary];
  [v2 setObject:@"com.apple.continuity.auto-unlock.localkeys" forKeyedSubscript:kSecAttrAccount];

  return v2;
}

@end