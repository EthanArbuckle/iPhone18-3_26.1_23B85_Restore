@interface CSISInterface
+ (BOOL)ResolveRSIWithSirk:(id)a3 withSirk:(id)a4;
+ (id)csisSdf:(id)a3 withSirk:(id)a4;
- (CSISInterface)initWithPeripheral:(id)a3 service:(id)a4;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation CSISInterface

- (CSISInterface)initWithPeripheral:(id)a3 service:(id)a4
{
  v7.receiver = self;
  v7.super_class = CSISInterface;
  v4 = [(ServiceInterface *)&v7 initWithPeripheral:a3 service:a4];
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

  v9 = [(ServiceInterface *)self peripheral];
  v10 = [(ServiceInterface *)self service];
  [v9 discoverCharacteristics:v8 forService:v10];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = CSISInterface;
  [(ServiceInterface *)&v2 stop];
}

+ (id)csisSdf:(id)a3 withSirk:(id)a4
{
  v5 = a4;
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  [a3 getBytes:v13 length:16];
  [v5 getBytes:v12 length:16];
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

+ (BOOL)ResolveRSIWithSirk:(id)a3 withSirk:(id)a4
{
  WORD2(v7) = 0;
  LODWORD(v7) = 0;
  key[0] = 0;
  key[1] = 0;
  v5 = a4;
  [a3 getBytes:&v7 length:6];
  [v5 getBytes:key length:{16, v7}];

  return sub_1000256EC(&v7, key);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService %@", buf, 0xCu);
  }

  if (!v9)
  {
    v32 = v8;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v8 characteristics];
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
            v19 = [v16 UUID];
            *buf = 138412290;
            v44 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService Characteristic %@", buf, 0xCu);
          }

          v20 = [v16 UUID];
          v21 = [CBUUID UUIDWithString:v14];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
            [(CSISInterface *)self setSetSIRK:v16];
          }

          else
          {
            v23 = [v16 UUID];
            v24 = [CBUUID UUIDWithString:v35];
            v25 = [v23 isEqual:v24];

            if (v25)
            {
              [(CSISInterface *)self setSetSize:v16];
            }

            else
            {
              v26 = [v16 UUID];
              v27 = [CBUUID UUIDWithString:v34];
              v28 = [v26 isEqual:v27];

              if (v28)
              {
                [(CSISInterface *)self setSetLock:v16];
              }

              else
              {
                v29 = [v16 UUID];
                v30 = [CBUUID UUIDWithString:v33];
                v31 = [v29 isEqual:v30];

                if (v31)
                {
                  [(CSISInterface *)self setSetRank:v16];
                }
              }
            }
          }

          if (([v16 properties] & 0x10) != 0)
          {
            [v7 setNotifyValue:1 forCharacteristic:v16];
          }

          [v7 readValueForCharacteristic:v16];
        }

        v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v12);
    }

    [(ServiceInterface *)self notifyDidStart];
    v9 = 0;
    v8 = v32;
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(CSISInterface *)self setLock];

  if (v9 == v8)
  {
    v20 = [(CSISInterface *)self setLock];
    v21 = [v20 value];
    v15 = [DataInputStream inputStreamWithData:v21];

    LOBYTE(v60[0]) = 0;
    if ([v15 readUint8:v60])
    {
      v22 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [(ServiceInterface *)self peripheral];
        v25 = [v24 name];
        *buf = 138412546;
        v57 = v25;
        v58 = 1024;
        LODWORD(v59) = LOBYTE(v60[0]);
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updated Lock state for member %@: %u", buf, 0x12u);
      }

      [(CSISInterface *)self setLockState:LOBYTE(v60[0])];
    }

    v26 = [(ServiceInterface *)self serviceEventHandler];

    if (!v26)
    {
      goto LABEL_38;
    }

    v27 = [NSNumber numberWithUnsignedChar:LOBYTE(v60[0])];
    v28 = [(ServiceInterface *)self serviceEventHandler];
    v28[2](v28, 23, v27);
    goto LABEL_37;
  }

  v10 = [(CSISInterface *)self setSIRK];

  if (v10 == v8)
  {
    v53 = 0;
    v29 = [(CSISInterface *)self setSIRK];
    v30 = [v29 value];
    v15 = [DataInputStream inputStreamWithData:v30 byteOrder:1];

    [v15 readUint8:&v53];
    [(CSISInterface *)self setEncryptedSirk:v53];
    [(CSISInterface *)self setSetIdentityResolvingKey:0];
    v31 = objc_alloc_init(NSMutableData);
    [(CSISInterface *)self setSetIdentityResolvingKey:v31];

    v32 = [(CSISInterface *)self setIdentityResolvingKey];
    [v15 readNumBytes:16 toData:v32];

    if (![(CSISInterface *)self encryptedSirk])
    {
      v33 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SIRK - encrypted", buf, 2u);
      }

      v34 = +[ConnectionManager instance];
      v35 = [(ServiceInterface *)self peripheral];
      v36 = [v34 retrievePairingInfo:v35];

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

      v39 = [(CSISInterface *)self setIdentityResolvingKey];
      v40 = [CSISInterface csisSdf:v37 withSirk:v39];

      if (v40)
      {
        v41 = [(CSISInterface *)self setIdentityResolvingKey];
        [v41 setData:v40];
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

    v27 = [v7 customProperty:@"SirkInDevCache"];
    v60[0] = 0;
    v60[1] = 0;
    v28 = objc_alloc_init(NSMutableString);
    v46 = [(CSISInterface *)self setIdentityResolvingKey];
    [v46 getBytes:v60 length:16];

    for (i = 0; i != 16; ++i)
    {
      [v28 appendFormat:@"%02x", *(v60 + i)];
    }

    if (v27 && ([v27 isEqualToString:v28] & 1) != 0)
    {
      v48 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v57 = v27;
        v58 = 2112;
        v59 = v7;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "stored SIRK %@ of peripheral %@", buf, 0x16u);
      }
    }

    else
    {
      [v7 setCustomProperty:@"SirkInDevCache" value:v28];
    }

