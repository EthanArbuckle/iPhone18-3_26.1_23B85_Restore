@interface IdsDevice
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (IdsDevice)init;
- (id)data;
- (id)debugDescription;
- (id)diagnosticsJsonDictionary;
@end

@implementation IdsDevice

- (IdsDevice)init
{
  v8.receiver = self;
  v8.super_class = IdsDevice;
  v2 = [(IdsDevice *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    clientDataArray = v2->_clientDataArray;
    v2->_clientDataArray = v3;

    v5 = +[NSMutableArray array];
    extensions = v2->_extensions;
    v2->_extensions = v5;
  }

  return v2;
}

- (id)data
{
  v3 = +[NSMutableData data];
  deviceIdHash = [(IdsDevice *)self deviceIdHash];
  v5 = [(TLSMessageClass *)self encodeHashValue:deviceIdHash buffer:v3];

  if (v5 && (-[IdsDevice clientDataArray](self, "clientDataArray"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7))
  {
    v8 = +[NSMutableData data];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    clientDataArray = [(IdsDevice *)self clientDataArray];
    v10 = [clientDataArray countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(clientDataArray);
          }

          data = [*(*(&v20 + 1) + 8 * i) data];
          if (!data)
          {

            goto LABEL_16;
          }

          v15 = data;
          [v8 appendData:data];
        }

        v11 = [clientDataArray countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if ([(TLSMessageClass *)self encodeByteArray:v8 minLength:1 maxLength:0xFFFFLL buffer:v3]&& ([(IdsDevice *)self extensions], v16 = objc_claimAutoreleasedReturnValue(), v17 = [(TLSMessageClass *)self encodeExtensions:v16 buffer:v3], v16, v17))
    {
      v18 = [NSData dataWithData:v3];
    }

    else
    {
LABEL_16:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  bytes2 = [dataCopy bytes];
  v8 = [dataCopy length];
  v9 = objc_alloc_init(IdsDevice);
  v32 = 0;
  v10 = [(TLSMessageClass *)v9 parseHashValue:bytes end:&v8[bytes2] result:&v32];
  v11 = v32;
  if (v10)
  {
    [(IdsDevice *)v9 setDeviceIdHash:v11];
    v31 = 0;
    v12 = [(TLSMessageClass *)v9 parseByteArray:v10 end:&v8[bytes2] minLength:1 maxLength:0xFFFFLL result:&v31];
    v13 = v31;
    v14 = v13;
    if (v12)
    {
      v27 = v12;
      v28 = v11;
      errorCopy = error;
      if (![v13 length])
      {
        v19 = v14;
LABEL_12:
        v29 = 0;
        v21 = [(TLSMessageClass *)v9 parseExtensions:v27 end:&v8[bytes2] result:&v29];
        v22 = v29;
        if (v21)
        {
          v23 = [NSMutableArray arrayWithArray:v22];
          [(IdsDevice *)v9 setExtensions:v23];

          -[IdsDevice setParsedLength:](v9, "setParsedLength:", v21 - [dataCopy bytes]);
          v20 = v9;
        }

        else if (errorCopy)
        {
          [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-259 description:@"failed to parse extensions from IdsDevice"];
          *errorCopy = v20 = 0;
        }

        else
        {
          v20 = 0;
        }

        v11 = v28;

        v14 = v19;
        goto LABEL_24;
      }

      while (1)
      {
        v30 = 0;
        v15 = [SingleDataRecord parseFromData:v14 error:&v30];
        v16 = v30;
        v17 = v16;
        if (!v15)
        {
          break;
        }

        clientDataArray = [(IdsDevice *)v9 clientDataArray];
        [clientDataArray addObject:v15];

        v19 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v15 parsedLength] + objc_msgSend(v14, "bytes"), objc_msgSend(v14, "length") - objc_msgSend(v15, "parsedLength"));

        v14 = v19;
        if (![v19 length])
        {
          goto LABEL_12;
        }
      }

      if (error && v16)
      {
        v24 = v16;
        *error = v17;
      }
    }

    else if (error)
    {
      [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-258 description:@"failed to parse client datas from IdsDevice"];
      *error = v20 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v20 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-257 description:@"failed to parse device ID from IdsDevice"];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_25:

  return v20;
}

- (id)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"[\n"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  obj = self->_clientDataArray;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        [v3 appendFormat:@"   {\n"];
        clientDataHash = [v8 clientDataHash];
        kt_hexString = [clientDataHash kt_hexString];
        [v3 appendFormat:@"    clientDataHash:%@\n", kt_hexString];

        [v3 appendFormat:@"    appVersion:%lu\n", objc_msgSend(v8, "appVersion")];
        [v3 appendFormat:@"        addedMs:%llu markMs:%llu; expiryMs:%llu; escrowMs:%llu\n", objc_msgSend(v8, "addedMs"), objc_msgSend(v8, "markedForDeletionMs"), objc_msgSend(v8, "expiryMs"), objc_msgSend(v8, "escrowExpiryMs")];
        [v3 appendFormat:@"   }, \n"];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  [v3 appendFormat:@"  ]"];
  kt_hexString2 = [(NSData *)selfCopy->_deviceIdHash kt_hexString];
  v12 = [NSString stringWithFormat:@"{\n  deviceIdHash:%@\n  clientDatas: %@\n}", kt_hexString2, v3];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      data = [(IdsDevice *)self data];
      data2 = [(IdsDevice *)v5 data];

      v8 = [data isEqualToData:data2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  deviceIdHash = [(IdsDevice *)self deviceIdHash];
  kt_hexString = [deviceIdHash kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"deviceIdHash"];

  v6 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientDataArray = [(IdsDevice *)self clientDataArray];
  v8 = [clientDataArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(clientDataArray);
        }

        diagnosticsJsonDictionary = [*(*(&v14 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v6 addObject:diagnosticsJsonDictionary];
      }

      v9 = [clientDataArray countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [v3 setObject:v6 forKeyedSubscript:@"clientDatas"];
  }

  return v3;
}

@end