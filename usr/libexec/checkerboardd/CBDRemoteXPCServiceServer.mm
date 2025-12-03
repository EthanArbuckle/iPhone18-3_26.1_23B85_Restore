@interface CBDRemoteXPCServiceServer
- (CBDRemoteXPCServiceServer)initWithAllowedMessageClasses:(id)classes;
- (CBDRemoteXPCServiceServerDelegate)delegate;
- (void)_dispatchReceivedMessage:(id)message event:(id)event client:(id)client;
- (void)_handleError:(id)error;
- (void)_handleEvent:(id)event;
- (void)_sendReply:(id)reply event:(id)event client:(id)client;
- (void)invalidate;
- (void)resume;
@end

@implementation CBDRemoteXPCServiceServer

- (CBDRemoteXPCServiceServer)initWithAllowedMessageClasses:(id)classes
{
  classesCopy = classes;
  v14.receiver = self;
  v14.super_class = CBDRemoteXPCServiceServer;
  v6 = [(CBDRemoteXPCServiceServer *)&v14 init];
  v7 = v6;
  if (v6)
  {
    listener = v6->_listener;
    v6->_listener = 0;

    objc_storeStrong(&v7->_allowedClasses, classes);
    v9 = dispatch_queue_create("com.apple.checkerboard.easyrider.xpc_listener", 0);
    serviceQueue = v7->_serviceQueue;
    v7->_serviceQueue = v9;

    v11 = dispatch_queue_create("com.apple.checkerboard.easyrider.message_handler", 0);
    messageQueue = v7->_messageQueue;
    v7->_messageQueue = v11;
  }

  return v7;
}

- (void)resume
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "start remote service", buf, 2u);
  }

  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002C94;
  v11[3] = &unk_100010460;
  objc_copyWeak(&v12, buf);
  v4 = objc_retainBlock(v11);
  listener = [(CBDRemoteXPCServiceServer *)self listener];

  if (!listener)
  {
    serviceQueue = [(CBDRemoteXPCServiceServer *)self serviceQueue];
    remote_service_listener = xpc_remote_connection_create_remote_service_listener();
    [(CBDRemoteXPCServiceServer *)self setListener:remote_service_listener];

    listener2 = [(CBDRemoteXPCServiceServer *)self listener];
    xpc_remote_connection_set_event_handler();

    listener3 = [(CBDRemoteXPCServiceServer *)self listener];
    xpc_remote_connection_set_local_service_version();

    listener4 = [(CBDRemoteXPCServiceServer *)self listener];
    xpc_remote_connection_activate();
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)invalidate
{
  listener = [(CBDRemoteXPCServiceServer *)self listener];

  if (listener)
  {

    [(CBDRemoteXPCServiceServer *)self setListener:0];
  }
}

- (void)_handleError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy == &_xpc_error_connection_invalid)
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100007200();
    }

    invalidationHandler = [(CBDRemoteXPCServiceServer *)self invalidationHandler];

    if (invalidationHandler)
    {
      invalidationHandler2 = [(CBDRemoteXPCServiceServer *)self invalidationHandler];
LABEL_14:
      v13 = invalidationHandler2;
      (*(invalidationHandler2 + 16))();
    }
  }

  else
  {
    if (errorCopy != &_xpc_error_connection_interrupted)
    {
      v6 = xpc_copy_description(errorCopy);
      v7 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000714C();
      }

      free(v6);
      goto LABEL_15;
    }

    v11 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000071C0();
    }

    interruptionHandler = [(CBDRemoteXPCServiceServer *)self interruptionHandler];

    if (interruptionHandler)
    {
      invalidationHandler2 = [(CBDRemoteXPCServiceServer *)self interruptionHandler];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)_handleEvent:(id)event
{
  eventCopy = event;
  v5 = xpc_dictionary_get_remote_connection(eventCopy);
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to decode XPC object...", buf, 2u);
  }

  allowedClasses = [(CBDRemoteXPCServiceServer *)self allowedClasses];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003210;
  v8[3] = &unk_100010488;
  v9 = v5;
  selfCopy = self;
  v11 = eventCopy;
  [NSKeyedUnarchiver unarchiveObjectFromXPCObject:v11 allowedClasses:allowedClasses completion:v8];
}

- (void)_dispatchReceivedMessage:(id)message event:(id)event client:(id)client
{
  messageCopy = message;
  eventCopy = event;
  clientCopy = client;
  delegate = [(CBDRemoteXPCServiceServer *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    messageQueue = [(CBDRemoteXPCServiceServer *)self messageQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003494;
    v15[3] = &unk_1000104D8;
    v16 = messageCopy;
    selfCopy = self;
    v18 = eventCopy;
    v19 = clientCopy;
    dispatch_async(messageQueue, v15);

    v14 = v16;
  }

  else
  {
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000072F4(messageCopy, self);
    }
  }
}

- (void)_sendReply:(id)reply event:(id)event client:(id)client
{
  clientCopy = client;
  replyCopy = reply;
  reply = xpc_dictionary_create_reply(event);
  [NSKeyedArchiver archiveObject:replyCopy toXPCObject:reply];

  v10 = xpc_copy_description(reply);
  v11 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = clientCopy;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending reply to %@: %s", &v12, 0x16u);
  }

  free(v10);
  xpc_remote_connection_send_message();
}

- (CBDRemoteXPCServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end