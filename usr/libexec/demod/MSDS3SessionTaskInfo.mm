@interface MSDS3SessionTaskInfo
- (id)getRequestForTimeout:(double)timeout;
@end

@implementation MSDS3SessionTaskInfo

- (id)getRequestForTimeout:(double)timeout
{
  s3url = [(MSDS3SessionTaskInfo *)self s3url];
  v6 = [NSURL URLWithString:s3url];
  v7 = [NSMutableURLRequest requestWithURL:v6 cachePolicy:1 timeoutInterval:timeout];
  [(MSDSessionTaskInfo *)self setRequest:v7];

  request = [(MSDSessionTaskInfo *)self request];

  if (request)
  {
    request2 = [(MSDSessionTaskInfo *)self request];
    [request2 setHTTPMethod:@"PUT"];

    httpHeaders = [(MSDS3SessionTaskInfo *)self httpHeaders];

    if (httpHeaders)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received custom http headers to use.", buf, 2u);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      httpHeaders2 = [(MSDS3SessionTaskInfo *)self httpHeaders];
      v13 = [httpHeaders2 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v28;
        do
        {
          v17 = 0;
          v18 = v15;
          do
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(httpHeaders2);
            }

            v15 = *(*(&v27 + 1) + 8 * v17);

            v19 = sub_100063A54();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              httpHeaders3 = [(MSDS3SessionTaskInfo *)self httpHeaders];
              v24 = [httpHeaders3 objectForKey:v15];
              *buf = 138412546;
              v32 = v15;
              v33 = 2112;
              v34 = v24;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Http Header: %@, Value: %@", buf, 0x16u);
            }

            request3 = [(MSDSessionTaskInfo *)self request];
            httpHeaders4 = [(MSDS3SessionTaskInfo *)self httpHeaders];
            v22 = [httpHeaders4 objectForKey:v15];
            [request3 setValue:v22 forHTTPHeaderField:v15];

            v17 = v17 + 1;
            v18 = v15;
          }

          while (v14 != v17);
          v14 = [httpHeaders2 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v14);
      }
    }

    else
    {
      httpHeaders2 = [(MSDSessionTaskInfo *)self request];
      [httpHeaders2 setValue:@"application/gzip" forHTTPHeaderField:@"Content-Type"];
    }

    request4 = [(MSDSessionTaskInfo *)self request];
  }

  else
  {
    sub_1000D1590();
    request4 = 0;
  }

  return request4;
}

@end