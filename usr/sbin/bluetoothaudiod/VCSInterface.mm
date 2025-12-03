@interface VCSInterface
- (BOOL)_canRetryInvalidChangeCounter;
- (BOOL)sendGainSetting:(char)setting inputType:(unsigned __int8)type;
- (BOOL)sendVolumeControlPoint;
- (BOOL)sendVolumeOffset:(signed __int16)offset audioLocation:(unsigned int)location;
- (BOOL)setAbsoluteVolume:(unsigned __int8)volume;
- (BOOL)setInitialVolume;
- (BOOL)setMute:(BOOL)mute;
- (BOOL)setRelativeVolumeDown;
- (BOOL)setRelativeVolumeUp;
- (VCSInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (id)getIncludedServiceInterfaceForService:(id)service;
- (void)_handleVolumeFlagsUpdate;
- (void)_handleVolumeStateCharacteristicUpdate;
- (void)_updateComplete;
- (void)dealloc;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation VCSInterface

- (VCSInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v9.receiver = self;
  v9.super_class = VCSInterface;
  v4 = [(ServiceInterface *)&v9 initWithPeripheral:peripheral service:service];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
    [(VCSInterface *)v5 setVolumeStateCharacteristic:0];
    [(VCSInterface *)v5 setVolumeControlPointCharacteristic:0];
    [(VCSInterface *)v5 setVolumeFlagsCharacteristic:0];
    *&v5->_volumeState.volumeSetting = 0;
    v5->_volumeState.changeCounter = 0;
    v5->_volumeControlPoint = 255;
    v5->_volumeFlags = 0;
    *&v5->_invalidChangeCounterRetries = 1;
    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    includedServiceInterfaceMap = v5->_includedServiceInterfaceMap;
    v5->_includedServiceInterfaceMap = v6;
  }

  return v5;
}

