@interface UpgradeSequencer
+ (id)getSharedInstance;
- (BOOL)_isInterfaceLocked;
- (BOOL)lockIsHeldByClient:(_rpc_cred *)client;
- (UpgradeSequencer)init;
- (id)_abort;
- (id)_completeUpgradeSession;
- (id)_completeUpgradeWithError:(id)error;
- (id)_timeout;
- (id)_unlockInterface;
- (int)_setKernelUpgradeOngoing:(BOOL)ongoing;
- (void)_disableInterfaceLockTimeout;
- (void)_handleInterfaceLockCancel;
- (void)_restartInterfaceLockTimeout;
- (void)_startUpgradeForCryptex:(id)cryptex withGraftPath:(id)path killingJobs:(BOOL)jobs withCompletion:(id)completion;
- (void)abortWithCompletion:(id)completion;
- (void)completeUpgradeWithCompletion:(id)completion;
- (void)lockInterfaceForClient:(id)client withCompletion:(id)completion;
- (void)onUpgradeCompleteForCryptex:(id)cryptex withCompletion:(id)completion;
- (void)onUpgradeSessionComplete:(id)complete;
- (void)startUpgradeForCryptexes:(id)cryptexes killingJobs:(BOOL)jobs withCompletion:(id)completion;
@end

@implementation UpgradeSequencer

+ (id)getSharedInstance
{
  if (getSharedInstance_onceToken != -1)
  {
    +[UpgradeSequencer getSharedInstance];
  }

  v3 = getSharedInstance_gUpsq;

  return v3;
}

void __37__UpgradeSequencer_getSharedInstance__block_invoke(id a1)
{
  getSharedInstance_gUpsq = objc_alloc_init(UpgradeSequencer);

  _objc_release_x1();
}

- (UpgradeSequencer)init
{
  v23.receiver = self;
  v23.super_class = UpgradeSequencer;
  v2 = [(UpgradeSequencer *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_initially_inactive(0);
    v4 = dispatch_queue_create("com.apple.security.cryptexd.upgrade_sequencer_registration", v3);

    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    v6 = *(v2 + 3);
    dispatch_set_qos_class();
    dispatch_activate(*(v2 + 3));
    v7 = dispatch_queue_create("com.apple.security.cryptexd.upgrade_sequencer_work", 0);
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    dispatch_set_target_queue(*(v2 + 2), *(v2 + 3));
    v9 = dispatch_queue_create("com.apple.security.cryptexd.upgrade_sequencer_lock_acquire", 0);
    v10 = *(v2 + 1);
    *(v2 + 1) = v9;

    dispatch_set_target_queue(*(v2 + 1), *(v2 + 2));
    dispatch_suspend(*(v2 + 1));
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 2));
    v12 = *(v2 + 8);
    *(v2 + 8) = v11;

    dispatch_source_set_timer(*(v2 + 8), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v13 = *(v2 + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __24__UpgradeSequencer_init__block_invoke;
    handler[3] = &unk_100071418;
    v14 = v2;
    v22 = v14;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_resume(*(v2 + 8));
    v15 = v14[6];
    v14[6] = 0;

    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = v14[4];
    v14[4] = v16;

    v18 = os_log_create("com.apple.libcryptex", "upgrade_sequencer");
    v19 = v14[5];
    v14[5] = v18;
  }

  return v2;
}

int *__24__UpgradeSequencer_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _timeout];

  v3 = *__error();
  v4 = [*(a1 + 32) logHandle];
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) _timeout];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Timed out client.: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Timed out client. [no error]", &v8, 2u);
  }

  result = __error();
  *result = v3;
  return result;
}

