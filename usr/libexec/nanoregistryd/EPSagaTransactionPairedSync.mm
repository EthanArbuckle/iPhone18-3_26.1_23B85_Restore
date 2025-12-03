@interface EPSagaTransactionPairedSync
+ (id)currentActivityLabel:(id)label;
- (BOOL)supportsEarlyPairedSync;
- (EPTransactionDelegate)delegate;
- (id)registry;
- (id)routingSlipEntry;
- (id)serviceRegistry;
- (id)unpairHelper;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)cancelWithError:(id)error;
- (void)deallocatePairedSyncNotifyToken;
- (void)doneWaitingForPairedSync;
- (void)evaluateWhetherToStartSync;
- (void)forceSyncComplete:(id)complete;
- (void)forceSyncCompleteAndFinishTransaction;
- (void)forceSyncStart:(id)start;
- (void)forceSyncStartAndEndWithError;
- (void)initialSyncStateObserver:(id)observer initialSyncDidCompleteForPairingIdentifier:(id)identifier;
- (void)initialSyncStateObserver:(id)observer syncDidCompleteForPairingIdentifier:(id)identifier;
- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)requests;
- (void)invalidate;
- (void)postSyncCompleteNotification;
- (void)querySyncStateForActiveDevice;
- (void)syncSessionObserver:(id)observer didInvalidateSyncSession:(id)session;
- (void)syncSessionObserver:(id)observer didReceiveUpdate:(id)update;
- (void)syncSessionObserver:(id)observer receivedSyncSession:(id)session;
- (void)updatePairedSyncNotifyToken:(unint64_t)token shouldPost:(BOOL)post;
@end

@implementation EPSagaTransactionPairedSync

- (id)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v3 = [WeakRetained serviceFromClass:objc_opt_class()];

  return v3;
}

- (void)invalidate
{
  [(EPSagaTransactionPairedSync *)self doneWaitingForPairedSync];
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v5 = [WeakRetained optionalServiceFromClass:objc_opt_class()];

  v4 = objc_loadWeakRetained(&self->_serviceRegistry);
  [v4 removeService:v5];
}

- (BOOL)supportsEarlyPairedSync
{
  if ([(NSString *)self->_syncType isEqualToString:@"initialSync"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
    v4 = [WeakRetained serviceFromClass:objc_opt_class()];

    v5 = objc_loadWeakRetained(&self->_routingSlipEntry);
    v6 = [v5 objectForKeyedSubscript:@"nrDeviceIdentifier"];

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100061BD4;
    v10[3] = &unk_100177830;
    v7 = v6;
    v11 = v7;
    v12 = &v13;
    [v4 deasyncGrabRegistryWithReadBlock:v10];
    v8 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairedSync: cancelWithError: %@", &v19, 0xCu);
    }
  }

  supportsEarlyPairedSync = [(EPSagaTransactionPairedSync *)self supportsEarlyPairedSync];
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = supportsEarlyPairedSync;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairedSync: supportsEarlyPairedSync %d", &v19, 8u);
    }
  }

  if (supportsEarlyPairedSync)
  {
    WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
    v13 = [WeakRetained serviceFromClass:objc_opt_class()];

    if (![v13 syncTrapUIPushed])
    {
      goto LABEL_20;
    }

    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairedSync: syncTrapUIPushed", &v19, 2u);
      }
    }

    if (!errorCopy)
    {
      goto LABEL_20;
    }

    errors2 = objc_loadWeakRetained(&self->_routingSlipEntry);
    errors = [errors2 errors];
    [errors addObject:errorCopy];

LABEL_19:
LABEL_20:

    goto LABEL_21;
  }

  if (errorCopy)
  {
    v13 = objc_loadWeakRetained(&self->_routingSlipEntry);
    errors2 = [v13 errors];
    [errors2 addObject:errorCopy];
    goto LABEL_19;
  }

