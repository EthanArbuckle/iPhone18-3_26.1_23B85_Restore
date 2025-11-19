@interface BatteryClientService
- (BOOL)_validData:(id)a3;
- (BOOL)isAccessoryCategoryPencil:(id)a3;
- (BOOL)updatePowerSource:(id)a3;
- (BatteryClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)batteryPowerStateString:(unsigned __int8)a3;
- (unsigned)characteristicFormatFrom:(id)a3;
- (void)_handleValueForDescriptor:(id)a3;
- (void)_setBatteryLevelCharacteristicFormatFrom:(id)a3;
- (void)extractBatteryLevel;
- (void)extractBatteryLevelStatus;
- (void)extractBatteryPowerState;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation BatteryClientService

- (BatteryClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v7.receiver = self;
  v7.super_class = BatteryClientService;
  v5 = [(ClientService *)&v7 initWithManager:a3 peripheral:a4 service:a5];
  [(ClientService *)v5 setIsPrimary:1];
  return v5;
}

- (void)start
{
  v32.receiver = self;
  v32.super_class = BatteryClientService;
  [(ClientService *)&v32 start];
  v3 = [CBUUID UUIDWithString:CBUUIDBatteryLevelCharacteristicString];
  v38[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDBatteryLevelStatusCharacteristicString];
  v38[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDBatteryPowerStateCharacteristicString];
  v38[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDBatteryLevelMainCharacteristicString];
  v38[3] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDBatteryLevelLeftCharacteristicString];
  v38[4] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDBatteryLevelRightCharacteristicString];
  v38[5] = v8;
  v9 = [NSArray arrayWithObjects:v38 count:6];

  if (_os_feature_enabled_impl())
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(ClientService *)self peripheral];
      v13 = [v12 name];
      v14 = [(ClientService *)self peripheral];
      v15 = [v14 services];
      *buf = 138412546;
      v35 = v13;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BatteryClientService started for '%@' with services: %@", buf, 0x16u);
    }

    v16 = [CBUUID UUIDWithString:CBUUIDBatteryServiceString];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [(ClientService *)self peripheral];
    v18 = [v17 services];

    v19 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v29;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = [*(*(&v28 + 1) + 8 * i) UUID];
          v25 = [v24 isEqual:v16];

          v21 += v25;
          if (v21 >= 2u)
          {
            self->_requireDescriptor = 1;
            goto LABEL_14;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v26 = [(ClientService *)self peripheral];
  v27 = [(ClientService *)self service];
  [v26 discoverCharacteristics:v9 forService:v27];
}

