@interface EPCharacteristicWriter
+ (id)stringForEPCharacteristicWriterState:(unint64_t)a3;
- (EPCharacteristicWriter)initWithPeripheral:(id)a3 serviceUUID:(id)a4 characteristicUUID:(id)a5;
- (id)newDispatchTimerOfDuration:(double)a3 withTimeoutBlock:(id)a4;
- (void)_updateStateWithNewState:(unint64_t)a3;
- (void)_writeFinishedWithError:(id)a3 withEntry:(id)a4;
- (void)_writeTimedOutWithEntry:(id)a3;
- (void)invalidate;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)setState:(unint64_t)a3;
- (void)update;
- (void)write;
- (void)writeData:(id)a3 timeout:(double)a4 begin:(id)a5 completion:(id)a6;
@end

@implementation EPCharacteristicWriter

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
      v7 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: invalidate call", &v6, 0xCu);
    }
  }

  self->_invalidated = 1;
  [(EPCharacteristicWriter *)self update];
}

- (EPCharacteristicWriter)initWithPeripheral:(id)a3 serviceUUID:(id)a4 characteristicUUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(EPCharacteristicWriter *)self init];
  if (v12)
  {
    v13 = sub_1000A98C0();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = sub_1000A98C0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v11 UUIDString];
        *buf = 134218242;
        v30 = v12;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: init to write characteristic %@", buf, 0x16u);
      }
    }

    v17 = +[EPFactory sharedFactory];
    v18 = [v17 agentManager];
    v19 = [v18 newCentralManagerWithDelegate:v12];
    central = v12->_central;
    v12->_central = v19;

    objc_storeStrong(&v12->_peripheral, a3);
    [v9 setDelegate:v12];
    objc_storeStrong(&v12->_serviceUUID, a4);
    objc_storeStrong(&v12->_characteristicUUID, a5);
    v21 = +[NSMutableArray array];
    writeFIFO = v12->_writeFIFO;
    v12->_writeFIFO = v21;

    v23 = +[NSMutableArray array];
    services = v12->_services;
    v12->_services = v23;

    v25 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D55A8;
    block[3] = &unk_100175660;
    v28 = v12;
    dispatch_async(v25, block);
  }

  return v12;
}

- (id)newDispatchTimerOfDuration:(double)a3 withTimeoutBlock:(id)a4
{
  central = self->_central;
  v6 = a4;
  v7 = [(EPResource *)central resourceManager];
  v8 = [v7 queue];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);

  v10 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v9, v6);

  dispatch_resume(v9);
  return v9;
}

- (void)writeData:(id)a3 timeout:(double)a4 begin:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(EPCharacteristicWriterWriteEntry);
  [(EPCharacteristicWriterWriteEntry *)v13 setData:v12];

  [(EPCharacteristicWriterWriteEntry *)v13 setBegin:v11];
  [(EPCharacteristicWriterWriteEntry *)v13 setCompletion:v10];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000D57C8;
  v19 = &unk_100175598;
  v20 = self;
  v21 = v13;
  v14 = v13;
  v15 = [(EPCharacteristicWriter *)self newDispatchTimerOfDuration:&v16 withTimeoutBlock:a4];
  [(EPCharacteristicWriterWriteEntry *)v14 setTimer:v15, v16, v17, v18, v19, v20];

  [(EPCharacteristicWriterWriteEntry *)v14 setWriter:self];
  [(NSMutableArray *)self->_writeFIFO addObject:v14];
  [(EPCharacteristicWriter *)self update];
  [(EPCharacteristicWriter *)self write];
}

- (void)_writeTimedOutWithEntry:(id)a3
{
  v4 = a3;
  [v4 setTimer:0];
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Timeout writing to Bluetooth characteristic";
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair.write" code:555 userInfo:v5];

  [(EPCharacteristicWriter *)self _writeFinishedWithError:v6 withEntry:v4];
}

