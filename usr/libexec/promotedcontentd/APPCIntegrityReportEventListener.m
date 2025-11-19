@interface APPCIntegrityReportEventListener
+ (id)sharedInstance;
- (void)_storeIntegrityEvent:(id)a3;
- (void)start;
@end

@implementation APPCIntegrityReportEventListener

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037830C;
  block[3] = &unk_10047E780;
  block[4] = a1;
  if (qword_1004EA1B8 != -1)
  {
    dispatch_once(&qword_1004EA1B8, block);
  }

  v2 = qword_1004EA1B0;

  return v2;
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = +[MetricsModule storage];
  v4 = [v3 notificationRegistrar];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1003784D8;
  v11 = &unk_100480618;
  objc_copyWeak(&v12, &location);
  v5 = [v4 registerHandlerForExternalPurposesAndAllMetricsWithClosure:&v8];

  v6 = [NSNumber numberWithInteger:v5, v8, v9, v10, v11];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  [(APPCBaseEventListener *)self setTokens:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_storeIntegrityEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 environment];

  if (!v4)
  {
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 metric]);
    v6 = [APReportDate alloc];
    v7 = +[NSDate date];
    v8 = [(APReportDate *)v6 initWithDate:v7];

    v9 = +[APDatabaseManager mainDatabase];
    v10 = [v9 getTableForClass:objc_opt_class()];

    v11 = [NSNumber numberWithInteger:[(APReportDate *)v8 monthDayInteger]];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 purpose]);
    v13 = [v3 branch];
    v14 = [v10 addCountForDayOfYear:v11 purpose:v12 event:v5 value:0 environment:@"PROD" branch:v13];

    if ((v14 & 1) == 0)
    {
      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 138477827;
        v18 = objc_opt_class();
        v16 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{private}@] Error: Store integrity event to DB failed.", &v17, 0xCu);
      }
    }
  }
}

@end