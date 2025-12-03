@interface SDStreamManager
+ (id)sharedManager;
- (BOOL)servicesContainIdentifier:(id)identifier;
- (SDStreamManager)initWithServiceType:(id)type;
- (void)activityContinuationPayloadSent:(id)sent;
- (void)addObservers;
- (void)addService:(id)service;
- (void)closeStreamsForIdentifier:(id)identifier;
- (void)companionStreamClosedStreams:(id)streams;
- (void)continuationStream:(id)stream connectedToService:(id)service withFileHandle:(id)handle acceptHandler:(id)handler;
- (void)dealloc;
- (void)debugInfoRequested:(id)requested;
- (void)getContinuationStreamsForMessage:(id)message bundleID:(id)d usingID:(id)iD completionHandler:(id)handler;
- (void)netService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream;
- (void)netService:(id)service didNotPublish:(id)publish;
- (void)netServiceDidPublish:(id)publish;
- (void)netServiceDidStop:(id)stop;
- (void)publish;
- (void)publishTimerFired:(id)fired;
- (void)registerConnectedStreams;
- (void)registerManager:(id)manager;
- (void)removeObservers;
- (void)removeService:(id)service;
- (void)restartPublishTimer;
- (void)unpublish;
- (void)unregisterConnectedStreams;
- (void)unregisterManager:(id)manager;
@end

@implementation SDStreamManager

+ (id)sharedManager
{
  if (qword_100989AB0 != -1)
  {
    sub_100095884();
  }

  v3 = qword_100989AA8;

  return v3;
}

