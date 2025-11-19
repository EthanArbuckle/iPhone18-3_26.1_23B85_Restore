@interface VSUserAccountRegistry
- (BOOL)_isAccountValidForAutoSignIn:(id)a3;
- (BOOL)_isClientValidForAutoSignInForCurrentTask;
- (BOOL)_isValidForAutoSignInForCurrentTaskWithAccount:(id)a3;
- (BOOL)_isValidForDeleteQueryForCurrentTask;
- (BOOL)_isValidForUpdateQueryForCurrentTask:(id)a3;
- (BOOL)saveContext:(id)a3 withError:(id *)a4;
- (BOOL)shouldAllowUserAccountUpdate:(id)a3;
- (VSUserAccountRegistry)initWithDelegate:(id)a3;
- (VSUserAccountRegistryDelegate)delegate;
- (id)_accountForAutoSignInWithClientAccountType:(int64_t)a3;
- (id)_amsAccountStoreForAccountType:(int64_t)a3;
- (id)_predicateForQueryRequestWithOptions:(int64_t)a3;
- (id)_predicateForUserAccountFromCurrentDevice;
- (id)_predicateForUserAccountWithDeviceIdentifier:(id)a3 sourceIdentifier:(id)a4 sourceType:(id)a5;
- (id)_securityTaskForCurrentConnection;
- (id)_updateRequestForAccount:(id)a3;
- (id)_userAccountForPersistentUserAccount:(id)a3 context:(id)a4;
- (id)createSaveContext;
- (id)prepareUserAccountsToVend:(id)a3 withSecurityTask:(id)a4;
- (void)_deduplicatePersistentUserAccounts:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_deletePersistentUserAccount:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)_deleteUserAccount:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_forceRefreshAccount:(id)a3;
- (void)_getMaxUpdateFrequencyNumberWithCompletionHandler:(id)a3;
- (void)_insertUserAccount:(id)a3 completion:(id)a4;
- (void)_loadStoresAndMigrateIfRequiredWithCompletion:(id)a3;
- (void)_persistentAccountsForUserAccount:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_populatePersistentUserAccount:(id)a3 withUserAccount:(id)a4 context:(id)a5;
- (void)_queryAutoSignInTokenWithAccount:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)_queryPersistentUserAccountsWithPredicate:(id)a3 sorts:(id)a4 fetchLimit:(id)a5 context:(id)a6 completion:(id)a7;
- (void)_queryUserAccountsWithPredicate:(id)a3 sorts:(id)a4 fetchLimit:(id)a5 context:(id)a6 completion:(id)a7;
- (void)_setUpdateRequestManagerWithRequests:(id)a3;
- (void)_subscriptionsForMigrationWithCompletion:(id)a3;
- (void)_update;
- (void)deleteAutoSignInTokenWithClientAccountType:(int64_t)a3 completion:(id)a4;
- (void)deleteUserAccount:(id)a3 completion:(id)a4;
- (void)fetchActiveSubscriptionsWithOptions:(id)a3 completionHandler:(id)a4;
- (void)forceRefreshUserAccount:(id)a3 withCompletion:(id)a4;
- (void)forceUpdateUserAccountsWithCompletion:(id)a3;
- (void)insertUserAccount:(id)a3 completion:(id)a4;
- (void)queryAutoSignInTokenWithClientAccountType:(int64_t)a3 completion:(id)a4;
- (void)queryUserAccountsWithOptions:(int64_t)a3 completion:(id)a4;
- (void)queryUserAccountsWithOptions:(int64_t)a3 sourceIdentifier:(id)a4 sourceType:(id)a5 deviceIdentifier:(id)a6 completion:(id)a7;
- (void)queryUserAccountsWithPredicate:(id)a3 completion:(id)a4;
- (void)registerSubscription:(id)a3;
- (void)removeSubscriptions:(id)a3;
- (void)requestAutoSignInAuthorizationWithClientAccountType:(int64_t)a3 completion:(id)a4;
- (void)resetTimer;
- (void)updateAutoSignInToken:(id)a3 clientAccountType:(int64_t)a4 completion:(id)a5;
- (void)updateManager:(id)a3 updateRequestDidFinish:(id)a4;
- (void)updateManagerDidFinish:(id)a3;
- (void)updateUserAccount:(id)a3 completion:(id)a4;
@end

@implementation VSUserAccountRegistry

