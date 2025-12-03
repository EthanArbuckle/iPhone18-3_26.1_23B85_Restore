@interface SDXPCDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (NSString)machServiceName;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (SDXPCDaemon)init;
- (void)_activate;
- (void)_invalidate;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)dealloc;
- (void)enumerateRemoteObjectProxiesUsingBlock:(id)block;
- (void)establishConnectionWithCompletionHandler:(id)handler;
- (void)onqueue_activate;
- (void)onqueue_connectionInvalidated:(id)invalidated;
- (void)onqueue_enumerateRemoteObjectProxiesUsingBlock:(id)block;
- (void)onqueue_invalidate;
- (void)onqueue_remoteObjectProxyForConnection:(id)connection usingBlock:(id)block;
- (void)remoteObjectProxyForConnection:(id)connection usingBlock:(id)block;
- (void)setDispatchQueue:(id)queue;
@end

@implementation SDXPCDaemon

- (SDXPCDaemon)init
{
  v6.receiver = self;
  v6.super_class = SDXPCDaemon;
  v2 = [(SDXPCDaemon *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if ([(NSSet *)self->_activeConnections count])
  {
    v4 = sub_10027D5C4();
    [(SDXPCDaemon *)v4 setDispatchQueue:v5, v6];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    v7.receiver = self;
    v7.super_class = SDXPCDaemon;
    [(SDXPCDaemon *)&v7 dealloc];
  }
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)enumerateRemoteObjectProxiesUsingBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10027C260;
  v7[3] = &unk_1008CE708;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)onqueue_enumerateRemoteObjectProxiesUsingBlock:(id)block
{
  blockCopy = block;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_activateCalled)
  {
    sub_10027D5DC();
    __break(1u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  activeConnections = [(SDXPCDaemon *)self activeConnections];
  v6 = [activeConnections countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(activeConnections);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      objc_initWeak(&location, v9);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10027C470;
      v13[3] = &unk_1008D2B80;
      objc_copyWeak(&v14, &location);
      v10 = [v9 remoteObjectProxyWithErrorHandler:v13];
      v12 = 0;
      blockCopy[2](blockCopy, v10, &v12);
      v11 = v12;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [activeConnections countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }
}

- (void)remoteObjectProxyForConnection:(id)connection usingBlock:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027C598;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v12 = connectionCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = connectionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)onqueue_remoteObjectProxyForConnection:(id)connection usingBlock:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  objc_initWeak(&location, connectionCopy);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10027C6B4;
  v9[3] = &unk_1008D2B80;
  objc_copyWeak(&v10, &location);
  v8 = [connectionCopy remoteObjectProxyWithErrorHandler:v9];
  blockCopy[2](blockCopy, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027C79C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)onqueue_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  activateCalled = self->_activateCalled;
  v4 = daemon_log();
  v5 = v4;
  if (activateCalled)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10027D694(v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      machServiceName = [(SDXPCDaemon *)self machServiceName];
      v11 = 138412290;
      v12 = machServiceName;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activating %@", &v11, 0xCu);
    }

    self->_activateCalled = 1;
    v7 = [NSXPCListener alloc];
    machServiceName2 = [(SDXPCDaemon *)self machServiceName];
    v9 = [v7 initWithMachServiceName:machServiceName2];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v9;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }
}

- (void)_invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027C96C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)onqueue_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    [(NSXPCListener *)self->_xpcListener invalidate];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    activeConnections = [(SDXPCDaemon *)self activeConnections];
    v4 = [activeConnections countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(activeConnections);
          }

          [*(*(&v8 + 1) + 8 * v7) invalidate];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [activeConnections countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    self->_invalidateDone = 1;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [(SDXPCDaemon *)self shouldAcceptNewConnection:connectionCopy];
  v9 = daemon_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [connectionCopy sd_description];
    v11 = sd_description;
    v12 = "no";
    if (v8)
    {
      v12 = "yes";
    }

    *buf = 138412546;
    v23 = sd_description;
    v24 = 2080;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "New connection from %@ accepted %s", buf, 0x16u);
  }

  if (v8)
  {
    [connectionCopy _setQueue:self->_dispatchQueue];
    [connectionCopy setDelegate:self];
    [connectionCopy setExportedObject:self];
    exportedInterface = [(SDXPCDaemon *)self exportedInterface];
    [connectionCopy setExportedInterface:exportedInterface];

    remoteObjectInterface = [(SDXPCDaemon *)self remoteObjectInterface];
    [connectionCopy setRemoteObjectInterface:remoteObjectInterface];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10027CD58;
    v18[3] = &unk_1008D2FE0;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, buf);
    [connectionCopy setInvalidationHandler:v18];
    [connectionCopy resume];
    activeConnections = [(SDXPCDaemon *)self activeConnections];
    v16 = [NSMutableSet setWithSet:activeConnections];

    [v16 addObject:connectionCopy];
    [(SDXPCDaemon *)self setActiveConnections:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)onqueue_connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [invalidatedCopy sd_description];
    v9 = 138412290;
    v10 = sd_description;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection %@ invalidated", &v9, 0xCu);
  }

  activeConnections = [(SDXPCDaemon *)self activeConnections];
  v8 = [activeConnections mutableCopy];

  [v8 removeObject:invalidatedCopy];
  [(SDXPCDaemon *)self setActiveConnections:v8];
  [(SDXPCDaemon *)self connectionInvalidated:invalidatedCopy];
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  connectionCopy = connection;
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027CFA0;
  block[3] = &unk_1008CE900;
  v13 = connectionCopy;
  selfCopy = self;
  v15 = invocationCopy;
  v10 = invocationCopy;
  v11 = connectionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)establishConnectionWithCompletionHandler:(id)handler
{
  dispatchQueue = self->_dispatchQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(dispatchQueue);
  handlerCopy[2](handlerCopy);

  currentConnection = [(SDXPCDaemon *)self currentConnection];
  v7 = daemon_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [currentConnection sd_description];
    v9 = 138412290;
    v10 = sd_description;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "New connection established to %@", &v9, 0xCu);
  }

  [(SDXPCDaemon *)self connectionEstablished:currentConnection];
}

- (NSString)machServiceName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"Subclass %@ must override %@", v4, v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (NSXPCInterface)exportedInterface
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"Subclass %@ must override %@", v4, v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (NSXPCInterface)remoteObjectInterface
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"Subclass %@ must override %@", v4, v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"Subclass %@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)connectionEstablished:(id)established
{
  establishedCopy = established;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"Subclass %@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"Subclass %@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

@end