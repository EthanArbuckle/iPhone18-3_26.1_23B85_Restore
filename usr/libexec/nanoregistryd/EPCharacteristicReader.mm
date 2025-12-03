@interface EPCharacteristicReader
+ (id)stringForEPCharacteristicReaderState:(unint64_t)state;
- (EPCharacteristicReader)initWithDelegate:(id)delegate timeout:(double)timeout peripheral:(id)peripheral serviceUUID:(id)d characteristicUUID:(id)iD;
- (id)newDispatchTimerOfDuration:(double)duration withTimeoutBlock:(id)block;
- (void)_characteristicDiscoveryTimedOut;
- (void)_readFinishedWithError:(id)error withData:(id)data;
- (void)_readSequenceTimedOut;
- (void)_updateStateWithNewState:(unint64_t)state;
- (void)invalidate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)read;
- (void)setState:(unint64_t)state;
- (void)update;
@end

@implementation EPCharacteristicReader

- (EPCharacteristicReader)initWithDelegate:(id)delegate timeout:(double)timeout peripheral:(id)peripheral serviceUUID:(id)d characteristicUUID:(id)iD
{
  delegateCopy = delegate;
  peripheralCopy = peripheral;
  dCopy = d;
  iDCopy = iD;
  v31.receiver = self;
  v31.super_class = EPCharacteristicReader;
  v16 = [(EPCharacteristicReader *)&v31 init];
  if (v16)
  {
    v17 = sub_1000A98C0();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = sub_1000A98C0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [iDCopy UUIDString];
        *buf = 134218242;
        v33 = v16;
        v34 = 2112;
        v35 = uUIDString;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: init to read characteristic %@", buf, 0x16u);
      }
    }

    v16->_timeout = timeout;
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v21 = +[EPFactory sharedFactory];
    agentManager = [v21 agentManager];
    v23 = [agentManager newCentralManagerWithDelegate:v16];
    central = v16->_central;
    v16->_central = v23;

    objc_storeStrong(&v16->_peripheral, peripheral);
    [peripheralCopy setDelegate:v16];
    objc_storeStrong(&v16->_serviceUUID, d);
    objc_storeStrong(&v16->_characteristicUUID, iD);
    v25 = +[NSMutableArray array];
    services = v16->_services;
    v16->_services = v25;

    v27 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AA2AC;
    block[3] = &unk_100175660;
    v30 = v16;
    dispatch_async(v27, block);
  }

  return v16;
}

- (id)newDispatchTimerOfDuration:(double)duration withTimeoutBlock:(id)block
{
  central = self->_central;
  blockCopy = block;
  resourceManager = [(EPResource *)central resourceManager];
  queue = [resourceManager queue];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);

  v10 = dispatch_time(0, (duration * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v9, blockCopy);

  dispatch_resume(v9);
  return v9;
}

- (void)_readSequenceTimedOut
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Timeout reading from Bluetooth characteristic";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair.read" code:555 userInfo:v3];

  [(EPCharacteristicReader *)self _readFinishedWithError:v4 withData:0];
}

- (void)_characteristicDiscoveryTimedOut
{
  v3 = sub_1000A98C0();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = sub_1000A98C0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100102798(self, v5);
    }
  }

  [(EPCharacteristicReader *)self _readFinishedWithError:0 withData:0];
}

