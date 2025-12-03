@interface MetricsModuleInternal
+ (void)setSignalMonitor:(id)monitor;
@end

@implementation MetricsModuleInternal

+ (void)setSignalMonitor:(id)monitor
{
  monitorCopy = monitor;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Adding observability listener to MetricsModule", v7, 2u);
  }

  v5 = sub_100394730([APMetricsObservability alloc], monitorCopy);
  v6 = MetricsModule_observability;
  MetricsModule_observability = v5;
}

@end