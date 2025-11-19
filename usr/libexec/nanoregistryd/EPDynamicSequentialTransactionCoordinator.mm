@interface EPDynamicSequentialTransactionCoordinator
+ (id)newService:(id)a3;
- (BOOL)addTransaction:(id)a3;
- (BOOL)hasTransactionType:(id)a3;
- (BOOL)idle;
- (BOOL)isCurrentRunningTransactionOfType:(id)a3;
- (BOOL)saveTransactions;
- (EPDynamicSequentialTransactionCoordinator)initWithServiceRegistry:(id)a3;
- (NSSet)allPairingIDs;
- (NSString)description;
- (NSUUID)activePairedDeviceID;
- (id)cancelAllQueuedOperationsForPairingID:(id)a3 error:(id)a4;
- (id)currentTransactionPairingId;
- (id)dumpRoutingSlipEntryErrors:(id)a3 indent:(int64_t)a4;
- (id)dumpRoutingSlipEntryOperands:(id)a3 indent:(int64_t)a4;
- (id)getResumableForRunningOperationType:(id)a3;
- (void)_updateCollectionCache:(id)a3;
- (void)cancelQueuedOperationType:(id)a3 forPairingID:(id)a4 error:(id)a5;
- (void)cancelWithOperationType:(id)a3 error:(id)a4;
- (void)clearTransactionsWithUserInfo:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)dumpRoutingSlipRecursive:(id)a3 indent:(int64_t)a4;
- (void)dumpTransactionRecursive:(id)a3;
- (void)dumpTransactionsSummary:(id)a3;
- (void)loadTransactions;
- (void)queueResumeCrashMonitoringRequest:(id)a3 forRunningOperationType:(id)a4 completion:(id)a5;
- (void)resume;
- (void)routingSlip:(id)a3 entryDidCompleteRollback:(id)a4;
- (void)routingSlip:(id)a3 entryDidCompleteTransaction:(id)a4;
- (void)routingSlipRequestsArchiving:(id)a3;
- (void)runPendingResumableRequest;
- (void)runTransaction;
- (void)setBusy:(BOOL)a3;
- (void)string:(id)a3 routingSlipEntryErrors:(id)a4 indent:(int64_t)a5;
- (void)string:(id)a3 routingSlipEntryOperands:(id)a4 indent:(int64_t)a5;
- (void)string:(id)a3 routingSlipRecursive:(id)a4 indent:(int64_t)a5;
- (void)string:(id)a3 transactionRecursive:(id)a4;
- (void)string:(id)a3 transactionsSummary:(id)a4;
- (void)suspend;
@end

@implementation EPDynamicSequentialTransactionCoordinator

- (NSUUID)activePairedDeviceID
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100007D58;
  v15 = sub_100007D68;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100008CA8;
  v8 = &unk_1001758D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  v7(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (NSSet)allPairingIDs
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100007D58;
  v15 = sub_100007D68;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100008DEC;
  v8 = &unk_1001758D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  v7(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

+ (id)newService:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithServiceRegistry:v4];

  return v5;
}

- (void)_updateCollectionCache:(id)a3
{
  v4 = a3;
  v5 = [v4 activeDeviceID];
  v6 = [v4 allPairingIDs];

  v7 = [NSSet setWithArray:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008F58;
  v10[3] = &unk_1001758F8;
  v11 = v5;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v5;
  os_unfair_lock_lock_with_options();
  sub_100008F58(v10);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v3 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v3 removeDiffObserver:self->_registryChangeHandler];

  v4.receiver = self;
  v4.super_class = EPDynamicSequentialTransactionCoordinator;
  [(EPDynamicSequentialTransactionCoordinator *)&v4 dealloc];
}

