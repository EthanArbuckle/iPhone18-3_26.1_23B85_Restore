@interface FMDAppleAccountManager
+ (id)sharedInstance;
- (BOOL)_isBeneficiaryAccount;
- (BOOL)isKnownFMIPAccount:(id)a3;
- (BOOL)populateiCloudAccountInfoIntoAccount:(id)a3;
- (FMDAppleAccountManager)init;
- (id)_currentFMDFMIPAccount;
- (id)fmipACAccount;
- (id)iCloudACAccount;
- (id)initSingleton;
- (void)dealloc;
- (void)fixFMIPAuthTokenShouldForce:(BOOL)a3;
- (void)forceUserAuthForiCloudAccountForApp:(id)a3 message:(id)a4 really:(BOOL)a5 withCompletion:(id)a6;
- (void)syncFMIPAccountInfo;
@end

@implementation FMDAppleAccountManager

+ (id)sharedInstance
{
  if (qword_100314660 != -1)
  {
    sub_100229574();
  }

  v2 = qword_100314658;
  if (!qword_100314658)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The FMDAppleAccountManager singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_100314658;
  }

  return v2;
}

- (FMDAppleAccountManager)init
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1002295C8();
  }

  return 0;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = FMDAppleAccountManager;
  v2 = [(FMDAppleAccountManager *)&v5 init];
  if (v2)
  {
    objc_storeStrong(&qword_100314658, v2);
    v3 = objc_alloc_init(ACAccountStore);
    [(FMDAppleAccountManager *)v2 setAccountStore:v3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002258DC(self, v3);
  }

  v4 = qword_100314658;
  qword_100314658 = 0;

  v5.receiver = self;
  v5.super_class = FMDAppleAccountManager;
  [(FMDAppleAccountManager *)&v5 dealloc];
}

- (void)syncFMIPAccountInfo
{
  v3 = [(FMDAppleAccountManager *)self iCloudACAccount];
  v4 = kAccountDataclassDeviceLocator;
  v5 = [v3 isProvisionedForDataclass:kAccountDataclassDeviceLocator];
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1002295FC(v5, v6);
  }

  if ((v5 & 1) == 0)
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&_mh_execute_header, &v10->super.super, OS_LOG_TYPE_DEFAULT, "device locator is not provisioned. fmdd may not work", v20, 2u);
    }

    goto LABEL_22;
  }

  v7 = +[FMSystemInfo sharedInstance];
  if ([v7 isInternalBuild])
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:@"/var/tmp/fmipAccountInfo.plist"];

    if (v9)
    {
      goto LABEL_23;
    }

    if (!v3)
    {
LABEL_12:
      v11 = +[FMDServiceProvider activeServiceProvider];
      v10 = [v11 account];

      if (!v3 || [(FMDAccount *)v10 unregisterState])
      {
        goto LABEL_22;
      }

      v12 = objc_alloc_init(FMDFMIPAccount);
      [(FMDFMIPAccount *)v12 copyInfoFromAccount:v10];
      [(FMDFMIPAccount *)v12 applyPropertiesFromACAccount:v3];
      v13 = +[FMDServiceProvider activeServiceProvider];
      [v13 updateAccount:v12];

LABEL_21:
LABEL_22:

      goto LABEL_23;
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if ([(FMDAppleAccountManager *)self isKnownFMIPAccount:v3])
  {
    goto LABEL_12;
  }

  v14 = [v3 isEnabledForDataclass:v4];
  v15 = sub_100002880();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109120;
    v20[1] = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "isDeviceLocatorEnabled %d", v20, 8u);
  }

  if (v14)
  {
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iCloud account has FMIP dataclass enabled but findmydeviced has no record of it. Looks like an upgrade from an older version", v20, 2u);
    }

    v10 = objc_alloc_init(FMDFMIPAccount);
    [(FMDFMIPAccount *)v10 applyPropertiesFromACAccount:v3];
    [(FMDFMIPAccount *)v10 setFmipEnableContext:1];
    v17 = +[NSDate date];
    [(FMDAccount *)v10 setAccountAddTime:v17];

    v18 = [(FMDAppleAccountManager *)self _currentFMDFMIPAccount];
    v19 = [v18 dsid];
    [(FMDFMIPAccount *)v10 setLastLoggedInDsid:v19];

    v12 = +[FMDServiceProvider activeServiceProvider];
    [(FMDFMIPAccount *)v12 addAccount:v10];
    goto LABEL_21;
  }

LABEL_23:
}

