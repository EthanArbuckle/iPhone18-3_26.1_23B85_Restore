@interface AICSInterface
- (AICSInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (BOOL)_canRetryInvalidChangeCounter;
- (BOOL)_sendAudioInputControlPoint;
- (BOOL)sendGainSetting:(char)setting;
- (void)_handleAudioInputDescriptionCharacteristicUpdate;
- (void)_handleAudioInputStateCharacteristicUpdate;
- (void)_handleAudioInputStatusCharacteristicUpdate;
- (void)_handleAudioInputTypeCharacteristicUpdate;
- (void)_handleGainSettingPropertiesCharacteristicUpdate;
- (void)_updateComplete;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation AICSInterface

- (AICSInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v9.receiver = self;
  v9.super_class = AICSInterface;
  v4 = [(ServiceInterface *)&v9 initWithPeripheral:peripheral service:service];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
    [(AICSInterface *)v5 setAudioInputStateCharacteristic:0];
    [(AICSInterface *)v5 setGainSettingPropertiesCharacteristic:0];
    [(AICSInterface *)v5 setAudioInputTypeCharacteristic:0];
    [(AICSInterface *)v5 setAudioInputStatusCharacteristic:0];
    [(AICSInterface *)v5 setAudioInputControlPointCharacteristic:0];
    [(AICSInterface *)v5 setAudioInputDescriptionCharacteristic:0];
    v5->_audioInputState = 0;
    *&v5->_gainSettingProperties.gainSettingUnits = 0;
    v5->_gainSettingProperties.gainSettingMaximum = -1;
    v5->_audioInputType = 0;
    v5->_audioInputStatus = 0;
    v5->_audioInputControlPoint = 255;
    v6 = [[NSMutableString alloc] initWithString:&stru_100098610];
    audioInputDescription = v5->_audioInputDescription;
    v5->_audioInputDescription = v6;

    v5->_invalidChangeCounterRetries = 1;
    v5->_updateCounter = 0;
  }

  return v5;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = AICSInterface;
  [(ServiceInterface *)&v12 start];
  v3 = [CBUUID UUIDWithString:CBUUIDAudioInputStateCharacteristicString];
  v13[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDGainSettingPropertiesCharacteristicString];
  v13[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDAudioInputTypeCharacteristicString];
  v13[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDAudioInputStatusCharacteristicString];
  v13[3] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDAudioInputControlPointCharacteristicString];
  v13[4] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDAudioInputDescriptionCharacteristicString];
  v13[5] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:6];

  peripheral = [(ServiceInterface *)self peripheral];
  service = [(ServiceInterface *)self service];
  [peripheral discoverCharacteristics:v9 forService:service];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = AICSInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  if (!errorCopy)
  {
    v40 = serviceCopy;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [serviceCopy characteristics];
    v12 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (!v12)
    {
      goto LABEL_29;
    }

    v13 = v12;
    v14 = *v48;
    v15 = CBUUIDAudioInputStateCharacteristicString;
    v45 = CBUUIDGainSettingPropertiesCharacteristicString;
    v44 = CBUUIDAudioInputTypeCharacteristicString;
    v43 = CBUUIDAudioInputStatusCharacteristicString;
    v42 = CBUUIDAudioInputControlPointCharacteristicString;
    v41 = CBUUIDAudioInputDescriptionCharacteristicString;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v47 + 1) + 8 * v16);
        v18 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          uUID = [v17 UUID];
          *buf = 138412290;
          v52 = uUID;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService Characteristic %@", buf, 0xCu);
        }

        uUID2 = [v17 UUID];
        v22 = [CBUUID UUIDWithString:v15];
        v23 = [uUID2 isEqual:v22];

        if (v23)
        {
          [(AICSInterface *)self setAudioInputStateCharacteristic:v17];
LABEL_13:
          if (([v17 properties] & 0x10) != 0)
          {
            [peripheralCopy setNotifyValue:1 forCharacteristic:v17];
          }

LABEL_19:
          [peripheralCopy readValueForCharacteristic:v17];
          goto LABEL_20;
        }

        uUID3 = [v17 UUID];
        v25 = [CBUUID UUIDWithString:v45];
        v26 = [uUID3 isEqual:v25];

        if (v26)
        {
          [(AICSInterface *)self setGainSettingPropertiesCharacteristic:v17];
          goto LABEL_19;
        }

        uUID4 = [v17 UUID];
        v28 = [CBUUID UUIDWithString:v44];
        v29 = [uUID4 isEqual:v28];

        if (v29)
        {
          [(AICSInterface *)self setAudioInputTypeCharacteristic:v17];
          goto LABEL_19;
        }

        uUID5 = [v17 UUID];
        v31 = [CBUUID UUIDWithString:v43];
        v32 = [uUID5 isEqual:v31];

        if (v32)
        {
          [(AICSInterface *)self setAudioInputStatusCharacteristic:v17];
          goto LABEL_13;
        }

        uUID6 = [v17 UUID];
        v34 = [CBUUID UUIDWithString:v42];
        v35 = [uUID6 isEqual:v34];

        if (v35)
        {
          [(AICSInterface *)self setAudioInputControlPointCharacteristic:v17];
        }

        else
        {
          uUID7 = [v17 UUID];
          v37 = [CBUUID UUIDWithString:v41];
          v38 = [uUID7 isEqual:v37];

          if (v38)
          {
            [(AICSInterface *)self setAudioInputDescriptionCharacteristic:v17];
            goto LABEL_13;
          }
        }

