@interface _SESSessionManager
+ (id)sessionManagerWithMachServiceName:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)getActiveACWGSessions;
- (id)getActiveDCKSessions;
- (id)getActiveRKESessions;
- (id)init:(id)a3;
- (os_state_data_s)dumpState;
- (void)addSession:(id)a3 forConnection:(id)a4;
- (void)didAppEnterBackground:(id)a3;
- (void)didAppEnterForeground:(id)a3;
- (void)didAppGetSuspended:(id)a3;
- (void)didCloseConnection:(id)a3;
- (void)didCreateKey:(id)a3;
- (void)didReceivePassthroughMessage:(id)a3 keyIdentifier:(id)a4;
- (void)getVehicleReports:(id)a3;
- (void)pauseRangingForReaderIdentifier:(id)a3 durationInSec:(id)a4 withAppletIdentifier:(id)a5 reply:(id)a6;
- (void)registerCarKeyAppForLaunch:(BOOL)a3 reply:(id)a4;
- (void)removeSession:(id)a3;
- (void)resumeRangingForReaderIdentifier:(id)a3 withAppletIdentifier:(id)a4 reply:(id)a5;
- (void)sendEvent:(id)a3 keyIdentifier:(id)a4;
- (void)start;
- (void)startSESACWGSession:(id)a3 completion:(id)a4;
- (void)startSESAssertion:(id)a3 withKeyIdentifier:(id)a4 withAppletIdentifier:(id)a5 withOptions:(id)a6 completion:(id)a7;
- (void)startSESDCKSession:(id)a3 completion:(id)a4;
- (void)startSESRKESession:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation _SESSessionManager

+ (id)sessionManagerWithMachServiceName:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038658;
  block[3] = &unk_1004C08D8;
  v9 = a3;
  v3 = qword_10050CCA0;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_10050CCA0, block);
  }

  v5 = qword_10050CC98;
  v6 = qword_10050CC98;

  return v5;
}

- (id)init:(id)a3
{
  v18.receiver = self;
  v18.super_class = _SESSessionManager;
  v3 = [(_SESSessionManager *)&v18 initWithMachServiceName:a3];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"application-identifier"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109634;
      *&buf[4] = [v7 processIdentifier];
      *&buf[8] = 2112;
      *&buf[10] = v8;
      *&buf[18] = 2112;
      *&buf[20] = v7;
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
    [v7 setUserInfo:v13];

    v14 = +[SESSessionManagerCallbackInterface interface];
    [v7 setRemoteObjectInterface:v14];

    v15 = +[SESSessionManagerInterface interface];
    [v7 setExportedInterface:v15];

    [v7 setExportedObject:self];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_100038C90;
    v23 = sub_100038CA0;
    v16 = v7;
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

- (void)didCloseConnection:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038E40;
  v7[3] = &unk_1004C22F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addSession:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  queue = self->_queue;
  v8 = a4;
  dispatch_assert_queue_V2(queue);
  os_unfair_lock_lock(&self->_lock);
  v9 = [v8 userInfo];

  v10 = [v9 objectForKeyedSubscript:&off_1004DCA08];

  [v10 addObject:v6];
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(NSMutableArray *)self->_activeSessions count];
    v15 = 138412546;
    v16 = v6;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Adding session %@ active sessions %lu", &v15, 0x16u);
  }

  [(NSMutableArray *)self->_activeSessions addObject:v6];
  if (!self->_keepAlive)
  {
    v13 = os_transaction_create();
    keepAlive = self->_keepAlive;
    self->_keepAlive = v13;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeSession:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_activeSessions removeObject:v5];
  [v5 releaseRemoteObject];
  v6 = [v5 connection];
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:&off_1004DCA08];

  [v8 removeObject:v5];
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

- (void)registerCarKeyAppForLaunch:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v5 = a4;
  v11 = +[NSXPCConnection currentConnection];
  v6 = [_SESSessionClientInfo withConnection:?];
  if ([v6 rkeSessionEntitlement])
  {
    v7 = [v6 clientName];
    if (v4)
    {
      [_TtC10seserviced17CarKeyAppLauncher registerAppWithIdentifier:v7];
    }

    else
    {
      [_TtC10seserviced17CarKeyAppLauncher unregisterAppWithIdentifier:v7];
    }

    v5[2](v5, 1, 0);
  }

  else
  {
    v8 = SESDefaultLogObject();
    v10 = [v6 clientName];
    v9 = SESCreateAndLogError();
    (v5)[2](v5, 0, v9);

    v5 = v8;
  }
}

