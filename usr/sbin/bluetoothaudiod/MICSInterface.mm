@interface MICSInterface
- (BOOL)sendGainSetting:(char)setting inputType:(unsigned __int8)type;
- (MICSInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (id)getIncludedServiceInterfaceForService:(id)service;
- (void)_handleMuteUpdate;
- (void)dealloc;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation MICSInterface

- (MICSInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v9.receiver = self;
  v9.super_class = MICSInterface;
  v4 = [(ServiceInterface *)&v9 initWithPeripheral:peripheral service:service];
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

  peripheral = [(ServiceInterface *)self peripheral];
  service = [(ServiceInterface *)self service];
  [peripheral discoverCharacteristics:v5 forService:service];

  v8 = [CBUUID UUIDWithString:CBUUIDAudioInputControlServiceString];
  v13 = v8;
  v9 = [NSArray arrayWithObjects:&v13 count:1];

  peripheral2 = [(ServiceInterface *)self peripheral];
  service2 = [(ServiceInterface *)self service];
  [peripheral2 discoverIncludedServices:v9 forService:service2];
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

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService %@", buf, 0xCu);
  }

  if (!errorCopy)
  {
    v23 = serviceCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    characteristics = [serviceCopy characteristics];
    v11 = [characteristics countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(characteristics);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            uUID = [v16 UUID];
            *buf = 138412290;
            v32 = uUID;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService Characteristic %@", buf, 0xCu);
          }

          uUID2 = [v16 UUID];
          v21 = [CBUUID UUIDWithString:v14];
          v22 = [uUID2 isEqual:v21];

          if (v22)
          {
            [(MICSInterface *)self setMuteCharacteristic:v16];
            if (([v16 properties] & 0x10) != 0)
            {
              [peripheralCopy setNotifyValue:1 forCharacteristic:v16];
            }

            [peripheralCopy readValueForCharacteristic:v16];
          }
        }

        v12 = [characteristics countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    [(ServiceInterface *)self notifyDidStart];
    errorCopy = 0;
    serviceCopy = v23;
  }
}

- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  v10 = &qword_1000A9FE0;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    includedServices = [serviceCopy includedServices];
    *buf = 138412802;
    v53 = includedServices;
    v54 = 2112;
    v55 = serviceCopy;
    v56 = 2112;
    v57 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didDiscoverIncludedServicesForService %@ for service %@ : %@", buf, 0x20u);
  }

  if (!errorCopy)
  {
    v41 = serviceCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    includedServices2 = [serviceCopy includedServices];
    v15 = [includedServices2 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      v44 = CBUUIDAudioInputControlServiceString;
      v42 = includedServices2;
      do
      {
        v18 = 0;
        do
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(includedServices2);
          }

          v19 = *(*(&v45 + 1) + 8 * v18);
          includedServiceInterfaceMap = [(MICSInterface *)self includedServiceInterfaceMap];
          v21 = [includedServiceInterfaceMap objectForKey:v19];

          if (!v21)
          {
            uUID = [v19 UUID];
            v23 = [CBUUID UUIDWithString:v44];
            v24 = [uUID isEqual:v23];

            if (v24)
            {
              v25 = [objc_alloc(NSClassFromString(@"AICSInterface")) initWithPeripheral:peripheralCopy service:v19];
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
                name = [peripheralCopy name];
                uUID2 = [v19 UUID];
                *buf = 138412802;
                v53 = name;
                v54 = 2114;
                v55 = uUID2;
                v56 = 2112;
                v57 = v19;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Peripheral %@ supports included service %{public}@. %@", buf, 0x20u);
              }

              [(NSMapTable *)self->_includedServiceInterfaceMap setObject:v25 forKey:v19];
              serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
              [v25 setServiceEventHandler:serviceEventHandler];

              v10 = v27;
              if (([v25 isStarted] & 1) == 0)
              {
                v33 = *v27;
                if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = v33;
                  uUID3 = [v19 UUID];
                  peripheral = [(ServiceInterface *)self peripheral];
                  name2 = [peripheral name];
                  *buf = 138412546;
                  v53 = uUID3;
                  v54 = 2112;
                  v55 = name2;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Starting included service %@ on peripheral %@", buf, 0x16u);

                  v10 = v27;
                }

                [v25 start];
              }

              includedServices2 = v42;
            }
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [includedServices2 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v16);
    }

    includedServiceInterfaceMap2 = [(MICSInterface *)self includedServiceInterfaceMap];
    v39 = [includedServiceInterfaceMap2 count];

    errorCopy = 0;
    serviceCopy = v41;
    if (!v39)
    {
      v40 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B564(v40, peripheralCopy, v41);
      }
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [characteristicCopy description];
    v15 = 136315394;
    v16 = "[MICSInterface peripheral:didUpdateValueForCharacteristic:error:]";
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MICSClientService %s updated characteristic %@ ", &v15, 0x16u);
  }

  if (!errorCopy)
  {
    muteCharacteristic = [(MICSInterface *)self muteCharacteristic];

    if (muteCharacteristic == characteristicCopy)
    {
      [(MICSInterface *)self _handleMuteUpdate];
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [characteristicCopy description];
    v15 = 136315394;
    v16 = "[MICSInterface peripheral:didUpdateNotificationStateForCharacteristic:error:]";
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MICSClientService %s notified updated characteristic %@ ", &v15, 0x16u);
  }

  if (!errorCopy)
  {
    muteCharacteristic = [(MICSInterface *)self muteCharacteristic];

    if (muteCharacteristic == characteristicCopy)
    {
      [(MICSInterface *)self _handleMuteUpdate];
    }
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  muteCharacteristic = [(MICSInterface *)self muteCharacteristic];

  if (muteCharacteristic == characteristicCopy)
  {
    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      v23 = 138412546;
      v24 = name;
      v25 = 2112;
      v26 = errorCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Mute result for member %@: %@", &v23, 0x16u);
    }

    if ([errorCopy code] == 19)
    {
      v14 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005EFD0(errorCopy, v14);
      }
    }

    else if ([errorCopy code] == 128)
    {
      v15 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005EF58(errorCopy, v15);
      }
    }

    else if (![errorCopy code])
    {
      v16 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        mute = [(MICSInterface *)self mute];
        v23 = 67109120;
        LODWORD(v24) = mute;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Mute: %d", &v23, 8u);
      }
    }

    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (serviceEventHandler)
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      [v20 setValue:v21 forKey:@"kMicrophoneMute"];

      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 6, v20);
    }
  }
}

- (BOOL)sendGainSetting:(char)setting inputType:(unsigned __int8)type
{
  typeCopy = type;
  settingCopy = setting;
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
        getAudioInputType = [v12 getAudioInputType];
        if (getAudioInputType == typeCopy)
        {
          v9 |= [v12 sendGainSetting:settingCopy];
        }

        else
        {
          v14 = getAudioInputType;
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

- (id)getIncludedServiceInterfaceForService:(id)service
{
  serviceCopy = service;
  includedServiceInterfaceMap = [(MICSInterface *)self includedServiceInterfaceMap];
  v6 = [includedServiceInterfaceMap objectForKey:serviceCopy];

  return v6;
}

- (void)_handleMuteUpdate
{
  muteCharacteristic = [(MICSInterface *)self muteCharacteristic];
  value = [muteCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value];

  v6 = objc_alloc_init(NSMutableDictionary);
  v16 = 0;
  if ([v5 readUint8:&v16])
  {
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      *buf = 138412546;
      v18 = name;
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

  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
  if (serviceEventHandler)
  {
    v13 = serviceEventHandler;
    v14 = [v6 count];

    if (v14)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 7, v6);
    }
  }
}

@end