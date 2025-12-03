@interface VOCSInterface
- (BOOL)_canRetryInvalidChangeCounter;
- (BOOL)sendAudioOutputDescription:(id)description;
- (BOOL)sendVolumeOffset:(signed __int16)offset;
- (BOOL)sendVolumeOffsetControlPoint;
- (VOCSInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (void)_handleAudioLocationCharacteristicUpdate;
- (void)_handleAudioOutputDescriptionCharacteristicUpdate;
- (void)_handleVolumeOffsetStateCharacteristicUpdate;
- (void)_updateComplete;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation VOCSInterface

- (VOCSInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v9.receiver = self;
  v9.super_class = VOCSInterface;
  v4 = [(ServiceInterface *)&v9 initWithPeripheral:peripheral service:service];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:0];
    [(VOCSInterface *)v5 setVolumeOffsetStateCharacteristic:0];
    [(VOCSInterface *)v5 setAudioLocationCharacteristic:0];
    [(VOCSInterface *)v5 setVolumeOffsetControlPointCharacteristic:0];
    [(VOCSInterface *)v5 setAudioOutputDescriptionCharacteristic:0];
    v5->_volumeOffsetState.volumeOffset = 0;
    v5->_volumeOffsetState.changeCounter = 0;
    v5->_audioLocation = 0;
    v5->_volumeOffsetControlPoint.opcode = 1;
    v5->_volumeOffsetControlPoint.volumeOffset = 0;
    v6 = [[NSMutableString alloc] initWithString:&stru_100098610];
    audioOutputDescription = v5->_audioOutputDescription;
    v5->_audioOutputDescription = v6;

    v5->_invalidChangeCounterRetries = 1;
    v5->_updateCounter = 0;
  }

  return v5;
}

- (void)start
{
  v11.receiver = self;
  v11.super_class = VOCSInterface;
  [(ServiceInterface *)&v11 start];
  v3 = [CBUUID UUIDWithString:CBUUIDVolumeOffsetControlServiceString];
  v12[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDVolumeOffsetStateCharacteristicString];
  v12[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDAudioLocationCharacteristicString];
  v12[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDVolumeOffsetControlPointCharacteristicString];
  v12[3] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDAudioOutputDescriptionCharacteristicString];
  v12[4] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:5];

  peripheral = [(ServiceInterface *)self peripheral];
  service = [(ServiceInterface *)self service];
  [peripheral discoverCharacteristics:v8 forService:service];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = VOCSInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  if (!errorCopy)
  {
    selfCopy = self;
    v37 = serviceCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [serviceCopy characteristics];
    v12 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = v12;
    v14 = *v44;
    v15 = CBUUIDVolumeOffsetStateCharacteristicString;
    v40 = CBUUIDAudioLocationCharacteristicString;
    v39 = CBUUIDVolumeOffsetControlPointCharacteristicString;
    v38 = CBUUIDAudioOutputDescriptionCharacteristicString;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * v16);
        v18 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          uUID = [v17 UUID];
          *buf = 138412290;
          v48 = uUID;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService Characteristic %@", buf, 0xCu);
        }

        uUID2 = [v17 UUID];
        v22 = [CBUUID UUIDWithString:v15];
        v23 = [uUID2 isEqual:v22];

        if (v23)
        {
          v24 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = [v17 description];
            *buf = 136315394;
            v48 = "[VOCSInterface peripheral:didDiscoverCharacteristicsForService:error:]";
            v49 = 2112;
            v50 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "VOCSClientService %s updated characteristic %@ ", buf, 0x16u);
          }

          [(VOCSInterface *)selfCopy setVolumeOffsetStateCharacteristic:v17];
          goto LABEL_17;
        }

        uUID3 = [v17 UUID];
        v28 = [CBUUID UUIDWithString:v40];
        v29 = [uUID3 isEqual:v28];

        if (v29)
        {
          [(VOCSInterface *)selfCopy setAudioLocationCharacteristic:v17];
LABEL_17:
          if (([v17 properties] & 0x10) != 0)
          {
            [peripheralCopy setNotifyValue:1 forCharacteristic:v17];
          }

          [peripheralCopy readValueForCharacteristic:v17];
          goto LABEL_20;
        }

        uUID4 = [v17 UUID];
        v31 = [CBUUID UUIDWithString:v39];
        v32 = [uUID4 isEqual:v31];

        if (v32)
        {
          [(VOCSInterface *)selfCopy setVolumeOffsetControlPointCharacteristic:v17];
          goto LABEL_20;
        }

        uUID5 = [v17 UUID];
        v34 = [CBUUID UUIDWithString:v38];
        v35 = [uUID5 isEqual:v34];

        if (v35)
        {
          [(VOCSInterface *)selfCopy setAudioOutputDescriptionCharacteristic:v17];
          goto LABEL_17;
        }

