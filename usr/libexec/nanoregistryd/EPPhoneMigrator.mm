@interface EPPhoneMigrator
+ (BOOL)_hasMigrationConsent:(id)a3;
+ (id)newService:(id)a3;
- (BOOL)getWatchMigrationCompletionStatusWithError:(id *)a3;
- (EPKeymaster)keymaster;
- (EPPhoneMigrator)initWithServiceRegistry:(id)a3;
- (id)createMigrationReporterWithPairingID:(id)a3;
- (id)registry;
- (void)beginMigrationToDevice:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)beginRTCMigrationMetricCollection:(id)a3;
- (void)clearPairingFlags;
- (void)createMigrationReporterWithoutPairingIDWithCompletion:(id)a3;
- (void)finishMigrationWithRoutingSlip:(id)a3;
- (void)getMigrationPairingCharacteristicReadDataWithCompletion:(id)a3;
- (void)getNonAltAccountMigratableDeviceIDsWithBlock:(id)a3;
- (void)idsAccountPlusDeviceReceivedWithBTID:(id)a3;
- (void)keyTimerTimeout;
- (void)migrationCompletionRequestReceivedWithStatus:(unint64_t)a3;
- (void)migrationMetricSessionIDReceivedWithID:(id)a3;
- (void)notifyWhenIDSPairsWithBlock:(id)a3;
- (void)phoneMigrationCommitted;
- (void)removeNotifyWhenIDSPairsWithBlock:(id)a3;
- (void)respondToChallengeWritesWithSuccess:(BOOL)a3;
- (void)setMigrationConsent:(BOOL)a3 forDeviceID:(id)a4 completion:(id)a5;
- (void)update;
- (void)wipeCharacteristicHandlers;
@end

@implementation EPPhoneMigrator

- (void)update
{
  keyTimer = self->_keyTimer;
  sharedKey = self->_sharedKey;
  if (keyTimer)
  {
    if (!sharedKey)
    {
      v5 = [(EPPhoneMigrator *)self keymaster];
      v6 = [v5 newResourceWithDelegate:self];
      v7 = self->_sharedKey;
      self->_sharedKey = v6;

      sharedKey = self->_sharedKey;
    }

    if ([(EPResource *)sharedKey availability]== 1)
    {
      if (!self->_oobKeyGenerator)
      {
        v8 = [(EPPhoneMigrator *)self factory];
        v9 = [v8 newKeyGeneratorWithDelegate:self];
        oobKeyGenerator = self->_oobKeyGenerator;
        self->_oobKeyGenerator = v9;

        [(EPServiceRegistry *)self->_serviceRegistry addService:self->_oobKeyGenerator];
      }

      v11 = [(EPPhoneMigrator *)self oobKeyGenerator];
      v12 = [v11 availability];

      if (v12 == 1)
      {
        v13 = [(EPPhoneMigrator *)self oobKeyGenerator];
        v14 = [v13 key];

        if (v14)
        {
          v15 = objc_opt_new();
          if ([(EPPhoneMigrator *)self checkIfMigrationIsPossible:v15])
          {
            if (self->_currentChallenge)
            {
              goto LABEL_14;
            }

            v16 = [EPKey randomData:32];
            currentChallenge = self->_currentChallenge;
            self->_currentChallenge = v16;

            if ([(NSData *)self->_currentChallenge length]!= 32)
            {
              v18 = self->_currentChallenge;
              self->_currentChallenge = 0;
            }

            if (self->_currentChallenge)
            {
LABEL_14:
              sub_100105930(v15, v14);
              v19 = [(EPPhoneMigrator *)self currentChallenge];
              sub_100105944(v15, v19);
            }
          }

          v20 = self->_sharedKey;
          v21 = [v15 data];
          v22 = [(EPKey *)v20 encryptPayload:v21];

          if (v22)
          {
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v23 = self->_migrationReadResponseBlocks;
            v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v46 objects:v50 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v47;
              do
              {
                v27 = 0;
                do
                {
                  if (*v47 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  (*(*(*(&v46 + 1) + 8 * v27) + 16))();
                  v27 = v27 + 1;
                }

                while (v25 != v27);
                v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v46 objects:v50 count:16];
              }

              while (v25);
            }

            [(NSMutableArray *)self->_migrationReadResponseBlocks removeAllObjects];
          }

          else
          {
            v31 = sub_1000034AC();
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

            if (v32)
            {
              v33 = sub_1000034AC();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_100103D18(v33);
              }
            }
          }
        }
      }

      else
      {
        v30 = self->_currentChallenge;
        self->_currentChallenge = 0;
      }
    }
  }

  else
  {
    self->_sharedKey = 0;

    [(EPServiceRegistry *)self->_serviceRegistry removeService:self->_oobKeyGenerator];
    v28 = self->_oobKeyGenerator;
    self->_oobKeyGenerator = 0;

    v29 = self->_currentChallenge;
    self->_currentChallenge = 0;

    [(EPPhoneMigrator *)self wipeCharacteristicHandlers];
  }

  if ([(NSMutableArray *)self->_idsAccountPlusDeviceBlocks count]&& self->_propertiesReceivedFlag && self->_propertiesSentFlag && self->_bluetoothUUIDReceivedWithAccountAndDevice)
  {
    v34 = sub_1000034AC();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      v36 = sub_1000034AC();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Migration: Calling blocks to alert of end of pairing", buf, 2u);
      }
    }

    v37 = self->_bluetoothUUIDReceivedWithAccountAndDevice;
    v38 = [(NSMutableArray *)self->_idsAccountPlusDeviceBlocks copy];
    [(NSMutableArray *)self->_idsAccountPlusDeviceBlocks removeAllObjects];
    v39 = [(EPPhoneMigrator *)self queue];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000DC8C4;
    v42[3] = &unk_100175598;
    v43 = v38;
    v44 = v37;
    v40 = v37;
    v41 = v38;
    dispatch_async(v39, v42);
  }
}

