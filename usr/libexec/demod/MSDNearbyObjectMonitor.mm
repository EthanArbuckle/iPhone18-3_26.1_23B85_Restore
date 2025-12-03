@interface MSDNearbyObjectMonitor
- (MSDNearbyObjectMonitor)initWithObserver:(id)observer;
- (MSDNearbyObjectMonitorProtocol)observer;
- (void)_feedNewRSSIReadingReceivedFromDevice:(id)device;
- (void)_start;
- (void)_stop;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)sessionDidStartRunning:(id)running;
- (void)sessionSuspensionEnded:(id)ended;
- (void)sessionWasSuspended:(id)suspended;
- (void)start;
- (void)stop;
@end

@implementation MSDNearbyObjectMonitor

- (MSDNearbyObjectMonitor)initWithObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = MSDNearbyObjectMonitor;
  v5 = [(MSDNearbyObjectMonitor *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.NearbyObjectMonitor", 0);
    [(MSDNearbyObjectMonitor *)v5 setQueue:v6];

    [(MSDNearbyObjectMonitor *)v5 setObserver:observerCopy];
    v7 = [NSMutableDictionary dictionaryWithCapacity:0];
    [(MSDNearbyObjectMonitor *)v5 setNearbyObjects:v7];
  }

  return v5;
}

- (void)start
{
  objc_initWeak(&location, self);
  queue = [(MSDNearbyObjectMonitor *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A29EC;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)stop
{
  objc_initWeak(&location, self);
  queue = [(MSDNearbyObjectMonitor *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A2AF4;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_start
{
  queue = [(MSDNearbyObjectMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: Starting monitor!", &buf, 2u);
  }

  niSession = [(MSDNearbyObjectMonitor *)self niSession];

  if (niSession)
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

    niSession2 = [(MSDNearbyObjectMonitor *)self niSession];
    [niSession2 setDelegate:self];

    queue2 = [(MSDNearbyObjectMonitor *)self queue];
    niSession3 = [(MSDNearbyObjectMonitor *)self niSession];
    [niSession3 setDelegateQueue:queue2];

    niSession4 = [(MSDNearbyObjectMonitor *)self niSession];
    [niSession4 runWithConfiguration:v9];
  }

  else
  {
    niSession4 = sub_100063A54();
    if (os_log_type_enabled(niSession4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E6574(v10);
    }
  }

  if (v9)
  {
LABEL_9:
    deviceScanner = [(MSDNearbyObjectMonitor *)self deviceScanner];

    if (!deviceScanner)
    {
      objc_initWeak(&buf, self);
      v17 = objc_alloc_init(SFDeviceDiscovery);
      [(MSDNearbyObjectMonitor *)self setDeviceScanner:v17];

      queue3 = [(MSDNearbyObjectMonitor *)self queue];
      deviceScanner2 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [deviceScanner2 setDispatchQueue:queue3];

      deviceScanner3 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [deviceScanner3 setChangeFlags:13];

      deviceScanner4 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [deviceScanner4 setScanRate:20];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000A2F90;
      v30[3] = &unk_10016BF78;
      objc_copyWeak(&v31, &buf);
      deviceScanner5 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [deviceScanner5 setDeviceFoundHandler:v30];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000A2FEC;
      v28[3] = &unk_10016BF78;
      objc_copyWeak(&v29, &buf);
      deviceScanner6 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [deviceScanner6 setDeviceLostHandler:v28];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000A3048;
      v26[3] = &unk_10016BFA0;
      objc_copyWeak(&v27, &buf);
      deviceScanner7 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [deviceScanner7 setDeviceChangedHandler:v26];

      deviceScanner8 = [(MSDNearbyObjectMonitor *)self deviceScanner];
      [deviceScanner8 activateWithCompletion:&stru_10016BFC0];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&buf);
    }
  }
}

- (void)_stop
{
  queue = [(MSDNearbyObjectMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: Stopping monitor!", v7, 2u);
  }

  niSession = [(MSDNearbyObjectMonitor *)self niSession];

  if (niSession)
  {
    niSession2 = [(MSDNearbyObjectMonitor *)self niSession];
    [niSession2 invalidate];
  }
}

- (void)_feedNewRSSIReadingReceivedFromDevice:(id)device
{
  deviceCopy = device;
  idsIdentifier = [deviceCopy idsIdentifier];
  model = [deviceCopy model];
  bleDevice = [deviceCopy bleDevice];
  advertisementFields = [bleDevice advertisementFields];
  v8 = [advertisementFields objectForKeyedSubscript:@"ch"];
  v9 = v8;
  v10 = &off_10017B278;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (([deviceCopy deviceFlags] & 0x400) != 0 && idsIdentifier && model)
  {
    v12 = [NIBluetoothSample alloc];
    bleDevice2 = [deviceCopy bleDevice];
    v14 = [v12 initWithRSSI:idsIdentifier identifier:model model:objc_msgSend(v11 channel:"intValue") machContinuousTimeSeconds:{objc_msgSend(bleDevice2, "rssi"), mach_absolute_time()}];

    niSession = [(MSDNearbyObjectMonitor *)self niSession];
    devicePresenceNotifier = [niSession devicePresenceNotifier];
    [devicePresenceNotifier notifyBluetoothSample:v14];
  }
}

- (void)sessionDidStartRunning:(id)running
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: NISession is running!", v4, 2u);
  }
}

- (void)sessionWasSuspended:(id)suspended
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: NISession suspended!", v4, 2u);
  }
}

- (void)sessionSuspensionEnded:(id)ended
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDNearbyObjectMonitor: NISession suspension ended!", v8, 2u);
  }

  niSession = [(MSDNearbyObjectMonitor *)self niSession];
  niSession2 = [(MSDNearbyObjectMonitor *)self niSession];
  configuration = [niSession2 configuration];
  [niSession runWithConfiguration:configuration];
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000E6680(errorCopy);
  }

  deviceScanner = [(MSDNearbyObjectMonitor *)self deviceScanner];

  if (deviceScanner)
  {
    deviceScanner2 = [(MSDNearbyObjectMonitor *)self deviceScanner];
    [deviceScanner2 invalidate];

    [(MSDNearbyObjectMonitor *)self setDeviceScanner:0];
  }

  niSession = [(MSDNearbyObjectMonitor *)self niSession];

  if (niSession)
  {
    [(MSDNearbyObjectMonitor *)self setNiSession:0];
  }
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  objectCopy = object;
  regionCopy = region;
  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E6704();
  }

  deviceIdentifier = [objectCopy deviceIdentifier];
  if (deviceIdentifier)
  {
    nearbyObjects = [(MSDNearbyObjectMonitor *)self nearbyObjects];
    v13 = [nearbyObjects objectForKey:deviceIdentifier];

    if (regionCopy)
    {
      v14 = [regionCopy devicePresencePreset] == 1;
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
        observer = [(MSDNearbyObjectMonitor *)self observer];

        if (observer)
        {
          observer2 = [(MSDNearbyObjectMonitor *)self observer];
          [observer2 monitorDidUpdateRegionOfNearbyObject:v13];
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

    v13 = [[MSDNearbyObject alloc] initWithIdentifier:deviceIdentifier andIsInBubble:v14];
    nearbyObjects2 = [(MSDNearbyObjectMonitor *)self nearbyObjects];
    [nearbyObjects2 setObject:v13 forKey:deviceIdentifier];

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