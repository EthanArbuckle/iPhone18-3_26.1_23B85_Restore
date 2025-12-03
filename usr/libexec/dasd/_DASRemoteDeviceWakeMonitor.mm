@interface _DASRemoteDeviceWakeMonitor
+ (BOOL)appliesToActivity:(id)activity;
+ (id)sharedMonitorWithDaemon:(id)daemon;
- (BOOL)isRemoteDeviceAwake:(id)awake;
- (BOOL)unprotectedIsAlreadyPendingActivity:(id)activity;
- (_DASRemoteDeviceWakeMonitor)initWithDaemon:(id)daemon;
- (id)unprotectedInitializeMonitorForDevice:(id)device;
- (void)deviceIsAsleepDidChange:(id)change isAsleep:(BOOL)asleep;
- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected;
- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby;
- (void)registerRemoteDeviceWakeStateWithActivity:(id)activity;
- (void)unregisterRemoteDeviceWakeStateWithActivity:(id)activity;
@end

@implementation _DASRemoteDeviceWakeMonitor

- (_DASRemoteDeviceWakeMonitor)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v18.receiver = self;
  v18.super_class = _DASRemoteDeviceWakeMonitor;
  v6 = [(_DASRemoteDeviceWakeMonitor *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemon, daemon);
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

+ (id)sharedMonitorWithDaemon:(id)daemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000412C0;
  block[3] = &unk_1001B5668;
  daemonCopy = daemon;
  v3 = qword_10020B000;
  v4 = daemonCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_10020B000, block);
  }

  v5 = qword_10020B008;
  v6 = qword_10020B008;

  return v5;
}

