@interface MessageManager
- (MessageManager)initWithDelegate:(id)a3 pipe:(id)a4;
- (MessageManagerDelegate)delegate;
- (void)dealloc;
- (void)invalidate;
- (void)readIncomingMessages;
- (void)setupReadWriteSources;
- (void)writeMessage:(unsigned __int8)a3;
- (void)writePendingMessages;
@end

@implementation MessageManager

- (MessageManager)initWithDelegate:(id)a3 pipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MessageManager;
  v8 = [(MessageManager *)&v11 init];
  if (v8)
  {
    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MessageManager --- Initializing (%p); pipe: (%@)", buf, 0x16u);
    }

    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v8->_pipe, a4);
    v8->_socket = sub_10000AA94(v8->_pipe);
    [(MessageManager *)v8 setupReadWriteSources];
  }

  return v8;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(MessageManager *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = MessageManager;
  [(MessageManager *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MessageManager --- Invalidating (%p)", &v9, 0xCu);
    }

    self->_invalidated = 1;
    objc_storeWeak(&self->_delegate, 0);
    readSource = self->_readSource;
    if (readSource)
    {
      dispatch_source_cancel(readSource);
      dispatch_source_set_event_handler(self->_readSource, 0);
      v5 = self->_readSource;
      self->_readSource = 0;
    }

    writeSource = self->_writeSource;
    if (writeSource)
    {
      dispatch_source_cancel(writeSource);
      dispatch_source_set_event_handler(self->_writeSource, 0);
      if (self->_writeSourceIsSuspended)
      {
        dispatch_resume(self->_writeSource);
        self->_writeSourceIsSuspended = 0;
      }

      v7 = self->_writeSource;
      self->_writeSource = 0;
    }

    pipe = self->_pipe;
    self->_pipe = 0;
  }
}

- (void)setupReadWriteSources
{
  socket = self->_socket;
  if (socket == -1)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MessageManager --- Socket is invalid", buf, 2u);
    }
  }

  else
  {
    v4 = +[MagicSwitchEnabler sharedInstance];
    v5 = [v4 workQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_read, socket, 0, v5);

    if (v6)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000B1F8;
      handler[3] = &unk_100018538;
      handler[4] = self;
      dispatch_source_set_event_handler(v6, handler);
      dispatch_activate(v6);
      objc_storeStrong(&self->_readSource, v6);
      v7 = self->_socket;
      v8 = +[MagicSwitchEnabler sharedInstance];
      v9 = [v8 workQueue];
      v10 = dispatch_source_create(&_dispatch_source_type_write, v7, 0, v9);

      if (v10)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000B20C;
        v14[3] = &unk_100018538;
        v14[4] = self;
        dispatch_source_set_event_handler(v10, v14);
        dispatch_suspend(v10);
        self->_writeSourceIsSuspended = 1;
        dispatch_activate(v10);
        objc_storeStrong(&self->_writeSource, v10);
      }

      else
      {
        v13 = qword_100021420;
        if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MessageManager --- Failed to create socket write source", buf, 2u);
        }

        [(MessageManager *)self invalidate];
      }
    }

    else
    {
      v12 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MessageManager --- Failed to create socket read source", buf, 2u);
      }

      [(MessageManager *)self invalidate];
    }
  }
}

- (void)readIncomingMessages
{
  if (self->_invalidated)
  {
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidated", buf, 2u);
    }
  }

  *&v2 = 67109376;
  v15 = v2;
  while (1)
  {
    v16 = 0;
    v5 = read(self->_socket, &v16, 1uLL);
    v6 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      socket = self->_socket;
      *buf = v15;
      v18 = socket;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MessageManager --- Read from socket (%d) returned: (%zd)", buf, 0x12u);
    }

    if (v5 <= 0)
    {
      break;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained watchDidChangeWristState:v16];
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_socket;
      *buf = 67109120;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MessageManager --- Read EOF from socket: (%d)", buf, 8u);
    }

LABEL_12:
    [(MessageManager *)self invalidate];
    return;
  }

  if (*__error() && *__error() != 35)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_socket;
      v13 = v11;
      v14 = *__error();
      *buf = v15;
      v18 = v12;
      v19 = 1024;
      LODWORD(v20) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MessageManager --- Error occured while reading from socket (%d): (%d)", buf, 0xEu);
    }

    goto LABEL_12;
  }
}

- (void)writeMessage:(unsigned __int8)a3
{
  __buf = a3;
  if (self->_invalidated)
  {
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidated", buf, 2u);
    }
  }

  v5 = write(self->_socket, &__buf, 1uLL);
  v6 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    socket = self->_socket;
    *buf = 67109376;
    v14 = socket;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MessageManager --- Write to socket (%d) returned: (%zd)", buf, 0x12u);
  }

  if (v5 < 1)
  {
    if (v5 == -1)
    {
      v8 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_socket;
        v10 = v8;
        v11 = *__error();
        *buf = 67109376;
        v14 = v9;
        v15 = 1024;
        LODWORD(v16) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MessageManager --- Write to socket (%d) failed: (%d)", buf, 0xEu);
      }

      if (*__error() == 35)
      {
        self->_pendingOutgoingWristState = __buf;
        self->_hasPendingOutgoingMessage = 1;
        if (self->_writeSourceIsSuspended)
        {
          dispatch_resume(self->_writeSource);
          self->_writeSourceIsSuspended = 0;
        }
      }

      else
      {
        [(MessageManager *)self invalidate];
      }
    }
  }

  else
  {
    self->_hasPendingOutgoingMessage = 0;
  }
}

- (void)writePendingMessages
{
  if (!self->_hasPendingOutgoingMessage && !self->_writeSourceIsSuspended)
  {
    dispatch_suspend(self->_writeSource);
    self->_writeSourceIsSuspended = 1;
  }
}

- (MessageManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end