@interface NeRDOOBMessaging
- (NeRDOOBMessaging)initWithEventHandler:(id)a3 completionHandler:(id)a4 options:(id)a5;
- (void)_setupKitServerEventHandler:(id)a3;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)start;
- (void)stop:(id)a3;
@end

@implementation NeRDOOBMessaging

- (NeRDOOBMessaging)initWithEventHandler:(id)a3 completionHandler:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38.receiver = self;
  v38.super_class = NeRDOOBMessaging;
  v11 = [(NeRDOOBMessaging *)&v38 init];
  if (v11)
  {
    v12 = [[SUCoreLog alloc] initWithCategory:@"NeRDOOBMessaging"];
    [(NeRDOOBMessaging *)v11 setLogger:v12];

    v13 = dispatch_queue_create("com.apple.nerd.NeRDOOBMessagingOperationsQueue", 0);
    operationsQueue = v11->_operationsQueue;
    v11->_operationsQueue = v13;

    v15 = dispatch_queue_create("com.apple.nerd.NeRDOOBMessagingMainQueue", 0);
    managerQueue = v11->_managerQueue;
    v11->_managerQueue = v15;

    v17 = dispatch_queue_create("com.apple.nerd.NeRDOOBMessagingInvalidationQueue", 0);
    invalidationQueue = v11->_invalidationQueue;
    v11->_invalidationQueue = v17;

    v19 = dispatch_queue_create("com.apple.nerd.NeRDOOBMessagingClientCallbackQueue", 0);
    clientQueue = v11->_clientQueue;
    v11->_clientQueue = v19;

    v11->_managerIsActive = 0;
    v21 = dispatch_semaphore_create(0);
    invalidationSemaphore = v11->_invalidationSemaphore;
    v11->_invalidationSemaphore = v21;

    v23 = objc_alloc_init(SKSetupServer);
    server = v11->_server;
    v11->_server = v23;

    [(SKSetupServer *)v11->_server setSetupType:5];
    v39[0] = @"NeRDVersionKey";
    v25 = [NSNumber numberWithInteger:2];
    v40[0] = v25;
    v40[1] = @"NeRDIntentStatus";
    v39[1] = @"NeRDIntent";
    v39[2] = @"NeRDSupportsMessaging";
    v39[3] = @"NeRDSupportsOOBMessaging";
    v40[2] = &__kCFBooleanTrue;
    v40[3] = &__kCFBooleanTrue;
    v26 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
    v27 = [NSMutableDictionary dictionaryWithDictionary:v26];

    v28 = [v10 objectForKeyedSubscript:@"NeRDSUInfoVersion"];

    if (v28)
    {
      v29 = [v10 objectForKeyedSubscript:@"NeRDSUInfoVersion"];
      [v27 setValue:v29 forKey:@"NeRDSUInfoVersion"];
    }

    [(SKSetupServer *)v11->_server setServerConfig:v27];
    [(SKSetupServer *)v11->_server setSkipWifi:1];
    [(SKSetupServer *)v11->_server setDispatchQueue:v11->_operationsQueue];
    [(SKSetupServer *)v11->_server setPasswordType:2];
    [(SKSetupServer *)v11->_server setConditionalPersistent:1];
    v11->_serverWasActivated = 0;
    objc_initWeak(&location, v11);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = __67__NeRDOOBMessaging_initWithEventHandler_completionHandler_options___block_invoke;
    v35[3] = &unk_100099508;
    objc_copyWeak(&v36, &location);
    [(SKSetupServer *)v11->_server setEventHandler:v35];
    if (v8)
    {
      v30 = objc_retainBlock(v8);
      eventHandler = v11->_eventHandler;
      v11->_eventHandler = v30;
    }

    if (v9)
    {
      v32 = objc_retainBlock(v9);
      completionHandler = v11->_completionHandler;
      v11->_completionHandler = v32;
    }

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __67__NeRDOOBMessaging_initWithEventHandler_completionHandler_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupKitServerEventHandler:v3];
}

- (void)_setupKitServerEventHandler:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke;
  v7[3] = &unk_100099400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

void __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) eventType];
    *buf = 67240192;
    LODWORD(v30) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got event %{public}d from setupKit", buf, 8u);
  }

  v5 = [*(a1 + 40) error];

  if (v5)
  {
    v6 = [*(a1 + 32) logger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) error];
      *buf = 138543362;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got error from SetupKit: %{public}@", buf, 0xCu);
    }

    v9 = [*(a1 + 32) completionHandler];

    if (v9)
    {
      v10 = [*(a1 + 32) clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_427;
      block[3] = &unk_100099400;
      v11 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v28 = v11;
      dispatch_async(v10, block);
    }

    return;
  }

  v12 = [*(a1 + 40) eventType];
  v13 = [*(a1 + 32) logger];
  v14 = [v13 oslog];

  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v12 <= 40)
  {
    if (v12 == 20)
    {
      if (!v15)
      {
        goto LABEL_33;
      }

      *buf = 0;
      v20 = "Remote device setup complete";
      v21 = v14;
      v22 = 2;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      goto LABEL_33;
    }

    if (v12 == 30)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Invalidation event", buf, 2u);
      }

      v19 = [*(a1 + 32) invalidationSemaphore];
      dispatch_semaphore_signal(v19);

      return;
    }

