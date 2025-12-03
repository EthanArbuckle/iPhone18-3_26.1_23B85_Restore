@interface APMetricHelpers
+ (Class)diagnosticDaemonMetricHelper;
+ (Class)journeyDaemonMetricHelper;
+ (id)diagnosticMetricHelperForContentData:(id)data;
+ (id)journeyMetricHelperForContentData:(id)data;
+ (void)setDiagnosticDaemonMetricHelper:(Class)helper;
+ (void)setJourneyDaemonMetricHelper:(Class)helper;
@end

@implementation APMetricHelpers

+ (Class)diagnosticDaemonMetricHelper
{
  if (qword_1004E6E08 != -1)
  {
    sub_100395184();
  }

  v3 = qword_1004E6E10;

  return v3;
}

+ (void)setDiagnosticDaemonMetricHelper:(Class)helper
{
  v4 = +[NSProcessInfo processInfo];
  isRunningTests = [v4 isRunningTests];

  if (isRunningTests)
  {
    proto = &OBJC_PROTOCOL___APDiagnosticDaemonMetricHelping;
    if ([(objc_class *)helper conformsToProtocol:?])
    {
      qword_1004E6E10 = helper;
    }

    else
    {
      v6 = NSStringFromClass(helper);
      v7 = NSStringFromProtocol(proto);
      v8 = [NSString stringWithFormat:@"Class %@ does not implement protocol %@!", v6, v7];

      APSimulateCrash();
    }
  }
}

+ (Class)journeyDaemonMetricHelper
{
  if (qword_1004E6E18 != -1)
  {
    sub_100395198();
  }

  v3 = qword_1004E6E20;

  return v3;
}

+ (void)setJourneyDaemonMetricHelper:(Class)helper
{
  v4 = +[NSProcessInfo processInfo];
  isRunningTests = [v4 isRunningTests];

  if (isRunningTests)
  {
    proto = &OBJC_PROTOCOL___APJourneyDaemonMetricHelping;
    if ([(objc_class *)helper conformsToProtocol:?])
    {
      qword_1004E6E20 = helper;
    }

    else
    {
      v6 = NSStringFromClass(helper);
      v7 = NSStringFromProtocol(proto);
      v8 = [NSString stringWithFormat:@"Class %@ does not implement protocol %@!", v6, v7];

      APSimulateCrash();
    }
  }
}

+ (id)diagnosticMetricHelperForContentData:(id)data
{
  dataCopy = data;
  v5 = [objc_alloc(objc_msgSend(self "diagnosticDaemonMetricHelper"))];

  return v5;
}

+ (id)journeyMetricHelperForContentData:(id)data
{
  dataCopy = data;
  v5 = [objc_alloc(objc_msgSend(self "journeyDaemonMetricHelper"))];

  return v5;
}

@end