@interface HAPCharacteristicValueActiveTransitionContext
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueActiveTransitionContext)init;
- (HAPCharacteristicValueActiveTransitionContext)initWithHAPInstanceID:(id)a3 controllerContext:(id)a4 timeElapsedSinceStart:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueActiveTransitionContext

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueActiveTransitionContext);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueActiveTransitionContext *)v6 parseFromData:v5 error:&v11];
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

- (HAPCharacteristicValueActiveTransitionContext)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueActiveTransitionContext;
  return [(HAPCharacteristicValueActiveTransitionContext *)&v3 init];
}

- (HAPCharacteristicValueActiveTransitionContext)initWithHAPInstanceID:(id)a3 controllerContext:(id)a4 timeElapsedSinceStart:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicValueActiveTransitionContext;
  v12 = [(HAPCharacteristicValueActiveTransitionContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_HAPInstanceID, a3);
    objc_storeStrong(&v13->_controllerContext, a4);
    objc_storeStrong(&v13->_timeElapsedSinceStart, a5);
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
    [(HAPCharacteristicValueActiveTransitionContext *)self setHAPInstanceID:v12, v25];
    [(HAPCharacteristicValueActiveTransitionContext *)self setControllerContext:v11];
    [(HAPCharacteristicValueActiveTransitionContext *)self setTimeElapsedSinceStart:v10];
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
        v17 = v27;

        v18 = v10;
        v10 = v20;
LABEL_12:

LABEL_13:
        v9 = v17;
        break;
      case 2:
        v29 = v9;
        v15 = sub_100021B74(2, v7, v13, v31, &v29);
        v17 = v29;

        if (!v17)
        {
          v28 = 0;
          v19 = [NSData parsedFromData:v15 error:&v28];
          v17 = v28;
          v18 = v11;
          v11 = v19;
          goto LABEL_12;
        }

        goto LABEL_13;
      case 1:
        v15 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v30 = v9;
        v16 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v30];
        v17 = v30;

        v18 = v12;
        v12 = v16;
        goto LABEL_12;
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
  v5 = [(HAPCharacteristicValueActiveTransitionContext *)self HAPInstanceID];

  if (v5)
  {
    v6 = [(HAPCharacteristicValueActiveTransitionContext *)self HAPInstanceID];
    v25 = 0;
    v7 = [v6 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_20;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();
    if (v10)
    {
LABEL_19:
      v9 = v10;
LABEL_20:

      if (v8)
      {
LABEL_21:
        if (a3)
        {
          v20 = v8;
          v21 = 0;
          *a3 = v8;
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (v9)
      {
        if (a3)
        {
          goto LABEL_25;
        }

        goto LABEL_28;
      }

LABEL_26:
      v21 = [NSData dataWithBytes:v26 length:?];
      v8 = 0;
      goto LABEL_30;
    }
  }

  v11 = [(HAPCharacteristicValueActiveTransitionContext *)self controllerContext];

  if (!v11)
  {
LABEL_16:
    v18 = [(HAPCharacteristicValueActiveTransitionContext *)self timeElapsedSinceStart];

    if (!v18)
    {
      goto LABEL_26;
    }

    v19 = [(HAPCharacteristicValueActiveTransitionContext *)self timeElapsedSinceStart];
    v23 = 0;
    v7 = [v19 serializeWithError:&v23];
    v8 = v23;

    if (v8)
    {
      goto LABEL_3;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();
    goto LABEL_19;
  }

  v12 = [(HAPCharacteristicValueActiveTransitionContext *)self controllerContext];
  v24 = 0;
  v13 = [v12 serializeWithError:&v24];
  v8 = v24;

  if (v8)
  {

    goto LABEL_21;
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
LABEL_25:
    sub_100041618(v9);
    v8 = 0;
    *a3 = v21 = 0;
    goto LABEL_30;
  }

LABEL_28:
  v8 = 0;
LABEL_29:
  v21 = 0;
LABEL_30:
  TLV8BufferFree();

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPCharacteristicValueActiveTransitionContext allocWithZone:a3];
  v5 = [(HAPCharacteristicValueActiveTransitionContext *)self HAPInstanceID];
  v6 = [(HAPCharacteristicValueActiveTransitionContext *)self controllerContext];
  v7 = [(HAPCharacteristicValueActiveTransitionContext *)self timeElapsedSinceStart];
  v8 = [(HAPCharacteristicValueActiveTransitionContext *)v4 initWithHAPInstanceID:v5 controllerContext:v6 timeElapsedSinceStart:v7];

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
      v8 = [(HAPCharacteristicValueActiveTransitionContext *)self HAPInstanceID];
      v9 = [(HAPCharacteristicValueActiveTransitionContext *)v7 HAPInstanceID];
      if (v8 != v9)
      {
        v3 = [(HAPCharacteristicValueActiveTransitionContext *)self HAPInstanceID];
        v4 = [(HAPCharacteristicValueActiveTransitionContext *)v7 HAPInstanceID];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPCharacteristicValueActiveTransitionContext *)self controllerContext];
      v12 = [(HAPCharacteristicValueActiveTransitionContext *)v7 controllerContext];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPCharacteristicValueActiveTransitionContext *)self controllerContext];
        v27 = [(HAPCharacteristicValueActiveTransitionContext *)v7 controllerContext];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPCharacteristicValueActiveTransitionContext *)self timeElapsedSinceStart];
      v16 = [(HAPCharacteristicValueActiveTransitionContext *)v7 timeElapsedSinceStart];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPCharacteristicValueActiveTransitionContext *)self timeElapsedSinceStart];
        v18 = v25 = v3;
        [(HAPCharacteristicValueActiveTransitionContext *)v7 timeElapsedSinceStart];
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
  v3 = [(HAPCharacteristicValueActiveTransitionContext *)self HAPInstanceID];
  v4 = [(HAPCharacteristicValueActiveTransitionContext *)self controllerContext];
  v5 = [(HAPCharacteristicValueActiveTransitionContext *)self timeElapsedSinceStart];
  v6 = [NSString stringWithFormat:@"<HAPCharacteristicValueActiveTransitionContext HAPInstanceID=%@, controllerContext=%@, timeElapsedSinceStart=%@>", v3, v4, v5];

  return v6;
}

@end