- (void)startUpgradeForCryptexes:(id)cryptexes killingJobs:(BOOL)jobs withCompletion:(id)completion
{
  cryptexesCopy = cryptexes;
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke;
  v13[3] = &unk_100071570;
  v14 = cryptexesCopy;
  v15 = completionCopy;
  v13[4] = self;
  jobsCopy = jobs;
  v11 = cryptexesCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

void __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke(uint64_t a1)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v2 = dispatch_group_create();
  if ([*(a1 + 32) _isInterfaceLocked])
  {
    v3 = v35[5];
    v35[5] = 0;

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_2;
    v33[3] = &unk_1000714D0;
    v4 = *(a1 + 40);
    v33[4] = *(a1 + 32);
    v33[5] = &v34;
    [v4 enumerateKeysAndObjectsUsingBlock:v33];
    v5 = *(a1 + 32);
    if (v35[5])
    {
      v6 = [v5 logHandle];

      if (v6)
      {
        v7 = [*(a1 + 32) logHandle];
        os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
        LOWORD(v40) = 0;
        v8 = _os_log_send_and_compose_impl();
      }

      else
      {
        LOWORD(v40) = 0;
        v8 = _os_log_send_and_compose_impl();
      }

      Error = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 425, "com.apple.security.cryptex", 11, v35[5], v8);
      free(v8);
      v19 = v35[5];
      v35[5] = Error;
      goto LABEL_15;
    }

    v12 = [v5 _setKernelUpgradeOngoing:1];
    if (!v12)
    {
      [*(a1 + 32) _disableInterfaceLockTimeout];
      dispatch_group_enter(v2);
      v20 = *(a1 + 40);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_2_108;
      v28[3] = &unk_100071520;
      v21 = v2;
      v22 = *(a1 + 32);
      v29 = v21;
      v30 = v22;
      v32 = *(a1 + 56);
      v31 = &v34;
      [v20 enumerateKeysAndObjectsUsingBlock:v28];
      v23 = [*(a1 + 32) workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_110;
      block[3] = &unk_100071548;
      v24 = *(a1 + 32);
      v27 = &v34;
      block[4] = v24;
      v26 = *(a1 + 48);
      dispatch_group_notify(v21, v23, block);

      dispatch_group_leave(v21);
      v19 = v29;
LABEL_15:

      goto LABEL_16;
    }

    v13 = [*(a1 + 32) logHandle];

    if (v13)
    {
      v14 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      v40 = 67109120;
      v41 = v12;
      v11 = _os_log_send_and_compose_impl();
    }

    else
    {
      v40 = 67109120;
      v41 = v12;
      v11 = _os_log_send_and_compose_impl();
    }

    v15 = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 435, "com.apple.security.cryptex.posix", v12, 0, v11);
  }

  else
  {
    v9 = [*(a1 + 32) logHandle];

    if (v9)
    {
      v10 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      LOWORD(v40) = 0;
      v11 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(v40) = 0;
      v11 = _os_log_send_and_compose_impl();
    }

    v15 = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 393, "com.apple.security.cryptex", 11, 0, v11);
  }

  v16 = v15;
  free(v11);
  v17 = v35[5];
  v35[5] = v16;

  (*(*(a1 + 48) + 16))(*(a1 + 48), v35[5]);
LABEL_16:

  _Block_object_dispose(&v34, 8);
}

void __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [*(a1 + 32) logHandle];

    if (v12)
    {
      v13 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      v11 = _os_log_send_and_compose_impl();
    }

    else
    {
      v11 = _os_log_send_and_compose_impl();
    }

    Error = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 407, "com.apple.security.cryptex", 11, 0, v11);
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [*(a1 + 32) logHandle];

    if (v9)
    {
      v10 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      v11 = _os_log_send_and_compose_impl();
    }

    else
    {
      v11 = _os_log_send_and_compose_impl();
    }

    Error = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 415, "com.apple.security.cryptex", 11, 0, v11);
LABEL_11:
    v15 = Error;
    free(v11);
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *a4 = 1;
  }
}

void __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_2_108(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  dispatch_group_enter(v6);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_3;
  v11[3] = &unk_1000714F8;
  v11[4] = v8;
  v12 = v5;
  v14 = *(a1 + 48);
  v13 = *(a1 + 32);
  v10 = v5;
  [v8 _startUpgradeForCryptex:v10 withGraftPath:v7 killingJobs:v9 withCompletion:v11];
}

void __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *__error();
  v6 = [*(a1 + 32) logHandle];
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "start upgrade of cryptex '%{public}@': %@", &v13, 0x16u);
    }

    *__error() = v5;
    v9 = *(*(a1 + 56) + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, a2);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "start upgrade of cryptex '%{public}@' [no error]", &v13, 0xCu);
    }

    *__error() = v5;
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_110(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *__error();
  v4 = [*(a1 + 32) logHandle];
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v12 = 138412290;
      v13 = v6;
      v7 = "start upgrade session: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    v7 = "start upgrade session [no error]";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 2;
    goto LABEL_6;
  }

  *__error() = v3;
  [*(a1 + 32) _restartInterfaceLockTimeout];
  return (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
}

