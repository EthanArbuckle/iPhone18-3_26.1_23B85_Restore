@interface SignpostEvent
- (id)coreAnalyticsPayload;
@end

@implementation SignpostEvent

- (id)coreAnalyticsPayload
{
  v13.receiver = self;
  v13.super_class = SignpostEvent;
  coreAnalyticsPayload = [(SignpostEvent *)&v13 coreAnalyticsPayload];
  if (coreAnalyticsPayload)
  {
    if (sub_100004094(self))
    {
      attributes = [(SignpostEvent *)self attributes];
      v5 = [attributes objectForKeyedSubscript:@"BundleIdOverride"];

      [coreAnalyticsPayload setObject:v5 forKeyedSubscript:@"StartProcessName"];
      v6 = sub_100002620();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C1DC(self);
      }
    }

    else
    {
      processImagePath = [(SignpostEvent *)self processImagePath];
      v5 = sub_1000038A0(processImagePath);

      if (v5)
      {
        [coreAnalyticsPayload setObject:v5 forKeyedSubscript:@"StartProcessName"];
      }

      else
      {
        processName = [(SignpostEvent *)self processName];
        v9 = processName;
        if (processName)
        {
          v10 = processName;
        }

        else
        {
          v10 = @"Unknown";
        }

        [coreAnalyticsPayload setObject:v10 forKeyedSubscript:@"StartProcessName"];
      }
    }

    v11 = coreAnalyticsPayload;
  }

  return coreAnalyticsPayload;
}

@end