@interface HAPMetricsDispatcher
+ (id)sharedInstance;
- (void)submitLogEvent:(id)a3;
@end

@implementation HAPMetricsDispatcher

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027B74;
  block[3] = &unk_1002735F8;
  block[4] = a1;
  if (qword_1002ACBD0 != -1)
  {
    dispatch_once(&qword_1002ACBD0, block);
  }

  v2 = qword_1002ACBC8;

  return v2;
}

- (void)submitLogEvent:(id)a3
{
  v6 = a3;
  v4 = [(HAPMetricsDispatcher *)self logDispatcher];

  if (v4)
  {
    v5 = [(HAPMetricsDispatcher *)self logDispatcher];
    [v5 submitLogEvent:v6];
  }
}

@end