- (void)completeUpgradeWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__UpgradeSequencer_completeUpgradeWithCompletion___block_invoke;
  v7[3] = &unk_100071598;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __50__UpgradeSequencer_completeUpgradeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _completeUpgradeWithError:0];
  (*(*(a1 + 40) + 16))();
}

- (void)onUpgradeCompleteForCryptex:(id)cryptex withCompletion:(id)completion
{
  cryptexCopy = cryptex;
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_suspend(workQueue);

  registrationQueue = [(UpgradeSequencer *)self registrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __63__UpgradeSequencer_onUpgradeCompleteForCryptex_withCompletion___block_invoke;
  block[3] = &unk_1000715C0;
  block[4] = self;
  v13 = cryptexCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = cryptexCopy;
  dispatch_async(registrationQueue, block);
}

void __63__UpgradeSequencer_onUpgradeCompleteForCryptex_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) upgradesUnderway];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    Error = [*(a1 + 32) workQueue];
    [v3 onComplete:v4 withQueue:Error];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];

    if (v6)
    {
      v7 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      v8 = _os_log_send_and_compose_impl();
    }

    else
    {
      v8 = _os_log_send_and_compose_impl();
    }

    Error = createError("[UpgradeSequencer onUpgradeCompleteForCryptex:withCompletion:]_block_invoke", "upgrade_sequencer.m", 497, "com.apple.security.cryptex", 8, 0, v8);
    free(v8);
    (*(*(a1 + 48) + 16))(*(a1 + 48), Error);
  }

  v9 = [*(a1 + 32) workQueue];
  dispatch_resume(v9);
}

- (void)onUpgradeSessionComplete:(id)complete
{
  completeCopy = complete;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_suspend(workQueue);

  registrationQueue = [(UpgradeSequencer *)self registrationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __45__UpgradeSequencer_onUpgradeSessionComplete___block_invoke;
  v8[3] = &unk_100071598;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_sync(registrationQueue, v8);
}

void __45__UpgradeSequencer_onUpgradeSessionComplete___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSessionCompleteCallback:*(a1 + 40)];
  v2 = [*(a1 + 32) workQueue];
  dispatch_resume(v2);
}

- (void)lockInterfaceForClient:(id)client withCompletion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  lockAcquireQueue = [(UpgradeSequencer *)self lockAcquireQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__UpgradeSequencer_lockInterfaceForClient_withCompletion___block_invoke;
  block[3] = &unk_1000715C0;
  block[4] = self;
  v12 = clientCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = clientCopy;
  dispatch_sync(lockAcquireQueue, block);
}

