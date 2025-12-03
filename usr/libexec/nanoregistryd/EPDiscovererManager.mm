@interface EPDiscovererManager
- (EPDiscovererManager)init;
- (id)newDiscovererWithDelegate:(id)delegate;
- (void)_setTimerDuration:(double)duration withBlock:(id)block;
- (void)cancelDiscoveryCounter;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)clearAndStartDiscoveryCounter;
- (void)collection:(id)collection deviceDidAppear:(id)appear;
- (void)collection:(id)collection deviceDidBecomeDisplayable:(id)displayable;
- (void)collection:(id)collection deviceDidBecomeProximate:(id)proximate;
- (void)collection:(id)collection deviceDidBecomeUndisplayable:(id)undisplayable;
- (void)collection:(id)collection deviceDidBecomeUnproximate:(id)unproximate;
- (void)collection:(id)collection deviceDidDisappear:(id)disappear;
- (void)collection:(id)collection deviceDidUpdate:(id)update;
- (void)collection:(id)collection deviceInfoDidDealloc:(id)dealloc;
- (void)collectionPairingFailure:(id)failure;
- (void)notifyDelegateOfBluetoothSuccess;
- (void)notifyDelegateOfPossibleBluetoothFailure;
- (void)setDiscoverDeviceUUIDs:(id)ds;
- (void)setScanForProximity:(BOOL)proximity;
- (void)update;
@end

@implementation EPDiscovererManager

- (void)clearAndStartDiscoveryCounter
{
  self->_discoveryCounter = 0;
  v3 = +[NSDate date];
  ttrDate = self->_ttrDate;
  self->_ttrDate = v3;

  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  self->_discoveryStartTime = v6;

  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100054D3C;
  v7[3] = &unk_100175EB8;
  objc_copyWeak(&v8, &location);
  [(EPDiscovererManager *)self _setTimerDuration:v7 withBlock:10.0];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)cancelDiscoveryCounter
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  discoveryStartTime = self->_discoveryStartTime;
  if (discoveryStartTime <= 0.0 || discoveryStartTime >= v5)
  {
    goto LABEL_19;
  }

  v8 = v5 - discoveryStartTime;
  self->_discoveryStartTime = 0.0;
  v9 = sub_1000A98C0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v8 <= 3.0 || v8 >= 300.0)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    manager = sub_1000A98C0();
    if (os_log_type_enabled(manager, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      selfCopy2 = self;
      v16 = 2048;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, manager, OS_LOG_TYPE_DEFAULT, "EPDiscovererManager[%p]: Not enough time discovering. %1.2f", &v14, 0x16u);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v10)
  {
    v11 = sub_1000A98C0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      discoveryCounter = self->_discoveryCounter;
      v14 = 134218496;
      selfCopy2 = self;
      v16 = 2048;
      v17 = *&discoveryCounter;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPDiscovererManager[%p]: Discovery timer canceled. %ld discovery delegate calls received after %1.2f seconds", &v14, 0x20u);
    }
  }

  if (!self->_discoveryCounter && ![(NSArray *)self->_discoverDeviceUUIDs count])
  {
    manager = [(EPCentralManager *)self->_central manager];
    [manager triggerBTErrorReport:1];
    goto LABEL_18;
  }

LABEL_19:
  [(EPDiscovererManager *)self _setTimerDuration:0 withBlock:0.0];
}

