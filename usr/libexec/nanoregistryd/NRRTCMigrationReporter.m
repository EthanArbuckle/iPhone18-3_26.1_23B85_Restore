@interface NRRTCMigrationReporter
- (BOOL)setCurrentMigrationID:(id)a3;
- (NRRTCMigrationReporter)initWithServiceRegistry:(id)a3;
- (id)_deviceDetailsFromCollectionHistory:(id)a3;
- (id)_migrationMetricKeyFromTransactionName:(id)a3;
- (id)mostRecentError;
- (void)_clearMigrationData;
- (void)_submitRTCMetric;
- (void)addTransactionError:(id)a3;
- (void)checkInWithCompletedMigrationTransaction:(id)a3 routingSlipEntry:(id)a4 forPairingID:(id)a5;
- (void)checkInWithMigrationTransactionRollback:(id)a3 routingSlipEntry:(id)a4 forPairingID:(id)a5;
- (void)fileEarlyMigrationFailure:(unint64_t)a3 withDeviceHistory:(id)a4 forPairingID:(id)a5;
- (void)finishMigrationMetricWithDeviceHistory:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)migrationWillBeginOnCompanionForPairingID:(id)a3;
- (void)migrationWillBeginOnCompanionForPairingID:(id)a3 withDeviceHistory:(id)a4;
- (void)setSessionID:(id)a3;
- (void)setSessionIDFromRemoteDevice:(id)a3;
@end

@implementation NRRTCMigrationReporter

- (NRRTCMigrationReporter)initWithServiceRegistry:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NRRTCMigrationReporter;
  v6 = [(NRRTCMigrationReporter *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.NRMigrationReport", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_serviceRegistry, a3);
    v9 = objc_opt_new();
    transactionErrors = v6->_transactionErrors;
    v6->_transactionErrors = v9;
  }

  return v6;
}

- (void)migrationWillBeginOnCompanionForPairingID:(id)a3
{
  if (!self->_migrationReportManager)
  {
    v4 = a3;
    v5 = [[BRRTCMigrationReportManager alloc] initWithPairingID:v4];

    migrationReportManager = self->_migrationReportManager;
    self->_migrationReportManager = v5;
  }

  v7 = [(NRRTCMigrationReporter *)self migrationReportManager];
  [v7 setMigrationBegan:1];
}

- (void)migrationWillBeginOnCompanionForPairingID:(id)a3 withDeviceHistory:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (!self->_migrationReportManager)
  {
    v7 = [[BRRTCMigrationReportManager alloc] initWithPairingID:v15];
    migrationReportManager = self->_migrationReportManager;
    self->_migrationReportManager = v7;
  }

  v9 = [v6 deviceCollection];
  v10 = [v9 objectForKeyedSubscript:v15];

  v11 = [v10 objectForKeyedSubscript:NRDevicePropertyLastActiveDate];
  v12 = [v11 value];

  v13 = [(NRRTCMigrationReporter *)self migrationReportManager];
  [v13 setLastActiveDate:v12];

  v14 = [(NRRTCMigrationReporter *)self migrationReportManager];
  [v14 setMigrationBegan:1];
}

- (void)finishMigrationMetricWithDeviceHistory:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084E34;
  v13[3] = &unk_100175CE0;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)checkInWithCompletedMigrationTransaction:(id)a3 routingSlipEntry:(id)a4 forPairingID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([(NRRTCMigrationReporter *)self setCurrentMigrationID:v9])
  {
    v11 = sub_1000034AC();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = sub_1000034AC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "migration device id unexpectedly changed to %@", &v19, 0xCu);
      }
    }
  }

  v14 = NSStringFromClass([v8 transactionClass]);
  v15 = [(NRRTCMigrationReporter *)self _migrationMetricKeyFromTransactionName:v14];

  v16 = [v10 getLastFirstError];

  if (v16)
  {
    v17 = [(NRRTCMigrationReporter *)self mostRecentError];
    v18 = [v16 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      [(NRRTCMigrationReporter *)self addTransactionError:v16];
    }
  }

  else
  {
    v18 = 1;
  }

  [(NRRTCMigrationReporter *)self _checkInWithCompletedMigrationTransaction:v15 withSuccess:v18];
}

