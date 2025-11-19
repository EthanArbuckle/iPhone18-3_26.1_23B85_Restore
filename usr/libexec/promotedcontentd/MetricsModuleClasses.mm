@interface MetricsModuleClasses
+ (Class)batchClass;
+ (Class)httpDeliveryClass;
+ (Class)metricClass;
+ (Class)notificationRegistrarClass;
+ (Class)purposeClass;
+ (Class)serverDeliveryClass;
+ (Class)storageClass;
+ (void)setBatchClass:(Class)a3;
+ (void)setHttpDeliveryClass:(Class)a3;
+ (void)setMetricClass:(Class)a3;
+ (void)setNotificationRegistrarClass:(Class)a3;
+ (void)setRouteClass:(Class)a3;
+ (void)setServerDeliveryClass:(Class)a3;
+ (void)setStorageClass:(Class)a3;
@end

@implementation MetricsModuleClasses

+ (Class)batchClass
{
  if (qword_1004E6D88 != -1)
  {
    sub_1003950AC();
  }

  v3 = qword_1004E6D90;

  return v3;
}

+ (Class)storageClass
{
  if (qword_1004E6DD8 != -1)
  {
    sub_100395110();
  }

  v3 = qword_1004E6DE0;

  return v3;
}

+ (Class)metricClass
{
  if (qword_1004E6D78 != -1)
  {
    sub_100395098();
  }

  v3 = qword_1004E6D80;

  return v3;
}

+ (void)setMetricClass:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APMetricProtocol;
    if ([(objc_class *)a3 conformsToProtocol:?])
    {
      qword_1004E6D80 = a3;
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

+ (void)setBatchClass:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APMetricBatchable;
    if ([(objc_class *)a3 conformsToProtocol:?])
    {
      qword_1004E6D90 = a3;
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

+ (Class)notificationRegistrarClass
{
  if (qword_1004E6D98 != -1)
  {
    sub_1003950C0();
  }

  v3 = qword_1004E6DA0;

  return v3;
}

+ (void)setNotificationRegistrarClass:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APMetricNotificationRegister;
    v6 = &OBJC_PROTOCOL___APMetricReceiving;
    if ([(objc_class *)a3 conformsToProtocol:proto]&& [(objc_class *)a3 conformsToProtocol:v6])
    {
      qword_1004E6DA0 = a3;
    }

    else
    {
      v7 = NSStringFromClass(a3);
      v8 = NSStringFromProtocol(proto);
      v9 = NSStringFromProtocol(v6);
      v10 = [NSString stringWithFormat:@"Class %@ does not implement both the %@ or %@ protocols!", v7, v8, v9];

      APSimulateCrash();
    }
  }
}

+ (Class)purposeClass
{
  if (qword_1004E6DA8 != -1)
  {
    sub_1003950D4();
  }

  v3 = qword_1004E6DB0;

  return v3;
}

+ (void)setRouteClass:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APMetricRoutable;
    if ([(objc_class *)a3 conformsToProtocol:?])
    {
      qword_1004E6DB0 = a3;
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

+ (Class)httpDeliveryClass
{
  if (qword_1004E6DB8 != -1)
  {
    sub_1003950E8();
  }

  v3 = qword_1004E6DC0;

  return v3;
}

+ (void)setHttpDeliveryClass:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APMetricHTTPDelivering;
    if ([(objc_class *)a3 conformsToProtocol:?])
    {
      qword_1004E6DC0 = a3;
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

+ (Class)serverDeliveryClass
{
  if (qword_1004E6DC8 != -1)
  {
    sub_1003950FC();
  }

  v3 = qword_1004E6DD0;

  return v3;
}

+ (void)setServerDeliveryClass:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APMetricServerDelivering;
    if ([(objc_class *)a3 conformsToProtocol:?])
    {
      qword_1004E6DD0 = a3;
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

+ (void)setStorageClass:(Class)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isRunningTests];

  if (v5)
  {
    proto = &OBJC_PROTOCOL___APMetricReceiving;
    if ([(objc_class *)a3 conformsToProtocol:?]&& [(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___APMetricStoring])
    {
      qword_1004E6DE0 = a3;
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

@end