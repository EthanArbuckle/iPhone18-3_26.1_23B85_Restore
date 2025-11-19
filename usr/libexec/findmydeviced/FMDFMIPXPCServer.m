@interface FMDFMIPXPCServer
- (BOOL)_hasAuthAccessEntitlement;
- (BOOL)_hasClientAccessEntitlement;
- (BOOL)_hasRepairDeviceAccessEntitlement;
- (BOOL)_hasSharedConfigurationAccessEntitlement;
- (BOOL)_hasUCRTHealingAccessEntitlement;
- (id)_deviceIdentifiersForSignature;
- (id)_errorForCode:(int)a3 message:(id)a4;
- (id)locateStats;
- (void)_forceUpgradeAlertForKey:(id)a3 UsingCallback:(id)a4;
- (void)activationLockAuthInfoWithCompletion:(id)a3;
- (void)activationLockInfoFromDeviceWithCompletion:(id)a3;
- (void)activationLockVersionWithCompletion:(id)a3;
- (void)attemptUCRTHealing:(id)a3 completion:(id)a4;
- (void)clearData:(unint64_t)a3 completion:(id)a4;
- (void)clearMaskedAppleIDWithCompletion:(id)a3;
- (void)clearOfflineFindingInfoWithCompletion:(id)a3;
- (void)clearTheftAndLossCFUWithReply:(id)a3;
- (void)deviceActivationDidSucceedUsingCallback:(id)a3;
- (void)deviceEligibleForRepairWithContext:(id)a3 completion:(id)a4;
- (void)didAddLocalFindableAccessory:(id)a3 completion:(id)a4;
- (void)didChangeFMIPAccountInfo:(id)a3 usingCallback:(id)a4;
- (void)didReceiveLostModeExitAuthToken:(id)a3 usingCallback:(id)a4;
- (void)didRemoveLocalFindableAccessory:(id)a3 completion:(id)a4;
- (void)disableFMIPForAccount:(id)a3 pairedDeviceWithUDID:(id)a4 usingCallback:(id)a5;
- (void)disableFMIPUsingToken:(id)a3 forPairedDeviceWithUDID:(id)a4 usingCallback:(id)a5;
- (void)disableFMIPUsingToken:(id)a3 inContext:(unint64_t)a4 usingCallback:(id)a5;
- (void)disableLocationDisplayWithCompletion:(id)a3;
- (void)disableLostModeUsingCallback:(id)a3;
- (void)downloadSharedConfigurationWithLocale:(id)a3 reply:(id)a4;
- (void)enableActivationLockUsingCallback:(id)a3;
- (void)enableFMIPInContext:(unint64_t)a3 usingCallback:(id)a4;
- (void)enableLostModeWithInfo:(id)a3 usingCallback:(id)a4;
- (void)enableRepairWithContext:(id)a3 completion:(id)a4;
- (void)fetchAPNSTokenWithCompletion:(id)a3;
- (void)fetchAccessoryConfigurations:(id)a3;
- (void)fetchOfflineFindingInfoWithCompletion:(id)a3;
- (void)getAccessoriesWithCompletion:(id)a3;
- (void)getConnectedAccessoriesDiscoveryIds:(id)a3;
- (void)getFMIPStateUsingCallback:(id)a3;
- (void)getFmipAccountUsingCallback:(id)a3;
- (void)getLockdownShouldDisableDevicePairingUsingCallback:(id)a3;
- (void)getLockdownShouldDisableDeviceRestoreUsingCallback:(id)a3;
- (void)getTheftAndLossCoverageWithSerialNumber:(id)a3 reply:(id)a4;
- (void)initiateLostModeExitAuthForApp:(id)a3 idsDeviceID:(id)a4 usingCallback:(id)a5;
- (void)isActivationLockAllowedUsingCallback:(id)a3;
- (void)isActivationLockEnabledUsingCallback:(id)a3;
- (void)isActivationLockedUsingCallback:(id)a3;
- (void)lowBatteryLocateEnabledUsingCallback:(id)a3;
- (void)markAsMissingSupportedForPairedDeviceWithUDID:(id)a3 usingCallback:(id)a4;
- (void)markPairedDeviceWithUDID:(id)a3 asMissingUsingToken:(id)a4 callback:(id)a5;
- (void)pairingCheckWith:(id)a3 completion:(id)a4;
- (void)playSoundWithOptions:(id)a3 completion:(id)a4;
- (void)postTheftAndLossCFUWithEntry:(id)a3 reply:(id)a4;
- (void)primaryAppleAccountRemoved;
- (void)registerDeviceForPairingLock:(id)a3 completion:(id)a4;
- (void)removeAccessoryWithDiscoveryId:(id)a3 completion:(id)a4;
- (void)requestTheftAndLossCFUWithStrings:(id)a3 andReply:(id)a4;
- (void)requireDisableLocationWithCompletion:(id)a3;
- (void)scheduleDailyLocateReportXPCActivity;
- (void)sendPairedDeviceLostModeExitAuthToken:(id)a3 deviceID:(id)a4;
- (void)setDailyLocateReportEnabled:(BOOL)a3;
- (void)setPhoneNumber:(id)a3 toAccessoryWithDiscoveryId:(id)a4 completion:(id)a5;
- (void)showDailyLocateReport;
- (void)signatureHeadersWithData:(id)a3 completion:(id)a4;
- (void)simulatePushWithPayload:(id)a3 completion:(id)a4;
- (void)soundStoppedForAccessoryIdentifier:(id)a3;
- (void)startLocationMonitoring:(id)a3;
- (void)startLocationMonitoringWithContext:(id)a3 completion:(id)a4;
- (void)stopLocationMonitoring:(id)a3;
- (void)stopLocationMonitoringWithContext:(id)a3 completion:(id)a4;
- (void)storeOfflineFindingInfo:(id)a3 completion:(id)a4;
- (void)updateMaskedAppleIDWith:(id)a3 completion:(id)a4;
- (void)updatePairingLockInfo:(id)a3 completion:(id)a4;
- (void)updatedConfigReceived:(id)a3 completion:(id)a4;
@end

@implementation FMDFMIPXPCServer

- (BOOL)_hasClientAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.aosnotification.aosnotifyd-access"];

  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:@"com.apple.icloud.findmydeviced.access"];

  if (v3 && ([&__kCFBooleanTrue isEqual:v3] & 1) != 0)
  {
    v6 = 1;
  }

  else if (v5)
  {
    v6 = [&__kCFBooleanTrue isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enableLostModeWithInfo:(id)a3 usingCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v57 = "[FMDFMIPXPCServer enableLostModeWithInfo:usingCallback:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v25 = NSStringFromSelector(a2);
    v26 = [NSString stringWithFormat:@"Entitlement not found for %@", v25];

    v27 = sub_100002880();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v28 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v26];
      v8[2](v8, v28);
    }

    goto LABEL_24;
  }

  if ([v7 lostModeEnabled])
  {
    v10 = +[FMDSystemConfig sharedInstance];
    v11 = [v10 isPasscodeSet];

    if (v11)
    {
      v12 = +[FMDLostModeManager sharedInstance];
      v13 = [v12 lostModeEnabled];

      if (!v13)
      {
        v55[0] = &__kCFBooleanTrue;
        v54[0] = @"lostModeEnabled";
        v54[1] = @"lostModeMessage";
        v45 = [v7 message];
        v46 = v45;
        if (v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = &stru_1002DCE08;
        }

        v55[1] = v47;
        v54[2] = @"lostModeOwnerNumber";
        v48 = [v7 phoneNumber];
        v49 = v48;
        if (v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = &stru_1002DCE08;
        }

        v55[2] = v50;
        v54[3] = @"lostModeFacetimeCapable";
        v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 facetimeCapable]);
        v55[3] = v51;
        v26 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];

        [FMDPreferencesMgr setClientLostModeInfo:v26];
        v52 = +[FMDFMIPSharedStateManager sharedInstance];
        [v52 recalculateLostMode];

        SBSSpringBoardServerPort();
        SBLockDevice();
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, kLostModeChangedRestrictedNotification, 0, 0, 1u);
        if (v8)
        {
          v8[2](v8, 0);
        }

        goto LABEL_24;
      }

      v14 = sub_100002880();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10022C450(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      if (v8)
      {
        v22 = @"Device is already in FMIP lost mode.";
        v23 = self;
        v24 = 8;
LABEL_23:
        v26 = [(FMDFMIPXPCServer *)v23 _errorForCode:v24 message:v22];
        v8[2](v8, v26);
LABEL_24:
      }
    }

    else
    {
      v37 = sub_100002880();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10022C3D8(v37, v38, v39, v40, v41, v42, v43, v44);
      }

      if (v8)
      {
        v22 = @"Passcode is not set. Cannot enable lost mode.";
        v23 = self;
        v24 = 7;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v29 = sub_100002880();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10022C360(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    if (v8)
    {
      v22 = @"You have passed in lostModeEnabled as NO. This is invalid";
      v23 = self;
      v24 = 1;
      goto LABEL_23;
    }
  }
}

