@interface KeyManagementLibrary
+ (id)sharedLibrary;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (KeyManagementLibrary)init;
- (unsigned)numberOfPairingSessionsQueued;
- (void)addNewSession:(id)session firstInQueue:(BOOL *)queue;
- (void)clientAppIsBackGrounded:(id)grounded;
- (void)clientAppIsForeGrounded:(id)grounded;
- (void)clientAppIsSuspended:(id)suspended;
- (void)handleFirstUnlock;
- (void)removeSession:(id)session withError:(id)error;
- (void)startNextSession;
- (void)startServiceWithMachName:(id)name;
- (void)stopService;
@end

@implementation KeyManagementLibrary

+ (id)sharedLibrary
{
  if (qword_10051B0B8 != -1)
  {
    sub_10037DFF8();
  }

  v3 = qword_10051B0B0;

  return v3;
}

- (KeyManagementLibrary)init
{
  v10.receiver = self;
  v10.super_class = KeyManagementLibrary;
  v2 = [(KeyManagementLibrary *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_isRunning = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.sesd.kml", v4);
    kmlMainQueue = v3->_kmlMainQueue;
    v3->_kmlMainQueue = v5;

    v7 = +[NSMutableArray array];
    sessions = v3->_sessions;
    v3->_sessions = v7;

    if (!v3->_kmlMainQueue || !v3->_sessions)
    {

      return 0;
    }
  }

  return v3;
}

- (void)startServiceWithMachName:(id)name
{
  nameCopy = name;
  if ([(KeyManagementLibrary *)self isRunning])
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[KeyManagementLibrary startServiceWithMachName:]";
      v16 = 1024;
      v17 = 77;
      v6 = "%s : %i : KML: service already running.";
      v7 = v5;
      v8 = 18;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, buf, v8);
    }
  }

  else
  {
    kmlMainQueue = self->_kmlMainQueue;
    os_state_add_handler();
    v10 = [[NSXPCListener alloc] initWithMachServiceName:nameCopy];
    kmlListener = self->_kmlListener;
    self->_kmlListener = v10;

    [(NSXPCListener *)self->_kmlListener setDelegate:self];
    v12 = sub_100389CF0([KmlClientAppStateObserver alloc], self);
    appObserver = self->_appObserver;
    self->_appObserver = v12;

    [(NSXPCListener *)self->_kmlListener resume];
    self->_isRunning = 1;
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "[KeyManagementLibrary startServiceWithMachName:]";
      v16 = 1024;
      v17 = 93;
      v18 = 2112;
      v19 = nameCopy;
      v6 = "%s : %i : Service %@ running";
      v7 = v5;
      v8 = 28;
      goto LABEL_6;
    }
  }
}

- (void)handleFirstUnlock
{
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[KeyManagementLibrary handleFirstUnlock]";
    v8 = 1024;
    v9 = 98;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v6, 0x12u);
  }

  v4 = sub_10037E00C();
  idsListener = self->_idsListener;
  self->_idsListener = v4;

  sub_1003986A0();
}

- (void)stopService
{
  if (self->_isRunning)
  {
    idsListener = self->_idsListener;
    self->_idsListener = 0;

    [(NSXPCListener *)self->_kmlListener invalidate];
    [(NSXPCListener *)self->_kmlListener setDelegate:0];
    kmlListener = self->_kmlListener;
    self->_kmlListener = 0;

    self->_isRunning = 0;
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[KeyManagementLibrary stopService]";
      v9 = 1024;
      v10 = 121;
      v6 = "%s : %i : XPC service stopped";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, &v7, 0x12u);
    }
  }

  else
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[KeyManagementLibrary stopService]";
      v9 = 1024;
      v10 = 111;
      v6 = "%s : %i : KML: service is not running.";
      goto LABEL_6;
    }
  }
}

- (void)addNewSession:(id)session firstInQueue:(BOOL *)queue
{
  sessionCopy = session;
  v7 = self->_sessions;
  objc_sync_enter(v7);
  if (queue)
  {
    *queue = [(NSMutableArray *)self->_sessions count]== 0;
  }

  [(NSMutableArray *)self->_sessions addObject:sessionCopy];
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(NSMutableArray *)self->_sessions count];
    *buf = 136315650;
    v13 = "[KeyManagementLibrary addNewSession:firstInQueue:]";
    v14 = 1024;
    v15 = 132;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %i : Add new session : #sessions = %u", buf, 0x18u);
  }

  objc_sync_exit(v7);
  kmlMainQueue = self->_kmlMainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037C5B4;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(kmlMainQueue, block);
}

