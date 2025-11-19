@interface FMDEventLoggerGeneral
+ (id)sharedInstance;
- (FMDEventLoggerGeneral)init;
- (void)sendError:(id)a3 forEventName:(id)a4;
@end

@implementation FMDEventLoggerGeneral

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BDD20;
  block[3] = &unk_1002CD2C8;
  block[4] = a1;
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

- (void)sendError:(id)a3 forEventName:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(FMDEventLoggerGeneral *)self logQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BDEFC;
  v11[3] = &unk_1002CE3B8;
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end