- (void)disableLostModeUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[FMDFMIPXPCServer disableLostModeUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v11 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      v5[2](v5, v14);
    }

    goto LABEL_20;
  }

  v7 = +[FMDSystemConfig sharedInstance];
  v8 = [v7 isLocked];

  if (v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022C504();
    }

    if (v5)
    {
      v10 = @"Keybag is still locked. Cannot disable lost mode";
LABEL_19:
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:9 message:v10];
      v5[2](v5, v12);
LABEL_20:
    }
  }

  else
  {
    v15 = +[FMDFMIPManager sharedInstance];
    v16 = [v15 lostModeInfo];
    v17 = [v16 lostModeType];

    if (v17 != 5 && v17 != 3)
    {
      [FMDPreferencesMgr setClientLostModeInfo:0];
      v19 = +[FMDFMIPSharedStateManager sharedInstance];
      [v19 recalculateLostMode];

      v20 = +[FMDServiceProvider activeServiceProvider];
      v12 = [v20 locationTracker];

      [v12 deleteLocationTrackingInfoAndStopTracking];
      v21 = +[FMDLostModeManager sharedInstance];
      [v21 disableLostMode];

      if (v5)
      {
        v5[2](v5, 0);
      }

      goto LABEL_20;
    }

    v18 = sub_100002880();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10022C4C8();
    }

    if (v5)
    {
      v10 = @"Device is in managed lost mode. Cannot disable lost mode";
      goto LABEL_19;
    }
  }
}

- (void)deviceActivationDidSucceedUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[FMDFMIPXPCServer deviceActivationDidSucceedUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    [FMDPreferencesMgr setFMIPWipeLostModeInfo:0];
    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    v7 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"Entitlement not found for %@", v7];

    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v10 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v8];
      (v5)[2](v5, v10);
    }
  }
}

- (void)getLockdownShouldDisableDeviceRestoreUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[FMDFMIPXPCServer getLockdownShouldDisableDeviceRestoreUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDAppleAccountManager sharedInstance];
    v8 = [v7 fmipACAccount];

    if (v5)
    {
      v5[2](v5, v8 != 0, 0);
    }
  }

  else
  {
    v9 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v8];
      (v5)[2](v5, 0, v11);
    }
  }
}

- (void)getLockdownShouldDisableDevicePairingUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[FMDFMIPXPCServer getLockdownShouldDisableDevicePairingUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    [FMPreferencesUtil synchronizeDomain:kFMDPostWipePrefDomain];
    v7 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];
    if (v7)
    {
      if (v5)
      {
        (*(v5 + 2))(v5, 0, 0);
      }

      goto LABEL_21;
    }

    [FMPreferencesUtil synchronizeDomain:kFMDPublicNotBackedUpPrefDomain];
    v11 = [FMPreferencesUtil dictionaryForKey:@"FMIPLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];
    v10 = v11;
    if (v11 && ([v11 objectForKeyedSubscript:@"lostModeEnabled"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, (v13 & 1) != 0))
    {
      v14 = 1;
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = [FMPreferencesUtil dictionaryForKey:@"ClientLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:@"lostModeEnabled"];
        v14 = [v17 BOOLValue];
      }

      else
      {
        v14 = 0;
      }

      if (!v5)
      {
        goto LABEL_20;
      }
    }

    (*(v5 + 2))(v5, v14, 0);
LABEL_20:

    goto LABEL_21;
  }

  v8 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v5)
  {
    v10 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    (*(v5 + 2))(v5, 0, v10);
    goto LABEL_20;
  }

LABEL_21:
}

- (void)getFMIPStateUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer getFMIPStateUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 fmipState];

    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Returning FMIP state : %ld", buf, 0xCu);
    }

    if (v5)
    {
      v5[2](v5, v8, 0);
    }
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
      (v5)[2](v5, 4, v13);
    }
  }
}

- (void)getFmipAccountUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[FMDFMIPXPCServer getFmipAccountUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDAppleAccountManager sharedInstance];
    v8 = [v7 fmipACAccount];

    if (v5)
    {
      v9 = [v8 username];
      v10 = [v8 aa_personID];
      v5[2](v5, v9, v10, 0);

LABEL_10:
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v9 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v8];
      (v5)[2](v5, 0, 0, v9);
      goto LABEL_10;
    }
  }
}

- (void)didChangeFMIPAccountInfo:(id)a3 usingCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[FMDFMIPXPCServer didChangeFMIPAccountInfo:usingCallback:]";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s with changeDesc %@", buf, 0x16u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDAppleAccountManager sharedInstance];
    [v10 syncFMIPAccountInfo];

    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (v8)[2](v8, v14);
    }
  }
}

- (void)enableFMIPInContext:(unint64_t)a3 usingCallback:(id)a4
{
  v7 = a4;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[FMDFMIPXPCServer enableFMIPInContext:usingCallback:]";
    v32 = 2048;
    v33 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s in context %lu", buf, 0x16u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v9 = +[FMDAppleAccountManager sharedInstance];
    v10 = [v9 iCloudACAccount];

    if (v10)
    {
      v11 = kAccountDataclassDeviceLocator;
      if ([v10 isProvisionedForDataclass:kAccountDataclassDeviceLocator])
      {
        v12 = +[FMDServiceProvider activeServiceProvider];
        v13 = [v12 account];

        if (v13 && ([v10 aa_personID], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "dsid"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v16))
        {
          [v13 applyPropertiesFromACAccount:v10];
          v17 = +[FMDServiceProvider activeServiceProvider];
          [(FMDFMIPAccount *)v17 updateAccount:v13];
        }

        else
        {
          v17 = objc_alloc_init(FMDFMIPAccount);
          [(FMDFMIPAccount *)v17 applyPropertiesFromACAccount:v10];
          [(FMDFMIPAccount *)v17 setFmipEnableContext:a3];
          v26 = +[NSDate date];
          [(FMDAccount *)v17 setAccountAddTime:v26];

          v27 = [v13 dsid];
          [(FMDFMIPAccount *)v17 setLastLoggedInDsid:v27];

          v28 = +[FMDServiceProvider activeServiceProvider];
          [v28 addAccount:v17];
        }

        v29 = +[FMIPConfig sharedInstance];
        [v29 enableFMIPLocationServices];

        if (v7)
        {
          v7[2](v7, 0);
        }

        goto LABEL_25;
      }

      v23 = [v10 aa_personID];
      v13 = [NSString stringWithFormat:@"The account %@ is not provisioned for %@", v23, v11];

      v24 = sub_100002880();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10022A1D0();
      }

      if (!v7)
      {
        goto LABEL_25;
      }

      v21 = self;
      v22 = 9;
    }

    else
    {
      v13 = [NSString stringWithFormat:@"No iCloud account found to enableFMIP"];
      v20 = sub_100002880();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10022A1D0();
      }

      if (!v7)
      {
        goto LABEL_25;
      }

      v21 = self;
      v22 = 5;
    }

    v25 = [(FMDFMIPXPCServer *)v21 _errorForCode:v22 message:v13];
    (v7)[2](v7, v25);

