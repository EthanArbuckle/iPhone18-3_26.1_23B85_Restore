@interface _NIServerTestWiFiOnlySession
- (_NIServerTestWiFiOnlySession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)_addPeers:(id)a3;
- (id)_disableWiFiAndReturnError;
- (id)_removePeers:(id)a3;
- (id)addObject:(id)a3;
- (id)configure;
- (id)disableAllServices;
- (id)pauseWithSource:(int64_t)a3;
- (id)removeObject:(id)a3;
- (id)run;
- (void)_handleFailedToAddPeer;
- (void)_handleFailedToRemovePeer;
- (void)_stopWiFiRanging:(id)a3;
- (void)_triggerWiFiRanging:(id)a3;
- (void)bluetoothAdvertisingAddressChanged:(unint64_t)a3;
- (void)deviceDiscovered:(id)a3;
- (void)deviceLost:(id)a3;
- (void)invalidate;
- (void)peerInactivityPeriodExceeded:(id)a3;
- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4;
- (void)wifiRangingRangeError:(const int *)a3;
- (void)wifiRangingReadiness:(const int *)a3;
@end

@implementation _NIServerTestWiFiOnlySession

- (_NIServerTestWiFiOnlySession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_NIServerTestWiFiOnlySession.mm" lineNumber:43 description:@"_NIWiFiRangingTestConfiguration given invalid configuration."];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"_NIServerTestWiFiOnlySession.mm" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_3:
  v31.receiver = self;
  v31.super_class = _NIServerTestWiFiOnlySession;
  v12 = [(NIServerBaseSession *)&v31 initWithResourcesManager:v9 configuration:v10 error:a5];
  if (v12)
  {
    v13 = [v9 clientConnectionQueue];
    v14 = *(v12 + 9);
    *(v12 + 9) = v13;

    v15 = [v10 copy];
    v16 = *(v12 + 14);
    *(v12 + 14) = v15;

    v17 = [NINearbyUpdatesEngine alloc];
    v18 = *(v12 + 14);
    v19 = *(v12 + 9);
    v20 = [v9 analytics];
    if (v9)
    {
      [v9 protobufLogger];
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    v21 = [(NINearbyUpdatesEngine *)v17 initWithConfiguration:v18 queue:v19 delegate:v12 dataSource:v12 analyticsManager:v20 protobufLogger:&v29 error:a5];
    v22 = *(v12 + 6);
    *(v12 + 6) = v21;

    if (v30)
    {
      sub_10000AD84(v30);
    }

    if (v9)
    {
      [v9 protobufLogger];
      v23 = v28;
    }

    else
    {
      v23 = 0uLL;
    }

    v24 = *(v12 + 11);
    *(v12 + 5) = v23;
    if (v24)
    {
      sub_10000AD84(v24);
    }

    operator new();
  }

  return 0;
}

- (void)invalidate
{
  if (self->_wifiRangingSession.__ptr_)
  {
    v2 = [(_NIServerTestWiFiOnlySession *)self _disableWiFiAndReturnError];
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,Invalidate. Error: %@", &v4, 0xCu);
    }
  }
}

- (id)disableAllServices
{
  ptr = self->_wifiRangingSession.__ptr_;
  if (ptr)
  {
    sub_10003FFEC(ptr);
    sub_100365AD0(&self->_wifiRangingSession, 0);
    sub_100365AD0(&self->_wifiRangingSession, 0);
  }

  return 0;
}

- (id)configure
{
  configuration = self->_configuration;
  if (!configuration)
  {
    sub_1004C386C();
  }

  v4 = [(_NIWiFiRangingTestConfiguration *)configuration peerDiscoveryToken];

  if (v4)
  {
    v5 = [(_NIWiFiRangingTestConfiguration *)self->_configuration parameters];

    if (v5)
    {
      v22.receiver = self;
      v22.super_class = _NIServerTestWiFiOnlySession;
      v6 = [(NIServerBaseSession *)&v22 resourcesManager];
      v7 = self;
      v8 = [v6 btResource];
      [v8 startAdvertising];

      v9 = [v6 btResource];
      [v9 startScanning];

      [v6 btResource];
      v10 = [objc_claimAutoreleasedReturnValue() nonConnectableAdvertisingAddress];
      if (v11)
      {
        v27 = v10;
        v12 = [[NSData alloc] initWithBytes:&v27 length:6];
        v13 = sub_100014B54();
        sub_10002DBAC(v13, v12);
      }

      v14 = [v6 serverSessionIdentifier];
      v15 = [v14 UUIDString];

      v16 = v15;
      sub_100004A08(&__p, [v15 UTF8String]);
      operator new();
    }

    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"Missing WiFi ranging parameters.";
    v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v17];
  }

  else
  {
    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"Peer discovery token nil or invalid.";
    v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v17];
  }

  v19 = v18;

  return v19;
}

