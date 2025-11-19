@interface CPXService
- (CPXService)initWithLockdownContext:(_lockdown_connection *)a3;
- (id)receiveMessageWithError:(int *)a3;
- (void)checkNearbyDevices:(id)a3;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)handlePairingNotification:(id)a3;
- (void)startService;
- (void)stopService;
@end

@implementation CPXService

- (void)stopService
{
  if ([(CPXService *)self serviceStarted])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_pairObserver];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self->_unpairObserver];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self->_activeObserver];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self->_inactiveObserver];

    device = self->_device;
    v9[0] = NRDevicePropertyName;
    v9[1] = NRDevicePropertyUDID;
    v8 = [NSArray arrayWithObjects:v9 count:2];
    [(NRDevice *)device removePropertyObserver:self forPropertyChanges:v8];

    [(IDSService *)self->_service removeDelegate:self];
    if (self->_conn)
    {
      lockdown_disconnect();
    }

    xpc_transaction_end();
    [(CPXService *)self setServiceStarted:0];
  }
}

- (CPXService)initWithLockdownContext:(_lockdown_connection *)a3
{
  v13.receiver = self;
  v13.super_class = CPXService;
  v4 = [(CPXService *)&v13 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v4->_conn = a3;
      socket = lockdown_get_socket();
      v7 = sub_100007BD0(socket, &v5->_ipV6);
      clientHostIPAddress = v5->_clientHostIPAddress;
      v5->_clientHostIPAddress = v7;

      if (v5->_clientHostIPAddress)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v5->_clientHostIPAddress;
          v10 = @"(ipV4)";
          if (v5->_ipV6)
          {
            v10 = @"(ipV6)";
          }

          *buf = 138412546;
          v15 = v9;
          v16 = 2112;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initialized connection to listen for gizmos. Host: %@ %@", buf, 0x16u);
        }

        goto LABEL_8;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid connection.", buf, 2u);
    }

    v11 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v11 = v5;
LABEL_12:

  return v11;
}

- (void)handlePairingNotification:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:NRPairedDeviceRegistryDeviceDidPairNotification];

  if (v6)
  {
    v7 = @"GizmoPaired";
  }

  else
  {
    v8 = [v4 name];
    v9 = [v8 isEqualToString:NRPairedDeviceRegistryDeviceDidUnpairNotification];

    if (v9)
    {
      v7 = @"GizmoUnpaired";
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"NRPairedDeviceRegistryDevice"];
  v12 = [v11 valueForProperty:NRDevicePropertyUDID];
  v13 = v12;
  v14 = 0;
  if (v11)
  {
    if (v12)
    {
      v20[0] = @"GizmoUDIDKey";
      v20[1] = @"Command";
      v21[0] = v12;
      v21[1] = v7;
      v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
      if (v14)
      {
        if (!sub_100007ADC([(CPXService *)self conn], v14, &v15) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v17 = v7;
          v18 = 1024;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send %@ message: 0x%08x", buf, 0x12u);
        }
      }
    }
  }
}

- (void)startService
{
  if (![(CPXService *)self serviceStarted])
  {
    xpc_transaction_begin();
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.companionproxy"];
    [(CPXService *)self setService:v3];

    v4 = [(CPXService *)self service];
    [v4 addDelegate:self queue:&_dispatch_main_q];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    v6 = [v5 getPairedDevices];

    v7 = [v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v7)
    {
      v9 = *v44;
      v10 = NRDevicePropertyUDID;
      *&v8 = 67109120;
      v32 = v8;
      do
      {
        v11 = 0;
        v33 = v7;
        do
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v43 + 1) + 8 * v11);
          v42 = 0;
          v13 = [v12 valueForProperty:{v10, v32}];
          v14 = v13;
          if (v12)
          {
            v15 = v13 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            v16 = 0;
          }

          else
          {
            v48[0] = @"GizmoUDIDKey";
            v48[1] = @"Command";
            v49[0] = v13;
            v49[1] = @"GizmoPaired";
            v17 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
            v16 = v17;
            if (v17 && !sub_100007ADC([(CPXService *)self conn], v17, &v42))
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                buf = __PAIR64__(v42, v32);
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send paired message: 0x%08x", &buf, 8u);
              }

              v7 = v33;
            }
          }

          v11 = v11 + 1;
        }

        while (v7 != v11);
        v7 = [v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v7);
    }

    v18 = [(CPXService *)self service];
    v19 = [v18 devices];
    [(CPXService *)self checkNearbyDevices:v19];

    objc_initWeak(&buf, self);
    v20 = +[NSNotificationCenter defaultCenter];
    v21 = +[NSOperationQueue mainQueue];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000042CC;
    v40[3] = &unk_1000145C0;
    objc_copyWeak(&v41, &buf);
    v22 = [v20 addObserverForName:NRPairedDeviceRegistryDeviceDidPairNotification object:0 queue:v21 usingBlock:v40];
    [(CPXService *)self setPairObserver:v22];

    v23 = +[NSNotificationCenter defaultCenter];
    v24 = +[NSOperationQueue mainQueue];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000043DC;
    v38[3] = &unk_1000145C0;
    objc_copyWeak(&v39, &buf);
    v25 = [v23 addObserverForName:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0 queue:v24 usingBlock:v38];
    [(CPXService *)self setUnpairObserver:v25];

    v26 = +[NSNotificationCenter defaultCenter];
    v27 = +[NSOperationQueue mainQueue];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000447C;
    v36[3] = &unk_1000145C0;
    objc_copyWeak(&v37, &buf);
    v28 = [v26 addObserverForName:NRPairedDeviceRegistryDeviceDidBecomeActive object:0 queue:v27 usingBlock:v36];
    [(CPXService *)self setActiveObserver:v28];

    v29 = +[NSNotificationCenter defaultCenter];
    v30 = +[NSOperationQueue mainQueue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100004510;
    v34[3] = &unk_1000145C0;
    objc_copyWeak(&v35, &buf);
    v31 = [v29 addObserverForName:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0 queue:v30 usingBlock:v34];
    [(CPXService *)self setInactiveObserver:v31];

    [(CPXService *)self setServiceStarted:1];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&buf);
  }
}

