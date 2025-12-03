@interface DIClientService
- (BOOL)hasIDs;
- (BOOL)haveAllCharacteristicsBeenRead;
- (DIClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)vendorIDSourceString;
- (void)addReadCompleteListener:(id)listener;
- (void)extractIDs;
- (void)notifyListeners:(int)listeners;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)removeReadCompleteListener:(id)listener;
- (void)start;
@end

@implementation DIClientService

- (DIClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v8.receiver = self;
  v8.super_class = DIClientService;
  v5 = [(ClientService *)&v8 initWithManager:manager peripheral:peripheral service:service];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setPriority:1];
    [(ClientService *)v6 setStartTimeout:0.0];
    [(DIClientService *)v6 setUnreadCharacteristics:0];
    [(DIClientService *)v6 setReadCompleteListeners:&__NSArray0__struct];
  }

  return v6;
}

- (void)start
{
  v14.receiver = self;
  v14.super_class = DIClientService;
  [(ClientService *)&v14 start];
  v3 = [CBUUID UUIDWithString:CBUUIDPnPIDCharacteristicString];
  v15[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDSoftwareRevisionStringCharacteristicString];
  v15[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDFirmwareRevisionStringCharacteristicString];
  v15[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDHardwareRevisionStringCharacteristicString];
  v15[3] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDSerialNumberStringCharacteristicString];
  v15[4] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDModelNumberStringCharacteristicString];
  v15[5] = v8;
  v9 = [CBUUID UUIDWithString:CBUUIDManufacturerNameStringCharacteristicString];
  v15[6] = v9;
  v10 = [CBUUID UUIDWithString:CBUUIDUDIForMedicalDevicesCharacteristicString];
  v15[7] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:8];

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v11 forService:service];
}

- (BOOL)hasIDs
{
  pnpIDCharacteristic = [(DIClientService *)self pnpIDCharacteristic];
  value = [pnpIDCharacteristic value];
  v4 = value != 0;

  return v4;
}

- (BOOL)haveAllCharacteristicsBeenRead
{
  unreadCharacteristics = self->_unreadCharacteristics;
  if (unreadCharacteristics)
  {
    LOBYTE(unreadCharacteristics) = [(NSArray *)unreadCharacteristics count]== 0;
  }

  return unreadCharacteristics;
}

- (void)addReadCompleteListener:(id)listener
{
  listenerCopy = listener;
  if (_os_feature_enabled_impl())
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076AAC(listenerCopy, self);
      if (!listenerCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!listenerCopy)
    {
      goto LABEL_8;
    }

    readCompleteListeners = [(DIClientService *)self readCompleteListeners];
    v6 = [readCompleteListeners containsObject:listenerCopy];

    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)self->_readCompleteListeners mutableCopy];
      [v7 addObject:listenerCopy];
      v8 = [v7 copy];
      readCompleteListeners = self->_readCompleteListeners;
      self->_readCompleteListeners = v8;

      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_100076B20(listenerCopy, &self->_readCompleteListeners);
      }
    }
  }

LABEL_8:
}

- (void)removeReadCompleteListener:(id)listener
{
  listenerCopy = listener;
  if (_os_feature_enabled_impl())
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076B8C(listenerCopy, self);
      if (!listenerCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!listenerCopy)
    {
      goto LABEL_8;
    }

    readCompleteListeners = [(DIClientService *)self readCompleteListeners];
    v6 = [readCompleteListeners containsObject:listenerCopy];

    if (v6)
    {
      v7 = [(NSArray *)self->_readCompleteListeners mutableCopy];
      [v7 removeObject:listenerCopy];
      v8 = [v7 copy];
      readCompleteListeners = self->_readCompleteListeners;
      self->_readCompleteListeners = v8;

      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_100076C00(listenerCopy, &self->_readCompleteListeners);
      }
    }
  }

LABEL_8:
}