- (SDStreamManager)initWithServiceType:(id)type
{
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = SDStreamManager;
  v6 = [(SDStreamManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    service = v6->_service;
    v6->_service = 0;

    objc_storeStrong(&v7->_serviceType, type);
    v9 = objc_opt_new();
    managers = v7->_managers;
    v7->_managers = v9;

    v11 = objc_opt_new();
    companionServices = v7->_companionServices;
    v7->_companionServices = v11;

    v13 = objc_opt_new();
    incomingStreams = v7->_incomingStreams;
    v7->_incomingStreams = v13;

    v15 = objc_opt_new();
    continuationStreams = v7->_continuationStreams;
    v7->_continuationStreams = v15;

    v7->_connectedStreams = 0;
    [(SDStreamManager *)v7 addObservers];
  }

  return v7;
}

- (void)dealloc
{
  [(SDStreamManager *)self removeObservers];
  v3.receiver = self;
  v3.super_class = SDStreamManager;
  [(SDStreamManager *)&v3 dealloc];
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"debugInfoRequested:" name:@"com.apple.sharingd.DebugInfoRequested" object:0];
  [v3 addObserver:self selector:"activityContinuationPayloadSent:" name:@"com.apple.sharingd.ContinuationPayloadSent" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)debugInfoRequested:(id)requested
{
  v10 = objc_opt_new();
  if (self->_service)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [NSString stringWithFormat:@"Publishing:%@", v4];
  [v10 addObject:v5];

  v6 = [NSString stringWithFormat:@"Registered Activities:%d", [(NSMutableArray *)self->_companionServices count]];
  [v10 addObject:v6];

  v7 = [NSString stringWithFormat:@"Connected Streams:%ld", self->_connectedStreams];
  [v10 addObject:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  sub_100086F68(v9, v10);
}

- (void)activityContinuationPayloadSent:(id)sent
{
  [sent userInfo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100094018;
  v6 = v5[3] = &unk_1008CE028;
  selfCopy = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (BOOL)servicesContainIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_companionServices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        serviceType = [*(*(&v14 + 1) + 8 * i) serviceType];
        v12 = [serviceType isEqualToString:identifierCopy];

        v8 |= v12;
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)registerConnectedStreams
{
  ++self->_connectedStreams;
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connectedStreams = self->_connectedStreams;
    v5 = 134217984;
    v6 = connectedStreams;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Added connected stream, total = %ld", &v5, 0xCu);
  }
}

- (void)getContinuationStreamsForMessage:(id)message bundleID:(id)d usingID:(id)iD completionHandler:(id)handler
{
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v10 = streams_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [messageCopy objectForKeyedSubscript:kSFCompanionServiceBonjourNameKey];
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Streams are being requested for bonjour name = %@", buf, 0xCu);
  }

  v46 = NSLocalizedDescriptionKey;
  v47 = @"Could not set up internal streams";
  v12 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v12];

  v14 = +[SDStatusMonitor sharedMonitor];
  wirelessEnabled = [v14 wirelessEnabled];

  if ((wirelessEnabled & 1) != 0 || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 alwaysSendPayload], v16, v17))
  {
    v18 = [messageCopy objectForKeyedSubscript:{kSFCompanionServiceBonjourNameKey, self}];
    if (v18)
    {
      v19 = [[NSNetService alloc] initWithDomain:@"local." type:@"_continuity._tcp." name:v18];
      v20 = v19;
      v22 = iDCopy;
      v21 = dCopy;
      v23 = handlerCopy;
      if (v19)
      {
        *buf = 0;
        v43 = 0;
        [v19 _setIncludesAWDL:1];
        if ([v20 getInputStream:buf outputStream:&v43])
        {
          v24 = [SDStreamHandler alloc];
          v25 = [(SDStreamHandler *)v24 initWithInputStream:*buf outputStream:v43 isClient:1];
          v26 = v25;
          if (v25)
          {
            [(SDStreamHandler *)v25 setBundleID:dCopy];
            v27 = [SDCompanionStream alloc];
            v28 = [messageCopy objectForKeyedSubscript:kSFCompanionServiceAuthorDataKey];
            v29 = [(SDCompanionStream *)v27 initWithAuthorData:v28 streamHandler:v26];

            [(SDCompanionStream *)v29 setDelegate:v37];
            [(SDCompanionStream *)v29 setIdentifier:iDCopy];
            [(SDCompanionStream *)v29 start];
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10009487C;
            v41[3] = &unk_1008CE648;
            v42 = handlerCopy;
            [(SDCompanionStream *)v29 getStreamsWithCompletionHandler:v41];
            [*(v37 + 48) setObject:v29 forKeyedSubscript:iDCopy];

            v23 = handlerCopy;
          }

          else
          {
            v35 = streams_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_100095900();
            }

            (*(handlerCopy + 2))(handlerCopy, 0, v13);
          }
        }

        else
        {
          v34 = streams_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1000958CC();
          }

          (*(handlerCopy + 2))(handlerCopy, 0, v13);
        }
      }

      else
      {
        v33 = streams_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1000958CC();
        }

        (*(handlerCopy + 2))(handlerCopy, 0, v13);
      }
    }

    else
    {
      v30 = streams_log();
      v22 = iDCopy;
      v21 = dCopy;
      v23 = handlerCopy;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100095934();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, v13);
    }
  }

  else
  {
    v31 = streams_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_100095898();
    }

    v44 = NSLocalizedDescriptionKey;
    v45 = @"Wi-Fi not enabled";
    v18 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:50 userInfo:v18];
    v23 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, 0, v32);

    v22 = iDCopy;
    v21 = dCopy;
  }
}

- (void)unregisterConnectedStreams
{
  --self->_connectedStreams;
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connectedStreams = self->_connectedStreams;
    v7 = 134217984;
    v8 = connectedStreams;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removed connected streams, total = %ld", &v7, 0xCu);
  }

  if (self->_connectedStreams <= 0)
  {
    v5 = +[SDStatusMonitor sharedMonitor];
    alwaysSendPayload = [v5 alwaysSendPayload];

    if ((alwaysSendPayload & 1) == 0)
    {
      [(SDStreamManager *)self unpublish];
    }
  }
}

