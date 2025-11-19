@interface _DASRemoteDeviceWakeMonitor
+ (BOOL)appliesToActivity:(id)a3;
+ (id)sharedMonitorWithDaemon:(id)a3;
- (BOOL)isRemoteDeviceAwake:(id)a3;
- (BOOL)unprotectedIsAlreadyPendingActivity:(id)a3;
- (_DASRemoteDeviceWakeMonitor)initWithDaemon:(id)a3;
- (id)unprotectedInitializeMonitorForDevice:(id)a3;
- (void)deviceIsAsleepDidChange:(id)a3 isAsleep:(BOOL)a4;
- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4;
- (void)deviceIsNearbyDidChange:(id)a3 isNearby:(BOOL)a4;
- (void)registerRemoteDeviceWakeStateWithActivity:(id)a3;
- (void)unregisterRemoteDeviceWakeStateWithActivity:(id)a3;
@end

@implementation _DASRemoteDeviceWakeMonitor

- (_DASRemoteDeviceWakeMonitor)initWithDaemon:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = _DASRemoteDeviceWakeMonitor;
  v6 = [(_DASRemoteDeviceWakeMonitor *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemon, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.remoteWakeMonitor.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = +[NSMutableDictionary dictionary];
    deviceMonitors = v7->_deviceMonitors;
    v7->_deviceMonitors = v11;

    v13 = +[NSMutableDictionary dictionary];
    connectedDevices = v7->_connectedDevices;
    v7->_connectedDevices = v13;

    v15 = +[NSMutableSet set];
    pendingActivities = v7->_pendingActivities;
    v7->_pendingActivities = v15;
  }

  return v7;
}

+ (id)sharedMonitorWithDaemon:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000412C0;
  block[3] = &unk_1001B5668;
  v9 = a3;
  v3 = qword_10020B000;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_10020B000, block);
  }

  v5 = qword_10020B008;
  v6 = qword_10020B008;

  return v5;
}

+ (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 remoteDevice];
  if (!v4 || [v3 targetDevice] != 1)
  {

    goto LABEL_6;
  }

  v5 = [v3 requiresRemoteDeviceWake];

  if ((v5 & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (BOOL)isRemoteDeviceAwake:(id)a3
{
  v4 = a3;
  v5 = self->_deviceMonitors;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_deviceMonitors objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isAsleep];
    v9 = [(_DASRemoteDeviceWakeMonitor *)self unprotectedIsRemoteDeviceConnected:v7];
    v10 = [(_DASRemoteDeviceWakeMonitor *)self unprotectedIsRemoteDeviceNearby:v7];
    v11 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"awake";
      if (v8)
      {
        v12 = @"asleep";
      }

      if (v9)
      {
        v13 = @"connected";
      }

      else
      {
        v13 = @"disconnected";
      }

      v19 = 138413058;
      v20 = v4;
      v22 = v12;
      v21 = 2112;
      v23 = 2112;
      v24 = v13;
      if (v10)
      {
        v14 = @"nearby";
      }

      else
      {
        v14 = @"not nearby";
      }

      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ is %@, %@, %@", &v19, 0x2Au);
    }

    v15 = (v8 ^ 1) & v10;
  }

  else
  {
    v16 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10011E294();
    }

    v17 = [NRDeviceIdentifier copyDeviceIdentifierWithIDSDeviceID:v4];
    v7 = [(_DASRemoteDeviceWakeMonitor *)self unprotectedInitializeMonitorForDevice:v17];
    [(NSMutableDictionary *)self->_deviceMonitors setObject:v7 forKeyedSubscript:v4];

    v15 = 0;
  }

  objc_sync_exit(v5);
  return v15;
}

- (void)registerRemoteDeviceWakeStateWithActivity:(id)a3
{
  v15 = a3;
  if ([_DASRemoteDeviceWakeMonitor appliesToActivity:?])
  {
    v4 = [v15 startAfter];
    [v4 timeIntervalSinceNow];
    v6 = v5;

    if (v6 <= 0.0)
    {
      v7 = self->_deviceMonitors;
      objc_sync_enter(v7);
      if (![(_DASRemoteDeviceWakeMonitor *)self unprotectedIsAlreadyPendingActivity:v15])
      {
        v8 = [v15 remoteDevice];
        deviceMonitors = self->_deviceMonitors;
        if (!deviceMonitors)
        {
          v10 = +[NSMutableDictionary dictionary];
          v11 = self->_deviceMonitors;
          self->_deviceMonitors = v10;

          deviceMonitors = self->_deviceMonitors;
        }

        v12 = [(NSMutableDictionary *)deviceMonitors objectForKeyedSubscript:v8];

        if (!v12)
        {
          v13 = [NRDeviceIdentifier copyDeviceIdentifierWithIDSDeviceID:v8];
          v14 = [(_DASRemoteDeviceWakeMonitor *)self unprotectedInitializeMonitorForDevice:v13];
          if (v14)
          {
            [(NSMutableDictionary *)self->_deviceMonitors setObject:v14 forKeyedSubscript:v8];
            [(NSCountedSet *)self->_monitorCount addObject:v8];
            [(NSMutableSet *)self->_pendingActivities addObject:v15];
          }
        }
      }

      objc_sync_exit(v7);
    }
  }
}