- (void)_setTimerDuration:(double)duration withBlock:(id)block
{
  blockCopy = block;
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v8 = self->_currentTimer;
    self->_currentTimer = 0;
  }

  if (blockCopy)
  {
    v9 = +[EPFactory queue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

    v11 = dispatch_time(0, (duration * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000550B4;
    v14[3] = &unk_100175FA0;
    v14[4] = self;
    v15 = blockCopy;
    dispatch_source_set_event_handler(v10, v14);
    dispatch_resume(v10);
    v12 = self->_currentTimer;
    self->_currentTimer = v10;
    v13 = v10;
  }
}

- (EPDiscovererManager)init
{
  v12.receiver = self;
  v12.super_class = EPDiscovererManager;
  v2 = [(EPDiscovererManager *)&v12 init];
  if (v2)
  {
    v3 = [NSSet setWithObject:@"EPDiscoverer"];
    [NRPowerAssertionActivity addActivityGroup:v3];

    v4 = +[NSPointerArray weakObjectsPointerArray];
    discoverers = v2->_discoverers;
    v2->_discoverers = v4;

    v6 = [[EPDeviceCollection alloc] initWithDelegate:v2];
    deviceCollection = v2->_deviceCollection;
    v2->_deviceCollection = v6;

    v8 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100055244;
    block[3] = &unk_100175660;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (id)newDiscovererWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [[EPDiscoverer alloc] initWithManager:self withDelegate:delegateCopy];

  [(NSPointerArray *)self->_discoverers addPointer:v5];
  v6 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055320;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v6, block);

  return v5;
}

- (void)update
{
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v4 = [allObjects count];

  if (v4)
  {
    if (!self->_wasNeedingDiscovering)
    {
      self->_wasNeedingDiscovering = 1;
      self->_pairingFailures = 0;
    }

    central = self->_central;
    if (!central)
    {
      v6 = +[EPFactory sharedFactory];
      agentManager = [v6 agentManager];
      v8 = [agentManager newCentralManagerWithDelegate:self];
      v9 = self->_central;
      self->_central = v8;

      central = self->_central;
    }

    if ([(EPResource *)central availability]== 1)
    {
      if (!self->_isScanning)
      {
        self->_isScanning = 1;
        v38[0] = CBCentralManagerScanOptionAllowDuplicatesKey;
        v38[1] = CBManagerIsPrivilegedDaemonKey;
        v39[0] = &__kCFBooleanTrue;
        v39[1] = &__kCFBooleanTrue;
        v10 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
        v11 = [v10 mutableCopy];

        discoverDeviceUUIDs = [(EPDiscovererManager *)self discoverDeviceUUIDs];
        v13 = [discoverDeviceUUIDs count];

        if (v13)
        {
          discoverDeviceUUIDs2 = [(EPDiscovererManager *)self discoverDeviceUUIDs];
          [v11 setObject:discoverDeviceUUIDs2 forKeyedSubscript:CBCentralManagerScanOptionPeersKey];

          [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:CBCentralManagerScanOptionReloadMigratableItems];
        }

        [(EPDiscovererManager *)self scanForProximity];
        v15 = sub_1000A98C0();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

        if (v16)
        {
          v17 = sub_1000A98C0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBCentralManager scanForPeripheralsWithServices with options %@", buf, 0xCu);
          }
        }

        v18 = [NRPowerAssertionActivity activityWithName:@"EPDiscoverer"];
        powerAssertion = self->_powerAssertion;
        self->_powerAssertion = v18;

        manager = [(EPCentralManager *)self->_central manager];
        discoverDeviceUUIDs3 = [(EPDiscovererManager *)self discoverDeviceUUIDs];
        if ([discoverDeviceUUIDs3 count])
        {
          [manager scanForPeripheralsWithServices:0 options:v11];
        }

        else
        {
          v30 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
          v35 = v30;
          v31 = [NSArray arrayWithObjects:&v35 count:1];
          [manager scanForPeripheralsWithServices:v31 options:v11];
        }

        discoverDeviceUUIDs4 = [(EPDiscovererManager *)self discoverDeviceUUIDs];
        v33 = [discoverDeviceUUIDs4 count];

        if (v33)
        {
          [(EPDiscovererManager *)self cancelDiscoveryCounter];
        }

        else
        {
          [(EPDiscovererManager *)self clearAndStartDiscoveryCounter];
        }
      }
    }

    else
    {
      [(EPDiscovererManager *)self cancelDiscoveryCounter];
      self->_isScanning = 0;
      [(EPDeviceCollection *)self->_deviceCollection clear];
    }
  }

  else
  {
    [(EPDiscovererManager *)self cancelDiscoveryCounter];
    self->_newBluetoothState = 0;
    self->_wasNeedingDiscovering = 0;
    if (self->_isScanning)
    {
      self->_isScanning = 0;
      if ([(EPResource *)self->_central availability]== 1)
      {
        v22 = sub_1000A98C0();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

        if (v23)
        {
          v24 = sub_1000A98C0();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBCentralManager stopScan", buf, 2u);
          }
        }

        manager2 = [(EPCentralManager *)self->_central manager];
        [manager2 stopScan];

        v26 = self->_powerAssertion;
        self->_powerAssertion = 0;
      }
    }

    devicesDictionary = [(EPDeviceCollection *)self->_deviceCollection devicesDictionary];
    v28 = [devicesDictionary count];

    if (!v28)
    {
      v29 = self->_central;
      self->_central = 0;
    }
  }

  newBluetoothState = self->_newBluetoothState;
  if (newBluetoothState != self->_bluetoothState)
  {
    self->_bluetoothState = newBluetoothState;
    if (newBluetoothState == 1)
    {
      [(EPDiscovererManager *)self notifyDelegateOfBluetoothSuccess];
    }

    else if (newBluetoothState == 2)
    {
      [(EPDiscovererManager *)self notifyDelegateOfPossibleBluetoothFailure];
    }
  }
}

