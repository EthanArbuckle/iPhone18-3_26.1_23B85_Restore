@interface MFiClientService
- (MFiClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)start;
@end

@implementation MFiClientService

- (MFiClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8.receiver = self;
  v8.super_class = MFiClientService;
  v5 = [(ClientService *)&v8 initWithManager:a3 peripheral:a4 service:a5];
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

  v10 = [(ClientService *)self peripheral];
  v11 = [(ClientService *)self service];
  [v10 discoverCharacteristics:v9 forService:v11];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v54 = a4;
  v53 = a5;
  if (!v53)
  {
    v60 = v8;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v9 = [v54 characteristics];
    v10 = [v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        v15 = [(MFiClientService *)self teamIDCharacteristic];
        if (v15)
        {
        }

        else
        {
          v16 = [v14 UUID];
          v17 = [CBUUID UUIDWithString:v61];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            [(MFiClientService *)self setTeamIDCharacteristic:v14];
            goto LABEL_27;
          }
        }

        v19 = [(MFiClientService *)self protocolStringCharacteristic];
        if (v19)
        {
        }

        else
        {
          v20 = [v14 UUID];
          v21 = [CBUUID UUIDWithString:v59];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
            [(MFiClientService *)self setProtocolStringCharacteristic:v14];
            goto LABEL_27;
          }
        }

        v23 = [(MFiClientService *)self commandCharacteristic];
        if (v23)
        {
        }

        else
        {
          v24 = [v14 UUID];
          v25 = [CBUUID UUIDWithString:v58];
          v26 = [v24 isEqual:v25];

          if (v26)
          {
            [(MFiClientService *)self setCommandCharacteristic:v14];
            goto LABEL_27;
          }
        }

        v27 = [(MFiClientService *)self accessoryTypeCharacteristic];
        if (v27)
        {
        }

        else
        {
          v28 = [v14 UUID];
          v29 = [CBUUID UUIDWithString:v57];
          v30 = [v28 isEqual:v29];

          if (v30)
          {
            [(MFiClientService *)self setAccessoryTypeCharacteristic:v14];
            goto LABEL_27;
          }
        }

        v31 = [(MFiClientService *)self accessoryAttributesCharacteristic];
        if (v31)
        {

LABEL_29:
          v35 = [(MFiClientService *)self mfiAuthPSMCharacteristic];
          if (v35)
          {
          }

          else
          {
            v36 = [v14 UUID];
            v37 = [CBUUID UUIDWithString:v55];
            v38 = [v36 isEqual:v37];

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

        v32 = [v14 UUID];
        v33 = [CBUUID UUIDWithString:v56];
        v34 = [v32 isEqual:v33];

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

      v11 = [v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (!v11)
      {
LABEL_36:

        v8 = v60;
        break;
      }
    }
  }

  v39 = [(ClientService *)self manager];
  v40 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
  v41 = [v39 clientServiceForUUID:v40];

  v68[0] = kACCInfo_Name;
  v42 = [v8 name];
  v69[0] = v42;
  v68[1] = kACCInfo_Model;
  v43 = [v41 modelNumber];
  v69[1] = v43;
  v68[2] = kACCInfo_SerialNumber;
  v44 = [v41 serialNumber];
  v69[2] = v44;
  v68[3] = kACCInfo_FirmwareVersionActive;
  v45 = [v41 firmwareRevision];
  v69[3] = v45;
  v68[4] = kACCInfo_HardwareVersion;
  v46 = [v41 hardwareRevision];
  v69[4] = v46;
  v68[5] = kACCInfo_Manufacturer;
  v47 = [v41 manufacturerName];
  v69[5] = v47;
  v48 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:6];

  v49 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v48;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending DI dictionary %@", buf, 0xCu);
  }

  v50 = +[ConnectionManager instance];
  [v50 setMFiAccessoryInfo:v48 forPeripheral:v8];

  v51 = +[NSNotificationCenter defaultCenter];
  v52 = [(ClientService *)self peripheral];
  [v51 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:v52];

  [(ClientService *)self notifyDidStart];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v12 = [(MFiClientService *)self mfiAuthPSMCharacteristic];
    v13 = v12;
    if (v12 == v9)
    {
      v18 = [(MFiClientService *)self mfiAuthPSMCharacteristic];
      v19 = [v18 value];

      if (v19)
      {
        v20 = [(MFiClientService *)self mfiAuthPSMCharacteristic];
        v21 = [v20 value];
        v14 = [DataInputStream inputStreamWithData:v21 byteOrder:1];

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

          [v8 openL2CAPChannel:v24];
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
    v15 = [v9 UUID];
    v16 = [v15 UUIDString];
    v17 = [v9 value];
    [v14 setIAPProperty:v16 withValue:v17 forPeripheral:v8];

LABEL_7:
    goto LABEL_8;
  }

  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000748DC(v11, v9, v10);
  }

LABEL_8:
}

@end