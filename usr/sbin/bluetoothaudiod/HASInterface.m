@interface HASInterface
- (HASInterface)initWithPeripheral:(id)a3 service:(id)a4;
- (id)attApplicationErrorCodeToString:(int64_t)a3;
- (id)attCommonProfileAndServiceErrorCodeToString:(int64_t)a3;
- (id)hearingAidTypeToString:(unsigned __int8)a3;
- (id)presetNameToString:(id)a3;
- (void)handleActivePresetIndex;
- (void)handleGenericUpdate:(id)a3 length:(unsigned __int8)a4;
- (void)handleHearingAidFeaturestUpdate;
- (void)handleHearingAidPresetControlPointUpdate;
- (void)handlePresetChanged:(id)a3 length:(unsigned __int8)a4;
- (void)handlePresetRecordUpdate:(id)a3 length:(unsigned __int8)a4 changeId:(unsigned __int8)a5;
- (void)handleReadPresetResponse:(id)a3 length:(unsigned __int8)a4;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readActivePresetIndex;
- (void)readHearingAidFeatures;
- (void)sendControlPointOperation:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HASInterface

- (HASInterface)initWithPeripheral:(id)a3 service:(id)a4
{
  v9.receiver = self;
  v9.super_class = HASInterface;
  v4 = [(ServiceInterface *)&v9 initWithPeripheral:a3 service:a4];
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

  v7 = [(ServiceInterface *)self peripheral];
  v8 = [(ServiceInterface *)self service];
  [v7 discoverCharacteristics:v6 forService:v8];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = HASInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  if (!a5)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [a4 characteristics];
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = [(HASInterface *)self hearingAidFeaturesCharacteristic];
        if (v15)
        {
        }

        else
        {
          v16 = [v14 UUID];
          v17 = [CBUUID UUIDWithString:v32];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            [(HASInterface *)self setHearingAidFeaturesCharacteristic:v14];
LABEL_22:
            if (([v14 properties] & 0x10) != 0)
            {
              [v8 setNotifyValue:1 forCharacteristic:v14];
            }

            [v8 readValueForCharacteristic:v14];
            goto LABEL_25;
          }
        }

        v19 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
        if (v19)
        {
        }

        else
        {
          v20 = [v14 UUID];
          v21 = [CBUUID UUIDWithString:v31];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
            [(HASInterface *)self setHearingAidPresetControlPointCharacteristic:v14];
            if (([v14 properties] & 0x20) != 0)
            {
              [v8 setNotifyValue:1 forCharacteristic:v14];
            }

            v23 = [(ServiceInterface *)self serviceEventHandler];

            if (v23)
            {
              v24 = [(ServiceInterface *)self serviceEventHandler];
              v25 = [NSNumber numberWithInt:255];
              (v24)[2](v24, 30, v25);
            }

            goto LABEL_25;
          }
        }

        v26 = [(HASInterface *)self activePresetIndexCharacteristic];
        if (v26)
        {

          goto LABEL_25;
        }

        v27 = [v14 UUID];
        v28 = [CBUUID UUIDWithString:v30];
        v29 = [v27 isEqual:v28];

        if (v29)
        {
          [(HASInterface *)self setActivePresetIndexCharacteristic:v14];
          goto LABEL_22;
        }

