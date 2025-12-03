@interface HAPCharacteristicValueTransitionControllerContext
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueTransitionControllerContext)init;
- (HAPCharacteristicValueTransitionControllerContext)initWithIdentifier:(id)identifier startTime:(id)time transitionChecksum:(id)checksum;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueTransitionControllerContext

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionControllerContext);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionControllerContext *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPCharacteristicValueTransitionControllerContext)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionControllerContext;
  return [(HAPCharacteristicValueTransitionControllerContext *)&v3 init];
}

- (HAPCharacteristicValueTransitionControllerContext)initWithIdentifier:(id)identifier startTime:(id)time transitionChecksum:(id)checksum
{
  identifierCopy = identifier;
  timeCopy = time;
  checksumCopy = checksum;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicValueTransitionControllerContext;
  v12 = [(HAPCharacteristicValueTransitionControllerContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_startTime, time);
    objc_storeStrong(&v13->_transitionChecksum, checksum);
  }

  return v13;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_23:
    [(HAPCharacteristicValueTransitionControllerContext *)self setIdentifier:v12, selfCopy];
    [(HAPCharacteristicValueTransitionControllerContext *)self setStartTime:v11];
    [(HAPCharacteristicValueTransitionControllerContext *)self setTransitionChecksum:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_25;
  }

  selfCopy = self;
  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
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
        v15 = sub_100021B74(1, bytes, v13, v31, &v30);
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

    bytes = v31[0];
    if (v31[0] >= v13)
    {
      if (v9)
      {
LABEL_16:
        if (errorCopy)
        {
          v21 = v9;
          v22 = 0;
          *errorCopy = v9;
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:
      self = selfCopy;
      goto LABEL_23;
    }
  }

  if (errorCopy)
  {
    sub_100041618(Next);
    *errorCopy = v22 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v22 = 0;
LABEL_25:

  return v22;
}

- (id)serializeWithError:(id *)error
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
  identifier = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];

  if (identifier)
  {
    identifier2 = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
    v25 = 0;
    v7 = [identifier2 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {

      goto LABEL_22;
    }

    bytes = [v7 bytes];
    v10 = [v7 length] + bytes;
    while (1)
    {
      v11 = v10 - bytes >= 255 ? 255 : v10 - bytes;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      bytes += v11;
      if (bytes >= v10)
      {

        goto LABEL_11;
      }
    }

    v19 = v12;

LABEL_25:
    if (error)
    {
      sub_100041618(v19);
      v8 = 0;
      *error = v21 = 0;
      goto LABEL_30;
    }

    v8 = 0;
    goto LABEL_29;
  }

LABEL_11:
  startTime = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];

  if (!startTime)
  {
    goto LABEL_15;
  }

  startTime2 = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
  v24 = 0;
  v15 = [startTime2 serializeWithError:&v24];
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
    transitionChecksum = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];

    if (!transitionChecksum)
    {
      goto LABEL_27;
    }

    transitionChecksum2 = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
    v23 = 0;
    v15 = [transitionChecksum2 serializeWithError:&v23];
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
  if (error)
  {
    v20 = v8;
    v21 = 0;
    *error = v8;
    goto LABEL_30;
  }

LABEL_29:
  v21 = 0;
LABEL_30:
  TLV8BufferFree();

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueTransitionControllerContext allocWithZone:zone];
  identifier = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
  startTime = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
  transitionChecksum = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
  v8 = [(HAPCharacteristicValueTransitionControllerContext *)v4 initWithIdentifier:identifier startTime:startTime transitionChecksum:transitionChecksum];

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
      identifier = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
      identifier2 = [(HAPCharacteristicValueTransitionControllerContext *)v7 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
        identifier4 = [(HAPCharacteristicValueTransitionControllerContext *)v7 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      startTime = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
      startTime2 = [(HAPCharacteristicValueTransitionControllerContext *)v7 startTime];
      v13 = startTime2;
      if (startTime == startTime2)
      {
        v28 = startTime2;
      }

      else
      {
        startTime3 = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
        startTime4 = [(HAPCharacteristicValueTransitionControllerContext *)v7 startTime];
        if (![startTime3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = startTime3;
        v28 = v13;
      }

      transitionChecksum = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
      transitionChecksum2 = [(HAPCharacteristicValueTransitionControllerContext *)v7 transitionChecksum];
      v17 = transitionChecksum2;
      if (transitionChecksum == transitionChecksum2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
        v18 = v25 = identifier3;
        [(HAPCharacteristicValueTransitionControllerContext *)v7 transitionChecksum];
        v24 = startTime;
        v19 = identifier4;
        v20 = identifier2;
        v22 = v21 = identifier;
        v10 = [v18 isEqual:v22];

        identifier = v21;
        identifier2 = v20;
        identifier4 = v19;
        startTime = v24;

        identifier3 = v25;
      }

      v13 = v28;
      startTime3 = v26;
      if (startTime == v28)
      {
LABEL_18:

        if (identifier == identifier2)
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
  identifier = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
  startTime = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
  transitionChecksum = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
  v6 = [NSString stringWithFormat:@"<HAPCharacteristicValueTransitionControllerContext identifier=%@, startTime=%@, transitionChecksum=%@>", identifier, startTime, transitionChecksum];

  return v6;
}

@end