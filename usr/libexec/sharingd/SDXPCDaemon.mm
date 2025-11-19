@interface SDXPCDaemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (NSString)machServiceName;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (SDXPCDaemon)init;
- (void)_activate;
- (void)_invalidate;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)connectionEstablished:(id)a3;
- (void)connectionInvalidated:(id)a3;
- (void)dealloc;
- (void)enumerateRemoteObjectProxiesUsingBlock:(id)a3;
- (void)establishConnectionWithCompletionHandler:(id)a3;
- (void)onqueue_activate;
- (void)onqueue_connectionInvalidated:(id)a3;
- (void)onqueue_enumerateRemoteObjectProxiesUsingBlock:(id)a3;
- (void)onqueue_invalidate;
- (void)onqueue_remoteObjectProxyForConnection:(id)a3 usingBlock:(id)a4;
- (void)remoteObjectProxyForConnection:(id)a3 usingBlock:(id)a4;
- (void)setDispatchQueue:(id)a3;
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

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
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
    obj->_dispatchQueue = v4;

    objc_sync_exit(obj);
  }
}

- (void)enumerateRemoteObjectProxiesUsingBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10027C260;
  v7[3] = &unk_1008CE708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)onqueue_enumerateRemoteObjectProxiesUsingBlock:(id)a3
{
  v4 = a3;
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
  v5 = [(SDXPCDaemon *)self activeConnections];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v5);
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
      v4[2](v4, v10, &v12);
      v11 = v12;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }
}

- (void)remoteObjectProxyForConnection:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027C598;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)onqueue_remoteObjectProxyForConnection:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  objc_initWeak(&location, v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10027C6B4;
  v9[3] = &unk_1008D2B80;
  objc_copyWeak(&v10, &location);
  v8 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v7[2](v7, v8);

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
      v6 = [(SDXPCDaemon *)self machServiceName];
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activating %@", &v11, 0xCu);
    }

    self->_activateCalled = 1;
    v7 = [NSXPCListener alloc];
    v8 = [(SDXPCDaemon *)self machServiceName];
    v9 = [v7 initWithMachServiceName:v8];
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
    v3 = [(SDXPCDaemon *)self activeConnections];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7) invalidate];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    self->_invalidateDone = 1;
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [(SDXPCDaemon *)self shouldAcceptNewConnection:v7];
  v9 = daemon_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 sd_description];
    v11 = v10;
    v12 = "no";
    if (v8)
    {
      v12 = "yes";
    }

    *buf = 138412546;
    v23 = v10;
    v24 = 2080;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "New connection from %@ accepted %s", buf, 0x16u);
  }

  if (v8)
  {
    [v7 _setQueue:self->_dispatchQueue];
    [v7 setDelegate:self];
    [v7 setExportedObject:self];
    v13 = [(SDXPCDaemon *)self exportedInterface];
    [v7 setExportedInterface:v13];

    v14 = [(SDXPCDaemon *)self remoteObjectInterface];
    [v7 setRemoteObjectInterface:v14];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v7);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10027CD58;
    v18[3] = &unk_1008D2FE0;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, buf);
    [v7 setInvalidationHandler:v18];
    [v7 resume];
    v15 = [(SDXPCDaemon *)self activeConnections];
    v16 = [NSMutableSet setWithSet:v15];

    [v16 addObject:v7];
    [(SDXPCDaemon *)self setActiveConnections:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)onqueue_connectionInvalidated:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sd_description];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection %@ invalidated", &v9, 0xCu);
  }

  v7 = [(SDXPCDaemon *)self activeConnections];
  v8 = [v7 mutableCopy];

  [v8 removeObject:v4];
  [(SDXPCDaemon *)self setActiveConnections:v8];
  [(SDXPCDaemon *)self connectionInvalidated:v4];
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  [v8 retainArguments];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027CFA0;
  block[3] = &unk_1008CE900;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(dispatchQueue, block);
}

- (void)establishConnectionWithCompletionHandler:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v5[2](v5);

  v6 = [(SDXPCDaemon *)self currentConnection];
  v7 = daemon_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 sd_description];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "New connection established to %@", &v9, 0xCu);
  }

  [(SDXPCDaemon *)self connectionEstablished:v6];
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

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"Subclass %@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)connectionEstablished:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"Subclass %@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)connectionInvalidated:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"Subclass %@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

@end