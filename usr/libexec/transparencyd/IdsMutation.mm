@interface IdsMutation
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)getOptIn;
- (BOOL)hasOptInExtension;
- (BOOL)isEqual:(id)equal;
- (IdsMutation)init;
- (id)accountKeyHash;
- (id)data;
- (id)debugDescription;
- (id)description;
- (id)diagnosticsJsonDictionary;
- (id)getOptInOutWithExt;
- (int)getSimpleMutationType;
@end

@implementation IdsMutation

- (int)getSimpleMutationType
{
  mutationType = [(IdsMutation *)self mutationType];
  if (mutationType > 6)
  {
    return 1;
  }

  else
  {
    return dword_1002DF2B0[mutationType];
  }
}

- (BOOL)getOptIn
{
  mutationType = [(IdsMutation *)self mutationType];
  switch(mutationType)
  {
    case 6u:
      optInOutMutation = [(IdsMutation *)self optInOutMutation];
      goto LABEL_19;
    case 4u:
      idsDeviceMutation = [(IdsMutation *)self idsDeviceMutation];
      if (idsDeviceMutation)
      {
        v6 = idsDeviceMutation;
        idsDeviceMutation2 = [(IdsMutation *)self idsDeviceMutation];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          idsDeviceMutation3 = [(IdsMutation *)self idsDeviceMutation];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          extensions = [idsDeviceMutation3 extensions];
          v11 = [extensions countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v23;
            while (2)
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v23 != v13)
                {
                  objc_enumerationMutation(extensions);
                }

                v15 = *(*(&v22 + 1) + 8 * i);
                if ([v15 extensionType] == 3)
                {
                  extensionData = [v15 extensionData];
                  v21 = [OptInOutWithExt parseFromData:extensionData error:0];

                  optIn = [v21 optIn];
                  return optIn;
                }
              }

              v12 = [extensions countByEnumeratingWithState:&v22 objects:v26 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      break;
    case 3u:
      optInOutMutation = [(IdsMutation *)self optInOut];
LABEL_19:
      v18 = optInOutMutation;
      optIn2 = [optInOutMutation optIn];

      return optIn2;
  }

  return 0;
}

- (id)getOptInOutWithExt
{
  if ([(IdsMutation *)self mutationType]!= 4)
  {
    goto LABEL_13;
  }

  idsDeviceMutation = [(IdsMutation *)self idsDeviceMutation];
  if (!idsDeviceMutation)
  {
    goto LABEL_13;
  }

  v4 = idsDeviceMutation;
  idsDeviceMutation2 = [(IdsMutation *)self idsDeviceMutation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    idsDeviceMutation3 = [(IdsMutation *)self idsDeviceMutation];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    extensions = [idsDeviceMutation3 extensions];
    v9 = [extensions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(extensions);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 extensionType] == 3)
          {
            extensionData = [v12 extensionData];
            v9 = [OptInOutWithExt parseFromData:extensionData error:0];

            goto LABEL_18;
          }
        }

        v9 = [extensions countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
LABEL_13:
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasOptInExtension
{
  if ([(IdsMutation *)self mutationType]!= 4)
  {
    goto LABEL_13;
  }

  idsDeviceMutation = [(IdsMutation *)self idsDeviceMutation];
  if (!idsDeviceMutation)
  {
    goto LABEL_13;
  }

  v4 = idsDeviceMutation;
  idsDeviceMutation2 = [(IdsMutation *)self idsDeviceMutation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    idsDeviceMutation3 = [(IdsMutation *)self idsDeviceMutation];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    extensions = [idsDeviceMutation3 extensions];
    v9 = [extensions countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(extensions);
          }

          if ([*(*(&v13 + 1) + 8 * i) extensionType] == 3)
          {
            LOBYTE(v9) = 1;
            goto LABEL_16;
          }
        }

        v9 = [extensions countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
LABEL_13:
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)accountKeyHash
{
  mutationType = [(IdsMutation *)self mutationType];
  accountKeyHash = 0;
  if (mutationType <= 6)
  {
    if (((1 << mutationType) & 0x36) != 0)
    {
      idsDeviceMutation = [(IdsMutation *)self idsDeviceMutation];
LABEL_4:
      v6 = idsDeviceMutation;
      accountKeyHash = [idsDeviceMutation accountKeyHash];

      goto LABEL_5;
    }

    if (mutationType == 6)
    {
      idsDeviceMutation = [(IdsMutation *)self optInOutMutation];
      goto LABEL_4;
    }
  }

LABEL_5:

  return accountKeyHash;
}

- (IdsMutation)init
{
  v6.receiver = self;
  v6.super_class = IdsMutation;
  v2 = [(IdsMutation *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    extensions = v2->_extensions;
    v2->_extensions = v3;
  }

  return v2;
}

- (id)data
{
  v3 = +[NSMutableData data];
  if (![(TLSMessageClass *)self encodeByte:[(IdsMutation *)self mutationVersion] buffer:v3]|| ![(TLSMessageClass *)self encodeByte:[(IdsMutation *)self mutationType] buffer:v3]|| ![(TLSMessageClass *)self encodeUint64:[(IdsMutation *)self mutationMs] buffer:v3]|| ([(IdsMutation *)self uriVRFOutput], v4 = objc_claimAutoreleasedReturnValue(), v5 = [(TLSMessageClass *)self encodeVRFOutput:v4 buffer:v3], v4, !v5))
  {
    v7 = 0;
    goto LABEL_12;
  }

  mutationType = [(IdsMutation *)self mutationType];
  v7 = 0;
  if (mutationType > 6)
  {
    data = 0;
  }

  else
  {
    if (((1 << mutationType) & 0x36) != 0)
    {
      idsDeviceMutation = [(IdsMutation *)self idsDeviceMutation];
LABEL_8:
      v9 = idsDeviceMutation;
      data = [idsDeviceMutation data];

      if (data && ([v3 appendData:data], -[IdsMutation extensions](self, "extensions"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[TLSMessageClass encodeExtensions:buffer:](self, "encodeExtensions:buffer:", v11, v3), v11, v12))
      {
        v7 = [NSData dataWithData:v3];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_16;
    }

    if (mutationType == 3)
    {
      idsDeviceMutation = [(IdsMutation *)self optInOut];
      goto LABEL_8;
    }

    data = 0;
    if (mutationType == 6)
    {
      idsDeviceMutation = [(IdsMutation *)self optInOutMutation];
      goto LABEL_8;
    }
  }

LABEL_16:

LABEL_12:

  return v7;
}

+ (id)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  bytes2 = [dataCopy bytes];
  v8 = [dataCopy length];

  v9 = &v8[bytes2];
  v10 = objc_alloc_init(IdsMutation);
  v43 = 0;
  v11 = [(TLSMessageClass *)v10 parseByte:bytes end:v9 result:&v43];
  if (v11)
  {
    v12 = v43 == 2;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    if (error)
    {
      v13 = kTransparencyErrorDecode;
      v14 = @"failed to parse mutation version from Mutation";
      v15 = -265;
LABEL_17:
      [TransparencyError errorWithDomain:v13 code:v15 description:v14];
      *error = v27 = 0;
      goto LABEL_47;
    }

    goto LABEL_18;
  }

  v16 = v11;
  [(IdsMutation *)v10 setMutationVersion:2];
  v42 = 0;
  v17 = [(TLSMessageClass *)v10 parseByte:v16 end:v9 result:&v42];
  if (!v17)
  {
    if (error)
    {
      v13 = kTransparencyErrorDecode;
      v14 = @"failed to parse mutation type from Mutation";
      v15 = -239;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v18 = v17;
  [(IdsMutation *)v10 setMutationType:v42];
  v41 = 0;
  v19 = [(TLSMessageClass *)v10 parseUint64:v18 end:v9 result:&v41];
  if (!v19)
  {
    if (error)
    {
      v13 = kTransparencyErrorDecode;
      v14 = @"failed to parse mutation timestamp from Mutation";
      v15 = -240;
      goto LABEL_17;
    }

LABEL_18:
    v27 = 0;
    goto LABEL_47;
  }

  v20 = v19;
  [(IdsMutation *)v10 setMutationMs:v41];
  v40 = 0;
  v21 = [(TLSMessageClass *)v10 parseVRFOutput:v20 end:v9 result:&v40];
  v22 = v40;
  if (!v21)
  {
    if (error)
    {
      [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-241 description:@"failed to parse uri VRF output from Mutation"];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_46;
  }

  [(IdsMutation *)v10 setUriVRFOutput:v22];
  v23 = [NSData dataWithBytes:v21 length:v9 - v21];
  mutationType = [(IdsMutation *)v10 mutationType];
  if (mutationType > 3)
  {
    if ((mutationType - 4) < 2)
    {
      v38 = 0;
      v25 = [IdsDeviceMutationWithExt parseFromData:v23 error:&v38];
      v26 = v38;
LABEL_23:
      v28 = v26;
      if (v25)
      {
        [v25 setIdsMutation:v10];
        [(IdsMutation *)v10 setIdsDeviceMutation:v25];
LABEL_25:
        parsedLength = [v25 parsedLength];

        v35 = 0;
        v30 = [(TLSMessageClass *)v10 parseExtensions:&parsedLength[v21] end:v9 result:&v35];
        v31 = v35;
        if (v30)
        {
          v32 = [NSMutableArray arrayWithArray:v31];
          [(IdsMutation *)v10 setExtensions:v32];

          v27 = v10;
        }

        else if (error)
        {
          [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-248 description:@"failed to parse extensions from Mutation"];
          *error = v27 = 0;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_45;
      }

      goto LABEL_34;
    }

    if (mutationType == 6)
    {
      v36 = 0;
      v25 = [OptInOutMutation parseFromData:v23 error:&v36];
      v28 = v36;
      if (v25)
      {
        [v25 setIdsMutation:v10];
        [(IdsMutation *)v10 setOptInOutMutation:v25];
        goto LABEL_25;
      }

LABEL_34:
      if (error && v28)
      {
        v33 = v28;
        *error = v28;
      }

      goto LABEL_38;
    }
  }

  else
  {
    if ((mutationType - 1) < 2)
    {
      v39 = 0;
      v25 = [IdsDeviceMutation parseFromData:v23 error:&v39];
      v26 = v39;
      goto LABEL_23;
    }

    if (mutationType == 3)
    {
      v37 = 0;
      v25 = [OptInOut parseFromData:v23 error:&v37];
      v28 = v37;
      if (v25)
      {
        [v25 setIdsMutation:v10];
        [(IdsMutation *)v10 setOptInOut:v25];
        goto LABEL_25;
      }

      goto LABEL_34;
    }
  }

  if (error)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-273 description:@"unknown mutation type in mutation"];
    *error = v27 = 0;
    goto LABEL_45;
  }

LABEL_38:
  v27 = 0;
LABEL_45:

LABEL_46:
LABEL_47:

  return v27;
}

- (id)debugDescription
{
  mutationType = [(IdsMutation *)self mutationType];
  v4 = @"unknown";
  if (mutationType <= 6)
  {
    if (((1 << mutationType) & 0x36) != 0)
    {
      idsDeviceMutation = [(IdsMutation *)self idsDeviceMutation];
LABEL_4:
      v6 = idsDeviceMutation;
      v4 = [idsDeviceMutation debugDescription];

      goto LABEL_5;
    }

    if (mutationType == 3)
    {
      idsDeviceMutation = [(IdsMutation *)self optInOut];
      goto LABEL_4;
    }

    if (mutationType == 6)
    {
      idsDeviceMutation = [(IdsMutation *)self optInOutMutation];
      goto LABEL_4;
    }
  }

LABEL_5:
  mutationType = self->_mutationType;
  mutationMs = self->_mutationMs;
  kt_hexString = [(NSData *)self->_uriVRFOutput kt_hexString];
  v10 = [NSString stringWithFormat:@"{\tmutationType:%hhu\n\tmutationMs:%llu\n\turiVRFOutput:%@\n\tsubMutation:\n%@\n}", mutationType, mutationMs, kt_hexString, v4];

  return v10;
}

- (id)description
{
  mutationType = [(IdsMutation *)self mutationType];
  v4 = @"unknown";
  if (mutationType <= 6)
  {
    if (((1 << mutationType) & 0x36) != 0)
    {
      idsDeviceMutation = [(IdsMutation *)self idsDeviceMutation];
LABEL_4:
      v6 = idsDeviceMutation;
      v4 = [idsDeviceMutation description];

      goto LABEL_5;
    }

    if (mutationType == 3)
    {
      idsDeviceMutation = [(IdsMutation *)self optInOut];
      goto LABEL_4;
    }

    if (mutationType == 6)
    {
      idsDeviceMutation = [(IdsMutation *)self optInOutMutation];
      goto LABEL_4;
    }
  }

LABEL_5:
  mutationType = self->_mutationType;
  mutationMs = self->_mutationMs;
  kt_hexString = [(NSData *)self->_uriVRFOutput kt_hexString];
  v10 = [NSString stringWithFormat:@"mutationType:%hhu mutationMs:%llu; uriVRFOutput:%@; subMutation:%@", mutationType, mutationMs, kt_hexString, v4];;

  return v10;
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
      data = [(IdsMutation *)self data];
      data2 = [(IdsMutation *)v5 data];

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
  v4 = [NSNumber numberWithUnsignedChar:[(IdsMutation *)self mutationVersion]];
  [v3 setObject:v4 forKeyedSubscript:@"version"];

  v5 = [NSNumber numberWithUnsignedChar:[(IdsMutation *)self mutationType]];
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [NSNumber numberWithUnsignedLongLong:[(IdsMutation *)self mutationMs]];
  [v3 setObject:v6 forKeyedSubscript:@"mutationMs"];

  v7 = [NSDate dateWithTimeIntervalSince1970:([(IdsMutation *)self mutationMs]/ 0x3E8)];
  kt_toISO_8601_UTCString = [v7 kt_toISO_8601_UTCString];
  [v3 setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"mutationDateReadable"];

  uriVRFOutput = [(IdsMutation *)self uriVRFOutput];
  kt_hexString = [uriVRFOutput kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"uriVrfOutput"];

  optInOut = [(IdsMutation *)self optInOut];

  if (optInOut)
  {
    optInOut2 = [(IdsMutation *)self optInOut];
    diagnosticsJsonDictionary = [optInOut2 diagnosticsJsonDictionary];
    [v3 setObject:diagnosticsJsonDictionary forKeyedSubscript:@"optInOut"];
  }

  idsDeviceMutation = [(IdsMutation *)self idsDeviceMutation];

  if (idsDeviceMutation)
  {
    idsDeviceMutation2 = [(IdsMutation *)self idsDeviceMutation];
    diagnosticsJsonDictionary2 = [idsDeviceMutation2 diagnosticsJsonDictionary];
    [v3 setObject:diagnosticsJsonDictionary2 forKeyedSubscript:@"idsDeviceMutation"];
  }

  return v3;
}

@end