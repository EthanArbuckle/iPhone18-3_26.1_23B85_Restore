@interface NIServerSessionManager
- (BOOL)_registerObserverSessionWithConnection:(id)connection;
- (BOOL)_registerSessionWithConnection:(id)connection;
- (BOOL)isSessionAllowedToActivate:(id)activate;
- (BOOL)registerSessionWithConnection:(id)connection observerSession:(BOOL)session;
- (NIServerSessionManager)initWithQueue:(id)queue;
- (id)allSessionsPrintableState;
- (void)_handleObserverSessionXPCDisconnection:(id)disconnection;
- (void)_handleXPCDisconnection:(id)disconnection;
- (void)_startObserving:(id)observing;
- (void)_stopObserving:(id)observing;
- (void)enableInternalObserverSession;
- (void)registerObserversForSession:(id)session;
@end

@implementation NIServerSessionManager

- (NIServerSessionManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = NIServerSessionManager;
  v6 = [(NIServerSessionManager *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v7->_sessionsLock._os_unfair_lock_opaque = 0;
    v8 = objc_opt_new();
    sessions = v7->_sessions;
    v7->_sessions = v8;

    v10 = objc_opt_new();
    observerSessions = v7->_observerSessions;
    v7->_observerSessions = v10;

    v12 = objc_opt_new();
    processMonitors = v7->_processMonitors;
    v7->_processMonitors = v12;

    v14 = objc_opt_new();
    authManager = v7->_authManager;
    v7->_authManager = v14;

    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 BOOLForKey:@"EnableStateDump"], v16, v17))
    {
      v19 = v7;
      os_state_add_handler();
    }
  }

  return v7;
}

- (void)enableInternalObserverSession
{
  os_unfair_lock_lock(&self->_sessionsLock);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nisessmgr,Enabling internal observer session.", v6, 2u);
  }

  if (!self->_recentlyObservedObjectsCache)
  {
    v4 = objc_alloc_init(NIRecentlyObservedObjectsCache);
    recentlyObservedObjectsCache = self->_recentlyObservedObjectsCache;
    self->_recentlyObservedObjectsCache = v4;
  }

  os_unfair_lock_unlock(&self->_sessionsLock);
}

- (BOOL)registerSessionWithConnection:(id)connection observerSession:(BOOL)session
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_sessionsLock);
  if (session)
  {
    v7 = [(NIServerSessionManager *)self _registerObserverSessionWithConnection:connectionCopy];
  }

  else
  {
    v7 = [(NIServerSessionManager *)self _registerSessionWithConnection:connectionCopy];
  }

  v8 = v7;
  os_unfair_lock_unlock(&self->_sessionsLock);

  return v8;
}

- (BOOL)_registerSessionWithConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_owner(&self->_sessionsLock);
  processIdentifier = [connectionCopy processIdentifier];
  v6 = sub_10036AE64();
  [connectionCopy setRemoteObjectInterface:v6];

  v7 = sub_100369ECC();
  [connectionCopy setExportedInterface:v7];

  v50 = 0u;
  v51 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v8 = xpc_copy_code_signing_identity_for_token();
  if (v8)
  {
    v27 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_1001DC7A4;
    v48 = sub_1001DC7B4;
    v49 = 0;
    _queue = [connectionCopy _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1001DC7BC;
    block[3] = &unk_10099CF30;
    v41 = &v44;
    v10 = connectionCopy;
    v39 = v10;
    v43 = processIdentifier;
    v25 = v27;
    v42 = v25;
    selfCopy = self;
    dispatch_sync(_queue, block);

    v11 = [NSNumber numberWithInt:processIdentifier];
    v12 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v11];
    v13 = v12 == 0;

    if (v13)
    {
      v14 = objc_opt_new();
      [(NSMutableDictionary *)self->_sessions setObject:v14 forKeyedSubscript:v11, v25];
    }

    v15 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v11, v25];
    [v15 addObject:v45[5]];

    v16 = qword_1009F9820;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v11];
      v18 = [v17 count];
      *buf = 138478595;
      v53 = @"Adding session to ";
      v54 = 1025;
      v55 = processIdentifier;
      v56 = 2113;
      v57 = @"pid dict. Current count:";
      v58 = 2048;
      v59 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#nisessmgr,%{private}@ %{private}d %{private}@ %lu", buf, 0x26u);
    }

    v19 = [(NSMutableDictionary *)self->_processMonitors objectForKey:v11];
    if (!v19)
    {
      v19 = [[PRAppStateMonitor alloc] initWithPID:processIdentifier];
      processMonitors = self->_processMonitors;
      v21 = [NSNumber numberWithInt:processIdentifier];
      [(NSMutableDictionary *)processMonitors setObject:v19 forKey:v21];

      [(PRAppStateMonitor *)v19 addObserver:self];
    }

    objc_initWeak(buf, self);
    _queue2 = [v10 _queue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001DC8A0;
    v34[3] = &unk_10099CF68;
    v37 = &v44;
    v23 = v19;
    v35 = v23;
    selfCopy2 = self;
    dispatch_sync(_queue2, v34);

    [v10 setExportedObject:v45[5]];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001DC924;
    v31[3] = &unk_10099CF90;
    v33 = processIdentifier;
    objc_copyWeak(&v32, buf);
    v31[4] = &v44;
    [v10 setInterruptionHandler:v31];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001DCA04;
    v28[3] = &unk_10099CF90;
    v30 = processIdentifier;
    objc_copyWeak(&v29, buf);
    v28[4] = &v44;
    [v10 setInvalidationHandler:v28];
    [v10 resume];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v32);

    objc_destroyWeak(buf);
    _Block_object_dispose(&v44, 8);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A7540();
  }

  return v8 != 0;
}

