@interface EPSagaTransactionNotification
- (BOOL)_shouldWaitForCurrentNotification:(id)a3;
- (EPTransactionDelegate)delegate;
- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)cancel;
- (void)notification:(id)a3;
- (void)timeout;
- (void)transactionDidComplete;
@end

@implementation EPSagaTransactionNotification

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_routingSlipEntry, a3);
  v9 = [v7 objectForKeyedSubscript:@"notificationName"];
  notificationName = self->_notificationName;
  self->_notificationName = v9;

  v11 = [v7 objectForKeyedSubscript:@"notificationTimeoutSeconds"];
  v12 = [v7 objectForKeyedSubscript:@"shouldPostNotification"];
  v13 = [v7 objectForKeyedSubscript:@"isDarwinNotification"];
  self->_isDarwinNotification = [v13 BOOLValue];
  self->_notifyToken = -1;
  if ([v12 BOOLValue])
  {
    if (self->_isDarwinNotification)
    {
      notify_post([(NSString *)self->_notificationName UTF8String]);
LABEL_10:
      [(EPSagaTransactionNotification *)self transactionDidComplete];
      goto LABEL_11;
    }

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:self->_notificationName object:self];
LABEL_9:

    goto LABEL_10;
  }

  [v11 doubleValue];
  if (v14 != 0.0)
  {
    v15 = [@"com.apple.nanoregistry.EPSagaTransactionDarwinNotification." stringByAppendingString:self->_notificationName];
    [v11 doubleValue];
    v17 = v16;
    v18 = [v7 queue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100075364;
    v29[3] = &unk_100175660;
    v29[4] = self;
    v19 = [TimerFactory timerWithIdentifier:v15 delay:1 gracePeriod:v18 waking:v29 handlerQueue:v17 handlerBlock:0.0];
    timer = self->_timer;
    self->_timer = v19;
  }

  if (!self->_isDarwinNotification)
  {
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:self selector:"notification:" name:self->_notificationName object:0];

    if ([(EPSagaTransactionNotification *)self _shouldWaitForCurrentNotification:v8])
    {
      goto LABEL_11;
    }

    v25 = nr_daemon_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (!v26)
    {
      goto LABEL_10;
    }

    v23 = nr_daemon_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_notificationName;
      *buf = 138412290;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No need to wait for notification %@. Completing transaction", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v21 = self->_notificationName;
  v22 = [v8 queue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10007536C;
  v28[3] = &unk_1001759E8;
  v28[4] = self;
  self->_notifyToken = [(EPSagaTransactionNotification *)self registerNotifyTokenWithName:v21 withQueue:v22 withBlock:v28];

LABEL_11:
}

- (void)timeout
{
  v3 = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
  v12 = NSLocalizedDescriptionKey;
  v4 = "Foundation";
  if (self->_isDarwinNotification)
  {
    v4 = "Darwin";
  }

  v5 = [NSString stringWithFormat:@"Timed out waiting for %s notification %@", v4, self->_notificationName];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [NSError errorWithDomain:@"com.apple.NanoRegistry.EPSagaTransactionNotification" code:0 userInfo:v6];
  [v3 addObject:v7];

  if (_NRIsInternalInstall() && [(NSString *)self->_notificationName isEqualToString:@"EPSagaTransactionMigrationCompletionRequestNotification"])
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = @"EPSagaTransactionMigrationCompletionRequestNotification";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed migration waiting for %@ notification during watch migration, posting alert to promote filing a radar", buf, 0xCu);
    }

    v9 = +[NRRepeatingAlertEngine sharedInstance];
    [v9 setEnabled:1 withName:@"InternalMigrationFailed"];
  }

  [(EPSagaTransactionNotification *)self transactionDidComplete];
}

- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  out_token = -1;
  v10 = [v7 UTF8String];
  if (v9)
  {
    if (!notify_register_dispatch(v10, &out_token, v8, v9))
    {
      goto LABEL_9;
    }
  }

  else if (!notify_register_check(v10, &out_token))
  {
    goto LABEL_9;
  }

  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to register block and get notify token for %@", buf, 0xCu);
    }
  }

LABEL_9:
  v14 = out_token;

  return v14;
}

- (void)cancel
{
  v3 = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
    v10 = NSLocalizedDescriptionKey;
    v6 = "Foundation";
    if (self->_isDarwinNotification)
    {
      v6 = "Darwin";
    }

    v7 = [NSString stringWithFormat:@"Canceled waiting for %s notification %@", v6, self->_notificationName];
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.NanoRegistry.EPSagaTransactionNotification" code:1 userInfo:v8];
    [v5 addObject:v9];
  }

  [(EPSagaTransactionNotification *)self transactionDidComplete];
}

- (void)notification:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionNotification received: %@", buf, 0xCu);
    }
  }

  v8 = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075914;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)transactionDidComplete
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [(AbstractTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  if (!self->_transactionComplete)
  {
    self->_transactionComplete = 1;
    v6 = [(EPSagaTransactionNotification *)self delegate];
    [v6 transactionDidComplete:self];
  }
}

- (BOOL)_shouldWaitForCurrentNotification:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  if ([(NSString *)self->_notificationName isEqualToString:@"NRNotificationWaitForBridgeComplete"])
  {
    v5 = [v4 serviceFromClass:objc_opt_class()];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100075C70;
    v20[3] = &unk_100177830;
    v21 = v4;
    v22 = &v23;
    [v5 deasyncGrabRegistryWithReadBlock:v20];
  }

  if ([(NSString *)self->_notificationName isEqualToString:@"EPSagaTransactionMigrationCompletionRequestNotification"])
  {
    v6 = [v4 serviceFromProtocol:&OBJC_PROTOCOL___EPSagaTransactionWaitForWatchCompletionService];
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_watchMigrationNotification, race mitigation check", buf, 2u);
      }
    }

    v18 = 0;
    v10 = [v6 getWatchMigrationCompletionStatusWithError:&v18];
    v11 = v18;
    if (v10)
    {
      v12 = nr_daemon_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = nr_daemon_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_watchMigrationNotification, race mitigation completed", buf, 2u);
        }
      }

      if (v11)
      {
        v15 = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
        [v15 addObject:v11];
      }

      *(v24 + 24) = 0;
    }
  }

  v16 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return v16;
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end