@interface HAPCharacteristicValueTransitionStart
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueTransitionStart)init;
- (HAPCharacteristicValueTransitionStart)initWithTransitions:(id)transitions;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueTransitionStart

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionStart);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionStart *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPCharacteristicValueTransitionStart)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionStart;
  return [(HAPCharacteristicValueTransitionStart *)&v3 init];
}

- (HAPCharacteristicValueTransitionStart)initWithTransitions:(id)transitions
{
  transitionsCopy = transitions;
  v9.receiver = self;
  v9.super_class = HAPCharacteristicValueTransitionStart;
  v5 = [(HAPCharacteristicValueTransitionStart *)&v9 init];
  if (v5)
  {
    v6 = [transitionsCopy mutableCopy];
    transitions = v5->_transitions;
    v5->_transitions = v6;
  }

  return v5;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  v9 = +[NSMutableArray array];
  if (v8 < 1)
  {
LABEL_18:
    [(HAPCharacteristicValueTransitionStart *)self setTransitions:v9];
    v10 = 0;
    v17 = 1;
  }

  else
  {
    v10 = 0;
    v11 = bytes + v8;
    while (1)
    {
      v24 = 0;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        break;
      }

      if (!v23)
      {
        v18 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

        v10 = v18;
        if (!v18)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (v24 == 1)
      {
        v21 = v10;
        v13 = sub_100021B74(1, bytes, v11, v22, &v21);
        v14 = v21;

        if (!v14)
        {
          v20 = 0;
          v15 = [HAPCharacteristicValueTransition parsedFromData:v13 error:&v20];
          v14 = v20;
          if (!v14)
          {
            [v9 addObject:v15];
          }
        }

        v10 = v14;
      }

      bytes = v22[0];
      if (v22[0] >= v11)
      {
        if (!v10)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (error)
        {
          v16 = v10;
          v17 = 0;
          *error = v10;
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    if (error)
    {
      sub_100041618(Next);
      *error = v17 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v17 = 0;
  }

LABEL_20:

  return v17;
}

- (id)serializeWithError:(id *)error
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
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  transitions = [(HAPCharacteristicValueTransitionStart *)self transitions];
  v6 = [transitions countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v6)
  {
LABEL_17:

    v19 = [NSData dataWithBytes:v31 length:?];
    v20 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v8 = *v27;
  v9 = 1;
  errorCopy = error;
  while (1)
  {
    v10 = 0;
LABEL_4:
    if (*v27 != v8)
    {
      objc_enumerationMutation(transitions);
    }

    v11 = *(*(&v26 + 1) + 8 * v10);
    if ((v9 & 1) == 0)
    {
      v12 = TLV8BufferAppend();
      if (v12)
      {
        v21 = v12;
LABEL_19:

        if (errorCopy)
        {
          sub_100041618(v21);
          v20 = 0;
          *errorCopy = v19 = 0;
          goto LABEL_23;
        }

        v20 = 0;
        goto LABEL_22;
      }
    }

    v25 = 0;
    v13 = [v11 serializeWithError:{&v25, errorCopy}];
    v14 = v25;
    if (v14)
    {
      break;
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
        v21 = v18;

        goto LABEL_19;
      }

      bytes += v17;
    }

    while (bytes < v16);

    v9 = 0;
    if (++v10 != v7)
    {
      goto LABEL_4;
    }

    v7 = [transitions countByEnumeratingWithState:&v26 objects:v30 count:16];
    v9 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v20 = v14;

  if (!errorCopy)
  {
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v23 = v20;
  v19 = 0;
  *errorCopy = v20;
LABEL_23:
  TLV8BufferFree();

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueTransitionStart allocWithZone:zone];
  transitions = [(HAPCharacteristicValueTransitionStart *)self transitions];
  v6 = [(HAPCharacteristicValueTransitionStart *)v4 initWithTransitions:transitions];

  return v6;
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
      v5 = equalCopy;
      transitions = [(HAPCharacteristicValueTransitionStart *)self transitions];
      transitions2 = [(HAPCharacteristicValueTransitionStart *)v5 transitions];
      if (transitions == transitions2)
      {
        v10 = 1;
      }

      else
      {
        transitions3 = [(HAPCharacteristicValueTransitionStart *)self transitions];
        transitions4 = [(HAPCharacteristicValueTransitionStart *)v5 transitions];
        v10 = [transitions3 isEqual:transitions4];
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
  transitions = [(HAPCharacteristicValueTransitionStart *)self transitions];
  v3 = [NSString stringWithFormat:@"<HAPCharacteristicValueTransitionStart transitions=%@>", transitions];

  return v3;
}

@end