- (id)iCloudACAccount
{
  v2 = [(FMDAppleAccountManager *)self accountStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

- (id)fmipACAccount
{
  v3 = [(FMDAppleAccountManager *)self iCloudACAccount];
  if ([(FMDAppleAccountManager *)self isKnownFMIPAccount:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)isKnownFMIPAccount:(id)a3
{
  v4 = a3;
  v5 = [(FMDAppleAccountManager *)self _currentFMDFMIPAccount];
  v6 = [v4 aa_personID];

  v7 = [v5 dsid];
  v8 = [v6 isEqualToString:v7];

  return v8;
}

- (id)_currentFMDFMIPAccount
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  v3 = [v2 account];

  return v3;
}

- (BOOL)populateiCloudAccountInfoIntoAccount:(id)a3
{
  v4 = a3;
  v5 = [(FMDAppleAccountManager *)self iCloudACAccount];
  v6 = v5;
  if (!v5)
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1002296AC();
    }

    goto LABEL_10;
  }

  v7 = [v5 aa_personID];
  v8 = [v4 dsid];
  if (![v7 isEqualToString:v8])
  {

LABEL_8:
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100229678();
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  v9 = [(FMDAppleAccountManager *)self _isBeneficiaryAccount];

  if (v9)
  {
    goto LABEL_8;
  }

  [v4 applyPropertiesFromACAccount:v6];
  v10 = 1;
LABEL_11:

  return v10;
}

- (void)forceUserAuthForiCloudAccountForApp:(id)a3 message:(id)a4 really:(BOOL)a5 withCompletion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(FMDAppleAccountManager *)self iCloudACAccount];
  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 aa_personID];
    *buf = 138412290;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "forcing user auth of account %@", buf, 0xCu);
  }

  if (v6)
  {
    [v13 aa_setPassword:0];
  }

  v16 = +[NSMutableDictionary dictionary];
  [v16 fm_safelyMapKey:kACRenewCredentialsShouldForceKey toObject:&__kCFBooleanTrue];
  [v16 fm_safelyMapKey:kACRenewCredentialsProxiedAppBundleIDKey toObject:v12];

  [v16 fm_safelyMapKey:@"AARenewShouldForceInteraction" toObject:&__kCFBooleanTrue];
  [v16 fm_safelyMapKey:kACRenewCredentialsReasonStringKey toObject:v11];

  v17 = [(FMDAppleAccountManager *)self accountStore];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100165C3C;
  v20[3] = &unk_1002CF1D0;
  v21 = v13;
  v22 = v10;
  v18 = v10;
  v19 = v13;
  [v17 renewCredentialsForAccount:v19 options:v16 completion:v20];
}

- (void)fixFMIPAuthTokenShouldForce:(BOOL)a3
{
  v4 = a3;
  v6 = [(FMDAppleAccountManager *)self iCloudACAccount];
  if ([(FMDAppleAccountManager *)self isKnownFMIPAccount:v6])
  {
    v7 = [v6 aa_fmipAccount];
    v8 = [(FMDAppleAccountManager *)self accountStore];
    v30 = 0;
    v9 = [v8 credentialForAccount:v7 error:&v30];
    v10 = v30;

    v11 = [v9 oauthToken];

    if (!v11 && v10)
    {
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Token not available due to error : %@", buf, 0xCu);
      }

      v13 = [v10 domain];
      if ([v13 isEqualToString:ACErrorKeychainDomain])
      {
        v14 = [v10 code];

        if (v14 == -34019)
        {
          v15 = sub_100002880();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No token available because keychain upgrade is pending. Will wait for that to complete", buf, 2u);
          }

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    v26 = v4;
    v27 = v10;
    v16 = +[FMDServiceProvider activeServiceProvider];
    v15 = [v16 account];

    v17 = [v9 token];
    if (!v17)
    {
      v3 = [v15 fmipAuthToken];
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    v18 = [v9 token];
    v19 = [v15 fmipAuthToken];
    v20 = [v18 isEqualToString:v19];

    if (v17)
    {

      if (v20)
      {
LABEL_17:
        v21 = [v6 aa_personID];
        v22 = sub_100002880();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Requesting renewal of account credentials...", buf, 2u);
        }

        v23 = [(FMDAppleAccountManager *)self accountStore];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10016617C;
        v28[3] = &unk_1002CF1F8;
        v29 = v21;
        v24 = v21;
        [v23 renewCredentialsForAccount:v6 force:v26 reason:0 completion:v28];

LABEL_24:
        v10 = v27;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_17;
      }
    }

    v25 = sub_100002880();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Accounts has a different token, trying to use the new token via sync account info.", buf, 2u);
    }

    [(FMDAppleAccountManager *)self syncFMIPAccountInfo];
    goto LABEL_24;
  }

  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Couldn't find an active FMiP account", buf, 2u);
  }

LABEL_26:
}

- (BOOL)_isBeneficiaryAccount
{
  v2 = [(FMDAppleAccountManager *)self iCloudACAccount];
  v3 = [v2 aa_altDSID];

  if (v3)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v4 authKitAccountWithAltDSID:v3];

    v6 = +[AKAccountManager sharedInstance];
    v7 = [v6 isBeneficiaryForAccount:v5];

    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isBeneficiaryAccount %d", v10, 8u);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end