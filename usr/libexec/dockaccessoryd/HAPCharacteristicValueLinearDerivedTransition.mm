@interface HAPCharacteristicValueLinearDerivedTransition
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueLinearDerivedTransition)init;
- (HAPCharacteristicValueLinearDerivedTransition)initWithTransitionPoints:(id)points sourceHAPInstanceID:(id)d sourceValueRange:(id)range;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueLinearDerivedTransition

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueLinearDerivedTransition);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueLinearDerivedTransition *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPCharacteristicValueLinearDerivedTransition)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueLinearDerivedTransition;
  return [(HAPCharacteristicValueLinearDerivedTransition *)&v3 init];
}

- (HAPCharacteristicValueLinearDerivedTransition)initWithTransitionPoints:(id)points sourceHAPInstanceID:(id)d sourceValueRange:(id)range
{
  pointsCopy = points;
  dCopy = d;
  rangeCopy = range;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicValueLinearDerivedTransition;
  v11 = [(HAPCharacteristicValueLinearDerivedTransition *)&v15 init];
  if (v11)
  {
    v12 = [pointsCopy mutableCopy];
    transitionPoints = v11->_transitionPoints;
    v11->_transitionPoints = v12;

    objc_storeStrong(&v11->_sourceHAPInstanceID, d);
    objc_storeStrong(&v11->_sourceValueRange, range);
  }

  return v11;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];
  v25 = +[NSMutableArray array];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = bytes + v7;
    while (1)
    {
      v33 = 0;
      v31[1] = 0;
      v32 = 0;
      v31[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (error)
        {
          sub_100041618(Next);
          *error = v20 = 0;
        }

        else
        {
          v20 = 0;
        }

        v19 = v25;
        goto LABEL_30;
      }

      if (!v32)
      {
        v21 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

        v8 = v21;
        if (!v21)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      if (v33 == 3)
      {
        break;
      }

      if (v33 == 2)
      {
        v13 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v28 = v8;
        v16 = [HAPTLVUnsignedNumberValue parsedFromData:v13 error:&v28];
        v17 = v28;

        v15 = v10;
        v10 = v16;
        v8 = v17;
        goto LABEL_15;
      }

      if (v33 == 1)
      {
        v30 = v8;
        v13 = sub_100021B74(1, bytes, v11, v31, &v30);
        v14 = v30;

        if (!v14)
        {
          v29 = 0;
          v15 = [HAPCharacteristicValueLinearDerivedTransitionPoint parsedFromData:v13 error:&v29];
          v8 = v29;
          if (!v8)
          {
            [v25 addObject:v15];
          }

LABEL_15:

LABEL_16:
          goto LABEL_17;
        }

LABEL_13:
        v8 = v14;
        goto LABEL_16;
      }

LABEL_17:
      bytes = v31[0];
      if (v31[0] >= v11)
      {
        if (!v8)
        {
          goto LABEL_21;
        }

LABEL_25:
        v19 = v25;
        if (error)
        {
          v22 = v8;
          v20 = 0;
          *error = v8;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_30;
      }
    }

    v27 = v8;
    v13 = sub_100021B74(3, bytes, v11, v31, &v27);
    v14 = v27;

    if (!v14)
    {
      v26 = 0;
      v18 = [HAPCharacteristicValueRange parsedFromData:v13 error:&v26];
      v8 = v26;
      v15 = v9;
      v9 = v18;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v9 = 0;
  v10 = 0;
LABEL_21:
  v19 = v25;
  [(HAPCharacteristicValueLinearDerivedTransition *)self setTransitionPoints:v25];
  [(HAPCharacteristicValueLinearDerivedTransition *)self setSourceHAPInstanceID:v10];
  [(HAPCharacteristicValueLinearDerivedTransition *)self setSourceValueRange:v9];
  v8 = 0;
  v20 = 1;
LABEL_30:

  return v20;
}

- (id)serializeWithError:(id *)error
{
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  TLV8BufferInit();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  transitionPoints = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
  v6 = [transitionPoints countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    v9 = 1;
    errorCopy = error;
    while (1)
    {
      v10 = 0;
LABEL_4:
      if (*v42 != v8)
      {
        objc_enumerationMutation(transitionPoints);
      }

      v11 = *(*(&v41 + 1) + 8 * v10);
      if ((v9 & 1) == 0)
      {
        v12 = TLV8BufferAppend();
        if (v12)
        {
          break;
        }
      }

      v40 = 0;
      v13 = [v11 serializeWithError:&v40];
      v14 = v40;
      if (v14)
      {
        v21 = v14;

        v23 = 0;
        goto LABEL_44;
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
          v23 = v18;

          error = errorCopy;
          goto LABEL_22;
        }

        bytes += v17;
      }

      while (bytes < v16);

      v9 = 0;
      if (++v10 != v7)
      {
        goto LABEL_4;
      }

      v7 = [transitionPoints countByEnumeratingWithState:&v41 objects:v45 count:16];
      v9 = 0;
      error = errorCopy;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    v23 = v12;
    v21 = 0;
LABEL_44:
    error = errorCopy;
    goto LABEL_45;
  }

LABEL_17:

  sourceHAPInstanceID = [(HAPCharacteristicValueLinearDerivedTransition *)selfCopy sourceHAPInstanceID];

  if (!sourceHAPInstanceID)
  {
LABEL_27:
    sourceValueRange = [(HAPCharacteristicValueLinearDerivedTransition *)selfCopy sourceValueRange];

    if (!sourceValueRange)
    {
      goto LABEL_50;
    }

    sourceValueRange2 = [(HAPCharacteristicValueLinearDerivedTransition *)selfCopy sourceValueRange];
    v38 = 0;
    transitionPoints = [sourceValueRange2 serializeWithError:&v38];
    v21 = v38;

    if (!v21)
    {
      errorCopy2 = error;
      bytes2 = [transitionPoints bytes];
      v29 = [transitionPoints length] + bytes2;
      do
      {
        if (v29 - bytes2 >= 255)
        {
          v30 = 255;
        }

        else
        {
          v30 = v29 - bytes2;
        }

        v31 = TLV8BufferAppend();
        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        bytes2 += v32;
        if (v31)
        {
          v33 = 1;
        }

        else
        {
          v33 = bytes2 >= v29;
        }
      }

      while (!v33);
      v23 = v31;
      error = errorCopy2;
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  sourceHAPInstanceID2 = [(HAPCharacteristicValueLinearDerivedTransition *)selfCopy sourceHAPInstanceID];
  v39 = 0;
  transitionPoints = [sourceHAPInstanceID2 serializeWithError:&v39];
  v21 = v39;

  if (v21)
  {
LABEL_29:
    v23 = 0;
    goto LABEL_45;
  }

  [transitionPoints bytes];
  [transitionPoints length];
  v22 = TLV8BufferAppend();
  if (!v22)
  {

    goto LABEL_27;
  }

  v23 = v22;
LABEL_45:

  if (v21)
  {
    if (error)
    {
      v34 = v21;
      v24 = 0;
      *error = v21;
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (v23)
  {
LABEL_22:
    if (error)
    {
      sub_100041618(v23);
      v21 = 0;
      *error = v24 = 0;
      goto LABEL_51;
    }

    v21 = 0;
LABEL_48:
    v24 = 0;
    goto LABEL_51;
  }

LABEL_50:
  v24 = [NSData dataWithBytes:v46 length:?];
  v21 = 0;
LABEL_51:
  TLV8BufferFree();

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueLinearDerivedTransition allocWithZone:zone];
  transitionPoints = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
  sourceHAPInstanceID = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceHAPInstanceID];
  sourceValueRange = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceValueRange];
  v8 = [(HAPCharacteristicValueLinearDerivedTransition *)v4 initWithTransitionPoints:transitionPoints sourceHAPInstanceID:sourceHAPInstanceID sourceValueRange:sourceValueRange];

  return v8;
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
      v7 = equalCopy;
      transitionPoints = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
      transitionPoints2 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 transitionPoints];
      if (transitionPoints != transitionPoints2)
      {
        transitionPoints3 = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
        transitionPoints4 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 transitionPoints];
        if (![transitionPoints3 isEqual:transitionPoints4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      sourceHAPInstanceID = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceHAPInstanceID];
      sourceHAPInstanceID2 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 sourceHAPInstanceID];
      v13 = sourceHAPInstanceID2;
      if (sourceHAPInstanceID == sourceHAPInstanceID2)
      {
        v28 = sourceHAPInstanceID2;
      }

      else
      {
        sourceHAPInstanceID3 = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceHAPInstanceID];
        sourceHAPInstanceID4 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 sourceHAPInstanceID];
        if (![sourceHAPInstanceID3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = sourceHAPInstanceID3;
        v28 = v13;
      }

      sourceValueRange = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceValueRange];
      sourceValueRange2 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 sourceValueRange];
      v17 = sourceValueRange2;
      if (sourceValueRange == sourceValueRange2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPCharacteristicValueLinearDerivedTransition *)self sourceValueRange];
        v18 = v25 = transitionPoints3;
        [(HAPCharacteristicValueLinearDerivedTransition *)v7 sourceValueRange];
        v24 = sourceHAPInstanceID;
        v19 = transitionPoints4;
        v20 = transitionPoints2;
        v22 = v21 = transitionPoints;
        v10 = [v18 isEqual:v22];

        transitionPoints = v21;
        transitionPoints2 = v20;
        transitionPoints4 = v19;
        sourceHAPInstanceID = v24;

        transitionPoints3 = v25;
      }

      v13 = v28;
      sourceHAPInstanceID3 = v26;
      if (sourceHAPInstanceID == v28)
      {
LABEL_18:

        if (transitionPoints == transitionPoints2)
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
  transitionPoints = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
  sourceHAPInstanceID = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceHAPInstanceID];
  sourceValueRange = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceValueRange];
  v6 = [NSString stringWithFormat:@"<HAPCharacteristicValueLinearDerivedTransition transitionPoints=%@, sourceHAPInstanceID=%@, sourceValueRange=%@>", transitionPoints, sourceHAPInstanceID, sourceValueRange];

  return v6;
}

@end