LABEL_25:
    goto LABEL_26;
  }

  v18 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v18];

  v19 = sub_100002880();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v7)
  {
    v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    (v7)[2](v7, v13);
    goto LABEL_25;
  }

LABEL_26:
}

- (void)disableFMIPUsingToken:(id)a3 inContext:(unint64_t)a4 usingCallback:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = sub_100002880();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "non-nil";
    v51 = "[FMDFMIPXPCServer disableFMIPUsingToken:inContext:usingCallback:]";
    *buf = 136315650;
    if (!v9)
    {
      v12 = "nil";
    }

    v52 = 2048;
    v53 = a4;
    v54 = 2080;
    v55 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s in context %lu with %s token", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v13 = +[FMDSystemConfig sharedInstance];
    v14 = [v13 isBuddyDone];

    if (v14)
    {
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10019F3B8;
      v46[3] = &unk_1002D04D8;
      v47 = v9;
      v49 = a4;
      v15 = v10;
      v48 = v15;
      v16 = objc_retainBlock(v46);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10019F534;
      v44[3] = &unk_1002CD8B0;
      v44[4] = self;
      v45 = v15;
      v17 = objc_retainBlock(v44);
      if (!+[FMDRatchetManager isFeatureEnabled])
      {
        v27 = sub_10017DEB4();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Ratchet not enabled. Allowing disable FMIP.", buf, 2u);
        }

        (v16[2])(v16);
        goto LABEL_28;
      }

      if (a4 == 4)
      {
        v18 = +[FMDOwnerAuthenticationManager ownerAuthenticationManagerEraseAllContentsAndSettings];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10019F640;
        v38[3] = &unk_1002CE250;
        v39 = v16;
        [v18 setPermittedOperationBlock:v38];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10019F650;
        v36[3] = &unk_1002CE250;
        v37 = v17;
        [v18 setDeniedOperationBlock:v36];
        [v18 evaluateOperation];

        v19 = v39;
      }

      else
      {
        if (a4 != 2)
        {
          v28 = sub_10017DEB4();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v51 = a4;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Checking ratchet for the context: %lu.", buf, 0xCu);
          }

          v29 = +[FMDRatchetManager ratchetManagerTurnOffFMIP];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_10019F660;
          v33[3] = &unk_1002D0500;
          v35 = a4;
          v34 = v16;
          [v29 setPermittedOperationBlock:v33];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10019F718;
          v30[3] = &unk_1002D0500;
          v32 = a4;
          v31 = v17;
          [v29 setDeniedOperationBlock:v30];
          [v29 evaluateOperation];

          goto LABEL_28;
        }

        v18 = +[FMDRatchetManager ratchetManageriCloudSignOut];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10019F620;
        v42[3] = &unk_1002CE250;
        v43 = v16;
        [v18 setPermittedOperationBlock:v42];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10019F630;
        v40[3] = &unk_1002CE250;
        v41 = v17;
        [v18 setDeniedOperationBlock:v40];
        [v18 evaluateOperation];

        v19 = v43;
      }

LABEL_28:
      v21 = v47;
      goto LABEL_29;
    }

    v21 = [NSString stringWithFormat:@"FMIP account cannot be removed till buddy is complete"];
    v25 = sub_100002880();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v10)
    {
      v23 = self;
      v24 = 9;
      goto LABEL_19;
    }
  }

  else
  {
    v20 = NSStringFromSelector(a2);
    v21 = [NSString stringWithFormat:@"Entitlement not found for %@", v20];

    v22 = sub_100002880();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v10)
    {
      v23 = self;
      v24 = 6;
LABEL_19:
      v26 = [(FMDFMIPXPCServer *)v23 _errorForCode:v24 message:v21];
      (*(v10 + 2))(v10, v26);
    }
  }

LABEL_29:
}

- (void)disableFMIPUsingToken:(id)a3 forPairedDeviceWithUDID:(id)a4 usingCallback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "non-nil";
    v28 = "[FMDFMIPXPCServer disableFMIPUsingToken:forPairedDeviceWithUDID:usingCallback:]";
    *buf = 136315650;
    if (!v9)
    {
      v13 = "nil";
    }

    v29 = 2112;
    v30 = v10;
    v31 = 2080;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for udid %@ with %s token", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v14 = +[FMDSystemConfig sharedInstance];
    v15 = [v14 isBuddyDone];

    if (v15)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019FA9C;
      block[3] = &unk_1002CE278;
      v24 = v9;
      v25 = v10;
      v26 = v11;
      dispatch_async(&_dispatch_main_q, block);

      v16 = v24;
      goto LABEL_17;
    }

    v16 = [NSString stringWithFormat:@"FMIP account cannot be removed till buddy is complete"];
    v21 = sub_100002880();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v11)
    {
      v19 = self;
      v20 = 9;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = NSStringFromSelector(a2);
    v16 = [NSString stringWithFormat:@"Entitlement not found for %@", v17];

    v18 = sub_100002880();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v11)
    {
      v19 = self;
      v20 = 6;
LABEL_16:
      v22 = [(FMDFMIPXPCServer *)v19 _errorForCode:v20 message:v16];
      (*(v11 + 2))(v11, v22);
    }
  }

LABEL_17:
}

- (void)disableFMIPForAccount:(id)a3 pairedDeviceWithUDID:(id)a4 usingCallback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "non-nil";
    v28 = "[FMDFMIPXPCServer disableFMIPForAccount:pairedDeviceWithUDID:usingCallback:]";
    *buf = 136315650;
    if (!v9)
    {
      v13 = "nil";
    }

    v29 = 2112;
    v30 = v10;
    v31 = 2080;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for udid %@ with %s account", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v14 = +[FMDSystemConfig sharedInstance];
    v15 = [v14 isBuddyDone];

    if (v15)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019FDE0;
      block[3] = &unk_1002CE278;
      v24 = v9;
      v25 = v10;
      v26 = v11;
      dispatch_async(&_dispatch_main_q, block);

      v16 = v24;
      goto LABEL_17;
    }

    v16 = [NSString stringWithFormat:@"FMIP account cannot be removed till buddy is complete"];
    v21 = sub_100002880();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v11)
    {
      v19 = self;
      v20 = 9;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = NSStringFromSelector(a2);
    v16 = [NSString stringWithFormat:@"Entitlement not found for %@", v17];

    v18 = sub_100002880();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v11)
    {
      v19 = self;
      v20 = 6;
LABEL_16:
      v22 = [(FMDFMIPXPCServer *)v19 _errorForCode:v20 message:v16];
      (*(v11 + 2))(v11, v22);
    }
  }

LABEL_17:
}

- (void)markAsMissingSupportedForPairedDeviceWithUDID:(id)a3 usingCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v43 = "[FMDFMIPXPCServer markAsMissingSupportedForPairedDeviceWithUDID:usingCallback:]";
    v44 = 2112;
    v45 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for udid %@", buf, 0x16u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v31 = v8;
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    v11 = [v10 getPairedDevices];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      v16 = NRDevicePropertyIsPaired;
      v17 = NRDevicePropertyUDID;
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v35 + 1) + 8 * v18);
        v20 = [v19 valueForProperty:v16];
        v21 = [v20 BOOLValue];

        if (v7)
        {
          if (v21)
          {
            v22 = [v19 valueForProperty:v17];
            v23 = [v7 isEqualToString:v22];

            if (v23)
            {
              break;
            }
          }
        }

        if (v14 == ++v18)
        {
          v14 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v14)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      v27 = v19;

      if (!v27)
      {
        goto LABEL_21;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001A03E0;
      block[3] = &unk_1002CE228;
      v33 = v27;
      v8 = v31;
      v34 = v31;
      v26 = v27;
      dispatch_async(&_dispatch_main_q, block);

      v28 = v33;
      goto LABEL_25;
    }