void __58__UpgradeSequencer_lockInterfaceForClient_withCompletion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) lockingClient];

  if (v5)
  {
    buffer = *"unknown";
    v63 = *&qword_100059128;
    v6 = [*(a1 + 32) lockingClient];
    v7 = [v6 conn];
    pid = xpc_connection_get_pid(v7);
    proc_name(pid, &buffer, 0x20u);

    v9 = [*(a1 + 32) logHandle];

    if (v9)
    {
      v10 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      v11 = [*(a1 + 32) lockingClient];
      v12 = [v11 conn];
      if (v12)
      {
        v2 = [*(a1 + 32) lockingClient];
        v3 = [v2 conn];
        v13 = xpc_connection_get_pid(v3);
      }

      else
      {
        v13 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v58 = 1024;
      v59 = v13;
      v60 = 1024;
      LODWORD(v61) = 16;
      v36 = _os_log_send_and_compose_impl();
      if (v12)
      {
      }
    }

    else
    {
      v24 = &_os_log_default;
      v25 = [*(a1 + 32) lockingClient];
      v26 = [v25 conn];
      if (v26)
      {
        v1 = [*(a1 + 32) lockingClient];
        v2 = [v1 conn];
        v27 = xpc_connection_get_pid(v2);
      }

      else
      {
        v27 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v58 = 1024;
      v59 = v27;
      v60 = 1024;
      LODWORD(v61) = 16;
      v36 = _os_log_send_and_compose_impl();
      if (v26)
      {
      }

      v10 = &_os_log_default;
    }

    Error = createError("[UpgradeSequencer lockInterfaceForClient:withCompletion:]_block_invoke", "upgrade_sequencer.m", 524, "com.apple.security.cryptex.posix", 16, 0, v36);
  }

  else
  {
    if (cryptex_xpc_connection_is_entitled(*(a1 + 40), "com.apple.private.security.cryptex.upgrade"))
    {
      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) workQueue];
      xpc_connection_set_target_queue(v14, v15);

      v16 = [UpgradeClient alloc];
      v17 = *(a1 + 40);
      v18 = [*(a1 + 32) logHandle];
      v19 = [(UpgradeClient *)v16 initWithConn:v17 log:v18];
      [*(a1 + 32) setLockingClient:v19];

      v20 = [*(a1 + 32) lockingClient];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = __58__UpgradeSequencer_lockInterfaceForClient_withCompletion___block_invoke_2;
      v55[3] = &unk_100071418;
      v55[4] = *(a1 + 32);
      [v20 onCancel:v55];

      v21 = [*(a1 + 32) lockingClient];
      [v21 activate];

      v22 = [*(a1 + 32) workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __58__UpgradeSequencer_lockInterfaceForClient_withCompletion___block_invoke_3;
      block[3] = &unk_100071418;
      block[4] = *(a1 + 32);
      dispatch_async(v22, block);

      v23 = 0;
      goto LABEL_33;
    }

    buffer = *"unknown";
    v63 = *&qword_100059128;
    v28 = [*(a1 + 32) lockingClient];
    v29 = [v28 conn];
    v30 = xpc_connection_get_pid(v29);
    proc_name(v30, &buffer, 0x20u);

    v31 = [*(a1 + 32) logHandle];

    if (v31)
    {
      v32 = [*(a1 + 32) logHandle];
      os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      v33 = [*(a1 + 32) lockingClient];
      v34 = [v33 conn];
      if (v34)
      {
        v2 = [*(a1 + 32) lockingClient];
        v3 = [v2 conn];
        v35 = xpc_connection_get_pid(v3);
      }

      else
      {
        v35 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v58 = 1024;
      v59 = v35;
      v60 = 1024;
      LODWORD(v61) = 144;
      v36 = _os_log_send_and_compose_impl();
      if (v34)
      {
      }
    }

    else
    {
      v38 = &_os_log_default;
      v39 = [*(a1 + 32) lockingClient];
      v40 = [v39 conn];
      if (v40)
      {
        v1 = [*(a1 + 32) lockingClient];
        v2 = [v1 conn];
        v41 = xpc_connection_get_pid(v2);
      }

      else
      {
        v41 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v58 = 1024;
      v59 = v41;
      v60 = 1024;
      LODWORD(v61) = 144;
      v36 = _os_log_send_and_compose_impl();
      if (v40)
      {
      }

      v32 = &_os_log_default;
    }

    Error = createError("[UpgradeSequencer lockInterfaceForClient:withCompletion:]_block_invoke", "upgrade_sequencer.m", 534, "com.apple.security.cryptex.posix", 144, 0, v36);
  }

  v23 = Error;
  free(v36);
LABEL_33:
  buffer = *"unknown";
  v63 = *&qword_100059128;
  v42 = xpc_connection_get_pid(*(a1 + 40));
  proc_name(v42, &buffer, 0x20u);
  v43 = *__error();
  v44 = [*(a1 + 32) logHandle];
  v45 = v44;
  if (v23)
  {
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v46 = *(a1 + 40);
      if (v46)
      {
        v47 = xpc_connection_get_pid(v46);
      }

      else
      {
        v47 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v58 = 1024;
      v59 = v47;
      v60 = 2112;
      v61 = v23;
      v50 = "XPC client <process=%s pid=%d>: lock upgrade interface: %@";
      v51 = v45;
      v52 = OS_LOG_TYPE_ERROR;
      v53 = 28;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v51, v52, v50, buf, v53);
    }
  }

  else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v48 = *(a1 + 40);
    if (v48)
    {
      v49 = xpc_connection_get_pid(v48);
    }

    else
    {
      v49 = -1;
    }

    *buf = 136315394;
    p_buffer = &buffer;
    v58 = 1024;
    v59 = v49;
    v50 = "XPC client <process=%s pid=%d>: lock upgrade interface [no error]";
    v51 = v45;
    v52 = OS_LOG_TYPE_DEBUG;
    v53 = 18;
    goto LABEL_44;
  }

  *__error() = v43;
  (*(*(a1 + 48) + 16))(*(a1 + 48), v23);
}

