@interface WCDPKClient
- (BOOL)isEqual:(id)equal;
- (BOOL)isRunning;
- (NSString)description;
- (WCDPKClient)initWithBundleID:(id)d;
- (WCDPKClientDelegate)delegate;
- (id)remoteObjectProxy;
- (unint64_t)hash;
- (void)complicationRegister;
- (void)complicationUnregister;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)dealloc;
- (void)deliverPayload:(id)payload;
- (void)deliverPendingItems;
- (void)deliverToken:(id)token;
- (void)setConnection:(id)connection;
- (void)setupBundleIDMonitoring;
- (void)systemObserverAppDidSuspendForBundleID:(id)d;
@end

@implementation WCDPKClient

- (WCDPKClient)initWithBundleID:(id)d
{
  dCopy = d;
  v5 = [(WCDPKClient *)self init];
  v6 = v5;
  if (v5)
  {
    [(WCDPKClient *)v5 setBundleID:dCopy];
    v7 = objc_opt_new();
    [(WCDPKClient *)v6 setPendingPayloads:v7];

    [(WCDPKClient *)v6 setupBundleIDMonitoring];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  bundleID = [(WCDPKClient *)self bundleID];
  [v3 stopMonitoringBundleID:bundleID];

  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  [v5 removeObserver:self];

  assertion = [(WCDPKClient *)self assertion];
  [assertion invalidate];
  assertionInvalidationHandler = [(WCDPKClient *)self assertionInvalidationHandler];
  v8 = assertionInvalidationHandler;
  if (assertion && assertionInvalidationHandler)
  {
    (*(assertionInvalidationHandler + 16))(assertionInvalidationHandler, assertion, 0);
  }

  v9.receiver = self;
  v9.super_class = WCDPKClient;
  [(WCDPKClient *)&v9 dealloc];
}

- (void)setupBundleIDMonitoring
{
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  bundleID = [(WCDPKClient *)self bundleID];
  [v4 startMonitoringBundleID:bundleID];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  bundleID = [(WCDPKClient *)self bundleID];
  if ([(WCDPKClient *)self isProductionEnvironment])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  connection = [(WCDPKClient *)self connection];
  token = [(WCDPKClient *)self token];
  pendingPayloads = [(WCDPKClient *)self pendingPayloads];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p bundleID: %@, production: %s, connection: %@, token: %@, pendingPayloadCount: %lu>", v4, self, bundleID, v6, connection, token, [pendingPayloads count]);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleID = [(WCDPKClient *)self bundleID];
      bundleID2 = [(WCDPKClient *)v5 bundleID];
      if ([bundleID isEqual:bundleID2])
      {
        connection = [(WCDPKClient *)self connection];
        connection2 = [(WCDPKClient *)v5 connection];
        v10 = [connection isEqual:connection2];
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
  bundleID = [(WCDPKClient *)self bundleID];
  v4 = [bundleID hash];
  connection = [(WCDPKClient *)self connection];
  v6 = [connection hash];

  return v6 ^ v4;
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  p_connection = &self->_connection;
  if (([(NSXPCConnection *)self->_connection isEqual:connectionCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_connection, connection);
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
  bundleID = [(WCDPKClient *)self bundleID];
  v5 = [v3 applicationStateForBundleID:bundleID];

  return (v5 < 0x21) & (0x100000110uLL >> v5);
}

- (void)systemObserverAppDidSuspendForBundleID:(id)d
{
  dCopy = d;
  bundleID = [(WCDPKClient *)self bundleID];
  v6 = [dCopy isEqual:bundleID];

  if (v6)
  {
    v7 = wc_pushkit_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: invalidating connection", &v9, 0xCu);
    }

    connection = [(WCDPKClient *)self connection];
    [connection invalidate];
  }
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C7C4;
  block[3] = &unk_100048A48;
  v8 = invocationCopy;
  v6 = invocationCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)deliverPendingItems
{
  token = [(WCDPKClient *)self token];

  if (token)
  {
    token2 = [(WCDPKClient *)self token];
    [(WCDPKClient *)self deliverToken:token2];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  pendingPayloads = [(WCDPKClient *)self pendingPayloads];
  v6 = [pendingPayloads countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(pendingPayloads);
        }

        [(WCDPKClient *)self deliverPayload:*(*(&v11 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [pendingPayloads countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  pendingPayloads2 = [(WCDPKClient *)self pendingPayloads];
  [pendingPayloads2 removeAllObjects];
}

- (void)deliverToken:(id)token
{
  tokenCopy = token;
  [(WCDPKClient *)self setToken:tokenCopy];
  connection = [(WCDPKClient *)self connection];

  remoteObjectProxy = wc_pushkit_log();
  v7 = os_log_type_enabled(remoteObjectProxy, OS_LOG_TYPE_DEFAULT);
  if (connection)
  {
    if (v7)
    {
      bundleID = [(WCDPKClient *)self bundleID];
      v10 = 138543618;
      v11 = bundleID;
      v12 = 2114;
      v13 = tokenCopy;
      _os_log_impl(&_mh_execute_header, remoteObjectProxy, OS_LOG_TYPE_DEFAULT, "%{public}@: delivering token %{public}@", &v10, 0x16u);
    }

    remoteObjectProxy = [(WCDPKClient *)self remoteObjectProxy];
    [remoteObjectProxy complicationRegistrationSucceededWithDeviceToken:tokenCopy];
  }

  else if (v7)
  {
    bundleID2 = [(WCDPKClient *)self bundleID];
    v10 = 138543362;
    v11 = bundleID2;
    _os_log_impl(&_mh_execute_header, remoteObjectProxy, OS_LOG_TYPE_DEFAULT, "%{public}@: pending until a connection exists", &v10, 0xCu);
  }
}

- (void)deliverPayload:(id)payload
{
  payloadCopy = payload;
  connection = [(WCDPKClient *)self connection];

  v6 = wc_pushkit_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (connection)
  {
    if (v7)
    {
      bundleID = [(WCDPKClient *)self bundleID];
      v11 = 138543618;
      v12 = bundleID;
      v13 = 2048;
      v14 = payloadCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: delivering payload %p", &v11, 0x16u);
    }

    remoteObjectProxy = [(WCDPKClient *)self remoteObjectProxy];
    [remoteObjectProxy complicationPayloadReceived:payloadCopy];
  }

  else
  {
    if (v7)
    {
      bundleID2 = [(WCDPKClient *)self bundleID];
      v11 = 138543362;
      v12 = bundleID2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: pending until a connection exists", &v11, 0xCu);
    }

    remoteObjectProxy = [(WCDPKClient *)self pendingPayloads];
    [remoteObjectProxy addObject:payloadCopy];
  }
}

- (void)complicationRegister
{
  delegate = [(WCDPKClient *)self delegate];
  [delegate clientRequestingComplicationRegister:self];
}

- (void)complicationUnregister
{
  delegate = [(WCDPKClient *)self delegate];
  [delegate clientRequestingComplicationUnregister:self];
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