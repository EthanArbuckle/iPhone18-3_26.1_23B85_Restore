@interface DMDConfigurationEngine
- (DMDConfigurationEngine)initWithDatabase:(id)database policyPersistence:(id)persistence activationManager:(id)manager;
- (DMDConfigurationEngineDelegate)delegate;
- (NSString)description;
- (id)engineProcessingOperation:(id)operation assetResolverForOrganizationWithIdentifier:(id)identifier;
- (id)engineProcessingOperation:(id)operation enqueuedOperationsForOrganizationWithIdentifier:(id)identifier;
- (void)_cleanupOrphanedPolicies;
- (void)activationPredicateObserverManager:(id)manager didObserveChangeForPredicateWithIdentifier:(id)identifier;
- (void)configurationSourceController:(id)controller fetchEventsWithCompletionHandler:(id)handler;
- (void)configurationSourceController:(id)controller fetchStatusUpdatesWithCompletionHandler:(id)handler;
- (void)databaseInitializationOperationDidFinish;
- (void)declarationModificationOperationDidFinish:(id)finish completionHandler:(id)handler;
- (void)delegateDidResume;
- (void)delegateWillSuspend;
- (void)enqueueDatabaseModificationOperation:(id)operation completionHandler:(id)handler;
- (void)enqueueDeclarationProcessingOperationIfNeeded;
- (void)enqueueOperation:(id)operation;
- (void)enqueueOperations:(id)operations;
- (void)handleConfigurationSourceRegistrationRequest:(id)request clientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleCreateConfigurationOrganizationRequest:(id)request completionHandler:(id)handler;
- (void)handleDeactivateConfigurationOrganizationRequest:(id)request completionHandler:(id)handler;
- (void)handleFetchConfigurationOrganizationsRequest:(id)request completionHandler:(id)handler;
- (void)handleFetchDeclarationsRequest:(id)request completionHandler:(id)handler;
- (void)handleFetchStreamEvents:(id)events completionHandler:(id)handler;
- (void)handleInstallSubscriptionRequest:(id)request completionHandler:(id)handler;
- (void)handleRemoveSubscriptionRequest:(id)request completionHandler:(id)handler;
- (void)handleSetDeclarationsRequest:(id)request completionHandler:(id)handler;
- (void)handleUpdateCommandsRequest:(id)request completionHandler:(id)handler;
- (void)handleUpdateDeclarationsRequest:(id)request completionHandler:(id)handler;
- (void)initializationOperationDidFinish:(id)finish;
- (void)processDeclarationsForOrganizationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)processStatusForOrganizationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)refreshStatusForOrganizationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)registerConfigurationSourceOperation:(id)operation didUpdateRegistrationForConfigurationSource:(id)source;
- (void)resume;
- (void)sendEvents:(id)events organizationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setDeviceStateProvider:(id)provider;
- (void)suspend;
- (void)updateEventSubscriptions;
- (void)updateOrganizationControllers;
@end

@implementation DMDConfigurationEngine

- (DMDConfigurationEngine)initWithDatabase:(id)database policyPersistence:(id)persistence activationManager:(id)manager
{
  databaseCopy = database;
  persistenceCopy = persistence;
  managerCopy = manager;
  if (!databaseCopy)
  {
    sub_10007E8DC();
  }

  v32.receiver = self;
  v32.super_class = DMDConfigurationEngine;
  v12 = [(DMDConfigurationEngine *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, database);
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

    objc_storeStrong(&v13->_activationPredicateObserverManager, manager);
    [(DMDActivationPredicateObserverManager *)v13->_activationPredicateObserverManager setDelegate:v13];
    v19 = objc_opt_new();
    databaseInitializationOperation = v13->_databaseInitializationOperation;
    v13->_databaseInitializationOperation = v19;

    [(DMDEngineDatabaseOperation *)v13->_databaseInitializationOperation setDatabase:databaseCopy];
    objc_storeStrong(&v13->_policyPersistence, persistence);
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
  database = [(DMDConfigurationEngine *)self database];
  queue = [(DMDConfigurationEngine *)self queue];
  operations = [queue operations];
  organizationControllerByIdentifier = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  v6 = DMFObjectDescription();

  return v6;
}

- (void)setDeviceStateProvider:(id)provider
{
  objc_storeStrong(&self->_deviceStateProvider, provider);
  providerCopy = provider;
  databaseInitializationOperation = [(DMDConfigurationEngine *)self databaseInitializationOperation];
  [databaseInitializationOperation setDeviceStateProvider:providerCopy];
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
  queue = [(DMDConfigurationEngine *)self queue];
  [queue setSuspended:0];
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

- (void)handleCreateConfigurationOrganizationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v8 = objc_opt_new();
    database = [(DMDConfigurationEngine *)self database];
    [v8 setDatabase:database];

    [v8 setRequest:requestCopy];
    organizationIdentifier = [requestCopy organizationIdentifier];
    organizationDisplayName = [requestCopy organizationDisplayName];
    v12 = [NSString stringWithFormat:@"Create organization %@ “%@” ", organizationIdentifier, organizationDisplayName];
    [v8 setName:v12];

    [v8 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v8 completionHandler:handlerCopy];
  }
}

- (void)handleDeactivateConfigurationOrganizationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v8 = objc_opt_new();
    database = [(DMDConfigurationEngine *)self database];
    [v8 setDatabase:database];

    [v8 setRequest:requestCopy];
    requestCopy = [NSString stringWithFormat:@"Deactivate organization for %@", requestCopy];
    [v8 setName:requestCopy];

    [v8 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v8 completionHandler:handlerCopy];
  }
}

- (void)handleFetchConfigurationOrganizationsRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[NSOperationQueue mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002729C;
  v8[3] = &unk_1000CE8C0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v6 addOperationWithBlock:v8];
}

- (void)handleFetchStreamEvents:(id)events completionHandler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, 0, initializationError);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000275C8;
    v10[3] = &unk_1000CE910;
    v10[4] = self;
    v11 = eventsCopy;
    v12 = handlerCopy;
    v9 = [DMDBlockOperation blockOperationWithBlock:v10];
    [v9 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueOperation:v9];
  }
}

- (void)handleConfigurationSourceRegistrationRequest:(id)request clientIdentifier:(id)identifier completionHandler:(id)handler
{
  requestCopy = request;
  identifierCopy = identifier;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v11 = objc_opt_new();
    [v11 setRequest:requestCopy];
    [v11 setClientIdentifier:identifierCopy];
    database = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:database];

    [v11 setDelegate:self];
    [v11 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v11 completionHandler:handlerCopy];
  }
}

- (void)handleSetDeclarationsRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      organizationIdentifier = [requestCopy organizationIdentifier];
      v13 = 138543362;
      v14 = organizationIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Engine enqueuing operation to set declarations from %{public}@", &v13, 0xCu);
    }

    v11 = objc_opt_new();
    database = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:database];

    [v11 setRequest:requestCopy];
    [v11 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v11 completionHandler:handlerCopy];
  }
}

- (void)handleUpdateDeclarationsRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      organizationIdentifier = [requestCopy organizationIdentifier];
      v13 = 138543362;
      v14 = organizationIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Engine enqueuing operation to update declarations from %{public}@", &v13, 0xCu);
    }

    v11 = objc_opt_new();
    database = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:database];

    [v11 setRequest:requestCopy];
    [v11 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v11 completionHandler:handlerCopy];
  }
}

- (void)handleFetchDeclarationsRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, 0, initializationError);
  }

  else
  {
    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      organizationIdentifier = [requestCopy organizationIdentifier];
      v13 = 138543362;
      v14 = organizationIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Engine enqueuing operation to fetch declarations for %{public}@", &v13, 0xCu);
    }

    v11 = objc_opt_new();
    database = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:database];

    [v11 setRequest:requestCopy];
    [v11 setCompletionHandler:handlerCopy];
    [v11 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueOperation:v11];
  }
}

- (void)processDeclarationsForOrganizationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100027F50;
    v15 = &unk_1000CE910;
    selfCopy = self;
    v9 = identifierCopy;
    v17 = v9;
    v18 = handlerCopy;
    v10 = [NSBlockOperation blockOperationWithBlock:&v12];
    selfCopy = [NSString stringWithFormat:@"Process Declarations for %@", v9, v12, v13, v14, v15, selfCopy];
    [v10 setName:selfCopy];

    [v10 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueOperation:v10];
  }
}

- (void)processStatusForOrganizationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v9 = objc_opt_new();
    database = [(DMDConfigurationEngine *)self database];
    [v9 setDatabase:database];

    [v9 setOrganizationIdentifier:identifierCopy];
    [v9 setQueuePriority:4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100028410;
    v11[3] = &unk_1000CE2E8;
    v12 = handlerCopy;
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v9 completionHandler:v11];
  }
}

