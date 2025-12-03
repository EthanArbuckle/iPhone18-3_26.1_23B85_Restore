@interface BTVCBonjourService
- (BOOL)isLocalEndpoint:(id)endpoint;
- (BOOL)sendData:(id)data toDevice:(id)device completionHandler:(id)handler;
- (BOOL)startDiscovery;
- (BOOL)stopAdvertisingForData:(id)data completionHandler:(id)handler;
- (BTVCBonjourService)initWithQueue:(id)queue;
- (id)_endpointForUniqueID:(id)d connectionType:(unsigned __int8)type;
- (id)_handleConnection:(id)connection connectionType:(unsigned __int8)type;
- (id)getUniqueServiceNameForAdvertiser;
- (id)randomUUID;
- (void)_cleanUp;
- (void)_cleanupAdvertiser;
- (void)_cleanupBrowser;
- (void)_reportCachedDiscoveryResults;
- (void)_sendAdvMessageWithData:(id)data isStart:(BOOL)start completionHandler:(id)handler;
- (void)_sendMessage:(id)message withType:(id)type toDevice:(id)device connectionType:(unsigned __int8)connectionType completionCallback:(id)callback;
- (void)_sendMessage:(id)message withType:(id)type toEndpoint:(id)endpoint completionCallback:(id)callback;
- (void)_startAdvertiser;
- (void)_startBrowser;
- (void)_stopAdvertising;
- (void)_stopBrowser;
- (void)_updateAdvertiserState;
- (void)_updateBrowserState;
- (void)connectToDevice:(id)device withParameters:(id)parameters;
- (void)dealloc;
- (void)disconnectFromDevice:(id)device withParameters:(id)parameters;
- (void)handleBrowseResults:(id)results;
- (void)startAdvertisingWithData:(id)data completionHandler:(id)handler;
- (void)stopDiscovery;
@end

@implementation BTVCBonjourService

- (BTVCBonjourService)initWithQueue:(id)queue
{
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = BTVCBonjourService;
  v6 = [(BTVCBonjourService *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serialQueue, queue);
    v8 = objc_alloc_init(NSMutableSet);
    advertiserAdvs = v7->_advertiserAdvs;
    v7->_advertiserAdvs = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    advToBrowserNwToSFendpoints = v7->_advToBrowserNwToSFendpoints;
    v7->_advToBrowserNwToSFendpoints = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    advToBrowserUuidToSFendpoints = v7->_advToBrowserUuidToSFendpoints;
    v7->_advToBrowserUuidToSFendpoints = v12;

    v7->_advertiserState = 0;
    v14 = objc_alloc_init(NSMutableDictionary);
    browserToAdvNwToSFendpoints = v7->_browserToAdvNwToSFendpoints;
    v7->_browserToAdvNwToSFendpoints = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    browserToAdvUuidToSFendpoints = v7->_browserToAdvUuidToSFendpoints;
    v7->_browserToAdvUuidToSFendpoints = v16;

    v7->_browserState = 0;
    v18 = objc_alloc_init(NSMutableDictionary);
    connectionUuidToSFendpoints = v7->_connectionUuidToSFendpoints;
    v7->_connectionUuidToSFendpoints = v18;

    v20 = +[NSMutableSet set];
    resultChanges = v7->_resultChanges;
    v7->_resultChanges = v20;

    randomUUID = [(BTVCBonjourService *)v7 randomUUID];
    localAdvertiserUUIDString = v7->_localAdvertiserUUIDString;
    v7->_localAdvertiserUUIDString = randomUUID;

    randomUUID2 = [(BTVCBonjourService *)v7 randomUUID];
    localBrowserUUIDString = v7->_localBrowserUUIDString;
    v7->_localBrowserUUIDString = randomUUID2;

    v26 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v7->_localAdvertiserUUIDString;
      v28 = v7->_localBrowserUUIDString;
      *buf = 138412546;
      v32 = v27;
      v33 = 2112;
      v34 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] LocalAdvID %@, LocalBrowserID: %@", buf, 0x16u);
    }
  }

  return v7;
}

- (id)randomUUID
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

