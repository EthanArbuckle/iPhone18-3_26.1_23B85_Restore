@interface HASInterface
- (HASInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (id)attApplicationErrorCodeToString:(int64_t)string;
- (id)attCommonProfileAndServiceErrorCodeToString:(int64_t)string;
- (id)hearingAidTypeToString:(unsigned __int8)string;
- (id)presetNameToString:(id)string;
- (void)handleActivePresetIndex;
- (void)handleGenericUpdate:(id)update length:(unsigned __int8)length;
- (void)handleHearingAidFeaturestUpdate;
- (void)handleHearingAidPresetControlPointUpdate;
- (void)handlePresetChanged:(id)changed length:(unsigned __int8)length;
- (void)handlePresetRecordUpdate:(id)update length:(unsigned __int8)length changeId:(unsigned __int8)id;
- (void)handleReadPresetResponse:(id)response length:(unsigned __int8)length;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readActivePresetIndex;
- (void)readHearingAidFeatures;
- (void)sendControlPointOperation:(id)operation;
- (void)start;
- (void)stop;
@end

@implementation HASInterface

- (HASInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v9.receiver = self;
  v9.super_class = HASInterface;
  v4 = [(ServiceInterface *)&v9 initWithPeripheral:peripheral service:service];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
    v6 = objc_alloc_init(NSMutableDictionary);
    presets = v5->_presets;
    v5->_presets = v6;
  }

  return v5;
}

