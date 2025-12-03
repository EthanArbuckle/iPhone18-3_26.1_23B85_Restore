@interface WAActivityManager
+ (id)sharedActivityManager;
- (BOOL)debugTimerEnabled;
- (WAActivityManager)init;
- (unint64_t)osTransactionsActive;
- (void)_executeBeforePossibleEagerExit;
- (void)_executeTimerBlock;
- (void)debugTimer;
- (void)osTransactionComplete:(id)complete;
- (void)osTransactionCreate:(const char *)create transaction:(id)transaction;
@end

@implementation WAActivityManager

+ (id)sharedActivityManager
{
  if (qword_10010DED8 != -1)
  {
    dispatch_once(&qword_10010DED8, &stru_1000EE820);
  }

  v3 = qword_10010DEE0;

  return v3;
}

- (WAActivityManager)init
{
  v21.receiver = self;
  v21.super_class = WAActivityManager;
  v2 = [(WAActivityManager *)&v21 init];
  v3 = v2;
  if (v2)
  {
    eagerExitTimeout = v2->_eagerExitTimeout;
    v2->_eagerExitTimeout = 0;

    v5 = +[NSMutableArray array];
    active_transactions = v3->_active_transactions;
    v3->_active_transactions = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("WAActivityManager", v7);
    queue = v3->_queue;
    v3->_queue = v8;

    v3->isEagerExitEnabled = 0;
    v10 = MGGetProductType();
    v11 = WALogActivityManagerHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 == 3348380076)
    {
      if (v12)
      {
        *buf = 136446466;
        v23 = "[WAActivityManager init]";
        v24 = 1024;
        v25 = 77;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WAActivityManager is b520, setting isEagerExitEnabled", buf, 0x12u);
      }

      v3->isEagerExitEnabled = 1;
    }

    else
    {
      if (v12)
      {
        *buf = 136446466;
        v23 = "[WAActivityManager init]";
        v24 = 1024;
        v25 = 80;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WAActivityManager is not b520, no isEagerExitEnabled", buf, 0x12u);
      }
    }

    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 persistentDomainForName:@"com.apple.wifianalyticsd"];

    v15 = [v14 objectForKey:@"eager-exit-enable"];
    v16 = v15;
    if (v15)
    {
      v3->isEagerExitEnabled = [v15 BOOLValue];
      v17 = WALogActivityManagerHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        isEagerExitEnabled = v3->isEagerExitEnabled;
        *buf = 136447234;
        v23 = "[WAActivityManager init]";
        v24 = 1024;
        v25 = 88;
        v26 = 2112;
        v27 = @"com.apple.wifianalyticsd";
        v28 = 2112;
        v29 = @"eager-exit-enable";
        v30 = 1024;
        v31 = isEagerExitEnabled;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found preference value in domain: %@ key: %@ value: %d", buf, 0x2Cu);
      }
    }

    v3->waitingToInitDebugTimer = 0;
  }

  else
  {
    v20 = WALogActivityManagerHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "[WAActivityManager init]";
      v24 = 1024;
      v25 = 100;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAActivityManager init error!", buf, 0x12u);
    }
  }

  return v3;
}

- (BOOL)debugTimerEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.wifianalyticsd"];

  v4 = [v3 objectForKey:@"eager-exit-debug"];
  if (v4)
  {
    v5 = WALogActivityManagerHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446978;
      v9 = "[WAActivityManager debugTimerEnabled]";
      v10 = 1024;
      v11 = 121;
      v12 = 2112;
      v13 = @"com.apple.wifianalyticsd";
      v14 = 2112;
      v15 = @"eager-exit-debug";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found preference value in domain: %@ key: %@", &v8, 0x26u);
    }

    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)debugTimer
{
  if (self->_periodicActiveListTimer)
  {
    v3 = WALogActivityManagerHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v7 = "[WAActivityManager debugTimer]";
      v8 = 1024;
      v9 = 130;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WAActivityManager debugTimer already setup", buf, 0x12u);
    }
  }

  else
  {
    obj = self;
    objc_sync_enter(obj);
    if (obj->waitingToInitDebugTimer)
    {
      objc_sync_exit(obj);
    }

    else
    {
      v2 = WALogActivityManagerHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v7 = "[WAActivityManager debugTimer]";
        v8 = 1024;
        v9 = 136;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:configuring _periodicActiveListTimer", buf, 0x12u);
      }

      obj->waitingToInitDebugTimer = 1;
      objc_sync_exit(obj);

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100090260;
      block[3] = &unk_1000ED880;
      block[4] = obj;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)osTransactionCreate:(const char *)create transaction:(id)transaction
{
  transactionCopy = transaction;
  v7 = transactionCopy;
  if (self->isEagerExitEnabled)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000906D4;
    block[3] = &unk_1000EE870;
    block[4] = self;
    v10 = transactionCopy;
    createCopy = create;
    dispatch_sync(queue, block);
  }
}

- (void)osTransactionComplete:(id)complete
{
  completeCopy = complete;
  v5 = completeCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (self->isEagerExitEnabled)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100090A4C;
    block[3] = &unk_1000EE8C0;
    v9 = completeCopy;
    selfCopy = self;
    v11 = &v12;
    dispatch_sync(queue, block);
    if (*(v13 + 24) == 1)
    {
      v7 = WALogActivityManagerHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v17 = "[WAActivityManager osTransactionComplete:]";
        v18 = 1024;
        v19 = 266;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:osTransactionComplete TRANSACTION NOT FOUND ASSERT", buf, 0x12u);
      }
    }
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_executeBeforePossibleEagerExit
{
  executeBeforePossibleEagerExit = [(WAActivityManager *)self executeBeforePossibleEagerExit];

  if (executeBeforePossibleEagerExit)
  {
    executeBeforePossibleEagerExit2 = [(WAActivityManager *)self executeBeforePossibleEagerExit];
    executeBeforePossibleEagerExit2[2]();
  }
}

- (void)_executeTimerBlock
{
  alternateExecutionBlockForCleanExit = [(WAActivityManager *)self alternateExecutionBlockForCleanExit];

  if (alternateExecutionBlockForCleanExit)
  {
    alternateExecutionBlockForCleanExit2 = [(WAActivityManager *)self alternateExecutionBlockForCleanExit];
    alternateExecutionBlockForCleanExit2[2]();
  }
}

- (unint64_t)osTransactionsActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100091328;
  v5[3] = &unk_1000EDB80;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end