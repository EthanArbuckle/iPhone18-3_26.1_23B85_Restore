@interface ETService
- (ETService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)dateWithElapsedTimeData:(id)data;
- (id)getDescriptionForTimeSyncSourceType:(unsigned __int8)type;
- (void)extractTime;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation ETService

- (ETService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v8.receiver = self;
  v8.super_class = ETService;
  v5 = [(ClientService *)&v8 initWithManager:manager peripheral:peripheral service:service];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setPriority:5];
    [(ClientService *)v6 setStartTimeout:0.0];
  }

  return v6;
}

- (void)start
{
  v7.receiver = self;
  v7.super_class = ETService;
  [(ClientService *)&v7 start];
  v3 = [CBUUID UUIDWithString:CBUUIDCurrentElapsedTimeCharacteristicString];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v4 forService:service];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = ETService;
  [(ClientService *)&v2 stop];
}

- (id)dateWithElapsedTimeData:(id)data
{
  dataCopy = data;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v5 = [DataInputStream inputStreamWithData:dataCopy byteOrder:1];
  v6 = 1.0;
  if ([v5 readUint8:&v34])
  {
    lastTimeSyncFlags = self->_lastTimeSyncFlags;
    if (lastTimeSyncFlags != v34)
    {
      v26 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v28 = v26;
        peripheral = [(ClientService *)self peripheral];
        name = [peripheral name];
        v31 = self->_lastTimeSyncFlags;
        *buf = 141558787;
        v36 = 1752392040;
        v37 = 2113;
        v38 = name;
        v39 = 1024;
        *v40 = v34;
        *&v40[4] = 1024;
        *&v40[6] = v31;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "ETS for peripheral %{private, mask.hash}@ failed: flags: %d, lastTimeSyncFlags %d", buf, 0x22u);
      }

      goto LABEL_14;
    }

    v6 = dbl_100092038[(lastTimeSyncFlags >> 2) & 3];
  }

  if (![v5 readUint48:&v33] || !objc_msgSend(v5, "readUint8:", &v32 + 1) || !objc_msgSend(v5, "readUint8:", &v32))
  {
    v18 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      peripheral2 = [(ClientService *)self peripheral];
      name2 = [peripheral2 name];
      lastTimeSyncTimeValue = self->_lastTimeSyncTimeValue;
      v23 = v33;
      lastTimeSyncTimestamp = self->_lastTimeSyncTimestamp;
      v25 = [(ETService *)self getDescriptionForTimeSyncSourceType:HIBYTE(v32)];
      *buf = 141559811;
      v36 = 1752392040;
      v37 = 2113;
      v38 = name2;
      v39 = 2048;
      *v40 = v23;
      *&v40[8] = 2048;
      v41 = lastTimeSyncTimeValue;
      v42 = 2112;
      v43 = lastTimeSyncTimestamp;
      v44 = 2048;
      v45 = 0.0;
      v46 = 2112;
      v47 = v25;
      v48 = 1024;
      v49 = v32;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "ETS Error for peripheral %{private, mask.hash}@: timeValue %llu, _lastSyncTime %llu, %@, diffInSeconds %f, timeSyncSource %@, dstOffset %d", buf, 0x4Eu);
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = v6 * (v33 - self->_lastTimeSyncTimeValue);
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    peripheral3 = [(ClientService *)self peripheral];
    name3 = [peripheral3 name];
    v13 = self->_lastTimeSyncTimeValue;
    v14 = v33;
    v15 = self->_lastTimeSyncTimestamp;
    v16 = [(ETService *)self getDescriptionForTimeSyncSourceType:HIBYTE(v32)];
    *buf = 141559811;
    v36 = 1752392040;
    v37 = 2113;
    v38 = name3;
    v39 = 2048;
    *v40 = v14;
    *&v40[8] = 2048;
    v41 = v13;
    v42 = 2112;
    v43 = v15;
    v44 = 2048;
    v45 = v8;
    v46 = 2112;
    v47 = v16;
    v48 = 1024;
    v49 = v32;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ETS for peripheral %{private, mask.hash}@: timeValue %llu, _lastSyncTime %llu, %@, diffInSeconds %f, timeSyncSource %@, dstOffset %d", buf, 0x4Eu);
  }

  v17 = [NSDate dateWithTimeInterval:self->_lastTimeSyncTimestamp sinceDate:v8];
LABEL_15:

  return v17;
}

- (id)getDescriptionForTimeSyncSourceType:(unsigned __int8)type
{
  if (type < 8u)
  {
    return off_1000BDC20[type];
  }

  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100074FFC(v4);
  }

  return @"Invalid";
}

