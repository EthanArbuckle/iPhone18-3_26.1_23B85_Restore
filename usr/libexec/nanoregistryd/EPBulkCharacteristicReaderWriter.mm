@interface EPBulkCharacteristicReaderWriter
- (EPBulkCharacteristicReaderWriter)initWithWriteCharacteristicUUID:(id)d readCharacteristicUUID:(id)iD timeout:(double)timeout;
- (void)characteristicReader:(id)reader didFailWithError:(id)error;
- (void)characteristicReader:(id)reader didRead:(id)read;
- (void)discoverer:(id)discoverer deviceDidBecomeProximate:(id)proximate;
- (void)discoverer:(id)discoverer deviceDidBecomeUnproximate:(id)unproximate;
- (void)invalidate;
- (void)readDiscoveredDevice:(id)device;
- (void)update;
@end

@implementation EPBulkCharacteristicReaderWriter

- (EPBulkCharacteristicReaderWriter)initWithWriteCharacteristicUUID:(id)d readCharacteristicUUID:(id)iD timeout:(double)timeout
{
  dCopy = d;
  iDCopy = iD;
  v30.receiver = self;
  v30.super_class = EPBulkCharacteristicReaderWriter;
  v11 = [(EPBulkCharacteristicReaderWriter *)&v30 init];
  v12 = v11;
  if (v11)
  {
    v11->_timeout = timeout;
    objc_storeStrong(&v11->_readCharacteristicUUID, iD);
    objc_storeStrong(&v12->_writeCharacteristicUUID, d);
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
        uUIDString = [dCopy UUIDString];
        uUIDString2 = [iDCopy UUIDString];
        *buf = 134218754;
        v32 = v12;
        v33 = 2112;
        v34 = v19;
        v35 = 2112;
        v36 = uUIDString;
        v37 = 2112;
        v38 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter[%p]: (%@) writing to %@ reading from %@", buf, 0x2Au);
      }
    }

    v22 = +[NSMapTable strongToStrongObjectsMapTable];
    deviceEntries = v12->_deviceEntries;
    v12->_deviceEntries = v22;

    if (iDCopy)
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

- (void)readDiscoveredDevice:(id)device
{
  [(NSMutableSet *)self->_forceReadDevices addObject:device];
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
          reader = [v10 reader];
          [reader invalidate];

          writer = [v10 writer];
          [writer invalidate];
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

    proximateDevices = [(EPDiscoverer *)self->_discoverer proximateDevices];
    v22 = [proximateDevices copy];

    v23 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B6134;
    block[3] = &unk_100175598;
    v56 = v22;
    selfCopy = self;
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
          reader2 = [v41 reader];
          [reader2 invalidate];

          writer2 = [v41 writer];
          [writer2 invalidate];
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
  proximateDevices2 = [(EPDiscoverer *)self->_discoverer proximateDevices];
  v27 = [proximateDevices2 countByEnumeratingWithState:&v51 objects:v63 count:16];
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
          objc_enumerationMutation(proximateDevices2);
        }

        v31 = *(*(&v51 + 1) + 8 * k);
        uuid = [v31 uuid];
        uUIDString = [uuid UUIDString];

        name = [v31 name];
        if (uUIDString && (v35 = uUIDString, ([(NSMutableSet *)self->_forceReadDevices containsObject:uUIDString]& 1) != 0) || name && (v35 = name, [(NSMutableSet *)self->_forceReadDevices containsObject:name]))
        {
          [v25 addObject:v31];
          [(NSMutableSet *)self->_forceReadDevices removeObject:v35];
        }
      }

      v28 = [proximateDevices2 countByEnumeratingWithState:&v51 objects:v63 count:16];
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
    selfCopy2 = self;
    dispatch_async(v36, v48);
  }
}

- (void)discoverer:(id)discoverer deviceDidBecomeProximate:(id)proximate
{
  proximateCopy = proximate;
  if (self->_invalidated)
  {
    goto LABEL_25;
  }

  v6 = [(NSMapTable *)self->_deviceEntries objectForKey:proximateCopy];
  v7 = v6;
  if (self->_readCharacteristicUUID)
  {
    reader = [v6 reader];

    if (!reader)
    {
      name = [proximateCopy name];
      uuid = [proximateCopy uuid];
      v39 = [(EPBulkCharacteristicReaderWriter *)self shouldAttemptReadFromAdvertisedName:name bluetoothDeviceID:uuid];

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
          name2 = [proximateCopy name];
          uuid2 = [proximateCopy uuid];
          uUIDString = [uuid2 UUIDString];
          *buf = 138412546;
          v59 = name2;
          v60 = 2112;
          v61 = uUIDString;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: subclass read check- ignoring BT device %@ %@", buf, 0x16u);
        }
      }
    }
  }

  v9 = 0;
