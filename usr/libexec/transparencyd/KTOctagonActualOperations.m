@interface KTOctagonActualOperations
- (BOOL)ckksViewReady:(id)a3 error:(id *)a4;
- (BOOL)getCachedOctagonStatus:(double)a3;
- (KTOctagonActualOperations)initWithDistributedNotificationCenter:(id)a3 octagonControl:(id)a4 ckksControl:(id)a5 logger:(id)a6;
- (KTOctagonProtocol)octagonControl;
- (id)ckksControl:(id *)a3;
- (unint64_t)ckksGetKnownBadState:(id)a3;
- (unint64_t)octagonStatus:(id *)a3;
- (void)addPassiveMonitorForView:(id)a3;
- (void)checkAllCKKSMonitoredViews;
- (void)checkCKKSAvailable:(id)a3;
- (void)ckksNotify:(id)a3;
- (void)ckksRequestViewSync:(id)a3 complete:(id)a4;
- (void)dealloc;
- (void)manateeChanged;
- (void)shutdown;
- (void)triggerActiveMonitorForView:(id)a3;
@end

@implementation KTOctagonActualOperations

- (KTOctagonActualOperations)initWithDistributedNotificationCenter:(id)a3 octagonControl:(id)a4 ckksControl:(id)a5 logger:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v38.receiver = self;
  v38.super_class = KTOctagonActualOperations;
  v14 = [(KTOctagonActualOperations *)&v38 init];
  if (v14)
  {
    objc_initWeak(&location, v14);
    [(KTOctagonActualOperations *)v14 setCkksTimeout:2.0];
    [(KTOctagonActualOperations *)v14 setOctagonEligibilityTimeout:5.0];
    [(KTOctagonActualOperations *)v14 setOctagonToken:0xFFFFFFFFLL];
    [(KTOctagonActualOperations *)v14 setOctagonTrusted:2];
    [(KTOctagonActualOperations *)v14 setLogger:v13];
    v15 = +[NSMutableSet set];
    [(KTOctagonActualOperations *)v14 setViews:v15];

    v16 = dispatch_queue_create("KTOctagonActualOperations", 0);
    [(KTOctagonActualOperations *)v14 setQueue:v16];

    v17 = [KTNearFutureScheduler alloc];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001F7EEC;
    v35[3] = &unk_1003175E0;
    objc_copyWeak(&v36, &location);
    v18 = [(KTNearFutureScheduler *)v17 initWithName:@"OctagonPoller" delay:1000000000 keepProcessAlive:0 dependencyDescriptionCode:0 block:v35];
    [(KTOctagonActualOperations *)v14 setNfs:v18];

    v19 = [(KTOctagonActualOperations *)v14 nfs];
    [v13 addNFSReporting:v19];

    v20 = [KTNearFutureScheduler alloc];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001F7F2C;
    v33[3] = &unk_1003175E0;
    objc_copyWeak(&v34, &location);
    v21 = [(KTNearFutureScheduler *)v20 initWithName:@"ckksCheckerNFS" initialDelay:2000000000 exponentialBackoff:3600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v33 block:1.5];
    [(KTOctagonActualOperations *)v14 setCkksCheckerNFS:v21];

    v22 = [(KTOctagonActualOperations *)v14 ckksCheckerNFS];
    [v13 addNFSReporting:v22];

    [(KTOctagonActualOperations *)v14 setNotificationCenter:v10];
    v23 = [(KTOctagonActualOperations *)v14 queue];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1001F7F6C;
    v31 = &unk_10031A548;
    objc_copyWeak(&v32, &location);
    notify_register_dispatch("com.apple.security.octagon.trust-status-change", &v14->_octagonToken, v23, &v28);

    v24 = [(KTOctagonActualOperations *)v14 notificationCenter:v28];
    [v24 addObserver:v14 selector:"ckksNotify:" name:@"com.apple.security.view-become-ready" object:0];

    if (v11)
    {
      v25 = v11;
    }

    else
    {
      v25 = v14;
    }

    [(KTOctagonActualOperations *)v14 setOctagonControl:v25];
    [(KTOctagonActualOperations *)v14 setCkksControlInterface:v12];
    v26 = v14;
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (void)shutdown
{
  v3 = [(KTOctagonActualOperations *)self nfs];
  [v3 cancel];

  v4 = [(KTOctagonActualOperations *)self ckksCheckerNFS];
  [v4 cancel];

  if ([(KTOctagonActualOperations *)self octagonToken]!= -1)
  {
    notify_cancel([(KTOctagonActualOperations *)self octagonToken]);
    [(KTOctagonActualOperations *)self setOctagonToken:0xFFFFFFFFLL];
  }

  v5 = [(KTOctagonActualOperations *)self notificationCenter];
  [v5 removeObserver:self name:@"com.apple.security.view-become-ready" object:0];
}

- (void)ckksNotify:(id)a3
{
  v4 = a3;
  if (qword_10039CBB0 != -1)
  {
    sub_10025D784();
  }

  v5 = qword_10039CBB8;
  if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "View become ready: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x2020000000;
  v14 = 1;
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"view"];

  if (v7)
  {
    v8 = [(KTOctagonActualOperations *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F82A0;
    block[3] = &unk_10031A198;
    p_buf = &buf;
    block[4] = self;
    v10 = v7;
    dispatch_sync(v8, block);
  }

  if (*(*(&buf + 1) + 24) == 1)
  {
    [(KTOctagonActualOperations *)self checkAllCKKSMonitoredViews];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)dealloc
{
  [(KTOctagonActualOperations *)self shutdown];
  v3.receiver = self;
  v3.super_class = KTOctagonActualOperations;
  [(KTOctagonActualOperations *)&v3 dealloc];
}

- (void)manateeChanged
{
  v3 = [(KTOctagonActualOperations *)self octagonControl];
  v4 = [v3 octagonStatus:0];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(KTOctagonActualOperations *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F8494;
  block[3] = &unk_100329288;
  block[5] = &v9;
  block[6] = v4;
  block[4] = self;
  dispatch_sync(v5, block);

  if (*(v10 + 24) == 1)
  {
    v6 = [(KTOctagonActualOperations *)self octagonObserver];

    if (v6)
    {
      v7 = [(KTOctagonActualOperations *)self octagonObserver];
      (v7)[2](v7, v4 != 0);
    }
  }

  if (v4)
  {
    [(KTOctagonActualOperations *)self checkAllCKKSMonitoredViews];
  }

  _Block_object_dispose(&v9, 8);
}

- (BOOL)getCachedOctagonStatus:(double)a3
{
  if ([(KTOctagonActualOperations *)self octagonTrusted]== 2)
  {
    v5 = dispatch_semaphore_create(0);
    v6 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F878C;
    block[3] = &unk_1003180E0;
    block[4] = self;
    v7 = v5;
    v14 = v7;
    dispatch_async(v6, block);

    v8 = dispatch_time(0, (a3 * 1000000000.0));
    if (dispatch_semaphore_wait(v7, v8))
    {
      if (qword_10039CBB0 != -1)
      {
        sub_10025D7AC();
      }

      v9 = qword_10039CBB8;
      if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "getCachedOctagonStatus: Fetching octagon status timed out", v12, 2u);
      }
    }

    v10 = [(KTOctagonActualOperations *)self octagonTrusted];
  }

  else
  {
    v10 = [(KTOctagonActualOperations *)self octagonTrusted];
  }

  return v10 == 1;
}

- (unint64_t)octagonStatus:(id *)a3
{
  v3 = objc_alloc_init(OTConfigurationContext);
  [v3 setContext:OTDefaultContext];
  v4 = [[OTClique alloc] initWithContextData:v3];
  v5 = objc_alloc_init(OTOperationConfiguration);
  [v5 setTimeoutWaitForCKAccount:2000000000];
  [v5 setUseCachedAccountStatus:1];
  v10 = 0;
  v6 = [v4 fetchCliqueStatus:v5 error:&v10];
  v7 = v10;
  if (qword_10039CBB0 != -1)
  {
    sub_10025D7D4();
  }

  v8 = qword_10039CBB8;
  if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v12 = v6 == 0;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee status is: %{BOOL}d: %@", buf, 0x12u);
  }

  return v6 == 0;
}

- (id)ckksControl:(id *)a3
{
  os_unfair_lock_lock(&unk_10039CBC0);
  v4 = [(KTOctagonActualOperations *)self ckksControlInterface];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v6 = [CKKSControl controlObject:&v11];
    v5 = v11;
    [(KTOctagonActualOperations *)self setCkksControlInterface:v6];
  }

  os_unfair_lock_unlock(&unk_10039CBC0);
  v7 = [(KTOctagonActualOperations *)self ckksControlInterface];

  if (!v7)
  {
    if (qword_10039CBB0 != -1)
    {
      sub_10025D7FC();
    }

    v8 = qword_10039CBB8;
    if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CKKS have no control: %@", buf, 0xCu);
    }
  }

  v9 = [(KTOctagonActualOperations *)self ckksControlInterface];

  return v9;
}

