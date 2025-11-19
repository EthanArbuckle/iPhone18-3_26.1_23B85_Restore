@interface TBSInterface
- (TBSInterface)initWithPeripheral:(id)a3 service:(id)a4;
- (void)didRequestCallListRead;
- (void)handleCallControlPointResultUpdate;
- (void)handleCallStateUpdate;
- (void)handleTerminationReasonUpdate;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation TBSInterface

- (TBSInterface)initWithPeripheral:(id)a3 service:(id)a4
{
  v7.receiver = self;
  v7.super_class = TBSInterface;
  v4 = [(ServiceInterface *)&v7 initWithPeripheral:a3 service:a4];
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
  v3 = [(ServiceInterface *)self peripheral];
  v4 = [v3 state];

  if (v4 == 2)
  {
    v5 = [(ServiceInterface *)self service];

    if (v5)
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

      v15 = [(ServiceInterface *)self peripheral];
      v16 = [(ServiceInterface *)self service];
      [v15 discoverCharacteristics:v14 forService:v16];
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

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  if (!a5)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = [a4 characteristics];
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
        v15 = [(TBSInterface *)self bearerProviderNameCharacteristic];
        if (v15)
        {
        }

        else
        {
          v16 = [v14 UUID];
          v17 = [CBUUID UUIDWithString:v78];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            [(TBSInterface *)self setBearerProviderNameCharacteristic:v14];
            goto LABEL_57;
          }
        }

        v19 = [(TBSInterface *)self bearerUniformCallerIdentifierCharacteristic];
        if (v19)
        {
        }

        else
        {
          v20 = [v14 UUID];
          v21 = [CBUUID UUIDWithString:v77];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
            [(TBSInterface *)self setBearerUniformCallerIdentifierCharacteristic:v14];
            goto LABEL_47;
          }
        }

        v23 = [(TBSInterface *)self bearerTechnologyCharacteristic];
        if (v23)
        {
        }

        else
        {
          v24 = [v14 UUID];
          v25 = [CBUUID UUIDWithString:v76];
          v26 = [v24 isEqual:v25];

          if (v26)
          {
            [(TBSInterface *)self setBearerTechnologyCharacteristic:v14];
            goto LABEL_57;
          }
        }

        v27 = [(TBSInterface *)self bearerUriSchemesSupportedListCharacteristic];
        if (v27)
        {
        }

        else
        {
          v28 = [v14 UUID];
          v29 = [CBUUID UUIDWithString:v75];
          v30 = [v28 isEqual:v29];

          if (v30)
          {
            [(TBSInterface *)self setBearerUriSchemesSupportedListCharacteristic:v14];
            goto LABEL_47;
          }
        }

        v31 = [(TBSInterface *)self bearerListCurrentCallsCharacteristic];
        if (v31)
        {
        }

        else
        {
          v32 = [v14 UUID];
          v33 = [CBUUID UUIDWithString:v74];
          v34 = [v32 isEqual:v33];

          if (v34)
          {
            [(TBSInterface *)self setBearerListCurrentCallsCharacteristic:v14];
            goto LABEL_57;
          }
        }

        v35 = [(TBSInterface *)self contentControlIdCharacteristic];
        if (v35)
        {
        }

        else
        {
          v36 = [v14 UUID];
          v37 = [CBUUID UUIDWithString:v73];
          v38 = [v36 isEqual:v37];

          if (v38)
          {
            [(TBSInterface *)self setContentControlIdCharacteristic:v14];
            goto LABEL_47;
          }
        }

        v39 = [(TBSInterface *)self statusFlagsCharacteristic];
        if (v39)
        {
        }

        else
        {
          v40 = [v14 UUID];
          v41 = [CBUUID UUIDWithString:v72];
          v42 = [v40 isEqual:v41];

          if (v42)
          {
            [(TBSInterface *)self setStatusFlagsCharacteristic:v14];
            goto LABEL_57;
          }
        }

        v43 = [(TBSInterface *)self callStateCharacteristic];
        if (v43)
        {
        }

        else
        {
          v44 = [v14 UUID];
          v45 = [CBUUID UUIDWithString:v71];
          v46 = [v44 isEqual:v45];

          if (v46)
          {
            [(TBSInterface *)self setCallStateCharacteristic:v14];
            goto LABEL_57;
          }
        }

        v47 = [(TBSInterface *)self callControlPointCharacteristic];
        if (v47)
        {
        }

        else
        {
          v48 = [v14 UUID];
          v49 = [CBUUID UUIDWithString:v70];
          v50 = [v48 isEqual:v49];

          if (v50)
          {
            [(TBSInterface *)self setCallControlPointCharacteristic:v14];
            goto LABEL_59;
          }
        }

        v51 = [(TBSInterface *)self callControlPointOptionalOpcodesCharacteristic];
        if (v51)
        {

LABEL_49:
          v55 = [(TBSInterface *)self terminationReasonCharacteristic];
          if (v55)
          {

            goto LABEL_53;
          }

          v56 = [v14 UUID];
          v57 = [CBUUID UUIDWithString:v68];
          v58 = [v56 isEqual:v57];

          if (v58)
          {
            [(TBSInterface *)self setTerminationReasonCharacteristic:v14];
LABEL_59:
            if (([v14 properties] & 0x10) != 0)
            {
              [v8 setNotifyValue:1 forCharacteristic:v14];
            }

            goto LABEL_63;
          }

LABEL_53:
          v59 = [(TBSInterface *)self incomingCallCharacteristic];
          if (v59)
          {

LABEL_61:
            v63 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              v64 = v63;
              v65 = [v14 UUID];
              *buf = v66;
              v85 = "[TBSInterface peripheral:didDiscoverCharacteristicsForService:error:]";
              v86 = 2112;
              v87 = v65;
              _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%s : not matching characteristic %@ found!", buf, 0x16u);
            }

            goto LABEL_63;
          }

          v60 = [v14 UUID];
          v61 = [CBUUID UUIDWithString:v67];
          v62 = [v60 isEqual:v61];

          if (!v62)
          {
            goto LABEL_61;
          }

          [(TBSInterface *)self setIncomingCallCharacteristic:v14];
