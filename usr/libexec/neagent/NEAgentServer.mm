@interface NEAgentServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation NEAgentServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.neagent-client"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 BOOLValue] & 1) == 0)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Rejecting un-entitled XPC client", &v26, 2u);
    }

    goto LABEL_15;
  }

  if (self)
  {
    Property = objc_getProperty(self, v9, 16, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property != listenerCopy)
  {
LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  kdebug_trace();
  v11 = [NEAgentSession alloc];
  v12 = connectionCopy;
  if (v11)
  {
    v31.receiver = v11;
    v31.super_class = NEAgentSession;
    v11 = [(NEAgentServer *)&v31 init];
    if (v11)
    {
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create("NEAgentSession queue", v13);
      queue = v11->_queue;
      v11->_queue = v14;

      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_100016A50;
      v29 = &unk_100024A20;
      v11 = v11;
      v30 = v11;
      v16 = objc_retainBlock(&v26);
      v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEAgentControl, v26, v27, v28, v29];
      [v12 setExportedInterface:v17];

      [v12 setExportedObject:v11];
      [v12 setInvalidationHandler:v16];
      [v12 setInterruptionHandler:v16];
      v18 = os_transaction_create();
      transaction = v11->_transaction;
      v11->_transaction = v18;

      objc_storeStrong(&v11->_connection, connection);
      [v12 resume];
      v20 = +[NSXPCListener anonymousListener];
      [(NSXPCListener *)v20 setDelegate:v11];
      [(NSXPCListener *)v20 resume];
      delegateListener = v11->_delegateListener;
      v11->_delegateListener = v20;
    }
  }

  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    activeSessions = self->_activeSessions;
  }

  else
  {
    activeSessions = 0;
  }

  [(NSMutableArray *)activeSessions addObject:v11];
  os_unfair_lock_unlock(&self->_lock);

  v23 = 1;
LABEL_16:

  return v23;
}

@end