@interface DIClientService
- (BOOL)hasIDs;
- (BOOL)haveAllCharacteristicsBeenRead;
- (DIClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)vendorIDSourceString;
- (void)addReadCompleteListener:(id)a3;
- (void)extractIDs;
- (void)notifyListeners:(int)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)removeReadCompleteListener:(id)a3;
- (void)start;
@end

@implementation DIClientService

- (DIClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8.receiver = self;
  v8.super_class = DIClientService;
  v5 = [(ClientService *)&v8 initWithManager:a3 peripheral:a4 service:a5];
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

  v12 = [(ClientService *)self peripheral];
  v13 = [(ClientService *)self service];
  [v12 discoverCharacteristics:v11 forService:v13];
}

- (BOOL)hasIDs
{
  v2 = [(DIClientService *)self pnpIDCharacteristic];
  v3 = [v2 value];
  v4 = v3 != 0;

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

- (void)addReadCompleteListener:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076AAC(v4, self);
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
      goto LABEL_8;
    }

    v5 = [(DIClientService *)self readCompleteListeners];
    v6 = [v5 containsObject:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)self->_readCompleteListeners mutableCopy];
      [v7 addObject:v4];
      v8 = [v7 copy];
      readCompleteListeners = self->_readCompleteListeners;
      self->_readCompleteListeners = v8;

      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_100076B20(v4, &self->_readCompleteListeners);
      }
    }
  }

LABEL_8:
}

- (void)removeReadCompleteListener:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076B8C(v4, self);
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
      goto LABEL_8;
    }

    v5 = [(DIClientService *)self readCompleteListeners];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = [(NSArray *)self->_readCompleteListeners mutableCopy];
      [v7 removeObject:v4];
      v8 = [v7 copy];
      readCompleteListeners = self->_readCompleteListeners;
      self->_readCompleteListeners = v8;

      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_100076C00(v4, &self->_readCompleteListeners);
      }
    }
  }

LABEL_8:
}