- (EPDynamicSequentialTransactionCoordinator)initWithServiceRegistry:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = EPDynamicSequentialTransactionCoordinator;
  v6 = [(EPDynamicSequentialTransactionCoordinator *)&v24 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_serviceRegistry, a3);
    v8 = [(EPServiceRegistry *)v7->_serviceRegistry serviceFromClass:objc_opt_class()];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100009230;
    v22[3] = &unk_100175920;
    v9 = v7;
    v23 = v9;
    v10 = [v8 addDiffObserverWithWriteBlock:v22];
    registryChangeHandler = v9->_registryChangeHandler;
    v9->_registryChangeHandler = v10;

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100009238;
    v20 = &unk_100175948;
    v12 = v9;
    v21 = v12;
    [v8 grabRegistryWithReadBlockAsync:&v17];
    v13 = [NSSet setWithObject:@"com.apple.NanoRegistry.transactionCoordinator", v17, v18, v19, v20];
    [NRPowerAssertionActivity addActivityGroup:v13];

    v14 = objc_opt_new();
    list = v12->_list;
    v12->_list = v14;

    [(EPDynamicSequentialTransactionCoordinator *)v12 loadTransactions];
    [(EPDynamicSequentialTransactionCoordinator *)v12 setBusy:1];
  }

  return v7;
}

- (BOOL)saveTransactions
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPDTC: Writing transactions", buf, 2u);
    }
  }

  v6 = +[NRDataFilePaths pathToNanoRegistryStateDirectory];
  v7 = +[NSFileManager defaultManager];
  [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  v8 = [objc_opt_class() filename];
  v9 = [v6 stringByAppendingPathComponent:v8];

  list = self->_list;
  v19 = 0;
  v11 = [NSKeyedArchiver archivedDataWithRootObject:list requiringSecureCoding:1 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v18 = v12;
    [v11 writeToFile:v9 options:268435457 error:&v18];
    v14 = v13;
    v13 = v18;
LABEL_10:

    goto LABEL_11;
  }

  v15 = nr_daemon_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

  if (v16)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000FCF28(v13);
    }

    goto LABEL_10;
  }

LABEL_11:

  return v11 != 0;
}

- (void)loadTransactions
{
  v3 = +[NRDataFilePaths pathToNanoRegistryStateDirectory];
  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

  v5 = [objc_opt_class() filename];
  v6 = [v3 stringByAppendingPathComponent:v5];

  v7 = [NSData dataWithContentsOfFile:v6];
  v14 = 0;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = v8;
    p_super = &self->_list->super;
    self->_list = v10;
LABEL_6:

    goto LABEL_7;
  }

  v12 = nr_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

  if (v13)
  {
    p_super = nr_daemon_log();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_1000FCFB8(v9);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)setBusy:(BOOL)a3
{
  if (self->_busy != a3)
  {
    self->_busy = a3;
    if (a3)
    {
      v5 = [NROSTransaction transactionWithName:@"com.apple.NanoRegistry.transactionCoordinator"];
    }

    else
    {
      v5 = 0;
    }

    osTransaction = self->_osTransaction;
    self->_osTransaction = v5;

    _objc_release_x1();
  }
}

- (BOOL)addTransaction:(id)a3
{
  v4 = a3;
  v5 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v6 = [EPDTCOperationPriorityComparator shouldAcceptNewTransaction:v4 intoSet:v5];

  if (v6)
  {
    v7 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    [v7 addObject:v4];

    if ([v4 persistWhilePending])
    {
      [(EPDynamicSequentialTransactionCoordinator *)self saveTransactions];
    }

    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 transactionName];
        v12 = [v4 operationType];
        v13 = [v4 targetPairingID];
        v35 = 138543874;
        v36 = v11;
        v37 = 2114;
        v38 = v12;
        v39 = 2114;
        v40 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPDTC: addTransaction added new transaction %{public}@ type=%{public}@ pairingID=%{public}@", &v35, 0x20u);
      }
    }

    v14 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    v15 = [v14 allObjects];
    [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionsSummary:v15];

    v16 = [(EPDynamicTransactionListContainer *)self->_list current];

    if (!v16)
    {
      [(EPDynamicSequentialTransactionCoordinator *)self runTransaction];
      goto LABEL_21;
    }

    v17 = [(EPDynamicTransactionListContainer *)self->_list current];
    v18 = [(EPDynamicSequentialTransactionCoordinator *)self activePairedDeviceID];
    v19 = [EPDTCOperationPriorityComparator shouldCancelRunningTransaction:v17 newTransaction:v4 pairingID:v18];

    if (v19)
    {
      v20 = nr_daemon_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v22 = nr_daemon_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(EPDynamicTransactionListContainer *)self->_list current];
          v24 = [v23 transactionName];
          v25 = [(EPDynamicTransactionListContainer *)self->_list current];
          v26 = [v25 operationType];
          v27 = [(EPDynamicTransactionListContainer *)self->_list current];
          v28 = [v27 targetPairingID];
          v35 = 138543874;
          v36 = v24;
          v37 = 2114;
          v38 = v26;
          v39 = 2114;
          v40 = v28;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EPDTC: New transaction supersedes running transaction; canceling %{public}@ type=%{public}@ pairingID=%{public}@", &v35, 0x20u);
        }
      }

      v29 = [(EPDynamicTransactionListContainer *)self->_list current];
      v30 = [v29 routingSlip];
      v31 = nrGetPairingError();
      [v30 cancelWithError:v31];

      goto LABEL_18;
    }
  }

  else
  {
    v32 = nr_daemon_log();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

    if (v33)
    {
      v29 = nr_daemon_log();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        goto LABEL_21;
      }

      v30 = [v4 transactionName];
      v35 = 138543362;
      v36 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "EPDTC: addTransaction ignoring new transaction %{public}@", &v35, 0xCu);
