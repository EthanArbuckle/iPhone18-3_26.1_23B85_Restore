@interface UpgradeOperation
- (UpgradeOperation)initWithCryptexName:(id)a3 graftPath:(id)a4;
- (void)completeUpgrade;
- (void)onComplete:(id)a3 withQueue:(id)a4;
- (void)startUpgrade;
- (void)terminateJobsWithCompletion:(id)a3;
@end

@implementation UpgradeOperation

- (UpgradeOperation)initWithCryptexName:(id)a3 graftPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = UpgradeOperation;
  v9 = [(UpgradeOperation *)&v18 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.libcryptex", "upgrade");
    logHandle = v9->_logHandle;
    v9->_logHandle = v10;

    v12 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v12;

    objc_storeStrong(&v9->_cryptexName, a3);
    v14 = dispatch_queue_create("com.apple.security.cryptexd.upgrade", 0);
    workQueue = v9->_workQueue;
    v9->_workQueue = v14;

    objc_storeStrong(&v9->_graftPath, a4);
    error = v9->_error;
    v9->_error = 0;
  }

  return v9;
}

- (void)terminateJobsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(UpgradeOperation *)self cryptexName];
  v6 = [v5 UTF8String];
  v7 = [(UpgradeOperation *)self workQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __48__UpgradeOperation_terminateJobsWithCompletion___block_invoke;
  v9[3] = &unk_1000713F0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  launch_cryptex_terminate_with_timeout(v6, 0x3Cu, v7, v9);
}

void __48__UpgradeOperation_terminateJobsWithCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) logHandle];

    if (v4)
    {
      v5 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      [*(a1 + 32) cryptexName];
      v20 = *buf = 138543618;
      v21 = 1024;
      v22 = a2;
      v6 = _os_log_send_and_compose_impl();
    }

    else
    {
      v14 = &_os_log_default;
      [*(a1 + 32) cryptexName];
      v20 = *buf = 138543618;
      v21 = 1024;
      v22 = a2;
      v6 = _os_log_send_and_compose_impl();

      v5 = &_os_log_default;
    }

    Error = createError("[UpgradeOperation terminateJobsWithCompletion:]_block_invoke", "upgrade_sequencer.m", 128, "com.apple.security.cryptex.posix", a2, 0, v6);
LABEL_14:
    v16 = Error;
    free(v6);
    goto LABEL_15;
  }

  v7 = *__error();
  v8 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) cryptexName];
    *buf = 138543362;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Terminated jobs for cryptex '%{public}@'", buf, 0xCu);
  }

  *__error() = v7;
  v10 = proc_terminate_all_rsr(9);
  if (v10)
  {
    v11 = [*(a1 + 32) logHandle];

    if (v11)
    {
      v12 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      v13 = [*(a1 + 32) cryptexName];
      *buf = 138543618;
      v20 = v13;
      v21 = 1024;
      v22 = v10;
      v6 = _os_log_send_and_compose_impl();
    }

    else
    {
      v17 = &_os_log_default;
      v18 = [*(a1 + 32) cryptexName];
      *buf = 138543618;
      v20 = v18;
      v21 = 1024;
      v22 = v10;
      v6 = _os_log_send_and_compose_impl();

      v12 = &_os_log_default;
    }

    Error = createError("[UpgradeOperation terminateJobsWithCompletion:]_block_invoke", "upgrade_sequencer.m", 143, "com.apple.security.cryptex.posix", v10, 0, v6);
    goto LABEL_14;
  }

  v16 = 0;
LABEL_15:
  (*(*(a1 + 40) + 16))(*(a1 + 40), v16);
}

- (void)startUpgrade
{
  v3 = *__error();
  v4 = [(UpgradeOperation *)self logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Upgrade started.", v6, 2u);
  }

  *__error() = v3;
  v5 = [(UpgradeOperation *)self group];
  dispatch_group_enter(v5);
}

- (void)completeUpgrade
{
  v3 = [(UpgradeOperation *)self workQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(UpgradeOperation *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__UpgradeOperation_completeUpgrade__block_invoke;
  block[3] = &unk_100071418;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __35__UpgradeOperation_completeUpgrade__block_invoke(uint64_t a1)
{
  v2 = *__error();
  v3 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Upgrade complete.", v5, 2u);
  }

  *__error() = v2;
  v4 = [*(a1 + 32) group];
  dispatch_group_leave(v4);
}

- (void)onComplete:(id)a3 withQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UpgradeOperation *)self group];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __41__UpgradeOperation_onComplete_withQueue___block_invoke;
  v10[3] = &unk_100071440;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_group_notify(v8, v7, v10);
}

void __41__UpgradeOperation_onComplete_withQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

@end