- (BOOL)lockIsHeldByClient:(_rpc_cred *)client
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  workQueue = [(UpgradeSequencer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__UpgradeSequencer_lockIsHeldByClient___block_invoke;
  block[3] = &unk_1000715E8;
  block[4] = self;
  block[5] = &v8;
  block[6] = client;
  dispatch_sync(workQueue, block);

  LOBYTE(client) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return client;
}

void __39__UpgradeSequencer_lockIsHeldByClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lockingClient];

  if (v2)
  {
    v3 = [*(a1 + 32) lockingClient];
    *(*(*(a1 + 40) + 8) + 24) = rpc_creds_equal([v3 cred], *(a1 + 48));
  }
}

- (void)abortWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __40__UpgradeSequencer_abortWithCompletion___block_invoke;
  v7[3] = &unk_100071598;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __40__UpgradeSequencer_abortWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _abort];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)_isInterfaceLocked
{
  selfCopy = self;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lockingClient = [(UpgradeSequencer *)selfCopy lockingClient];
  LOBYTE(selfCopy) = lockingClient != 0;

  return selfCopy;
}

- (int)_setKernelUpgradeOngoing:(BOOL)ongoing
{
  ongoingCopy = ongoing;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return sysctl_upgrade_set(ongoingCopy);
}

- (id)_completeUpgradeSession
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [(UpgradeSequencer *)self _setKernelUpgradeOngoing:0];
  if (v4)
  {
    v5 = v4;
    logHandle = [(UpgradeSequencer *)self logHandle];

    if (logHandle)
    {
      logHandle2 = [(UpgradeSequencer *)self logHandle];
      os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR);
      v8 = _os_log_send_and_compose_impl();
    }

    else
    {
      v8 = _os_log_send_and_compose_impl();
    }

    Error = createError("[UpgradeSequencer _completeUpgradeSession]", "upgrade_sequencer.m", 611, "com.apple.security.cryptex.posix", v5, 0, v8);
    free(v8);
  }

  else
  {
    _unlockInterface = [(UpgradeSequencer *)self _unlockInterface];
    if (_unlockInterface)
    {
      logHandle3 = [(UpgradeSequencer *)self logHandle];

      if (logHandle3)
      {
        logHandle4 = [(UpgradeSequencer *)self logHandle];
        os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR);
        v12 = _os_log_send_and_compose_impl();
      }

      else
      {
        v12 = _os_log_send_and_compose_impl();
      }

      Error = createError("[UpgradeSequencer _completeUpgradeSession]", "upgrade_sequencer.m", 620, "com.apple.security.cryptex.posix", 26, _unlockInterface, v12);
      free(v12);
    }

    else
    {
      Error = 0;
    }
  }

  return Error;
}

- (void)_handleInterfaceLockCancel
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lockingClient = [(UpgradeSequencer *)self lockingClient];

  if (lockingClient)
  {
    buffer[0] = *"unknown";
    buffer[1] = *&qword_100059128;
    lockingClient2 = [(UpgradeSequencer *)self lockingClient];
    conn = [lockingClient2 conn];
    pid = xpc_connection_get_pid(conn);
    proc_name(pid, buffer, 0x20u);

    v10 = *__error();
    logHandle = [(UpgradeSequencer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      lockingClient3 = [(UpgradeSequencer *)self lockingClient];
      conn2 = [lockingClient3 conn];
      if (conn2)
      {
        lockingClient4 = [(UpgradeSequencer *)self lockingClient];
        conn3 = [lockingClient4 conn];
        v14 = xpc_connection_get_pid(conn3);
      }

      else
      {
        v14 = -1;
      }

      v19 = 136315394;
      v20 = buffer;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Client disconnected.", &v19, 0x12u);
      if (conn2)
      {
      }
    }

    *__error() = v10;
    _abort = [(UpgradeSequencer *)self _abort];
    if (_abort)
    {
      v16 = *__error();
      logHandle2 = [(UpgradeSequencer *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buffer[0]) = 138412290;
        *(buffer + 4) = _abort;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_ERROR, "Failed to abort upgrade.: %@", buffer, 0xCu);
      }

      *__error() = v16;
    }

    _unlockInterface = [(UpgradeSequencer *)self _unlockInterface];
  }
}