- (VSUserAccountRegistry)initWithDelegate:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = VSUserAccountRegistry;
  v5 = [(VSUserAccountRegistry *)&v28 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_alloc_init(VSPreferences);
    preferences = v6->_preferences;
    v6->_preferences = v7;

    v9 = objc_alloc_init(NSOperationQueue);
    privateQueue = v6->_privateQueue;
    v6->_privateQueue = v9;

    v11 = v6->_privateQueue;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [(NSOperationQueue *)v11 setName:v13];

    [(NSOperationQueue *)v6->_privateQueue setMaxConcurrentOperationCount:1];
    v14 = [VSRemoteNotifier alloc];
    v15 = [v14 initWithNotificationName:VSUserAccountsDidChangeNotification];
    remoteNotifier = v6->_remoteNotifier;
    v6->_remoteNotifier = v15;

    v17 = [VSPrivacyFacade alloc];
    v18 = objc_alloc_init(VSPrivacyVoucherLockbox);
    v19 = [v17 initWithVoucherLockbox:v18];
    privacyFacade = v6->_privacyFacade;
    v6->_privacyFacade = v19;

    v21 = [[VSUserAccountPersistentContainer alloc] initInMemory:0];
    container = v6->_container;
    v6->_container = v21;

    v6->_loadingStoresLock._os_unfair_lock_opaque = 0;
    v23 = +[NSDate distantPast];
    lastUpdateTime = v6->_lastUpdateTime;
    v6->_lastUpdateTime = v23;

    [AMSEphemeralDefaults setSuppressEngagement:1];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000103C;
    v26[3] = &unk_1000144E8;
    v27 = v6;
    [(VSUserAccountRegistry *)v27 _loadStoresAndMigrateIfRequiredWithCompletion:v26];
  }

  return v6;
}

- (void)_loadStoresAndMigrateIfRequiredWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VSUserAccountRegistry *)self privateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000011B8;
  v7[3] = &unk_1000145B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)_subscriptionsForMigrationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VSUserAccountRegistry *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will invoke migration delegate method.", buf, 2u);
    }

    v7 = objc_alloc_init(VSWaitGroup);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = sub_100001590;
    v21 = sub_1000015A0;
    v22 = 0;
    [v7 enter];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001E54;
    v13[3] = &unk_1000145D8;
    v15 = &v23;
    v16 = buf;
    v8 = v7;
    v14 = v8;
    [v5 userAccountRegistry:self willPerformMigrationIfRequiredWithBlock:v13];
    if ([v8 waitWithMilliseconds:2000])
    {
      v9 = *(v24 + 24);
      v10 = *(v18 + 5);
    }

    else
    {
      v12 = VSErrorLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_10000B290();
      }

      v9 = 0;
      v10 = 0;
    }

    v4[2](v4, v9 & 1, v10);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v11 = VSErrorLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10000B2CC();
    }

    v4[2](v4, 0, 0);
  }
}

- (void)queryUserAccountsWithOptions:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v8 = [(VSUserAccountRegistry *)self _predicateForQueryRequestWithOptions:a3];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002034;
  v11[3] = &unk_100014628;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(VSUserAccountRegistry *)self queryUserAccountsWithPredicate:v8 completion:v11];
}

- (void)queryUserAccountsWithOptions:(int64_t)a3 sourceIdentifier:(id)a4 sourceType:(id)a5 deviceIdentifier:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [(VSUserAccountRegistry *)self _predicateForQueryRequestWithOptions:a3];
  v17 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithDeviceIdentifier:v13 sourceIdentifier:v15 sourceType:v14];

  v25[0] = v16;
  v25[1] = v17;
  v18 = [NSArray arrayWithObjects:v25 count:2];
  v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];

  [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000022E0;
  v22[3] = &unk_100014628;
  v23 = v22[4] = self;
  v24 = v12;
  v20 = v12;
  v21 = v23;
  [(VSUserAccountRegistry *)self queryUserAccountsWithPredicate:v19 completion:v22];
}

- (void)updateUserAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(VSUserAccountRegistry *)self shouldAllowUserAccountUpdate:v6])
  {
    v8 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
    v9 = [(VSUserAccountRegistry *)self privateQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000028C0;
    v37[3] = &unk_100014678;
    v10 = &v38;
    v11 = v8;
    v38 = v11;
    v12 = v39;
    v13 = v6;
    v39[0] = v13;
    [v9 addOperationWithBlock:v37];

    if ([(VSUserAccountRegistry *)self _isValidForUpdateQueryForCurrentTask:v13])
    {
      v14 = VSDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "user account update permitted: %@", buf, 0xCu);
      }

      v15 = [v13 accountProviderIdentifier];
      if ([v15 length])
      {
        v16 = VSDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "user account indicates an account provider identifier.", buf, 2u);
        }

        v17 = [(VSUserAccountRegistry *)self privacyFacade];
        v18 = +[NSXPCConnection currentConnection];
        v19 = v18;
        if (v18)
        {
          [v18 auditToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v24 = [v17 isAccessGrantedForAuditToken:{buf, &v38}];

        if (v24)
        {
          v25 = 1;
        }

        else
        {
          v26 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
          v25 = [v26 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalSubscriptionService];
        }

        v27 = +[VSAccountStore sharedAccountStore];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100002A08;
        v31[3] = &unk_100014718;
        v15 = v15;
        v32 = v15;
        v36 = v25;
        v33 = v13;
        v34 = self;
        v35 = v7;
        [v27 fetchAccountsWithCompletionHandler:v31];

        v10 = v28;
      }

      else
      {
        [(VSUserAccountRegistry *)self insertUserAccount:v13 completion:v7];
      }
    }

    else
    {
      v15 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
      v21 = [v15 signingIdentifier];
      v22 = VSErrorLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_10000B378();
      }

      if (v7)
      {
        v29 = VSPublicError();
        v30 = v7;
        v23 = v29;
        VSPerformCompletionHandler();
      }
    }

    goto LABEL_26;
  }

  v20 = VSErrorLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    sub_10000B308();
  }

  if (v7)
  {
    VSPublicError();
    v39[1] = _NSConcreteStackBlock;
    v39[2] = 3221225472;
    v39[3] = sub_1000028AC;
    v39[4] = &unk_100014650;
    v10 = &v41;
    v40 = v12 = &v40;
    v41 = v7;
    v11 = v40;
    VSPerformCompletionHandler();
LABEL_26:
  }
}

