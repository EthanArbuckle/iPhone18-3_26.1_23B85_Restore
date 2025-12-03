@interface EPSagaTransactionSendPing
- (EPTransactionDelegate)delegate;
- (void)_addTimeout;
- (void)_invalidateTimer;
- (void)_recordIDSError;
- (void)_recoredTimeoutError;
- (void)_transactionDidComplete;
- (void)_transactionDidCompleteWithSuccess:(BOOL)success;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)cancel;
@end

@implementation EPSagaTransactionSendPing

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeStrong(&self->_routingSlipEntry, entry);
  v9 = [entryCopy objectForKeyedSubscript:@"pingType"];
  v26 = v9;
  if (v9)
  {
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v10 = [entryCopy objectForKeyedSubscript:@"idsMessagePriority"];
  v11 = v10;
  if (v10)
  {
    integerValue2 = [v10 integerValue];
  }

  else
  {
    integerValue2 = 200;
  }

  v12 = [entryCopy objectForKeyedSubscript:@"pingMessageSize"];
  v13 = v12;
  if (v12)
  {
    integerValue3 = [v12 integerValue];
  }

  else
  {
    integerValue3 = 0;
  }

  v14 = [entryCopy objectForKeyedSubscript:@"timeoutDuration"];
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
    v17 = v16;
  }

  else
  {
    v17 = IDSMaxMessageTimeout;
  }

  v18 = [entryCopy objectForKeyedSubscript:@"idsDeviceIdentifier"];
  self->_waitForPingResponse = 0;
  v19 = [entryCopy objectForKeyedSubscript:@"waitForPingResponse"];
  v20 = v19;
  if (v19)
  {
    self->_waitForPingResponse = [v19 BOOLValue];
  }

  v27 = registryCopy;
  v21 = [registryCopy serviceFromClass:objc_opt_class()];
  v22 = nr_daemon_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v24 = nr_daemon_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSendPing: Sending ping to device.", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000BF954;
  v32[3] = &unk_100179278;
  objc_copyWeak(&v33, buf);
  [v21 sendPingRequestType:integerValue withMessagePriority:integerValue2 withMessageSize:integerValue3 withTimeout:v18 toIDSBTUUID:v32 withResponseBlock:v17];
  queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFB48;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

- (void)cancel
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSendPing: Cancel", v6, 2u);
    }
  }

  [(EPSagaTransactionSendPing *)self _transactionDidComplete];
}

- (void)_addTimeout
{
  if (self->_transactionCompleted)
  {
    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSendPing: Trying to add a transaction after completed. Not allowed.", buf, 2u);
      }
    }
  }

  else
  {
    currentTimer = self->_currentTimer;
    if (currentTimer)
    {
      dispatch_source_cancel(currentTimer);
      v7 = self->_currentTimer;
      self->_currentTimer = 0;
    }

    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSendPing: Adding 5min timeout.", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    v13 = self->_currentTimer;
    self->_currentTimer = v12;

    v14 = self->_currentTimer;
    v15 = dispatch_time(0, 45000000000);
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    v16 = self->_currentTimer;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000BFE20;
    v17[3] = &unk_100178630;
    v17[4] = self;
    objc_copyWeak(&v18, buf);
    dispatch_source_set_event_handler(v16, v17);
    dispatch_resume(self->_currentTimer);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_transactionDidCompleteWithSuccess:(BOOL)success
{
  if (success)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_waitForPingResponse)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSendPing: ping sent successfully, waited for response: %@, posting NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification", &v8, 0xCu);
      }
    }

    notify_post([NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification UTF8String]);
  }

  [(EPSagaTransactionSendPing *)self _transactionDidComplete];
}

- (void)_transactionDidComplete
{
  if (!self->_transactionCompleted)
  {
    self->_transactionCompleted = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transactionDidComplete:self];

    v4 = nr_daemon_log();
    LODWORD(WeakRetained) = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (WeakRetained)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100103040(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }
}

- (void)_invalidateTimer
{
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v4 = self->_currentTimer;
    self->_currentTimer = 0;
  }
}

- (void)_recordIDSError
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100103078(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  errors = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
  v16 = NSLocalizedDescriptionKey;
  v17 = @"Unable to send ping to device.";
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v15 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionSendPringError" code:1 userInfo:v14];
  [errors addObject:v15];

  [(EPRoutingSlipEntry *)self->_routingSlipEntry persist];
}

- (void)_recoredTimeoutError
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001030B0(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  errors = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
  v16 = NSLocalizedDescriptionKey;
  v17 = @"Time out sending message to device";
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v15 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionSendPringError" code:0 userInfo:v14];
  [errors addObject:v15];

  [(EPRoutingSlipEntry *)self->_routingSlipEntry persist];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end