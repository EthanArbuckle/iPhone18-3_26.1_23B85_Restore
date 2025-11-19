@interface MSDLogModel
+ (id)sharedInstance;
- (BOOL)enableLogToFile:(id)a3;
- (BOOL)enableLogToFilesUnder:(id)a3 prefix:(id)a4 expireDays:(int64_t)a5;
- (id)fileNameForTodayUnder:(id)a3 prefix:(id)a4;
- (void)logMessage:(id)a3;
- (void)logWithFormat:(id)a3 andArgs:(char *)a4;
@end

@implementation MSDLogModel

+ (id)sharedInstance
{
  if (qword_10005BFC0 != -1)
  {
    sub_1000326B0();
  }

  v3 = qword_10005BFB8;

  return v3;
}

- (void)logWithFormat:(id)a3 andArgs:(char *)a4
{
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:v6 arguments:a4];

  [(MSDLogModel *)self logMessage:v7];
}

- (void)logMessage:(id)a3
{
  v9 = a3;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"dd-MM-yyyy HH:mm:ss:SSS"];
  v5 = +[NSDate now];
  v6 = [v4 stringFromDate:v5];

  v7 = [NSString stringWithFormat:@"%@ %@\n", v6, v9];
  if ([(MSDLogModel *)self logFP])
  {
    v8 = self;
    objc_sync_enter(v8);
    fputs([v7 UTF8String], -[MSDLogModel logFP](v8, "logFP"));
    fflush([(MSDLogModel *)v8 logFP]);
    objc_sync_exit(v8);
  }
}

- (BOOL)enableLogToFile:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 stringByExpandingTildeInPath];

  v7 = [v6 stringByDeletingLastPathComponent];
  v8 = 0;
  if (([v5 fileExistsAtPath:v7] & 1) != 0 || objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v7, 1, 0, 0))
  {
    -[MSDLogModel setLogFP:](self, "setLogFP:", fopen([v6 fileSystemRepresentation], "a"));
    if ([(MSDLogModel *)self logFP])
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)enableLogToFilesUnder:(id)a3 prefix:(id)a4 expireDays:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSFileManager defaultManager];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100021B08;
  v29[4] = sub_100021B18;
  v30 = 0;
  v28 = 97;
  if (([v10 fileExistsAtPath:v8] & 1) == 0)
  {
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

    if ((v12 & 1) == 0)
    {
      v17 = 0;
      v19 = 0;
      v13 = 0;
      goto LABEL_10;
    }
  }

  v13 = [v8 stringByAppendingPathComponent:@"testWritability.log"];
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
  v17 = [NSDate dateWithTimeInterval:v16 sinceDate:a5 * -86400.0];

  v18 = +[NSFileManager defaultManager];
  v19 = [v18 contentsOfDirectoryAtPath:v8 error:0];

  if (v19)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100021B20;
    v23[3] = &unk_100051248;
    v24 = v8;
    v25 = v17;
    v27 = v29;
    v26 = v10;
    [v19 enumerateObjectsUsingBlock:v23];
  }

  v20 = [(MSDLogModel *)self fileNameForTodayUnder:v8 prefix:v9];
  v21 = [(MSDLogModel *)self enableLogToFile:v20];

LABEL_7:
  _Block_object_dispose(v29, 8);

  return v21;
}

- (id)fileNameForTodayUnder:(id)a3 prefix:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v8 = +[NSLocale currentLocale];
  [v7 setLocale:v8];

  v9 = +[NSDate date];
  v10 = [v7 components:28 fromDate:v9];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@-%4ld%02ld%02ld.log", v6, v5, [v10 year], objc_msgSend(v10, "month"), objc_msgSend(v10, "day"));

  return v11;
}

@end