- (void)start
{
  v9.receiver = self;
  v9.super_class = HASInterface;
  [(ServiceInterface *)&v9 start];
  v3 = [CBUUID UUIDWithString:CBUUIDHearingAidFeaturesCharacteristicString];
  v10[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDHearingAidPresetControlPointCharacteristicString];
  v10[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDActivePresetIndexCharacteristicString];
  v10[2] = v5;
  v6 = [NSArray arrayWithObjects:v10 count:3];

  peripheral = [(ServiceInterface *)self peripheral];
  service = [(ServiceInterface *)self service];
  [peripheral discoverCharacteristics:v6 forService:service];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = HASInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  if (!error)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    characteristics = [service characteristics];
    v10 = [characteristics countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = v10;
    v12 = *v34;
    v32 = CBUUIDHearingAidFeaturesCharacteristicString;
    v31 = CBUUIDHearingAidPresetControlPointCharacteristicString;
    v30 = CBUUIDActivePresetIndexCharacteristicString;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(characteristics);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        hearingAidFeaturesCharacteristic = [(HASInterface *)self hearingAidFeaturesCharacteristic];
        if (hearingAidFeaturesCharacteristic)
        {
        }

        else
        {
          uUID = [v14 UUID];
          v17 = [CBUUID UUIDWithString:v32];
          v18 = [uUID isEqual:v17];

          if (v18)
          {
            [(HASInterface *)self setHearingAidFeaturesCharacteristic:v14];
LABEL_22:
            if (([v14 properties] & 0x10) != 0)
            {
              [peripheralCopy setNotifyValue:1 forCharacteristic:v14];
            }

            [peripheralCopy readValueForCharacteristic:v14];
            goto LABEL_25;
          }
        }

        hearingAidPresetControlPointCharacteristic = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
        if (hearingAidPresetControlPointCharacteristic)
        {
        }

        else
        {
          uUID2 = [v14 UUID];
          v21 = [CBUUID UUIDWithString:v31];
          v22 = [uUID2 isEqual:v21];

          if (v22)
          {
            [(HASInterface *)self setHearingAidPresetControlPointCharacteristic:v14];
            if (([v14 properties] & 0x20) != 0)
            {
              [peripheralCopy setNotifyValue:1 forCharacteristic:v14];
            }

            serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

            if (serviceEventHandler)
            {
              serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
              v25 = [NSNumber numberWithInt:255];
              (serviceEventHandler2)[2](serviceEventHandler2, 30, v25);
            }

            goto LABEL_25;
          }
        }

        activePresetIndexCharacteristic = [(HASInterface *)self activePresetIndexCharacteristic];
        if (activePresetIndexCharacteristic)
        {

          goto LABEL_25;
        }

        uUID3 = [v14 UUID];
        v28 = [CBUUID UUIDWithString:v30];
        v29 = [uUID3 isEqual:v28];

        if (v29)
        {
          [(HASInterface *)self setActivePresetIndexCharacteristic:v14];
          goto LABEL_22;
        }

LABEL_25:
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [characteristics countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v11)
      {
LABEL_27:

        [(ServiceInterface *)self notifyDidStart];
        break;
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
    v17 = 136315394;
    v18 = "[HASInterface peripheral:didUpdateValueForCharacteristic:error:]";
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "HASClientService %s updated characteristic %@ ", &v17, 0x16u);
  }

  if (!errorCopy)
  {
    hearingAidFeaturesCharacteristic = [(HASInterface *)self hearingAidFeaturesCharacteristic];

    if (hearingAidFeaturesCharacteristic == characteristicCopy)
    {
      [(HASInterface *)self handleHearingAidFeaturestUpdate];
    }

    else
    {
      hearingAidPresetControlPointCharacteristic = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];

      if (hearingAidPresetControlPointCharacteristic == characteristicCopy)
      {
        [(HASInterface *)self handleHearingAidPresetControlPointUpdate];
      }

      else
      {
        activePresetIndexCharacteristic = [(HASInterface *)self activePresetIndexCharacteristic];

        if (activePresetIndexCharacteristic == characteristicCopy)
        {
          [(HASInterface *)self handleActivePresetIndex];
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
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [characteristicCopy description];
    v17 = 136315394;
    v18 = "[HASInterface peripheral:didUpdateNotificationStateForCharacteristic:error:]";
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "HASClientService %s notified updated characteristic %@ ", &v17, 0x16u);
  }

  if (!errorCopy)
  {
    hearingAidFeaturesCharacteristic = [(HASInterface *)self hearingAidFeaturesCharacteristic];

    if (hearingAidFeaturesCharacteristic == characteristicCopy)
    {
      [(HASInterface *)self handleHearingAidFeaturestUpdate];
    }

    else
    {
      hearingAidPresetControlPointCharacteristic = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];

      if (hearingAidPresetControlPointCharacteristic == characteristicCopy)
      {
        [(HASInterface *)self handleHearingAidPresetControlPointUpdate];
      }

      else
      {
        activePresetIndexCharacteristic = [(HASInterface *)self activePresetIndexCharacteristic];

        if (activePresetIndexCharacteristic == characteristicCopy)
        {
          [(HASInterface *)self handleActivePresetIndex];
        }
      }
    }
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  hearingAidPresetControlPointCharacteristic = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];

  if (hearingAidPresetControlPointCharacteristic != characteristicCopy)
  {
    goto LABEL_12;
  }

  code = [errorCopy code];
  if ((code & 0xFFFFFFFFFFFFFFE0) == 0xE0)
  {
    v19 = [(HASInterface *)self attCommonProfileAndServiceErrorCodeToString:code];
    v12 = [NSString stringWithFormat:@"%@", v19];

    v29 = NSLocalizedDescriptionKey;
    v30 = v12;
    v20 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v14 = [NSError errorWithDomain:CBATTErrorDomain code:code userInfo:v20];

    v21 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v21;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      *buf = 138412546;
      v32 = name;
      v33 = 2112;
      v34 = v14;
      goto LABEL_8;
    }
  }

  else
  {
    if ((code & 0xFFFFFFFFFFFFFFE0) != 0x80)
    {
      v25 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        peripheral2 = [(ServiceInterface *)self peripheral];
        name2 = [peripheral2 name];
        *buf = 138412546;
        v32 = name2;
        v33 = 2112;
        v34 = errorCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Hearing Aid Preset Control Point operation result for Hearing Aid %@: %@", buf, 0x16u);
      }

      goto LABEL_10;
    }

    v11 = [(HASInterface *)self attApplicationErrorCodeToString:code];
    v12 = [NSString stringWithFormat:@"%@", v11];

    v35 = NSLocalizedDescriptionKey;
    v36 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v14 = [NSError errorWithDomain:CBATTErrorDomain code:code userInfo:v13];

    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      *buf = 138412546;
      v32 = name;
      v33 = 2112;
      v34 = v14;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Hearing Aid Preset Control Point operation result for Hearing Aid %@: %@", buf, 0x16u);
    }
  }

LABEL_10:
  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

  if (serviceEventHandler)
  {
    serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    (serviceEventHandler2)[2](serviceEventHandler2, 27, v24);
  }

LABEL_12:
}

- (void)handleHearingAidFeaturestUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    hearingAidFeaturesCharacteristic = [(HASInterface *)self hearingAidFeaturesCharacteristic];
    value = [hearingAidFeaturesCharacteristic value];
    v7 = [value description];
    *buf = 138412290;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hearing Aid Features update: %@", buf, 0xCu);
  }

  hearingAidFeaturesCharacteristic2 = [(HASInterface *)self hearingAidFeaturesCharacteristic];
  value2 = [hearingAidFeaturesCharacteristic2 value];
  v10 = [value2 length];

  if (v10)
  {
    hearingAidFeaturesCharacteristic3 = [(HASInterface *)self hearingAidFeaturesCharacteristic];
    value3 = [hearingAidFeaturesCharacteristic3 value];
    v13 = [DataInputStream inputStreamWithData:value3 byteOrder:1];

    v32 = 0;
    [v13 readUint8:&v32];
    [(HASInterface *)self setHearingAidFeatures:v32];
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(HASInterface *)self hearingAidTypeToString:[(HASInterface *)self getHearingAidType]];
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Hearing Aid Type: %@", buf, 0xCu);
    }

    v17 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      presetSyncSupported = [(HASInterface *)self presetSyncSupported];
      *buf = 67109120;
      LODWORD(v34) = presetSyncSupported;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Preset Synchronization Support: %d", buf, 8u);
    }

    v20 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      independentPresets = [(HASInterface *)self independentPresets];
      *buf = 67109120;
      LODWORD(v34) = independentPresets;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Independent Presets: %d", buf, 8u);
    }

    v23 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      dynamicPresents = [(HASInterface *)self dynamicPresents];
      *buf = 67109120;
      LODWORD(v34) = dynamicPresents;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Dynamic Presets: %d", buf, 8u);
    }

    v26 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      writablePresentsSupported = [(HASInterface *)self writablePresentsSupported];
      *buf = 67109120;
      LODWORD(v34) = writablePresentsSupported;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Writable Presets Support: %d", buf, 8u);
    }

    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (serviceEventHandler)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      v31 = [NSNumber numberWithInt:v32];
      (serviceEventHandler2)[2](serviceEventHandler2, 28, v31);
    }
  }
}

- (void)handleHearingAidPresetControlPointUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    hearingAidPresetControlPointCharacteristic = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
    value = [hearingAidPresetControlPointCharacteristic value];
    v7 = [value description];
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hearing Aid Preset Control Point update: %@", &v14, 0xCu);
  }

  hearingAidPresetControlPointCharacteristic2 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
  value2 = [hearingAidPresetControlPointCharacteristic2 value];
  v10 = [value2 length];

  if (v10)
  {
    hearingAidPresetControlPointCharacteristic3 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
    value3 = [hearingAidPresetControlPointCharacteristic3 value];
    v13 = [DataInputStream inputStreamWithData:value3 byteOrder:1];

    LOBYTE(v14) = 0;
    [v13 readUint8:&v14];
    if (v14 == 3)
    {
      [(HASInterface *)self handlePresetChanged:v13 length:(v10 - 1)];
    }

    else if (v14 == 2)
    {
      [(HASInterface *)self handleReadPresetResponse:v13 length:(v10 - 1)];
    }
  }
}

