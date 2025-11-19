@interface HRCBluetoothLESourceObserverCollator
- (HRCBluetoothLESourceObserverCollator)initWithDelegate:(id)a3 onQueue:(id)a4;
- (HRCBluetoothLESourceObserverCollatorDelegate)delegate;
- (void)_addBluetoothLESourceObserverClient:(id)a3;
- (void)_recomputeCollatedBluetoothDiscoveryModeRequest;
- (void)_removeBluetoothLESourceObserverClient:(id)a3;
- (void)addBluetoothLESourceObserverClient:(id)a3;
- (void)handleSourceListUpdate:(id)a3;
- (void)removeBluetoothLESourceObserverClient:(id)a3;
@end

@implementation HRCBluetoothLESourceObserverCollator

- (void)_recomputeCollatedBluetoothDiscoveryModeRequest
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  v4 = [v3 count];

  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
    v10 = 134217984;
    v11 = [v6 count];
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
      v8 = [(HRCBluetoothLESourceObserverCollator *)self bluetoothDiscoveryEnabled];
      v10 = 67240192;
      LODWORD(v11) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "updated bluetooth le source discovery request : %{public, BOOL}d", &v10, 8u);
    }

    v9 = [(HRCBluetoothLESourceObserverCollator *)self delegate];
    [v9 updateBluetoothDiscoveryEnabledRequest:{-[HRCBluetoothLESourceObserverCollator bluetoothDiscoveryEnabled](self, "bluetoothDiscoveryEnabled")}];
  }
}

- (HRCBluetoothLESourceObserverCollatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HRCBluetoothLESourceObserverCollator)initWithDelegate:(id)a3 onQueue:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = HRCBluetoothLESourceObserverCollator;
  v7 = a3;
  v8 = [(HRCBluetoothLESourceObserverCollator *)&v13 init];
  v9 = objc_opt_new();
  sourceObserverClientList = v8->_sourceObserverClientList;
  v8->_sourceObserverClientList = v9;

  queue = v8->_queue;
  v8->_queue = v6;

  objc_storeWeak(&v8->_delegate, v7);
  return v8;
}

- (void)addBluetoothLESourceObserverClient:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A3E8;
  v7[3] = &unk_100040A58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeBluetoothLESourceObserverClient:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A4C0;
  v7[3] = &unk_100040A58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)handleSourceListUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  v6 = [v5 count];

  if (v6)
  {
    v28 = self;
    [(HRCBluetoothLESourceObserverCollator *)self setLastUpdatedSourceList:v4];
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
    v29 = v4;
    v8 = v4;
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
            v15 = [v13 name];
            v16 = [v13 manufacturer];
            v17 = [v13 model];
            v18 = [v13 hardwareVersion];
            v19 = [v13 firmwareVersion];
            v20 = [v13 softwareVersion];
            v21 = [v13 localIdentifier];
            v22 = [v13 UDIDeviceIdentifier];
            *buf = 138741763;
            v43 = v15;
            v44 = 2114;
            v45 = v16;
            v46 = 2114;
            v47 = v17;
            v48 = 2114;
            v49 = v18;
            v50 = 2114;
            v51 = v19;
            v52 = 2114;
            v53 = v20;
            v54 = 2114;
            v55 = v21;
            v56 = 2113;
            v57 = v22;
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
    v23 = [(HRCBluetoothLESourceObserverCollator *)v28 sourceObserverClientList];
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
            objc_enumerationMutation(v23);
          }

          [*(*(&v33 + 1) + 8 * i) handleSourceListUpdate:v8];
        }

        v25 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v25);
    }

    v4 = v29;
  }
}

- (void)_addBluetoothLESourceObserverClient:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "adding bluetooth le source observer client", v11, 2u);
  }

  v6 = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  [v6 addObject:v4];

  v7 = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  v8 = [v7 count];

  if (v8 >= 2)
  {
    v9 = [(HRCBluetoothLESourceObserverCollator *)self lastUpdatedSourceList];

    if (v9)
    {
      v10 = [(HRCBluetoothLESourceObserverCollator *)self lastUpdatedSourceList];
      [v4 handleSourceListUpdate:v10];
    }

    else
    {
      v10 = sub_10000132C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10000AB04(v10);
      }
    }
  }
}

- (void)_removeBluetoothLESourceObserverClient:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 processName];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "removing bluetooth le source observer client with processName : %{public}@", &v8, 0xCu);
  }

  v7 = [(HRCBluetoothLESourceObserverCollator *)self sourceObserverClientList];
  [v7 removeObject:v4];
}

@end