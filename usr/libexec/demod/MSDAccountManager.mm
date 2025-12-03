@interface MSDAccountManager
+ (id)sharedInstance;
- (BOOL)_checkCloudPairedDevices:(id)devices;
- (BOOL)_iCloudAccountSignedIn;
- (BOOL)_setupiCloudAccountWithSettings:(id)settings outError:(id *)error;
- (BOOL)_setupiTunesAccountWithSettings:(id)settings outError:(id *)error;
- (BOOL)_signIniTunesAccount:(id)account password:(id)password outError:(id *)error;
- (BOOL)_signOutiCloudAccountWithPassword:(id)password outError:(id *)error;
- (BOOL)_signOutiTunesAccount:(id *)account;
- (BOOL)_trySetupAccountsWithContinuity:(BOOL)continuity retryAfter:(id *)after withError:(id *)error;
- (BOOL)removeAccounts:(id *)accounts;
- (BOOL)setupAccounts:(id *)accounts;
- (BOOL)setupContinuityAccounts:(id *)accounts;
- (BOOL)setupContinuityLinking:(id *)linking;
- (MSDAccountManager)init;
- (id)cloudPairedDevices;
- (id)existingAccounts;
- (void)_forceiCloudKeychainToSyncWithServer;
- (void)_syncAppsWithiCloud;
- (void)disallowAccountModification;
- (void)setupTrustedPeerChangeNotificationObserver;
@end

@implementation MSDAccountManager

+ (id)sharedInstance
{
  if (qword_1001A5870 != -1)
  {
    sub_1000D8118();
  }

  v3 = qword_1001A5868;

  return v3;
}

- (MSDAccountManager)init
{
  v6.receiver = self;
  v6.super_class = MSDAccountManager;
  v2 = [(MSDAccountManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MSDAccountManagerHelper);
    [(MSDAccountManager *)v2 setAccountManagerHelper:v3];

    [(MSDAccountManager *)v2 setPeerChangeToken:0xFFFFFFFFLL];
    v4 = +[NSMutableArray array];
    [(MSDAccountManager *)v2 setCloudPairedDeviceList:v4];
  }

  return v2;
}

- (void)disallowAccountModification
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling AppleID options in Settings!", v4, 2u);
  }

  v3 = +[MCProfileConnection sharedConnection];
  [v3 setBoolValue:0 forSetting:MCFeatureAccountModificationAllowed];
}

- (void)setupTrustedPeerChangeNotificationObserver
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting to observe trusted peer change!", v7, 2u);
  }

  v4 = notify_register_dispatch("com.apple.security.octagon.peer-changed", &self->_peerChangeToken, &_dispatch_main_q, &stru_10016B460);
  if (v4)
  {
    v5 = v4;
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D812C(v5, v6);
    }
  }
}

- (id)existingAccounts
{
  v3 = +[MSDTargetDevice sharedInstance];
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  fetchiTunesiCloudAccountsInfo = [accountManagerHelper fetchiTunesiCloudAccountsInfo];

  if (fetchiTunesiCloudAccountsInfo)
  {
    [v4 addEntriesFromDictionary:fetchiTunesiCloudAccountsInfo];
  }

  iCloudAccountRecoveryKey = [v3 iCloudAccountRecoveryKey];
  if (iCloudAccountRecoveryKey)
  {
    [v4 setObject:iCloudAccountRecoveryKey forKey:@"iCloudRecoveryKey"];
  }

  if ([v3 iCloudAccountSyncNeeded])
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"iCloudSyncNeeded"];
  }

  v8 = [v4 copy];

  return v8;
}

- (BOOL)setupAccounts:(id *)accounts
{
  v5 = +[MSDGreyMatterHelper isOptedIn];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v26) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status before iCloud account setup: %{BOOL}d", buf, 8u);
  }

  v7 = 0;
  v8 = 2;
  *&v9 = 134218498;
  v23 = v9;
  do
  {
    v10 = v7;
    v24 = v7;
    v11 = [(MSDAccountManager *)self _trySetupAccountsWithContinuity:0 retryAfter:0 withError:&v24, v23];
    v7 = v24;

    if (v11)
    {
      break;
    }

    if ([v7 code] == 3727741185)
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "Account setup cancelled. Not going to retry.";
        goto LABEL_15;
      }

