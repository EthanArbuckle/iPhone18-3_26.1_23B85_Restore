@interface SDStreamManager
+ (id)sharedManager;
- (BOOL)servicesContainIdentifier:(id)a3;
- (SDStreamManager)initWithServiceType:(id)a3;
- (void)activityContinuationPayloadSent:(id)a3;
- (void)addObservers;
- (void)addService:(id)a3;
- (void)closeStreamsForIdentifier:(id)a3;
- (void)companionStreamClosedStreams:(id)a3;
- (void)continuationStream:(id)a3 connectedToService:(id)a4 withFileHandle:(id)a5 acceptHandler:(id)a6;
- (void)dealloc;
- (void)debugInfoRequested:(id)a3;
- (void)getContinuationStreamsForMessage:(id)a3 bundleID:(id)a4 usingID:(id)a5 completionHandler:(id)a6;
- (void)netService:(id)a3 didAcceptConnectionWithInputStream:(id)a4 outputStream:(id)a5;
- (void)netService:(id)a3 didNotPublish:(id)a4;
- (void)netServiceDidPublish:(id)a3;
- (void)netServiceDidStop:(id)a3;
- (void)publish;
- (void)publishTimerFired:(id)a3;
- (void)registerConnectedStreams;
- (void)registerManager:(id)a3;
- (void)removeObservers;
- (void)removeService:(id)a3;
- (void)restartPublishTimer;
- (void)unpublish;
- (void)unregisterConnectedStreams;
- (void)unregisterManager:(id)a3;
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

- (SDStreamManager)initWithServiceType:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = SDStreamManager;
  v6 = [(SDStreamManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    service = v6->_service;
    v6->_service = 0;

    objc_storeStrong(&v7->_serviceType, a3);
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

- (void)debugInfoRequested:(id)a3
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

- (void)activityContinuationPayloadSent:(id)a3
{
  [a3 userInfo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100094018;
  v6 = v5[3] = &unk_1008CE028;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (BOOL)servicesContainIdentifier:(id)a3
{
  v4 = a3;
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

        v11 = [*(*(&v14 + 1) + 8 * i) serviceType];
        v12 = [v11 isEqualToString:v4];

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

- (void)getContinuationStreamsForMessage:(id)a3 bundleID:(id)a4 usingID:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v39 = a4;
  v38 = a5;
  v40 = a6;
  v10 = streams_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 objectForKeyedSubscript:kSFCompanionServiceBonjourNameKey];
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Streams are being requested for bonjour name = %@", buf, 0xCu);
  }

  v46 = NSLocalizedDescriptionKey;
  v47 = @"Could not set up internal streams";
  v12 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v12];

  v14 = +[SDStatusMonitor sharedMonitor];
  v15 = [v14 wirelessEnabled];

  if ((v15 & 1) != 0 || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 alwaysSendPayload], v16, v17))
  {
    v18 = [v9 objectForKeyedSubscript:{kSFCompanionServiceBonjourNameKey, self}];
    if (v18)
    {
      v19 = [[NSNetService alloc] initWithDomain:@"local." type:@"_continuity._tcp." name:v18];
      v20 = v19;
      v22 = v38;
      v21 = v39;
      v23 = v40;
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
            [(SDStreamHandler *)v25 setBundleID:v39];
            v27 = [SDCompanionStream alloc];
            v28 = [v9 objectForKeyedSubscript:kSFCompanionServiceAuthorDataKey];
            v29 = [(SDCompanionStream *)v27 initWithAuthorData:v28 streamHandler:v26];

            [(SDCompanionStream *)v29 setDelegate:v37];
            [(SDCompanionStream *)v29 setIdentifier:v38];
            [(SDCompanionStream *)v29 start];
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10009487C;
            v41[3] = &unk_1008CE648;
            v42 = v40;
            [(SDCompanionStream *)v29 getStreamsWithCompletionHandler:v41];
            [*(v37 + 48) setObject:v29 forKeyedSubscript:v38];

            v23 = v40;
          }

          else
          {
            v35 = streams_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_100095900();
            }

            (*(v40 + 2))(v40, 0, v13);
          }
        }

        else
        {
          v34 = streams_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1000958CC();
          }

          (*(v40 + 2))(v40, 0, v13);
        }
      }

      else
      {
        v33 = streams_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1000958CC();
        }

        (*(v40 + 2))(v40, 0, v13);
      }
    }

    else
    {
      v30 = streams_log();
      v22 = v38;
      v21 = v39;
      v23 = v40;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100095934();
      }

      (*(v40 + 2))(v40, 0, v13);
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
    v23 = v40;
    (*(v40 + 2))(v40, 0, v32);

    v22 = v38;
    v21 = v39;
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
    v6 = [v5 alwaysSendPayload];

    if ((v6 & 1) == 0)
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

