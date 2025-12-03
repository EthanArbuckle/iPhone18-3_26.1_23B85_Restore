@interface UARPPersonalizationEventManager
- (BOOL)personalizationNeeded:(id)needed endpointUUID:(id)d tssServerURL:(id)l;
- (UARPPersonalizationEventManager)initWithUARPHostManager:(id)manager queue:(id)queue;
- (void)activateDaemonMode;
- (void)activateToolMode;
- (void)publishPersonalizationNeededEvent:(id)event;
@end

@implementation UARPPersonalizationEventManager

- (UARPPersonalizationEventManager)initWithUARPHostManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = UARPPersonalizationEventManager;
  v9 = [(UARPPersonalizationEventManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hostManager, manager);
    objc_storeStrong(&v10->_queue, queue);
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
  personalizationCompleteListener = [(UARPHostManager *)self->_hostManager personalizationCompleteListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = personalizationCompleteListener;

  v5 = [[UARPHostPersonalizationManager alloc] initWithListener:self->_xpcListener];
  tssManager = self->_tssManager;
  self->_tssManager = v5;

  _objc_release_x1();
}

- (BOOL)personalizationNeeded:(id)needed endpointUUID:(id)d tssServerURL:(id)l
{
  neededCopy = needed;
  dCopy = d;
  lCopy = l;
  v43 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v41 = neededCopy;
  tatsuTickets = [neededCopy tatsuTickets];
  v9 = [tatsuTickets countByEnumeratingWithState:&v45 objects:v49 count:16];
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
          objc_enumerationMutation(tatsuTickets);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        tatsuRequest = [v13 tatsuRequest];

        if (tatsuRequest)
        {
          manifestLocation = [v13 manifestLocation];
          v16 = manifestLocation;
          if (manifestLocation)
          {
            componentTag = [manifestLocation componentTag];
            if (!componentTag)
            {
              componentTag = [[UARPComponentTag alloc] initWithString:@"ROOT"];
            }

            v18 = [UARPDeviceTatsuTicket alloc];
            tagString = [(UARPComponentTag *)componentTag tagString];
            tatsuRequest2 = [v13 tatsuRequest];
            v21 = [v18 initWithComponentTag:tagString tssRequest:tatsuRequest2];

            if (v21)
            {
              [v43 addObject:v21];
            }
          }
        }
      }

      v10 = [tatsuTickets countByEnumeratingWithState:&v45 objects:v49 count:16];
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
    v27 = dCopy;
    v26 = v41;
    if (v23)
    {
      v28 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_data(v28, [@"tatsuRequests" UTF8String], objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"));
      uTF8String = [@"endpointUUID" UTF8String];
      uUIDString = [dCopy UUIDString];
      xpc_dictionary_set_string(v28, uTF8String, [uUIDString UTF8String]);

      uTF8String2 = [@"assetUUID" UTF8String];
      uuid = [v41 uuid];
      uUIDString2 = [uuid UUIDString];
      xpc_dictionary_set_string(v28, uTF8String2, [uUIDString2 UTF8String]);

      if (lCopy)
      {
        uTF8String3 = [@"tatsuServerURL" UTF8String];
        absoluteString = [lCopy absoluteString];
        xpc_dictionary_set_string(v28, uTF8String3, [absoluteString UTF8String]);
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

    v36 = lCopy;
    v22 = v43;
  }

  else
  {
    v25 = 0;
    v27 = dCopy;
    v26 = v41;
    v36 = lCopy;
  }

  return v25;
}

- (void)publishPersonalizationNeededEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000055FC;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

@end