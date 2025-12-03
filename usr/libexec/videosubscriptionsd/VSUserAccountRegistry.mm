@interface VSUserAccountRegistry
- (BOOL)_isAccountValidForAutoSignIn:(id)in;
- (BOOL)_isClientValidForAutoSignInForCurrentTask;
- (BOOL)_isValidForAutoSignInForCurrentTaskWithAccount:(id)account;
- (BOOL)_isValidForDeleteQueryForCurrentTask;
- (BOOL)_isValidForUpdateQueryForCurrentTask:(id)task;
- (BOOL)saveContext:(id)context withError:(id *)error;
- (BOOL)shouldAllowUserAccountUpdate:(id)update;
- (VSUserAccountRegistry)initWithDelegate:(id)delegate;
- (VSUserAccountRegistryDelegate)delegate;
- (id)_accountForAutoSignInWithClientAccountType:(int64_t)type;
- (id)_amsAccountStoreForAccountType:(int64_t)type;
- (id)_predicateForQueryRequestWithOptions:(int64_t)options;
- (id)_predicateForUserAccountFromCurrentDevice;
- (id)_predicateForUserAccountWithDeviceIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier sourceType:(id)type;
- (id)_securityTaskForCurrentConnection;
- (id)_updateRequestForAccount:(id)account;
- (id)_userAccountForPersistentUserAccount:(id)account context:(id)context;
- (id)createSaveContext;
- (id)prepareUserAccountsToVend:(id)vend withSecurityTask:(id)task;
- (void)_deduplicatePersistentUserAccounts:(id)accounts context:(id)context completion:(id)completion;
- (void)_deletePersistentUserAccount:(id)account withContext:(id)context completion:(id)completion;
- (void)_deleteUserAccount:(id)account context:(id)context completion:(id)completion;
- (void)_forceRefreshAccount:(id)account;
- (void)_getMaxUpdateFrequencyNumberWithCompletionHandler:(id)handler;
- (void)_insertUserAccount:(id)account completion:(id)completion;
- (void)_loadStoresAndMigrateIfRequiredWithCompletion:(id)completion;
- (void)_persistentAccountsForUserAccount:(id)account context:(id)context completion:(id)completion;
- (void)_populatePersistentUserAccount:(id)account withUserAccount:(id)userAccount context:(id)context;
- (void)_queryAutoSignInTokenWithAccount:(id)account bundleIdentifier:(id)identifier completion:(id)completion;
- (void)_queryPersistentUserAccountsWithPredicate:(id)predicate sorts:(id)sorts fetchLimit:(id)limit context:(id)context completion:(id)completion;
- (void)_queryUserAccountsWithPredicate:(id)predicate sorts:(id)sorts fetchLimit:(id)limit context:(id)context completion:(id)completion;
- (void)_setUpdateRequestManagerWithRequests:(id)requests;
- (void)_subscriptionsForMigrationWithCompletion:(id)completion;
- (void)_update;
- (void)deleteAutoSignInTokenWithClientAccountType:(int64_t)type completion:(id)completion;
- (void)deleteUserAccount:(id)account completion:(id)completion;
- (void)fetchActiveSubscriptionsWithOptions:(id)options completionHandler:(id)handler;
- (void)forceRefreshUserAccount:(id)account withCompletion:(id)completion;
- (void)forceUpdateUserAccountsWithCompletion:(id)completion;
- (void)insertUserAccount:(id)account completion:(id)completion;
- (void)queryAutoSignInTokenWithClientAccountType:(int64_t)type completion:(id)completion;
- (void)queryUserAccountsWithOptions:(int64_t)options completion:(id)completion;
- (void)queryUserAccountsWithOptions:(int64_t)options sourceIdentifier:(id)identifier sourceType:(id)type deviceIdentifier:(id)deviceIdentifier completion:(id)completion;
- (void)queryUserAccountsWithPredicate:(id)predicate completion:(id)completion;
- (void)registerSubscription:(id)subscription;
- (void)removeSubscriptions:(id)subscriptions;
- (void)requestAutoSignInAuthorizationWithClientAccountType:(int64_t)type completion:(id)completion;
- (void)resetTimer;
- (void)updateAutoSignInToken:(id)token clientAccountType:(int64_t)type completion:(id)completion;
- (void)updateManager:(id)manager updateRequestDidFinish:(id)finish;
- (void)updateManagerDidFinish:(id)finish;
- (void)updateUserAccount:(id)account completion:(id)completion;
@end

@implementation VSUserAccountRegistry