LABEL_30:
    if (!v15)
    {
      goto LABEL_33;
    }

    v23 = [*(a1 + 40) eventType];
    *buf = 67109120;
    LODWORD(v30) = v23;
    v20 = "Unsupported event received from setupKit: %d";
    v21 = v14;
    v22 = 8;
    goto LABEL_32;
  }

  if (v12 == 41)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Connection with oob ended", buf, 2u);
    }

    v17 = [*(a1 + 32) clientQueue];
    v14 = v17;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_433;
    v24[3] = &unk_100099428;
    v24[4] = *(a1 + 32);
    v18 = v24;
    goto LABEL_27;
  }

  if (v12 == 140)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AuthCompletionHandler called with success", buf, 2u);
    }

    v17 = [*(a1 + 32) managerQueue];
    v14 = v17;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_431;
    v25[3] = &unk_100099428;
    v25[4] = *(a1 + 32);
    v18 = v25;
    goto LABEL_27;
  }

  if (v12 != 110)
  {
    goto LABEL_30;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Got request to present code - unexpected!", buf, 2u);
  }

  v16 = [*(a1 + 32) completionHandler];

  if (v16)
  {
    v17 = [*(a1 + 32) clientQueue];
    v14 = v17;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_429;
    v26[3] = &unk_100099428;
    v26[4] = *(a1 + 32);
    v18 = v26;
LABEL_27:
    dispatch_async(v17, v18);
LABEL_33:
  }
}

void __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_427(uint64_t a1)
{
  v3 = [*(a1 + 32) completionHandler];
  v2 = [*(a1 + 40) error];
  v3[2](v3, v2);
}

void __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_429(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  v1 = [NSError errorWithDomain:@"NeRDOOBMessagingError" code:1 userInfo:0];
  v2[2](v2, v1);
}

void __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_431(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SetupKit activate successfully set up", buf, 2u);
  }

  [*(a1 + 32) setManagerIsActive:1];
  v4 = [*(a1 + 32) clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_432;
  block[3] = &unk_100099428;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_432(uint64_t a1)
{
  v2 = [*(a1 + 32) activatedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) activatedHandler];
    v3[2]();
  }
}

void __48__NeRDOOBMessaging__setupKitServerEventHandler___block_invoke_433(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) connectionCompletionHandler];
    v3[2](v3, 0);
  }
}

- (void)start
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __25__NeRDOOBMessaging_start__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

void __25__NeRDOOBMessaging_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverWasActivated];
  v3 = [*(a1 + 32) logger];
  v4 = [v3 oslog];

  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Server is already active. Nothing to do", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting OOBMessenger", buf, 2u);
    }

    v4 = [*(a1 + 32) server];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __25__NeRDOOBMessaging_start__block_invoke_434;
    v7[3] = &unk_1000995A8;
    v8 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __25__NeRDOOBMessaging_start__block_invoke_2;
    v6[3] = &unk_1000995D0;
    v6[4] = v8;
    [v4 registerEventID:@"osrEventID" options:0 eventHandler:v7 completionHandler:v6];
  }
}

void __25__NeRDOOBMessaging_start__block_invoke_434(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) logger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Message received: %{public}@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) eventHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) clientQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __25__NeRDOOBMessaging_start__block_invoke_435;
    v9[3] = &unk_100099400;
    v9[4] = *(a1 + 32);
    v10 = v4;
    dispatch_async(v8, v9);
  }
}

void __25__NeRDOOBMessaging_start__block_invoke_435(uint64_t a1)
{
  v2 = [*(a1 + 32) eventHandler];
  v2[2](v2, *(a1 + 40));
}

void __25__NeRDOOBMessaging_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v3)
  {
    v9 = [v4 server];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __25__NeRDOOBMessaging_start__block_invoke_438;
    v10[3] = &unk_1000995D0;
    v10[4] = *(a1 + 32);
    [v9 activateWithCompletion:v10];
    goto LABEL_7;
  }

  v5 = [v4 logger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SetupKit server registerEventID returned error. Not setting serverWasActivated", buf, 2u);
  }

  v7 = [*(a1 + 32) completionHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __25__NeRDOOBMessaging_start__block_invoke_437;
    block[3] = &unk_100099400;
    block[4] = *(a1 + 32);
    v12 = v3;
    dispatch_async(v8, block);

    v9 = v12;
LABEL_7:
  }
}

