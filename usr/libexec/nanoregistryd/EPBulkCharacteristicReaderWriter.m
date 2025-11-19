@interface EPBulkCharacteristicReaderWriter
- (EPBulkCharacteristicReaderWriter)initWithWriteCharacteristicUUID:(id)a3 readCharacteristicUUID:(id)a4 timeout:(double)a5;
- (void)characteristicReader:(id)a3 didFailWithError:(id)a4;
- (void)characteristicReader:(id)a3 didRead:(id)a4;
- (void)discoverer:(id)a3 deviceDidBecomeProximate:(id)a4;
- (void)discoverer:(id)a3 deviceDidBecomeUnproximate:(id)a4;
- (void)invalidate;
- (void)readDiscoveredDevice:(id)a3;
- (void)update;
@end

@implementation EPBulkCharacteristicReaderWriter

- (EPBulkCharacteristicReaderWriter)initWithWriteCharacteristicUUID:(id)a3 readCharacteristicUUID:(id)a4 timeout:(double)a5
{
  v9 = a3;
  v10 = a4;
  v30.receiver = self;
  v30.super_class = EPBulkCharacteristicReaderWriter;
  v11 = [(EPBulkCharacteristicReaderWriter *)&v30 init];
  v12 = v11;
  if (v11)
  {
    v11->_timeout = a5;
    objc_storeStrong(&v11->_readCharacteristicUUID, a4);
    objc_storeStrong(&v12->_writeCharacteristicUUID, a3);
    v13 = objc_opt_new();
    forceReadDevices = v12->_forceReadDevices;
    v12->_forceReadDevices = v13;

    v15 = sub_1000034AC();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = sub_1000034AC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v9 UUIDString];
        v21 = [v10 UUIDString];
        *buf = 134218754;
        v32 = v12;
        v33 = 2112;
        v34 = v19;
        v35 = 2112;
        v36 = v20;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter[%p]: (%@) writing to %@ reading from %@", buf, 0x2Au);
      }
    }

    v22 = +[NSMapTable strongToStrongObjectsMapTable];
    deviceEntries = v12->_deviceEntries;
    v12->_deviceEntries = v22;

    if (v10)
    {
      v24 = +[NSMapTable strongToStrongObjectsMapTable];
      readerDeviceLookup = v12->_readerDeviceLookup;
      v12->_readerDeviceLookup = v24;
    }

    v26 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5B48;
    block[3] = &unk_100175660;
    v29 = v12;
    dispatch_async(v26, block);
  }

  return v12;
}

- (void)readDiscoveredDevice:(id)a3
{
  [(NSMutableSet *)self->_forceReadDevices addObject:a3];
  v4 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5C00;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)update
{
  if (self->_invalidated)
  {
    discoverer = self->_discoverer;
    self->_discoverer = 0;

    central = self->_central;
    self->_central = 0;

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v5 = self->_deviceEntries;
    v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v59;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v59 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMapTable *)self->_deviceEntries objectForKey:*(*(&v58 + 1) + 8 * i)];
          v11 = [v10 reader];
          [v11 invalidate];

          v12 = [v10 writer];
          [v12 invalidate];
        }

        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v7);
    }

LABEL_37:

    [(NSMapTable *)self->_deviceEntries removeAllObjects];
    [(NSMapTable *)self->_readerDeviceLookup removeAllObjects];
    return;
  }

  if (!self->_central)
  {
    v13 = +[EPFactory sharedFactory];
    v14 = [v13 newCentralManagerWithDelegate:self];
    v15 = self->_central;
    self->_central = v14;
  }

  if (!self->_discoverer)
  {
    v16 = +[EPFactory sharedFactory];
    [v16 setDiscovererDeviceUUIDs:0];

    v17 = +[EPFactory sharedFactory];
    [v17 setDiscovererShouldScanForProximity:0];

    v18 = +[EPFactory sharedFactory];
    v19 = [v18 newDiscovererWithDelegate:self];
    v20 = self->_discoverer;
    self->_discoverer = v19;

    v21 = [(EPDiscoverer *)self->_discoverer proximateDevices];
    v22 = [v21 copy];

    v23 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B6134;
    block[3] = &unk_100175598;
    v56 = v22;
    v57 = self;
    v24 = v22;
    dispatch_async(v23, block);
  }

  if ([(EPResource *)self->_central availability]!= 1)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = self->_deviceEntries;
    v37 = [(NSMapTable *)v5 countByEnumeratingWithState:&v44 objects:v62 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v45;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v45 != v39)
          {
            objc_enumerationMutation(v5);
          }

          v41 = [(NSMapTable *)self->_deviceEntries objectForKey:*(*(&v44 + 1) + 8 * j), v44];
          v42 = [v41 reader];
          [v42 invalidate];

          v43 = [v41 writer];
          [v43 invalidate];
        }

        v38 = [(NSMapTable *)v5 countByEnumeratingWithState:&v44 objects:v62 count:16];
      }

      while (v38);
    }

    goto LABEL_37;
  }

  v25 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v26 = [(EPDiscoverer *)self->_discoverer proximateDevices];
  v27 = [v26 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v52;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v51 + 1) + 8 * k);
        v32 = [v31 uuid];
        v33 = [v32 UUIDString];

        v34 = [v31 name];
        if (v33 && (v35 = v33, ([(NSMutableSet *)self->_forceReadDevices containsObject:v33]& 1) != 0) || v34 && (v35 = v34, [(NSMutableSet *)self->_forceReadDevices containsObject:v34]))
        {
          [v25 addObject:v31];
          [(NSMutableSet *)self->_forceReadDevices removeObject:v35];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v28);
  }

  if ([v25 count])
  {
    v36 = +[EPFactory queue];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B622C;
    v48[3] = &unk_100175598;
    v49 = v25;
    v50 = self;
    dispatch_async(v36, v48);
  }
}