- (void)handleReadPresetResponse:(id)response length:(unsigned __int8)length
{
  lengthCopy = length;
  responseCopy = response;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    peripheral = [(ServiceInterface *)self peripheral];
    identifier = [peripheral identifier];
    *buf = 138412290;
    *v36 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleReadPresetResponse for peripheral %@", buf, 0xCu);
  }

  if (lengthCopy >= 4)
  {
    v11 = objc_alloc_init(HASPresetRecord);
    v34 = 0;
    [responseCopy readUint8:&v34];
    v33 = 0;
    [responseCopy readUint8:&v33];
    v32 = 0;
    [responseCopy readUint8:&v32];
    v12 = lengthCopy - 3;
    [(HASPresetRecord *)v11 setIndex:v33];
    [(HASPresetRecord *)v11 setWritable:v32 & 1];
    [(HASPresetRecord *)v11 setIsAvailable:(v32 >> 1) & 1];
    if (v12 >= 0x28)
    {
      v13 = 40;
    }

    else
    {
      v13 = v12;
    }

    v14 = objc_alloc_init(NSMutableData);
    [responseCopy readNumBytes:v13 toData:v14];
    v15 = [[NSString alloc] initWithData:v14 encoding:4];
    [(HASPresetRecord *)v11 setName:v15];

    [(HASPresetRecord *)v11 setIsLast:v34 == 1];
    presets = [(HASInterface *)self presets];
    v17 = [NSNumber numberWithInt:v33];
    [presets setObject:v11 forKey:v17];

    v18 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v33;
      v20 = v18;
      name = [(HASPresetRecord *)v11 name];
      writable = [(HASPresetRecord *)v11 writable];
      isAvailable = [(HASPresetRecord *)v11 isAvailable];
      isLast = [(HASPresetRecord *)v11 isLast];
      *buf = 67110146;
      *v36 = v19;
      *&v36[4] = 2112;
      *&v36[6] = name;
      v37 = 1024;
      v38 = writable;
      v39 = 1024;
      v40 = isAvailable;
      v41 = 1024;
      v42 = isLast;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Preset read - index: %d, name: %@, writable: %d, isAvailable: %d, isLast: %d", buf, 0x24u);
    }

    v25 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      presets2 = [(HASInterface *)self presets];
      v28 = [presets2 count];
      *buf = 134217984;
      *v36 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Total number of presets read so far: %lu", buf, 0xCu);
    }

    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (serviceEventHandler)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      v31 = [NSNumber numberWithInt:v33];
      (serviceEventHandler2)[2](serviceEventHandler2, 31, v31);
    }
  }
}

- (void)handlePresetChanged:(id)changed length:(unsigned __int8)length
{
  lengthCopy = length;
  changedCopy = changed;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    peripheral = [(ServiceInterface *)self peripheral];
    identifier = [peripheral identifier];
    v11 = 138412290;
    v12 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handlePresetChanged for peripheral %@", &v11, 0xCu);
  }

  if (lengthCopy)
  {
    LOBYTE(v11) = 0;
    [changedCopy readUint8:&v11];
    if (v11)
    {
      if (v11 <= 3u)
      {
        [(HASInterface *)self handlePresetRecordUpdate:changedCopy length:(lengthCopy - 1) changeId:?];
      }
    }

    else
    {
      [(HASInterface *)self handleGenericUpdate:changedCopy length:(lengthCopy - 1)];
    }
  }
}