- (id)receiveMessageWithError:(int *)a3
{
  v4 = [(CPXService *)self conn];

  return sub_100000F9C(v4, a3);
}

- (void)checkNearbyDevices:(id)a3
{
  v28 = 0;
  v4 = [(CPXService *)self device];

  if (v4)
  {
    v5 = [(CPXService *)self device];
    [(CPXService *)self udid];
  }

  else
  {
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = [v7 getActivePairedDevice];

    [v5 valueForProperty:NRDevicePropertyUDID];
  }
  v6 = ;
  v8 = v6;
  if (v5 && v6)
  {
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = [(CPXService *)self service];
    v11 = [v10 devices];
    v12 = [v9 deviceForNRDevice:v5 fromIDSDevices:v11];

    if ([v12 isNearby])
    {
      v13 = [v12 isActive];
    }

    else
    {
      v13 = 0;
    }

    if (![(CPXService *)self nearby]|| (v13 & 1) != 0)
    {
      v17 = 0;
      if ([(CPXService *)self nearby]|| ((v13 ^ 1) & 1) != 0)
      {
        goto LABEL_30;
      }

      [(CPXService *)self setNearby:1];
      [(CPXService *)self setDevice:v5];
      [(CPXService *)self setUdid:v8];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10000A5E8(self);
      }

      v20 = [(CPXService *)self device];
      v33[0] = NRDevicePropertyName;
      v33[1] = NRDevicePropertyUDID;
      v21 = [NSArray arrayWithObjects:v33 count:2];
      [v20 addPropertyObserver:self forPropertyChanges:v21];

      v31[0] = @"GizmoUDIDKey";
      v22 = [(CPXService *)self udid];
      v31[1] = @"Command";
      v32[0] = v22;
      v32[1] = @"GizmoAttach";
      v23 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
      v17 = [NSMutableDictionary dictionaryWithDictionary:v23];

      v24 = [(CPXService *)self device];
      LODWORD(v23) = NRWatchOSVersionForRemoteDevice();

      if (v23 >= 0x20000)
      {
        v25 = +[CPXIDSRelayCompanion defaultCPXIDSRelayCompanion];
        v26 = [(CPXService *)self clientHostIPAddress];
        v27 = [v25 copyLockdownPortNumWithRequireHostIP:v26 ipV6:{-[CPXService ipV6](self, "ipV6")}];
        [v17 setObject:v27 forKey:@"CompanionLockdownProxyPort"];
      }
    }

    else
    {
      [(CPXService *)self setNearby:0];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10000A548(self);
      }

      v35[0] = @"GizmoUDIDKey";
      v15 = [(CPXService *)self udid];
      v35[1] = @"Command";
      v36[0] = v15;
      v36[1] = @"GizmoDetach";
      v16 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
      v17 = [NSMutableDictionary dictionaryWithDictionary:v16];

      v18 = [(CPXService *)self device];
      v34[0] = NRDevicePropertyName;
      v34[1] = NRDevicePropertyUDID;
      v19 = [NSArray arrayWithObjects:v34 count:2];
      [v18 removePropertyObserver:self forPropertyChanges:v19];

      [(CPXService *)self setDevice:0];
      [(CPXService *)self setUdid:0];
    }

    if (v17 && !sub_100007ADC([(CPXService *)self conn], v17, &v28) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v30 = v28;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send attach/detach message: 0x%08x", buf, 8u);
    }
  }

  else
  {
    v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v14)
      {
        sub_10000A504();
      }
    }

    else if (v14)
    {
      sub_10000A4C0();
    }

    v17 = 0;
    v12 = 0;
  }

LABEL_30:
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NRDevicePropertyName;
  if ([v9 isEqualToString:NRDevicePropertyName])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 valueForProperty:v11];
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Watch Name changed from: %@ to %@", &v18, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobile.lockdown.paired_device_name_changed", @"com.apple.mobile.lockdown.paired_device_name_changed", 0, 1u);
  }

  else
  {
    v14 = NRDevicePropertyUDID;
    if ([v9 isEqualToString:NRDevicePropertyUDID])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 valueForProperty:v14];
        v18 = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Watch UDID changed from: %@ to %@", &v18, 0x16u);
      }

      v16 = [(CPXService *)self service];
      v17 = [v16 devices];
      [(CPXService *)self checkNearbyDevices:v17];
    }
  }
}

@end