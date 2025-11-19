@interface NDUserEventAgentConnection
+ (id)sharedUserEventAgentConnection;
- (BOOL)canLaunchProcessWithIdentifier:(id)a3;
- (NDUserEventAgentConnection)init;
- (void)handleNewConnection:(id)a3;
- (void)launchProcessWithIdentifier:(id)a3 sessionIdentifier:(id)a4;
- (void)performWake:(id)a3 uponNotification:(id)a4 sessionIdentifier:(id)a5;
- (void)removePendingWakeForClient:(id)a3 sessionIdentifier:(id)a4;
- (void)start;
@end

@implementation NDUserEventAgentConnection

+ (id)sharedUserEventAgentConnection
{
  if (qword_1000EB138 != -1)
  {
    dispatch_once(&qword_1000EB138, &stru_1000D5518);
  }

  v3 = qword_1000EB130;

  return v3;
}

- (void)removePendingWakeForClient:(id)a3 sessionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040AD0;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)performWake:(id)a3 uponNotification:(id)a4 sessionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100040C84;
  v15[3] = &unk_1000D5568;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)launchProcessWithIdentifier:(id)a3 sessionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040E9C;
  block[3] = &unk_1000D6130;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (BOOL)canLaunchProcessWithIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_registeredClients objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)handleNewConnection:(id)a3
{
  v5 = a3;
  p_connection = &self->_connection;
  connection = self->_connection;
  if (connection)
  {
    v8 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received a new connection from UserEventAgent! Canceling the old one", buf, 2u);
      connection = *p_connection;
    }

    xpc_connection_cancel(connection);
    v9 = *p_connection;
    *p_connection = 0;
  }

  objc_storeStrong(&self->_connection, a3);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000411C8;
  handler[3] = &unk_1000D5540;
  handler[4] = self;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_set_target_queue(v5, self->_queue);
  xpc_connection_resume(*p_connection);
}

- (void)start
{
  mach_service = xpc_connection_create_mach_service("com.apple.nsurlsessiond-launchondemand", self->_queue, 1uLL);
  listener = self->_listener;
  self->_listener = mach_service;

  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_listener;
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Created xpc listener: %@", buf, 0xCu);
  }

  v7 = self->_listener;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100041630;
  handler[3] = &unk_1000D5540;
  handler[4] = self;
  xpc_connection_set_event_handler(v7, handler);
  xpc_connection_resume(self->_listener);
}

- (NDUserEventAgentConnection)init
{
  v10.receiver = self;
  v10.super_class = NDUserEventAgentConnection;
  v2 = [(NDUserEventAgentConnection *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.nsurlsessiond.UserEventAgentConnectionQueue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_new();
    pendingWakes = v2->_pendingWakes;
    v2->_pendingWakes = v7;
  }

  return v2;
}

@end