@interface MSDS3UploadHandler
+ (id)sharedInstance;
- (BOOL)uploadInProgress;
- (MSDS3UploadHandler)init;
- (id)demoLogUploadRequest;
- (id)getDefaultLogFolderName;
- (void)clearDemoLogUploadRequest;
- (void)demoLogUploadCompleted:(id)a3;
- (void)saveDemoLogUploadRequest:(id)a3;
- (void)setUploadInProgress:(BOOL)a3;
- (void)uploadDemoLogsIfNeeded;
- (void)uploadDemoLogsTo:(id)a3 HttpHeaders:(id)a4 andMaxAttempts:(int64_t)a5 ofType:(unint64_t)a6;
@end

@implementation MSDS3UploadHandler

+ (id)sharedInstance
{
  if (qword_1001A55D0 != -1)
  {
    sub_1000C5D2C();
  }

  v3 = qword_1001A55C8;

  return v3;
}

- (MSDS3UploadHandler)init
{
  v5.receiver = self;
  v5.super_class = MSDS3UploadHandler;
  v2 = [(MSDS3UploadHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDS3UploadHandler *)v2 setUploadInProgress:0];
  }

  return v3;
}

- (void)uploadDemoLogsTo:(id)a3 HttpHeaders:(id)a4 andMaxAttempts:(int64_t)a5 ofType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10000BF44;
  v35 = sub_10000BF54;
  v36 = 0;
  if ([(MSDS3UploadHandler *)self uploadInProgress])
  {
    v19 = sub_100063A54();
    sub_1000C5D98(v19, &v37);
LABEL_11:

    v21 = (v32 + 5);
    obj = v32[5];
    sub_1000C1390(&obj, 3727744742, @"Failed to upload MobileStoreDemo logs to S3.");
    objc_storeStrong(v21, obj);
    [(MSDS3UploadHandler *)self demoLogUploadCompleted:v32[5]];
    goto LABEL_8;
  }

  if (!v10)
  {
    v20 = sub_100063A54();
    sub_1000C5D40(v20, &v37);
    goto LABEL_11;
  }

  [(MSDS3UploadHandler *)self setUploadInProgress:1];
  v12 = [(MSDS3UploadHandler *)self getDefaultLogFolderName];
  v13 = [(MSDS3UploadHandler *)self demoLogUploadRequest];

  if (!v13)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:v10 forKey:@"s3URL"];
    v15 = [NSNumber numberWithInteger:a5];
    [v14 setObject:v15 forKey:@"maxRetry"];

    [v14 setObject:v12 forKey:@"folderName"];
    v16 = [NSNumber numberWithUnsignedInteger:a6];
    [v14 setObject:v16 forKey:@"logType"];

    if (v11)
    {
      [v14 setObject:v11 forKey:@"httpHeaders"];
    }

    [(MSDS3UploadHandler *)self saveDemoLogUploadRequest:v14];
  }

  v17 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BF5C;
  block[3] = &unk_100169DF0;
  v24 = v12;
  v29 = a6;
  v25 = v10;
  v30 = a5;
  v27 = self;
  v28 = &v31;
  v26 = v11;
  v18 = v12;
  dispatch_async(v17, block);

LABEL_8:
  _Block_object_dispose(&v31, 8);
}

- (void)uploadDemoLogsIfNeeded
{
  v3 = [(MSDS3UploadHandler *)self demoLogUploadRequest];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"s3URL"];
    v6 = [v4 objectForKey:@"folderName"];
    v7 = [v4 objectForKey:@"httpHeaders"];
    v8 = [v4 objectForKey:@"maxRetry"];
    v9 = [v8 integerValue];

    v10 = [v4 objectForKey:@"logType"];
    v11 = [v10 unsignedIntegerValue];

    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Demod was interrupted in between demo log upload to S3! Lets try again..", v13, 2u);
    }

    [(MSDS3UploadHandler *)self uploadDemoLogsTo:v5 HttpHeaders:v7 andMaxAttempts:v9 ofType:v11];
  }
}

- (BOOL)uploadInProgress
{
  v2 = self;
  objc_sync_enter(v2);
  uploadInProgress = v2->_uploadInProgress;
  objc_sync_exit(v2);

  return uploadInProgress;
}

- (void)setUploadInProgress:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_uploadInProgress = a3;
  objc_sync_exit(obj);
}

- (void)saveDemoLogUploadRequest:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"DemoLogUploadRequest"];
}

- (void)clearDemoLogUploadRequest
{
  v2 = +[MSDPreferencesFile sharedInstance];
  [v2 removeObjectForKey:@"DemoLogUploadRequest"];
}

- (id)demoLogUploadRequest
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DemoLogUploadRequest"];

  return v3;
}

- (id)getDefaultLogFolderName
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyyMMddhhmmss"];
  v3 = +[NSDate date];
  v4 = [v2 stringFromDate:v3];
  v5 = +[MSDTargetDevice sharedInstance];
  v6 = [v5 serialNumber];

  v7 = [NSString stringWithFormat:@"%@-log-%@", v6, v4];

  return v7;
}

- (void)demoLogUploadCompleted:(id)a3
{
  v8 = a3;
  if (![(MSDS3UploadHandler *)self uploadInProgress])
  {
    [(MSDS3UploadHandler *)self clearDemoLogUploadRequest];
  }

  v4 = v8;
  if (v8)
  {
    v5 = [v8 localizedDescription];
    v6 = +[MSDTargetDevice sharedInstance];
    [v6 setS3ServerFailureReason:v5];

    v7 = +[MSDMailProcessor sharedInstance];
    [v7 reportS3ServerFailed];

    v4 = v8;
  }
}

@end