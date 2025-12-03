@interface _SESSessionAppStateObserver
+ (id)observerWithDelegate:(id)delegate;
- (BOOL)isAppBackgroundedOrSuspended:(id)suspended;
- (SESSessionAppStateObserverDelegate)delegate;
- (_SESSessionAppStateObserver)initWithDelegate:(id)delegate;
- (id)dumpState;
- (void)applicationStateChanged:(id)changed stateUpdate:(id)update;
- (void)dealloc;
- (void)registerForAppStateChanges:(id)changes;
- (void)unregisterForAppStateChanges:(id)changes;
@end

@implementation _SESSessionAppStateObserver

+ (id)observerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[_SESSessionAppStateObserver alloc] initWithDelegate:delegateCopy];

  return v4;
}

- (_SESSessionAppStateObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = _SESSessionAppStateObserver;
  v5 = [(_SESSessionAppStateObserver *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_opt_new();
    connections = v6->_connections;
    v6->_connections = v7;

    v9 = objc_opt_new();
    predicates = v6->_predicates;
    v6->_predicates = v9;

    monitor = v6->_monitor;
    v6->_monitor = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_monitor invalidate];
  v3.receiver = self;
  v3.super_class = _SESSessionAppStateObserver;
  [(_SESSessionAppStateObserver *)&v3 dealloc];
}

- (void)registerForAppStateChanges:(id)changes
{
  changesCopy = changes;
  userInfo = [changesCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:&off_1004DCA80];

  processIdentifier = [changesCopy processIdentifier];
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *v29 = processIdentifier;
    *&v29[4] = 2112;
    *&v29[6] = v6;
    v30 = 2112;
    v31 = changesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Register for application state changes PID %d (%@) %@", buf, 0x1Cu);
  }

  v9 = self->_connections;
  objc_sync_enter(v9);
  if ([(NSMutableSet *)self->_connections containsObject:changesCopy])
  {
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Connection already registered", buf, 2u);
    }
  }

  else
  {
    if (![(NSMutableSet *)self->_connections count])
    {
      v11 = +[RBSProcessMonitor monitor];
      monitor = self->_monitor;
      self->_monitor = v11;

      v13 = +[RBSProcessStateDescriptor descriptor];
      [v13 setValues:1];
      v27 = FBSSceneVisibilityEndowmentNamespace;
      v14 = [NSArray arrayWithObjects:&v27 count:1];
      [v13 setEndowmentNamespaces:v14];

      v15 = self->_monitor;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100062234;
      v24[3] = &unk_1004C32F8;
      v16 = v13;
      v25 = v16;
      selfCopy = self;
      [(RBSProcessMonitor *)v15 updateConfiguration:v24];
    }

    predicates = self->_predicates;
    v18 = [RBSProcessIdentifier identifierWithPid:processIdentifier];
    v19 = [RBSProcessPredicate predicateMatchingIdentifier:v18];
    [(NSMutableArray *)predicates addObject:v19];

    v20 = self->_monitor;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000622DC;
    v23[3] = &unk_1004C3320;
    v23[4] = self;
    [(RBSProcessMonitor *)v20 updateConfiguration:v23];
    v21 = SESDefaultLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = self->_predicates;
      *buf = 138412290;
      *v29 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Current predicates %@", buf, 0xCu);
    }

    [(NSMutableSet *)self->_connections addObject:changesCopy];
  }

  objc_sync_exit(v9);
}

- (void)unregisterForAppStateChanges:(id)changes
{
  changesCopy = changes;
  userInfo = [changesCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:&off_1004DCA80];

  processIdentifier = [changesCopy processIdentifier];
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *v20 = processIdentifier;
    *&v20[4] = 2112;
    *&v20[6] = v6;
    v21 = 2112;
    v22 = changesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unregister for application state changes PID %d (%@) %@", buf, 0x1Cu);
  }

  v9 = self->_connections;
  objc_sync_enter(v9);
  if (([(NSMutableSet *)self->_connections containsObject:changesCopy]& 1) != 0)
  {
    predicates = self->_predicates;
    v11 = [RBSProcessIdentifier identifierWithPid:processIdentifier];
    v12 = [RBSProcessPredicate predicateMatchingIdentifier:v11];
    [(NSMutableArray *)predicates removeObject:v12];

    monitor = self->_monitor;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000625B4;
    v18[3] = &unk_1004C3320;
    v18[4] = self;
    [(RBSProcessMonitor *)monitor updateConfiguration:v18];
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = self->_predicates;
      *buf = 138412290;
      *v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Current predicates %@", buf, 0xCu);
    }

    [(NSMutableSet *)self->_connections removeObject:changesCopy];
    if (![(NSMutableSet *)self->_connections count])
    {
      [(RBSProcessMonitor *)self->_monitor invalidate];
      v16 = self->_monitor;
      self->_monitor = 0;
    }
  }

  else
  {
    v17 = SESDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Connection not registered", buf, 2u);
    }
  }

  objc_sync_exit(v9);
}

