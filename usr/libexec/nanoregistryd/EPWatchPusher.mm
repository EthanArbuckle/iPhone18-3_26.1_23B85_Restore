@interface EPWatchPusher
- (BOOL)_deviceSupportsExtensiblePairingWithAdvertisedName:(id)a3;
- (EPWatchPusher)init;
- (id)writeDataForAdvertisedName:(id)a3 bluetoothDeviceID:(id)a4;
- (void)_notifyClientsOfFailureForAdvertisedName:(id)a3;
- (void)_notifyClientsOfMetadata:(id)a3 forAdvertisedName:(id)a4;
- (void)_waitTimeoutWithAdvertisedName:(id)a3;
- (void)invalidate;
- (void)readResult:(id)a3 advertisedName:(id)a4 bluetoothDeviceID:(id)a5;
- (void)waitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4;
@end

@implementation EPWatchPusher

- (EPWatchPusher)init
{
  v3 = [CBUUID UUIDWithString:@"1F9636E6-CA97-4C30-BC5F-C477D6A6CF32"];
  v4 = [CBUUID UUIDWithString:@"E168D473-8EFD-4485-A1FD-B25EDAD4DCE2"];
  v9.receiver = self;
  v9.super_class = EPWatchPusher;
  v5 = [(EPBulkCharacteristicReaderWriter *)&v9 initWithWriteCharacteristicUUID:v3 readCharacteristicUUID:v4 timeout:9.0];

  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    contexts = v5->_contexts;
    v5->_contexts = v6;
  }

  return v5;
}

- (BOOL)_deviceSupportsExtensiblePairingWithAdvertisedName:(id)a3
{
  v3 = NRAdvertisingInfoFromPayload();
  v4 = v3;
  v7 = 0;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:NRBridgeAdvertisingVersionKey];
    v6 = [v5 integerValue];

    if (v6 > 1)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)writeDataForAdvertisedName:(id)a3 bluetoothDeviceID:(id)a4
{
  if ([(EPWatchPusher *)self _deviceSupportsExtensiblePairingWithAdvertisedName:a3, a4])
  {
    v4 = [@"push" dataUsingEncoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)readResult:(id)a3 advertisedName:(id)a4 bluetoothDeviceID:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if (v11)
    {
      v10 = [[NRPBWatchPairingExtendedMetadata alloc] initWithData:v11];
      [(EPWatchPusher *)self _notifyClientsOfMetadata:v10 forAdvertisedName:v8];
    }

    else
    {
      [(EPWatchPusher *)self _notifyClientsOfFailureForAdvertisedName:v8];
    }
  }
}

- (void)_notifyClientsOfMetadata:(id)a3 forAdvertisedName:(id)a4
{
  v6 = a3;
  contexts = self->_contexts;
  v8 = a4;
  v9 = [(NSMutableDictionary *)contexts objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = objc_opt_new();
  }

  [v9 setMetadata:v6];
  v10 = [v9 timer];
  [v10 invalidate];

  [v9 setTimer:0];
  [(NSMutableDictionary *)self->_contexts setObject:v9 forKeyedSubscript:v8];

  v11 = [v9 completions];
  [v9 setCompletions:0];
  v12 = +[EPFactory queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100073D80;
  v15[3] = &unk_100175598;
  v16 = v11;
  v17 = v6;
  v13 = v6;
  v14 = v11;
  dispatch_async(v12, v15);
}

- (void)_notifyClientsOfFailureForAdvertisedName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 timer];
    [v7 invalidate];

    [v6 setTimer:0];
    v8 = [v6 completions];
    [v6 setCompletions:0];
    v9 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100073FC8;
    block[3] = &unk_100175660;
    v12 = v8;
    v10 = v8;
    dispatch_async(v9, block);

    [(NSMutableDictionary *)self->_contexts removeObjectForKey:v4];
  }
}

- (void)invalidate
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(NSMutableDictionary *)self->_contexts allKeys];
  v4 = [v3 copy];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v8)];
        v10 = [v9 timer];
        [v10 invalidate];

        [v9 setTimer:0];
        v11 = [v9 completions];
        [v9 setCompletions:0];
        v12 = +[EPFactory queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000742E8;
        block[3] = &unk_100175660;
        v17 = v11;
        v13 = v11;
        dispatch_async(v12, block);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15.receiver = self;
  v15.super_class = EPWatchPusher;
  [(EPBulkCharacteristicReaderWriter *)&v15 invalidate];
}

- (void)waitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:v6];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100074758;
  v29[3] = &unk_1001780C0;
  v29[4] = self;
  v9 = v6;
  v30 = v9;
  v10 = v7;
  v31 = v10;
  v11 = objc_retainBlock(v29);
  v12 = v11;
  if (!v9)
  {
    v14 = v11[2];
    v15 = @"No advertisedName";
    goto LABEL_7;
  }

  if (v8 && ([v8 timer], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v17 = [v8 metadata];
    (v12)[2](v12, 1, v17, @"Using context metadata");
  }

  else
  {
    if ([(EPBulkCharacteristicReaderWriter *)self invalidated])
    {
      v14 = v12[2];
      v15 = @"Invalidated";
LABEL_7:
      v14(v12, 0, 0, v15);
      goto LABEL_14;
    }

    if (![(EPWatchPusher *)self _deviceSupportsExtensiblePairingWithAdvertisedName:v9])
    {
      (v12)[2](v12, 1, 0, @"Device Supports Extensible Pairing With Advertised Name");
      goto LABEL_14;
    }

    v16 = [v8 timer];

    if (!v16)
    {
      [(EPBulkCharacteristicReaderWriter *)self readDiscoveredDevice:v9];
      v19 = objc_opt_new();

      v20 = objc_opt_new();
      [v19 setCompletions:v20];

      v21 = [v19 completions];
      v22 = objc_retainBlock(v12);
      [v21 addObject:v22];

      v23 = [@"com.apple.nanoregistry.waitforwatchpairingextendedmetadata." stringByAppendingString:v9];
      v24 = +[EPFactory queue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100074938;
      v27[3] = &unk_100175598;
      v27[4] = self;
      v25 = v9;
      v28 = v25;
      v26 = [TimerFactory timerWithIdentifier:v23 delay:1 gracePeriod:v24 waking:v27 handlerQueue:9.0 handlerBlock:0.0];
      [v19 setTimer:v26];

      [(NSMutableDictionary *)self->_contexts setObject:v19 forKeyedSubscript:v25];
      v8 = v19;
      goto LABEL_14;
    }

    v17 = [v8 completions];
    v18 = objc_retainBlock(v12);
    [v17 addObject:v18];
  }

LABEL_14:
}

- (void)_waitTimeoutWithAdvertisedName:(id)a3
{
  v4 = a3;
  v5 = sub_1000034AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = sub_1000034AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = self;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPWatchPusher[%p]: Push timer timed out for device %@", &v8, 0x16u);
    }
  }

  [(EPWatchPusher *)self _notifyClientsOfFailureForAdvertisedName:v4];
}

@end