- (VSUserAccountRegistry)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = VSUserAccountRegistry;
  v5 = [(VSUserAccountRegistry *)&v28 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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

- (void)_loadStoresAndMigrateIfRequiredWithCompletion:(id)completion
{
  completionCopy = completion;
  privateQueue = [(VSUserAccountRegistry *)self privateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000011B8;
  v7[3] = &unk_1000145B0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [privateQueue addOperationWithBlock:v7];
}

- (void)_subscriptionsForMigrationWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(VSUserAccountRegistry *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
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
    [delegate userAccountRegistry:self willPerformMigrationIfRequiredWithBlock:v13];
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

    completionCopy[2](completionCopy, v9 & 1, v10);

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

    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)queryUserAccountsWithOptions:(int64_t)options completion:(id)completion
{
  completionCopy = completion;
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v8 = [(VSUserAccountRegistry *)self _predicateForQueryRequestWithOptions:options];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002034;
  v11[3] = &unk_100014628;
  v11[4] = self;
  v12 = _securityTaskForCurrentConnection;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = _securityTaskForCurrentConnection;
  [(VSUserAccountRegistry *)self queryUserAccountsWithPredicate:v8 completion:v11];
}

- (void)queryUserAccountsWithOptions:(int64_t)options sourceIdentifier:(id)identifier sourceType:(id)type deviceIdentifier:(id)deviceIdentifier completion:(id)completion
{
  completionCopy = completion;
  deviceIdentifierCopy = deviceIdentifier;
  typeCopy = type;
  identifierCopy = identifier;
  v16 = [(VSUserAccountRegistry *)self _predicateForQueryRequestWithOptions:options];
  v17 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithDeviceIdentifier:deviceIdentifierCopy sourceIdentifier:identifierCopy sourceType:typeCopy];

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
  v24 = completionCopy;
  v20 = completionCopy;
  v21 = v23;
  [(VSUserAccountRegistry *)self queryUserAccountsWithPredicate:v19 completion:v22];
}

- (void)updateUserAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  if ([(VSUserAccountRegistry *)self shouldAllowUserAccountUpdate:accountCopy])
  {
    _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
    privateQueue = [(VSUserAccountRegistry *)self privateQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000028C0;
    v37[3] = &unk_100014678;
    v10 = &v38;
    v11 = _securityTaskForCurrentConnection;
    v38 = v11;
    v12 = v39;
    v13 = accountCopy;
    v39[0] = v13;
    [privateQueue addOperationWithBlock:v37];

    if ([(VSUserAccountRegistry *)self _isValidForUpdateQueryForCurrentTask:v13])
    {
      v14 = VSDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "user account update permitted: %@", buf, 0xCu);
      }

      accountProviderIdentifier = [v13 accountProviderIdentifier];
      if ([accountProviderIdentifier length])
      {
        v16 = VSDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "user account indicates an account provider identifier.", buf, 2u);
        }

        privacyFacade = [(VSUserAccountRegistry *)self privacyFacade];
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

        v24 = [privacyFacade isAccessGrantedForAuditToken:{buf, &v38}];

        if (v24)
        {
          v25 = 1;
        }

        else
        {
          _securityTaskForCurrentConnection2 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
          v25 = [_securityTaskForCurrentConnection2 shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalSubscriptionService];
        }

        v27 = +[VSAccountStore sharedAccountStore];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100002A08;
        v31[3] = &unk_100014718;
        accountProviderIdentifier = accountProviderIdentifier;
        v32 = accountProviderIdentifier;
        v36 = v25;
        v33 = v13;
        selfCopy = self;
        v35 = completionCopy;
        [v27 fetchAccountsWithCompletionHandler:v31];

        v10 = v28;
      }

      else
      {
        [(VSUserAccountRegistry *)self insertUserAccount:v13 completion:completionCopy];
      }
    }

    else
    {
      accountProviderIdentifier = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
      signingIdentifier = [accountProviderIdentifier signingIdentifier];
      v22 = VSErrorLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_10000B378();
      }

      if (completionCopy)
      {
        v29 = VSPublicError();
        v30 = completionCopy;
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

  if (completionCopy)
  {
    VSPublicError();
    v39[1] = _NSConcreteStackBlock;
    v39[2] = 3221225472;
    v39[3] = sub_1000028AC;
    v39[4] = &unk_100014650;
    v10 = &v41;
    v40 = v12 = &v40;
    v41 = completionCopy;
    v11 = v40;
    VSPerformCompletionHandler();
LABEL_26:
  }
}