- (void)checkInWithMigrationTransactionRollback:(id)a3 routingSlipEntry:(id)a4 forPairingID:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(NRRTCMigrationReporter *)self setCurrentMigrationID:v8])
  {
    v9 = sub_1000034AC();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000034AC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "migration device id changed to %@", &v14, 0xCu);
      }
    }
  }

  v12 = NSStringFromClass([v7 transactionClass]);
  v13 = [(NRRTCMigrationReporter *)self _migrationMetricKeyFromTransactionName:v12];

  [(NRRTCMigrationReporter *)self _checkInWithCompletedMigrationTransaction:v13 withSuccess:0];
}

- (void)fileEarlyMigrationFailure:(unint64_t)a3 withDeviceHistory:(id)a4 forPairingID:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100085498;
  v13[3] = &unk_100178570;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a3;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)addTransactionError:(id)a3
{
  v4 = a3;
  v5 = [(NRRTCMigrationReporter *)self transactionErrors];
  [v5 addObject:v4];
}

- (id)mostRecentError
{
  v2 = [(NRRTCMigrationReporter *)self transactionErrors];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)setCurrentMigrationID:(id)a3
{
  v4 = a3;
  v5 = [(NRRTCMigrationReporter *)self currentMigrationPairingID];
  if (v5)
  {

LABEL_5:
    [(NRRTCMigrationReporter *)self setCurrentMigrationPairingID:v4];
    v8 = 1;
    goto LABEL_6;
  }

  v6 = [(NRRTCMigrationReporter *)self currentMigrationPairingID];
  v7 = [v6 isEqual:v4];

  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)_deviceDetailsFromCollectionHistory:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCollection];
  v5 = [v4 activeDevice];

  v6 = objc_opt_new();
  v7 = [v5 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
  v8 = [v7 value];

  v9 = [v5 pairingID];
  v10 = [v9 UUIDString];
  v11 = [NSString stringWithFormat:@"%@%@", v10, v8];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 hash]);

  if (v5)
  {
    v13 = [v5 objectForKeyedSubscript:NRDevicePropertySystemBuildVersion];
    v14 = [v13 value];
    [v6 setGizmoBuild:v14];

    v15 = [v5 objectForKeyedSubscript:NRDevicePropertyHWModelString];
    v16 = [v15 value];
    [v6 setGizmoHardware:v16];

    v17 = [v3 deviceCollection];
    v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 count]);
    [v6 setPairedDeviceCount:v18];

    v19 = [v5 objectForKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];
    v20 = [v19 value];
    [v6 setGizmoMaxPairingVersion:v20];

    v21 = [v5 objectForKeyedSubscript:NRDevicePropertyBuildType];
    v22 = [v21 value];
    [v6 setGizmoBuildType:v22];

    v23 = [v5 objectForKeyedSubscript:NRDevicePropertyEnclosureMaterial];
    v24 = [v23 value];
    [v6 setGizmoEnclosureMaterial:v24];

    if (([v5 isAltAccount] & 1) == 0)
    {
      [v6 setMigratingDeviceId:v12];
    }
  }

  if (v3)
  {
    v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 switchIndex]);
    [v6 setSwitchCounter:v25];
  }

  return v6;
}

- (void)setSessionIDFromRemoteDevice:(id)a3
{
  v4 = a3;
  v5 = nr_framework_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session id received from remote device", v8, 2u);
    }
  }

  [(NRRTCMigrationReporter *)self setSessionID:v4];
}

- (void)setSessionID:(id)a3
{
  v4 = a3;
  if (_NRIsInternalInstall())
  {
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setting migration metric session id to %@", &v9, 0xCu);
      }
    }
  }

  v8 = [(NRRTCMigrationReporter *)self migrationReportManager];
  [v8 setSessionID:v4];
}

- (void)_submitRTCMetric
{
  v3 = [(NRRTCMigrationReporter *)self migrationReportManager];
  [v3 submitMetic];

  [(NRRTCMigrationReporter *)self _clearMigrationData];
}

- (void)_clearMigrationData
{
  migrationReportManager = self->_migrationReportManager;
  self->_migrationReportManager = 0;
  _objc_release_x1();
}

- (id)_migrationMetricKeyFromTransactionName:(id)a3
{
  v3 = a3;
  v4 = [v3 substringFromIndex:{objc_msgSend(@"EPSagaTransaction", "length")}];

  v5 = [NSString stringWithFormat:@"%@%@", @"MigrationPhonePhase", v4];

  return v5;
}

@end