- (void)start
{
  v15.receiver = self;
  v15.super_class = VCSInterface;
  [(ServiceInterface *)&v15 start];
  v3 = [CBUUID UUIDWithString:CBUUIDVolumeControlServiceString];
  v17[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDVolumeStateCharacteristicString];
  v17[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDVolumeControlPointCharacteristicString];
  v17[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDVolumeFlagsCharacteristicString];
  v17[3] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:4];

  peripheral = [(ServiceInterface *)self peripheral];
  service = [(ServiceInterface *)self service];
  [peripheral discoverCharacteristics:v7 forService:service];

  v10 = [CBUUID UUIDWithString:CBUUIDVolumeOffsetControlServiceString];
  v16[0] = v10;
  v11 = [CBUUID UUIDWithString:CBUUIDAudioInputControlServiceString];
  v16[1] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:2];

  peripheral2 = [(ServiceInterface *)self peripheral];
  service2 = [(ServiceInterface *)self service];
  [peripheral2 discoverIncludedServices:v12 forService:service2];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = VCSInterface;
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
  v9.super_class = VCSInterface;
  [(VCSInterface *)&v9 dealloc];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService %@", buf, 0xCu);
  }

  if (!errorCopy)
  {
    v29 = serviceCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [serviceCopy characteristics];
    v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = v11;
    v13 = *v35;
    v14 = CBUUIDVolumeStateCharacteristicString;
    v31 = CBUUIDVolumeControlPointCharacteristicString;
    v30 = CBUUIDVolumeFlagsCharacteristicString;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          uUID = [v16 UUID];
          *buf = 138412290;
          v40 = uUID;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService Characteristic %@", buf, 0xCu);
        }

        uUID2 = [v16 UUID];
        v21 = [CBUUID UUIDWithString:v14];
        v22 = [uUID2 isEqual:v21];

        if (v22)
        {
          [(VCSInterface *)self setVolumeStateCharacteristic:v16];
LABEL_13:
          if (([v16 properties] & 0x10) != 0)
          {
            [peripheralCopy setNotifyValue:1 forCharacteristic:v16];
          }

          [peripheralCopy readValueForCharacteristic:v16];
          continue;
        }

        uUID3 = [v16 UUID];
        v24 = [CBUUID UUIDWithString:v31];
        v25 = [uUID3 isEqual:v24];

        if (v25)
        {
          [(VCSInterface *)self setVolumeControlPointCharacteristic:v16];
          continue;
        }

        uUID4 = [v16 UUID];
        v27 = [CBUUID UUIDWithString:v30];
        v28 = [uUID4 isEqual:v27];

        if (v28)
        {
          [(VCSInterface *)self setVolumeFlagsCharacteristic:v16];
          goto LABEL_13;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v12)
      {
LABEL_22:

        [(ServiceInterface *)self notifyDidStart];
        errorCopy = 0;
        serviceCopy = v29;
        break;
      }
    }
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
    v60 = includedServices;
    v61 = 2112;
    v62 = serviceCopy;
    v63 = 2112;
    v64 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didDiscoverIncludedServicesForService %@ for service %@ : %@", buf, 0x20u);
  }

  if (!errorCopy)
  {
    v47 = serviceCopy;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    includedServices2 = [serviceCopy includedServices];
    v15 = [includedServices2 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v53;
      v51 = CBUUIDAudioInputControlServiceString;
      v49 = CBUUIDVolumeOffsetControlServiceString;
      v48 = includedServices2;
      do
      {
        v18 = 0;
        do
        {
          if (*v53 != v17)
          {
            objc_enumerationMutation(includedServices2);
          }

          v19 = *(*(&v52 + 1) + 8 * v18);
          includedServiceInterfaceMap = [(VCSInterface *)self includedServiceInterfaceMap];
          v21 = [includedServiceInterfaceMap objectForKey:v19];

          if (!v21)
          {
            uUID = [v19 UUID];
            v23 = [CBUUID UUIDWithString:v51];
            v24 = [uUID isEqual:v23];

            v25 = @"AICSInterface";
            if (v24)
            {
              goto LABEL_12;
            }

            uUID2 = [v19 UUID];
            v27 = [CBUUID UUIDWithString:v49];
            v28 = [uUID2 isEqual:v27];

            v25 = @"VOCSInterface";
            if (v28)
            {
LABEL_12:
              v29 = NSClassFromString(&v25->isa);
              if (v29)
              {
                v30 = [[v29 alloc] initWithPeripheral:peripheralCopy service:v19];
                [v30 setParentServiceInterface:self];
                v31 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
                {
                  sub_10005B4E0(v56, v31, v30, &v57);
                }

                v32 = v10;
                v33 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = v33;
                  name = [peripheralCopy name];
                  uUID3 = [v19 UUID];
                  *buf = 138412802;
                  v60 = name;
                  v61 = 2114;
                  v62 = uUID3;
                  v63 = 2112;
                  v64 = v19;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Peripheral %@ supports included service %{public}@. %@", buf, 0x20u);
                }

                [(NSMapTable *)self->_includedServiceInterfaceMap setObject:v30 forKey:v19];
                serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
                [v30 setServiceEventHandler:serviceEventHandler];

                v10 = v32;
                if (([v30 isStarted] & 1) == 0)
                {
                  v38 = *v32;
                  if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
                  {
                    v39 = v38;
                    uUID4 = [v19 UUID];
                    peripheral = [(ServiceInterface *)self peripheral];
                    name2 = [peripheral name];
                    *buf = 138412546;
                    v60 = uUID4;
                    v61 = 2112;
                    v62 = name2;
                    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Starting included service %@ on peripheral %@", buf, 0x16u);

                    v10 = v32;
                  }

                  [v30 start];
                }

                includedServices2 = v48;
              }
            }

            else
            {
              v43 = *v10;
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v60 = v19;
                _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Discovered Unknown Included Service %@", buf, 0xCu);
              }
            }
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [includedServices2 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v16);
    }

    includedServiceInterfaceMap2 = [(VCSInterface *)self includedServiceInterfaceMap];
    v45 = [includedServiceInterfaceMap2 count];

    errorCopy = 0;
    serviceCopy = v47;
    if (!v45)
    {
      v46 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B564(v46, peripheralCopy, v47);
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
    v16 = 136315394;
    v17 = "[VCSInterface peripheral:didUpdateValueForCharacteristic:error:]";
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "VCSClientService %s updated characteristic %@ ", &v16, 0x16u);
  }

  if (!errorCopy)
  {
    volumeStateCharacteristic = [(VCSInterface *)self volumeStateCharacteristic];

    if (volumeStateCharacteristic == characteristicCopy)
    {
      [(VCSInterface *)self _handleVolumeStateCharacteristicUpdate];
    }

    else
    {
      volumeFlagsCharacteristic = [(VCSInterface *)self volumeFlagsCharacteristic];

      if (volumeFlagsCharacteristic == characteristicCopy)
      {
        [(VCSInterface *)self _handleVolumeFlagsUpdate];
      }
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
    v16 = 136315394;
    v17 = "[VCSInterface peripheral:didUpdateNotificationStateForCharacteristic:error:]";
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "VCSClientService %s notified updated characteristic %@ ", &v16, 0x16u);
  }

  if (!errorCopy)
  {
    volumeStateCharacteristic = [(VCSInterface *)self volumeStateCharacteristic];

    if (volumeStateCharacteristic == characteristicCopy)
    {
      [(VCSInterface *)self _handleVolumeStateCharacteristicUpdate];
    }

    else
    {
      volumeFlagsCharacteristic = [(VCSInterface *)self volumeFlagsCharacteristic];

      if (volumeFlagsCharacteristic == characteristicCopy)
      {
        [(VCSInterface *)self _handleVolumeFlagsUpdate];
      }
    }
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  characteristicCopy = characteristic;
  volumeControlPointCharacteristic = [(VCSInterface *)self volumeControlPointCharacteristic];

  if (volumeControlPointCharacteristic == characteristicCopy)
  {
    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      v24 = 138412546;
      v25 = name;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Volume Control Point result for member %@: %@", &v24, 0x16u);
    }

    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    if ([errorCopy code] == 128)
    {
      v17 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005B69C(errorCopy, v17);
      }

      if ([(VCSInterface *)self _canRetryInvalidChangeCounter])
      {
        volumeStateCharacteristic = [(VCSInterface *)self volumeStateCharacteristic];
        [peripheralCopy readValueForCharacteristic:volumeStateCharacteristic];
        goto LABEL_19;
      }

      v20 = [NSNumber numberWithInteger:14];

      [(VCSInterface *)self _resetChangeCounterRetries];
      v16 = v20;
    }

    else if ([errorCopy code] == 129)
    {
      v19 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005B624(errorCopy, v19);
      }
    }

    else if (![errorCopy code])
    {
      v21 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Volume Control Point Write Success", &v24, 2u);
      }

      [(VCSInterface *)self _resetChangeCounterRetries];
    }

    [(VCSInterface *)self _updateComplete];
    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (!serviceEventHandler)
    {
LABEL_20:

      goto LABEL_21;
    }

    volumeStateCharacteristic = objc_alloc_init(NSMutableDictionary);
    [volumeStateCharacteristic setValue:v16 forKey:@"kVolumeControlPoint"];
    serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
    (serviceEventHandler2)[2](serviceEventHandler2, 10, volumeStateCharacteristic);

