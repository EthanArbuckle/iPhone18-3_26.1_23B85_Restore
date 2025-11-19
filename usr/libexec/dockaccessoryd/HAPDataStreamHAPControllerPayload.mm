@interface HAPDataStreamHAPControllerPayload
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPDataStreamHAPControllerPayload)init;
- (HAPDataStreamHAPControllerPayload)initWithPayload:(id)a3 sessionIdentifier:(id)a4 forceClose:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPDataStreamHAPControllerPayload

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPDataStreamHAPControllerPayload);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamHAPControllerPayload *)v6 parseFromData:v5 error:&v11];
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

- (HAPDataStreamHAPControllerPayload)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamHAPControllerPayload;
  return [(HAPDataStreamHAPControllerPayload *)&v3 init];
}

- (HAPDataStreamHAPControllerPayload)initWithPayload:(id)a3 sessionIdentifier:(id)a4 forceClose:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPDataStreamHAPControllerPayload;
  v12 = [(HAPDataStreamHAPControllerPayload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_payload, a3);
    objc_storeStrong(&v13->_sessionIdentifier, a4);
    objc_storeStrong(&v13->_forceClose, a5);
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
LABEL_23:
    [(HAPDataStreamHAPControllerPayload *)self setPayload:v12, v25];
    [(HAPDataStreamHAPControllerPayload *)self setSessionIdentifier:v11];
    [(HAPDataStreamHAPControllerPayload *)self setForceClose:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_25;
  }

  v25 = self;
  v26 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v33 = 0;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v32)
    {
      v23 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

      v9 = v23;
      if (v23)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    switch(v33)
    {
      case 3:
        v15 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v27 = v9;
        v20 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v27];
        v16 = v27;

        v18 = v10;
        v10 = v20;
LABEL_12:

LABEL_13:
        v9 = v16;
        break;
      case 2:
        v15 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v28 = v9;
        v19 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v28];
        v16 = v28;

        v18 = v11;
        v11 = v19;
        goto LABEL_12;
      case 1:
        v30 = v9;
        v15 = sub_100021B74(1, v7, v13, v31, &v30);
        v16 = v30;

        if (!v16)
        {
          v29 = 0;
          v17 = [NSData parsedFromData:v15 error:&v29];
          v16 = v29;
          v18 = v12;
          v12 = v17;
          goto LABEL_12;
        }

        goto LABEL_13;
    }

    v7 = v31[0];
    if (v31[0] >= v13)
    {
      if (v9)
      {
LABEL_16:
        if (v26)
        {
          v21 = v9;
          v22 = 0;
          *v26 = v9;
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:
      self = v25;
      goto LABEL_23;
    }
  }

  if (v26)
  {
    sub_100041618(Next);
    *v26 = v22 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v22 = 0;
LABEL_25:

  return v22;
}

- (id)serializeWithError:(id *)a3
{
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  TLV8BufferInit();
  v5 = [(HAPDataStreamHAPControllerPayload *)self payload];

  if (v5)
  {
    v6 = [(HAPDataStreamHAPControllerPayload *)self payload];
    v25 = 0;
    v7 = [v6 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {

      goto LABEL_22;
    }

    v9 = [v7 bytes];
    v10 = [v7 length] + v9;
    while (1)
    {
      v11 = v10 - v9 >= 255 ? 255 : v10 - v9;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      v9 += v11;
      if (v9 >= v10)
      {

        goto LABEL_11;
      }
    }

    v19 = v12;

LABEL_25:
    if (a3)
    {
      sub_100041618(v19);
      v8 = 0;
      *a3 = v21 = 0;
      goto LABEL_30;
    }

    v8 = 0;
    goto LABEL_29;
  }

LABEL_11:
  v13 = [(HAPDataStreamHAPControllerPayload *)self sessionIdentifier];

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [(HAPDataStreamHAPControllerPayload *)self sessionIdentifier];
  v24 = 0;
  v15 = [v14 serializeWithError:&v24];
  v8 = v24;

  if (v8)
  {
LABEL_17:
    v19 = 0;
    goto LABEL_21;
  }

  [v15 bytes];
  [v15 length];
  v16 = TLV8BufferAppend();
  if (!v16)
  {

LABEL_15:
    v17 = [(HAPDataStreamHAPControllerPayload *)self forceClose];

    if (!v17)
    {
      goto LABEL_27;
    }

    v18 = [(HAPDataStreamHAPControllerPayload *)self forceClose];
    v23 = 0;
    v15 = [v18 serializeWithError:&v23];
    v8 = v23;

    if (v8)
    {
      goto LABEL_17;
    }

    [v15 bytes];
    [v15 length];
    v16 = TLV8BufferAppend();
  }

  v19 = v16;
LABEL_21:

  if (!v8)
  {
    if (v19)
    {
      goto LABEL_25;
    }

LABEL_27:
    v21 = [NSData dataWithBytes:v26 length:?];
    v8 = 0;
    goto LABEL_30;
  }

LABEL_22:
  if (a3)
  {
    v20 = v8;
    v21 = 0;
    *a3 = v8;
    goto LABEL_30;
  }

LABEL_29:
  v21 = 0;
LABEL_30:
  TLV8BufferFree();

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPDataStreamHAPControllerPayload allocWithZone:a3];
  v5 = [(HAPDataStreamHAPControllerPayload *)self payload];
  v6 = [(HAPDataStreamHAPControllerPayload *)self sessionIdentifier];
  v7 = [(HAPDataStreamHAPControllerPayload *)self forceClose];
  v8 = [(HAPDataStreamHAPControllerPayload *)v4 initWithPayload:v5 sessionIdentifier:v6 forceClose:v7];

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
      v8 = [(HAPDataStreamHAPControllerPayload *)self payload];
      v9 = [(HAPDataStreamHAPControllerPayload *)v7 payload];
      if (v8 != v9)
      {
        v3 = [(HAPDataStreamHAPControllerPayload *)self payload];
        v4 = [(HAPDataStreamHAPControllerPayload *)v7 payload];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPDataStreamHAPControllerPayload *)self sessionIdentifier];
      v12 = [(HAPDataStreamHAPControllerPayload *)v7 sessionIdentifier];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPDataStreamHAPControllerPayload *)self sessionIdentifier];
        v27 = [(HAPDataStreamHAPControllerPayload *)v7 sessionIdentifier];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPDataStreamHAPControllerPayload *)self forceClose];
      v16 = [(HAPDataStreamHAPControllerPayload *)v7 forceClose];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPDataStreamHAPControllerPayload *)self forceClose];
        v18 = v25 = v3;
        [(HAPDataStreamHAPControllerPayload *)v7 forceClose];
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
  v3 = [(HAPDataStreamHAPControllerPayload *)self payload];
  v4 = [(HAPDataStreamHAPControllerPayload *)self sessionIdentifier];
  v5 = [(HAPDataStreamHAPControllerPayload *)self forceClose];
  v6 = [NSString stringWithFormat:@"<HAPDataStreamHAPControllerPayload payload=%@, sessionIdentifier=%@, forceClose=%@>", v3, v4, v5];

  return v6;
}

@end