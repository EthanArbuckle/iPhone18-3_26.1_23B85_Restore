@interface _DASRemoteDeviceNearbyMonitor
+ (id)sharedMonitorWithDaemon:(id)daemon;
- (BOOL)isRemoteDeviceNearby:(id)nearby;
- (BOOL)resetNearbyDevicesWithCurrentDevices:(id)devices;
- (BOOL)unprotectedIsAlreadyPendingWidget:(id)widget;
- (_DASRemoteDeviceNearbyMonitor)initWithDaemon:(id)daemon;
- (id)createParameters;
- (id)remoteDevices;
- (id)setUpNetworkBrowserWithDevices:(id)devices;
- (void)protectedRegisterForRemoteDevices;
- (void)registerForRemoteDeviceWithActivity:(id)activity;
- (void)setUpBrowserResultsChanged:(id)changed;
- (void)unregisterForRemoteDeviceWithActivity:(id)activity;
- (void)updateDeviceLost:(id)lost;
- (void)updateDeviceNearby:(id)nearby;
@end

@implementation _DASRemoteDeviceNearbyMonitor

- (_DASRemoteDeviceNearbyMonitor)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v16.receiver = self;
  v16.super_class = _DASRemoteDeviceNearbyMonitor;
  v6 = [(_DASRemoteDeviceNearbyMonitor *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemon, daemon);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.nearbyRemoteMonitor.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = +[NSMutableSet set];
    pendingWidgets = v7->_pendingWidgets;
    v7->_pendingWidgets = v11;

    v13 = +[NSMutableSet set];
    nearbyDevices = v7->_nearbyDevices;
    v7->_nearbyDevices = v13;

    *&v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)sharedMonitorWithDaemon:(id)daemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AA58;
  block[3] = &unk_1001B5668;
  daemonCopy = daemon;
  v3 = qword_10020AE48;
  v4 = daemonCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_10020AE48, block);
  }

  v5 = qword_10020AE50;
  v6 = qword_10020AE50;

  return v5;
}

