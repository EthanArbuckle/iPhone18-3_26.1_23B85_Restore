@interface TBSInterface
- (TBSInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (void)didRequestCallListRead;
- (void)handleCallControlPointResultUpdate;
- (void)handleCallStateUpdate;
- (void)handleTerminationReasonUpdate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation TBSInterface

- (TBSInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v7.receiver = self;
  v7.super_class = TBSInterface;
  v4 = [(ServiceInterface *)&v7 initWithPeripheral:peripheral service:service];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
  }

  return v5;
}

- (void)start
{
  v23.receiver = self;
  v23.super_class = TBSInterface;
  [(ServiceInterface *)&v23 start];
  peripheral = [(ServiceInterface *)self peripheral];
  state = [peripheral state];

  if (state == 2)
  {
    service = [(ServiceInterface *)self service];

    if (service)
    {
      v22 = [CBUUID UUIDWithString:CBUUIDBearerProviderNameCharacteristicString];
      v24[0] = v22;
      v21 = [CBUUID UUIDWithString:CBUUIDBearerUciCharacteristicString];
      v24[1] = v21;
      v20 = [CBUUID UUIDWithString:CBUUIDBearerTechnologyCharacteristicString];
      v24[2] = v20;
      v19 = [CBUUID UUIDWithString:CBUUIDBearerUriSchemesSupportedListCharacteristicString];
      v24[3] = v19;
      v6 = [CBUUID UUIDWithString:CBUUIDBearerListCurrentCallsCharacteristicString];
      v24[4] = v6;
      v7 = [CBUUID UUIDWithString:CBUUIDContentControlIdCharacteristicString];
      v24[5] = v7;
      v8 = [CBUUID UUIDWithString:CBUUIDStatusFlagsCharacteristicString];
      v24[6] = v8;
      v9 = [CBUUID UUIDWithString:CBUUIDCallStateCharacteristicString];
      v24[7] = v9;
      v10 = [CBUUID UUIDWithString:CBUUIDCallControlPointCharacteristicString];
      v24[8] = v10;
      v11 = [CBUUID UUIDWithString:CBUUIDCallControlPointOptionalOpcodesCharacteristicString];
      v24[9] = v11;
      v12 = [CBUUID UUIDWithString:CBUUIDTerminationReasonCharacteristicString];
      v24[10] = v12;
      v13 = [CBUUID UUIDWithString:CBUUIDIncomingCallCharacteristicString];
      v24[11] = v13;
      v14 = [NSArray arrayWithObjects:v24 count:12];

      peripheral2 = [(ServiceInterface *)self peripheral];
      service2 = [(ServiceInterface *)self service];
      [peripheral2 discoverCharacteristics:v14 forService:service2];
    }

    else
    {
      v18 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F6B0(v18);
      }
    }
  }

  else
  {
    v17 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F62C(v17);
    }
  }
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = TBSInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  if (!error)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = [service characteristics];
    v9 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
    if (!v9)
    {
      goto LABEL_65;
    }

    v11 = v9;
    v12 = *v81;
    v78 = CBUUIDBearerProviderNameCharacteristicString;
    v77 = CBUUIDBearerUciCharacteristicString;
    v76 = CBUUIDBearerTechnologyCharacteristicString;
    v75 = CBUUIDBearerUriSchemesSupportedListCharacteristicString;
    v74 = CBUUIDBearerListCurrentCallsCharacteristicString;
    v73 = CBUUIDContentControlIdCharacteristicString;
    v72 = CBUUIDStatusFlagsCharacteristicString;
    v71 = CBUUIDCallStateCharacteristicString;
    v70 = CBUUIDCallControlPointCharacteristicString;
    v69 = CBUUIDCallControlPointOptionalOpcodesCharacteristicString;
    v68 = CBUUIDTerminationReasonCharacteristicString;
    v67 = CBUUIDIncomingCallCharacteristicString;
    *&v10 = 136315394;
    v66 = v10;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v81 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v80 + 1) + 8 * v13);
        bearerProviderNameCharacteristic = [(TBSInterface *)self bearerProviderNameCharacteristic];
        if (bearerProviderNameCharacteristic)
        {
        }

        else
        {
          uUID = [v14 UUID];
          v17 = [CBUUID UUIDWithString:v78];
          v18 = [uUID isEqual:v17];

          if (v18)
          {
            [(TBSInterface *)self setBearerProviderNameCharacteristic:v14];
            goto LABEL_57;
          }
        }

        bearerUniformCallerIdentifierCharacteristic = [(TBSInterface *)self bearerUniformCallerIdentifierCharacteristic];
        if (bearerUniformCallerIdentifierCharacteristic)
        {
        }

        else
        {
          uUID2 = [v14 UUID];
          v21 = [CBUUID UUIDWithString:v77];
          v22 = [uUID2 isEqual:v21];

          if (v22)
          {
            [(TBSInterface *)self setBearerUniformCallerIdentifierCharacteristic:v14];
            goto LABEL_47;
          }
        }

        bearerTechnologyCharacteristic = [(TBSInterface *)self bearerTechnologyCharacteristic];
        if (bearerTechnologyCharacteristic)
        {
        }

        else
        {
          uUID3 = [v14 UUID];
          v25 = [CBUUID UUIDWithString:v76];
          v26 = [uUID3 isEqual:v25];

          if (v26)
          {
            [(TBSInterface *)self setBearerTechnologyCharacteristic:v14];
            goto LABEL_57;
          }
        }

        bearerUriSchemesSupportedListCharacteristic = [(TBSInterface *)self bearerUriSchemesSupportedListCharacteristic];
        if (bearerUriSchemesSupportedListCharacteristic)
        {
        }

        else
        {
          uUID4 = [v14 UUID];
          v29 = [CBUUID UUIDWithString:v75];
          v30 = [uUID4 isEqual:v29];

          if (v30)
          {
            [(TBSInterface *)self setBearerUriSchemesSupportedListCharacteristic:v14];
            goto LABEL_47;
          }
        }

        bearerListCurrentCallsCharacteristic = [(TBSInterface *)self bearerListCurrentCallsCharacteristic];
        if (bearerListCurrentCallsCharacteristic)
        {
        }

        else
        {
          uUID5 = [v14 UUID];
          v33 = [CBUUID UUIDWithString:v74];
          v34 = [uUID5 isEqual:v33];

          if (v34)
          {
            [(TBSInterface *)self setBearerListCurrentCallsCharacteristic:v14];
            goto LABEL_57;
          }
        }

        contentControlIdCharacteristic = [(TBSInterface *)self contentControlIdCharacteristic];
        if (contentControlIdCharacteristic)
        {
        }

        else
        {
          uUID6 = [v14 UUID];
          v37 = [CBUUID UUIDWithString:v73];
          v38 = [uUID6 isEqual:v37];

          if (v38)
          {
            [(TBSInterface *)self setContentControlIdCharacteristic:v14];
            goto LABEL_47;
          }
        }

        statusFlagsCharacteristic = [(TBSInterface *)self statusFlagsCharacteristic];
        if (statusFlagsCharacteristic)
        {
        }

        else
        {
          uUID7 = [v14 UUID];
          v41 = [CBUUID UUIDWithString:v72];
          v42 = [uUID7 isEqual:v41];

          if (v42)
          {
            [(TBSInterface *)self setStatusFlagsCharacteristic:v14];
            goto LABEL_57;
          }
        }

        callStateCharacteristic = [(TBSInterface *)self callStateCharacteristic];
        if (callStateCharacteristic)
        {
        }

        else
        {
          uUID8 = [v14 UUID];
          v45 = [CBUUID UUIDWithString:v71];
          v46 = [uUID8 isEqual:v45];

          if (v46)
          {
            [(TBSInterface *)self setCallStateCharacteristic:v14];
            goto LABEL_57;
          }
        }

        callControlPointCharacteristic = [(TBSInterface *)self callControlPointCharacteristic];
        if (callControlPointCharacteristic)
        {
        }

        else
        {
          uUID9 = [v14 UUID];
          v49 = [CBUUID UUIDWithString:v70];
          v50 = [uUID9 isEqual:v49];

          if (v50)
          {
            [(TBSInterface *)self setCallControlPointCharacteristic:v14];
            goto LABEL_59;
          }
        }

        callControlPointOptionalOpcodesCharacteristic = [(TBSInterface *)self callControlPointOptionalOpcodesCharacteristic];
        if (callControlPointOptionalOpcodesCharacteristic)
        {

LABEL_49:
          terminationReasonCharacteristic = [(TBSInterface *)self terminationReasonCharacteristic];
          if (terminationReasonCharacteristic)
          {

            goto LABEL_53;
          }

          uUID10 = [v14 UUID];
          v57 = [CBUUID UUIDWithString:v68];
          v58 = [uUID10 isEqual:v57];

          if (v58)
          {
            [(TBSInterface *)self setTerminationReasonCharacteristic:v14];
LABEL_59:
            if (([v14 properties] & 0x10) != 0)
            {
              [peripheralCopy setNotifyValue:1 forCharacteristic:v14];
            }

            goto LABEL_63;
          }

LABEL_53:
          incomingCallCharacteristic = [(TBSInterface *)self incomingCallCharacteristic];
          if (incomingCallCharacteristic)
          {

LABEL_61:
            v63 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              v64 = v63;
              uUID11 = [v14 UUID];
              *buf = v66;
              v85 = "[TBSInterface peripheral:didDiscoverCharacteristicsForService:error:]";
              v86 = 2112;
              v87 = uUID11;
              _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%s : not matching characteristic %@ found!", buf, 0x16u);
            }

            goto LABEL_63;
          }

          uUID12 = [v14 UUID];
          v61 = [CBUUID UUIDWithString:v67];
          v62 = [uUID12 isEqual:v61];

          if (!v62)
          {
            goto LABEL_61;
          }

          [(TBSInterface *)self setIncomingCallCharacteristic:v14];
