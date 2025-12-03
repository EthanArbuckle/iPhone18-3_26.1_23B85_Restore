@interface EPDynamicSequentialTransactionCoordinator
+ (id)newService:(id)service;
- (BOOL)addTransaction:(id)transaction;
- (BOOL)hasTransactionType:(id)type;
- (BOOL)idle;
- (BOOL)isCurrentRunningTransactionOfType:(id)type;
- (BOOL)saveTransactions;
- (EPDynamicSequentialTransactionCoordinator)initWithServiceRegistry:(id)registry;
- (NSSet)allPairingIDs;
- (NSString)description;
- (NSUUID)activePairedDeviceID;
- (id)cancelAllQueuedOperationsForPairingID:(id)d error:(id)error;
- (id)currentTransactionPairingId;
- (id)dumpRoutingSlipEntryErrors:(id)errors indent:(int64_t)indent;
- (id)dumpRoutingSlipEntryOperands:(id)operands indent:(int64_t)indent;
- (id)getResumableForRunningOperationType:(id)type;
- (void)_updateCollectionCache:(id)cache;
- (void)cancelQueuedOperationType:(id)type forPairingID:(id)d error:(id)error;
- (void)cancelWithOperationType:(id)type error:(id)error;
- (void)clearTransactionsWithUserInfo:(id)info error:(id)error;
- (void)dealloc;
- (void)dumpRoutingSlipRecursive:(id)recursive indent:(int64_t)indent;
- (void)dumpTransactionRecursive:(id)recursive;
- (void)dumpTransactionsSummary:(id)summary;
- (void)loadTransactions;
- (void)queueResumeCrashMonitoringRequest:(id)request forRunningOperationType:(id)type completion:(id)completion;
- (void)resume;
- (void)routingSlip:(id)slip entryDidCompleteRollback:(id)rollback;
- (void)routingSlip:(id)slip entryDidCompleteTransaction:(id)transaction;
- (void)routingSlipRequestsArchiving:(id)archiving;
- (void)runPendingResumableRequest;
- (void)runTransaction;
- (void)setBusy:(BOOL)busy;
- (void)string:(id)string routingSlipEntryErrors:(id)errors indent:(int64_t)indent;
- (void)string:(id)string routingSlipEntryOperands:(id)operands indent:(int64_t)indent;
- (void)string:(id)string routingSlipRecursive:(id)recursive indent:(int64_t)indent;
- (void)string:(id)string transactionRecursive:(id)recursive;
- (void)string:(id)string transactionsSummary:(id)summary;
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
  selfCopy = self;
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
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  v7(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

+ (id)newService:(id)service
{
  serviceCopy = service;
  v5 = [[self alloc] initWithServiceRegistry:serviceCopy];

  return v5;
}

- (void)_updateCollectionCache:(id)cache
{
  cacheCopy = cache;
  activeDeviceID = [cacheCopy activeDeviceID];
  allPairingIDs = [cacheCopy allPairingIDs];

  v7 = [NSSet setWithArray:allPairingIDs];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008F58;
  v10[3] = &unk_1001758F8;
  v11 = activeDeviceID;
  selfCopy = self;
  v13 = v7;
  v8 = v7;
  v9 = activeDeviceID;
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

- (EPDynamicSequentialTransactionCoordinator)initWithServiceRegistry:(id)registry
{
  registryCopy = registry;
  v24.receiver = self;
  v24.super_class = EPDynamicSequentialTransactionCoordinator;
  v6 = [(EPDynamicSequentialTransactionCoordinator *)&v24 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_serviceRegistry, registry);
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

  filename = [objc_opt_class() filename];
  v9 = [v6 stringByAppendingPathComponent:filename];

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

  filename = [objc_opt_class() filename];
  v6 = [v3 stringByAppendingPathComponent:filename];

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

- (void)setBusy:(BOOL)busy
{
  if (self->_busy != busy)
  {
    self->_busy = busy;
    if (busy)
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

- (BOOL)addTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v6 = [EPDTCOperationPriorityComparator shouldAcceptNewTransaction:transactionCopy intoSet:transactions];

  if (v6)
  {
    transactions2 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    [transactions2 addObject:transactionCopy];

    if ([transactionCopy persistWhilePending])
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
        transactionName = [transactionCopy transactionName];
        operationType = [transactionCopy operationType];
        targetPairingID = [transactionCopy targetPairingID];
        v35 = 138543874;
        v36 = transactionName;
        v37 = 2114;
        v38 = operationType;
        v39 = 2114;
        v40 = targetPairingID;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPDTC: addTransaction added new transaction %{public}@ type=%{public}@ pairingID=%{public}@", &v35, 0x20u);
      }
    }

    transactions3 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    allObjects = [transactions3 allObjects];
    [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionsSummary:allObjects];

    current = [(EPDynamicTransactionListContainer *)self->_list current];

    if (!current)
    {
      [(EPDynamicSequentialTransactionCoordinator *)self runTransaction];
      goto LABEL_21;
    }

    current2 = [(EPDynamicTransactionListContainer *)self->_list current];
    activePairedDeviceID = [(EPDynamicSequentialTransactionCoordinator *)self activePairedDeviceID];
    v19 = [EPDTCOperationPriorityComparator shouldCancelRunningTransaction:current2 newTransaction:transactionCopy pairingID:activePairedDeviceID];

    if (v19)
    {
      v20 = nr_daemon_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v22 = nr_daemon_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          current3 = [(EPDynamicTransactionListContainer *)self->_list current];
          transactionName2 = [current3 transactionName];
          current4 = [(EPDynamicTransactionListContainer *)self->_list current];
          operationType2 = [current4 operationType];
          current5 = [(EPDynamicTransactionListContainer *)self->_list current];
          targetPairingID2 = [current5 targetPairingID];
          v35 = 138543874;
          v36 = transactionName2;
          v37 = 2114;
          v38 = operationType2;
          v39 = 2114;
          v40 = targetPairingID2;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EPDTC: New transaction supersedes running transaction; canceling %{public}@ type=%{public}@ pairingID=%{public}@", &v35, 0x20u);
        }
      }

      current6 = [(EPDynamicTransactionListContainer *)self->_list current];
      routingSlip = [current6 routingSlip];
      v31 = nrGetPairingError();
      [routingSlip cancelWithError:v31];

      goto LABEL_18;
    }
  }

  else
  {
    v32 = nr_daemon_log();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

    if (v33)
    {
      current6 = nr_daemon_log();
      if (!os_log_type_enabled(current6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        goto LABEL_21;
      }

      routingSlip = [transactionCopy transactionName];
      v35 = 138543362;
      v36 = routingSlip;
      _os_log_impl(&_mh_execute_header, current6, OS_LOG_TYPE_DEFAULT, "EPDTC: addTransaction ignoring new transaction %{public}@", &v35, 0xCu);
LABEL_18:

      goto LABEL_19;
    }
  }

LABEL_21:

  return v6;
}

- (void)cancelWithOperationType:(id)type error:(id)error
{
  errorCopy = error;
  list = self->_list;
  typeCopy = type;
  current = [(EPDynamicTransactionListContainer *)list current];
  operationType = [current operationType];
  v11 = [typeCopy isEqual:operationType];

  if (v11)
  {
    current2 = [(EPDynamicTransactionListContainer *)self->_list current];
    routingSlip = [current2 routingSlip];
    currentEntry = [routingSlip currentEntry];
    canceled = [currentEntry canceled];

    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!canceled)
    {
      if (v17)
      {
        v19 = nr_daemon_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138543362;
          v22 = errorCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "EPDTC: cancel requested with error %{public}@", &v21, 0xCu);
        }
      }

      current3 = [(EPDynamicTransactionListContainer *)self->_list current];
      routingSlip2 = [current3 routingSlip];
      [routingSlip2 cancelWithError:errorCopy];

      goto LABEL_11;
    }

    if (v17)
    {
      current3 = nr_daemon_log();
      if (os_log_type_enabled(current3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, current3, OS_LOG_TYPE_DEFAULT, "EPDTC: transaction already canceled", &v21, 2u);
      }

LABEL_11:
    }
  }
}

