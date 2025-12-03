@interface MFiClientService
- (MFiClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
@end

@implementation MFiClientService

- (MFiClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v8.receiver = self;
  v8.super_class = MFiClientService;
  v5 = [(ClientService *)&v8 initWithManager:manager peripheral:peripheral service:service];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setIsPrimary:1];
    [(ClientService *)v6 setPriority:10];
    [(ClientService *)v6 setStartTimeout:0.0];
  }

  return v6;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = MFiClientService;
  [(ClientService *)&v12 start];
  v3 = [CBUUID UUIDWithString:CBUUIDTeamIDCharacteristicString];
  v13[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDProtocolStringCharacteristicString];
  v13[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDCommandCharacteristicString];
  v13[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDAccessoryTypeCharacteristicString];
  v13[3] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDAccessoryAttributesCharacteristicString];
  v13[4] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDMFiAuthPSMCharacteristicString];
  v13[5] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:6];

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v9 forService:service];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  if (!errorCopy)
  {
    v60 = peripheralCopy;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    characteristics = [serviceCopy characteristics];
    v10 = [characteristics countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (!v10)
    {
      goto LABEL_36;
    }

    v11 = v10;
    v12 = *v63;
    v61 = CBUUIDTeamIDCharacteristicString;
    v59 = CBUUIDProtocolStringCharacteristicString;
    v58 = CBUUIDCommandCharacteristicString;
    v57 = CBUUIDAccessoryTypeCharacteristicString;
    v56 = CBUUIDAccessoryAttributesCharacteristicString;
    v55 = CBUUIDMFiAuthPSMCharacteristicString;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(characteristics);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        teamIDCharacteristic = [(MFiClientService *)self teamIDCharacteristic];
        if (teamIDCharacteristic)
        {
        }

        else
        {
          uUID = [v14 UUID];
          v17 = [CBUUID UUIDWithString:v61];
          v18 = [uUID isEqual:v17];

          if (v18)
          {
            [(MFiClientService *)self setTeamIDCharacteristic:v14];
            goto LABEL_27;
          }
        }

        protocolStringCharacteristic = [(MFiClientService *)self protocolStringCharacteristic];
        if (protocolStringCharacteristic)
        {
        }

        else
        {
          uUID2 = [v14 UUID];
          v21 = [CBUUID UUIDWithString:v59];
          v22 = [uUID2 isEqual:v21];

          if (v22)
          {
            [(MFiClientService *)self setProtocolStringCharacteristic:v14];
            goto LABEL_27;
          }
        }

        commandCharacteristic = [(MFiClientService *)self commandCharacteristic];
        if (commandCharacteristic)
        {
        }

        else
        {
          uUID3 = [v14 UUID];
          v25 = [CBUUID UUIDWithString:v58];
          v26 = [uUID3 isEqual:v25];

          if (v26)
          {
            [(MFiClientService *)self setCommandCharacteristic:v14];
            goto LABEL_27;
          }
        }

        accessoryTypeCharacteristic = [(MFiClientService *)self accessoryTypeCharacteristic];
        if (accessoryTypeCharacteristic)
        {
        }

        else
        {
          uUID4 = [v14 UUID];
          v29 = [CBUUID UUIDWithString:v57];
          v30 = [uUID4 isEqual:v29];

          if (v30)
          {
            [(MFiClientService *)self setAccessoryTypeCharacteristic:v14];
            goto LABEL_27;
          }
        }

        accessoryAttributesCharacteristic = [(MFiClientService *)self accessoryAttributesCharacteristic];
        if (accessoryAttributesCharacteristic)
        {

LABEL_29:
          mfiAuthPSMCharacteristic = [(MFiClientService *)self mfiAuthPSMCharacteristic];
          if (mfiAuthPSMCharacteristic)
          {
          }

          else
          {
            uUID5 = [v14 UUID];
            v37 = [CBUUID UUIDWithString:v55];
            v38 = [uUID5 isEqual:v37];

            if (v38)
            {
              [(MFiClientService *)self setMfiAuthPSMCharacteristic:v14];
              if (([v14 properties] & 2) != 0)
              {
                [v60 readValueForCharacteristic:v14];
              }
            }
          }

          continue;
        }

        uUID6 = [v14 UUID];
        v33 = [CBUUID UUIDWithString:v56];
        v34 = [uUID6 isEqual:v33];

        if (!v34)
        {
          goto LABEL_29;
        }

        [(MFiClientService *)self setAccessoryAttributesCharacteristic:v14];
LABEL_27:
        if (([v14 properties] & 0x20) != 0)
        {
          [v60 setNotifyValue:1 forCharacteristic:v14];
        }
      }

      v11 = [characteristics countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (!v11)
      {
LABEL_36:

        peripheralCopy = v60;
        break;
      }
    }
  }

  manager = [(ClientService *)self manager];
  v40 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
  v41 = [manager clientServiceForUUID:v40];

  v68[0] = kACCInfo_Name;
  name = [peripheralCopy name];
  v69[0] = name;
  v68[1] = kACCInfo_Model;
  modelNumber = [v41 modelNumber];
  v69[1] = modelNumber;
  v68[2] = kACCInfo_SerialNumber;
  serialNumber = [v41 serialNumber];
  v69[2] = serialNumber;
  v68[3] = kACCInfo_FirmwareVersionActive;
  firmwareRevision = [v41 firmwareRevision];
  v69[3] = firmwareRevision;
  v68[4] = kACCInfo_HardwareVersion;
  hardwareRevision = [v41 hardwareRevision];
  v69[4] = hardwareRevision;
  v68[5] = kACCInfo_Manufacturer;
  manufacturerName = [v41 manufacturerName];
  v69[5] = manufacturerName;
  v48 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:6];

  v49 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v48;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending DI dictionary %@", buf, 0xCu);
  }

  v50 = +[ConnectionManager instance];
  [v50 setMFiAccessoryInfo:v48 forPeripheral:peripheralCopy];

  v51 = +[NSNotificationCenter defaultCenter];
  peripheral = [(ClientService *)self peripheral];
  [v51 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:peripheral];

  [(ClientService *)self notifyDidStart];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (!errorCopy)
  {
    mfiAuthPSMCharacteristic = [(MFiClientService *)self mfiAuthPSMCharacteristic];
    v13 = mfiAuthPSMCharacteristic;
    if (mfiAuthPSMCharacteristic == characteristicCopy)
    {
      mfiAuthPSMCharacteristic2 = [(MFiClientService *)self mfiAuthPSMCharacteristic];
      value = [mfiAuthPSMCharacteristic2 value];

      if (value)
      {
        mfiAuthPSMCharacteristic3 = [(MFiClientService *)self mfiAuthPSMCharacteristic];
        value2 = [mfiAuthPSMCharacteristic3 value];
        v14 = [DataInputStream inputStreamWithData:value2 byteOrder:1];

        v24 = 0;
        v22 = [v14 readUint16:&v24];
        v23 = qword_1000DDBC8;
        if (v22 && (v24 & 0xFF80) == 0x80)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v26 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Opening MFi Auth L2CAP channel with PSM %d", buf, 8u);
          }

          [peripheralCopy openL2CAPChannel:v24];
        }

        else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_1000749C0(v23);
        }

        goto LABEL_7;
      }
    }

    else
    {
    }

    v14 = +[ConnectionManager instance];
    uUID = [characteristicCopy UUID];
    uUIDString = [uUID UUIDString];
    value3 = [characteristicCopy value];
    [v14 setIAPProperty:uUIDString withValue:value3 forPeripheral:peripheralCopy];

LABEL_7:
    goto LABEL_8;
  }

  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000748DC(v11, characteristicCopy, errorCopy);
  }

LABEL_8:
}

@end