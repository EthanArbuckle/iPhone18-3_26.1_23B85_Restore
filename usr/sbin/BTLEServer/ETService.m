@interface ETService
- (ETService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)dateWithElapsedTimeData:(id)a3;
- (id)getDescriptionForTimeSyncSourceType:(unsigned __int8)a3;
- (void)extractTime;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation ETService

- (ETService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8.receiver = self;
  v8.super_class = ETService;
  v5 = [(ClientService *)&v8 initWithManager:a3 peripheral:a4 service:a5];
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

  v5 = [(ClientService *)self peripheral];
  v6 = [(ClientService *)self service];
  [v5 discoverCharacteristics:v4 forService:v6];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = ETService;
  [(ClientService *)&v2 stop];
}

- (id)dateWithElapsedTimeData:(id)a3
{
  v4 = a3;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v5 = [DataInputStream inputStreamWithData:v4 byteOrder:1];
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
        v29 = [(ClientService *)self peripheral];
        v30 = [v29 name];
        v31 = self->_lastTimeSyncFlags;
        *buf = 141558787;
        v36 = 1752392040;
        v37 = 2113;
        v38 = v30;
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
      v20 = [(ClientService *)self peripheral];
      v21 = [v20 name];
      lastTimeSyncTimeValue = self->_lastTimeSyncTimeValue;
      v23 = v33;
      lastTimeSyncTimestamp = self->_lastTimeSyncTimestamp;
      v25 = [(ETService *)self getDescriptionForTimeSyncSourceType:HIBYTE(v32)];
      *buf = 141559811;
      v36 = 1752392040;
      v37 = 2113;
      v38 = v21;
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
    v11 = [(ClientService *)self peripheral];
    v12 = [v11 name];
    v13 = self->_lastTimeSyncTimeValue;
    v14 = v33;
    v15 = self->_lastTimeSyncTimestamp;
    v16 = [(ETService *)self getDescriptionForTimeSyncSourceType:HIBYTE(v32)];
    *buf = 141559811;
    v36 = 1752392040;
    v37 = 2113;
    v38 = v12;
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

- (id)getDescriptionForTimeSyncSourceType:(unsigned __int8)a3
{
  if (a3 < 8u)
  {
    return off_1000BDC20[a3];
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

  v5 = [(ETService *)self currentElapsedTimeCharacteristic];
  v6 = [v5 value];
  v7 = [DataInputStream inputStreamWithData:v6 byteOrder:1];

  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(ClientService *)self peripheral];
    v11 = [v10 name];
    *buf = 141558531;
    v36 = 1752392040;
    v37 = 2113;
    v38 = v11;
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
      v14 = [(ClientService *)self peripheral];
      v15 = [v14 name];
      *buf = 141558531;
      v36 = 1752392040;
      v37 = 2113;
      v38 = v15;
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
          v18 = [(ClientService *)self peripheral];
          v19 = [v18 name];
          lastTimeSyncTimeValue = self->_lastTimeSyncTimeValue;
          v21 = self->_lastTimeSyncTimestamp;
          v22 = [(ETService *)self getDescriptionForTimeSyncSourceType:HIBYTE(v32)];
          *buf = 141559299;
          v36 = 1752392040;
          v37 = 2113;
          v38 = v19;
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
    v23 = [(ETService *)self currentElapsedTimeCharacteristic];
    [v23 properties];
  }

  if ([v7 readUint8:&v31])
  {
    self->_lastTimeSyncClockCapability = v31;
    v24 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = [(ClientService *)self peripheral];
      v27 = [v26 name];
      v28 = v27;
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

      v38 = v27;
      v39 = 2080;
      v40 = v29;
      v41 = 2080;
      v42 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ETS for peripheral %{private, mask.hash}@: clockAppliesDSTRules %s, clockManagesTZChanges %s", buf, 0x2Au);
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000750BC(v10);
    }
  }

  else
  {
    v22 = v8;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v8 characteristics];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [(ETService *)self currentElapsedTimeCharacteristic];
          if (v18)
          {
          }

          else
          {
            v19 = [v17 UUID];
            v20 = [CBUUID UUIDWithString:v15];
            v21 = [v19 isEqual:v20];

            if (v21)
            {
              [(ETService *)self setCurrentElapsedTimeCharacteristic:v17];
              [v23 readValueForCharacteristic:v17];
              if (([v17 properties] & 0x10) != 0 || (objc_msgSend(v17, "properties") & 0x20) != 0)
              {
                [v23 setNotifyValue:1 forCharacteristic:v17];
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    [(ClientService *)self notifyDidStart];
    v9 = 0;
    v8 = v22;
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100075174(v11);
    }
  }

  else
  {
    v12 = [(ETService *)self currentElapsedTimeCharacteristic];

    if (v12 == v9)
    {
      [(ETService *)self extractTime];
    }
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007522C(v10);
    }
  }
}

@end