LABEL_16:

      break;
    }

    code = [v7 code];
    v13 = sub_100063A54();
    v14 = v13;
    if (code == 3727741043)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "Account authentication failure. Not going to retry.";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      localizedFailureReason = [v7 localizedFailureReason];
      code2 = [v7 code];
      *buf = v23;
      v26 = v8 - 1;
      v27 = 2114;
      v28 = localizedFailureReason;
      v29 = 2048;
      v30 = code2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to setup accounts (retryCount = %td): %{public}@(0x%tx)", buf, 0x20u);
    }

    sleep(5u);
  }

  while (v8-- >= 2 && !v11);
  v19 = +[MSDGreyMatterHelper isOptedIn];
  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v26) = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status after iCloud account setup: %{BOOL}d", buf, 8u);
  }

  if (v5 != v19)
  {
    [MSDGreyMatterHelper setIsOptedIn:v5];
  }

  if (accounts)
  {
    v21 = v7;
    *accounts = v7;
  }

  [(MSDAccountManager *)self _syncAppsWithiCloud];

  return v11;
}

- (BOOL)setupContinuityLinking:(id *)linking
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10006BD90;
  v26 = sub_10006BDA0;
  v27 = 0;
  v5 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BDA8;
  block[3] = &unk_10016B488;
  v16 = &v18;
  v17 = &v22;
  block[4] = self;
  v7 = v5;
  v15 = v7;
  dispatch_async(v6, block);

  v8 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000D81A4(v9);
    }

    v10 = v23;
    obj = v23[5];
    sub_1000C1390(&obj, 3727744777, @"Timed out while trying to perform continuity linking");
    objc_storeStrong(v10 + 5, obj);
    *(v19 + 24) = 0;
  }

  if (linking)
  {
    *linking = v23[5];
  }

  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

- (BOOL)setupContinuityAccounts:(id *)accounts
{
  v4 = +[MSDGreyMatterHelper isOptedIn];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v44 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status before iCloud account setup: %{BOOL}d", buf, 8u);
  }

  v6 = 0;
  v7 = 0;
  v8 = 2;
  *&v9 = 134218498;
  v38 = v9;
  while (1)
  {
    v10 = v7;
    v11 = v6;
    v41 = v6;
    v42 = v7;
    v12 = [(MSDAccountManager *)self _trySetupAccountsWithContinuity:1 retryAfter:&v42 withError:&v41, v38];
    v7 = v42;

    v6 = v41;
    if (v12)
    {
      v13 = v7 == 0;
      goto LABEL_17;
    }

    if (!v6)
    {
      v15 = sub_100063A54();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (!v7)
      {
        if (v16)
        {
          intValue = [0 intValue];
          localizedFailureReason = [0 localizedFailureReason];
          code = [0 code];
          *buf = 67109890;
          *v44 = intValue;
          *&v44[4] = 1024;
          *&v44[6] = 0;
          *v45 = 2114;
          *&v45[2] = localizedFailureReason;
          LOWORD(v46[0]) = 2048;
          *(v46 + 2) = code;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unexpected result. retry = %d, rval = %d, error = %{public}@(0x%tx)", buf, 0x22u);
        }

        v40 = 0;
        sub_1000C1390(&v40, 3727744743, @"An error has occurred.");
        v6 = v40;
        v13 = 0;
        --v8;
        goto LABEL_17;
      }

      if (v16)
      {
        intValue2 = [v7 intValue];
        *buf = 67109120;
        *v44 = intValue2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "retryAfter = %d, waiting before trying endpoint again", buf, 8u);
      }

      sleep([v7 intValue]);
      v6 = 0;
      goto LABEL_16;
    }

    if ([v6 code] == 3727741185)
    {
      v23 = sub_100063A54();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v24 = "Account setup cancelled. Not going to retry.";
      goto LABEL_27;
    }

    if ([v6 code] == 3727741043)
    {
      break;
    }

    --v8;
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      localizedFailureReason2 = [v6 localizedFailureReason];
      code2 = [v6 code];
      *buf = v38;
      *v44 = v8;
      *&v44[8] = 2114;
      *v45 = localizedFailureReason2;
      *&v45[8] = 2048;
      v46[0] = code2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to setup accounts (retryCount = %td): %{public}@(0x%tx)", buf, 0x20u);
    }

    sleep(5u);