- (BOOL)ckksViewReady:(id)a3 error:(id *)a4
{
  v5 = a3;
  v24 = 0;
  v6 = [(KTOctagonActualOperations *)self ckksControl:&v24];
  v7 = v24;
  if (v6)
  {
    *v27 = 0;
    *&v27[8] = v27;
    *&v27[16] = 0x2020000000;
    v28 = 0;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1001F8ECC;
    v20 = &unk_100329350;
    v8 = dispatch_semaphore_create(0);
    v21 = v8;
    v23 = v27;
    v9 = v5;
    v22 = v9;
    [v6 rpcFastStatus:v9 reply:&v17];
    [(KTOctagonActualOperations *)self ckksTimeout:v17];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    if (dispatch_semaphore_wait(v8, v11))
    {
      if (qword_10039CBB0 != -1)
      {
        sub_10025D824();
      }

      v12 = qword_10039CBB8;
      if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CKKS query timed out", buf, 2u);
      }
    }

    v13 = *(*&v27[8] + 24);
    if ((v13 & 1) == 0)
    {
      if (qword_10039CBB0 != -1)
      {
        sub_10025D84C();
      }

      v14 = qword_10039CBB8;
      if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting up a new monitor for CKKS: %@", buf, 0xCu);
      }

      [(KTOctagonActualOperations *)self triggerActiveMonitorForView:v9];
      v13 = *(*&v27[8] + 24);
    }

    _Block_object_dispose(v27, 8);
  }

  else
  {
    if (qword_10039CBB0 != -1)
    {
      sub_10025D874();
    }

    v15 = qword_10039CBB8;
    if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 138412546;
      *&v27[4] = v5;
      *&v27[12] = 2112;
      *&v27[14] = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CKKS have no control, starting watcher: %@: %@", v27, 0x16u);
    }

    [(KTOctagonActualOperations *)self triggerActiveMonitorForView:v5];
    v13 = 0;
  }

  return v13 & 1;
}