LABEL_57:
          if (([v14 properties] & 2) != 0)
          {
            [peripheralCopy readValueForCharacteristic:v14];
          }

          goto LABEL_59;
        }

        uUID13 = [v14 UUID];
        v53 = [CBUUID UUIDWithString:v69];
        v54 = [uUID13 isEqual:v53];

        if (!v54)
        {
          goto LABEL_49;
        }

        [(TBSInterface *)self setCallControlPointOptionalOpcodesCharacteristic:v14];
LABEL_47:
        if (([v14 properties] & 2) != 0)
        {
          [peripheralCopy readValueForCharacteristic:v14];
        }

LABEL_63:
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
      if (!v11)
      {
LABEL_65:

        [(ServiceInterface *)self notifyDidStart];
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
    name = [peripheralCopy name];
    uUID = [characteristicCopy UUID];
    v19 = 136315650;
    v20 = "[TBSInterface peripheral:didUpdateValueForCharacteristic:error:]";
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = uUID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : %@ didUpdateValueForCharacteristic called for characteristic %@", &v19, 0x20u);
  }

  if (!errorCopy)
  {
    callStateCharacteristic = [(TBSInterface *)self callStateCharacteristic];

    if (callStateCharacteristic == characteristicCopy)
    {
      [(TBSInterface *)self handleCallStateUpdate];
    }

    else
    {
      callControlPointCharacteristic = [(TBSInterface *)self callControlPointCharacteristic];

      if (callControlPointCharacteristic == characteristicCopy)
      {
        [(TBSInterface *)self handleCallControlPointResultUpdate];
      }

      else
      {
        callControlPointOptionalOpcodesCharacteristic = [(TBSInterface *)self callControlPointOptionalOpcodesCharacteristic];

        if (callControlPointOptionalOpcodesCharacteristic != characteristicCopy)
        {
          terminationReasonCharacteristic = [(TBSInterface *)self terminationReasonCharacteristic];

          if (terminationReasonCharacteristic == characteristicCopy)
          {
            [(TBSInterface *)self handleTerminationReasonUpdate];
          }

          else
          {
            [(TBSInterface *)self incomingCallCharacteristic];
          }
        }
      }
    }
  }
}

