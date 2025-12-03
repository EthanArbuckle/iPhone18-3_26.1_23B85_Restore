@interface BackgroundTaskScheduler
- (BackgroundTaskScheduler)initWithIdentifier:(id)identifier interval:(int64_t)interval queue:(id)queue delegate:(id)delegate;
- (void)activate;
- (void)activateInternal;
- (void)completeTask:(id)task;
- (void)dealloc;
- (void)handleTask:(id)task;
- (void)handleTaskOnClientQueue:(id)queue;
- (void)log;
- (void)updateTaskIfRequired;
@end

@implementation BackgroundTaskScheduler

- (BackgroundTaskScheduler)initWithIdentifier:(id)identifier interval:(int64_t)interval queue:(id)queue delegate:(id)delegate
{
  identifierCopy = identifier;
  queueCopy = queue;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = BackgroundTaskScheduler;
  v14 = [(BackgroundTaskScheduler *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v15->_interval = interval;
    objc_storeStrong(&v15->_clientQueue, queue);
    uTF8String = [identifierCopy UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);
    internalQueue = v15->_internalQueue;
    v15->_internalQueue = v18;

    objc_storeWeak(&v15->_delegate, delegateCopy);
  }

  return v15;
}

- (void)dealloc
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected dealloc", &v8, 0x16u);
  }

  v6 = abort_report_np();
  [(BackgroundTaskScheduler *)v6 activate];
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017B28;
  block[3] = &unk_10005C700;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)activateInternal
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_active)
  {
    sub_10002BC58(self, a2);
    goto LABEL_27;
  }

  if (!objc_opt_class())
  {
LABEL_27:
    sub_10002BB8C(self, a2);
    return;
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  identifier = self->_identifier;
  internalQueue = self->_internalQueue;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000182E8;
  v51[3] = &unk_10005CAF0;
  v51[4] = self;
  v7 = [v4 registerForTaskWithIdentifier:identifier usingQueue:internalQueue launchHandler:v51];

  if ((v7 & 1) == 0)
  {
    v13 = sub_100025204();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v40 = [objc_opt_class() description];
    v41 = NSStringFromSelector(a2);
    v42 = self->_identifier;
    *buf = 138543874;
    v53 = v40;
    v54 = 2114;
    v55 = v41;
    v56 = 2112;
    v57 = v42;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to register task: %@", buf, 0x20u);

    goto LABEL_32;
  }

  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v11 = self->_identifier;
    *buf = 138543874;
    v53 = v9;
    v54 = 2114;
    v55 = v10;
    v56 = 2112;
    v57 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: registered task: %@", buf, 0x20u);
  }

  v12 = +[BGSystemTaskScheduler sharedScheduler];
  v13 = [v12 taskRequestForIdentifier:self->_identifier];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 interval];
      v15 = v14;
      interval = self->_interval;
      v17 = sub_100025204();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v15 == interval)
      {
        if (!v18)
        {
LABEL_21:

          self->_active = 1;
LABEL_22:

          return;
        }

        v19 = [objc_opt_class() description];
        v20 = NSStringFromSelector(a2);
        v21 = self->_identifier;
        *buf = 138543874;
        v53 = v19;
        v54 = 2114;
        v55 = v20;
        v56 = 2112;
        v57 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: task request already exists, skipping submission: %@", buf, 0x20u);

LABEL_20:
        goto LABEL_21;
      }

      if (v18)
      {
        v29 = [objc_opt_class() description];
        v30 = NSStringFromSelector(a2);
        v31 = self->_identifier;
        *buf = 138543874;
        v53 = v29;
        v54 = 2114;
        v55 = v30;
        v56 = 2112;
        v57 = v31;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: task request already exists, but needs reconfiguration: %@", buf, 0x20u);
      }

      [v13 setInterval:self->_interval];
      v32 = +[BGSystemTaskScheduler sharedScheduler];
      v50 = 0;
      v33 = [v32 updateTaskRequest:v13 error:&v50];
      v17 = v50;

      v19 = sub_100025204();
      v34 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (!v33)
      {
        if (v34)
        {
          v37 = [objc_opt_class() description];
          v38 = NSStringFromSelector(a2);
          v39 = self->_identifier;
          *buf = 138544130;
          v53 = v37;
          v54 = 2114;
          v55 = v38;
          v56 = 2112;
          v57 = v39;
          v58 = 2114;
          v59 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: failed to update task: %@: %{public}@", buf, 0x2Au);
        }

        self->_updateRequired = 1;
        goto LABEL_21;
      }

      if (!v34)
      {
        goto LABEL_20;
      }

      v24 = [objc_opt_class() description];
      v35 = NSStringFromSelector(a2);
      v36 = self->_identifier;
      *buf = 138543874;
      v53 = v24;
      v54 = 2114;
      v55 = v35;
      v56 = 2112;
      v57 = v36;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: updated task: %@", buf, 0x20u);

LABEL_19:
      goto LABEL_20;
    }

    v40 = sub_100025204();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v46 = [objc_opt_class() description];
      v47 = NSStringFromSelector(a2);
      v48 = self->_identifier;
      *buf = 138543874;
      v53 = v46;
      v54 = 2114;
      v55 = v47;
      v56 = 2112;
      v57 = v48;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: task request already exists, but is not repeating: %@", buf, 0x20u);
    }

