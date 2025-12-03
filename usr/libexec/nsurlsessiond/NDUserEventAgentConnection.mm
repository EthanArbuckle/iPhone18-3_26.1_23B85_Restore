@interface NDUserEventAgentConnection
+ (id)sharedUserEventAgentConnection;
- (BOOL)canLaunchProcessWithIdentifier:(id)identifier;
- (NDUserEventAgentConnection)init;
- (void)handleNewConnection:(id)connection;
- (void)launchProcessWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier;
- (void)performWake:(id)wake uponNotification:(id)notification sessionIdentifier:(id)identifier;
- (void)removePendingWakeForClient:(id)client sessionIdentifier:(id)identifier;
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

- (void)removePendingWakeForClient:(id)client sessionIdentifier:(id)identifier
{
  clientCopy = client;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040AD0;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = clientCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = clientCopy;
  dispatch_async(queue, block);
}

- (void)performWake:(id)wake uponNotification:(id)notification sessionIdentifier:(id)identifier
{
  wakeCopy = wake;
  notificationCopy = notification;
  identifierCopy = identifier;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100040C84;
  v15[3] = &unk_1000D5568;
  v15[4] = self;
  v16 = notificationCopy;
  v17 = identifierCopy;
  v18 = wakeCopy;
  v12 = wakeCopy;
  v13 = identifierCopy;
  v14 = notificationCopy;
  dispatch_async(queue, v15);
}

- (void)launchProcessWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040E9C;
  block[3] = &unk_1000D6130;
  v12 = identifierCopy;
  v13 = sessionIdentifierCopy;
  selfCopy = self;
  v9 = sessionIdentifierCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (BOOL)canLaunchProcessWithIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_registeredClients objectForKey:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)handleNewConnection:(id)connection
{
  connectionCopy = connection;
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

  objc_storeStrong(&self->_connection, connection);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000411C8;
  handler[3] = &unk_1000D5540;
  handler[4] = self;
  xpc_connection_set_event_handler(connectionCopy, handler);
  xpc_connection_set_target_queue(connectionCopy, self->_queue);
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