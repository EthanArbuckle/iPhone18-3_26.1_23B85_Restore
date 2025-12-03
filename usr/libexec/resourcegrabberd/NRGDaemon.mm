@interface NRGDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NRGDaemon)init;
- (void)dealloc;
- (void)handleRequest:(id)request;
- (void)handleResponse:(id)response;
- (void)initIDS;
- (void)purgeCache;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)start;
@end

@implementation NRGDaemon

- (NRGDaemon)init
{
  v12.receiver = self;
  v12.super_class = NRGDaemon;
  v2 = [(NRGDaemon *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(_NRGRequestDictionary);
    requestDictionary = v2->_requestDictionary;
    v2->_requestDictionary = v3;

    v2->_requestErrorHandlerLock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(NSMutableDictionary);
    requestErrorHandlerDictionary = v2->_requestErrorHandlerDictionary;
    v2->_requestErrorHandlerDictionary = v5;

    objc_initWeak(&location, v2);
    objc_copyWeak(&v10, &location);
    CacheDeleteRegisterCallback();
    v7 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v7;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:5, _NSConcreteStackBlock, 3221225472, sub_10000F1F8, &unk_100020AF0];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  [(NSXPCListener *)self->_xpcListener setDelegate:0];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  xpcClients = [(NRGDaemon *)self xpcClients];
  v5 = [xpcClients countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(xpcClients);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        connection = [v9 connection];

        if (connection)
        {
          connection2 = [v9 connection];
          [connection2 invalidate];
        }
      }

      v6 = [xpcClients countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12.receiver = self;
  v12.super_class = NRGDaemon;
  [(NRGDaemon *)&v12 dealloc];
}

- (void)purgeCache
{
  v2 = NRGGetActivePairedDeviceStorePath();
  if (v2)
  {
    [NRGResourceCache invalidatePairedDevice:v2];
  }

  _objc_release_x1();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    sub_100011AC4();
  }

  v8 = connectionCopy;
  v9 = [connectionCopy valueForEntitlement:@"com.apple.nano.nanoresourcegrabber"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v9 BOOLValue] & 1) != 0)
  {
    v31 = listenerCopy;
    [v8 setExportedObject:self];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoResourceGrabberIDSXPC];
    [v8 setExportedInterface:v10];

    [v8 resume];
    v11 = +[NSMutableIndexSet indexSet];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    xpcClients = [(NRGDaemon *)self xpcClients];
    v13 = [xpcClients countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(xpcClients);
          }

          connection = [*(*(&v32 + 1) + 8 * i) connection];

          if (!connection)
          {
            [v11 addIndex:v15];
          }

          ++v15;
        }

        v14 = [xpcClients countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    xpcClients2 = [(NRGDaemon *)self xpcClients];
    [xpcClients2 removeObjectsAtIndexes:v11];

    v20 = [[NanoResourceGrabberNanoAgent alloc] initWithConnection:v8];
    xpcClients3 = [(NRGDaemon *)self xpcClients];
    [xpcClients3 addObject:v20];

    v22 = 1;
    listenerCopy = v31;
  }

  else
  {
    v11 = nrg_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100011A4C(v11, v23, v24, v25, v26, v27, v28, v29);
    }

    v22 = 0;
  }

  return v22;
}

- (void)start
{
  [(NRGDaemon *)self initIDS];
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nano.nanoresourcegrabber"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  v5 = self->_xpcListener;

  [(NSXPCListener *)v5 resume];
}

- (void)initIDS
{
  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.resourcegrabber"];
  idsService = self->_idsService;
  self->_idsService = v3;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  protobufRequestHandlers = [(NRGDaemon *)self protobufRequestHandlers];
  keyEnumerator = [protobufRequestHandlers keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = nrg_daemon_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "adding handler for requestType %@", buf, 0xCu);
        }

        -[IDSService setProtobufAction:forIncomingRequestsOfType:](self->_idsService, "setProtobufAction:forIncomingRequestsOfType:", "handleRequest:", [v11 integerValue]);
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  protobufResponseHandlers = [(NRGDaemon *)self protobufResponseHandlers];
  keyEnumerator2 = [protobufResponseHandlers keyEnumerator];

  v15 = [keyEnumerator2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        v20 = nrg_daemon_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "adding handler for responseType %@", buf, 0xCu);
        }

        -[IDSService setProtobufAction:forIncomingResponsesOfType:](self->_idsService, "setProtobufAction:forIncomingResponsesOfType:", "handleResponse:", [v19 integerValue]);
      }

      v16 = [keyEnumerator2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  [(IDSService *)self->_idsService addDelegate:self queue:&_dispatch_main_q];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100020B30);
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [requestCopy type]);
  protobufRequestHandlers = [(NRGDaemon *)self protobufRequestHandlers];
  v7 = [protobufRequestHandlers objectForKeyedSubscript:v5];

  v8 = nrg_daemon_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "handling request of type %@", &v10, 0xCu);
    }

    (v7)[2](v7, requestCopy);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011AF0();
    }
  }
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [responseCopy type]);
  protobufResponseHandlers = [(NRGDaemon *)self protobufResponseHandlers];
  v7 = [protobufResponseHandlers objectForKeyedSubscript:v5];

  v8 = nrg_daemon_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "handling response of type %@", &v10, 0xCu);
    }

    (v7)[2](v7, responseCopy);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011B64();
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12 = nrg_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (errorCopy || !success)
  {
    if (v13)
    {
      v17 = 138543362;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to send IDS Request for identifier %{public}@", &v17, 0xCu);
    }

    os_unfair_lock_lock(&self->_requestErrorHandlerLock);
    v14 = [(NSMutableDictionary *)self->_requestErrorHandlerDictionary objectForKey:identifierCopy];
    if (v14)
    {
      [(NSMutableDictionary *)self->_requestErrorHandlerDictionary removeObjectForKey:identifierCopy];
    }

    os_unfair_lock_unlock(&self->_requestErrorHandlerLock);
    if (errorCopy)
    {
      genericSendError = errorCopy;
    }

    else
    {
      genericSendError = [(NRGDaemon *)self genericSendError];
    }

    v16 = genericSendError;
    if (v14)
    {
      (v14)[2](v14, genericSendError);
    }
  }

  else
  {
    if (v13)
    {
      v17 = 138543362;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDS Request sent for identifier %{public}@", &v17, 0xCu);
    }

    os_unfair_lock_lock(&self->_requestErrorHandlerLock);
    [(NSMutableDictionary *)self->_requestErrorHandlerDictionary removeObjectForKey:identifierCopy];
    os_unfair_lock_unlock(&self->_requestErrorHandlerLock);
  }
}

@end