- (void)handleGenericUpdate:(id)update length:(unsigned __int8)length
{
  lengthCopy = length;
  updateCopy = update;
  if (lengthCopy < 5)
  {
    goto LABEL_38;
  }

  v7 = objc_alloc_init(HASPresetRecord);
  v89 = 0;
  [updateCopy readUint8:&v89];
  v88 = 0;
  [updateCopy readUint8:&v88];
  v87 = 0;
  [updateCopy readUint8:&v87];
  v86 = 0;
  [updateCopy readUint8:&v86];
  [(HASPresetRecord *)v7 setIndex:v87];
  [(HASPresetRecord *)v7 setWritable:v86 & 1];
  [(HASPresetRecord *)v7 setIsAvailable:(v86 >> 1) & 1];
  if (lengthCopy - 4 >= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = (lengthCopy - 4);
  }

  v9 = objc_alloc_init(NSMutableData);
  v85 = updateCopy;
  [updateCopy readNumBytes:v8 toData:v9];
  v83 = v9;
  v10 = [[NSString alloc] initWithData:v9 encoding:4];
  [(HASPresetRecord *)v7 setName:v10];

  [(HASPresetRecord *)v7 setIsLast:v89 == 1];
  presets = [(HASInterface *)self presets];
  v12 = &MGGetBoolAnswer_ptr;
  v13 = [NSNumber numberWithInt:v87];
  v14 = [presets objectForKey:v13];

  if (v14)
  {
    name = [(HASPresetRecord *)v7 name];
    name2 = [v14 name];
    v17 = [name isEqual:name2];

    if ((v17 & 1) == 0)
    {
      presets2 = [(HASInterface *)self presets];
      v19 = [NSNumber numberWithInt:v87];
      [presets2 setObject:v7 forKey:v19];

      v20 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v87;
        v22 = v20;
        name3 = [(HASPresetRecord *)v7 name];
        writable = [(HASPresetRecord *)v7 writable];
        isAvailable = [(HASPresetRecord *)v7 isAvailable];
        isLast = [(HASPresetRecord *)v7 isLast];
        *buf = 67110402;
        *v91 = v21;
        *&v91[4] = 2112;
        *&v91[6] = name3;
        v92 = 1024;
        v93 = writable;
        v94 = 1024;
        v95 = isAvailable;
        v96 = 1024;
        v97 = isLast;
        v98 = 1024;
        v99 = v88;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Preset name changed - index: %d name: %@ writable: %d isAvailable: %d isLast: %d prevIndex: %d", buf, 0x2Au);
      }

      serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

      if (serviceEventHandler)
      {
        serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
        v29 = [NSNumber numberWithInt:v87];
        (serviceEventHandler2)[2](serviceEventHandler2, 32, v29);
      }
    }

    isAvailable2 = [(HASPresetRecord *)v7 isAvailable];
    if (isAvailable2 == [v14 isAvailable])
    {
      goto LABEL_26;
    }

    presets3 = [(HASInterface *)self presets];
    v32 = [NSNumber numberWithInt:v87];
    [presets3 setObject:v7 forKey:v32];

    LODWORD(v32) = [(HASPresetRecord *)v7 isAvailable];
    v33 = qword_1000A9FE0;
    v34 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
    if (v32)
    {
      if (v34)
      {
        v35 = v87;
        v36 = v33;
        name4 = [(HASPresetRecord *)v7 name];
        writable2 = [(HASPresetRecord *)v7 writable];
        isAvailable3 = [(HASPresetRecord *)v7 isAvailable];
        isLast2 = [(HASPresetRecord *)v7 isLast];
        *buf = 67110402;
        *v91 = v35;
        *&v91[4] = 2112;
        *&v91[6] = name4;
        v92 = 1024;
        v93 = writable2;
        v94 = 1024;
        v95 = isAvailable3;
        v96 = 1024;
        v97 = isLast2;
        v98 = 1024;
        v99 = v88;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Preset available - index: %d name: %@ writable: %d isAvailable: %d isLast: %d prevIndex: %d", buf, 0x2Au);
      }

      v41 = 35;
    }

    else
    {
      if (v34)
      {
        v54 = v87;
        v55 = v33;
        name5 = [(HASPresetRecord *)v7 name];
        writable3 = [(HASPresetRecord *)v7 writable];
        isAvailable4 = [(HASPresetRecord *)v7 isAvailable];
        isLast3 = [(HASPresetRecord *)v7 isLast];
        *buf = 67110402;
        *v91 = v54;
        *&v91[4] = 2112;
        *&v91[6] = name5;
        v92 = 1024;
        v93 = writable3;
        v94 = 1024;
        v95 = isAvailable4;
        v96 = 1024;
        v97 = isLast3;
        v98 = 1024;
        v99 = v88;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Preset unavailable - index: %d name: %@ writable: %d isAvailable: %d isLast: %d prevIndex: %d", buf, 0x2Au);
      }

      v41 = 36;
    }

    serviceEventHandler3 = [(ServiceInterface *)self serviceEventHandler];

    if (!serviceEventHandler3)
    {
      goto LABEL_26;
    }

    serviceEventHandler4 = [(ServiceInterface *)self serviceEventHandler];
    v53 = [NSNumber numberWithInt:v87];
    (serviceEventHandler4)[2](serviceEventHandler4, v41, v53);
  }

  else
  {
    presets4 = [(HASInterface *)self presets];
    v43 = [NSNumber numberWithInt:v87];
    [presets4 setObject:v7 forKey:v43];

    v44 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v87;
      v46 = v44;
      name6 = [(HASPresetRecord *)v7 name];
      writable4 = [(HASPresetRecord *)v7 writable];
      isAvailable5 = [(HASPresetRecord *)v7 isAvailable];
      isLast4 = [(HASPresetRecord *)v7 isLast];
      *buf = 67110402;
      *v91 = v45;
      *&v91[4] = 2112;
      *&v91[6] = name6;
      v92 = 1024;
      v93 = writable4;
      v94 = 1024;
      v95 = isAvailable5;
      v96 = 1024;
      v97 = isLast4;
      v98 = 1024;
      v99 = v88;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Preset added - index: %d name: %@ writable: %d isAvailable: %d isLast: %d prevIndex: %d", buf, 0x2Au);
    }

    serviceEventHandler5 = [(ServiceInterface *)self serviceEventHandler];

    if (!serviceEventHandler5)
    {
      goto LABEL_26;
    }

    serviceEventHandler4 = [(ServiceInterface *)self serviceEventHandler];
    v53 = [NSNumber numberWithInt:v87];
    (serviceEventHandler4)[2](serviceEventHandler4, 33, v53);
  }