LABEL_20:
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v39 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      v13 = v39;
      if (!v39)
      {
LABEL_29:

        [(ServiceInterface *)self notifyDidStart];
        errorCopy = 0;
        serviceCopy = v40;
        goto LABEL_30;
      }
    }
  }

  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005CF30(v11, serviceCopy);
  }

LABEL_30:
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
      sub_10005F734(v11, characteristicCopy);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [characteristicCopy description];
      v19 = 136315394;
      v20 = "[AICSInterface peripheral:didUpdateValueForCharacteristic:error:]";
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AICSClientService %s updated characteristic %@ ", &v19, 0x16u);
    }

    audioInputStateCharacteristic = [(AICSInterface *)self audioInputStateCharacteristic];

    if (audioInputStateCharacteristic == characteristicCopy)
    {
      [(AICSInterface *)self _handleAudioInputStateCharacteristicUpdate];
    }

    else
    {
      gainSettingPropertiesCharacteristic = [(AICSInterface *)self gainSettingPropertiesCharacteristic];

      if (gainSettingPropertiesCharacteristic == characteristicCopy)
      {
        [(AICSInterface *)self _handleGainSettingPropertiesCharacteristicUpdate];
      }

      else
      {
        audioInputTypeCharacteristic = [(AICSInterface *)self audioInputTypeCharacteristic];

        if (audioInputTypeCharacteristic == characteristicCopy)
        {
          [(AICSInterface *)self _handleAudioInputTypeCharacteristicUpdate];
        }

        else
        {
          audioInputStatusCharacteristic = [(AICSInterface *)self audioInputStatusCharacteristic];

          if (audioInputStatusCharacteristic == characteristicCopy)
          {
            [(AICSInterface *)self _handleAudioInputStatusCharacteristicUpdate];
          }

          else
          {
            audioInputDescriptionCharacteristic = [(AICSInterface *)self audioInputDescriptionCharacteristic];

            if (audioInputDescriptionCharacteristic == characteristicCopy)
            {
              [(AICSInterface *)self _handleAudioInputDescriptionCharacteristicUpdate];
            }
          }
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
      sub_10005F7D4(v11, characteristicCopy);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [characteristicCopy description];
      v17 = 136315394;
      v18 = "[AICSInterface peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AICSClientService %s notified updated characteristic %@ ", &v17, 0x16u);
    }

    audioInputStateCharacteristic = [(AICSInterface *)self audioInputStateCharacteristic];

    if (audioInputStateCharacteristic == characteristicCopy)
    {
      [(AICSInterface *)self _handleAudioInputStateCharacteristicUpdate];
    }

    else
    {
      audioInputStatusCharacteristic = [(AICSInterface *)self audioInputStatusCharacteristic];

      if (audioInputStatusCharacteristic == characteristicCopy)
      {
        [(AICSInterface *)self _handleAudioInputStatusCharacteristicUpdate];
      }

      else
      {
        audioInputDescriptionCharacteristic = [(AICSInterface *)self audioInputDescriptionCharacteristic];

        if (audioInputDescriptionCharacteristic == characteristicCopy)
        {
          [(AICSInterface *)self _handleAudioInputDescriptionCharacteristicUpdate];
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
  audioInputControlPointCharacteristic = [(AICSInterface *)self audioInputControlPointCharacteristic];

  if (audioInputControlPointCharacteristic == characteristicCopy)
  {
    v22 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      v29 = 138412546;
      v30 = name;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Audio Input Control Point result for member %@: %@", &v29, 0x16u);
    }

    v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    if ([errorCopy code] == 128)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005FA14();
      }

      if ([(AICSInterface *)self _canRetryInvalidChangeCounter])
      {
        audioInputStateCharacteristic = [(AICSInterface *)self audioInputStateCharacteristic];
        [peripheralCopy readValueForCharacteristic:audioInputStateCharacteristic];
LABEL_34:

        goto LABEL_35;
      }

      v26 = [NSNumber numberWithInteger:14];

      [(AICSInterface *)self _resetChangeCounterRetries];
      v18 = v26;
    }

    else if ([errorCopy code] == 129)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F9AC();
      }
    }

    else if ([errorCopy code] == 130)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F944();
      }
    }

    else if ([errorCopy code] == 131)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F8DC();
      }
    }

    else if ([errorCopy code] == 132)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F874();
      }
    }

    else if (![errorCopy code])
    {
      v27 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Audio Input Control Point Update Success", &v29, 2u);
      }

      [(AICSInterface *)self _resetChangeCounterRetries];
    }

    [(AICSInterface *)self _updateComplete];
    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (!serviceEventHandler)
    {
LABEL_35:

      goto LABEL_36;
    }

    audioInputStateCharacteristic = objc_alloc_init(NSMutableDictionary);
    [audioInputStateCharacteristic setValue:v18 forKey:@"kAudioInputControlPoint"];
    serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
    v21 = serviceEventHandler2[2];
