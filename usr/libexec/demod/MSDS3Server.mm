@interface MSDS3Server
- (void)launchTaskWithRequest:(id)request;
- (void)uploadMobileStoreDemoLogs:(id)logs;
@end

@implementation MSDS3Server

- (void)uploadMobileStoreDemoLogs:(id)logs
{
  logsCopy = logs;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "About to send request to S3 server to upload logs.", buf, 2u);
  }

  v6 = objc_alloc_init(MSDServerResponse);
  if ([logsCopy isValid])
  {
    [(MSDS3Server *)self launchTaskWithRequest:logsCopy];
    v7 = 0;
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000EB580(logsCopy, v8);
    }

    v11 = 0;
    sub_1000C1390(&v11, 3727744769, @"Input is invalid");
    v7 = v11;
    [(MSDServerResponse *)v6 setError:v7];
    completion = [logsCopy completion];

    if (completion)
    {
      completion2 = [logsCopy completion];
      (completion2)[2](completion2, v6);
    }
  }
}

- (void)launchTaskWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(MSDS3SessionTaskInfo);
  s3url = [requestCopy s3url];
  [(MSDS3SessionTaskInfo *)v5 setS3url:s3url];

  httpHeaders = [requestCopy httpHeaders];
  [(MSDS3SessionTaskInfo *)v5 setHttpHeaders:httpHeaders];

  -[MSDSessionTaskInfo setMaxRetry:](v5, "setMaxRetry:", [requestCopy retryAttempts]);
  logFilePath = [requestCopy logFilePath];
  [(MSDSessionTaskInfo *)v5 setPostFile:logFilePath];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C2160;
  v12[3] = &unk_10016B6D8;
  v13 = requestCopy;
  v9 = requestCopy;
  v10 = objc_retainBlock(v12);
  [(MSDSessionTaskInfo *)v5 setHandler:v10];
  session = [(MSDServer *)self session];
  [session launchTaskWithInfo:v5];
}

@end