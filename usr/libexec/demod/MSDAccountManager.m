@interface MSDAccountManager
+ (id)sharedInstance;
- (BOOL)_checkCloudPairedDevices:(id)a3;
- (BOOL)_iCloudAccountSignedIn;
- (BOOL)_setupiCloudAccountWithSettings:(id)a3 outError:(id *)a4;
- (BOOL)_setupiTunesAccountWithSettings:(id)a3 outError:(id *)a4;
- (BOOL)_signIniTunesAccount:(id)a3 password:(id)a4 outError:(id *)a5;
- (BOOL)_signOutiCloudAccountWithPassword:(id)a3 outError:(id *)a4;
- (BOOL)_signOutiTunesAccount:(id *)a3;
- (BOOL)_trySetupAccountsWithContinuity:(BOOL)a3 retryAfter:(id *)a4 withError:(id *)a5;
- (BOOL)removeAccounts:(id *)a3;
- (BOOL)setupAccounts:(id *)a3;
- (BOOL)setupContinuityAccounts:(id *)a3;
- (BOOL)setupContinuityLinking:(id *)a3;
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
  v5 = [(MSDAccountManager *)self accountManagerHelper];
  v6 = [v5 fetchiTunesiCloudAccountsInfo];

  if (v6)
  {
    [v4 addEntriesFromDictionary:v6];
  }

  v7 = [v3 iCloudAccountRecoveryKey];
  if (v7)
  {
    [v4 setObject:v7 forKey:@"iCloudRecoveryKey"];
  }

  if ([v3 iCloudAccountSyncNeeded])
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"iCloudSyncNeeded"];
  }

  v8 = [v4 copy];

  return v8;
}

- (BOOL)setupAccounts:(id *)a3
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

    v12 = [v7 code];
    v13 = sub_100063A54();
    v14 = v13;
    if (v12 == 3727741043)
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
      v16 = [v7 localizedFailureReason];
      v17 = [v7 code];
      *buf = v23;
      v26 = v8 - 1;
      v27 = 2114;
      v28 = v16;
      v29 = 2048;
      v30 = v17;
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

  if (a3)
  {
    v21 = v7;
    *a3 = v7;
  }

  [(MSDAccountManager *)self _syncAppsWithiCloud];

  return v11;
}

- (BOOL)setupContinuityLinking:(id *)a3
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

  if (a3)
  {
    *a3 = v23[5];
  }

  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

- (BOOL)setupContinuityAccounts:(id *)a3
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
          v18 = [0 intValue];
          v19 = [0 localizedFailureReason];
          v20 = [0 code];
          *buf = 67109890;
          *v44 = v18;
          *&v44[4] = 1024;
          *&v44[6] = 0;
          *v45 = 2114;
          *&v45[2] = v19;
          LOWORD(v46[0]) = 2048;
          *(v46 + 2) = v20;
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
        v17 = [v7 intValue];
        *buf = 67109120;
        *v44 = v17;
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
      v21 = [v6 localizedFailureReason];
      v22 = [v6 code];
      *buf = v38;
      *v44 = v8;
      *&v44[8] = 2114;
      *v45 = v21;
      *&v45[8] = 2048;
      v46[0] = v22;
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

  v26 = [(MSDAccountManager *)self cloudPairedDeviceList];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [(MSDAccountManager *)self cloudPairedDeviceList];
    v29 = [(MSDAccountManager *)self _checkCloudPairedDevices:v28];

    p_superclass = (MSDS3UploadHandler + 8);
    if ((v29 & 1) == 0)
    {
      do
      {
        sleep(5u);
        v31 = [(MSDAccountManager *)self cloudPairedDeviceList];
        v32 = [(MSDAccountManager *)self _checkCloudPairedDevices:v31];
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

  v34 = [p_superclass + 449 isOptedIn];
  v35 = sub_100063A54();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v44 = v34;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status after iCloud account setup: %{BOOL}d", buf, 8u);
  }

  if (v4 != v34)
  {
    [p_superclass + 449 setIsOptedIn:v4];
  }

  if (a3)
  {
    v36 = v6;
    *a3 = v6;
  }

  [(MSDAccountManager *)self _syncAppsWithiCloud];

  return v13;
}

