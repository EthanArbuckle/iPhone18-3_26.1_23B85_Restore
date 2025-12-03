@interface PACSInterface
- (PACSInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (unsigned)codecConfigSupportedWithCodecID:(unint64_t)d withCodecConfig:(unsigned __int8)config withDirection:(BOOL)direction;
- (unsigned)determineChannelCount:(unsigned int)count;
- (unsigned)determineHighestChanCountSupport:(unsigned __int8)support;
- (unsigned)getAudioLocationMask:(BOOL)mask;
- (unsigned)getAvailableAudioContexts:(BOOL)contexts;
- (unsigned)getNumOfChanLocSet:(BOOL)set;
- (unsigned)getSupportedAudioChannelCountMask:(BOOL)mask;
- (unsigned)getSupportedAudioContexts:(BOOL)contexts;
- (void)checkAllAttributesReady;
- (void)createCodecConfigList:(BOOL)list;
- (void)handleAudioLocationsUpdateWithDirection:(BOOL)direction;
- (void)handleAvailableAudioContextUpdate;
- (void)handlePACUpdate:(id)update withType:(BOOL)type;
- (void)handleSupportedAudioContextUpdate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readAvailableContexts;
- (void)readSinkAudioLocations;
- (void)readSourceAudioLocations;
- (void)readSupportedContexts;
- (void)sendDeviceAttributes;
- (void)start;
- (void)stop;
- (void)writeSinkAudioLocations;
- (void)writeSourceAudioLocations;
@end

@implementation PACSInterface

- (PACSInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v25.receiver = self;
  v25.super_class = PACSInterface;
  v4 = [(ServiceInterface *)&v25 initWithPeripheral:peripheral service:service];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
    v6 = objc_alloc_init(NSMutableArray);
    sinkPACCharacteristic = v5->_sinkPACCharacteristic;
    v5->_sinkPACCharacteristic = v6;

    v8 = objc_alloc_init(NSMutableArray);
    sourcePACCharacteristic = v5->_sourcePACCharacteristic;
    v5->_sourcePACCharacteristic = v8;

    v10 = objc_alloc_init(NSMutableArray);
    sinkPacRecordSet = v5->_sinkPacRecordSet;
    v5->_sinkPacRecordSet = v10;

    v12 = objc_alloc_init(NSMutableArray);
    sourcePacRecordSet = v5->_sourcePacRecordSet;
    v5->_sourcePacRecordSet = v12;

    v14 = objc_alloc_init(NSMutableArray);
    sinkCodecConfigArray = v5->_sinkCodecConfigArray;
    v5->_sinkCodecConfigArray = v14;

    v16 = objc_alloc_init(NSMutableArray);
    sourceCodecConfigArray = v5->_sourceCodecConfigArray;
    v5->_sourceCodecConfigArray = v16;

    v18 = objc_alloc_init(NSMutableSet);
    codecIDArray = v5->_codecIDArray;
    v5->_codecIDArray = v18;

    v5->_isSinkPresent = 0;
    v5->_isSourcePresent = 0;
    v20 = dispatch_semaphore_create(0);
    recordSemaphore = v5->_recordSemaphore;
    v5->_recordSemaphore = v20;

    v22 = dispatch_queue_create("com.apple.pa.pacs.record", 0);
    recordQueue = v5->_recordQueue;
    v5->_recordQueue = v22;
  }

  return v5;
}