LABEL_18:

      goto LABEL_19;
    }
  }

LABEL_21:

  return v6;
}

- (void)cancelWithOperationType:(id)a3 error:(id)a4
{
  v6 = a4;
  list = self->_list;
  v8 = a3;
  v9 = [(EPDynamicTransactionListContainer *)list current];
  v10 = [v9 operationType];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = [(EPDynamicTransactionListContainer *)self->_list current];
    v13 = [v12 routingSlip];
    v14 = [v13 currentEntry];
    v15 = [v14 canceled];

    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!v15)
    {
      if (v17)
      {
        v19 = nr_daemon_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138543362;
          v22 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "EPDTC: cancel requested with error %{public}@", &v21, 0xCu);
        }
      }

      v18 = [(EPDynamicTransactionListContainer *)self->_list current];
      v20 = [v18 routingSlip];
      [v20 cancelWithError:v6];

      goto LABEL_11;
    }

    if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPDTC: transaction already canceled", &v21, 2u);
      }

LABEL_11:
    }
  }
}

- (void)cancelQueuedOperationType:(id)a3 forPairingID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v27 = a5;
  context = objc_autoreleasePoolPush();
  v26 = self;
  v10 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v11 = [v10 copy];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 targetPairingID];
        if ([v18 isEqual:v9])
        {
          v19 = [v17 operationType];
          v20 = [v19 isEqualToString:v8];

          if (!v20)
          {
            continue;
          }

          v21 = nr_daemon_log();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

          if (v22)
          {
            v23 = nr_daemon_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v33 = v9;
              v34 = 2112;
              v35 = v8;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found transaction matching (pairingID: %@; type: %@)", buf, 0x16u);
            }
          }

          v24 = [v17 routingSlip];
          [v24 cancelWithError:v27];

          v18 = [(EPDynamicTransactionListContainer *)v26->_list transactions];
          [v18 removeObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
}

- (id)cancelAllQueuedOperationsForPairingID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26 = objc_alloc_init(NSMutableArray);
  context = objc_autoreleasePoolPush();
  v8 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v9 = [v8 copy];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 targetPairingID];
        v17 = [v16 isEqual:v6];

        if (v17)
        {
          v18 = nr_daemon_log();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

          if (v19)
          {
            v20 = nr_daemon_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v15 operationType];
              *buf = 136315650;
              v32 = "[EPDynamicSequentialTransactionCoordinator cancelAllQueuedOperationsForPairingID:error:]";
              v33 = 2112;
              v34 = v6;
              v35 = 2112;
              v36 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Found transaction matching (pairingID: %@; type: %@). Canceling it.", buf, 0x20u);
            }
          }

          v22 = [v15 routingSlip];
          [v22 cancelWithError:v7];

          [v26 addObject:v15];
          v23 = [(EPDynamicTransactionListContainer *)self->_list transactions];
          [v23 removeObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);

  return v26;
}

- (id)getResumableForRunningOperationType:(id)a3
{
  list = self->_list;
  v5 = a3;
  v6 = [(EPDynamicTransactionListContainer *)list current];
  v7 = [v6 operationType];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [(EPDynamicTransactionListContainer *)self->_list current];
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 resumeEnabled]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dumpTransactionsSummary:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * i) transactionName];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"nil transaction name";
        }

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  v14 = nr_daemon_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = nr_daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(EPDynamicTransactionListContainer *)self->_list current];
      v18 = [v17 transactionName];
      v19 = [v5 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPDTC summary: Running: %@, Pending: %@", buf, 0x16u);
    }
  }
}

