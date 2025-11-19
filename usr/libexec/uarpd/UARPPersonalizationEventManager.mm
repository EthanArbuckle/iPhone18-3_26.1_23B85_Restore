@interface UARPPersonalizationEventManager
- (BOOL)personalizationNeeded:(id)a3 endpointUUID:(id)a4 tssServerURL:(id)a5;
- (UARPPersonalizationEventManager)initWithUARPHostManager:(id)a3 queue:(id)a4;
- (void)activateDaemonMode;
- (void)activateToolMode;
- (void)publishPersonalizationNeededEvent:(id)a3;
@end

@implementation UARPPersonalizationEventManager

- (UARPPersonalizationEventManager)initWithUARPHostManager:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = UARPPersonalizationEventManager;
  v9 = [(UARPPersonalizationEventManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hostManager, a3);
    objc_storeStrong(&v10->_queue, a4);
    v11 = os_log_create("com.apple.uarp", "eventmanager");
    log = v10->_log;
    v10->_log = v11;

    v13 = objc_opt_new();
    subscriberTokens = v10->_subscriberTokens;
    v10->_subscriberTokens = v13;
  }

  return v10;
}

- (void)activateDaemonMode
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[UARPPersonalizationEventManager activateDaemonMode]";
    v14 = 2112;
    v15 = @"com.apple.uarp.personalization";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@ create publisher", buf, 0x16u);
  }

  [@"com.apple.uarp.personalization" UTF8String];
  queue = self->_queue;
  v5 = xpc_event_publisher_create();
  publisher = self->_publisher;
  self->_publisher = v5;

  v7 = self->_log;
  if (self->_publisher)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[UARPPersonalizationEventManager activateDaemonMode]";
      v14 = 2112;
      v15 = @"com.apple.uarp.personalization";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: %@ publisher created", buf, 0x16u);
    }

    v8 = self->_publisher;
    xpc_event_publisher_set_handler();
    v9 = self->_publisher;
    xpc_event_publisher_set_error_handler();
    v10 = self->_publisher;
    xpc_event_publisher_activate();
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[UARPPersonalizationEventManager activateDaemonMode]";
      v14 = 2112;
      v15 = @"com.apple.uarp.personalization";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: %@ publisher activated", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10007ABC4(@"com.apple.uarp.personalization", v7);
  }
}

- (void)activateToolMode
{
  v3 = [(UARPHostManager *)self->_hostManager personalizationCompleteListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  v5 = [[UARPHostPersonalizationManager alloc] initWithListener:self->_xpcListener];
  tssManager = self->_tssManager;
  self->_tssManager = v5;

  _objc_release_x1();
}

- (BOOL)personalizationNeeded:(id)a3 endpointUUID:(id)a4 tssServerURL:(id)a5
{
  v7 = a3;
  v40 = a4;
  v42 = a5;
  v43 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v41 = v7;
  v8 = [v7 tatsuTickets];
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [v13 tatsuRequest];

        if (v14)
        {
          v15 = [v13 manifestLocation];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 componentTag];
            if (!v17)
            {
              v17 = [[UARPComponentTag alloc] initWithString:@"ROOT"];
            }

            v18 = [UARPDeviceTatsuTicket alloc];
            v19 = [(UARPComponentTag *)v17 tagString];
            v20 = [v13 tatsuRequest];
            v21 = [v18 initWithComponentTag:v19 tssRequest:v20];

            if (v21)
            {
              [v43 addObject:v21];
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v10);
  }

  v22 = v43;
  if ([v43 count])
  {
    v44 = 0;
    v23 = [NSKeyedArchiver archivedDataWithRootObject:v43 requiringSecureCoding:1 error:&v44];
    v24 = v44;
    v25 = v23 != 0;
    v27 = v40;
    v26 = v41;
    if (v23)
    {
      v28 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_data(v28, [@"tatsuRequests" UTF8String], objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"));
      v29 = [@"endpointUUID" UTF8String];
      v30 = [v40 UUIDString];
      xpc_dictionary_set_string(v28, v29, [v30 UTF8String]);

      v31 = [@"assetUUID" UTF8String];
      v32 = [v41 uuid];
      v33 = [v32 UUIDString];
      xpc_dictionary_set_string(v28, v31, [v33 UTF8String]);

      if (v42)
      {
        v34 = [@"tatsuServerURL" UTF8String];
        v35 = [v42 absoluteString];
        xpc_dictionary_set_string(v28, v34, [v35 UTF8String]);
      }

      if (self->_publisher)
      {
        [(UARPPersonalizationEventManager *)self publishPersonalizationNeededEvent:v28];
      }

      else
      {
        [(UARPHostPersonalizationManager *)self->_tssManager personalizeAssetWithXPCEvent:v28];
      }
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10007AD70(log);
      }
    }

    v36 = v42;
    v22 = v43;
  }

  else
  {
    v25 = 0;
    v27 = v40;
    v26 = v41;
    v36 = v42;
  }

  return v25;
}

- (void)publishPersonalizationNeededEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000055FC;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end