- (void)start
{
  v14.receiver = self;
  v14.super_class = PACSInterface;
  [(ServiceInterface *)&v14 start];
  v3 = [CBUUID UUIDWithString:CBUUIDSinkPACCharacteristicString];
  v15[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDSourcePACCharacteristicString];
  v15[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDAvailableAudioContextsCharacteristicString];
  v15[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDSupportedAudioContextsCharacteristicString];
  v15[3] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDSinkAudioLocationsCharacteristicString];
  v15[4] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDSourceAudioLocationsCharacteristicString];
  v15[5] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:6];

  peripheral = [(ServiceInterface *)self peripheral];
  service = [(ServiceInterface *)self service];
  [peripheral discoverCharacteristics:v9 forService:service];

  recordQueue = [(PACSInterface *)self recordQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B444;
  v13[3] = &unk_100094CB8;
  v13[4] = self;
  dispatch_async(recordQueue, v13);
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = PACSInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  if (!error)
  {
    v48 = peripheralCopy;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [service characteristics];
    v9 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (!v9)
    {
      goto LABEL_38;
    }

    v10 = v9;
    v11 = *v51;
    v12 = CBUUIDSinkPACCharacteristicString;
    v46 = CBUUIDAvailableAudioContextsCharacteristicString;
    v47 = CBUUIDSourcePACCharacteristicString;
    v44 = CBUUIDSinkAudioLocationsCharacteristicString;
    v45 = CBUUIDSupportedAudioContextsCharacteristicString;
    v43 = CBUUIDSourceAudioLocationsCharacteristicString;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v50 + 1) + 8 * i);
        uUID = [v14 UUID];
        v16 = [CBUUID UUIDWithString:v12];
        v17 = [uUID isEqual:v16];

        if (v17)
        {
          sinkPACCharacteristic = [(PACSInterface *)self sinkPACCharacteristic];
          v19 = [sinkPACCharacteristic count];

          if (v19 <= 1)
          {
            sinkPACCharacteristic2 = [(PACSInterface *)self sinkPACCharacteristic];
            [sinkPACCharacteristic2 addObject:v14];

            if (([v14 properties] & 0x10) != 0)
            {
              [v48 setNotifyValue:1 forCharacteristic:v14];
            }

            [v48 readValueForCharacteristic:v14];
            [(PACSInterface *)self setIsSinkPresent:1];
          }

          continue;
        }

        uUID2 = [v14 UUID];
        v22 = [CBUUID UUIDWithString:v47];
        v23 = [uUID2 isEqual:v22];

        if (v23)
        {
          sourcePACCharacteristic = [(PACSInterface *)self sourcePACCharacteristic];
          v25 = [sourcePACCharacteristic count];

          if (v25 <= 1)
          {
            sourcePACCharacteristic2 = [(PACSInterface *)self sourcePACCharacteristic];
            [sourcePACCharacteristic2 addObject:v14];

            if (([v14 properties] & 0x10) != 0)
            {
              [v48 setNotifyValue:1 forCharacteristic:v14];
            }

            [v48 readValueForCharacteristic:v14];
            [(PACSInterface *)self setIsSourcePresent:1];
          }

          continue;
        }

        availableContextCharacteristic = [(PACSInterface *)self availableContextCharacteristic];
        if (availableContextCharacteristic)
        {
        }

        else
        {
          uUID3 = [v14 UUID];
          v29 = [CBUUID UUIDWithString:v46];
          v30 = [uUID3 isEqual:v29];

          if (v30)
          {
            [(PACSInterface *)self setAvailableContextCharacteristic:v14];
LABEL_33:
            if (([v14 properties] & 0x10) != 0)
            {
              [v48 setNotifyValue:1 forCharacteristic:v14];
            }

            [v48 readValueForCharacteristic:v14];
            continue;
          }
        }

        supportedContextCharacteristic = [(PACSInterface *)self supportedContextCharacteristic];
        if (supportedContextCharacteristic)
        {
        }

        else
        {
          uUID4 = [v14 UUID];
          v33 = [CBUUID UUIDWithString:v45];
          v34 = [uUID4 isEqual:v33];

          if (v34)
          {
            [(PACSInterface *)self setSupportedContextCharacteristic:v14];
            goto LABEL_33;
          }
        }

        sinkAudioLocationsCharacteristics = [(PACSInterface *)self sinkAudioLocationsCharacteristics];
        if (sinkAudioLocationsCharacteristics)
        {
        }

        else
        {
          uUID5 = [v14 UUID];
          v37 = [CBUUID UUIDWithString:v44];
          v38 = [uUID5 isEqual:v37];

          if (v38)
          {
            [(PACSInterface *)self setSinkAudioLocationsCharacteristics:v14];
            goto LABEL_33;
          }
        }

        sourceAudioLocationsCharacteristics = [(PACSInterface *)self sourceAudioLocationsCharacteristics];
        if (sourceAudioLocationsCharacteristics)
        {

          continue;
        }

        uUID6 = [v14 UUID];
        v41 = [CBUUID UUIDWithString:v43];
        v42 = [uUID6 isEqual:v41];

        if (v42)
        {
          [(PACSInterface *)self setSourceAudioLocationsCharacteristics:v14];
          goto LABEL_33;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (!v10)
      {
LABEL_38:

        [(ServiceInterface *)self notifyDidStart];
        peripheralCopy = v48;
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
    *buf = 136315394;
    v41 = "[PACSInterface peripheral:didUpdateValueForCharacteristic:error:]";
    v42 = 2112;
    v43 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PACSClientService %s updated characteristic %@ ", buf, 0x16u);
  }

  if (!errorCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    sinkPACCharacteristic = [(PACSInterface *)self sinkPACCharacteristic];
    v15 = [sinkPACCharacteristic countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(sinkPACCharacteristic);
          }

          if (*(*(&v34 + 1) + 8 * i) == characteristicCopy)
          {
            selfCopy2 = self;
LABEL_27:
            [PACSInterface handlePACUpdate:selfCopy2 withType:"handlePACUpdate:withType:"];

            goto LABEL_28;
          }
        }

        v16 = [sinkPACCharacteristic countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    sinkPACCharacteristic = [(PACSInterface *)self sourcePACCharacteristic];
    v19 = [sinkPACCharacteristic countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      while (2)
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(sinkPACCharacteristic);
          }

          if (*(*(&v30 + 1) + 8 * j) == characteristicCopy)
          {
            selfCopy2 = self;
            goto LABEL_27;
          }
        }

        v20 = [sinkPACCharacteristic countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    availableContextCharacteristic = [(PACSInterface *)self availableContextCharacteristic];

    if (availableContextCharacteristic == characteristicCopy)
    {
      [(PACSInterface *)self handleAvailableAudioContextUpdate];
    }

    else
    {
      supportedContextCharacteristic = [(PACSInterface *)self supportedContextCharacteristic];

      if (supportedContextCharacteristic == characteristicCopy)
      {
        [(PACSInterface *)self handleSupportedAudioContextUpdate];
      }

      else
      {
        sinkAudioLocationsCharacteristics = [(PACSInterface *)self sinkAudioLocationsCharacteristics];

        if (sinkAudioLocationsCharacteristics == characteristicCopy)
        {
          selfCopy4 = self;
          v28 = 1;
          goto LABEL_32;
        }

        sourceAudioLocationsCharacteristics = [(PACSInterface *)self sourceAudioLocationsCharacteristics];

        if (sourceAudioLocationsCharacteristics == characteristicCopy)
        {
          selfCopy4 = self;
          v28 = 0;
LABEL_32:
          [(PACSInterface *)selfCopy4 handleAudioLocationsUpdateWithDirection:v28];
        }
      }
    }
  }

LABEL_28:
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [characteristic description];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didWriteValueForCharacteristic: %@", &v9, 0xCu);
  }
}

