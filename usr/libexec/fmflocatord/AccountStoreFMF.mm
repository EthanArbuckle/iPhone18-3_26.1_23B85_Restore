@interface AccountStoreFMF
- (id)_accountFromACAccount:(id)a3;
- (id)accounts;
- (void)_fetchAppAuthToken:(id)a3;
- (void)_fetchInternalAuthToken:(id)a3;
- (void)_tokensForAccount:(id)a3;
- (void)addAccount:(id)a3;
- (void)dealloc;
- (void)loadExistingAccounts;
- (void)removeAccount:(id)a3;
@end

@implementation AccountStoreFMF

- (void)dealloc
{
  [(AccountStoreFMF *)self setCurrentActiveAccount:0];
  v3.receiver = self;
  v3.super_class = AccountStoreFMF;
  [(AccountStoreFMF *)&v3 dealloc];
}

- (void)loadExistingAccounts
{
  v3 = [(AccountStoreFMF *)self accountsList];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    [(AccountStoreFMF *)self setAccountsList:v4];

    v5 = +[AppleAccountManager sharedInstance];
    v6 = [v5 fmfACAccount];

    v7 = [(AccountStoreFMF *)self _accountFromACAccount:v6];
    if (v7)
    {
      v8 = [(AccountStoreFMF *)self accountsList];
      [v8 addObject:v7];

      [(AccountStoreFMF *)self setCurrentActiveAccount:v7];
    }

    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(AccountStoreFMF *)self accountsList];
      v14 = 134217984;
      v15 = [v10 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Found %ld FMF accounts in store", &v14, 0xCu);
    }

    v11 = [(AccountStoreFMF *)self currentActiveAccount];
    v12 = v11 == 0;

    if (!v12)
    {
      v13 = [(AccountStoreFMF *)self currentActiveAccount];
      [(AccountStoreFMF *)self _tokensForAccount:v13];
    }
  }
}

- (id)accounts
{
  v3 = [(AccountStoreFMF *)self accountsList];
  v4 = [v3 copy];

  if ([(AccountStoreFMF *)self refreshAuthTokens])
  {
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Looks like some auth tokens were not read successfully the last time. Re-reading them...", buf, 2u);
    }

    [(AccountStoreFMF *)self setRefreshAuthTokens:0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100012DD0;
    v7[3] = &unk_10005D320;
    v7[4] = self;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  return v4;
}

- (void)addAccount:(id)a3
{
  v4 = a3;
  v5 = [(AccountStoreFMF *)self accountsList];
  [v5 addObject:v4];

  [(AccountStoreFMF *)self saveChanges];
}

- (void)removeAccount:(id)a3
{
  v4 = a3;
  v5 = [(AccountStoreFMF *)self accountsList];
  [v5 removeObject:v4];

  [(AccountStoreFMF *)self saveChanges];
}

- (void)_tokensForAccount:(id)a3
{
  v4 = a3;
  [(AccountStoreFMF *)self _fetchAppAuthToken:v4];
  [(AccountStoreFMF *)self _fetchInternalAuthToken:v4];
}

- (void)_fetchAppAuthToken:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ACAccountStore);
  v6 = +[AppleAccountManager sharedInstance];
  v7 = [v6 fmfACAccount];

  v16 = 0;
  v8 = [v5 credentialForAccount:v7 error:&v16];
  v9 = v16;
  if (!v8)
  {
    v10 = sub_100002830();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100037014(v7, v10);
    }
  }

  v11 = [v8 credentialItemForKey:ACFindMyFriendsAppTokenKey];
  v12 = v11;
  if (v9 || !v11)
  {
    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v4 username];
      v15 = [v4 appAuthTokenStatus];
      *buf = 138412802;
      v18 = v14;
      v19 = 2048;
      v20 = v15;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not retrieve app token for FMF account %@(%ld). Error : %@", buf, 0x20u);
    }

    [v4 setAppAuthTokenStatus:1];
    [(AccountStoreFMF *)self setRefreshAuthTokens:1];
  }

  else
  {
    [v4 setAppAuthToken:v11];
    [v4 setAppAuthTokenStatus:0];
  }
}

- (void)_fetchInternalAuthToken:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ACAccountStore);
  v6 = +[AppleAccountManager sharedInstance];
  v7 = [v6 fmfACAccount];

  v15 = 0;
  v8 = [v5 credentialForAccount:v7 error:&v15];
  v9 = v15;
  v10 = [v8 credentialItemForKey:ACFindMyFriendsTokenKey];
  v11 = v10;
  if (v9 || !v10)
  {
    v12 = sub_100002830();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 username];
      v14 = [v4 appAuthTokenStatus];
      *buf = 138412802;
      v17 = v13;
      v18 = 2048;
      v19 = v14;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not retrieve internal token for FMF account %@ (%ld) Error : %@", buf, 0x20u);
    }

    [v4 setInternalAuthTokenStatus:2];
    [(AccountStoreFMF *)self setRefreshAuthTokens:1];
  }

  else
  {
    [v4 setInternalAuthToken:v10];
    [v4 setInternalAuthTokenStatus:0];
  }
}

- (id)_accountFromACAccount:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(FMFAccount);
    v5 = [v3 parentAccount];

    [(FMFAccount *)v4 applyPropertiesFromACAccount:v5 includingTokens:0];
    [(Account *)v4 setIsActive:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end