- (void)stop
{
  if ([(BatteryClientService *)self powerSourceID])
  {
    [(BatteryClientService *)self powerSourceID];
    IOPSReleasePowerSource();
  }

  v3.receiver = self;
  v3.super_class = BatteryClientService;
  [(ClientService *)&v3 stop];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (!a5)
  {
    v43 = v8;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [a4 characteristics];
    v10 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v47 = *v49;
      v45 = CBUUIDBatteryLevelStatusCharacteristicString;
      v46 = CBUUIDBatteryLevelCharacteristicString;
      v12 = CBUUIDBatteryPowerStateCharacteristicString;
      do
      {
        v13 = 0;
        do
        {
          if (*v49 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v48 + 1) + 8 * v13);
          v15 = [v14 UUID];
          v16 = [v15 UUIDString];
          v17 = [v16 isEqualToString:v46];

          v18 = [v14 UUID];
          v19 = [v18 UUIDString];
          v20 = [v19 isEqualToString:v45];

          v21 = [v14 UUID];
          v22 = [v21 UUIDString];
          v23 = [v22 isEqualToString:v12];

          if ((v17 & 1) != 0 || (v20 & 1) != 0 || v23)
          {
            v24 = [(BatteryClientService *)self batteryLevelCharacteristic];
            v25 = (v24 == 0) & v17;

            if (v25 == 1)
            {
              [(BatteryClientService *)self setBatteryLevelCharacteristic:v14];
              v26 = [(BatteryClientService *)self batteryLevelCharacteristic];
              [v43 setNotifyValue:1 forCharacteristic:v26];

              requireDescriptor = self->_requireDescriptor;
              v28 = [(BatteryClientService *)self batteryLevelCharacteristic];
              if (requireDescriptor)
              {
                [v43 discoverDescriptorsForCharacteristic:v28];
              }

              else
              {
                v34 = [(BatteryClientService *)self _validData:v28];

                if (v34)
                {
                  [(BatteryClientService *)self extractBatteryLevel];
                }
              }
            }

            else
            {
              v29 = [(BatteryClientService *)self batteryLevelStatusCharacteristic];
              v30 = (v29 == 0) & v20;

              if (v30 == 1)
              {
                [(BatteryClientService *)self setBatteryLevelStatusCharacteristic:v14];
                v31 = [(ClientService *)self peripheral];
                v32 = [(BatteryClientService *)self batteryLevelStatusCharacteristic];
                [v31 setNotifyValue:1 forCharacteristic:v32];

                v33 = [(BatteryClientService *)self batteryLevelStatusCharacteristic];
                LODWORD(v32) = [(BatteryClientService *)self _validData:v33];

                if (v32)
                {
                  [(BatteryClientService *)self extractBatteryLevelStatus];
                }
              }

              else
              {
                v35 = [(BatteryClientService *)self batteryPowerStateCharacteristic];
                v36 = (v35 == 0) & v23;

                if (v36 == 1)
                {
                  [(BatteryClientService *)self setBatteryPowerStateCharacteristic:v14];
                  v37 = [(ClientService *)self peripheral];
                  v38 = [(BatteryClientService *)self batteryPowerStateCharacteristic];
                  [v37 setNotifyValue:1 forCharacteristic:v38];

                  v39 = [(BatteryClientService *)self batteryPowerStateCharacteristic];
                  LODWORD(v38) = [(BatteryClientService *)self _validData:v39];

                  if (v38)
                  {
                    [(BatteryClientService *)self extractBatteryPowerState];
                  }
                }
              }
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v40 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
        v11 = v40;
      }

      while (v40);
    }

    [(ClientService *)self notifyDidStart];
    v41 = [(BatteryClientService *)self batteryLevelCharacteristic];

    v9 = v43;
    if (!v41)
    {
      v42 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B4F8(v42);
      }
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = v7;
  if (a5)
  {
    goto LABEL_20;
  }

  v23 = v7;
  v9 = [v7 UUID];
  v10 = [v9 UUIDString];
  v11 = [v10 isEqualToString:CBUUIDBatteryLevelCharacteristicString];

  v12 = [v23 UUID];
  v13 = [v12 UUIDString];
  v14 = [v13 isEqualToString:CBUUIDBatteryLevelStatusCharacteristicString];

  v15 = [v23 UUID];
  v16 = [v15 UUIDString];
  v17 = [v16 isEqualToString:CBUUIDBatteryPowerStateCharacteristicString];

  v8 = v23;
  if ((v11 & 1) == 0 && (v14 & 1) == 0 && !v17)
  {
    goto LABEL_20;
  }

  v7 = [(BatteryClientService *)self _validData:v23];
  v8 = v23;
  if (!v7)
  {
    goto LABEL_20;
  }

  if (self->_retryAttemptsMap)
  {
    v18 = [v23 UUID];
    v19 = [v18 UUIDString];

    v20 = [(NSMutableDictionary *)self->_retryAttemptsMap objectForKeyedSubscript:v19];

    if (v20)
    {
      [(NSMutableDictionary *)self->_retryAttemptsMap setObject:&off_1000C3D68 forKeyedSubscript:v19];
    }

    v8 = v23;
  }

  if (v11)
  {
    [(BatteryClientService *)self setBatteryLevelCharacteristic:v8];
    if (self->_requireDescriptor && ![(BatteryClientService *)self batteryLevelCharacteristicFormat])
    {
      v21 = [(ClientService *)self peripheral];
      v22 = [(BatteryClientService *)self batteryLevelCharacteristic];
      [v21 discoverDescriptorsForCharacteristic:v22];
    }

    else
    {
      v7 = [(BatteryClientService *)self extractBatteryLevel];
    }
  }

  else if (v14)
  {
    [(BatteryClientService *)self setBatteryLevelStatusCharacteristic:v23];
    v7 = [(BatteryClientService *)self extractBatteryLevelStatus];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    [(BatteryClientService *)self setBatteryPowerStateCharacteristic:v23];
    v7 = [(BatteryClientService *)self extractBatteryPowerState];
  }

  v8 = v23;
LABEL_20:

  _objc_release_x1(v7, v8);
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  if (!a5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [a4 descriptors];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(BatteryClientService *)self _handleValueForDescriptor:*(*(&v11 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  if (!a5)
  {
    [(BatteryClientService *)self _handleValueForDescriptor:a4];
  }
}

- (unsigned)characteristicFormatFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 value];
    if ([v6 length] < 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = *([v6 bytes] + 5);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)extractBatteryLevel
{
  v3 = [(BatteryClientService *)self batteryLevelCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4];

  v31 = 0;
  if ([v5 readUint8:&v31])
  {
    v6 = [(ClientService *)self peripheral];
    v7 = [v6 hasTag:@"A3085"];
    v8 = v31;

    if (v7 && v8 == 255)
    {
      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B63C(v9);
      }
    }

    else
    {
      v11 = [(BatteryClientService *)self powerSourceDetails];
      v12 = [v11 objectForKeyedSubscript:@"Current Capacity"];

      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = [(BatteryClientService *)self powerSourceDetails];
      v14 = [v13 objectForKeyedSubscript:@"Current Capacity"];

      LODWORD(v13) = [v14 intValue];
      v15 = v31;

      if (v13 != v15)
      {
LABEL_11:
        v16 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [(ClientService *)self peripheral];
          v19 = [v18 name];
          v20 = [(BatteryClientService *)self batteryLevelCharacteristicFormat];
          *buf = 138412802;
          v33 = v19;
          v34 = 1024;
          v35 = v20;
          v36 = 1024;
          v37 = v31;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Battery level for peripheral %@ (0x%04X): %u%%", buf, 0x18u);
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100064D40;
        v29[3] = &unk_1000BE640;
        v29[4] = self;
        v30 = v31;
        v21 = [(BatteryClientService *)self updatePowerSource:v29];
        if (_os_feature_enabled_impl())
        {
          if ((v21 & 1) == 0)
          {
            if (!self->_requireDescriptor)
            {
              goto LABEL_17;
            }

            v22 = [(BatteryClientService *)self powerSourceDetails];
            v23 = [v22 objectForKeyedSubscript:@"Part Identifier"];

            v24 = [(BatteryClientService *)self powerSourceDetails];
            v25 = [v24 objectForKeyedSubscript:@"Accessory Identifier"];

            v26 = [(BatteryClientService *)self powerSourceDetails];
            [v26 setObject:v25 forKeyedSubscript:@"Group Identifier"];

            if (v23)
            {
LABEL_17:
              v27 = +[BTLEXpcServer instance];
              v28 = [(BatteryClientService *)self powerSourceDetails];
              [v27 sendBatteryServiceNotification:v28];
            }
          }
        }
      }
    }
  }

  else
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007B53C(v10, self);
    }
  }
}

- (void)extractBatteryPowerState
{
  v3 = [(BatteryClientService *)self batteryPowerStateCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4];

  v13 = 0;
  if ([v5 readUint8:&v13])
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(ClientService *)self peripheral];
      v9 = [v8 name];
      v10 = [(BatteryClientService *)self batteryPowerStateString:v13];
      *buf = 138412546;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Battery power state for peripheral %@: %{public}@", buf, 0x16u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100065124;
    v11[3] = &unk_1000BE640;
    v11[4] = self;
    v12 = v13;
    [(BatteryClientService *)self updatePowerSource:v11];
  }
}