- (void)unregisterRemoteDeviceWakeStateWithActivity:(id)a3
{
  v4 = a3;
  if ([_DASRemoteDeviceWakeMonitor appliesToActivity:v4])
  {
    v5 = self->_deviceMonitors;
    objc_sync_enter(v5);
    if (![(_DASRemoteDeviceWakeMonitor *)self unprotectedIsAlreadyPendingActivity:v4])
    {
      v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10011E2FC();
      }

      goto LABEL_12;
    }

    v6 = [v4 remoteDevice];
    [(NSMutableSet *)self->_pendingActivities removeObject:v4];
    [(NSCountedSet *)self->_monitorCount removeObject:v6];
    v7 = [(NSMutableDictionary *)self->_deviceMonitors objectForKeyedSubscript:v6];

    if (v7)
    {
      if (([(NSCountedSet *)self->_monitorCount containsObject:v6]& 1) != 0)
      {
LABEL_12:

        objc_sync_exit(v5);
        goto LABEL_13;
      }

      [(NSMutableDictionary *)self->_deviceMonitors removeObjectForKey:v6];
      v8 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stop monitoring screen wake state for %@", &v9, 0xCu);
      }
    }

    else
    {
      v8 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10011E364();
      }
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)unprotectedIsAlreadyPendingActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASRemoteDeviceWakeMonitor *)self pendingActivities];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)unprotectedInitializeMonitorForDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[NRDeviceMonitor alloc] initWithDeviceIdentifier:v4 delegate:self queue:self->_queue];
    v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started monitoring screen wake state with identifier %@", &v17, 0xCu);
      }

      v5 = v5;
      v8 = v5;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10011E3CC();
      }

      v8 = 0;
    }
  }

  else
  {
    v5 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10011E434(v5, v9, v10, v11, v12, v13, v14, v15);
    }

    v8 = 0;
  }

  return v8;
}

- (void)deviceIsAsleepDidChange:(id)a3 isAsleep:(BOOL)a4
{
  v5 = a3;
  v30 = v5;
  if (a4)
  {
    v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v30 deviceIdentifier];
      *buf = 138412290;
      v42 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is now asleep", buf, 0xCu);
    }
  }

  else
  {
    v8 = v5;
    if ([v5 isConnected])
    {
      if ([v8 isNearby])
      {
        v25 = +[NSMutableSet set];
        v24 = self->_deviceMonitors;
        objc_sync_enter(v24);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v9 = [(_DASRemoteDeviceWakeMonitor *)self pendingActivities];
        v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v10)
        {
          obj = v9;
          v27 = *v37;
          do
          {
            v29 = v10;
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v37 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v36 + 1) + 8 * i);
              v12 = [v31 remoteDevice];
              v13 = [(NSMutableDictionary *)self->_deviceMonitors objectForKeyedSubscript:v12];
              v14 = [v13 deviceIdentifier];
              v15 = [v14 nrDeviceIdentifier];
              v16 = [v15 UUIDString];
              v17 = [v30 deviceIdentifier];
              v18 = [v17 nrDeviceIdentifier];
              v19 = [v18 UUIDString];
              v20 = [v16 isEqualToString:v19];

              if (v20)
              {
                [v25 addObject:v31];
              }
            }

            v9 = obj;
            v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v10);
        }

        objc_sync_exit(v24);
        v21 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100041FB4;
        block[3] = &unk_1001B56B8;
        v33 = v30;
        v34 = v25;
        v35 = self;
        v6 = v25;
        dispatch_async(v21, block);
      }

      else
      {
        v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v30 deviceIdentifier];
          *buf = 138412290;
          v42 = v23;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ awake, connected, but not nearby", buf, 0xCu);
        }
      }
    }

    else
    {
      v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v30 deviceIdentifier];
        *buf = 138412290;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ awake but disconnected", buf, 0xCu);
      }
    }
  }
}

- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 deviceIdentifier];
    v8 = v7;
    v9 = @"disconnected";
    if (v4)
    {
      v9 = @"connected";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is now %@", &v10, 0x16u);
  }
}

- (void)deviceIsNearbyDidChange:(id)a3 isNearby:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 deviceIdentifier];
    v8 = v7;
    v9 = @"not nearby";
    if (v4)
    {
      v9 = @"nearby";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is now %@", &v10, 0x16u);
  }
}

@end