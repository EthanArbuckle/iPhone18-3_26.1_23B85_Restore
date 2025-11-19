@interface HAPDataStreamTransportParameters
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPDataStreamTransportParameters)init;
- (HAPDataStreamTransportParameters)initWithTcpListeningPort:(id)a3 sessionIdentifier:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPDataStreamTransportParameters

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPDataStreamTransportParameters);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportParameters *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
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

- (HAPDataStreamTransportParameters)initWithTcpListeningPort:(id)a3 sessionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAPDataStreamTransportParameters;
  v9 = [(HAPDataStreamTransportParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tcpListeningPort, a3);
    objc_storeStrong(&v10->_sessionIdentifier, a4);
  }

  return v10;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_19:
    [(HAPDataStreamTransportParameters *)self setTcpListeningPort:v10, v22];
    [(HAPDataStreamTransportParameters *)self setSessionIdentifier:v9];
    v11 = 0;
    v19 = 1;
    goto LABEL_21;
  }

  v22 = self;
  v23 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = &v7[v8];
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
        if (v23)
        {
          v18 = v11;
          v19 = 0;
          *v23 = v11;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_18:
      self = v22;
      goto LABEL_19;
    }
  }

  if (v23)
  {
    sub_100041618(Next);
    *v23 = v19 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
LABEL_21:

  return v19;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HAPDataStreamTransportParameters *)self tcpListeningPort];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
  v17 = 0;
  v7 = [v6 serializeWithError:&v17];
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
    v10 = [(HAPDataStreamTransportParameters *)self sessionIdentifier];

    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
    v16 = 0;
    v7 = [v11 serializeWithError:&v16];
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
      if (a3)
      {
        sub_100041618(v12);
        v8 = 0;
        *a3 = v14 = 0;
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

  if (a3)
  {
    v13 = v8;
    v14 = 0;
    *a3 = v8;
    goto LABEL_19;
  }

LABEL_18:
  v14 = 0;
LABEL_19:
  TLV8BufferFree();

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPDataStreamTransportParameters allocWithZone:a3];
  v5 = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
  v6 = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
  v7 = [(HAPDataStreamTransportParameters *)v4 initWithTcpListeningPort:v5 sessionIdentifier:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
      v8 = [(HAPDataStreamTransportParameters *)v6 tcpListeningPort];
      if (v7 != v8)
      {
        v9 = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
        v3 = [(HAPDataStreamTransportParameters *)v6 tcpListeningPort];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
      v12 = [(HAPDataStreamTransportParameters *)v6 sessionIdentifier];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
        v14 = [(HAPDataStreamTransportParameters *)v6 sessionIdentifier];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
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
  v3 = [(HAPDataStreamTransportParameters *)self tcpListeningPort];
  v4 = [(HAPDataStreamTransportParameters *)self sessionIdentifier];
  v5 = [NSString stringWithFormat:@"<HAPDataStreamTransportParameters tcpListeningPort=%@, sessionIdentifier=%@>", v3, v4];

  return v5;
}

@end