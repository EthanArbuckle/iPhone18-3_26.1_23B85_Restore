@interface HRCBluetoothLESourceObserverCollator
- (HRCBluetoothLESourceObserverCollator)initWithDelegate:(id)delegate onQueue:(id)queue;
- (HRCBluetoothLESourceObserverCollatorDelegate)delegate;
- (void)_addBluetoothLESourceObserverClient:(id)client;
- (void)_recomputeCollatedBluetoothDiscoveryModeRequest;
- (void)_removeBluetoothLESourceObserverClient:(id)client;
- (void)addBluetoothLESourceObserverClient:(id)client;
- (void)handleSourceListUpdate:(id)update;
- (void)removeBluetoothLESourceObserverClient:(id)client;
@end

@implementation HRCBluetoothLESourceObserverCollator

- (void)_recomputeCollatedBluetoothDiscoveryModeRequest
{
  dispatch_assert_queue_V2(self->_queue);
  sourceObserverClientList = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  v4 = [sourceObserverClientList count];

  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sourceObserverClientList2 = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
    v10 = 134217984;
    v11 = [sourceObserverClientList2 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HRCBluetoothLESourceObserver client count : %lu", &v10, 0xCu);
  }

  if ((v4 != 0) != [(HRCBluetoothLESourceObserverCollator *)self bluetoothDiscoveryEnabled])
  {
    if (![(HRCBluetoothLESourceObserverCollator *)self bluetoothDiscoveryEnabled])
    {
      [(HRCBluetoothLESourceObserverCollator *)self setLastUpdatedSourceList:0];
    }

    [(HRCBluetoothLESourceObserverCollator *)self setBluetoothDiscoveryEnabled:v4 != 0];
    v7 = sub_10000132C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      bluetoothDiscoveryEnabled = [(HRCBluetoothLESourceObserverCollator *)self bluetoothDiscoveryEnabled];
      v10 = 67240192;
      LODWORD(v11) = bluetoothDiscoveryEnabled;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "updated bluetooth le source discovery request : %{public, BOOL}d", &v10, 8u);
    }

    delegate = [(HRCBluetoothLESourceObserverCollator *)self delegate];
    [delegate updateBluetoothDiscoveryEnabledRequest:{-[HRCBluetoothLESourceObserverCollator bluetoothDiscoveryEnabled](self, "bluetoothDiscoveryEnabled")}];
  }
}

- (HRCBluetoothLESourceObserverCollatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HRCBluetoothLESourceObserverCollator)initWithDelegate:(id)delegate onQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = HRCBluetoothLESourceObserverCollator;
  delegateCopy = delegate;
  v8 = [(HRCBluetoothLESourceObserverCollator *)&v13 init];
  v9 = objc_opt_new();
  sourceObserverClientList = v8->_sourceObserverClientList;
  v8->_sourceObserverClientList = v9;

  queue = v8->_queue;
  v8->_queue = queueCopy;

  objc_storeWeak(&v8->_delegate, delegateCopy);
  return v8;
}

- (void)addBluetoothLESourceObserverClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A3E8;
  v7[3] = &unk_100040A58;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)removeBluetoothLESourceObserverClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A4C0;
  v7[3] = &unk_100040A58;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)handleSourceListUpdate:(id)update
{
  updateCopy = update;
  sourceObserverClientList = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  v6 = [sourceObserverClientList count];

  if (v6)
  {
    selfCopy = self;
    [(HRCBluetoothLESourceObserverCollator *)self setLastUpdatedSourceList:updateCopy];
    v7 = sub_10000132C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sending bluetooth le source list to clients", buf, 2u);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = updateCopy;
    v8 = updateCopy;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v58 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      v31 = *v38;
      v30 = v8;
      do
      {
        v12 = 0;
        v32 = v10;
        do
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v37 + 1) + 8 * v12);
          v14 = sub_10000132C();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            name = [v13 name];
            manufacturer = [v13 manufacturer];
            model = [v13 model];
            hardwareVersion = [v13 hardwareVersion];
            firmwareVersion = [v13 firmwareVersion];
            softwareVersion = [v13 softwareVersion];
            localIdentifier = [v13 localIdentifier];
            uDIDeviceIdentifier = [v13 UDIDeviceIdentifier];
            *buf = 138741763;
            v43 = name;
            v44 = 2114;
            v45 = manufacturer;
            v46 = 2114;
            v47 = model;
            v48 = 2114;
            v49 = hardwareVersion;
            v50 = 2114;
            v51 = firmwareVersion;
            v52 = 2114;
            v53 = softwareVersion;
            v54 = 2114;
            v55 = localIdentifier;
            v56 = 2113;
            v57 = uDIDeviceIdentifier;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "name : %{sensitive}@ , manufacturer : %{public}@ , model : %{public}@ , hardwareVersion : %{public}@ , firmwareVersion : %{public}@ , softwareVersion : %{public}@  , localIdentifier : %{public}@ , UDIDeviceIdentifier : %{private}@ ", buf, 0x52u);

            v8 = v30;
            v10 = v32;

            v11 = v31;
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v37 objects:v58 count:16];
      }

      while (v10);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    sourceObserverClientList2 = [(HRCBluetoothLESourceObserverCollator *)selfCopy sourceObserverClientList];
    v24 = [sourceObserverClientList2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(sourceObserverClientList2);
          }

          [*(*(&v33 + 1) + 8 * i) handleSourceListUpdate:v8];
        }

        v25 = [sourceObserverClientList2 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v25);
    }

    updateCopy = v29;
  }
}

- (void)_addBluetoothLESourceObserverClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "adding bluetooth le source observer client", v11, 2u);
  }

  sourceObserverClientList = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  [sourceObserverClientList addObject:clientCopy];

  sourceObserverClientList2 = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  v8 = [sourceObserverClientList2 count];

  if (v8 >= 2)
  {
    lastUpdatedSourceList = [(HRCBluetoothLESourceObserverCollator *)self lastUpdatedSourceList];

    if (lastUpdatedSourceList)
    {
      lastUpdatedSourceList2 = [(HRCBluetoothLESourceObserverCollator *)self lastUpdatedSourceList];
      [clientCopy handleSourceListUpdate:lastUpdatedSourceList2];
    }

    else
    {
      lastUpdatedSourceList2 = sub_10000132C();
      if (os_log_type_enabled(lastUpdatedSourceList2, OS_LOG_TYPE_FAULT))
      {
        sub_10000AB04(lastUpdatedSourceList2);
      }
    }
  }
}

- (void)_removeBluetoothLESourceObserverClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    processName = [clientCopy processName];
    v8 = 138543362;
    v9 = processName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "removing bluetooth le source observer client with processName : %{public}@", &v8, 0xCu);
  }

  sourceObserverClientList = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  [sourceObserverClientList removeObject:clientCopy];
}

@end