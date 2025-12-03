@interface IdsMapLeaf
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (IdsMapLeaf)init;
- (id)accountForAccountKeyHash:(id)hash;
- (id)data;
- (id)description;
- (id)diagnosticsJsonDictionary;
- (id)recordForAccountKeyHash:(id)hash deviceIdHash:(id)idHash appVersion:(unint64_t)version clientDataHash:(id)dataHash;
- (unint64_t)verifyWithError:(id *)error;
@end

@implementation IdsMapLeaf

- (IdsMapLeaf)init
{
  v8.receiver = self;
  v8.super_class = IdsMapLeaf;
  v2 = [(IdsMapLeaf *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    accountsArray = v2->_accountsArray;
    v2->_accountsArray = v3;

    v5 = +[NSMutableArray array];
    extensions = v2->_extensions;
    v2->_extensions = v5;
  }

  return v2;
}

- (id)data
{
  v3 = +[NSMutableData data];
  v4 = +[NSMutableData data];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accountsArray = [(IdsMapLeaf *)self accountsArray];
  v6 = [accountsArray countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(accountsArray);
        }

        data = [*(*(&v16 + 1) + 8 * i) data];
        if (!data)
        {

          goto LABEL_13;
        }

        v11 = data;
        [v4 appendData:data];
      }

      v7 = [accountsArray countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([(TLSMessageClass *)self encodeByteArray:v4 minLength:0 maxLength:0xFFFFFFLL buffer:v3]&& ([(IdsMapLeaf *)self extensions], v12 = objc_claimAutoreleasedReturnValue(), v13 = [(TLSMessageClass *)self encodeExtensions:v12 buffer:v3], v12, v13))
  {
    v14 = [NSData dataWithData:v3];
  }

  else
  {
LABEL_13:
    v14 = 0;
  }

  return v14;
}

+ (id)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  bytes2 = [dataCopy bytes];
  v8 = [dataCopy length];
  v9 = objc_alloc_init(IdsMapLeaf);
  v27 = 0;
  v10 = [(TLSMessageClass *)v9 parseByteArray:bytes end:&v8[bytes2] minLength:0 maxLength:0xFFFFFFLL result:&v27];
  v11 = v27;
  v12 = v11;
  if (!v10)
  {
    if (error)
    {
      [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-263 description:@"failed to parse accounts from IdsMapLeaf"];
      *error = v18 = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  errorCopy = error;
  if ([v11 length])
  {
    while (1)
    {
      v26 = 0;
      v13 = [IdsAccount parseFromData:v12 error:&v26];
      v14 = v26;
      v15 = v14;
      if (!v13)
      {
        break;
      }

      accountsArray = [(IdsMapLeaf *)v9 accountsArray];
      [accountsArray addObject:v13];

      v17 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v13 parsedLength] + objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length") - objc_msgSend(v13, "parsedLength"));

      v12 = v17;
      if (![v17 length])
      {
        goto LABEL_9;
      }
    }

    if (error && v14)
    {
      v22 = v14;
      *error = v15;
    }

LABEL_15:
    v18 = 0;
    goto LABEL_20;
  }

  v17 = v12;
LABEL_9:
  v25 = 0;
  v19 = [(TLSMessageClass *)v9 parseExtensions:v10 end:&v8[bytes2] result:&v25];
  v20 = v25;
  if (v19)
  {
    v21 = [NSMutableArray arrayWithArray:v20];
    [(IdsMapLeaf *)v9 setExtensions:v21];

    v18 = v9;
  }

  else if (errorCopy)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-264 description:@"failed to parse extensions from IdsMapLeaf"];
    *errorCopy = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  v12 = v17;
LABEL_20:

  return v18;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"[\n"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_accountsArray;
  v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v27)
  {
    v25 = *v43;
    v26 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = *(*(&v42 + 1) + 8 * v4);
        [v3 appendFormat:@"   {\n"];
        accountKeyHash = [v5 accountKeyHash];
        kt_hexString = [accountKeyHash kt_hexString];
        [v3 appendFormat:@"    accountKeyHash:%@\n", kt_hexString];

        v8 = [NSMutableString stringWithFormat:@"[\n"];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        devicesArray = [v5 devicesArray];
        v32 = [devicesArray countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v32)
        {
          v30 = *v39;
          v31 = v8;
          do
          {
            v9 = 0;
            do
            {
              if (*v39 != v30)
              {
                objc_enumerationMutation(devicesArray);
              }

              v33 = v9;
              v10 = *(*(&v38 + 1) + 8 * v9);
              [v8 appendFormat:@"     {\n"];
              deviceIdHash = [v10 deviceIdHash];
              kt_hexString2 = [deviceIdHash kt_hexString];
              [v8 appendFormat:@"      deviceIdHash: %@\n", kt_hexString2];

              v13 = [NSMutableString stringWithFormat:@"[\n"];
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              clientDataArray = [v10 clientDataArray];
              v15 = [clientDataArray countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v35;
                do
                {
                  for (i = 0; i != v16; i = i + 1)
                  {
                    if (*v35 != v17)
                    {
                      objc_enumerationMutation(clientDataArray);
                    }

                    v19 = *(*(&v34 + 1) + 8 * i);
                    [v13 appendFormat:@"       {\n"];
                    clientDataHash = [v19 clientDataHash];
                    kt_hexString3 = [clientDataHash kt_hexString];
                    [v13 appendFormat:@"        clientDataHash:%@\n", kt_hexString3];

                    [v13 appendFormat:@"        appVersion:%lu\n", objc_msgSend(v19, "appVersion")];
                    [v13 appendFormat:@"        addedMs:%llu markMs:%llu; expiryMs:%llu; escrowMs:%llu\n", objc_msgSend(v19, "addedMs"), objc_msgSend(v19, "markedForDeletionMs"), objc_msgSend(v19, "expiryMs"), objc_msgSend(v19, "escrowExpiryMs")];
                    [v13 appendFormat:@"       }, \n"];
                  }

                  v16 = [clientDataArray countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v16);
              }

              [v13 appendFormat:@"      ]"];
              v8 = v31;
              [v31 appendFormat:@"      clientDatas: %@\n", v13];
              [v31 appendFormat:@"     }, \n"];

              v9 = v33 + 1;
            }

            while ((v33 + 1) != v32);
            v32 = [devicesArray countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v32);
        }

        [v8 appendFormat:@"    ]"];
        v3 = v26;
        [v26 appendFormat:@"    devices: %@\n", v8];
        [v26 appendFormat:@"   }, \n"];

        v4 = v28 + 1;
      }

      while ((v28 + 1) != v27);
      v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v27);
  }

  [v3 appendFormat:@"  ]"];
  v22 = [NSString stringWithFormat:@"{\n  accounts: %@\n}", v3];

  return v22;
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
      data = [(IdsMapLeaf *)self data];
      data2 = [(IdsMapLeaf *)v5 data];

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
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accountsArray = [(IdsMapLeaf *)self accountsArray];
  v6 = [accountsArray countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(accountsArray);
        }

        diagnosticsJsonDictionary = [*(*(&v12 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v4 addObject:diagnosticsJsonDictionary];
      }

      v7 = [accountsArray countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [v3 setObject:v4 forKeyedSubscript:@"accounts"];
  }

  return v3;
}