- (BOOL)removeAccounts:(id *)a3
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
      v13 = [v6 localizedFailureReason];
      v14 = [v6 code];
      *buf = v18;
      v22 = v7;
      v23 = 2114;
      v24 = v13;
      v25 = 2048;
      v26 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to remove accounts (retryCount = %td): %{public}@(0x%tx)", buf, 0x20u);
    }

    if (--v7 == -1)
    {
      v15 = 0;
      v11 = v6;
      if (!a3)
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
  if (a3)
  {
LABEL_9:
    v16 = v11;
    *a3 = v11;
  }

LABEL_10:

  return v15;
}

- (id)cloudPairedDevices
{
  v2 = [(MSDAccountManager *)self accountManagerHelper];
  v3 = [v2 getListOfCloudPairedDevices];

  return v3;
}

- (BOOL)_iCloudAccountSignedIn
{
  v2 = [(MSDAccountManager *)self accountManagerHelper];
  v3 = [v2 fetchiTunesiCloudAccountsInfo];

  if (v3)
  {
    v4 = [v3 objectForKey:@"iCloud"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_trySetupAccountsWithContinuity:(BOOL)a3 retryAfter:(id *)a4 withError:(id *)a5
{
  v5 = a3;
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
    v77 = 0;
    v78 = 0;
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
    v11 = [v10 mockAccountSettingsFile];

    if (v11)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loading account settings from file: %{public}@", buf, 0xCu);
      }

      v13 = [NSDictionary alloc];
      v14 = [NSURL fileURLWithPath:v11];
      v82 = 0;
      v15 = [v13 initWithContentsOfURL:v14 error:&v82];
      v16 = v82;

      v17 = sub_100063A54();
      v18 = v17;
      v78 = v15;
      if (v15)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v15;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Account settings successfully loaded: %{public}@", buf, 0xCu);
        }

        v77 = [v15 objectForKey:@"RetryAfter"];

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

  if (v5)
  {
    v22 = objc_alloc_init(MSDGetContinuitySettingsRequest);
    v23 = [(MSDAccountManager *)self existingAccounts];
    [(MSDGetContinuitySettingsRequest *)v22 setExistingAccounts:v23];

    v24 = [(MSDAccountManager *)self accountManagerHelper];
    v25 = [v24 getIdentityServicesID];
    [(MSDGetContinuitySettingsRequest *)v22 setIdentityServicesID:v25];

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
    v28 = [(MSDAccountManager *)self existingAccounts];
    [(MSDGetAccountSettingsRequest *)v20 setExistingAccounts:v28];

    v26 = +[MSDServerRequestHandler sharedInstance];
    v27 = [v26 handleRequestSync:v20];
    v21 = 0;
    v71 = 0;
    v19 = v27;
  }

  v29 = [v27 error];
  if (v29)
  {
    v30 = v29;
    if ([v29 code] == 3727741185)
    {
      v74 = v19;
      v75 = v21;
      v76 = v20;
      v31 = v7;
      v32 = v30;

      LOBYTE(v33) = 0;
      v77 = 0;
      v78 = 0;
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
      if (a5)
      {
        v66 = v16;
        *a5 = v16;
      }

      v59 = v69;
      goto LABEL_89;
    }

    v38 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];

    v16 = v38;
    v29 = v30;
  }

  v73 = v29;
  if (v16)
  {
    v74 = v19;
    v75 = v21;
    v76 = v20;
    v77 = 0;
    v31 = v7;
    LOBYTE(v33) = 0;
    v34 = 0;
    v35 = 0;
    v69 = 0;
    v36 = 0;
    v72 = 0;
    v37 = 0;
    v78 = 0;
    goto LABEL_85;
  }

  if (v5)
  {
    v78 = [v21 continuityDict];
    v77 = [v21 retryAfter];
  }

  else
  {
    [v19 accountSettings];
    v78 = v77 = 0;
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
      *&buf[4] = v78;
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
  if (v5 && !v77)
  {
    v45 = sub_100063A54();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "List of cloud paired devices received", buf, 2u);
    }

    v46 = [v78 objectForKey:@"IdentityServicesIDsList"];
    v34 = v46;
    if (v46 && [v46 count])
    {
      if (a4)
      {
        *a4 = 0;
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
    if (a4)
    {
      *a4 = 0;
    }

LABEL_77:
    v16 = v55;
    v8 = v51;
LABEL_81:
    v37 = v48;
    v31 = v7;
    v61 = [(MSDAccountManager *)self existingAccounts];
    if (v61)
    {
      v36 = v61;
      v62 = v8;
      v63 = [v61 objectForKey:@"Account"];
      v64 = [v36 objectForKey:@"Account"];
      v35 = [NSDictionary dictionaryWithObjectsAndKeys:v63, @"iCloudAccount", v64, @"iTunesAccount", 0];

      v8 = v62;
    }

    else
    {
      v35 = 0;
      v36 = &__NSDictionary0__struct;
    }

    v65 = [v8 bundleInProgress];
    [v65 updateComponentProgress:@"Accounts" withResult:v33 withAdditionalInfo:v35];

    goto LABEL_85;
  }

  v49 = [v78 objectForKey:@"iCloud"];
  v50 = [v78 objectForKey:@"iTunes"];
  if (v49 | v50)
  {
    v48 = v50;
    if (a4 && v5)
    {
      *a4 = v77;
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
  if (v5)
  {
    if (v56)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No iCloud or iTunes account settings provided. Skip setting up any account.", buf, 2u);
    }

    v57 = sub_100063A54();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [v77 intValue];
      *buf = 67109120;
      *&buf[4] = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Waiting %d sec before trying endpoint again", buf, 8u);
    }

    v33 = 0;
    v34 = 0;
    v69 = 0;
    v72 = 0;
    if (a4)
    {
      *a4 = v77;
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

- (BOOL)_setupiCloudAccountWithSettings:(id)a3 outError:(id *)a4
{
  v6 = a3;
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

  v7 = [v6 objectForKey:@"Account"];
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

    v9 = [v6 objectForKey:@"Password"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v6 objectForKey:@"Features"];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v6 objectForKey:@"RecoveryKey"];
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

          v12 = [v6 objectForKey:@"CDPResetNeeded"];
          if (v12)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_1000D8588();
              goto LABEL_26;
            }
          }

          if (!-[MSDAccountManager _signIniCloudAccount:password:features:recoveryKey:resetCDP:outError:](self, "_signIniCloudAccount:password:features:recoveryKey:resetCDP:outError:", v8, v9, v10, v11, [v12 BOOLValue], a4))
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

- (BOOL)_setupiTunesAccountWithSettings:(id)a3 outError:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000D8828();
    v11 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v7 = [v6 objectForKey:@"Account"];
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

    v9 = [v6 objectForKey:@"Password"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      sub_1000D8A2C();
      goto LABEL_14;
    }

    if (![(MSDAccountManager *)self _signIniTunesAccount:v8 password:v9 outError:a4])
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

- (BOOL)_signIniTunesAccount:(id)a3 password:(id)a4 outError:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(MSDAccountContext);
  [(MSDAccountContext *)v10 setUsername:v9];

  [(MSDAccountContext *)v10 setPassword:v8];
  v11 = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(a5) = [v11 performiTunesAccountSignInWithContext:v10 outError:a5];

  return a5;
}

- (BOOL)_signOutiTunesAccount:(id *)a3
{
  v5 = objc_alloc_init(MSDAccountContext);
  v6 = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(a3) = [v6 performiTunesAccountSignOutWithContext:v5 outError:a3];

  return a3;
}

- (BOOL)_signOutiCloudAccountWithPassword:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MSDAccountContext);
  [(MSDAccountContext *)v7 setPassword:v6];

  v8 = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(a4) = [v8 performiCloudAccountSignOutWithContext:v7 outError:a4];

  return a4;
}

- (void)_forceiCloudKeychainToSyncWithServer
{
  v2 = [(MSDAccountManager *)self accountManagerHelper];
  [v2 forceiCloudKeychainToSyncWithServerAndError:0];
}

- (BOOL)_checkCloudPairedDevices:(id)a3
{
  v4 = a3;
  v5 = [(MSDAccountManager *)self cloudPairedDevices];
  v6 = v5;
  if (!v4)
  {
    sub_1000D8BC8();
LABEL_17:
    v12 = 0;
    goto LABEL_14;
  }

  if (!v5)
  {
    sub_1000D8B70();
    goto LABEL_17;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
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