LABEL_25:
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v11)
      {
LABEL_27:

        [(ServiceInterface *)self notifyDidStart];
        break;
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
    v17 = 136315394;
    v18 = "[HASInterface peripheral:didUpdateValueForCharacteristic:error:]";
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "HASClientService %s updated characteristic %@ ", &v17, 0x16u);
  }

  if (!v10)
  {
    v14 = [(HASInterface *)self hearingAidFeaturesCharacteristic];

    if (v14 == v9)
    {
      [(HASInterface *)self handleHearingAidFeaturestUpdate];
    }

    else
    {
      v15 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];

      if (v15 == v9)
      {
        [(HASInterface *)self handleHearingAidPresetControlPointUpdate];
      }

      else
      {
        v16 = [(HASInterface *)self activePresetIndexCharacteristic];

        if (v16 == v9)
        {
          [(HASInterface *)self handleActivePresetIndex];
        }
      }
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
    v17 = 136315394;
    v18 = "[HASInterface peripheral:didUpdateNotificationStateForCharacteristic:error:]";
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "HASClientService %s notified updated characteristic %@ ", &v17, 0x16u);
  }

  if (!v10)
  {
    v14 = [(HASInterface *)self hearingAidFeaturesCharacteristic];

    if (v14 == v9)
    {
      [(HASInterface *)self handleHearingAidFeaturestUpdate];
    }

    else
    {
      v15 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];

      if (v15 == v9)
      {
        [(HASInterface *)self handleHearingAidPresetControlPointUpdate];
      }

      else
      {
        v16 = [(HASInterface *)self activePresetIndexCharacteristic];

        if (v16 == v9)
        {
          [(HASInterface *)self handleActivePresetIndex];
        }
      }
    }
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];

  if (v9 != v8)
  {
    goto LABEL_12;
  }

  v10 = [v7 code];
  if ((v10 & 0xFFFFFFFFFFFFFFE0) == 0xE0)
  {
    v19 = [(HASInterface *)self attCommonProfileAndServiceErrorCodeToString:v10];
    v12 = [NSString stringWithFormat:@"%@", v19];

    v29 = NSLocalizedDescriptionKey;
    v30 = v12;
    v20 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v14 = [NSError errorWithDomain:CBATTErrorDomain code:v10 userInfo:v20];

    v21 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v21;
      v17 = [(ServiceInterface *)self peripheral];
      v18 = [v17 name];
      *buf = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v14;
      goto LABEL_8;
    }
  }

  else
  {
    if ((v10 & 0xFFFFFFFFFFFFFFE0) != 0x80)
    {
      v25 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [(ServiceInterface *)self peripheral];
        v28 = [v27 name];
        *buf = 138412546;
        v32 = v28;
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Hearing Aid Preset Control Point operation result for Hearing Aid %@: %@", buf, 0x16u);
      }

      goto LABEL_10;
    }

    v11 = [(HASInterface *)self attApplicationErrorCodeToString:v10];
    v12 = [NSString stringWithFormat:@"%@", v11];

    v35 = NSLocalizedDescriptionKey;
    v36 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v14 = [NSError errorWithDomain:CBATTErrorDomain code:v10 userInfo:v13];

    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(ServiceInterface *)self peripheral];
      v18 = [v17 name];
      *buf = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v14;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Hearing Aid Preset Control Point operation result for Hearing Aid %@: %@", buf, 0x16u);
    }
  }

LABEL_10:
  v22 = [(ServiceInterface *)self serviceEventHandler];

  if (v22)
  {
    v23 = [(ServiceInterface *)self serviceEventHandler];
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
    (v23)[2](v23, 27, v24);
  }

LABEL_12:
}

- (void)handleHearingAidFeaturestUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HASInterface *)self hearingAidFeaturesCharacteristic];
    v6 = [v5 value];
    v7 = [v6 description];
    *buf = 138412290;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hearing Aid Features update: %@", buf, 0xCu);
  }

  v8 = [(HASInterface *)self hearingAidFeaturesCharacteristic];
  v9 = [v8 value];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(HASInterface *)self hearingAidFeaturesCharacteristic];
    v12 = [v11 value];
    v13 = [DataInputStream inputStreamWithData:v12 byteOrder:1];

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
      v19 = [(HASInterface *)self presetSyncSupported];
      *buf = 67109120;
      LODWORD(v34) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Preset Synchronization Support: %d", buf, 8u);
    }

    v20 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [(HASInterface *)self independentPresets];
      *buf = 67109120;
      LODWORD(v34) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Independent Presets: %d", buf, 8u);
    }

    v23 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [(HASInterface *)self dynamicPresents];
      *buf = 67109120;
      LODWORD(v34) = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Dynamic Presets: %d", buf, 8u);
    }

    v26 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [(HASInterface *)self writablePresentsSupported];
      *buf = 67109120;
      LODWORD(v34) = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Writable Presets Support: %d", buf, 8u);
    }

    v29 = [(ServiceInterface *)self serviceEventHandler];

    if (v29)
    {
      v30 = [(ServiceInterface *)self serviceEventHandler];
      v31 = [NSNumber numberWithInt:v32];
      (v30)[2](v30, 28, v31);
    }
  }
}

- (void)handleHearingAidPresetControlPointUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
    v6 = [v5 value];
    v7 = [v6 description];
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hearing Aid Preset Control Point update: %@", &v14, 0xCu);
  }

  v8 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
  v9 = [v8 value];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
    v12 = [v11 value];
    v13 = [DataInputStream inputStreamWithData:v12 byteOrder:1];

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

- (void)handleReadPresetResponse:(id)a3 length:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(ServiceInterface *)self peripheral];
    v10 = [v9 identifier];
    *buf = 138412290;
    *v36 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleReadPresetResponse for peripheral %@", buf, 0xCu);
  }

  if (v4 >= 4)
  {
    v11 = objc_alloc_init(HASPresetRecord);
    v34 = 0;
    [v6 readUint8:&v34];
    v33 = 0;
    [v6 readUint8:&v33];
    v32 = 0;
    [v6 readUint8:&v32];
    v12 = v4 - 3;
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
    [v6 readNumBytes:v13 toData:v14];
    v15 = [[NSString alloc] initWithData:v14 encoding:4];
    [(HASPresetRecord *)v11 setName:v15];

    [(HASPresetRecord *)v11 setIsLast:v34 == 1];
    v16 = [(HASInterface *)self presets];
    v17 = [NSNumber numberWithInt:v33];
    [v16 setObject:v11 forKey:v17];

    v18 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v33;
      v20 = v18;
      v21 = [(HASPresetRecord *)v11 name];
      v22 = [(HASPresetRecord *)v11 writable];
      v23 = [(HASPresetRecord *)v11 isAvailable];
      v24 = [(HASPresetRecord *)v11 isLast];
      *buf = 67110146;
      *v36 = v19;
      *&v36[4] = 2112;
      *&v36[6] = v21;
      v37 = 1024;
      v38 = v22;
      v39 = 1024;
      v40 = v23;
      v41 = 1024;
      v42 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Preset read - index: %d, name: %@, writable: %d, isAvailable: %d, isLast: %d", buf, 0x24u);
    }

    v25 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = [(HASInterface *)self presets];
      v28 = [v27 count];
      *buf = 134217984;
      *v36 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Total number of presets read so far: %lu", buf, 0xCu);
    }

    v29 = [(ServiceInterface *)self serviceEventHandler];

    if (v29)
    {
      v30 = [(ServiceInterface *)self serviceEventHandler];
      v31 = [NSNumber numberWithInt:v33];
      (v30)[2](v30, 31, v31);
    }
  }
}

- (void)handlePresetChanged:(id)a3 length:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(ServiceInterface *)self peripheral];
    v10 = [v9 identifier];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handlePresetChanged for peripheral %@", &v11, 0xCu);
  }

  if (v4)
  {
    LOBYTE(v11) = 0;
    [v6 readUint8:&v11];
    if (v11)
    {
      if (v11 <= 3u)
      {
        [(HASInterface *)self handlePresetRecordUpdate:v6 length:(v4 - 1) changeId:?];
      }
    }

    else
    {
      [(HASInterface *)self handleGenericUpdate:v6 length:(v4 - 1)];
    }
  }
}

