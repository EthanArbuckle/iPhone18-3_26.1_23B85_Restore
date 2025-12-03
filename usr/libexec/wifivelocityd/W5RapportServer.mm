@interface W5RapportServer
- (BOOL)_configureCompaionLinkClient;
- (W5RapportServer)initWithRequestListeners:(id)listeners;
- (void)_registerRequestsForListener:(id)listener rapportClient:(id)client;
- (void)invalidateDiscoveryClient;
@end

@implementation W5RapportServer

- (W5RapportServer)initWithRequestListeners:(id)listeners
{
  listenersCopy = listeners;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = sub_100098A04();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v12 = 136315650;
    v13 = "[W5RapportServer initWithRequestListeners:]";
    v14 = 2080;
    v15 = "W5RapportServer.m";
    v16 = 1024;
    v17 = 43;
LABEL_16:
    _os_log_send_and_compose_impl();
    goto LABEL_17;
  }

  if ((+[W5FeatureAvailability diagnosticsModeEnabled]& 1) == 0)
  {
    v9 = sub_100098A04();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v12 = 136315650;
    v13 = "[W5RapportServer initWithRequestListeners:]";
    v14 = 2080;
    v15 = "W5RapportServer.m";
    v16 = 1024;
    v17 = 44;
    goto LABEL_16;
  }

  v11.receiver = self;
  v11.super_class = W5RapportServer;
  self = [(W5RapportServer *)&v11 init];
  if (!self)
  {
    goto LABEL_18;
  }

  v6 = dispatch_queue_create("com.apple.wifi.W5RapportServer", 0);
  queue = self->_queue;
  self->_queue = v6;

  if (!self->_queue)
  {
    goto LABEL_18;
  }

  objc_storeStrong(&self->_listeners, listeners);
  if (self->_listeners)
  {
    if ([(W5RapportServer *)self _configureCompaionLinkClient])
    {
      goto LABEL_7;
    }

    v9 = sub_100098A04();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v12 = 136315650;
    v13 = "[W5RapportServer initWithRequestListeners:]";
    v14 = 2080;
    v15 = "W5RapportServer.m";
    v16 = 1024;
    v17 = 56;
    goto LABEL_16;
  }

  v9 = sub_100098A04();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[W5RapportServer initWithRequestListeners:]";
    v14 = 2080;
    v15 = "W5RapportServer.m";
    v16 = 1024;
    v17 = 54;
    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v10 = sub_100098A04();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[W5RapportServer initWithRequestListeners:]";
    v14 = 2080;
    v15 = "W5RapportServer.m";
    v16 = 1024;
    v17 = 63;
    _os_log_send_and_compose_impl();
  }

  self = 0;
LABEL_7:

  return self;
}

- (BOOL)_configureCompaionLinkClient
{
  v3 = objc_alloc_init(RPCompanionLinkClient);
  v4 = v3;
  if (v3)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008BF78;
    v18[3] = &unk_1000E1270;
    v18[4] = self;
    [v3 setInvalidationHandler:v18];
    [v4 setDispatchQueue:self->_queue];
    [v4 setServiceType:@"com.apple.wifivelocityd.rapportWake"];
    v5 = sub_100098A04();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[W5RapportServer _configureCompaionLinkClient]";
      v22 = 2080;
      v23 = "W5RapportServer.m";
      v24 = 1024;
      v25 = 87;
      LODWORD(v13) = 28;
      v12 = &v20;
      _os_log_send_and_compose_impl();
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    listeners = [(W5RapportServer *)self listeners];
    v7 = [listeners countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(listeners);
          }

          [(W5RapportServer *)self _registerRequestsForListener:*(*(&v14 + 1) + 8 * v10) rapportClient:v4, v12, v13];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [listeners countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    [(W5RapportServer *)self setRapportClient:v4];
  }

  return v4 != 0;
}

- (void)_registerRequestsForListener:(id)listener rapportClient:(id)client
{
  listenerCopy = listener;
  clientCopy = client;
  v8 = clientCopy;
  if (!listenerCopy)
  {
    v10 = sub_100098A04();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(v15) = 0;
LABEL_13:
    _os_log_send_and_compose_impl();
    goto LABEL_14;
  }

  if (!clientCopy)
  {
    v10 = sub_100098A04();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(v15) = 0;
    goto LABEL_13;
  }

  v9 = [listenerCopy conformsToProtocol:&OBJC_PROTOCOL___W5PeerRequestListener];
  v10 = sub_100098A04();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_14;
    }

    v15 = 138543362;
    v16 = listenerCopy;
    goto LABEL_13;
  }

  if (v11)
  {
    [listenerCopy identifier];
    v15 = 138543618;
    v16 = listenerCopy;
    v18 = v17 = 2114;
    _os_log_send_and_compose_impl();
  }

  identifier = [listenerCopy identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008C2F0;
  v13[3] = &unk_1000E34B0;
  v14 = listenerCopy;
  [v8 registerRequestID:identifier options:0 handler:v13];

  [(RPCompanionLinkClient *)self->_rapportClient activateWithCompletion:&stru_1000E34D0];
  v10 = v14;
LABEL_14:
}

- (void)invalidateDiscoveryClient
{
  [(RPCompanionLinkClient *)self->_rapportClient invalidate];
  rapportClient = self->_rapportClient;
  self->_rapportClient = 0;
}

@end