- (id)_unlockInterface
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lockingClient = [(UpgradeSequencer *)self lockingClient];

  if (lockingClient)
  {
    [(UpgradeSequencer *)self _disableInterfaceLockTimeout];
    [(UpgradeSequencer *)self setLockingClient:0];
  }

  return 0;
}

- (void)_disableInterfaceLockTimeout
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  buffer[0] = *"unknown";
  buffer[1] = *&qword_100059128;
  lockingClient = [(UpgradeSequencer *)self lockingClient];
  conn = [lockingClient conn];
  pid = xpc_connection_get_pid(conn);
  proc_name(pid, buffer, 0x20u);

  v9 = *__error();
  logHandle = [(UpgradeSequencer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    lockingClient2 = [(UpgradeSequencer *)self lockingClient];
    conn2 = [lockingClient2 conn];
    if (conn2)
    {
      lockingClient3 = [(UpgradeSequencer *)self lockingClient];
      conn3 = [lockingClient3 conn];
      v13 = xpc_connection_get_pid(conn3);
    }

    else
    {
      v13 = -1;
    }

    v15 = 136315394;
    v16 = buffer;
    v17 = 1024;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Suspending upgrade lock timeout.", &v15, 0x12u);
    if (conn2)
    {
    }
  }

  *__error() = v9;
  lockTimer = [(UpgradeSequencer *)self lockTimer];
  dispatch_source_set_timer(lockTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_restartInterfaceLockTimeout
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  buffer[0] = *"unknown";
  buffer[1] = *&qword_100059128;
  lockingClient = [(UpgradeSequencer *)self lockingClient];
  conn = [lockingClient conn];
  pid = xpc_connection_get_pid(conn);
  proc_name(pid, buffer, 0x20u);

  v9 = *__error();
  logHandle = [(UpgradeSequencer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    lockingClient2 = [(UpgradeSequencer *)self lockingClient];
    conn2 = [lockingClient2 conn];
    if (conn2)
    {
      lockingClient3 = [(UpgradeSequencer *)self lockingClient];
      conn3 = [lockingClient3 conn];
      v13 = xpc_connection_get_pid(conn3);
    }

    else
    {
      v13 = -1;
    }

    v16 = 136315650;
    v17 = buffer;
    v18 = 1024;
    v19 = v13;
    v20 = 1024;
    v21 = 10;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Giving client another %d seconds to hold lock.", &v16, 0x18u);
    if (conn2)
    {
    }
  }

  *__error() = v9;
  lockTimer = [(UpgradeSequencer *)self lockTimer];
  v15 = dispatch_walltime(0, 10000000000);
  dispatch_source_set_timer(lockTimer, v15, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (id)_timeout
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  Error = [(UpgradeSequencer *)self lockingClient];

  if (Error)
  {
    buffer[0] = *"unknown";
    buffer[1] = *&qword_100059128;
    lockingClient = [(UpgradeSequencer *)self lockingClient];
    conn = [lockingClient conn];
    pid = xpc_connection_get_pid(conn);
    proc_name(pid, buffer, 0x20u);

    logHandle = [(UpgradeSequencer *)self logHandle];

    if (logHandle)
    {
      logHandle2 = [(UpgradeSequencer *)self logHandle];
      os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR);
      lockingClient2 = [(UpgradeSequencer *)self lockingClient];
      conn2 = [lockingClient2 conn];
      if (conn2)
      {
        lockingClient3 = [(UpgradeSequencer *)self lockingClient];
        conn3 = [lockingClient3 conn];
        v15 = xpc_connection_get_pid(conn3);
      }

      else
      {
        v15 = -1;
      }

      v24 = 136315650;
      v25 = buffer;
      v26 = 1024;
      v27 = v15;
      v28 = 1024;
      v29 = 60;
      LODWORD(v23) = 24;
      v21 = _os_log_send_and_compose_impl();
      if (conn2)
      {
      }
    }

    else
    {
      v17 = &_os_log_default;
      lockingClient4 = [(UpgradeSequencer *)self lockingClient];
      conn4 = [lockingClient4 conn];
      if (conn4)
      {
        lockingClient5 = [(UpgradeSequencer *)self lockingClient];
        lockingClient3 = [lockingClient5 conn];
        v20 = xpc_connection_get_pid(lockingClient3);
      }

      else
      {
        v20 = -1;
      }

      v24 = 136315650;
      v25 = buffer;
      v26 = 1024;
      v27 = v20;
      v28 = 1024;
      v29 = 60;
      LODWORD(v23) = 24;
      v21 = _os_log_send_and_compose_impl();
      if (conn4)
      {
      }

      logHandle2 = &_os_log_default;
    }

    Error = createError("[UpgradeSequencer _timeout]", "upgrade_sequencer.m", 697, "com.apple.security.cryptex.posix", 60, 0, v21);
    free(v21);
    v16 = [(UpgradeSequencer *)self _completeUpgradeWithError:Error, &v24, v23];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_abort
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9[0] = 0;
  LODWORD(v8) = 2;
  v4 = _os_log_send_and_compose_impl();
  Error = createError("[UpgradeSequencer _abort]", "upgrade_sequencer.m", 712, "com.apple.security.cryptex", 27, 0, v4);
  free(v4);
  v6 = [(UpgradeSequencer *)self _completeUpgradeWithError:Error, v9, v8];

  return v6;
}

- (void)_startUpgradeForCryptex:(id)cryptex withGraftPath:(id)path killingJobs:(BOOL)jobs withCompletion:(id)completion
{
  jobsCopy = jobs;
  cryptexCopy = cryptex;
  pathCopy = path;
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  upgradesUnderway = [(UpgradeSequencer *)self upgradesUnderway];
  v15 = [upgradesUnderway objectForKey:cryptexCopy];

  if (v15)
  {
    logHandle = [(UpgradeSequencer *)self logHandle];

    if (logHandle)
    {
      logHandle2 = [(UpgradeSequencer *)self logHandle];
      os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR);
      v18 = _os_log_send_and_compose_impl();
    }

    else
    {
      v18 = _os_log_send_and_compose_impl();
    }

    Error = createError("[UpgradeSequencer _startUpgradeForCryptex:withGraftPath:killingJobs:withCompletion:]", "upgrade_sequencer.m", 732, "com.apple.security.cryptex", 29, 0, v18);
    free(v18);
    completionCopy[2](completionCopy, Error);
  }

  else
  {
    Error = 0;
  }

  v20 = [[UpgradeOperation alloc] initWithCryptexName:cryptexCopy graftPath:pathCopy];
  v21 = v20;
  if (v20)
  {
    [(UpgradeOperation *)v20 startUpgrade];
    upgradesUnderway2 = [(UpgradeSequencer *)self upgradesUnderway];
    [upgradesUnderway2 setObject:v21 forKeyedSubscript:cryptexCopy];

    if (jobsCopy)
    {
      [(UpgradeOperation *)v21 terminateJobsWithCompletion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }

    v26 = Error;
  }

  else
  {
    logHandle3 = [(UpgradeSequencer *)self logHandle];

    if (logHandle3)
    {
      logHandle4 = [(UpgradeSequencer *)self logHandle];
      os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR);
      v25 = _os_log_send_and_compose_impl();
    }

    else
    {
      v25 = _os_log_send_and_compose_impl();
    }

    v26 = createError("[UpgradeSequencer _startUpgradeForCryptex:withGraftPath:killingJobs:withCompletion:]", "upgrade_sequencer.m", 742, "com.apple.security.cryptex", 24, 0, v25);
    free(v25);

    completionCopy[2](completionCopy, v26);
  }
}

- (id)_completeUpgradeWithError:(id)error
{
  errorCopy = error;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  upgradesUnderway = [(UpgradeSequencer *)self upgradesUnderway];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__UpgradeSequencer__completeUpgradeWithError___block_invoke;
  v13[3] = &unk_100071610;
  v7 = errorCopy;
  v14 = v7;
  [upgradesUnderway enumerateKeysAndObjectsUsingBlock:v13];

  upgradesUnderway2 = [(UpgradeSequencer *)self upgradesUnderway];
  [upgradesUnderway2 removeAllObjects];

  sessionCompleteCallback = [(UpgradeSequencer *)self sessionCompleteCallback];

  if (sessionCompleteCallback)
  {
    sessionCompleteCallback2 = [(UpgradeSequencer *)self sessionCompleteCallback];
    (sessionCompleteCallback2)[2](sessionCompleteCallback2, v7);
  }

  _completeUpgradeSession = [(UpgradeSequencer *)self _completeUpgradeSession];

  return _completeUpgradeSession;
}

void __46__UpgradeSequencer__completeUpgradeWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v4 setError:v3];
  [v4 completeUpgrade];
}

@end