- (void)handleGenericUpdate:(id)a3 length:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 < 5)
  {
    goto LABEL_38;
  }

  v7 = objc_alloc_init(HASPresetRecord);
  v89 = 0;
  [v6 readUint8:&v89];
  v88 = 0;
  [v6 readUint8:&v88];
  v87 = 0;
  [v6 readUint8:&v87];
  v86 = 0;
  [v6 readUint8:&v86];
  [(HASPresetRecord *)v7 setIndex:v87];
  [(HASPresetRecord *)v7 setWritable:v86 & 1];
  [(HASPresetRecord *)v7 setIsAvailable:(v86 >> 1) & 1];
  if (v4 - 4 >= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = (v4 - 4);
  }

  v9 = objc_alloc_init(NSMutableData);
  v85 = v6;
  [v6 readNumBytes:v8 toData:v9];
  v83 = v9;
  v10 = [[NSString alloc] initWithData:v9 encoding:4];
  [(HASPresetRecord *)v7 setName:v10];

  [(HASPresetRecord *)v7 setIsLast:v89 == 1];
  v11 = [(HASInterface *)self presets];
  v12 = &MGGetBoolAnswer_ptr;
  v13 = [NSNumber numberWithInt:v87];
  v14 = [v11 objectForKey:v13];

  if (v14)
  {
    v15 = [(HASPresetRecord *)v7 name];
    v16 = [v14 name];
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      v18 = [(HASInterface *)self presets];
      v19 = [NSNumber numberWithInt:v87];
      [v18 setObject:v7 forKey:v19];

      v20 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v87;
        v22 = v20;
        v23 = [(HASPresetRecord *)v7 name];
        v24 = [(HASPresetRecord *)v7 writable];
        v25 = [(HASPresetRecord *)v7 isAvailable];
        v26 = [(HASPresetRecord *)v7 isLast];
        *buf = 67110402;
        *v91 = v21;
        *&v91[4] = 2112;
        *&v91[6] = v23;
        v92 = 1024;
        v93 = v24;
        v94 = 1024;
        v95 = v25;
        v96 = 1024;
        v97 = v26;
        v98 = 1024;
        v99 = v88;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Preset name changed - index: %d name: %@ writable: %d isAvailable: %d isLast: %d prevIndex: %d", buf, 0x2Au);
      }

      v27 = [(ServiceInterface *)self serviceEventHandler];

      if (v27)
      {
        v28 = [(ServiceInterface *)self serviceEventHandler];
        v29 = [NSNumber numberWithInt:v87];
        (v28)[2](v28, 32, v29);
      }
    }

    v30 = [(HASPresetRecord *)v7 isAvailable];
    if (v30 == [v14 isAvailable])
    {
      goto LABEL_26;
    }

    v31 = [(HASInterface *)self presets];
    v32 = [NSNumber numberWithInt:v87];
    [v31 setObject:v7 forKey:v32];

    LODWORD(v32) = [(HASPresetRecord *)v7 isAvailable];
    v33 = qword_1000A9FE0;
    v34 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
    if (v32)
    {
      if (v34)
      {
        v35 = v87;
        v36 = v33;
        v37 = [(HASPresetRecord *)v7 name];
        v38 = [(HASPresetRecord *)v7 writable];
        v39 = [(HASPresetRecord *)v7 isAvailable];
        v40 = [(HASPresetRecord *)v7 isLast];
        *buf = 67110402;
        *v91 = v35;
        *&v91[4] = 2112;
        *&v91[6] = v37;
        v92 = 1024;
        v93 = v38;
        v94 = 1024;
        v95 = v39;
        v96 = 1024;
        v97 = v40;
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
        v56 = [(HASPresetRecord *)v7 name];
        v57 = [(HASPresetRecord *)v7 writable];
        v58 = [(HASPresetRecord *)v7 isAvailable];
        v59 = [(HASPresetRecord *)v7 isLast];
        *buf = 67110402;
        *v91 = v54;
        *&v91[4] = 2112;
        *&v91[6] = v56;
        v92 = 1024;
        v93 = v57;
        v94 = 1024;
        v95 = v58;
        v96 = 1024;
        v97 = v59;
        v98 = 1024;
        v99 = v88;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Preset unavailable - index: %d name: %@ writable: %d isAvailable: %d isLast: %d prevIndex: %d", buf, 0x2Au);
      }

      v41 = 36;
    }

    v60 = [(ServiceInterface *)self serviceEventHandler];

    if (!v60)
    {
      goto LABEL_26;
    }

    v52 = [(ServiceInterface *)self serviceEventHandler];
    v53 = [NSNumber numberWithInt:v87];
    (v52)[2](v52, v41, v53);
  }

  else
  {
    v42 = [(HASInterface *)self presets];
    v43 = [NSNumber numberWithInt:v87];
    [v42 setObject:v7 forKey:v43];

    v44 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v87;
      v46 = v44;
      v47 = [(HASPresetRecord *)v7 name];
      v48 = [(HASPresetRecord *)v7 writable];
      v49 = [(HASPresetRecord *)v7 isAvailable];
      v50 = [(HASPresetRecord *)v7 isLast];
      *buf = 67110402;
      *v91 = v45;
      *&v91[4] = 2112;
      *&v91[6] = v47;
      v92 = 1024;
      v93 = v48;
      v94 = 1024;
      v95 = v49;
      v96 = 1024;
      v97 = v50;
      v98 = 1024;
      v99 = v88;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Preset added - index: %d name: %@ writable: %d isAvailable: %d isLast: %d prevIndex: %d", buf, 0x2Au);
    }

    v51 = [(ServiceInterface *)self serviceEventHandler];

    if (!v51)
    {
      goto LABEL_26;
    }

    v52 = [(ServiceInterface *)self serviceEventHandler];
    v53 = [NSNumber numberWithInt:v87];
    (v52)[2](v52, 33, v53);
  }