- (void)_readFinishedWithError:(id)error withData:(id)data
{
  errorCopy = error;
  dataCopy = data;
  v8 = sub_1000A98C0();
  v9 = v8;
  if (!errorCopy)
  {
    v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000A98C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: _readFinishedWithError no error", buf, 0xCu);
      }
    }

    ++self->_readAttemptCounter;
    self->_waitingForRead = 0;
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v10)
  {
    v11 = sub_1000A98C0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100102810();
    }
  }

  readAttemptCounter = self->_readAttemptCounter;
  self->_readAttemptCounter = readAttemptCounter + 1;
  self->_waitingForRead = 0;
  if (readAttemptCounter >= 3)
  {
LABEL_13:
    readSequenceTimer = self->_readSequenceTimer;
    if (readSequenceTimer)
    {
      dispatch_source_cancel(readSequenceTimer);
      v16 = self->_readSequenceTimer;
      self->_readSequenceTimer = 0;
    }

    characteristicDiscoveryTimer = self->_characteristicDiscoveryTimer;
    if (characteristicDiscoveryTimer)
    {
      dispatch_source_cancel(characteristicDiscoveryTimer);
      v18 = self->_characteristicDiscoveryTimer;
      self->_characteristicDiscoveryTimer = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_storeWeak(&self->_delegate, 0);
    v20 = +[EPFactory queue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000AA71C;
    v22[3] = &unk_1001756F8;
    v23 = errorCopy;
    v24 = WeakRetained;
    selfCopy2 = self;
    v26 = dataCopy;
    v21 = WeakRetained;
    dispatch_async(v20, v22);
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
  }

  [(EPCharacteristicReader *)self _updateStateWithNewState:?];
}

- (void)_updateStateWithNewState:(unint64_t)state
{
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      if (!self->_readSequenceTimer)
      {
        timeout = self->_timeout;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1000AABD0;
        v33[3] = &unk_100175660;
        v33[4] = self;
        v7 = [(EPCharacteristicReader *)self newDispatchTimerOfDuration:v33 withTimeoutBlock:timeout];
        readSequenceTimer = self->_readSequenceTimer;
        self->_readSequenceTimer = v7;
      }

      if (!self->_connector)
      {
        v9 = [(EPPeripheralObserver *)self->_peripheral newConnectorWithDelegate:self];
        connector = self->_connector;
        self->_connector = v9;
      }

      [(NSMutableArray *)self->_services removeAllObjects];
      characteristic = self->_characteristic;
      self->_characteristic = 0;
    }

    else
    {
      v27 = self->_readSequenceTimer;
      if (v27)
      {
        dispatch_source_cancel(v27);
        v28 = self->_readSequenceTimer;
        self->_readSequenceTimer = 0;
      }

      characteristicDiscoveryTimer = self->_characteristicDiscoveryTimer;
      if (characteristicDiscoveryTimer)
      {
        dispatch_source_cancel(characteristicDiscoveryTimer);
        v30 = self->_characteristicDiscoveryTimer;
        self->_characteristicDiscoveryTimer = 0;
      }

      [(NSMutableArray *)self->_services removeAllObjects];
      v31 = self->_characteristic;
      self->_characteristic = 0;

      characteristic = self->_connector;
      self->_connector = 0;
    }

    self->_waitingForRead = 0;
  }

  else
  {
    switch(state)
    {
      case 2uLL:
        if ([(EPResource *)self->_peripheral availability]== 1)
        {
          v12 = sub_1000A98C0();
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

          if (v13)
          {
            v14 = sub_1000A98C0();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString = [(CBUUID *)self->_serviceUUID UUIDString];
              *buf = 134218242;
              selfCopy2 = self;
              v37 = 2112;
              v38 = uUIDString;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Calling CoreBluetooth CBPeripheral discoverServices: %@", buf, 0x16u);
            }
          }

          peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
          serviceUUID = self->_serviceUUID;
          v17 = [NSArray arrayWithObjects:&serviceUUID count:1];
          [peripheral discoverServices:v17];

          [(EPCharacteristicReader *)self setState:3];
        }

        break;
      case 4uLL:
        if ([(EPResource *)self->_peripheral availability]== 1)
        {
          if (!self->_characteristicDiscoveryTimer)
          {
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_1000AAC14;
            v32[3] = &unk_100175660;
            v32[4] = self;
            v18 = [(EPCharacteristicReader *)self newDispatchTimerOfDuration:v32 withTimeoutBlock:1.5];
            v19 = self->_characteristicDiscoveryTimer;
            self->_characteristicDiscoveryTimer = v18;
          }

          firstObject = [(NSMutableArray *)self->_services firstObject];
          if (firstObject)
          {
            [(NSMutableArray *)self->_services removeObjectAtIndex:0];
            v21 = sub_1000A98C0();
            v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

            if (v22)
            {
              v23 = sub_1000A98C0();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString2 = [(CBUUID *)self->_characteristicUUID UUIDString];
                *buf = 134218498;
                selfCopy2 = self;
                v37 = 2112;
                v38 = uUIDString2;
                v39 = 2048;
                v40 = firstObject;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Calling CoreBluetooth CBPeripheral discoverCharacteristics: %@ service: %p", buf, 0x20u);
              }
            }

            peripheral2 = [(EPPeripheralObserver *)self->_peripheral peripheral];
            characteristicUUID = self->_characteristicUUID;
            v26 = [NSArray arrayWithObjects:&characteristicUUID count:1];
            [peripheral2 discoverCharacteristics:v26 forService:firstObject];

            [(EPCharacteristicReader *)self setState:5];
          }
        }

        break;
      case 6uLL:
        v4 = self->_characteristicDiscoveryTimer;
        if (v4)
        {
          dispatch_source_cancel(v4);
          v5 = self->_characteristicDiscoveryTimer;
          self->_characteristicDiscoveryTimer = 0;
        }

        if ([(EPResource *)self->_peripheral availability]== 1 && !self->_waitingForRead)
        {
          self->_waitingForRead = 1;

          [(EPCharacteristicReader *)self read];
        }

        break;
    }
  }
}