LABEL_16:
    v13 = 0;
LABEL_17:
    if (v8 < 1 || v13)
    {
      goto LABEL_29;
    }
  }

  v23 = sub_100063A54();
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_28;
  }

  *buf = 0;
  v24 = "Account authentication failure. Not going to retry.";
LABEL_27:
  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
LABEL_28:

  v13 = 0;
LABEL_29:
  v25 = sub_100063A54();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Account setup completed. Checking cloud pairing records", buf, 2u);
  }

  cloudPairedDeviceList = [(MSDAccountManager *)self cloudPairedDeviceList];
  v27 = [cloudPairedDeviceList count];

  if (v27)
  {
    cloudPairedDeviceList2 = [(MSDAccountManager *)self cloudPairedDeviceList];
    v29 = [(MSDAccountManager *)self _checkCloudPairedDevices:cloudPairedDeviceList2];

    p_superclass = (MSDS3UploadHandler + 8);
    if ((v29 & 1) == 0)
    {
      do
      {
        sleep(5u);
        cloudPairedDeviceList3 = [(MSDAccountManager *)self cloudPairedDeviceList];
        v32 = [(MSDAccountManager *)self _checkCloudPairedDevices:cloudPairedDeviceList3];
      }

      while ((v32 & 1) == 0);
    }

    v13 = 1;
  }

  else
  {
    v33 = sub_100063A54();
    p_superclass = MSDS3UploadHandler.superclass;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000D8224(v33);
    }
  }

  isOptedIn = [p_superclass + 449 isOptedIn];
  v35 = sub_100063A54();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v44 = isOptedIn;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status after iCloud account setup: %{BOOL}d", buf, 8u);
  }

  if (v4 != isOptedIn)
  {
    [p_superclass + 449 setIsOptedIn:v4];
  }

  if (accounts)
  {
    v36 = v6;
    *accounts = v6;
  }

  [(MSDAccountManager *)self _syncAppsWithiCloud];

  return v13;
}