- (void)extractIDs
{
  v3 = [(DIClientService *)self pnpIDCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4 byteOrder:1];

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
            v8 = [(ClientService *)self peripheral];
            v9 = [v8 name];
            v10 = [(DIClientService *)self vendorIDSourceString];
            v11 = 138413314;
            v12 = v9;
            v13 = 2112;
            v14 = v10;
            v15 = 1024;
            v16 = [(DIClientService *)self vendorID];
            v17 = 1024;
            v18 = [(DIClientService *)self productID];
            v19 = 1024;
            v20 = [(DIClientService *)self productVersion];
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PnP ID for peripheral %@: %@ / 0x%04X / 0x%04X / 0x%04X", &v11, 0x28u);
          }
        }
      }
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v56 = v9;
    if (_os_feature_enabled_impl())
    {
      v10 = objc_opt_new();
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v11 = [v9 characteristics];
      v12 = [v11 countByEnumeratingWithState:&v71 objects:v76 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v71 + 1) + 8 * v15) UUID];
            [v10 addObject:v16];

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v71 objects:v76 count:16];
        }

        while (v13);
      }

      v17 = [v10 copy];
      unreadCharacteristics = self->_unreadCharacteristics;
      self->_unreadCharacteristics = v17;

      v9 = v56;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [v9 characteristics];
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
          v24 = [(DIClientService *)self pnpIDCharacteristic];
          if (v24)
          {
          }

          else
          {
            v25 = [v23 UUID];
            v26 = [CBUUID UUIDWithString:v65];
            v27 = [v25 isEqual:v26];

            if (v27)
            {
              [(DIClientService *)self setPnpIDCharacteristic:v23];
LABEL_48:
              [v8 readValueForCharacteristic:v23];
              goto LABEL_49;
            }
          }

          v28 = [(DIClientService *)self swRevisionCharacteristic];
          if (v28)
          {
          }

          else
          {
            v29 = [v23 UUID];
            v30 = [CBUUID UUIDWithString:v64];
            v31 = [v29 isEqual:v30];

            if (v31)
            {
              [(DIClientService *)self setSwRevisionCharacteristic:v23];
              goto LABEL_48;
            }
          }

          v32 = [(DIClientService *)self fwRevisionCharacteristic];
          if (v32)
          {
          }

          else
          {
            v33 = [v23 UUID];
            v34 = [CBUUID UUIDWithString:v63];
            v35 = [v33 isEqual:v34];

            if (v35)
            {
              [(DIClientService *)self setFwRevisionCharacteristic:v23];
              goto LABEL_48;
            }
          }

          v36 = [(DIClientService *)self hwRevisionCharacteristic];
          if (v36)
          {
          }

          else
          {
            v37 = [v23 UUID];
            v38 = [CBUUID UUIDWithString:v62];
            v39 = [v37 isEqual:v38];

            if (v39)
            {
              [(DIClientService *)self setHwRevisionCharacteristic:v23];
              goto LABEL_48;
            }
          }

          v40 = [(DIClientService *)self serialNumberCharacteristic];
          if (v40)
          {
          }

          else
          {
            v41 = [v23 UUID];
            v42 = [CBUUID UUIDWithString:v61];
            v43 = [v41 isEqual:v42];

            if (v43)
            {
              [(DIClientService *)self setSerialNumberCharacteristic:v23];
              goto LABEL_48;
            }
          }

          v44 = [(DIClientService *)self modelNumberCharacteristic];
          if (v44)
          {
          }

          else
          {
            v45 = [v23 UUID];
            v46 = [CBUUID UUIDWithString:v60];
            v47 = [v45 isEqual:v46];

            if (v47)
            {
              [(DIClientService *)self setModelNumberCharacteristic:v23];
              goto LABEL_48;
            }
          }

          v48 = [(DIClientService *)self manufacturerNameCharacteristic];
          if (v48)
          {
          }

          else
          {
            v49 = [v23 UUID];
            v50 = [CBUUID UUIDWithString:v59];
            v51 = [v49 isEqual:v50];

            if (v51)
            {
              [(DIClientService *)self setManufacturerNameCharacteristic:v23];
              goto LABEL_48;
            }
          }

          v52 = [(DIClientService *)self udiForMedicalDevicesCharacteristic];
          if (v52)
          {

            goto LABEL_49;
          }

          v53 = [v23 UUID];
          v54 = [CBUUID UUIDWithString:v58];
          v55 = [v53 isEqual:v54];

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
    v9 = v57;
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v53 = a4;
  v6 = [v53 value];
  v7 = [v6 length];

  if (!v7)
  {
    goto LABEL_26;
  }

  if (_os_feature_enabled_impl() && (v8 = self->_unreadCharacteristics) != 0 && ([v53 UUID], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSArray containsObject:](v8, "containsObject:", v9), v9, v10))
  {
    v11 = [(NSArray *)self->_unreadCharacteristics mutableCopy];
    v12 = [v53 UUID];
    [v11 removeObject:v12];

    v13 = [v11 copy];
    unreadCharacteristics = self->_unreadCharacteristics;
    self->_unreadCharacteristics = v13;

    v15 = [(NSArray *)self->_unreadCharacteristics count]!= 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = [(DIClientService *)self pnpIDCharacteristic];

  if (v16 == v53)
  {
    [(DIClientService *)self extractIDs];
    v28 = 0;
  }

  else
  {
    v17 = [(DIClientService *)self swRevisionCharacteristic];

    if (v17 == v53)
    {
      v29 = [NSString alloc];
      v30 = [v53 value];
      v31 = [v29 initWithData:v30 encoding:4];
      softwareRevision = self->_softwareRevision;
      self->_softwareRevision = v31;

      v28 = 1;
    }

    else
    {
      v18 = [(DIClientService *)self fwRevisionCharacteristic];

      if (v18 == v53)
      {
        v33 = [NSString alloc];
        v34 = [v53 value];
        v35 = [v33 initWithData:v34 encoding:4];
        firmwareRevision = self->_firmwareRevision;
        self->_firmwareRevision = v35;

        v28 = 2;
      }

      else
      {
        v19 = [(DIClientService *)self hwRevisionCharacteristic];

        if (v19 == v53)
        {
          v37 = [NSString alloc];
          v38 = [v53 value];
          v39 = [v37 initWithData:v38 encoding:4];
          hardwareRevision = self->_hardwareRevision;
          self->_hardwareRevision = v39;

          v28 = 3;
        }

        else
        {
          v20 = [(DIClientService *)self serialNumberCharacteristic];

          if (v20 == v53)
          {
            v41 = [NSString alloc];
            v42 = [v53 value];
            v28 = 4;
            v43 = [v41 initWithData:v42 encoding:4];
            serialNumber = self->_serialNumber;
            self->_serialNumber = v43;
          }

          else
          {
            v21 = [(DIClientService *)self modelNumberCharacteristic];

            if (v21 == v53)
            {
              v45 = [NSString alloc];
              v46 = [v53 value];
              v47 = [v45 initWithData:v46 encoding:4];
              modelNumber = self->_modelNumber;
              self->_modelNumber = v47;

              v28 = 5;
            }

            else
            {
              v22 = [(DIClientService *)self manufacturerNameCharacteristic];

              if (v22 == v53)
              {
                v49 = [NSString alloc];
                v50 = [v53 value];
                v51 = [v49 initWithData:v50 encoding:4];
                manufacturerName = self->_manufacturerName;
                self->_manufacturerName = v51;

                v28 = 6;
              }

              else
              {
                v23 = [(DIClientService *)self udiForMedicalDevicesCharacteristic];

                if (v23 != v53)
                {
                  goto LABEL_24;
                }

                v24 = [NSString alloc];
                v25 = [v53 value];
                v26 = [v24 initWithData:v25 encoding:4];
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

- (void)notifyListeners:(int)a3
{
  v4 = &stru_1000BEA00;
  v5 = @"Unknown";
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v4 = [(DIClientService *)self firmwareRevision];
        v5 = @"FirmwareRevision";
        if (v4)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v4 = [(DIClientService *)self hardwareRevision];
        v5 = @"HardwareRevision";
        if (v4)
        {
          goto LABEL_33;
        }
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_33;
      }

      v4 = [(DIClientService *)self softwareRevision];
      v5 = @"SoftwareRevision";
      if (v4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v4 = [NSString stringWithFormat:@"PID:0x%04X VID:0x%04X", self->_productID, self->_vendorID];
      v5 = @"PnP";
      if (v4)
      {
        goto LABEL_33;
      }
    }
  }

  else if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v4 = [(DIClientService *)self serialNumber];
      v5 = @"SerialNumber";
      if (v4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v4 = [(DIClientService *)self modelNumber];
      v5 = @"ModelNumber";
      if (v4)
      {
        goto LABEL_33;
      }
    }
  }

  else if (a3 == 6)
  {
    v4 = [(DIClientService *)self manufacturerName];
    v5 = @"ManufacturerName";
    if (v4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a3 != 7)
    {
      if (a3 == 8 && _os_feature_enabled_impl())
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
              v12 = [(ClientService *)self peripheral];
              v13 = [v12 identifier];
              v14 = [v13 UUIDString];
              [v11 deviceInformation:self readCompleteForDeviceUUID:v14];
            }

            v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
          }

          while (v8);
        }

        return;
      }

LABEL_33:
      v15 = [(ClientService *)self peripheral];
      v16 = [v15 name];
      NSLog(@"Updated DeviceInformation for %@‘s %@ - %@", v16, v5, v4);

      v17 = +[NSNotificationCenter defaultCenter];
      v28[0] = @"UUID";
      v18 = [(ClientService *)self peripheral];
      v19 = [v18 identifier];
      v20 = [v19 UUIDString];
      v28[1] = v5;
      v29[0] = v20;
      v29[1] = v4;
      v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
      [v17 postNotificationName:@"DeviceInformationUpdate" object:self userInfo:v21];

      return;
    }

    v4 = [(DIClientService *)self udiForMedicalDevices];
    v5 = @"UDIForMedicalDevices";
    if (v4)
    {
      goto LABEL_33;
    }
  }

  v23 = [(ClientService *)self peripheral];
  v22 = [v23 name];
  NSLog(@"Error updating DeviceInformation for %@‘s %@ - %@", v22, v5, 0);
}

- (id)vendorIDSourceString
{
  v2 = [(DIClientService *)self vendorIDSource];
  v3 = @"Unknown";
  if (v2 == 2)
  {
    v3 = @"USB";
  }

  if (v2 == 1)
  {
    return @"BT";
  }

  else
  {
    return v3;
  }
}

@end