- (id)getUniqueServiceNameForAdvertiser
{
  lowercaseString = [(NSString *)self->_localAdvertiserUUIDString lowercaseString];
  v3 = [lowercaseString substringWithRange:{12, 12}];

  return v3;
}

- (void)_startAdvertiser
{
  dispatch_assert_queue_V2(self->_serialQueue);
  advertiserState = [(BTVCBonjourService *)self advertiserState];
  v4 = qword_100BCEA70;
  if (advertiserState)
  {
    v5 = qword_100BCEA70;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = [(BTVCBonjourService *)self advertiserState];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Unable to start BTVCBonjourServiceAdvertiser, invalid state : %d", buf, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Starting BTVCBonjourServiceAdvertiser listener/advertiser", buf, 2u);
    }

    v6 = +[BTVCBonjourEndpoint createConnectionParameters];
    v7 = nw_listener_create(v6);
    listener = self->_listener;
    self->_listener = v7;

    if (self->_listener)
    {
      getUniqueServiceNameForAdvertiser = [(BTVCBonjourService *)self getUniqueServiceNameForAdvertiser];
      v10 = getUniqueServiceNameForAdvertiser;
      bonjour_service = nw_advertise_descriptor_create_bonjour_service([getUniqueServiceNameForAdvertiser UTF8String], "_btvc._tcp", 0);
      if (bonjour_service)
      {
        v12 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = getUniqueServiceNameForAdvertiser;
          *&buf[12] = 2080;
          *&buf[14] = "_btvc._tcp";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] nw_advertise_descriptor_create_bonjour_service, %@, ServiceType %s success", buf, 0x16u);
        }

        nw_listener_set_advertise_descriptor(self->_listener, bonjour_service);
        nw_listener_set_queue(self->_listener, self->_serialQueue);
        objc_initWeak(&location, self);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v26 = sub_100042284;
        v27 = sub_1000425D4;
        v28 = 0;
        v13 = self->_listener;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10031B2C0;
        handler[3] = &unk_100AEAF50;
        objc_copyWeak(&v23, &location);
        handler[4] = buf;
        nw_listener_set_state_changed_handler(v13, handler);
        v14 = self->_listener;
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_10031B5F8;
        v20 = &unk_100AEAF78;
        objc_copyWeak(&v21, &location);
        nw_listener_set_new_connection_handler(v14, &v17);
        [(BTVCBonjourService *)self setAdvertiserState:1, v17, v18, v19, v20];
        nw_listener_start(self->_listener);
        objc_destroyWeak(&v21);
        objc_destroyWeak(&v23);
        _Block_object_dispose(buf, 8);

        objc_destroyWeak(&location);
      }

      else
      {
        v15 = self->_listener;
        self->_listener = 0;

        v16 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Unable to create to advertiser descriptor", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100817FDC();
    }
  }
}

- (void)startAdvertisingWithData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  if (!serialQueue)
  {
    v9 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[BTVCBonjourService startAdvertisingWithData:completionHandler:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s _serialQueue is nil", buf, 0xCu);
    }

    serialQueue = self->_serialQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031B854;
  block[3] = &unk_100AEAFA0;
  block[4] = self;
  v13 = dataCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dataCopy;
  dispatch_async(serialQueue, block);
}

- (void)_stopAdvertising
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(BTVCBonjourService *)self advertiserState]== 2)
  {
    [(BTVCBonjourService *)self setAdvertiserState:3];
    listener = self->_listener;

    nw_listener_cancel(listener);
  }

  else
  {
    v4 = qword_100BCEA70;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = [(BTVCBonjourService *)self advertiserState];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Unable to stop advertiser, invalid state : %d", v5, 8u);
    }
  }
}

- (BOOL)stopAdvertisingForData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031BBFC;
  block[3] = &unk_100AEAFA0;
  block[4] = self;
  v13 = dataCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dataCopy;
  dispatch_async(serialQueue, block);

  return 1;
}

- (void)_cleanupAdvertiser
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(BTVCBonjourService *)self advertiserState])
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Cleaning up the advertiser", v5, 2u);
    }

    advToBrowserNwToSFendpoints = [(BTVCBonjourService *)self advToBrowserNwToSFendpoints];
    [advToBrowserNwToSFendpoints enumerateKeysAndObjectsUsingBlock:&stru_100AEAFE0];

    [(BTVCBonjourService *)self _updateAdvertiserState];
  }
}

