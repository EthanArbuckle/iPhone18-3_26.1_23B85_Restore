@interface CSISInterface
+ (BOOL)ResolveRSIWithSirk:(id)sirk withSirk:(id)withSirk;
+ (id)csisSdf:(id)sdf withSirk:(id)sirk;
- (CSISInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation CSISInterface

- (CSISInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v7.receiver = self;
  v7.super_class = CSISInterface;
  v4 = [(ServiceInterface *)&v7 initWithPeripheral:peripheral service:service];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
    [(CSISInterface *)v5 setCoordinateSetSize:255];
    [(CSISInterface *)v5 setRankInSet:255];
    [(CSISInterface *)v5 setLockState:255];
    [(CSISInterface *)v5 setSetIdentityResolvingKey:0];
  }

  return v5;
}

- (void)start
{
  v11.receiver = self;
  v11.super_class = CSISInterface;
  [(ServiceInterface *)&v11 start];
  v3 = [CBUUID UUIDWithString:CBUUIDCoordinatedSetIdServiceString];
  v12[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDCoordinatedSetSizeCharacteristicString];
  v12[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDSetIdResolvingKeyCharacteristicString];
  v12[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDSetMemberLockCharacteristicString];
  v12[3] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDSetMemberRankCharacteristicString];
  v12[4] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:5];

  peripheral = [(ServiceInterface *)self peripheral];
  service = [(ServiceInterface *)self service];
  [peripheral discoverCharacteristics:v8 forService:service];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = CSISInterface;
  [(ServiceInterface *)&v2 stop];
}

+ (id)csisSdf:(id)sdf withSirk:(id)sirk
{
  sirkCopy = sirk;
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  [sdf getBytes:v13 length:16];
  [sirkCopy getBytes:v12 length:16];
  v6 = 0;
  v7 = 0xF00000000;
  do
  {
    v8 = *(v13 + v6);
    *(v13 + v6) = *(v13 + HIDWORD(v7));
    *(v13 + HIDWORD(v7)) = v8;
    ++v6;
    v7 -= 0x100000000;
  }

  while (v6 != 8);
  sub_100025574(v13, v12, v11);
  v9 = [NSData dataWithBytes:v11 length:16];

  return v9;
}

+ (BOOL)ResolveRSIWithSirk:(id)sirk withSirk:(id)withSirk
{
  WORD2(v7) = 0;
  LODWORD(v7) = 0;
  key[0] = 0;
  key[1] = 0;
  withSirkCopy = withSirk;
  [sirk getBytes:&v7 length:6];
  [withSirkCopy getBytes:key length:{16, v7}];

  return sub_1000256EC(&v7, key);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService %@", buf, 0xCu);
  }

  if (!errorCopy)
  {
    v32 = serviceCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [serviceCopy characteristics];
    v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      v14 = CBUUIDSetIdResolvingKeyCharacteristicString;
      v35 = CBUUIDCoordinatedSetSizeCharacteristicString;
      v34 = CBUUIDSetMemberLockCharacteristicString;
      v33 = CBUUIDSetMemberRankCharacteristicString;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          v17 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            uUID = [v16 UUID];
            *buf = 138412290;
            v44 = uUID;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService Characteristic %@", buf, 0xCu);
          }

          uUID2 = [v16 UUID];
          v21 = [CBUUID UUIDWithString:v14];
          v22 = [uUID2 isEqual:v21];

          if (v22)
          {
            [(CSISInterface *)self setSetSIRK:v16];
          }

          else
          {
            uUID3 = [v16 UUID];
            v24 = [CBUUID UUIDWithString:v35];
            v25 = [uUID3 isEqual:v24];

            if (v25)
            {
              [(CSISInterface *)self setSetSize:v16];
            }

            else
            {
              uUID4 = [v16 UUID];
              v27 = [CBUUID UUIDWithString:v34];
              v28 = [uUID4 isEqual:v27];

              if (v28)
              {
                [(CSISInterface *)self setSetLock:v16];
              }

              else
              {
                uUID5 = [v16 UUID];
                v30 = [CBUUID UUIDWithString:v33];
                v31 = [uUID5 isEqual:v30];

                if (v31)
                {
                  [(CSISInterface *)self setSetRank:v16];
                }
              }
            }
          }

          if (([v16 properties] & 0x10) != 0)
          {
            [peripheralCopy setNotifyValue:1 forCharacteristic:v16];
          }

          [peripheralCopy readValueForCharacteristic:v16];
        }

        v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v12);
    }

    [(ServiceInterface *)self notifyDidStart];
    errorCopy = 0;
    serviceCopy = v32;
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  setLock = [(CSISInterface *)self setLock];

  if (setLock == characteristicCopy)
  {
    setLock2 = [(CSISInterface *)self setLock];
    value = [setLock2 value];
    v15 = [DataInputStream inputStreamWithData:value];

    LOBYTE(v60[0]) = 0;
    if ([v15 readUint8:v60])
    {
      v22 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        peripheral = [(ServiceInterface *)self peripheral];
        name = [peripheral name];
        *buf = 138412546;
        v57 = name;
        v58 = 1024;
        LODWORD(v59) = LOBYTE(v60[0]);
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updated Lock state for member %@: %u", buf, 0x12u);
      }

      [(CSISInterface *)self setLockState:LOBYTE(v60[0])];
    }

    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (!serviceEventHandler)
    {
      goto LABEL_38;
    }

    v27 = [NSNumber numberWithUnsignedChar:LOBYTE(v60[0])];
    serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
    serviceEventHandler2[2](serviceEventHandler2, 23, v27);
    goto LABEL_37;
  }

  setSIRK = [(CSISInterface *)self setSIRK];

  if (setSIRK == characteristicCopy)
  {
    v53 = 0;
    setSIRK2 = [(CSISInterface *)self setSIRK];
    value2 = [setSIRK2 value];
    v15 = [DataInputStream inputStreamWithData:value2 byteOrder:1];

    [v15 readUint8:&v53];
    [(CSISInterface *)self setEncryptedSirk:v53];
    [(CSISInterface *)self setSetIdentityResolvingKey:0];
    v31 = objc_alloc_init(NSMutableData);
    [(CSISInterface *)self setSetIdentityResolvingKey:v31];

    setIdentityResolvingKey = [(CSISInterface *)self setIdentityResolvingKey];
    [v15 readNumBytes:16 toData:setIdentityResolvingKey];

    if (![(CSISInterface *)self encryptedSirk])
    {
      v33 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SIRK - encrypted", buf, 2u);
      }

      v34 = +[ConnectionManager instance];
      peripheral2 = [(ServiceInterface *)self peripheral];
      v36 = [v34 retrievePairingInfo:peripheral2];

      v37 = [v36 objectForKeyedSubscript:@"kCBMsgArgRemoteLTK"];
      if (!*[v37 bytes])
      {
        v38 = [v36 objectForKeyedSubscript:@"kCBMsgArgLocalLTK"];

        v37 = v38;
        if (!*[v38 bytes])
        {
          goto LABEL_27;
        }
      }

      setIdentityResolvingKey2 = [(CSISInterface *)self setIdentityResolvingKey];
      v40 = [CSISInterface csisSdf:v37 withSirk:setIdentityResolvingKey2];

      if (v40)
      {
        setIdentityResolvingKey3 = [(CSISInterface *)self setIdentityResolvingKey];
        [setIdentityResolvingKey3 setData:v40];
      }

      else
      {
LABEL_27:
        v45 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "LTK not available to decrypt to encrypted SIRK", buf, 2u);
        }
      }
    }

    v27 = [peripheralCopy customProperty:@"SirkInDevCache"];
    v60[0] = 0;
    v60[1] = 0;
    serviceEventHandler2 = objc_alloc_init(NSMutableString);
    setIdentityResolvingKey4 = [(CSISInterface *)self setIdentityResolvingKey];
    [setIdentityResolvingKey4 getBytes:v60 length:16];

    for (i = 0; i != 16; ++i)
    {
      [serviceEventHandler2 appendFormat:@"%02x", *(v60 + i)];
    }

    if (v27 && ([v27 isEqualToString:serviceEventHandler2] & 1) != 0)
    {
      v48 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v57 = v27;
        v58 = 2112;
        v59 = peripheralCopy;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "stored SIRK %@ of peripheral %@", buf, 0x16u);
      }
    }

    else
    {
      [peripheralCopy setCustomProperty:@"SirkInDevCache" value:serviceEventHandler2];
    }