- (void)handlePACUpdate:(id)update withType:(BOOL)type
{
  typeCopy = type;
  updateCopy = update;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    value = [updateCopy value];
    *buf = 138412546;
    *v40 = value;
    *&v40[8] = 1024;
    v41 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handlePACUpdate data %@ isSink: %d", buf, 0x12u);
  }

  v10 = &OBJC_IVAR___PACSInterface__sourcePacRecordSet;
  if (typeCopy)
  {
    v10 = &OBJC_IVAR___PACSInterface__sinkPacRecordSet;
  }

  v11 = *(&self->super.super.isa + *v10);
  value2 = [updateCopy value];
  v13 = [DataInputStream inputStreamWithData:value2 byteOrder:1];

  v38 = 0;
  if ([v13 readUint8:&v38])
  {
    selfCopy = self;
    v31 = typeCopy;
    v32 = updateCopy;
    if (v38)
    {
      v14 = 0;
      while (1)
      {
        v15 = objc_alloc_init(PACRecord);
        [v11 addObject:v15];
        v37 = 0;
        [v13 readUint40:&v37];
        [(PACRecord *)v15 setCodecID:v37];
        v36 = 0;
        [v13 readUint8:&v36];
        [(PACRecord *)v15 setCodecSpecificCapabilitiesLength:v36];
        v16 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v40 = v14;
          *&v40[4] = 1024;
          *&v40[6] = v36;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PAC Record %d has Capabilities info length of %u", buf, 0xEu);
        }

        [(PACRecord *)v15 setSupportedMaxCodecFrameBlocksPerSdu:1];
        [(PACRecord *)v15 setSupportedAudioChanCount:1];
        if (v36)
        {
          v17 = 0;
          do
          {
            v35 = 0;
            [v13 readUint8:&v35];
            v34 = 0;
            [v13 readUint8:&v34];
            v18 = v35;
            if (v34 <= 2u)
            {
              if (v34 == 1)
              {
                *buf = 0;
                [v13 readUint16:buf];
                [(PACRecord *)v15 setSupportedSamplingFreq:*buf];
              }

              else if (v34 == 2)
              {
                buf[0] = 0;
                [v13 readUint8:buf];
                [(PACRecord *)v15 setSupportedFrameDurations:buf[0]];
              }
            }

            else
            {
              switch(v34)
              {
                case 3u:
                  buf[0] = 0;
                  [v13 readUint8:buf];
                  [(PACRecord *)v15 setSupportedAudioChanCount:buf[0]];
                  break;
                case 4u:
                  *buf = 0;
                  [v13 readUint16:buf];
                  [(PACRecord *)v15 setSupportedMinOctetsPerCodecFrame:*buf];
                  [v13 readUint16:buf];
                  [(PACRecord *)v15 setSupportedMaxOctetsPerCodecFrame:*buf];
                  break;
                case 5u:
                  buf[0] = 0;
                  [v13 readUint8:buf];
                  [(PACRecord *)v15 setSupportedMaxCodecFrameBlocksPerSdu:buf[0]];
                  break;
              }
            }

            v17 += 1 + v18;
          }

          while (v36 > v17);
        }

        v35 = 0;
        [v13 readUint8:&v35];
        if (v35)
        {
          v19 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *v40 = v14;
            *&v40[4] = 1024;
            *&v40[6] = v35;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PAC Record %d has metadata info length of %u", buf, 0xEu);
          }

          if (v35)
          {
            break;
          }
        }

LABEL_42:
        [(PACRecord *)v15 printPACRecord];

        if (++v14 >= v38)
        {
          goto LABEL_43;
        }
      }

      v20 = 0;
      while (1)
      {
        v34 = 0;
        [v13 readUint8:&v34];
        v33 = 0;
        [v13 readUint8:&v33];
        v21 = v34;
        if (v33 > 0xFDu)
        {
          if (v33 == 254)
          {
            v27 = +[NSMutableData data];
            [(PACRecord *)v15 setExtendedMetaData:v27];

            v28 = v34;
            v24 = [v11 objectAtIndexedSubscript:v14];
            extendedMetaData = [v24 extendedMetaData];
            [v13 readNumBytes:v28 toData:extendedMetaData];
          }

          else
          {
            if (v33 != 255)
            {
LABEL_36:
              v26 = qword_1000A9FE0;
              if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v40 = v33;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Invalid Metadata type of %x", buf, 8u);
              }

              goto LABEL_41;
            }

            v22 = objc_alloc_init(NSMutableData);
            [(PACRecord *)v15 setVendorSpecific:v22];

            v23 = v34;
            v24 = [v11 objectAtIndexedSubscript:v14];
            vendorSpecific = [v24 vendorSpecific];
            [v13 readNumBytes:v23 toData:vendorSpecific];
          }
        }

        else if (v33 == 1)
        {
          *buf = 0;
          [v13 readUint16:buf];
          [(PACRecord *)v15 setPreferredAudioContext:*buf];
        }

        else
        {
          if (v33 != 2)
          {
            goto LABEL_36;
          }

          *buf = 0;
          [v13 readUint16:buf];
          [(PACRecord *)v15 setStreamingAudioContext:*buf];
        }