- (void)discoverer:(id)a3 deviceDidBecomeProximate:(id)a4
{
  v5 = a4;
  if (self->_invalidated)
  {
    goto LABEL_25;
  }

  v6 = [(NSMapTable *)self->_deviceEntries objectForKey:v5];
  v7 = v6;
  if (self->_readCharacteristicUUID)
  {
    v8 = [v6 reader];

    if (!v8)
    {
      v37 = [v5 name];
      v38 = [v5 uuid];
      v39 = [(EPBulkCharacteristicReaderWriter *)self shouldAttemptReadFromAdvertisedName:v37 bluetoothDeviceID:v38];

      if (v39)
      {
        v9 = 1;
        goto LABEL_5;
      }

      v48 = sub_1000034AC();
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

      if (v49)
      {
        v50 = sub_1000034AC();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v5 name];
          v52 = [v5 uuid];
          v53 = [v52 UUIDString];
          *buf = 138412546;
          v59 = v51;
          v60 = 2112;
          v61 = v53;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: subclass read check- ignoring BT device %@ %@", buf, 0x16u);
        }
      }
    }
  }

  v9 = 0;
LABEL_5:
  if (self->_writeCharacteristicUUID)
  {
    v10 = [v7 writer];

    if (!v10)
    {
      v40 = [v5 name];
      v41 = [v5 uuid];
      v11 = [(EPBulkCharacteristicReaderWriter *)self writeDataForAdvertisedName:v40 bluetoothDeviceID:v41];

      if (v11)
      {
        goto LABEL_8;
      }

      v42 = sub_1000034AC();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

      if (v43)
      {
        v44 = sub_1000034AC();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v5 name];
          v46 = [v5 uuid];
          v47 = [v46 UUIDString];
          *buf = 138412546;
          v59 = v45;
          v60 = 2112;
          v61 = v47;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: subclass write check- ignoring BT device %@ %@", buf, 0x16u);
        }
      }
    }
  }

  v11 = 0;
LABEL_8:
  if (v9)
  {
    v12 = sub_1000034AC();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000034AC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 name];
        v16 = [v5 uuid];
        v17 = [v16 UUIDString];
        *buf = 138412546;
        v59 = v15;
        v60 = 2112;
        v61 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Reading characteristic on BT device %@ %@", buf, 0x16u);
      }
    }

    if (!v7)
    {
      v7 = objc_opt_new();
      [v7 setDevice:v5];
    }

    v18 = [v5 newObserverWithDelegate:0];
    v19 = [EPCharacteristicReader alloc];
    timeout = self->_timeout;
    v21 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
    v22 = [(EPCharacteristicReader *)v19 initWithDelegate:self timeout:v18 peripheral:v21 serviceUUID:self->_readCharacteristicUUID characteristicUUID:timeout];
    [v7 setReader:v22];

    [(NSMapTable *)self->_deviceEntries setObject:v7 forKey:v5];
    readerDeviceLookup = self->_readerDeviceLookup;
    v24 = [v7 reader];
    [(NSMapTable *)readerDeviceLookup setObject:v5 forKey:v24];
  }

  if (v11)
  {
    v25 = sub_1000034AC();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = sub_1000034AC();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v5 name];
        v29 = [v5 uuid];
        v30 = [v29 UUIDString];
        *buf = 138412546;
        v59 = v28;
        v60 = 2112;
        v61 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Writing characteristic on BT device %@ %@", buf, 0x16u);
      }
    }

    if (!v7)
    {
      v7 = objc_opt_new();
      [v7 setDevice:v5];
    }

    v31 = [v5 newObserverWithDelegate:0];
    v32 = [EPCharacteristicWriter alloc];
    v33 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
    v34 = [(EPCharacteristicWriter *)v32 initWithPeripheral:v31 serviceUUID:v33 characteristicUUID:self->_writeCharacteristicUUID];
    [v7 setWriter:v34];

    [(NSMapTable *)self->_deviceEntries setObject:v7 forKey:v5];
    v35 = [v7 writer];
    v36 = self->_timeout;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000B6A54;
    v54[3] = &unk_100177CF0;
    v7 = v7;
    v55 = v7;
    v56 = self;
    v57 = v5;
    [v35 writeData:v11 timeout:&stru_100179120 begin:v54 completion:v36];
  }

