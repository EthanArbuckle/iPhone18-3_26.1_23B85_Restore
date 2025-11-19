@interface APReachability
- (APReachability)initWithDelegate:(id)a3;
- (APReachabilityMonitoring)delegate;
- (APUnfairRecursiveLock)lock;
- (int64_t)currentStatus;
- (void)_updateNetwork:(id)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation APReachability

- (void)startMonitoring
{
  v3 = [(APReachability *)self lock];
  [v3 lock];

  if (!self->_monitorQueue)
  {
    v4 = [NSString stringWithFormat:@"com.apple.ap.deviceinfo.reachability.%p", self];
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    monitorQueue = self->_monitorQueue;
    self->_monitorQueue = v5;
  }

  if (!self->_monitor)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Initializing reachability", buf, 2u);
    }

    self->_currentStatus = 0;
    v8 = nw_path_monitor_create();
    monitor = self->_monitor;
    self->_monitor = v8;

    v10 = [(APReachability *)self monitor];
    v11 = [(APReachability *)self monitorQueue];
    nw_path_monitor_set_queue(v10, v11);

    v12 = self->_monitor;
    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_10000F5D4;
    update_handler[3] = &unk_10047C908;
    update_handler[4] = self;
    nw_path_monitor_set_update_handler(v12, update_handler);
    v13 = [(APReachability *)self monitor];
    nw_path_monitor_start(v13);
  }

  v14 = [(APReachability *)self lock];
  [v14 unlock];
}

- (APUnfairRecursiveLock)lock
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028B454;
  block[3] = &unk_1004790A8;
  block[4] = self;
  if (qword_1004E68F0 != -1)
  {
    dispatch_once(&qword_1004E68F0, block);
  }

  return self->_lock;
}

- (int64_t)currentStatus
{
  v3 = [(APReachability *)self lock];
  [v3 lock];

  currentStatus = self->_currentStatus;
  v5 = [(APReachability *)self lock];
  [v5 unlock];

  return currentStatus;
}

- (APReachability)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = APReachability;
  v5 = [(APReachability *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)stopMonitoring
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Tearing down reachability", v9, 2u);
  }

  v4 = [(APReachability *)self lock];
  [v4 lock];

  v5 = [(APReachability *)self monitor];
  nw_path_monitor_cancel(v5);

  monitor = self->_monitor;
  self->_monitor = 0;

  currentPath = self->_currentPath;
  self->_currentStatus = 0;
  self->_currentPath = 0;

  v8 = [(APReachability *)self lock];
  [v8 unlock];
}

- (void)_updateNetwork:(id)a3
{
  v5 = a3;
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received network update from nw_path_monitor", &v21, 2u);
  }

  v7 = [(APReachability *)self lock];
  [v7 lock];

  p_currentPath = &self->_currentPath;
  if (!nw_path_is_equal(v5, self->_currentPath))
  {
    objc_storeStrong(&self->_currentPath, a3);
    status = nw_path_get_status(*p_currentPath);
    v10 = status;
    v11 = 0;
    if (status > nw_path_status_satisfied)
    {
      if (status != nw_path_status_unsatisfied)
      {
        if (status != nw_path_status_satisfiable)
        {
          goto LABEL_7;
        }

LABEL_12:
        if (nw_path_uses_interface_type(*p_currentPath, nw_interface_type_wifi) || nw_path_uses_interface_type(*p_currentPath, nw_interface_type_wired) || nw_path_uses_interface_type(*p_currentPath, nw_interface_type_other))
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
        }

        if (nw_path_uses_interface_type(*p_currentPath, nw_interface_type_cellular))
        {
          v11 = v13 | 4;
        }

        else
        {
          v11 = v13;
        }
      }
    }

    else if (status)
    {
      if (status != nw_path_status_satisfied)
      {
LABEL_7:
        v12 = APLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v21 = 67109120;
          LODWORD(v22) = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unknown network status flags: %u", &v21, 8u);
        }

        v11 = 0;
        goto LABEL_19;
      }

      goto LABEL_12;
    }

LABEL_19:
    if (nw_path_is_expensive(self->_currentPath))
    {
      v14 = v11 | 8;
    }

    else
    {
      v14 = v11;
    }

    if (nw_path_is_constrained(self->_currentPath))
    {
      v14 |= 0x10uLL;
    }

    if (self->_currentStatus != v14)
    {
      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = _statusToString(self->_currentStatus);
        v17 = _statusToString(v14);
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Updating network status from (%@) to (%@)", &v21, 0x16u);
      }

      self->_currentStatus = v14;
      v18 = [(APReachability *)self delegate];

      if (v18)
      {
        v19 = [(APReachability *)self delegate];
        [v19 reachabilityChanged:{-[APReachability currentStatus](self, "currentStatus")}];
      }
    }
  }

  v20 = [(APReachability *)self lock];
  [v20 unlock];
}

- (APReachabilityMonitoring)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end