- (void)deleteUserAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  privateQueue = [(VSUserAccountRegistry *)self privateQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003110;
  v17[3] = &unk_100014678;
  v10 = _securityTaskForCurrentConnection;
  v18 = v10;
  v11 = accountCopy;
  v19 = v11;
  [privateQueue addOperationWithBlock:v17];

  if ([(VSUserAccountRegistry *)self _isValidForDeleteQueryForCurrentTask])
  {
    createSaveContext = [(VSUserAccountRegistry *)self createSaveContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003284;
    v14[3] = &unk_1000146F0;
    v13 = v15;
    v15[0] = completionCopy;
    [(VSUserAccountRegistry *)self _deleteUserAccount:v11 context:createSaveContext completion:v14];
  }

  else
  {
    v15[1] = _NSConcreteStackBlock;
    v15[2] = 3221225472;
    v15[3] = sub_10000321C;
    v15[4] = &unk_1000146A0;
    v13 = &v16;
    v16 = completionCopy;
    VSPerformCompletionHandler();
  }
}

- (void)forceUpdateUserAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v6 = [_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalUserAccountServiceForceUpdate];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Forcefully updating user accounts", buf, 2u);
    }

    objc_initWeak(buf, self);
    privateQueue = [(VSUserAccountRegistry *)self privateQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000035A0;
    v11[3] = &unk_100014740;
    objc_copyWeak(&v13, buf);
    v12 = completionCopy;
    [privateQueue addOperationWithBlock:v11];

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

    v10 = completionCopy;
    VSPerformCompletionHandler();
  }
}

- (void)forceRefreshUserAccount:(id)account withCompletion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  if ([(VSUserAccountRegistry *)self _isValidForUpdateQueryForCurrentTask:accountCopy])
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Forcefully updating user account", buf, 2u);
    }

    objc_initWeak(buf, self);
    privateQueue = [(VSUserAccountRegistry *)self privateQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003868;
    v12[3] = &unk_100014768;
    objc_copyWeak(&v15, buf);
    v13 = accountCopy;
    v14 = completionCopy;
    [privateQueue addOperationWithBlock:v12];

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

    v11 = completionCopy;
    VSPerformCompletionHandler();
  }
}

- (void)queryAutoSignInTokenWithClientAccountType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  if ([(VSUserAccountRegistry *)self _isClientValidForAutoSignInForCurrentTask])
  {
    _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
    signingIdentifier = [_securityTaskForCurrentConnection signingIdentifier];

    v9 = [(VSUserAccountRegistry *)self _accountForAutoSignInWithClientAccountType:type];
    [(VSUserAccountRegistry *)self _queryAutoSignInTokenWithAccount:v9 bundleIdentifier:signingIdentifier completion:completionCopy];
  }

  else
  {
    v10 = completionCopy;
    VSPerformCompletionHandler();
  }
}

- (void)requestAutoSignInAuthorizationWithClientAccountType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = [(VSUserAccountRegistry *)self _accountForAutoSignInWithClientAccountType:type];
  if ([(VSUserAccountRegistry *)self _isValidForAutoSignInForCurrentTaskWithAccount:v7])
  {
    _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
    signingIdentifier = [_securityTaskForCurrentConnection signingIdentifier];

    v10 = [[AMSDeveloperSilentAuthTokenConsentTask alloc] initWithBundleId:signingIdentifier account:v7 bag:0];
    performPresentation = [v10 performPresentation];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003C50;
    v13[3] = &unk_1000147B8;
    v14 = signingIdentifier;
    v15 = completionCopy;
    v12 = completionCopy;
    completionCopy = signingIdentifier;
    [performPresentation resultWithCompletion:v13];
  }

  else
  {
    v10 = completionCopy;
    VSPerformCompletionHandler();
  }
}

- (void)updateAutoSignInToken:(id)token clientAccountType:(int64_t)type completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  signingIdentifier = [_securityTaskForCurrentConnection signingIdentifier];

  v12 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v13 = [tokenCopy stringByTrimmingCharactersInSet:v12];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(VSUserAccountRegistry *)self _accountForAutoSignInWithClientAccountType:type];
    if ([(VSUserAccountRegistry *)self _isValidForAutoSignInForCurrentTaskWithAccount:v15])
    {
      v16 = [[AMSDeveloperSilentAuthTokenUpdateTask alloc] initWithBundleId:signingIdentifier account:v15 bag:0];
      v17 = [v16 performWithToken:tokenCopy];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100004100;
      v21[3] = &unk_1000147E0;
      v22 = signingIdentifier;
      v23 = completionCopy;
      [v17 resultWithCompletion:v21];
    }

    else
    {
      v19 = VSErrorLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10000B5E4();
      }

      v20 = completionCopy;
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
    v28 = completionCopy;
    VSPerformCompletionHandler();
    v15 = v28;
  }
}

- (void)deleteAutoSignInTokenWithClientAccountType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = [(VSUserAccountRegistry *)self _accountForAutoSignInWithClientAccountType:type];
  if ([(VSUserAccountRegistry *)self _isValidForAutoSignInForCurrentTaskWithAccount:v7])
  {
    _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
    signingIdentifier = [_securityTaskForCurrentConnection signingIdentifier];

    v10 = [[AMSDeveloperSilentAuthTokenUpdateTask alloc] initWithBundleId:signingIdentifier account:v7 bag:0];
    v11 = [v10 performWithToken:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000443C;
    v13[3] = &unk_1000147E0;
    v14 = signingIdentifier;
    v15 = completionCopy;
    v12 = completionCopy;
    completionCopy = signingIdentifier;
    [v11 resultWithCompletion:v13];
  }

  else
  {
    v10 = completionCopy;
    VSPerformCompletionHandler();
  }
}

