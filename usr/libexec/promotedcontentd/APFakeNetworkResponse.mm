@interface APFakeNetworkResponse
- (BOOL)loadConfig:(id)config;
- (id)addFakeResponseHeadersToHeaders:(id)headers;
@end

@implementation APFakeNetworkResponse

- (BOOL)loadConfig:(id)config
{
  configCopy = config;
  v5 = @"debug-http-status";
  v6 = [configCopy objectForKey:@"debug-http-status"];
  if (v6 || (v5 = @"debug-communication-code", [configCopy objectForKey:@"debug-communication-code"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [(APFakeNetworkResponse *)self setHeaderName:v5];
    stringValue = [v7 stringValue];
    [(APFakeNetworkResponse *)self setHeaderValue:stringValue];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)addFakeResponseHeadersToHeaders:(id)headers
{
  headersCopy = headers;
  if (headersCopy)
  {
    headerName = [(APFakeNetworkResponse *)self headerName];
    if ([headerName length])
    {
      headerValue = [(APFakeNetworkResponse *)self headerValue];
      v7 = [headerValue length];

      if (v7)
      {
        v8 = [headersCopy mutableCopy];
        headerValue2 = [(APFakeNetworkResponse *)self headerValue];
        headerName2 = [(APFakeNetworkResponse *)self headerName];
        [v8 setObject:headerValue2 forKeyedSubscript:headerName2];

        v11 = [v8 copy];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v11 = headersCopy;
LABEL_7:

  return v11;
}

@end