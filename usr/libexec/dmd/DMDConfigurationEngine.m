@interface DMDConfigurationEngine
- (DMDConfigurationEngine)initWithDatabase:(id)a3 policyPersistence:(id)a4 activationManager:(id)a5;
- (DMDConfigurationEngineDelegate)delegate;
- (NSString)description;
- (id)engineProcessingOperation:(id)a3 assetResolverForOrganizationWithIdentifier:(id)a4;
- (id)engineProcessingOperation:(id)a3 enqueuedOperationsForOrganizationWithIdentifier:(id)a4;
- (void)_cleanupOrphanedPolicies;
- (void)activationPredicateObserverManager:(id)a3 didObserveChangeForPredicateWithIdentifier:(id)a4;
- (void)configurationSourceController:(id)a3 fetchEventsWithCompletionHandler:(id)a4;
- (void)configurationSourceController:(id)a3 fetchStatusUpdatesWithCompletionHandler:(id)a4;
- (void)databaseInitializationOperationDidFinish;
- (void)declarationModificationOperationDidFinish:(id)a3 completionHandler:(id)a4;
- (void)delegateDidResume;
- (void)delegateWillSuspend;
- (void)enqueueDatabaseModificationOperation:(id)a3 completionHandler:(id)a4;
- (void)enqueueDeclarationProcessingOperationIfNeeded;
- (void)enqueueOperation:(id)a3;
- (void)enqueueOperations:(id)a3;
- (void)handleConfigurationSourceRegistrationRequest:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5;
- (void)handleCreateConfigurationOrganizationRequest:(id)a3 completionHandler:(id)a4;
- (void)handleDeactivateConfigurationOrganizationRequest:(id)a3 completionHandler:(id)a4;
- (void)handleFetchConfigurationOrganizationsRequest:(id)a3 completionHandler:(id)a4;
- (void)handleFetchDeclarationsRequest:(id)a3 completionHandler:(id)a4;
- (void)handleFetchStreamEvents:(id)a3 completionHandler:(id)a4;
- (void)handleInstallSubscriptionRequest:(id)a3 completionHandler:(id)a4;
- (void)handleRemoveSubscriptionRequest:(id)a3 completionHandler:(id)a4;
- (void)handleSetDeclarationsRequest:(id)a3 completionHandler:(id)a4;
- (void)handleUpdateCommandsRequest:(id)a3 completionHandler:(id)a4;
- (void)handleUpdateDeclarationsRequest:(id)a3 completionHandler:(id)a4;
- (void)initializationOperationDidFinish:(id)a3;
- (void)processDeclarationsForOrganizationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)processStatusForOrganizationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)refreshStatusForOrganizationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)registerConfigurationSourceOperation:(id)a3 didUpdateRegistrationForConfigurationSource:(id)a4;
- (void)resume;
- (void)sendEvents:(id)a3 organizationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setDeviceStateProvider:(id)a3;
- (void)suspend;
- (void)updateEventSubscriptions;
- (void)updateOrganizationControllers;
@end

@implementation DMDConfigurationEngine

