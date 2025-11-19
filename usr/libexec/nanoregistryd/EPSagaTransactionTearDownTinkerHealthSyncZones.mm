@interface EPSagaTransactionTearDownTinkerHealthSyncZones
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionTearDownTinkerHealthSyncZones

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = a3;
  v6 = [v5 queue];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
  currentTimer = self->_currentTimer;
  self->_currentTimer = v7;

  v9 = self->_currentTimer;
  v10 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  v11 = self->_currentTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000E7278;
  handler[3] = &unk_100175598;
  handler[4] = self;
  v12 = v5;
  v22 = v12;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(self->_currentTimer);
  v13 = objc_opt_new();
  v14 = [[HKSecondaryDevicePairingAgent alloc] initWithHealthStore:v13];
  v15 = [v12 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = nr_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Tearing down tinker health sharing with Tinker device", buf, 2u);
    }
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E7414;
  v19[3] = &unk_100175B90;
  v19[4] = self;
  [v14 tearDownHealthSharingWithTinkerDeviceWithNRUUID:v15 completion:v19];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end