@interface HAPFirmwareUpdateStatus
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPFirmwareUpdateStatus)init;
- (HAPFirmwareUpdateStatus)initWithState:(id)state updateDuration:(id)duration stagedFirmwareVersion:(id)version;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPFirmwareUpdateStatus

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPFirmwareUpdateStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPFirmwareUpdateStatus *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPFirmwareUpdateStatus)init
{
  v3.receiver = self;
  v3.super_class = HAPFirmwareUpdateStatus;
  return [(HAPFirmwareUpdateStatus *)&v3 init];
}

- (HAPFirmwareUpdateStatus)initWithState:(id)state updateDuration:(id)duration stagedFirmwareVersion:(id)version
{
  stateCopy = state;
  durationCopy = duration;
  versionCopy = version;
  v15.receiver = self;
  v15.super_class = HAPFirmwareUpdateStatus;
  v12 = [(HAPFirmwareUpdateStatus *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_state, state);
    objc_storeStrong(&v13->_updateDuration, duration);
    objc_storeStrong(&v13->_stagedFirmwareVersion, version);
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
    [(HAPFirmwareUpdateStatus *)self setState:v12, selfCopy];
    [(HAPFirmwareUpdateStatus *)self setUpdateDuration:v11];
    [(HAPFirmwareUpdateStatus *)self setStagedFirmwareVersion:v10];
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
        v28 = v9;
        v15 = sub_100021B74(3, bytes, v13, v31, &v28);
        v17 = v28;

        if (!v17)
        {
          v27 = 0;
          v20 = [NSString parsedFromData:v15 error:&v27];
          v17 = v27;
          v18 = v10;
          v10 = v20;
LABEL_12:
        }

        v9 = v17;
        break;
      case 2:
        v15 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v29 = v9;
        v19 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v29];
        v17 = v29;

        v18 = v11;
        v11 = v19;
        goto LABEL_12;
      case 1:
        v15 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v30 = v9;
        v16 = [HAPFirmwareUpdateStateWrapper parsedFromData:v15 error:&v30];
        v17 = v30;

        v18 = v12;
        v12 = v16;
        goto LABEL_12;
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
  state = [(HAPFirmwareUpdateStatus *)self state];

  if (state)
  {
    state2 = [(HAPFirmwareUpdateStatus *)self state];
    v25 = 0;
    v7 = [state2 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
      goto LABEL_11;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_24;
    }
  }

  updateDuration = [(HAPFirmwareUpdateStatus *)self updateDuration];

  if (updateDuration)
  {
    updateDuration2 = [(HAPFirmwareUpdateStatus *)self updateDuration];
    v24 = 0;
    v7 = [updateDuration2 serializeWithError:&v24];
    v8 = v24;

    if (!v8)
    {
      [v7 bytes];
      [v7 length];
      v9 = TLV8BufferAppend();
      if (v9)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_25;
  }

LABEL_9:
  stagedFirmwareVersion = [(HAPFirmwareUpdateStatus *)self stagedFirmwareVersion];

  if (!stagedFirmwareVersion)
  {
    goto LABEL_31;
  }

  stagedFirmwareVersion2 = [(HAPFirmwareUpdateStatus *)self stagedFirmwareVersion];
  v23 = 0;
  v7 = [stagedFirmwareVersion2 serializeWithError:&v23];
  v8 = v23;

  if (v8)
  {
    goto LABEL_11;
  }

  bytes = [v7 bytes];
  v16 = [v7 length] + bytes;
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

    v9 = TLV8BufferAppend();
    if (v9)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    bytes += v18;
    if (v9)
    {
      v19 = 1;
    }

    else
    {
      v19 = bytes >= v16;
    }
  }

  while (!v19);
LABEL_24:
  v14 = v9;
LABEL_25:

  if (!v8)
  {
    if (v14)
    {
      if (error)
      {
        sub_100041618(v14);
        v8 = 0;
        *error = v21 = 0;
        goto LABEL_34;
      }

      v8 = 0;
      goto LABEL_33;
    }

LABEL_31:
    v21 = [NSData dataWithBytes:v26 length:?];
    v8 = 0;
    goto LABEL_34;
  }

  if (error)
  {
    v20 = v8;
    v21 = 0;
    *error = v8;
    goto LABEL_34;
  }

LABEL_33:
  v21 = 0;
LABEL_34:
  TLV8BufferFree();

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPFirmwareUpdateStatus allocWithZone:zone];
  state = [(HAPFirmwareUpdateStatus *)self state];
  updateDuration = [(HAPFirmwareUpdateStatus *)self updateDuration];
  stagedFirmwareVersion = [(HAPFirmwareUpdateStatus *)self stagedFirmwareVersion];
  v8 = [(HAPFirmwareUpdateStatus *)v4 initWithState:state updateDuration:updateDuration stagedFirmwareVersion:stagedFirmwareVersion];

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
      state = [(HAPFirmwareUpdateStatus *)self state];
      state2 = [(HAPFirmwareUpdateStatus *)v7 state];
      if (state != state2)
      {
        state3 = [(HAPFirmwareUpdateStatus *)self state];
        state4 = [(HAPFirmwareUpdateStatus *)v7 state];
        if (![state3 isEqual:state4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      updateDuration = [(HAPFirmwareUpdateStatus *)self updateDuration];
      updateDuration2 = [(HAPFirmwareUpdateStatus *)v7 updateDuration];
      v13 = updateDuration2;
      if (updateDuration == updateDuration2)
      {
        v28 = updateDuration2;
      }

      else
      {
        updateDuration3 = [(HAPFirmwareUpdateStatus *)self updateDuration];
        updateDuration4 = [(HAPFirmwareUpdateStatus *)v7 updateDuration];
        if (![updateDuration3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = updateDuration3;
        v28 = v13;
      }

      stagedFirmwareVersion = [(HAPFirmwareUpdateStatus *)self stagedFirmwareVersion];
      stagedFirmwareVersion2 = [(HAPFirmwareUpdateStatus *)v7 stagedFirmwareVersion];
      v17 = stagedFirmwareVersion2;
      if (stagedFirmwareVersion == stagedFirmwareVersion2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPFirmwareUpdateStatus *)self stagedFirmwareVersion];
        v18 = v25 = state3;
        [(HAPFirmwareUpdateStatus *)v7 stagedFirmwareVersion];
        v24 = updateDuration;
        v19 = state4;
        v20 = state2;
        v22 = v21 = state;
        v10 = [v18 isEqual:v22];

        state = v21;
        state2 = v20;
        state4 = v19;
        updateDuration = v24;

        state3 = v25;
      }

      v13 = v28;
      updateDuration3 = v26;
      if (updateDuration == v28)
      {
LABEL_18:

        if (state == state2)
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
  state = [(HAPFirmwareUpdateStatus *)self state];
  updateDuration = [(HAPFirmwareUpdateStatus *)self updateDuration];
  stagedFirmwareVersion = [(HAPFirmwareUpdateStatus *)self stagedFirmwareVersion];
  v6 = [NSString stringWithFormat:@"<HAPFirmwareUpdateStatus state=%@, updateDuration=%@, stagedFirmwareVersion=%@>", state, updateDuration, stagedFirmwareVersion];

  return v6;
}

@end