- (void)_queryAutoSignInTokenWithAccount:(id)account bundleIdentifier:(id)identifier completion:(id)completion
{
  accountCopy = account;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(VSUserAccountRegistry *)self _isAccountValidForAutoSignIn:accountCopy])
  {
    v11 = [[AMSDeveloperSilentAuthTokenFetchTask alloc] initWithBundleId:identifierCopy account:accountCopy bag:0];
    perform = [v11 perform];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100004724;
    v13[3] = &unk_1000147B8;
    v14 = identifierCopy;
    v15 = completionCopy;
    [perform resultWithCompletion:v13];
  }

  else
  {
    v11 = VSPublicError();
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (id)_accountForAutoSignInWithClientAccountType:(int64_t)type
{
  v3 = [(VSUserAccountRegistry *)self _amsAccountStoreForAccountType:type];
  ams_activeiTunesAccount = [v3 ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

- (id)_amsAccountStoreForAccountType:(int64_t)type
{
  if (type == 2)
  {
    v3 = &AMSAccountMediaTypeAppStoreBeta;
    goto LABEL_5;
  }

  if (type == 1)
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

- (void)queryUserAccountsWithPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  predicateCopy = predicate;
  createSaveContext = [(VSUserAccountRegistry *)self createSaveContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000049D8;
  v10[3] = &unk_100014808;
  v11 = completionCopy;
  v9 = completionCopy;
  [(VSUserAccountRegistry *)self _queryUserAccountsWithPredicate:predicateCopy context:createSaveContext completion:v10];
}

- (void)insertUserAccount:(id)account completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004B38;
  v7[3] = &unk_1000146F0;
  completionCopy = completion;
  v6 = completionCopy;
  [(VSUserAccountRegistry *)self _insertUserAccount:account completion:v7];
}

- (void)fetchActiveSubscriptionsWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
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
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(VSUserAccountRegistry *)self queryUserAccountsWithOptions:0 completion:v8];
}

- (void)registerSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v4 = [NSValueTransformer valueTransformerForName:VSSubscriptionValueTransformerName];
  v5 = [v4 transformedValue:subscriptionCopy];

  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"The [subscriptionTransformer transformedValue:subscription] parameter must not be nil."];
  }

  v6 = [v4 transformedValue:subscriptionCopy];
  [(VSUserAccountRegistry *)self updateUserAccount:v6 completion:0];
}

- (void)removeSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  v5 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = subscriptionsCopy;
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