- (void)wipeCharacteristicHandlers
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_migrationReadResponseBlocks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_migrationReadResponseBlocks removeAllObjects];
}

+ (id)newService:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithServiceRegistry:v4];

  return v5;
}

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (EPKeymaster)keymaster
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (EPPhoneMigrator)initWithServiceRegistry:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_serviceRegistry, a3);
  v6 = [(EPPhoneMigrator *)self init];
  if (v6)
  {
    [v5 addService:v6];
    v7 = [v5 instantiateServiceByClass:objc_opt_class()];
    v8 = [NSSet setWithObject:@"migrationSaga"];
    [NRPowerAssertionActivity addActivityGroup:v8];

    v9 = +[NSMutableArray array];
    [(EPPhoneMigrator *)v6 setMigrationReadResponseBlocks:v9];

    v10 = +[NSMutableArray array];
    [(EPPhoneMigrator *)v6 setMigrationChallengeResponseBlocks:v10];

    v11 = +[NSMutableArray array];
    [(EPPhoneMigrator *)v6 setIdsAccountPlusDeviceBlocks:v11];
  }

  return v6;
}

- (void)getMigrationPairingCharacteristicReadDataWithCompletion:(id)a3
{
  migrationReadResponseBlocks = self->_migrationReadResponseBlocks;
  v5 = [a3 copy];
  v6 = objc_retainBlock(v5);
  [(NSMutableArray *)migrationReadResponseBlocks addObject:v6];

  [(EPPhoneMigrator *)self update];
}

- (void)keyTimerTimeout
{
  v3 = [(EPPhoneMigrator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DBE4C;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (BOOL)_hasMigrationConsent:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:NRDevicePropertyMigrationConsent];
  v5 = [v4 value];

  if ([v3 isAltAccount] && objc_msgSend(v5, "BOOLValue"))
  {
    v6 = [v3 objectForKeyedSubscript:NRDevicePropertyMigrationConsentDate];
    v7 = [v6 value];

    if (v7)
    {
      [v7 timeIntervalSinceNow];
      v9 = v8 >= -86400.0 && v8 <= 0.0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)respondToChallengeWritesWithSuccess:(BOOL)a3
{
  v3 = a3;
  if (![(NSMutableArray *)self->_migrationChallengeResponseBlocks count])
  {
    return;
  }

  v5 = sub_1000034AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    if (v6)
    {
      v7 = sub_1000034AC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Ready to pair, responding to Challenge write";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else if (v6)
  {
    v7 = sub_1000034AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Migration timed out or was canceled. Responding negatively to challenge write requests.";
      goto LABEL_9;
    }

LABEL_10:
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_migrationChallengeResponseBlocks;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * i) + 16))(*(*(&v14 + 1) + 8 * i));
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_migrationChallengeResponseBlocks removeAllObjects];
}