- (void)cancelQueuedOperationType:(id)type forPairingID:(id)d error:(id)error
{
  typeCopy = type;
  dCopy = d;
  errorCopy = error;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v11 = [transactions copy];

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
        targetPairingID = [v17 targetPairingID];
        if ([targetPairingID isEqual:dCopy])
        {
          operationType = [v17 operationType];
          v20 = [operationType isEqualToString:typeCopy];

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
              v33 = dCopy;
              v34 = 2112;
              v35 = typeCopy;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found transaction matching (pairingID: %@; type: %@)", buf, 0x16u);
            }
          }

          routingSlip = [v17 routingSlip];
          [routingSlip cancelWithError:errorCopy];

          targetPairingID = [(EPDynamicTransactionListContainer *)selfCopy->_list transactions];
          [targetPairingID removeObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
}

- (id)cancelAllQueuedOperationsForPairingID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  v26 = objc_alloc_init(NSMutableArray);
  context = objc_autoreleasePoolPush();
  transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v9 = [transactions copy];

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
        targetPairingID = [v15 targetPairingID];
        v17 = [targetPairingID isEqual:dCopy];

        if (v17)
        {
          v18 = nr_daemon_log();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

          if (v19)
          {
            v20 = nr_daemon_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              operationType = [v15 operationType];
              *buf = 136315650;
              v32 = "[EPDynamicSequentialTransactionCoordinator cancelAllQueuedOperationsForPairingID:error:]";
              v33 = 2112;
              v34 = dCopy;
              v35 = 2112;
              v36 = operationType;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Found transaction matching (pairingID: %@; type: %@). Canceling it.", buf, 0x20u);
            }
          }

          routingSlip = [v15 routingSlip];
          [routingSlip cancelWithError:errorCopy];

          [v26 addObject:v15];
          transactions2 = [(EPDynamicTransactionListContainer *)self->_list transactions];
          [transactions2 removeObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);

  return v26;
}