LABEL_14:

LABEL_21:
    v29 = sub_100002880();
    v8 = v31;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10022A308();
    }

    if (v31)
    {
      v30 = kFMDErrorDomain;
      v39 = NSLocalizedFailureReasonErrorKey;
      v40 = @"No paired device with this UDID";
      v26 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v28 = [NSError errorWithDomain:v30 code:1 userInfo:v26];
      (v31)[2](v31, 0, v28);
LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
    v24 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v24];

    v25 = sub_100002880();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v26 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (*(v8 + 2))(v8, 0, v26);
LABEL_26:
    }
  }
}

- (void)markPairedDeviceWithUDID:(id)a3 asMissingUsingToken:(id)a4 callback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "non-nil";
    v23 = "[FMDFMIPXPCServer markPairedDeviceWithUDID:asMissingUsingToken:callback:]";
    *buf = 136315650;
    if (!v10)
    {
      v13 = "nil";
    }

    v24 = 2112;
    v25 = v9;
    v26 = 2080;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for udid %@ with %s token", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A0874;
    block[3] = &unk_1002CE278;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    dispatch_async(&_dispatch_main_q, block);

    v14 = v19;
  }

  else
  {
    v15 = NSStringFromSelector(a2);
    v14 = [NSString stringWithFormat:@"Entitlement not found for %@", v15];

    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v11)
    {
      v17 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v14];
      (*(v11 + 2))(v11, v17);
    }
  }
}

- (void)isActivationLockAllowedUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[FMDFMIPXPCServer isActivationLockAllowedUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDSystemConfig sharedInstance];
    v8 = [v7 allowsActivationLock];

    if (v5)
    {
      v5[2](v5, v8, 0);
    }
  }

  else
  {
    v9 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      (v5)[2](v5, 0, v12);
    }
  }
}

- (void)isActivationLockEnabledUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[FMDFMIPXPCServer isActivationLockEnabledUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 fmipState];

    if (v8 <= 2)
    {
      v9 = +[FMDSystemConfig sharedInstance];
      v10 = [v9 allowsActivationLock];

      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
    if (v5)
    {
LABEL_13:
      v5[2](v5, v10, 0);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (v5)[2](v5, 0, v14);
    }
  }

LABEL_14:
}

- (void)isActivationLockedUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[FMDFMIPXPCServer isActivationLockedUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 isActivationLocked];
    if (v5)
    {
      v5[2](v5, v8, 0);
    }
  }

  else
  {
    v9 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
      (v5)[2](v5, 0, v11);
    }
  }
}

- (void)enableActivationLockUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[FMDFMIPXPCServer enableActivationLockUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = NSStringFromSelector(a2);
    v9 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v9];
      v5[2](v5, v12);
    }

    goto LABEL_14;
  }

  v7 = +[FMDSystemConfig sharedInstance];
  v8 = [v7 allowsActivationLock];

  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A1080;
    block[3] = &unk_1002CE250;
    v22 = v5;
    dispatch_async(&_dispatch_main_q, block);
    v9 = v22;
LABEL_14:

    goto LABEL_15;
  }

  v13 = sub_100002880();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10022C540(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  if (v5)
  {
    v9 = [(FMDFMIPXPCServer *)self _errorForCode:9 message:@"Activation lock is not allowed for this device"];
    v5[2](v5, v9);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)activationLockVersionWithCompletion:(id)a3
{
  if (a3)
  {
    v3 = kFMDNotBackedUpPrefDomain;
    v4 = a3;
    v4[2](v4, [FMPreferencesUtil integerForKey:@"identityVersion" inDomain:v3], 0);
  }
}

- (void)didReceiveLostModeExitAuthToken:(id)a3 usingCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[FMDFMIPXPCServer didReceiveLostModeExitAuthToken:usingCallback:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDAppleAccountManager sharedInstance];
    v11 = [v10 fmipACAccount];

    if (v11)
    {
      v12 = +[FMDPreferencesMgr lostModeExitAuthForPairedDeviceID];
      if (v12)
      {
        [FMDPreferencesMgr setLostModeExitAuthForPairedDeviceID:0];
        [(FMDFMIPXPCServer *)self sendPairedDeviceLostModeExitAuthToken:v7 deviceID:v12];
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v19 = +[FMDServiceProvider activeServiceProvider];
        [v19 sendLostModeExitAuthWithToken:v7];

        if (!v8)
        {
LABEL_18:

          goto LABEL_19;
        }
      }

      v18 = 0;
LABEL_17:
      v8[2](v8, v18);
      goto LABEL_18;
    }

    if (v8)
    {
      v17 = @"FMIP account not found";
      v15 = self;
      v16 = 5;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v15 = self;
      v16 = 6;
      v17 = v11;
LABEL_14:
      v18 = [(FMDFMIPXPCServer *)v15 _errorForCode:v16 message:v17];
      v12 = v18;
      goto LABEL_17;
    }
  }

LABEL_19:
}

- (void)initiateLostModeExitAuthForApp:(id)a3 idsDeviceID:(id)a4 usingCallback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "[FMDFMIPXPCServer initiateLostModeExitAuthForApp:idsDeviceID:usingCallback:]";
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for bundleID %@, idsDeviceID %@", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v13 = +[FMDAppleAccountManager sharedInstance];
    v14 = [v13 fmipACAccount];

    if (!v11 || v14)
    {
      if (v10)
      {
        [FMDPreferencesMgr setLostModeExitAuthForPairedDeviceID:v10];
        v18 = @"FMW_RENEW_CREDENTIALS_APPLE_PAY";
      }

      else
      {
        v18 = @"FMIP_RENEW_CREDENTIALS_APPLE_PAY";
      }

      v19 = +[FMDServiceProvider activeServiceProvider];
      v15 = [v19 account];

      v20 = [(__CFString *)v18 fmd_localizedString];
      v21 = [v15 username];
      v22 = [NSString stringWithFormat:v20, v21];

      [FMDPreferencesMgr setNeedsLostModeExitAuth:1];
      objc_initWeak(buf, self);
      v23 = +[FMDAppleAccountManager sharedInstance];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1001A17D4;
      v24[3] = &unk_1002D0528;
      objc_copyWeak(&v26, buf);
      v25 = v11;
      [v23 forceUserAuthForiCloudAccountForApp:v9 message:v22 really:1 withCompletion:v24];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    else
    {
      v15 = [(FMDFMIPXPCServer *)self _errorForCode:5 message:@"FMIP account not found"];
      (*(v11 + 2))(v11, v15);
    }

    goto LABEL_15;
  }

  v16 = NSStringFromSelector(a2);
  v14 = [NSString stringWithFormat:@"Entitlement not found for %@", v16];

  v17 = sub_100002880();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v11)
  {
    v15 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v14];
    (*(v11 + 2))(v11, v15);
LABEL_15:
  }
}

- (void)lowBatteryLocateEnabledUsingCallback:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[FMDFMIPXPCServer lowBatteryLocateEnabledUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 account];

    v9 = [v8 lowBatteryLocateEnabled];
    if (v5)
    {
      v5[2](v5, v9, 0);
    }
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v8];
      (v5)[2](v5, 0, v12);
    }
  }
}