LABEL_19:
    goto LABEL_20;
  }

LABEL_21:
}

- (BOOL)sendVolumeControlPoint
{
  if ([(VCSInterface *)self _updateInProgress])
  {
    v3 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_10005B714();
LABEL_12:
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    volumeControlPointCharacteristic = [(VCSInterface *)self volumeControlPointCharacteristic];

    if (volumeControlPointCharacteristic)
    {
      [(VCSInterface *)self _updateStart];
      v5 = +[DataOutputStream outputStream];
      [v5 writeUint8:self->_volumeControlPoint.opcode];
      [v5 writeUint8:self->_volumeState.changeCounter];
      if (self->_volumeControlPoint.opcode == 4)
      {
        [v5 writeUint8:self->_volumeControlPoint.volumeSetting];
      }

      v6 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "volumeControlPointCharacteristic discovered", buf, 2u);
      }

      peripheral = [(ServiceInterface *)self peripheral];
      data = [v5 data];
      volumeControlPointCharacteristic2 = [(VCSInterface *)self volumeControlPointCharacteristic];
      [peripheral writeValue:data forCharacteristic:volumeControlPointCharacteristic2 type:0];

      LOBYTE(v3) = 1;
    }

    else
    {
      v10 = qword_1000A9FE0;
      v3 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
      if (v3)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "volumeControlPointCharacteristic not discovered", v12, 2u);
        goto LABEL_12;
      }
    }
  }

  return v3;
}