- (void)_writeFinishedWithError:(id)a3 withEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v14 = sub_1000A98C0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (!v15)
    {
      goto LABEL_16;
    }

    v12 = sub_1000A98C0();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 134217984;
    v47 = self;
    v13 = "EPCharacteristicWriter[%p]: _writeFinishedWithError no error";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    goto LABEL_15;
  }

  v8 = [v6 domain];
  if ([v8 isEqual:@"com.apple.nanoregistry.extensiblepair.write"])
  {
    v9 = [v6 code];

    if (v9 == 666)
    {
      v10 = sub_1000A98C0();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = sub_1000A98C0();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      v47 = self;
      v13 = "EPCharacteristicWriter[%p]: Write canceled";
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = sub_1000A98C0();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (!v17)
  {
    goto LABEL_16;
  }

  v12 = sub_1000A98C0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100103A34();
  }

LABEL_15:

LABEL_16:
  if (!v7)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = self->_writeFIFO;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      while (2)
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v38 + 1) + 8 * i);
          if ([v27 written])
          {
            [(NSMutableArray *)self->_writeFIFO removeObject:v27];
            v28 = [v27 timer];

            if (v28)
            {
              v29 = [v27 timer];
              dispatch_source_cancel(v29);

              [v27 setTimer:0];
            }

            v30 = [v27 completion];

            if (v30)
            {
              v31 = +[EPFactory queue];
              v32 = _NSConcreteStackBlock;
              v33 = 3221225472;
              v34 = sub_1000D5D70;
              v35 = &unk_100175598;
              v36 = v27;
              v37 = v6;
              dispatch_async(v31, &v32);
            }

            goto LABEL_34;
          }
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_34;
  }

  [(NSMutableArray *)self->_writeFIFO removeObject:v7];
  v18 = [v7 timer];

  if (v18)
  {
    v19 = [v7 timer];
    dispatch_source_cancel(v19);

    [v7 setTimer:0];
  }

  v20 = [v7 completion];

  if (v20)
  {
    v21 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D5D14;
    block[3] = &unk_100175598;
    v43 = v7;
    v44 = v6;
    dispatch_async(v21, block);

    v22 = v43;
LABEL_34:
  }

  [(EPCharacteristicWriter *)self update:v32];
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(EPCharacteristicWriter *)self _updateStateWithNewState:?];
  }
}

- (void)_updateStateWithNewState:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [(NSMutableArray *)self->_services removeAllObjects];
        characteristic = self->_characteristic;
        self->_characteristic = 0;

        if (!self->_connector)
        {
          v5 = [(EPPeripheralObserver *)self->_peripheral newConnectorWithDelegate:self];
          connector = self->_connector;
          self->_connector = v5;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v7 = self->_writeFIFO;
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v32;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v32 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v31 + 1) + 8 * i);
              v13 = [v12 completion];

              if (v13)
              {
                [v12 setWritten:0];
              }
            }

            v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
          }

          while (v9);
        }
      }
    }

    else
    {
      [(NSMutableArray *)self->_services removeAllObjects];
      v27 = self->_characteristic;
      self->_characteristic = 0;

      [(EPResource *)self->_connector invalidate];
      v28 = self->_connector;
      self->_connector = 0;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 4)
      {
        if (a3 == 6)
        {
          [(NSMutableArray *)self->_services removeAllObjects];

          [(EPCharacteristicWriter *)self write];
        }

        return;
      }

      v19 = [(NSMutableArray *)self->_services firstObject];
      if (v19)
      {
        [(NSMutableArray *)self->_services removeObjectAtIndex:0];
        v20 = sub_1000A98C0();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v22 = sub_1000A98C0();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            characteristicUUID = self->_characteristicUUID;
            *buf = 134218498;
            v37 = self;
            v38 = 2112;
            v39 = characteristicUUID;
            v40 = 2048;
            v41 = v19;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: Calling CoreBluetooth CBPeripheral discoverCharacteristics: %@ service: %p", buf, 0x20u);
          }
        }

        v24 = [(EPPeripheralObserver *)self->_peripheral peripheral];
        v35 = self->_characteristicUUID;
        v25 = [NSArray arrayWithObjects:&v35 count:1];
        [v24 discoverCharacteristics:v25 forService:v19];

        v26 = 5;
      }

      else
      {
        v29 = sub_1000A98C0();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

        if (!v30)
        {
          v26 = 1;
          goto LABEL_41;
        }

        v24 = sub_1000A98C0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100103A9C(self, v24);
        }

        v26 = 1;
      }

LABEL_41:
      [(EPCharacteristicWriter *)self setState:v26];

      return;
    }

    v14 = sub_1000A98C0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = sub_1000A98C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v37 = self;
        v38 = 2112;
        v39 = @"9AA4730F-B25C-4CC3-B821-C931559FC196";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: Calling CoreBluetooth CBPeripheral discoverServices: %@", buf, 0x16u);
      }
    }

    v17 = [(EPPeripheralObserver *)self->_peripheral peripheral];
    serviceUUID = self->_serviceUUID;
    v18 = [NSArray arrayWithObjects:&serviceUUID count:1];
    [v17 discoverServices:v18];

    [(EPCharacteristicWriter *)self setState:3];
  }
}

