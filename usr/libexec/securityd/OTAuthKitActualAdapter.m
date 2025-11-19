@interface OTAuthKitActualAdapter
- (BOOL)accountIsCDPCapableByAltDSID:(id)a3;
- (BOOL)accountIsDemoAccountByAltDSID:(id)a3 error:(id *)a4;
- (id)machineID:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 canSendMetrics:(BOOL)a6 error:(id *)a7;
- (id)passwordResetTokenByAltDSID:(id)a3 error:(id *)a4;
- (void)deliverAKDeviceListDeltaMessagePayload:(id)a3;
- (void)fetchCurrentDeviceListByAltDSID:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 reply:(id)a6;
- (void)notifyAKDeviceList:(id)a3;
- (void)registerNotification:(id)a3;
@end

@implementation OTAuthKitActualAdapter

- (void)deliverAKDeviceListDeltaMessagePayload:(id)a3
{
  v4 = sub_100006274("authkit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received notifyAKDeviceListDeltaMessagePayload", v6, 2u);
  }

  v5 = [(OTAuthKitActualAdapter *)self notifiers];
  [v5 iterateListeners:&stru_100339718];
}

- (void)notifyAKDeviceList:(id)a3
{
  v4 = a3;
  if (objc_opt_class())
  {
    if (v4)
    {
      v5 = [v4 userInfo];
    }

    else
    {
      v5 = 0;
    }

    [(OTAuthKitActualAdapter *)self deliverAKDeviceListDeltaMessagePayload:v5];
  }

  else
  {
    v6 = sub_100006274("authkit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AuthKit not available; dropping device list notification", v7, 2u);
    }
  }
}

- (void)registerNotification:(id)a3
{
  v4 = a3;
  v5 = [(OTAuthKitActualAdapter *)self notifiers];

  if (!v5)
  {
    v6 = [[CKKSListenerCollection alloc] initWithName:@"otauthkitadapter-notifiers"];
    [(OTAuthKitActualAdapter *)self setNotifiers:v6];

    v7 = +[NSDistributedNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"notifyAKDeviceList:" name:AKDeviceListChangedNotification object:0];
  }

  v8 = [(OTAuthKitActualAdapter *)self notifiers];
  [v8 registerListener:v4];
}

- (void)fetchCurrentDeviceListByAltDSID:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (objc_opt_class() && objc_opt_class())
  {
    v13 = objc_alloc_init(AKDeviceListRequestContext);
    if (v13)
    {
      v14 = v13;
      [v13 setAltDSID:v9];
      [v14 setType:3];
      v15 = objc_alloc_init(AKAppleIDAuthenticationController);
      if (v15)
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100177024;
        v21[3] = &unk_1003396D8;
        v22 = v9;
        v23 = v10;
        v24 = v11;
        v25 = v12;
        [v15 deviceListWithContext:v14 completion:v21];
      }

      else
      {
        v19 = [NSError errorWithDomain:@"com.apple.security.octagon" code:45 description:@"can't get authController"];
        v20 = +[CKKSAnalytics logger];
        [v20 logUnrecoverableError:v19 forEvent:@"OctagonEventAuthKitDeviceList" withAttributes:0];

        (*(v12 + 2))(v12, 0, 0, 0, 0, 0, 0, 0, 0, v19);
      }
    }

    else
    {
      v17 = [NSError errorWithDomain:@"com.apple.security.octagon" code:43 description:@"can't get AKDeviceListRequestContextClass"];
      v18 = +[CKKSAnalytics logger];
      [v18 logUnrecoverableError:v17 forEvent:@"OctagonEventAuthKitDeviceList" withAttributes:0];

      (*(v12 + 2))(v12, 0, 0, 0, 0, 0, 0, 0, 0, v17);
      v14 = 0;
    }
  }

  else
  {
    v16 = sub_100006274("authkit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AuthKit not available", buf, 2u);
    }

    v14 = [NSError errorWithDomain:@"com.apple.security.octagon" code:50 description:@"AKAnisette not available"];
    (*(v12 + 2))(v12, 0, 0, 0, 0, 0, 0, 0, 0, v14);
  }
}

