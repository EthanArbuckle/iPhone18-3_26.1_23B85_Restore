@interface TransparencyResponse
- (TransparencyResponse)initWithRequest:(id)a3 responseData:(id)a4 metadata:(id)a5;
- (id)serverHint;
@end

@implementation TransparencyResponse

- (TransparencyResponse)initWithRequest:(id)a3 responseData:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TransparencyResponse;
  v11 = [(TransparencyResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(TransparencyResponse *)v11 setRequest:v8];
    [(TransparencyResponse *)v12 setData:v9];
    [(TransparencyResponse *)v12 setMetadata:v10];
  }

  return v12;
}

- (id)serverHint
{
  v3 = [(TransparencyResponse *)self metadata];

  if (v3)
  {
    v4 = [(TransparencyResponse *)self metadata];
    v5 = [v4 objectForKey:kTransparencyResponseMetadataKeyServerHint];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end