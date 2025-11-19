@interface HAPCharacteristicValueTransitionFetch
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueTransitionFetch)init;
- (HAPCharacteristicValueTransitionFetch)initWithHAPInstanceID:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueTransitionFetch

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionFetch);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionFetch *)v6 parseFromData:v5 error:&v11];
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

- (HAPCharacteristicValueTransitionFetch)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionFetch;
  return [(HAPCharacteristicValueTransitionFetch *)&v3 init];
}

- (HAPCharacteristicValueTransitionFetch)initWithHAPInstanceID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAPCharacteristicValueTransitionFetch;
  v6 = [(HAPCharacteristicValueTransitionFetch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_HAPInstanceID, a3);
  }

  return v7;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v9 = 0;
LABEL_16:
    [(HAPCharacteristicValueTransitionFetch *)self setHAPInstanceID:v9, v20];
    v10 = 0;
    v17 = 1;
  }

  else
  {
    v20 = self;
    v9 = 0;
    v10 = 0;
    v11 = &v7[v8];
    while (1)
    {
      v25 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        break;
      }

      if (!v24)
      {
        v18 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

        v10 = v18;
        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

      if (v25 == 1)
      {
        v13 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v21 = v10;
        v14 = [HAPTLVUnsignedNumberValue parsedFromData:v13 error:&v21];
        v15 = v21;

        v10 = v15;
        v9 = v14;
      }

      if (v22 >= v11)
      {
        if (v10)
        {
LABEL_9:
          if (a4)
          {
            v16 = v10;
            v17 = 0;
            *a4 = v10;
            goto LABEL_18;
          }

          goto LABEL_17;
        }

LABEL_15:
        self = v20;
        goto LABEL_16;
      }
    }

    if (a4)
    {
      sub_100041618(Next);
      *a4 = v17 = 0;
      goto LABEL_18;
    }

LABEL_17:
    v17 = 0;
  }

LABEL_18:

  return v17;
}

- (id)serializeWithError:(id *)a3
{
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  TLV8BufferInit();
  v5 = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
  v13 = 0;
  v7 = [v6 serializeWithError:&v13];
  v8 = v13;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v11 = TLV8BufferAppend();

    if (v11)
    {
      if (a3)
      {
        sub_100041618(v11);
        v8 = 0;
        *a3 = v10 = 0;
        goto LABEL_11;
      }

      v8 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v10 = [NSData dataWithBytes:v14 length:?];
    v8 = 0;
    goto LABEL_11;
  }

  if (a3)
  {
    v9 = v8;
    v10 = 0;
    *a3 = v8;
    goto LABEL_11;
  }

LABEL_10:
  v10 = 0;
LABEL_11:
  TLV8BufferFree();

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPCharacteristicValueTransitionFetch allocWithZone:a3];
  v5 = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
  v6 = [(HAPCharacteristicValueTransitionFetch *)v4 initWithHAPInstanceID:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
      v7 = [(HAPCharacteristicValueTransitionFetch *)v5 HAPInstanceID];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
        v9 = [(HAPCharacteristicValueTransitionFetch *)v5 HAPInstanceID];
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)description
{
  v2 = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
  v3 = [NSString stringWithFormat:@"<HAPCharacteristicValueTransitionFetch HAPInstanceID=%@>", v2];

  return v3;
}

@end