@interface CCDDeviceUploadRequest
- (CCDDeviceUploadRequest)requestWithError:(id *)a3;
- (id)_endpointURL;
- (id)_requestBodyData;
- (id)_requestHeader;
@end

@implementation CCDDeviceUploadRequest

- (id)_requestHeader
{
  v3 = objc_opt_new();
  v4 = [(CCDDeviceUploadRequest *)self userCredentials];

  if (v4)
  {
    v5 = [(CCDDeviceUploadRequest *)self userCredentials];
    v6 = [v5 dsid];
    [v3 setObject:v6 forKeyedSubscript:kDEPDeviceUploadUserDsidHeaderKey];

    v7 = [(CCDDeviceUploadRequest *)self userCredentials];
    v8 = [v7 dsToken];
    v9 = [@"myacinfo=" stringByAppendingString:v8];
    [v3 setObject:v9 forKeyedSubscript:kDEPDeviceUploadCookieHeaderKey];
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_endpointURL
{
  v3 = [(CCDDeviceUploadRequest *)self endpointPath];

  if (v3)
  {
    v4 = [(CCDDeviceUploadRequest *)self endpointPath];
    v5 = [@"https://eesupportapp.isu.apple.com" stringByAppendingString:v4];
    v6 = [NSURL URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_requestBodyData
{
  v3 = [(CCDDeviceUploadRequest *)self requestBody];

  if (v3)
  {
    v4 = [(CCDDeviceUploadRequest *)self requestBody];
    v9 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v9];
    v6 = v9;

    if (v6)
    {
      v7 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error serializing data: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CCDDeviceUploadRequest)requestWithError:(id *)a3
{
  v4 = [NSMutableURLRequest alloc];
  v5 = [(CCDDeviceUploadRequest *)self _endpointURL];
  v6 = [v4 initWithURL:v5 cachePolicy:0 timeoutInterval:30.0];

  v7 = [(CCDDeviceUploadRequest *)self httpMethod];
  [v6 setHTTPMethod:v7];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(CCDDeviceUploadRequest *)self _requestHeader];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [(CCDDeviceUploadRequest *)self _requestHeader];
        v15 = [v14 objectForKeyedSubscript:v13];
        [v6 setValue:v15 forHTTPHeaderField:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [(CCDDeviceUploadRequest *)self _contentType];

  if (v16)
  {
    v17 = [(CCDDeviceUploadRequest *)self _contentType];
    [v6 setValue:v17 forHTTPHeaderField:@"Content-Type"];
  }

  v18 = [(CCDDeviceUploadRequest *)self _requestBodyData];

  if (v18)
  {
    v19 = [(CCDDeviceUploadRequest *)self _requestBodyData];
    [v6 setHTTPBody:v19];
  }

  return v6;
}

@end