- (void)_handleValueForDescriptor:(id)a3
{
  v25 = a3;
  v4 = [v25 UUID];
  v5 = [v4 UUIDString];
  v6 = [v5 isEqualToString:CBUUIDCharacteristicFormatString];

  if (v6)
  {
    v7 = [v25 characteristic];
    v8 = [v7 UUID];
    v9 = [v8 UUIDString];
    v10 = [v9 isEqualToString:CBUUIDBatteryLevelCharacteristicString];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v25 characteristic];
  v12 = [v11 UUID];
  v13 = [v12 UUIDString];
  v14 = [v13 isEqualToString:CBUUIDBatteryLevelStatusCharacteristicString];

  v15 = [v25 characteristic];
  v16 = [v15 UUID];
  v17 = [v16 UUIDString];
  v18 = [v17 isEqualToString:CBUUIDBatteryPowerStateCharacteristicString];

  if ((v10 & 1) != 0 || (v14 & 1) != 0 || v18)
  {
    if ([(BatteryClientService *)self _validData:v25])
    {
      v19 = [v25 characteristic];
      v20 = [(BatteryClientService *)self _validData:v19];

      if (v20)
      {
        if (self->_retryAttemptsMap)
        {
          v21 = [v25 characteristic];
          v22 = [v21 UUID];
          v23 = [v22 UUIDString];

          v24 = [(NSMutableDictionary *)self->_retryAttemptsMap objectForKeyedSubscript:v23];

          if (v24)
          {
            [(NSMutableDictionary *)self->_retryAttemptsMap setObject:&off_1000C3D68 forKeyedSubscript:v23];
          }
        }

        if (v10)
        {
          [(BatteryClientService *)self _setBatteryLevelCharacteristicFormatFrom:v25];
          [(BatteryClientService *)self extractBatteryLevel];
        }

        else if (v14)
        {
          [(BatteryClientService *)self extractBatteryLevelStatus];
        }

        else if (v18)
        {
          [(BatteryClientService *)self extractBatteryPowerState];
        }
      }
    }
  }
}