- (void)write
{
  if ([(EPCharacteristicWriter *)self state]== 6)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = self->_writeFIFO;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v24;
      *&v5 = 134218242;
      v22 = v5;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          if (([v9 written] & 1) == 0)
          {
            [v9 setWritten:1];
            v10 = sub_1000A98C0();
            v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

            if (v11)
            {
              v12 = sub_1000A98C0();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = [v9 data];
                v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 length]);
                *buf = v22;
                v28 = self;
                v29 = 2112;
                v30 = v14;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: Calling CoreBluetooth CBPeripheral writeValue:forCharacteristic:type: data.length %@", buf, 0x16u);
              }
            }

            v15 = [(EPPeripheralObserver *)self->_peripheral peripheral];
            v16 = [v9 data];
            [v15 writeValue:v16 forCharacteristic:self->_characteristic type:0];
          }

          v17 = [v9 begin];

          if (v17)
          {
            v18 = [v9 begin];
            [v9 setBegin:0];
            v19 = sub_1000A98C0();
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

            if (v20)
            {
              v21 = sub_1000A98C0();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v28 = self;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: Calling write:withBegin:withCompletion: begin block()", buf, 0xCu);
              }
            }

            v18[2](v18);
          }
        }

        v6 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v6);
    }
  }
}

- (void)update
{
  if (self->_invalidated)
  {
    v22 = NSLocalizedDescriptionKey;
    v23 = @"Writer invalidated";
    v3 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v4 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair.write" code:666 userInfo:v3];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_writeFIFO;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(EPCharacteristicWriter *)self _writeFinishedWithError:v4 withEntry:*(*(&v17 + 1) + 8 * v9), v17];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_writeFIFO removeAllObjects];
    [(EPCharacteristicWriter *)self setState:0];
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

  if (![(NSMutableArray *)self->_writeFIFO count])
  {
    if (![(EPCharacteristicWriter *)self state])
    {
      return;
    }

    v15 = self;
    v16 = 0;
    goto LABEL_21;
  }

  if ([(EPResource *)self->_central availability]!= 1)
  {
    v14 = [(EPCharacteristicWriter *)self state];
LABEL_19:
    if (v14 == 1)
    {
      return;
    }

LABEL_20:
    v15 = self;
    v16 = 1;
    goto LABEL_21;
  }

  v13 = [(EPResource *)self->_connector availability];
  v14 = [(EPCharacteristicWriter *)self state];
  if (v13 != 1)
  {
    goto LABEL_19;
  }

  if (v14 != 1)
  {
    if ([(EPCharacteristicWriter *)self state]== 3)
    {
      if (![(NSMutableArray *)self->_services count])
      {
        return;
      }

      v15 = self;
      v16 = 4;
      goto LABEL_21;
    }

    if ([(EPCharacteristicWriter *)self state]== 5)
    {
      if (!self->_characteristic)
      {
        return;
      }

      v15 = self;
      v16 = 6;
      goto LABEL_21;
    }

    if ([(EPCharacteristicWriter *)self state])
    {
      return;
    }

    goto LABEL_20;
  }

  v15 = self;
  v16 = 2;
LABEL_21:

  [(EPCharacteristicWriter *)v15 setState:v16];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [(EPPeripheralObserver *)self->_peripheral peripheral];
  v9 = [v8 identifier];
  v10 = [v7 isEqual:v9];

  if (v10 && [(EPCharacteristicWriter *)self state]== 3)
  {
    if (a4)
    {
      if ([(EPCharacteristicWriter *)self state]!= 1)
      {
        v11 = self;
        v12 = 1;
LABEL_21:
        [(EPCharacteristicWriter *)v11 setState:v12];
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = v6;
      v13 = [v6 services];
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            v19 = [v18 UUID];
            v20 = [v19 isEqual:self->_serviceUUID];

            if (v20)
            {
              [(NSMutableArray *)self->_services addObject:v18];
              v21 = sub_1000A98C0();
              v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

              if (v22)
              {
                v23 = sub_1000A98C0();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = [(CBUUID *)self->_serviceUUID UUIDString];
                  *buf = 134218242;
                  v38 = self;
                  v39 = 2112;
                  v40 = v24;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: Found service %@", buf, 0x16u);
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v15);
      }

      if (![(NSMutableArray *)self->_services count])
      {
        v25 = sub_1000A98C0();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

        if (v26)
        {
          v27 = sub_1000A98C0();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100103B14(self, v27);
          }
        }

        v35 = NSLocalizedDescriptionKey;
        v36 = @"Service not discovered";
        v28 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v29 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair.write" code:565 userInfo:v28];

        [(EPCharacteristicWriter *)self _writeFinishedWithError:v29 withEntry:0];
        v6 = v30;
        goto LABEL_27;
      }

      v6 = v30;
      if ([(EPCharacteristicWriter *)self state]!= 4)
      {
        v11 = self;
        v12 = 4;
        goto LABEL_21;
      }
    }

LABEL_27:
    [(EPCharacteristicWriter *)self update];
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1000A98C0();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = sub_1000A98C0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v49 = self;
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: CoreBluetooth CBPeripheralDelegate peripheral:didDiscoverCharacteristicsForService with error %@", buf, 0x16u);
    }
  }

  v14 = [v8 identifier];
  v15 = [(EPPeripheralObserver *)self->_peripheral peripheral];
  v16 = [v15 identifier];
  v17 = [v14 isEqual:v16];

  if (v17 && [(EPCharacteristicWriter *)self state]== 5)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = v9;
    v18 = [v9 characteristics];
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v42 + 1) + 8 * i);
          v24 = [v23 UUID];
          v25 = [v24 isEqual:self->_characteristicUUID];

          if (v25)
          {
            objc_storeStrong(&self->_characteristic, v23);
            goto LABEL_17;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    if (self->_characteristic)
    {
      v26 = sub_1000A98C0();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (v27)
      {
        v28 = sub_1000A98C0();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(CBUUID *)self->_characteristicUUID UUIDString];
          *buf = 134218242;
          v49 = self;
          v50 = 2112;
          v51 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: Found characteristic %@", buf, 0x16u);
        }
      }

      v9 = v41;
      if ([(EPCharacteristicWriter *)self state]== 6)
      {
        goto LABEL_36;
      }

      v30 = self;
      v31 = 6;
    }

    else
    {
      v32 = [(NSMutableArray *)self->_services count];
      v33 = sub_1000A98C0();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (!v32)
      {
        v9 = v41;
        if (v34)
        {
          v37 = sub_1000A98C0();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [(CBUUID *)self->_characteristicUUID UUIDString];
            *buf = 134218242;
            v49 = self;
            v50 = 2112;
            v51 = v38;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: Did not find characteristic %@ on any service", buf, 0x16u);
          }
        }

        v46 = NSLocalizedDescriptionKey;
        v47 = @"Characteristic not discovered";
        v39 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v40 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair.write" code:575 userInfo:v39];

        [(EPCharacteristicWriter *)self _writeFinishedWithError:v40 withEntry:0];
        goto LABEL_36;
      }

      v9 = v41;
      if (v34)
      {
        v35 = sub_1000A98C0();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [(CBUUID *)self->_characteristicUUID UUIDString];
          *buf = 134218498;
          v49 = self;
          v50 = 2112;
          v51 = v36;
          v52 = 2048;
          v53 = v41;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: Did not find characteristic %@ on service %p", buf, 0x20u);
        }
      }

      v30 = self;
      v31 = 4;
    }

    [(EPCharacteristicWriter *)v30 setState:v31];
