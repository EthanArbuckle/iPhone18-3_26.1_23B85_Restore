@interface _NSDNXPCConnection
- (NSString)serviceName;
- (_NSDNXPCConnection)initWithEndpoint:(id)a3;
- (_NSDNXPCConnection)initWithServiceName:(id)a3 privileged:(BOOL)a4;
- (_NSDNXPCConnection)initWithXPCConnection:(id)a3 type:(int)a4;
- (id)__invalidate;
- (id)handleMessage;
- (void)__terminationImminent;
- (void)addInvalidationHandler:(id)a3;
- (void)addTerminationImminentHandler:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)sendMessage:(id)a3;
- (void)sendMessage:(id)a3 waitForAck:(BOOL)a4;
- (void)setHandleMessage:(id)a3;
- (void)start:(id)a3;
@end

@implementation _NSDNXPCConnection

- (id)__invalidate
{
  handleMessage = self->_handleMessage;
  invalidHandlers = self->_invalidHandlers;
  self->_handleMessage = 0;
  self->_invalidHandlers = 0;

  return invalidHandlers;
}

- (void)invalidate
{
  invalid = self->_invalid;
  self->_invalid = invalid + 1;
  if (invalid)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_invalidHandlers copy];

    self->_invalidHandlers = 0;
    conn = self->_conn;
    if (conn)
    {
      xpc_connection_cancel(conn);
      started = self->_started;
      self->_started = started + 1;
      if (!started)
      {
        xpc_connection_activate(self->_conn);
      }
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v11 + 1) + 8 * i) + 16))();
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  conn = self->_conn;
  if (conn)
  {
    xpc_release(conn);
  }

  v4.receiver = self;
  v4.super_class = _NSDNXPCConnection;
  [(_NSDNXPCConnection *)&v4 dealloc];
}

- (_NSDNXPCConnection)initWithXPCConnection:(id)a3 type:(int)a4
{
  v4 = self;
  if (a3)
  {
    self->_invalidHandlers = objc_opt_new();
    v4->_termImminentHandlers = objc_opt_new();
    v4->_flavor = a4;
    v7 = xpc_retain(a3);
    v4->_conn = v7;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001004;
    handler[3] = &unk_100008650;
    handler[4] = v7;
    handler[5] = v4;
    v11 = a4;
    xpc_connection_set_event_handler(v7, handler);
    v8 = v4;
  }

  else
  {

    return 0;
  }

  return v4;
}

- (_NSDNXPCConnection)initWithServiceName:(id)a3 privileged:(BOOL)a4
{
  if (a3)
  {
    v5 = a4;
    maxBufLen = 0;
    v14.length = CFStringGetLength(a3);
    v14.location = 0;
    CFStringGetBytes(a3, v14, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v7 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
    v15.length = CFStringGetLength(a3);
    v15.location = 0;
    CFStringGetBytes(a3, v15, 0x8000100u, 0, 0, v7, maxBufLen, 0);
    v7[maxBufLen] = 0;
    if (v5)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    mach_service = xpc_connection_create_mach_service(v7, 0, v8);
    v10 = [(_NSDNXPCConnection *)self initWithXPCConnection:mach_service type:4];
    if (mach_service)
    {
      xpc_release(mach_service);
    }

    free(v7);
    return v10;
  }

  else
  {

    return [_NSDNXPCConnection initWithXPCConnection:"initWithXPCConnection:type:" type:?];
  }
}

- (_NSDNXPCConnection)initWithEndpoint:(id)a3
{
  v4 = xpc_connection_create_from_endpoint(a3);
  v5 = [(_NSDNXPCConnection *)self initWithXPCConnection:v4 type:4];
  xpc_release(v4);
  return v5;
}

- (NSString)serviceName
{
  v2 = self->_serviceName;

  return v2;
}

- (id)handleMessage
{
  v2 = self->_handleMessage;

  return v2;
}

- (void)setHandleMessage:(id)a3
{
  if (self->_started || self->_invalid)
  {
    __break(1u);
  }

  else
  {
    v4 = [a3 copy];
    handleMessage = self->_handleMessage;
    self->_handleMessage = v4;
  }

  _objc_release_x1();
}

- (void)__terminationImminent
{
  termImminentHandlers = self->_termImminentHandlers;
  self->_termImminentHandlers = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMutableArray *)termImminentHandlers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(termImminentHandlers);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)termImminentHandlers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)addInvalidationHandler:(id)a3
{
  v5 = [a3 copy];
  invalidHandlers = self->_invalidHandlers;
  v7 = v5;
  [(NSMutableArray *)invalidHandlers addObject:?];
  if (!invalidHandlers)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)addTerminationImminentHandler:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableArray *)self->_termImminentHandlers addObject:v4];
}

- (void)start:(id)a3
{
  if (!self->_invalid)
  {
    started = self->_started;
    self->_started = started + 1;
    if (!started)
    {
      if (a3)
      {
        xpc_connection_set_target_queue(self->_conn, a3);
      }

      conn = self->_conn;

      xpc_connection_activate(conn);
    }
  }
}

- (void)sendMessage:(id)a3
{
  if (a3 && xpc_get_type(a3) == &_xpc_type_dictionary)
  {
    v4 = self;
    v5 = self;
    if (self->_conn)
    {
      xpc_transaction_begin();
      xpc_connection_send_message(self->_conn, a3);
      xpc_connection_send_barrier(self->_conn, &stru_100008628);
      v5 = self;
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)sendMessage:(id)a3 waitForAck:(BOOL)a4
{
  if (a3 && (v4 = a4, xpc_get_type(a3) == &_xpc_type_dictionary))
  {
    xpc_dictionary_set_BOOL(a3, "com.apple.NSXPC.msg_needs_ack", 1);
    v6 = self;
    conn = self->_conn;
    if (conn)
    {
      xpc_retain(self->_conn);
      xpc_transaction_begin();
      if (v4)
      {
        v8 = xpc_connection_send_message_with_reply_sync(conn, a3);
        if (v8)
        {
          xpc_release(v8);
        }
      }

      else
      {
        xpc_connection_send_message(conn, a3);
      }

      xpc_transaction_end();
      xpc_release(conn);
    }

    xpc_dictionary_set_value(a3, "com.apple.NSXPC.msg_needs_ack", 0);
  }

  else
  {
    __break(1u);
  }
}

@end