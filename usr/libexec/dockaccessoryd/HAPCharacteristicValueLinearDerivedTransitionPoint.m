@interface HAPCharacteristicValueLinearDerivedTransitionPoint
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueLinearDerivedTransitionPoint)init;
- (HAPCharacteristicValueLinearDerivedTransitionPoint)initWithScale:(id)a3 offset:(id)a4 targetCompletionDuration:(id)a5 startDelayDuration:(id)a6;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueLinearDerivedTransitionPoint

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueLinearDerivedTransitionPoint);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 parseFromData:v5 error:&v11];
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

- (HAPCharacteristicValueLinearDerivedTransitionPoint)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueLinearDerivedTransitionPoint;
  return [(HAPCharacteristicValueLinearDerivedTransitionPoint *)&v3 init];
}

- (HAPCharacteristicValueLinearDerivedTransitionPoint)initWithScale:(id)a3 offset:(id)a4 targetCompletionDuration:(id)a5 startDelayDuration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HAPCharacteristicValueLinearDerivedTransitionPoint;
  v15 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_scale, a3);
    objc_storeStrong(&v16->_offset, a4);
    objc_storeStrong(&v16->_targetCompletionDuration, a5);
    objc_storeStrong(&v16->_startDelayDuration, a6);
  }

  return v16;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 >= 1)
  {
    v24 = self;
    v25 = a4;
    v26 = v6;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = &v7[v8];
    while (1)
    {
      v34 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (v25)
        {
          sub_100041618(Next);
          *v25 = v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        v6 = v26;
        goto LABEL_28;
      }

      if (!v33)
      {
        v22 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

        v9 = v22;
        if (v22)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          v16 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
          v28 = v9;
          v17 = &v28;
          [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v28];
          v11 = v18 = v11;
          goto LABEL_14;
        }

        if (v34 == 4)
        {
          v16 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
          v27 = v9;
          v17 = &v27;
          [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v27];
          v10 = v18 = v10;
          goto LABEL_14;
        }
      }

      else
      {
        if (v34 == 1)
        {
          v16 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
          v30 = v9;
          v17 = &v30;
          [HAPTLVFloatNumberValue parsedFromData:v16 error:&v30];
          v13 = v18 = v13;
          goto LABEL_14;
        }

        if (v34 == 2)
        {
          v16 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
          v29 = v9;
          v17 = &v29;
          [HAPTLVFloatNumberValue parsedFromData:v16 error:&v29];
          v12 = v18 = v12;
LABEL_14:
          v19 = *v17;

          v9 = v19;
        }
      }

      if (v31 >= v14)
      {
        if (v9)
        {
LABEL_17:
          v6 = v26;
          if (v25)
          {
            v20 = v9;
            v21 = 0;
            *v25 = v9;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_28;
        }

LABEL_23:
        v6 = v26;
        self = v24;
        goto LABEL_24;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_24:
  [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self setScale:v13];
  [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self setOffset:v12];
  [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self setTargetCompletionDuration:v11];
  [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self setStartDelayDuration:v10];
  v9 = 0;
  v21 = 1;
LABEL_28:

  return v21;
}

- (id)serializeWithError:(id *)a3
{
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
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  TLV8BufferInit();
  v5 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];

  if (v5)
  {
    v6 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
    v23 = 0;
    v7 = [v6 serializeWithError:&v23];
    v8 = v23;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_17;
    }
  }

  v10 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];

  if (v10)
  {
    v11 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
    v22 = 0;
    v7 = [v11 serializeWithError:&v22];
    v8 = v22;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_17;
    }
  }

  v12 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];

  if (v12)
  {
    v13 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
    v21 = 0;
    v7 = [v13 serializeWithError:&v21];
    v8 = v21;

    if (!v8)
    {
      [v7 bytes];
      [v7 length];
      v9 = TLV8BufferAppend();
      if (v9)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_18;
  }

LABEL_13:
  v14 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
  v20 = 0;
  v7 = [v15 serializeWithError:&v20];
  v8 = v20;

  if (v8)
  {
    goto LABEL_15;
  }

  [v7 bytes];
  [v7 length];
  v9 = TLV8BufferAppend();
LABEL_17:
  v16 = v9;
LABEL_18:

  if (!v8)
  {
    if (v16)
    {
      if (a3)
      {
        sub_100041618(v16);
        v8 = 0;
        *a3 = v18 = 0;
        goto LABEL_27;
      }

      v8 = 0;
      goto LABEL_26;
    }

LABEL_24:
    v18 = [NSData dataWithBytes:v24 length:?];
    v8 = 0;
    goto LABEL_27;
  }

  if (a3)
  {
    v17 = v8;
    v18 = 0;
    *a3 = v8;
    goto LABEL_27;
  }

LABEL_26:
  v18 = 0;
LABEL_27:
  TLV8BufferFree();

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPCharacteristicValueLinearDerivedTransitionPoint allocWithZone:a3];
  v5 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
  v6 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
  v7 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
  v8 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
  v9 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v4 initWithScale:v5 offset:v6 targetCompletionDuration:v7 startDelayDuration:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
      v8 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 scale];
      if (v7 != v8)
      {
        v9 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
        [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 scale];
        v33 = v32 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
      v12 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 offset];
      if (v11 != v12)
      {
        v3 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
        v30 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 offset];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (v7 == v8)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      v13 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
      v14 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 targetCompletionDuration];
      v31 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v28 = v3;
        v29 = v12;
      }

      else
      {
        v17 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
        v25 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 targetCompletionDuration];
        v26 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = v3;
        v29 = v12;
      }

      v27 = v16;
      v18 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
      v19 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 startDelayDuration];
      v20 = v19;
      if (v18 == v19)
      {

        v10 = 1;
      }

      else
      {
        v21 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
        v22 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 startDelayDuration];
        v10 = [v21 isEqual:v22];
      }

      v23 = v31;
      v16 = v27;
      v3 = v28;
      v12 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (v11 == v12)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (NSString)description
{
  v3 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
  v4 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
  v5 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
  v6 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
  v7 = [NSString stringWithFormat:@"<HAPCharacteristicValueLinearDerivedTransitionPoint scale=%@, offset=%@, targetCompletionDuration=%@, startDelayDuration=%@>", v3, v4, v5, v6];

  return v7;
}

@end