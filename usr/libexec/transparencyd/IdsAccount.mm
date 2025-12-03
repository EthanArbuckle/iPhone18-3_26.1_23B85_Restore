@interface IdsAccount
+ (id)encodeOptInOutExtensionData:(id)data;
+ (id)parseFromData:(id)data error:(id *)error;
+ (id)parseOptInOutExtension:(id)extension error:(id *)error;
- (BOOL)hasOptInAfter:(unint64_t)after;
- (BOOL)isActive:(unint64_t)active;
- (BOOL)isEqual:(id)equal;
- (IdsAccount)init;
- (id)data;
- (id)debugDescription;
- (id)diagnosticsJsonDictionary;
- (id)sortedOptInOutHistory:(id *)history;
@end

@implementation IdsAccount

- (IdsAccount)init
{
  v8.receiver = self;
  v8.super_class = IdsAccount;
  v2 = [(IdsAccount *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    devicesArray = v2->_devicesArray;
    v2->_devicesArray = v3;

    v5 = +[NSMutableArray array];
    extensions = v2->_extensions;
    v2->_extensions = v5;
  }

  return v2;
}

- (id)data
{
  v3 = +[NSMutableData data];
  accountKeyHash = [(IdsAccount *)self accountKeyHash];
  v5 = [(TLSMessageClass *)self encodeHashValue:accountKeyHash buffer:v3];

  if (v5 && (-[IdsAccount devicesArray](self, "devicesArray"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7))
  {
    v8 = +[NSMutableData data];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    devicesArray = [(IdsAccount *)self devicesArray];
    v10 = [devicesArray countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(devicesArray);
          }

          data = [*(*(&v20 + 1) + 8 * i) data];
          if (!data)
          {

            goto LABEL_16;
          }

          v15 = data;
          [v8 appendData:data];
        }

        v11 = [devicesArray countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if ([(TLSMessageClass *)self encodeByteArray:v8 minLength:1 maxLength:0xFFFFLL buffer:v3]&& ([(IdsAccount *)self extensions], v16 = objc_claimAutoreleasedReturnValue(), v17 = [(TLSMessageClass *)self encodeExtensions:v16 buffer:v3], v16, v17))
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
  v9 = objc_alloc_init(IdsAccount);
  v32 = 0;
  v10 = [(TLSMessageClass *)v9 parseHashValue:bytes end:&v8[bytes2] result:&v32];
  v11 = v32;
  if (v10)
  {
    [(IdsAccount *)v9 setAccountKeyHash:v11];
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
          [(IdsAccount *)v9 setExtensions:v23];

          -[IdsAccount setParsedLength:](v9, "setParsedLength:", v21 - [dataCopy bytes]);
          v20 = v9;
        }

        else if (errorCopy)
        {
          [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-262 description:@"failed to parse extensions from IdsAccount"];
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
        v15 = [IdsDevice parseFromData:v14 error:&v30];
        v16 = v30;
        v17 = v16;
        if (!v15)
        {
          break;
        }

        devicesArray = [(IdsAccount *)v9 devicesArray];
        [devicesArray addObject:v15];

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
      [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-261 description:@"failed to parse devices from IdsAccount"];
      *error = v20 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v20 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-260 description:@"failed to parse account key from IdsAccount"];
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
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = self->_devicesArray;
  v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v23 = *v32;
    v24 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v4;
        v5 = *(*(&v31 + 1) + 8 * v4);
        [v3 appendFormat:@"   {\n"];
        deviceIdHash = [v5 deviceIdHash];
        kt_hexString = [deviceIdHash kt_hexString];
        [v3 appendFormat:@"    deviceIdHash: %@\n", kt_hexString];

        v8 = [NSMutableString stringWithFormat:@"[\n"];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        clientDataArray = [v5 clientDataArray];
        v10 = [clientDataArray countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(clientDataArray);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              [v8 appendFormat:@"     {\n"];
              clientDataHash = [v14 clientDataHash];
              kt_hexString2 = [clientDataHash kt_hexString];
              [v8 appendFormat:@"      clientDataHash:%@\n", kt_hexString2];

              [v8 appendFormat:@"      appVersion:%lu\n", objc_msgSend(v14, "appVersion")];
              [v8 appendFormat:@"        addedMs:%llu markMs:%llu; expiryMs:%llu; escrowMs:%llu\n", objc_msgSend(v14, "addedMs"), objc_msgSend(v14, "markedForDeletionMs"), objc_msgSend(v14, "expiryMs"), objc_msgSend(v14, "escrowExpiryMs")];
              [v8 appendFormat:@"     }, \n"];
            }

            v11 = [clientDataArray countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v11);
        }

        [v8 appendFormat:@"    ]"];
        v3 = v24;
        [v24 appendFormat:@"    clientDatas: %@\n", v8];
        [v24 appendFormat:@"   }, \n"];

        v4 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  [v3 appendFormat:@"  ]"];
  accountKeyHash = [(IdsAccount *)selfCopy accountKeyHash];
  kt_hexString3 = [accountKeyHash kt_hexString];
  v19 = [NSString stringWithFormat:@"{\n  accountKeyHash:%@\n  devices: %@\n}", kt_hexString3, v3];

  return v19;
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
      data = [(IdsAccount *)self data];
      data2 = [(IdsAccount *)v5 data];

      v8 = [data isEqualToData:data2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)parseOptInOutExtension:(id)extension error:(id *)error
{
  errorCopy = error;
  extensionCopy = extension;
  v5 = +[NSMutableArray array];
  v6 = extensionCopy;
  v7 = v6;
  if ([v6 length])
  {
    v8 = v6;
    while (1)
    {
      v16 = 0;
      errorCopy = [OptInOutWithExt parseFromData:v8 error:&v16, errorCopy];
      v10 = v16;
      v11 = v10;
      if (!errorCopy)
      {
        break;
      }

      [v5 addObject:errorCopy];
      v7 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [errorCopy parsedLength] + objc_msgSend(v8, "bytes"), objc_msgSend(v8, "length") - objc_msgSend(errorCopy, "parsedLength"));

      v8 = v7;
      if (![v7 length])
      {
        goto LABEL_5;
      }
    }

    if (errorCopy && v10)
    {
      v13 = v10;
      *errorCopy = v11;
    }

    errorCopy2 = 0;
  }

  else
  {
LABEL_5:
    errorCopy2 = [NSArray arrayWithArray:v5, errorCopy];
    v8 = v7;
  }

  return errorCopy2;
}

+ (id)encodeOptInOutExtensionData:(id)data
{
  dataCopy = data;
  v4 = +[NSMutableData data];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dataCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        data = [*(*(&v13 + 1) + 8 * i) data];
        [v4 appendData:data];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [NSData dataWithData:v4];

  return v11;
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  accountKeyHash = [(IdsAccount *)self accountKeyHash];
  kt_hexString = [accountKeyHash kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"accountKeyHash"];

  v6 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  devicesArray = [(IdsAccount *)self devicesArray];
  v8 = [devicesArray countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(devicesArray);
        }

        diagnosticsJsonDictionary = [*(*(&v26 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v6 addObject:diagnosticsJsonDictionary];
      }

      v9 = [devicesArray countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [v3 setObject:v6 forKeyedSubscript:@"devices"];
  }

  v13 = [(IdsAccount *)self sortedOptInOutHistory:0];
  if (v13)
  {
    v14 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          diagnosticsJsonDictionary2 = [*(*(&v22 + 1) + 8 * j) diagnosticsJsonDictionary];
          [v14 addObject:diagnosticsJsonDictionary2];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"optInOutHistory"];
  }

  return v3;
}

- (id)sortedOptInOutHistory:(id *)history
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  extensions = [(IdsAccount *)self extensions];
  v5 = [extensions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(extensions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 extensionType] == 2)
        {
          extensionData = [v9 extensionData];
          v10 = [IdsAccount parseOptInOutExtension:extensionData error:history];

          goto LABEL_11;
        }
      }

      v6 = [extensions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  if ([v10 count])
  {
    [v10 sortedArrayUsingComparator:&stru_1003281F8];
  }

  else
  {
    +[NSArray array];
  }
  v12 = ;

  return v12;
}

- (BOOL)isActive:(unint64_t)active
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  devicesArray = [(IdsAccount *)self devicesArray];
  v5 = [devicesArray countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(devicesArray);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        clientDataArray = [v9 clientDataArray];
        v11 = [clientDataArray countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(clientDataArray);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              if (![v15 markedForDeletionMs] && (!objc_msgSend(v15, "expiryMs") || objc_msgSend(v15, "expiryMs") > active) || objc_msgSend(v15, "markedForDeletionMs") > active && (!objc_msgSend(v15, "expiryMs") || objc_msgSend(v15, "expiryMs") > active))
              {

                v16 = 1;
                goto LABEL_24;
              }
            }

            v12 = [clientDataArray countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [devicesArray countByEnumeratingWithState:&v22 objects:v27 count:16];
      v16 = 0;
    }

    while (v6);
  }

  else
  {
    v16 = 0;
  }

LABEL_24:

  return v16;
}

- (BOOL)hasOptInAfter:(unint64_t)after
{
  v4 = [(IdsAccount *)self sortedOptInOutHistory:0];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    reverseObjectEnumerator = [v5 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v8 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 optIn] && objc_msgSend(v12, "timestampMs") > after)
          {
            v13 = 1;
            goto LABEL_15;
          }
        }

        v9 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_15:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end