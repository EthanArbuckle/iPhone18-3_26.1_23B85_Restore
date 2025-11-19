@interface HAPCharacteristicValueTransitionPoint
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueTransitionPoint)init;
- (HAPCharacteristicValueTransitionPoint)initWithTargetValue:(id)a3 targetCompletionDuration:(id)a4 startDelayDuration:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueTransitionPoint

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionPoint);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionPoint *)v6 parseFromData:v5 error:&v11];
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

- (HAPCharacteristicValueTransitionPoint)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionPoint;
  return [(HAPCharacteristicValueTransitionPoint *)&v3 init];
}

- (HAPCharacteristicValueTransitionPoint)initWithTargetValue:(id)a3 targetCompletionDuration:(id)a4 startDelayDuration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicValueTransitionPoint;
  v12 = [(HAPCharacteristicValueTransitionPoint *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_targetValue, a3);
    objc_storeStrong(&v13->_targetCompletionDuration, a4);
    objc_storeStrong(&v13->_startDelayDuration, a5);
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
    [(HAPCharacteristicValueTransitionPoint *)self setTargetValue:v12, v25];
    [(HAPCharacteristicValueTransitionPoint *)self setTargetCompletionDuration:v11];
    [(HAPCharacteristicValueTransitionPoint *)self setStartDelayDuration:v10];
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
  v5 = [(HAPCharacteristicValueTransitionPoint *)self targetValue];

  if (v5)
  {
    v6 = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
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
  v13 = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
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
    v17 = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];

    if (!v17)
    {
      goto LABEL_27;
    }

    v18 = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
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
  v4 = [HAPCharacteristicValueTransitionPoint allocWithZone:a3];
  v5 = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
  v6 = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
  v7 = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
  v8 = [(HAPCharacteristicValueTransitionPoint *)v4 initWithTargetValue:v5 targetCompletionDuration:v6 startDelayDuration:v7];

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
      v8 = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
      v9 = [(HAPCharacteristicValueTransitionPoint *)v7 targetValue];
      if (v8 != v9)
      {
        v3 = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
        v4 = [(HAPCharacteristicValueTransitionPoint *)v7 targetValue];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
      v12 = [(HAPCharacteristicValueTransitionPoint *)v7 targetCompletionDuration];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
        v27 = [(HAPCharacteristicValueTransitionPoint *)v7 targetCompletionDuration];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
      v16 = [(HAPCharacteristicValueTransitionPoint *)v7 startDelayDuration];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
        v18 = v25 = v3;
        [(HAPCharacteristicValueTransitionPoint *)v7 startDelayDuration];
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
  v3 = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
  v4 = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
  v5 = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
  v6 = [NSString stringWithFormat:@"<HAPCharacteristicValueTransitionPoint targetValue=%@, targetCompletionDuration=%@, startDelayDuration=%@>", v3, v4, v5];

  return v6;
}

@end