LABEL_20:
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v36 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      v13 = v36;
      if (!v36)
      {
LABEL_27:

        [(ServiceInterface *)selfCopy notifyDidStart];
        errorCopy = 0;
        serviceCopy = v37;
        goto LABEL_28;
      }
    }
  }

  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005CF30(v11, serviceCopy);
  }

LABEL_28:
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = qword_1000A9FE0;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005CFD0(v11, characteristicCopy);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [characteristicCopy description];
      v17 = 136315394;
      v18 = "[VOCSInterface peripheral:didUpdateValueForCharacteristic:error:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "VOCSClientService %s updated characteristic %@ ", &v17, 0x16u);
    }

    volumeOffsetStateCharacteristic = [(VOCSInterface *)self volumeOffsetStateCharacteristic];

    if (volumeOffsetStateCharacteristic == characteristicCopy)
    {
      [(VOCSInterface *)self _handleVolumeOffsetStateCharacteristicUpdate];
    }

    else
    {
      audioLocationCharacteristic = [(VOCSInterface *)self audioLocationCharacteristic];

      if (audioLocationCharacteristic == characteristicCopy)
      {
        [(VOCSInterface *)self _handleAudioLocationCharacteristicUpdate];
      }

      else
      {
        audioOutputDescriptionCharacteristic = [(VOCSInterface *)self audioOutputDescriptionCharacteristic];

        if (audioOutputDescriptionCharacteristic == characteristicCopy)
        {
          [(VOCSInterface *)self _handleAudioOutputDescriptionCharacteristicUpdate];
        }
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
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005D070(v11, characteristicCopy);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [characteristicCopy description];
      v17 = 136315394;
      v18 = "[VOCSInterface peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "VOCSClientService %s notified updated characteristic %@ ", &v17, 0x16u);
    }

    volumeOffsetStateCharacteristic = [(VOCSInterface *)self volumeOffsetStateCharacteristic];

    if (volumeOffsetStateCharacteristic == characteristicCopy)
    {
      [(VOCSInterface *)self _handleVolumeOffsetStateCharacteristicUpdate];
    }

    else
    {
      audioLocationCharacteristic = [(VOCSInterface *)self audioLocationCharacteristic];

      if (audioLocationCharacteristic == characteristicCopy)
      {
        [(VOCSInterface *)self _handleAudioLocationCharacteristicUpdate];
      }

      else
      {
        audioOutputDescriptionCharacteristic = [(VOCSInterface *)self audioOutputDescriptionCharacteristic];

        if (audioOutputDescriptionCharacteristic == characteristicCopy)
        {
          [(VOCSInterface *)self _handleAudioOutputDescriptionCharacteristicUpdate];
        }
      }
    }
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  volumeOffsetControlPointCharacteristic = [(VOCSInterface *)self volumeOffsetControlPointCharacteristic];

  if (volumeOffsetControlPointCharacteristic == characteristicCopy)
  {
    v19 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      v27 = 138412546;
      v28 = name;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Volume Offset Control Point result for member %@: %@", &v27, 0x16u);
    }

    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    if ([errorCopy code] == 128)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005D2D0();
      }

      if ([(VOCSInterface *)self _canRetryInvalidChangeCounter])
      {
        volumeOffsetStateCharacteristic = [(VOCSInterface *)self volumeOffsetStateCharacteristic];
        [peripheralCopy readValueForCharacteristic:volumeOffsetStateCharacteristic];
LABEL_35:

        goto LABEL_36;
      }

      v24 = [NSNumber numberWithInteger:14];

      [(VOCSInterface *)self _resetChangeCounterRetries];
      v15 = v24;
    }

    else if ([errorCopy code] == 129)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005D260();
      }
    }

    else if ([errorCopy code] == 130)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005D1F0();
      }
    }

    else if (![errorCopy code])
    {
      v25 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Volume Offset Control Point Update Success", &v27, 2u);
      }

      [(VOCSInterface *)self _resetChangeCounterRetries];
    }

    [(VOCSInterface *)self _updateComplete];
    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (!serviceEventHandler)
    {
LABEL_36:

      goto LABEL_37;
    }

    volumeOffsetStateCharacteristic = objc_alloc_init(NSMutableDictionary);
    [volumeOffsetStateCharacteristic setValue:v15 forKey:@"kVolumeOffsetControlPoint"];
    serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
    v18 = serviceEventHandler2[2];
