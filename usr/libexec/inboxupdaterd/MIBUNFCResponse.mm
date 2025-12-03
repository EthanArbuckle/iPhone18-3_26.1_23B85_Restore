@interface MIBUNFCResponse
- (BOOL)_deserialize:(id)_deserialize;
- (MIBUNFCResponse)init;
- (MIBUNFCResponse)initWithResponsePayload:(id)payload;
- (id)serialize;
@end

@implementation MIBUNFCResponse

- (MIBUNFCResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUNFCResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUNFCResponse *)v2 setRejected:0];
    [(MIBUNFCResponse *)v3 setError:0];
  }

  return v3;
}

- (MIBUNFCResponse)initWithResponsePayload:(id)payload
{
  payloadCopy = payload;
  v5 = [(MIBUNFCResponse *)self init];
  v6 = v5;
  if (v5 && ![(MIBUNFCResponse *)v5 _deserialize:payloadCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)serialize
{
  v3 = objc_opt_new();
  error = [(MIBUNFCResponse *)self error];
  v5 = [v3 serializeResponseError:error];

  if (v5)
  {
    serializedData = [v3 serializedData];
  }

  else
  {
    sub_1000606A4(self, &v8);
    serializedData = v8;
  }

  return serializedData;
}

- (BOOL)_deserialize:(id)_deserialize
{
  _deserializeCopy = _deserialize;
  v5 = [[MIBUDeserializer alloc] initWithData:_deserializeCopy];

  deserialize = [(MIBUDeserializer *)v5 deserialize];

  if (deserialize)
  {
    v12 = 0;
    v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v12];
    v8 = v12;
    v9 = v8;
    if (v7)
    {
      [(MIBUNFCResponse *)self setError:v8];

      v10 = 1;
    }

    else
    {
      sub_1000607A8(v8);
      v10 = 0;
    }
  }

  else
  {
    sub_100060838(&v13);
    v10 = v13;
  }

  return v10;
}

@end