- (void)restartPublishTimer
{
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting publish timer", v7, 2u);
  }

  publishTimer = self->_publishTimer;
  if (publishTimer)
  {
    [(NSTimer *)publishTimer invalidate];
  }

  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"publishTimerFired:" selector:0 userInfo:0 repeats:90.0];
  v6 = self->_publishTimer;
  self->_publishTimer = v5;
}

- (void)publishTimerFired:(id)fired
{
  if (self->_connectedStreams <= 0)
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    alwaysSendPayload = [v4 alwaysSendPayload];

    if ((alwaysSendPayload & 1) == 0)
    {
      v6 = streams_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Publish timer fired, no more connected streams", v8, 2u);
      }

      [(SDStreamManager *)self unpublish];
    }
  }

  publishTimer = self->_publishTimer;
  self->_publishTimer = 0;
}

- (void)publish
{
  if (self->_service)
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Already publishing", v11, 2u);
    }

    if (!self->_connectedStreams)
    {
      [(SDStreamManager *)self restartPublishTimer];
    }
  }

  else
  {
    v4 = sub_1001F28C0();
    if (v4)
    {
      v5 = [[NSNetService alloc] initWithDomain:@"local" type:self->_serviceType name:v4 port:8771];
      service = self->_service;
      self->_service = v5;

      v7 = self->_service;
      if (v7)
      {
        [(NSNetService *)v7 setDelegate:self];
        [(NSNetService *)self->_service _setIncludesAWDL:1];
        v8 = self->_service;
        v9 = +[NSRunLoop mainRunLoop];
        [(NSNetService *)v8 scheduleInRunLoop:v9 forMode:NSRunLoopCommonModes];

        [(NSNetService *)self->_service publishWithOptions:3];
        [(SDStreamManager *)self restartPublishTimer];
        v10 = streams_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Publishing net service", buf, 2u);
        }
      }

      else
      {
        v10 = streams_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100095968();
        }
      }
    }

    else
    {
      v10 = streams_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10009599C();
      }
    }
  }
}

- (void)unpublish
{
  if (self->_service)
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unpublishing", v7, 2u);
    }

    service = self->_service;
    v5 = +[NSRunLoop mainRunLoop];
    [(NSNetService *)service removeFromRunLoop:v5 forMode:NSRunLoopCommonModes];

    [(NSNetService *)self->_service setDelegate:0];
    [(NSNetService *)self->_service stop];
    v6 = self->_service;
    self->_service = 0;
  }
}

- (void)addService:(id)service
{
  serviceCopy = service;
  if (([(NSMutableArray *)self->_companionServices containsObject:serviceCopy]& 1) != 0)
  {
    v5 = streams_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Service has already been added", &v10, 2u);
    }
  }

  else
  {
    [(NSMutableArray *)self->_companionServices addObject:serviceCopy];
    v6 = streams_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      serviceType = [serviceCopy serviceType];
      v10 = 138412546;
      v11 = serviceCopy;
      v12 = 2112;
      v13 = serviceType;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Added service to publisher %@ with identifier %@", &v10, 0x16u);
    }

    v8 = +[SDStatusMonitor sharedMonitor];
    alwaysSendPayload = [v8 alwaysSendPayload];

    if (alwaysSendPayload)
    {
      [(SDStreamManager *)self publish];
    }
  }
}

- (void)removeService:(id)service
{
  serviceCopy = service;
  v5 = streams_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    serviceType = [serviceCopy serviceType];
    v8 = 138412290;
    v9 = serviceType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removed stream support for activity with identifier = %@", &v8, 0xCu);
  }

  [(NSMutableArray *)self->_companionServices removeObject:serviceCopy];
  if (![(NSMutableArray *)self->_companionServices count])
  {
    v7 = streams_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No more activities that support streams", &v8, 2u);
    }

    [(SDStreamManager *)self unpublish];
  }
}