LABEL_34:
    v18();

    goto LABEL_35;
  }

  audioLocationCharacteristic = [(VOCSInterface *)self audioLocationCharacteristic];

  if (audioLocationCharacteristic == characteristicCopy)
  {
    if ([errorCopy code] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005D180();
    }

    serviceEventHandler3 = [(ServiceInterface *)self serviceEventHandler];

    if (serviceEventHandler3)
    {
      v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      volumeOffsetStateCharacteristic = objc_alloc_init(NSMutableDictionary);
      [volumeOffsetStateCharacteristic setValue:v15 forKey:@"kAudioLocation"];
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      v18 = serviceEventHandler2[2];
      goto LABEL_34;
    }
  }

  else
  {
    audioOutputDescriptionCharacteristic = [(VOCSInterface *)self audioOutputDescriptionCharacteristic];

    if (audioOutputDescriptionCharacteristic == characteristicCopy)
    {
      if ([errorCopy code] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005D110();
      }

      serviceEventHandler4 = [(ServiceInterface *)self serviceEventHandler];

      if (serviceEventHandler4)
      {
        v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
        volumeOffsetStateCharacteristic = objc_alloc_init(NSMutableDictionary);
        [volumeOffsetStateCharacteristic setValue:v15 forKey:@"kAudioOutputDescription"];
        serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
        v18 = serviceEventHandler2[2];
        goto LABEL_34;
      }
    }
  }

LABEL_37:
}

- (BOOL)sendVolumeOffsetControlPoint
{
  if ([(VOCSInterface *)self _updateInProgress])
  {
    v3 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_10005D340();
LABEL_10:
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    volumeOffsetControlPointCharacteristic = [(VOCSInterface *)self volumeOffsetControlPointCharacteristic];

    if (volumeOffsetControlPointCharacteristic)
    {
      [(VOCSInterface *)self _updateStart];
      v5 = +[DataOutputStream outputStream];
      [v5 writeUint8:self->_volumeOffsetControlPoint.opcode];
      [v5 writeUint8:self->_volumeOffsetState.changeCounter];
      [v5 writeBytes:&self->_volumeOffsetControlPoint.volumeOffset length:2];
      v6 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "volumeOffsetControlPointCharacteristic discovered", buf, 2u);
      }

      peripheral = [(ServiceInterface *)self peripheral];
      data = [v5 data];
      volumeOffsetControlPointCharacteristic2 = [(VOCSInterface *)self volumeOffsetControlPointCharacteristic];
      [peripheral writeValue:data forCharacteristic:volumeOffsetControlPointCharacteristic2 type:0];

      LOBYTE(v3) = 1;
    }

    else
    {
      v10 = qword_1000A9FE0;
      v3 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
      if (v3)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "volumeOffsetControlPointCharacteristic not discovered", v12, 2u);
        goto LABEL_10;
      }
    }
  }

  return v3;
}

- (BOOL)sendVolumeOffset:(signed __int16)offset
{
  if (self->_volumeOffsetControlPoint.volumeOffset == offset)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005D37C();
    }

    return 0;
  }

  else
  {
    self->_volumeOffsetControlPoint.opcode = 1;
    self->_volumeOffsetControlPoint.volumeOffset = offset;

    return [(VOCSInterface *)self sendVolumeOffsetControlPoint];
  }
}

- (BOOL)sendAudioOutputDescription:(id)description
{
  descriptionCopy = description;
  if ([(VOCSInterface *)self _updateInProgress])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005D3BC();
    }