LABEL_26:
  v82 = v14;
  v84 = v7;
  if (v87 > (v88 + 1))
  {
    v61 = (v88 + 1);
    do
    {
      presets5 = [(HASInterface *)self presets];
      v63 = [v12[239] numberWithInt:v61];
      v64 = [presets5 objectForKey:v63];

      if (v64)
      {
        v65 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v66 = v65;
          index = [v64 index];
          [v64 name];
          v69 = v68 = v12;
          writable5 = [v64 writable];
          isAvailable6 = [v64 isAvailable];
          isLast5 = [v64 isLast];
          *buf = 67110146;
          *v91 = index;
          *&v91[4] = 2112;
          *&v91[6] = v69;
          v92 = 1024;
          v93 = writable5;
          v94 = 1024;
          v95 = isAvailable6;
          v96 = 1024;
          v97 = isLast5;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Preset deleted - index: %d name: %@ writable: %d isAvailable: %d, isLast: %d", buf, 0x24u);

          v12 = v68;
        }

        serviceEventHandler6 = [(ServiceInterface *)self serviceEventHandler];

        if (serviceEventHandler6)
        {
          serviceEventHandler7 = [(ServiceInterface *)self serviceEventHandler];
          v75 = [v12[239] numberWithInt:v61];
          (serviceEventHandler7)[2](serviceEventHandler7, 34, v75);
        }

        presets6 = [(HASInterface *)self presets];
        v77 = [v12[239] numberWithInt:v61];
        [presets6 removeObjectForKey:v77];
      }

      v61 = (v61 + 1);
    }

    while (v61 < v87);
  }

  v78 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v79 = v78;
    presets7 = [(HASInterface *)self presets];
    v81 = [presets7 count];
    *buf = 134217984;
    *v91 = v81;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Total number of presets read so far: %lu", buf, 0xCu);
  }

  updateCopy = v85;
LABEL_38:
}

- (void)handlePresetRecordUpdate:(id)update length:(unsigned __int8)length changeId:(unsigned __int8)id
{
  if (length < 2u)
  {
    return;
  }

  idCopy = id;
  v36 = 0;
  updateCopy = update;
  [updateCopy readUint8:&v36];
  v35 = 0;
  [updateCopy readUint8:&v35];

  switch(idCopy)
  {
    case 3:
      presets = [(HASInterface *)self presets];
      v28 = [NSNumber numberWithInt:v35];
      serviceEventHandler5 = [presets objectForKey:v28];

      if (!serviceEventHandler5)
      {
        goto LABEL_21;
      }

      [serviceEventHandler5 setIsAvailable:0];
      v29 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v35;
        v31 = v29;
        peripheral = [(ServiceInterface *)self peripheral];
        identifier = [peripheral identifier];
        *buf = 67109378;
        v38 = v30;
        v39 = 2112;
        v40 = identifier;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Preset with index %d has become unavailable for peripheral %@", buf, 0x12u);
      }

      serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

      if (!serviceEventHandler)
      {
        goto LABEL_21;
      }

      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      v26 = [NSNumber numberWithInt:v35];
      (serviceEventHandler2)[2](serviceEventHandler2, 36, v26);
LABEL_19:

      goto LABEL_20;
    case 2:
      presets2 = [(HASInterface *)self presets];
      v19 = [NSNumber numberWithInt:v35];
      serviceEventHandler5 = [presets2 objectForKey:v19];

      if (!serviceEventHandler5)
      {
        goto LABEL_21;
      }

      [serviceEventHandler5 setIsAvailable:1];
      v20 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v35;
        v22 = v20;
        peripheral2 = [(ServiceInterface *)self peripheral];
        identifier2 = [peripheral2 identifier];
        *buf = 67109378;
        v38 = v21;
        v39 = 2112;
        v40 = identifier2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Preset with index %d has become available for peripheral %@", buf, 0x12u);
      }

      serviceEventHandler3 = [(ServiceInterface *)self serviceEventHandler];

      if (!serviceEventHandler3)
      {
        goto LABEL_21;
      }

      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      v26 = [NSNumber numberWithInt:v35];
      (serviceEventHandler2)[2](serviceEventHandler2, 35, v26);
      goto LABEL_19;
    case 1:
      presets3 = [(HASInterface *)self presets];
      v9 = [NSNumber numberWithInt:v35];
      [presets3 removeObjectForKey:v9];

      v10 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v35;
        v12 = v10;
        peripheral3 = [(ServiceInterface *)self peripheral];
        identifier3 = [peripheral3 identifier];
        *buf = 67109378;
        v38 = v11;
        v39 = 2112;
        v40 = identifier3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preset with index %d was deleted for peripheral %@", buf, 0x12u);
      }

      serviceEventHandler4 = [(ServiceInterface *)self serviceEventHandler];

      if (serviceEventHandler4)
      {
        serviceEventHandler5 = [(ServiceInterface *)self serviceEventHandler];
        serviceEventHandler2 = [NSNumber numberWithInt:v35];
        serviceEventHandler5[2](serviceEventHandler5, 34, serviceEventHandler2);
LABEL_20:

LABEL_21:
      }

      break;
  }
}