- (void)handleCallStateUpdate
{
  callStateCharacteristic = [(TBSInterface *)self callStateCharacteristic];
  value = [callStateCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v12 = 0;
  v11 = -1;
  v10 = 0;
  v5 = +[NSMutableArray array];
  if ([v4 readUint8:&v12])
  {
    *&v6 = 136315906;
    v9 = v6;
    do
    {
      if (![v4 readUint8:{&v11, v9}] || !objc_msgSend(v4, "readUint8:", &v10))
      {
        break;
      }

      v7 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v9;
        v14 = "[TBSInterface handleCallStateUpdate]";
        v15 = 1024;
        v16 = v12;
        v17 = 1024;
        v18 = v11;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s : idx %d | state %d | flags %d", buf, 0x1Eu);
      }

      v8 = objc_alloc_init(CallInfo);
      [(CallInfo *)v8 setCallState:v11];
      [(CallInfo *)v8 setSharedCallIdx:v12];
      [v5 addObject:v8];
    }

    while (([v4 readUint8:&v12] & 1) != 0);
  }
}

- (void)handleTerminationReasonUpdate
{
  terminationReasonCharacteristic = [(TBSInterface *)self terminationReasonCharacteristic];
  value = [terminationReasonCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v6 = 0;
  v5 = -1;
  [v4 readUint8:&v6];
  [v4 readUint8:&v5];
}

- (void)handleCallControlPointResultUpdate
{
  callControlPointCharacteristic = [(TBSInterface *)self callControlPointCharacteristic];
  value = [callControlPointCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v6 = -1;
  [v4 readUint8:&v6];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[TBSInterface handleCallControlPointResultUpdate]";
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s : Call control point write with result %d", buf, 0x12u);
  }
}

- (void)didRequestCallListRead
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "xpc session requested call list read", v3, 2u);
  }
}

@end