- (void)deleteUserAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v9 = [(VSUserAccountRegistry *)self privateQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003110;
  v17[3] = &unk_100014678;
  v10 = v8;
  v18 = v10;
  v11 = v6;
  v19 = v11;
  [v9 addOperationWithBlock:v17];

  if ([(VSUserAccountRegistry *)self _isValidForDeleteQueryForCurrentTask])
  {
    v12 = [(VSUserAccountRegistry *)self createSaveContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003284;
    v14[3] = &unk_1000146F0;
    v13 = v15;
    v15[0] = v7;
    [(VSUserAccountRegistry *)self _deleteUserAccount:v11 context:v12 completion:v14];
  }

  else
  {
    v15[1] = _NSConcreteStackBlock;
    v15[2] = 3221225472;
    v15[3] = sub_10000321C;
    v15[4] = &unk_1000146A0;
    v13 = &v16;
    v16 = v7;
    VSPerformCompletionHandler();
  }
}

- (void)forceUpdateUserAccountsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v6 = [v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalUserAccountServiceForceUpdate];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Forcefully updating user accounts", buf, 2u);
    }

    objc_initWeak(buf, self);
    v8 = [(VSUserAccountRegistry *)self privateQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000035A0;
    v11[3] = &unk_100014740;
    objc_copyWeak(&v13, buf);
    v12 = v4;
    [v8 addOperationWithBlock:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000B504();
    }

    v10 = v4;
    VSPerformCompletionHandler();
  }
}

- (void)forceRefreshUserAccount:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(VSUserAccountRegistry *)self _isValidForUpdateQueryForCurrentTask:v6])
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Forcefully updating user account", buf, 2u);
    }

    objc_initWeak(buf, self);
    v9 = [(VSUserAccountRegistry *)self privateQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003868;
    v12[3] = &unk_100014768;
    objc_copyWeak(&v15, buf);
    v13 = v6;
    v14 = v7;
    [v9 addOperationWithBlock:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000B540();
    }

    v11 = v7;
    VSPerformCompletionHandler();
  }
}

- (void)queryAutoSignInTokenWithClientAccountType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(VSUserAccountRegistry *)self _isClientValidForAutoSignInForCurrentTask])
  {
    v7 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
    v8 = [v7 signingIdentifier];

    v9 = [(VSUserAccountRegistry *)self _accountForAutoSignInWithClientAccountType:a3];
    [(VSUserAccountRegistry *)self _queryAutoSignInTokenWithAccount:v9 bundleIdentifier:v8 completion:v6];
  }

  else
  {
    v10 = v6;
    VSPerformCompletionHandler();
  }
}

- (void)requestAutoSignInAuthorizationWithClientAccountType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(VSUserAccountRegistry *)self _accountForAutoSignInWithClientAccountType:a3];
  if ([(VSUserAccountRegistry *)self _isValidForAutoSignInForCurrentTaskWithAccount:v7])
  {
    v8 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
    v9 = [v8 signingIdentifier];

    v10 = [[AMSDeveloperSilentAuthTokenConsentTask alloc] initWithBundleId:v9 account:v7 bag:0];
    v11 = [v10 performPresentation];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003C50;
    v13[3] = &unk_1000147B8;
    v14 = v9;
    v15 = v6;
    v12 = v6;
    v6 = v9;
    [v11 resultWithCompletion:v13];
  }

  else
  {
    v10 = v6;
    VSPerformCompletionHandler();
  }
}

- (void)updateAutoSignInToken:(id)a3 clientAccountType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v11 = [v10 signingIdentifier];

  v12 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v13 = [v8 stringByTrimmingCharactersInSet:v12];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(VSUserAccountRegistry *)self _accountForAutoSignInWithClientAccountType:a4];
    if ([(VSUserAccountRegistry *)self _isValidForAutoSignInForCurrentTaskWithAccount:v15])
    {
      v16 = [[AMSDeveloperSilentAuthTokenUpdateTask alloc] initWithBundleId:v11 account:v15 bag:0];
      v17 = [v16 performWithToken:v8];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100004100;
      v21[3] = &unk_1000147E0;
      v22 = v11;
      v23 = v9;
      [v17 resultWithCompletion:v21];
    }

    else
    {
      v19 = VSErrorLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10000B5E4();
      }

      v20 = v9;
      VSPerformCompletionHandler();
      v16 = v20;
    }
  }

  else
  {
    v18 = VSErrorLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000B660();
    }

    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100004098;
    v27 = &unk_1000146A0;
    v28 = v9;
    VSPerformCompletionHandler();
    v15 = v28;
  }
}