LABEL_26:
  v82 = v14;
  v84 = v7;
  if (v87 > (v88 + 1))
  {
    v61 = (v88 + 1);
    do
    {
      v62 = [(HASInterface *)self presets];
      v63 = [v12[239] numberWithInt:v61];
      v64 = [v62 objectForKey:v63];

      if (v64)
      {
        v65 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v66 = v65;
          v67 = [v64 index];
          [v64 name];
          v69 = v68 = v12;
          v70 = [v64 writable];
          v71 = [v64 isAvailable];
          v72 = [v64 isLast];
          *buf = 67110146;
          *v91 = v67;
          *&v91[4] = 2112;
          *&v91[6] = v69;
          v92 = 1024;
          v93 = v70;
          v94 = 1024;
          v95 = v71;
          v96 = 1024;
          v97 = v72;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Preset deleted - index: %d name: %@ writable: %d isAvailable: %d, isLast: %d", buf, 0x24u);

          v12 = v68;
        }

        v73 = [(ServiceInterface *)self serviceEventHandler];

        if (v73)
        {
          v74 = [(ServiceInterface *)self serviceEventHandler];
          v75 = [v12[239] numberWithInt:v61];
          (v74)[2](v74, 34, v75);
        }

        v76 = [(HASInterface *)self presets];
        v77 = [v12[239] numberWithInt:v61];
        [v76 removeObjectForKey:v77];
      }

      v61 = (v61 + 1);
    }

    while (v61 < v87);
  }

  v78 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v79 = v78;
    v80 = [(HASInterface *)self presets];
    v81 = [v80 count];
    *buf = 134217984;
    *v91 = v81;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Total number of presets read so far: %lu", buf, 0xCu);
  }

  v6 = v85;
LABEL_38:
}