LABEL_5:
  if (self->_writeCharacteristicUUID)
  {
    writer = [v7 writer];

    if (!writer)
    {
      name3 = [proximateCopy name];
      uuid3 = [proximateCopy uuid];
      v11 = [(EPBulkCharacteristicReaderWriter *)self writeDataForAdvertisedName:name3 bluetoothDeviceID:uuid3];

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
          name4 = [proximateCopy name];
          uuid4 = [proximateCopy uuid];
          uUIDString2 = [uuid4 UUIDString];
          *buf = 138412546;
          v59 = name4;
          v60 = 2112;
          v61 = uUIDString2;
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
        name5 = [proximateCopy name];
        uuid5 = [proximateCopy uuid];
        uUIDString3 = [uuid5 UUIDString];
        *buf = 138412546;
        v59 = name5;
        v60 = 2112;
        v61 = uUIDString3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Reading characteristic on BT device %@ %@", buf, 0x16u);
      }
    }

    if (!v7)
    {
      v7 = objc_opt_new();
      [v7 setDevice:proximateCopy];
    }

    v18 = [proximateCopy newObserverWithDelegate:0];
    v19 = [EPCharacteristicReader alloc];
    timeout = self->_timeout;
    v21 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
    v22 = [(EPCharacteristicReader *)v19 initWithDelegate:self timeout:v18 peripheral:v21 serviceUUID:self->_readCharacteristicUUID characteristicUUID:timeout];
    [v7 setReader:v22];

    [(NSMapTable *)self->_deviceEntries setObject:v7 forKey:proximateCopy];
    readerDeviceLookup = self->_readerDeviceLookup;
    reader2 = [v7 reader];
    [(NSMapTable *)readerDeviceLookup setObject:proximateCopy forKey:reader2];
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
        name6 = [proximateCopy name];
        uuid6 = [proximateCopy uuid];
        uUIDString4 = [uuid6 UUIDString];
        *buf = 138412546;
        v59 = name6;
        v60 = 2112;
        v61 = uUIDString4;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Writing characteristic on BT device %@ %@", buf, 0x16u);
      }
    }

    if (!v7)
    {
      v7 = objc_opt_new();
      [v7 setDevice:proximateCopy];
    }

    v31 = [proximateCopy newObserverWithDelegate:0];
    v32 = [EPCharacteristicWriter alloc];
    v33 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
    v34 = [(EPCharacteristicWriter *)v32 initWithPeripheral:v31 serviceUUID:v33 characteristicUUID:self->_writeCharacteristicUUID];
    [v7 setWriter:v34];

    [(NSMapTable *)self->_deviceEntries setObject:v7 forKey:proximateCopy];
    writer2 = [v7 writer];
    v36 = self->_timeout;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000B6A54;
    v54[3] = &unk_100177CF0;
    v7 = v7;
    v55 = v7;
    selfCopy = self;
    v57 = proximateCopy;
    [writer2 writeData:v11 timeout:&stru_100179120 begin:v54 completion:v36];
  }

LABEL_25:
}

- (void)characteristicReader:(id)reader didRead:(id)read
{
  readerCopy = reader;
  readCopy = read;
  v8 = [(NSMapTable *)self->_readerDeviceLookup objectForKey:readerCopy];
  v9 = sub_1000034AC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = sub_1000034AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      name = [v8 name];
      uuid = [v8 uuid];
      uUIDString = [uuid UUIDString];
      v25 = 138412802;
      v26 = name;
      v27 = 2112;
      v28 = uUIDString;
      v29 = 2048;
      v30 = [readCopy length];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Read characteristic from BT device %@ %@ %ld bytes", &v25, 0x20u);
    }
  }

  if (v8)
  {
    v15 = [(NSMapTable *)self->_deviceEntries objectForKey:v8];
    v16 = v15;
    if (v15)
    {
      reader = [v15 reader];
      if (reader)
      {
      }

      else
      {
        writer = [v16 writer];

        if (!writer)
        {
          [(NSMapTable *)self->_deviceEntries removeObjectForKey:v8];
        }
      }

      reader2 = [v16 reader];
      [reader2 invalidate];

      [v16 setReader:0];
      [(NSMapTable *)self->_readerDeviceLookup removeObjectForKey:readerCopy];
      v20 = readCopy;
      if (!readCopy)
      {
        v20 = objc_opt_new();
      }

      device = [v16 device];
      name2 = [device name];
      device2 = [v16 device];
      uuid2 = [device2 uuid];
      [(EPBulkCharacteristicReaderWriter *)self readResult:v20 advertisedName:name2 bluetoothDeviceID:uuid2];

      if (!readCopy)
      {
      }
    }
  }
}

- (void)characteristicReader:(id)reader didFailWithError:(id)error
{
  readerCopy = reader;
  v6 = [(NSMapTable *)self->_readerDeviceLookup objectForKey:readerCopy];
  v7 = sub_1000034AC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = sub_1000034AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      name = [v6 name];
      uuid = [v6 uuid];
      uUIDString = [uuid UUIDString];
      v22 = 138412546;
      v23 = name;
      v24 = 2112;
      v25 = uUIDString;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Failed to read characteristic from BT device %@ %@", &v22, 0x16u);
    }
  }

  if (v6)
  {
    v13 = [(NSMapTable *)self->_deviceEntries objectForKey:v6];
    v14 = v13;
    if (v13)
    {
      reader = [v13 reader];
      if (reader)
      {
      }

      else
      {
        writer = [v14 writer];

        if (!writer)
        {
          [(NSMapTable *)self->_deviceEntries removeObjectForKey:v6];
        }
      }

      reader2 = [v14 reader];
      [reader2 invalidate];

      [v14 setReader:0];
      [(NSMapTable *)self->_readerDeviceLookup removeObjectForKey:readerCopy];
      device = [v14 device];
      name2 = [device name];
      device2 = [v14 device];
      uuid2 = [device2 uuid];
      [(EPBulkCharacteristicReaderWriter *)self readResult:0 advertisedName:name2 bluetoothDeviceID:uuid2];
    }
  }
}

- (void)discoverer:(id)discoverer deviceDidBecomeUnproximate:(id)unproximate
{
  unproximateCopy = unproximate;
  v5 = [(NSMapTable *)self->_deviceEntries objectForKey:?];
  v6 = v5;
  if (v5)
  {
    writer = [v5 writer];
    [writer invalidate];

    reader = [v6 reader];
    [reader invalidate];

    [(NSMapTable *)self->_deviceEntries removeObjectForKey:unproximateCopy];
    readerDeviceLookup = self->_readerDeviceLookup;
    reader2 = [v6 reader];
    [(NSMapTable *)readerDeviceLookup removeObjectForKey:reader2];
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