- (id)machineID:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 canSendMetrics:(BOOL)a6 error:(id *)a7
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [AAFAnalyticsEventSecurity alloc];
  LOBYTE(v31) = a6;
  v15 = [v14 initWithKeychainCircleMetrics:0 altDSID:v13 flowID:v12 deviceSessionID:v11 eventName:kSecurityRTCEventNameFetchMachineID testsAreEnabled:0 canSendMetrics:v31 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  if (objc_opt_class() && objc_opt_class())
  {
    v16 = objc_alloc_init(AKAnisetteProvisioningController);
    v32 = 0;
    v17 = [v16 anisetteDataWithError:&v32];
    v18 = v32;
    if (v17)
    {
      v19 = [v17 machineID];
      v20 = sub_100006274("authkit");
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          *buf = 138412290;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "fetched current machine ID as: %@", buf, 0xCu);
        }

        [v15 sendMetricWithResult:1 error:0];
        v22 = v19;
      }

      else
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Anisette data does not have machineID", buf, 2u);
        }

        v28 = [NSError errorWithDomain:@"com.apple.security.octagon" code:46 description:@"Anisette data does not have machineID"];
        if (a7)
        {
          [SecABC triggerAutoBugCaptureWithType:@"AuthKit" subType:@"missingMID"];
          v29 = v28;
          *a7 = v28;
        }

        [v15 sendMetricWithResult:0 error:v28];
      }
    }

    else
    {
      v26 = sub_100006274("authkit");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Unable to fetch data: %@", buf, 0xCu);
      }

      if (a7)
      {
        v27 = v18;
        *a7 = v18;
      }

      [v15 sendMetricWithResult:0 error:v18];
      v19 = 0;
    }
  }

  else
  {
    v23 = sub_100006274("authkit");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "AKAnisette not available", buf, 2u);
    }

    v24 = [NSError errorWithDomain:@"com.apple.security.octagon" code:50 description:@"AKAnisette not available"];
    v16 = v24;
    if (a7)
    {
      v25 = v24;
      *a7 = v16;
    }

    [v15 sendMetricWithResult:0 error:v16];
    v19 = 0;
  }

  return v19;
}

- (id)passwordResetTokenByAltDSID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[AKAccountManager sharedInstance];
  v7 = [v6 authKitAccountWithAltDSID:v5 error:a4];

  if (v7)
  {
    v8 = +[ACAccountStore defaultStore];
    v9 = [v8 credentialForAccount:v7 error:a4];

    if (v9)
    {
      v10 = [v9 credentialItemForKey:ACPasswordResetTokenBackupKey];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)accountIsDemoAccountByAltDSID:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = +[AKAccountManager sharedInstance];
  v6 = [v5 authKitAccountWithAltDSID:v4];
  v7 = [v5 demoAccountForAccount:v6];
  v8 = sub_100006274("authkit");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Account with altDSID %@ is a demo account: %{BOOL}d", &v10, 0x12u);
  }

  return v7;
}

- (BOOL)accountIsCDPCapableByAltDSID:(id)a3
{
  v3 = a3;
  if (objc_opt_class() && objc_opt_class())
  {
    v4 = +[AKAccountManager sharedInstance];
    v14 = 0;
    v5 = [v4 authKitAccountWithAltDSID:v3 error:&v14];
    v6 = v14;
    if (v5)
    {
      v7 = [v4 securityLevelForAccount:v5];
      v8 = v7;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 4;
      if (v7 > 2)
      {
        switch(v7)
        {
          case 3:
            v10 = @"HSA1";
            goto LABEL_16;
          case 4:
            v10 = @"HSA2";
            goto LABEL_16;
          case 5:
            v10 = @"Managed";
            goto LABEL_16;
        }

        goto LABEL_25;
      }

      if (v7)
      {
        if (v7 == 1)
        {
          v10 = @"PasswordOnly";
          goto LABEL_16;
        }

        if (v7 == 2)
        {
          v10 = @"Standard";
LABEL_16:
          v12 = sub_100006274("authkit");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v16 = v3;
            v17 = 2048;
            v18 = v8;
            v19 = 2112;
            v20 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Security level for altDSID %@ is %lu.  Account type: %@", buf, 0x20u);
          }

          goto LABEL_19;
        }

LABEL_25:
        v10 = @"oh no please file a radar to Security | iCloud Keychain security level";
        goto LABEL_16;
      }
    }

    else
    {
      v11 = sub_100006274("authkit");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failed to get AK account: %@", buf, 0xCu);
      }

      v9 = 0;
      v8 = 0;
    }

    v10 = @"Unknown";
    goto LABEL_16;
  }

  v4 = sub_100006274("authkit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AuthKit not available", buf, 2u);
  }

  v9 = 0;
LABEL_19:

  return v9;
}

@end