- (void)read
{
  v3 = sub_1000A98C0();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000A98C0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      characteristic = self->_characteristic;
      v8 = 134218242;
      selfCopy = self;
      v10 = 2112;
      v11 = characteristic;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Calling CoreBluetooth CBPeripheral readValueForCharacteristic: for characteristic %@", &v8, 0x16u);
    }
  }

  peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
  [peripheral readValueForCharacteristic:self->_characteristic];
}

- (void)invalidate
{
  v3 = sub_1000A98C0();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000A98C0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: invalidate call", &v6, 0xCu);
    }
  }

  self->_invalidated = 1;
  [(EPCharacteristicReader *)self update];
}

- (void)update
{
  if (self->_invalidated)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    if (!self->_invalidated)
    {
      v3 = 0;
LABEL_11:
      [(EPCharacteristicReader *)self _readFinishedWithError:v3 withData:0];
      [(EPCharacteristicReader *)self setState:0];
      [(EPResource *)self->_central invalidate];
      central = self->_central;
      self->_central = 0;

      [(EPResource *)self->_peripheral invalidate];
      peripheral = self->_peripheral;
      self->_peripheral = 0;

      [(EPResource *)self->_connector invalidate];
      connector = self->_connector;
      self->_connector = 0;

      return;
    }

LABEL_2:
    v3 = objc_loadWeakRetained(&self->_delegate);

    if (v3)
    {
      v13 = NSLocalizedDescriptionKey;
      v14 = @"Reader invalidated";
      v4 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v3 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair.read" code:666 userInfo:v4];
    }

    goto LABEL_11;
  }

  if ([(EPResource *)self->_central availability]!= 1)
  {
    if (![(EPCharacteristicReader *)self state])
    {
      return;
    }

    selfCopy5 = self;
    v9 = 0;
    goto LABEL_23;
  }

  availability = [(EPResource *)self->_connector availability];
  state = [(EPCharacteristicReader *)self state];
  if (availability != 1)
  {
    if (state == 1)
    {
      return;
    }

LABEL_16:
    selfCopy5 = self;
    v9 = 1;
    goto LABEL_23;
  }

  if (state != 1)
  {
    if ([(EPCharacteristicReader *)self state]== 3)
    {
      if (![(NSMutableArray *)self->_services count])
      {
        return;
      }

      selfCopy5 = self;
      v9 = 4;
      goto LABEL_23;
    }

    if ([(EPCharacteristicReader *)self state]== 5)
    {
      if (!self->_characteristic)
      {
        return;
      }

      [(NSMutableArray *)self->_services removeAllObjects];
      selfCopy5 = self;
      v9 = 6;
      goto LABEL_23;
    }

    if ([(EPCharacteristicReader *)self state])
    {
      return;
    }

    goto LABEL_16;
  }

  selfCopy5 = self;
  v9 = 2;
LABEL_23:

  [(EPCharacteristicReader *)selfCopy5 setState:v9];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  identifier = [peripheralCopy identifier];
  peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
  identifier2 = [peripheral identifier];
  v10 = [identifier isEqual:identifier2];

  if (v10 && [(EPCharacteristicReader *)self state]== 3)
  {
    if (services)
    {
      [(EPCharacteristicReader *)self setState:1];
LABEL_37:
      [(EPCharacteristicReader *)self update];
      goto LABEL_38;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    services = [peripheralCopy services];
    v12 = [services countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(services);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          uUID = [v16 UUID];
          v18 = [uUID isEqual:self->_serviceUUID];

          if (v18)
          {
            [(NSMutableArray *)self->_services addObject:v16];
          }
        }

        v13 = [services countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v13);
    }

    if ([(NSMutableArray *)self->_services count])
    {
      v19 = sub_1000A98C0();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (!v20)
      {
        goto LABEL_37;
      }

      v21 = sub_1000A98C0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Found service", buf, 0xCu);
      }
    }

    else
    {
      v21 = objc_alloc_init(NSMutableArray);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v38 = peripheralCopy;
      services2 = [peripheralCopy services];
      v23 = [services2 countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v40;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v40 != v25)
            {
              objc_enumerationMutation(services2);
            }

            v27 = *(*(&v39 + 1) + 8 * j);
            uUID2 = [(CBUUID *)v27 UUID];
            uUIDString = [uUID2 UUIDString];

            if (uUIDString)
            {
              [v21 addObject:uUIDString];
            }

            else
            {
              v30 = sub_1000A98C0();
              v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

              if (v31)
              {
                v32 = sub_1000A98C0();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  selfCopy3 = self;
                  v49 = 2112;
                  v50 = v27;
                  _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "EPCharacteristicReader[%p]: CBService %@ has nil UUID", buf, 0x16u);
                }
              }
            }
          }

          v24 = [services2 countByEnumeratingWithState:&v39 objects:v53 count:16];
        }

        while (v24);
      }

      v33 = sub_1000A98C0();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      peripheralCopy = v38;
      if (v34)
      {
        v35 = sub_1000A98C0();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          serviceUUID = self->_serviceUUID;
          v37 = [v21 componentsJoinedByString:@", "];
          *buf = 134218498;
          selfCopy3 = self;
          v49 = 2114;
          v50 = serviceUUID;
          v51 = 2112;
          v52 = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Did not find service %{public}@, services device has: [%@]", buf, 0x20u);
        }
      }

      [(EPCharacteristicReader *)self _readFinishedWithError:0 withData:0];
    }

    goto LABEL_37;
  }

