@interface _SESSessionManager
+ (id)sessionManagerWithMachServiceName:(id)name;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)getActiveACWGSessions;
- (id)getActiveDCKSessions;
- (id)getActiveRKESessions;
- (id)init:(id)init;
- (os_state_data_s)dumpState;
- (void)addSession:(id)session forConnection:(id)connection;
- (void)didAppEnterBackground:(id)background;
- (void)didAppEnterForeground:(id)foreground;
- (void)didAppGetSuspended:(id)suspended;
- (void)didCloseConnection:(id)connection;
- (void)didCreateKey:(id)key;
- (void)didReceivePassthroughMessage:(id)message keyIdentifier:(id)identifier;
- (void)getVehicleReports:(id)reports;
- (void)pauseRangingForReaderIdentifier:(id)identifier durationInSec:(id)sec withAppletIdentifier:(id)appletIdentifier reply:(id)reply;
- (void)registerCarKeyAppForLaunch:(BOOL)launch reply:(id)reply;
- (void)removeSession:(id)session;
- (void)resumeRangingForReaderIdentifier:(id)identifier withAppletIdentifier:(id)appletIdentifier reply:(id)reply;
- (void)sendEvent:(id)event keyIdentifier:(id)identifier;
- (void)start;
- (void)startSESACWGSession:(id)session completion:(id)completion;
- (void)startSESAssertion:(id)assertion withKeyIdentifier:(id)identifier withAppletIdentifier:(id)appletIdentifier withOptions:(id)options completion:(id)completion;
- (void)startSESDCKSession:(id)session completion:(id)completion;
- (void)startSESRKESession:(id)session options:(id)options completion:(id)completion;
@end

@implementation _SESSessionManager

+ (id)sessionManagerWithMachServiceName:(id)name
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038658;
  block[3] = &unk_1004C08D8;
  nameCopy = name;
  v3 = qword_10050CCA0;
  v4 = nameCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_10050CCA0, block);
  }

  v5 = qword_10050CC98;
  v6 = qword_10050CC98;

  return v5;
}

- (id)init:(id)init
{
  v18.receiver = self;
  v18.super_class = _SESSessionManager;
  v3 = [(_SESSessionManager *)&v18 initWithMachServiceName:init];
  v4 = v3;
  if (v3)
  {
    [(_SESSessionManager *)v3 setDelegate:v3];
    v4->_lock._os_unfair_lock_opaque = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.seserviced._session.queue", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.seserviced._session.xpc.queue", v8);
    xpcConnectionQueue = v4->_xpcConnectionQueue;
    v4->_xpcConnectionQueue = v9;

    v11 = objc_opt_new();
    activeSessions = v4->_activeSessions;
    v4->_activeSessions = v11;

    v13 = [_SESSessionAppStateObserver observerWithDelegate:v4];
    appStateObserver = v4->_appStateObserver;
    v4->_appStateObserver = v13;

    +[_TtC10seserviced17CarKeyAppLauncher kickOff];
    v15 = v4->_queue;
    v17 = v4;
    os_state_add_handler();
  }

  return v4;
}