- (BOOL)_validData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v64 = self;
    v5 = v4;
    v6 = [v5 UUID];
    v7 = [v6 UUIDString];
    v63 = CBUUIDBatteryLevelCharacteristicString;
    v8 = [v7 isEqualToString:?];

    v9 = [v5 UUID];
    v10 = [v9 UUIDString];
    v11 = CBUUIDBatteryLevelStatusCharacteristicString;
    v12 = [v10 isEqualToString:CBUUIDBatteryLevelStatusCharacteristicString];

    v13 = [v5 UUID];
    v14 = [v13 UUIDString];
    v15 = CBUUIDBatteryPowerStateCharacteristicString;
    v16 = [v14 isEqualToString:CBUUIDBatteryPowerStateCharacteristicString];

    v17 = v8 | v12;
    if (((v8 | v12) & 1) == 0 && (v16 & 1) == 0)
    {
      v18 = 0;
LABEL_15:
      v19 = 0;
      goto LABEL_64;
    }

    v19 = v5 == 0;
    if (v5)
    {
      v20 = [v5 value];
      if (v20)
      {
        v21 = v20;
        v62 = v4;
        v22 = [v5 value];
        v61 = [v22 isZeroValue];

        if ((v61 & 1) == 0)
        {
          v18 = 0;
          v19 = 1;
          v4 = v62;
          goto LABEL_64;
        }

        v4 = v62;
        if ((v8 & 1) == 0)
        {
LABEL_21:
          v18 = 0;
          if (v12)
          {
            v15 = v11;
          }

          else if (((v17 ^ 1 | v16) & 1) == 0)
          {
            goto LABEL_15;
          }

LABEL_36:
          v35 = v4;
          v36 = v15;
          if (!v36)
          {
            v19 = 0;
LABEL_63:
            v4 = v35;
            goto LABEL_64;
          }

          v37 = v36;
          retryAttemptsMap = v64->_retryAttemptsMap;
          if (!retryAttemptsMap)
          {
            v39 = objc_alloc_init(NSMutableDictionary);
            v40 = v64->_retryAttemptsMap;
            v64->_retryAttemptsMap = v39;

            retryAttemptsMap = v64->_retryAttemptsMap;
          }

          v41 = [(NSMutableDictionary *)retryAttemptsMap objectForKeyedSubscript:v37];
          if (v41)
          {
            v42 = [(NSMutableDictionary *)v64->_retryAttemptsMap objectForKeyedSubscript:v37];
          }

          else
          {
            v42 = &off_1000C3D68;
          }

          if ([v42 intValue] <= 1)
          {
            v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v42 intValue] + 1);

            [(NSMutableDictionary *)v64->_retryAttemptsMap setObject:v43 forKeyedSubscript:v37];
            if (v19)
            {
              if (!v18)
              {
LABEL_56:
                v54 = qword_1000DDBC8;
                if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = v54;
                  v56 = [(ClientService *)v64 peripheral];
                  v57 = [v56 name];
                  v58 = v64->_retryAttemptsMap;
                  *buf = 138412802;
                  v66 = v57;
                  v67 = 1024;
                  LODWORD(v68[0]) = 2;
                  WORD2(v68[0]) = 2112;
                  *(v68 + 6) = v58;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@ retry attempts (limit %d) %@", buf, 0x1Cu);
                }

                v19 = 0;
                goto LABEL_62;
              }

              v44 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
              {
                v45 = v44;
                v46 = [(ClientService *)v64 peripheral];
                v47 = [v46 name];
                *buf = 138412546;
                v66 = v47;
                v67 = 2112;
                v68[0] = v18;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "## Invalid value received from %@, trying again: %@", buf, 0x16u);
              }

              v48 = [(ClientService *)v64 peripheral];
              [v48 readValueForDescriptor:v18];
            }

            else
            {
              v50 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
              {
                v51 = v50;
                v52 = [(ClientService *)v64 peripheral];
                v53 = [v52 name];
                *buf = 138412546;
                v66 = v53;
                v67 = 2112;
                v68[0] = v5;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "## Invalid value received from %@, trying again: %@", buf, 0x16u);
              }

              v48 = [(ClientService *)v64 peripheral];
              [v48 readValueForCharacteristic:v5];
            }

            goto LABEL_56;
          }

          if (v19)
          {
            if (!v18)
            {
              v19 = 0;
              goto LABEL_61;
            }

            v49 = v18;
          }

          else
          {
            v49 = v5;
          }

          v59 = [v49 value];
          v19 = v59 != 0;