- (void)refreshStatusForOrganizationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, 0, initializationError);
  }

  else
  {
    v9 = objc_opt_new();
    database = [(DMDConfigurationEngine *)self database];
    [v9 setDatabase:database];

    [v9 setOrganizationIdentifier:identifierCopy];
    [v9 setQueuePriority:4];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000285D0;
    v12[3] = &unk_1000CE960;
    v13 = v9;
    v14 = handlerCopy;
    v11 = v9;
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v11 completionHandler:v12];
  }
}

- (void)handleUpdateCommandsRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v8 = objc_opt_new();
    database = [(DMDConfigurationEngine *)self database];
    [v8 setDatabase:database];

    [v8 setRequest:requestCopy];
    [v8 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v8 completionHandler:handlerCopy];
  }
}

- (void)handleInstallSubscriptionRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  database = [(DMDConfigurationEngine *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100028828;
  v11[3] = &unk_1000CE988;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = requestCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  [database performBackgroundTask:v11];
}

- (void)handleRemoveSubscriptionRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  database = [(DMDConfigurationEngine *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100028BF4;
  v11[3] = &unk_1000CE9B0;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  [database performBackgroundTask:v11];
}

- (void)sendEvents:(id)events organizationIdentifier:(id)identifier completionHandler:(id)handler
{
  eventsCopy = events;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    sub_10007EE10();
  }

  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, initializationError);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100028FE0;
    v15[3] = &unk_1000CE9D8;
    v15[4] = self;
    v12 = identifierCopy;
    v16 = v12;
    v18 = handlerCopy;
    v17 = eventsCopy;
    v13 = [DMDBlockOperation blockOperationWithBlock:v15];
    v14 = [NSString stringWithFormat:@"Send Events for %@", v12];
    [v13 setName:v14];

    [v13 setQueuePriority:4];
    [(DMDConfigurationEngine *)self enqueueOperation:v13];
  }
}

- (void)initializationOperationDidFinish:(id)finish
{
  finishCopy = finish;
  initializationOperation = [(DMDConfigurationEngine *)self initializationOperation];

  if (initializationOperation == finishCopy)
  {

    [(DMDConfigurationEngine *)self setInitializationOperation:0];
  }
}

- (void)databaseInitializationOperationDidFinish
{
  databaseInitializationOperation = [(DMDConfigurationEngine *)self databaseInitializationOperation];
  error = [databaseInitializationOperation error];

  [(DMDConfigurationEngine *)self setDatabaseInitializationOperation:0];
  if (error)
  {
    userInfo = [error userInfo];
    v6 = [userInfo mutableCopy];

    [v6 removeObjectForKey:DMFErrorFailedConfigurationDatabaseStoreKey];
    [v6 removeObjectForKey:NSUnderlyingErrorKey];
    domain = [error domain];
    v8 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [error code], v6);
    [(DMDConfigurationEngine *)self setInitializationError:v8];

    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007F00C(error);
    }

    queue = [(DMDConfigurationEngine *)self queue];
    [queue cancelAllOperations];

    queue2 = [(DMDConfigurationEngine *)self queue];
    [queue2 setSuspended:1];

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

- (void)enqueueDatabaseModificationOperation:(id)operation completionHandler:(id)handler
{
  operationCopy = operation;
  v6 = objc_retainBlock(handler);
  [operationCopy addTarget:self selector:"declarationModificationOperationDidFinish:completionHandler:" forOperationEvents:6 userInfo:v6];

  [(DMDConfigurationEngine *)self enqueueOperation:operationCopy];
}

- (void)declarationModificationOperationDidFinish:(id)finish completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    error = [finish error];
    (*(handler + 2))(handlerCopy, error);
  }

  [(DMDConfigurationEngine *)self enqueueDeclarationProcessingOperationIfNeeded];
}

