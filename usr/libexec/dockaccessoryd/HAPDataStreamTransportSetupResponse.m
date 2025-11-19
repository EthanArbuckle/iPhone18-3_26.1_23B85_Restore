@interface HAPDataStreamTransportSetupResponse
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPDataStreamTransportSetupResponse)init;
- (HAPDataStreamTransportSetupResponse)initWithStatus:(id)a3 parameters:(id)a4 accessoryKeySalt:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPDataStreamTransportSetupResponse

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPDataStreamTransportSetupResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportSetupResponse *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (HAPDataStreamTransportSetupResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamTransportSetupResponse;
  return [(HAPDataStreamTransportSetupResponse *)&v3 init];
}

- (HAPDataStreamTransportSetupResponse)initWithStatus:(id)a3 parameters:(id)a4 accessoryKeySalt:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPDataStreamTransportSetupResponse;
  v12 = [(HAPDataStreamTransportSetupResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_status, a3);
    objc_storeStrong(&v13->_parameters, a4);
    objc_storeStrong(&v13->_accessoryKeySalt, a5);
  }

  return v13;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_20:
    [(HAPDataStreamTransportSetupResponse *)self setStatus:v12, v26];
    [(HAPDataStreamTransportSetupResponse *)self setParameters:v11];
    [(HAPDataStreamTransportSetupResponse *)self setAccessoryKeySalt:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_27;
  }

  v26 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v34 = 0;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (v26)
      {
        sub_100041618(Next);
        *v26 = v22 = 0;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v33)
    {
      break;
    }

    switch(v34)
    {
      case 3:
        v28 = v9;
        v15 = sub_100021B74(3, v7, v13, v32, &v28);
        v19 = v28;

        if (v19)
        {
          goto LABEL_12;
        }

        v27 = 0;
        v21 = [NSData parsedFromData:v15 error:&v27];
        v9 = v27;
        v18 = v10;
        v10 = v21;
LABEL_14:

LABEL_15:
        break;
      case 2:
        v30 = v9;
        v15 = sub_100021B74(2, v7, v13, v32, &v30);
        v19 = v30;

        if (!v19)
        {
          v29 = 0;
          v20 = [HAPDataStreamTransportParameters parsedFromData:v15 error:&v29];
          v9 = v29;
          v18 = v11;
          v11 = v20;
          goto LABEL_14;
        }

LABEL_12:
        v9 = v19;
        goto LABEL_15;
      case 1:
        v15 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v31 = v9;
        v16 = [HAPDataStreamTransportCommandStatusWrapper parsedFromData:v15 error:&v31];
        v17 = v31;

        v18 = v12;
        v12 = v16;
        v9 = v17;
        goto LABEL_14;
    }

    v7 = v32[0];
    if (v32[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  v23 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

  v9 = v23;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_24:
  if (v26)
  {
    v24 = v9;
    v22 = 0;
    *v26 = v9;
    goto LABEL_27;
  }

LABEL_26:
  v22 = 0;
LABEL_27:

  return v22;
}

- (id)serializeWithError:(id *)a3
{
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  TLV8BufferInit();
  v5 = [(HAPDataStreamTransportSetupResponse *)self status];

  if (v5)
  {
    v6 = [(HAPDataStreamTransportSetupResponse *)self status];
    v30 = 0;
    v7 = [v6 serializeWithError:&v30];
    v8 = v30;

    if (v8)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_31;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();
    if (v10)
    {
LABEL_30:
      v9 = v10;
LABEL_31:

      if (v8)
      {
LABEL_32:
        if (a3)
        {
          v25 = v8;
          v26 = 0;
          *a3 = v8;
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (v9)
      {
        if (a3)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }

LABEL_37:
      v26 = [NSData dataWithBytes:v31 length:?];
      v8 = 0;
      goto LABEL_41;
    }
  }

  v11 = [(HAPDataStreamTransportSetupResponse *)self parameters];

  if (!v11)
  {
LABEL_16:
    v18 = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];

    if (!v18)
    {
      goto LABEL_37;
    }

    v19 = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
    v28 = 0;
    v7 = [v19 serializeWithError:&v28];
    v8 = v28;

    if (v8)
    {
      goto LABEL_3;
    }

    v20 = [v7 bytes];
    v21 = [v7 length] + v20;
    do
    {
      if (v21 - v20 >= 255)
      {
        v22 = 255;
      }

      else
      {
        v22 = v21 - v20;
      }

      v10 = TLV8BufferAppend();
      if (v10)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      v20 += v23;
      if (v10)
      {
        v24 = 1;
      }

      else
      {
        v24 = v20 >= v21;
      }
    }

    while (!v24);
    goto LABEL_30;
  }

  v12 = [(HAPDataStreamTransportSetupResponse *)self parameters];
  v29 = 0;
  v13 = [v12 serializeWithError:&v29];
  v8 = v29;

  if (v8)
  {

    goto LABEL_32;
  }

  v14 = [v13 bytes];
  v15 = [v13 length] + v14;
  while (1)
  {
    v16 = v15 - v14 >= 255 ? 255 : v15 - v14;
    v17 = TLV8BufferAppend();
    if (v17)
    {
      break;
    }

    v14 += v16;
    if (v14 >= v15)
    {

      goto LABEL_16;
    }
  }

  v9 = v17;

  if (a3)
  {
LABEL_36:
    sub_100041618(v9);
    v8 = 0;
    *a3 = v26 = 0;
    goto LABEL_41;
  }

LABEL_39:
  v8 = 0;
LABEL_40:
  v26 = 0;
LABEL_41:
  TLV8BufferFree();

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPDataStreamTransportSetupResponse allocWithZone:a3];
  v5 = [(HAPDataStreamTransportSetupResponse *)self status];
  v6 = [(HAPDataStreamTransportSetupResponse *)self parameters];
  v7 = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
  v8 = [(HAPDataStreamTransportSetupResponse *)v4 initWithStatus:v5 parameters:v6 accessoryKeySalt:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(HAPDataStreamTransportSetupResponse *)self status];
      v9 = [(HAPDataStreamTransportSetupResponse *)v7 status];
      if (v8 != v9)
      {
        v3 = [(HAPDataStreamTransportSetupResponse *)self status];
        v4 = [(HAPDataStreamTransportSetupResponse *)v7 status];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPDataStreamTransportSetupResponse *)self parameters];
      v12 = [(HAPDataStreamTransportSetupResponse *)v7 parameters];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPDataStreamTransportSetupResponse *)self parameters];
        v27 = [(HAPDataStreamTransportSetupResponse *)v7 parameters];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
      v16 = [(HAPDataStreamTransportSetupResponse *)v7 accessoryKeySalt];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
        v18 = v25 = v3;
        [(HAPDataStreamTransportSetupResponse *)v7 accessoryKeySalt];
        v24 = v11;
        v19 = v4;
        v20 = v9;
        v22 = v21 = v8;
        v10 = [v18 isEqual:v22];

        v8 = v21;
        v9 = v20;
        v4 = v19;
        v11 = v24;

        v3 = v25;
      }

      v13 = v28;
      v14 = v26;
      if (v11 == v28)
      {
LABEL_18:

        if (v8 == v9)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (NSString)description
{
  v3 = [(HAPDataStreamTransportSetupResponse *)self status];
  v4 = [(HAPDataStreamTransportSetupResponse *)self parameters];
  v5 = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
  v6 = [NSString stringWithFormat:@"<HAPDataStreamTransportSetupResponse status=%@, parameters=%@, accessoryKeySalt=%@>", v3, v4, v5];

  return v6;
}

@end