- (void)dumpTransactionRecursive:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 operationType];
      v9 = [v4 targetPairingID];
      v10 = [v9 UUIDString];
      if ([v4 persistWhilePending])
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      if ([v4 notUnrollable])
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      *v15 = 138413314;
      if ([v4 resumeEnabled])
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      *&v15[4] = v8;
      v16 = 2112;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 2080;
      v21 = v12;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPDTC dump: EPDynamicTransactionContainer type %@ targeting %@ persistWhilePending=%s notUnrollable=%s resumable=%s", v15, 0x34u);
    }
  }

  v14 = [v4 routingSlip];
  [(EPDynamicSequentialTransactionCoordinator *)self dumpRoutingSlipRecursive:v14 indent:0];
}

- (void)dumpRoutingSlipRecursive:(id)a3 indent:(int64_t)a4
{
  v6 = a3;
  v24 = [&stru_10017A258 stringByPaddingToLength:4 * a4 withString:@" " startingAtIndex:0];
  v7 = [v6 entries];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = objc_opt_new();
      v12 = [v6 entries];
      v13 = [v12 objectAtIndexedSubscript:v9];

      if (v9 != [v6 transactionIndex] || (v14 = @"EPDTC dump: %@*%@\n", objc_msgSend(v6, "state") != 1))
      {
        v14 = @"EPDTC dump: %@ %@\n";
      }

      v15 = [v13 shortDescription];
      [v11 appendFormat:v14, v24, v15];

      v16 = [(EPDynamicSequentialTransactionCoordinator *)self dumpRoutingSlipEntryOperands:v13 indent:a4];
      [v11 appendFormat:@"%@\n", v16];

      v17 = [(EPDynamicSequentialTransactionCoordinator *)self dumpRoutingSlipEntryErrors:v13 indent:a4];
      [v11 appendFormat:@"%@\n", v17];

      v18 = nr_daemon_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = nr_daemon_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = v11;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      if ([objc_msgSend(v13 "transactionClass")])
      {
        v21 = [v13 objectForKeyedSubscript:@"routingSlip"];
        [(EPDynamicSequentialTransactionCoordinator *)self dumpRoutingSlipRecursive:v21 indent:a4 + 1];
      }

      objc_autoreleasePoolPop(v10);
      ++v9;
      v22 = [v6 entries];
      v23 = [v22 count];
    }

    while (v9 < v23);
  }
}

- (id)dumpRoutingSlipEntryOperands:(id)a3 indent:(int64_t)a4
{
  v5 = a3;
  v23 = objc_opt_new();
  v6 = [&stru_10017A258 stringByPaddingToLength:4 * a4 withString:@" " startingAtIndex:0];
  v22 = [v6 stringByAppendingString:@"    operand: "];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  obj = [v5 operands];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v7 operands];
        v15 = [v14 objectForKeyedSubscript:v12];

        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [v15 value];
        v19 = [v18 description];
        [v23 appendFormat:@"%@%@ = %@[%@]\n", v22, v12, v17, v19];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  return v23;
}

- (id)dumpRoutingSlipEntryErrors:(id)a3 indent:(int64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [&stru_10017A258 stringByPaddingToLength:4 * a4 withString:@" " startingAtIndex:0];
  v8 = [v7 stringByAppendingString:@"    error  : "];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = v5;
  obj = [v5 errors];
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 userInfo];

        v16 = [v13 domain];
        v17 = [v13 code];
        v18 = v17;
        if (v15)
        {
          v19 = [v13 userInfo];
          [v6 appendFormat:@"%@%@:%ld userInfo=%@\n", v8, v16, v18, v19];
        }

        else
        {
          [v6 appendFormat:@"dump: %@%@:%ld\n", v8, v16, v17];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)hasTransactionType:(id)a3
{
  v4 = a3;
  v5 = [(EPDynamicTransactionListContainer *)self->_list current];
  v6 = [v5 operationType];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    v8 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) operationType];
          v13 = [v4 isEqual:v12];

          if (v13)
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v8;
}