LABEL_37:

    goto LABEL_38;
  }

  v11 = [(CSISInterface *)self setRank];

  if (v11 == v8)
  {
    LOBYTE(v60[0]) = 0;
    v42 = [(CSISInterface *)self setRank];
    v43 = [v42 value];
    v15 = [DataInputStream inputStreamWithData:v43];

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
    v12 = [(CSISInterface *)self setSize];

    if (v12 != v8)
    {
      goto LABEL_39;
    }

    LOBYTE(v60[0]) = 0;
    v13 = [(CSISInterface *)self setSize];
    v14 = [v13 value];
    v15 = [DataInputStream inputStreamWithData:v14];

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

    v19 = [(ServiceInterface *)self serviceEventHandler];
    (v19)[2](v19, 26, v18);
  }

LABEL_38:

LABEL_39:
  v49 = [(ServiceInterface *)self serviceEventHandler];

  if (v49)
  {
    v50 = [(ServiceInterface *)self serviceEventHandler];
    v51 = [v8 UUID];
    v52 = [v51 UUIDString];
    (v50)[2](v50, 25, v52);
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSISInterface *)self setLock];

  if (v9 == v8)
  {
    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(ServiceInterface *)self peripheral];
      v13 = [v12 name];
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Lock result for member %@: %@", &v18, 0x16u);
    }

    v14 = [(ServiceInterface *)self serviceEventHandler];

    if (v14)
    {
      if ([v7 code] == 133)
      {
        v15 = 0;
      }

      else
      {
        v15 = [v7 code];
      }

      v16 = [NSNumber numberWithUnsignedChar:v15];
      v17 = [(ServiceInterface *)self serviceEventHandler];
      (v17)[2](v17, 24, v16);
    }
  }
}

@end