- (BOOL)removeAccounts:(id *)accounts
{
  v6 = 0;
  v7 = 1;
  *&v3 = 134218498;
  v18 = v3;
  while (1)
  {
    v8 = v6;
    v20 = v6;
    v9 = [(MSDAccountManager *)self _signOutiCloudAccountWithPassword:0 outError:&v20, v18];
    v6 = v20;

    if (v9)
    {
      break;
    }

LABEL_5:
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      localizedFailureReason = [v6 localizedFailureReason];
      code = [v6 code];
      *buf = v18;
      v22 = v7;
      v23 = 2114;
      v24 = localizedFailureReason;
      v25 = 2048;
      v26 = code;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to remove accounts (retryCount = %td): %{public}@(0x%tx)", buf, 0x20u);
    }

    if (--v7 == -1)
    {
      v15 = 0;
      v11 = v6;
      if (!accounts)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v19 = v6;
  v10 = [(MSDAccountManager *)self _signOutiTunesAccount:&v19];
  v11 = v19;

  if ((v10 & 1) == 0)
  {
    v6 = v11;
    goto LABEL_5;
  }

  v15 = 1;
  if (accounts)
  {
LABEL_9:
    v16 = v11;
    *accounts = v11;
  }

LABEL_10:

  return v15;
}

- (id)cloudPairedDevices
{
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  getListOfCloudPairedDevices = [accountManagerHelper getListOfCloudPairedDevices];

  return getListOfCloudPairedDevices;
}

- (BOOL)_iCloudAccountSignedIn
{
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  fetchiTunesiCloudAccountsInfo = [accountManagerHelper fetchiTunesiCloudAccountsInfo];

  if (fetchiTunesiCloudAccountsInfo)
  {
    v4 = [fetchiTunesiCloudAccountsInfo objectForKey:@"iCloud"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_trySetupAccountsWithContinuity:(BOOL)continuity retryAfter:(id *)after withError:(id *)error
{
  continuityCopy = continuity;
  v7 = +[MSDTargetDevice sharedInstance];
  v8 = +[MSDProgressUpdater sharedInstance];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Start setting up accounts with Continuity support.", buf, 2u);
  }

  [v8 updateStage:20];
  if (([v7 allowAccountSetup] & 1) == 0)
  {
    v31 = v7;
    sub_1000D8268(buf);
    LOBYTE(v33) = 0;
    v72 = 0;
    v73 = 0;
    retryAfter = 0;
    continuityDict = 0;
    v34 = 0;
    v35 = 0;
    v69 = 0;
    v36 = 0;
    v37 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v60 = 0;
    v16 = *buf;
    goto LABEL_86;
  }

  [v7 saveiCloudAccountSyncNeeded:0];
  if (os_variant_has_internal_content())
  {
    v10 = +[MSDTestPreferences sharedInstance];
    mockAccountSettingsFile = [v10 mockAccountSettingsFile];

    if (mockAccountSettingsFile)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = mockAccountSettingsFile;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loading account settings from file: %{public}@", buf, 0xCu);
      }

      v13 = [NSDictionary alloc];
      v14 = [NSURL fileURLWithPath:mockAccountSettingsFile];
      v82 = 0;
      v15 = [v13 initWithContentsOfURL:v14 error:&v82];
      v16 = v82;

      v17 = sub_100063A54();
      v18 = v17;
      continuityDict = v15;
      if (v15)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v15;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Account settings successfully loaded: %{public}@", buf, 0xCu);
        }

        retryAfter = [v15 objectForKey:@"RetryAfter"];

        v73 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v71 = 0;
        goto LABEL_30;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000D82EC(v16);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  if (continuityCopy)
  {
    v22 = objc_alloc_init(MSDGetContinuitySettingsRequest);
    existingAccounts = [(MSDAccountManager *)self existingAccounts];
    [(MSDGetContinuitySettingsRequest *)v22 setExistingAccounts:existingAccounts];

    accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
    getIdentityServicesID = [accountManagerHelper getIdentityServicesID];
    [(MSDGetContinuitySettingsRequest *)v22 setIdentityServicesID:getIdentityServicesID];

    v26 = +[MSDServerRequestHandler sharedInstance];
    v71 = v22;
    v27 = [v26 handleRequestSync:v22];
    v19 = 0;
    v20 = 0;
    v21 = v27;
  }

  else
  {
    v20 = objc_alloc_init(MSDGetAccountSettingsRequest);
    existingAccounts2 = [(MSDAccountManager *)self existingAccounts];
    [(MSDGetAccountSettingsRequest *)v20 setExistingAccounts:existingAccounts2];

    v26 = +[MSDServerRequestHandler sharedInstance];
    v27 = [v26 handleRequestSync:v20];
    v21 = 0;
    v71 = 0;
    v19 = v27;
  }

  error = [v27 error];
  if (error)
  {
    v30 = error;
    if ([error code] == 3727741185)
    {
      v74 = v19;
      v75 = v21;
      v76 = v20;
      v31 = v7;
      v32 = v30;

      LOBYTE(v33) = 0;
      retryAfter = 0;
      continuityDict = 0;
      v34 = 0;
      v35 = 0;
      v69 = 0;
      v36 = 0;
      v72 = 0;
      v73 = v32;
      v37 = 0;
      v16 = v32;
LABEL_85:
      v60 = v71;
LABEL_86:
      if (error)
      {
        v66 = v16;
        *error = v16;
      }

      v59 = v69;
      goto LABEL_89;
    }

    v38 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];

    v16 = v38;
    error = v30;
  }

  v73 = error;
  if (v16)
  {
    v74 = v19;
    v75 = v21;
    v76 = v20;
    retryAfter = 0;
    v31 = v7;
    LOBYTE(v33) = 0;
    v34 = 0;
    v35 = 0;
    v69 = 0;
    v36 = 0;
    v72 = 0;
    v37 = 0;
    continuityDict = 0;
    goto LABEL_85;
  }

  if (continuityCopy)
  {
    continuityDict = [v21 continuityDict];
    retryAfter = [v21 retryAfter];
  }

  else
  {
    [v19 accountSettings];
    continuityDict = retryAfter = 0;
  }

  v16 = 0;
LABEL_30:
  has_internal_content = os_variant_has_internal_content();
  v40 = sub_100063A54();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
  if (has_internal_content)
  {
    if (v41)
    {
      *buf = 138543362;
      *&buf[4] = continuityDict;
      v42 = "Got account settings from hub: %{public}@";
      v43 = v40;
      v44 = 12;
LABEL_35:
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
    }
  }

  else if (v41)
  {
    *buf = 0;
    v42 = "Got account settings from hub";
    v43 = v40;
    v44 = 2;
    goto LABEL_35;
  }

  v75 = v21;
  v76 = v20;
  v74 = v19;
  if (continuityCopy && !retryAfter)
  {
    v45 = sub_100063A54();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "List of cloud paired devices received", buf, 2u);
    }

    v46 = [continuityDict objectForKey:@"IdentityServicesIDsList"];
    v34 = v46;
    if (v46 && [v46 count])
    {
      if (after)
      {
        *after = 0;
      }

      v47 = sub_100063A54();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Setting local cloud paired device list to : %{public}@", buf, 0xCu);
      }

      [(MSDAccountManager *)self setCloudPairedDeviceList:v34];
      v69 = 0;
      v72 = 0;
      v48 = 0;
      goto LABEL_79;
    }

    v51 = v8;
    v55 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];

    v33 = 0;
    v69 = 0;
    v72 = 0;
    v48 = 0;
    if (after)
    {
      *after = 0;
    }