- (BOOL)isCurrentRunningTransactionOfType:(id)a3
{
  list = self->_list;
  v4 = a3;
  v5 = [(EPDynamicTransactionListContainer *)list current];
  v6 = [v5 operationType];
  v7 = [v4 isEqual:v6];

  return v7;
}

- (id)currentTransactionPairingId
{
  v2 = [(EPDynamicTransactionListContainer *)self->_list current];
  v3 = [v2 targetPairingID];

  return v3;
}

- (void)clearTransactionsWithUserInfo:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPDTC: clearTransactionsWithUserInfo:error: %{public}@", buf, 0xCu);
    }
  }

  v40 = v7;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v12 = [v11 copy];

  v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = [v17 userInfo];
        if (v18 != v6)
        {
          goto LABEL_11;
        }

        v19 = [v17 routingSlip];
        v20 = [v19 persistWhilePending];

        if ((v20 & 1) == 0)
        {
          v21 = [(EPDynamicTransactionListContainer *)self->_list transactions];
          [v21 removeObject:v17];

          v22 = [v17 willBegin];

          if (v22)
          {
            v23 = [v17 willBegin];
            v23[2](v23, 0);
          }

          v24 = [v17 didEnd];

          if (v24)
          {
            v25 = [v17 didEnd];
            v25[2](v25, 0);
          }

          v26 = nr_daemon_log();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

          if (v27)
          {
            v18 = nr_daemon_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v17 transactionName];
              *buf = 138543362;
              v47 = v28;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPDTC: Removing pending transaction %{public}@", buf, 0xCu);
            }

LABEL_11:

            continue;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  v29 = [(EPDynamicTransactionListContainer *)self->_list current];
  v30 = [v29 userInfo];
  if (v30 != v6)
  {
    v31 = v40;
LABEL_30:

    goto LABEL_31;
  }

  v32 = [(EPDynamicTransactionListContainer *)self->_list current];
  v33 = [v32 routingSlip];
  v34 = [v33 persistWhilePending];

  v31 = v40;
  if ((v34 & 1) == 0)
  {
    v35 = nr_daemon_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v37 = nr_daemon_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(EPDynamicTransactionListContainer *)self->_list current];
        v39 = [v38 transactionName];
        *buf = 138543362;
        v47 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "EPDTC: Canceling running transaction %{public}@", buf, 0xCu);
      }
    }

    v29 = [(EPDynamicTransactionListContainer *)self->_list current];
    v30 = [v29 routingSlip];
    [v30 cancelWithError:v40];
    goto LABEL_30;
  }

LABEL_31:
}

- (void)runTransaction
{
  if (!self->_running)
  {
    return;
  }

  if (!self->_firstResumeCompleted)
  {
    p_list = &self->_list;
    v4 = [(EPDynamicTransactionListContainer *)self->_list current];

    if (v4)
    {
      self->_firstResumeCompleted = 1;
      v5 = [(EPDynamicTransactionListContainer *)self->_list current];

      if (!v5)
      {
        return;
      }

      v6 = [(EPDynamicTransactionListContainer *)*p_list current];
      v7 = [v6 routingSlip];
      v8 = [v7 state];

      if (!v8)
      {
        v9 = nr_daemon_log();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

        if (v10)
        {
          v11 = nr_daemon_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_1000FD048(&self->_list);
          }
        }
      }

      v12 = nr_daemon_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = nr_daemon_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPDTC: Launching- dumping all pending persistent transactions", buf, 2u);
        }
      }

      v15 = [(EPDynamicTransactionListContainer *)self->_list transactions];
      v16 = [(EPDynamicSequentialTransactionCoordinator *)self activePairedDeviceID];
      v17 = [EPDTCOperationPriorityComparator sortedTransactionsWithSet:v15 pairingID:v16];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v50;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionRecursive:*(*(&v49 + 1) + 8 * i), v49];
          }

          v20 = [v18 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v20);
      }

      [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionsSummary:v18];
      v23 = nr_daemon_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        if (v24)
        {
          v25 = nr_daemon_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v26 = "EPDTC: Dump complete! Possibly starting rollback!";
LABEL_44:
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
            goto LABEL_45;
          }

          goto LABEL_45;
        }
      }

      else if (v24)
      {
        v25 = nr_daemon_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v26 = "EPDTC: Dump complete!";
          goto LABEL_44;
        }