- (BOOL)_registerObserverSessionWithConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_owner(&self->_sessionsLock);
  processIdentifier = [connectionCopy processIdentifier];
  v6 = sub_10036AE64();
  [connectionCopy setRemoteObjectInterface:v6];

  v7 = sub_100369ECC();
  [connectionCopy setExportedInterface:v7];

  v34 = 0u;
  v35 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v8 = xpc_copy_code_signing_identity_for_token();
  if (v8)
  {
    v32 = [NSString stringWithCString:v8 encoding:4];
    v33 = processIdentifier;
    free(v8);
    v9 = [[NIServerObservationSession alloc] initWithClientInfo:&v32 connection:connectionCopy];
    [connectionCopy setExportedObject:v9];
    v10 = v9 != 0;
    if (v9)
    {
      [(NIServerSessionManager *)self _startObserving:v9];
      v23 = [NSNumber numberWithInt:processIdentifier];
      v11 = [(NSMutableDictionary *)self->_observerSessions objectForKeyedSubscript:?];
      v12 = v11 == 0;

      if (v12)
      {
        v13 = objc_opt_new();
        [(NSMutableDictionary *)self->_observerSessions setObject:v13 forKeyedSubscript:v23];
      }

      v14 = [(NSMutableDictionary *)self->_observerSessions objectForKeyedSubscript:v23];
      [v14 addObject:v9];

      v15 = qword_1009F9820;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(NSMutableDictionary *)self->_observerSessions objectForKeyedSubscript:v23];
        v17 = [v16 count];
        *buf = 138478595;
        v37 = @"Adding observer session to ";
        v38 = 1025;
        v39 = processIdentifier;
        v40 = 2113;
        v41 = @"pid dict. Current count:";
        v42 = 2048;
        v43 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#nisessmgr,%{private}@ %{private}d %{private}@ %lu", buf, 0x26u);
      }

      v18 = [(NSMutableDictionary *)self->_processMonitors objectForKey:v23];
      if (!v18)
      {
        v18 = [[PRAppStateMonitor alloc] initWithPID:processIdentifier];
        processMonitors = self->_processMonitors;
        v20 = [NSNumber numberWithInt:processIdentifier];
        [(NSMutableDictionary *)processMonitors setObject:v18 forKey:v20];

        [(PRAppStateMonitor *)v18 addObserver:self];
      }

      objc_initWeak(buf, self);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001DD04C;
      v28[3] = &unk_10098B138;
      v31 = processIdentifier;
      objc_copyWeak(&v30, buf);
      v21 = v9;
      v29 = v21;
      [connectionCopy setInterruptionHandler:v28];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1001DD124;
      v24[3] = &unk_10098B138;
      v27 = processIdentifier;
      objc_copyWeak(&v26, buf);
      v25 = v21;
      [connectionCopy setInvalidationHandler:v24];
      [connectionCopy resume];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A75B4();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A7540();
    }

    v10 = 0;
  }

  return v10;
}

- (void)_handleXPCDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  os_unfair_lock_lock(&self->_sessionsLock);
  if (!disconnectionCopy)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"NIServerSessionManager.mm" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = disconnectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nisessmgr,disconnection for session %{private}@.", buf, 0xCu);
  }

  v7 = [disconnectionCopy pid];
  [disconnectionCopy invalidate];
  sessions = self->_sessions;
  v9 = [NSNumber numberWithInt:v7];
  v10 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v9];
  [v10 removeObject:disconnectionCopy];

  v11 = self->_sessions;
  v12 = [NSNumber numberWithInt:v7];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
  v14 = [v13 count] == 0;

  if (v14)
  {
    v15 = self->_sessions;
    v16 = [NSNumber numberWithInt:v7];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];
  }

  v17 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#nisessmgr,removed session object from retained sessions.", buf, 2u);
  }

  os_unfair_lock_unlock(&self->_sessionsLock);
}