- (void)setMigrationConsent:(BOOL)a3 forDeviceID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DC24C;
  v13[3] = &unk_100179860;
  v17 = a3;
  v15 = self;
  v16 = v9;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  [v10 grabRegistryWithWriteBlockAsync:v13];
}

- (void)clearPairingFlags
{
  v3 = sub_1000034AC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000034AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing Migration pairing flags", v7, 2u);
    }
  }

  bluetoothUUIDReceivedWithAccountAndDevice = self->_bluetoothUUIDReceivedWithAccountAndDevice;
  self->_bluetoothUUIDReceivedWithAccountAndDevice = 0;

  *&self->_propertiesReceivedFlag = 0;
}

- (void)notifyWhenIDSPairsWithBlock:(id)a3
{
  idsAccountPlusDeviceBlocks = self->_idsAccountPlusDeviceBlocks;
  v5 = objc_retainBlock(a3);
  [(NSMutableArray *)idsAccountPlusDeviceBlocks addObject:v5];

  [(EPPhoneMigrator *)self update];
}

- (void)removeNotifyWhenIDSPairsWithBlock:(id)a3
{
  if (a3)
  {
    idsAccountPlusDeviceBlocks = self->_idsAccountPlusDeviceBlocks;
    v4 = objc_retainBlock(a3);
    [(NSMutableArray *)idsAccountPlusDeviceBlocks removeObject:v4];
  }
}

- (void)idsAccountPlusDeviceReceivedWithBTID:(id)a3
{
  objc_storeStrong(&self->_bluetoothUUIDReceivedWithAccountAndDevice, a3);

  [(EPPhoneMigrator *)self update];
}

- (void)phoneMigrationCommitted
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPPhoneMigrator: phoneMigrationCommitted called, setting status code to NRPairedDeviceRegistryStatusCodeMigrating", v5, 2u);
    }
  }
}

- (void)beginMigrationToDevice:(id)a3 progress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!self->_powerAssertion)
  {
    self->_watchMigrationComplete = 0;
    watchMigrationCompleteError = self->_watchMigrationCompleteError;
    self->_watchMigrationCompleteError = 0;

    v13 = +[NRDataCollector sharedInstance];
    v15 = [v13 incrementCounterForKey:@"migrationAttemptCounter"];
    v16 = [NRPowerAssertionActivity activityWithName:@"migrationSaga"];
    powerAssertion = self->_powerAssertion;
    self->_powerAssertion = v16;

    if (!self->_unlock)
    {
      v18 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      v19 = [v18 newUnlockAssertionWithDelegate:self];
      unlock = self->_unlock;
      self->_unlock = v19;
    }

    pipeManager = self->_pipeManager;
    if (!pipeManager)
    {
      v22 = +[EPScalablePipeManagerManagerFactory sharedPipeManagerManagerFactory];
      v23 = [v22 pipeManagerManagerWithName:@"com.apple.ep" type:1 priority:1];
      v24 = self->_pipeManager;
      self->_pipeManager = v23;

      pipeManager = self->_pipeManager;
    }

    v25 = [(EPScalablePipeManagerManager *)pipeManager newManagerWithDelegate:self];
    pipe = self->_pipe;
    self->_pipe = v25;

    v27 = objc_retainBlock(v11);
    migrationCompletionBlock = self->_migrationCompletionBlock;
    self->_migrationCompletionBlock = v27;

    [(EPPhoneMigrator *)self beginRTCMigrationMetricCollection:v8];
    v29 = [EPRoutingSlipEntry alloc];
    v30 = objc_opt_class();
    v39 = @"nrDeviceIdentifier";
    v31 = [[EPSagaOperandUUID alloc] initWithUUID:v8];
    v40 = v31;
    v32 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v33 = [(EPRoutingSlipEntry *)v29 initWithName:@"phoneMigration" transactionClass:v30 operands:v32];

    v34 = objc_opt_new();
    [v34 setRunningStatusCode:4];
    [v34 setOperationType:@"migration"];
    [v34 setTargetPairingID:v8];
    [v34 setEntry:v33];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000DCDFC;
    v36[3] = &unk_100179888;
    v36[4] = self;
    [v34 setDidEnd:v36];
    v35 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v35 addTransaction:v34];

    goto LABEL_9;
  }

  if (v10)
  {
    v37 = NSLocalizedDescriptionKey;
    v38 = @"Migration attempt while migration already running.";
    v12 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.nanoregistry.EPMigrationAutoTrigger" code:0 userInfo:v12];

    (v11)[2](v11, v13);
LABEL_9:
  }
}

