@interface OptInOutMutation
+ (id)parseFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (IdsMutation)idsMutation;
- (OptInOutMutation)init;
- (id)data;
- (id)description;
@end

@implementation OptInOutMutation

- (OptInOutMutation)init
{
  v6.receiver = self;
  v6.super_class = OptInOutMutation;
  v2 = [(OptInOutMutation *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(OptInOutMutation *)v2 setExtensions:v3];

    v4 = +[NSMutableArray array];
    [(OptInOutMutation *)v2 setDevicesArray:v4];
  }

  return v2;
}

- (id)data
{
  v3 = +[NSMutableData data];
  v4 = [(OptInOutMutation *)self accountKeyHash];
  v5 = [(TLSMessageClass *)self encodeHashValue:v4 buffer:v3];

  if (v5 && [(TLSMessageClass *)self encodeBool:[(OptInOutMutation *)self optIn] buffer:v3]&& [(TLSMessageClass *)self encodeUint64:[(OptInOutMutation *)self timestampMs] buffer:v3])
  {
    v6 = +[NSMutableData data];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(OptInOutMutation *)self devicesArray];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) data];
          if (!v12)
          {

            goto LABEL_20;
          }

          v13 = v12;
          [v6 appendData:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if ([(TLSMessageClass *)self encodeByteArray:v6 minLength:0 maxLength:0xFFFFLL buffer:v3]&& ([(OptInOutMutation *)self extensions], v14 = objc_claimAutoreleasedReturnValue(), v15 = [(TLSMessageClass *)self encodeExtensions:v14 buffer:v3], v14, v15))
    {
      v16 = v3;
    }

    else
    {
LABEL_20:
      v16 = 0;
    }
  }

  else
  {
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
  v44 = 0;
  v10 = [v9 parseHashValue:v6 end:&v8[v7] result:&v44];
  v11 = v44;
  if (!v10)
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v24 = kTransparencyErrorDecode;
    v25 = @"failed to parse account key from OptInOut";
    v26 = -242;
LABEL_15:
    [TransparencyError errorWithDomain:v24 code:v26 description:v25];
    *a4 = v27 = 0;
    goto LABEL_30;
  }

  [v9 setAccountKeyHash:v11];
  v43 = 0;
  v12 = [v9 parseBool:v10 end:&v8[v7] result:&v43];
  if (!v12)
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v24 = kTransparencyErrorDecode;
    v25 = @"failed to parse optIn BOOLean from OptInOut";
    v26 = -274;
    goto LABEL_15;
  }

  v13 = v12;
  [v9 setOptIn:v43];
  v42 = 0;
  v14 = [v9 parseUint64:v13 end:&v8[v7] result:&v42];
  if (!v14)
  {
    if (a4)
    {
      v24 = kTransparencyErrorDecode;
      v25 = @"failed to parse timestampMs from OptInOut";
      v26 = -275;
      goto LABEL_15;
    }

LABEL_16:
    v27 = 0;
    goto LABEL_30;
  }

  v15 = v14;
  [v9 setTimestampMs:v42];
  v41 = 0;
  v16 = [v9 parseByteArray:v15 end:&v8[v7] minLength:0 maxLength:0xFFFFLL result:&v41];
  v17 = v41;
  v18 = v17;
  if (v16)
  {
    v35 = a4;
    v34 = v15;
    v36 = v11;
    if ([v17 length])
    {
      while (1)
      {
        v40 = 0;
        v19 = [IdsDeviceState parseFromData:v18 error:&v40];
        v20 = v40;
        v21 = v20;
        if (!v19)
        {
          break;
        }

        v22 = [v9 devicesArray];
        [v22 addObject:v19];

        v23 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v19 parsedLength] + objc_msgSend(v18, "bytes"), objc_msgSend(v18, "length") - objc_msgSend(v19, "parsedLength"));

        v18 = v23;
        if (![v23 length])
        {
          goto LABEL_20;
        }
      }

      if (v35 && v20)
      {
        v31 = v20;
        *v35 = v21;
      }

      goto LABEL_28;
    }

    v23 = v18;
LABEL_20:
    v39 = 0;
    v28 = [v9 parseExtensions:v16 end:&v8[v7] result:&v39];
    v29 = v39;
    if (v28)
    {
      goto LABEL_21;
    }

    v38 = 0;
    v33 = [v9 parseByteArray:v34 end:&v8[v7] minLength:0 maxLength:0x10000 result:&v38];
    v23 = v38;
    if (!v33)
    {
      if (v35)
      {
        [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-360 description:@"failed to parse devices from OptInOut"];
        v27 = 0;
        *v35 = v29 = 0;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      goto LABEL_23;
    }

    v37 = 0;
    v28 = [v9 parseExtensions:v33 end:&v8[v7] result:&v37];
    v29 = v37;
    if (v28)
    {
LABEL_21:
      v30 = [NSMutableArray arrayWithArray:v29];
      [v9 setExtensions:v30];

      [v9 setParsedLength:{v28 - objc_msgSend(v5, "bytes")}];
      v27 = v9;
    }

    else if (v35)
    {
      [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-248 description:@"failed to parse extensions from OptInOut"];
      *v35 = v27 = 0;
    }

    else
    {
      v27 = 0;
    }

    v11 = v36;
LABEL_23:

    v18 = v23;
    goto LABEL_29;
  }

  if (!a4)
  {
LABEL_28:
    v27 = 0;
    goto LABEL_29;
  }

  [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-360 description:@"failed to parse devices from OptInOut"];
  *a4 = v27 = 0;
LABEL_29:

LABEL_30:

  return v27;
}

- (id)description
{
  v3 = [(OptInOutMutation *)self accountKeyHash];
  v4 = [v3 kt_hexString];
  if ([(OptInOutMutation *)self optIn])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(OptInOutMutation *)self timestampMs];
  v7 = [(OptInOutMutation *)self devicesArray];
  v8 = [NSString stringWithFormat:@"accountKeyHash:%@, optIn:%@ timestampMs:%llu, devices: %@", v4, v5, v6, v7];;

  return v8;
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
      v6 = [(OptInOutMutation *)self data];
      v7 = [(OptInOutMutation *)v5 data];

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

@end