@interface BatteryClientService
- (BOOL)_validData:(id)data;
- (BOOL)isAccessoryCategoryPencil:(id)pencil;
- (BOOL)updatePowerSource:(id)source;
- (BatteryClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)batteryPowerStateString:(unsigned __int8)string;
- (unsigned)characteristicFormatFrom:(id)from;
- (void)_handleValueForDescriptor:(id)descriptor;
- (void)_setBatteryLevelCharacteristicFormatFrom:(id)from;
- (void)extractBatteryLevel;
- (void)extractBatteryLevelStatus;
- (void)extractBatteryPowerState;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation BatteryClientService

- (BatteryClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v7.receiver = self;
  v7.super_class = BatteryClientService;
  v5 = [(ClientService *)&v7 initWithManager:manager peripheral:peripheral service:service];
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
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      peripheral2 = [(ClientService *)self peripheral];
      services = [peripheral2 services];
      *buf = 138412546;
      v35 = name;
      v36 = 2112;
      v37 = services;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BatteryClientService started for '%@' with services: %@", buf, 0x16u);
    }

    v16 = [CBUUID UUIDWithString:CBUUIDBatteryServiceString];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    peripheral3 = [(ClientService *)self peripheral];
    services2 = [peripheral3 services];

    v19 = [services2 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(services2);
          }

          uUID = [*(*(&v28 + 1) + 8 * i) UUID];
          v25 = [uUID isEqual:v16];

          v21 += v25;
          if (v21 >= 2u)
          {
            self->_requireDescriptor = 1;
            goto LABEL_14;
          }
        }

        v20 = [services2 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  peripheral4 = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral4 discoverCharacteristics:v9 forService:service];
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

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  v9 = peripheralCopy;
  if (!error)
  {
    v43 = peripheralCopy;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [service characteristics];
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
          uUID = [v14 UUID];
          uUIDString = [uUID UUIDString];
          v17 = [uUIDString isEqualToString:v46];

          uUID2 = [v14 UUID];
          uUIDString2 = [uUID2 UUIDString];
          v20 = [uUIDString2 isEqualToString:v45];

          uUID3 = [v14 UUID];
          uUIDString3 = [uUID3 UUIDString];
          v23 = [uUIDString3 isEqualToString:v12];

          if ((v17 & 1) != 0 || (v20 & 1) != 0 || v23)
          {
            batteryLevelCharacteristic = [(BatteryClientService *)self batteryLevelCharacteristic];
            v25 = (batteryLevelCharacteristic == 0) & v17;

            if (v25 == 1)
            {
              [(BatteryClientService *)self setBatteryLevelCharacteristic:v14];
              batteryLevelCharacteristic2 = [(BatteryClientService *)self batteryLevelCharacteristic];
              [v43 setNotifyValue:1 forCharacteristic:batteryLevelCharacteristic2];

              requireDescriptor = self->_requireDescriptor;
              batteryLevelCharacteristic3 = [(BatteryClientService *)self batteryLevelCharacteristic];
              if (requireDescriptor)
              {
                [v43 discoverDescriptorsForCharacteristic:batteryLevelCharacteristic3];
              }

              else
              {
                v34 = [(BatteryClientService *)self _validData:batteryLevelCharacteristic3];

                if (v34)
                {
                  [(BatteryClientService *)self extractBatteryLevel];
                }
              }
            }

            else
            {
              batteryLevelStatusCharacteristic = [(BatteryClientService *)self batteryLevelStatusCharacteristic];
              v30 = (batteryLevelStatusCharacteristic == 0) & v20;

              if (v30 == 1)
              {
                [(BatteryClientService *)self setBatteryLevelStatusCharacteristic:v14];
                peripheral = [(ClientService *)self peripheral];
                batteryLevelStatusCharacteristic2 = [(BatteryClientService *)self batteryLevelStatusCharacteristic];
                [peripheral setNotifyValue:1 forCharacteristic:batteryLevelStatusCharacteristic2];

                batteryLevelStatusCharacteristic3 = [(BatteryClientService *)self batteryLevelStatusCharacteristic];
                LODWORD(batteryLevelStatusCharacteristic2) = [(BatteryClientService *)self _validData:batteryLevelStatusCharacteristic3];

                if (batteryLevelStatusCharacteristic2)
                {
                  [(BatteryClientService *)self extractBatteryLevelStatus];
                }
              }

              else
              {
                batteryPowerStateCharacteristic = [(BatteryClientService *)self batteryPowerStateCharacteristic];
                v36 = (batteryPowerStateCharacteristic == 0) & v23;

                if (v36 == 1)
                {
                  [(BatteryClientService *)self setBatteryPowerStateCharacteristic:v14];
                  peripheral2 = [(ClientService *)self peripheral];
                  batteryPowerStateCharacteristic2 = [(BatteryClientService *)self batteryPowerStateCharacteristic];
                  [peripheral2 setNotifyValue:1 forCharacteristic:batteryPowerStateCharacteristic2];

                  batteryPowerStateCharacteristic3 = [(BatteryClientService *)self batteryPowerStateCharacteristic];
                  LODWORD(batteryPowerStateCharacteristic2) = [(BatteryClientService *)self _validData:batteryPowerStateCharacteristic3];

                  if (batteryPowerStateCharacteristic2)
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
    batteryLevelCharacteristic4 = [(BatteryClientService *)self batteryLevelCharacteristic];

    v9 = v43;
    if (!batteryLevelCharacteristic4)
    {
      v42 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B4F8(v42);
      }
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  v8 = characteristicCopy;
  if (error)
  {
    goto LABEL_20;
  }

  v23 = characteristicCopy;
  uUID = [characteristicCopy UUID];
  uUIDString = [uUID UUIDString];
  v11 = [uUIDString isEqualToString:CBUUIDBatteryLevelCharacteristicString];

  uUID2 = [v23 UUID];
  uUIDString2 = [uUID2 UUIDString];
  v14 = [uUIDString2 isEqualToString:CBUUIDBatteryLevelStatusCharacteristicString];

  uUID3 = [v23 UUID];
  uUIDString3 = [uUID3 UUIDString];
  v17 = [uUIDString3 isEqualToString:CBUUIDBatteryPowerStateCharacteristicString];

  v8 = v23;
  if ((v11 & 1) == 0 && (v14 & 1) == 0 && !v17)
  {
    goto LABEL_20;
  }

  characteristicCopy = [(BatteryClientService *)self _validData:v23];
  v8 = v23;
  if (!characteristicCopy)
  {
    goto LABEL_20;
  }

  if (self->_retryAttemptsMap)
  {
    uUID4 = [v23 UUID];
    uUIDString4 = [uUID4 UUIDString];

    v20 = [(NSMutableDictionary *)self->_retryAttemptsMap objectForKeyedSubscript:uUIDString4];

    if (v20)
    {
      [(NSMutableDictionary *)self->_retryAttemptsMap setObject:&off_1000C3D68 forKeyedSubscript:uUIDString4];
    }

    v8 = v23;
  }

  if (v11)
  {
    [(BatteryClientService *)self setBatteryLevelCharacteristic:v8];
    if (self->_requireDescriptor && ![(BatteryClientService *)self batteryLevelCharacteristicFormat])
    {
      peripheral = [(ClientService *)self peripheral];
      batteryLevelCharacteristic = [(BatteryClientService *)self batteryLevelCharacteristic];
      [peripheral discoverDescriptorsForCharacteristic:batteryLevelCharacteristic];
    }

    else
    {
      characteristicCopy = [(BatteryClientService *)self extractBatteryLevel];
    }
  }

  else if (v14)
  {
    [(BatteryClientService *)self setBatteryLevelStatusCharacteristic:v23];
    characteristicCopy = [(BatteryClientService *)self extractBatteryLevelStatus];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    [(BatteryClientService *)self setBatteryPowerStateCharacteristic:v23];
    characteristicCopy = [(BatteryClientService *)self extractBatteryPowerState];
  }

  v8 = v23;
LABEL_20:

  _objc_release_x1(characteristicCopy, v8);
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  if (!error)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    descriptors = [characteristic descriptors];
    v7 = [descriptors countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(descriptors);
          }

          [(BatteryClientService *)self _handleValueForDescriptor:*(*(&v11 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [descriptors countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  if (!error)
  {
    [(BatteryClientService *)self _handleValueForDescriptor:descriptor];
  }
}

- (unsigned)characteristicFormatFrom:(id)from
{
  fromCopy = from;
  value = [fromCopy value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    value2 = [fromCopy value];
    if ([value2 length] < 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = *([value2 bytes] + 5);
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
  batteryLevelCharacteristic = [(BatteryClientService *)self batteryLevelCharacteristic];
  value = [batteryLevelCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value];

  v31 = 0;
  if ([v5 readUint8:&v31])
  {
    peripheral = [(ClientService *)self peripheral];
    v7 = [peripheral hasTag:@"A3085"];
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
      powerSourceDetails = [(BatteryClientService *)self powerSourceDetails];
      v12 = [powerSourceDetails objectForKeyedSubscript:@"Current Capacity"];

      if (!v12)
      {
        goto LABEL_11;
      }

      powerSourceDetails2 = [(BatteryClientService *)self powerSourceDetails];
      v14 = [powerSourceDetails2 objectForKeyedSubscript:@"Current Capacity"];

      LODWORD(powerSourceDetails2) = [v14 intValue];
      v15 = v31;

      if (powerSourceDetails2 != v15)
      {
LABEL_11:
        v16 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          peripheral2 = [(ClientService *)self peripheral];
          name = [peripheral2 name];
          batteryLevelCharacteristicFormat = [(BatteryClientService *)self batteryLevelCharacteristicFormat];
          *buf = 138412802;
          v33 = name;
          v34 = 1024;
          v35 = batteryLevelCharacteristicFormat;
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

            powerSourceDetails3 = [(BatteryClientService *)self powerSourceDetails];
            v23 = [powerSourceDetails3 objectForKeyedSubscript:@"Part Identifier"];

            powerSourceDetails4 = [(BatteryClientService *)self powerSourceDetails];
            v25 = [powerSourceDetails4 objectForKeyedSubscript:@"Accessory Identifier"];

            powerSourceDetails5 = [(BatteryClientService *)self powerSourceDetails];
            [powerSourceDetails5 setObject:v25 forKeyedSubscript:@"Group Identifier"];

            if (v23)
            {
LABEL_17:
              v27 = +[BTLEXpcServer instance];
              powerSourceDetails6 = [(BatteryClientService *)self powerSourceDetails];
              [v27 sendBatteryServiceNotification:powerSourceDetails6];
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
  batteryPowerStateCharacteristic = [(BatteryClientService *)self batteryPowerStateCharacteristic];
  value = [batteryPowerStateCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value];

  v13 = 0;
  if ([v5 readUint8:&v13])
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      v10 = [(BatteryClientService *)self batteryPowerStateString:v13];
      *buf = 138412546;
      v15 = name;
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

- (void)_handleValueForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  uUID = [descriptorCopy UUID];
  uUIDString = [uUID UUIDString];
  v6 = [uUIDString isEqualToString:CBUUIDCharacteristicFormatString];

  if (v6)
  {
    characteristic = [descriptorCopy characteristic];
    uUID2 = [characteristic UUID];
    uUIDString2 = [uUID2 UUIDString];
    v10 = [uUIDString2 isEqualToString:CBUUIDBatteryLevelCharacteristicString];
  }

  else
  {
    v10 = 0;
  }

  characteristic2 = [descriptorCopy characteristic];
  uUID3 = [characteristic2 UUID];
  uUIDString3 = [uUID3 UUIDString];
  v14 = [uUIDString3 isEqualToString:CBUUIDBatteryLevelStatusCharacteristicString];

  characteristic3 = [descriptorCopy characteristic];
  uUID4 = [characteristic3 UUID];
  uUIDString4 = [uUID4 UUIDString];
  v18 = [uUIDString4 isEqualToString:CBUUIDBatteryPowerStateCharacteristicString];

  if ((v10 & 1) != 0 || (v14 & 1) != 0 || v18)
  {
    if ([(BatteryClientService *)self _validData:descriptorCopy])
    {
      characteristic4 = [descriptorCopy characteristic];
      v20 = [(BatteryClientService *)self _validData:characteristic4];

      if (v20)
      {
        if (self->_retryAttemptsMap)
        {
          characteristic5 = [descriptorCopy characteristic];
          uUID5 = [characteristic5 UUID];
          uUIDString5 = [uUID5 UUIDString];

          v24 = [(NSMutableDictionary *)self->_retryAttemptsMap objectForKeyedSubscript:uUIDString5];

          if (v24)
          {
            [(NSMutableDictionary *)self->_retryAttemptsMap setObject:&off_1000C3D68 forKeyedSubscript:uUIDString5];
          }
        }

        if (v10)
        {
          [(BatteryClientService *)self _setBatteryLevelCharacteristicFormatFrom:descriptorCopy];
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

- (BOOL)_validData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    value4 = dataCopy;
    uUID = [value4 UUID];
    uUIDString = [uUID UUIDString];
    v63 = CBUUIDBatteryLevelCharacteristicString;
    v8 = [uUIDString isEqualToString:?];

    uUID2 = [value4 UUID];
    uUIDString2 = [uUID2 UUIDString];
    v11 = CBUUIDBatteryLevelStatusCharacteristicString;
    v12 = [uUIDString2 isEqualToString:CBUUIDBatteryLevelStatusCharacteristicString];

    uUID3 = [value4 UUID];
    uUIDString3 = [uUID3 UUIDString];
    v15 = CBUUIDBatteryPowerStateCharacteristicString;
    v16 = [uUIDString3 isEqualToString:CBUUIDBatteryPowerStateCharacteristicString];

    v17 = v8 | v12;
    if (((v8 | v12) & 1) == 0 && (v16 & 1) == 0)
    {
      v18 = 0;
LABEL_15:
      v19 = 0;
      goto LABEL_64;
    }

    v19 = value4 == 0;
    if (value4)
    {
      value = [value4 value];
      if (value)
      {
        v21 = value;
        v62 = dataCopy;
        value2 = [value4 value];
        isZeroValue = [value2 isZeroValue];

        if ((isZeroValue & 1) == 0)
        {
          v18 = 0;
          v19 = 1;
          dataCopy = v62;
          goto LABEL_64;
        }

        dataCopy = v62;
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
          v35 = dataCopy;
          v36 = v15;
          if (!v36)
          {
            v19 = 0;
LABEL_63:
            dataCopy = v35;
            goto LABEL_64;
          }

          v37 = v36;
          retryAttemptsMap = selfCopy2->_retryAttemptsMap;
          if (!retryAttemptsMap)
          {
            v39 = objc_alloc_init(NSMutableDictionary);
            v40 = selfCopy2->_retryAttemptsMap;
            selfCopy2->_retryAttemptsMap = v39;

            retryAttemptsMap = selfCopy2->_retryAttemptsMap;
          }

          v41 = [(NSMutableDictionary *)retryAttemptsMap objectForKeyedSubscript:v37];
          if (v41)
          {
            v42 = [(NSMutableDictionary *)selfCopy2->_retryAttemptsMap objectForKeyedSubscript:v37];
          }

          else
          {
            v42 = &off_1000C3D68;
          }

          if ([v42 intValue] <= 1)
          {
            v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v42 intValue] + 1);

            [(NSMutableDictionary *)selfCopy2->_retryAttemptsMap setObject:v43 forKeyedSubscript:v37];
            if (v19)
            {
              if (!v18)
              {
LABEL_56:
                v54 = qword_1000DDBC8;
                if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = v54;
                  peripheral = [(ClientService *)selfCopy2 peripheral];
                  name = [peripheral name];
                  v58 = selfCopy2->_retryAttemptsMap;
                  *buf = 138412802;
                  v66 = name;
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
                peripheral2 = [(ClientService *)selfCopy2 peripheral];
                name2 = [peripheral2 name];
                *buf = 138412546;
                v66 = name2;
                v67 = 2112;
                v68[0] = v18;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "## Invalid value received from %@, trying again: %@", buf, 0x16u);
              }

              peripheral3 = [(ClientService *)selfCopy2 peripheral];
              [peripheral3 readValueForDescriptor:v18];
            }

            else
            {
              v50 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
              {
                v51 = v50;
                peripheral4 = [(ClientService *)selfCopy2 peripheral];
                name3 = [peripheral4 name];
                *buf = 138412546;
                v66 = name3;
                v67 = 2112;
                v68[0] = value4;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "## Invalid value received from %@, trying again: %@", buf, 0x16u);
              }

              peripheral3 = [(ClientService *)selfCopy2 peripheral];
              [peripheral3 readValueForCharacteristic:value4];
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
            v49 = value4;
          }

          value3 = [v49 value];
          v19 = value3 != 0;

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
      value4 = 0;
      v19 = 1;
    }

    v15 = v63;
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    value4 = 0;
    goto LABEL_15;
  }

  if (self->_requireDescriptor && ![(BatteryClientService *)self batteryLevelCharacteristicFormat])
  {
    selfCopy2 = self;
    v23 = dataCopy;
    v18 = dataCopy;
    uUID4 = [v18 UUID];
    uUIDString4 = [uUID4 UUIDString];
    v26 = [uUIDString4 isEqualToString:CBUUIDCharacteristicFormatString];

    if (!v26)
    {
      goto LABEL_33;
    }

    characteristic = [v18 characteristic];
    uUID5 = [characteristic UUID];
    uUIDString5 = [uUID5 UUIDString];
    v15 = CBUUIDBatteryLevelCharacteristicString;
    v30 = [uUIDString5 isEqualToString:CBUUIDBatteryLevelCharacteristicString];

    if ((v30 & 1) == 0)
    {
LABEL_33:
      value4 = 0;
      v19 = 0;
      dataCopy = v23;
      goto LABEL_64;
    }

    dataCopy = v23;
    if (v18)
    {
      value4 = [v18 value];
      if (!value4)
      {
LABEL_35:
        v19 = 1;
        goto LABEL_36;
      }

      value5 = [v18 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        value6 = [v18 value];
        isZeroValue2 = [value6 isZeroValue];

        value4 = 0;
        v19 = 1;
        if ((isZeroValue2 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_36;
      }
    }

    value4 = 0;
    goto LABEL_35;
  }

  v18 = 0;
  value4 = 0;
  v19 = 1;
LABEL_64:

  return v19;
}

- (void)_setBatteryLevelCharacteristicFormatFrom:(id)from
{
  fromCopy = from;
  uUID = [fromCopy UUID];
  uUIDString = [uUID UUIDString];
  v6 = [uUIDString isEqualToString:CBUUIDCharacteristicFormatString];

  if (v6)
  {
    v7 = [(BatteryClientService *)self characteristicFormatFrom:fromCopy];
    if (![(BatteryClientService *)self batteryLevelCharacteristicFormat])
    {
      if (v7)
      {
        [(BatteryClientService *)self setBatteryLevelCharacteristicFormat:v7];
      }
    }
  }
}

- (BOOL)updatePowerSource:(id)source
{
  sourceCopy = source;
  powerSourceDetails = [(BatteryClientService *)self powerSourceDetails];

  if (!powerSourceDetails)
  {
    v6 = [NSMutableDictionary alloc];
    v37[0] = @"Type";
    v37[1] = @"Transport Type";
    v38[0] = @"Accessory Source";
    v38[1] = @"Bluetooth LE";
    v38[2] = @"Battery Power";
    v37[2] = @"Power Source State";
    v37[3] = @"Accessory Identifier";
    peripheral = [(ClientService *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    v38[3] = uUIDString;
    v38[4] = &off_1000C3D80;
    v37[4] = @"Max Capacity";
    v37[5] = @"Low Warn Level";
    v38[5] = &off_1000C3D98;
    v10 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:6];
    v11 = [v6 initWithDictionary:v10];
    [(BatteryClientService *)self setPowerSourceDetails:v11];

    peripheral2 = [(ClientService *)self peripheral];
    name = [peripheral2 name];

    if (name)
    {
      peripheral3 = [(ClientService *)self peripheral];
      name2 = [peripheral3 name];
      powerSourceDetails2 = [(BatteryClientService *)self powerSourceDetails];
      [powerSourceDetails2 setObject:name2 forKeyedSubscript:@"Name"];
    }

    manager = [(ClientService *)self manager];
    v18 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v19 = [manager clientServiceForUUID:v18];

    if ([v19 hasIDs])
    {
      v20 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v19 vendorIDSource]);
      powerSourceDetails3 = [(BatteryClientService *)self powerSourceDetails];
      [powerSourceDetails3 setObject:v20 forKeyedSubscript:@"Vendor ID Source"];

      v22 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v19 vendorID]);
      powerSourceDetails4 = [(BatteryClientService *)self powerSourceDetails];
      [powerSourceDetails4 setObject:v22 forKeyedSubscript:@"Vendor ID"];

      v24 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v19 productID]);
      powerSourceDetails5 = [(BatteryClientService *)self powerSourceDetails];
      [powerSourceDetails5 setObject:v24 forKeyedSubscript:@"Product ID"];

      if ([(BatteryClientService *)self isAccessoryCategoryPencil:v19])
      {
        powerSourceDetails6 = [(BatteryClientService *)self powerSourceDetails];
        [powerSourceDetails6 setObject:@"Pencil" forKeyedSubscript:@"Accessory Category"];
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if ([(BatteryClientService *)self batteryLevelCharacteristicFormat]== 269)
    {
      v27 = @"Left";
LABEL_15:
      powerSourceDetails7 = [(BatteryClientService *)self powerSourceDetails];
      [powerSourceDetails7 setObject:v27 forKeyedSubscript:@"Part Identifier"];

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
  sourceCopy[2](sourceCopy);
  if (![(BatteryClientService *)self powerSourceID])
  {
    v29 = +[ConnectionManager instance];
    peripheral4 = [(ClientService *)self peripheral];
    v31 = [v29 isAlwaysConnecting:peripheral4];

    if (v31)
    {
      IOPSCreatePowerSource();
    }
  }

  powerSourceID = [(BatteryClientService *)self powerSourceID];
  if (powerSourceID)
  {
    [(BatteryClientService *)self powerSourceID];
    powerSourceDetails8 = [(BatteryClientService *)self powerSourceDetails];
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

  return powerSourceID != 0;
}

- (id)batteryPowerStateString:(unsigned __int8)string
{
  v3 = off_1000BE660[string & 3];
  v4 = off_1000BE680[(string >> 4) & 3];
  return [NSString stringWithFormat:@"%@ / %@ / %@ / %@", v3, off_1000BE6A0[(string >> 2) & 3], v4, off_1000BE6C0[string >> 6]];
}

- (BOOL)isAccessoryCategoryPencil:(id)pencil
{
  pencilCopy = pencil;
  v4 = [pencilCopy productID] == 546 || objc_msgSend(pencilCopy, "productID") == 332 || objc_msgSend(pencilCopy, "productID") == 482 || objc_msgSend(pencilCopy, "productID") == 1106;
  v5 = [pencilCopy vendorIDSource] == 1 && objc_msgSend(pencilCopy, "vendorID") == 76 && v4;

  return v5;
}

- (void)extractBatteryLevelStatus
{
  v3 = [BatteryLevelStatus alloc];
  batteryLevelStatusCharacteristic = [(BatteryClientService *)self batteryLevelStatusCharacteristic];
  value = [batteryLevelStatusCharacteristic value];
  v6 = [(BatteryLevelStatus *)v3 initWithData:value];

  if (v6)
  {
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      *buf = 138412802;
      v20 = name;
      v21 = 1024;
      batteryLevelCharacteristicFormat = [(BatteryClientService *)self batteryLevelCharacteristicFormat];
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

      powerSourceDetails = [(BatteryClientService *)self powerSourceDetails];
      v12 = [powerSourceDetails objectForKeyedSubscript:@"Part Identifier"];

      powerSourceDetails2 = [(BatteryClientService *)self powerSourceDetails];
      v14 = [powerSourceDetails2 objectForKeyedSubscript:@"Accessory Identifier"];

      powerSourceDetails3 = [(BatteryClientService *)self powerSourceDetails];
      [powerSourceDetails3 setObject:v14 forKeyedSubscript:@"Group Identifier"];

      if (v12)
      {
LABEL_7:
        v16 = +[BTLEXpcServer instance];
        powerSourceDetails4 = [(BatteryClientService *)self powerSourceDetails];
        [v16 sendBatteryServiceNotification:powerSourceDetails4];
      }
    }
  }
}

@end