- (void)_handleObserverSessionXPCDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  os_unfair_lock_lock(&self->_sessionsLock);
  if (!disconnectionCopy)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"NIServerSessionManager.mm" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"observationSession"}];
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = disconnectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nisessmgr,disconnection for observer session %{private}@.", buf, 0xCu);
  }

  [(NIServerSessionManager *)self _stopObserving:disconnectionCopy];
  v7 = [disconnectionCopy pid];
  [disconnectionCopy invalidate];
  observerSessions = self->_observerSessions;
  v9 = [NSNumber numberWithInt:v7];
  v10 = [(NSMutableDictionary *)observerSessions objectForKeyedSubscript:v9];
  [v10 removeObject:disconnectionCopy];

  v11 = self->_observerSessions;
  v12 = [NSNumber numberWithInt:v7];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
  v14 = [v13 count] == 0;

  if (v14)
  {
    v15 = self->_observerSessions;
    v16 = [NSNumber numberWithInt:v7];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];
  }

  v17 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#nisessmgr,removed observer session object from retained sessions.", buf, 2u);
  }

  os_unfair_lock_unlock(&self->_sessionsLock);
}

- (BOOL)isSessionAllowedToActivate:(id)activate
{
  activateCopy = activate;
  os_unfair_lock_lock(&self->_sessionsLock);
  if (activateCopy)
  {
    v5 = [activateCopy pid];
    v6 = [NSNumber numberWithInt:v5];
    v7 = [(NSMutableDictionary *)self->_sessions objectForKey:v6];
    v8 = [v7 count];

    v9 = qword_1009F9820;
    v10 = v8 < 0x15;
    if (v8 >= 0x15)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A75F4();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138478595;
      v13 = @"Session for pid is allowed to activate";
      v14 = 1025;
      v15 = v5;
      v16 = 2113;
      v17 = @"current count: ";
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#nisessmgr,%{private}@ %{private}d %{private}@ %lu", &v12, 0x26u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A767C();
    }

    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_sessionsLock);

  return v10;
}

- (id)allSessionsPrintableState
{
  v24 = objc_opt_new();
  v23 = objc_opt_new();
  v3 = objc_autoreleasePoolPush();
  v22 = objc_opt_new();
  v4 = objc_opt_new();
  os_unfair_lock_lock(&self->_sessionsLock);
  processMonitors = self->_processMonitors;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001DE0BC;
  v36[3] = &unk_10099CFB8;
  v6 = v22;
  v37 = v6;
  v7 = v4;
  v38 = v7;
  [(NSMutableDictionary *)processMonitors enumerateKeysAndObjectsUsingBlock:v36];
  v8 = [[NSDictionary alloc] initWithDictionary:self->_sessions copyItems:1];
  v9 = [[NSDictionary alloc] initWithDictionary:self->_observerSessions copyItems:1];

  os_unfair_lock_unlock(&self->_sessionsLock);
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d clients with sessions", [v8 count]);
  [v24 addObject:v10];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001DE1D0;
  v33[3] = &unk_10099CFE0;
  v11 = v24;
  v34 = v11;
  v12 = v6;
  v35 = v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v33];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d clients with observers", [v9 count]);
  [v11 addObject:v13];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001DE2FC;
  v30[3] = &unk_10099CFE0;
  v14 = v11;
  v31 = v14;
  v15 = v12;
  v32 = v15;
  [v9 enumerateKeysAndObjectsUsingBlock:v30];
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d processes being tracked", [v7 count]);
  [v14 addObject:v16];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001DE428;
  v28[3] = &unk_10099D030;
  v17 = v14;
  v29 = v17;
  [v7 enumerateKeysAndObjectsUsingBlock:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001DE544;
  v25[3] = &unk_10099CFE0;
  v18 = v23;
  v26 = v18;
  v19 = v15;
  v27 = v19;
  [v8 enumerateKeysAndObjectsUsingBlock:v25];

  objc_autoreleasePoolPop(v3);
  v39[0] = @"NI Server Summary";
  v39[1] = @"NI Server Details";
  v40[0] = v17;
  v40[1] = v18;
  v20 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];

  return v20;
}

- (void)registerObserversForSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&self->_sessionsLock);
  if (self->_recentlyObservedObjectsCache)
  {
    recentlyObservedObjectsCache = self->_recentlyObservedObjectsCache;
    v5 = [NSArray arrayWithObjects:&recentlyObservedObjectsCache count:1];
    [sessionCopy addObservers:v5];
  }

  observerSessions = self->_observerSessions;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DEB10;
  v8[3] = &unk_10099D080;
  v7 = sessionCopy;
  v9 = v7;
  [(NSMutableDictionary *)observerSessions enumerateKeysAndObjectsUsingBlock:v8];

  os_unfair_lock_unlock(&self->_sessionsLock);
}

- (void)_startObserving:(id)observing
{
  observingCopy = observing;
  os_unfair_lock_assert_owner(&self->_sessionsLock);
  sessions = self->_sessions;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DEBDC;
  v7[3] = &unk_10099D080;
  v8 = observingCopy;
  v6 = observingCopy;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_stopObserving:(id)observing
{
  observingCopy = observing;
  os_unfair_lock_assert_owner(&self->_sessionsLock);
  sessions = self->_sessions;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DEE10;
  v7[3] = &unk_10099D080;
  v8 = observingCopy;
  v6 = observingCopy;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v7];
}

@end