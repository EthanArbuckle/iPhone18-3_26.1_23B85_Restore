@interface HAPCharacteristicValueTransitionControlResponse
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueTransitionControlResponse)init;
- (HAPCharacteristicValueTransitionControlResponse)initWithValueTransition:(id)a3 transitionState:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueTransitionControlResponse

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionControlResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionControlResponse *)v6 parseFromData:v5 error:&v11];
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

- (HAPCharacteristicValueTransitionControlResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionControlResponse;
  return [(HAPCharacteristicValueTransitionControlResponse *)&v3 init];
}

- (HAPCharacteristicValueTransitionControlResponse)initWithValueTransition:(id)a3 transitionState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAPCharacteristicValueTransitionControlResponse;
  v9 = [(HAPCharacteristicValueTransitionControlResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_valueTransition, a3);
    objc_storeStrong(&v10->_transitionState, a4);
  }

  return v10;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_18:
    [(HAPCharacteristicValueTransitionControlResponse *)self setValueTransition:v10];
    [(HAPCharacteristicValueTransitionControlResponse *)self setTransitionState:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7 + v8;
  while (1)
  {
    v28 = 0;
    v26[1] = 0;
    v27 = 0;
    v26[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (a4)
      {
        sub_100041618(Next);
        *a4 = v18 = 0;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (!v27)
    {
      break;
    }

    if (v28 == 2)
    {
      v23 = v11;
      v14 = sub_100021B74(2, v7, v12, v26, &v23);
      v15 = v23;

      if (v15)
      {
        goto LABEL_10;
      }

      v22 = 0;
      v16 = &v22;
      [HAPCharacteristicValueTransitionState parsedFromData:v14 error:&v22];
      v9 = v17 = v9;
LABEL_12:
      v11 = *v16;

LABEL_13:
      goto LABEL_14;
    }

    if (v28 == 1)
    {
      v25 = v11;
      v14 = sub_100021B74(1, v7, v12, v26, &v25);
      v15 = v25;

      if (!v15)
      {
        v24 = 0;
        v16 = &v24;
        [HAPCharacteristicValueTransition parsedFromData:v14 error:&v24];
        v10 = v17 = v10;
        goto LABEL_12;
      }

LABEL_10:
      v11 = v15;
      goto LABEL_13;
    }

LABEL_14:
    v7 = v26[0];
    if (v26[0] >= v12)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  v19 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

  v11 = v19;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_22:
  if (a4)
  {
    v20 = v11;
    v18 = 0;
    *a4 = v11;
    goto LABEL_25;
  }

LABEL_24:
  v18 = 0;
LABEL_25:

  return v18;
}

- (id)serializeWithError:(id *)a3
{
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
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  TLV8BufferInit();
  v5 = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];

  if (!v5)
  {
LABEL_10:
    v13 = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];

    if (v13)
    {
      v14 = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
      v25 = 0;
      v7 = [v14 serializeWithError:&v25];
      v8 = v25;

      if (v8)
      {
        goto LABEL_12;
      }

      v18 = [v7 bytes];
      v19 = [v7 length] + v18;
      do
      {
        if (v19 - v18 >= 255)
        {
          v20 = 255;
        }

        else
        {
          v20 = v19 - v18;
        }

        v21 = TLV8BufferAppend();
        if (v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = v20;
        }

        v18 += v22;
        if (v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = v18 >= v19;
        }
      }

      while (!v23);
      v17 = v21;

      if (v17)
      {
LABEL_28:
        if (a3)
        {
          sub_100041618(v17);
          v8 = 0;
          *a3 = v16 = 0;
          goto LABEL_33;
        }

        v8 = 0;
        goto LABEL_32;
      }
    }

    v16 = [NSData dataWithBytes:v27 length:?];
    v8 = 0;
    goto LABEL_33;
  }

  v6 = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
  v26 = 0;
  v7 = [v6 serializeWithError:&v26];
  v8 = v26;

  if (!v8)
  {
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

        goto LABEL_10;
      }
    }

    v17 = v12;

    goto LABEL_28;
  }

LABEL_12:

  if (a3)
  {
    v15 = v8;
    v16 = 0;
    *a3 = v8;
    goto LABEL_33;
  }

LABEL_32:
  v16 = 0;
LABEL_33:
  TLV8BufferFree();

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPCharacteristicValueTransitionControlResponse allocWithZone:a3];
  v5 = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
  v6 = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
  v7 = [(HAPCharacteristicValueTransitionControlResponse *)v4 initWithValueTransition:v5 transitionState:v6];

  return v7;
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
      v7 = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
      v8 = [(HAPCharacteristicValueTransitionControlResponse *)v6 valueTransition];
      if (v7 != v8)
      {
        v9 = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
        v3 = [(HAPCharacteristicValueTransitionControlResponse *)v6 valueTransition];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
      v12 = [(HAPCharacteristicValueTransitionControlResponse *)v6 transitionState];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
        v14 = [(HAPCharacteristicValueTransitionControlResponse *)v6 transitionState];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (NSString)description
{
  v3 = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
  v4 = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
  v5 = [NSString stringWithFormat:@"<HAPCharacteristicValueTransitionControlResponse valueTransition=%@, transitionState=%@>", v3, v4];

  return v5;
}

@end