LABEL_21:
  [(EPSagaTransactionPairedSync *)self cancel];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [[NRPreferences alloc] initWithDomain:@"com.apple.NanoRegistry"];
  v9 = [(NRPreferences *)v8 objectForKeyedSubscript:@"blockSyncTestMode"];
  if (_NRIsInternalInstall() && v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v9 BOOLValue])
  {
    WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
    errors = [WeakRetained errors];
    v24 = NSLocalizedDescriptionKey;
    v25 = @"PairedSync is disabled by the blockSyncTestMode internal preferences";
    v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [NSError errorWithDomain:@"pairedSyncErrorDomain" code:4 userInfo:v12];
    [errors addObject:v13];

    v14 = objc_loadWeakRetained(&self->_routingSlipEntry);
    [v14 persist];

    [(EPSagaTransactionPairedSync *)self doneWaitingForPairedSync];
  }

  else
  {
    v15 = objc_storeWeak(&self->_routingSlipEntry, entryCopy);
    [entryCopy setTransactionBeganWithThisNR:1];

    objc_storeWeak(&self->_serviceRegistry, registryCopy);
    self->_notifyToken = -1;
    v16 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
    pairingID = self->_pairingID;
    self->_pairingID = v16;

    v18 = [entryCopy objectForKeyedSubscript:@"pairedSyncTypeKey"];
    syncType = self->_syncType;
    self->_syncType = v18;

    v20 = [entryCopy objectForKeyedSubscript:@"extensiblePairingShouldFilePairingReport"];
    bOOLValue = [v20 BOOLValue];
    unpairHelper = [(EPSagaTransactionPairedSync *)self unpairHelper];
    [unpairHelper setShouldFilePairingReport:bOOLValue];

    v23 = objc_loadWeakRetained(&self->_serviceRegistry);
    [v23 addService:self];

    [(EPSagaTransactionPairedSync *)self evaluateWhetherToStartSync];
  }
}

- (void)evaluateWhetherToStartSync
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    registry = [(EPSagaTransactionPairedSync *)self registry];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100062258;
    v5[3] = &unk_100175948;
    v5[4] = self;
    [registry grabRegistryWithReadBlockAsync:v5];
  }

  else
  {
    [(EPSagaTransactionPairedSync *)self updatePairedSyncNotifyToken:1 shouldPost:1];
    WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
    [WeakRetained persist];

    [(EPSagaTransactionPairedSync *)self doneWaitingForPairedSync];
  }
}

- (void)updatePairedSyncNotifyToken:(unint64_t)token shouldPost:(BOOL)post
{
  postCopy = post;
  p_notifyToken = &self->_notifyToken;
  if (self->_notifyToken != -1)
  {
    goto LABEL_5;
  }

  if (notify_register_check([NRPairedDeviceRegistryPairedSyncIsOkayToSyncDarwinNotification UTF8String], p_notifyToken))
  {
    WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
    errors = [WeakRetained errors];
    v10 = [NSError errorWithDomain:@"pairedSyncErrorDomain" code:3 userInfo:0];
    [errors addObject:v10];

    v11 = objc_loadWeakRetained(&self->_routingSlipEntry);
    [v11 persist];

    [(EPSagaTransactionPairedSync *)self doneWaitingForPairedSync];
  }

  if (*p_notifyToken != -1)
  {
LABEL_5:
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "YES";
        if (!token)
        {
          v15 = "NO";
        }

        v16 = 136315138;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairedSync: sync advice @%s", &v16, 0xCu);
      }
    }

    notify_set_state(*p_notifyToken, token);
    if (postCopy)
    {
      notify_post([NRPairedDeviceRegistryPairedSyncIsOkayToSyncDarwinNotification UTF8String]);
    }
  }
}

- (void)deallocatePairedSyncNotifyToken
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }
}

- (void)doneWaitingForPairedSync
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairedSync: doneWaitingForPairedSync", v11, 2u);
    }
  }

  [(EPSagaTransactionPairedSync *)self updatePairedSyncNotifyToken:0 shouldPost:1];
  [(PSYInitialSyncStateObserver *)self->_syncStateObserver setDelegate:0];
  syncStateObserver = self->_syncStateObserver;
  self->_syncStateObserver = 0;

  [(PSYSyncSessionObserver *)self->_syncSessionObserver setDelegate:0];
  syncSessionObserver = self->_syncSessionObserver;
  self->_syncSessionObserver = 0;

  syncActiveAssertion = self->_syncActiveAssertion;
  self->_syncActiveAssertion = 0;

  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  [WeakRetained removeService:self];

  IDSInitialLocalSyncCompletedForServices();
  [(EPSagaTransactionPairedSync *)self deallocatePairedSyncNotifyToken];
  if (!self->_transactionComplete)
  {
    self->_transactionComplete = 1;
    delegate = [(EPSagaTransactionPairedSync *)self delegate];
    [delegate transactionDidComplete:self];

    [(EPSagaTransactionPairedSync *)self postSyncCompleteNotification];
  }
}