- (id)run
{
  self->_shouldDeliverUpdates = 1;
  v10.receiver = self;
  v10.super_class = _NIServerTestWiFiOnlySession;
  v3 = [(NIServerBaseSession *)&v10 resourcesManager];
  v4 = [v3 lifecycleSupervisor];
  [v4 runWithConfigurationCalled];

  v5 = [(_NIWiFiRangingTestConfiguration *)self->_configuration peerDiscoveryToken];
  v11 = v5;
  v6 = [NSArray arrayWithObjects:&v11 count:1];

  v7 = [(_NIServerTestWiFiOnlySession *)self _addPeers:v6];
  if (v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C3898();
    }

    [(_NIServerTestWiFiOnlySession *)self _handleFailedToAddPeer];
  }

  else
  {
    v8 = [v3 lifecycleSupervisor];
    [v8 startedDiscoveringPeersWithTokens:v6];
  }

  return v7;
}

- (id)pauseWithSource:(int64_t)a3
{
  self->_shouldDeliverUpdates = 0;
  v4 = [(_NIServerTestWiFiOnlySession *)self disableAllServices];
  v8.receiver = self;
  v8.super_class = _NIServerTestWiFiOnlySession;
  v5 = [(NIServerBaseSession *)&v8 resourcesManager];
  v6 = [v5 lifecycleSupervisor];
  [v6 pauseCalled];

  return v4;
}

- (void)bluetoothAdvertisingAddressChanged:(unint64_t)a3
{
  v5 = a3;
  v3 = [[NSData alloc] initWithBytes:&v5 length:6];
  v4 = sub_100014B54();
  sub_10002DBAC(v4, v3);
}

- (void)deviceDiscovered:(id)a3
{
  v4 = a3;
  v5 = [NINearbyObject objectFromBluetoothDevice:v4];
  if (v5)
  {
    if (self->_pbLogger.__ptr_)
    {
      v6 = sub_100005288();
      ptr = self->_pbLogger.__ptr_;
      v8 = [v4 u64Identifier];
      sub_1002D63A8(v5, __p);
      sub_1002E1DCC(ptr, v8, __p, v6);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    [(_NIServerTestWiFiOnlySession *)self _triggerWiFiRanging:v4];
  }

  else
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C3900(v9);
    }
  }
}

- (void)deviceLost:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = [v4 u64Identifier];
    }

    else
    {
      v6 = 0;
    }

    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,device 0x%llx lost. stopping wifi ranging", &v9, 0xCu);
  }

  ptr = self->_wifiRangingSession.__ptr_;
  if (ptr)
  {
    sub_1000400F0(ptr);
  }

  else
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,no wifi ranging session to stop", &v9, 2u);
    }
  }
}

- (id)addObject:(id)a3
{
  v3 = a3;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,addObject noop: %@", &v6, 0xCu);
  }

  return 0;
}

- (id)removeObject:(id)a3
{
  v3 = a3;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,remove noop: %@", &v6, 0xCu);
  }

  return 0;
}

- (void)_triggerWiFiRanging:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 u64Identifier];
    v7 = qword_1009F9820;
    if (self->_wifiRangingSession.__ptr_)
    {
      v8 = v6;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        configuration = self->_configuration;
        *buf = 134218242;
        v28 = v8;
        v29 = 2112;
        v30 = configuration;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,_triggerWiFiRanging. Identifier: 0x%llx, WiFi ranging config: %@", buf, 0x16u);
      }

      v10 = [(_NIWiFiRangingTestConfiguration *)self->_configuration parameters];
      v11 = [v10 objectForKeyedSubscript:@"RangingRole"];

      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (([v11 isEqualToString:@"Initiator"] & 1) == 0)
        {
          if ([v11 isEqualToString:@"Responder"])
          {
            v12 = 2;
            goto LABEL_15;
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004C3944();
          }
        }
      }

      else
      {
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004C39B8(&self->_configuration, v14);
        }
      }

      v12 = 1;
LABEL_15:
      sub_10003FBF8(buf, v8, v12);
      sub_100040350(self->_wifiRangingSession.__ptr_, buf);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C3A34(v7, v15, v16, v17, v18, v19, v20, v21);
    }

    v26.receiver = self;
    v26.super_class = _NIServerTestWiFiOnlySession;
    v22 = [(NIServerBaseSession *)&v26 resourcesManager];
    v23 = [v22 remote];
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Failed to start WiFi service. session is nil";
    v24 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v25 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v24];
    [v23 uwbSessionDidFailWithError:v25];
  }

  else
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C3AAC(v13);
    }
  }
}

