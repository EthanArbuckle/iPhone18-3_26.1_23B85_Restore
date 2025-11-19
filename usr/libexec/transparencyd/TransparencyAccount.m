@interface TransparencyAccount
+ (BOOL)eligibleForOptIn;
+ (BOOL)initiateCredentialRenewal:(id *)a3 completionHandler:(id)a4;
+ (BOOL)isAccountsErrorRetryable:(id)a3;
+ (id)authToken:(id *)a3;
+ (id)cloudKitAccount:(id)a3;
+ (id)createAuthToken:(id)a3 authToken:(id)a4;
+ (id)createAuthkitSession;
+ (id)primaryAccount:(id *)a3;
+ (id)sharedAccountStore;
+ (id)sharedManager;
+ (int64_t)accountLevelErrorCodeForLevel:(id)a3;
+ (unint64_t)accountLevel:(id)a3;
+ (void)startMetrics:(id)a3 idsAccountTracker:(id)a4;
- (TransparencyAccount)init;
- (id)cloudKitAccount:(id)a3;
- (id)fetchAccountsRetryingWithTimeout:(double)a3 error:(id *)a4;
- (id)primaryAccount:(id *)a3;
- (int64_t)ktAccountStatus:(id)a3 idsAccountsTracker:(id)a4 error:(id *)a5;
- (unint64_t)accountLevel:(id)a3;
@end

@implementation TransparencyAccount

+ (id)createAuthkitSession
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];

  v4 = [[AKAppleIDSession alloc] initWithIdentifier:v3];

  return v4;
}

- (TransparencyAccount)init
{
  v6.receiver = self;
  v6.super_class = TransparencyAccount;
  v2 = [(TransparencyAccount *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ACAccountStore);
    [(TransparencyAccount *)v2 setStore:v3];

    [(TransparencyAccount *)v2 setAccountsdRetryTimeout:30.0];
    v4 = v2;
  }

  return v2;
}

- (unint64_t)accountLevel:(id)a3
{
  v3 = a3;
  v4 = +[AKAccountManager sharedInstance];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 altDSIDForAccount:v3];
    if (v6)
    {
      v12 = 0;
      v7 = [v5 authKitAccountWithAltDSID:v6 error:&v12];
      v8 = v12;
      if (v7)
      {
        v9 = [v5 securityLevelForAccount:v7];
      }

      else
      {
        if (qword_10039CE08 != -1)
        {
          sub_10025FA48();
        }

        v10 = qword_10039CE10;
        if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "TransparencyAccount authKitAccountWithAltDSID failed: %{public}@", buf, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isAccountsErrorRetryable:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:NSCocoaErrorDomain])
    {
      v6 = [v4 code] == 4097 || objc_msgSend(v4, "code") == 4099;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fetchAccountsRetryingWithTimeout:(double)a3 error:(id *)a4
{
  v7 = +[NSDate date];
  v8 = [v7 dateByAddingTimeInterval:a3];

  v9 = [(TransparencyAccount *)self store];
  v24 = 0;
  v10 = [v9 aa_appleAccountsWithError:&v24];
  v11 = v24;

  if (v10)
  {
    v12 = 0;
LABEL_3:
    if (qword_10039CE08 != -1)
    {
      sub_10025FA98();
    }

    v13 = qword_10039CE10;
    if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "TransparencyAccount found accounts after (%d) attempts", buf, 8u);
    }

    v10 = v10;
  }

  else
  {
    v23 = a4;
    v12 = 0;
    while (1)
    {
      v15 = +[NSDate date];
      v16 = [v8 compare:v15];

      if (v16 == -1)
      {
        break;
      }

      if (v12 == 5 || ![objc_opt_class() isAccountsErrorRetryable:v11])
      {
        v19 = v23;
        if (qword_10039CE08 != -1)
        {
          sub_10025FAC0();
        }

        v20 = qword_10039CE10;
        if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v26 = v11;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "TransparencyAccount: Can't talk with accountsd: %@", buf, 0xCu);
        }

        if (v23)
        {
          v21 = v11;
LABEL_33:
          *v19 = v21;
          goto LABEL_8;
        }

        goto LABEL_8;
      }

      if (qword_10039CE08 != -1)
      {
        sub_10025FA70();
      }

      v17 = qword_10039CE10;
      if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v26 = v12;
        *&v26[4] = 2112;
        *&v26[6] = v11;
        v27 = 2112;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "TransparencyAccount retrying accountsd XPC, (%d, %@) timeout: %@", buf, 0x1Cu);
      }

      ++v12;

      v18 = [(TransparencyAccount *)self store];
      v24 = 0;
      v10 = [v18 aa_appleAccountsWithError:&v24];
      v11 = v24;

      if (v10)
      {
        goto LABEL_3;
      }
    }

    if (qword_10039CE08 != -1)
    {
      sub_10025FAE8();
    }

    v19 = v23;
    v22 = qword_10039CE10;
    if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v26 = v12;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "TransparencyAccount timed out, retry try: %d", buf, 8u);
    }

    if (v23)
    {
      v21 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-394 underlyingError:v11 description:@"Account framework timeout"];
      goto LABEL_33;
    }
  }

