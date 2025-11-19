@interface MICSInterface
- (BOOL)sendGainSetting:(char)a3 inputType:(unsigned __int8)a4;
- (MICSInterface)initWithPeripheral:(id)a3 service:(id)a4;
- (id)getIncludedServiceInterfaceForService:(id)a3;
- (void)_handleMuteUpdate;
- (void)dealloc;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverIncludedServicesForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation MICSInterface

- (MICSInterface)initWithPeripheral:(id)a3 service:(id)a4
{
  v9.receiver = self;
  v9.super_class = MICSInterface;
  v4 = [(ServiceInterface *)&v9 initWithPeripheral:a3 service:a4];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
    [(MICSInterface *)v5 setMuteCharacteristic:0];
    [(MICSInterface *)v5 setMute:0];
    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    includedServiceInterfaceMap = v5->_includedServiceInterfaceMap;
    v5->_includedServiceInterfaceMap = v6;
  }

  return v5;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = MICSInterface;
  [(ServiceInterface *)&v12 start];
  v3 = [CBUUID UUIDWithString:CBUUIDMicrophoneControlServiceString];
  v14[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDMuteCharacteristicString];
  v14[1] = v4;
  v5 = [NSArray arrayWithObjects:v14 count:2];

  v6 = [(ServiceInterface *)self peripheral];
  v7 = [(ServiceInterface *)self service];
  [v6 discoverCharacteristics:v5 forService:v7];

  v8 = [CBUUID UUIDWithString:CBUUIDAudioInputControlServiceString];
  v13 = v8;
  v9 = [NSArray arrayWithObjects:&v13 count:1];

  v10 = [(ServiceInterface *)self peripheral];
  v11 = [(ServiceInterface *)self service];
  [v10 discoverIncludedServices:v9 forService:v11];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = MICSInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)dealloc
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_includedServiceInterfaceMap;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (v8)
        {
          [v8 stop];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = MICSInterface;
  [(MICSInterface *)&v9 dealloc];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v25 = a3;
  v7 = a4;
  v8 = a5;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService %@", buf, 0xCu);
  }

  if (!v8)
  {
    v23 = v7;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v7 characteristics];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      v14 = CBUUIDMuteCharacteristicString;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            v19 = [v16 UUID];
            *buf = 138412290;
            v32 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService Characteristic %@", buf, 0xCu);
          }

          v20 = [v16 UUID];
          v21 = [CBUUID UUIDWithString:v14];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
            [(MICSInterface *)self setMuteCharacteristic:v16];
            if (([v16 properties] & 0x10) != 0)
            {
              [v25 setNotifyValue:1 forCharacteristic:v16];
            }

            [v25 readValueForCharacteristic:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    [(ServiceInterface *)self notifyDidStart];
    v8 = 0;
    v7 = v23;
  }
}

