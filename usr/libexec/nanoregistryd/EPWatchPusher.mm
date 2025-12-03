@interface EPWatchPusher
- (BOOL)_deviceSupportsExtensiblePairingWithAdvertisedName:(id)name;
- (EPWatchPusher)init;
- (id)writeDataForAdvertisedName:(id)name bluetoothDeviceID:(id)d;
- (void)_notifyClientsOfFailureForAdvertisedName:(id)name;
- (void)_notifyClientsOfMetadata:(id)metadata forAdvertisedName:(id)name;
- (void)_waitTimeoutWithAdvertisedName:(id)name;
- (void)invalidate;
- (void)readResult:(id)result advertisedName:(id)name bluetoothDeviceID:(id)d;
- (void)waitForWatchPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion;
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

- (BOOL)_deviceSupportsExtensiblePairingWithAdvertisedName:(id)name
{
  v3 = NRAdvertisingInfoFromPayload();
  v4 = v3;
  v7 = 0;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:NRBridgeAdvertisingVersionKey];
    integerValue = [v5 integerValue];

    if (integerValue > 1)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)writeDataForAdvertisedName:(id)name bluetoothDeviceID:(id)d
{
  if ([(EPWatchPusher *)self _deviceSupportsExtensiblePairingWithAdvertisedName:name, d])
  {
    v4 = [@"push" dataUsingEncoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)readResult:(id)result advertisedName:(id)name bluetoothDeviceID:(id)d
{
  resultCopy = result;
  nameCopy = name;
  dCopy = d;
  if (nameCopy)
  {
    if (resultCopy)
    {
      v10 = [[NRPBWatchPairingExtendedMetadata alloc] initWithData:resultCopy];
      [(EPWatchPusher *)self _notifyClientsOfMetadata:v10 forAdvertisedName:nameCopy];
    }

    else
    {
      [(EPWatchPusher *)self _notifyClientsOfFailureForAdvertisedName:nameCopy];
    }
  }
}

- (void)_notifyClientsOfMetadata:(id)metadata forAdvertisedName:(id)name
{
  metadataCopy = metadata;
  contexts = self->_contexts;
  nameCopy = name;
  v9 = [(NSMutableDictionary *)contexts objectForKeyedSubscript:nameCopy];
  if (!v9)
  {
    v9 = objc_opt_new();
  }

  [v9 setMetadata:metadataCopy];
  timer = [v9 timer];
  [timer invalidate];

  [v9 setTimer:0];
  [(NSMutableDictionary *)self->_contexts setObject:v9 forKeyedSubscript:nameCopy];

  completions = [v9 completions];
  [v9 setCompletions:0];
  v12 = +[EPFactory queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100073D80;
  v15[3] = &unk_100175598;
  v16 = completions;
  v17 = metadataCopy;
  v13 = metadataCopy;
  v14 = completions;
  dispatch_async(v12, v15);
}

- (void)_notifyClientsOfFailureForAdvertisedName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:nameCopy];
  v6 = v5;
  if (v5)
  {
    timer = [v5 timer];
    [timer invalidate];

    [v6 setTimer:0];
    completions = [v6 completions];
    [v6 setCompletions:0];
    v9 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100073FC8;
    block[3] = &unk_100175660;
    v12 = completions;
    v10 = completions;
    dispatch_async(v9, block);

    [(NSMutableDictionary *)self->_contexts removeObjectForKey:nameCopy];
  }
}

- (void)invalidate
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSMutableDictionary *)self->_contexts allKeys];
  v4 = [allKeys copy];

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
        timer = [v9 timer];
        [timer invalidate];

        [v9 setTimer:0];
        completions = [v9 completions];
        [v9 setCompletions:0];
        v12 = +[EPFactory queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000742E8;
        block[3] = &unk_100175660;
        v17 = completions;
        v13 = completions;
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

- (void)waitForWatchPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:nameCopy];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100074758;
  v29[3] = &unk_1001780C0;
  v29[4] = self;
  v9 = nameCopy;
  v30 = v9;
  v10 = completionCopy;
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
    metadata = [v8 metadata];
    (v12)[2](v12, 1, metadata, @"Using context metadata");
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

    timer = [v8 timer];

    if (!timer)
    {
      [(EPBulkCharacteristicReaderWriter *)self readDiscoveredDevice:v9];
      v19 = objc_opt_new();

      v20 = objc_opt_new();
      [v19 setCompletions:v20];

      completions = [v19 completions];
      v22 = objc_retainBlock(v12);
      [completions addObject:v22];

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

    metadata = [v8 completions];
    v18 = objc_retainBlock(v12);
    [metadata addObject:v18];
  }

LABEL_14:
}

- (void)_waitTimeoutWithAdvertisedName:(id)name
{
  nameCopy = name;
  v5 = sub_1000034AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = sub_1000034AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      selfCopy = self;
      v10 = 2112;
      v11 = nameCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPWatchPusher[%p]: Push timer timed out for device %@", &v8, 0x16u);
    }
  }

  [(EPWatchPusher *)self _notifyClientsOfFailureForAdvertisedName:nameCopy];
}

@end