- (id)getResumableForRunningOperationType:(id)type
{
  list = self->_list;
  typeCopy = type;
  current = [(EPDynamicTransactionListContainer *)list current];
  operationType = [current operationType];
  v8 = [typeCopy isEqual:operationType];

  if (v8)
  {
    current2 = [(EPDynamicTransactionListContainer *)self->_list current];
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [current2 resumeEnabled]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dumpTransactionsSummary:(id)summary
{
  summaryCopy = summary;
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = summaryCopy;
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

        transactionName = [*(*(&v20 + 1) + 8 * i) transactionName];
        v12 = transactionName;
        if (transactionName)
        {
          v13 = transactionName;
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
      current = [(EPDynamicTransactionListContainer *)self->_list current];
      transactionName2 = [current transactionName];
      v19 = [v5 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      v25 = transactionName2;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPDTC summary: Running: %@, Pending: %@", buf, 0x16u);
    }
  }
}

- (void)dumpTransactionRecursive:(id)recursive
{
  recursiveCopy = recursive;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      operationType = [recursiveCopy operationType];
      targetPairingID = [recursiveCopy targetPairingID];
      uUIDString = [targetPairingID UUIDString];
      if ([recursiveCopy persistWhilePending])
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      if ([recursiveCopy notUnrollable])
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      *v15 = 138413314;
      if ([recursiveCopy resumeEnabled])
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      *&v15[4] = operationType;
      v16 = 2112;
      v17 = uUIDString;
      v18 = 2080;
      v19 = v11;
      v20 = 2080;
      v21 = v12;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPDTC dump: EPDynamicTransactionContainer type %@ targeting %@ persistWhilePending=%s notUnrollable=%s resumable=%s", v15, 0x34u);
    }
  }

  routingSlip = [recursiveCopy routingSlip];
  [(EPDynamicSequentialTransactionCoordinator *)self dumpRoutingSlipRecursive:routingSlip indent:0];
}