LABEL_38:
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  serviceCopy = service;
  errorCopy = error;
  identifier = [peripheral identifier];
  peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
  identifier2 = [peripheral identifier];
  v13 = [identifier isEqual:identifier2];

  if (v13)
  {
    v14 = sub_1000A98C0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = sub_1000A98C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy4 = self;
        v40 = 2112;
        v41 = errorCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: CoreBluetooth CBPeripheralDelegate peripheral:didDiscoverCharacteristicsForService with error %@", buf, 0x16u);
      }
    }

    if ([(EPCharacteristicReader *)self state]== 5)
    {
      if (errorCopy)
      {
        selfCopy5 = self;
        v18 = 1;
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        characteristics = [serviceCopy characteristics];
        v20 = [characteristics countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v34;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v34 != v22)
              {
                objc_enumerationMutation(characteristics);
              }

              v24 = *(*(&v33 + 1) + 8 * i);
              uUID = [v24 UUID];
              v26 = [uUID isEqual:self->_characteristicUUID];

              if (v26)
              {
                objc_storeStrong(&self->_characteristic, v24);
                goto LABEL_22;
              }
            }

            v21 = [characteristics countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:

        if (self->_characteristic)
        {
          v27 = sub_1000A98C0();
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

          if (v28)
          {
            v29 = sub_1000A98C0();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              selfCopy4 = self;
              v40 = 2048;
              v41 = serviceCopy;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Found characteristic on service %p", buf, 0x16u);
            }
          }

          goto LABEL_10;
        }

        if (![(NSMutableArray *)self->_services count])
        {
LABEL_10:
          [(EPCharacteristicReader *)self update];
          goto LABEL_11;
        }

        v30 = sub_1000A98C0();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

        if (v31)
        {
          v32 = sub_1000A98C0();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            selfCopy4 = self;
            v40 = 2048;
            v41 = serviceCopy;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Did not find characteristic on service %p, yet", buf, 0x16u);
          }
        }

        selfCopy5 = self;
        v18 = 4;
      }

      [(EPCharacteristicReader *)selfCopy5 setState:v18];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  identifier = [peripheralCopy identifier];
  peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
  identifier2 = [peripheral identifier];
  if (([identifier isEqual:identifier2] & 1) == 0)
  {

    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained || [(EPCharacteristicReader *)self state]!= 6)
  {
    goto LABEL_13;
  }

  identifier = [characteristicCopy UUID];
  peripheral = [(CBCharacteristic *)self->_characteristic UUID];
  if (([identifier isEqual:peripheral] & 1) == 0)
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  identifier3 = [peripheralCopy identifier];
  peripheral2 = [(EPPeripheralObserver *)self->_peripheral peripheral];
  identifier4 = [peripheral2 identifier];
  v18 = [identifier3 isEqual:identifier4];

  if (v18)
  {
    v19 = sub_1000A98C0();
    v20 = v19;
    if (errorCopy)
    {
      v21 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (v21)
      {
        v22 = sub_1000A98C0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100102878();
        }

LABEL_17:
      }
    }

    else
    {
      v23 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v23)
      {
        v22 = sub_1000A98C0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          value = [characteristicCopy value];
          v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [value length]);
          v28 = 134218242;
          selfCopy = self;
          v30 = 2112;
          v31 = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: CoreBluetooth CBPeripheralDelegate peripheral:didUpdateValueForCharacteristic with no error length = %@", &v28, 0x16u);
        }

        goto LABEL_17;
      }
    }

    domain = [errorCopy domain];
    if ([domain isEqual:CBATTErrorDomain])
    {
      code = [errorCopy code];

      if (code == 241)
      {
        [(EPCharacteristicReader *)self setState:1];
        [(EPCharacteristicReader *)self update];
        goto LABEL_13;
      }
    }

    else
    {
    }

    identifier = [characteristicCopy value];
    [(EPCharacteristicReader *)self _readFinishedWithError:errorCopy withData:identifier];
    goto LABEL_12;
  }

LABEL_13:
}

+ (id)stringForEPCharacteristicReaderState:(unint64_t)state
{
  if (state > 6)
  {
    return @"EPCharacteristicReaderState unknown";
  }

  else
  {
    return *(&off_1001789E8 + state);
  }
}

@end