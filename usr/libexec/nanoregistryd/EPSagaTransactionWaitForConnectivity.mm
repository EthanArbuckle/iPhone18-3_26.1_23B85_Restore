@interface EPSagaTransactionWaitForConnectivity
+ (id)countdown:(int64_t)countdown toCompletion:(id)completion;
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)checkForConnectivity;
- (void)setTimeout:(double)timeout;
- (void)timeout;
- (void)transactionDidComplete;
@end

@implementation EPSagaTransactionWaitForConnectivity

+ (id)countdown:(int64_t)countdown toCompletion:(id)completion
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2810000000;
  v31[3] = "";
  v32 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = countdown;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10007297C;
  v28 = sub_1000729A8;
  v29 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000729B0;
  v18 = &unk_100176888;
  v20 = v31;
  v21 = v30;
  v22 = &v24;
  countdownCopy = countdown;
  completionCopy = completion;
  v19 = completionCopy;
  v6 = objc_retainBlock(&v15);
  v7 = v25[5];
  v25[5] = v6;

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v25[5]);
      v12 = [NSNumber numberWithInteger:countdown, v15, v16, v17, v18];
      *buf = 134218242;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%p] countdown:%@ toCompletion: --started--", buf, 0x16u);
    }
  }

  v13 = objc_retainBlock(v25[5]);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);

  return v13;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeStrong(&self->_routingSlipEntry, entry);
  objc_storeStrong(&self->_serviceRegistry, registry);
  v9 = [entryCopy objectForKeyedSubscript:@"idsDeviceIdentifier"];
  bluetoothID = self->_bluetoothID;
  self->_bluetoothID = v9;

  v11 = [entryCopy objectForKeyedSubscript:@"timeoutDuration"];
  v12 = [entryCopy objectForKeyedSubscript:@"showUnpairAlert"];
  self->_showUnpairAlert = [v12 BOOLValue];
  v13 = [entryCopy objectForKeyedSubscript:@"idsDeviceIdentifier"];
  if (v13)
  {
    v14 = objc_opt_class();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100073048;
    v28[3] = &unk_1001756F8;
    v28[4] = self;
    v29 = v13;
    v15 = registryCopy;
    v30 = v15;
    v31 = v11;
    v16 = [v14 countdown:2 toCompletion:v28];
    v17 = +[NSMutableSet set];
    pairedDevices = self->_pairedDevices;
    self->_pairedDevices = v17;

    v19 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100073210;
    block[3] = &unk_100178098;
    block[4] = self;
    v27 = v16;
    v26 = v15;
    v20 = v16;
    dispatch_async(v19, block);
  }

  else
  {
    v21 = nr_daemon_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v23 = nr_daemon_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionWaitForConnectivity: No bluetooth ID specified", v24, 2u);
      }
    }

    self->_showUnpairAlert = 0;
    [(EPSagaTransactionWaitForConnectivity *)self transactionDidComplete];
  }
}

- (void)setTimeout:(double)timeout
{
  [(AbstractTimer *)self->_timer invalidate];
  queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100073528;
  v8[3] = &unk_100175660;
  v8[4] = self;
  v6 = [TimerFactory timerWithIdentifier:@"com.apple.NanoRegistry.EPSagaTransactionWaitForConnectivity" delay:1 gracePeriod:queue waking:v8 handlerQueue:timeout handlerBlock:0.0];
  timer = self->_timer;
  self->_timer = v6;
}

- (void)timeout
{
  timer = self->_timer;
  self->_timer = 0;

  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionWaitForConnectivity: Timeout waiting for IDS to connect.", v9, 2u);
    }
  }

  v7 = [NSError errorWithDomain:@"com.apple.NanoRegistry.EPSagaTransactionWaitForConnectivity" code:0 userInfo:0];
  errors = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
  [errors addObject:v7];

  [(EPSagaTransactionWaitForConnectivity *)self transactionDidComplete];
}

- (void)transactionDidComplete
{
  [(NRRemoteObject *)self->_remoteObject removeConnectivityObserver:self];
  [(AbstractTimer *)self->_timer invalidate];
  if (!self->_transactionComplete)
  {
    self->_transactionComplete = 1;
    if (self->_showUnpairAlert)
    {
      v3 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      [v3 resetStateForAlertWithName:@"RepeatingAlertPairedWatchDidNotReset"];
      [v3 setEnabled:1 withName:@"RepeatingAlertPairedWatchDidNotReset"];
      [v3 presentAlertsIfNeeded];
    }

    delegate = [(EPSagaTransactionWaitForConnectivity *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (void)checkForConnectivity
{
  defaultPairedDevice = [(NRRemoteObject *)self->_remoteObject defaultPairedDevice];
  nsuuid = [defaultPairedDevice nsuuid];

  if ([(NSUUID *)self->_bluetoothID isEqual:nsuuid]&& [(NRRemoteObject *)self->_remoteObject isIDSConnected])
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionWaitForConnectivity: IDS is connected!", v8, 2u);
      }
    }

    self->_showUnpairAlert = 0;
    [(EPSagaTransactionWaitForConnectivity *)self transactionDidComplete];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end