- (void)removeSession:(id)session withError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = sessionCopy;
  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "[KeyManagementLibrary removeSession:withError:]";
    v22 = 1024;
    v23 = 143;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  [(KmlSession *)v8 stopWithError:errorCopy];
  v10 = sub_1003CD780(&v8->super.isa);
  userInfo = [v10 userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"ProxyObjects"];
  [v12 removeObject:v8];
  v13 = self->_sessions;
  objc_sync_enter(v13);
  [(NSMutableArray *)self->_sessions removeObject:v8];
  if (self->_currentSession == v8)
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v21 = "[KeyManagementLibrary removeSession:withError:]";
      v22 = 1024;
      v23 = 155;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s : %i : clearing current session", buf, 0x12u);
    }

    currentSession = self->_currentSession;
    self->_currentSession = 0;
  }

  v16 = KmlLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [(NSMutableArray *)self->_sessions count];
    *buf = 136315650;
    v21 = "[KeyManagementLibrary removeSession:withError:]";
    v22 = 1024;
    v23 = 159;
    v24 = 1024;
    LODWORD(v25) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : %i :  sessions = %u", buf, 0x18u);
  }

  objc_sync_exit(v13);
  kmlMainQueue = self->_kmlMainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037C8B0;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(kmlMainQueue, block);
}

- (void)startNextSession
{
  v3 = self->_sessions;
  objc_sync_enter(v3);
  if (self->_currentSession)
  {
    goto LABEL_2;
  }

  if (![(NSMutableArray *)self->_sessions count])
  {
    if (!self->_currentSession)
    {
      if ([(NSMutableArray *)self->_sessions count])
      {
        goto LABEL_9;
      }

      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = 136315394;
        v10 = "[KeyManagementLibrary startNextSession]";
        v11 = 1024;
        v12 = 180;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : No Sessions queued", &v9, 0x12u);
      }

      goto LABEL_4;
    }

LABEL_2:
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      clientName = [(KmlSession *)self->_currentSession clientName];
      v9 = 136315650;
      v10 = "[KeyManagementLibrary startNextSession]";
      v11 = 1024;
      v12 = 177;
      v13 = 2112;
      v14 = clientName;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Session (by %@) already in progress", &v9, 0x1Cu);
    }

LABEL_4:

    goto LABEL_9;
  }

  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[KeyManagementLibrary startNextSession]";
    v11 = 1024;
    v12 = 171;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s : %i : Dequeuing next session", &v9, 0x12u);
  }

  v7 = [(NSMutableArray *)self->_sessions objectAtIndex:0];
  currentSession = self->_currentSession;
  self->_currentSession = v7;

  [(NSMutableArray *)self->_sessions removeObjectAtIndex:0];
  [(KmlSession *)self->_currentSession start];
LABEL_9:
  objc_sync_exit(v3);
}

- (unsigned)numberOfPairingSessionsQueued
{
  obj = self->_sessions;
  objc_sync_enter(obj);
  if (self->_currentSession && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[KeyManagementLibrary numberOfPairingSessionsQueued]";
      v20 = 1024;
      v21 = 191;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Current session is pairing session", buf, 0x12u);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sessions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = KmlLogger();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v19 = "[KeyManagementLibrary numberOfPairingSessionsQueued]";
            v20 = 1024;
            v21 = 198;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : %i : A pairing session is already in queue", buf, 0x12u);
          }

          ++v4;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[KeyManagementLibrary numberOfPairingSessionsQueued]";
    v20 = 1024;
    v21 = 204;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Number of pairing sessions in queue : %u", buf, 0x18u);
  }

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  memset(buffer, 0, 255);
  proc_name([connectionCopy processIdentifier], buffer, 0xFEu);
  v8 = [NSString stringWithUTF8String:buffer];
  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v38 = "[KeyManagementLibrary listener:shouldAcceptNewConnection:]";
    v39 = 1024;
    v40 = 239;
    v41 = 2080;
    v42 = buffer;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : New Client: %s", buf, 0x1Cu);
  }

  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v38 = "[KeyManagementLibrary listener:shouldAcceptNewConnection:]";
    v39 = 1024;
    v40 = 240;
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : %i : New client request from :%@", buf, 0x1Cu);
  }

  v11 = sub_1003CDAD0([KmlEntitlementChecker alloc], connectionCopy);
  if ((sub_1003AE7DC(v11) & 1) == 0)
  {
    v12 = KmlLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    v38 = "[KeyManagementLibrary listener:shouldAcceptNewConnection:]";
    v39 = 1024;
    v40 = 245;
    v13 = "%s : %i : Entitlement for XPC not found";
    goto LABEL_11;
  }

  if (!sub_10038ABD8(self->_appObserver, connectionCopy))
  {
    v17 = sub_10038AE84(self->_appObserver, connectionCopy);
    if (v17 == 4279897)
    {
      v21 = 1;
LABEL_23:
      v22 = 1;
LABEL_25:
      v12 = objc_opt_new();
      sub_1003B5EC8(v12, self->_kmlMainQueue);
      v23 = +[KmlManagerInterface interface];
      [connectionCopy setExportedInterface:v23];

      [connectionCopy setExportedObject:v12];
      v24 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KmlManagerCallbacks];
      [connectionCopy setRemoteObjectInterface:v24];

      v25 = +[NSMutableSet set];
      v26 = [NSMutableDictionary dictionaryWithObject:v25 forKey:@"ProxyObjects"];

      [v26 setObject:v8 forKeyedSubscript:@"ClientName"];
      [v26 setObject:v11 forKeyedSubscript:@"Entitlements"];
      v27 = [NSNumber numberWithBool:v22];
      [v26 setObject:v27 forKeyedSubscript:@"BackGroundClient"];

      v28 = [NSNumber numberWithBool:v21];
      [v26 setObject:v28 forKeyedSubscript:@"ClientIsDaemon"];

      [connectionCopy setUserInfo:v26];
      objc_initWeak(buf, self);
      objc_initWeak(&location, connectionCopy);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10037DF38;
      v33[3] = &unk_1004D1EA0;
      objc_copyWeak(&v34, &location);
      objc_copyWeak(&v35, buf);
      [connectionCopy setInvalidationHandler:v33];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10037DF98;
      v30[3] = &unk_1004D1EA0;
      objc_copyWeak(&v31, &location);
      objc_copyWeak(&v32, buf);
      [connectionCopy setInterruptionHandler:v30];
      sub_10038A4C0(self->_appObserver, connectionCopy);
      [connectionCopy resume];
      objc_destroyWeak(&v32);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);

      v16 = 1;
      goto LABEL_26;
    }

    if (v17 != 1)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_25;
    }

    v18 = KmlLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v38 = "[KeyManagementLibrary listener:shouldAcceptNewConnection:]";
      v39 = 1024;
      v40 = 256;
      v41 = 2080;
      v42 = buffer;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : Client (%s) is in background", buf, 0x1Cu);
    }

    v19 = sub_1003CDC98(v11);
    v20 = KmlLogger();
    v12 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v38 = "[KeyManagementLibrary listener:shouldAcceptNewConnection:]";
        v39 = 1024;
        v40 = 261;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : But it has entitlement to continue.", buf, 0x12u);
      }

      v21 = 0;
      goto LABEL_23;
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    v38 = "[KeyManagementLibrary listener:shouldAcceptNewConnection:]";
    v39 = 1024;
    v40 = 258;
    v13 = "%s : %i : Can not allow this connection to resume";
