@interface HAPDataStreamTransportSetupResponse
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPDataStreamTransportSetupResponse)init;
- (HAPDataStreamTransportSetupResponse)initWithStatus:(id)status parameters:(id)parameters accessoryKeySalt:(id)salt;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPDataStreamTransportSetupResponse

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPDataStreamTransportSetupResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportSetupResponse *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPDataStreamTransportSetupResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamTransportSetupResponse;
  return [(HAPDataStreamTransportSetupResponse *)&v3 init];
}

- (HAPDataStreamTransportSetupResponse)initWithStatus:(id)status parameters:(id)parameters accessoryKeySalt:(id)salt
{
  statusCopy = status;
  parametersCopy = parameters;
  saltCopy = salt;
  v15.receiver = self;
  v15.super_class = HAPDataStreamTransportSetupResponse;
  v12 = [(HAPDataStreamTransportSetupResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_status, status);
    objc_storeStrong(&v13->_parameters, parameters);
    objc_storeStrong(&v13->_accessoryKeySalt, salt);
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
LABEL_20:
    [(HAPDataStreamTransportSetupResponse *)self setStatus:v12, errorCopy];
    [(HAPDataStreamTransportSetupResponse *)self setParameters:v11];
    [(HAPDataStreamTransportSetupResponse *)self setAccessoryKeySalt:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_27;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v34 = 0;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        sub_100041618(Next);
        *errorCopy = v22 = 0;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v33)
    {
      break;
    }

    switch(v34)
    {
      case 3:
        v28 = v9;
        v15 = sub_100021B74(3, bytes, v13, v32, &v28);
        v19 = v28;

        if (v19)
        {
          goto LABEL_12;
        }

        v27 = 0;
        v21 = [NSData parsedFromData:v15 error:&v27];
        v9 = v27;
        v18 = v10;
        v10 = v21;
LABEL_14:

LABEL_15:
        break;
      case 2:
        v30 = v9;
        v15 = sub_100021B74(2, bytes, v13, v32, &v30);
        v19 = v30;

        if (!v19)
        {
          v29 = 0;
          v20 = [HAPDataStreamTransportParameters parsedFromData:v15 error:&v29];
          v9 = v29;
          v18 = v11;
          v11 = v20;
          goto LABEL_14;
        }

LABEL_12:
        v9 = v19;
        goto LABEL_15;
      case 1:
        v15 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v31 = v9;
        v16 = [HAPDataStreamTransportCommandStatusWrapper parsedFromData:v15 error:&v31];
        v17 = v31;

        v18 = v12;
        v12 = v16;
        v9 = v17;
        goto LABEL_14;
    }

    bytes = v32[0];
    if (v32[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  v23 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

  v9 = v23;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_24:
  if (errorCopy)
  {
    v24 = v9;
    v22 = 0;
    *errorCopy = v9;
    goto LABEL_27;
  }

LABEL_26:
  v22 = 0;
LABEL_27:

  return v22;
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
  status = [(HAPDataStreamTransportSetupResponse *)self status];

  if (status)
  {
    status2 = [(HAPDataStreamTransportSetupResponse *)self status];
    v30 = 0;
    v7 = [status2 serializeWithError:&v30];
    v8 = v30;

    if (v8)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_31;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();
    if (v10)
    {
LABEL_30:
      v9 = v10;
LABEL_31:

      if (v8)
      {
LABEL_32:
        if (error)
        {
          v25 = v8;
          v26 = 0;
          *error = v8;
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (v9)
      {
        if (error)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }

LABEL_37:
      v26 = [NSData dataWithBytes:v31 length:?];
      v8 = 0;
      goto LABEL_41;
    }
  }

  parameters = [(HAPDataStreamTransportSetupResponse *)self parameters];

  if (!parameters)
  {
LABEL_16:
    accessoryKeySalt = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];

    if (!accessoryKeySalt)
    {
      goto LABEL_37;
    }

    accessoryKeySalt2 = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
    v28 = 0;
    v7 = [accessoryKeySalt2 serializeWithError:&v28];
    v8 = v28;

    if (v8)
    {
      goto LABEL_3;
    }

    bytes = [v7 bytes];
    v21 = [v7 length] + bytes;
    do
    {
      if (v21 - bytes >= 255)
      {
        v22 = 255;
      }

      else
      {
        v22 = v21 - bytes;
      }

      v10 = TLV8BufferAppend();
      if (v10)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      bytes += v23;
      if (v10)
      {
        v24 = 1;
      }

      else
      {
        v24 = bytes >= v21;
      }
    }

    while (!v24);
    goto LABEL_30;
  }

  parameters2 = [(HAPDataStreamTransportSetupResponse *)self parameters];
  v29 = 0;
  v13 = [parameters2 serializeWithError:&v29];
  v8 = v29;

  if (v8)
  {

    goto LABEL_32;
  }

  bytes2 = [v13 bytes];
  v15 = [v13 length] + bytes2;
  while (1)
  {
    v16 = v15 - bytes2 >= 255 ? 255 : v15 - bytes2;
    v17 = TLV8BufferAppend();
    if (v17)
    {
      break;
    }

    bytes2 += v16;
    if (bytes2 >= v15)
    {

      goto LABEL_16;
    }
  }

  v9 = v17;

  if (error)
  {
LABEL_36:
    sub_100041618(v9);
    v8 = 0;
    *error = v26 = 0;
    goto LABEL_41;
  }

LABEL_39:
  v8 = 0;
LABEL_40:
  v26 = 0;
LABEL_41:
  TLV8BufferFree();

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPDataStreamTransportSetupResponse allocWithZone:zone];
  status = [(HAPDataStreamTransportSetupResponse *)self status];
  parameters = [(HAPDataStreamTransportSetupResponse *)self parameters];
  accessoryKeySalt = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
  v8 = [(HAPDataStreamTransportSetupResponse *)v4 initWithStatus:status parameters:parameters accessoryKeySalt:accessoryKeySalt];

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
      status = [(HAPDataStreamTransportSetupResponse *)self status];
      status2 = [(HAPDataStreamTransportSetupResponse *)v7 status];
      if (status != status2)
      {
        status3 = [(HAPDataStreamTransportSetupResponse *)self status];
        status4 = [(HAPDataStreamTransportSetupResponse *)v7 status];
        if (![status3 isEqual:status4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      parameters = [(HAPDataStreamTransportSetupResponse *)self parameters];
      parameters2 = [(HAPDataStreamTransportSetupResponse *)v7 parameters];
      v13 = parameters2;
      if (parameters == parameters2)
      {
        v28 = parameters2;
      }

      else
      {
        parameters3 = [(HAPDataStreamTransportSetupResponse *)self parameters];
        parameters4 = [(HAPDataStreamTransportSetupResponse *)v7 parameters];
        if (![parameters3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = parameters3;
        v28 = v13;
      }

      accessoryKeySalt = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
      accessoryKeySalt2 = [(HAPDataStreamTransportSetupResponse *)v7 accessoryKeySalt];
      v17 = accessoryKeySalt2;
      if (accessoryKeySalt == accessoryKeySalt2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
        v18 = v25 = status3;
        [(HAPDataStreamTransportSetupResponse *)v7 accessoryKeySalt];
        v24 = parameters;
        v19 = status4;
        v20 = status2;
        v22 = v21 = status;
        v10 = [v18 isEqual:v22];

        status = v21;
        status2 = v20;
        status4 = v19;
        parameters = v24;

        status3 = v25;
      }

      v13 = v28;
      parameters3 = v26;
      if (parameters == v28)
      {
LABEL_18:

        if (status == status2)
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
  status = [(HAPDataStreamTransportSetupResponse *)self status];
  parameters = [(HAPDataStreamTransportSetupResponse *)self parameters];
  accessoryKeySalt = [(HAPDataStreamTransportSetupResponse *)self accessoryKeySalt];
  v6 = [NSString stringWithFormat:@"<HAPDataStreamTransportSetupResponse status=%@, parameters=%@, accessoryKeySalt=%@>", status, parameters, accessoryKeySalt];

  return v6;
}

@end