LABEL_77:
    v16 = v55;
    v8 = v51;
LABEL_81:
    v37 = v48;
    v31 = v7;
    existingAccounts3 = [(MSDAccountManager *)self existingAccounts];
    if (existingAccounts3)
    {
      v36 = existingAccounts3;
      v62 = v8;
      v63 = [existingAccounts3 objectForKey:@"Account"];
      v64 = [v36 objectForKey:@"Account"];
      v35 = [NSDictionary dictionaryWithObjectsAndKeys:v63, @"iCloudAccount", v64, @"iTunesAccount", 0];

      v8 = v62;
    }

    else
    {
      v35 = 0;
      v36 = &__NSDictionary0__struct;
    }

    bundleInProgress = [v8 bundleInProgress];
    [bundleInProgress updateComponentProgress:@"Accounts" withResult:v33 withAdditionalInfo:v35];

    goto LABEL_85;
  }

  v49 = [continuityDict objectForKey:@"iCloud"];
  v50 = [continuityDict objectForKey:@"iTunes"];
  if (v49 | v50)
  {
    v48 = v50;
    if (after && continuityCopy)
    {
      *after = retryAfter;
    }

    v51 = v8;
    v33 = sub_100063A54();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Signing out existing iCloud account.", buf, 2u);
    }

    [v49 objectForKey:@"PwdForExistingAccount"];
    v69 = v81[1] = v16;
    LODWORD(v33) = [MSDAccountManager _signOutiCloudAccountWithPassword:"_signOutiCloudAccountWithPassword:outError:" outError:?];
    v52 = v16;

    v72 = v49;
    if (v33)
    {
      v33 = sub_100063A54();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Signing out existing iTunes account.", buf, 2u);
      }

      v81[0] = v52;
      LODWORD(v33) = [(MSDAccountManager *)self _signOutiTunesAccount:v81];
      v16 = v81[0];

      if (!v33)
      {
        v37 = v48;
        v31 = v7;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        goto LABEL_94;
      }

      v53 = sub_100063A54();
      v8 = v51;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Wait for some extra time to make sure accounts complete signout.", buf, 2u);
      }

      sleep(0xAu);
      if (!v49)
      {
        goto LABEL_62;
      }

      v80 = v16;
      LODWORD(v33) = [(MSDAccountManager *)self _setupiCloudAccountWithSettings:v49 outError:&v80];
      v52 = v80;

      if (v33)
      {
        v16 = v52;
        v8 = v51;
LABEL_62:
        if (!v48)
        {
          v34 = 0;
LABEL_79:
          v33 = 1;
          goto LABEL_81;
        }

        v79 = v16;
        v54 = [(MSDAccountManager *)self _setupiTunesAccountWithSettings:v48 outError:&v79];
        v55 = v79;

        v34 = 0;
        if (v54)
        {
          v33 = 1;
          goto LABEL_77;
        }

        v37 = v48;
        v31 = v7;
        LOBYTE(v33) = 0;
        v16 = v55;
        v35 = 0;
        v36 = 0;
        goto LABEL_94;
      }
    }

    v37 = v48;
    v31 = v7;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v16 = v52;