- (void)signatureHeadersWithData:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FMDFMIPXPCServer signatureHeadersWithData:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", &buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = v7;
    v23 = +[NSUUID UUID];
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x2020000000;
    v63 = 0;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2020000000;
    v61 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v65 = 0x3032000000;
    v66 = sub_10000AAE4;
    v67 = sub_100002B3C;
    v68 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x3032000000;
    v58[3] = sub_10000AAE4;
    v58[4] = sub_100002B3C;
    v59 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = sub_10000AAE4;
    v56[4] = sub_100002B3C;
    v57 = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x3032000000;
    v54[3] = sub_10000AAE4;
    v54[4] = sub_100002B3C;
    v55 = 0;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x3032000000;
    v52[3] = sub_10000AAE4;
    v52[4] = sub_100002B3C;
    v53 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3032000000;
    v50[3] = sub_10000AAE4;
    v50[4] = sub_100002B3C;
    v51 = 0;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1001A233C;
    v37[3] = &unk_1002D0578;
    v22 = dispatch_queue_create("FMDFMIPXPCServer.populateHeaders", 0);
    v38 = v22;
    v42 = v62;
    v43 = v60;
    v44 = v56;
    v45 = v50;
    p_buf = &buf;
    v11 = v10;
    v47 = v58;
    v48 = v52;
    v49 = v54;
    v12 = v23;
    v39 = v12;
    v40 = self;
    v41 = v8;
    v13 = objc_retainBlock(v37);
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "signatureHeadersWithData : Will attempt Absinth signing", v36, 2u);
    }

    v15 = +[FMDAbsintheV3SigningInterface sharedInterface];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001A26C8;
    v30[3] = &unk_1002D05A0;
    v32 = v56;
    v33 = &buf;
    v34 = v58;
    v35 = v62;
    v16 = v13;
    v31 = v16;
    [v15 signatureForData:v11 requestUUID:v12 mode:1 cause:@"app" completion:v30];

    v17 = [[FMDIdentitySigningRequest alloc] initWithData:v11];
    v18 = objc_alloc_init(FMDDeviceIdentityFactory);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001A2988;
    v24[3] = &unk_1002D05C8;
    v26 = v50;
    v27 = v52;
    v28 = v54;
    v29 = v60;
    v19 = v16;
    v25 = v19;
    [v18 baaIdentityAttestationForSigningRequest:v17 completion:v24];

    _Block_object_dispose(v50, 8);
    _Block_object_dispose(v52, 8);

    _Block_object_dispose(v54, 8);
    _Block_object_dispose(v56, 8);

    _Block_object_dispose(v58, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(v62, 8);
    goto LABEL_11;
  }

  v20 = NSStringFromSelector(a2);
  v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v20];

  v21 = sub_100002880();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v8)
  {
    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
    (*(v8 + 2))(v8, 0, v12);
LABEL_11:
  }
}

- (void)getAccessoriesWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FMDFMIPXPCServer getAccessoriesWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 accessoryRegistry];
    v9 = [v8 allAccessories];

    +[NSMutableArray array];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001A2D3C;
    v10 = v14[3] = &unk_1002D05F0;
    v15 = v10;
    [v9 enumerateObjectsUsingBlock:v14];
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Returning Accessories : %@", buf, 0xCu);
    }

    if (v5)
    {
      v5[2](v5, 0, v10);
    }

    goto LABEL_13;
  }

  v12 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

  v13 = sub_100002880();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v5)
  {
    v9 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    (v5)[2](v5, v9, 0);
LABEL_13:
  }
}

- (void)attemptUCRTHealing:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(FMDFMIPXPCServer *)self _hasUCRTHealingAccessEntitlement])
  {
    v9 = +[FMDServiceProvider activeServiceProvider];
    [v9 attemptUCRTHealing:v7 completion:v8];
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v12 = sub_10017DC94();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
      v8[2](v8, 0, v13);
    }
  }
}

- (void)fetchAccessoryConfigurations:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[FMDFMIPXPCServer fetchAccessoryConfigurations:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDExtConfigurationRegistry sharedInstance];
    v8 = [v7 configurations];
    v9 = [v8 allKeys];

    [v7 fetchSupportedAccessoryTypes];
    [v7 fetchConfigForAccessoryTypes:v9];
    if (!v5)
    {
LABEL_11:

      goto LABEL_12;
    }

    v10 = 0;
LABEL_10:
    v5[2](v5, v10);
    goto LABEL_11;
  }

  v11 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v5)
  {
    v10 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    v9 = v10;
    goto LABEL_10;
  }

LABEL_12:
}

- (void)removeAccessoryWithDiscoveryId:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[FMDFMIPXPCServer removeAccessoryWithDiscoveryId:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = sub_10000BE38();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "removeAccessoryWithDiscoveryId called for accessory with serialNumber %@", buf, 0xCu);
    }

    v11 = [FMDExtExtensionHelper getAccessoryProxyForId:@"com.apple.icloud.FindMyDevice.FindMyExtensionContainer.FMDMagSafeExtension" withDelegate:0];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001A32E0;
    v15[3] = &unk_1002CD770;
    v16 = v8;
    [v11 removeAccesoryWithSerialNumber:v7 completion:v15];
    v12 = v16;
    goto LABEL_11;
  }

  v13 = NSStringFromSelector(a2);
  v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v8)
  {
    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
    (*(v8 + 2))(v8, v12);
LABEL_11:
  }
}

- (void)setPhoneNumber:(id)a3 toAccessoryWithDiscoveryId:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "[FMDFMIPXPCServer setPhoneNumber:toAccessoryWithDiscoveryId:completion:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v40 = v9;
    v39 = +[FMDServiceProvider activeServiceProvider];
    v38 = [v39 accessoryRegistry];
    [v38 allAccessories];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = v46 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v44;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        v19 = [v18 address];
        v20 = [v19 isEqualToString:v10];

        if (v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v25 = v18;

      if (!v25)
      {
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        v27 = +[FMDExtConfigurationRegistry sharedInstance];
        v28 = [v26 accessoryType];
        v29 = [v27 configForAccessoryType:v28];

        v30 = [v29 flavorForFeature:@"scd"];
        v31 = sub_10000BE38();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_10022C6D4();
        }

        if (v30)
        {
          v32 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"scd" flavor:v30];
          v33 = [v26 accessoryIdentifier];
          v34 = [v33 stringValue];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1001A3898;
          v41[3] = &unk_1002CD770;
          v42 = v11;
          v9 = v40;
          [v32 setPhoneNumberForAccessoryId:v34 phoneNumber:v40 info:0 completion:v41];

          v25 = v26;
          goto LABEL_32;
        }
      }

      v37 = sub_100002880();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10022C748(v25);
      }

      (*(v11 + 2))(v11, 0);
    }

    else
    {
LABEL_12:

LABEL_23:
      v25 = [NSString stringWithFormat:@"Accesory not found with discovery id %@", v10];
      v35 = sub_100002880();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10022A1D0();
      }

      if (v11)
      {
        v36 = [(FMDFMIPXPCServer *)self _errorForCode:14 message:v25];
        (*(v11 + 2))(v11, v36);
      }
    }

    v9 = v40;
LABEL_32:
    v24 = v38;

    v22 = v39;
    goto LABEL_33;
  }

  v21 = NSStringFromSelector(a2);
  v22 = [NSString stringWithFormat:@"Entitlement not found for %@", v21];

  v23 = sub_100002880();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v11)
  {
    v24 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v22];
    (*(v11 + 2))(v11, v24);
LABEL_33:
  }
}

- (void)getConnectedAccessoriesDiscoveryIds:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[FMDFMIPXPCServer getConnectedAccessoriesDiscoveryIds:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 accessoryRegistry];
    v9 = [v8 allAccessories];
    v10 = objc_alloc_init(NSMutableArray);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 connectionState] == 1)
          {
            v17 = [v16 address];
            [v10 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v5[2](v5, v10, 0);
    goto LABEL_18;
  }

  v18 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v18];

  v19 = sub_100002880();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v5)
  {
    v8 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    (v5)[2](v5, 0, v8);
LABEL_18:
  }
}

- (void)registerDeviceForPairingLock:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FMDFMIPXPCServer registerDeviceForPairingLock:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [[FMDPairingLockRegisterAction alloc] initWithProvider:v10 registerRequestInfo:v7];
    [(FMDPairingLockRegisterAction *)v11 performOnActionCompletion:v8];
    v12 = +[ActionManager sharedManager];
    v13 = [v12 enqueueAction:v11];