- (void)peripheral:(id)a3 didDiscoverIncludedServicesForService:(id)a4 error:(id)a5
{
  v43 = a3;
  v8 = a4;
  v9 = a5;
  v10 = &qword_1000A9FE0;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 includedServices];
    *buf = 138412802;
    v53 = v13;
    v54 = 2112;
    v55 = v8;
    v56 = 2112;
    v57 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didDiscoverIncludedServicesForService %@ for service %@ : %@", buf, 0x20u);
  }

  if (!v9)
  {
    v41 = v8;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = [v8 includedServices];
    v15 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      v44 = CBUUIDAudioInputControlServiceString;
      v42 = v14;
      do
      {
        v18 = 0;
        do
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v45 + 1) + 8 * v18);
          v20 = [(MICSInterface *)self includedServiceInterfaceMap];
          v21 = [v20 objectForKey:v19];

          if (!v21)
          {
            v22 = [v19 UUID];
            v23 = [CBUUID UUIDWithString:v44];
            v24 = [v22 isEqual:v23];

            if (v24)
            {
              v25 = [objc_alloc(NSClassFromString(@"AICSInterface")) initWithPeripheral:v43 service:v19];
              [v25 setParentServiceInterface:self];
              v26 = *v10;
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
              {
                sub_10005B4E0(v49, v26, v25, &v50);
              }

              v27 = v10;
              v28 = *v10;
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
              {
                v29 = v28;
                v30 = [v43 name];
                v31 = [v19 UUID];
                *buf = 138412802;
                v53 = v30;
                v54 = 2114;
                v55 = v31;
                v56 = 2112;
                v57 = v19;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Peripheral %@ supports included service %{public}@. %@", buf, 0x20u);
              }

              [(NSMapTable *)self->_includedServiceInterfaceMap setObject:v25 forKey:v19];
              v32 = [(ServiceInterface *)self serviceEventHandler];
              [v25 setServiceEventHandler:v32];

              v10 = v27;
              if (([v25 isStarted] & 1) == 0)
              {
                v33 = *v27;
                if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = v33;
                  v35 = [v19 UUID];
                  v36 = [(ServiceInterface *)self peripheral];
                  v37 = [v36 name];
                  *buf = 138412546;
                  v53 = v35;
                  v54 = 2112;
                  v55 = v37;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Starting included service %@ on peripheral %@", buf, 0x16u);

                  v10 = v27;
                }

                [v25 start];
              }

              v14 = v42;
            }
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v16);
    }

    v38 = [(MICSInterface *)self includedServiceInterfaceMap];
    v39 = [v38 count];

    v9 = 0;
    v8 = v41;
    if (!v39)
    {
      v40 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B564(v40, v43, v41);
      }
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 description];
    v15 = 136315394;
    v16 = "[MICSInterface peripheral:didUpdateValueForCharacteristic:error:]";
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MICSClientService %s updated characteristic %@ ", &v15, 0x16u);
  }

  if (!v10)
  {
    v14 = [(MICSInterface *)self muteCharacteristic];

    if (v14 == v9)
    {
      [(MICSInterface *)self _handleMuteUpdate];
    }
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 description];
    v15 = 136315394;
    v16 = "[MICSInterface peripheral:didUpdateNotificationStateForCharacteristic:error:]";
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MICSClientService %s notified updated characteristic %@ ", &v15, 0x16u);
  }

  if (!v10)
  {
    v14 = [(MICSInterface *)self muteCharacteristic];

    if (v14 == v9)
    {
      [(MICSInterface *)self _handleMuteUpdate];
    }
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MICSInterface *)self muteCharacteristic];

  if (v9 == v8)
  {
    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(ServiceInterface *)self peripheral];
      v13 = [v12 name];
      v23 = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Mute result for member %@: %@", &v23, 0x16u);
    }

    if ([v7 code] == 19)
    {
      v14 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005EFD0(v7, v14);
      }
    }

    else if ([v7 code] == 128)
    {
      v15 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005EF58(v7, v15);
      }
    }

    else if (![v7 code])
    {
      v16 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [(MICSInterface *)self mute];
        v23 = 67109120;
        LODWORD(v24) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Mute: %d", &v23, 8u);
      }
    }

    v19 = [(ServiceInterface *)self serviceEventHandler];

    if (v19)
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
      [v20 setValue:v21 forKey:@"kMicrophoneMute"];

      v22 = [(ServiceInterface *)self serviceEventHandler];
      (v22)[2](v22, 6, v20);
    }
  }
}

- (BOOL)sendGainSetting:(char)a3 inputType:(unsigned __int8)a4
{
  v4 = a4;
  v18 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_includedServiceInterfaceMap;
  v6 = [(NSMapTable *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v21;
    *&v7 = 67109120;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSMapTable *)self->_includedServiceInterfaceMap objectForKey:*(*(&v20 + 1) + 8 * i), v17];
        v13 = [v12 getAudioInputType];
        if (v13 == v4)
        {
          v9 |= [v12 sendGainSetting:v18];
        }

        else
        {
          v14 = v13;
          v15 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v25 = v14;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Audio Input Type mismatch, currInputType %d", buf, 8u);
          }
        }
      }

      v8 = [(NSMapTable *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (id)getIncludedServiceInterfaceForService:(id)a3
{
  v4 = a3;
  v5 = [(MICSInterface *)self includedServiceInterfaceMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)_handleMuteUpdate
{
  v3 = [(MICSInterface *)self muteCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4];

  v6 = objc_alloc_init(NSMutableDictionary);
  v16 = 0;
  if ([v5 readUint8:&v16])
  {
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(ServiceInterface *)self peripheral];
      v10 = [v9 name];
      *buf = 138412546;
      v18 = v10;
      v19 = 1024;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Mute for member %@: %u", buf, 0x12u);
    }

    if (self->_mute != v16)
    {
      v11 = [NSNumber numberWithUnsignedChar:?];
      [v6 setObject:v11 forKey:@"kMicrophoneMute"];

      self->_mute = v16;
    }
  }

  v12 = [(ServiceInterface *)self serviceEventHandler];
  if (v12)
  {
    v13 = v12;
    v14 = [v6 count];

    if (v14)
    {
      v15 = [(ServiceInterface *)self serviceEventHandler];
      (v15)[2](v15, 7, v6);
    }
  }
}

@end