LABEL_94:
    v8 = v51;
    goto LABEL_85;
  }

  v33 = sub_100063A54();
  v56 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if (continuityCopy)
  {
    if (v56)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No iCloud or iTunes account settings provided. Skip setting up any account.", buf, 2u);
    }

    v57 = sub_100063A54();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      intValue = [retryAfter intValue];
      *buf = 67109120;
      *&buf[4] = intValue;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Waiting %d sec before trying endpoint again", buf, 8u);
    }

    v33 = 0;
    v34 = 0;
    v69 = 0;
    v72 = 0;
    if (after)
    {
      *after = retryAfter;
    }

    v48 = 0;
    goto LABEL_81;
  }

  v31 = v7;
  if (v56)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No iCloud or iTunes account settings provided. Skip setting up any account.", buf, 2u);
  }

  [(MSDAccountManager *)self _forceiCloudKeychainToSyncWithServer];
  v34 = 0;
  v35 = 0;
  v59 = 0;
  v36 = 0;
  v72 = 0;
  v37 = 0;
  LOBYTE(v33) = 1;
  v60 = v71;
LABEL_89:

  return v33;
}

- (BOOL)_setupiCloudAccountWithSettings:(id)settings outError:(id *)error
{
  settingsCopy = settings;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000D8374();
    v14 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_18;
  }

  v7 = [settingsCopy objectForKey:@"Account"];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1000D8428();
      v14 = 0;
      v10 = 0;
      v12 = 0;
      v11 = 0;
      v9 = 0;
      goto LABEL_18;
    }

    v9 = [settingsCopy objectForKey:@"Password"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [settingsCopy objectForKey:@"Features"];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [settingsCopy objectForKey:@"RecoveryKey"];
          if (v11)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_1000D84DC();
              v14 = 0;
              v12 = 0;
              goto LABEL_18;
            }
          }

          v12 = [settingsCopy objectForKey:@"CDPResetNeeded"];
          if (v12)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_1000D8588();
              goto LABEL_26;
            }
          }

          if (!-[MSDAccountManager _signIniCloudAccount:password:features:recoveryKey:resetCDP:outError:](self, "_signIniCloudAccount:password:features:recoveryKey:resetCDP:outError:", v8, v9, v10, v11, [v12 BOOLValue], error))
          {
            sub_1000D8634();
LABEL_26:
            v14 = 0;
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      sub_1000D86D0();
      v14 = 0;
    }

    else
    {
      sub_1000D877C();
      v14 = 0;
      v10 = 0;
    }

    v12 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No iCloud account information in settings. iCloud account setup skipped.", v16, 2u);
  }

  v10 = 0;
  v12 = 0;
  v11 = 0;
  v9 = 0;
  v8 = 0;