- (DMDConfigurationEngine)initWithDatabase:(id)a3 policyPersistence:(id)a4 activationManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    sub_10007E8DC();
  }

  v32.receiver = self;
  v32.super_class = DMDConfigurationEngine;
  v12 = [(DMDConfigurationEngine *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, a3);
    v14 = objc_opt_new();
    queue = v13->_queue;
    v13->_queue = v14;

    v16 = [NSString stringWithFormat:@"%@.%p.configuration-engine", objc_opt_class(), v13];
    [(CATOperationQueue *)v13->_queue setName:v16];

    [(CATOperationQueue *)v13->_queue setMaxConcurrentOperationCount:1];
    [(CATOperationQueue *)v13->_queue setSuspended:1];
    v17 = objc_opt_new();
    organizationControllerByIdentifier = v13->_organizationControllerByIdentifier;
    v13->_organizationControllerByIdentifier = v17;

    objc_storeStrong(&v13->_activationPredicateObserverManager, a5);
    [(DMDActivationPredicateObserverManager *)v13->_activationPredicateObserverManager setDelegate:v13];
    v19 = objc_opt_new();
    databaseInitializationOperation = v13->_databaseInitializationOperation;
    v13->_databaseInitializationOperation = v19;

    [(DMDEngineDatabaseOperation *)v13->_databaseInitializationOperation setDatabase:v9];
    objc_storeStrong(&v13->_policyPersistence, a4);
    v21 = objc_opt_new();
    eventSubscriptionManager = v13->_eventSubscriptionManager;
    v13->_eventSubscriptionManager = v21;

    objc_initWeak(&location, v13);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100026888;
    v29[3] = &unk_1000CE870;
    objc_copyWeak(&v30, &location);
    [(DMDEventSubscriptionManager *)v13->_eventSubscriptionManager setEventsHandler:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100026B40;
    v27[3] = &unk_1000CE898;
    objc_copyWeak(&v28, &location);
    v23 = [DMDBlockOperation blockOperationWithBlock:v27];
    initializationOperation = v13->_initializationOperation;
    v13->_initializationOperation = v23;

    [(CATOperation *)v13->_initializationOperation addTarget:v13 selector:"initializationOperationDidFinish:" forOperationEvents:6];
    [(CATOperation *)v13->_initializationOperation addDependency:v13->_databaseInitializationOperation];
    [(CATOperationQueue *)v13->_queue addOperation:v13->_databaseInitializationOperation];
    v25 = +[NSOperationQueue mainQueue];
    [v25 addOperation:v13->_initializationOperation];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (NSString)description
{
  v3 = [(DMDConfigurationEngine *)self database];
  v4 = [(DMDConfigurationEngine *)self queue];
  v5 = [v4 operations];
  v8 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  v6 = DMFObjectDescription();

  return v6;
}

- (void)setDeviceStateProvider:(id)a3
{
  objc_storeStrong(&self->_deviceStateProvider, a3);
  v5 = a3;
  v6 = [(DMDConfigurationEngine *)self databaseInitializationOperation];
  [v6 setDeviceStateProvider:v5];
}

- (void)resume
{
  if (!+[NSThread isMainThread])
  {
    sub_10007E9C0();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100026D84;
  v5[3] = &unk_1000CE5A0;
  v5[4] = self;
  v3 = [NSBlockOperation blockOperationWithBlock:v5];
  [v3 setQueuePriority:8];
  [(DMDConfigurationEngine *)self enqueueOperation:v3];
  v4 = [(DMDConfigurationEngine *)self queue];
  [v4 setSuspended:0];
}

- (void)suspend
{
  if (!+[NSThread isMainThread])
  {
    sub_10007EA44();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026EDC;
  v4[3] = &unk_1000CE5A0;
  v4[4] = self;
  v3 = [DMDBlockOperation blockOperationWithBlock:v4];
  [v3 setQueuePriority:8];
  [(DMDConfigurationEngine *)self enqueueOperation:v3];
}

- (void)handleCreateConfigurationOrganizationRequest:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(DMDConfigurationEngine *)self initializationError];
  if (v7)
  {
    v6[2](v6, v7);
  }

  else
  {
    v8 = objc_opt_new();
    v9 = [(DMDConfigurationEngine *)self database];
    [v8 setDatabase:v9];

    [v8 setRequest:v13];
    v10 = [v13 organizationIdentifier];
    v11 = [v13 organizationDisplayName];
    v12 = [NSString stringWithFormat:@"Create organization %@ “%@” ", v10, v11];
    [v8 setName:v12];

    [v8 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v8 completionHandler:v6];
  }
}

- (void)handleDeactivateConfigurationOrganizationRequest:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(DMDConfigurationEngine *)self initializationError];
  if (v7)
  {
    v6[2](v6, v7);
  }

  else
  {
    v8 = objc_opt_new();
    v9 = [(DMDConfigurationEngine *)self database];
    [v8 setDatabase:v9];

    [v8 setRequest:v11];
    v10 = [NSString stringWithFormat:@"Deactivate organization for %@", v11];
    [v8 setName:v10];

    [v8 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v8 completionHandler:v6];
  }
}

- (void)handleFetchConfigurationOrganizationsRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[NSOperationQueue mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002729C;
  v8[3] = &unk_1000CE8C0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 addOperationWithBlock:v8];
}

- (void)handleFetchStreamEvents:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self initializationError];
  if (v8)
  {
    v7[2](v7, 0, v8);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000275C8;
    v10[3] = &unk_1000CE910;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = [DMDBlockOperation blockOperationWithBlock:v10];
    [v9 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueOperation:v9];
  }
}

- (void)handleConfigurationSourceRegistrationRequest:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(DMDConfigurationEngine *)self initializationError];
  if (v10)
  {
    v9[2](v9, v10);
  }

  else
  {
    v11 = objc_opt_new();
    [v11 setRequest:v13];
    [v11 setClientIdentifier:v8];
    v12 = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:v12];

    [v11 setDelegate:self];
    [v11 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v11 completionHandler:v9];
  }
}

- (void)handleSetDeclarationsRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self initializationError];
  if (v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 organizationIdentifier];
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Engine enqueuing operation to set declarations from %{public}@", &v13, 0xCu);
    }

    v11 = objc_opt_new();
    v12 = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:v12];

    [v11 setRequest:v6];
    [v11 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v11 completionHandler:v7];
  }
}

- (void)handleUpdateDeclarationsRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self initializationError];
  if (v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 organizationIdentifier];
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Engine enqueuing operation to update declarations from %{public}@", &v13, 0xCu);
    }

    v11 = objc_opt_new();
    v12 = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:v12];

    [v11 setRequest:v6];
    [v11 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v11 completionHandler:v7];
  }
}

- (void)handleFetchDeclarationsRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self initializationError];
  if (v8)
  {
    v7[2](v7, 0, v8);
  }

  else
  {
    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 organizationIdentifier];
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Engine enqueuing operation to fetch declarations for %{public}@", &v13, 0xCu);
    }

    v11 = objc_opt_new();
    v12 = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:v12];

    [v11 setRequest:v6];
    [v11 setCompletionHandler:v7];
    [v11 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueOperation:v11];
  }
}

- (void)processDeclarationsForOrganizationWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self initializationError];
  if (v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100027F50;
    v15 = &unk_1000CE910;
    v16 = self;
    v9 = v6;
    v17 = v9;
    v18 = v7;
    v10 = [NSBlockOperation blockOperationWithBlock:&v12];
    v11 = [NSString stringWithFormat:@"Process Declarations for %@", v9, v12, v13, v14, v15, v16];
    [v10 setName:v11];

    [v10 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueOperation:v10];
  }
}

- (void)processStatusForOrganizationWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self initializationError];
  if (v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [(DMDConfigurationEngine *)self database];
    [v9 setDatabase:v10];

    [v9 setOrganizationIdentifier:v6];
    [v9 setQueuePriority:4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100028410;
    v11[3] = &unk_1000CE2E8;
    v12 = v7;
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v9 completionHandler:v11];
  }
}

- (void)refreshStatusForOrganizationWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self initializationError];
  if (v8)
  {
    v7[2](v7, 0, v8);
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [(DMDConfigurationEngine *)self database];
    [v9 setDatabase:v10];

    [v9 setOrganizationIdentifier:v6];
    [v9 setQueuePriority:4];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000285D0;
    v12[3] = &unk_1000CE960;
    v13 = v9;
    v14 = v7;
    v11 = v9;
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v11 completionHandler:v12];
  }
}

- (void)handleUpdateCommandsRequest:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(DMDConfigurationEngine *)self initializationError];
  if (v7)
  {
    v6[2](v6, v7);
  }

  else
  {
    v8 = objc_opt_new();
    v9 = [(DMDConfigurationEngine *)self database];
    [v8 setDatabase:v9];

    [v8 setRequest:v10];
    [v8 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v8 completionHandler:v6];
  }
}

- (void)handleInstallSubscriptionRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100028828;
  v11[3] = &unk_1000CE988;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 performBackgroundTask:v11];
}

- (void)handleRemoveSubscriptionRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100028BF4;
  v11[3] = &unk_1000CE9B0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBackgroundTask:v11];
}

- (void)sendEvents:(id)a3 organizationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    sub_10007EE10();
  }

  v11 = [(DMDConfigurationEngine *)self initializationError];
  if (v11)
  {
    v10[2](v10, v11);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100028FE0;
    v15[3] = &unk_1000CE9D8;
    v15[4] = self;
    v12 = v9;
    v16 = v12;
    v18 = v10;
    v17 = v8;
    v13 = [DMDBlockOperation blockOperationWithBlock:v15];
    v14 = [NSString stringWithFormat:@"Send Events for %@", v12];
    [v13 setName:v14];

    [v13 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueOperation:v13];
  }
}

- (void)initializationOperationDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(DMDConfigurationEngine *)self initializationOperation];

  if (v5 == v4)
  {

    [(DMDConfigurationEngine *)self setInitializationOperation:0];
  }
}

- (void)databaseInitializationOperationDidFinish
{
  v3 = [(DMDConfigurationEngine *)self databaseInitializationOperation];
  v4 = [v3 error];

  [(DMDConfigurationEngine *)self setDatabaseInitializationOperation:0];
  if (v4)
  {
    v5 = [v4 userInfo];
    v6 = [v5 mutableCopy];

    [v6 removeObjectForKey:DMFErrorFailedConfigurationDatabaseStoreKey];
    [v6 removeObjectForKey:NSUnderlyingErrorKey];
    v7 = [v4 domain];
    v8 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v7, [v4 code], v6);
    [(DMDConfigurationEngine *)self setInitializationError:v8];

    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007F00C(v4);
    }

    v10 = [(DMDConfigurationEngine *)self queue];
    [v10 cancelAllOperations];

    v11 = [(DMDConfigurationEngine *)self queue];
    [v11 setSuspended:1];

    [(DMDConfigurationEngine *)self delegateWillSuspend];
  }

  else
  {
    [(DMDConfigurationEngine *)self updateOrganizationControllers];
    [(DMDConfigurationEngine *)self updateEventSubscriptions];
    [(DMDConfigurationEngine *)self _cleanupOrphanedPolicies];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_updateOrganizationControllers" name:@"DMDConfigurationOrganizationsDidChangeNotification" object:0];
  }
}

- (void)enqueueDatabaseModificationOperation:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v6 = objc_retainBlock(a4);
  [v7 addTarget:self selector:"declarationModificationOperationDidFinish:completionHandler:" forOperationEvents:6 userInfo:v6];

  [(DMDConfigurationEngine *)self enqueueOperation:v7];
}

- (void)declarationModificationOperationDidFinish:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v7 = a4;
    v8 = [a3 error];
    (*(a4 + 2))(v7, v8);
  }

  [(DMDConfigurationEngine *)self enqueueDeclarationProcessingOperationIfNeeded];
}

- (void)enqueueDeclarationProcessingOperationIfNeeded
{
  v3 = [(DMDConfigurationEngine *)self queue];

  if (!v3)
  {
    sub_10007F098();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(DMDConfigurationEngine *)self queue];
  v5 = [v4 operations];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = *v26;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v10 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Engine enqueuing operation to process pending declarations in database", buf, 2u);
    }

    v11 = objc_opt_new();
    [v11 setQueuePriority:0];
    v12 = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:v12];

    [v11 setDelegate:self];
    v13 = [(DMDConfigurationEngine *)self deviceStateProvider];
    [v11 setDeviceStateProvider:v13];

    v14 = [(DMDConfigurationEngine *)self taskOperationProvider];
    [v11 setTaskOperationProvider:v14];

    v15 = [(DMDConfigurationEngine *)self activationPredicateObserverManager];
    [v11 setActivationPredicateObserverManager:v15];

    objc_initWeak(buf, self);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100029A50;
    v21 = &unk_1000CEA00;
    v5 = v11;
    v22 = v5;
    objc_copyWeak(&v23, buf);
    v16 = [DMDBlockOperation blockOperationWithBlock:&v18];
    [v5 setQueuePriority:{0, v18, v19, v20, v21}];
    [v16 addDependency:v5];
    v29[0] = v5;
    v29[1] = v16;
    v17 = [NSArray arrayWithObjects:v29 count:2];
    [(DMDConfigurationEngine *)self enqueueOperations:v17];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)enqueueOperation:(id)a3
{
  v4 = a3;
  v5 = [(DMDConfigurationEngine *)self queue];

  if (!v5)
  {
    sub_10007F190();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10007F1FC();
    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = v4;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(DMDConfigurationEngine *)self enqueueOperations:v6];
}