- (void)extractIDs
{
  pnpIDCharacteristic = [(DIClientService *)self pnpIDCharacteristic];
  value = [pnpIDCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value byteOrder:1];

  if ([v5 readUint8:&self->_vendorIDSource])
  {
    if ([v5 readUint16:&self->_vendorID])
    {
      if ([v5 readUint16:&self->_productID])
      {
        if ([v5 readUint16:&self->_productVersion])
        {
          v6 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v7 = v6;
            peripheral = [(ClientService *)self peripheral];
            name = [peripheral name];
            vendorIDSourceString = [(DIClientService *)self vendorIDSourceString];
            v11 = 138413314;
            v12 = name;
            v13 = 2112;
            v14 = vendorIDSourceString;
            v15 = 1024;
            vendorID = [(DIClientService *)self vendorID];
            v17 = 1024;
            productID = [(DIClientService *)self productID];
            v19 = 1024;
            productVersion = [(DIClientService *)self productVersion];
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PnP ID for peripheral %@: %@ / 0x%04X / 0x%04X / 0x%04X", &v11, 0x28u);
          }
        }
      }
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  if (!error)
  {
    v56 = serviceCopy;
    if (_os_feature_enabled_impl())
    {
      v10 = objc_opt_new();
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      characteristics = [serviceCopy characteristics];
      v12 = [characteristics countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v72;
        do
        {
          v15 = 0;
          do
          {
            if (*v72 != v14)
            {
              objc_enumerationMutation(characteristics);
            }

            uUID = [*(*(&v71 + 1) + 8 * v15) UUID];
            [v10 addObject:uUID];

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [characteristics countByEnumeratingWithState:&v71 objects:v76 count:16];
        }

        while (v13);
      }

      v17 = [v10 copy];
      unreadCharacteristics = self->_unreadCharacteristics;
      self->_unreadCharacteristics = v17;

      serviceCopy = v56;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [serviceCopy characteristics];
    v19 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v68;
      v65 = CBUUIDPnPIDCharacteristicString;
      v63 = CBUUIDFirmwareRevisionStringCharacteristicString;
      v64 = CBUUIDSoftwareRevisionStringCharacteristicString;
      v61 = CBUUIDSerialNumberStringCharacteristicString;
      v62 = CBUUIDHardwareRevisionStringCharacteristicString;
      v59 = CBUUIDManufacturerNameStringCharacteristicString;
      v60 = CBUUIDModelNumberStringCharacteristicString;
      v58 = CBUUIDUDIForMedicalDevicesCharacteristicString;
      do
      {
        v22 = 0;
        do
        {
          if (*v68 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v67 + 1) + 8 * v22);
          pnpIDCharacteristic = [(DIClientService *)self pnpIDCharacteristic];
          if (pnpIDCharacteristic)
          {
          }

          else
          {
            uUID2 = [v23 UUID];
            v26 = [CBUUID UUIDWithString:v65];
            v27 = [uUID2 isEqual:v26];

            if (v27)
            {
              [(DIClientService *)self setPnpIDCharacteristic:v23];
LABEL_48:
              [peripheralCopy readValueForCharacteristic:v23];
              goto LABEL_49;
            }
          }

          swRevisionCharacteristic = [(DIClientService *)self swRevisionCharacteristic];
          if (swRevisionCharacteristic)
          {
          }

          else
          {
            uUID3 = [v23 UUID];
            v30 = [CBUUID UUIDWithString:v64];
            v31 = [uUID3 isEqual:v30];

            if (v31)
            {
              [(DIClientService *)self setSwRevisionCharacteristic:v23];
              goto LABEL_48;
            }
          }

          fwRevisionCharacteristic = [(DIClientService *)self fwRevisionCharacteristic];
          if (fwRevisionCharacteristic)
          {
          }

          else
          {
            uUID4 = [v23 UUID];
            v34 = [CBUUID UUIDWithString:v63];
            v35 = [uUID4 isEqual:v34];

            if (v35)
            {
              [(DIClientService *)self setFwRevisionCharacteristic:v23];
              goto LABEL_48;
            }
          }

          hwRevisionCharacteristic = [(DIClientService *)self hwRevisionCharacteristic];
          if (hwRevisionCharacteristic)
          {
          }

          else
          {
            uUID5 = [v23 UUID];
            v38 = [CBUUID UUIDWithString:v62];
            v39 = [uUID5 isEqual:v38];

            if (v39)
            {
              [(DIClientService *)self setHwRevisionCharacteristic:v23];
              goto LABEL_48;
            }
          }

          serialNumberCharacteristic = [(DIClientService *)self serialNumberCharacteristic];
          if (serialNumberCharacteristic)
          {
          }

          else
          {
            uUID6 = [v23 UUID];
            v42 = [CBUUID UUIDWithString:v61];
            v43 = [uUID6 isEqual:v42];

            if (v43)
            {
              [(DIClientService *)self setSerialNumberCharacteristic:v23];
              goto LABEL_48;
            }
          }

          modelNumberCharacteristic = [(DIClientService *)self modelNumberCharacteristic];
          if (modelNumberCharacteristic)
          {
          }

          else
          {
            uUID7 = [v23 UUID];
            v46 = [CBUUID UUIDWithString:v60];
            v47 = [uUID7 isEqual:v46];

            if (v47)
            {
              [(DIClientService *)self setModelNumberCharacteristic:v23];
              goto LABEL_48;
            }
          }

          manufacturerNameCharacteristic = [(DIClientService *)self manufacturerNameCharacteristic];
          if (manufacturerNameCharacteristic)
          {
          }

          else
          {
            uUID8 = [v23 UUID];
            v50 = [CBUUID UUIDWithString:v59];
            v51 = [uUID8 isEqual:v50];

            if (v51)
            {
              [(DIClientService *)self setManufacturerNameCharacteristic:v23];
              goto LABEL_48;
            }
          }

          udiForMedicalDevicesCharacteristic = [(DIClientService *)self udiForMedicalDevicesCharacteristic];
          if (udiForMedicalDevicesCharacteristic)
          {

            goto LABEL_49;
          }

          uUID9 = [v23 UUID];
          v54 = [CBUUID UUIDWithString:v58];
          v55 = [uUID9 isEqual:v54];

          if (v55)
          {
            [(DIClientService *)self setUdiForMedicalDevicesCharacteristic:v23];
            [(DIClientService *)self setNotify:1 forCharacteristic:v23];
            goto LABEL_48;
          }

LABEL_49:
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v20);
    }

    [(ClientService *)self notifyDidStart];
    serviceCopy = v57;
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  value = [characteristicCopy value];
  v7 = [value length];

  if (!v7)
  {
    goto LABEL_26;
  }

  if (_os_feature_enabled_impl() && (v8 = self->_unreadCharacteristics) != 0 && ([characteristicCopy UUID], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSArray containsObject:](v8, "containsObject:", v9), v9, v10))
  {
    v11 = [(NSArray *)self->_unreadCharacteristics mutableCopy];
    uUID = [characteristicCopy UUID];
    [v11 removeObject:uUID];

    v13 = [v11 copy];
    unreadCharacteristics = self->_unreadCharacteristics;
    self->_unreadCharacteristics = v13;

    v15 = [(NSArray *)self->_unreadCharacteristics count]!= 0;
  }

  else
  {
    v15 = 1;
  }

  pnpIDCharacteristic = [(DIClientService *)self pnpIDCharacteristic];

  if (pnpIDCharacteristic == characteristicCopy)
  {
    [(DIClientService *)self extractIDs];
    v28 = 0;
  }

  else
  {
    swRevisionCharacteristic = [(DIClientService *)self swRevisionCharacteristic];

    if (swRevisionCharacteristic == characteristicCopy)
    {
      v29 = [NSString alloc];
      value2 = [characteristicCopy value];
      v31 = [v29 initWithData:value2 encoding:4];
      softwareRevision = self->_softwareRevision;
      self->_softwareRevision = v31;

      v28 = 1;
    }

    else
    {
      fwRevisionCharacteristic = [(DIClientService *)self fwRevisionCharacteristic];

      if (fwRevisionCharacteristic == characteristicCopy)
      {
        v33 = [NSString alloc];
        value3 = [characteristicCopy value];
        v35 = [v33 initWithData:value3 encoding:4];
        firmwareRevision = self->_firmwareRevision;
        self->_firmwareRevision = v35;

        v28 = 2;
      }

      else
      {
        hwRevisionCharacteristic = [(DIClientService *)self hwRevisionCharacteristic];

        if (hwRevisionCharacteristic == characteristicCopy)
        {
          v37 = [NSString alloc];
          value4 = [characteristicCopy value];
          v39 = [v37 initWithData:value4 encoding:4];
          hardwareRevision = self->_hardwareRevision;
          self->_hardwareRevision = v39;

          v28 = 3;
        }

        else
        {
          serialNumberCharacteristic = [(DIClientService *)self serialNumberCharacteristic];

          if (serialNumberCharacteristic == characteristicCopy)
          {
            v41 = [NSString alloc];
            value5 = [characteristicCopy value];
            v28 = 4;
            v43 = [v41 initWithData:value5 encoding:4];
            serialNumber = self->_serialNumber;
            self->_serialNumber = v43;
          }

          else
          {
            modelNumberCharacteristic = [(DIClientService *)self modelNumberCharacteristic];

            if (modelNumberCharacteristic == characteristicCopy)
            {
              v45 = [NSString alloc];
              value6 = [characteristicCopy value];
              v47 = [v45 initWithData:value6 encoding:4];
              modelNumber = self->_modelNumber;
              self->_modelNumber = v47;

              v28 = 5;
            }

            else
            {
              manufacturerNameCharacteristic = [(DIClientService *)self manufacturerNameCharacteristic];

              if (manufacturerNameCharacteristic == characteristicCopy)
              {
                v49 = [NSString alloc];
                value7 = [characteristicCopy value];
                v51 = [v49 initWithData:value7 encoding:4];
                manufacturerName = self->_manufacturerName;
                self->_manufacturerName = v51;

                v28 = 6;
              }

              else
              {
                udiForMedicalDevicesCharacteristic = [(DIClientService *)self udiForMedicalDevicesCharacteristic];

                if (udiForMedicalDevicesCharacteristic != characteristicCopy)
                {
                  goto LABEL_24;
                }

                v24 = [NSString alloc];
                value8 = [characteristicCopy value];
                v26 = [v24 initWithData:value8 encoding:4];
                udiForMedicalDevices = self->_udiForMedicalDevices;
                self->_udiForMedicalDevices = v26;

                v28 = 7;
              }
            }
          }
        }
      }
    }
  }

  [(DIClientService *)self notifyListeners:v28];
LABEL_24:
  if (!(v15 | ((_os_feature_enabled_impl() & 1) == 0)))
  {
    [(DIClientService *)self notifyListeners:8];
  }

LABEL_26:
}

- (void)notifyListeners:(int)listeners
{
  firmwareRevision = &stru_1000BEA00;
  v5 = @"Unknown";
  if (listeners <= 3)
  {
    if (listeners > 1)
    {
      if (listeners == 2)
      {
        firmwareRevision = [(DIClientService *)self firmwareRevision];
        v5 = @"FirmwareRevision";
        if (firmwareRevision)
        {
          goto LABEL_33;
        }
      }

      else
      {
        firmwareRevision = [(DIClientService *)self hardwareRevision];
        v5 = @"HardwareRevision";
        if (firmwareRevision)
        {
          goto LABEL_33;
        }
      }
    }

    else if (listeners)
    {
      if (listeners != 1)
      {
        goto LABEL_33;
      }

      firmwareRevision = [(DIClientService *)self softwareRevision];
      v5 = @"SoftwareRevision";
      if (firmwareRevision)
      {
        goto LABEL_33;
      }
    }

    else
    {
      firmwareRevision = [NSString stringWithFormat:@"PID:0x%04X VID:0x%04X", self->_productID, self->_vendorID];
      v5 = @"PnP";
      if (firmwareRevision)
      {
        goto LABEL_33;
      }
    }
  }

  else if (listeners <= 5)
  {
    if (listeners == 4)
    {
      firmwareRevision = [(DIClientService *)self serialNumber];
      v5 = @"SerialNumber";
      if (firmwareRevision)
      {
        goto LABEL_33;
      }
    }

    else
    {
      firmwareRevision = [(DIClientService *)self modelNumber];
      v5 = @"ModelNumber";
      if (firmwareRevision)
      {
        goto LABEL_33;
      }
    }
  }

  else if (listeners == 6)
  {
    firmwareRevision = [(DIClientService *)self manufacturerName];
    v5 = @"ManufacturerName";
    if (firmwareRevision)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (listeners != 7)
    {
      if (listeners == 8 && _os_feature_enabled_impl())
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = self->_readCompleteListeners;
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              peripheral = [(ClientService *)self peripheral];
              identifier = [peripheral identifier];
              uUIDString = [identifier UUIDString];
              [v11 deviceInformation:self readCompleteForDeviceUUID:uUIDString];
            }

            v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
          }

          while (v8);
        }

        return;
      }

LABEL_33:
      peripheral2 = [(ClientService *)self peripheral];
      name = [peripheral2 name];
      NSLog(@"Updated DeviceInformation for %@‘s %@ - %@", name, v5, firmwareRevision);

      v17 = +[NSNotificationCenter defaultCenter];
      v28[0] = @"UUID";
      peripheral3 = [(ClientService *)self peripheral];
      identifier2 = [peripheral3 identifier];
      uUIDString2 = [identifier2 UUIDString];
      v28[1] = v5;
      v29[0] = uUIDString2;
      v29[1] = firmwareRevision;
      v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
      [v17 postNotificationName:@"DeviceInformationUpdate" object:self userInfo:v21];

      return;
    }

    firmwareRevision = [(DIClientService *)self udiForMedicalDevices];
    v5 = @"UDIForMedicalDevices";
    if (firmwareRevision)
    {
      goto LABEL_33;
    }
  }

  peripheral4 = [(ClientService *)self peripheral];
  name2 = [peripheral4 name];
  NSLog(@"Error updating DeviceInformation for %@‘s %@ - %@", name2, v5, 0);
}

- (id)vendorIDSourceString
{
  vendorIDSource = [(DIClientService *)self vendorIDSource];
  v3 = @"Unknown";
  if (vendorIDSource == 2)
  {
    v3 = @"USB";
  }

  if (vendorIDSource == 1)
  {
    return @"BT";
  }

  else
  {
    return v3;
  }
}

@end