- (BOOL)saveContext:(id)context withError:(id *)error
{
  contextCopy = context;
  if ([contextCopy hasChanges])
  {
    v6 = [contextCopy save:error];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)createSaveContext
{
  container = [(VSUserAccountRegistry *)self container];
  newBackgroundContext = [container newBackgroundContext];

  [newBackgroundContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [newBackgroundContext setAutomaticallyMergesChangesFromParent:1];

  return newBackgroundContext;
}

- (BOOL)shouldAllowUserAccountUpdate:(id)update
{
  updateCopy = update;
  v4 = +[VSDevice currentDevice];
  serialNumber = [v4 serialNumber];

  deviceIdentifier = [updateCopy deviceIdentifier];

  if (!deviceIdentifier)
  {
    [updateCopy setDeviceIdentifier:serialNumber];
  }

  deviceIdentifier2 = [updateCopy deviceIdentifier];
  [updateCopy setFromCurrentDevice:{objc_msgSend(deviceIdentifier2, "isEqual:", serialNumber)}];

  deviceIdentifier3 = [updateCopy deviceIdentifier];
  LOBYTE(deviceIdentifier2) = deviceIdentifier3 != 0;

  return deviceIdentifier2;
}

- (id)_updateRequestForAccount:(id)account
{
  accountCopy = account;
  currentUpdateSessionIsForced = [(VSUserAccountRegistry *)self currentUpdateSessionIsForced];
  updateURL = [accountCopy updateURL];

  if (updateURL && ([accountCopy subscriptionBillingCycleEndDate], v7 = objc_claimAutoreleasedReturnValue(), +[NSDate now](NSDate, "now"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "vs_isAfter:", v8) | currentUpdateSessionIsForced, v8, v7, (v9 & 1) != 0))
  {
    v10 = [[VSUserAccountUpdateRequest alloc] initWithUserAccount:accountCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setUpdateRequestManagerWithRequests:(id)requests
{
  requestsCopy = requests;
  v5 = [[VSUserAccountUpdateManager alloc] initWithUserAccountUpdateRequests:requestsCopy];

  [v5 setDelegate:self];
  [v5 updateUserAccounts];
  [(VSUserAccountRegistry *)self setUpdateManager:v5];
}

- (void)_forceRefreshAccount:(id)account
{
  accountCopy = account;
  privateQueue = [(VSUserAccountRegistry *)self privateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005AFC;
  v7[3] = &unk_100014678;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  [privateQueue addOperationWithBlock:v7];
}

- (void)_update
{
  privateQueue = [(VSUserAccountRegistry *)self privateQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005D30;
  v4[3] = &unk_100014880;
  v4[4] = self;
  [privateQueue addOperationWithBlock:v4];
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

- (void)_getMaxUpdateFrequencyNumberWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[AMSBag vs_defaultBag];
  v5 = [v4 integerForKey:VSAMSBagKeyMaximumUserAccountUpdateFrequency];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000069B8;
  v7[3] = &unk_100014948;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 valueWithCompletion:v7];
}

- (void)_insertUserAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  if ([(VSUserAccountRegistry *)self shouldAllowUserAccountUpdate:accountCopy])
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_100001590;
    v29[4] = sub_1000015A0;
    v30 = 0;
    createSaveContext = [(VSUserAccountRegistry *)self createSaveContext];
    v10 = objc_alloc_init(VSWaitGroup);
    [v10 enter];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100006C88;
    v24[3] = &unk_100014998;
    v24[4] = self;
    v11 = createSaveContext;
    v25 = v11;
    v28 = v29;
    v12 = v10;
    v26 = v12;
    v13 = accountCopy;
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
    selfCopy = self;
    v20 = v13;
    v21 = _securityTaskForCurrentConnection;
    v22 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, v16);
  }
}

- (void)_persistentAccountsForUserAccount:(id)account context:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  accountCopy = account;
  deviceIdentifier = [accountCopy deviceIdentifier];
  sourceIdentifier = [accountCopy sourceIdentifier];
  sourceType = [accountCopy sourceType];

  v14 = [NSNumber numberWithInteger:sourceType];
  v15 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithDeviceIdentifier:deviceIdentifier sourceIdentifier:sourceIdentifier sourceType:v14];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000073C4;
  v18[3] = &unk_1000149E8;
  v19 = contextCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = contextCopy;
  [(VSUserAccountRegistry *)self _queryPersistentUserAccountsWithPredicate:v15 context:v17 completion:v18];
}

- (void)_deduplicatePersistentUserAccounts:(id)accounts context:(id)context completion:(id)completion
{
  accountsCopy = accounts;
  contextCopy = context;
  completionCopy = completion;
  if ([accountsCopy count] < 2)
  {
    firstObject = [accountsCopy firstObject];
    completionCopy[2](completionCopy, firstObject, 0);
  }

  else
  {
    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [accountsCopy count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found %lu duplicate persistent user accounts that match the user account to insert.", &buf, 0xCu);
    }

    v12 = [(VSUserAccountRegistry *)self _sortForUserAccountModifiedTimeASC:1];
    v38 = v12;
    v13 = [NSArray arrayWithObjects:&v38 count:1];
    v14 = [accountsCopy sortedArrayUsingDescriptors:v13];

    v15 = [v14 mutableCopy];
    lastObject = [v15 lastObject];
    v17 = lastObject == 0;

    if (v17)
    {
      [NSException raise:NSInvalidArgumentException format:@"The [accountsToRemove lastObject] parameter must not be nil."];
    }

    lastObject2 = [v15 lastObject];
    [v15 removeLastObject];
    v24 = lastObject2;
    v25 = v14;
    v26 = completionCopy;
    v27 = accountsCopy;
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

    completionCopy = v26;
    accountsCopy = v27;
    v26[2](v26, v24, *(*(&buf + 1) + 40));
    _Block_object_dispose(&buf, 8);
  }
}

- (void)_deleteUserAccount:(id)account context:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  accountCopy = account;
  sourceIdentifier = [accountCopy sourceIdentifier];
  deviceIdentifier = [accountCopy deviceIdentifier];
  sourceType = [accountCopy sourceType];

  v14 = [NSNumber numberWithInteger:sourceType];
  v15 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithDeviceIdentifier:deviceIdentifier sourceIdentifier:sourceIdentifier sourceType:v14];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007AC4;
  v18[3] = &unk_100014A38;
  v19 = contextCopy;
  v20 = completionCopy;
  v18[4] = self;
  v16 = contextCopy;
  v17 = completionCopy;
  [(VSUserAccountRegistry *)self _queryPersistentUserAccountsWithPredicate:v15 context:v16 completion:v18];
}

- (void)_deletePersistentUserAccount:(id)account withContext:(id)context completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007CE0;
  v11[3] = &unk_100014A60;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = contextCopy;
  v10 = accountCopy;
  [v9 performBlock:v11];
}

- (void)_queryUserAccountsWithPredicate:(id)predicate sorts:(id)sorts fetchLimit:(id)limit context:(id)context completion:(id)completion
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007FA0;
  v14[3] = &unk_100014A38;
  contextCopy = context;
  completionCopy = completion;
  v14[4] = self;
  v12 = contextCopy;
  v13 = completionCopy;
  [(VSUserAccountRegistry *)self _queryPersistentUserAccountsWithPredicate:predicate sorts:sorts fetchLimit:limit context:v12 completion:v14];
}

