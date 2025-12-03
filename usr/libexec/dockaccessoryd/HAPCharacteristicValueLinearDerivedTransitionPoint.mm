@interface HAPCharacteristicValueLinearDerivedTransitionPoint
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueLinearDerivedTransitionPoint)init;
- (HAPCharacteristicValueLinearDerivedTransitionPoint)initWithScale:(id)scale offset:(id)offset targetCompletionDuration:(id)duration startDelayDuration:(id)delayDuration;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueLinearDerivedTransitionPoint

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueLinearDerivedTransitionPoint);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPCharacteristicValueLinearDerivedTransitionPoint)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueLinearDerivedTransitionPoint;
  return [(HAPCharacteristicValueLinearDerivedTransitionPoint *)&v3 init];
}

- (HAPCharacteristicValueLinearDerivedTransitionPoint)initWithScale:(id)scale offset:(id)offset targetCompletionDuration:(id)duration startDelayDuration:(id)delayDuration
{
  scaleCopy = scale;
  offsetCopy = offset;
  durationCopy = duration;
  delayDurationCopy = delayDuration;
  v18.receiver = self;
  v18.super_class = HAPCharacteristicValueLinearDerivedTransitionPoint;
  v15 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_scale, scale);
    objc_storeStrong(&v16->_offset, offset);
    objc_storeStrong(&v16->_targetCompletionDuration, duration);
    objc_storeStrong(&v16->_startDelayDuration, delayDuration);
  }

  return v16;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 >= 1)
  {
    selfCopy = self;
    errorCopy = error;
    v26 = dataCopy;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = &bytes[v8];
    while (1)
    {
      v34 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (errorCopy)
        {
          sub_100041618(Next);
          *errorCopy = v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        dataCopy = v26;
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
          dataCopy = v26;
          if (errorCopy)
          {
            v20 = v9;
            v21 = 0;
            *errorCopy = v9;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_28;
        }

LABEL_23:
        dataCopy = v26;
        self = selfCopy;
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

- (id)serializeWithError:(id *)error
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
  scale = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];

  if (scale)
  {
    scale2 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
    v23 = 0;
    v7 = [scale2 serializeWithError:&v23];
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

  offset = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];

  if (offset)
  {
    offset2 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
    v22 = 0;
    v7 = [offset2 serializeWithError:&v22];
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

  targetCompletionDuration = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];

  if (targetCompletionDuration)
  {
    targetCompletionDuration2 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
    v21 = 0;
    v7 = [targetCompletionDuration2 serializeWithError:&v21];
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
  startDelayDuration = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];

  if (!startDelayDuration)
  {
    goto LABEL_24;
  }

  startDelayDuration2 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
  v20 = 0;
  v7 = [startDelayDuration2 serializeWithError:&v20];
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
      if (error)
      {
        sub_100041618(v16);
        v8 = 0;
        *error = v18 = 0;
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

  if (error)
  {
    v17 = v8;
    v18 = 0;
    *error = v8;
    goto LABEL_27;
  }

LABEL_26:
  v18 = 0;
LABEL_27:
  TLV8BufferFree();

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueLinearDerivedTransitionPoint allocWithZone:zone];
  scale = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
  offset = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
  targetCompletionDuration = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
  startDelayDuration = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
  v9 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v4 initWithScale:scale offset:offset targetCompletionDuration:targetCompletionDuration startDelayDuration:startDelayDuration];

  return v9;
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
      scale = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
      scale2 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 scale];
      if (scale != scale2)
      {
        scale3 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
        [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 scale];
        v33 = v32 = scale3;
        if (![scale3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      offset = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
      offset2 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 offset];
      if (offset != offset2)
      {
        offset3 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
        offset4 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 offset];
        if (![offset3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (scale == scale2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      targetCompletionDuration = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
      targetCompletionDuration2 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 targetCompletionDuration];
      v31 = targetCompletionDuration;
      v15 = targetCompletionDuration == targetCompletionDuration2;
      v16 = targetCompletionDuration2;
      if (v15)
      {
        v28 = offset3;
        v29 = offset2;
      }

      else
      {
        targetCompletionDuration3 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
        targetCompletionDuration4 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 targetCompletionDuration];
        v26 = targetCompletionDuration3;
        if (![targetCompletionDuration3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = offset3;
        v29 = offset2;
      }

      v27 = v16;
      startDelayDuration = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
      startDelayDuration2 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 startDelayDuration];
      v20 = startDelayDuration2;
      if (startDelayDuration == startDelayDuration2)
      {

        v10 = 1;
      }

      else
      {
        startDelayDuration3 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
        startDelayDuration4 = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)v6 startDelayDuration];
        v10 = [startDelayDuration3 isEqual:startDelayDuration4];
      }

      v23 = v31;
      v16 = v27;
      offset3 = v28;
      offset2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (offset == offset2)
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
  scale = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self scale];
  offset = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self offset];
  targetCompletionDuration = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self targetCompletionDuration];
  startDelayDuration = [(HAPCharacteristicValueLinearDerivedTransitionPoint *)self startDelayDuration];
  v7 = [NSString stringWithFormat:@"<HAPCharacteristicValueLinearDerivedTransitionPoint scale=%@, offset=%@, targetCompletionDuration=%@, startDelayDuration=%@>", scale, offset, targetCompletionDuration, startDelayDuration];

  return v7;
}

@end