LABEL_9:
    goto LABEL_10;
  }

  v14 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

  v15 = sub_100002880();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v8)
  {
    v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    v8[2](v8, v11, 0);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)updatePairingLockInfo:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[FMDFMIPXPCServer updatePairingLockInfo:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [[FMDPairingLockUpdateInfoAction alloc] initWithProvider:v10 updateRequestInfo:v7];
    v8[2](v8, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001A3F8C;
    v16[3] = &unk_1002CD868;
    v17 = v7;
    [(FMDPairingLockUpdateInfoAction *)v11 performOnActionCompletion:v16];
    v12 = +[ActionManager sharedManager];
    v13 = [v12 enqueueAction:v11];

LABEL_9:
    goto LABEL_10;
  }

  v14 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

  v15 = sub_100002880();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v8)
  {
    v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    (v8)[2](v8, v11);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)pairingCheckWith:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FMDFMIPXPCServer pairingCheckWith:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [[FMDPairingCheckCommandAction alloc] initWithProvider:v10 pairingCheckRequestInfo:v7];
    [(FMDPairingCheckCommandAction *)v11 performOnActionCompletion:v8];
    v12 = +[ActionManager sharedManager];
    v13 = [v12 enqueueAction:v11];

LABEL_9:
    goto LABEL_10;
  }

  v14 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

  v15 = sub_100002880();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v8)
  {
    v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    v8[2](v8, v11, 0);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)soundStoppedForAccessoryIdentifier:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[FMDFMIPXPCServer soundStoppedForAccessoryIdentifier:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 accessoryRegistry];
    v9 = [[FMDAccessoryIdentifier alloc] initWithString:v5];
    v10 = [v8 accessoryForIdentifier:v9];
    [v8 updateAccessory:v10 playbackChannels:&__NSArray0__struct];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)playSoundWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[FMDFMIPXPCServer playSoundWithOptions:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v8 = +[FMDFMIPManager sharedInstance];
    v9 = [v8 lostModeIsActive];

    if (v9)
    {
      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting a play sound message", buf, 2u);
      }

      v11 = objc_alloc_init(FMDMessage);
      [(FMDMessage *)v11 setPlaySound:1];
      [(FMDMessage *)v11 setSoundName:@"fmd_sound"];
      [(FMDMessage *)v11 setSoundDuration:120];
      [(FMDMessage *)v11 setIsHighPrioritySound:1];
      [(FMDMessage *)v11 setIsFmipSound:1];
      [(FMDMessage *)v11 setVibrate:1];
      [(FMDMessage *)v11 activate];
      v6[2](v6, 0);
    }

    else
    {
      v11 = [(FMDFMIPXPCServer *)self _errorForCode:9 message:@"Cannot play sound while not in lost mode."];
      (v6)[2](v6, v11);
    }
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v6)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
      (v6)[2](v6, v14);
    }
  }
}

- (void)clearData:(unint64_t)a3 completion:(id)a4
{
  v7 = a4;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FMDFMIPXPCServer clearData:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    if (a3 == 1)
    {
      v9 = objc_alloc_init(FMDAccessoryLocationStore);
      [(FMDAccessoryLocationStore *)v9 clearAccessoryLocationStore];
      v10 = +[FMDServiceProvider activeServiceProvider];
      v11 = [v10 accessoryLocationStore];
      [v11 clearAccessoryLocationStore];
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v13 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v7)
    {
      v15 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v13];
      (v7)[2](v7, v15);
    }
  }
}

- (void)deviceEligibleForRepairWithContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(FMDFMIPXPCServer *)self _hasRepairDeviceAccessEntitlement])
  {
    v9 = +[FMDServiceProvider activeServiceProvider];
    [v9 deviceEligibleForRepairWithContext:v7 completion:v8];
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
    (*(v8 + 2))(v8, 0, v13);
  }
}

- (void)enableRepairWithContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(FMDFMIPXPCServer *)self _hasRepairDeviceAccessEntitlement])
  {
    v9 = +[NSXPCConnection currentConnection];
    v10 = v9;
    if (v9)
    {
      [v9 auditToken];
      v11 = xpc_copy_code_signing_identity_for_token();
      v12 = [NSString stringWithUTF8String:v11];
      free(v11);
    }

    else
    {
      v12 = @"unknown";
    }

    v15 = +[FMDServiceProvider activeServiceProvider];
    [v15 enableRepairWithContext:v7 callingClient:v12 completion:v8];

    v8 = v15;
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    (*(v8 + 2))(v8, 0, v12);
  }
}

- (void)requireDisableLocationWithCompletion:(id)a3
{
  v5 = a3;
  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v6 = +[FMSystemInfo sharedInstance];
    if ([v6 isInternalBuild])
    {
      v7 = [FMPreferencesUtil BOOLForKey:@"SimulateRequireDisableLocationFailure" inDomain:kFMDNotBackedUpPrefDomain];

      if (v7)
      {
        v8 = sub_10017DE2C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requireDisableLocationWithCompletion simulating failure.", buf, 2u);
        }

        v9 = [NSError errorWithDomain:kFMDErrorDomain code:12 userInfo:0];
        v5[2](v5, -1, v9);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v13 = +[FMDServiceProvider activeServiceProvider];
    v9 = v13;
    if (v13)
    {
      v14 = [v13 fmipState] == 1 || objc_msgSend(v9, "fmipState") == 0;
      v17 = +[FMDSystemConfig sharedInstance];
      v18 = [v17 isFMIPLocationServicesEnabled];

      v19 = sub_10017DE2C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v21 = v14 & v18;
        v22 = 1024;
        v23 = v14;
        v24 = 1024;
        v25 = v18 & 1;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "requireDisableLocationWithCompletion result %li, fmip: %i, locationService: %i.", buf, 0x18u);
      }

      v5[2](v5, v14 & v18, 0);
      goto LABEL_23;
    }

    v15 = sub_10017DE2C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10022C7CC();
    }

    v12 = [NSError errorWithDomain:kFMDErrorDomain code:2 userInfo:0];
LABEL_18:
    v16 = v12;
    v5[2](v5, -1, v12);

    goto LABEL_23;
  }

  v10 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

  v11 = sub_10017DE2C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v5)
  {
    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v9];
    goto LABEL_18;
  }

LABEL_23:
}

- (void)disableLocationDisplayWithCompletion:(id)a3
{
  v5 = a3;
  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v6 = +[FMSystemInfo sharedInstance];
    if ([v6 isInternalBuild])
    {
      v7 = [FMPreferencesUtil BOOLForKey:@"SimulateDisableLocationDisplayFailure" inDomain:kFMDNotBackedUpPrefDomain];

      if (v7)
      {
        v8 = sub_10017DE2C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "disableLocationDisplayWithCompletion simulating failure.", buf, 2u);
        }

        v9 = [NSError errorWithDomain:kFMDErrorDomain code:12 userInfo:0];
        v5[2](v5, v9);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v9 = +[FMDServiceProvider activeServiceProvider];
    if (v9)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1001A530C;
      v15[3] = &unk_1002CD770;
      v16 = v5;
      [v9 disableLocationDisplayWithCompletion:v15];
      v13 = v16;
LABEL_18:

      goto LABEL_19;
    }

    v14 = sub_10017DE2C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022C7CC();
    }

    v12 = [NSError errorWithDomain:kFMDErrorDomain code:2 userInfo:0];
LABEL_17:
    v13 = v12;
    v5[2](v5, v12);
    goto LABEL_18;
  }

  v10 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

  v11 = sub_10017DE2C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (v5)
  {
    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v9];
    goto LABEL_17;
  }

LABEL_19:
}