LABEL_45:
      }

      v45 = [(EPDynamicTransactionListContainer *)self->_list current];
      [(EPDynamicSequentialTransactionCoordinator *)self startTransaction:v45 rollback:1];

      return;
    }
  }

  v27 = [(EPDynamicTransactionListContainer *)self->_list current];

  self->_firstResumeCompleted = 1;
  if (v27)
  {
    goto LABEL_26;
  }

  v28 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v29 = [v28 count];

  if (!v29)
  {
    [(EPDynamicSequentialTransactionCoordinator *)self startTransaction:0 rollback:0];
LABEL_26:

    [(EPDynamicSequentialTransactionCoordinator *)self runPendingResumableRequest];
    return;
  }

  v30 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v31 = [(EPDynamicSequentialTransactionCoordinator *)self activePairedDeviceID];
  v32 = [EPDTCOperationPriorityComparator sortedTransactionsWithSet:v30 pairingID:v31];

  [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionsSummary:v32];
  v33 = [v32 firstObject];
  if (v33)
  {
    v34 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    [v34 removeObject:v33];

    v35 = [v33 targetPairingID];
    if (!v35)
    {
      goto LABEL_33;
    }

    v36 = v35;
    v37 = [(EPDynamicSequentialTransactionCoordinator *)self allPairingIDs];
    v38 = [v33 targetPairingID];
    v39 = [v37 containsObject:v38];

    if (!v39)
    {
      v46 = nr_daemon_log();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

      if (v47)
      {
        v48 = nr_daemon_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD0DC(v33);
        }
      }

      [(EPDynamicSequentialTransactionCoordinator *)self runTransaction];
    }

    else
    {
LABEL_33:
      [(EPDynamicTransactionListContainer *)self->_list setCurrent:v33];
      [(EPDynamicSequentialTransactionCoordinator *)self saveTransactions];
      v40 = nr_daemon_log();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

      if (v41)
      {
        v42 = nr_daemon_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "EPDTC: Starting new transaction.", buf, 2u);
        }
      }

      v43 = [v33 transactionStartTimestamp];

      if (!v43)
      {
        v44 = objc_opt_new();
        [v33 setTransactionStartTimestamp:v44];
      }

      [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionRecursive:v33];
      [(EPDynamicSequentialTransactionCoordinator *)self startTransaction:v33 rollback:0];
    }
  }
}

- (void)queueResumeCrashMonitoringRequest:(id)a3 forRunningOperationType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      firstResumeCompleted = self->_firstResumeCompleted;
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = firstResumeCompleted;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPDTC: _firstResumeCompleted: %d - queueing resume crash monitoring request", &buf, 8u);
    }
  }

  if (self->_firstResumeCompleted)
  {
    v15 = [(EPDynamicSequentialTransactionCoordinator *)self requestSetResumable:0 userInfo:v8 forRunningOperationType:v9];
    if (v10)
    {
      v10[2](v10, v15);
    }
  }

  else
  {
    objc_initWeak(&buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000BF34;
    v18[3] = &unk_100175970;
    objc_copyWeak(&v22, &buf);
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v16 = objc_retainBlock(v18);
    pendingSetResumableNoRequest = self->_pendingSetResumableNoRequest;
    self->_pendingSetResumableNoRequest = v16;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&buf);
  }
}

- (void)runPendingResumableRequest
{
  pendingSetResumableNoRequest = self->_pendingSetResumableNoRequest;
  if (pendingSetResumableNoRequest)
  {
    pendingSetResumableNoRequest[2](pendingSetResumableNoRequest, a2);
    v4 = self->_pendingSetResumableNoRequest;
    self->_pendingSetResumableNoRequest = 0;
  }
}

- (BOOL)idle
{
  v3 = [(EPDynamicTransactionListContainer *)self->_list current];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (void)suspend
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPDTC: Suspended", v6, 2u);
    }
  }

  self->_running = 0;
}

- (void)resume
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPDTC: Resumed", v10, 2u);
    }
  }

  self->_running = 1;
  v6 = [(EPDynamicTransactionListContainer *)self->_list current];
  if (!v6)
  {
    v8 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    if ([v8 count])
    {
    }

    else
    {
      firstResumeCompleted = self->_firstResumeCompleted;

      if (firstResumeCompleted)
      {
        return;
      }
    }

    goto LABEL_11;
  }

  v7 = self->_firstResumeCompleted;

  if (!v7)
  {
LABEL_11:
    [(EPDynamicSequentialTransactionCoordinator *)self runTransaction];
  }
}