+ (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  remoteDevice = [activityCopy remoteDevice];
  if (!remoteDevice || [activityCopy targetDevice] != 1)
  {

    goto LABEL_6;
  }

  requiresRemoteDeviceWake = [activityCopy requiresRemoteDeviceWake];

  if ((requiresRemoteDeviceWake & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (BOOL)isRemoteDeviceAwake:(id)awake
{
  awakeCopy = awake;
  v5 = self->_deviceMonitors;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_deviceMonitors objectForKeyedSubscript:awakeCopy];
  v7 = v6;
  if (v6)
  {
    isAsleep = [v6 isAsleep];
    v9 = [(_DASRemoteDeviceWakeMonitor *)self unprotectedIsRemoteDeviceConnected:v7];
    v10 = [(_DASRemoteDeviceWakeMonitor *)self unprotectedIsRemoteDeviceNearby:v7];
    v11 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"awake";
      if (isAsleep)
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
      v20 = awakeCopy;
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

    v15 = (isAsleep ^ 1) & v10;
  }

  else
  {
    v16 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10011E294();
    }

    v17 = [NRDeviceIdentifier copyDeviceIdentifierWithIDSDeviceID:awakeCopy];
    v7 = [(_DASRemoteDeviceWakeMonitor *)self unprotectedInitializeMonitorForDevice:v17];
    [(NSMutableDictionary *)self->_deviceMonitors setObject:v7 forKeyedSubscript:awakeCopy];

    v15 = 0;
  }

  objc_sync_exit(v5);
  return v15;
}

- (void)registerRemoteDeviceWakeStateWithActivity:(id)activity
{
  activityCopy = activity;
  if ([_DASRemoteDeviceWakeMonitor appliesToActivity:?])
  {
    startAfter = [activityCopy startAfter];
    [startAfter timeIntervalSinceNow];
    v6 = v5;

    if (v6 <= 0.0)
    {
      v7 = self->_deviceMonitors;
      objc_sync_enter(v7);
      if (![(_DASRemoteDeviceWakeMonitor *)self unprotectedIsAlreadyPendingActivity:activityCopy])
      {
        remoteDevice = [activityCopy remoteDevice];
        deviceMonitors = self->_deviceMonitors;
        if (!deviceMonitors)
        {
          v10 = +[NSMutableDictionary dictionary];
          v11 = self->_deviceMonitors;
          self->_deviceMonitors = v10;

          deviceMonitors = self->_deviceMonitors;
        }

        v12 = [(NSMutableDictionary *)deviceMonitors objectForKeyedSubscript:remoteDevice];

        if (!v12)
        {
          v13 = [NRDeviceIdentifier copyDeviceIdentifierWithIDSDeviceID:remoteDevice];
          v14 = [(_DASRemoteDeviceWakeMonitor *)self unprotectedInitializeMonitorForDevice:v13];
          if (v14)
          {
            [(NSMutableDictionary *)self->_deviceMonitors setObject:v14 forKeyedSubscript:remoteDevice];
            [(NSCountedSet *)self->_monitorCount addObject:remoteDevice];
            [(NSMutableSet *)self->_pendingActivities addObject:activityCopy];
          }
        }
      }

      objc_sync_exit(v7);
    }
  }
}

- (void)unregisterRemoteDeviceWakeStateWithActivity:(id)activity
{
  activityCopy = activity;
  if ([_DASRemoteDeviceWakeMonitor appliesToActivity:activityCopy])
  {
    v5 = self->_deviceMonitors;
    objc_sync_enter(v5);
    if (![(_DASRemoteDeviceWakeMonitor *)self unprotectedIsAlreadyPendingActivity:activityCopy])
    {
      remoteDevice = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
      if (os_log_type_enabled(remoteDevice, OS_LOG_TYPE_ERROR))
      {
        sub_10011E2FC();
      }

      goto LABEL_12;
    }

    remoteDevice = [activityCopy remoteDevice];
    [(NSMutableSet *)self->_pendingActivities removeObject:activityCopy];
    [(NSCountedSet *)self->_monitorCount removeObject:remoteDevice];
    v7 = [(NSMutableDictionary *)self->_deviceMonitors objectForKeyedSubscript:remoteDevice];

    if (v7)
    {
      if (([(NSCountedSet *)self->_monitorCount containsObject:remoteDevice]& 1) != 0)
      {
LABEL_12:

        objc_sync_exit(v5);
        goto LABEL_13;
      }

      [(NSMutableDictionary *)self->_deviceMonitors removeObjectForKey:remoteDevice];
      v8 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = activityCopy;
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

- (BOOL)unprotectedIsAlreadyPendingActivity:(id)activity
{
  activityCopy = activity;
  pendingActivities = [(_DASRemoteDeviceWakeMonitor *)self pendingActivities];
  v6 = [pendingActivities containsObject:activityCopy];

  return v6;
}

- (id)unprotectedInitializeMonitorForDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = [[NRDeviceMonitor alloc] initWithDeviceIdentifier:deviceCopy delegate:self queue:self->_queue];
    v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = deviceCopy;
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

- (void)deviceIsAsleepDidChange:(id)change isAsleep:(BOOL)asleep
{
  changeCopy = change;
  v30 = changeCopy;
  if (asleep)
  {
    v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifier = [v30 deviceIdentifier];
      *buf = 138412290;
      v42 = deviceIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is now asleep", buf, 0xCu);
    }
  }

  else
  {
    v8 = changeCopy;
    if ([changeCopy isConnected])
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
        pendingActivities = [(_DASRemoteDeviceWakeMonitor *)self pendingActivities];
        v10 = [pendingActivities countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v10)
        {
          obj = pendingActivities;
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
              remoteDevice = [v31 remoteDevice];
              v13 = [(NSMutableDictionary *)self->_deviceMonitors objectForKeyedSubscript:remoteDevice];
              deviceIdentifier2 = [v13 deviceIdentifier];
              nrDeviceIdentifier = [deviceIdentifier2 nrDeviceIdentifier];
              uUIDString = [nrDeviceIdentifier UUIDString];
              deviceIdentifier3 = [v30 deviceIdentifier];
              nrDeviceIdentifier2 = [deviceIdentifier3 nrDeviceIdentifier];
              uUIDString2 = [nrDeviceIdentifier2 UUIDString];
              v20 = [uUIDString isEqualToString:uUIDString2];

              if (v20)
              {
                [v25 addObject:v31];
              }
            }

            pendingActivities = obj;
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
        selfCopy = self;
        v6 = v25;
        dispatch_async(v21, block);
      }

      else
      {
        v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          deviceIdentifier4 = [v30 deviceIdentifier];
          *buf = 138412290;
          v42 = deviceIdentifier4;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ awake, connected, but not nearby", buf, 0xCu);
        }
      }
    }

    else
    {
      v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        deviceIdentifier5 = [v30 deviceIdentifier];
        *buf = 138412290;
        v42 = deviceIdentifier5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ awake but disconnected", buf, 0xCu);
      }
    }
  }
}

- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected
{
  connectedCopy = connected;
  changeCopy = change;
  v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier = [changeCopy deviceIdentifier];
    v8 = deviceIdentifier;
    v9 = @"disconnected";
    if (connectedCopy)
    {
      v9 = @"connected";
    }

    v10 = 138412546;
    v11 = deviceIdentifier;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is now %@", &v10, 0x16u);
  }
}

- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  changeCopy = change;
  v6 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier = [changeCopy deviceIdentifier];
    v8 = deviceIdentifier;
    v9 = @"not nearby";
    if (nearbyCopy)
    {
      v9 = @"nearby";
    }

    v10 = 138412546;
    v11 = deviceIdentifier;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is now %@", &v10, 0x16u);
  }
}

@end