LABEL_41:
        v20 += 1 + v21;
        if (v35 <= v20)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    [(PACSInterface *)selfCopy createCodecConfigList:v31];
    buf[0] = 0;
    [v13 readUint8:buf];
    updateCopy = v32;
  }
}

- (void)handleAvailableAudioContextUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    availableContextCharacteristic = [(PACSInterface *)self availableContextCharacteristic];
    value = [availableContextCharacteristic value];
    v7 = [value description];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Available audio context update: %@", buf, 0xCu);
  }

  availableContextCharacteristic2 = [(PACSInterface *)self availableContextCharacteristic];
  value2 = [availableContextCharacteristic2 value];
  v10 = [DataInputStream inputStreamWithData:value2 byteOrder:1];

  *buf = 0;
  v11 = 0;
  [v10 readUint16:buf];
  [v10 readUint16:&v11];
  [(PACSInterface *)self setAvailableSinkAudioContext:*buf];
  [(PACSInterface *)self setAvailableSourceAudioContext:v11];
}

- (void)handleSupportedAudioContextUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    supportedContextCharacteristic = [(PACSInterface *)self supportedContextCharacteristic];
    value = [supportedContextCharacteristic value];
    v7 = [value description];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Supported audio context update: %@", buf, 0xCu);
  }

  supportedContextCharacteristic2 = [(PACSInterface *)self supportedContextCharacteristic];
  value2 = [supportedContextCharacteristic2 value];
  v10 = [DataInputStream inputStreamWithData:value2 byteOrder:1];

  *buf = 0;
  v11 = 0;
  [v10 readUint16:buf];
  [v10 readUint16:&v11];
  [(PACSInterface *)self setSupportedSinkAudioContext:*buf];
  [(PACSInterface *)self setSupportedSourceAudioContext:v11];
}