- (void)_forceUpgradeAlertForKey:(id)a3 UsingCallback:(id)a4
{
  v42 = a3;
  v7 = a4;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v52 = "[FMDFMIPXPCServer _forceUpgradeAlertForKey:UsingCallback:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v9 = +[FMSystemInfo sharedInstance];
    v10 = [v9 isInternalBuild];

    if (v10)
    {
      v38 = v7;
      v11 = +[NRPairedDeviceRegistry sharedInstance];
      v12 = [v11 getPairedDevices];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v12;
      v13 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v46;
        v16 = NRDevicePropertyIsPaired;
        v41 = NRDevicePropertyPairingID;
        v40 = NRDevicePropertyLocalPairingDataStorePath;
        v39 = NRDevicePropertyUDID;
        do
        {
          v17 = 0;
          v43 = v14;
          do
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v45 + 1) + 8 * v17);
            v19 = [v18 valueForProperty:v16];
            v20 = [v19 BOOLValue];

            if (v20)
            {
              v21 = v16;
              v22 = [v18 valueForProperty:v41];
              v23 = [v18 valueForProperty:v40];
              v24 = [NPSDomainAccessor alloc];
              v25 = [v24 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v22 pairingDataStore:v23];
              v26 = [v25 synchronize];
              v27 = sub_100002880();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = [v18 valueForProperty:v39];
                *buf = 138412290;
                v52 = v28;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Forcing AL upgrade alert for device with udid %@", buf, 0xCu);
              }

              [v25 setBool:1 forKey:v42];
              v29 = [v25 synchronize];
              v30 = objc_opt_new();
              v31 = kFMDWatchNotBackedUpPrefDomain;
              v49 = v42;
              v32 = [NSArray arrayWithObjects:&v49 count:1];
              v33 = [NSSet setWithArray:v32];
              [v30 synchronizeNanoDomain:v31 keys:v33];

              v16 = v21;
              v14 = v43;
            }

            v17 = v17 + 1;
          }

          while (v14 != v17);
          v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v14);
      }

      v7 = v38;
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    v34 = NSStringFromSelector(a2);
    v35 = [NSString stringWithFormat:@"Entitlement not found for %@", v34];

    v36 = sub_100002880();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v7)
    {
      v37 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v35];
      (v7)[2](v7, v37);
    }
  }
}

- (void)setDailyLocateReportEnabled:(BOOL)a3
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[FMDFMIPXPCServer setDailyLocateReportEnabled:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", &v7, 0xCu);
  }

  v5 = +[FMSystemInfo sharedInstance];
  v6 = [v5 isInternalBuild];

  if (v6)
  {
    [(FMDFMIPXPCServer *)self scheduleDailyLocateReportXPCActivity];
  }
}

- (void)showDailyLocateReport
{
  v5 = objc_alloc_init(FMAlert);
  [v5 setCategory:3];
  v3 = [(FMDFMIPXPCServer *)self locateStats];
  [v5 setMsgText:v3];

  [v5 setMsgTitle:@"FMIP Daily Locate Report"];
  [v5 setShowMsgInLockScreen:1];
  [v5 setDismissMsgOnUnlock:0];
  [v5 setDismissMsgOnLock:0];
  [v5 setDefaultButtonTitle:@"OK"];
  v4 = +[FMAlertManager sharedInstance];
  [v4 activateAlert:v5];
}

- (void)scheduleDailyLocateReportXPCActivity
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001A5B60;
  handler[3] = &unk_1002D0638;
  handler[4] = self;
  xpc_activity_register([@"com.apple.icloud.findmydeviced.dailyReportSchedule" cStringUsingEncoding:4], v3, handler);
}

- (id)locateStats
{
  v2 = objc_alloc_init(FMDEventLoggerFacilityOnDiskStats);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000AAE4;
  v19 = sub_100002B3C;
  v20 = &stru_1002DCE08;
  v3 = [&stru_1002DCE08 stringByAppendingString:@"Locates during the past 3 days\n"];
  v4 = v16[5];
  v16[5] = v3;

  v5 = [(FMDEventLoggerFacilityOnDiskStats *)v2 loggedEventsForEventName:@"FMDLocatorLocateEvent"];
  v6 = +[NSDate date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  v9 = 0;
  for (i = 3; i; --i)
  {
    v11 = v9 + 1;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001A5EC4;
    v14[3] = &unk_1002D0660;
    *&v14[5] = v8 - (v9 + 1) * 86400.0;
    *&v14[6] = v8 - v9 * 86400.0;
    v14[4] = &v15;
    v14[7] = v9;
    [v5 enumerateObjectsUsingBlock:v14];
    v9 = v11;
  }

  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)_deviceIdentifiersForSignature
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 internationalMobileEquipmentIdentity];
  [v2 fm_safelyMapKey:@"imei" toObject:v4];

  v5 = +[FMDSystemConfig sharedInstance];
  v6 = [v5 mobileEquipmentIdentifier];
  [v2 fm_safelyMapKey:@"meid" toObject:v6];

  v7 = +[FMDSystemConfig sharedInstance];
  v8 = [v7 serialNumber];
  [v2 fm_safelyMapKey:@"serialNumber" toObject:v8];

  v9 = +[FMDSystemConfig sharedInstance];
  v10 = [v9 escrowHash];
  v11 = [v10 hexString];
  [v2 fm_safelyMapKey:@"escrowHash" toObject:v11];

  v12 = +[FMDSystemConfig sharedInstance];
  v13 = [v12 ecid];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v13 longLongValue]);
  [v2 fm_safelyMapKey:@"ecid" toObject:v14];

  v15 = +[FMDSystemConfig sharedInstance];
  v16 = [v15 chipId];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v16 longLongValue]);
  [v2 fm_safelyMapKey:@"chipId" toObject:v17];

  v18 = +[FMDSystemConfig sharedInstance];
  v19 = [v18 wifiMacAddress];
  [v2 fm_safelyMapKey:@"wifiMac" toObject:v19];

  v20 = +[FMDSystemConfig sharedInstance];
  v21 = [v20 btMacAddress];
  [v2 fm_safelyMapKey:@"btMac" toObject:v21];

  v22 = +[FMDAbsintheV3SigningInterface sharedInterface];
  v30 = 0;
  v23 = [v22 inFieldCollectionReceipt:&v30];
  v24 = v30;
  [v2 fm_safelyMapKey:@"ifcReceipt" toObject:v23];

  v25 = [v24 fm_commaSeparatedString];
  [v2 fm_safelyMapKey:@"collectionError" toObject:v25];

  v26 = +[FMSystemInfo sharedInstance];
  LODWORD(v23) = [v26 isInternalBuild];

  if (v23)
  {
    v27 = [v24 description];
    [v2 fm_safelyMapKey:@"collectionErrorDetail" toObject:v27];
  }

  v28 = sub_100002880();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v2;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Generated device identifiers %@", buf, 0xCu);
  }

  return v2;
}

- (BOOL)_hasRepairDeviceAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.FindMyDevice.RepairDevice.access"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasUCRTHealingAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.FindMyDevice.ucrt.healing.access"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasAuthAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.findmydeviced.access.auth"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasSharedConfigurationAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceSharedConfiguration.access"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_errorForCode:(int)a3 message:(id)a4
{
  v5 = a4;
  v6 = [NSError alloc];
  v7 = kFMDErrorDomain;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &stru_1002DCE08;
  }

  v12 = NSLocalizedFailureReasonErrorKey;
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [v6 initWithDomain:v7 code:a3 userInfo:v9];

  return v10;
}

- (void)sendPairedDeviceLostModeExitAuthToken:(id)a3 deviceID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preparing to send exit lost mode token to ids device.", buf, 2u);
  }

  v9 = objc_alloc_init(FMDNanoSupportProtoLostModeExitAuth);
  [(FMDNanoSupportProtoLostModeExitAuth *)v9 setLostModeExitAuthToken:v7];

  v10 = [IDSProtobuf alloc];
  v11 = [(FMDNanoSupportProtoLostModeExitAuth *)v9 data];
  v12 = [v10 initWithProtobufData:v11 type:6 isResponse:0];

  v13 = [(FMDFMIPXPCServer *)self protectedIDSManager];
  [v13 sendMessageWithProtobuf:v12 inResponseToRequest:0 withPriority:0 timeout:1 bypassingDuet:v6 deviceID:&stru_1002D06A0 requestAcceptedHandler:60.0 responseHandler:0];
}

- (void)activationLockInfoFromDeviceWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - activationLockInfoWithCompletion", buf, 2u);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v7 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v7 activationLockInfoWithCompletion:v5];
LABEL_9:
  }
}

- (void)activationLockAuthInfoWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - activationLockAuthInfo", buf, 2u);
  }

  if (![(FMDFMIPXPCServer *)self _hasAuthAccessEntitlement])
  {
    v9 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (!v5)
    {
      goto LABEL_15;
    }

    v11 = self;
    v12 = 6;
    v13 = v8;
    goto LABEL_14;
  }

  if (v5)
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = v7;
    if (v7)
    {
      [(__CFString *)v7 activationLockAuthInfo:v5];
LABEL_15:

      goto LABEL_16;
    }

    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No Active Service Provider - cannot provide auth info", v16, 2u);
    }

    v13 = @"No Active FMDServiceProvider";
    v11 = self;
    v12 = 12;
LABEL_14:
    v15 = [(FMDFMIPXPCServer *)v11 _errorForCode:v12 message:v13];
    v5[2](v5, 0, v15);

    goto LABEL_15;
  }

LABEL_16:
}

- (void)updateMaskedAppleIDWith:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - updateMaskedAppleID %@", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    if (v7 && [v7 length])
    {
      v10 = +[FMDLocalActivationLockInfoManager sharedInstance];
      [v10 updateMaskedAppleID:v7];

      if (v8)
      {
        v8[2](v8, 0);
      }
    }

    else if (v8)
    {
      v14 = NSStringFromSelector(a2);
      v15 = [NSString stringWithFormat:@"No maskedAppleID specified %@", v14];

      v16 = [(FMDFMIPXPCServer *)self _errorForCode:1 message:v15];
      (v8)[2](v8, v16);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)clearMaskedAppleIDWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - clearMaskedAppleID", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v7 clearMaskedAppleIDValue];

    v5[2](v5, 0);
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v9 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)primaryAppleAccountRemoved
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DAEMON API - primaryAppleAccountRemoved", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v5 = +[FMDCoreFollowUpManager sharedInstance];
    [v5 requestTheftAndLossCFU:3];
  }

  else
  {
    v6 = NSStringFromSelector(a2);
    v5 = [NSString stringWithFormat:@"Entitlement not found for %@", v6];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)storeOfflineFindingInfo:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - storeOfflineFindingInfo", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v10 storeOfflineFindingInfo:v7 completion:v8];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)fetchOfflineFindingInfoWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - fetchOfflineFindingInfo", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v7 fetchOfflineFindingInfoWithCompletion:v5];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)clearOfflineFindingInfoWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - clearOfflineFindingInfo", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v7 clearOfflineFindingInfoWithCompletion:v5];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)fetchAPNSTokenWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - fetchAPNSToken", buf, 2u);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v9 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (!v5)
    {
      goto LABEL_11;
    }

    v8 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    v5[2](v5, 0, v8);
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  if (v5)
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 apsToken];
    (v5)[2](v5, v8, 0);
    goto LABEL_10;
  }

LABEL_12:
}

- (void)startLocationMonitoring:(id)a3
{
  v5 = a3;
  v6 = sub_1000029E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - startLocationMonitoring", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 locationMonitor];

    if (v8)
    {
      v9 = [v7 locationMonitor];
      [v9 startLocationMonitor:v5];
LABEL_10:

      goto LABEL_14;
    }

    v12 = sub_1000029E0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while starting. Calling completion immediately", v13, 2u);
    }

    v5[2](v5, 0);
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v9 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
      (v5)[2](v5, v9);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)stopLocationMonitoring:(id)a3
{
  v5 = a3;
  v6 = sub_1000029E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - stopLocationMonitoring", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = [v7 locationMonitor];

    if (v8)
    {
      v9 = [v7 locationMonitor];
      [v9 stopLocationMonitor:v5];
LABEL_10:

      goto LABEL_14;
    }

    v12 = sub_1000029E0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while stopping. Calling completion immediately", v13, 2u);
    }

    v5[2](v5, 0);
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v9 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
      (v5)[2](v5, v9);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)updatedConfigReceived:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - updatedConfigReceived", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [v10 locationMonitor];
    [v11 updateMonitorConfig:v7];

    v8[2](v8, 0);
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      (v8)[2](v8, v14);
    }
  }
}

- (void)startLocationMonitoringWithContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000029E0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - startLocationMonitoringWithContext %@", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [v10 locationMonitor];

    if (v11)
    {
      v12 = [v10 locationMonitor];
      [v12 startLocationMonitorWithContext:v7 completion:v8];
LABEL_10:

      goto LABEL_14;
    }

    v15 = sub_1000029E0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while starting with policy. Calling completion immediately", buf, 2u);
    }

    v8[2](v8, 0);
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      (v8)[2](v8, v12);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)stopLocationMonitoringWithContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000029E0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - stopLocationMonitorWithContext %@", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [v10 locationMonitor];

    if (v11)
    {
      v12 = [v10 locationMonitor];
      [v12 stopLocationMonitorWithContext:v7 completion:v8];
LABEL_10:

      goto LABEL_14;
    }

    v15 = sub_1000029E0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while stopping with context. Calling completion immediately", buf, 2u);
    }

    v8[2](v8, 0);
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      (v8)[2](v8, v12);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)didAddLocalFindableAccessory:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_1000029E0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DAEMON API - didAddLocalFindableAccessory", v9, 2u);
  }

  v8 = +[FMDServiceProvider activeServiceProvider];
  [v8 registerAccessory:v6 completion:v5];
}

- (void)didRemoveLocalFindableAccessory:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_1000029E0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DAEMON API - didRemoveLocalFindableAccessory", v9, 2u);
  }

  v8 = +[FMDServiceProvider activeServiceProvider];
  [v8 unregisterAccessory:v6 completion:v5];
}

- (void)simulatePushWithPayload:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer simulatePushWithPayload:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    [v10 _handleSecureLocationsPush:v7 completion:v8];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      v8[2](v8, v13);
    }
  }
}

- (void)downloadSharedConfigurationWithLocale:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer downloadSharedConfigurationWithLocale:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasSharedConfigurationAccessEntitlement])
  {
    v10 = +[FMDSharedConfigurationManager sharedInstance];
    [v10 downloadSharedConfigurationWithLocale:v7 reply:v8];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      v8[2](v8, v13);
    }
  }
}

- (void)getTheftAndLossCoverageWithSerialNumber:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[FMDFMIPXPCServer getTheftAndLossCoverageWithSerialNumber:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasSharedConfigurationAccessEntitlement])
  {
    v10 = +[FMDSharedConfigurationManager sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001A8684;
    v15[3] = &unk_1002D06C8;
    v16 = v8;
    [v10 getTheftAndLossCoverageWithSerialNumber:v7 completion:v15];

    v11 = v16;
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
      (*(v8 + 2))(v8, 0, v14);
    }
  }
}

- (void)requestTheftAndLossCFUWithStrings:(id)a3 andReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A8740;
  v7[3] = &unk_1002D06F0;
  v8 = a4;
  v6 = v8;
  [(FMDFMIPXPCServer *)self postTheftAndLossCFUWithEntry:a3 reply:v7];
}

- (void)postTheftAndLossCFUWithEntry:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer postTheftAndLossCFUWithEntry:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasSharedConfigurationAccessEntitlement])
  {
    v10 = +[FMDSharedConfigurationManager sharedInstance];
    [v10 postTheftAndLossCFU:v7 completion:v8];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v8)
    {
      v8[2](v8, 0, v12);
    }
  }
}

- (void)clearTheftAndLossCFUWithReply:(id)a3
{
  v5 = a3;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[FMDFMIPXPCServer clearTheftAndLossCFUWithReply:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasSharedConfigurationAccessEntitlement])
  {
    v7 = +[FMDSharedConfigurationManager sharedInstance];
    [v7 clearTheftAndLossCFUWithCompletion:v5];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v9 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (v5)
    {
      v5[2](v5, v9);
    }
  }
}

@end