- (void)handlePresetRecordUpdate:(id)a3 length:(unsigned __int8)a4 changeId:(unsigned __int8)a5
{
  if (a4 < 2u)
  {
    return;
  }

  v5 = a5;
  v36 = 0;
  v7 = a3;
  [v7 readUint8:&v36];
  v35 = 0;
  [v7 readUint8:&v35];

  switch(v5)
  {
    case 3:
      v27 = [(HASInterface *)self presets];
      v28 = [NSNumber numberWithInt:v35];
      v16 = [v27 objectForKey:v28];

      if (!v16)
      {
        goto LABEL_21;
      }

      [v16 setIsAvailable:0];
      v29 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v35;
        v31 = v29;
        v32 = [(ServiceInterface *)self peripheral];
        v33 = [v32 identifier];
        *buf = 67109378;
        v38 = v30;
        v39 = 2112;
        v40 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Preset with index %d has become unavailable for peripheral %@", buf, 0x12u);
      }

      v34 = [(ServiceInterface *)self serviceEventHandler];

      if (!v34)
      {
        goto LABEL_21;
      }

      v17 = [(ServiceInterface *)self serviceEventHandler];
      v26 = [NSNumber numberWithInt:v35];
      (v17)[2](v17, 36, v26);
LABEL_19:

      goto LABEL_20;
    case 2:
      v18 = [(HASInterface *)self presets];
      v19 = [NSNumber numberWithInt:v35];
      v16 = [v18 objectForKey:v19];

      if (!v16)
      {
        goto LABEL_21;
      }

      [v16 setIsAvailable:1];
      v20 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v35;
        v22 = v20;
        v23 = [(ServiceInterface *)self peripheral];
        v24 = [v23 identifier];
        *buf = 67109378;
        v38 = v21;
        v39 = 2112;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Preset with index %d has become available for peripheral %@", buf, 0x12u);
      }

      v25 = [(ServiceInterface *)self serviceEventHandler];

      if (!v25)
      {
        goto LABEL_21;
      }

      v17 = [(ServiceInterface *)self serviceEventHandler];
      v26 = [NSNumber numberWithInt:v35];
      (v17)[2](v17, 35, v26);
      goto LABEL_19;
    case 1:
      v8 = [(HASInterface *)self presets];
      v9 = [NSNumber numberWithInt:v35];
      [v8 removeObjectForKey:v9];

      v10 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v35;
        v12 = v10;
        v13 = [(ServiceInterface *)self peripheral];
        v14 = [v13 identifier];
        *buf = 67109378;
        v38 = v11;
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preset with index %d was deleted for peripheral %@", buf, 0x12u);
      }

      v15 = [(ServiceInterface *)self serviceEventHandler];

      if (v15)
      {
        v16 = [(ServiceInterface *)self serviceEventHandler];
        v17 = [NSNumber numberWithInt:v35];
        v16[2](v16, 34, v17);
LABEL_20:

LABEL_21:
      }

      break;
  }
}

- (void)handleActivePresetIndex
{
  v3 = [(HASInterface *)self activePresetIndexCharacteristic];
  v4 = [v3 value];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(HASInterface *)self activePresetIndexCharacteristic];
    v7 = [v6 value];
    v8 = [DataInputStream inputStreamWithData:v7 byteOrder:1];

    v15 = 0;
    [v8 readUint8:&v15];
    [(HASInterface *)self setActivePresetIndex:v15];
    v9 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(HASInterface *)self activePresetIndex];
      *buf = 67109120;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Active Preset Index: %d", buf, 8u);
    }

    v12 = [(ServiceInterface *)self serviceEventHandler];

    if (v12)
    {
      v13 = [(ServiceInterface *)self serviceEventHandler];
      v14 = [NSNumber numberWithInt:v15];
      (v13)[2](v13, 29, v14);
    }
  }
}

- (void)readActivePresetIndex
{
  v3 = [(HASInterface *)self activePresetIndexCharacteristic];

  if (v3)
  {
    v5 = [(ServiceInterface *)self peripheral];
    v4 = [(HASInterface *)self activePresetIndexCharacteristic];
    [v5 readValueForCharacteristic:v4];
  }
}

- (void)readHearingAidFeatures
{
  v3 = [(HASInterface *)self hearingAidFeaturesCharacteristic];

  if (v3)
  {
    v5 = [(ServiceInterface *)self peripheral];
    v4 = [(HASInterface *)self hearingAidFeaturesCharacteristic];
    [v5 readValueForCharacteristic:v4];
  }
}

- (void)sendControlPointOperation:(id)a3
{
  v4 = a3;
  v6 = [(ServiceInterface *)self peripheral];
  v5 = [(HASInterface *)self hearingAidPresetControlPointCharacteristic];
  [v6 writeValue:v4 forCharacteristic:v5 type:0];
}

- (id)presetNameToString:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithData:v3 encoding:4];

  return v4;
}

- (id)hearingAidTypeToString:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return @"Unknown Hearing Aid";
  }

  else
  {
    return *(&off_100095330 + a3);
  }
}

- (id)attApplicationErrorCodeToString:(int64_t)a3
{
  if ((a3 - 128) > 4)
  {
    return @"Unknown Application error code";
  }

  else
  {
    return *(&off_100095348 + a3 - 128);
  }
}

- (id)attCommonProfileAndServiceErrorCodeToString:(int64_t)a3
{
  if ((a3 - 252) > 3)
  {
    return @"Unknown Common Profile and Service error code";
  }

  else
  {
    return *(&off_100095370 + a3 - 252);
  }
}

@end