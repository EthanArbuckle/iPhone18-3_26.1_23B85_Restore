@interface MSDNearbyObjectMonitor
- (MSDNearbyObjectMonitor)initWithObserver:(id)a3;
- (MSDNearbyObjectMonitorProtocol)observer;
- (void)_feedNewRSSIReadingReceivedFromDevice:(id)a3;
- (void)_start;
- (void)_stop;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)sessionDidStartRunning:(id)a3;
- (void)sessionSuspensionEnded:(id)a3;
- (void)sessionWasSuspended:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation MSDNearbyObjectMonitor

- (MSDNearbyObjectMonitor)initWithObserver:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSDNearbyObjectMonitor;
  v5 = [(MSDNearbyObjectMonitor *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.NearbyObjectMonitor", 0);
    [(MSDNearbyObjectMonitor *)v5 setQueue:v6];

    [(MSDNearbyObjectMonitor *)v5 setObserver:v4];
    v7 = [NSMutableDictionary dictionaryWithCapacity:0];
    [(MSDNearbyObjectMonitor *)v5 setNearbyObjects:v7];
  }

  return v5;
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = [(MSDNearbyObjectMonitor *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A29EC;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)stop
{
  objc_initWeak(&location, self);
  v3 = [(MSDNearbyObjectMonitor *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A2AF4;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_start
{
  v3 = [(MSDNearbyObjectMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: Starting monitor!", &buf, 2u);
  }

  v5 = [(MSDNearbyObjectMonitor *)self niSession];

  if (v5)
  {
    goto LABEL_9;
  }

  v6 = [[NIRegionPredicate alloc] initWithName:@"Immediate" devicePresencePreset:1];
  v7 = [[NIRegionPredicate alloc] initWithName:@"SensorMax" devicePresencePreset:5];
  v8 = [NIDevicePresenceConfiguration alloc];
  v33 = 0;
  v9 = [v8 initWithInnerBoundary:v6 outerBoundary:v7 error:&v33];
  v10 = v33;
  if (v9)
  {
    [v9 setAllowedDevices:4];
    v11 = objc_alloc_init(NISession);
    [(MSDNearbyObjectMonitor *)self setNiSession:v11];

    v12 = [(MSDNearbyObjectMonitor *)self niSession];
    [v12 setDelegate:self];

    v13 = [(MSDNearbyObjectMonitor *)self queue];
    v14 = [(MSDNearbyObjectMonitor *)self niSession];
    [v14 setDelegateQueue:v13];

    v15 = [(MSDNearbyObjectMonitor *)self niSession];
    [v15 runWithConfiguration:v9];
  }

  else
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E6574(v10);
    }
  }

  if (v9)
  {
LABEL_9:
    v16 = [(MSDNearbyObjectMonitor *)self deviceScanner];

    if (!v16)
    {
      objc_initWeak(&buf, self);
      v17 = objc_alloc_init(SFDeviceDiscovery);
      [(MSDNearbyObjectMonitor *)self setDeviceScanner:v17];

      v18 = [(MSDNearbyObjectMonitor *)self queue];
      v19 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [v19 setDispatchQueue:v18];

      v20 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [v20 setChangeFlags:13];

      v21 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [v21 setScanRate:20];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000A2F90;
      v30[3] = &unk_10016BF78;
      objc_copyWeak(&v31, &buf);
      v22 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [v22 setDeviceFoundHandler:v30];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000A2FEC;
      v28[3] = &unk_10016BF78;
      objc_copyWeak(&v29, &buf);
      v23 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [v23 setDeviceLostHandler:v28];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000A3048;
      v26[3] = &unk_10016BFA0;
      objc_copyWeak(&v27, &buf);
      v24 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [v24 setDeviceChangedHandler:v26];

      v25 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [v25 activateWithCompletion:&stru_10016BFC0];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&buf);
    }
  }
}

- (void)_stop
{
  v3 = [(MSDNearbyObjectMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: Stopping monitor!", v7, 2u);
  }

  v5 = [(MSDNearbyObjectMonitor *)self niSession];

  if (v5)
  {
    v6 = [(MSDNearbyObjectMonitor *)self niSession];
    [v6 invalidate];
  }
}

- (void)_feedNewRSSIReadingReceivedFromDevice:(id)a3
{
  v17 = a3;
  v4 = [v17 idsIdentifier];
  v5 = [v17 model];
  v6 = [v17 bleDevice];
  v7 = [v6 advertisementFields];
  v8 = [v7 objectForKeyedSubscript:@"ch"];
  v9 = v8;
  v10 = &off_10017B278;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (([v17 deviceFlags] & 0x400) != 0 && v4 && v5)
  {
    v12 = [NIBluetoothSample alloc];
    v13 = [v17 bleDevice];
    v14 = [v12 initWithRSSI:v4 identifier:v5 model:objc_msgSend(v11 channel:"intValue") machContinuousTimeSeconds:{objc_msgSend(v13, "rssi"), mach_absolute_time()}];

    v15 = [(MSDNearbyObjectMonitor *)self niSession];
    v16 = [v15 devicePresenceNotifier];
    [v16 notifyBluetoothSample:v14];
  }
}

- (void)sessionDidStartRunning:(id)a3
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: NISession is running!", v4, 2u);
  }
}

- (void)sessionWasSuspended:(id)a3
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: NISession suspended!", v4, 2u);
  }
}

- (void)sessionSuspensionEnded:(id)a3
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: NISession suspension ended!", v8, 2u);
  }

  v5 = [(MSDNearbyObjectMonitor *)self niSession];
  v6 = [(MSDNearbyObjectMonitor *)self niSession];
  v7 = [v6 configuration];
  [v5 runWithConfiguration:v7];
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000E6680(v5);
  }

  v7 = [(MSDNearbyObjectMonitor *)self deviceScanner];

  if (v7)
  {
    v8 = [(MSDNearbyObjectMonitor *)self deviceScanner];
    [v8 invalidate];

    [(MSDNearbyObjectMonitor *)self setDeviceScanner:0];
  }

  v9 = [(MSDNearbyObjectMonitor *)self niSession];

  if (v9)
  {
    [(MSDNearbyObjectMonitor *)self setNiSession:0];
  }
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E6704();
  }

  v11 = [v8 deviceIdentifier];
  if (v11)
  {
    v12 = [(MSDNearbyObjectMonitor *)self nearbyObjects];
    v13 = [v12 objectForKey:v11];

    if (v9)
    {
      v14 = [v9 devicePresencePreset] == 1;
      if (v13)
      {
LABEL_6:
        if (v14 == [(MSDNearbyObject *)v13 isInBubble])
        {
LABEL_12:

          goto LABEL_13;
        }

        [(MSDNearbyObject *)v13 updateIsInBubble:v14];
LABEL_10:
        v16 = [(MSDNearbyObjectMonitor *)self observer];

        if (v16)
        {
          v17 = [(MSDNearbyObjectMonitor *)self observer];
          [v17 monitorDidUpdateRegionOfNearbyObject:v13];
        }

        goto LABEL_12;
      }
    }

    else
    {
      v14 = 0;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    v13 = [[MSDNearbyObject alloc] initWithIdentifier:v11 andIsInBubble:v14];
    v15 = [(MSDNearbyObjectMonitor *)self nearbyObjects];
    [v15 setObject:v13 forKey:v11];

    goto LABEL_10;
  }

LABEL_13:
}

- (MSDNearbyObjectMonitorProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end