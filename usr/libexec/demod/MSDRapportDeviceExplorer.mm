@interface MSDRapportDeviceExplorer
- (MSDRapportDeviceExplorer)initWithObserver:(id)observer;
- (MSDRapportDeviceExplorerProtocol)observer;
- (id)_findMatchingMSDRapportDeviceForRPCompanionLinkDevice:(id)device;
- (void)_activate;
- (void)_deactivate;
- (void)_handleRPCompanionLinkDeviceChanged:(id)changed withChanges:(unsigned int)changes;
- (void)_handleRPCompanionLinkDeviceFound:(id)found;
- (void)_handleRPCompanionLinkDeviceLost:(id)lost;
- (void)activate;
- (void)deactivate;
@end

@implementation MSDRapportDeviceExplorer

- (MSDRapportDeviceExplorer)initWithObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = MSDRapportDeviceExplorer;
  v5 = [(MSDRapportDeviceExplorer *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.RPDeviceExplorer", 0);
    [(MSDRapportDeviceExplorer *)v5 setQueue:v6];

    v7 = [NSMutableArray arrayWithCapacity:0];
    [(MSDRapportDeviceExplorer *)v5 setDevices:v7];

    [(MSDRapportDeviceExplorer *)v5 setObserver:observerCopy];
  }

  return v5;
}

- (void)activate
{
  objc_initWeak(&location, self);
  queue = [(MSDRapportDeviceExplorer *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000459CC;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)deactivate
{
  objc_initWeak(&location, self);
  queue = [(MSDRapportDeviceExplorer *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100045AD4;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_activate
{
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceExplorer: Activating explorer!", buf, 2u);
  }

  rpClient = [(MSDRapportDeviceExplorer *)self rpClient];

  if (!rpClient)
  {
    objc_initWeak(buf, self);
    v6 = objc_alloc_init(RPCompanionLinkClient);
    [(MSDRapportDeviceExplorer *)self setRpClient:v6];

    queue2 = [(MSDRapportDeviceExplorer *)self queue];
    rpClient2 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient2 setDispatchQueue:queue2];

    rpClient3 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient3 setControlFlags:74758];

    rpClient4 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient4 setFlags:1];

    rpClient5 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient5 setPasswordType:2];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100045F84;
    v28[3] = &unk_100169C78;
    objc_copyWeak(&v29, buf);
    rpClient6 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient6 setInterruptionHandler:v28];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100045FE0;
    v26[3] = &unk_100169C78;
    objc_copyWeak(&v27, buf);
    rpClient7 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient7 setInvalidationHandler:v26];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10004603C;
    v24[3] = &unk_10016AD10;
    objc_copyWeak(&v25, buf);
    rpClient8 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient8 setDeviceFoundHandler:v24];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100046098;
    v22[3] = &unk_10016AD10;
    objc_copyWeak(&v23, buf);
    rpClient9 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient9 setDeviceLostHandler:v22];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000460F4;
    v20[3] = &unk_10016AD38;
    objc_copyWeak(&v21, buf);
    rpClient10 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient10 setDeviceChangedHandler:v20];

    rpClient11 = [(MSDRapportDeviceExplorer *)self rpClient];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100046160;
    v18[3] = &unk_10016A178;
    objc_copyWeak(&v19, buf);
    [rpClient11 activateWithCompletion:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }
}

- (void)_deactivate
{
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceExplorer: Deactivating explorer!", buf, 2u);
  }

  rpClient = [(MSDRapportDeviceExplorer *)self rpClient];

  if (rpClient)
  {
    rpClient2 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient2 setInterruptionHandler:0];

    rpClient3 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient3 invalidate];

    [(MSDRapportDeviceExplorer *)self setRpClient:0];
    devices = [(MSDRapportDeviceExplorer *)self devices];
    v9 = [NSArray arrayWithArray:devices];

    devices2 = [(MSDRapportDeviceExplorer *)self devices];
    [devices2 removeAllObjects];

    observer = [(MSDRapportDeviceExplorer *)self observer];

    if (observer)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          v16 = 0;
          do
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v19 + 1) + 8 * v16);
            observer2 = [(MSDRapportDeviceExplorer *)self observer];
            [observer2 explorerDidLoseDevice:v17];

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v14);
      }
    }
  }
}

- (id)_findMatchingMSDRapportDeviceForRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [(MSDRapportDeviceExplorer *)self devices];
  v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToRPCompanionLinkDevice:deviceCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_handleRPCompanionLinkDeviceFound:(id)found
{
  foundCopy = found;
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D1CA4();
  }

  statusFlags = [foundCopy statusFlags];
  v8 = [foundCopy statusFlags] & 0x8000;
  if (!(statusFlags & 0x80000000 | v8))
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D1D50();
    }

    goto LABEL_18;
  }

  if ((statusFlags & 0x80000000) != 0 && v8)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D1D14();
    }

    goto LABEL_18;
  }

  v9 = [(MSDRapportDeviceExplorer *)self _findMatchingMSDRapportDeviceForRPCompanionLinkDevice:foundCopy];
  if (!v9)
  {
    observer4 = [[MSDRapportDevice alloc] initWithRPCompanionLinkDevice:foundCopy];
    devices = [(MSDRapportDeviceExplorer *)self devices];
    [devices addObject:observer4];

    observer = [(MSDRapportDeviceExplorer *)self observer];

    if (observer)
    {
      observer2 = [(MSDRapportDeviceExplorer *)self observer];
      [observer2 explorerDidFindDevice:observer4];
    }

    goto LABEL_17;
  }

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceExplorer: Received duplicated device. Renewing its RPCompanionLinkDevice.", v16, 2u);
  }

  [v9 renewRPCompanionLinkDevice:foundCopy];
  [v9 setDroppedByRapport:0];
  observer3 = [(MSDRapportDeviceExplorer *)self observer];

  if (observer3)
  {
    observer4 = [(MSDRapportDeviceExplorer *)self observer];
    [(MSDRapportDevice *)observer4 explorerDidUpdateDevice:v9];
LABEL_17:
  }

LABEL_18:
}

- (void)_handleRPCompanionLinkDeviceLost:(id)lost
{
  lostCopy = lost;
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D1D8C();
  }

  v7 = [(MSDRapportDeviceExplorer *)self _findMatchingMSDRapportDeviceForRPCompanionLinkDevice:lostCopy];
  v8 = v7;
  if (v7)
  {
    [v7 setDroppedByRapport:1];
    v9 = dispatch_time(0, 1000000000);
    queue2 = [(MSDRapportDeviceExplorer *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004691C;
    v11[3] = &unk_10016A258;
    v12 = v8;
    selfCopy = self;
    dispatch_after(v9, queue2, v11);
  }
}

- (void)_handleRPCompanionLinkDeviceChanged:(id)changed withChanges:(unsigned int)changes
{
  changedCopy = changed;
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D1DFC();
  }

  [(MSDRapportDeviceExplorer *)self _findMatchingMSDRapportDeviceForRPCompanionLinkDevice:changedCopy];
}

- (MSDRapportDeviceExplorerProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end