LABEL_4:
    v5 = 0;
    goto LABEL_9;
  }

  audioOutputDescriptionCharacteristic = [(VOCSInterface *)self audioOutputDescriptionCharacteristic];

  if (!audioOutputDescriptionCharacteristic)
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "audioOutputDescriptionCharacteristic not discovered", v14, 2u);
    }

    goto LABEL_4;
  }

  [(VOCSInterface *)self _updateStart];
  v7 = +[DataOutputStream outputStream];
  [v7 writeString:descriptionCopy];
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "audioOutputDescriptionCharacteristic discovered", buf, 2u);
  }

  peripheral = [(ServiceInterface *)self peripheral];
  data = [v7 data];
  audioOutputDescriptionCharacteristic2 = [(VOCSInterface *)self audioOutputDescriptionCharacteristic];
  v5 = 1;
  [peripheral writeValue:data forCharacteristic:audioOutputDescriptionCharacteristic2 type:1];

LABEL_9:
  return v5;
}

- (void)_handleVolumeOffsetStateCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Volume Offset State Characteristic update", buf, 2u);
  }

  volumeOffsetStateCharacteristic = [(VOCSInterface *)self volumeOffsetStateCharacteristic];
  value = [volumeOffsetStateCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v7 = objc_alloc_init(NSMutableDictionary);
  v24 = 0;
  if ([v6 readUint16:&v24])
  {
    v8 = v24;
    v9 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      *buf = 138412546;
      v26 = name;
      v27 = 1024;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Volume offset for member %@: %d", buf, 0x12u);
    }

    if (self->_volumeOffsetState.volumeOffset != v8)
    {
      v13 = [NSNumber numberWithShort:v8];
      [v7 setObject:v13 forKey:@"kVolumeOffset"];

      self->_volumeOffsetState.volumeOffset = v8;
    }
  }

  v23 = 0;
  if ([v6 readUint8:&v23])
  {
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      peripheral2 = [(ServiceInterface *)self peripheral];
      name2 = [peripheral2 name];
      *buf = 138412546;
      v26 = name2;
      v27 = 1024;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Change counter for member %@: %u", buf, 0x12u);
    }

    if (self->_volumeOffsetState.changeCounter != v23)
    {
      v18 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v18 forKey:@"kChangeCounter"];

      self->_volumeOffsetState.changeCounter = v23;
    }

    if ([(VOCSInterface *)self _updateInProgress])
    {
      [(VOCSInterface *)self sendVolumeOffsetControlPoint];
      [(VOCSInterface *)self _updateComplete];
    }
  }

  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
  if (serviceEventHandler)
  {
    v20 = serviceEventHandler;
    v21 = [v7 count];

    if (v21)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 17, v7);
    }
  }
}

- (void)_handleAudioLocationCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Audio Location Characteristic update", buf, 2u);
  }

  audioLocationCharacteristic = [(VOCSInterface *)self audioLocationCharacteristic];
  value = [audioLocationCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v7 = objc_alloc_init(NSMutableDictionary);
  v17 = 0;
  if ([v6 readUint32:&v17])
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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Location for member %@: %u", buf, 0x12u);
    }

    if (self->_audioLocation != v17)
    {
      v12 = [NSNumber numberWithUnsignedInt:?];
      [v7 setObject:v12 forKey:@"kAudioLocation"];

      self->_audioLocation = v17;
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
      (serviceEventHandler2)[2](serviceEventHandler2, 18, v7);
    }
  }
}

- (void)_handleAudioOutputDescriptionCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Audio Output Description Characteristic update", &v18, 2u);
  }

  audioOutputDescriptionCharacteristic = [(VOCSInterface *)self audioOutputDescriptionCharacteristic];
  value = [audioOutputDescriptionCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v7 = objc_alloc_init(NSMutableDictionary);
  if ([v6 readString:0])
  {
    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      v18 = 138412546;
      v19 = name;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Output Description for member %@: %@", &v18, 0x16u);
    }

    if (([(NSMutableString *)self->_audioOutputDescription isEqualToString:0]& 1) == 0)
    {
      v12 = [NSString stringWithString:0];
      [v7 setObject:v12 forKey:@"kAudioOutputDescription"];

      audioOutputDescription = self->_audioOutputDescription;
      self->_audioOutputDescription = 0;
    }
  }

  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
  if (serviceEventHandler)
  {
    v15 = serviceEventHandler;
    v16 = [v7 count];

    if (v16)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 19, v7);
    }
  }
}

- (void)_updateComplete
{
  if ([(VOCSInterface *)self _updateInProgress])
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