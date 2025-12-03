@interface SingleDataRecord
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (SingleDataRecord)init;
- (id)data;
- (id)debugDescription;
- (id)description;
- (id)diagnosticsJsonDictionary;
@end

@implementation SingleDataRecord

- (SingleDataRecord)init
{
  v6.receiver = self;
  v6.super_class = SingleDataRecord;
  v2 = [(SingleDataRecord *)&v6 init];
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
  if (![(TLSMessageClass *)self encodeUint64:[(SingleDataRecord *)self appVersion] buffer:v3])
  {
    goto LABEL_10;
  }

  clientDataHash = [(SingleDataRecord *)self clientDataHash];
  v5 = [(TLSMessageClass *)self encodeHashValue:clientDataHash buffer:v3];

  if (!v5)
  {
    goto LABEL_10;
  }

  if ([(TLSMessageClass *)self encodeUint64:[(SingleDataRecord *)self markedForDeletionMs] buffer:v3]&& [(TLSMessageClass *)self encodeUint64:[(SingleDataRecord *)self addedMs] buffer:v3]&& [(TLSMessageClass *)self encodeBool:[(SingleDataRecord *)self accountMismatch] buffer:v3]&& [(TLSMessageClass *)self encodeUint64:[(SingleDataRecord *)self expiryMs] buffer:v3]&& [(TLSMessageClass *)self encodeUint64:[(SingleDataRecord *)self escrowExpiryMs] buffer:v3]&& ([(SingleDataRecord *)self extensions], v6 = objc_claimAutoreleasedReturnValue(), v7 = [(TLSMessageClass *)self encodeExtensions:v6 buffer:v3], v6, v7))
  {
    v8 = [NSData dataWithData:v3];
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

+ (id)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  bytes2 = [dataCopy bytes];
  v8 = [dataCopy length];
  v9 = objc_alloc_init(SingleDataRecord);
  v39 = 0;
  v10 = [(TLSMessageClass *)v9 parseUint64:bytes end:&v8[bytes2] result:&v39];
  if (v10)
  {
    v11 = v10;
    [(SingleDataRecord *)v9 setAppVersion:v39];
    v38 = 0;
    v12 = [(TLSMessageClass *)v9 parseHashValue:v11 end:&v8[bytes2] result:&v38];
    v13 = v38;
    if (v12)
    {
      [(SingleDataRecord *)v9 setClientDataHash:v13];
      v37 = 0;
      v14 = [(TLSMessageClass *)v9 parseUint64:v12 end:&v8[bytes2] result:&v37];
      if (v14)
      {
        v15 = v14;
        [(SingleDataRecord *)v9 setMarkedForDeletionMs:v37];
        v36 = 0;
        v16 = [(TLSMessageClass *)v9 parseUint64:v15 end:&v8[bytes2] result:&v36];
        if (v16)
        {
          v17 = v16;
          [(SingleDataRecord *)v9 setAddedMs:v36];
          v35 = 0;
          v18 = [(TLSMessageClass *)v9 parseBool:v17 end:&v8[bytes2] result:&v35];
          if (v18)
          {
            v19 = v18;
            [(SingleDataRecord *)v9 setAccountMismatch:v35];
            v34 = 0;
            v20 = [(TLSMessageClass *)v9 parseUint64:v19 end:&v8[bytes2] result:&v34];
            if (v20)
            {
              v21 = v20;
              [(SingleDataRecord *)v9 setExpiryMs:v34];
              v33 = 0;
              v22 = [(TLSMessageClass *)v9 parseUint64:v21 end:&v8[bytes2] result:&v33];
              if (v22)
              {
                v23 = v22;
                [(SingleDataRecord *)v9 setEscrowExpiryMs:v33];
                v32 = 0;
                v24 = [(TLSMessageClass *)v9 parseExtensions:v23 end:&v8[bytes2] result:&v32];
                v25 = v32;
                if (v24)
                {
                  v26 = [NSMutableArray arrayWithArray:v25];
                  [(SingleDataRecord *)v9 setExtensions:v26];

                  -[SingleDataRecord setParsedLength:](v9, "setParsedLength:", v24 - [dataCopy bytes]);
                  v27 = v9;
                }

                else if (error)
                {
                  [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-256 description:@"failed to parse extensions from SingleDataRecord"];
                  *error = v27 = 0;
                }

                else
                {
                  v27 = 0;
                }

                goto LABEL_27;
              }

              if (error)
              {
                v28 = kTransparencyErrorDecode;
                v29 = @"failed to parse escrow expiry timestamp from SingleDataRecord";
                v30 = -255;
                goto LABEL_25;
              }

LABEL_26:
              v27 = 0;
              goto LABEL_27;
            }

            if (!error)
            {
              goto LABEL_26;
            }

            v28 = kTransparencyErrorDecode;
            v29 = @"failed to parse expiry timestamp from SingleDataRecord";
            v30 = -254;
          }

          else
          {
            if (!error)
            {
              goto LABEL_26;
            }

            v28 = kTransparencyErrorDecode;
            v29 = @"failed to parse account mismatch from SingleDataRecord";
            v30 = -253;
          }
        }

        else
        {
          if (!error)
          {
            goto LABEL_26;
          }

          v28 = kTransparencyErrorDecode;
          v29 = @"failed to parse add timestamp from SingleDataRecord";
          v30 = -252;
        }
      }

      else
      {
        if (!error)
        {
          goto LABEL_26;
        }

        v28 = kTransparencyErrorDecode;
        v29 = @"failed to parse mark timestamp from SingleDataRecord";
        v30 = -251;
      }
    }

    else
    {
      if (!error)
      {
        goto LABEL_26;
      }

      v28 = kTransparencyErrorDecode;
      v29 = @"failed to parse client data from SingleDataRecord";
      v30 = -250;
    }

LABEL_25:
    [TransparencyError errorWithDomain:v28 code:v30 description:v29];
    *error = v27 = 0;
LABEL_27:

    goto LABEL_28;
  }

  if (error)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-249 description:@"failed to parse app version from SingleDataRecord"];
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_28:

  return v27;
}