- (void)start
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting session server", v4, 2u);
  }

  [(_SESSessionManager *)self resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"application-identifier"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109634;
      *&buf[4] = [connectionCopy processIdentifier];
      *&buf[8] = 2112;
      *&buf[10] = v8;
      *&buf[18] = 2112;
      *&buf[20] = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Added connection from PID %d (%@) %@", buf, 0x1Cu);
    }

    v26[0] = v8;
    v25[0] = &off_1004DC9F0;
    v25[1] = &off_1004DCA08;
    v10 = objc_opt_new();
    v26[1] = v10;
    v25[2] = &off_1004DCA20;
    v11 = objc_opt_new();
    v26[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    v13 = [NSMutableDictionary dictionaryWithDictionary:v12];
    [connectionCopy setUserInfo:v13];

    v14 = +[SESSessionManagerCallbackInterface interface];
    [connectionCopy setRemoteObjectInterface:v14];

    v15 = +[SESSessionManagerInterface interface];
    [connectionCopy setExportedInterface:v15];

    [connectionCopy setExportedObject:self];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_100038C90;
    v23 = sub_100038CA0;
    v16 = connectionCopy;
    v24 = v16;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100038CA8;
    v21[3] = &unk_1004C24F8;
    v21[4] = self;
    v21[5] = buf;
    [v16 setInvalidationHandler:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100038D24;
    v20[3] = &unk_1004C24F8;
    v20[4] = self;
    v20[5] = buf;
    [v16 setInterruptionHandler:v20];
    [v16 _setQueue:self->_xpcConnectionQueue];
    [v16 resume];
    _Block_object_dispose(buf, 8);

    v17 = 1;
  }

  else
  {
    v18 = SESDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = @"application-identifier";
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing or wrong type entitlement %@: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

- (void)didCloseConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038E40;
  v7[3] = &unk_1004C22F0;
  v8 = connectionCopy;
  selfCopy = self;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (void)addSession:(id)session forConnection:(id)connection
{
  sessionCopy = session;
  queue = self->_queue;
  connectionCopy = connection;
  dispatch_assert_queue_V2(queue);
  os_unfair_lock_lock(&self->_lock);
  userInfo = [connectionCopy userInfo];

  v10 = [userInfo objectForKeyedSubscript:&off_1004DCA08];

  [v10 addObject:sessionCopy];
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(NSMutableArray *)self->_activeSessions count];
    v15 = 138412546;
    v16 = sessionCopy;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Adding session %@ active sessions %lu", &v15, 0x16u);
  }

  [(NSMutableArray *)self->_activeSessions addObject:sessionCopy];
  if (!self->_keepAlive)
  {
    v13 = os_transaction_create();
    keepAlive = self->_keepAlive;
    self->_keepAlive = v13;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeSession:(id)session
{
  queue = self->_queue;
  sessionCopy = session;
  dispatch_assert_queue_V2(queue);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_activeSessions removeObject:sessionCopy];
  [sessionCopy releaseRemoteObject];
  connection = [sessionCopy connection];
  userInfo = [connection userInfo];
  v8 = [userInfo objectForKeyedSubscript:&off_1004DCA08];

  [v8 removeObject:sessionCopy];
  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(NSMutableArray *)self->_activeSessions count];
    v12 = 134217984;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Active sessions %lu", &v12, 0xCu);
  }

  if (![(NSMutableArray *)self->_activeSessions count])
  {
    keepAlive = self->_keepAlive;
    self->_keepAlive = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerCarKeyAppForLaunch:(BOOL)launch reply:(id)reply
{
  launchCopy = launch;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v6 = [_SESSessionClientInfo withConnection:?];
  if ([v6 rkeSessionEntitlement])
  {
    clientName = [v6 clientName];
    if (launchCopy)
    {
      [_TtC10seserviced17CarKeyAppLauncher registerAppWithIdentifier:clientName];
    }

    else
    {
      [_TtC10seserviced17CarKeyAppLauncher unregisterAppWithIdentifier:clientName];
    }

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v8 = SESDefaultLogObject();
    clientName2 = [v6 clientName];
    v9 = SESCreateAndLogError();
    (replyCopy)[2](replyCopy, 0, v9);

    replyCopy = v8;
  }
}

- (void)startSESACWGSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "startSESACWGSession", buf, 2u);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = [_SESACWGSession validateEntitlements:v9];
  if (v10)
  {
    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000397C0;
    v12[3] = &unk_1004C2548;
    v13 = sessionCopy;
    selfCopy = self;
    v16 = completionCopy;
    v15 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)startSESDCKSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "startSESDCKSession", buf, 2u);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = [_SESDCKSession validateEntitlements:v9];
  if (v10)
  {
    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100039BB0;
    v12[3] = &unk_1004C2548;
    v13 = sessionCopy;
    selfCopy = self;
    v16 = completionCopy;
    v15 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)startSESRKESession:(id)session options:(id)options completion:(id)completion
{
  sessionCopy = session;
  optionsCopy = options;
  completionCopy = completion;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "startSESRKESession", buf, 2u);
  }

  v12 = +[NSXPCConnection currentConnection];
  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = sub_100038C90;
  v25 = sub_100038CA0;
  v26 = [_SESRKESession validateEntitlements:v12];
  if (*(v22 + 5))
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003A034;
    v14[3] = &unk_1004C2570;
    v15 = v12;
    selfCopy = self;
    v19 = completionCopy;
    v17 = optionsCopy;
    v18 = sessionCopy;
    v20 = buf;
    dispatch_async(queue, v14);
  }

  _Block_object_dispose(buf, 8);
}

- (void)sendEvent:(id)event keyIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A678;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v12 = eventCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

- (id)getActiveDCKSessions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_activeSessions copy];
  v4 = Filter();

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)getActiveRKESessions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_activeSessions copy];
  v4 = Filter();

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)getActiveACWGSessions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_activeSessions copy];
  v4 = Filter();

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)didCreateKey:(id)key
{
  keyCopy = key;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003AB84;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(queue, v7);
}

- (void)didReceivePassthroughMessage:(id)message keyIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003ADC0;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v12 = identifierCopy;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)getVehicleReports:(id)reports
{
  reportsCopy = reports;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "getVehicleReports", &v11, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  v6 = [_SESDCKSession validateEntitlements:v5];
  if (v6)
  {
    reportsCopy[2](reportsCopy, 0, v6);
  }

  else
  {
    v7 = +[_TtC10seserviced14AlishaExternal shared];
    v8 = [v7 getReportsWithIsInternalClient:1];

    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      allValues = [v8 allValues];
      v11 = 138412290;
      v12 = allValues;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Vehicle report %@", &v11, 0xCu);
    }

    (reportsCopy)[2](reportsCopy, v8, 0);
  }
}

