@interface CRCarKitMonitoringServiceAgent
- (BOOL)connection:(id)connection isMonitoringSerial:(id)serial;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CRCarKitMonitoringServiceAgent)init;
- (id)userInfoDictionaryForConnection:(id)connection;
- (void)_addConnection:(id)connection forCertificateSerial:(id)serial;
- (void)_removeConnection:(id)connection;
- (void)handleUpdatedVehicle:(id)vehicle enabled:(BOOL)enabled completion:(id)completion;
- (void)startMonitoringCertificateSerial:(id)serial reply:(id)reply;
- (void)stopMonitoringCertificateSerial:(id)serial reply:(id)reply;
@end

@implementation CRCarKitMonitoringServiceAgent

- (CRCarKitMonitoringServiceAgent)init
{
  v6.receiver = self;
  v6.super_class = CRCarKitMonitoringServiceAgent;
  v2 = [(CRCarKitMonitoringServiceAgent *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    [(CRCarKitMonitoringServiceAgent *)v2 setConnections:v3];

    v4 = dispatch_queue_create("com.apple.carkitd.monitoring_transactions", 0);
    [(CRCarKitMonitoringServiceAgent *)v2 setConnectionsQueue:v4];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarKitMonitoringServerService];
    [connectionCopy setExportedInterface:v10];
    [connectionCopy setExportedObject:self];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarKitMonitoringClientService];
    [connectionCopy setRemoteObjectInterface:v11];
    objc_initWeak(&location, connectionCopy);
    objc_initWeak(&from, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10005647C;
    v20 = &unk_1000DEAE0;
    objc_copyWeak(&v21, &from);
    objc_copyWeak(&v22, &location);
    v12 = objc_retainBlock(&v17);
    [connectionCopy setInterruptionHandler:{v12, v17, v18, v19, v20}];
    [connectionCopy setInvalidationHandler:v12];
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [connectionCopy serviceName];
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      *buf = 138412802;
      v26 = connectionCopy;
      v27 = 2112;
      v28 = serviceName;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Receiving monitoring service connection %@ to service %@ from %@", buf, 0x20u);
    }

    [connectionCopy resume];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100088144(connectionCopy, v10);
    }
  }

  return bOOLValue;
}

- (id)userInfoDictionaryForConnection:(id)connection
{
  connectionCopy = connection;
  userInfo = [connectionCopy userInfo];
  if (!userInfo)
  {
    userInfo = +[NSMutableDictionary dictionary];
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating a monitoring transaction for %@", &v8, 0xCu);
    }

    v6 = os_transaction_create();
    [userInfo setObject:v6 forKeyedSubscript:@"os-transaction"];

    [connectionCopy setUserInfo:userInfo];
  }

  return userInfo;
}

- (BOOL)connection:(id)connection isMonitoringSerial:(id)serial
{
  serialCopy = serial;
  v7 = [(CRCarKitMonitoringServiceAgent *)self userInfoDictionaryForConnection:connection];
  v8 = [v7 objectForKey:@"certificateSerial"];

  if (v8)
  {
    v9 = [v8 isEqualToData:serialCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)startMonitoringCertificateSerial:(id)serial reply:(id)reply
{
  serialCopy = serial;
  replyCopy = reply;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = serialCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "start monitoring for %@", buf, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  objc_initWeak(buf, self);
  connectionsQueue = [(CRCarKitMonitoringServiceAgent *)self connectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056968;
  block[3] = &unk_1000DF4C0;
  objc_copyWeak(&v16, buf);
  v11 = v9;
  v14 = v11;
  v12 = serialCopy;
  v15 = v12;
  dispatch_sync(connectionsQueue, block);

  replyCopy[2](replyCopy);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)stopMonitoringCertificateSerial:(id)serial reply:(id)reply
{
  serialCopy = serial;
  replyCopy = reply;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = serialCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "stop monitoring for %@", &v9, 0xCu);
  }

  v8 = +[NSXPCConnection currentConnection];
  [v8 invalidate];
  replyCopy[2](replyCopy);
}

- (void)handleUpdatedVehicle:(id)vehicle enabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  vehicleCopy = vehicle;
  completionCopy = completion;
  certificateSerialNumber = [vehicleCopy certificateSerialNumber];
  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [vehicleCopy identifier];
    *buf = 138412546;
    *&buf[4] = identifier;
    *&buf[12] = 1024;
    *&buf[14] = enabledCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "going to tell clients that %@ has enabled state %i", buf, 0x12u);
  }

  v11 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = sub_100056F5C;
  v42 = sub_100056F6C;
  v43 = 0;
  connectionsQueue = [(CRCarKitMonitoringServiceAgent *)self connectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056F74;
  block[3] = &unk_1000DDA88;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(connectionsQueue, block);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = *(*&buf[8] + 40);
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v14)
  {
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if ([(CRCarKitMonitoringServiceAgent *)self connection:v17 isMonitoringSerial:certificateSerialNumber])
        {
          v18 = CarGeneralLogging();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            processIdentifier = [v17 processIdentifier];
            *v37 = 67109120;
            v38 = processIdentifier;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "policy monitor sending vehicle update to process %d", v37, 8u);
          }

          v20 = [v17 remoteObjectProxyWithErrorHandler:&stru_1000DF4E0];
          dispatch_group_enter(v11);
          if (enabledCopy)
          {
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_10005702C;
            v30[3] = &unk_1000DD480;
            v31 = v11;
            [v20 willEnableCertificateSerial:certificateSerialNumber reply:v30];
            v21 = &v31;
          }

          else
          {
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_100057034;
            v28[3] = &unk_1000DD480;
            v29 = v11;
            [v20 willDisableCertificateSerial:certificateSerialNumber reply:v28];
            v21 = &v29;
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v14);
  }

  if (completionCopy)
  {
    v22 = dispatch_get_global_queue(17, 0);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10005703C;
    v25[3] = &unk_1000DD988;
    v26 = v11;
    v27 = completionCopy;
    dispatch_async(v22, v25);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_addConnection:(id)connection forCertificateSerial:(id)serial
{
  serialCopy = serial;
  connectionCopy = connection;
  v9 = [(CRCarKitMonitoringServiceAgent *)self userInfoDictionaryForConnection:connectionCopy];
  [v9 setObject:serialCopy forKey:@"certificateSerial"];

  connections = [(CRCarKitMonitoringServiceAgent *)self connections];
  [connections addObject:connectionCopy];
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [(CRCarKitMonitoringServiceAgent *)self userInfoDictionaryForConnection:connectionCopy];
  [v5 removeAllObjects];
  connections = [(CRCarKitMonitoringServiceAgent *)self connections];
  v7 = [connections containsObject:connectionCopy];

  connections2 = CarGeneralLogging();
  v9 = os_log_type_enabled(connections2, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 138412290;
      v11 = connectionCopy;
      _os_log_impl(&_mh_execute_header, connections2, OS_LOG_TYPE_DEFAULT, "Removing connection %@", &v10, 0xCu);
    }

    connections2 = [(CRCarKitMonitoringServiceAgent *)self connections];
    [connections2 removeObject:connectionCopy];
  }

  else if (v9)
  {
    v10 = 138412290;
    v11 = connectionCopy;
    _os_log_impl(&_mh_execute_header, connections2, OS_LOG_TYPE_DEFAULT, "Connection %@ not being monitored by service agent", &v10, 0xCu);
  }
}

@end