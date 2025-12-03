@interface MSDLogModel
+ (id)sharedInstance;
- (BOOL)enableLogToFile:(id)file;
- (BOOL)enableLogToFilesUnder:(id)under prefix:(id)prefix expireDays:(int64_t)days;
- (id)fileNameForTodayUnder:(id)under prefix:(id)prefix;
- (void)logMessage:(id)message;
- (void)logWithFormat:(id)format andArgs:(char *)args;
@end

@implementation MSDLogModel

+ (id)sharedInstance
{
  if (qword_1001A5818 != -1)
  {
    sub_1000D6870();
  }

  v3 = qword_1001A5810;

  return v3;
}

- (void)logWithFormat:(id)format andArgs:(char *)args
{
  formatCopy = format;
  v7 = [[NSString alloc] initWithFormat:formatCopy arguments:args];

  [(MSDLogModel *)self logMessage:v7];
}

- (void)logMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"dd-MM-yyyy HH:mm:ss:SSS"];
  v5 = +[NSDate now];
  v6 = [v4 stringFromDate:v5];

  messageCopy = [NSString stringWithFormat:@"%@ %@\n", v6, messageCopy];
  if ([(MSDLogModel *)self logFP])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    fputs([messageCopy UTF8String], -[MSDLogModel logFP](selfCopy, "logFP"));
    fflush([(MSDLogModel *)selfCopy logFP]);
    objc_sync_exit(selfCopy);
  }
}

- (BOOL)enableLogToFile:(id)file
{
  fileCopy = file;
  v5 = +[NSFileManager defaultManager];
  stringByExpandingTildeInPath = [fileCopy stringByExpandingTildeInPath];

  stringByDeletingLastPathComponent = [stringByExpandingTildeInPath stringByDeletingLastPathComponent];
  v8 = 0;
  if (([v5 fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, 0))
  {
    -[MSDLogModel setLogFP:](self, "setLogFP:", fopen([stringByExpandingTildeInPath fileSystemRepresentation], "a"));
    if ([(MSDLogModel *)self logFP])
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)enableLogToFilesUnder:(id)under prefix:(id)prefix expireDays:(int64_t)days
{
  underCopy = under;
  prefixCopy = prefix;
  v10 = +[NSFileManager defaultManager];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_1000642F4;
  v29[4] = sub_100064304;
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
    v23[2] = sub_10006430C;
    v23[3] = &unk_10016B2D0;
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