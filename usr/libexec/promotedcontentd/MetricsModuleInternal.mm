@interface MetricsModuleInternal
+ (void)setSignalMonitor:(id)a3;
@end

@implementation MetricsModuleInternal

+ (void)setSignalMonitor:(id)a3
{
  v3 = a3;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Adding observability listener to MetricsModule", v7, 2u);
  }

  v5 = sub_100394730([APMetricsObservability alloc], v3);
  v6 = MetricsModule_observability;
  MetricsModule_observability = v5;
}

@end