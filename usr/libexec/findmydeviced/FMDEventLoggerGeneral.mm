@interface FMDEventLoggerGeneral
+ (id)sharedInstance;
- (FMDEventLoggerGeneral)init;
- (void)sendError:(id)error forEventName:(id)name;
@end

@implementation FMDEventLoggerGeneral

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BDD20;
  block[3] = &unk_1002CD2C8;
  block[4] = self;
  if (qword_1003149D0 != -1)
  {
    dispatch_once(&qword_1003149D0, block);
  }

  v2 = qword_1003149D8;

  return v2;
}

- (FMDEventLoggerGeneral)init
{
  v6.receiver = self;
  v6.super_class = FMDEventLoggerGeneral;
  v2 = [(FMDEventLoggerGeneral *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(FMDEventLoggerGeneral *)v2 setLoggedEvents:v3];

    v4 = dispatch_queue_create("FMDEventLoggerGeneralQueue", 0);
    [(FMDEventLoggerGeneral *)v2 setLogQueue:v4];
  }

  return v2;
}

- (void)sendError:(id)error forEventName:(id)name
{
  errorCopy = error;
  nameCopy = name;
  objc_initWeak(&location, self);
  logQueue = [(FMDEventLoggerGeneral *)self logQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BDEFC;
  v11[3] = &unk_1002CE3B8;
  objc_copyWeak(&v14, &location);
  v12 = nameCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = nameCopy;
  dispatch_async(logQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end