- (void)deleteAutoSignInTokenWithClientAccountType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(VSUserAccountRegistry *)self _accountForAutoSignInWithClientAccountType:a3];
  if ([(VSUserAccountRegistry *)self _isValidForAutoSignInForCurrentTaskWithAccount:v7])
  {
    v8 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
    v9 = [v8 signingIdentifier];

    v10 = [[AMSDeveloperSilentAuthTokenUpdateTask alloc] initWithBundleId:v9 account:v7 bag:0];
    v11 = [v10 performWithToken:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000443C;
    v13[3] = &unk_1000147E0;
    v14 = v9;
    v15 = v6;
    v12 = v6;
    v6 = v9;
    [v11 resultWithCompletion:v13];
  }

  else
  {
    v10 = v6;
    VSPerformCompletionHandler();
  }
}

- (void)_queryAutoSignInTokenWithAccount:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(VSUserAccountRegistry *)self _isAccountValidForAutoSignIn:v8])
  {
    v11 = [[AMSDeveloperSilentAuthTokenFetchTask alloc] initWithBundleId:v9 account:v8 bag:0];
    v12 = [v11 perform];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100004724;
    v13[3] = &unk_1000147B8;
    v14 = v9;
    v15 = v10;
    [v12 resultWithCompletion:v13];
  }

  else
  {
    v11 = VSPublicError();
    (*(v10 + 2))(v10, 0, v11);
  }
}

- (id)_accountForAutoSignInWithClientAccountType:(int64_t)a3
{
  v3 = [(VSUserAccountRegistry *)self _amsAccountStoreForAccountType:a3];
  v4 = [v3 ams_activeiTunesAccount];

  return v4;
}

- (id)_amsAccountStoreForAccountType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = &AMSAccountMediaTypeAppStoreBeta;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = &AMSAccountMediaTypeAppStoreSandbox;
LABEL_5:
    v4 = [ACAccountStore ams_sharedAccountStoreForMediaType:*v3];
    goto LABEL_7;
  }

  v4 = +[ACAccountStore ams_sharedAccountStore];
LABEL_7:

  return v4;
}

- (void)queryUserAccountsWithPredicate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VSUserAccountRegistry *)self createSaveContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000049D8;
  v10[3] = &unk_100014808;
  v11 = v6;
  v9 = v6;
  [(VSUserAccountRegistry *)self _queryUserAccountsWithPredicate:v7 context:v8 completion:v10];
}

- (void)insertUserAccount:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004B38;
  v7[3] = &unk_1000146F0;
  v8 = a4;
  v6 = v8;
  [(VSUserAccountRegistry *)self _insertUserAccount:a3 completion:v7];
}

- (void)fetchActiveSubscriptionsWithOptions:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VSUserAccountRegistry fetchActiveSubscriptionsWithOptions:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004D88;
  v8[3] = &unk_100014808;
  v9 = v5;
  v7 = v5;
  [(VSUserAccountRegistry *)self queryUserAccountsWithOptions:0 completion:v8];
}

- (void)registerSubscription:(id)a3
{
  v7 = a3;
  v4 = [NSValueTransformer valueTransformerForName:VSSubscriptionValueTransformerName];
  v5 = [v4 transformedValue:v7];

  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"The [subscriptionTransformer transformedValue:subscription] parameter must not be nil."];
  }

  v6 = [v4 transformedValue:v7];
  [(VSUserAccountRegistry *)self updateUserAccount:v6 completion:0];
}

- (void)removeSubscriptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = VSSubscriptionValueTransformerName;
    v21 = NSInvalidArgumentException;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [NSValueTransformer valueTransformerForName:v9, v21];
        v13 = [v12 transformedValue:v11];

        if (!v13)
        {
          [NSException raise:v21 format:@"The [subscriptionTransformer transformedValue:subscription] parameter must not be nil."];
        }

        v14 = [v12 transformedValue:v11];
        [v5 addObject:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        [v20 setSignedOut:1];
        [(VSUserAccountRegistry *)self updateUserAccount:v20 completion:0];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }
}