LABEL_25:
}

- (void)characteristicReader:(id)a3 didRead:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_readerDeviceLookup objectForKey:v6];
  v9 = sub_1000034AC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = sub_1000034AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 name];
      v13 = [v8 uuid];
      v14 = [v13 UUIDString];
      v25 = 138412802;
      v26 = v12;
      v27 = 2112;
      v28 = v14;
      v29 = 2048;
      v30 = [v7 length];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Read characteristic from BT device %@ %@ %ld bytes", &v25, 0x20u);
    }
  }

  if (v8)
  {
    v15 = [(NSMapTable *)self->_deviceEntries objectForKey:v8];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 reader];
      if (v17)
      {
      }

      else
      {
        v18 = [v16 writer];

        if (!v18)
        {
          [(NSMapTable *)self->_deviceEntries removeObjectForKey:v8];
        }
      }

      v19 = [v16 reader];
      [v19 invalidate];

      [v16 setReader:0];
      [(NSMapTable *)self->_readerDeviceLookup removeObjectForKey:v6];
      v20 = v7;
      if (!v7)
      {
        v20 = objc_opt_new();
      }

      v21 = [v16 device];
      v22 = [v21 name];
      v23 = [v16 device];
      v24 = [v23 uuid];
      [(EPBulkCharacteristicReaderWriter *)self readResult:v20 advertisedName:v22 bluetoothDeviceID:v24];

      if (!v7)
      {
      }
    }
  }
}

- (void)characteristicReader:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  v6 = [(NSMapTable *)self->_readerDeviceLookup objectForKey:v5];
  v7 = sub_1000034AC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = sub_1000034AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 name];
      v11 = [v6 uuid];
      v12 = [v11 UUIDString];
      v22 = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Failed to read characteristic from BT device %@ %@", &v22, 0x16u);
    }
  }

  if (v6)
  {
    v13 = [(NSMapTable *)self->_deviceEntries objectForKey:v6];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 reader];
      if (v15)
      {
      }

      else
      {
        v16 = [v14 writer];

        if (!v16)
        {
          [(NSMapTable *)self->_deviceEntries removeObjectForKey:v6];
        }
      }

      v17 = [v14 reader];
      [v17 invalidate];

      [v14 setReader:0];
      [(NSMapTable *)self->_readerDeviceLookup removeObjectForKey:v5];
      v18 = [v14 device];
      v19 = [v18 name];
      v20 = [v14 device];
      v21 = [v20 uuid];
      [(EPBulkCharacteristicReaderWriter *)self readResult:0 advertisedName:v19 bluetoothDeviceID:v21];
    }
  }
}

- (void)discoverer:(id)a3 deviceDidBecomeUnproximate:(id)a4
{
  v11 = a4;
  v5 = [(NSMapTable *)self->_deviceEntries objectForKey:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 writer];
    [v7 invalidate];

    v8 = [v6 reader];
    [v8 invalidate];

    [(NSMapTable *)self->_deviceEntries removeObjectForKey:v11];
    readerDeviceLookup = self->_readerDeviceLookup;
    v10 = [v6 reader];
    [(NSMapTable *)readerDeviceLookup removeObjectForKey:v10];
  }
}

- (void)invalidate
{
  v3 = sub_1000034AC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000034AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicWriter: invalidate call", v6, 2u);
    }
  }

  self->_invalidated = 1;
  [(EPBulkCharacteristicReaderWriter *)self update];
}

@end