@interface EPSagaTransactionPairedSync
+ (id)currentActivityLabel:(id)a3;
- (BOOL)supportsEarlyPairedSync;
- (EPTransactionDelegate)delegate;
- (id)registry;
- (id)routingSlipEntry;
- (id)serviceRegistry;
- (id)unpairHelper;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)cancelWithError:(id)a3;
- (void)deallocatePairedSyncNotifyToken;
- (void)doneWaitingForPairedSync;
- (void)evaluateWhetherToStartSync;
- (void)forceSyncComplete:(id)a3;
- (void)forceSyncCompleteAndFinishTransaction;
- (void)forceSyncStart:(id)a3;
- (void)forceSyncStartAndEndWithError;
- (void)initialSyncStateObserver:(id)a3 initialSyncDidCompleteForPairingIdentifier:(id)a4;
- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4;
- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)a3;
- (void)invalidate;
- (void)postSyncCompleteNotification;
- (void)querySyncStateForActiveDevice;
- (void)syncSessionObserver:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4;
- (void)syncSessionObserver:(id)a3 receivedSyncSession:(id)a4;
- (void)updatePairedSyncNotifyToken:(unint64_t)a3 shouldPost:(BOOL)a4;
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

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairedSync: cancelWithError: %@", &v19, 0xCu);
    }
  }

  v8 = [(EPSagaTransactionPairedSync *)self supportsEarlyPairedSync];
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairedSync: supportsEarlyPairedSync %d", &v19, 8u);
    }
  }

  if (v8)
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

    if (!v4)
    {
      goto LABEL_20;
    }

    v17 = objc_loadWeakRetained(&self->_routingSlipEntry);
    v18 = [v17 errors];
    [v18 addObject:v4];

LABEL_19:
LABEL_20:

    goto LABEL_21;
  }

  if (v4)
  {
    v13 = objc_loadWeakRetained(&self->_routingSlipEntry);
    v17 = [v13 errors];
    [v17 addObject:v4];
    goto LABEL_19;
  }

LABEL_21:
  [(EPSagaTransactionPairedSync *)self cancel];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NRPreferences alloc] initWithDomain:@"com.apple.NanoRegistry"];
  v9 = [(NRPreferences *)v8 objectForKeyedSubscript:@"blockSyncTestMode"];
  if (_NRIsInternalInstall() && v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v9 BOOLValue])
  {
    WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
    v11 = [WeakRetained errors];
    v24 = NSLocalizedDescriptionKey;
    v25 = @"PairedSync is disabled by the blockSyncTestMode internal preferences";
    v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [NSError errorWithDomain:@"pairedSyncErrorDomain" code:4 userInfo:v12];
    [v11 addObject:v13];

    v14 = objc_loadWeakRetained(&self->_routingSlipEntry);
    [v14 persist];

    [(EPSagaTransactionPairedSync *)self doneWaitingForPairedSync];
  }

  else
  {
    v15 = objc_storeWeak(&self->_routingSlipEntry, v6);
    [v6 setTransactionBeganWithThisNR:1];

    objc_storeWeak(&self->_serviceRegistry, v7);
    self->_notifyToken = -1;
    v16 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
    pairingID = self->_pairingID;
    self->_pairingID = v16;

    v18 = [v6 objectForKeyedSubscript:@"pairedSyncTypeKey"];
    syncType = self->_syncType;
    self->_syncType = v18;

    v20 = [v6 objectForKeyedSubscript:@"extensiblePairingShouldFilePairingReport"];
    v21 = [v20 BOOLValue];
    v22 = [(EPSagaTransactionPairedSync *)self unpairHelper];
    [v22 setShouldFilePairingReport:v21];

    v23 = objc_loadWeakRetained(&self->_serviceRegistry);
    [v23 addService:self];

    [(EPSagaTransactionPairedSync *)self evaluateWhetherToStartSync];
  }
}

- (void)evaluateWhetherToStartSync
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    v3 = [(EPSagaTransactionPairedSync *)self registry];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100062258;
    v5[3] = &unk_100175948;
    v5[4] = self;
    [v3 grabRegistryWithReadBlockAsync:v5];
  }

  else
  {
    [(EPSagaTransactionPairedSync *)self updatePairedSyncNotifyToken:1 shouldPost:1];
    WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
    [WeakRetained persist];

    [(EPSagaTransactionPairedSync *)self doneWaitingForPairedSync];
  }
}

- (void)updatePairedSyncNotifyToken:(unint64_t)a3 shouldPost:(BOOL)a4
{
  v4 = a4;
  p_notifyToken = &self->_notifyToken;
  if (self->_notifyToken != -1)
  {
    goto LABEL_5;
  }

  if (notify_register_check([NRPairedDeviceRegistryPairedSyncIsOkayToSyncDarwinNotification UTF8String], p_notifyToken))
  {
    WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
    v9 = [WeakRetained errors];
    v10 = [NSError errorWithDomain:@"pairedSyncErrorDomain" code:3 userInfo:0];
    [v9 addObject:v10];

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
        if (!a3)
        {
          v15 = "NO";
        }

        v16 = 136315138;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairedSync: sync advice @%s", &v16, 0xCu);
      }
    }

    notify_set_state(*p_notifyToken, a3);
    if (v4)
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
    v10 = [(EPSagaTransactionPairedSync *)self delegate];
    [v10 transactionDidComplete:self];

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

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_routingSlipEntry, a3);
  objc_storeWeak(&self->_serviceRegistry, v6);

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

- (void)forceSyncStart:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v6 = [WeakRetained serviceFromClass:objc_opt_class()];

  [v6 xpcFakePairedSyncStartWithCompletion:v4];
}

- (void)forceSyncComplete:(id)a3
{
  v4 = a3;
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

  [v9 xpcFakePairedSyncIsCompleteWithCompletion:v4];
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

- (void)initialSyncStateObserver:(id)a3 initialSyncDidCompleteForPairingIdentifier:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v7 = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000637D8;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v7 = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000638E8;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v5 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000639D8;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v5, block);
}

+ (id)currentActivityLabel:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 activityState] == 1)
        {
          v8 = [v7 activityInfo];
          v4 = [v8 label];

          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)syncSessionObserver:(id)a3 receivedSyncSession:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v7 = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063BD4;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v7 = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063D64;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)syncSessionObserver:(id)a3 didInvalidateSyncSession:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v7 = [WeakRetained queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063F14;
  v9[3] = &unk_100175598;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
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