- (void)_updateAdvertiserState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  advToBrowserNwToSFendpoints = [(BTVCBonjourService *)self advToBrowserNwToSFendpoints];
  v4 = [advToBrowserNwToSFendpoints keysOfEntriesPassingTest:&stru_100AEB020];

  if (![v4 count] && !self->_listener)
  {
    [(BTVCBonjourService *)self setAdvertiserState:0];
    if (self->_shouldRestartAdvertising)
    {
      self->_shouldRestartAdvertising = 0;
      [(BTVCBonjourService *)self _startAdvertiser];
    }
  }
}

- (void)_startBrowser
{
  dispatch_assert_queue_V2(self->_serialQueue);
  browserState = [(BTVCBonjourService *)self browserState];
  v4 = qword_100BCEA70;
  if (browserState)
  {
    v5 = qword_100BCEA70;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = [(BTVCBonjourService *)self browserState];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Unable to start the browser, invalid state : %d", &buf, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Starting the browser", &buf, 2u);
    }

    v5 = nw_parameters_create();
    nw_parameters_set_include_peer_to_peer(v5, 1);
    bonjour_service = nw_browse_descriptor_create_bonjour_service("_btvc._tcp", 0);
    v7 = nw_browser_create(bonjour_service, v5);
    browser = self->_browser;
    self->_browser = v7;

    v9 = self->_browser;
    if (v9)
    {
      nw_browser_set_queue(v9, self->_serialQueue);
      objc_initWeak(&buf, self);
      v10 = self->_browser;
      state_changed_handler[0] = _NSConcreteStackBlock;
      state_changed_handler[1] = 3221225472;
      state_changed_handler[2] = sub_10031C280;
      state_changed_handler[3] = &unk_100AEB048;
      objc_copyWeak(&v18, &buf);
      nw_browser_set_state_changed_handler(v10, state_changed_handler);
      v11 = self->_browser;
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_10031C440;
      v15 = &unk_100AEB070;
      objc_copyWeak(&v16, &buf);
      nw_browser_set_browse_results_changed_handler(v11, &v12);
      [(BTVCBonjourService *)self setBrowserState:1, v12, v13, v14, v15];
      nw_browser_start(self->_browser);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&buf);
    }

    else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100818054();
    }
  }
}

- (BOOL)startDiscovery
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031C634;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(serialQueue, block);
  return 1;
}

- (void)_stopBrowser
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(BTVCBonjourService *)self browserState]== 2)
  {
    [(BTVCBonjourService *)self setBrowserState:3];
    browser = self->_browser;

    nw_browser_cancel(browser);
  }

  else
  {
    v4 = qword_100BCEA70;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = [(BTVCBonjourService *)self browserState];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] StopBrowser is not stopping. current browser state %d", v5, 8u);
    }
  }
}

- (void)stopDiscovery
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031C860;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_reportCachedDiscoveryResults
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10031C910;
  v4[3] = &unk_100AEB0C0;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_cleanupBrowser
{
  if ([(BTVCBonjourService *)self browserState])
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Cleaning up browser", v7, 2u);
    }

    browserToAdvNwToSFendpoints = [(BTVCBonjourService *)self browserToAdvNwToSFendpoints];
    [browserToAdvNwToSFendpoints enumerateKeysAndObjectsUsingBlock:&stru_100AEB0E0];

    [(BTVCBonjourService *)self _updateBrowserState];
    deviceDidStopScanning = [(BTVCBonjourService *)self deviceDidStopScanning];

    if (deviceDidStopScanning)
    {
      deviceDidStopScanning2 = [(BTVCBonjourService *)self deviceDidStopScanning];
      deviceDidStopScanning2[2](deviceDidStopScanning2, 0);
    }
  }
}