LABEL_61:
          v43 = v42;
LABEL_62:

          goto LABEL_63;
        }
      }

      else if ((v8 & 1) == 0)
      {
        goto LABEL_21;
      }

      v18 = 0;
      v19 = 0;
    }

    else
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_21;
      }

      v18 = 0;
      v5 = 0;
      v19 = 1;
    }

    v15 = v63;
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (self->_requireDescriptor && ![(BatteryClientService *)self batteryLevelCharacteristicFormat])
  {
    v64 = self;
    v23 = v4;
    v18 = v4;
    v24 = [v18 UUID];
    v25 = [v24 UUIDString];
    v26 = [v25 isEqualToString:CBUUIDCharacteristicFormatString];

    if (!v26)
    {
      goto LABEL_33;
    }

    v27 = [v18 characteristic];
    v28 = [v27 UUID];
    v29 = [v28 UUIDString];
    v15 = CBUUIDBatteryLevelCharacteristicString;
    v30 = [v29 isEqualToString:CBUUIDBatteryLevelCharacteristicString];

    if ((v30 & 1) == 0)
    {
LABEL_33:
      v5 = 0;
      v19 = 0;
      v4 = v23;
      goto LABEL_64;
    }

    v4 = v23;
    if (v18)
    {
      v5 = [v18 value];
      if (!v5)
      {
LABEL_35:
        v19 = 1;
        goto LABEL_36;
      }

      v31 = [v18 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v33 = [v18 value];
        v34 = [v33 isZeroValue];

        v5 = 0;
        v19 = 1;
        if ((v34 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_36;
      }
    }

    v5 = 0;
    goto LABEL_35;
  }

  v18 = 0;
  v5 = 0;
  v19 = 1;
LABEL_64:

  return v19;
}

- (void)_setBatteryLevelCharacteristicFormatFrom:(id)a3
{
  v8 = a3;
  v4 = [v8 UUID];
  v5 = [v4 UUIDString];
  v6 = [v5 isEqualToString:CBUUIDCharacteristicFormatString];

  if (v6)
  {
    v7 = [(BatteryClientService *)self characteristicFormatFrom:v8];
    if (![(BatteryClientService *)self batteryLevelCharacteristicFormat])
    {
      if (v7)
      {
        [(BatteryClientService *)self setBatteryLevelCharacteristicFormat:v7];
      }
    }
  }
}

- (BOOL)updatePowerSource:(id)a3
{
  v4 = a3;
  v5 = [(BatteryClientService *)self powerSourceDetails];

  if (!v5)
  {
    v6 = [NSMutableDictionary alloc];
    v37[0] = @"Type";
    v37[1] = @"Transport Type";
    v38[0] = @"Accessory Source";
    v38[1] = @"Bluetooth LE";
    v38[2] = @"Battery Power";
    v37[2] = @"Power Source State";
    v37[3] = @"Accessory Identifier";
    v7 = [(ClientService *)self peripheral];
    v8 = [v7 identifier];
    v9 = [v8 UUIDString];
    v38[3] = v9;
    v38[4] = &off_1000C3D80;
    v37[4] = @"Max Capacity";
    v37[5] = @"Low Warn Level";
    v38[5] = &off_1000C3D98;
    v10 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:6];
    v11 = [v6 initWithDictionary:v10];
    [(BatteryClientService *)self setPowerSourceDetails:v11];

    v12 = [(ClientService *)self peripheral];
    v13 = [v12 name];

    if (v13)
    {
      v14 = [(ClientService *)self peripheral];
      v15 = [v14 name];
      v16 = [(BatteryClientService *)self powerSourceDetails];
      [v16 setObject:v15 forKeyedSubscript:@"Name"];
    }

    v17 = [(ClientService *)self manager];
    v18 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v19 = [v17 clientServiceForUUID:v18];

    if ([v19 hasIDs])
    {
      v20 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v19 vendorIDSource]);
      v21 = [(BatteryClientService *)self powerSourceDetails];
      [v21 setObject:v20 forKeyedSubscript:@"Vendor ID Source"];

      v22 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v19 vendorID]);
      v23 = [(BatteryClientService *)self powerSourceDetails];
      [v23 setObject:v22 forKeyedSubscript:@"Vendor ID"];

      v24 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v19 productID]);
      v25 = [(BatteryClientService *)self powerSourceDetails];
      [v25 setObject:v24 forKeyedSubscript:@"Product ID"];

      if ([(BatteryClientService *)self isAccessoryCategoryPencil:v19])
      {
        v26 = [(BatteryClientService *)self powerSourceDetails];
        [v26 setObject:@"Pencil" forKeyedSubscript:@"Accessory Category"];
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if ([(BatteryClientService *)self batteryLevelCharacteristicFormat]== 269)
    {
      v27 = @"Left";
LABEL_15:
      v28 = [(BatteryClientService *)self powerSourceDetails];
      [v28 setObject:v27 forKeyedSubscript:@"Part Identifier"];

      goto LABEL_16;
    }

    if ([(BatteryClientService *)self batteryLevelCharacteristicFormat]== 270)
    {
      v27 = @"Right";
      goto LABEL_15;
    }

    if ([(BatteryClientService *)self batteryLevelCharacteristicFormat]== 262)
    {
      v27 = @"Other";
      goto LABEL_15;
    }
  }