- (void)extractTime
{
  v3 = +[NSDate date];
  lastTimeSyncTimestamp = self->_lastTimeSyncTimestamp;
  self->_lastTimeSyncTimestamp = v3;

  currentElapsedTimeCharacteristic = [(ETService *)self currentElapsedTimeCharacteristic];
  value = [currentElapsedTimeCharacteristic value];
  v7 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    *buf = 141558531;
    v36 = 1752392040;
    v37 = 2113;
    v38 = name;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ETS for peripheral %{private, mask.hash}@ data received rawDataBytes %@", buf, 0x20u);
  }

  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if ([v7 readUint8:&v34])
  {
    self->_lastTimeSyncFlags = v34;
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      peripheral2 = [(ClientService *)self peripheral];
      name2 = [peripheral2 name];
      *buf = 141558531;
      v36 = 1752392040;
      v37 = 2113;
      v38 = name2;
      v39 = 1024;
      LODWORD(v40) = v34;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ETS for peripheral %{private, mask.hash}@ data received, flags %d", buf, 0x1Cu);
    }
  }

  if ([v7 readUint48:&v33])
  {
    if ([v7 readUint8:&v32 + 1])
    {
      if ([v7 readUint8:&v32])
      {
        self->_lastTimeSyncTimeValue = v33;
        v16 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          peripheral3 = [(ClientService *)self peripheral];
          name3 = [peripheral3 name];
          lastTimeSyncTimeValue = self->_lastTimeSyncTimeValue;
          v21 = self->_lastTimeSyncTimestamp;
          v22 = [(ETService *)self getDescriptionForTimeSyncSourceType:HIBYTE(v32)];
          *buf = 141559299;
          v36 = 1752392040;
          v37 = 2113;
          v38 = name3;
          v39 = 2048;
          v40 = lastTimeSyncTimeValue;
          v41 = 2112;
          v42 = v21;
          v43 = 2112;
          v44 = v22;
          v45 = 1024;
          v46 = v32;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ETS for peripheral %{private, mask.hash}@: referenceTimeValue %llu / %@, timeSyncSource %@, dstOffset %d", buf, 0x3Au);
        }
      }
    }
  }

  if ([v7 readUint8:&v31 + 1] && (v31 & 0x100) != 0)
  {
    currentElapsedTimeCharacteristic2 = [(ETService *)self currentElapsedTimeCharacteristic];
    [currentElapsedTimeCharacteristic2 properties];
  }

  if ([v7 readUint8:&v31])
  {
    self->_lastTimeSyncClockCapability = v31;
    v24 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      peripheral4 = [(ClientService *)self peripheral];
      name4 = [peripheral4 name];
      v28 = name4;
      *buf = 141558787;
      v36 = 1752392040;
      if (v31)
      {
        v29 = "Y";
      }

      else
      {
        v29 = "N";
      }

      v37 = 2113;
      if ((v31 & 2) != 0)
      {
        v30 = "Y";
      }

      else
      {
        v30 = "N";
      }

      v38 = name4;
      v39 = 2080;
      v40 = v29;
      v41 = 2080;
      v42 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ETS for peripheral %{private, mask.hash}@: clockAppliesDSTRules %s, clockManagesTZChanges %s", buf, 0x2Au);
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000750BC(v10);
    }
  }

  else
  {
    v22 = serviceCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    characteristics = [serviceCopy characteristics];
    v12 = [characteristics countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      v15 = CBUUIDCurrentElapsedTimeCharacteristicString;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(characteristics);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          currentElapsedTimeCharacteristic = [(ETService *)self currentElapsedTimeCharacteristic];
          if (currentElapsedTimeCharacteristic)
          {
          }

          else
          {
            uUID = [v17 UUID];
            v20 = [CBUUID UUIDWithString:v15];
            v21 = [uUID isEqual:v20];

            if (v21)
            {
              [(ETService *)self setCurrentElapsedTimeCharacteristic:v17];
              [peripheralCopy readValueForCharacteristic:v17];
              if (([v17 properties] & 0x10) != 0 || (objc_msgSend(v17, "properties") & 0x20) != 0)
              {
                [peripheralCopy setNotifyValue:1 forCharacteristic:v17];
              }
            }
          }
        }

        v13 = [characteristics countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    [(ClientService *)self notifyDidStart];
    errorCopy = 0;
    serviceCopy = v22;
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100075174(v11);
    }
  }

  else
  {
    currentElapsedTimeCharacteristic = [(ETService *)self currentElapsedTimeCharacteristic];

    if (currentElapsedTimeCharacteristic == characteristicCopy)
    {
      [(ETService *)self extractTime];
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007522C(v10);
    }
  }
}

@end