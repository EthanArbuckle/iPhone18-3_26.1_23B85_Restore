@interface EPSagaTransactionHealthSync
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionHealthSync

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 serviceFromClass:objc_opt_class()];
  if ([v8 isIDSConnected])
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v9 = qword_1001B3758;
    v36 = qword_1001B3758;
    if (!qword_1001B3758)
    {
      *buf = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_1000199A8;
      v31 = &unk_100175880;
      v32 = &v33;
      sub_1000199A8(buf);
      v9 = v34[3];
    }

    v10 = v9;
    _Block_object_dispose(&v33, 8);
    v11 = objc_opt_new();
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v12 = qword_1001B3768;
    v36 = qword_1001B3768;
    if (!qword_1001B3768)
    {
      *buf = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_100019B70;
      v31 = &unk_100175880;
      v32 = &v33;
      sub_100019B70(buf);
      v12 = v34[3];
    }

    v13 = v12;
    _Block_object_dispose(&v33, 8);
    v14 = [[v12 alloc] initWithHealthStore:v11];
    v15 = [v6 objectForKeyedSubscript:@"completeHealthSyncForUnpairing"];
    if ([v15 BOOLValue])
    {
      v16 = nr_daemon_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = nr_daemon_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling HKHealthStore forceNanoSyncWithPullRequest", buf, 2u);
        }
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100019770;
      v27[3] = &unk_100175B90;
      v27[4] = self;
      [v14 forceNanoSyncWithPullRequest:1 completion:v27];
    }

    else
    {
      v22 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
      v23 = nr_daemon_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v25 = nr_daemon_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Calling HKHealthStore waitForLastChanceSyncWithDevicePairingID", buf, 2u);
        }
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10001986C;
      v26[3] = &unk_100175B90;
      v26[4] = self;
      [v14 waitForLastChanceSyncWithDevicePairingID:v22 timeout:v26 completion:10.0];
    }
  }

  else
  {
    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Skipping health sync because no connectivity to the watch.", buf, 2u);
      }
    }

    v11 = [(EPSagaTransactionHealthSync *)self delegate];
    [v11 transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end