LABEL_8:

  return v10;
}

- (id)primaryAccount:(id *)a3
{
  v5 = [(TransparencyAccount *)self store];
  if (v5)
  {
    [(TransparencyAccount *)self accountsdRetryTimeout];
    v25 = 0;
    v6 = [(TransparencyAccount *)self fetchAccountsRetryingWithTimeout:&v25 error:?];
    v7 = v25;
    v8 = v7;
    if (v6)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        v13 = AAAccountClassPrimary;
LABEL_5:
        v14 = 0;
        while (1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          if ([v15 aa_isAccountClass:{v13, v21}])
          {
            break;
          }

          if (v11 == ++v14)
          {
            v11 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v17 = v15;

        if (v17)
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_11:
      }

      if (qword_10039CE08 != -1)
      {
        sub_10025FB10();
      }

      v18 = qword_10039CE10;
      if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No primary AppleAccount found: %@", buf, 0xCu);
      }

      if (a3)
      {
        v19 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-117 underlyingError:v8 description:@"No primary AppleAccount found"];
LABEL_27:
        v17 = 0;
        *a3 = v19;
LABEL_29:

        goto LABEL_30;
      }
    }

    else if (a3)
    {
      v19 = v7;
      goto LABEL_27;
    }

    v17 = 0;
    goto LABEL_29;
  }

  if (qword_10039CE08 != -1)
  {
    sub_10025FB38();
  }

  v16 = qword_10039CE10;
  if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No ACAccountStore found", buf, 2u);
  }

  if (a3)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-116 description:@"No account store found"];
    *a3 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_30:

  return v17;
}

- (id)cloudKitAccount:(id)a3
{
  v3 = [a3 childAccountsWithAccountTypeIdentifier:ACAccountTypeIdentifierCloudKit];
  v4 = [v3 firstObject];

  return v4;
}

+ (id)sharedManager
{
  if (qword_10039CE20 != -1)
  {
    sub_10025FB4C();
  }

  v3 = qword_10039CE18;

  return v3;
}

+ (id)sharedAccountStore
{
  v2 = +[TransparencyAccount sharedManager];
  v3 = [v2 store];

  return v3;
}

+ (void)startMetrics:(id)a3 idsAccountTracker:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_10039CE08 != -1)
  {
    sub_10025FB60();
  }

  v7 = qword_10039CE10;
  if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TransparencyAccount startMetrics", buf, 2u);
  }

  v8 = SFAnalyticsSamplerIntervalOncePerReport;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100230E6C;
  v10[3] = &unk_10032BEC0;
  v11 = v6;
  v9 = v6;
  [v5 addMultiSamplerForName:@"TransparencyAccountMultiSampler" withTimeInterval:v10 block:v8];
}

+ (int64_t)accountLevelErrorCodeForLevel:(id)a3
{
  v3 = [a3 unsignedIntegerValue];
  if ((v3 - 1) >= 5)
  {
    return -153;
  }

  else
  {
    return -153 - v3;
  }
}