- (void)handleActivePresetIndex
{
  activePresetIndexCharacteristic = [(HASInterface *)self activePresetIndexCharacteristic];
  value = [activePresetIndexCharacteristic value];
  v5 = [value length];

  if (v5)
  {
    activePresetIndexCharacteristic2 = [(HASInterface *)self activePresetIndexCharacteristic];
    value2 = [activePresetIndexCharacteristic2 value];
    v8 = [DataInputStream inputStreamWithData:value2 byteOrder:1];

    v15 = 0;
    [v8 readUint8:&v15];
    [(HASInterface *)self setActivePresetIndex:v15];
    v9 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      activePresetIndex = [(HASInterface *)self activePresetIndex];
      *buf = 67109120;
      v17 = activePresetIndex;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Active Preset Index: %d", buf, 8u);
    }

    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (serviceEventHandler)
    {
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      v14 = [NSNumber numberWithInt:v15];
      (serviceEventHandler2)[2](serviceEventHandler2, 29, v14);
    }
  }
}

- (void)readActivePresetIndex
{
  activePresetIndexCharacteristic = [(HASInterface *)self activePresetIndexCharacteristic];

  if (activePresetIndexCharacteristic)
  {
    peripheral = [(ServiceInterface *)self peripheral];
    activePresetIndexCharacteristic2 = [(HASInterface *)self activePresetIndexCharacteristic];
    [peripheral readValueForCharacteristic:activePresetIndexCharacteristic2];
  }
}

- (void)readHearingAidFeatures
{
  hearingAidFeaturesCharacteristic = [(HASInterface *)self hearingAidFeaturesCharacteristic];

  if (hearingAidFeaturesCharacteristic)
  {
    peripheral = [(ServiceInterface *)self peripheral];
    hearingAidFeaturesCharacteristic2 = [(HASInterface *)self hearingAidFeaturesCharacteristic];
    [peripheral readValueForCharacteristic:hearingAidFeaturesCharacteristic2];
  }
}

- (void)sendControlPointOperation:(id)operation
{
  operationCopy = operation;
  peripheral = [(ServiceInterface *)self peripheral];
  hearingAidPresetControlPointCharacteristic = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
  [peripheral writeValue:operationCopy forCharacteristic:hearingAidPresetControlPointCharacteristic type:0];
}

- (id)presetNameToString:(id)string
{
  stringCopy = string;
  v4 = [[NSString alloc] initWithData:stringCopy encoding:4];

  return v4;
}

- (id)hearingAidTypeToString:(unsigned __int8)string
{
  if (string > 2u)
  {
    return @"Unknown Hearing Aid";
  }

  else
  {
    return *(&off_100095330 + string);
  }
}

- (id)attApplicationErrorCodeToString:(int64_t)string
{
  if ((string - 128) > 4)
  {
    return @"Unknown Application error code";
  }

  else
  {
    return *(&off_100095348 + string - 128);
  }
}

- (id)attCommonProfileAndServiceErrorCodeToString:(int64_t)string
{
  if ((string - 252) > 3)
  {
    return @"Unknown Common Profile and Service error code";
  }

  else
  {
    return *(&off_100095370 + string - 252);
  }
}

@end