@interface NRRTCMigrationReporter
- (BOOL)setCurrentMigrationID:(id)d;
- (NRRTCMigrationReporter)initWithServiceRegistry:(id)registry;
- (id)_deviceDetailsFromCollectionHistory:(id)history;
- (id)_migrationMetricKeyFromTransactionName:(id)name;
- (id)mostRecentError;
- (void)_clearMigrationData;
- (void)_submitRTCMetric;
- (void)addTransactionError:(id)error;
- (void)checkInWithCompletedMigrationTransaction:(id)transaction routingSlipEntry:(id)entry forPairingID:(id)d;
- (void)checkInWithMigrationTransactionRollback:(id)rollback routingSlipEntry:(id)entry forPairingID:(id)d;
- (void)fileEarlyMigrationFailure:(unint64_t)failure withDeviceHistory:(id)history forPairingID:(id)d;
- (void)finishMigrationMetricWithDeviceHistory:(id)history success:(BOOL)success error:(id)error;
- (void)migrationWillBeginOnCompanionForPairingID:(id)d;
- (void)migrationWillBeginOnCompanionForPairingID:(id)d withDeviceHistory:(id)history;
- (void)setSessionID:(id)d;
- (void)setSessionIDFromRemoteDevice:(id)device;
@end

@implementation NRRTCMigrationReporter

- (NRRTCMigrationReporter)initWithServiceRegistry:(id)registry
{
  registryCopy = registry;
  v12.receiver = self;
  v12.super_class = NRRTCMigrationReporter;
  v6 = [(NRRTCMigrationReporter *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.NRMigrationReport", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_serviceRegistry, registry);
    v9 = objc_opt_new();
    transactionErrors = v6->_transactionErrors;
    v6->_transactionErrors = v9;
  }

  return v6;
}

- (void)migrationWillBeginOnCompanionForPairingID:(id)d
{
  if (!self->_migrationReportManager)
  {
    dCopy = d;
    v5 = [[BRRTCMigrationReportManager alloc] initWithPairingID:dCopy];

    migrationReportManager = self->_migrationReportManager;
    self->_migrationReportManager = v5;
  }

  migrationReportManager = [(NRRTCMigrationReporter *)self migrationReportManager];
  [migrationReportManager setMigrationBegan:1];
}

- (void)migrationWillBeginOnCompanionForPairingID:(id)d withDeviceHistory:(id)history
{
  dCopy = d;
  historyCopy = history;
  if (!self->_migrationReportManager)
  {
    v7 = [[BRRTCMigrationReportManager alloc] initWithPairingID:dCopy];
    migrationReportManager = self->_migrationReportManager;
    self->_migrationReportManager = v7;
  }

  deviceCollection = [historyCopy deviceCollection];
  v10 = [deviceCollection objectForKeyedSubscript:dCopy];

  v11 = [v10 objectForKeyedSubscript:NRDevicePropertyLastActiveDate];
  value = [v11 value];

  migrationReportManager = [(NRRTCMigrationReporter *)self migrationReportManager];
  [migrationReportManager setLastActiveDate:value];

  migrationReportManager2 = [(NRRTCMigrationReporter *)self migrationReportManager];
  [migrationReportManager2 setMigrationBegan:1];
}

- (void)finishMigrationMetricWithDeviceHistory:(id)history success:(BOOL)success error:(id)error
{
  historyCopy = history;
  errorCopy = error;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084E34;
  v13[3] = &unk_100175CE0;
  v13[4] = self;
  v14 = historyCopy;
  successCopy = success;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = historyCopy;
  dispatch_async(queue, v13);
}

- (void)checkInWithCompletedMigrationTransaction:(id)transaction routingSlipEntry:(id)entry forPairingID:(id)d
{
  entryCopy = entry;
  dCopy = d;
  transactionCopy = transaction;
  if ([(NRRTCMigrationReporter *)self setCurrentMigrationID:dCopy])
  {
    v11 = sub_1000034AC();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = sub_1000034AC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = dCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "migration device id unexpectedly changed to %@", &v19, 0xCu);
      }
    }
  }

  v14 = NSStringFromClass([entryCopy transactionClass]);
  v15 = [(NRRTCMigrationReporter *)self _migrationMetricKeyFromTransactionName:v14];

  getLastFirstError = [transactionCopy getLastFirstError];

  if (getLastFirstError)
  {
    mostRecentError = [(NRRTCMigrationReporter *)self mostRecentError];
    v18 = [getLastFirstError isEqual:mostRecentError];

    if ((v18 & 1) == 0)
    {
      [(NRRTCMigrationReporter *)self addTransactionError:getLastFirstError];
    }
  }

  else
  {
    v18 = 1;
  }

  [(NRRTCMigrationReporter *)self _checkInWithCompletedMigrationTransaction:v15 withSuccess:v18];
}