- (void)_queryPersistentUserAccountsWithPredicate:(id)predicate sorts:(id)sorts fetchLimit:(id)limit context:(id)context completion:(id)completion
{
  predicateCopy = predicate;
  sortsCopy = sorts;
  limitCopy = limit;
  contextCopy = context;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100008260;
  v21[3] = &unk_100014AB0;
  v25 = limitCopy;
  completionCopy = completion;
  v22 = contextCopy;
  v23 = predicateCopy;
  v24 = sortsCopy;
  v16 = limitCopy;
  v17 = sortsCopy;
  v18 = predicateCopy;
  v19 = completionCopy;
  v20 = contextCopy;
  [(VSUserAccountRegistry *)self _loadStoresAndMigrateIfRequiredWithCompletion:v21];
}

- (void)_populatePersistentUserAccount:(id)account withUserAccount:(id)userAccount context:(id)context
{
  accountCopy = account;
  userAccountCopy = userAccount;
  contextCopy = context;
  v10 = +[VSDevice currentDevice];
  deviceType = [v10 deviceType];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000087D8;
  v14[3] = &unk_100014AD8;
  v15 = accountCopy;
  v16 = userAccountCopy;
  v17 = deviceType;
  v12 = userAccountCopy;
  v13 = accountCopy;
  [contextCopy performBlockAndWait:v14];
}

- (id)_userAccountForPersistentUserAccount:(id)account context:(id)context
{
  accountCopy = account;
  contextCopy = context;
  sourceIdentifier = [accountCopy sourceIdentifier];
  sourceType = [accountCopy sourceType];
  v8 = +[VSDevice currentDevice];
  serialNumber = [v8 serialNumber];

  deviceIdentifier = [accountCopy deviceIdentifier];
  v11 = [deviceIdentifier isEqual:serialNumber];
  v12 = [VSUserAccount alloc];
  accountType = [accountCopy accountType];
  updateURL = [accountCopy updateURL];
  v15 = [v12 initWithAccountType:accountType updateURL:updateURL sourceType:sourceType sourceIdentifier:sourceIdentifier];

  [v15 setRequiresSystemTrust:{objc_msgSend(accountCopy, "requiresSystemTrust")}];
  providerID = [accountCopy providerID];
  v17 = [providerID copy];
  [v15 setAccountProviderIdentifier:v17];

  accountIdentifier = [accountCopy accountIdentifier];
  [v15 setIdentifier:accountIdentifier];

  [v15 setSignedOut:{objc_msgSend(accountCopy, "signedOut")}];
  tierIdentifiers = [accountCopy tierIdentifiers];
  [v15 setTierIdentifiers:tierIdentifiers];

  billingIdentifier = [accountCopy billingIdentifier];
  v21 = [billingIdentifier copy];
  [v15 setBillingIdentifier:v21];

  authenticationData = [accountCopy authenticationData];
  v23 = [authenticationData copy];
  [v15 setAuthenticationData:v23];

  [v15 setDeviceCategory:{+[VSUserAccount deviceCategoryFromDeviceType:](VSUserAccount, "deviceCategoryFromDeviceType:", objc_msgSend(accountCopy, "deviceType"))}];
  [v15 setFromCurrentDevice:v11];
  [v15 setKeychainItemHash:{objc_msgSend(accountCopy, "keychainItemHash")}];
  modified = [accountCopy modified];
  [v15 setModified:modified];

  created = [accountCopy created];
  [v15 setCreated:created];

  [v15 setIsDeveloperCreated:{objc_msgSend(accountCopy, "developer")}];
  appleSubscription = [accountCopy appleSubscription];
  [v15 setAppleSubscription:appleSubscription];

  deviceIdentifier2 = [accountCopy deviceIdentifier];
  [v15 setDeviceIdentifier:deviceIdentifier2];

  deviceName = [accountCopy deviceName];

  if (deviceName || !v11)
  {
    deviceName2 = [accountCopy deviceName];
    [v15 setDeviceName:deviceName2];
  }

  else
  {
    deviceName2 = +[VSDevice currentDevice];
    name = [deviceName2 name];
    [v15 setDeviceName:name];
  }

  billingCycleEndDate = [accountCopy billingCycleEndDate];
  [v15 setSubscriptionBillingCycleEndDate:billingCycleEndDate];

  accountProviderIdentifier = [v15 accountProviderIdentifier];
  if (![v15 sourceType] && objc_msgSend(accountProviderIdentifier, "length"))
  {
    if (!accountProviderIdentifier)
    {
      [NSException raise:NSInvalidArgumentException format:@"The accountProviderIdentifierOrNil parameter must not be nil."];
    }

    v33 = accountProviderIdentifier;
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
    [(VSUserAccountRegistry *)self _queryPersistentUserAccountsWithPredicate:v34 context:contextCopy completion:v41];
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
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v3 = [_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalUserAccountServiceDelete];

  return v3;
}

- (BOOL)_isValidForUpdateQueryForCurrentTask:(id)task
{
  taskCopy = task;
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  if ([_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalSubscriptionService])
  {
    goto LABEL_2;
  }

  if (([_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameUserAccountService] & 1) == 0 && (objc_msgSend(_securityTaskForCurrentConnection, "shouldAllowAccessForBooleanEntitlement:", VSEntitlementNameSmootSubscriptionService) & 1) == 0)
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000BDA4();
    }

    goto LABEL_27;
  }

  v7 = [_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameSubscriptionServiceReadWriteWebSources];
  sourceType = [taskCopy sourceType];
  if (!v7)
  {
    if (sourceType == 2)
    {
      v9 = VSErrorLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000BF40();
      }
    }

    else
    {
      signingIdentifier = [_securityTaskForCurrentConnection signingIdentifier];
      v9 = signingIdentifier;
      if (signingIdentifier)
      {
        v9 = signingIdentifier;
        sourceType2 = [taskCopy sourceType];
        sourceIdentifier = [taskCopy sourceIdentifier];
        v13 = [sourceIdentifier isEqualToString:v9];

        if (sourceType2)
        {
          v14 = VSErrorLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10000BDE0(taskCopy);
          }
        }

        if ((v13 & 1) == 0)
        {
          v15 = VSErrorLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10000BE60(taskCopy);
          }
        }

        v6 = (sourceType2 == 0) & v13;

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

  if (sourceType != 1)
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000BF7C(taskCopy);
    }

    goto LABEL_27;
  }