LABEL_36:
    [(EPCharacteristicWriter *)self update];
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 identifier];
  v11 = [(EPPeripheralObserver *)self->_peripheral peripheral];
  v12 = [v11 identifier];
  v13 = [v10 isEqual:v12];

  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = [v8 UUID];
  v15 = [v14 isEqual:self->_characteristicUUID];

  if (!v15 || [(EPCharacteristicWriter *)self state]!= 6)
  {
    goto LABEL_22;
  }

  v16 = sub_1000A98C0();
  v17 = v16;
  if (!v9)
  {
    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v23 = sub_1000A98C0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134217984;
        v27 = self;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "EPCharacteristicWriter[%p]: CoreBluetooth CBPeripheralDelegate peripheral:didWriteValueForCharacteristic with no error", &v26, 0xCu);
      }
    }

    v24 = self;
    v25 = 0;
    goto LABEL_21;
  }

  v18 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v18)
  {
    v19 = sub_1000A98C0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100103BC8();
    }
  }

  v20 = [v9 domain];
  if (![v20 isEqual:CBATTErrorDomain])
  {

    goto LABEL_20;
  }

  v21 = [v9 code];

  if (v21 != 241)
  {
LABEL_20:
    v24 = self;
    v25 = v9;
LABEL_21:
    [(EPCharacteristicWriter *)v24 _writeFinishedWithError:v25 withEntry:0];
    goto LABEL_22;
  }

  if ([(EPCharacteristicWriter *)self state]!= 1)
  {
    [(EPCharacteristicWriter *)self setState:1];
  }

  [(EPCharacteristicWriter *)self update];
LABEL_22:
}

+ (id)stringForEPCharacteristicWriterState:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"EPCharacteristicWriterState unknown";
  }

  else
  {
    return *(&off_1001797D0 + a3);
  }
}

@end