LABEL_33:
    v21();

    goto LABEL_34;
  }

  audioInputDescriptionCharacteristic = [(AICSInterface *)self audioInputDescriptionCharacteristic];

  if (audioInputDescriptionCharacteristic == characteristicCopy)
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      peripheral2 = [(ServiceInterface *)self peripheral];
      name2 = [peripheral2 name];
      v29 = 138412546;
      v30 = name2;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Audio Input Description result for member %@: %@", &v29, 0x16u);
    }

    serviceEventHandler3 = [(ServiceInterface *)self serviceEventHandler];

    if (serviceEventHandler3)
    {
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      audioInputStateCharacteristic = objc_alloc_init(NSMutableDictionary);
      [audioInputStateCharacteristic setValue:v18 forKey:@"kAudioInputDescription"];
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      v21 = serviceEventHandler2[2];
      goto LABEL_33;
    }
  }

LABEL_36:
}

- (BOOL)sendGainSetting:(char)setting
{
  if ([(AICSInterface *)self _updateInProgress])
  {
    v5 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005FAC0(v5);
    }

    return 0;
  }

  if (self->_audioInputControlPoint.gainSetting == setting)
  {
    v6 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005FA7C(v6);
    }

    return 0;
  }

  self->_audioInputControlPoint.opcode = 1;
  self->_audioInputControlPoint.gainSetting = setting;

  return [(AICSInterface *)self _sendAudioInputControlPoint];
}

