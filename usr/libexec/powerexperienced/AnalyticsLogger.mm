@interface AnalyticsLogger
+ (id)logger;
- (AnalyticsLogger)init;
- (void)logCAEventforMode:(id)mode startDate:(id)date endDate:(id)endDate startingSOC:(id)c endingSOC:(id)oC exitReason:(id)reason;
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

- (void)logCAEventforMode:(id)mode startDate:(id)date endDate:(id)endDate startingSOC:(id)c endingSOC:(id)oC exitReason:(id)reason
{
  modeCopy = mode;
  dateCopy = date;
  endDateCopy = endDate;
  cCopy = c;
  oCCopy = oC;
  reasonCopy = reason;
  queue = [(AnalyticsLogger *)self queue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100003E90;
  v27[3] = &unk_10002C5C8;
  v28 = endDateCopy;
  v29 = dateCopy;
  v30 = modeCopy;
  v31 = reasonCopy;
  v32 = cCopy;
  v33 = oCCopy;
  v21 = oCCopy;
  v22 = cCopy;
  v23 = reasonCopy;
  v24 = modeCopy;
  v25 = dateCopy;
  v26 = endDateCopy;
  dispatch_async(queue, v27);
}

@end