+ (id)createAuthToken:(id)a3 authToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableString);
  [v7 appendString:v6];

  [v7 appendString:@":"];
  [v7 appendString:v5];

  v8 = objc_alloc_init(NSMutableString);
  [v8 appendString:@"X-MobileMe-AuthToken "];
  v9 = [v7 dataUsingEncoding:4];
  v10 = [v9 base64EncodedStringWithOptions:0];
  [v8 appendString:v10];

  return v8;
}

+ (unint64_t)accountLevel:(id)a3
{
  v3 = a3;
  v4 = +[TransparencyAccount sharedManager];
  v5 = [v4 accountLevel:v3];

  return v5;
}

+ (BOOL)eligibleForOptIn
{
  v2 = [TransparencyAccount primaryAccount:0];
  if (v2)
  {
    v3 = [TransparencyAccount accountLevel:v2]== 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)ktAccountStatus:(id)a3 idsAccountsTracker:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
LABEL_4:
    v12 = [(TransparencyAccount *)self accountLevel:v8];
    if (v12 == 4)
    {
      v13 = [v8 aa_personID];
      if (v13)
      {
        v14 = [(TransparencyAccount *)self cloudKitAccount:v8];
        if (v14)
        {
          v15 = [v9 messagesStatus];

          if (v15 || _os_feature_enabled_impl() && ([v9 phoneStatus], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
          {
            if (([v9 haveIDSAccount:v13] & 1) != 0 || _os_feature_enabled_impl() && objc_msgSend(v9, "idsAccountType") != 3)
            {
              v16 = 0;
            }

            else
            {
              if (qword_10039CE08 != -1)
              {
                sub_10025FBB0();
              }

              v25 = qword_10039CE10;
              if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "TransparencyAccount ids and CK doesn't match", buf, 2u);
              }

              v16 = 5;
            }
          }

          else
          {
            if (qword_10039CE08 != -1)
            {
              sub_10025FBD8();
            }

            v24 = qword_10039CE10;
            if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "TransparencyAccount no IDS account", buf, 2u);
            }

            v16 = 4;
          }
        }

        else
        {
          if (qword_10039CE08 != -1)
          {
            sub_10025FC00();
          }

          v22 = qword_10039CE10;
          if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v8;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "TransparencyAccount no cloudkit account: %@", buf, 0xCu);
          }

          v16 = 3;
        }
      }

      else
      {
        if (qword_10039CE08 != -1)
        {
          sub_10025FC28();
        }

        v19 = qword_10039CE10;
        if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "TransparencyAccount no account dsid: %@", buf, 0xCu);
        }

        v16 = 2;
      }
    }

    else
    {
      v17 = v12;
      if (qword_10039CE08 != -1)
      {
        sub_10025FB88();
      }

      v18 = qword_10039CE10;
      if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v29) = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "TransparencyAccount level not HSA2: %d", buf, 8u);
      }

      v16 = 2;
    }

    goto LABEL_48;
  }

  v27 = 0;
  v10 = [(TransparencyAccount *)self primaryAccount:&v27];
  v11 = v27;
  v8 = v11;
  if (v10)
  {

    v8 = v10;
    goto LABEL_4;
  }

  if (qword_10039CE08 != -1)
  {
    sub_10025FC50();
  }

  v20 = qword_10039CE10;
  if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "TransparencyAccount no default: %@", buf, 0xCu);
  }

  if (a5)
  {
    v21 = v8;
    *a5 = v8;
  }

  v16 = 1;
LABEL_48:

  return v16;
}

+ (id)primaryAccount:(id *)a3
{
  v4 = [a1 sharedManager];
  v5 = [v4 primaryAccount:a3];

  return v5;
}

+ (id)cloudKitAccount:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedManager];
  v6 = [v5 cloudKitAccount:v4];

  return v6;
}