- (void)startSESACWGSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v7[2](v7, 0, v10);
  }

  else
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000397C0;
    v12[3] = &unk_1004C2548;
    v13 = v6;
    v14 = self;
    v16 = v7;
    v15 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)startSESDCKSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v7[2](v7, 0, v10);
  }

  else
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100039BB0;
    v12[3] = &unk_1004C2548;
    v13 = v6;
    v14 = self;
    v16 = v7;
    v15 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)startSESRKESession:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v10[2](v10, 0);
  }

  else
  {
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003A034;
    v14[3] = &unk_1004C2570;
    v15 = v12;
    v16 = self;
    v19 = v10;
    v17 = v9;
    v18 = v8;
    v20 = buf;
    dispatch_async(queue, v14);
  }

  _Block_object_dispose(buf, 8);
}

- (void)sendEvent:(id)a3 keyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A678;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)didCreateKey:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003AB84;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)didReceivePassthroughMessage:(id)a3 keyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003ADC0;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)getVehicleReports:(id)a3
{
  v3 = a3;
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
    v3[2](v3, 0, v6);
  }

  else
  {
    v7 = +[_TtC10seserviced14AlishaExternal shared];
    v8 = [v7 getReportsWithIsInternalClient:1];

    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 allValues];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Vehicle report %@", &v11, 0xCu);
    }

    (v3)[2](v3, v8, 0);
  }
}

- (void)startSESAssertion:(id)a3 withKeyIdentifier:(id)a4 withAppletIdentifier:(id)a5 withOptions:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = SESDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v29 = v13;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "startSESAssertion keyIdentifier %@ appletIdentifier %@ options %@", buf, 0x20u);
  }

  v18 = +[NSXPCConnection currentConnection];
  v19 = [_SESAssertion validateEntitlements:v18 appletIdentifier:v14];
  if (v19)
  {
    v16[2](v16, 0, v19);
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003B330;
    block[3] = &unk_1004C2640;
    block[4] = self;
    v22 = v13;
    v23 = v12;
    v24 = v14;
    v25 = v15;
    v27 = v16;
    v26 = v18;
    dispatch_async(queue, block);
  }
}

- (void)pauseRangingForReaderIdentifier:(id)a3 durationInSec:(id)a4 withAppletIdentifier:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    [v11 doubleValue];
    *buf = 138412546;
    *&buf[4] = v10;
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
    v13[2](v13, 0);
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003B968;
    block[3] = &unk_1004C2668;
    v19 = v11;
    v22 = v13;
    v20 = v12;
    v21 = v10;
    v23 = buf;
    dispatch_async(queue, block);
  }

  _Block_object_dispose(buf, 8);
}

- (void)resumeRangingForReaderIdentifier:(id)a3 withAppletIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
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
    v10[2](v10, 0);
  }

  else
  {
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003BD30;
    v14[3] = &unk_1004C2690;
    v15 = v9;
    v16 = v8;
    p_buf = &buf;
    v17 = v10;
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
    v6 = [(_SESAssertion *)currentAssertion connection];
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:&off_1004DC9F0];
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
  v23 = self;
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

        v15 = [v13 isBackgrounded];
        v16 = [v13 connection];
        v17 = [v16 userInfo];
        v18 = [v17 objectForKeyedSubscript:&off_1004DC9F0];
        v19 = [NSString stringWithFormat:@"%@Session %p backgrounded %d client %@", v14, v13, v15, v18];
        [v27 addObject:v19];
      }

      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  [v24 setObject:v27 forKeyedSubscript:@"activeSessions"];
  v20 = [(_SESAppStateObserver *)v23->_appStateObserver dumpState];
  [v24 addEntriesFromDictionary:v20];
  v21 = sub_100015DA0("sessessionmanager.state", v24);

  return v21;
}

- (void)didAppEnterBackground:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C23C;
  block[3] = &unk_1004C08D8;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)didAppGetSuspended:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C498;
  block[3] = &unk_1004C08D8;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)didAppEnterForeground:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C6F4;
  block[3] = &unk_1004C08D8;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

@end