@interface MCBackgroundTask
- (MCBackgroundTask)initWithName:(id)name queue:(id)queue completion:(id)completion;
- (id)_submitNewRequestWithInterval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements;
- (id)_updateExistingRequest:(id)request interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements;
- (id)cancel;
- (id)submitRequestWithInterval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements;
- (void)_infuseRequest:(id)request interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements;
- (void)dealloc;
@end

@implementation MCBackgroundTask

- (MCBackgroundTask)initWithName:(id)name queue:(id)queue completion:(id)completion
{
  nameCopy = name;
  queueCopy = queue;
  completionCopy = completion;
  v25.receiver = self;
  v25.super_class = MCBackgroundTask;
  v12 = [(MCBackgroundTask *)&v25 init];
  if (v12)
  {
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = nameCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask initialized task: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v12->_name, name);
    *&v12->_active = 256;
    v14 = objc_retainBlock(completionCopy);
    completion = v12->_completion;
    v12->_completion = v14;

    objc_initWeak(&location, v12);
    v16 = +[BGSystemTaskScheduler sharedScheduler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001B0B8;
    v21[3] = &unk_10011C0A8;
    v17 = nameCopy;
    v22 = v17;
    objc_copyWeak(&v23, &location);
    v18 = [v16 registerForTaskWithIdentifier:v17 usingQueue:queueCopy launchHandler:v21];

    if ((v18 & 1) == 0)
    {
      v19 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "MCBackgroundTask failed to register task: %{public}@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)dealloc
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    name = [(MCBackgroundTask *)self name];
    *buf = 138543362;
    v10 = name;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask deallocated task: %{public}@", buf, 0xCu);
  }

  v6 = +[BGSystemTaskScheduler sharedScheduler];
  name2 = [(MCBackgroundTask *)self name];
  [v6 deregisterTaskWithIdentifier:name2];

  v8.receiver = self;
  v8.super_class = MCBackgroundTask;
  [(MCBackgroundTask *)&v8 dealloc];
}

- (id)submitRequestWithInterval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements
{
  [(MCBackgroundTask *)self setActive:1];
  v9 = +[BGSystemTaskScheduler sharedScheduler];
  name = [(MCBackgroundTask *)self name];
  v11 = [v9 taskRequestForIdentifier:name];

  if (!v11)
  {
LABEL_11:
    [(MCBackgroundTask *)self setFirstActionAfterInit:0];
    v24 = [(MCBackgroundTask *)self _submitNewRequestWithInterval:requirements tolerance:interval requirements:tolerance];
    goto LABEL_13;
  }

  if ([(MCBackgroundTask *)self firstActionAfterInit])
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      name2 = [(MCBackgroundTask *)self name];
      *buf = 138543362;
      v29 = name2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MCBackgroundTask %{public}@ already exists, attempting to cancel before submitting again", buf, 0xCu);
    }

    v15 = +[BGSystemTaskScheduler sharedScheduler];
    name3 = [(MCBackgroundTask *)self name];
    v27 = 0;
    v17 = [v15 cancelTaskRequestWithIdentifier:name3 error:&v27];
    v18 = v27;

    if ((v17 & 1) == 0)
    {
      v19 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        name4 = [(MCBackgroundTask *)self name];
        v22 = name4;
        v23 = @"Unknown";
        if (v18)
        {
          v23 = v18;
        }

        *buf = 138543618;
        v29 = name4;
        v30 = 2114;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "MCBackgroundTask failed to cancel task %{public}@ with error: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

  v24 = [(MCBackgroundTask *)self _updateExistingRequest:v11 interval:requirements tolerance:interval requirements:tolerance];
LABEL_13:
  v25 = v24;

  return v25;
}

- (id)cancel
{
  active = [(MCBackgroundTask *)self active];
  v4 = _MCLogObjects[0];
  v5 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
  if (active)
  {
    if (v5)
    {
      v6 = v4;
      name = [(MCBackgroundTask *)self name];
      *buf = 138543362;
      v24 = name;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask canceling task %{public}@...", buf, 0xCu);
    }

    v8 = +[BGSystemTaskScheduler sharedScheduler];
    name2 = [(MCBackgroundTask *)self name];
    v22 = 0;
    v10 = [v8 cancelTaskRequestWithIdentifier:name2 error:&v22];
    v11 = v22;

    v12 = _MCLogObjects[0];
    if (v10)
    {
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        name3 = [(MCBackgroundTask *)self name];
        *buf = 138543362;
        v24 = name3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask canceled task: %{public}@", buf, 0xCu);
      }

      [(MCBackgroundTask *)self setActive:0];
      [(MCBackgroundTask *)self setFirstActionAfterInit:0];
    }

    else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v18 = v12;
      name4 = [(MCBackgroundTask *)self name];
      v20 = name4;
      v21 = @"Unknown";
      if (v11)
      {
        v21 = v11;
      }

      *buf = 138543618;
      v24 = name4;
      v25 = 2114;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "MCBackgroundTask failed to cancel task %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v15 = v4;
      name5 = [(MCBackgroundTask *)self name];
      *buf = 138543362;
      v24 = name5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask ignoring cancellation for inactive task %{public}@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_submitNewRequestWithInterval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements
{
  v9 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    name = [(MCBackgroundTask *)self name];
    *buf = 138543362;
    v30 = name;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask submitting task %{public}@...", buf, 0xCu);
  }

  v12 = [BGNonRepeatingSystemTaskRequest alloc];
  name2 = [(MCBackgroundTask *)self name];
  v14 = [v12 initWithIdentifier:name2];

  [(MCBackgroundTask *)self _infuseRequest:v14 interval:requirements tolerance:interval requirements:tolerance];
  v15 = +[BGSystemTaskScheduler sharedScheduler];
  v28 = 0;
  v16 = [v15 submitTaskRequest:v14 error:&v28];
  v17 = v28;

  v18 = _MCLogObjects[0];
  if (v16)
  {
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v19 = v18;
    name3 = [(MCBackgroundTask *)self name];
    *buf = 138543874;
    v30 = name3;
    v31 = 2050;
    intervalCopy = interval;
    v33 = 2050;
    toleranceCopy = tolerance;
    v21 = "MCBackgroundTask submitted task %{public}@ to run in %{public}f (+%{public}f) seconds";
    v22 = v19;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 32;
  }

  else
  {
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v19 = v18;
    name4 = [(MCBackgroundTask *)self name];
    name3 = name4;
    v26 = @"Unknown";
    if (v17)
    {
      v26 = v17;
    }

    *buf = 138543618;
    v30 = name4;
    v31 = 2114;
    intervalCopy = *&v26;
    v21 = "MCBackgroundTask failed to submit task %{public}@ with error: %{public}@";
    v22 = v19;
    v23 = OS_LOG_TYPE_ERROR;
    v24 = 22;
  }

  _os_log_impl(&_mh_execute_header, v22, v23, v21, buf, v24);

LABEL_11:

  return v17;
}

- (id)_updateExistingRequest:(id)request interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements
{
  requestCopy = request;
  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    name = [(MCBackgroundTask *)self name];
    *buf = 138543362;
    v29 = name;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask updating task %{public}@...", buf, 0xCu);
  }

  [(MCBackgroundTask *)self _infuseRequest:requestCopy interval:requirements tolerance:interval requirements:tolerance];
  v14 = +[BGSystemTaskScheduler sharedScheduler];
  v27 = 0;
  v15 = [v14 updateTaskRequest:requestCopy error:&v27];
  v16 = v27;

  v17 = _MCLogObjects[0];
  if (v15)
  {
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v18 = v17;
    name2 = [(MCBackgroundTask *)self name];
    *buf = 138543874;
    v29 = name2;
    v30 = 2050;
    intervalCopy = interval;
    v32 = 2050;
    toleranceCopy = tolerance;
    v20 = "MCBackgroundTask updated task %{public}@ to run in %{public}f (+%{public}f) seconds";
    v21 = v18;
    v22 = OS_LOG_TYPE_DEFAULT;
    v23 = 32;
  }

  else
  {
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v18 = v17;
    name3 = [(MCBackgroundTask *)self name];
    name2 = name3;
    v25 = @"Unknown";
    if (v16)
    {
      v25 = v16;
    }

    *buf = 138543618;
    v29 = name3;
    v30 = 2114;
    intervalCopy = *&v25;
    v20 = "MCBackgroundTask failed to update task %{public}@ with error: %{public}@";
    v21 = v18;
    v22 = OS_LOG_TYPE_ERROR;
    v23 = 22;
  }

  _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);

LABEL_11:

  return v16;
}

- (void)_infuseRequest:(id)request interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements
{
  requestCopy = request;
  [requestCopy setScheduleAfter:interval];
  [requestCopy setTrySchedulingBefore:interval + tolerance];
  [requestCopy setPriority:requirements & 1 | 2];
  if ((requirements & 2) != 0)
  {
    [requestCopy setRequiresProtectionClass:1];
  }

  [requestCopy setRequiresNetworkConnectivity:(requirements >> 2) & 1];
  [requestCopy setRequiresUserInactivity:(requirements >> 3) & 1];
  [requestCopy setRequiresExternalPower:0];
}

@end