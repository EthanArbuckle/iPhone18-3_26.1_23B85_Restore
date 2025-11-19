@interface APMetricHelpers
+ (Class)diagnosticDaemonMetricHelper;
+ (Class)journeyDaemonMetricHelper;
+ (id)diagnosticMetricHelperForContentData:(id)a3;
+ (id)journeyMetricHelperForContentData:(id)a3;
+ (void)setDiagnosticDaemonMetricHelper:(Class)a3;
+ (void)setJourneyDaemonMetricHelper:(Class)a3;
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

+ (void)setDiagnosticDaemonMetricHelper:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APDiagnosticDaemonMetricHelping;
    if ([(objc_class *)a3 conformsToProtocol:?])
    {
      qword_1004E6E10 = a3;
    }

    else
    {
      v6 = NSStringFromClass(a3);
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

+ (void)setJourneyDaemonMetricHelper:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APJourneyDaemonMetricHelping;
    if ([(objc_class *)a3 conformsToProtocol:?])
    {
      qword_1004E6E20 = a3;
    }

    else
    {
      v6 = NSStringFromClass(a3);
      v7 = NSStringFromProtocol(proto);
      v8 = [NSString stringWithFormat:@"Class %@ does not implement protocol %@!", v6, v7];

      APSimulateCrash();
    }
  }
}

+ (id)diagnosticMetricHelperForContentData:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 "diagnosticDaemonMetricHelper"))];

  return v5;
}

+ (id)journeyMetricHelperForContentData:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 "journeyDaemonMetricHelper"))];

  return v5;
}

@end