void __25__NeRDOOBMessaging_start__block_invoke_437(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoking client completion", v5, 2u);
  }

  v4 = [*(a1 + 32) completionHandler];
  v4[2](v4, *(a1 + 40));
}

void __25__NeRDOOBMessaging_start__block_invoke_438(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SetupKit server ActivateWithCompletion returned error. Not setting serverWasActivated", buf, 2u);
    }

    v7 = [*(a1 + 32) completionHandler];

    if (v7)
    {
      v8 = [*(a1 + 32) clientQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __25__NeRDOOBMessaging_start__block_invoke_439;
      v9[3] = &unk_100099400;
      v9[4] = *(a1 + 32);
      v10 = v3;
      dispatch_async(v8, v9);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "start setting serverWasActivated to YES", buf, 2u);
    }

    [*(a1 + 32) setServerWasActivated:1];
  }
}

void __25__NeRDOOBMessaging_start__block_invoke_439(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoking client completion", v5, 2u);
  }

  v4 = [*(a1 + 32) completionHandler];
  v4[2](v4, *(a1 + 40));
}

- (void)stop:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __25__NeRDOOBMessaging_stop___block_invoke;
  v7[3] = &unk_100099580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

void __25__NeRDOOBMessaging_stop___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping OOBMessenger", buf, 2u);
  }

  v4 = [*(a1 + 32) serverWasActivated];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 setServerWasActivated:0];
    [*(a1 + 32) setManagerIsActive:0];
    v6 = [*(a1 + 32) logger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling invalidate on SetupKit server", buf, 2u);
    }

    v8 = [*(a1 + 32) server];
    [v8 deregisterEventID:@"osrEventID" completionHandler:&__block_literal_global_3];

    v9 = [*(a1 + 32) server];
    [v9 invalidate];

    v10 = [*(a1 + 32) invalidationQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __25__NeRDOOBMessaging_stop___block_invoke_2;
    v17[3] = &unk_100099580;
    v11 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v12 = &v18;
    v18 = v11;
    v13 = v17;
  }

  else
  {
    v10 = [v5 invalidationQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __25__NeRDOOBMessaging_stop___block_invoke_2_443;
    v15[3] = &unk_100099580;
    v14 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v12 = &v16;
    v16 = v14;
    v13 = v15;
  }

  dispatch_async(v10, v13);
}

void __25__NeRDOOBMessaging_stop___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidationSemaphore];
  v3 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v2, v3);

  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidation completed successfully", buf, 2u);
  }

  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __25__NeRDOOBMessaging_stop___block_invoke_442;
    block[3] = &unk_100099620;
    v8 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void __25__NeRDOOBMessaging_stop___block_invoke_2_443(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidate called when manager is not active. Nothing to do", buf, 2u);
  }

  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __25__NeRDOOBMessaging_stop___block_invoke_444;
    block[3] = &unk_100099620;
    v6 = *(a1 + 40);
    dispatch_async(v4, block);
  }
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__NeRDOOBMessaging_sendMessage_completion___block_invoke;
  block[3] = &unk_100099698;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(managerQueue, block);
}

void __43__NeRDOOBMessaging_sendMessage_completion___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) managerIsActive] & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v2 = [*(a1 + 32) clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __43__NeRDOOBMessaging_sendMessage_completion___block_invoke_2;
      block[3] = &unk_100099620;
      v13 = *(a1 + 48);
      dispatch_async(v2, block);
    }
  }

  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) server];
    v4 = *(a1 + 40);
    v14 = SKOptionTimeoutSeconds;
    v15 = &off_1000A7EE8;
    v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __43__NeRDOOBMessaging_sendMessage_completion___block_invoke_446;
    v10[3] = &unk_100099670;
    v6 = &v11;
    v7 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v11 = v7;
    [v3 sendEventID:@"osrEventID" eventMessage:v4 options:v5 completionHandler:v10];
  }

  else
  {
    if (!*(a1 + 48))
    {
      return;
    }

    v3 = [*(a1 + 32) clientQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __43__NeRDOOBMessaging_sendMessage_completion___block_invoke_3;
    v8[3] = &unk_100099620;
    v6 = &v9;
    v9 = *(a1 + 48);
    dispatch_async(v3, v8);
  }
}

void __43__NeRDOOBMessaging_sendMessage_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"NeRDOOBMessagingError" code:2 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __43__NeRDOOBMessaging_sendMessage_completion___block_invoke_446(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __43__NeRDOOBMessaging_sendMessage_completion___block_invoke_2_447;
    v5[3] = &unk_100099648;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

@end