- (void)startSESAssertion:(id)assertion withKeyIdentifier:(id)identifier withAppletIdentifier:(id)appletIdentifier withOptions:(id)options completion:(id)completion
{
  assertionCopy = assertion;
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  optionsCopy = options;
  completionCopy = completion;
  v17 = SESDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = appletIdentifierCopy;
    v32 = 2112;
    v33 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "startSESAssertion keyIdentifier %@ appletIdentifier %@ options %@", buf, 0x20u);
  }

  v18 = +[NSXPCConnection currentConnection];
  v19 = [_SESAssertion validateEntitlements:v18 appletIdentifier:appletIdentifierCopy];
  if (v19)
  {
    completionCopy[2](completionCopy, 0, v19);
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003B330;
    block[3] = &unk_1004C2640;
    block[4] = self;
    v22 = identifierCopy;
    v23 = assertionCopy;
    v24 = appletIdentifierCopy;
    v25 = optionsCopy;
    v27 = completionCopy;
    v26 = v18;
    dispatch_async(queue, block);
  }
}

- (void)pauseRangingForReaderIdentifier:(id)identifier durationInSec:(id)sec withAppletIdentifier:(id)appletIdentifier reply:(id)reply
{
  identifierCopy = identifier;
  secCopy = sec;
  appletIdentifierCopy = appletIdentifier;
  replyCopy = reply;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    [secCopy doubleValue];
    *buf = 138412546;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "pauseRangingForReaderIdentifier %@ duration %f", buf, 0x16u);
  }

  v16 = +[NSXPCConnection currentConnection];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = sub_100038C90;
  v26 = sub_100038CA0;
  v27 = [_SESDCKSession validateEntitlements:v16];
  if (*(*&buf[8] + 40))
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003B968;
    block[3] = &unk_1004C2668;
    v19 = secCopy;
    v22 = replyCopy;
    v20 = appletIdentifierCopy;
    v21 = identifierCopy;
    v23 = buf;
    dispatch_async(queue, block);
  }

  _Block_object_dispose(buf, 8);
}

- (void)resumeRangingForReaderIdentifier:(id)identifier withAppletIdentifier:(id)appletIdentifier reply:(id)reply
{
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  replyCopy = reply;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "resumeRangingForReaderIdentifier %@", &buf, 0xCu);
  }

  v12 = +[NSXPCConnection currentConnection];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = sub_100038C90;
  v22 = sub_100038CA0;
  v23 = [_SESDCKSession validateEntitlements:v12];
  if (*(*(&buf + 1) + 40))
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003BD30;
    v14[3] = &unk_1004C2690;
    v15 = appletIdentifierCopy;
    v16 = identifierCopy;
    p_buf = &buf;
    v17 = replyCopy;
    dispatch_async(queue, v14);
  }

  _Block_object_dispose(&buf, 8);
}

- (os_state_data_s)dumpState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:self->_keepAlive != 0];
  [v3 setObject:v4 forKeyedSubscript:@"isMarkedDirty"];

  currentAssertion = self->_currentAssertion;
  v24 = v3;
  if (currentAssertion)
  {
    connection = [(_SESAssertion *)currentAssertion connection];
    userInfo = [connection userInfo];
    v8 = [userInfo objectForKeyedSubscript:&off_1004DC9F0];
    v9 = [NSString stringWithFormat:@"Assertion %p client %@", currentAssertion, v8];
    [v3 setObject:v9 forKeyedSubscript:@"activeAssertion"];
  }

  else
  {
    [v3 setObject:@"none" forKeyedSubscript:@"activeAssertion"];
  }

  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  obj = self->_activeSessions;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v26 = *v29;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = @"DCK";
        }

        else
        {
          v14 = @"RKE";
        }

        isBackgrounded = [v13 isBackgrounded];
        connection2 = [v13 connection];
        userInfo2 = [connection2 userInfo];
        v18 = [userInfo2 objectForKeyedSubscript:&off_1004DC9F0];
        v19 = [NSString stringWithFormat:@"%@Session %p backgrounded %d client %@", v14, v13, isBackgrounded, v18];
        [v27 addObject:v19];
      }

      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  [v24 setObject:v27 forKeyedSubscript:@"activeSessions"];
  dumpState = [(_SESAppStateObserver *)selfCopy->_appStateObserver dumpState];
  [v24 addEntriesFromDictionary:dumpState];
  v21 = sub_100015DA0("sessessionmanager.state", v24);

  return v21;
}

- (void)didAppEnterBackground:(id)background
{
  backgroundCopy = background;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C23C;
  block[3] = &unk_1004C08D8;
  v8 = backgroundCopy;
  v6 = backgroundCopy;
  dispatch_async(queue, block);
}

- (void)didAppGetSuspended:(id)suspended
{
  suspendedCopy = suspended;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C498;
  block[3] = &unk_1004C08D8;
  v8 = suspendedCopy;
  v6 = suspendedCopy;
  dispatch_async(queue, block);
}

- (void)didAppEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C6F4;
  block[3] = &unk_1004C08D8;
  v8 = foregroundCopy;
  v6 = foregroundCopy;
  dispatch_async(queue, block);
}

@end