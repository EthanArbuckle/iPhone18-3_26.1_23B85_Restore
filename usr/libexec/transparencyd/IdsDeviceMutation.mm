@interface IdsDeviceMutation
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (IdsDeviceMutation)init;
- (IdsMutation)idsMutation;
- (id)data;
- (id)debugDescription;
- (id)description;
- (id)diagnosticsJsonDictionary;
@end

@implementation IdsDeviceMutation

- (IdsDeviceMutation)init
{
  v3.receiver = self;
  v3.super_class = IdsDeviceMutation;
  return [(IdsDeviceMutation *)&v3 init];
}

- (id)data
{
  v3 = +[NSMutableData data];
  accountKeyHash = [(IdsDeviceMutation *)self accountKeyHash];
  v5 = [(TLSMessageClass *)self encodeHashValue:accountKeyHash buffer:v3];

  if (!v5)
  {
    goto LABEL_14;
  }

  deviceIdHash = [(IdsDeviceMutation *)self deviceIdHash];
  v7 = [(TLSMessageClass *)self encodeHashValue:deviceIdHash buffer:v3];

  if (!v7)
  {
    goto LABEL_14;
  }

  clientDataHash = [(IdsDeviceMutation *)self clientDataHash];
  v9 = [(TLSMessageClass *)self encodeHashValue:clientDataHash buffer:v3];

  if (!v9 || ![(TLSMessageClass *)self encodeUint64:[(IdsDeviceMutation *)self appVersion] buffer:v3])
  {
    goto LABEL_14;
  }

  idsMutation = [(IdsDeviceMutation *)self idsMutation];
  mutationType = [idsMutation mutationType];

  v12 = mutationType == 1 && [(IdsDeviceMutation *)self accountMismatch];
  if (-[TLSMessageClass encodeBool:buffer:](self, "encodeBool:buffer:", v12, v3) && ((-[IdsDeviceMutation idsMutation](self, "idsMutation"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 mutationType], v13, v14 != 1) ? (v15 = 0) : (v15 = -[IdsDeviceMutation expiryMs](self, "expiryMs")), -[TLSMessageClass encodeUint64:buffer:](self, "encodeUint64:buffer:", v15, v3)))
  {
    v16 = v3;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  return v16;
}

+ (id)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  bytes2 = [dataCopy bytes];
  v8 = [dataCopy length];
  v9 = objc_alloc_init(objc_opt_class());
  v32 = 0;
  v10 = [v9 parseHashValue:bytes end:&v8[bytes2] result:&v32];
  v11 = v32;
  if (v10)
  {
    [v9 setAccountKeyHash:v11];
    v31 = 0;
    v12 = [v9 parseHashValue:v10 end:&v8[bytes2] result:&v31];
    v13 = v31;
    if (!v12)
    {
      if (error)
      {
        [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-243 description:@"failed to parse device ID from Mutation"];
        *error = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_25;
    }

    [v9 setDeviceIdHash:v13];
    v30 = 0;
    v14 = [v9 parseHashValue:v12 end:&v8[bytes2] result:&v30];
    v15 = v30;
    if (v14)
    {
      [v9 setClientDataHash:v15];
      v29 = 0;
      v16 = [v9 parseUint64:v14 end:&v8[bytes2] result:&v29];
      if (v16)
      {
        v17 = v16;
        [v9 setAppVersion:v29];
        v28 = 0;
        [v9 setAccountMismatch:0];
        v18 = [v9 parseBool:v17 end:&v8[bytes2] result:&v28];
        if (v18)
        {
          v19 = v18;
          [v9 setAccountMismatch:v28];
          v27 = 0;
          v20 = [v9 parseUint64:v19 end:&v8[bytes2] result:&v27];
          if (v20)
          {
            v21 = v20;
            [v9 setExpiryMs:v27];
            [v9 setParsedLength:{v21 - objc_msgSend(dataCopy, "bytes")}];
            v22 = v9;
LABEL_24:

LABEL_25:
            goto LABEL_26;
          }

          if (error)
          {
            v23 = kTransparencyErrorDecode;
            v24 = @"failed to parse expiry timestamp from Mutation";
            v25 = -247;
            goto LABEL_22;
          }

LABEL_23:
          v22 = 0;
          goto LABEL_24;
        }

        if (!error)
        {
          goto LABEL_23;
        }

        v23 = kTransparencyErrorDecode;
        v24 = @"failed to parse account mismatch from Mutation";
        v25 = -246;
      }

      else
      {
        if (!error)
        {
          goto LABEL_23;
        }

        v23 = kTransparencyErrorDecode;
        v24 = @"failed to parse app version from Mutation";
        v25 = -245;
      }
    }

    else
    {
      if (!error)
      {
        goto LABEL_23;
      }

      v23 = kTransparencyErrorDecode;
      v24 = @"failed to parse client data from Mutation";
      v25 = -244;
    }

LABEL_22:
    [TransparencyError errorWithDomain:v23 code:v25 description:v24];
    *error = v22 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-242 description:@"failed to parse account key from Mutation"];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_26:

  return v22;
}

- (id)debugDescription
{
  kt_hexString = [(NSData *)self->_accountKeyHash kt_hexString];
  kt_hexString2 = [(NSData *)self->_deviceIdHash kt_hexString];
  kt_hexString3 = [(NSData *)self->_clientDataHash kt_hexString];
  v6 = [NSString stringWithFormat:@"{\t\taccountKeyHash:%@\n\t\tdeviceIdHash:%@\n\t\tclientDataHash:%@\n\t\tapplicationVersion:%llu\n\t\taccountMismatch:%lu\n\t\texpiryMs:%llu\n}", kt_hexString, kt_hexString2, kt_hexString3, self->_appVersion, self->_accountMismatch, self->_expiryMs];

  return v6;
}

- (id)description
{
  kt_hexString = [(NSData *)self->_accountKeyHash kt_hexString];
  kt_hexString2 = [(NSData *)self->_deviceIdHash kt_hexString];
  kt_hexString3 = [(NSData *)self->_clientDataHash kt_hexString];
  v6 = [NSString stringWithFormat:@"accountKeyHash:%@ deviceIdHash::%@; clientDataHash:%@; applicationVersion:%llu; accountMismatch:%lu; expiryMs:%llu", kt_hexString, kt_hexString2, kt_hexString3, self->_appVersion, self->_accountMismatch, self->_expiryMs];;

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
      data = [(IdsDeviceMutation *)self data];
      data2 = [(IdsDeviceMutation *)v5 data];

      v8 = [data isEqualToData:data2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (IdsMutation)idsMutation
{
  WeakRetained = objc_loadWeakRetained(&self->_idsMutation);

  return WeakRetained;
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  accountKeyHash = [(IdsDeviceMutation *)self accountKeyHash];
  kt_hexString = [accountKeyHash kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"accountKeyHash"];

  deviceIdHash = [(IdsDeviceMutation *)self deviceIdHash];
  kt_hexString2 = [deviceIdHash kt_hexString];
  [v3 setObject:kt_hexString2 forKeyedSubscript:@"deviceIdHash"];

  clientDataHash = [(IdsDeviceMutation *)self clientDataHash];
  kt_hexString3 = [clientDataHash kt_hexString];
  [v3 setObject:kt_hexString3 forKeyedSubscript:@"clientDataHash"];

  v10 = [NSNumber numberWithUnsignedLongLong:[(IdsDeviceMutation *)self appVersion]];
  [v3 setObject:v10 forKeyedSubscript:@"appVersion"];

  if ([(IdsDeviceMutation *)self expiryMs])
  {
    v11 = [NSNumber numberWithUnsignedLongLong:[(IdsDeviceMutation *)self expiryMs]];
    [v3 setObject:v11 forKeyedSubscript:@"expiryMs"];

    v12 = [NSDate dateWithTimeIntervalSince1970:([(IdsDeviceMutation *)self expiryMs]/ 0x3E8)];
    kt_toISO_8601_UTCString = [v12 kt_toISO_8601_UTCString];
    [v3 setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"expiryDateReadable"];
  }

  return v3;
}

@end