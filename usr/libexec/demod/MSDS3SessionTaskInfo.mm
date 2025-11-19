@interface MSDS3SessionTaskInfo
- (id)getRequestForTimeout:(double)a3;
@end

@implementation MSDS3SessionTaskInfo

- (id)getRequestForTimeout:(double)a3
{
  v5 = [(MSDS3SessionTaskInfo *)self s3url];
  v6 = [NSURL URLWithString:v5];
  v7 = [NSMutableURLRequest requestWithURL:v6 cachePolicy:1 timeoutInterval:a3];
  [(MSDSessionTaskInfo *)self setRequest:v7];

  v8 = [(MSDSessionTaskInfo *)self request];

  if (v8)
  {
    v9 = [(MSDSessionTaskInfo *)self request];
    [v9 setHTTPMethod:@"PUT"];

    v10 = [(MSDS3SessionTaskInfo *)self httpHeaders];

    if (v10)
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
      v12 = [(MSDS3SessionTaskInfo *)self httpHeaders];
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
              objc_enumerationMutation(v12);
            }

            v15 = *(*(&v27 + 1) + 8 * v17);

            v19 = sub_100063A54();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v23 = [(MSDS3SessionTaskInfo *)self httpHeaders];
              v24 = [v23 objectForKey:v15];
              *buf = 138412546;
              v32 = v15;
              v33 = 2112;
              v34 = v24;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Http Header: %@, Value: %@", buf, 0x16u);
            }

            v20 = [(MSDSessionTaskInfo *)self request];
            v21 = [(MSDS3SessionTaskInfo *)self httpHeaders];
            v22 = [v21 objectForKey:v15];
            [v20 setValue:v22 forHTTPHeaderField:v15];

            v17 = v17 + 1;
            v18 = v15;
          }

          while (v14 != v17);
          v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v12 = [(MSDSessionTaskInfo *)self request];
      [v12 setValue:@"application/gzip" forHTTPHeaderField:@"Content-Type"];
    }

    v25 = [(MSDSessionTaskInfo *)self request];
  }

  else
  {
    sub_1000D1590();
    v25 = 0;
  }

  return v25;
}

@end