- (void)dumpRoutingSlipRecursive:(id)recursive indent:(int64_t)indent
{
  recursiveCopy = recursive;
  v24 = [&stru_10017A258 stringByPaddingToLength:4 * indent withString:@" " startingAtIndex:0];
  entries = [recursiveCopy entries];
  v8 = [entries count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = objc_opt_new();
      entries2 = [recursiveCopy entries];
      v13 = [entries2 objectAtIndexedSubscript:v9];

      if (v9 != [recursiveCopy transactionIndex] || (v14 = @"EPDTC dump: %@*%@\n", objc_msgSend(recursiveCopy, "state") != 1))
      {
        v14 = @"EPDTC dump: %@ %@\n";
      }

      shortDescription = [v13 shortDescription];
      [v11 appendFormat:v14, v24, shortDescription];

      v16 = [(EPDynamicSequentialTransactionCoordinator *)self dumpRoutingSlipEntryOperands:v13 indent:indent];
      [v11 appendFormat:@"%@\n", v16];

      v17 = [(EPDynamicSequentialTransactionCoordinator *)self dumpRoutingSlipEntryErrors:v13 indent:indent];
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
        [(EPDynamicSequentialTransactionCoordinator *)self dumpRoutingSlipRecursive:v21 indent:indent + 1];
      }

      objc_autoreleasePoolPop(v10);
      ++v9;
      entries3 = [recursiveCopy entries];
      v23 = [entries3 count];
    }

    while (v9 < v23);
  }
}

- (id)dumpRoutingSlipEntryOperands:(id)operands indent:(int64_t)indent
{
  operandsCopy = operands;
  v23 = objc_opt_new();
  v6 = [&stru_10017A258 stringByPaddingToLength:4 * indent withString:@" " startingAtIndex:0];
  v22 = [v6 stringByAppendingString:@"    operand: "];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = operandsCopy;
  obj = [operandsCopy operands];
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
        operands = [v7 operands];
        v15 = [operands objectForKeyedSubscript:v12];

        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        value = [v15 value];
        v19 = [value description];
        [v23 appendFormat:@"%@%@ = %@[%@]\n", v22, v12, v17, v19];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  return v23;
}

