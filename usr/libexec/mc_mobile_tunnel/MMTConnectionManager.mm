@interface MMTConnectionManager
+ (id)sharedInstance;
- (MMTConnectionManager)init;
- (void)createConnectionForLockdownConnection:(_lockdown_connection *)connection;
- (void)removeConnection:(id)connection;
@end

@implementation MMTConnectionManager

+ (id)sharedInstance
{
  if (qword_100014BC0 != -1)
  {
    sub_1000082E0();
  }

  v3 = qword_100014BB8;

  return v3;
}

- (MMTConnectionManager)init
{
  v8.receiver = self;
  v8.super_class = MMTConnectionManager;
  v2 = [(MMTConnectionManager *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    activeConnections = v2->_activeConnections;
    v2->_activeConnections = v3;

    v5 = dispatch_queue_create("Connection Manager Queue", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v5;
  }

  return v2;
}

- (void)createConnectionForLockdownConnection:(_lockdown_connection *)connection
{
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    connectionCopy = connection;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting lockdown connection: %p", buf, 0xCu);
  }

  connectionQueue = [(MMTConnectionManager *)self connectionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000141C;
  v7[3] = &unk_100010720;
  v7[4] = self;
  v7[5] = connection;
  dispatch_sync(connectionQueue, v7);
}

- (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    lockdownConnection = [connectionCopy lockdownConnection];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting lockdown connection: %p", buf, 0xCu);
  }

  connectionQueue = [(MMTConnectionManager *)self connectionQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000015D4;
  v9[3] = &unk_100010748;
  v10 = connectionCopy;
  selfCopy = self;
  v8 = connectionCopy;
  dispatch_sync(connectionQueue, v9);
}

@end