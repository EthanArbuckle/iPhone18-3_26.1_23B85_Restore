@interface DPCDaemon
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DPCDaemon)init;
- (unint64_t)startTheDetection;
- (void)_setupXPCListener;
- (void)dealloc;
- (void)forceNotifyNewEvents:(unint64_t)events probability:(float)probability;
- (void)notifyConnection:(id)connection withError:(unint64_t)error;
- (void)notifyNewEvents:(unint64_t)events probability:(float)probability;
- (void)notifyNewWatchStatusEvents:(unint64_t)events;
- (void)setCurrentWatchPresenceStatus:(unint64_t)status;
- (void)setupWatchPresenceDetection;
- (void)shutdownTheDetection;
- (void)startWatchPresenceDetection;
- (void)stopWatchPresenceDetection;
@end

@implementation DPCDaemon

- (void)stopWatchPresenceDetection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[NSXPCConnection currentConnection];
  v4 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[stop] command received from connection %@, going to stop...", &v5, 0xCu);
  }

  if ([(DPCDaemon *)selfCopy checkIfShouldShutdown])
  {
    [(DPCDaemon *)selfCopy shutdownTheDetection];
  }

  objc_sync_exit(selfCopy);
}

- (void)shutdownTheDetection
{
  v3 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Shutting down watchpresenced", v5, 2u);
  }

  [(DPCWatchPresenceDetector *)self->_detector resetAll];
  transaction = self->_transaction;
  self->_transaction = 0;
}

+ (id)sharedInstance
{
  if (qword_100016AC0 != -1)
  {
    sub_10000768C();
  }

  v3 = qword_100016AC8;

  return v3;
}

- (DPCDaemon)init
{
  v10.receiver = self;
  v10.super_class = DPCDaemon;
  v2 = [(DPCDaemon *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    connectionLock = v2->_connectionLock;
    v2->_connectionLock = v3;

    v5 = objc_alloc_init(DPCWatchPresenceDetector);
    detector = v2->_detector;
    v2->_detector = v5;

    [(DPCDaemon *)v2 _setupXPCListener];
    v7 = +[DPCTelemetry sharedInstance];
    telemetry = v2->_telemetry;
    v2->_telemetry = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(DPCDaemon *)self shutdownTheDetection];
  v3.receiver = self;
  v3.super_class = DPCDaemon;
  [(DPCDaemon *)&v3 dealloc];
}

- (void)_setupXPCListener
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.watchpresenced"];
  listener = self->_listener;
  self->_listener = v3;

  v5 = self->_listener;
  if (!v5)
  {
    v6 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "XPC Listener failed", v9, 2u);
    }

    v5 = self->_listener;
  }

  [(NSXPCListener *)v5 setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v7 = objc_alloc_init(NSMutableArray);
  connections = self->_connections;
  self->_connections = v7;
}

- (unint64_t)startTheDetection
{
  prestartCheck = [(DPCWatchPresenceDetector *)self->_detector prestartCheck];
  if (!prestartCheck)
  {
    self->_currentWatchPresenceType = 1;
    [(DPCWatchPresenceDetector *)self->_detector start];
  }

  return prestartCheck;
}

- (void)notifyNewEvents:(unint64_t)events probability:(float)probability
{
  [(NSLock *)self->_connectionLock lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_connections;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        remoteObjectProxy = [*(*(&v14 + 1) + 8 * v11) remoteObjectProxy];
        *&v13 = probability;
        [remoteObjectProxy newWatchPresenceEvent:events probability:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(NSLock *)self->_connectionLock unlock];
}

- (void)notifyNewWatchStatusEvents:(unint64_t)events
{
  [(NSLock *)self->_connectionLock lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_connections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        remoteObjectProxy = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [remoteObjectProxy newWatchStatusEvent:events];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSLock *)self->_connectionLock unlock];
}

- (void)forceNotifyNewEvents:(unint64_t)events probability:(float)probability
{
  [(NSLock *)self->_connectionLock lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_connections;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        remoteObjectProxy = [*(*(&v14 + 1) + 8 * v11) remoteObjectProxy];
        *&v13 = probability;
        [remoteObjectProxy newWatchPresenceEvent:events probability:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(NSLock *)self->_connectionLock unlock];
}

- (void)notifyConnection:(id)connection withError:(unint64_t)error
{
  connectionCopy = connection;
  v6 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = [connectionCopy processIdentifier];
    v9 = 2048;
    errorCopy = error;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notifying connection %d with Error %lu", v8, 0x12u);
  }

  remoteObjectProxy = [connectionCopy remoteObjectProxy];
  [remoteObjectProxy newErrorDetected:error];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    v20 = 2112;
    v21 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Watchpresenced received a new connection request from %d, connection: %@", &buf, 0x12u);
  }

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DPCXPCInterface];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:self];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DPCXPCClientInterface];
  [connectionCopy setRemoteObjectInterface:v10];

  objc_initWeak(&buf, self);
  objc_initWeak(&location, connectionCopy);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003D84;
  v15[3] = &unk_1000105C8;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &buf);
  [connectionCopy setInvalidationHandler:v15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003EA0;
  v12[3] = &unk_1000105C8;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &buf);
  [connectionCopy setInterruptionHandler:v12];
  [(NSLock *)self->_connectionLock lock];
  [(NSMutableArray *)self->_connections addObject:connectionCopy];
  [(NSLock *)self->_connectionLock unlock];
  [connectionCopy resume];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  objc_destroyWeak(&buf);

  return 1;
}

- (void)startWatchPresenceDetection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_transaction)
  {
    v3 = os_transaction_create();
    transaction = selfCopy->_transaction;
    selfCopy->_transaction = v3;
  }

  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[start] command received from connection %@, going to start...", &v8, 0xCu);
  }

  if ([(NSMutableArray *)selfCopy->_connections count]== 1)
  {
    startTheDetection = [(DPCDaemon *)selfCopy startTheDetection];
    if (startTheDetection)
    {
      if (startTheDetection == 2)
      {
        [(DPCDaemon *)selfCopy notifyNewWatchStatusEvents:5];
      }

      else
      {
        [(DPCDaemon *)selfCopy notifyConnection:v5 withError:startTheDetection];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setupWatchPresenceDetection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_initWeak(&location, selfCopy);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000420C;
  block[3] = &unk_100010618;
  block[4] = selfCopy;
  objc_copyWeak(&v4, &location);
  if (qword_100016AD0 != -1)
  {
    dispatch_once(&qword_100016AD0, block);
  }

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
  objc_sync_exit(selfCopy);
}

- (void)setCurrentWatchPresenceStatus:(unint64_t)status
{
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"Unknown";
    if (status == 1)
    {
      v6 = @"Presence";
    }

    if (status == 2)
    {
      v6 = @"Absence";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "received a testtool set status command: going to set to type %@...", &v8, 0xCu);
  }

  self->_currentWatchPresenceType = status;
  LODWORD(v7) = 1065185444;
  [(DPCDaemon *)self forceNotifyNewEvents:status probability:v7];
}

@end