LABEL_2:
  v6 = 1;
LABEL_29:

  return v6;
}

- (BOOL)_isValidForAutoSignInForCurrentTaskWithAccount:(id)account
{
  accountCopy = account;
  _isClientValidForAutoSignInForCurrentTask = [(VSUserAccountRegistry *)self _isClientValidForAutoSignInForCurrentTask];
  LOBYTE(self) = [(VSUserAccountRegistry *)self _isAccountValidForAutoSignIn:accountCopy];

  return _isClientValidForAutoSignInForCurrentTask & self;
}

- (BOOL)_isClientValidForAutoSignInForCurrentTask
{
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  if (([_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameSmootSubscriptionService] & 1) == 0)
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000BFFC();
    }

    goto LABEL_8;
  }

  _securityTaskForCurrentConnection2 = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  signingIdentifier = [_securityTaskForCurrentConnection2 signingIdentifier];
  v6 = [signingIdentifier length];

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

- (BOOL)_isAccountValidForAutoSignIn:(id)in
{
  inCopy = in;
  v4 = inCopy;
  if (inCopy && ![inCopy ams_isLocalAccount])
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

- (id)prepareUserAccountsToVend:(id)vend withSecurityTask:(id)task
{
  vendCopy = vend;
  taskCopy = task;
  v7 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = vendCopy;
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

        if (([taskCopy shouldAllowAccessForBooleanEntitlement:v12] & 1) == 0)
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
  serialNumber = [v3 serialNumber];
  v5 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromDeviceID:serialNumber];

  return v5;
}

- (id)_predicateForUserAccountWithDeviceIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier sourceType:(id)type
{
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  typeCopy = type;
  v11 = objc_alloc_init(NSMutableArray);
  if (sourceIdentifierCopy)
  {
    v12 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromSourceID:sourceIdentifierCopy];
    [v11 addObject:v12];
  }

  if (typeCopy)
  {
    v13 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithSourceType:typeCopy];
    [v11 addObject:v13];
  }

  if (identifierCopy)
  {
    v14 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromDeviceID:identifierCopy];
    [v11 addObject:v14];
  }

  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

  return v15;
}

