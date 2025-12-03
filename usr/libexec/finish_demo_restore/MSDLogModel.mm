@interface MSDLogModel
+ (id)sharedInstance;
- (BOOL)enableLogToFile:(id)file;
- (BOOL)enableLogToFilesUnder:(id)under prefix:(id)prefix expireDays:(int64_t)days;
- (MSDLogModel)init;
- (id)fileNameForTodayUnder:(id)under prefix:(id)prefix;
- (void)logMessage:(int)message prefix:(id)prefix message:(id)a5;
@end

@implementation MSDLogModel

+ (id)sharedInstance
{
  if (qword_10000C738 != -1)
  {
    sub_100003324();
  }

  v3 = qword_10000C730;

  return v3;
}

- (MSDLogModel)init
{
  v10.receiver = self;
  v10.super_class = MSDLogModel;
  v2 = [(MSDLogModel *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_logFP = 0;
    logFolderPath = v2->_logFolderPath;
    v2->_logFolderPath = 0;

    *&v3->_loggingLevelToFile = 0x300000001;
    v5 = getprogname();
    v6 = os_log_create("com.apple.MobileDemo", v5);
    osLog = v3->_osLog;
    v3->_osLog = v6;

    v8 = v3;
  }

  return v3;
}

- (void)logMessage:(int)message prefix:(id)prefix message:(id)a5
{
  prefixCopy = prefix;
  v9 = a5;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_loggingLevelToFile <= message)
  {
    context = objc_autoreleasePoolPush();
    v29[1] = &v34;
    v11 = [[NSString alloc] initWithFormat:v9 arguments:&v34];
    v29[0] = 0;
    pthread_threadid_np(0, v29);
    v28 = +[NSDate date];
    v12 = objc_alloc_init(NSDateFormatter);
    [v12 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v13 = [v12 stringFromDate:v28];
    v14 = [NSString stringWithFormat:@"0x%llx %d [%@] %@ %@\n", v29[0], getpid(), v13, prefixCopy, v11];
    v15 = v14;
    logFP = selfCopy->_logFP;
    if (logFP)
    {
      v17 = v14;
      fputs([v15 UTF8String], logFP);
      fflush(selfCopy->_logFP);
    }

    if (selfCopy->_loggingLevelToStdout <= message)
    {
      v26 = __stdoutp;
      v18 = v13;
      uTF8String = [v13 UTF8String];
      v19 = getprogname();
      v20 = [prefixCopy substringToIndex:5];
      v21 = v20;
      uTF8String2 = [v20 UTF8String];
      v23 = v11;
      fprintf(v26, "%s %s %s %s\n", uTF8String, v19, uTF8String2, [v11 UTF8String]);

      fflush(__stdoutp);
    }

    osLog = selfCopy->_osLog;
    if (os_log_type_enabled(osLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = prefixCopy;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, osLog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)enableLogToFile:(id)file
{
  fileCopy = file;
  v5 = +[NSFileManager defaultManager];
  stringByExpandingTildeInPath = [fileCopy stringByExpandingTildeInPath];

  stringByDeletingLastPathComponent = [stringByExpandingTildeInPath stringByDeletingLastPathComponent];
  v9 = 0;
  if (([v5 fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, 0))
  {
    objc_storeStrong(&self->_logFolderPath, stringByDeletingLastPathComponent);
    v8 = fopen([stringByExpandingTildeInPath fileSystemRepresentation], "a");
    self->_logFP = v8;
    if (v8)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)enableLogToFilesUnder:(id)under prefix:(id)prefix expireDays:(int64_t)days
{
  underCopy = under;
  prefixCopy = prefix;
  v10 = +[NSFileManager defaultManager];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100001420;
  v29[4] = sub_100001430;
  v30 = 0;
  v28 = 97;
  if (([v10 fileExistsAtPath:underCopy] & 1) == 0)
  {
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 createDirectoryAtPath:underCopy withIntermediateDirectories:1 attributes:0 error:0];

    if ((v12 & 1) == 0)
    {
      v17 = 0;
      v19 = 0;
      v13 = 0;
      goto LABEL_10;
    }
  }

  v13 = [underCopy stringByAppendingPathComponent:@"testWritability.log"];
  v14 = [NSData dataWithBytes:&v28 length:1];
  v15 = [v10 createFileAtPath:v13 contents:v14 attributes:0];

  if (!v15)
  {
    v17 = 0;
    v19 = 0;
LABEL_10:
    v21 = 0;
    goto LABEL_7;
  }

  [v10 removeItemAtPath:v13 error:0];
  v16 = +[NSDate date];
  v17 = [NSDate dateWithTimeInterval:v16 sinceDate:days * -86400.0];

  v18 = +[NSFileManager defaultManager];
  v19 = [v18 contentsOfDirectoryAtPath:underCopy error:0];

  if (v19)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100001438;
    v23[3] = &unk_100008378;
    v24 = underCopy;
    v25 = v17;
    v27 = v29;
    v26 = v10;
    [v19 enumerateObjectsUsingBlock:v23];
  }

  v20 = [(MSDLogModel *)self fileNameForTodayUnder:underCopy prefix:prefixCopy];
  v21 = [(MSDLogModel *)self enableLogToFile:v20];

LABEL_7:
  _Block_object_dispose(v29, 8);

  return v21;
}

- (id)fileNameForTodayUnder:(id)under prefix:(id)prefix
{
  prefixCopy = prefix;
  underCopy = under;
  v7 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v8 = +[NSLocale currentLocale];
  [v7 setLocale:v8];

  v9 = +[NSDate date];
  v10 = [v7 components:28 fromDate:v9];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@-%4ld%02ld%02ld.log", underCopy, prefixCopy, [v10 year], objc_msgSend(v10, "month"), objc_msgSend(v10, "day"));

  return v11;
}

@end