- (void)closeStreamsForIdentifier:(id)identifier
{
  continuationStreams = self->_continuationStreams;
  identifierCopy = identifier;
  v6 = [(NSMutableDictionary *)continuationStreams objectForKeyedSubscript:identifierCopy];
  [v6 stop];
  [(NSMutableDictionary *)self->_continuationStreams removeObjectForKey:identifierCopy];
}

- (void)registerManager:(id)manager
{
  managers = self->_managers;
  managerCopy = manager;
  managerID = [managerCopy managerID];
  [(NSMutableDictionary *)managers setObject:managerCopy forKeyedSubscript:managerID];
}

- (void)unregisterManager:(id)manager
{
  managers = self->_managers;
  managerID = [manager managerID];
  [(NSMutableDictionary *)managers removeObjectForKey:managerID];
}

- (void)netServiceDidPublish:(id)publish
{
  publishCopy = publish;
  v4 = streams_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = publishCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Published net service = %@", &v5, 0xCu);
  }
}

- (void)netService:(id)service didNotPublish:(id)publish
{
  serviceCopy = service;
  publishCopy = publish;
  v8 = streams_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000959D0(serviceCopy, publishCopy, v8);
  }

  [(SDStreamManager *)self unpublish];
  v9 = sub_1001F0530(2.0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000952E0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)netServiceDidStop:(id)stop
{
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Publisher stopped publishing", v4, 2u);
  }
}

- (void)netService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream
{
  outputStreamCopy = outputStream;
  streamCopy = stream;
  v9 = [[SDStreamHandler alloc] initWithInputStream:streamCopy outputStream:outputStreamCopy isClient:0];

  if (v9)
  {
    v10 = [[SDCompanionStream alloc] initWithStreamHandler:v9];
    [(SDCompanionStream *)v10 setDelegate:self];
    [(SDCompanionStream *)v10 start];
    [(NSMutableArray *)self->_incomingStreams addObject:v10];
    v11 = streams_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Net service did accept streams", v12, 2u);
    }
  }

  else
  {
    v10 = streams_log();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      sub_100095A58();
    }
  }
}

- (void)continuationStream:(id)stream connectedToService:(id)service withFileHandle:(id)handle acceptHandler:(id)handler
{
  streamCopy = stream;
  serviceCopy = service;
  handleCopy = handle;
  handlerCopy = handler;
  p_managers = &self->_managers;
  managers = self->_managers;
  managerID = [serviceCopy managerID];
  v17 = [(NSMutableDictionary *)managers objectForKeyedSubscript:managerID];

  if (v17)
  {
    if (objc_opt_respondsToSelector())
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000956BC;
      v23[3] = &unk_1008CDB38;
      v24 = handlerCopy;
      [v17 manager:self connectedToService:serviceCopy withFileHandle:handleCopy acceptHandler:v23];
    }

    bundleID = [v17 bundleID];
    [streamCopy setBundleID:bundleID];

    identifier = [serviceCopy identifier];
    [streamCopy setIdentifier:identifier];

    continuationStreams = self->_continuationStreams;
    identifier2 = [streamCopy identifier];
    [(NSMutableDictionary *)continuationStreams setObject:streamCopy forKeyedSubscript:identifier2];

    [(NSMutableArray *)self->_incomingStreams removeObject:streamCopy];
  }

  else
  {
    v22 = streams_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100095A8C(serviceCopy, p_managers, v22);
    }
  }
}

- (void)companionStreamClosedStreams:(id)streams
{
  streamsCopy = streams;
  [streamsCopy setDelegate:0];
  identifier = [streamsCopy identifier];

  if (identifier)
  {
    continuationStreams = self->_continuationStreams;
    identifier2 = [streamsCopy identifier];
    [(NSMutableDictionary *)continuationStreams removeObjectForKey:identifier2];
  }

  [(NSMutableArray *)self->_incomingStreams removeObject:streamsCopy];
}

@end