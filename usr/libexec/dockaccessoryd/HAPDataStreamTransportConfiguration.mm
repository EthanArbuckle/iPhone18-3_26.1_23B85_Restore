@interface HAPDataStreamTransportConfiguration
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPDataStreamTransportConfiguration)init;
- (HAPDataStreamTransportConfiguration)initWithTransport:(id)transport maximumControllerTransportMTU:(id)u;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPDataStreamTransportConfiguration

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPDataStreamTransportConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportConfiguration *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPDataStreamTransportConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamTransportConfiguration;
  return [(HAPDataStreamTransportConfiguration *)&v3 init];
}

- (HAPDataStreamTransportConfiguration)initWithTransport:(id)transport maximumControllerTransportMTU:(id)u
{
  transportCopy = transport;
  uCopy = u;
  v12.receiver = self;
  v12.super_class = HAPDataStreamTransportConfiguration;
  v9 = [(HAPDataStreamTransportConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transport, transport);
    objc_storeStrong(&v10->_maximumControllerTransportMTU, u);
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
    [(HAPDataStreamTransportConfiguration *)self setTransport:v10];
    [(HAPDataStreamTransportConfiguration *)self setMaximumControllerTransportMTU:v9];
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
      [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v23];
      v9 = v16 = v9;
      goto LABEL_9;
    }

    if (v28 == 1)
    {
      v14 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
      v24 = v11;
      v15 = &v24;
      [HAPDataStreamTransportProtocolWrapper parsedFromData:v14 error:&v24];
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
  transport = [(HAPDataStreamTransportConfiguration *)self transport];

  if (!transport)
  {
    goto LABEL_5;
  }

  transport2 = [(HAPDataStreamTransportConfiguration *)self transport];
  v17 = 0;
  v7 = [transport2 serializeWithError:&v17];
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
    maximumControllerTransportMTU = [(HAPDataStreamTransportConfiguration *)self maximumControllerTransportMTU];

    if (!maximumControllerTransportMTU)
    {
      goto LABEL_16;
    }

    maximumControllerTransportMTU2 = [(HAPDataStreamTransportConfiguration *)self maximumControllerTransportMTU];
    v16 = 0;
    v7 = [maximumControllerTransportMTU2 serializeWithError:&v16];
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
  v4 = [HAPDataStreamTransportConfiguration allocWithZone:zone];
  transport = [(HAPDataStreamTransportConfiguration *)self transport];
  maximumControllerTransportMTU = [(HAPDataStreamTransportConfiguration *)self maximumControllerTransportMTU];
  v7 = [(HAPDataStreamTransportConfiguration *)v4 initWithTransport:transport maximumControllerTransportMTU:maximumControllerTransportMTU];

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
      transport = [(HAPDataStreamTransportConfiguration *)self transport];
      transport2 = [(HAPDataStreamTransportConfiguration *)v6 transport];
      if (transport != transport2)
      {
        transport3 = [(HAPDataStreamTransportConfiguration *)self transport];
        transport4 = [(HAPDataStreamTransportConfiguration *)v6 transport];
        if (![transport3 isEqual:transport4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = transport3;
      }

      maximumControllerTransportMTU = [(HAPDataStreamTransportConfiguration *)self maximumControllerTransportMTU];
      maximumControllerTransportMTU2 = [(HAPDataStreamTransportConfiguration *)v6 maximumControllerTransportMTU];
      if (maximumControllerTransportMTU == maximumControllerTransportMTU2)
      {
        v10 = 1;
      }

      else
      {
        maximumControllerTransportMTU3 = [(HAPDataStreamTransportConfiguration *)self maximumControllerTransportMTU];
        maximumControllerTransportMTU4 = [(HAPDataStreamTransportConfiguration *)v6 maximumControllerTransportMTU];
        v10 = [maximumControllerTransportMTU3 isEqual:maximumControllerTransportMTU4];
      }

      transport3 = v16;
      if (transport == transport2)
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
  transport = [(HAPDataStreamTransportConfiguration *)self transport];
  maximumControllerTransportMTU = [(HAPDataStreamTransportConfiguration *)self maximumControllerTransportMTU];
  v5 = [NSString stringWithFormat:@"<HAPDataStreamTransportConfiguration transport=%@, maximumControllerTransportMTU=%@>", transport, maximumControllerTransportMTU];

  return v5;
}

@end