@interface HAPCharacteristicValueLinearTransition
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueLinearTransition)init;
- (HAPCharacteristicValueLinearTransition)initWithTransitionPoints:(id)points startBehavior:(id)behavior;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueLinearTransition

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueLinearTransition);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueLinearTransition *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPCharacteristicValueLinearTransition)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueLinearTransition;
  return [(HAPCharacteristicValueLinearTransition *)&v3 init];
}

- (HAPCharacteristicValueLinearTransition)initWithTransitionPoints:(id)points startBehavior:(id)behavior
{
  pointsCopy = points;
  behaviorCopy = behavior;
  v12.receiver = self;
  v12.super_class = HAPCharacteristicValueLinearTransition;
  v8 = [(HAPCharacteristicValueLinearTransition *)&v12 init];
  if (v8)
  {
    v9 = [pointsCopy mutableCopy];
    transitionPoints = v8->_transitionPoints;
    v8->_transitionPoints = v9;

    objc_storeStrong(&v8->_startBehavior, behavior);
  }

  return v8;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  v9 = +[NSMutableArray array];
  if (v8 < 1)
  {
    v11 = 0;
LABEL_17:
    [(HAPCharacteristicValueLinearTransition *)self setTransitionPoints:v9, errorCopy];
    [(HAPCharacteristicValueLinearTransition *)self setStartBehavior:v11];
    v10 = 0;
    v18 = 1;
    goto LABEL_24;
  }

  errorCopy = error;
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
      if (errorCopy)
      {
        sub_100041618(Next);
        *errorCopy = v18 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (!v27)
    {
      break;
    }

    if (v28 == 2)
    {
      v14 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
      v23 = v10;
      v17 = [HAPCharacteristicValueTransitionLinearStartConditionWrapper parsedFromData:v14 error:&v23];
      v15 = v23;

      v16 = v11;
      v11 = v17;
      goto LABEL_11;
    }

    if (v28 == 1)
    {
      v25 = v10;
      v14 = sub_100021B74(1, bytes, v12, v26, &v25);
      v15 = v25;

      if (!v15)
      {
        v24 = 0;
        v16 = [HAPCharacteristicValueTransitionPoint parsedFromData:v14 error:&v24];
        v15 = v24;
        if (!v15)
        {
          [v9 addObject:v16];
        }

LABEL_11:
      }

      v10 = v15;
    }

    bytes = v26[0];
    if (v26[0] >= v12)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  v19 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

  v10 = v19;
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_21:
  if (errorCopy)
  {
    v20 = v10;
    v18 = 0;
    *errorCopy = v10;
    goto LABEL_24;
  }

LABEL_23:
  v18 = 0;
LABEL_24:

  return v18;
}

- (id)serializeWithError:(id *)error
{
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
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
  v35 = 0u;
  TLV8BufferInit();
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  transitionPoints = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  v6 = [transitionPoints countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = 1;
    errorCopy = error;
    while (1)
    {
      v10 = 0;
LABEL_4:
      if (*v31 != v8)
      {
        objc_enumerationMutation(transitionPoints);
      }

      v11 = *(*(&v30 + 1) + 8 * v10);
      if ((v9 & 1) == 0)
      {
        v12 = TLV8BufferAppend();
        if (v12)
        {
          break;
        }
      }

      v29 = 0;
      v13 = [v11 serializeWithError:{&v29, errorCopy}];
      v14 = v29;
      if (v14)
      {
        v21 = v14;

        v22 = 0;
        goto LABEL_27;
      }

      bytes = [v13 bytes];
      v16 = [v13 length] + bytes;
      do
      {
        if (v16 - bytes >= 255)
        {
          v17 = 255;
        }

        else
        {
          v17 = v16 - bytes;
        }

        v18 = TLV8BufferAppend();
        if (v18)
        {
          v22 = v18;

          error = errorCopy;
          goto LABEL_21;
        }

        bytes += v17;
      }

      while (bytes < v16);

      v9 = 0;
      if (++v10 != v7)
      {
        goto LABEL_4;
      }

      v7 = [transitionPoints countByEnumeratingWithState:&v30 objects:v34 count:16];
      v9 = 0;
      error = errorCopy;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    v22 = v12;
    v21 = 0;
LABEL_27:
    error = errorCopy;
  }

  else
  {
LABEL_17:

    startBehavior = [(HAPCharacteristicValueLinearTransition *)selfCopy startBehavior];

    if (!startBehavior)
    {
      goto LABEL_33;
    }

    startBehavior2 = [(HAPCharacteristicValueLinearTransition *)selfCopy startBehavior];
    v28 = 0;
    transitionPoints = [startBehavior2 serializeWithError:&v28];
    v21 = v28;

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      [transitionPoints bytes];
      [transitionPoints length];
      v22 = TLV8BufferAppend();
    }
  }

  if (v21)
  {
    if (error)
    {
      v24 = v21;
      v23 = 0;
      *error = v21;
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v22)
  {
LABEL_21:
    if (error)
    {
      sub_100041618(v22);
      v21 = 0;
      *error = v23 = 0;
      goto LABEL_34;
    }

    v21 = 0;
LABEL_31:
    v23 = 0;
    goto LABEL_34;
  }

LABEL_33:
  v23 = [NSData dataWithBytes:v35 length:errorCopy];
  v21 = 0;
LABEL_34:
  TLV8BufferFree();

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueLinearTransition allocWithZone:zone];
  transitionPoints = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  startBehavior = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
  v7 = [(HAPCharacteristicValueLinearTransition *)v4 initWithTransitionPoints:transitionPoints startBehavior:startBehavior];

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
      transitionPoints = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
      transitionPoints2 = [(HAPCharacteristicValueLinearTransition *)v6 transitionPoints];
      if (transitionPoints != transitionPoints2)
      {
        transitionPoints3 = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
        transitionPoints4 = [(HAPCharacteristicValueLinearTransition *)v6 transitionPoints];
        if (![transitionPoints3 isEqual:transitionPoints4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = transitionPoints3;
      }

      startBehavior = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
      startBehavior2 = [(HAPCharacteristicValueLinearTransition *)v6 startBehavior];
      if (startBehavior == startBehavior2)
      {
        v10 = 1;
      }

      else
      {
        startBehavior3 = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
        startBehavior4 = [(HAPCharacteristicValueLinearTransition *)v6 startBehavior];
        v10 = [startBehavior3 isEqual:startBehavior4];
      }

      transitionPoints3 = v16;
      if (transitionPoints == transitionPoints2)
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
  transitionPoints = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  startBehavior = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
  v5 = [NSString stringWithFormat:@"<HAPCharacteristicValueLinearTransition transitionPoints=%@, startBehavior=%@>", transitionPoints, startBehavior];

  return v5;
}

@end