- (void)handleAudioLocationsUpdateWithDirection:(BOOL)direction
{
  directionCopy = direction;
  if (direction)
  {
    [(PACSInterface *)self sinkAudioLocationsCharacteristics];
  }

  else
  {
    [(PACSInterface *)self sourceAudioLocationsCharacteristics];
  }
  v5 = ;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    value = [v5 value];
    v9 = [value description];
    v10 = v9;
    v11 = @"Source";
    if (directionCopy)
    {
      v11 = @"Sink";
    }

    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Supported audio Locations update: %@ for %@", &v14, 0x16u);
  }

  value2 = [v5 value];
  v13 = [DataInputStream inputStreamWithData:value2 byteOrder:1];

  v14 = 0;
  [v13 readUint32:&v14];
  if (directionCopy)
  {
    [(PACSInterface *)self setSinkLocationMask:v14];
  }

  else
  {
    [(PACSInterface *)self setSourceLocationMask:v14];
  }

  [(PACSInterface *)self checkAllAttributesReady];
}

- (unsigned)getAudioLocationMask:(BOOL)mask
{
  if (mask)
  {
    return [(PACSInterface *)self sinkLocationMask];
  }

  else
  {
    return [(PACSInterface *)self sourceLocationMask];
  }
}

- (unsigned)getSupportedAudioChannelCountMask:(BOOL)mask
{
  if (mask)
  {
    return [(PACSInterface *)self sinkSupportedAudioChanCount];
  }

  else
  {
    return [(PACSInterface *)self sourceSupportedAudioChanCount];
  }
}

- (unsigned)getNumOfChanLocSet:(BOOL)set
{
  if (set)
  {
    sinkLocationMask = [(PACSInterface *)self sinkLocationMask];
  }

  else
  {
    sinkLocationMask = [(PACSInterface *)self sourceLocationMask];
  }

  return [(PACSInterface *)self determineChannelCount:sinkLocationMask];
}

