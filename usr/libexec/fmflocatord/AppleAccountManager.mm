@interface AppleAccountManager
+ (id)sharedInstance;
- (AppleAccountManager)init;
- (id)fmfACAccount;
- (id)iCloudACAccount;
- (id)initSingleton;
- (void)dealloc;
- (void)iCloudAccountChanged:(id)changed;
- (void)syncFMFAccountInfo;
@end

@implementation AppleAccountManager

+ (id)sharedInstance
{
  if (qword_1000702F0 != -1)
  {
    sub_100038500();
  }

  v2 = qword_1000702E8;
  if (!qword_1000702E8)
  {
    v3 = sub_100002830();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The AppleAccountManager singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_1000702E8;
  }

  return v2;
}

- (AppleAccountManager)init
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100038558(v3);
  }

  return 0;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = AppleAccountManager;
  v2 = [(AppleAccountManager *)&v5 init];
  if (v2)
  {
    objc_storeStrong(&qword_1000702E8, v2);
    v3 = objc_alloc_init(ACAccountStore);
    [(AppleAccountManager *)v2 setAccountStore:v3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100036958(self, v3);
  }

  v4 = qword_1000702E8;
  qword_1000702E8 = 0;

  v5.receiver = self;
  v5.super_class = AppleAccountManager;
  [(AppleAccountManager *)&v5 dealloc];
}

- (void)syncFMFAccountInfo
{
  iCloudACAccount = [(AppleAccountManager *)self iCloudACAccount];
  v3 = iCloudACAccount;
  if (iCloudACAccount)
  {
    if ([iCloudACAccount isProvisionedForDataclass:@"com.apple.Dataclass.ShareLocation"])
    {
      v4 = +[AccountManager sharedInstance];
      v5 = [v4 allAccountsOfType:objc_opt_class()];

      if ([v5 count])
      {
        v6 = [v5 objectAtIndexedSubscript:0];
        v7 = v6;
        if (v6)
        {
          dsid = [v6 dsid];
          aa_personID = [v3 aa_personID];
          v10 = [dsid isEqualToString:aa_personID];

          if (v10)
          {
LABEL_15:
            v15 = objc_alloc_init(FMFAccount);
            [(FMFAccount *)v15 copyInfoFromAccount:v7];
            [(FMFAccount *)v15 applyPropertiesFromACAccount:v3 includingTokens:1];
            v16 = +[AccountManager sharedInstance];
            [v16 addAccount:v15];

            goto LABEL_16;
          }

          v11 = +[StartupRegisterManager sharedInstance];
          [v11 eventDidOccur:1];
        }
      }

      else
      {
        v7 = 0;
      }

      v14 = +[StartupRegisterManager sharedInstance];
      [v14 eventDidOccur:0];

      goto LABEL_15;
    }

    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "ShareLocation is not provisioned in the iCloud account", v17, 2u);
    }
  }

  else
  {
    v12 = sub_100002830();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deleting FMF acount", buf, 2u);
    }

    v13 = +[AccountManager sharedInstance];
    [v13 deactivateAllAccountsOfType:objc_opt_class()];
  }

LABEL_16:
}

- (id)iCloudACAccount
{
  accountStore = [(AppleAccountManager *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (id)fmfACAccount
{
  iCloudACAccount = [(AppleAccountManager *)self iCloudACAccount];
  if ([iCloudACAccount isProvisionedForDataclass:@"com.apple.Dataclass.ShareLocation"])
  {
    iCloudACAccount2 = [(AppleAccountManager *)self iCloudACAccount];
    aa_fmfAccount = [iCloudACAccount2 aa_fmfAccount];
  }

  else
  {
    aa_fmfAccount = 0;
  }

  return aa_fmfAccount;
}

- (void)iCloudAccountChanged:(id)changed
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "iCloudAccountChanged notification - looking for changes in fmf accounts", buf, 2u);
  }

  v4 = +[AppleAccountManager sharedInstance];
  v5 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EFD0;
  block[3] = &unk_10005D2B0;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, block);
}

@end