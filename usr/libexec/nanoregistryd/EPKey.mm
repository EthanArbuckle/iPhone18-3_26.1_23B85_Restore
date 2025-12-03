@interface EPKey
+ (id)derivedKeyFrom:(id)from salt:(id)salt;
+ (id)keyFromData:(id)data;
+ (id)paddedSalt:(id)salt forEncryption:(BOOL)encryption;
+ (id)randomData:(unint64_t)data;
+ (id)timeDerivedKeyFrom:(id)from keyIndex:(int64_t)index salt:(id)salt;
+ (id)timeDerivedKeyFrom:(id)from keyIndex:(int64_t)index salt:(id)salt date:(id)date;
- (BOOL)storeKey:(id)key;
- (NRPBMigrationKeyForKeychain)key;
- (id)decryptPayload:(id)payload;
- (id)decryptPayloadRaw:(id)raw withSalt:(id)salt date:(id)date;
- (id)decryptPayloadRaw:(id)raw withSalt:(id)salt key:(id)key;
- (id)encryptPayload:(id)payload;
- (id)encryptPayloadRaw:(id)raw withSalt:(id)salt date:(id)date;
- (id)encryptPayloadRaw:(id)raw withSalt:(id)salt key:(id)key;
@end

@implementation EPKey

+ (id)randomData:(unint64_t)data
{
  v3 = [[NSMutableData alloc] initWithLength:data];
  if (SecRandomCopyBytes(kSecRandomDefault, [v3 length], objc_msgSend(v3, "mutableBytes")))
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001050A0();
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

+ (id)paddedSalt:(id)salt forEncryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  saltCopy = salt;
  if (encryptionCopy)
  {
    v6 = @"EEE5EDA5-3A09-4C03-85B8-0CB4E21F177E";
  }

  else
  {
    v6 = @"6B9E7887-637E-45F5-BB83-CB02708CB573";
  }

  v7 = [[NSUUID alloc] initWithUUIDString:v6];
  v8 = v7;
  if (v7)
  {
    v19[0] = 0;
    v19[1] = 0;
    [v7 getUUIDBytes:v19];
    v9 = [saltCopy mutableCopy];
    [v9 appendBytes:v19 length:16];
    if (saltCopy && v9 && (v10 = [v9 length], v10 == objc_msgSend(saltCopy, "length") + 16))
    {
      v11 = v9;
    }

    else
    {
      v12 = nr_framework_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v13)
      {
        v14 = nr_framework_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1001050D4();
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v15 = nr_framework_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v17 = nr_framework_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100105108();
      }
    }

    v11 = 0;
  }

  return v11;
}

- (NRPBMigrationKeyForKeychain)key
{
  v3 = [NRPBMigrationKeyForKeychain alloc];
  keymaster = [(EPKey *)self keymaster];
  name = [keymaster name];
  v6 = [EPKeychain retrieveKeyWithName:name keychainGroup:@"com.apple.nanoregistry.migration2"];
  v7 = [(NRPBMigrationKeyForKeychain *)v3 initWithData:v6];

  return v7;
}

- (id)encryptPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [(EPKey *)self key];
  v6 = sub_1000FDEB0(v5);

  if (v6)
  {
LABEL_4:
    v8 = [objc_opt_class() randomData:8];
    if (v8)
    {
      v9 = [objc_opt_class() paddedSalt:v8 forEncryption:1];
      if (v9)
      {
        v10 = objc_opt_new();
        sub_100100DE0(v10, v8);
        v11 = +[NSDate date];
        v12 = [(EPKey *)self encryptPayloadRaw:payloadCopy withSalt:v9 date:v11];
        sub_100100DF4(v10, v12);

        data = sub_100100E1C(v10);

        if (data)
        {
          data = [v10 data];
        }

        goto LABEL_17;
      }

      v16 = nr_framework_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

      if (v17)
      {
        v18 = nr_framework_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10010513C();
        }
      }
    }

    else
    {
      v14 = nr_daemon_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
        data = 0;
        goto LABEL_18;
      }

      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100105170();
      }
    }

    data = 0;
LABEL_17:

LABEL_18:
LABEL_19:

    goto LABEL_20;
  }

  legacyKey = [(EPKey *)self legacyKey];
  if (legacyKey)
  {
    v6 = legacyKey;
    goto LABEL_4;
  }

  v20 = nr_framework_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

  if (v21)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001051A4();
    }

    data = 0;
    goto LABEL_19;
  }

  data = 0;
LABEL_20:

  return data;
}