- (id)recordForAccountKeyHash:(id)hash deviceIdHash:(id)idHash appVersion:(unint64_t)version clientDataHash:(id)dataHash
{
  hashCopy = hash;
  idHashCopy = idHash;
  dataHashCopy = dataHash;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  accountsArray = [(IdsMapLeaf *)self accountsArray];
  v14 = [accountsArray countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v55;
    v39 = accountsArray;
    v40 = hashCopy;
    v43 = idHashCopy;
    v37 = *v55;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(accountsArray);
        }

        v18 = *(*(&v54 + 1) + 8 * i);
        accountKeyHash = [v18 accountKeyHash];
        v20 = [accountKeyHash isEqualToData:hashCopy];

        if (v20)
        {
          v41 = i;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          devicesArray = [v18 devicesArray];
          v44 = [devicesArray countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v44)
          {
            v45 = *v51;
            v38 = v15;
            v42 = devicesArray;
            do
            {
              v22 = 0;
              v23 = v43;
              do
              {
                if (*v51 != v45)
                {
                  objc_enumerationMutation(devicesArray);
                }

                v24 = *(*(&v50 + 1) + 8 * v22);
                deviceIdHash = [v24 deviceIdHash];
                v26 = [deviceIdHash isEqualToData:v23];

                if (v26)
                {
                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  clientDataArray = [v24 clientDataArray];
                  v28 = [clientDataArray countByEnumeratingWithState:&v46 objects:v58 count:16];
                  if (v28)
                  {
                    v29 = v28;
                    v30 = *v47;
                    while (2)
                    {
                      for (j = 0; j != v29; j = j + 1)
                      {
                        if (*v47 != v30)
                        {
                          objc_enumerationMutation(clientDataArray);
                        }

                        v32 = *(*(&v46 + 1) + 8 * j);
                        if ([v32 appVersion] == version)
                        {
                          clientDataHash = [v32 clientDataHash];
                          v34 = [clientDataHash isEqualToData:dataHashCopy];

                          if (v34)
                          {
                            v35 = v32;

                            accountsArray = v39;
                            hashCopy = v40;
                            idHashCopy = v43;
                            goto LABEL_31;
                          }
                        }
                      }

                      v29 = [clientDataArray countByEnumeratingWithState:&v46 objects:v58 count:16];
                      if (v29)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  devicesArray = v42;
                  v23 = v43;
                }

                v22 = v22 + 1;
              }

              while (v22 != v44);
              accountsArray = v39;
              hashCopy = v40;
              v16 = v37;
              v15 = v38;
              v44 = [devicesArray countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v44);
          }

          i = v41;
        }
      }

      v15 = [accountsArray countByEnumeratingWithState:&v54 objects:v60 count:16];
      v35 = 0;
      idHashCopy = v43;
    }

    while (v15);
  }

  else
  {
    v35 = 0;
  }

LABEL_31:

  return v35;
}