- (id)dumpRoutingSlipEntryErrors:(id)errors indent:(int64_t)indent
{
  errorsCopy = errors;
  v6 = objc_opt_new();
  v7 = [&stru_10017A258 stringByPaddingToLength:4 * indent withString:@" " startingAtIndex:0];
  v8 = [v7 stringByAppendingString:@"    error  : "];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = errorsCopy;
  obj = [errorsCopy errors];
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
        userInfo = [v13 userInfo];

        domain = [v13 domain];
        code = [v13 code];
        v18 = code;
        if (userInfo)
        {
          userInfo2 = [v13 userInfo];
          [v6 appendFormat:@"%@%@:%ld userInfo=%@\n", v8, domain, v18, userInfo2];
        }

        else
        {
          [v6 appendFormat:@"dump: %@%@:%ld\n", v8, domain, code];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)hasTransactionType:(id)type
{
  typeCopy = type;
  current = [(EPDynamicTransactionListContainer *)self->_list current];
  operationType = [current operationType];
  v7 = [typeCopy isEqual:operationType];

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
    transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
    v8 = [transactions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(transactions);
          }

          operationType2 = [*(*(&v15 + 1) + 8 * i) operationType];
          v13 = [typeCopy isEqual:operationType2];

          if (v13)
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [transactions countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)isCurrentRunningTransactionOfType:(id)type
{
  list = self->_list;
  typeCopy = type;
  current = [(EPDynamicTransactionListContainer *)list current];
  operationType = [current operationType];
  v7 = [typeCopy isEqual:operationType];

  return v7;
}

- (id)currentTransactionPairingId
{
  current = [(EPDynamicTransactionListContainer *)self->_list current];
  targetPairingID = [current targetPairingID];

  return targetPairingID;
}

- (void)clearTransactionsWithUserInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = errorCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPDTC: clearTransactionsWithUserInfo:error: %{public}@", buf, 0xCu);
    }
  }

  v40 = errorCopy;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v12 = [transactions copy];

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
        userInfo = [v17 userInfo];
        if (userInfo != infoCopy)
        {
          goto LABEL_11;
        }

        routingSlip = [v17 routingSlip];
        persistWhilePending = [routingSlip persistWhilePending];

        if ((persistWhilePending & 1) == 0)
        {
          transactions2 = [(EPDynamicTransactionListContainer *)self->_list transactions];
          [transactions2 removeObject:v17];

          willBegin = [v17 willBegin];

          if (willBegin)
          {
            willBegin2 = [v17 willBegin];
            willBegin2[2](willBegin2, 0);
          }

          didEnd = [v17 didEnd];

          if (didEnd)
          {
            didEnd2 = [v17 didEnd];
            didEnd2[2](didEnd2, 0);
          }

          v26 = nr_daemon_log();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

          if (v27)
          {
            userInfo = nr_daemon_log();
            if (os_log_type_enabled(userInfo, OS_LOG_TYPE_DEFAULT))
            {
              transactionName = [v17 transactionName];
              *buf = 138543362;
              v47 = transactionName;
              _os_log_impl(&_mh_execute_header, userInfo, OS_LOG_TYPE_DEFAULT, "EPDTC: Removing pending transaction %{public}@", buf, 0xCu);
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

  current = [(EPDynamicTransactionListContainer *)self->_list current];
  userInfo2 = [current userInfo];
  if (userInfo2 != infoCopy)
  {
    v31 = v40;
LABEL_30:

    goto LABEL_31;
  }

  current2 = [(EPDynamicTransactionListContainer *)self->_list current];
  routingSlip2 = [current2 routingSlip];
  persistWhilePending2 = [routingSlip2 persistWhilePending];

  v31 = v40;
  if ((persistWhilePending2 & 1) == 0)
  {
    v35 = nr_daemon_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v37 = nr_daemon_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        current3 = [(EPDynamicTransactionListContainer *)self->_list current];
        transactionName2 = [current3 transactionName];
        *buf = 138543362;
        v47 = transactionName2;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "EPDTC: Canceling running transaction %{public}@", buf, 0xCu);
      }
    }

    current = [(EPDynamicTransactionListContainer *)self->_list current];
    userInfo2 = [current routingSlip];
    [userInfo2 cancelWithError:v40];
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
    current = [(EPDynamicTransactionListContainer *)self->_list current];

    if (current)
    {
      self->_firstResumeCompleted = 1;
      current2 = [(EPDynamicTransactionListContainer *)self->_list current];

      if (!current2)
      {
        return;
      }

      current3 = [(EPDynamicTransactionListContainer *)*p_list current];
      routingSlip = [current3 routingSlip];
      state = [routingSlip state];

      if (!state)
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

      transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
      activePairedDeviceID = [(EPDynamicSequentialTransactionCoordinator *)self activePairedDeviceID];
      v17 = [EPDTCOperationPriorityComparator sortedTransactionsWithSet:transactions pairingID:activePairedDeviceID];

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

      if (state)
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

      current4 = [(EPDynamicTransactionListContainer *)self->_list current];
      [(EPDynamicSequentialTransactionCoordinator *)self startTransaction:current4 rollback:1];

      return;
    }
  }

  current5 = [(EPDynamicTransactionListContainer *)self->_list current];

  self->_firstResumeCompleted = 1;
  if (current5)
  {
    goto LABEL_26;
  }

  transactions2 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  v29 = [transactions2 count];

  if (!v29)
  {
    [(EPDynamicSequentialTransactionCoordinator *)self startTransaction:0 rollback:0];
LABEL_26:

    [(EPDynamicSequentialTransactionCoordinator *)self runPendingResumableRequest];
    return;
  }

  transactions3 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  activePairedDeviceID2 = [(EPDynamicSequentialTransactionCoordinator *)self activePairedDeviceID];
  v32 = [EPDTCOperationPriorityComparator sortedTransactionsWithSet:transactions3 pairingID:activePairedDeviceID2];

  [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionsSummary:v32];
  firstObject = [v32 firstObject];
  if (firstObject)
  {
    transactions4 = [(EPDynamicTransactionListContainer *)self->_list transactions];
    [transactions4 removeObject:firstObject];

    targetPairingID = [firstObject targetPairingID];
    if (!targetPairingID)
    {
      goto LABEL_33;
    }

    v36 = targetPairingID;
    allPairingIDs = [(EPDynamicSequentialTransactionCoordinator *)self allPairingIDs];
    targetPairingID2 = [firstObject targetPairingID];
    v39 = [allPairingIDs containsObject:targetPairingID2];

    if (!v39)
    {
      v46 = nr_daemon_log();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

      if (v47)
      {
        v48 = nr_daemon_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD0DC(firstObject);
        }
      }

      [(EPDynamicSequentialTransactionCoordinator *)self runTransaction];
    }

    else
    {
LABEL_33:
      [(EPDynamicTransactionListContainer *)self->_list setCurrent:firstObject];
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

      transactionStartTimestamp = [firstObject transactionStartTimestamp];

      if (!transactionStartTimestamp)
      {
        v44 = objc_opt_new();
        [firstObject setTransactionStartTimestamp:v44];
      }

      [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionRecursive:firstObject];
      [(EPDynamicSequentialTransactionCoordinator *)self startTransaction:firstObject rollback:0];
    }
  }
}