- (id)decryptPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [(EPKey *)self key];
  v6 = sub_1000FDEB0(v5);

  if (v6)
  {
    goto LABEL_4;
  }

  legacyKey = [(EPKey *)self legacyKey];
  if (legacyKey)
  {
    v6 = legacyKey;
LABEL_4:
    v8 = [[NRPBBTMigrationCiphertext alloc] initWithData:payloadCopy];
    v9 = objc_opt_class();
    v10 = sub_100100E08(v8);
    v11 = [v9 paddedSalt:v10 forEncryption:0];

    if (v11)
    {
      v12 = sub_100100E1C(v8);
      v13 = +[NSDate date];
      v14 = [(EPKey *)self decryptPayloadRaw:v12 withSalt:v11 date:v13];
    }

    else
    {
      v15 = nr_framework_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = nr_framework_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10010513C();
        }
      }

      v14 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v19 = nr_framework_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

  if (v20)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001051D8();
    }

    v14 = 0;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)encryptPayloadRaw:(id)raw withSalt:(id)salt date:(id)date
{
  rawCopy = raw;
  saltCopy = salt;
  dateCopy = date;
  v11 = [(EPKey *)self key];
  v12 = sub_1000FDEB0(v11);

  if (v12)
  {
    goto LABEL_4;
  }

  legacyKey = [(EPKey *)self legacyKey];
  if (legacyKey)
  {
    v12 = legacyKey;
LABEL_4:
    v14 = [EPKey timeDerivedKeyFrom:v12 keyIndex:0 salt:saltCopy date:dateCopy];
    if (v14)
    {
      v15 = [(EPKey *)self encryptPayloadRaw:rawCopy withSalt:saltCopy key:v14];
    }

    else
    {
      v16 = nr_framework_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

      if (v17)
      {
        v18 = nr_framework_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10010520C();
        }
      }

      v15 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v20 = nr_framework_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

  if (v21)
  {
    v12 = nr_framework_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100105240();
    }

    v15 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)decryptPayloadRaw:(id)raw withSalt:(id)salt date:(id)date
{
  rawCopy = raw;
  saltCopy = salt;
  dateCopy = date;
  v11 = [(EPKey *)self key];
  v12 = sub_1000FDEB0(v11);

  if (v12)
  {
    goto LABEL_4;
  }

  legacyKey = [(EPKey *)self legacyKey];
  if (legacyKey)
  {
    v12 = legacyKey;
LABEL_4:
    v14 = 0;
    while (1)
    {
      v15 = [EPKey timeDerivedKeyFrom:v12 keyIndex:v14 salt:saltCopy date:dateCopy];
      if (v15)
      {
        v16 = [(EPKey *)self decryptPayloadRaw:rawCopy withSalt:saltCopy key:v15];
        if (v16)
        {
          v17 = v16;
          goto LABEL_18;
        }
      }

      if (v14)
      {
        if (v14 == 1)
        {
          v18 = nr_framework_log();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

          if (v19)
          {
            v20 = nr_framework_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100105274();
            }
          }

          v17 = 0;
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }

        v14 = 1;
      }

      else
      {
        v14 = -1;
      }
    }
  }

  v22 = nr_framework_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

  if (v23)
  {
    v12 = nr_framework_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001052A8();
    }

    v17 = 0;
    goto LABEL_19;
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (id)encryptPayloadRaw:(id)raw withSalt:(id)salt key:(id)key
{
  rawCopy = raw;
  keyCopy = key;
  if (keyCopy)
  {
    nRSHA256 = [rawCopy NRSHA256];
    if (nRSHA256)
    {
      v9 = [rawCopy mutableCopy];
      [v9 appendData:nRSHA256];
      v10 = [NSInputStream inputStreamWithData:v9];
      v11 = +[NSOutputStream outputStreamToMemory];
      [v10 open];
      [v11 open];
      v12 = sub_1000E01E4(v10, v11, [keyCopy bytes]);
      [v10 close];
      [v11 close];
      if (v12)
      {
        v13 = nr_framework_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

        if (v14)
        {
          v15 = nr_framework_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1001052DC(v12);
          }
        }

        v16 = 0;
      }

      else
      {
        v16 = [v11 propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
      }

LABEL_20:
      goto LABEL_21;
    }

    v19 = nr_framework_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v9 = nr_framework_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10010536C();
      }

      v16 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v17 = nr_framework_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (!v18)
    {
      v16 = 0;
      goto LABEL_22;
    }

    nRSHA256 = nr_framework_log();
    if (os_log_type_enabled(nRSHA256, OS_LOG_TYPE_ERROR))
    {
      sub_1001053A0();
    }
  }

  v16 = 0;
LABEL_21:

LABEL_22:

  return v16;
}

- (id)decryptPayloadRaw:(id)raw withSalt:(id)salt key:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [NSInputStream inputStreamWithData:raw];
    v8 = +[NSOutputStream outputStreamToMemory];
    [v7 open];
    [v8 open];
    v9 = sub_1000E01E4(v7, v8, [keyCopy bytes]);
    [v8 close];
    [v7 close];
    v10 = [v8 propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
    if ([v10 length] < 0x21)
    {
      v15 = 0;
    }

    else
    {
      v11 = [v10 subdataWithRange:{0, objc_msgSend(v10, "length") - 32}];
      v12 = [v10 subdataWithRange:{objc_msgSend(v11, "length"), 32}];
      if (v9 || ([v11 NRSHA256], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, !v14))
      {
        v15 = 0;
      }

      else
      {
        v15 = v11;
      }
    }
  }

  else
  {
    v16 = nr_framework_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = nr_framework_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1001053D4();
      }
    }

    v15 = 0;
  }

  return v15;
}