- (void)checkInWithMigrationTransactionRollback:(id)rollback routingSlipEntry:(id)entry forPairingID:(id)d
{
  entryCopy = entry;
  dCopy = d;
  if ([(NRRTCMigrationReporter *)self setCurrentMigrationID:dCopy])
  {
    v9 = sub_1000034AC();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000034AC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = dCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "migration device id changed to %@", &v14, 0xCu);
      }
    }
  }

  v12 = NSStringFromClass([entryCopy transactionClass]);
  v13 = [(NRRTCMigrationReporter *)self _migrationMetricKeyFromTransactionName:v12];

  [(NRRTCMigrationReporter *)self _checkInWithCompletedMigrationTransaction:v13 withSuccess:0];
}

- (void)fileEarlyMigrationFailure:(unint64_t)failure withDeviceHistory:(id)history forPairingID:(id)d
{
  historyCopy = history;
  dCopy = d;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100085498;
  v13[3] = &unk_100178570;
  v13[4] = self;
  v14 = dCopy;
  v15 = historyCopy;
  failureCopy = failure;
  v11 = historyCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

- (void)addTransactionError:(id)error
{
  errorCopy = error;
  transactionErrors = [(NRRTCMigrationReporter *)self transactionErrors];
  [transactionErrors addObject:errorCopy];
}

- (id)mostRecentError
{
  transactionErrors = [(NRRTCMigrationReporter *)self transactionErrors];
  lastObject = [transactionErrors lastObject];

  return lastObject;
}

- (BOOL)setCurrentMigrationID:(id)d
{
  dCopy = d;
  currentMigrationPairingID = [(NRRTCMigrationReporter *)self currentMigrationPairingID];
  if (currentMigrationPairingID)
  {

LABEL_5:
    [(NRRTCMigrationReporter *)self setCurrentMigrationPairingID:dCopy];
    v8 = 1;
    goto LABEL_6;
  }

  currentMigrationPairingID2 = [(NRRTCMigrationReporter *)self currentMigrationPairingID];
  v7 = [currentMigrationPairingID2 isEqual:dCopy];

  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)_deviceDetailsFromCollectionHistory:(id)history
{
  historyCopy = history;
  deviceCollection = [historyCopy deviceCollection];
  activeDevice = [deviceCollection activeDevice];

  v6 = objc_opt_new();
  v7 = [activeDevice objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
  value = [v7 value];

  pairingID = [activeDevice pairingID];
  uUIDString = [pairingID UUIDString];
  v11 = [NSString stringWithFormat:@"%@%@", uUIDString, value];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 hash]);

  if (activeDevice)
  {
    v13 = [activeDevice objectForKeyedSubscript:NRDevicePropertySystemBuildVersion];
    value2 = [v13 value];
    [v6 setGizmoBuild:value2];

    v15 = [activeDevice objectForKeyedSubscript:NRDevicePropertyHWModelString];
    value3 = [v15 value];
    [v6 setGizmoHardware:value3];

    deviceCollection2 = [historyCopy deviceCollection];
    v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [deviceCollection2 count]);
    [v6 setPairedDeviceCount:v18];

    v19 = [activeDevice objectForKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];
    value4 = [v19 value];
    [v6 setGizmoMaxPairingVersion:value4];

    v21 = [activeDevice objectForKeyedSubscript:NRDevicePropertyBuildType];
    value5 = [v21 value];
    [v6 setGizmoBuildType:value5];

    v23 = [activeDevice objectForKeyedSubscript:NRDevicePropertyEnclosureMaterial];
    value6 = [v23 value];
    [v6 setGizmoEnclosureMaterial:value6];

    if (([activeDevice isAltAccount] & 1) == 0)
    {
      [v6 setMigratingDeviceId:v12];
    }
  }

  if (historyCopy)
  {
    v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [historyCopy switchIndex]);
    [v6 setSwitchCounter:v25];
  }

  return v6;
}

- (void)setSessionIDFromRemoteDevice:(id)device
{
  deviceCopy = device;
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

  [(NRRTCMigrationReporter *)self setSessionID:deviceCopy];
}

- (void)setSessionID:(id)d
{
  dCopy = d;
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
        v10 = dCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setting migration metric session id to %@", &v9, 0xCu);
      }
    }
  }

  migrationReportManager = [(NRRTCMigrationReporter *)self migrationReportManager];
  [migrationReportManager setSessionID:dCopy];
}

- (void)_submitRTCMetric
{
  migrationReportManager = [(NRRTCMigrationReporter *)self migrationReportManager];
  [migrationReportManager submitMetic];

  [(NRRTCMigrationReporter *)self _clearMigrationData];
}

- (void)_clearMigrationData
{
  migrationReportManager = self->_migrationReportManager;
  self->_migrationReportManager = 0;
  _objc_release_x1();
}

- (id)_migrationMetricKeyFromTransactionName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy substringFromIndex:{objc_msgSend(@"EPSagaTransaction", "length")}];

  v5 = [NSString stringWithFormat:@"%@%@", @"MigrationPhonePhase", v4];

  return v5;
}

@end