- (void)queueResumeCrashMonitoringRequest:(id)request forRunningOperationType:(id)type completion:(id)completion
{
  requestCopy = request;
  typeCopy = type;
  completionCopy = completion;
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
    v15 = [(EPDynamicSequentialTransactionCoordinator *)self requestSetResumable:0 userInfo:requestCopy forRunningOperationType:typeCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15);
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
    v19 = requestCopy;
    v20 = typeCopy;
    v21 = completionCopy;
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
  current = [(EPDynamicTransactionListContainer *)self->_list current];
  if (current)
  {
    v4 = 0;
  }

  else
  {
    transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
    v4 = [transactions count] == 0;
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
  current = [(EPDynamicTransactionListContainer *)self->_list current];
  if (!current)
  {
    transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
    if ([transactions count])
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

- (void)routingSlip:(id)slip entryDidCompleteRollback:(id)rollback
{
  rollbackCopy = rollback;
  v6 = sub_1000034AC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000034AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      name = [rollbackCopy name];
      current = [(EPDynamicTransactionListContainer *)self->_list current];
      transactionName = [current transactionName];
      v12 = 138543618;
      v13 = name;
      v14 = 2114;
      v15 = transactionName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPDTC: Transaction %{public}@ rolled back in transaction %{public}@", &v12, 0x16u);
    }
  }
}

- (void)routingSlip:(id)slip entryDidCompleteTransaction:(id)transaction
{
  transactionCopy = transaction;
  v6 = sub_1000034AC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000034AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      name = [transactionCopy name];
      current = [(EPDynamicTransactionListContainer *)self->_list current];
      transactionName = [current transactionName];
      v12 = 138543618;
      v13 = name;
      v14 = 2114;
      v15 = transactionName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPDTC: Transaction %{public}@ completed in transaction %{public}@", &v12, 0x16u);
    }
  }
}

