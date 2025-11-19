@interface W5ActivityManager
+ (id)sharedActivityManager;
- (BOOL)debugTimerEnabled;
- (W5ActivityManager)init;
- (unint64_t)osTransactionsActive;
- (void)_executeTimerBlock;
- (void)debugTimer;
- (void)osTransactionComplete:(id)a3;
- (void)osTransactionCreate:(const char *)a3 transaction:(id)a4;
@end

@implementation W5ActivityManager

+ (id)sharedActivityManager
{
  if (qword_100106B90 != -1)
  {
    dispatch_once(&qword_100106B90, &stru_1000E1718);
  }

  v3 = qword_100106B98;

  return v3;
}

- (W5ActivityManager)init
{
  v12.receiver = self;
  v12.super_class = W5ActivityManager;
  v2 = [(W5ActivityManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    eagerExitTimeout = v2->_eagerExitTimeout;
    v2->_eagerExitTimeout = 0;

    v5 = +[NSMutableArray array];
    active_transactions = v3->_active_transactions;
    v3->_active_transactions = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("W5ActivityManager", v7);
    queue = v3->_queue;
    v3->_queue = v8;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] W5ActivityManager init error!", v11, 2u);
  }

  return v3;
}

- (BOOL)debugTimerEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.wifivelocity"];

  v4 = [v3 objectForKey:@"eager-exit-debug"];
  if (v4)
  {
    NSLog(@"%s: Found preference value in domain: %@ key: %@", "[W5ActivityManager debugTimerEnabled]", @"com.apple.wifivelocity", @"eager-exit-debug");
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)debugTimer
{
  periodicActiveListTimer = self->_periodicActiveListTimer;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (periodicActiveListTimer)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager debugTimer already setup", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager configuring _periodicActiveListTimer", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017664;
    block[3] = &unk_1000E1270;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)osTransactionCreate:(const char *)a3 transaction:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000179E0;
  block[3] = &unk_1000E1768;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)osTransactionComplete:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017CA0;
  block[3] = &unk_1000E17E0;
  v6 = v4;
  v9 = v6;
  v10 = self;
  v11 = &v12;
  dispatch_sync(queue, block);
  if (*(v13 + 24) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] W5ActivityManager osTransactionComplete TRANSACTION NOT FOUND ASSERT", v7, 2u);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_executeTimerBlock
{
  v3 = [(W5ActivityManager *)self alternateExecutionBlockForCleanExit];

  if (v3)
  {
    v4 = [(W5ActivityManager *)self alternateExecutionBlockForCleanExit];
    v4[2]();
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
  v5[2] = sub_100018374;
  v5[3] = &unk_1000E1808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end