- (void)applicationStateChanged:(id)changed stateUpdate:(id)update
{
  changedCopy = changed;
  updateCopy = update;
  LODWORD(update) = [changedCopy pid];
  v6 = self->_connections;
  objc_sync_enter(v6);
  connections = self->_connections;
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_1000629A8;
  v36 = &unk_1004C3340;
  updateCopy2 = update;
  updateCopy3 = update;
  v8 = Filter();
  objc_sync_exit(v6);

  state = [updateCopy state];
  taskState = [state taskState];
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v40 = taskState;
    v41 = 2112;
    v42 = state;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "applicationStateChanged currentTaskState %d state \n%@ ", buf, 0x12u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = *v30;
    v14 = FBSSceneVisibilityEndowmentNamespace;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if (taskState != 4)
        {
          if (taskState != 3)
          {
            continue;
          }

          v17 = SESDefaultLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v40 = updateCopy2;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "The application with PID %d has been suspended", buf, 8u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained didAppGetSuspended:v16];
          goto LABEL_21;
        }

        endowmentNamespaces = [state endowmentNamespaces];
        v20 = [endowmentNamespaces containsObject:v14];

        v21 = SESDefaultLogObject();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        if (!v20)
        {
          if (v22)
          {
            *buf = 67109120;
            v40 = updateCopy2;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "The application with PID %d has entered the background", buf, 8u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained didAppEnterBackground:v16];
          goto LABEL_21;
        }

        if (v22)
        {
          *buf = 67109120;
          v40 = updateCopy2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "The application with PID %d has entered the foreground", buf, 8u);
        }

        v23 = objc_loadWeakRetained(&self->_delegate);
        v24 = objc_opt_respondsToSelector();

        if (v24)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained didAppEnterForeground:v16];
LABEL_21:

          continue;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v12);
  }
}

- (BOOL)isAppBackgroundedOrSuspended:(id)suspended
{
  suspendedCopy = suspended;
  userInfo = [suspendedCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:&off_1004DCA80];

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = suspendedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checking if client is backgrounded or suspended (%@) %@", buf, 0x16u);
  }

  if (suspendedCopy)
  {
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [suspendedCopy processIdentifier]);
    v17 = 0;
    v8 = [RBSProcessHandle handleForIdentifier:v7 error:&v17];
    v9 = v17;

    if (v9 || !v8)
    {
      currentState = SESDefaultLogObject();
      if (os_log_type_enabled(currentState, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, currentState, OS_LOG_TYPE_ERROR, "Failed to get process handle %@", buf, 0xCu);
      }
    }

    else
    {
      currentState = [v8 currentState];
      if ([currentState taskState]== 4)
      {
        endowmentNamespaces = [currentState endowmentNamespaces];
        v12 = [endowmentNamespaces containsObject:FBSSceneVisibilityEndowmentNamespace];

        if ((v12 & 1) == 0)
        {
          v13 = SESDefaultLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v14 = "Client is backgrounded";
LABEL_18:
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }

      else if ([currentState taskState]== 3)
      {
        v13 = SESDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v14 = "Client is suspended";
          goto LABEL_18;
        }

LABEL_19:

        v15 = 1;
LABEL_21:

        goto LABEL_22;
      }
    }

    v15 = 0;
    goto LABEL_21;
  }

  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Connection is nil", buf, 2u);
  }

  v15 = 0;
LABEL_22:

  return v15;
}

- (id)dumpState
{
  v3 = objc_opt_new();
  v13 = self->_connections;
  objc_sync_enter(v13);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_connections;
  v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        userInfo = [v7 userInfo];
        v9 = [userInfo objectForKeyedSubscript:&off_1004DCA80];
        v10 = [NSString stringWithFormat:@"Connection %p client %@", v7, v9];
        [v3 addObject:v10];
      }

      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v13);
  v19 = @"observedConnections";
  v20 = v3;
  v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  return v11;
}

- (SESSessionAppStateObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end