LABEL_57:
          if (([v14 properties] & 2) != 0)
          {
            [v8 readValueForCharacteristic:v14];
          }

          goto LABEL_59;
        }

        v52 = [v14 UUID];
        v53 = [CBUUID UUIDWithString:v69];
        v54 = [v52 isEqual:v53];

        if (!v54)
        {
          goto LABEL_49;
        }

        [(TBSInterface *)self setCallControlPointOptionalOpcodesCharacteristic:v14];
LABEL_47:
        if (([v14 properties] & 2) != 0)
        {
          [v8 readValueForCharacteristic:v14];
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

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 name];
    v14 = [v9 UUID];
    v19 = 136315650;
    v20 = "[TBSInterface peripheral:didUpdateValueForCharacteristic:error:]";
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : %@ didUpdateValueForCharacteristic called for characteristic %@", &v19, 0x20u);
  }

  if (!v10)
  {
    v15 = [(TBSInterface *)self callStateCharacteristic];

    if (v15 == v9)
    {
      [(TBSInterface *)self handleCallStateUpdate];
    }

    else
    {
      v16 = [(TBSInterface *)self callControlPointCharacteristic];

      if (v16 == v9)
      {
        [(TBSInterface *)self handleCallControlPointResultUpdate];
      }

      else
      {
        v17 = [(TBSInterface *)self callControlPointOptionalOpcodesCharacteristic];

        if (v17 != v9)
        {
          v18 = [(TBSInterface *)self terminationReasonCharacteristic];

          if (v18 == v9)
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
  v2 = [(TBSInterface *)self callStateCharacteristic];
  v3 = [v2 value];
  v4 = [DataInputStream inputStreamWithData:v3 byteOrder:1];

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
  v2 = [(TBSInterface *)self terminationReasonCharacteristic];
  v3 = [v2 value];
  v4 = [DataInputStream inputStreamWithData:v3 byteOrder:1];

  v6 = 0;
  v5 = -1;
  [v4 readUint8:&v6];
  [v4 readUint8:&v5];
}

- (void)handleCallControlPointResultUpdate
{
  v2 = [(TBSInterface *)self callControlPointCharacteristic];
  v3 = [v2 value];
  v4 = [DataInputStream inputStreamWithData:v3 byteOrder:1];

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