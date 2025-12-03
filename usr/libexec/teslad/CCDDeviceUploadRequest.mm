@interface CCDDeviceUploadRequest
- (CCDDeviceUploadRequest)requestWithError:(id *)error;
- (id)_endpointURL;
- (id)_requestBodyData;
- (id)_requestHeader;
@end

@implementation CCDDeviceUploadRequest

- (id)_requestHeader
{
  v3 = objc_opt_new();
  userCredentials = [(CCDDeviceUploadRequest *)self userCredentials];

  if (userCredentials)
  {
    userCredentials2 = [(CCDDeviceUploadRequest *)self userCredentials];
    dsid = [userCredentials2 dsid];
    [v3 setObject:dsid forKeyedSubscript:kDEPDeviceUploadUserDsidHeaderKey];

    userCredentials3 = [(CCDDeviceUploadRequest *)self userCredentials];
    dsToken = [userCredentials3 dsToken];
    v9 = [@"myacinfo=" stringByAppendingString:dsToken];
    [v3 setObject:v9 forKeyedSubscript:kDEPDeviceUploadCookieHeaderKey];
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_endpointURL
{
  endpointPath = [(CCDDeviceUploadRequest *)self endpointPath];

  if (endpointPath)
  {
    endpointPath2 = [(CCDDeviceUploadRequest *)self endpointPath];
    v5 = [@"https://eesupportapp.isu.apple.com" stringByAppendingString:endpointPath2];
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
  requestBody = [(CCDDeviceUploadRequest *)self requestBody];

  if (requestBody)
  {
    requestBody2 = [(CCDDeviceUploadRequest *)self requestBody];
    v9 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:requestBody2 options:0 error:&v9];
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

- (CCDDeviceUploadRequest)requestWithError:(id *)error
{
  v4 = [NSMutableURLRequest alloc];
  _endpointURL = [(CCDDeviceUploadRequest *)self _endpointURL];
  v6 = [v4 initWithURL:_endpointURL cachePolicy:0 timeoutInterval:30.0];

  httpMethod = [(CCDDeviceUploadRequest *)self httpMethod];
  [v6 setHTTPMethod:httpMethod];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  _requestHeader = [(CCDDeviceUploadRequest *)self _requestHeader];
  v9 = [_requestHeader countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(_requestHeader);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        _requestHeader2 = [(CCDDeviceUploadRequest *)self _requestHeader];
        v15 = [_requestHeader2 objectForKeyedSubscript:v13];
        [v6 setValue:v15 forHTTPHeaderField:v13];
      }

      v10 = [_requestHeader countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  _contentType = [(CCDDeviceUploadRequest *)self _contentType];

  if (_contentType)
  {
    _contentType2 = [(CCDDeviceUploadRequest *)self _contentType];
    [v6 setValue:_contentType2 forHTTPHeaderField:@"Content-Type"];
  }

  _requestBodyData = [(CCDDeviceUploadRequest *)self _requestBodyData];

  if (_requestBodyData)
  {
    _requestBodyData2 = [(CCDDeviceUploadRequest *)self _requestBodyData];
    [v6 setHTTPBody:_requestBodyData2];
  }

  return v6;
}

@end