- (void)_updateBrowserState
{
  browserToAdvNwToSFendpoints = [(BTVCBonjourService *)self browserToAdvNwToSFendpoints];
  v4 = [browserToAdvNwToSFendpoints keysOfEntriesPassingTest:&stru_100AEB100];

  if (![v4 count] && !self->_browser)
  {
    v5 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] _updateBrowserState to kBTVCBonjourBrowserStateStopped", v6, 2u);
    }

    [(BTVCBonjourService *)self setBrowserState:0];
    if (self->_shouldRestartBrowsing)
    {
      self->_shouldRestartBrowsing = 0;
      [(BTVCBonjourService *)self _startBrowser];
    }
  }
}

- (void)handleBrowseResults:(id)results
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  resultsCopy = results;
  v5 = [resultsCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v7 = *v27;
    *&v6 = 138412290;
    v25 = v6;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if (([v9 change] & 2) != 0)
        {
          freshResult = [v9 freshResult];
          v11 = nw_browse_result_copy_endpoint(freshResult);

          if (![(BTVCBonjourService *)self isLocalEndpoint:v11])
          {
            browserToAdvNwToSFendpoints = [(BTVCBonjourService *)self browserToAdvNwToSFendpoints];
            v17 = [browserToAdvNwToSFendpoints objectForKey:v11];
            v18 = v17 == 0;

            v19 = qword_100BCEA70;
            v20 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
            if (v18)
            {
              if (v20)
              {
                *buf = 138412546;
                v31 = v11;
                v32 = 2048;
                v33 = v11;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Found endpoint %@, (%p)", buf, 0x16u);
              }

              v21 = +[BTVCBonjourEndpoint createConnectionParameters];
              v22 = nw_connection_create(v11, v21);

              v23 = [(BTVCBonjourService *)self _handleConnection:v22 connectionType:2];
              v24 = qword_100BCEA70;
              if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v31 = v22;
                v32 = 2112;
                v33 = v23;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] New Browser to Adv connection %@ (endpoint %@)", buf, 0x16u);
              }
            }

            else if (v20)
            {
              *buf = v25;
              v31 = v11;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Ignoring duplicate endpoint %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (([v9 change] & 4) == 0)
          {
            continue;
          }

          oldResult = [v9 oldResult];
          v11 = nw_browse_result_copy_endpoint(oldResult);

          if (![(BTVCBonjourService *)self isLocalEndpoint:v11])
          {
            browserToAdvNwToSFendpoints2 = [(BTVCBonjourService *)self browserToAdvNwToSFendpoints];
            v13 = [browserToAdvNwToSFendpoints2 objectForKey:v11];

            v14 = qword_100BCEA70;
            if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v31 = v11;
              v32 = 2112;
              v33 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Removing endpoint %@ %@", buf, 0x16u);
            }

            [v13 cancel];
          }
        }
      }

      v5 = [resultsCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v5);
  }
}

- (id)_handleConnection:(id)connection connectionType:(unsigned __int8)type
{
  typeCopy = type;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (connectionCopy)
  {
    v7 = 32;
    if ((typeCopy & 1) == 0)
    {
      v7 = 40;
    }

    v8 = *(&self->super.isa + v7);
    v9 = [[BTVCBonjourEndpoint alloc] initWithConnection:connectionCopy connectionType:typeCopy localUniqueID:v8 withQueue:self->_serialQueue];
    if (v9)
    {
      v10 = nw_connection_copy_endpoint(connectionCopy);
      if (typeCopy)
      {
        [(BTVCBonjourService *)self advToBrowserNwToSFendpoints];
      }

      else
      {
        [(BTVCBonjourService *)self browserToAdvNwToSFendpoints];
      }
      v11 = ;
      [v11 setObject:v9 forKey:v10];

      objc_initWeak(&location, self);
      objc_initWeak(&from, v9);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10031D538;
      v20[3] = &unk_100AEB148;
      objc_copyWeak(&v21, &from);
      objc_copyWeak(&v22, &location);
      v23 = typeCopy;
      [(BTVCBonjourEndpoint *)v9 setDidConnectHandler:v20];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10031D78C;
      v17[3] = &unk_100AEB170;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      [(BTVCBonjourEndpoint *)v9 setDidDisconnectHandler:v17];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10031DBA4;
      v14[3] = &unk_100AEB198;
      objc_copyWeak(&v15, &location);
      objc_copyWeak(&v16, &from);
      v14[4] = self;
      [(BTVCBonjourEndpoint *)v9 setDidReceiveDataHandler:v14];
      v12 = v9;
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100818090();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100818104();
    }

    v9 = 0;
  }

  return v9;
}