LABEL_37:

    goto LABEL_38;
  }

  setRank = [(CSISInterface *)self setRank];

  if (setRank == characteristicCopy)
  {
    LOBYTE(v60[0]) = 0;
    setRank2 = [(CSISInterface *)self setRank];
    value3 = [setRank2 value];
    v15 = [DataInputStream inputStreamWithData:value3];

    if ([v15 readUint8:v60])
    {
      [(CSISInterface *)self setRankInSet:LOBYTE(v60[0])];
    }

    v44 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v57) = LOBYTE(v60[0]);
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "setRank updated characteristic %u ", buf, 8u);
    }
  }

  else
  {
    setSize = [(CSISInterface *)self setSize];

    if (setSize != characteristicCopy)
    {
      goto LABEL_39;
    }

    LOBYTE(v60[0]) = 0;
    setSize2 = [(CSISInterface *)self setSize];
    value4 = [setSize2 value];
    v15 = [DataInputStream inputStreamWithData:value4];

    if ([v15 readUint8:v60])
    {
      [(CSISInterface *)self setCoordinateSetSize:LOBYTE(v60[0])];
    }

    v16 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v57) = LOBYTE(v60[0]);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "coordinateSetSize updated characteristic %u ", buf, 8u);
    }

    v54 = @"kCoordinatedSetSize";
    v17 = [NSNumber numberWithUnsignedChar:LOBYTE(v60[0])];
    v55 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];

    serviceEventHandler3 = [(ServiceInterface *)self serviceEventHandler];
    (serviceEventHandler3)[2](serviceEventHandler3, 26, v18);
  }

LABEL_38:

LABEL_39:
  serviceEventHandler4 = [(ServiceInterface *)self serviceEventHandler];

  if (serviceEventHandler4)
  {
    serviceEventHandler5 = [(ServiceInterface *)self serviceEventHandler];
    uUID = [characteristicCopy UUID];
    uUIDString = [uUID UUIDString];
    (serviceEventHandler5)[2](serviceEventHandler5, 25, uUIDString);
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  setLock = [(CSISInterface *)self setLock];

  if (setLock == characteristicCopy)
  {
    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      peripheral = [(ServiceInterface *)self peripheral];
      name = [peripheral name];
      v18 = 138412546;
      v19 = name;
      v20 = 2112;
      v21 = errorCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Lock result for member %@: %@", &v18, 0x16u);
    }

    serviceEventHandler = [(ServiceInterface *)self serviceEventHandler];

    if (serviceEventHandler)
    {
      if ([errorCopy code] == 133)
      {
        code = 0;
      }

      else
      {
        code = [errorCopy code];
      }

      v16 = [NSNumber numberWithUnsignedChar:code];
      serviceEventHandler2 = [(ServiceInterface *)self serviceEventHandler];
      (serviceEventHandler2)[2](serviceEventHandler2, 24, v16);
    }
  }
}

@end