- (BOOL)_sendAudioInputControlPoint
{
  if ([(AICSInterface *)self _updateInProgress])
  {
    v3 = qword_1000A9FE0;
    v4 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_10005FB04(v3);
LABEL_10:
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    audioInputControlPointCharacteristic = [(AICSInterface *)self audioInputControlPointCharacteristic];

    if (audioInputControlPointCharacteristic)
    {
      [(AICSInterface *)self _updateStart];
      v6 = +[DataOutputStream outputStream];
      [v6 writeUint8:self->_audioInputControlPoint.opcode];
      [v6 writeUint8:self->_audioInputState.changeCounter];
      [v6 writeBytes:&self->_audioInputControlPoint.gainSetting length:1];
      v7 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "audioInputControlPointCharacteristic discovered", buf, 2u);
      }

      peripheral = [(ServiceInterface *)self peripheral];
      data = [v6 data];
      audioInputControlPointCharacteristic2 = [(AICSInterface *)self audioInputControlPointCharacteristic];
      [peripheral writeValue:data forCharacteristic:audioInputControlPointCharacteristic2 type:0];

      LOBYTE(v4) = 1;
    }

    else
    {
      v11 = qword_1000A9FE0;
      v4 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "audioInputControlPointCharacteristic not discovered", v13, 2u);
        goto LABEL_10;
      }
    }
  }

  return v4;
}

- (void)_handleAudioInputStateCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Audio Input State Characteristic update", buf, 2u);
  }

  audioInputStateCharacteristic = [(AICSInterface *)self audioInputStateCharacteristic];
  value = [audioInputStateCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v7 = objc_alloc_init(NSMutableDictionary);
  v36 = 0;
  if ([v6 readUint8:&v36])
  {
    v8 = v36;
    v9 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      *buf = 138412546;
      v38 = name;
      v39 = 1024;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Gain setting for member %@: %d", buf, 0x12u);
    }

    if (self->_audioInputState.gainSetting != v8)
    {
      v13 = [NSNumber numberWithChar:v8];
      [v7 setObject:v13 forKey:@"kGainSetting"];

      self->_audioInputState.gainSetting = v8;
    }
  }

  v35 = 0;
  if ([v6 readUint8:&v35])
  {
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      peripheral2 = [(ServiceInterface *)self peripheral];
      name2 = [peripheral2 name];
      *buf = 138412546;
      v38 = name2;
      v39 = 1024;
      v40 = v35;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Mute setting for member %@: %u", buf, 0x12u);
    }

    if (self->_audioInputState.mute != v35)
    {
      v18 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v18 forKey:@"kAudioInputMute"];

      self->_audioInputState.mute = v35;
    }
  }

  v34 = 0;
  if ([v6 readUint8:&v34])
  {
    v19 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      peripheral3 = [(ServiceInterface *)self peripheral];
      name3 = [peripheral3 name];
      *buf = 138412546;
      v38 = name3;
      v39 = 1024;
      v40 = v34;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Gain Mode for member %@: %u", buf, 0x12u);
    }

    if (self->_audioInputState.gainMode != v34)
    {
      v23 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v23 forKey:@"kGainMode"];

      self->_audioInputState.gainMode = v34;
    }
  }

  v33 = 0;
  if ([v6 readUint8:&v33])
  {
    v24 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      peripheral4 = [(ServiceInterface *)self peripheral];
      name4 = [peripheral4 name];
      *buf = 138412546;
      v38 = name4;
      v39 = 1024;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Change counter for member %@: 0x%02x", buf, 0x12u);
    }

    if (self->_audioInputState.changeCounter != v33)
    {
      v28 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v28 forKey:@"kChangeCounter"];

      self->_audioInputState.changeCounter = v33;
    }

    if ([(AICSInterface *)self _updateInProgress])
    {
      [(AICSInterface *)self _sendAudioInputControlPoint];
      [(AICSInterface *)self _updateComplete];
    }
  }

  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
  if (serviceEventHandler)
  {
    v30 = serviceEventHandler;
    v31 = [v7 count];

    if (v31)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 11, v7);
    }
  }
}

- (void)_handleGainSettingPropertiesCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Gain Setting Properties Characteristic update", buf, 2u);
  }

  gainSettingPropertiesCharacteristic = [(AICSInterface *)self gainSettingPropertiesCharacteristic];
  value = [gainSettingPropertiesCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v7 = objc_alloc_init(NSMutableDictionary);
  v31 = 0;
  if ([v6 readUint8:&v31])
  {
    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      *buf = 138412546;
      v33 = name;
      v34 = 1024;
      v35 = v31;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Gain setting units for member %@: %u", buf, 0x12u);
    }

    if (self->_gainSettingProperties.gainSettingUnits != v31)
    {
      v12 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v12 forKey:@"kGainSettingUnits"];

      self->_gainSettingProperties.gainSettingUnits = v31;
    }
  }

  v30 = 0;
  if ([v6 readUint8:&v30])
  {
    v13 = v30;
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      peripheral2 = [(ServiceInterface *)self peripheral];
      name2 = [peripheral2 name];
      *buf = 138412546;
      v33 = name2;
      v34 = 1024;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Gain setting min for member %@: %d", buf, 0x12u);
    }

    if (self->_gainSettingProperties.gainSettingMinimum != v13)
    {
      v18 = [NSNumber numberWithChar:v13];
      [v7 setObject:v18 forKey:@"kGainSettingMin"];

      self->_gainSettingProperties.gainSettingMinimum = v13;
    }
  }

  v29 = 0;
  if ([v6 readUint8:&v29])
  {
    v19 = v29;
    v20 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      peripheral3 = [(ServiceInterface *)self peripheral];
      name3 = [peripheral3 name];
      *buf = 138412546;
      v33 = name3;
      v34 = 1024;
      v35 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Gain setting max for member %@: %d", buf, 0x12u);
    }

    if (self->_gainSettingProperties.gainSettingMaximum != v19)
    {
      v24 = [NSNumber numberWithChar:v19];
      [v7 setObject:v24 forKey:@"kGainSettingMax"];

      self->_gainSettingProperties.gainSettingMaximum = v19;
    }
  }

  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
  if (serviceEventHandler)
  {
    v26 = serviceEventHandler;
    v27 = [v7 count];

    if (v27)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 12, v7);
    }
  }
}

- (void)_handleAudioInputTypeCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Audio Input Type Characteristic update", buf, 2u);
  }

  audioInputTypeCharacteristic = [(AICSInterface *)self audioInputTypeCharacteristic];
  value = [audioInputTypeCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Input type for member %@: %u", buf, 0x12u);
    }

    if (self->_audioInputType != v17)
    {
      v12 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v12 forKey:@"kAudioInputType"];

      self->_audioInputType = v17;
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
      (serviceEventHandler2)[2](serviceEventHandler2, 13, v7);
    }
  }
}

- (void)_handleAudioInputStatusCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Audio Input Status Characteristic update", buf, 2u);
  }

  audioInputStatusCharacteristic = [(AICSInterface *)self audioInputStatusCharacteristic];
  value = [audioInputStatusCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Input Status for member %@: %u", buf, 0x12u);
    }

    if (self->_audioInputStatus != v17)
    {
      v12 = [NSNumber numberWithUnsignedChar:?];
      [v7 setObject:v12 forKey:@"kAudioInputStatus"];

      self->_audioInputStatus = v17;
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
      (serviceEventHandler2)[2](serviceEventHandler2, 14, v7);
    }
  }
}

- (void)_handleAudioInputDescriptionCharacteristicUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Audio Input Description Characteristic update", &v14, 2u);
  }

  audioInputDescriptionCharacteristic = [(AICSInterface *)self audioInputDescriptionCharacteristic];
  value = [audioInputDescriptionCharacteristic value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = +[NSMutableString string];
  if ([v6 readString:v8])
  {
    v9 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      v14 = 138412546;
      v15 = name;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio Input Description for member %@: %@", &v14, 0x16u);
    }

    if (([(NSMutableString *)self->_audioInputDescription isEqualToString:v8]& 1) == 0)
    {
      v13 = [NSString stringWithString:v8];
      [v7 setObject:v13 forKey:@"kAudioInputDescription"];

      objc_storeStrong(&self->_audioInputDescription, v8);
    }
  }
}

- (void)_updateComplete
{
  if ([(AICSInterface *)self _updateInProgress])
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