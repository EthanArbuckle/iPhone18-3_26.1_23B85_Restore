@interface HAPFirmwareUpdateReadiness
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPFirmwareUpdateReadiness)init;
- (HAPFirmwareUpdateReadiness)initWithStagingNotReadyReasons:(id)reasons updateNotReadyReasons:(id)readyReasons;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPFirmwareUpdateReadiness

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPFirmwareUpdateReadiness);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPFirmwareUpdateReadiness *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPFirmwareUpdateReadiness)init
{
  v3.receiver = self;
  v3.super_class = HAPFirmwareUpdateReadiness;
  return [(HAPFirmwareUpdateReadiness *)&v3 init];
}

- (HAPFirmwareUpdateReadiness)initWithStagingNotReadyReasons:(id)reasons updateNotReadyReasons:(id)readyReasons
{
  reasonsCopy = reasons;
  readyReasonsCopy = readyReasons;
  v12.receiver = self;
  v12.super_class = HAPFirmwareUpdateReadiness;
  v9 = [(HAPFirmwareUpdateReadiness *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stagingNotReadyReasons, reasons);
    objc_storeStrong(&v10->_updateNotReadyReasons, readyReasons);
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
LABEL_14:
    [(HAPFirmwareUpdateReadiness *)self setStagingNotReadyReasons:v10];
    [(HAPFirmwareUpdateReadiness *)self setUpdateNotReadyReasons:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_21;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = &bytes[v8];
  while (1)
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        sub_100041618(Next);
        *errorCopy = v18 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (!v27)
    {
      break;
    }

    if (v28 == 2)
    {
      v14 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
      v23 = v11;
      v15 = &v23;
      [HAPUpdateNotReadyReasonsWrapper parsedFromData:v14 error:&v23];
      v9 = v16 = v9;
      goto LABEL_9;
    }

    if (v28 == 1)
    {
      v14 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
      v24 = v11;
      v15 = &v24;
      [HAPStagingNotReadyReasonsWrapper parsedFromData:v14 error:&v24];
      v10 = v16 = v10;
LABEL_9:
      v17 = *v15;

      v11 = v17;
    }

    if (v25 >= v12)
    {
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  v19 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

  v11 = v19;
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_18:
  if (errorCopy)
  {
    v20 = v11;
    v18 = 0;
    *errorCopy = v11;
    goto LABEL_21;
  }

LABEL_20:
  v18 = 0;
LABEL_21:

  return v18;
}

- (id)serializeWithError:(id *)error
{
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
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  TLV8BufferInit();
  stagingNotReadyReasons = [(HAPFirmwareUpdateReadiness *)self stagingNotReadyReasons];

  if (!stagingNotReadyReasons)
  {
    goto LABEL_5;
  }

  stagingNotReadyReasons2 = [(HAPFirmwareUpdateReadiness *)self stagingNotReadyReasons];
  v17 = 0;
  v7 = [stagingNotReadyReasons2 serializeWithError:&v17];
  v8 = v17;

  if (v8)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_10;
  }

  [v7 bytes];
  [v7 length];
  v9 = TLV8BufferAppend();
  if (!v9)
  {

LABEL_5:
    updateNotReadyReasons = [(HAPFirmwareUpdateReadiness *)self updateNotReadyReasons];

    if (!updateNotReadyReasons)
    {
      goto LABEL_16;
    }

    updateNotReadyReasons2 = [(HAPFirmwareUpdateReadiness *)self updateNotReadyReasons];
    v16 = 0;
    v7 = [updateNotReadyReasons2 serializeWithError:&v16];
    v8 = v16;

    if (v8)
    {
      goto LABEL_7;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
  }

  v12 = v9;
LABEL_10:

  if (!v8)
  {
    if (v12)
    {
      if (error)
      {
        sub_100041618(v12);
        v8 = 0;
        *error = v14 = 0;
        goto LABEL_19;
      }

      v8 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v14 = [NSData dataWithBytes:v18 length:?];
    v8 = 0;
    goto LABEL_19;
  }

  if (error)
  {
    v13 = v8;
    v14 = 0;
    *error = v8;
    goto LABEL_19;
  }

LABEL_18:
  v14 = 0;
LABEL_19:
  TLV8BufferFree();

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPFirmwareUpdateReadiness allocWithZone:zone];
  stagingNotReadyReasons = [(HAPFirmwareUpdateReadiness *)self stagingNotReadyReasons];
  updateNotReadyReasons = [(HAPFirmwareUpdateReadiness *)self updateNotReadyReasons];
  v7 = [(HAPFirmwareUpdateReadiness *)v4 initWithStagingNotReadyReasons:stagingNotReadyReasons updateNotReadyReasons:updateNotReadyReasons];

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
      stagingNotReadyReasons = [(HAPFirmwareUpdateReadiness *)self stagingNotReadyReasons];
      stagingNotReadyReasons2 = [(HAPFirmwareUpdateReadiness *)v6 stagingNotReadyReasons];
      if (stagingNotReadyReasons != stagingNotReadyReasons2)
      {
        stagingNotReadyReasons3 = [(HAPFirmwareUpdateReadiness *)self stagingNotReadyReasons];
        stagingNotReadyReasons4 = [(HAPFirmwareUpdateReadiness *)v6 stagingNotReadyReasons];
        if (![stagingNotReadyReasons3 isEqual:stagingNotReadyReasons4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = stagingNotReadyReasons3;
      }

      updateNotReadyReasons = [(HAPFirmwareUpdateReadiness *)self updateNotReadyReasons];
      updateNotReadyReasons2 = [(HAPFirmwareUpdateReadiness *)v6 updateNotReadyReasons];
      if (updateNotReadyReasons == updateNotReadyReasons2)
      {
        v10 = 1;
      }

      else
      {
        updateNotReadyReasons3 = [(HAPFirmwareUpdateReadiness *)self updateNotReadyReasons];
        updateNotReadyReasons4 = [(HAPFirmwareUpdateReadiness *)v6 updateNotReadyReasons];
        v10 = [updateNotReadyReasons3 isEqual:updateNotReadyReasons4];
      }

      stagingNotReadyReasons3 = v16;
      if (stagingNotReadyReasons == stagingNotReadyReasons2)
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
  stagingNotReadyReasons = [(HAPFirmwareUpdateReadiness *)self stagingNotReadyReasons];
  updateNotReadyReasons = [(HAPFirmwareUpdateReadiness *)self updateNotReadyReasons];
  v5 = [NSString stringWithFormat:@"<HAPFirmwareUpdateReadiness stagingNotReadyReasons=%@, updateNotReadyReasons=%@>", stagingNotReadyReasons, updateNotReadyReasons];

  return v5;
}

@end