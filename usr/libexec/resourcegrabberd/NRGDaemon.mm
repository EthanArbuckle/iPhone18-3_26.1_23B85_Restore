@interface NRGDaemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NRGDaemon)init;
- (void)dealloc;
- (void)handleRequest:(id)a3;
- (void)handleResponse:(id)a3;
- (void)initIDS;
- (void)purgeCache;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
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
  v4 = [(NRGDaemon *)self xpcClients];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 connection];

        if (v10)
        {
          v11 = [v9 connection];
          [v11 invalidate];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    sub_100011AC4();
  }

  v8 = v7;
  v9 = [v7 valueForEntitlement:@"com.apple.nano.nanoresourcegrabber"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v9 BOOLValue] & 1) != 0)
  {
    v31 = v6;
    [v8 setExportedObject:self];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoResourceGrabberIDSXPC];
    [v8 setExportedInterface:v10];

    [v8 resume];
    v11 = +[NSMutableIndexSet indexSet];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = [(NRGDaemon *)self xpcClients];
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(v12);
          }

          v18 = [*(*(&v32 + 1) + 8 * i) connection];

          if (!v18)
          {
            [v11 addIndex:v15];
          }

          ++v15;
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    v19 = [(NRGDaemon *)self xpcClients];
    [v19 removeObjectsAtIndexes:v11];

    v20 = [[NanoResourceGrabberNanoAgent alloc] initWithConnection:v8];
    v21 = [(NRGDaemon *)self xpcClients];
    [v21 addObject:v20];

    v22 = 1;
    v6 = v31;
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
  v5 = [(NRGDaemon *)self protobufRequestHandlers];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v25 objects:v32 count:16];
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
          objc_enumerationMutation(v6);
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

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [(NRGDaemon *)self protobufResponseHandlers];
  v14 = [v13 keyEnumerator];

  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v14);
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

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  [(IDSService *)self->_idsService addDelegate:self queue:&_dispatch_main_q];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100020B30);
}

- (void)handleRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 type]);
  v6 = [(NRGDaemon *)self protobufRequestHandlers];
  v7 = [v6 objectForKeyedSubscript:v5];

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

    (v7)[2](v7, v4);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011AF0();
    }
  }
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 type]);
  v6 = [(NRGDaemon *)self protobufResponseHandlers];
  v7 = [v6 objectForKeyedSubscript:v5];

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

    (v7)[2](v7, v4);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011B64();
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  v12 = nrg_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 || !a6)
  {
    if (v13)
    {
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to send IDS Request for identifier %{public}@", &v17, 0xCu);
    }

    os_unfair_lock_lock(&self->_requestErrorHandlerLock);
    v14 = [(NSMutableDictionary *)self->_requestErrorHandlerDictionary objectForKey:v10];
    if (v14)
    {
      [(NSMutableDictionary *)self->_requestErrorHandlerDictionary removeObjectForKey:v10];
    }

    os_unfair_lock_unlock(&self->_requestErrorHandlerLock);
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = [(NRGDaemon *)self genericSendError];
    }

    v16 = v15;
    if (v14)
    {
      (v14)[2](v14, v15);
    }
  }

  else
  {
    if (v13)
    {
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDS Request sent for identifier %{public}@", &v17, 0xCu);
    }

    os_unfair_lock_lock(&self->_requestErrorHandlerLock);
    [(NSMutableDictionary *)self->_requestErrorHandlerDictionary removeObjectForKey:v10];
    os_unfair_lock_unlock(&self->_requestErrorHandlerLock);
  }
}

@end