+ (id)keyFromData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  sub_1000FDE98(v4, dataCopy);
  v7 = 0;
  do
  {
    v5 = [EPKey randomData:4];
    [v5 getBytes:&v7 length:{objc_msgSend(v5, "length")}];
  }

  while (v7 < 1);
  sub_1000FDE70(v4, v7);

  return v4;
}

- (BOOL)storeKey:(id)key
{
  v4 = [EPKey keyFromData:key];
  v5 = [EPKeychain removeKeyWithName:@"migration" keychainGroup:@"com.apple.nanoregistry.migration"];
  keymaster = [(EPKey *)self keymaster];
  name = [keymaster name];
  v8 = [EPKeychain removeKeyWithName:name keychainGroup:@"com.apple.nanoregistry.migration"];

  keymaster2 = [(EPKey *)self keymaster];
  name2 = [keymaster2 name];
  v11 = [EPKeychain removeKeyWithName:name2 keychainGroup:@"com.apple.nanoregistry.migration2"];

  v12 = sub_1000FDEB0(v4);
  v13 = [EPKeychain storeKeyWithData:v12 name:@"migration" keychainGroup:@"com.apple.nanoregistry.migration"];

  data = [v4 data];
  keymaster3 = [(EPKey *)self keymaster];
  name3 = [keymaster3 name];
  v17 = [EPKeychain storeKeyWithData:data name:name3 keychainGroup:@"com.apple.nanoregistry.migration2"];

  v18 = v13 & v17;
  if ((v13 & v17 & 1) == 0)
  {
    v19 = sub_1000034AC();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v21 = sub_1000034AC();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (v13)
        {
          v23 = 0;
        }

        else
        {
          v23 = @"migration";
        }

        if (v17)
        {
          name4 = 0;
        }

        else
        {
          self = [(EPKey *)self keymaster];
          name4 = [(EPKey *)self name];
        }

        v25 = 138412546;
        v26 = v23;
        v27 = 2112;
        v28 = name4;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "EPKey: Unable to store key %@ %@", &v25, 0x16u);
        if ((v17 & 1) == 0)
        {
        }
      }
    }
  }

  return v18;
}

+ (id)derivedKeyFrom:(id)from salt:(id)salt
{
  fromCopy = from;
  saltCopy = salt;
  if ([fromCopy length] < 0x20)
  {
    v13 = nr_framework_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (!v14)
    {
      v15 = 0;
      goto LABEL_14;
    }

    v7 = nr_framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100105408();
    }
  }

  else
  {
    v7 = [NSMutableData dataWithLength:32];
    v8 = CCKeyDerivationPBKDF(2u, [fromCopy bytes], objc_msgSend(fromCopy, "length"), objc_msgSend(saltCopy, "bytes"), objc_msgSend(saltCopy, "length"), 3u, 0x2710u, -[NSObject mutableBytes](v7, "mutableBytes"), -[NSObject length](v7, "length"));
    if (!v8)
    {
      v7 = v7;
      v15 = v7;
      goto LABEL_13;
    }

    v9 = v8;
    v10 = nr_framework_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = nr_framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10010543C(v9);
      }
    }
  }

  v15 = 0;
LABEL_13:

LABEL_14:

  return v15;
}

+ (id)timeDerivedKeyFrom:(id)from keyIndex:(int64_t)index salt:(id)salt
{
  saltCopy = salt;
  fromCopy = from;
  v9 = objc_opt_class();
  v10 = +[NSDate date];
  v11 = [v9 timeDerivedKeyFrom:fromCopy keyIndex:index salt:saltCopy date:v10];

  return v11;
}

+ (id)timeDerivedKeyFrom:(id)from keyIndex:(int64_t)index salt:(id)salt date:(id)date
{
  fromCopy = from;
  saltCopy = salt;
  dateCopy = date;
  v13 = dateCopy;
  if ((index - 2) > 0xFFFFFFFFFFFFFFFCLL)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    if (v17)
    {
      v23 = index + v17 / 0x12C;
      v18 = [NSMutableData dataWithBytes:&v23 length:8];
      [v18 appendData:fromCopy];
      v19 = [self derivedKeyFrom:v18 salt:saltCopy];

      goto LABEL_12;
    }

    v20 = nr_framework_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v16 = nr_framework_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1001054CC();
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = nr_framework_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = nr_framework_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100105500();
      }

LABEL_10:
    }
  }

  v19 = 0;
LABEL_12:

  return v19;
}

@end