@interface CBDRemoteXPCServiceServer
- (CBDRemoteXPCServiceServer)initWithAllowedMessageClasses:(id)a3;
- (CBDRemoteXPCServiceServerDelegate)delegate;
- (void)_dispatchReceivedMessage:(id)a3 event:(id)a4 client:(id)a5;
- (void)_handleError:(id)a3;
- (void)_handleEvent:(id)a3;
- (void)_sendReply:(id)a3 event:(id)a4 client:(id)a5;
- (void)invalidate;
- (void)resume;
@end

@implementation CBDRemoteXPCServiceServer

- (CBDRemoteXPCServiceServer)initWithAllowedMessageClasses:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CBDRemoteXPCServiceServer;
  v6 = [(CBDRemoteXPCServiceServer *)&v14 init];
  v7 = v6;
  if (v6)
  {
    listener = v6->_listener;
    v6->_listener = 0;

    objc_storeStrong(&v7->_allowedClasses, a3);
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
  v5 = [(CBDRemoteXPCServiceServer *)self listener];

  if (!v5)
  {
    v6 = [(CBDRemoteXPCServiceServer *)self serviceQueue];
    remote_service_listener = xpc_remote_connection_create_remote_service_listener();
    [(CBDRemoteXPCServiceServer *)self setListener:remote_service_listener];

    v8 = [(CBDRemoteXPCServiceServer *)self listener];
    xpc_remote_connection_set_event_handler();

    v9 = [(CBDRemoteXPCServiceServer *)self listener];
    xpc_remote_connection_set_local_service_version();

    v10 = [(CBDRemoteXPCServiceServer *)self listener];
    xpc_remote_connection_activate();
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)invalidate
{
  v3 = [(CBDRemoteXPCServiceServer *)self listener];

  if (v3)
  {

    [(CBDRemoteXPCServiceServer *)self setListener:0];
  }
}

- (void)_handleError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == &_xpc_error_connection_invalid)
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100007200();
    }

    v9 = [(CBDRemoteXPCServiceServer *)self invalidationHandler];

    if (v9)
    {
      v10 = [(CBDRemoteXPCServiceServer *)self invalidationHandler];
LABEL_14:
      v13 = v10;
      (*(v10 + 16))();
    }
  }

  else
  {
    if (v4 != &_xpc_error_connection_interrupted)
    {
      v6 = xpc_copy_description(v4);
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

    v12 = [(CBDRemoteXPCServiceServer *)self interruptionHandler];

    if (v12)
    {
      v10 = [(CBDRemoteXPCServiceServer *)self interruptionHandler];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to decode XPC object...", buf, 2u);
  }

  v7 = [(CBDRemoteXPCServiceServer *)self allowedClasses];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003210;
  v8[3] = &unk_100010488;
  v9 = v5;
  v10 = self;
  v11 = v4;
  [NSKeyedUnarchiver unarchiveObjectFromXPCObject:v11 allowedClasses:v7 completion:v8];
}

- (void)_dispatchReceivedMessage:(id)a3 event:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CBDRemoteXPCServiceServer *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CBDRemoteXPCServiceServer *)self messageQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003494;
    v15[3] = &unk_1000104D8;
    v16 = v8;
    v17 = self;
    v18 = v9;
    v19 = v10;
    dispatch_async(v13, v15);

    v14 = v16;
  }

  else
  {
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000072F4(v8, self);
    }
  }
}

- (void)_sendReply:(id)a3 event:(id)a4 client:(id)a5
{
  v7 = a5;
  v8 = a3;
  reply = xpc_dictionary_create_reply(a4);
  [NSKeyedArchiver archiveObject:v8 toXPCObject:reply];

  v10 = xpc_copy_description(reply);
  v11 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v7;
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