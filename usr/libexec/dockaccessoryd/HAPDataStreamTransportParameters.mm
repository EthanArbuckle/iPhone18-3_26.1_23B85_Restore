@interface HAPDataStreamTransportParameters
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPDataStreamTransportParameters)init;
- (HAPDataStreamTransportParameters)initWithTcpListeningPort:(id)port sessionIdentifier:(id)identifier;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPDataStreamTransportParameters

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPDataStreamTransportParameters);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportParameters *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPDataStreamTransportParameters)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamTransportParameters;
  return [(HAPDataStreamTransportParameters *)&v3 init];
}

- (HAPDataStreamTransportParameters)initWithTcpListeningPort:(id)port sessionIdentifier:(id)identifier
{
  portCopy = port;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HAPDataStreamTransportParameters;
  v9 = [(HAPDataStreamTransportParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tcpListeningPort, port);
    objc_storeStrong(&v10->_sessionIdentifier, identifier);
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
LABEL_19:
    [(HAPDataStreamTransportParameters *)self setTcpListeningPort:v10, selfCopy];
    [(HAPDataStreamTransportParameters *)self setSessionIdentifier:v9];
    v11 = 0;
    v19 = 1;
    goto LABEL_21;
  }

  selfCopy = self;
  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = &bytes[v8];
  while (1)
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v28)
    {
      v20 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

      v11 = v20;
      if (v20)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

    if (v29 == 2)
    {
      v14 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
      v24 = v11;
      v15 = &v24;
      [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v24];
      v9 = v16 = v9;
      goto LABEL_9;
    }

    if (v29 == 1)
    {
      v14 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
      v25 = v11;
      v15 = &v25;
      [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v25];
      v10 = v16 = v10;
LABEL_9:
      v17 = *v15;

      v11 = v17;
    }

    if (v26 >= v12)
    {
      if (v11)
      {
LABEL_12:
        if (errorCopy)
        {
          v18 = v11;
          v19 = 0;
          *errorCopy = v11;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_18:
      self = selfCopy;
      goto LABEL_19;
    }
  }

  if (errorCopy)
  {
    sub_100041618(Next);
    *errorCopy = v19 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
LABEL_21:

  return v19;
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
  tcpListeningPort = [(HAPDataStreamTransportParameters *)self tcpListeningPort];

  if (!tcpListeningPort)
  {
    goto LABEL_5;
  }

  tcpListeningPort2 = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
  v17 = 0;
  v7 = [tcpListeningPort2 serializeWithError:&v17];
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
    sessionIdentifier = [(HAPDataStreamTransportParameters *)self sessionIdentifier];

    if (!sessionIdentifier)
    {
      goto LABEL_16;
    }

    sessionIdentifier2 = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
    v16 = 0;
    v7 = [sessionIdentifier2 serializeWithError:&v16];
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
  v4 = [HAPDataStreamTransportParameters allocWithZone:zone];
  tcpListeningPort = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
  sessionIdentifier = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
  v7 = [(HAPDataStreamTransportParameters *)v4 initWithTcpListeningPort:tcpListeningPort sessionIdentifier:sessionIdentifier];

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
      tcpListeningPort = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
      tcpListeningPort2 = [(HAPDataStreamTransportParameters *)v6 tcpListeningPort];
      if (tcpListeningPort != tcpListeningPort2)
      {
        tcpListeningPort3 = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
        tcpListeningPort4 = [(HAPDataStreamTransportParameters *)v6 tcpListeningPort];
        if (![tcpListeningPort3 isEqual:tcpListeningPort4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = tcpListeningPort3;
      }

      sessionIdentifier = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
      sessionIdentifier2 = [(HAPDataStreamTransportParameters *)v6 sessionIdentifier];
      if (sessionIdentifier == sessionIdentifier2)
      {
        v10 = 1;
      }

      else
      {
        sessionIdentifier3 = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
        sessionIdentifier4 = [(HAPDataStreamTransportParameters *)v6 sessionIdentifier];
        v10 = [sessionIdentifier3 isEqual:sessionIdentifier4];
      }

      tcpListeningPort3 = v16;
      if (tcpListeningPort == tcpListeningPort2)
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
  tcpListeningPort = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
  sessionIdentifier = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
  v5 = [NSString stringWithFormat:@"<HAPDataStreamTransportParameters tcpListeningPort=%@, sessionIdentifier=%@>", tcpListeningPort, sessionIdentifier];

  return v5;
}

@end