- (BOOL)setInitialVolume
{
  [(VCSInterface *)self _handleVolumeFlagsUpdate];
  if (([(VCSInterface *)self volumeFlags]& 1) != 0)
  {
    if (([(VCSInterface *)self volumeFlags]& 1) != 0)
    {
      [(VCSInterface *)self _handleVolumeStateCharacteristicUpdate];
      self->_volumeControlPoint.opcode = 4;
      self->_volumeControlPoint.volumeSetting = self->_volumeState.volumeSetting;

      return [(VCSInterface *)self sendVolumeControlPoint];
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(VCSInterface *)self setAbsoluteVolume:0];
  }
}

- (BOOL)setAbsoluteVolume:(unsigned __int8)volume
{
  volumeCopy = volume;
  if ([(VCSInterface *)self _updateInProgress])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005B788();
    }

    return 0;
  }

  if (self->_volumeControlPoint.volumeSetting == volumeCopy)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005B748();
    }

    return 0;
  }

  self->_volumeControlPoint.opcode = 4;
  self->_volumeControlPoint.volumeSetting = volumeCopy;

  return [(VCSInterface *)self sendVolumeControlPoint];
}

- (BOOL)setRelativeVolumeUp
{
  if ([(VCSInterface *)self _updateInProgress])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005B7BC();
    }

    return 0;
  }

  else
  {
    self->_volumeControlPoint.opcode = 1;

    return [(VCSInterface *)self sendVolumeControlPoint];
  }
}

- (BOOL)setRelativeVolumeDown
{
  if ([(VCSInterface *)self _updateInProgress])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005B7F0();
    }

    return 0;
  }

  else
  {
    self->_volumeControlPoint.opcode = 0;

    return [(VCSInterface *)self sendVolumeControlPoint];
  }
}

- (BOOL)setMute:(BOOL)mute
{
  muteCopy = mute;
  if ([(VCSInterface *)self _updateInProgress])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005B824();
    }

    return 0;
  }

  else
  {
    if (muteCopy)
    {
      v6 = 6;
    }

    else
    {
      v6 = 5;
    }

    self->_volumeControlPoint.opcode = v6;

    return [(VCSInterface *)self sendVolumeControlPoint];
  }
}

