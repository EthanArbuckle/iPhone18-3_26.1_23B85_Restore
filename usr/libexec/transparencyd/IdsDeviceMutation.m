@interface IdsDeviceMutation
+ (id)parseFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
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
  v4 = [(IdsDeviceMutation *)self accountKeyHash];
  v5 = [(TLSMessageClass *)self encodeHashValue:v4 buffer:v3];

  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [(IdsDeviceMutation *)self deviceIdHash];
  v7 = [(TLSMessageClass *)self encodeHashValue:v6 buffer:v3];

  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = [(IdsDeviceMutation *)self clientDataHash];
  v9 = [(TLSMessageClass *)self encodeHashValue:v8 buffer:v3];

  if (!v9 || ![(TLSMessageClass *)self encodeUint64:[(IdsDeviceMutation *)self appVersion] buffer:v3])
  {
    goto LABEL_14;
  }

  v10 = [(IdsDeviceMutation *)self idsMutation];
  v11 = [v10 mutationType];

  v12 = v11 == 1 && [(IdsDeviceMutation *)self accountMismatch];
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

+ (id)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 bytes];
  v8 = [v5 length];
  v9 = objc_alloc_init(objc_opt_class());
  v32 = 0;
  v10 = [v9 parseHashValue:v6 end:&v8[v7] result:&v32];
  v11 = v32;
  if (v10)
  {
    [v9 setAccountKeyHash:v11];
    v31 = 0;
    v12 = [v9 parseHashValue:v10 end:&v8[v7] result:&v31];
    v13 = v31;
    if (!v12)
    {
      if (a4)
      {
        [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-243 description:@"failed to parse device ID from Mutation"];
        *a4 = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_25;
    }

    [v9 setDeviceIdHash:v13];
    v30 = 0;
    v14 = [v9 parseHashValue:v12 end:&v8[v7] result:&v30];
    v15 = v30;
    if (v14)
    {
      [v9 setClientDataHash:v15];
      v29 = 0;
      v16 = [v9 parseUint64:v14 end:&v8[v7] result:&v29];
      if (v16)
      {
        v17 = v16;
        [v9 setAppVersion:v29];
        v28 = 0;
        [v9 setAccountMismatch:0];
        v18 = [v9 parseBool:v17 end:&v8[v7] result:&v28];
        if (v18)
        {
          v19 = v18;
          [v9 setAccountMismatch:v28];
          v27 = 0;
          v20 = [v9 parseUint64:v19 end:&v8[v7] result:&v27];
          if (v20)
          {
            v21 = v20;
            [v9 setExpiryMs:v27];
            [v9 setParsedLength:{v21 - objc_msgSend(v5, "bytes")}];
            v22 = v9;
LABEL_24:

LABEL_25:
            goto LABEL_26;
          }

          if (a4)
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

        if (!a4)
        {
          goto LABEL_23;
        }

        v23 = kTransparencyErrorDecode;
        v24 = @"failed to parse account mismatch from Mutation";
        v25 = -246;
      }

      else
      {
        if (!a4)
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
      if (!a4)
      {
        goto LABEL_23;
      }

      v23 = kTransparencyErrorDecode;
      v24 = @"failed to parse client data from Mutation";
      v25 = -244;
    }

LABEL_22:
    [TransparencyError errorWithDomain:v23 code:v25 description:v24];
    *a4 = v22 = 0;
    goto LABEL_24;
  }

  if (a4)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-242 description:@"failed to parse account key from Mutation"];
    *a4 = v22 = 0;
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
  v3 = [(NSData *)self->_accountKeyHash kt_hexString];
  v4 = [(NSData *)self->_deviceIdHash kt_hexString];
  v5 = [(NSData *)self->_clientDataHash kt_hexString];
  v6 = [NSString stringWithFormat:@"{\t\taccountKeyHash:%@\n\t\tdeviceIdHash:%@\n\t\tclientDataHash:%@\n\t\tapplicationVersion:%llu\n\t\taccountMismatch:%lu\n\t\texpiryMs:%llu\n}", v3, v4, v5, self->_appVersion, self->_accountMismatch, self->_expiryMs];

  return v6;
}

- (id)description
{
  v3 = [(NSData *)self->_accountKeyHash kt_hexString];
  v4 = [(NSData *)self->_deviceIdHash kt_hexString];
  v5 = [(NSData *)self->_clientDataHash kt_hexString];
  v6 = [NSString stringWithFormat:@"accountKeyHash:%@ deviceIdHash::%@; clientDataHash:%@; applicationVersion:%llu; accountMismatch:%lu; expiryMs:%llu", v3, v4, v5, self->_appVersion, self->_accountMismatch, self->_expiryMs];;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IdsDeviceMutation *)self data];
      v7 = [(IdsDeviceMutation *)v5 data];

      v8 = [v6 isEqualToData:v7];
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
  v4 = [(IdsDeviceMutation *)self accountKeyHash];
  v5 = [v4 kt_hexString];
  [v3 setObject:v5 forKeyedSubscript:@"accountKeyHash"];

  v6 = [(IdsDeviceMutation *)self deviceIdHash];
  v7 = [v6 kt_hexString];
  [v3 setObject:v7 forKeyedSubscript:@"deviceIdHash"];

  v8 = [(IdsDeviceMutation *)self clientDataHash];
  v9 = [v8 kt_hexString];
  [v3 setObject:v9 forKeyedSubscript:@"clientDataHash"];

  v10 = [NSNumber numberWithUnsignedLongLong:[(IdsDeviceMutation *)self appVersion]];
  [v3 setObject:v10 forKeyedSubscript:@"appVersion"];

  if ([(IdsDeviceMutation *)self expiryMs])
  {
    v11 = [NSNumber numberWithUnsignedLongLong:[(IdsDeviceMutation *)self expiryMs]];
    [v3 setObject:v11 forKeyedSubscript:@"expiryMs"];

    v12 = [NSDate dateWithTimeIntervalSince1970:([(IdsDeviceMutation *)self expiryMs]/ 0x3E8)];
    v13 = [v12 kt_toISO_8601_UTCString];
    [v3 setObject:v13 forKeyedSubscript:@"expiryDateReadable"];
  }

  return v3;
}

@end