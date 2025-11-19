@interface CRCarKitMonitoringServiceAgent
- (BOOL)connection:(id)a3 isMonitoringSerial:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CRCarKitMonitoringServiceAgent)init;
- (id)userInfoDictionaryForConnection:(id)a3;
- (void)_addConnection:(id)a3 forCertificateSerial:(id)a4;
- (void)_removeConnection:(id)a3;
- (void)handleUpdatedVehicle:(id)a3 enabled:(BOOL)a4 completion:(id)a5;
- (void)startMonitoringCertificateSerial:(id)a3 reply:(id)a4;
- (void)stopMonitoringCertificateSerial:(id)a3 reply:(id)a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.private.carkit"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarKitMonitoringServerService];
    [v7 setExportedInterface:v10];
    [v7 setExportedObject:self];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarKitMonitoringClientService];
    [v7 setRemoteObjectInterface:v11];
    objc_initWeak(&location, v7);
    objc_initWeak(&from, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10005647C;
    v20 = &unk_1000DEAE0;
    objc_copyWeak(&v21, &from);
    objc_copyWeak(&v22, &location);
    v12 = objc_retainBlock(&v17);
    [v7 setInterruptionHandler:{v12, v17, v18, v19, v20}];
    [v7 setInvalidationHandler:v12];
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 serviceName];
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 processIdentifier]);
      *buf = 138412802;
      v26 = v7;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Receiving monitoring service connection %@ to service %@ from %@", buf, 0x20u);
    }

    [v7 resume];
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
      sub_100088144(v7, v10);
    }
  }

  return v9;
}

- (id)userInfoDictionaryForConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  if (!v4)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating a monitoring transaction for %@", &v8, 0xCu);
    }

    v6 = os_transaction_create();
    [v4 setObject:v6 forKeyedSubscript:@"os-transaction"];

    [v3 setUserInfo:v4];
  }

  return v4;
}

- (BOOL)connection:(id)a3 isMonitoringSerial:(id)a4
{
  v6 = a4;
  v7 = [(CRCarKitMonitoringServiceAgent *)self userInfoDictionaryForConnection:a3];
  v8 = [v7 objectForKey:@"certificateSerial"];

  if (v8)
  {
    v9 = [v8 isEqualToData:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)startMonitoringCertificateSerial:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "start monitoring for %@", buf, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  objc_initWeak(buf, self);
  v10 = [(CRCarKitMonitoringServiceAgent *)self connectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056968;
  block[3] = &unk_1000DF4C0;
  objc_copyWeak(&v16, buf);
  v11 = v9;
  v14 = v11;
  v12 = v6;
  v15 = v12;
  dispatch_sync(v10, block);

  v7[2](v7);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)stopMonitoringCertificateSerial:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "stop monitoring for %@", &v9, 0xCu);
  }

  v8 = +[NSXPCConnection currentConnection];
  [v8 invalidate];
  v6[2](v6);
}

- (void)handleUpdatedVehicle:(id)a3 enabled:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v23 = a3;
  v24 = a5;
  v8 = [v23 certificateSerialNumber];
  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v23 identifier];
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "going to tell clients that %@ has enabled state %i", buf, 0x12u);
  }

  v11 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = sub_100056F5C;
  v42 = sub_100056F6C;
  v43 = 0;
  v12 = [(CRCarKitMonitoringServiceAgent *)self connectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056F74;
  block[3] = &unk_1000DDA88;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(v12, block);

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
        if ([(CRCarKitMonitoringServiceAgent *)self connection:v17 isMonitoringSerial:v8])
        {
          v18 = CarGeneralLogging();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v17 processIdentifier];
            *v37 = 67109120;
            v38 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "policy monitor sending vehicle update to process %d", v37, 8u);
          }

          v20 = [v17 remoteObjectProxyWithErrorHandler:&stru_1000DF4E0];
          dispatch_group_enter(v11);
          if (v6)
          {
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_10005702C;
            v30[3] = &unk_1000DD480;
            v31 = v11;
            [v20 willEnableCertificateSerial:v8 reply:v30];
            v21 = &v31;
          }

          else
          {
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_100057034;
            v28[3] = &unk_1000DD480;
            v29 = v11;
            [v20 willDisableCertificateSerial:v8 reply:v28];
            v21 = &v29;
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v14);
  }

  if (v24)
  {
    v22 = dispatch_get_global_queue(17, 0);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10005703C;
    v25[3] = &unk_1000DD988;
    v26 = v11;
    v27 = v24;
    dispatch_async(v22, v25);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_addConnection:(id)a3 forCertificateSerial:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CRCarKitMonitoringServiceAgent *)self userInfoDictionaryForConnection:v7];
  [v9 setObject:v6 forKey:@"certificateSerial"];

  v8 = [(CRCarKitMonitoringServiceAgent *)self connections];
  [v8 addObject:v7];
}

- (void)_removeConnection:(id)a3
{
  v4 = a3;
  v5 = [(CRCarKitMonitoringServiceAgent *)self userInfoDictionaryForConnection:v4];
  [v5 removeAllObjects];
  v6 = [(CRCarKitMonitoringServiceAgent *)self connections];
  v7 = [v6 containsObject:v4];

  v8 = CarGeneralLogging();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing connection %@", &v10, 0xCu);
    }

    v8 = [(CRCarKitMonitoringServiceAgent *)self connections];
    [v8 removeObject:v4];
  }

  else if (v9)
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connection %@ not being monitored by service agent", &v10, 0xCu);
  }
}

@end