- (BOOL)saveContext:(id)a3 withError:(id *)a4
{
  v5 = a3;
  if ([v5 hasChanges])
  {
    v6 = [v5 save:a4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)createSaveContext
{
  v2 = [(VSUserAccountRegistry *)self container];
  v3 = [v2 newBackgroundContext];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setAutomaticallyMergesChangesFromParent:1];

  return v3;
}

- (BOOL)shouldAllowUserAccountUpdate:(id)a3
{
  v3 = a3;
  v4 = +[VSDevice currentDevice];
  v5 = [v4 serialNumber];

  v6 = [v3 deviceIdentifier];

  if (!v6)
  {
    [v3 setDeviceIdentifier:v5];
  }

  v7 = [v3 deviceIdentifier];
  [v3 setFromCurrentDevice:{objc_msgSend(v7, "isEqual:", v5)}];

  v8 = [v3 deviceIdentifier];
  LOBYTE(v7) = v8 != 0;

  return v7;
}

- (id)_updateRequestForAccount:(id)a3
{
  v4 = a3;
  v5 = [(VSUserAccountRegistry *)self currentUpdateSessionIsForced];
  v6 = [v4 updateURL];

  if (v6 && ([v4 subscriptionBillingCycleEndDate], v7 = objc_claimAutoreleasedReturnValue(), +[NSDate now](NSDate, "now"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "vs_isAfter:", v8) | v5, v8, v7, (v9 & 1) != 0))
  {
    v10 = [[VSUserAccountUpdateRequest alloc] initWithUserAccount:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setUpdateRequestManagerWithRequests:(id)a3
{
  v4 = a3;
  v5 = [[VSUserAccountUpdateManager alloc] initWithUserAccountUpdateRequests:v4];

  [v5 setDelegate:self];
  [v5 updateUserAccounts];
  [(VSUserAccountRegistry *)self setUpdateManager:v5];
}

- (void)_forceRefreshAccount:(id)a3
{
  v4 = a3;
  v5 = [(VSUserAccountRegistry *)self privateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005AFC;
  v7[3] = &unk_100014678;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)_update
{
  v3 = [(VSUserAccountRegistry *)self privateQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005D30;
  v4[3] = &unk_100014880;
  v4[4] = self;
  [v3 addOperationWithBlock:v4];
}

- (void)resetTimer
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000060E4;
  v2[3] = &unk_100014920;
  v2[4] = self;
  [(VSUserAccountRegistry *)self _getMaxUpdateFrequencyNumberWithCompletionHandler:v2];
}

- (void)_getMaxUpdateFrequencyNumberWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[AMSBag vs_defaultBag];
  v5 = [v4 integerForKey:VSAMSBagKeyMaximumUserAccountUpdateFrequency];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000069B8;
  v7[3] = &unk_100014948;
  v8 = v3;
  v6 = v3;
  [v5 valueWithCompletion:v7];
}

- (void)_insertUserAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  if ([(VSUserAccountRegistry *)self shouldAllowUserAccountUpdate:v6])
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_100001590;
    v29[4] = sub_1000015A0;
    v30 = 0;
    v9 = [(VSUserAccountRegistry *)self createSaveContext];
    v10 = objc_alloc_init(VSWaitGroup);
    [v10 enter];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100006C88;
    v24[3] = &unk_100014998;
    v24[4] = self;
    v11 = v9;
    v25 = v11;
    v28 = v29;
    v12 = v10;
    v26 = v12;
    v13 = v6;
    v27 = v13;
    [(VSUserAccountRegistry *)self _persistentAccountsForUserAccount:v13 context:v11 completion:v24];
    [v12 wait];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100006F80;
    v17[3] = &unk_1000149C0;
    v23 = v29;
    v14 = v11;
    v18 = v14;
    v19 = self;
    v20 = v13;
    v21 = v8;
    v22 = v7;
    [v14 performBlock:v17];

    _Block_object_dispose(v29, 8);
  }

  else
  {
    v15 = VSErrorLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000B9D0();
    }

    v16 = VSPublicError();
    (*(v7 + 2))(v7, v16);
  }
}

- (void)_persistentAccountsForUserAccount:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 deviceIdentifier];
  v12 = [v10 sourceIdentifier];
  v13 = [v10 sourceType];

  v14 = [NSNumber numberWithInteger:v13];
  v15 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithDeviceIdentifier:v11 sourceIdentifier:v12 sourceType:v14];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000073C4;
  v18[3] = &unk_1000149E8;
  v19 = v8;
  v20 = v9;
  v16 = v9;
  v17 = v8;
  [(VSUserAccountRegistry *)self _queryPersistentUserAccountsWithPredicate:v15 context:v17 completion:v18];
}

- (void)_deduplicatePersistentUserAccounts:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] < 2)
  {
    v23 = [v8 firstObject];
    v10[2](v10, v23, 0);
  }

  else
  {
    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v8 count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found %lu duplicate persistent user accounts that match the user account to insert.", &buf, 0xCu);
    }

    v12 = [(VSUserAccountRegistry *)self _sortForUserAccountModifiedTimeASC:1];
    v38 = v12;
    v13 = [NSArray arrayWithObjects:&v38 count:1];
    v14 = [v8 sortedArrayUsingDescriptors:v13];

    v15 = [v14 mutableCopy];
    v16 = [v15 lastObject];
    v17 = v16 == 0;

    if (v17)
    {
      [NSException raise:NSInvalidArgumentException format:@"The [accountsToRemove lastObject] parameter must not be nil."];
    }

    v18 = [v15 lastObject];
    [v15 removeLastObject];
    v24 = v18;
    v25 = v14;
    v26 = v10;
    v27 = v8;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = sub_100001590;
    v36 = sub_1000015A0;
    v37 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v15;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v20)
    {
      v21 = *v29;
      do
      {
        v22 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(VSUserAccountRegistry *)self _deletePersistentUserAccount:v24 withContext:v25 completion:v26, v27, _NSConcreteStackBlock, 3221225472, sub_100007890, &unk_100014A10, *(*(&v28 + 1) + 8 * v22), &buf, v28];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v20);
    }

    v10 = v26;
    v8 = v27;
    v26[2](v26, v24, *(*(&buf + 1) + 40));
    _Block_object_dispose(&buf, 8);
  }
}