- (void)setDiscoverDeviceUUIDs:(id)ds
{
  dsCopy = ds;
  discoverDeviceUUIDs = self->_discoverDeviceUUIDs;
  if (dsCopy && !discoverDeviceUUIDs || discoverDeviceUUIDs && ([(NSArray *)discoverDeviceUUIDs isEqual:dsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_discoverDeviceUUIDs, ds);
    if (self->_isScanning)
    {
      self->_isScanning = 0;
      if ([(EPResource *)self->_central availability]== 1)
      {
        v7 = sub_1000A98C0();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

        if (v8)
        {
          v9 = sub_1000A98C0();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBCentralManager stopScan because of change in the discoverDeviceUUIDs array", buf, 2u);
          }
        }

        manager = [(EPCentralManager *)self->_central manager];
        [manager stopScan];
      }

      v11 = +[EPFactory queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000558F8;
      block[3] = &unk_100175660;
      block[4] = self;
      dispatch_async(v11, block);
    }
  }
}

- (void)setScanForProximity:(BOOL)proximity
{
  if (self->_scanForProximity != proximity)
  {
    v13 = v3;
    v14 = v4;
    if (self->_isScanning)
    {
      self->_isScanning = 0;
      if ([(EPResource *)self->_central availability]== 1)
      {
        v6 = sub_1000A98C0();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

        if (v7)
        {
          v8 = sub_1000A98C0();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBCentralManager stopScan because of change in the scanForProximity property", buf, 2u);
          }
        }

        manager = [(EPCentralManager *)self->_central manager];
        [manager stopScan];
      }

      v10 = +[EPFactory queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100055A44;
      block[3] = &unk_100175660;
      block[4] = self;
      dispatch_async(v10, block);
    }
  }
}

- (void)notifyDelegateOfPossibleBluetoothFailure
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 discovererBluetoothMayHaveFailed:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)notifyDelegateOfBluetoothSuccess
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 discovererBluetoothIsWorking:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  ++self->_discoveryCounter;
  iCopy = i;
  dataCopy = data;
  peripheralCopy = peripheral;
  [(EPDiscovererManager *)self _setTimerDuration:0 withBlock:0.0];
  identifier = [peripheralCopy identifier];
  devicesDictionary = [(EPDeviceCollection *)self->_deviceCollection devicesDictionary];
  v13 = [devicesDictionary objectForKeyedSubscript:identifier];

  if (v13)
  {
    [v13 updateWithPeripheral:peripheralCopy withAdvertisementData:dataCopy withRSSI:iCopy];
  }

  else
  {
    v14 = [(EPDeviceCollection *)self->_deviceCollection newDeviceWithPeripheral:peripheralCopy withAdvertisementData:dataCopy withRSSI:iCopy];

    iCopy = dataCopy;
    dataCopy = peripheralCopy;
    peripheralCopy = v14;
  }
}

- (void)collection:(id)collection deviceDidAppear:(id)appear
{
  collectionCopy = collection;
  appearCopy = appear;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12) collection:collectionCopy deviceDidAppear:appearCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)collection:(id)collection deviceDidBecomeDisplayable:(id)displayable
{
  collectionCopy = collection;
  displayableCopy = displayable;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12) collection:collectionCopy deviceDidBecomeDisplayable:displayableCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)collection:(id)collection deviceDidBecomeProximate:(id)proximate
{
  collectionCopy = collection;
  proximateCopy = proximate;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12) collection:collectionCopy deviceDidBecomeProximate:proximateCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)collection:(id)collection deviceDidUpdate:(id)update
{
  collectionCopy = collection;
  updateCopy = update;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12) collection:collectionCopy deviceDidUpdate:updateCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)collection:(id)collection deviceDidDisappear:(id)disappear
{
  collectionCopy = collection;
  disappearCopy = disappear;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12) collection:collectionCopy deviceDidDisappear:disappearCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(EPDiscovererManager *)self update];
}

- (void)collection:(id)collection deviceDidBecomeUndisplayable:(id)undisplayable
{
  collectionCopy = collection;
  undisplayableCopy = undisplayable;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12) collection:collectionCopy deviceDidBecomeUndisplayable:undisplayableCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)collection:(id)collection deviceDidBecomeUnproximate:(id)unproximate
{
  collectionCopy = collection;
  unproximateCopy = unproximate;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12) collection:collectionCopy deviceDidBecomeUnproximate:unproximateCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)collection:(id)collection deviceInfoDidDealloc:(id)dealloc
{
  collectionCopy = collection;
  deallocCopy = dealloc;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_discoverers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12) collection:collectionCopy deviceInfoDidDealloc:deallocCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)collectionPairingFailure:(id)failure
{
  pairingFailures = self->_pairingFailures;
  self->_pairingFailures = pairingFailures + 1;
  if (pairingFailures >= 3)
  {
    self->_newBluetoothState = 2;
    [(EPDiscovererManager *)self update];
  }
}

@end