- (void)addPassiveMonitorForView:(id)a3
{
  v4 = a3;
  v5 = [(KTOctagonActualOperations *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F9250;
  v7[3] = &unk_1003180E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)triggerActiveMonitorForView:(id)a3
{
  v4 = a3;
  v5 = [(KTOctagonActualOperations *)self queue];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001F9424;
  v14 = &unk_1003180E0;
  v15 = self;
  v6 = v4;
  v16 = v6;
  dispatch_sync(v5, &v11);

  v7 = [(KTOctagonActualOperations *)self ckksCheckerNFS:v11];
  [v7 trigger];

  if (qword_10039CBB0 != -1)
  {
    sub_10025D8C4();
  }

  v8 = qword_10039CBB8;
  if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(KTOctagonActualOperations *)self ckksCheckerNFS];
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Triggered CKKS checker: %@", buf, 0xCu);
  }
}

- (void)checkAllCKKSMonitoredViews
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1001F9730;
  v20 = sub_1001F9740;
  v21 = 0;
  v3 = [(KTOctagonActualOperations *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F9748;
  block[3] = &unk_10031DC58;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(v3, block);

  if (qword_10039CBB0 != -1)
  {
    sub_10025D8EC();
  }

  v4 = qword_10039CBB8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v17[5] allObjects];
    v6 = [v5 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKKS checking if views are now available %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v17[5];
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(KTOctagonActualOperations *)self checkCKKSAvailable:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)checkCKKSAvailable:(id)a3
{
  v4 = a3;
  v5 = [(KTOctagonActualOperations *)self octagonControl];
  v24 = 0;
  v6 = [v5 octagonStatus:&v24];
  v7 = v24;

  if (v6)
  {
    v23 = 0;
    v8 = [(KTOctagonActualOperations *)self ckksViewReady:v4 error:&v23];
    v9 = v23;
    if (v8)
    {
      if (qword_10039CBB0 != -1)
      {
        sub_10025D93C();
      }

      v10 = qword_10039CBB8;
      if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CKKS view %@ is available", buf, 0xCu);
      }

      v11 = [(KTOctagonActualOperations *)self queue];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1001F9B7C;
      v20 = &unk_1003180E0;
      v21 = self;
      v12 = v4;
      v22 = v12;
      dispatch_sync(v11, &v17);

      v13 = [(KTOctagonActualOperations *)self ckksViewObserver:v17];

      if (v13)
      {
        v14 = [(KTOctagonActualOperations *)self ckksViewObserver];
        (v14)[2](v14, v12);
      }
    }

    else
    {
      if (qword_10039CBB0 != -1)
      {
        sub_10025D914();
      }

      v16 = qword_10039CBB8;
      if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v26 = v4;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CKKS not available for view: %{public}@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (qword_10039CBB0 != -1)
    {
      sub_10025D964();
    }

    v15 = qword_10039CBB8;
    if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Octagon no longer available, stopping to monitor: %@", buf, 0xCu);
    }
  }
}

- (void)ckksRequestViewSync:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(KTOctagonActualOperations *)self ckksControl:&v12];
  v9 = v12;
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001F9CD0;
    v10[3] = &unk_10031A768;
    v11 = v7;
    [v8 rpcFetchAndProcessChanges:v6 reply:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v9, 600.0);
  }
}

- (unint64_t)ckksGetKnownBadState:(id)a3
{
  v4 = a3;
  v23 = 0;
  v5 = [(KTOctagonActualOperations *)self ckksControl:&v23];
  v6 = v23;
  if (v5)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v7 = dispatch_semaphore_create(0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001F9FE8;
    v15[3] = &unk_100329498;
    v18 = &v19;
    v16 = v4;
    v8 = v7;
    v17 = v8;
    [v5 rpcKnownBadState:v16 reply:v15];
    [(KTOctagonActualOperations *)self ckksTimeout];
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    if (dispatch_semaphore_wait(v8, v10))
    {
      if (qword_10039CBB0 != -1)
      {
        sub_10025D9A0();
      }

      v11 = qword_10039CBB8;
      if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CKKS query timed out", v14, 2u);
      }
    }

    v12 = v20[3];

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (KTOctagonProtocol)octagonControl
{
  WeakRetained = objc_loadWeakRetained(&self->_octagonControl);

  return WeakRetained;
}

@end