@interface HAPCharacteristicValueTransitionControl
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueTransitionControl)init;
- (HAPCharacteristicValueTransitionControl)initWithTransitionFetch:(id)fetch transitionStart:(id)start;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueTransitionControl

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionControl *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (HAPCharacteristicValueTransitionControl)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionControl;
  return [(HAPCharacteristicValueTransitionControl *)&v3 init];
}

- (HAPCharacteristicValueTransitionControl)initWithTransitionFetch:(id)fetch transitionStart:(id)start
{
  fetchCopy = fetch;
  startCopy = start;
  v12.receiver = self;
  v12.super_class = HAPCharacteristicValueTransitionControl;
  v9 = [(HAPCharacteristicValueTransitionControl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transitionFetch, fetch);
    objc_storeStrong(&v10->_transitionStart, start);
  }

  return v10;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_18:
    [(HAPCharacteristicValueTransitionControl *)self setTransitionFetch:v10];
    [(HAPCharacteristicValueTransitionControl *)self setTransitionStart:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
  while (1)
  {
    v28 = 0;
    v26[1] = 0;
    v27 = 0;
    v26[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (error)
      {
        sub_100041618(Next);
        *error = v18 = 0;
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
      v14 = sub_100021B74(2, bytes, v12, v26, &v23);
      v15 = v23;

      if (v15)
      {
        goto LABEL_10;
      }

      v22 = 0;
      v16 = &v22;
      [HAPCharacteristicValueTransitionStart parsedFromData:v14 error:&v22];
      v9 = v17 = v9;
LABEL_12:
      v11 = *v16;

LABEL_13:
      goto LABEL_14;
    }

    if (v28 == 1)
    {
      v25 = v11;
      v14 = sub_100021B74(1, bytes, v12, v26, &v25);
      v15 = v25;

      if (!v15)
      {
        v24 = 0;
        v16 = &v24;
        [HAPCharacteristicValueTransitionFetch parsedFromData:v14 error:&v24];
        v10 = v17 = v10;
        goto LABEL_12;
      }

LABEL_10:
      v11 = v15;
      goto LABEL_13;
    }

LABEL_14:
    bytes = v26[0];
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
  if (error)
  {
    v20 = v11;
    v18 = 0;
    *error = v11;
    goto LABEL_25;
  }

LABEL_24:
  v18 = 0;
LABEL_25:

  return v18;
}

- (id)serializeWithError:(id *)error
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
  transitionFetch = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];

  if (!transitionFetch)
  {
LABEL_10:
    transitionStart = [(HAPCharacteristicValueTransitionControl *)self transitionStart];

    if (transitionStart)
    {
      transitionStart2 = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
      v25 = 0;
      v7 = [transitionStart2 serializeWithError:&v25];
      v8 = v25;

      if (v8)
      {
        goto LABEL_12;
      }

      bytes = [v7 bytes];
      v19 = [v7 length] + bytes;
      do
      {
        if (v19 - bytes >= 255)
        {
          v20 = 255;
        }

        else
        {
          v20 = v19 - bytes;
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

        bytes += v22;
        if (v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = bytes >= v19;
        }
      }

      while (!v23);
      v17 = v21;

      if (v17)
      {
LABEL_28:
        if (error)
        {
          sub_100041618(v17);
          v8 = 0;
          *error = v16 = 0;
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

  transitionFetch2 = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
  v26 = 0;
  v7 = [transitionFetch2 serializeWithError:&v26];
  v8 = v26;

  if (!v8)
  {
    bytes2 = [v7 bytes];
    v10 = [v7 length] + bytes2;
    while (1)
    {
      v11 = v10 - bytes2 >= 255 ? 255 : v10 - bytes2;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      bytes2 += v11;
      if (bytes2 >= v10)
      {

        goto LABEL_10;
      }
    }

    v17 = v12;

    goto LABEL_28;
  }

LABEL_12:

  if (error)
  {
    v15 = v8;
    v16 = 0;
    *error = v8;
    goto LABEL_33;
  }

LABEL_32:
  v16 = 0;
LABEL_33:
  TLV8BufferFree();

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueTransitionControl allocWithZone:zone];
  transitionFetch = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
  transitionStart = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
  v7 = [(HAPCharacteristicValueTransitionControl *)v4 initWithTransitionFetch:transitionFetch transitionStart:transitionStart];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      transitionFetch = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
      transitionFetch2 = [(HAPCharacteristicValueTransitionControl *)v6 transitionFetch];
      if (transitionFetch != transitionFetch2)
      {
        transitionFetch3 = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
        transitionFetch4 = [(HAPCharacteristicValueTransitionControl *)v6 transitionFetch];
        if (![transitionFetch3 isEqual:transitionFetch4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = transitionFetch3;
      }

      transitionStart = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
      transitionStart2 = [(HAPCharacteristicValueTransitionControl *)v6 transitionStart];
      if (transitionStart == transitionStart2)
      {
        v10 = 1;
      }

      else
      {
        transitionStart3 = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
        transitionStart4 = [(HAPCharacteristicValueTransitionControl *)v6 transitionStart];
        v10 = [transitionStart3 isEqual:transitionStart4];
      }

      transitionFetch3 = v16;
      if (transitionFetch == transitionFetch2)
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
  transitionFetch = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
  transitionStart = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
  v5 = [NSString stringWithFormat:@"<HAPCharacteristicValueTransitionControl transitionFetch=%@, transitionStart=%@>", transitionFetch, transitionStart];

  return v5;
}

@end