- (void)enqueueOperations:(id)a3
{
  v4 = a3;
  v5 = [(DMDConfigurationEngine *)self queue];

  if (!v5)
  {
    sub_10007F270();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(DMDConfigurationEngine *)self initializationOperation];
        if (v12)
        {
          [v11 addDependency:v12];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = [(DMDConfigurationEngine *)self queue];
  [v13 addOperations:v6 waitUntilFinished:0];
}

- (void)updateOrganizationControllers
{
  if (!+[NSThread isMainThread])
  {
    sub_10007F2DC();
  }

  v25 = +[DMDConfigurationOrganization fetchRequest];
  v3 = [(DMDConfigurationEngine *)self database];
  v4 = [v3 viewContext];
  v35 = 0;
  v5 = [v4 executeFetchRequest:v25 error:&v35];
  v24 = v35;

  if (!v5)
  {
    v6 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007F360(v24);
    }
  }

  obj = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  objc_sync_enter(obj);
  v7 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  v8 = [v7 allKeys];
  v9 = [v8 mutableCopy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v11)
  {
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [[DMDConfigurationOrganizationController alloc] initWithOrganization:*(*(&v31 + 1) + 8 * v13) delegate:self];
        v15 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
        v16 = [(DMDConfigurationOrganizationController *)v14 identifier];
        [v15 setObject:v14 forKeyedSubscript:v16];

        v17 = [(DMDConfigurationOrganizationController *)v14 identifier];
        [v9 removeObject:v17];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v19)
  {
    v20 = *v28;
    do
    {
      v21 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v27 + 1) + 8 * v21);
        v23 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
        [v23 removeObjectForKey:v22];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v19);
  }

  objc_sync_exit(obj);
}

- (void)updateEventSubscriptions
{
  if (!+[NSThread isMainThread])
  {
    sub_10007F3F0();
  }

  v3 = +[DMDEventSubscriptionRegistration fetchRequest];
  [v3 setRelationshipKeyPathsForPrefetching:&off_1000D6FB0];
  v4 = [(DMDConfigurationEngine *)self database];
  v5 = [v4 viewContext];
  v14 = 0;
  v6 = [v5 executeFetchRequest:v3 error:&v14];
  v7 = v14;

  if (!v6)
  {
    v8 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007F474(v7);
    }
  }

  v9 = [(DMDConfigurationEngine *)self eventSubscriptionManager];
  v13 = v7;
  v10 = [v9 setEventSubscriptionRegistrations:v6 error:&v13];
  v11 = v13;

  if ((v10 & 1) == 0)
  {
    v12 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10007F500(v11);
    }
  }
}