- (void)_deleteUserAccount:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 sourceIdentifier];
  v12 = [v10 deviceIdentifier];
  v13 = [v10 sourceType];

  v14 = [NSNumber numberWithInteger:v13];
  v15 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithDeviceIdentifier:v12 sourceIdentifier:v11 sourceType:v14];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007AC4;
  v18[3] = &unk_100014A38;
  v19 = v8;
  v20 = v9;
  v18[4] = self;
  v16 = v8;
  v17 = v9;
  [(VSUserAccountRegistry *)self _queryPersistentUserAccountsWithPredicate:v15 context:v16 completion:v18];
}

- (void)_deletePersistentUserAccount:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007CE0;
  v11[3] = &unk_100014A60;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = v12;
  [v9 performBlock:v11];
}

- (void)_queryUserAccountsWithPredicate:(id)a3 sorts:(id)a4 fetchLimit:(id)a5 context:(id)a6 completion:(id)a7
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007FA0;
  v14[3] = &unk_100014A38;
  v15 = a6;
  v16 = a7;
  v14[4] = self;
  v12 = v15;
  v13 = v16;
  [(VSUserAccountRegistry *)self _queryPersistentUserAccountsWithPredicate:a3 sorts:a4 fetchLimit:a5 context:v12 completion:v14];
}

- (void)_queryPersistentUserAccountsWithPredicate:(id)a3 sorts:(id)a4 fetchLimit:(id)a5 context:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100008260;
  v21[3] = &unk_100014AB0;
  v25 = v14;
  v26 = a7;
  v22 = v15;
  v23 = v12;
  v24 = v13;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v26;
  v20 = v15;
  [(VSUserAccountRegistry *)self _loadStoresAndMigrateIfRequiredWithCompletion:v21];
}

- (void)_populatePersistentUserAccount:(id)a3 withUserAccount:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[VSDevice currentDevice];
  v11 = [v10 deviceType];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000087D8;
  v14[3] = &unk_100014AD8;
  v15 = v7;
  v16 = v8;
  v17 = v11;
  v12 = v8;
  v13 = v7;
  [v9 performBlockAndWait:v14];
}

- (id)_userAccountForPersistentUserAccount:(id)a3 context:(id)a4
{
  v5 = a3;
  v40 = a4;
  v6 = [v5 sourceIdentifier];
  v7 = [v5 sourceType];
  v8 = +[VSDevice currentDevice];
  v9 = [v8 serialNumber];

  v10 = [v5 deviceIdentifier];
  v11 = [v10 isEqual:v9];
  v12 = [VSUserAccount alloc];
  v13 = [v5 accountType];
  v14 = [v5 updateURL];
  v15 = [v12 initWithAccountType:v13 updateURL:v14 sourceType:v7 sourceIdentifier:v6];

  [v15 setRequiresSystemTrust:{objc_msgSend(v5, "requiresSystemTrust")}];
  v16 = [v5 providerID];
  v17 = [v16 copy];
  [v15 setAccountProviderIdentifier:v17];

  v18 = [v5 accountIdentifier];
  [v15 setIdentifier:v18];

  [v15 setSignedOut:{objc_msgSend(v5, "signedOut")}];
  v19 = [v5 tierIdentifiers];
  [v15 setTierIdentifiers:v19];

  v20 = [v5 billingIdentifier];
  v21 = [v20 copy];
  [v15 setBillingIdentifier:v21];

  v22 = [v5 authenticationData];
  v23 = [v22 copy];
  [v15 setAuthenticationData:v23];

  [v15 setDeviceCategory:{+[VSUserAccount deviceCategoryFromDeviceType:](VSUserAccount, "deviceCategoryFromDeviceType:", objc_msgSend(v5, "deviceType"))}];
  [v15 setFromCurrentDevice:v11];
  [v15 setKeychainItemHash:{objc_msgSend(v5, "keychainItemHash")}];
  v24 = [v5 modified];
  [v15 setModified:v24];

  v25 = [v5 created];
  [v15 setCreated:v25];

  [v15 setIsDeveloperCreated:{objc_msgSend(v5, "developer")}];
  v26 = [v5 appleSubscription];
  [v15 setAppleSubscription:v26];

  v27 = [v5 deviceIdentifier];
  [v15 setDeviceIdentifier:v27];

  v28 = [v5 deviceName];

  if (v28 || !v11)
  {
    v29 = [v5 deviceName];
    [v15 setDeviceName:v29];
  }

  else
  {
    v29 = +[VSDevice currentDevice];
    v30 = [v29 name];
    [v15 setDeviceName:v30];
  }

  v31 = [v5 billingCycleEndDate];
  [v15 setSubscriptionBillingCycleEndDate:v31];

  v32 = [v15 accountProviderIdentifier];
  if (![v15 sourceType] && objc_msgSend(v32, "length"))
  {
    if (!v32)
    {
      [NSException raise:NSInvalidArgumentException format:@"The accountProviderIdentifierOrNil parameter must not be nil."];
    }

    v33 = v32;
    v34 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithDeviceIdentifier:0 sourceIdentifier:v33 sourceType:&off_100015008];
    v35 = objc_alloc_init(VSSemaphore);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100008EFC;
    v41[3] = &unk_100014BE0;
    v42 = v33;
    v43 = v15;
    v44 = v35;
    v36 = v35;
    v37 = v33;
    [(VSUserAccountRegistry *)self _queryPersistentUserAccountsWithPredicate:v34 context:v40 completion:v41];
    [v36 wait];
  }

  return v15;
}