- (void)beginRTCMigrationMetricCollection:(id)a3
{
  v4 = a3;
  v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DCED0;
  v7[3] = &unk_100177F88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 grabHistoryWithReadBlock:v7];
}

- (void)finishMigrationWithRoutingSlip:(id)a3
{
  v4 = a3;
  v5 = [v4 getLastFirstError];
  v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v7 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000DD0D4;
  v18[3] = &unk_1001798B0;
  v8 = v5;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v10 = v4;
  v21 = v10;
  [v6 grabHistoryWithReadBlock:v18];
  migrationCompletionBlock = self->_migrationCompletionBlock;
  if (migrationCompletionBlock)
  {
    migrationCompletionBlock[2](migrationCompletionBlock, v8);
    v12 = self->_migrationCompletionBlock;
    self->_migrationCompletionBlock = 0;
  }

  pipe = self->_pipe;
  self->_pipe = 0;

  pipeManager = self->_pipeManager;
  self->_pipeManager = 0;

  powerAssertion = self->_powerAssertion;
  self->_powerAssertion = 0;

  unlock = self->_unlock;
  self->_unlock = 0;

  sharedKey = self->_sharedKey;
  self->_sharedKey = 0;
}

- (void)migrationCompletionRequestReceivedWithStatus:(unint64_t)a3
{
  if (!self->_watchMigrationComplete)
  {
    self->_watchMigrationComplete = 1;
    if (a3)
    {
      v9 = NSLocalizedDescriptionKey;
      v10 = @"Watch migration failed on watch side";
      v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v5 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionWaitForWatchCompletionErrorDomain" code:1 userInfo:v4];
      watchMigrationCompleteError = self->_watchMigrationCompleteError;
      self->_watchMigrationCompleteError = v5;
    }

    else
    {
      v7 = self->_watchMigrationCompleteError;
      self->_watchMigrationCompleteError = 0;
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"EPSagaTransactionMigrationCompletionRequestNotification" object:0];
  }
}

- (void)migrationMetricSessionIDReceivedWithID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_watchMigrationComplete)
  {
    if (v4)
    {
      v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      [v6 setSessionIDFromRemoteDevice:v5];
    }

    else
    {
      v7 = nr_daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (!v8)
      {
        goto LABEL_5;
      }

      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "nil session id received from watch", v9, 2u);
      }
    }
  }

LABEL_5:
}

- (BOOL)getWatchMigrationCompletionStatusWithError:(id *)a3
{
  if (a3)
  {
    *a3 = self->_watchMigrationCompleteError;
  }

  return self->_watchMigrationComplete;
}

- (void)createMigrationReporterWithoutPairingIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD458;
  v7[3] = &unk_100176928;
  v8 = v4;
  v6 = v4;
  [v5 grabRegistryWithReadBlock:v7];
}

- (id)createMigrationReporterWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  if (!v5)
  {
    v5 = [[NRRTCMigrationReporter alloc] initWithServiceRegistry:self->_serviceRegistry];
    [(EPServiceRegistry *)self->_serviceRegistry addService:v5];
  }

  [(NRRTCMigrationReporter *)v5 setCurrentMigrationID:v4];

  return v5;
}

- (void)getNonAltAccountMigratableDeviceIDsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD61C;
  v7[3] = &unk_1001768D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 grabRegistryWithReadBlock:v7];
}

@end