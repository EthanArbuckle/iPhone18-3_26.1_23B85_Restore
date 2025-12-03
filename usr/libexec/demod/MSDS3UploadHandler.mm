@interface MSDS3UploadHandler
+ (id)sharedInstance;
- (BOOL)uploadInProgress;
- (MSDS3UploadHandler)init;
- (id)demoLogUploadRequest;
- (id)getDefaultLogFolderName;
- (void)clearDemoLogUploadRequest;
- (void)demoLogUploadCompleted:(id)completed;
- (void)saveDemoLogUploadRequest:(id)request;
- (void)setUploadInProgress:(BOOL)progress;
- (void)uploadDemoLogsIfNeeded;
- (void)uploadDemoLogsTo:(id)to HttpHeaders:(id)headers andMaxAttempts:(int64_t)attempts ofType:(unint64_t)type;
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

- (void)uploadDemoLogsTo:(id)to HttpHeaders:(id)headers andMaxAttempts:(int64_t)attempts ofType:(unint64_t)type
{
  toCopy = to;
  headersCopy = headers;
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

  if (!toCopy)
  {
    v20 = sub_100063A54();
    sub_1000C5D40(v20, &v37);
    goto LABEL_11;
  }

  [(MSDS3UploadHandler *)self setUploadInProgress:1];
  getDefaultLogFolderName = [(MSDS3UploadHandler *)self getDefaultLogFolderName];
  demoLogUploadRequest = [(MSDS3UploadHandler *)self demoLogUploadRequest];

  if (!demoLogUploadRequest)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:toCopy forKey:@"s3URL"];
    v15 = [NSNumber numberWithInteger:attempts];
    [v14 setObject:v15 forKey:@"maxRetry"];

    [v14 setObject:getDefaultLogFolderName forKey:@"folderName"];
    v16 = [NSNumber numberWithUnsignedInteger:type];
    [v14 setObject:v16 forKey:@"logType"];

    if (headersCopy)
    {
      [v14 setObject:headersCopy forKey:@"httpHeaders"];
    }

    [(MSDS3UploadHandler *)self saveDemoLogUploadRequest:v14];
  }

  v17 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BF5C;
  block[3] = &unk_100169DF0;
  v24 = getDefaultLogFolderName;
  typeCopy = type;
  v25 = toCopy;
  attemptsCopy = attempts;
  selfCopy = self;
  v28 = &v31;
  v26 = headersCopy;
  v18 = getDefaultLogFolderName;
  dispatch_async(v17, block);

LABEL_8:
  _Block_object_dispose(&v31, 8);
}

- (void)uploadDemoLogsIfNeeded
{
  demoLogUploadRequest = [(MSDS3UploadHandler *)self demoLogUploadRequest];
  v4 = demoLogUploadRequest;
  if (demoLogUploadRequest)
  {
    v5 = [demoLogUploadRequest objectForKey:@"s3URL"];
    v6 = [v4 objectForKey:@"folderName"];
    v7 = [v4 objectForKey:@"httpHeaders"];
    v8 = [v4 objectForKey:@"maxRetry"];
    integerValue = [v8 integerValue];

    v10 = [v4 objectForKey:@"logType"];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Demod was interrupted in between demo log upload to S3! Lets try again..", v13, 2u);
    }

    [(MSDS3UploadHandler *)self uploadDemoLogsTo:v5 HttpHeaders:v7 andMaxAttempts:integerValue ofType:unsignedIntegerValue];
  }
}

- (BOOL)uploadInProgress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  uploadInProgress = selfCopy->_uploadInProgress;
  objc_sync_exit(selfCopy);

  return uploadInProgress;
}

- (void)setUploadInProgress:(BOOL)progress
{
  obj = self;
  objc_sync_enter(obj);
  obj->_uploadInProgress = progress;
  objc_sync_exit(obj);
}

- (void)saveDemoLogUploadRequest:(id)request
{
  requestCopy = request;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:requestCopy forKey:@"DemoLogUploadRequest"];
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
  serialNumber = [v5 serialNumber];

  v7 = [NSString stringWithFormat:@"%@-log-%@", serialNumber, v4];

  return v7;
}

- (void)demoLogUploadCompleted:(id)completed
{
  completedCopy = completed;
  if (![(MSDS3UploadHandler *)self uploadInProgress])
  {
    [(MSDS3UploadHandler *)self clearDemoLogUploadRequest];
  }

  v4 = completedCopy;
  if (completedCopy)
  {
    localizedDescription = [completedCopy localizedDescription];
    v6 = +[MSDTargetDevice sharedInstance];
    [v6 setS3ServerFailureReason:localizedDescription];

    v7 = +[MSDMailProcessor sharedInstance];
    [v7 reportS3ServerFailed];

    v4 = completedCopy;
  }
}

@end