LABEL_16:
  v4[2](v4);
  if (![(BatteryClientService *)self powerSourceID])
  {
    v29 = +[ConnectionManager instance];
    v30 = [(ClientService *)self peripheral];
    v31 = [v29 isAlwaysConnecting:v30];

    if (v31)
    {
      IOPSCreatePowerSource();
    }
  }

  v32 = [(BatteryClientService *)self powerSourceID];
  if (v32)
  {
    [(BatteryClientService *)self powerSourceID];
    v33 = [(BatteryClientService *)self powerSourceDetails];
    v34 = IOPSSetPowerSourceDetails();

    if (v34)
    {
      v35 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B680(v35, self, v34);
      }
    }
  }

  return v32 != 0;
}

- (id)batteryPowerStateString:(unsigned __int8)a3
{
  v3 = off_1000BE660[a3 & 3];
  v4 = off_1000BE680[(a3 >> 4) & 3];
  return [NSString stringWithFormat:@"%@ / %@ / %@ / %@", v3, off_1000BE6A0[(a3 >> 2) & 3], v4, off_1000BE6C0[a3 >> 6]];
}

- (BOOL)isAccessoryCategoryPencil:(id)a3
{
  v3 = a3;
  v4 = [v3 productID] == 546 || objc_msgSend(v3, "productID") == 332 || objc_msgSend(v3, "productID") == 482 || objc_msgSend(v3, "productID") == 1106;
  v5 = [v3 vendorIDSource] == 1 && objc_msgSend(v3, "vendorID") == 76 && v4;

  return v5;
}