- (void)_sendMessage:(id)message withType:(id)type toEndpoint:(id)endpoint completionCallback:(id)callback
{
  messageCopy = message;
  typeCopy = type;
  endpointCopy = endpoint;
  callbackCopy = callback;
  dispatch_assert_queue_V2(self->_serialQueue);
  v29[0] = @"BTVCBonjourServiceMessageType";
  v29[1] = @"BTVCBonjourServiceMessageValue";
  v30[0] = typeCopy;
  v30[1] = messageCopy;
  v14 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v15 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v14;
    v27 = 2112;
    v28 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Sending payload %@ to endpoint %@", buf, 0x16u);
  }

  v22 = 0;
  v16 = [NSPropertyListSerialization dataWithPropertyList:v14 format:200 options:0 error:&v22];
  v17 = v22;
  if (v16)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10031E780;
    v20[3] = &unk_100AEB1C0;
    v21 = callbackCopy;
    [endpointCopy sendDataMessage:v16 completion:v20];
    v18 = v21;
LABEL_9:

    goto LABEL_10;
  }

  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_100818380();
  }

  if (callbackCopy)
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"Unable to send message, failed to serialize payload";
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6700 userInfo:v19];

    (*(callbackCopy + 2))(callbackCopy, v18);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_sendMessage:(id)message withType:(id)type toDevice:(id)device connectionType:(unsigned __int8)connectionType completionCallback:(id)callback
{
  messageCopy = message;
  typeCopy = type;
  deviceCopy = device;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031E938;
  block[3] = &unk_100AEB1E8;
  objc_copyWeak(&v26, &location);
  connectionTypeCopy = connectionType;
  v22 = deviceCopy;
  v23 = typeCopy;
  v24 = messageCopy;
  v25 = callbackCopy;
  v17 = callbackCopy;
  v18 = messageCopy;
  v19 = typeCopy;
  v20 = deviceCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)_sendAdvMessageWithData:(id)data isStart:(BOOL)start completionHandler:(id)handler
{
  startCopy = start;
  dataCopy = data;
  handlerCopy = handler;
  v10 = @"BTVCBonjourServiceMessageTypeStopAdvertiseData";
  if (startCopy)
  {
    v10 = @"BTVCBonjourServiceMessageTypeStartAdvertiseData";
  }

  v11 = v10;
  advToBrowserUuidToSFendpoints = [(BTVCBonjourService *)self advToBrowserUuidToSFendpoints];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10031EC8C;
  v16[3] = &unk_100AEB238;
  v16[4] = self;
  v13 = dataCopy;
  v17 = v13;
  v14 = v11;
  v18 = v14;
  v15 = handlerCopy;
  v19 = v15;
  [advToBrowserUuidToSFendpoints enumerateKeysAndObjectsUsingBlock:v16];

  if (v15)
  {
    (*(v15 + 2))(v15, v13, 0);
  }
}

- (void)connectToDevice:(id)device withParameters:(id)parameters
{
  deviceCopy = device;
  parametersCopy = parameters;
  uUIDString = [deviceCopy UUIDString];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10031EF80;
  v11[3] = &unk_100AEB260;
  v11[4] = self;
  v9 = deviceCopy;
  v12 = v9;
  v10 = parametersCopy;
  v13 = v10;
  [(BTVCBonjourService *)self _sendMessage:v10 withType:@"BTVCBonjourServiceMessageTypeConnect" toDevice:uUIDString connectionType:2 completionCallback:v11];
}

- (void)disconnectFromDevice:(id)device withParameters:(id)parameters
{
  deviceCopy = device;
  parametersCopy = parameters;
  uUIDString = [deviceCopy UUIDString];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10031F234;
  v11[3] = &unk_100AEB260;
  v11[4] = self;
  v9 = deviceCopy;
  v12 = v9;
  v10 = parametersCopy;
  v13 = v10;
  [(BTVCBonjourService *)self _sendMessage:v10 withType:@"BTVCBonjourServiceMessageTypeDisconnect" toDevice:uUIDString connectionType:4 completionCallback:v11];
}