- (void)routingSlipRequestsArchiving:(id)archiving
{
  archivingCopy = archiving;
  current = [(EPDynamicTransactionListContainer *)self->_list current];
  routingSlip = [current routingSlip];
  v7 = routingSlip;
  if (routingSlip != archivingCopy)
  {

LABEL_11:
    [(EPDynamicSequentialTransactionCoordinator *)self saveTransactions];
    goto LABEL_12;
  }

  state = [archivingCopy state];

  if (state != 2)
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
      current2 = [(EPDynamicTransactionListContainer *)self->_list current];
      transactionName = [current2 transactionName];
      v23 = 138543362;
      v24 = transactionName;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPDTC: Transaction %{public}@ completed", &v23, 0xCu);
    }
  }

  current3 = [(EPDynamicTransactionListContainer *)self->_list current];
  [(EPDynamicSequentialTransactionCoordinator *)self dumpTransactionRecursive:current3];

  current4 = [(EPDynamicTransactionListContainer *)self->_list current];
  didEnd = [current4 didEnd];

  if (didEnd)
  {
    current5 = [(EPDynamicTransactionListContainer *)self->_list current];
    didEnd2 = [current5 didEnd];
    current6 = [(EPDynamicTransactionListContainer *)self->_list current];
    routingSlip2 = [current6 routingSlip];
    (didEnd2)[2](didEnd2, routingSlip2);
  }

  current7 = [(EPDynamicTransactionListContainer *)self->_list current];
  routingSlip3 = [current7 routingSlip];
  [routingSlip3 invalidate];

  [(EPDynamicTransactionListContainer *)self->_list setCurrent:0];
  [(EPDynamicSequentialTransactionCoordinator *)self saveTransactions];
  [(EPDynamicSequentialTransactionCoordinator *)self runTransaction];
LABEL_12:
}

- (void)string:(id)string transactionsSummary:(id)summary
{
  stringCopy = string;
  summaryCopy = summary;
  v8 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = summaryCopy;
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

        transactionName = [*(*(&v18 + 1) + 8 * v13) transactionName];
        [v8 addObject:transactionName];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  current = [(EPDynamicTransactionListContainer *)self->_list current];
  transactionName2 = [current transactionName];
  v17 = [v8 componentsJoinedByString:{@", "}];
  [stringCopy appendFormat:@"EPDTC dump: Transaction summary Running: %@, Pending: %@\n", transactionName2, v17, v18];
}

- (void)string:(id)string transactionRecursive:(id)recursive
{
  stringCopy = string;
  recursiveCopy = recursive;
  operationType = [recursiveCopy operationType];
  targetPairingID = [recursiveCopy targetPairingID];
  uUIDString = [targetPairingID UUIDString];
  if ([recursiveCopy persistWhilePending])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if ([recursiveCopy notUnrollable])
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if ([recursiveCopy resumeEnabled])
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  [stringCopy appendFormat:@"EPDTC dump: EPDynamicTransactionContainer type %@ targeting %@ persistWhilePending=%s notUnrollable=%s resumable=%s\n", operationType, uUIDString, v10, v11, v12];

  routingSlip = [recursiveCopy routingSlip];
  v14 = objc_autoreleasePoolPush();
  [(EPDynamicSequentialTransactionCoordinator *)self string:stringCopy routingSlipRecursive:routingSlip indent:0];
  objc_autoreleasePoolPop(v14);
}

- (void)string:(id)string routingSlipRecursive:(id)recursive indent:(int64_t)indent
{
  stringCopy = string;
  recursiveCopy = recursive;
  v9 = [&stru_10017A258 stringByPaddingToLength:4 * indent withString:@" " startingAtIndex:0];
  if ([recursiveCopy state] == 1)
  {
    currentEntry = [recursiveCopy currentEntry];
    v11 = NSStringFromClass([currentEntry transactionClass]);
    currentEntry2 = [recursiveCopy currentEntry];
    name = [currentEntry2 name];
    [stringCopy appendFormat:@"EPDTC dump: %@Routing Slip with active transaction %@[%@]:\n", v9, v11, name];
  }

  else
  {
    [stringCopy appendFormat:@"EPDTC dump: %@Routing Slip:\n", v9];
  }

  entries = [recursiveCopy entries];
  v15 = [entries count];

  if (v15)
  {
    v16 = 0;
    do
    {
      entries2 = [recursiveCopy entries];
      v18 = [entries2 objectAtIndexedSubscript:v16];

      v19 = objc_autoreleasePoolPush();
      if (v16 != [recursiveCopy transactionIndex] || (v20 = @"EPDTC dump: %@*%@\n", objc_msgSend(recursiveCopy, "state") != 1))
      {
        v20 = @"EPDTC dump: %@ %@\n";
      }

      shortDescription = [v18 shortDescription];
      [stringCopy appendFormat:v20, v9, shortDescription];

      [(EPDynamicSequentialTransactionCoordinator *)self string:stringCopy routingSlipEntryOperands:v18 indent:indent];
      [(EPDynamicSequentialTransactionCoordinator *)self string:stringCopy routingSlipEntryErrors:v18 indent:indent];
      if ([objc_msgSend(v18 "transactionClass")])
      {
        v22 = [v18 objectForKeyedSubscript:@"routingSlip"];
        [(EPDynamicSequentialTransactionCoordinator *)self string:stringCopy routingSlipRecursive:v22 indent:indent + 1];
      }

      objc_autoreleasePoolPop(v19);

      ++v16;
      entries3 = [recursiveCopy entries];
      v24 = [entries3 count];
    }

    while (v16 < v24);
  }
}