- (id)accountForAccountKeyHash:(id)hash
{
  hashCopy = hash;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  accountsArray = [(IdsMapLeaf *)self accountsArray];
  v6 = [accountsArray countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(accountsArray);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        accountKeyHash = [v9 accountKeyHash];
        v11 = [accountKeyHash isEqual:hashCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [accountsArray countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (unint64_t)verifyWithError:(id *)error
{
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  accountsArray = [(IdsMapLeaf *)self accountsArray];
  v5 = [accountsArray countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (!v5)
  {
LABEL_35:

    return 1;
  }

  v6 = v5;
  v7 = *v55;
LABEL_3:
  v8 = 0;
LABEL_4:
  if (*v55 != v7)
  {
    objc_enumerationMutation(accountsArray);
  }

  v9 = *(*(&v54 + 1) + 8 * v8);
  accountKeyHash = [v9 accountKeyHash];
  if (!accountKeyHash || (v11 = accountKeyHash, [v9 accountKeyHash], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11, !v13))
  {
    v37 = -81;
    goto LABEL_41;
  }

  devicesArray = [v9 devicesArray];
  v15 = [devicesArray count];

  if (!v15)
  {
    v37 = -82;
    goto LABEL_41;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  devicesArray2 = [v9 devicesArray];
  v17 = [devicesArray2 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (!v17)
  {
    goto LABEL_33;
  }

  v18 = *v51;
  v43 = accountsArray;
  errorCopy = error;
  v40 = *v51;
  v41 = v6;
LABEL_11:
  v19 = 0;
  v42 = v17;
LABEL_12:
  if (*v51 != v18)
  {
    objc_enumerationMutation(devicesArray2);
  }

  v20 = *(*(&v50 + 1) + 8 * v19);
  clientDataArray = [v20 clientDataArray];
  v22 = [clientDataArray count];

  if (v22)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    clientDataArray2 = [v20 clientDataArray];
    v24 = [clientDataArray2 countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (!v24)
    {
      goto LABEL_31;
    }

    v25 = v24;
    v26 = *v47;
    v39 = v7;
    v45 = devicesArray2;
LABEL_17:
    v27 = 0;
    while (1)
    {
      if (*v47 != v26)
      {
        objc_enumerationMutation(clientDataArray2);
      }

      v28 = *(*(&v46 + 1) + 8 * v27);
      clientDataHash = [v28 clientDataHash];
      if (!clientDataHash)
      {
        break;
      }

      v30 = clientDataHash;
      clientDataHash2 = [v28 clientDataHash];
      v32 = [clientDataHash2 length];

      if (!v32)
      {
        break;
      }

      if ([v28 markedForDeletionMs])
      {
        escrowExpiryMs = [v28 escrowExpiryMs];
        if (escrowExpiryMs <= [v28 markedForDeletionMs])
        {
          v37 = -85;
          goto LABEL_39;
        }
      }

      if (![v28 markedForDeletionMs] && (v34 = objc_msgSend(v28, "expiryMs") != 0, ((v34 ^ (objc_msgSend(v28, "escrowExpiryMs") != 0)) & 1) != 0) || !objc_msgSend(v28, "markedForDeletionMs") && objc_msgSend(v28, "expiryMs") && (v35 = objc_msgSend(v28, "escrowExpiryMs"), v35 <= objc_msgSend(v28, "expiryMs")))
      {
        v37 = -237;
        goto LABEL_39;
      }

      if (v25 == ++v27)
      {
        v25 = [clientDataArray2 countByEnumeratingWithState:&v46 objects:v60 count:16];
        v7 = v39;
        devicesArray2 = v45;
        if (v25)
        {
          goto LABEL_17;
        }

LABEL_31:

        v19 = v19 + 1;
        v6 = v41;
        v18 = v40;
        if (v19 == v42)
        {
          v17 = [devicesArray2 countByEnumeratingWithState:&v50 objects:v61 count:16];
          accountsArray = v43;
          error = errorCopy;
          if (!v17)
          {
LABEL_33:

            if (++v8 == v6)
            {
              v6 = [accountsArray countByEnumeratingWithState:&v54 objects:v62 count:16];
              if (!v6)
              {
                goto LABEL_35;
              }

              goto LABEL_3;
            }

            goto LABEL_4;
          }

          goto LABEL_11;
        }

        goto LABEL_12;
      }
    }

    v37 = -84;
LABEL_39:

    accountsArray = v43;
    error = errorCopy;
    devicesArray2 = v45;
    goto LABEL_40;
  }

  v37 = -83;
  accountsArray = v43;
  error = errorCopy;
LABEL_40:

LABEL_41:
  if (error)
  {
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v37 description:@"MapLeaf missing required fields or inconsistent"];
  }

  if (qword_10039CA40 != -1)
  {
    sub_10025CBCC();
  }

  v38 = qword_10039CA48;
  if (os_log_type_enabled(qword_10039CA48, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v59 = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "MapLeaf missing required fields or inconsistent: %ld", buf, 0xCu);
  }

  return 0;
}

@end