- (void)extractBatteryLevelStatus
{
  v3 = [BatteryLevelStatus alloc];
  v4 = [(BatteryClientService *)self batteryLevelStatusCharacteristic];
  v5 = [v4 value];
  v6 = [(BatteryLevelStatus *)v3 initWithData:v5];

  if (v6)
  {
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(ClientService *)self peripheral];
      v10 = [v9 name];
      *buf = 138412802;
      v20 = v10;
      v21 = 1024;
      v22 = [(BatteryClientService *)self batteryLevelCharacteristicFormat];
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ (0x%04X): %@", buf, 0x1Cu);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100064DE4;
    v18[3] = &unk_1000BD8A8;
    v18[4] = self;
    v18[5] = v6;
    if (![(BatteryClientService *)self updatePowerSource:v18])
    {
      if (!self->_requireDescriptor)
      {
        goto LABEL_7;
      }

      v11 = [(BatteryClientService *)self powerSourceDetails];
      v12 = [v11 objectForKeyedSubscript:@"Part Identifier"];

      v13 = [(BatteryClientService *)self powerSourceDetails];
      v14 = [v13 objectForKeyedSubscript:@"Accessory Identifier"];

      v15 = [(BatteryClientService *)self powerSourceDetails];
      [v15 setObject:v14 forKeyedSubscript:@"Group Identifier"];

      if (v12)
      {
LABEL_7:
        v16 = +[BTLEXpcServer instance];
        v17 = [(BatteryClientService *)self powerSourceDetails];
        [v16 sendBatteryServiceNotification:v17];
      }
    }
  }
}

@end