- (void)routingSlip:(id)a3 entryDidCompleteRollback:(id)a4
{
  v5 = a4;
  v6 = sub_1000034AC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000034AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 name];
      v10 = [(EPDynamicTransactionListContainer *)self->_list current];
      v11 = [v10 transactionName];
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPDTC: Transaction %{public}@ rolled back in transaction %{public}@", &v12, 0x16u);
    }
  }
}

- (void)routingSlip:(id)a3 entryDidCompleteTransaction:(id)a4
{
  v5 = a4;
  v6 = sub_1000034AC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000034AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 name];
      v10 = [(EPDynamicTransactionListContainer *)self->_list current];
      v11 = [v10 transactionName];
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPDTC: Transaction %{public}@ completed in transaction %{public}@", &v12, 0x16u);
    }
  }
}

- (void)routingSlipRequestsArchiving:(id)a3
{
  v4 = a3;
  v5 = [(EPDynamicTransactionListContainer *)self->_list current];
  v6 = [v5 routingSlip];
  v7 = v6;
  if (v6 != v4)
  {

LABEL_11:
    [(EPDynamicSequentialTransactionCoordinator *)self saveTransactions];
    goto LABEL_12;
  }

  v8 = [v4 state];

  if (v8 != 2)
  {
    goto LABEL_11;
  }

  v9 = sub_1000034AC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = sub_1000034AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(EPDynamicTransactionListContainer *)self->_list current];
      v13 = [v12 transactionName];
      v23 = 138543362;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPDTC: Transaction %{public}@ completed", &v23, 0xCu);
    }
  }

  v14 = [(EPDynamicTransactionListContainer *)self->_list current];
  [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionRecursive:v14];

  v15 = [(EPDynamicTransactionListContainer *)self->_list current];
  v16 = [v15 didEnd];

  if (v16)
  {
    v17 = [(EPDynamicTransactionListContainer *)self->_list current];
    v18 = [v17 didEnd];
    v19 = [(EPDynamicTransactionListContainer *)self->_list current];
    v20 = [v19 routingSlip];
    (v18)[2](v18, v20);
  }

  v21 = [(EPDynamicTransactionListContainer *)self->_list current];
  v22 = [v21 routingSlip];
  [v22 invalidate];

  [(EPDynamicTransactionListContainer *)self->_list setCurrent:0];
  [(EPDynamicSequentialTransactionCoordinator *)self saveTransactions];
  [(EPDynamicSequentialTransactionCoordinator *)self runTransaction];
LABEL_12:
}

- (void)string:(id)a3 transactionsSummary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) transactionName];
        [v8 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(EPDynamicTransactionListContainer *)self->_list current];
  v16 = [v15 transactionName];
  v17 = [v8 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"EPDTC dump: Transaction summary Running: %@, Pending: %@\n", v16, v17, v18];
}

- (void)string:(id)a3 transactionRecursive:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v6 operationType];
  v8 = [v6 targetPairingID];
  v9 = [v8 UUIDString];
  if ([v6 persistWhilePending])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if ([v6 notUnrollable])
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if ([v6 resumeEnabled])
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  [v15 appendFormat:@"EPDTC dump: EPDynamicTransactionContainer type %@ targeting %@ persistWhilePending=%s notUnrollable=%s resumable=%s\n", v7, v9, v10, v11, v12];

  v13 = [v6 routingSlip];
  v14 = objc_autoreleasePoolPush();
  [(EPDynamicSequentialTransactionCoordinator *)self string:v15 routingSlipRecursive:v13 indent:0];
  objc_autoreleasePoolPop(v14);
}