- (unsigned)getAvailableAudioContexts:(BOOL)contexts
{
  if (contexts)
  {
    return [(PACSInterface *)self availableSinkAudioContext];
  }

  else
  {
    return [(PACSInterface *)self availableSourceAudioContext];
  }
}

- (unsigned)getSupportedAudioContexts:(BOOL)contexts
{
  if (contexts)
  {
    return [(PACSInterface *)self supportedSinkAudioContext];
  }

  else
  {
    return [(PACSInterface *)self supportedSourceAudioContext];
  }
}

- (unsigned)codecConfigSupportedWithCodecID:(unint64_t)d withCodecConfig:(unsigned __int8)config withDirection:(BOOL)direction
{
  configCopy = config;
  if (direction)
  {
    v7 = &OBJC_IVAR___PACSInterface__sinkPacRecordSet;
  }

  else
  {
    v7 = &OBJC_IVAR___PACSInterface__sourcePacRecordSet;
  }

  v8 = *(&self->super.super.isa + *v7);
  v9 = v8;
  if (configCopy <= 0xF)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      v15 = &unk_100070050 + 6 * configCopy;
      v10 = 9;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ([v17 codecID] == d && objc_msgSend(v17, "codecID") == 6)
          {
            v18 = v15[1] - 1;
            if (([v17 supportedSamplingFreq] >> v18))
            {
              v19 = v15[2];
              if (([v17 supportedFrameDurations] >> v19))
              {
                v20 = *(v15 + 2);
                if (v20 >= [v17 supportedMinOctetsPerCodecFrame] && v20 <= objc_msgSend(v17, "supportedMaxOctetsPerCodecFrame"))
                {
                  v10 = 0;
                  goto LABEL_25;
                }

                v10 = 6;
              }

              else
              {
                v10 = 5;
              }
            }

            else
            {
              v10 = 4;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 9;
    }

LABEL_25:
  }

  else
  {
    v10 = 10;
  }

  return v10;
}

- (unsigned)determineChannelCount:(unsigned int)count
{
  v3.i32[0] = count;
  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  return v4.i32[0];
}

- (unsigned)determineHighestChanCountSupport:(unsigned __int8)support
{
  v3 = 8 - __clz(support << 24);
  if (!support)
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)createCodecConfigList:(BOOL)list
{
  listCopy = list;
  if (list)
  {
    v4 = &OBJC_IVAR___PACSInterface__sinkPacRecordSet;
  }

  else
  {
    v4 = &OBJC_IVAR___PACSInterface__sourcePacRecordSet;
  }

  v5 = *(&self->super.super.isa + *v4);
  if (list)
  {
    v6 = &OBJC_IVAR___PACSInterface__sinkCodecConfigArray;
  }

  else
  {
    v6 = &OBJC_IVAR___PACSInterface__sourceCodecConfigArray;
  }

  v7 = v5;
  v8 = *(&self->super.super.isa + *v6);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 3;
    v24 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        supportedSamplingFreq = [v13 supportedSamplingFreq];
        if (supportedSamplingFreq)
        {
          v15 = supportedSamplingFreq;
          do
          {
            if (v15)
            {
              v15 &= 0xFFFEu;
              v11 = 1;
            }

            else if ((v15 & 4) != 0)
            {
              v15 &= 0xFFFAu;
              v11 = 3;
            }

            else if ((v15 & 0x10) != 0)
            {
              v15 &= 0xFFEAu;
              v11 = 5;
            }

            else if ((v15 & 0x20) != 0)
            {
              v15 &= 0xFFCAu;
              v11 = 7;
            }

            else if ((v15 & 0x40) != 0)
            {
              v15 &= 0xFF8Au;
              v11 = 9;
            }

            else if ((v15 & 0x80) != 0)
            {
              v15 &= 0xFF0Au;
              v11 = 11;
            }

            else
            {
              if ((v15 & 2) != 0)
              {
                v15 &= 0xFF08u;
                continue;
              }

              if ((v15 & 8) != 0)
              {
                v15 &= 0xFF00u;
                continue;
              }

              if ((v15 & 0x100) != 0)
              {
                v15 &= 0xFE00u;
                continue;
              }

              if ((v15 & 0x200) != 0)
              {
                v15 &= 0xFC00u;
                continue;
              }

              if ((v15 & 0x400) != 0)
              {
                v15 &= 0xF800u;
                continue;
              }

              if ((v15 & 0x800) != 0)
              {
                v15 &= 0xF000u;
                continue;
              }

              if ((v15 & 0x1000) != 0)
              {
                v15 &= 0xE000u;
                continue;
              }

              v16 = qword_1000A9FE0;
              if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
              {
                sub_10005BAC0(&v25, v26, v16);
              }
            }

            v17 = [NSNumber numberWithInt:v11];
            [v8 addObject:v17];
          }

          while (v15);
        }

        codecIDArray = [(PACSInterface *)self codecIDArray];
        v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v13 codecID]);
        [codecIDArray addObject:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v10);
  }

  v20 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"Source";
    if (listCopy)
    {
      v21 = @"Sink";
    }

    *buf = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Created Codec Config List for %@. ID List: %@", buf, 0x16u);
  }

  [(PACSInterface *)self checkAllAttributesReady];
}