- (void)_stopWiFiRanging:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 u64Identifier];
    v7 = qword_1009F9820;
    if (self->_wifiRangingSession.__ptr_)
    {
      v8 = v6;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        configuration = self->_configuration;
        *buf = 134218242;
        v24 = v8;
        v25 = 2112;
        v26 = configuration;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,_stopWiFiRanging. Identifier: 0x%llx, WiFi ranging config: %@", buf, 0x16u);
      }

      sub_1000400F0(self->_wifiRangingSession.__ptr_);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C3AF0(v7, v11, v12, v13, v14, v15, v16, v17);
      }

      v22.receiver = self;
      v22.super_class = _NIServerTestWiFiOnlySession;
      v18 = [(NIServerBaseSession *)&v22 resourcesManager];
      v19 = [v18 remote];
      v27 = NSLocalizedDescriptionKey;
      v28 = @"Failed to stop WiFi service. session is nil";
      v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v21 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v20];
      [v19 uwbSessionDidFailWithError:v21];
    }
  }

  else
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C3B68(v10);
    }
  }
}

- (id)_addPeers:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _NIServerTestWiFiOnlySession;
  v5 = [(NIServerBaseSession *)&v19 resourcesManager];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [v5 btResource];
      v12 = [v10 rawToken];
      v13 = [v11 addPeerDiscoveryToken:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13;
}

- (id)_removePeers:(id)a3
{
  v21.receiver = self;
  v21.super_class = _NIServerTestWiFiOnlySession;
  v16 = a3;
  v3 = [(NIServerBaseSession *)&v21 resourcesManager];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v16;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [v3 btResource];
        v11 = [v9 rawToken];
        v12 = [v10 removePeerDiscoveryToken:v11];

        if (v12)
        {
          v13 = v12;

          v14 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v13;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#ses-wifi-test,#warning, failed to remove peer with error: %@", buf, 0xCu);
          }

          v5 = v13;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v6);
  }

  return v5;
}

- (void)_handleFailedToAddPeer
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v5.receiver = self;
  v5.super_class = _NIServerTestWiFiOnlySession;
  v3 = [(NIServerBaseSession *)&v5 resourcesManager];
  v4 = [v3 lifecycleSupervisor];
  [v4 failedToAddPeer];

  [(_NIServerTestWiFiOnlySession *)self invalidate];
}

- (void)_handleFailedToRemovePeer
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v5.receiver = self;
  v5.super_class = _NIServerTestWiFiOnlySession;
  v3 = [(NIServerBaseSession *)&v5 resourcesManager];
  v4 = [v3 lifecycleSupervisor];
  [v4 failedToRemovePeer];

  [(_NIServerTestWiFiOnlySession *)self invalidate];
}

- (id)_disableWiFiAndReturnError
{
  ptr = self->_wifiRangingSession.__ptr_;
  if (ptr)
  {
    sub_10003FFEC(ptr);
  }

  sub_100365AD0(&self->_wifiRangingSession, 0);
  sub_100365AD0(&self->_wifiRangingSession, 0);
  return 0;
}

- (void)wifiRangingRangeError:(const int *)a3
{
  sub_100040B10(*a3, __p);
  if (v14 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C3BAC(&v14, __p, v6);
  }

  v15 = NSLocalizedDescriptionKey;
  v16 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v7];

  clientQueue = self->_clientQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100367464;
  v11[3] = &unk_10098A2E8;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(clientQueue, v11);

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)wifiRangingReadiness:(const int *)a3
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100040B4C(*a3, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,Readiness update: %s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (void)peerInactivityPeriodExceeded:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  v11.receiver = self;
  v11.super_class = _NIServerTestWiFiOnlySession;
  v5 = [(NIServerBaseSession *)&v11 resourcesManager];
  v6 = [v5 btResource];
  v7 = [v6 deviceCache];
  v8 = [v4 rawToken];
  v9 = [v7 uncacheDeviceByTokenData:v8];

  if ((v9 & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C3C38();
  }

  if (self->_wifiRangingSession.__ptr_)
  {
    v10 = [(_NIServerTestWiFiOnlySession *)self pauseWithSource:2];
    if (v10 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C3CA0();
    }
  }
}

- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4
{
  v5 = a4;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-wifi-test,didUpdateNearbyObjects enter", buf, 2u);
  }

  clientQueue = self->_clientQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10036786C;
  v9[3] = &unk_10098A2E8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(clientQueue, v9);
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

@end