- (id)_securityTaskForCurrentConnection
{
  v2 = +[NSXPCConnection currentConnection];

  if (!v2)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Attempted to get security task from non-XPC thread."];
  }

  return +[VSSecurityTask securityTaskForCurrentConnection];
}

- (BOOL)_isValidForDeleteQueryForCurrentTask
{
  v2 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v3 = [v2 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalUserAccountServiceDelete];

  return v3;
}

- (BOOL)_isValidForUpdateQueryForCurrentTask:(id)a3
{
  v4 = a3;
  v5 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  if ([v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalSubscriptionService])
  {
    goto LABEL_2;
  }

  if (([v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameUserAccountService] & 1) == 0 && (objc_msgSend(v5, "shouldAllowAccessForBooleanEntitlement:", VSEntitlementNameSmootSubscriptionService) & 1) == 0)
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000BDA4();
    }

    goto LABEL_27;
  }

  v7 = [v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameSubscriptionServiceReadWriteWebSources];
  v8 = [v4 sourceType];
  if (!v7)
  {
    if (v8 == 2)
    {
      v9 = VSErrorLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000BF40();
      }
    }

    else
    {
      v10 = [v5 signingIdentifier];
      v9 = v10;
      if (v10)
      {
        v9 = v10;
        v11 = [v4 sourceType];
        v12 = [v4 sourceIdentifier];
        v13 = [v12 isEqualToString:v9];

        if (v11)
        {
          v14 = VSErrorLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10000BDE0(v4);
          }
        }

        if ((v13 & 1) == 0)
        {
          v15 = VSErrorLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10000BE60(v4);
          }
        }

        v6 = (v11 == 0) & v13;

        goto LABEL_28;
      }

      v16 = VSErrorLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000BF04();
      }
    }

LABEL_27:
    v6 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if (v8 != 1)
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000BF7C(v4);
    }

    goto LABEL_27;
  }

LABEL_2:
  v6 = 1;
LABEL_29:

  return v6;
}

- (BOOL)_isValidForAutoSignInForCurrentTaskWithAccount:(id)a3
{
  v4 = a3;
  v5 = [(VSUserAccountRegistry *)self _isClientValidForAutoSignInForCurrentTask];
  LOBYTE(self) = [(VSUserAccountRegistry *)self _isAccountValidForAutoSignIn:v4];

  return v5 & self;
}

- (BOOL)_isClientValidForAutoSignInForCurrentTask
{
  v3 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  if (([v3 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameSmootSubscriptionService] & 1) == 0)
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000BFFC();
    }

    goto LABEL_8;
  }

  v4 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v5 = [v4 signingIdentifier];
  v6 = [v5 length];

  if (!v6)
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000C038();
    }

LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (BOOL)_isAccountValidForAutoSignIn:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ![v3 ams_isLocalAccount])
  {
    v6 = 1;
  }

  else
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000C074();
    }

    v6 = 0;
  }

  return v6;
}

- (id)prepareUserAccountsToVend:(id)a3 withSecurityTask:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    v12 = VSEntitlementNameInternalUserAccountService;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([v14 isFromCurrentDevice] & 1) == 0)
        {
          [v14 setAuthenticationData:0];
        }

        if (([v6 shouldAllowAccessForBooleanEntitlement:v12] & 1) == 0)
        {
          [v14 setDeviceName:0];
        }

        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_predicateForUserAccountFromCurrentDevice
{
  v3 = +[VSDevice currentDevice];
  v4 = [v3 serialNumber];
  v5 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromDeviceID:v4];

  return v5;
}

- (id)_predicateForUserAccountWithDeviceIdentifier:(id)a3 sourceIdentifier:(id)a4 sourceType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableArray);
  if (v9)
  {
    v12 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromSourceID:v9];
    [v11 addObject:v12];
  }

  if (v10)
  {
    v13 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithSourceType:v10];
    [v11 addObject:v13];
  }

  if (v8)
  {
    v14 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromDeviceID:v8];
    [v11 addObject:v14];
  }

  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

  return v15;
}