- (void)checkAllAttributesReady
{
  if ([(PACSInterface *)self isSinkPresent])
  {
    sinkCodecConfigArray = [(PACSInterface *)self sinkCodecConfigArray];
    if ([sinkCodecConfigArray count])
    {
      sinkLocationMask = [(PACSInterface *)self sinkLocationMask];

      if (sinkLocationMask)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v9 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 0;
    v10 = "Sink is Present, but not all characteristics found yet";
    v11 = &v14;
    goto LABEL_16;
  }

LABEL_4:
  if ([(PACSInterface *)self isSourcePresent])
  {
    sourceCodecConfigArray = [(PACSInterface *)self sourceCodecConfigArray];
    if ([sourceCodecConfigArray count])
    {
      sourceLocationMask = [(PACSInterface *)self sourceLocationMask];

      if (sourceLocationMask)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v9 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v10 = "Source is Present, but not all characteristics found yet";
    v11 = buf;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    return;
  }

LABEL_7:
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Signaling Device Is Ready", v12, 2u);
  }

  recordSemaphore = [(PACSInterface *)self recordSemaphore];
  dispatch_semaphore_signal(recordSemaphore);
}

- (void)sendDeviceAttributes
{
  v20 = +[NSMutableDictionary dictionary];
  sinkCodecConfigArray = [(PACSInterface *)self sinkCodecConfigArray];
  v4 = [sinkCodecConfigArray count];

  if (v4)
  {
    sinkCodecConfigArray2 = [(PACSInterface *)self sinkCodecConfigArray];
    [v20 setValue:sinkCodecConfigArray2 forKey:@"kSinkCodecConfigArray"];
  }

  sourceCodecConfigArray = [(PACSInterface *)self sourceCodecConfigArray];
  v7 = [sourceCodecConfigArray count];

  if (v7)
  {
    sourceCodecConfigArray2 = [(PACSInterface *)self sourceCodecConfigArray];
    [v20 setValue:sourceCodecConfigArray2 forKey:@"kSourceCodecConfigArray"];
  }

  if ([(PACSInterface *)self sinkLocationMask])
  {
    sinkPACCharacteristic = [(PACSInterface *)self sinkPACCharacteristic];
    v10 = [sinkPACCharacteristic count];

    if (v10)
    {
      v11 = [NSNumber numberWithUnsignedInt:[(PACSInterface *)self sinkLocationMask]];
      [v20 setValue:v11 forKey:@"kSinkAudioLocations"];
    }
  }

  if ([(PACSInterface *)self sourceLocationMask])
  {
    sourcePACCharacteristic = [(PACSInterface *)self sourcePACCharacteristic];
    v13 = [sourcePACCharacteristic count];

    if (v13)
    {
      v14 = [NSNumber numberWithUnsignedInt:[(PACSInterface *)self sourceLocationMask]];
      [v20 setValue:v14 forKey:@"kSourceAudioLocations"];
    }
  }

  codecIDArray = [(PACSInterface *)self codecIDArray];
  v16 = [codecIDArray count];

  if (v16)
  {
    codecIDArray2 = [(PACSInterface *)self codecIDArray];
    allObjects = [codecIDArray2 allObjects];
    [v20 setValue:allObjects forKey:@"kCodecIDArray"];
  }

  serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];
  (serviceEventHandler)[2](serviceEventHandler, 26, v20);
}