- (void)publishTimerFired:(id)a3
{
  if (self->_connectedStreams <= 0)
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    v5 = [v4 alwaysSendPayload];

    if ((v5 & 1) == 0)
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

- (void)addService:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_companionServices containsObject:v4]& 1) != 0)
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
    [(NSMutableArray *)self->_companionServices addObject:v4];
    v6 = streams_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 serviceType];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Added service to publisher %@ with identifier %@", &v10, 0x16u);
    }

    v8 = +[SDStatusMonitor sharedMonitor];
    v9 = [v8 alwaysSendPayload];

    if (v9)
    {
      [(SDStreamManager *)self publish];
    }
  }
}

- (void)removeService:(id)a3
{
  v4 = a3;
  v5 = streams_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 serviceType];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removed stream support for activity with identifier = %@", &v8, 0xCu);
  }

  [(NSMutableArray *)self->_companionServices removeObject:v4];
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

- (void)closeStreamsForIdentifier:(id)a3
{
  continuationStreams = self->_continuationStreams;
  v5 = a3;
  v6 = [(NSMutableDictionary *)continuationStreams objectForKeyedSubscript:v5];
  [v6 stop];
  [(NSMutableDictionary *)self->_continuationStreams removeObjectForKey:v5];
}

- (void)registerManager:(id)a3
{
  managers = self->_managers;
  v4 = a3;
  v5 = [v4 managerID];
  [(NSMutableDictionary *)managers setObject:v4 forKeyedSubscript:v5];
}

- (void)unregisterManager:(id)a3
{
  managers = self->_managers;
  v4 = [a3 managerID];
  [(NSMutableDictionary *)managers removeObjectForKey:v4];
}

- (void)netServiceDidPublish:(id)a3
{
  v3 = a3;
  v4 = streams_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Published net service = %@", &v5, 0xCu);
  }
}

- (void)netService:(id)a3 didNotPublish:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = streams_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000959D0(v6, v7, v8);
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

- (void)netServiceDidStop:(id)a3
{
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Publisher stopped publishing", v4, 2u);
  }
}

- (void)netService:(id)a3 didAcceptConnectionWithInputStream:(id)a4 outputStream:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[SDStreamHandler alloc] initWithInputStream:v8 outputStream:v7 isClient:0];

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

- (void)continuationStream:(id)a3 connectedToService:(id)a4 withFileHandle:(id)a5 acceptHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  p_managers = &self->_managers;
  managers = self->_managers;
  v16 = [v11 managerID];
  v17 = [(NSMutableDictionary *)managers objectForKeyedSubscript:v16];

  if (v17)
  {
    if (objc_opt_respondsToSelector())
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000956BC;
      v23[3] = &unk_1008CDB38;
      v24 = v13;
      [v17 manager:self connectedToService:v11 withFileHandle:v12 acceptHandler:v23];
    }

    v18 = [v17 bundleID];
    [v10 setBundleID:v18];

    v19 = [v11 identifier];
    [v10 setIdentifier:v19];

    continuationStreams = self->_continuationStreams;
    v21 = [v10 identifier];
    [(NSMutableDictionary *)continuationStreams setObject:v10 forKeyedSubscript:v21];

    [(NSMutableArray *)self->_incomingStreams removeObject:v10];
  }

  else
  {
    v22 = streams_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100095A8C(v11, p_managers, v22);
    }
  }
}

- (void)companionStreamClosedStreams:(id)a3
{
  v7 = a3;
  [v7 setDelegate:0];
  v4 = [v7 identifier];

  if (v4)
  {
    continuationStreams = self->_continuationStreams;
    v6 = [v7 identifier];
    [(NSMutableDictionary *)continuationStreams removeObjectForKey:v6];
  }

  [(NSMutableArray *)self->_incomingStreams removeObject:v7];
}

@end