@interface AnalyticsLogger
+ (id)logger;
- (AnalyticsLogger)init;
- (void)logCAEventforMode:(id)a3 startDate:(id)a4 endDate:(id)a5 startingSOC:(id)a6 endingSOC:(id)a7 exitReason:(id)a8;
@end

@implementation AnalyticsLogger

+ (id)logger
{
  if (qword_100036AE8 != -1)
  {
    sub_100018654();
  }

  v3 = qword_100036AE0;

  return v3;
}

- (AnalyticsLogger)init
{
  v6.receiver = self;
  v6.super_class = AnalyticsLogger;
  v2 = [(AnalyticsLogger *)&v6 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.powerexperienced.analytics.logger", v3);
  [(AnalyticsLogger *)v2 setQueue:v4];

  return v2;
}

- (void)logCAEventforMode:(id)a3 startDate:(id)a4 endDate:(id)a5 startingSOC:(id)a6 endingSOC:(id)a7 exitReason:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(AnalyticsLogger *)self queue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100003E90;
  v27[3] = &unk_10002C5C8;
  v28 = v16;
  v29 = v15;
  v30 = v14;
  v31 = v19;
  v32 = v17;
  v33 = v18;
  v21 = v18;
  v22 = v17;
  v23 = v19;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  dispatch_async(v20, v27);
}

@end