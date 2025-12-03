@interface HAPMetricsDispatcher
+ (id)sharedInstance;
- (void)submitLogEvent:(id)event;
@end

@implementation HAPMetricsDispatcher

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027B74;
  block[3] = &unk_1002735F8;
  block[4] = self;
  if (qword_1002ACBD0 != -1)
  {
    dispatch_once(&qword_1002ACBD0, block);
  }

  v2 = qword_1002ACBC8;

  return v2;
}

- (void)submitLogEvent:(id)event
{
  eventCopy = event;
  logDispatcher = [(HAPMetricsDispatcher *)self logDispatcher];

  if (logDispatcher)
  {
    logDispatcher2 = [(HAPMetricsDispatcher *)self logDispatcher];
    [logDispatcher2 submitLogEvent:eventCopy];
  }
}

@end