LABEL_17:
  v14 = 1;
LABEL_18:

  return v14;
}

- (BOOL)_setupiTunesAccountWithSettings:(id)settings outError:(id *)error
{
  settingsCopy = settings;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000D8828();
    v11 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v7 = [settingsCopy objectForKey:@"Account"];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1000D88DC();
      v11 = 0;
      v9 = 0;
      goto LABEL_12;
    }

    v9 = [settingsCopy objectForKey:@"Password"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      sub_1000D8A2C();
      goto LABEL_14;
    }

    if (![(MSDAccountManager *)self _signIniTunesAccount:v8 password:v9 outError:error])
    {
      sub_1000D8990();
LABEL_14:
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No iTunes account information in settings. iTunes account setup skipped.", v13, 2u);
    }

    v9 = 0;
    v8 = 0;
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)_signIniTunesAccount:(id)account password:(id)password outError:(id *)error
{
  passwordCopy = password;
  accountCopy = account;
  v10 = objc_alloc_init(MSDAccountContext);
  [(MSDAccountContext *)v10 setUsername:accountCopy];

  [(MSDAccountContext *)v10 setPassword:passwordCopy];
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(error) = [accountManagerHelper performiTunesAccountSignInWithContext:v10 outError:error];

  return error;
}

- (BOOL)_signOutiTunesAccount:(id *)account
{
  v5 = objc_alloc_init(MSDAccountContext);
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(account) = [accountManagerHelper performiTunesAccountSignOutWithContext:v5 outError:account];

  return account;
}

- (BOOL)_signOutiCloudAccountWithPassword:(id)password outError:(id *)error
{
  passwordCopy = password;
  v7 = objc_alloc_init(MSDAccountContext);
  [(MSDAccountContext *)v7 setPassword:passwordCopy];

  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(error) = [accountManagerHelper performiCloudAccountSignOutWithContext:v7 outError:error];

  return error;
}

- (void)_forceiCloudKeychainToSyncWithServer
{
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  [accountManagerHelper forceiCloudKeychainToSyncWithServerAndError:0];
}

- (BOOL)_checkCloudPairedDevices:(id)devices
{
  devicesCopy = devices;
  cloudPairedDevices = [(MSDAccountManager *)self cloudPairedDevices];
  v6 = cloudPairedDevices;
  if (!devicesCopy)
  {
    sub_1000D8BC8();
LABEL_17:
    v12 = 0;
    goto LABEL_14;
  }

  if (!cloudPairedDevices)
  {
    sub_1000D8B70();
    goto LABEL_17;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = devicesCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (([v6 containsObject:{*(*(&v14 + 1) + 8 * i), v14}] & 1) == 0)
        {
          sub_1000D8AD8();
          v12 = 0;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

LABEL_14:
  return v12;
}

- (void)_syncAppsWithiCloud
{
  v18 = SBSOpenApplicationOptionKeyPreventDismissalOfTransientOverlays;
  v19 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  if ([(MSDAccountManager *)self _iCloudAccountSignedIn])
  {
    v4 = +[MSDAppSwitcherManager sharedInstance];
    [v4 stashSwitcherModelToPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/emptyAppSwitcherModel.plist" overwrite:1];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [&off_10017BDA8 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(&off_10017BDA8);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [MSDAppLauncherTerminator launchApp:v9 withOptions:v3 outError:0];
          sleep(0x3Cu);
          [MSDAppLauncherTerminator terminateApp:v9 outError:0];
        }

        v6 = [&off_10017BDA8 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v10 = +[MSDAppSwitcherManager sharedInstance];
    [v10 loadStashedSwitcherModelFromPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/emptyAppSwitcherModel.plist"];
  }

  else
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[MSDAccountManager _syncAppsWithiCloud]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - No iCloud account logged in. Not synching any apps", buf, 0xCu);
    }
  }
}

@end