- (void)querySyncStateForActiveDevice
{
  syncStateObserver = self->_syncStateObserver;
  pairingID = self->_pairingID;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062D54;
  v4[3] = &unk_100175B90;
  v4[4] = self;
  [(PSYInitialSyncStateObserver *)syncStateObserver requestSyncStateForPairingIdentifier:pairingID completion:v4];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  objc_storeWeak(&self->_routingSlipEntry, entry);
  objc_storeWeak(&self->_serviceRegistry, registryCopy);

  [(EPSagaTransactionPairedSync *)self doneWaitingForPairedSync];
}

- (void)forceSyncStartAndEndWithError
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100063044;
  v2[3] = &unk_100175A10;
  v2[4] = self;
  [(EPSagaTransactionPairedSync *)self forceSyncStart:v2];
}

- (void)forceSyncStart:(id)start
{
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v6 = [WeakRetained serviceFromClass:objc_opt_class()];

  [v6 xpcFakePairedSyncStartWithCompletion:startCopy];
}

- (void)forceSyncComplete:(id)complete
{
  completeCopy = complete;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[EPSagaTransactionPairedSync forceSyncComplete:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v9 = [WeakRetained serviceFromClass:objc_opt_class()];

  [v9 xpcFakePairedSyncIsCompleteWithCompletion:completeCopy];
}

- (void)forceSyncCompleteAndFinishTransaction
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000635C8;
  v2[3] = &unk_100175A10;
  v2[4] = self;
  [(EPSagaTransactionPairedSync *)self forceSyncStart:v2];
}

- (void)initialSyncStateObserver:(id)observer initialSyncDidCompleteForPairingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  queue = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000637D8;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = identifierCopy;
  v8 = identifierCopy;
  dispatch_async(queue, v9);
}

- (void)initialSyncStateObserver:(id)observer syncDidCompleteForPairingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  queue = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000638E8;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = identifierCopy;
  v8 = identifierCopy;
  dispatch_async(queue, v9);
}

- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)requests
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000639D8;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (id)currentActivityLabel:(id)label
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  labelCopy = label;
  label = [labelCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (label)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != label; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(labelCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 activityState] == 1)
        {
          activityInfo = [v7 activityInfo];
          label = [activityInfo label];

          goto LABEL_11;
        }
      }

      label = [labelCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (label)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return label;
}

- (void)syncSessionObserver:(id)observer receivedSyncSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  queue = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063BD4;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = sessionCopy;
  v8 = sessionCopy;
  dispatch_async(queue, v9);
}

- (void)syncSessionObserver:(id)observer didReceiveUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  queue = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063D64;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = updateCopy;
  v8 = updateCopy;
  dispatch_async(queue, v9);
}

- (void)syncSessionObserver:(id)observer didInvalidateSyncSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  queue = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063F14;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = sessionCopy;
  v8 = sessionCopy;
  dispatch_async(queue, v9);
}

- (void)postSyncCompleteNotification
{
  p_syncType = &self->_syncType;
  if ([(NSString *)self->_syncType isEqualToString:@"initialSync"])
  {
    v3 = &NRInitialPairedSyncDidCompleteDarwinNotification;
  }

  else if ([(NSString *)*p_syncType isEqualToString:@"reunionSync"])
  {
    v3 = &NRReunionPairedSyncDidCompleteDarwinNotification;
  }

  else
  {
    if (![(NSString *)*p_syncType isEqualToString:@"migration"])
    {
      goto LABEL_13;
    }

    v3 = &NRMigrationPairedSyncDidCompleteDarwinNotification;
  }

  v4 = *v3;
  if (v4)
  {
    v5 = v4;
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Posting notification %{public}@", &v11, 0xCu);
      }
    }

    notify_post([v5 UTF8String]);
    goto LABEL_16;
  }

LABEL_13:
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (!v10)
  {
    return;
  }

  v5 = nr_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100100B4C(p_syncType, v5);
  }

LABEL_16:
}

- (id)unpairHelper
{
  unpairHelper = self->_unpairHelper;
  if (!unpairHelper)
  {
    v4 = objc_alloc_init(EPSagaUnpairHelper);
    v5 = self->_unpairHelper;
    self->_unpairHelper = v4;

    [(EPSagaUnpairHelper *)self->_unpairHelper setDelegate:self];
    unpairHelper = self->_unpairHelper;
  }

  return unpairHelper;
}

- (id)routingSlipEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);

  return WeakRetained;
}

- (id)serviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);

  return WeakRetained;
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end