- (id)debugDescription
{
  appVersion = self->_appVersion;
  kt_hexString = [(NSData *)self->_clientDataHash kt_hexString];
  expiryMs = self->_expiryMs;
  v6 = [NSString stringWithFormat:@"{\tapplicationVersion:%llu\n\tclientDataHash:%@\n\taccountMismatch:%d\n\tmarkedMs:%llu\n\taddedMs:%llu\n\texpiryMs:%llu\n\tescrowExpiryMs:%llu\n}", appVersion, kt_hexString, self->_accountMismatch, self->_markedForDeletionMs, self->_addedMs, expiryMs, self->_escrowExpiryMs];

  return v6;
}

- (id)description
{
  appVersion = self->_appVersion;
  kt_hexString = [(NSData *)self->_clientDataHash kt_hexString];
  expiryMs = self->_expiryMs;
  v6 = [NSString stringWithFormat:@"applicationVersion:%llu clientDataHash:%@; accountMismatch:%d; markedMs:%llu; addedMs:%llu; expiryMs:%llu; escrowExpiryMs:%llu;", appVersion, kt_hexString, self->_accountMismatch, self->_markedForDeletionMs, self->_addedMs, expiryMs, self->_escrowExpiryMs];;

  return v6;
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
      data = [(SingleDataRecord *)self data];
      data2 = [(SingleDataRecord *)v5 data];

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
  v4 = [NSNumber numberWithUnsignedLongLong:[(SingleDataRecord *)self appVersion]];
  [v3 setObject:v4 forKeyedSubscript:@"appVersion"];

  clientDataHash = [(SingleDataRecord *)self clientDataHash];
  kt_hexString = [clientDataHash kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"clientDataHash"];

  v7 = [NSNumber numberWithUnsignedLongLong:[(SingleDataRecord *)self addedMs]];
  [v3 setObject:v7 forKeyedSubscript:@"addedMs"];

  v8 = [NSDate dateWithTimeIntervalSince1970:([(SingleDataRecord *)self addedMs]/ 0x3E8)];
  kt_toISO_8601_UTCString = [v8 kt_toISO_8601_UTCString];
  [v3 setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"addedDateReadable"];

  if ([(SingleDataRecord *)self markedForDeletionMs])
  {
    v10 = [NSNumber numberWithUnsignedLongLong:[(SingleDataRecord *)self markedForDeletionMs]];
    [v3 setObject:v10 forKeyedSubscript:@"markedForDeltionMs"];

    v11 = [NSDate dateWithTimeIntervalSince1970:([(SingleDataRecord *)self markedForDeletionMs]/ 0x3E8)];
    kt_toISO_8601_UTCString2 = [v11 kt_toISO_8601_UTCString];
    [v3 setObject:kt_toISO_8601_UTCString2 forKeyedSubscript:@"markedDateReadable"];
  }

  if ([(SingleDataRecord *)self expiryMs])
  {
    v13 = [NSNumber numberWithUnsignedLongLong:[(SingleDataRecord *)self expiryMs]];
    [v3 setObject:v13 forKeyedSubscript:@"expiryMs"];

    v14 = [NSDate dateWithTimeIntervalSince1970:([(SingleDataRecord *)self expiryMs]/ 0x3E8)];
    kt_toISO_8601_UTCString3 = [v14 kt_toISO_8601_UTCString];
    [v3 setObject:kt_toISO_8601_UTCString3 forKeyedSubscript:@"expiryDateReadable"];
  }

  if ([(SingleDataRecord *)self escrowExpiryMs])
  {
    v16 = [NSNumber numberWithUnsignedLongLong:[(SingleDataRecord *)self escrowExpiryMs]];
    [v3 setObject:v16 forKeyedSubscript:@"escrowExpiryMs"];

    v17 = [NSDate dateWithTimeIntervalSince1970:([(SingleDataRecord *)self escrowExpiryMs]/ 0x3E8)];
    kt_toISO_8601_UTCString4 = [v17 kt_toISO_8601_UTCString];
    [v3 setObject:kt_toISO_8601_UTCString4 forKeyedSubscript:@"escrowExpiryDateReadable"];
  }

  return v3;
}

@end