LABEL_11:
    v14 = v12;
    v15 = 18;
    goto LABEL_12;
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v38 = "[KeyManagementLibrary listener:shouldAcceptNewConnection:]";
    v39 = 1024;
    v40 = 250;
    v41 = 2080;
    v42 = buffer;
    v13 = "%s : %i : Client (%s) is suspended. Reject connection";
    v14 = v12;
    v15 = 28;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
  }

LABEL_13:
  v16 = 0;
LABEL_26:

  return v16;
}

- (void)clientAppIsSuspended:(id)suspended
{
  suspendedCopy = suspended;
  v5 = suspendedCopy;
  if (suspendedCopy)
  {
    memset(buffer, 0, 255);
    proc_name([suspendedCopy processIdentifier], buffer, 0xFEu);
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[KeyManagementLibrary clientAppIsSuspended:]";
      v14 = 1024;
      v15 = 347;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
    }

    if (sub_10038ABD8(self->_appObserver, v5))
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v13 = "[KeyManagementLibrary clientAppIsSuspended:]";
        v14 = 1024;
        v15 = 351;
        v16 = 2080;
        v17 = buffer;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Client (%s) is suspended", buf, 0x1Cu);
      }

      sub_10038A89C(self->_appObserver, v5);
      kmlMainQueue = self->_kmlMainQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10037D87C;
      block[3] = &unk_1004C08D8;
      v11 = v5;
      dispatch_async(kmlMainQueue, block);
    }
  }

  else
  {
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buffer[0]) = 136315394;
      *(buffer + 4) = "[KeyManagementLibrary clientAppIsSuspended:]";
      WORD6(buffer[0]) = 1024;
      *(buffer + 14) = 340;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : connection is nil", buffer, 0x12u);
    }
  }
}

- (void)clientAppIsBackGrounded:(id)grounded
{
  groundedCopy = grounded;
  v5 = groundedCopy;
  if (groundedCopy)
  {
    kmlMainQueue = self->_kmlMainQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10037D9BC;
    v8[3] = &unk_1004C22F0;
    v9 = groundedCopy;
    selfCopy = self;
    dispatch_async(kmlMainQueue, v8);
    v7 = v9;
  }

  else
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[KeyManagementLibrary clientAppIsBackGrounded:]";
      v13 = 1024;
      v14 = 367;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : connection is nil", buf, 0x12u);
    }
  }
}

- (void)clientAppIsForeGrounded:(id)grounded
{
  groundedCopy = grounded;
  v5 = groundedCopy;
  if (groundedCopy)
  {
    kmlMainQueue = self->_kmlMainQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10037DCB4;
    v8[3] = &unk_1004C22F0;
    v9 = groundedCopy;
    selfCopy = self;
    dispatch_async(kmlMainQueue, v8);
    v7 = v9;
  }

  else
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[KeyManagementLibrary clientAppIsForeGrounded:]";
      v13 = 1024;
      v14 = 392;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : connection is nil", buf, 0x12u);
    }
  }
}

@end