- (BOOL)sendData:(id)data toDevice:(id)device completionHandler:(id)handler
{
  dataCopy = data;
  deviceCopy = device;
  handlerCopy = handler;
  uUIDString = [deviceCopy UUIDString];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10031F498;
  v16[3] = &unk_100AEB288;
  v12 = dataCopy;
  v17 = v12;
  v13 = deviceCopy;
  v18 = v13;
  v14 = handlerCopy;
  v19 = v14;
  [(BTVCBonjourService *)self _sendMessage:v12 withType:@"BTVCBonjourServiceMessageTypeDataPacket" toDevice:uUIDString connectionType:4 completionCallback:v16];

  return 1;
}

- (BOOL)isLocalEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [NSString stringWithUTF8String:nw_endpoint_get_bonjour_service_name(endpointCopy)];
  getUniqueServiceNameForAdvertiser = [(BTVCBonjourService *)self getUniqueServiceNameForAdvertiser];
  v7 = [v5 isEqualToString:getUniqueServiceNameForAdvertiser];

  return v7;
}

- (id)_endpointForUniqueID:(id)d connectionType:(unsigned __int8)type
{
  typeCopy = type;
  dCopy = d;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[BTVCBonjourService _endpointForUniqueID:connectionType:]";
    v19 = 2112;
    v20 = dCopy;
    v21 = 1024;
    LODWORD(v22) = typeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s device %@ connectionType %x", &v17, 0x1Cu);
  }

  if (!dCopy)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100818614();
    }

    goto LABEL_21;
  }

  if (typeCopy)
  {
    advToBrowserUuidToSFendpoints = [(BTVCBonjourService *)self advToBrowserUuidToSFendpoints];
    v9 = [advToBrowserUuidToSFendpoints objectForKeyedSubscript:dCopy];

    if (v9)
    {
      goto LABEL_22;
    }

    v10 = qword_100BCEA70;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      browserToAdvUuidToSFendpoints = [(BTVCBonjourService *)self browserToAdvUuidToSFendpoints];
      v17 = 136315650;
      v18 = "[BTVCBonjourService _endpointForUniqueID:connectionType:]";
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = browserToAdvUuidToSFendpoints;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s device %@ is not in advToBrowserUuidToSFendpoints %@", &v17, 0x20u);
    }
  }

  else if ((typeCopy & 2) != 0)
  {
    browserToAdvUuidToSFendpoints2 = [(BTVCBonjourService *)self browserToAdvUuidToSFendpoints];
    v9 = [browserToAdvUuidToSFendpoints2 objectForKeyedSubscript:dCopy];

    if (v9)
    {
      goto LABEL_22;
    }

    v10 = qword_100BCEA70;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      browserToAdvUuidToSFendpoints3 = [(BTVCBonjourService *)self browserToAdvUuidToSFendpoints];
      v17 = 136315650;
      v18 = "[BTVCBonjourService _endpointForUniqueID:connectionType:]";
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = browserToAdvUuidToSFendpoints3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s device %@ is not in browserToAdvUuidToSFendpoints %@", &v17, 0x20u);
    }
  }

  else
  {
    if ((typeCopy & 4) == 0)
    {
      goto LABEL_19;
    }

    connectionUuidToSFendpoints = [(BTVCBonjourService *)self connectionUuidToSFendpoints];
    v9 = [connectionUuidToSFendpoints objectForKeyedSubscript:dCopy];

    if (v9)
    {
      goto LABEL_22;
    }

    v10 = qword_100BCEA70;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      connectionUuidToSFendpoints2 = [(BTVCBonjourService *)self connectionUuidToSFendpoints];
      v17 = 136315650;
      v18 = "[BTVCBonjourService _endpointForUniqueID:connectionType:]";
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = connectionUuidToSFendpoints2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s device %@ is not in connectionUuidToSFendpoints %@", &v17, 0x20u);
    }
  }

LABEL_19:
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_1008185A0();
  }

LABEL_21:
  v9 = 0;
LABEL_22:

  return v9;
}

- (void)_cleanUp
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031F9EC;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BTVCBonjourService;
  [(BTVCBonjourService *)&v2 dealloc];
}

@end