@interface TransparencyResponse
- (TransparencyResponse)initWithRequest:(id)request responseData:(id)data metadata:(id)metadata;
- (id)serverHint;
@end

@implementation TransparencyResponse

- (TransparencyResponse)initWithRequest:(id)request responseData:(id)data metadata:(id)metadata
{
  requestCopy = request;
  dataCopy = data;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = TransparencyResponse;
  v11 = [(TransparencyResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(TransparencyResponse *)v11 setRequest:requestCopy];
    [(TransparencyResponse *)v12 setData:dataCopy];
    [(TransparencyResponse *)v12 setMetadata:metadataCopy];
  }

  return v12;
}

- (id)serverHint
{
  metadata = [(TransparencyResponse *)self metadata];

  if (metadata)
  {
    metadata2 = [(TransparencyResponse *)self metadata];
    v5 = [metadata2 objectForKey:kTransparencyResponseMetadataKeyServerHint];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end