- (void)enqueueDeclarationProcessingOperationIfNeeded
{
  queue = [(DMDConfigurationEngine *)self queue];

  if (!queue)
  {
    sub_10007F098();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  queue2 = [(DMDConfigurationEngine *)self queue];
  operations = [queue2 operations];

  v6 = [operations countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = *v26;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(operations);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [operations countByEnumeratingWithState:&v25 objects:v30 count:16];
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
    database = [(DMDConfigurationEngine *)self database];
    [v11 setDatabase:database];

    [v11 setDelegate:self];
    deviceStateProvider = [(DMDConfigurationEngine *)self deviceStateProvider];
    [v11 setDeviceStateProvider:deviceStateProvider];

    taskOperationProvider = [(DMDConfigurationEngine *)self taskOperationProvider];
    [v11 setTaskOperationProvider:taskOperationProvider];

    activationPredicateObserverManager = [(DMDConfigurationEngine *)self activationPredicateObserverManager];
    [v11 setActivationPredicateObserverManager:activationPredicateObserverManager];

    objc_initWeak(buf, self);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100029A50;
    v21 = &unk_1000CEA00;
    operations = v11;
    v22 = operations;
    objc_copyWeak(&v23, buf);
    v16 = [DMDBlockOperation blockOperationWithBlock:&v18];
    [operations setQueuePriority:{0, v18, v19, v20, v21}];
    [v16 addDependency:operations];
    v29[0] = operations;
    v29[1] = v16;
    v17 = [NSArray arrayWithObjects:v29 count:2];
    [(DMDConfigurationEngine *)self enqueueOperations:v17];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)enqueueOperation:(id)operation
{
  operationCopy = operation;
  queue = [(DMDConfigurationEngine *)self queue];

  if (!queue)
  {
    sub_10007F190();
    if (operationCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10007F1FC();
    goto LABEL_3;
  }

  if (!operationCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = operationCopy;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(DMDConfigurationEngine *)self enqueueOperations:v6];
}

- (void)enqueueOperations:(id)operations
{
  operationsCopy = operations;
  queue = [(DMDConfigurationEngine *)self queue];

  if (!queue)
  {
    sub_10007F270();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = operationsCopy;
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
        initializationOperation = [(DMDConfigurationEngine *)self initializationOperation];
        if (initializationOperation)
        {
          [v11 addDependency:initializationOperation];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  queue2 = [(DMDConfigurationEngine *)self queue];
  [queue2 addOperations:v6 waitUntilFinished:0];
}

- (void)updateOrganizationControllers
{
  if (!+[NSThread isMainThread])
  {
    sub_10007F2DC();
  }

  v25 = +[DMDConfigurationOrganization fetchRequest];
  database = [(DMDConfigurationEngine *)self database];
  viewContext = [database viewContext];
  v35 = 0;
  v5 = [viewContext executeFetchRequest:v25 error:&v35];
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
  organizationControllerByIdentifier = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  allKeys = [organizationControllerByIdentifier allKeys];
  v9 = [allKeys mutableCopy];

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
        organizationControllerByIdentifier2 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
        identifier = [(DMDConfigurationOrganizationController *)v14 identifier];
        [organizationControllerByIdentifier2 setObject:v14 forKeyedSubscript:identifier];

        identifier2 = [(DMDConfigurationOrganizationController *)v14 identifier];
        [v9 removeObject:identifier2];

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
        organizationControllerByIdentifier3 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
        [organizationControllerByIdentifier3 removeObjectForKey:v22];

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
  database = [(DMDConfigurationEngine *)self database];
  viewContext = [database viewContext];
  v14 = 0;
  v6 = [viewContext executeFetchRequest:v3 error:&v14];
  v7 = v14;

  if (!v6)
  {
    v8 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007F474(v7);
    }
  }

  eventSubscriptionManager = [(DMDConfigurationEngine *)self eventSubscriptionManager];
  v13 = v7;
  v10 = [eventSubscriptionManager setEventSubscriptionRegistrations:v6 error:&v13];
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
  database = [(DMDConfigurationEngine *)self database];
  viewContext = [database viewContext];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002A4AC;
  v16[3] = &unk_1000CEA28;
  v16[4] = &v23;
  v16[5] = &v17;
  [viewContext performBlockAndWait:v16];

  policyPersistence = [(DMDConfigurationEngine *)self policyPersistence];
  v8 = v24[5];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002A86C;
  v14[3] = &unk_1000CEA50;
  v9 = v3;
  v15 = v9;
  [policyPersistence removeOrphanedPoliciesNotBelongingToExistingOrganizationIdentifiers:v8 completionHandler:v14];
  v10 = v18[5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002A8C8;
  v12[3] = &unk_1000CEA50;
  v11 = v4;
  v13 = v11;
  [policyPersistence removeOrphanedPoliciesNotBelongingToExistingDeclarationIdentifiersByOrganizationIdentifier:v10 completionHandler:v12];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

- (void)activationPredicateObserverManager:(id)manager didObserveChangeForPredicateWithIdentifier:(id)identifier
{
  v5 = [(DMDConfigurationEngine *)self initializationError:manager];
  if (!v5)
  {
    [(DMDConfigurationEngine *)self enqueueDeclarationProcessingOperationIfNeeded];
    v5 = 0;
  }
}

- (void)configurationSourceController:(id)controller fetchStatusUpdatesWithCompletionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    sub_10007F844();
  }

  initializationError = [(DMDConfigurationEngine *)self initializationError];
  if (initializationError)
  {
    handlerCopy[2](handlerCopy, 0, initializationError, &stru_1000CEA90);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002AAC4;
    v10[3] = &unk_1000CE910;
    v11 = controllerCopy;
    selfCopy = self;
    v13 = handlerCopy;
    v9 = [DMDBlockOperation blockOperationWithBlock:v10];
    [v9 setQueuePriority:8];
    [(DMDConfigurationEngine *)self enqueueDatabaseModificationOperation:v9 completionHandler:&stru_1000CEB48];
  }
}

- (void)configurationSourceController:(id)controller fetchEventsWithCompletionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    sub_10007FBDC();
  }

  database = [(DMDConfigurationEngine *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002B724;
  v11[3] = &unk_1000CE988;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = controllerCopy;
  v9 = handlerCopy;
  v10 = controllerCopy;
  [database performBackgroundTask:v11];
}

- (id)engineProcessingOperation:(id)operation enqueuedOperationsForOrganizationWithIdentifier:(id)identifier
{
  v4 = [(DMDConfigurationEngine *)self queue:operation];
  operations = [v4 operations];

  return operations;
}

- (id)engineProcessingOperation:(id)operation assetResolverForOrganizationWithIdentifier:(id)identifier
{
  operationCopy = operation;
  identifierCopy = identifier;
  organizationControllerByIdentifier = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  objc_sync_enter(organizationControllerByIdentifier);
  organizationControllerByIdentifier2 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  v10 = [organizationControllerByIdentifier2 objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(organizationControllerByIdentifier);

  return v10;
}

- (void)registerConfigurationSourceOperation:(id)operation didUpdateRegistrationForConfigurationSource:(id)source
{
  operationCopy = operation;
  sourceCopy = source;
  if (!+[NSThread isMainThread])
  {
    sub_10007FDDC();
  }

  organizationControllerByIdentifier = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  objc_sync_enter(organizationControllerByIdentifier);
  organizationControllerByIdentifier2 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
  organizationIdentifier = [sourceCopy organizationIdentifier];
  v11 = [organizationControllerByIdentifier2 objectForKeyedSubscript:organizationIdentifier];

  if (!v11)
  {
    organizationIdentifier2 = [sourceCopy organizationIdentifier];
    v13 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:organizationIdentifier2];

    database = [(DMDConfigurationEngine *)self database];
    viewContext = [database viewContext];
    v30 = 0;
    v16 = [viewContext executeFetchRequest:v13 error:&v30];
    v17 = v30;
    firstObject = [v16 firstObject];

    database2 = [(DMDConfigurationEngine *)self database];
    viewContext2 = [database2 viewContext];
    [viewContext2 refreshObject:firstObject mergeChanges:0];

    v11 = [[DMDConfigurationOrganizationController alloc] initWithOrganization:firstObject delegate:self];
    organizationControllerByIdentifier3 = [(DMDConfigurationEngine *)self organizationControllerByIdentifier];
    identifier = [(DMDConfigurationOrganizationController *)v11 identifier];
    [organizationControllerByIdentifier3 setObject:v11 forKeyedSubscript:identifier];
  }

  identifier2 = [sourceCopy identifier];
  v24 = [(DMDConfigurationOrganizationController *)v11 configurationSourceWithIdentifier:identifier2];

  if (v24)
  {
    v25 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      identifier3 = [sourceCopy identifier];
      *buf = 138543362;
      v32 = identifier3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Re-registering configuration source %{public}@", buf, 0xCu);
    }

    [v24 updateWithConfigurationSource:sourceCopy];
  }

  else
  {
    v27 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      identifier4 = [sourceCopy identifier];
      *buf = 138543362;
      v32 = identifier4;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Registering new configuration source %{public}@", buf, 0xCu);
    }

    v29 = [(DMDConfigurationOrganizationController *)v11 registerConfigurationSource:sourceCopy];
  }

  objc_sync_exit(organizationControllerByIdentifier);
}

- (void)delegateDidResume
{
  delegate = [(DMDConfigurationEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationEngineDidResume:self];
  }
}

- (void)delegateWillSuspend
{
  delegate = [(DMDConfigurationEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationEngineWillSuspend:self];
  }
}

- (DMDConfigurationEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end