+ (id)authToken:(id *)a3
{
  v4 = [TransparencyAccount primaryAccount:?];
  v5 = v4;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_36;
  }

  v6 = [v4 credential];
  if (v6)
  {
    v7 = [v5 aa_personID];
    if (v7)
    {
      v8 = [TransparencyAccount accountLevel:v5];
      if (qword_10039CE08 != -1)
      {
        sub_10025FC78();
      }

      v9 = qword_10039CE10;
      if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11 = [NSNumber numberWithUnsignedInteger:v8];
        *buf = 138412290;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Obtaining credential from account of security level %@", buf, 0xCu);
      }

      v12 = [v6 credentialItemForKey:ACKeyTransparencyTokenKey];
      if (v12)
      {
        v13 = [TransparencyAccount createAuthToken:v7 authToken:v12];
        if (qword_10039CE08 != -1)
        {
          sub_10025FC8C();
        }

        v14 = qword_10039CE10;
        if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v34 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Authorization token: %@", buf, 0xCu);
        }
      }

      else
      {
        if (qword_10039CE08 != -1)
        {
          sub_10025FCB4();
        }

        v23 = qword_10039CE10;
        if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
          v25 = [v5 username];
          v26 = [NSNumber numberWithUnsignedInteger:v8];
          *buf = 138412802;
          v34 = v25;
          v35 = 2112;
          v36 = v26;
          v37 = 2112;
          v38 = v7;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Account %@ of level %@ does not have KeyTransparencyToken(%@)", buf, 0x20u);
        }

        if (a3)
        {
          v32 = kTransparencyErrorAccount;
          v27 = [NSNumber numberWithUnsignedInteger:v8];
          v28 = [TransparencyAccount accountLevelErrorCodeForLevel:v27];
          v29 = [v5 username];
          v30 = [NSNumber numberWithUnsignedInteger:v8];
          *a3 = [TransparencyError errorWithDomain:v32 code:v28 description:@"Account %@ of level %@ does not have KeyTransparencyToken(%@)", v29, v30, v7];
        }

        v13 = 0;
      }
    }

    else
    {
      if (qword_10039CE08 != -1)
      {
        sub_10025FCDC();
      }

      v19 = qword_10039CE10;
      if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = [v5 username];
        *buf = 138412546;
        v34 = v21;
        v35 = 2112;
        v36 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Account %@ does not have personId(%@)", buf, 0x16u);
      }

      if (!a3)
      {
        v13 = 0;
        goto LABEL_34;
      }

      v22 = kTransparencyErrorAccount;
      v12 = [v5 username];
      [TransparencyError errorWithDomain:v22 code:-152 description:@"Account %@ does not have personId(%@)", v12, 0];
      *a3 = v13 = 0;
    }
  }

  else
  {
    if (qword_10039CE08 != -1)
    {
      sub_10025FCF0();
    }

    v15 = qword_10039CE10;
    if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = [v5 username];
      *buf = 138412290;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Account %@ missing credentials", buf, 0xCu);
    }

    if (!a3)
    {
      v13 = 0;
      goto LABEL_35;
    }

    v18 = kTransparencyErrorAccount;
    v7 = [v5 username];
    [TransparencyError errorWithDomain:v18 code:-118 description:@"Account %@ missing credentials", v7];
    *a3 = v13 = 0;
  }

LABEL_34:

LABEL_35:
LABEL_36:

  return v13;
}

+ (BOOL)initiateCredentialRenewal:(id *)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [TransparencyAccount primaryAccount:a3];
  if (v6)
  {
    v7 = +[TransparencyAccount sharedAccountStore];
    v14[0] = kACRenewCredentialsShouldAvoidUIKey;
    v14[1] = kACRenewCredentialsShouldForceKey;
    v15[0] = &__kCFBooleanTrue;
    v15[1] = &__kCFBooleanFalse;
    v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002323D0;
    v11[3] = &unk_10031BA90;
    v12 = v5;
    [v7 renewCredentialsForAccount:v6 options:v8 completion:v11];
  }

  else
  {
    if (qword_10039CE08 != -1)
    {
      sub_10025FD04();
    }

    v9 = qword_10039CE10;
    if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to renew credentials -- no primary account", buf, 2u);
    }

    v7 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-117 description:@"Account credential renewal failed -- no account"];
    (*(v5 + 2))(v5, v7);
  }

  return v6 != 0;
}

@end