- (void)string:(id)string routingSlipEntryOperands:(id)operands indent:(int64_t)indent
{
  stringCopy = string;
  operandsCopy = operands;
  v8 = [&stru_10017A258 stringByPaddingToLength:4 * indent withString:@" " startingAtIndex:0];
  v23 = [v8 stringByAppendingString:@"    operand: "];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = operandsCopy;
  obj = [operandsCopy operands];
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
        operands = [v9 operands];
        v17 = [operands objectForKeyedSubscript:v14];

        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        value = [v17 value];
        v21 = [value description];
        [stringCopy appendFormat:@"EPDTC dump: %@%@ = %@[%@]\n", v23, v14, v19, v21];

        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)string:(id)string routingSlipEntryErrors:(id)errors indent:(int64_t)indent
{
  stringCopy = string;
  errorsCopy = errors;
  v9 = [&stru_10017A258 stringByPaddingToLength:4 * indent withString:@" " startingAtIndex:0];
  v10 = [v9 stringByAppendingString:@"    error  : "];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = errorsCopy;
  errors = [errorsCopy errors];
  v12 = [errors countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(errors);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        userInfo = [v16 userInfo];

        domain = [v16 domain];
        code = [v16 code];
        v20 = code;
        if (userInfo)
        {
          userInfo2 = [v16 userInfo];
          [stringCopy appendFormat:@"EPDTC dump: %@%@:%ld userInfo=%@\n", v10, domain, v20, userInfo2];
        }

        else
        {
          [stringCopy appendFormat:@"EPDTC dump: %@%@:%ld\n", v10, domain, code];
        }
      }

      v13 = [errors countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (NSString)description
{
  v3 = +[NSMutableString string];
  v4 = objc_autoreleasePoolPush();
  transactions = [(EPDynamicTransactionListContainer *)self->_list transactions];
  allObjects = [transactions allObjects];
  [(EPDynamicSequentialTransactionCoordinator *)self string:v3 transactionsSummary:allObjects];

  objc_autoreleasePoolPop(v4);
  v7 = objc_autoreleasePoolPush();
  current = [(EPDynamicTransactionListContainer *)self->_list current];

  if (current)
  {
    current2 = [(EPDynamicTransactionListContainer *)self->_list current];
    routingSlip = [current2 routingSlip];
    v11 = sub_1000FCB54([routingSlip state]);

    [v3 appendFormat:@"EPDTC dump: Currently running transaction %@\n", v11];
    current3 = [(EPDynamicTransactionListContainer *)self->_list current];
    [(EPDynamicSequentialTransactionCoordinator *)self string:v3 transactionRecursive:current3];
  }

  else
  {
    [v3 appendFormat:@"EPDTC dump: Currently running transaction: None\n"];
  }

  objc_autoreleasePoolPop(v7);
  [v3 appendFormat:@"EPDTC dump: Enqueued transactions\n"];
  transactions2 = [(EPDynamicTransactionListContainer *)self->_list transactions];
  activePairedDeviceID = [(EPDynamicSequentialTransactionCoordinator *)self activePairedDeviceID];
  v15 = [EPDTCOperationPriorityComparator sortedTransactionsWithSet:transactions2 pairingID:activePairedDeviceID];

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