- (BOOL)sendGainSetting:(char)setting inputType:(unsigned __int8)type
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  includedServiceInterfaceMap = self->_includedServiceInterfaceMap;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009CCC;
  v7[3] = &unk_100094C40;
  typeCopy = type;
  v7[4] = &v10;
  settingCopy = setting;
  [(NSMapTable *)includedServiceInterfaceMap enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)sendVolumeOffset:(signed __int16)offset audioLocation:(unsigned int)location
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  includedServiceInterfaceMap = self->_includedServiceInterfaceMap;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009E98;
  v7[3] = &unk_100094C68;
  locationCopy = location;
  v7[4] = &v10;
  offsetCopy = offset;
  [(NSMapTable *)includedServiceInterfaceMap enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

- (id)getIncludedServiceInterfaceForService:(id)service
{
  serviceCopy = service;
  includedServiceInterfaceMap = [(VCSInterface *)self includedServiceInterfaceMap];
  v6 = [includedServiceInterfaceMap objectForKey:serviceCopy];

  return v6;
}

- (void)_handleVolumeStateCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Volume State Characteristic update", buf, 2u);
  }

  volumeStateCharacteristic = [(VCSInterface *)self volumeStateCharacteristic];
  value = [volumeStateCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v7 = objc_alloc_init(NSMutableDictionary);
  v29 = 0;
  if ([v6 readUint8:&v29])
  {
    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      *buf = 138412546;
      v31 = name;
      v32 = 1024;
      v33 = v29;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Volume setting for member %@: %u", buf, 0x12u);
    }

    if (self->_volumeState.volumeSetting != v29)
    {
      v12 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v12 forKey:@"kVolumeSetting"];

      self->_volumeState.volumeSetting = v29;
    }
  }

  v28 = 0;
  if ([v6 readUint8:&v28])
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      peripheral2 = [(ServiceInterface *)self peripheral];
      name2 = [peripheral2 name];
      *buf = 138412546;
      v31 = name2;
      v32 = 1024;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Volume Mute setting for member %@: %u", buf, 0x12u);
    }

    if (self->_volumeState.mute != v28)
    {
      v17 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v17 forKey:@"kVolumeMute"];

      self->_volumeState.mute = v28;
    }
  }

  v27 = 0;
  if ([v6 readUint8:&v27])
  {
    v18 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      peripheral3 = [(ServiceInterface *)self peripheral];
      name3 = [peripheral3 name];
      *buf = 138412546;
      v31 = name3;
      v32 = 1024;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Change counter for member %@: 0x%02x", buf, 0x12u);
    }

    if ([(VCSInterface *)self _updateInProgress])
    {
      [(VCSInterface *)self sendVolumeControlPoint];
      [(VCSInterface *)self _updateComplete];
    }

    if (self->_volumeState.changeCounter != v27)
    {
      v22 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v22 forKey:@"kChangeCounter"];

      self->_volumeState.changeCounter = v27;
    }
  }

  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
  if (serviceEventHandler)
  {
    v24 = serviceEventHandler;
    v25 = [v7 count];

    if (v25)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 8, v7);
    }
  }
}

- (void)_handleVolumeFlagsUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Volume Flags Characteristic update", buf, 2u);
  }

  volumeFlagsCharacteristic = [(VCSInterface *)self volumeFlagsCharacteristic];
  value = [volumeFlagsCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value];

  v7 = objc_alloc_init(NSMutableDictionary);
  v17 = 0;
  if ([v6 readUint8:&v17])
  {
    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      *buf = 138412546;
      v19 = name;
      v20 = 1024;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Volume flags for member %@: %u", buf, 0x12u);
    }

    if (self->_volumeFlags != v17)
    {
      v12 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v12 forKey:@"kVolumeFlags"];

      self->_volumeFlags = v17;
    }
  }

  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
  if (serviceEventHandler)
  {
    v14 = serviceEventHandler;
    v15 = [v7 count];

    if (v15)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 9, v7);
    }
  }
}

- (void)_updateComplete
{
  if ([(VCSInterface *)self _updateInProgress])
  {
    --self->_updateCounter;
  }
}

- (BOOL)_canRetryInvalidChangeCounter
{
  invalidChangeCounterRetries = self->_invalidChangeCounterRetries;
  if (self->_invalidChangeCounterRetries)
  {
    self->_invalidChangeCounterRetries = invalidChangeCounterRetries - 1;
  }

  return invalidChangeCounterRetries != 0;
}

@end