- (id)_predicateForQueryRequestWithOptions:(int64_t)a3
{
  v3 = a3;
  v5 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v6 = [v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalUserAccountService];
  if ([v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameSubscriptionServiceFetchFromAllSources])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalSubscriptionService];
  }

  if ([v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameUserAccountService] & 1) != 0 || ((v7 | objc_msgSend(v5, "shouldAllowAccessForBooleanEntitlement:", VSEntitlementNameSmootSubscriptionService)))
  {
    v8 = [(VSUserAccountRegistry *)self _predicateForFetchingZeroResults];
    v31 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithSourceType:&off_100015008];

    v9 = [(VSUserAccountRegistry *)self _predicateForFetchingZeroResults];
    v30 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithSourceType:&off_100015020];

    LODWORD(v9) = [v5 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameSubscriptionServiceReadWriteWebSources];
    v10 = [(VSUserAccountRegistry *)self _predicateForFetchingZeroResults];
    if (v9)
    {
      v11 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithSourceType:&off_100015038];

      v10 = v11;
    }

    v12 = [v5 signingIdentifier];
    v13 = (v12 == 0) | v7;
    v14 = [(VSUserAccountRegistry *)self _predicateForFetchingAllResults];
    if ((v13 & 1) == 0)
    {
      v15 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromSourceID:v12];

      v14 = v15;
    }

    v16 = [(VSUserAccountRegistry *)self _predicateForFetchingAllResults];
    if ((v3 & 1) == 0)
    {
      v17 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromCurrentDevice];

      v16 = v17;
    }

    v18 = [(VSUserAccountRegistry *)self _predicateForFetchingAllResults];
    v29 = v12;
    if ((v6 & 1) == 0)
    {
      v19 = [(VSUserAccountRegistry *)self _predicateForIsSignedOut:0];

      v18 = v19;
    }

    v36[0] = v14;
    v36[1] = v16;
    v36[2] = v18;
    v20 = [NSArray arrayWithObjects:v36 count:3];
    v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];

    v35[0] = v31;
    v35[1] = v30;
    v35[2] = v10;
    v22 = [NSArray arrayWithObjects:v35 count:3];
    v23 = [NSCompoundPredicate orPredicateWithSubpredicates:v22];

    v34[0] = v21;
    v34[1] = v23;
    v24 = [NSArray arrayWithObjects:v34 count:2];
    v25 = [NSCompoundPredicate andPredicateWithSubpredicates:v24];

    v26 = VSDefaultLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "VSUserAccountRegistry Using Predicate: %@", buf, 0xCu);
    }
  }

  else
  {
    v27 = VSDefaultLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "VSUserAccountRegistry - No Internal or Minimum Entitlement, Returning Predicate NO", buf, 2u);
    }

    v25 = [(VSUserAccountRegistry *)self _predicateForFetchingZeroResults];
  }

  return v25;
}

- (void)updateManager:(id)a3 updateRequestDidFinish:(id)a4
{
  v5 = a4;
  v6 = [v5 userAccount];
  v7 = [v5 updatedUserAccount];
  if ([(VSUserAccountRegistry *)self shouldAllowUserAccountUpdate:v7])
  {
    v8 = [v5 updateError];

    if (v8)
    {
      v9 = VSErrorLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000C0B0(v5);
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_8;
      }

      v10 = [v7 sourceType];
      if (v10 == [v6 sourceType] && (objc_msgSend(v7, "sourceIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "sourceIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, v11, v13))
      {
        v14 = VSDefaultLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v5;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updated user account allowed for insert: %@", buf, 0xCu);
        }

        v15 = [v6 updateURL];
        v16 = [v15 absoluteString];
        [v7 setModifierIdentifier:v16];

        v17 = VSDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v7 modifierIdentifier];
          *buf = 138412290;
          v22 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Modifier identifier: %@", buf, 0xCu);
        }

        [v7 setModifierType:VSMetricAccountUpdateValueModifierTypeJS];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000A528;
        v19[3] = &unk_1000144E8;
        v20 = v7;
        [(VSUserAccountRegistry *)self _insertUserAccount:v20 completion:v19];
        v9 = v20;
      }

      else
      {
        v9 = VSErrorLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10000C158();
        }
      }
    }
  }

  else
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000B9D0();
    }
  }

LABEL_8:
}

- (void)updateManagerDidFinish:(id)a3
{
  v4 = a3;
  [(VSUserAccountRegistry *)self setUpdateManager:0];
  [(VSUserAccountRegistry *)self setCurrentUpdateSessionIsForced:0];
  [(VSUserAccountRegistry *)self resetTimer];
  v5 = [(VSUserAccountRegistry *)self delegate];
  [v5 userAccountRegistry:self didFinishUpdatingUserAccountsWithManager:v4];
}

- (VSUserAccountRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end