- (id)_predicateForQueryRequestWithOptions:(int64_t)options
{
  optionsCopy = options;
  _securityTaskForCurrentConnection = [(VSUserAccountRegistry *)self _securityTaskForCurrentConnection];
  v6 = [_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalUserAccountService];
  if ([_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameSubscriptionServiceFetchFromAllSources])
  {
    v7 = 1;
  }

  else
  {
    v7 = [_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalSubscriptionService];
  }

  if ([_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameUserAccountService] & 1) != 0 || ((v7 | objc_msgSend(_securityTaskForCurrentConnection, "shouldAllowAccessForBooleanEntitlement:", VSEntitlementNameSmootSubscriptionService)))
  {
    _predicateForFetchingZeroResults = [(VSUserAccountRegistry *)self _predicateForFetchingZeroResults];
    v31 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithSourceType:&off_100015008];

    _predicateForFetchingZeroResults2 = [(VSUserAccountRegistry *)self _predicateForFetchingZeroResults];
    v30 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithSourceType:&off_100015020];

    LODWORD(_predicateForFetchingZeroResults2) = [_securityTaskForCurrentConnection shouldAllowAccessForBooleanEntitlement:VSEntitlementNameSubscriptionServiceReadWriteWebSources];
    _predicateForFetchingZeroResults3 = [(VSUserAccountRegistry *)self _predicateForFetchingZeroResults];
    if (_predicateForFetchingZeroResults2)
    {
      v11 = [(VSUserAccountRegistry *)self _predicateForUserAccountWithSourceType:&off_100015038];

      _predicateForFetchingZeroResults3 = v11;
    }

    signingIdentifier = [_securityTaskForCurrentConnection signingIdentifier];
    v13 = (signingIdentifier == 0) | v7;
    _predicateForFetchingAllResults = [(VSUserAccountRegistry *)self _predicateForFetchingAllResults];
    if ((v13 & 1) == 0)
    {
      v15 = [(VSUserAccountRegistry *)self _predicateForUserAccountFromSourceID:signingIdentifier];

      _predicateForFetchingAllResults = v15;
    }

    _predicateForFetchingAllResults2 = [(VSUserAccountRegistry *)self _predicateForFetchingAllResults];
    if ((optionsCopy & 1) == 0)
    {
      _predicateForUserAccountFromCurrentDevice = [(VSUserAccountRegistry *)self _predicateForUserAccountFromCurrentDevice];

      _predicateForFetchingAllResults2 = _predicateForUserAccountFromCurrentDevice;
    }

    _predicateForFetchingAllResults3 = [(VSUserAccountRegistry *)self _predicateForFetchingAllResults];
    v29 = signingIdentifier;
    if ((v6 & 1) == 0)
    {
      v19 = [(VSUserAccountRegistry *)self _predicateForIsSignedOut:0];

      _predicateForFetchingAllResults3 = v19;
    }

    v36[0] = _predicateForFetchingAllResults;
    v36[1] = _predicateForFetchingAllResults2;
    v36[2] = _predicateForFetchingAllResults3;
    v20 = [NSArray arrayWithObjects:v36 count:3];
    v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];

    v35[0] = v31;
    v35[1] = v30;
    v35[2] = _predicateForFetchingZeroResults3;
    v22 = [NSArray arrayWithObjects:v35 count:3];
    v23 = [NSCompoundPredicate orPredicateWithSubpredicates:v22];

    v34[0] = v21;
    v34[1] = v23;
    v24 = [NSArray arrayWithObjects:v34 count:2];
    _predicateForFetchingZeroResults4 = [NSCompoundPredicate andPredicateWithSubpredicates:v24];

    v26 = VSDefaultLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = _predicateForFetchingZeroResults4;
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

    _predicateForFetchingZeroResults4 = [(VSUserAccountRegistry *)self _predicateForFetchingZeroResults];
  }

  return _predicateForFetchingZeroResults4;
}

- (void)updateManager:(id)manager updateRequestDidFinish:(id)finish
{
  finishCopy = finish;
  userAccount = [finishCopy userAccount];
  updatedUserAccount = [finishCopy updatedUserAccount];
  if ([(VSUserAccountRegistry *)self shouldAllowUserAccountUpdate:updatedUserAccount])
  {
    updateError = [finishCopy updateError];

    if (updateError)
    {
      v9 = VSErrorLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000C0B0(finishCopy);
      }
    }

    else
    {
      if (!updatedUserAccount)
      {
        goto LABEL_8;
      }

      sourceType = [updatedUserAccount sourceType];
      if (sourceType == [userAccount sourceType] && (objc_msgSend(updatedUserAccount, "sourceIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(userAccount, "sourceIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, v11, v13))
      {
        v14 = VSDefaultLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = finishCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updated user account allowed for insert: %@", buf, 0xCu);
        }

        updateURL = [userAccount updateURL];
        absoluteString = [updateURL absoluteString];
        [updatedUserAccount setModifierIdentifier:absoluteString];

        v17 = VSDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          modifierIdentifier = [updatedUserAccount modifierIdentifier];
          *buf = 138412290;
          v22 = modifierIdentifier;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Modifier identifier: %@", buf, 0xCu);
        }

        [updatedUserAccount setModifierType:VSMetricAccountUpdateValueModifierTypeJS];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000A528;
        v19[3] = &unk_1000144E8;
        v20 = updatedUserAccount;
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

- (void)updateManagerDidFinish:(id)finish
{
  finishCopy = finish;
  [(VSUserAccountRegistry *)self setUpdateManager:0];
  [(VSUserAccountRegistry *)self setCurrentUpdateSessionIsForced:0];
  [(VSUserAccountRegistry *)self resetTimer];
  delegate = [(VSUserAccountRegistry *)self delegate];
  [delegate userAccountRegistry:self didFinishUpdatingUserAccountsWithManager:finishCopy];
}

- (VSUserAccountRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end