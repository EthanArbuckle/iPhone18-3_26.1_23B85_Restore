@interface APFakeNetworkResponse
- (BOOL)loadConfig:(id)a3;
- (id)addFakeResponseHeadersToHeaders:(id)a3;
@end

@implementation APFakeNetworkResponse

- (BOOL)loadConfig:(id)a3
{
  v4 = a3;
  v5 = @"debug-http-status";
  v6 = [v4 objectForKey:@"debug-http-status"];
  if (v6 || (v5 = @"debug-communication-code", [v4 objectForKey:@"debug-communication-code"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [(APFakeNetworkResponse *)self setHeaderName:v5];
    v8 = [v7 stringValue];
    [(APFakeNetworkResponse *)self setHeaderValue:v8];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)addFakeResponseHeadersToHeaders:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(APFakeNetworkResponse *)self headerName];
    if ([v5 length])
    {
      v6 = [(APFakeNetworkResponse *)self headerValue];
      v7 = [v6 length];

      if (v7)
      {
        v8 = [v4 mutableCopy];
        v9 = [(APFakeNetworkResponse *)self headerValue];
        v10 = [(APFakeNetworkResponse *)self headerName];
        [v8 setObject:v9 forKeyedSubscript:v10];

        v11 = [v8 copy];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v11 = v4;
LABEL_7:

  return v11;
}

@end