- (void)string:(id)a3 routingSlipRecursive:(id)a4 indent:(int64_t)a5
{
  v25 = a3;
  v8 = a4;
  v9 = [&stru_10017A258 stringByPaddingToLength:4 * a5 withString:@" " startingAtIndex:0];
  if ([v8 state] == 1)
  {
    v10 = [v8 currentEntry];
    v11 = NSStringFromClass([v10 transactionClass]);
    v12 = [v8 currentEntry];
    v13 = [v12 name];
    [v25 appendFormat:@"EPDTC dump: %@Routing Slip with active transaction %@[%@]:\n", v9, v11, v13];
  }

  else
  {
    [v25 appendFormat:@"EPDTC dump: %@Routing Slip:\n", v9];
  }

  v14 = [v8 entries];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [v8 entries];
      v18 = [v17 objectAtIndexedSubscript:v16];

      v19 = objc_autoreleasePoolPush();
      if (v16 != [v8 transactionIndex] || (v20 = @"EPDTC dump: %@*%@\n", objc_msgSend(v8, "state") != 1))
      {
        v20 = @"EPDTC dump: %@ %@\n";
      }

      v21 = [v18 shortDescription];
      [v25 appendFormat:v20, v9, v21];

      [(EPDynamicSequentialTransactionCoordinator *)self string:v25 routingSlipEntryOperands:v18 indent:a5];
      [(EPDynamicSequentialTransactionCoordinator *)self string:v25 routingSlipEntryErrors:v18 indent:a5];
      if ([objc_msgSend(v18 "transactionClass")])
      {
        v22 = [v18 objectForKeyedSubscript:@"routingSlip"];
        [(EPDynamicSequentialTransactionCoordinator *)self string:v25 routingSlipRecursive:v22 indent:a5 + 1];
      }

      objc_autoreleasePoolPop(v19);

      ++v16;
      v23 = [v8 entries];
      v24 = [v23 count];
    }

    while (v16 < v24);
  }
}

- (void)string:(id)a3 routingSlipEntryOperands:(id)a4 indent:(int64_t)a5
{
  v24 = a3;
  v7 = a4;
  v8 = [&stru_10017A258 stringByPaddingToLength:4 * a5 withString:@" " startingAtIndex:0];
  v23 = [v8 stringByAppendingString:@"    operand: "];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  obj = [v7 operands];
  v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [v9 operands];
        v17 = [v16 objectForKeyedSubscript:v14];

        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v17 value];
        v21 = [v20 description];
        [v24 appendFormat:@"EPDTC dump: %@%@ = %@[%@]\n", v23, v14, v19, v21];

        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)string:(id)a3 routingSlipEntryErrors:(id)a4 indent:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [&stru_10017A258 stringByPaddingToLength:4 * a5 withString:@" " startingAtIndex:0];
  v10 = [v9 stringByAppendingString:@"    error  : "];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = v8;
  v11 = [v8 errors];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 userInfo];

        v18 = [v16 domain];
        v19 = [v16 code];
        v20 = v19;
        if (v17)
        {
          v21 = [v16 userInfo];
          [v7 appendFormat:@"EPDTC dump: %@%@:%ld userInfo=%@\n", v10, v18, v20, v21];
        }

        else
        {
          [v7 appendFormat:@"EPDTC dump: %@%@:%ld\n", v10, v18, v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (NSString)description
{
  v3 = +[NSMutableString string];
  v4 = objc_autoreleasePoolPush();
  v5 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v6 = [v5 allObjects];
  [(EPDynamicSequentialTransactionCoordinator *)self string:v3 transactionsSummary:v6];

  objc_autoreleasePoolPop(v4);
  v7 = objc_autoreleasePoolPush();
  v8 = [(EPDynamicTransactionListContainer *)self->_list current];

  if (v8)
  {
    v9 = [(EPDynamicTransactionListContainer *)self->_list current];
    v10 = [v9 routingSlip];
    v11 = sub_1000FCB54([v10 state]);

    [v3 appendFormat:@"EPDTC dump: Currently running transaction %@\n", v11];
    v12 = [(EPDynamicTransactionListContainer *)self->_list current];
    [(EPDynamicSequentialTransactionCoordinator *)self string:v3 transactionRecursive:v12];
  }

  else
  {
    [v3 appendFormat:@"EPDTC dump: Currently running transaction: None\n"];
  }

  objc_autoreleasePoolPop(v7);
  [v3 appendFormat:@"EPDTC dump: Enqueued transactions\n"];
  v13 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v14 = [(EPDynamicSequentialTransactionCoordinator *)self activePairedDeviceID];
  v15 = [EPDTCOperationPriorityComparator sortedTransactionsWithSet:v13 pairingID:v14];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        [(EPDynamicSequentialTransactionCoordinator *)self string:v3 transactionRecursive:v21];
        objc_autoreleasePoolPop(v22);
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  return v3;
}

@end