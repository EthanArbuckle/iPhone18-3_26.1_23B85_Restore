@interface MIBUNFCResponse
- (BOOL)_deserialize:(id)a3;
- (MIBUNFCResponse)init;
- (MIBUNFCResponse)initWithResponsePayload:(id)a3;
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

- (MIBUNFCResponse)initWithResponsePayload:(id)a3
{
  v4 = a3;
  v5 = [(MIBUNFCResponse *)self init];
  v6 = v5;
  if (v5 && ![(MIBUNFCResponse *)v5 _deserialize:v4])
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
  v4 = [(MIBUNFCResponse *)self error];
  v5 = [v3 serializeResponseError:v4];

  if (v5)
  {
    v6 = [v3 serializedData];
  }

  else
  {
    sub_1000606A4(self, &v8);
    v6 = v8;
  }

  return v6;
}

- (BOOL)_deserialize:(id)a3
{
  v4 = a3;
  v5 = [[MIBUDeserializer alloc] initWithData:v4];

  v6 = [(MIBUDeserializer *)v5 deserialize];

  if (v6)
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