- (id)remoteDevices
{
  v3 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pendingWidgets = [(_DASRemoteDeviceNearbyMonitor *)self pendingWidgets];
  v5 = [pendingWidgets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(pendingWidgets);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        remoteDevice = [v9 remoteDevice];

        if (remoteDevice)
        {
          remoteDevice2 = [v9 remoteDevice];
          [v3 addObject:remoteDevice2];
        }
      }

      v6 = [pendingWidgets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)unprotectedIsAlreadyPendingWidget:(id)widget
{
  widgetCopy = widget;
  pendingWidgets = [(_DASRemoteDeviceNearbyMonitor *)self pendingWidgets];
  v6 = [pendingWidgets containsObject:widgetCopy];

  return v6;
}

- (void)registerForRemoteDeviceWithActivity:(id)activity
{
  activityCopy = activity;
  remoteDevice = [activityCopy remoteDevice];
  if (remoteDevice && [activityCopy targetDevice] == 3)
  {
    startAfter = [activityCopy startAfter];
    [startAfter timeIntervalSinceNow];
    v8 = v7;

    if (v8 <= 0.0)
    {
      queue = self->_queue;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10001AD54;
      v10[3] = &unk_1001B56E0;
      v10[4] = self;
      v11 = activityCopy;
      dispatch_sync(queue, v10);
    }
  }

  else
  {
  }
}

- (void)unregisterForRemoteDeviceWithActivity:(id)activity
{
  activityCopy = activity;
  remoteDevice = [activityCopy remoteDevice];
  if (remoteDevice)
  {
    v6 = remoteDevice;
    targetDevice = [activityCopy targetDevice];

    if (targetDevice == 3)
    {
      queue = self->_queue;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10001AEB8;
      v9[3] = &unk_1001B56E0;
      v9[4] = self;
      v10 = activityCopy;
      dispatch_sync(queue, v9);
    }
  }
}

- (void)updateDeviceLost:(id)lost
{
  lostCopy = lost;
  v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011C708();
  }

  os_unfair_lock_lock(&self->_lock);
  nearbyDevices = [(_DASRemoteDeviceNearbyMonitor *)self nearbyDevices];
  v7 = [nearbyDevices containsObject:lostCopy];

  if (v7)
  {
    v8 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = lostCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote Device %@ is no longer nearby", &v10, 0xCu);
    }

    nearbyDevices2 = [(_DASRemoteDeviceNearbyMonitor *)self nearbyDevices];
    [nearbyDevices2 removeObject:lostCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateDeviceNearby:(id)nearby
{
  nearbyCopy = nearby;
  v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011C77C();
  }

  os_unfair_lock_lock(&self->_lock);
  nearbyDevices = [(_DASRemoteDeviceNearbyMonitor *)self nearbyDevices];
  [nearbyDevices addObject:nearbyCopy];

  os_unfair_lock_unlock(&self->_lock);
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001B1C4;
  v9[3] = &unk_1001B56E0;
  v9[4] = self;
  v10 = nearbyCopy;
  v8 = nearbyCopy;
  dispatch_async(v7, v9);
}

- (BOOL)isRemoteDeviceNearby:(id)nearby
{
  nearbyCopy = nearby;
  os_unfair_lock_lock(&self->_lock);
  nearbyDevices = [(_DASRemoteDeviceNearbyMonitor *)self nearbyDevices];
  v6 = [nearbyDevices containsObject:nearbyCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (BOOL)resetNearbyDevicesWithCurrentDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [(NSSet *)self->_lastRegisteredDevices mutableCopy];
  v17 = devicesCopy;
  [v5 minusSet:devicesCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        os_unfair_lock_lock(&self->_lock);
        nearbyDevices = [(_DASRemoteDeviceNearbyMonitor *)self nearbyDevices];
        v13 = [nearbyDevices containsObject:v11];

        if (v13)
        {
          v14 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v23 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Setting %@ to not nearby", buf, 0xCu);
          }

          nearbyDevices2 = [(_DASRemoteDeviceNearbyMonitor *)self nearbyDevices];
          [nearbyDevices2 removeObject:v11];
        }

        os_unfair_lock_unlock(&self->_lock);
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  return 1;
}

- (void)protectedRegisterForRemoteDevices
{
  queue = [(_DASRemoteDeviceNearbyMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteDevices = [(_DASRemoteDeviceNearbyMonitor *)self remoteDevices];
  if ([remoteDevices isEqualToSet:self->_lastRegisteredDevices])
  {
    v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10011C860();
    }

    goto LABEL_13;
  }

  [(_DASRemoteDeviceNearbyMonitor *)self resetNearbyDevicesWithCurrentDevices:remoteDevices];
  browser = [(_DASRemoteDeviceNearbyMonitor *)self browser];

  if (browser)
  {
    browser2 = [(_DASRemoteDeviceNearbyMonitor *)self browser];
    nw_browser_set_browse_results_changed_handler(browser2, 0);

    browser3 = [(_DASRemoteDeviceNearbyMonitor *)self browser];
    nw_browser_set_state_changed_handler(browser3, 0);

    browser4 = [(_DASRemoteDeviceNearbyMonitor *)self browser];
    nw_browser_cancel(browser4);

    [(_DASRemoteDeviceNearbyMonitor *)self setBrowser:0];
    [(_DASRemoteDeviceNearbyMonitor *)self setLastRegisteredDevices:0];
  }

  if (![remoteDevices count])
  {
    goto LABEL_9;
  }

  v10 = [(_DASRemoteDeviceNearbyMonitor *)self setUpNetworkBrowserWithDevices:remoteDevices];
  if (v10)
  {
    v11 = v10;
    [(_DASRemoteDeviceNearbyMonitor *)self setUpBrowserStateChange:v10];
    [(_DASRemoteDeviceNearbyMonitor *)self setUpBrowserResultsChanged:v11];
    queue2 = [(_DASRemoteDeviceNearbyMonitor *)self queue];
    nw_browser_set_queue(v11, queue2);

    nw_browser_start(v11);
    [(_DASRemoteDeviceNearbyMonitor *)self setBrowser:v11];

LABEL_9:
    [(_DASRemoteDeviceNearbyMonitor *)self setLastRegisteredDevices:remoteDevices];
    v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = remoteDevices;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Create browser to monitor %@", &v13, 0xCu);
    }

    goto LABEL_13;
  }

  v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10011C7F0();
  }

LABEL_13:
}

- (id)createParameters
{
  application_service = nw_parameters_create_application_service();
  nw_parameters_set_include_screen_off_devices();
  nw_parameters_set_include_ble();
  v3 = xpc_array_create(0, 0);
  xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, off_100209B50);
  v4 = xpc_array_create(0, 0);
  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, off_100209B58);
  nw_parameters_set_required_netagent_classes();
  v5 = xpc_array_create(0, 0);
  xpc_array_set_uint64(v5, 0xFFFFFFFFFFFFFFFFLL, 0x3E9uLL);
  nw_parameters_set_preferred_interface_subtypes();
  if (application_service)
  {
    v6 = application_service;
  }

  else
  {
    v7 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10011C8A0();
    }
  }

  return application_service;
}

- (id)setUpNetworkBrowserWithDevices:(id)devices
{
  devicesCopy = devices;
  parameters = [(_DASRemoteDeviceNearbyMonitor *)self parameters];

  if (parameters || ([(_DASRemoteDeviceNearbyMonitor *)self createParameters], v6 = objc_claimAutoreleasedReturnValue(), [(_DASRemoteDeviceNearbyMonitor *)self setParameters:v6], v6, [(_DASRemoteDeviceNearbyMonitor *)self parameters], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    application_service = nw_browse_descriptor_create_application_service(off_100209B48);
    nw_browse_descriptor_set_browse_scope();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = devicesCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 UTF8String])
          {
            nw_browse_descriptor_add_device_filter();
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    parameters2 = [(_DASRemoteDeviceNearbyMonitor *)self parameters];
    v16 = nw_browser_create(application_service, parameters2);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setUpBrowserResultsChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001BC4C;
  v5[3] = &unk_1001B57D8;
  objc_copyWeak(&v6, &location);
  nw_browser_set_browse_results_changed_handler(changedCopy, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end