- (void)_cleanupOrphanedPolicies
{
  v3 = os_transaction_create();
  v4 = os_transaction_create();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000280B4;
  v27 = sub_1000280C4;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000280B4;
  v21 = sub_1000280C4;
  v22 = objc_opt_new();
  v5 = [(DMDConfigurationEngine *)self database];
  v6 = [v5 viewContext];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002A4AC;
  v16[3] = &unk_1000CEA28;
  v16[4] = &v23;
  v16[5] = &v17;
  [v6 performBlockAndWait:v16];

  v7 = [(DMDConfigurationEngine *)self policyPersistence];
  v8 = v24[5];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002A86C;
  v14[3] = &unk_1000CEA50;
  v9 = v3;
  v15 = v9;
  [v7 removeOrphanedPoliciesNotBelongingToExistingOrganizationIdentifiers:v8 completionHandler:v14];
  v10 = v18[5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002A8C8;
  v12[3] = &unk_1000CEA50;
  v11 = v4;
  v13 = v11;
  [v7 removeOrphanedPoliciesNotBelongingToExistingDeclarationIdentifiersByOrganizationIdentifier:v10 completionHandler:v12];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

- (void)activationPredicateObserverManager:(id)a3 didObserveChangeForPredicateWithIdentifier:(id)a4
{
  v5 = [(DMDConfigurationEngine *)self initializationError:a3];
  if (!v5)
  {
    [(DMDConfigurationEngine *)self enqueueDeclarationProcessingOperationIfNeeded];
    v5 = 0;
  }
}

- (void)configurationSourceController:(id)a3 fetchStatusUpdatesWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    sub_10007F844();
  }

  v8 = [(DMDConfigurationEngine *)self initializationError];
  if (v8)
  {
    v7[2](v7, 0, v8, &stru_1000CEA90);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002AAC4;
    v10[3] = &unk_1000CE910;
    v11 = v6;
    v12 = self;
    v13 = v7;
    v9 = [DMDBlockOperation blockOperationWithBlock:v10];
    [v9 setQueuePriority:8];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v9 completionHandler:&stru_1000CEB48];
  }
}

- (void)configurationSourceController:(id)a3 fetchEventsWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    sub_10007FBDC();
  }

  v8 = [(DMDConfigurationEngine *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002B724;
  v11[3] = &unk_1000CE988;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 performBackgroundTask:v11];
}

- (id)engineProcessingOperation:(id)a3 enqueuedOperationsForOrganizationWithIdentifier:(id)a4
{
  v4 = [(DMDConfigurationEngine *)self queue:a3];
  v5 = [v4 operations];

  return v5;
}

- (id)engineProcessingOperation:(id)a3 assetResolverForOrganizationWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  objc_sync_enter(v8);
  v9 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  v10 = [v9 objectForKeyedSubscript:v7];

  objc_sync_exit(v8);

  return v10;
}

- (void)registerConfigurationSourceOperation:(id)a3 didUpdateRegistrationForConfigurationSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[NSThread isMainThread])
  {
    sub_10007FDDC();
  }

  v8 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  objc_sync_enter(v8);
  v9 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  v10 = [v7 organizationIdentifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [v7 organizationIdentifier];
    v13 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:v12];

    v14 = [(DMDConfigurationEngine *)self database];
    v15 = [v14 viewContext];
    v30 = 0;
    v16 = [v15 executeFetchRequest:v13 error:&v30];
    v17 = v30;
    v18 = [v16 firstObject];

    v19 = [(DMDConfigurationEngine *)self database];
    v20 = [v19 viewContext];
    [v20 refreshObject:v18 mergeChanges:0];

    v11 = [[DMDConfigurationOrganizationController alloc] initWithOrganization:v18 delegate:self];
    v21 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
    v22 = [(DMDConfigurationOrganizationController *)v11 identifier];
    [v21 setObject:v11 forKeyedSubscript:v22];
  }

  v23 = [v7 identifier];
  v24 = [(DMDConfigurationOrganizationController *)v11 configurationSourceWithIdentifier:v23];

  if (v24)
  {
    v25 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v7 identifier];
      *buf = 138543362;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Re-registering configuration source %{public}@", buf, 0xCu);
    }

    [v24 updateWithConfigurationSource:v7];
  }

  else
  {
    v27 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v7 identifier];
      *buf = 138543362;
      v32 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Registering new configuration source %{public}@", buf, 0xCu);
    }

    v29 = [(DMDConfigurationOrganizationController *)v11 registerConfigurationSource:v7];
  }

  objc_sync_exit(v8);
}

- (void)delegateDidResume
{
  v3 = [(DMDConfigurationEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 configurationEngineDidResume:self];
  }
}

- (void)delegateWillSuspend
{
  v3 = [(DMDConfigurationEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 configurationEngineWillSuspend:self];
  }
}

- (DMDConfigurationEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end