@interface IdsDeviceState
+ (id)parseFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (IdsDeviceState)init;
- (id)data;
- (id)description;
@end

@implementation IdsDeviceState

- (IdsDeviceState)init
{
  v5.receiver = self;
  v5.super_class = IdsDeviceState;
  v2 = [(IdsDeviceState *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(IdsDeviceState *)v2 setExtensions:v3];
  }

  return v2;
}

- (id)data
{
  v3 = +[NSMutableData data];
  v4 = [(IdsDeviceState *)self deviceIdHash];
  v5 = [(TLSMessageClass *)self encodeHashValue:v4 buffer:v3];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(IdsDeviceState *)self clientDataHash];
  v7 = [(TLSMessageClass *)self encodeHashValue:v6 buffer:v3];

  if (!v7)
  {
    goto LABEL_8;
  }

  if ([(TLSMessageClass *)self encodeUint64:[(IdsDeviceState *)self appVersion] buffer:v3]&& [(TLSMessageClass *)self encodeUint64:[(IdsDeviceState *)self addedMs] buffer:v3]&& [(TLSMessageClass *)self encodeUint64:[(IdsDeviceState *)self expiryMs] buffer:v3]&& ([(IdsDeviceState *)self extensions], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(TLSMessageClass *)self encodeExtensions:v8 buffer:v3], v8, v9))
  {
    v10 = v3;
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  return v10;
}

+ (id)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 bytes];
  v8 = [v5 length];
  v9 = objc_alloc_init(objc_opt_class());
  v33 = 0;
  v10 = [v9 parseHashValue:v6 end:&v8[v7] result:&v33];
  v11 = v33;
  if (v10)
  {
    [v9 setDeviceIdHash:v11];
    v32 = 0;
    v12 = [v9 parseHashValue:v10 end:&v8[v7] result:&v32];
    v13 = v32;
    if (v12)
    {
      [v9 setClientDataHash:v13];
      v31 = 0;
      v14 = [v9 parseUint64:v12 end:&v8[v7] result:&v31];
      if (v14)
      {
        v15 = v14;
        [v9 setAppVersion:v31];
        v30 = 0;
        v16 = [v9 parseUint64:v15 end:&v8[v7] result:&v30];
        if (v16)
        {
          v17 = v16;
          [v9 setAddedMs:v30];
          v29 = 0;
          v18 = [v9 parseUint64:v17 end:&v8[v7] result:&v29];
          if (v18)
          {
            v19 = v18;
            [v9 setExpiryMs:v29];
            v28 = 0;
            v20 = [v9 parseExtensions:v19 end:&v8[v7] result:&v28];
            v21 = v28;
            if (v20)
            {
              v22 = [NSMutableArray arrayWithArray:v21];
              [v9 setExtensions:v22];

              [v9 setParsedLength:{v20 - objc_msgSend(v5, "bytes")}];
              v23 = v9;
            }

            else if (a4)
            {
              [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-359 description:@"failed to parse extensions from SingleDataRecord"];
              *a4 = v23 = 0;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_25;
          }

          if (a4)
          {
            v24 = kTransparencyErrorDecode;
            v25 = @"failed to parse expiry timestamp from DeviceState";
            v26 = -358;
            goto LABEL_19;
          }

LABEL_20:
          v23 = 0;
          goto LABEL_25;
        }

        if (!a4)
        {
          goto LABEL_20;
        }

        v24 = kTransparencyErrorDecode;
        v25 = @"failed to parse add timestamp from DeviceState";
        v26 = -357;
      }

      else
      {
        if (!a4)
        {
          goto LABEL_20;
        }

        v24 = kTransparencyErrorDecode;
        v25 = @"failed to parse app version from DeviceState";
        v26 = -356;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_20;
      }

      v24 = kTransparencyErrorDecode;
      v25 = @"failed to parse client data from DeviceState";
      v26 = -355;
    }

LABEL_19:
    [TransparencyError errorWithDomain:v24 code:v26 description:v25];
    *a4 = v23 = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (a4)
  {
    [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-354 description:@"failed to parse device ID from DeviceState"];
    *a4 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_26:

  return v23;
}

- (id)description
{
  v3 = [(NSData *)self->_deviceIdHash kt_hexString];
  v4 = [(NSData *)self->_clientDataHash kt_hexString];
  addedMs = self->_addedMs;
  v6 = [NSString stringWithFormat:@"deviceIdHash:%@ clientDataHash:%@; applicationVersion:%llu; addedMs:%llu; expiryMs:%llu", v3, v4, self->_appVersion, addedMs, self->_expiryMs];;

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
      v6 = [(IdsDeviceState *)self data];
      v7 = [(IdsDeviceState *)v5 data];

      v8 = [v6 isEqualToData:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end