@interface WCDPKClient
- (BOOL)isEqual:(id)a3;
- (BOOL)isRunning;
- (NSString)description;
- (WCDPKClient)initWithBundleID:(id)a3;
- (WCDPKClientDelegate)delegate;
- (id)remoteObjectProxy;
- (unint64_t)hash;
- (void)complicationRegister;
- (void)complicationUnregister;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)dealloc;
- (void)deliverPayload:(id)a3;
- (void)deliverPendingItems;
- (void)deliverToken:(id)a3;
- (void)setConnection:(id)a3;
- (void)setupBundleIDMonitoring;
- (void)systemObserverAppDidSuspendForBundleID:(id)a3;
@end

@implementation WCDPKClient

- (WCDPKClient)initWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(WCDPKClient *)self init];
  v6 = v5;
  if (v5)
  {
    [(WCDPKClient *)v5 setBundleID:v4];
    v7 = objc_opt_new();
    [(WCDPKClient *)v6 setPendingPayloads:v7];

    [(WCDPKClient *)v6 setupBundleIDMonitoring];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [(WCDPKClient *)self bundleID];
  [v3 stopMonitoringBundleID:v4];

  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  [v5 removeObserver:self];

  v6 = [(WCDPKClient *)self assertion];
  [v6 invalidate];
  v7 = [(WCDPKClient *)self assertionInvalidationHandler];
  v8 = v7;
  if (v6 && v7)
  {
    (*(v7 + 16))(v7, v6, 0);
  }

  v9.receiver = self;
  v9.super_class = WCDPKClient;
  [(WCDPKClient *)&v9 dealloc];
}

- (void)setupBundleIDMonitoring
{
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  v3 = [(WCDPKClient *)self bundleID];
  [v4 startMonitoringBundleID:v3];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(WCDPKClient *)self bundleID];
  if ([(WCDPKClient *)self isProductionEnvironment])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = [(WCDPKClient *)self connection];
  v8 = [(WCDPKClient *)self token];
  v9 = [(WCDPKClient *)self pendingPayloads];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p bundleID: %@, production: %s, connection: %@, token: %@, pendingPayloadCount: %lu>", v4, self, v5, v6, v7, v8, [v9 count]);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCDPKClient *)self bundleID];
      v7 = [(WCDPKClient *)v5 bundleID];
      if ([v6 isEqual:v7])
      {
        v8 = [(WCDPKClient *)self connection];
        v9 = [(WCDPKClient *)v5 connection];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(WCDPKClient *)self bundleID];
  v4 = [v3 hash];
  v5 = [(WCDPKClient *)self connection];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  p_connection = &self->_connection;
  if (([(NSXPCConnection *)self->_connection isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_connection, a3);
    [(NSXPCConnection *)self->_connection setDelegate:self];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PKComplicationXPCServer];
    [(NSXPCConnection *)self->_connection setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PKComplicationXPCClient];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v8];

    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001C2EC;
    v11[3] = &unk_100048B78;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v11];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001C3F4;
    v9[3] = &unk_100048B78;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)*p_connection setInvalidationHandler:v9];
    [(NSXPCConnection *)*p_connection resume];
    [(WCDPKClient *)self deliverPendingItems];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (BOOL)isRunning
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [(WCDPKClient *)self bundleID];
  v5 = [v3 applicationStateForBundleID:v4];

  return (v5 < 0x21) & (0x100000110uLL >> v5);
}

- (void)systemObserverAppDidSuspendForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(WCDPKClient *)self bundleID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = wc_pushkit_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: invalidating connection", &v9, 0xCu);
    }

    v8 = [(WCDPKClient *)self connection];
    [v8 invalidate];
  }
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a4;
  [v5 retainArguments];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C7C4;
  block[3] = &unk_100048A48;
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)deliverPendingItems
{
  v3 = [(WCDPKClient *)self token];

  if (v3)
  {
    v4 = [(WCDPKClient *)self token];
    [(WCDPKClient *)self deliverToken:v4];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(WCDPKClient *)self pendingPayloads];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WCDPKClient *)self deliverPayload:*(*(&v11 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(WCDPKClient *)self pendingPayloads];
  [v10 removeAllObjects];
}

- (void)deliverToken:(id)a3
{
  v4 = a3;
  [(WCDPKClient *)self setToken:v4];
  v5 = [(WCDPKClient *)self connection];

  v6 = wc_pushkit_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(WCDPKClient *)self bundleID];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: delivering token %{public}@", &v10, 0x16u);
    }

    v6 = [(WCDPKClient *)self remoteObjectProxy];
    [v6 complicationRegistrationSucceededWithDeviceToken:v4];
  }

  else if (v7)
  {
    v9 = [(WCDPKClient *)self bundleID];
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: pending until a connection exists", &v10, 0xCu);
  }
}

- (void)deliverPayload:(id)a3
{
  v4 = a3;
  v5 = [(WCDPKClient *)self connection];

  v6 = wc_pushkit_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(WCDPKClient *)self bundleID];
      v11 = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: delivering payload %p", &v11, 0x16u);
    }

    v9 = [(WCDPKClient *)self remoteObjectProxy];
    [v9 complicationPayloadReceived:v4];
  }

  else
  {
    if (v7)
    {
      v10 = [(WCDPKClient *)self bundleID];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: pending until a connection exists", &v11, 0xCu);
    }

    v9 = [(WCDPKClient *)self pendingPayloads];
    [v9 addObject:v4];
  }
}

- (void)complicationRegister
{
  v3 = [(WCDPKClient *)self delegate];
  [v3 clientRequestingComplicationRegister:self];
}

- (void)complicationUnregister
{
  v3 = [(WCDPKClient *)self delegate];
  [v3 clientRequestingComplicationUnregister:self];
}

- (id)remoteObjectProxy
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001CD18;
  v5[3] = &unk_100048C68;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

- (WCDPKClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end