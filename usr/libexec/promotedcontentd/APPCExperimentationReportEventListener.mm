@interface APPCExperimentationReportEventListener
+ (id)sharedInstance;
- (void)_storeReceivedEvent:(id)a3;
- (void)start;
@end

@implementation APPCExperimentationReportEventListener

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100383B54;
  block[3] = &unk_10047E780;
  block[4] = a1;
  if (qword_1004EA218[0] != -1)
  {
    dispatch_once(qword_1004EA218, block);
  }

  v2 = qword_1004EA210;

  return v2;
}

- (void)start
{
  v3 = [APReceivedMetricProcessor alloc];
  v4 = +[APDatabaseManager mainDatabase];
  v5 = [(APReceivedMetricProcessor *)v3 initWithDatabase:v4];
  eventProcessor = self->_eventProcessor;
  self->_eventProcessor = v5;

  objc_initWeak(&location, self);
  v7 = +[MetricsModule storage];
  v8 = [v7 notificationRegistrar];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100383D70;
  v15 = &unk_100480618;
  objc_copyWeak(&v16, &location);
  v9 = [v8 registerHandlerForPurpose:100 andMetric:1000 closure:&v12];

  v10 = [NSNumber numberWithInteger:v9, v12, v13, v14, v15];
  v18 = v10;
  v11 = [NSArray arrayWithObjects:&v18 count:1];
  [(APPCBaseEventListener *)self setTokens:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_storeReceivedEvent:(id)a3
{
  v4 = a3;
  v5 = [(APPCExperimentationReportEventListener *)self eventProcessor];
  [v5 processReceivedMetric:v4];
}

@end