- (void)readSinkAudioLocations
{
  sinkAudioLocationsCharacteristics = [(PACSInterface *)self sinkAudioLocationsCharacteristics];

  if (sinkAudioLocationsCharacteristics)
  {
    peripheral = [(ServiceInterface *)self peripheral];
    sinkAudioLocationsCharacteristics2 = [(PACSInterface *)self sinkAudioLocationsCharacteristics];
    [peripheral readValueForCharacteristic:sinkAudioLocationsCharacteristics2];
  }
}

- (void)readSourceAudioLocations
{
  sourceAudioLocationsCharacteristics = [(PACSInterface *)self sourceAudioLocationsCharacteristics];

  if (sourceAudioLocationsCharacteristics)
  {
    peripheral = [(ServiceInterface *)self peripheral];
    sourceAudioLocationsCharacteristics2 = [(PACSInterface *)self sourceAudioLocationsCharacteristics];
    [peripheral readValueForCharacteristic:sourceAudioLocationsCharacteristics2];
  }
}

- (void)writeSinkAudioLocations
{
  sinkAudioLocationsCharacteristics = [(PACSInterface *)self sinkAudioLocationsCharacteristics];

  if (sinkAudioLocationsCharacteristics)
  {
    v8 = [DataOutputStream outputStreamWithByteOrder:1];
    [v8 writeUint32:0];
    data = [v8 data];
    v5 = [data mutableCopy];

    peripheral = [(ServiceInterface *)self peripheral];
    sinkAudioLocationsCharacteristics2 = [(PACSInterface *)self sinkAudioLocationsCharacteristics];
    [peripheral writeValue:v5 forCharacteristic:sinkAudioLocationsCharacteristics2 type:0];
  }
}

- (void)writeSourceAudioLocations
{
  sourceAudioLocationsCharacteristics = [(PACSInterface *)self sourceAudioLocationsCharacteristics];

  if (sourceAudioLocationsCharacteristics)
  {
    v8 = [DataOutputStream outputStreamWithByteOrder:1];
    [v8 writeUint32:0];
    data = [v8 data];
    v5 = [data mutableCopy];

    peripheral = [(ServiceInterface *)self peripheral];
    sourceAudioLocationsCharacteristics2 = [(PACSInterface *)self sourceAudioLocationsCharacteristics];
    [peripheral writeValue:v5 forCharacteristic:sourceAudioLocationsCharacteristics2 type:0];
  }
}

- (void)readAvailableContexts
{
  availableContextCharacteristic = [(PACSInterface *)self availableContextCharacteristic];

  if (availableContextCharacteristic)
  {
    peripheral = [(ServiceInterface *)self peripheral];
    availableContextCharacteristic2 = [(PACSInterface *)self availableContextCharacteristic];
    [peripheral readValueForCharacteristic:availableContextCharacteristic2];
  }
}

- (void)readSupportedContexts
{
  supportedContextCharacteristic = [(PACSInterface *)self supportedContextCharacteristic];

  if (supportedContextCharacteristic)
  {
    peripheral = [(ServiceInterface *)self peripheral];
    supportedContextCharacteristic2 = [(PACSInterface *)self supportedContextCharacteristic];
    [peripheral readValueForCharacteristic:supportedContextCharacteristic2];
  }
}

@end