LABEL_32:

    goto LABEL_22;
  }

  v17 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:self->_identifier];
  [v17 setPriority:2];
  [v17 setRequiresNetworkConnectivity:0];
  [v17 setRequiresExternalPower:0];
  [v17 setInterval:self->_interval];
  [v17 setRequiresUserInactivity:self->_requiresUserInactivity];
  [v17 setRequiresProtectionClass:5];
  v22 = +[BGSystemTaskScheduler sharedScheduler];
  v49 = 0;
  v23 = [v22 submitTaskRequest:v17 error:&v49];
  v19 = v49;

  v24 = sub_100025204();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      v26 = [objc_opt_class() description];
      v27 = NSStringFromSelector(a2);
      v28 = self->_identifier;
      *buf = 138543874;
      v53 = v26;
      v54 = 2114;
      v55 = v27;
      v56 = 2112;
      v57 = v28;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: submitted task: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (v25)
  {
    v43 = [objc_opt_class() description];
    v44 = NSStringFromSelector(a2);
    v45 = self->_identifier;
    *buf = 138544130;
    v53 = v43;
    v54 = 2114;
    v55 = v44;
    v56 = 2112;
    v57 = v45;
    v58 = 2114;
    v59 = v19;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: failed to submit task: %@: %{public}@", buf, 0x2Au);
  }
}

- (void)log
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = v6;
    v8 = "inactive";
    startedCount = self->_startedCount;
    completedCount = self->_completedCount;
    if (self->_active)
    {
      v8 = "active";
    }

    identifier = self->_identifier;
    interval = self->_interval;
    requiresUserInactivity = self->_requiresUserInactivity;
    updateRequired = self->_updateRequired;
    v15 = 138545410;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2112;
    v20 = identifier;
    v21 = 2080;
    v22 = v8;
    v23 = 2048;
    v24 = startedCount;
    v25 = 2048;
    v26 = completedCount;
    v27 = 2048;
    v28 = interval;
    v29 = 1024;
    v30 = requiresUserInactivity;
    v31 = 1024;
    v32 = updateRequired;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@, %s, started %lu, completed %lu, interval %ld sec, requires user inactivity %u, update required %u", &v15, 0x54u);
  }
}

- (void)handleTask:(id)task
{
  taskCopy = task;
  v6 = self->_identifier;
  dispatch_assert_queue_V2(self->_internalQueue);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100018654;
  v16[3] = &unk_10005CB18;
  v16[4] = self;
  v18 = a2;
  v7 = v6;
  v17 = v7;
  [taskCopy setExpirationHandler:v16];
  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    identifier = self->_identifier;
    *buf = 138543874;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@", buf, 0x20u);
  }

  ++self->_startedCount;
  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018748;
  block[3] = &unk_10005CB40;
  block[4] = self;
  v15 = taskCopy;
  v13 = taskCopy;
  dispatch_async(clientQueue, block);
}

- (void)handleTaskOnClientQueue:(id)queue
{
  queueCopy = queue;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  dispatch_assert_queue_V2(self->_clientQueue);
  if (WeakRetained)
  {
    identifier = self->_identifier;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100018864;
    v9[3] = &unk_10005CB40;
    v9[4] = self;
    v10 = queueCopy;
    [WeakRetained runBackgroundTaskWithIdentifier:identifier completion:v9];
  }

  else
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002BD04(self, a2);
    }

    [(BackgroundTaskScheduler *)self completeTask:queueCopy];
  }
}

- (void)completeTask:(id)task
{
  taskCopy = task;
  dispatch_assert_queue_V2(self->_clientQueue);
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001891C;
  v7[3] = &unk_10005CB40;
  v8 = taskCopy;
  selfCopy = self;
  v6 = taskCopy;
  dispatch_async(internalQueue, v7);
}

- (void)updateTaskIfRequired
{
  dispatch_assert_queue_V2(self->_internalQueue);
  ++self->_completedCount;
  if (!self->_updateRequired)
  {
    v9 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:self->_identifier];

  if (!v5)
  {
    v10 = sub_100025204();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      *buf = 138543618;
      v35 = v27;
      v37 = v36 = 2114;
      sub_1000189E0();
      _os_log_error_impl(v28, v29, v30, v31, v32, 0x16u);
    }

    v9 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = sub_100025204();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      v9 = 0;
      goto LABEL_9;
    }

    v17 = [objc_opt_class() description];
    v18 = NSStringFromSelector(a2);
    identifier = self->_identifier;
    *buf = 138543874;
    v35 = v17;
    sub_1000189C4();
    sub_1000189E0();
    v25 = 32;
LABEL_22:
    _os_log_error_impl(v20, v21, v22, v23, v24, v25);

    goto LABEL_18;
  }

  [v5 interval];
  if (v6 == self->_interval)
  {
    v10 = sub_100025204();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v17 = [objc_opt_class() description];
    v18 = NSStringFromSelector(a2);
    *buf = 138543618;
    v35 = v17;
    v36 = 2114;
    v37 = v18;
    sub_1000189E0();
    v25 = 22;
    goto LABEL_22;
  }

  [v5 setInterval:?];
  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v33 = 0;
  v8 = [v7 updateTaskRequest:v5 error:&v33];
  v9 = v33;

  if ((v8 & 1) == 0)
  {
    self->_updateRequired = 1;
    v10 = sub_100025204();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v26 = self->_identifier;
    *buf = 138544130;
    v35 = v11;
    v36 = 2114;
    v37 = v12;
    v38 = 2112;
    v39 = v26;
    v40 = 2114;
    v41 = v9;
    v14 = "%{public}@::%{public}@: failed to update task: %@: %{public}@";
    v15 = v10;
    v16 = 42;
    goto LABEL_8;
  }

  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v13 = self->_identifier;
    *buf = 138543874;
    v35 = v11;
    sub_1000189C4();
    v14 = "%{public}@::%{public}@: updated task: %@";
    v15 = v10;
    v16 = 32;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
  }

LABEL_9:

LABEL_10:
  self->_updateRequired = 0;
}

@end