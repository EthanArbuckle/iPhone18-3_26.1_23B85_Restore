@interface MSDS3Server
- (void)launchTaskWithRequest:(id)a3;
- (void)uploadMobileStoreDemoLogs:(id)a3;
@end

@implementation MSDS3Server

- (void)uploadMobileStoreDemoLogs:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "About to send request to S3 server to upload logs.", buf, 2u);
  }

  v6 = objc_alloc_init(MSDServerResponse);
  if ([v4 isValid])
  {
    [(MSDS3Server *)self launchTaskWithRequest:v4];
    v7 = 0;
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000EB580(v4, v8);
    }

    v11 = 0;
    sub_1000C1390(&v11, 3727744769, @"Input is invalid");
    v7 = v11;
    [(MSDServerResponse *)v6 setError:v7];
    v9 = [v4 completion];

    if (v9)
    {
      v10 = [v4 completion];
      (v10)[2](v10, v6);
    }
  }
}

- (void)launchTaskWithRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MSDS3SessionTaskInfo);
  v6 = [v4 s3url];
  [(MSDS3SessionTaskInfo *)v5 setS3url:v6];

  v7 = [v4 httpHeaders];
  [(MSDS3SessionTaskInfo *)v5 setHttpHeaders:v7];

  -[MSDSessionTaskInfo setMaxRetry:](v5, "setMaxRetry:", [v4 retryAttempts]);
  v8 = [v4 logFilePath];
  [(MSDSessionTaskInfo *)v5 setPostFile:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C2160;
  v12[3] = &unk_10016B6D8;
  v13 = v4;
  v9 = v4;
  v10 = objc_retainBlock(v12);
  [(MSDSessionTaskInfo *)v5 setHandler:v10];
  v11 = [(MSDServer *)self session];
  [v11 launchTaskWithInfo:v5];
}

@end