@interface SignpostInterval
- (id)coreAnalyticsPayload;
@end

@implementation SignpostInterval

- (id)coreAnalyticsPayload
{
  v21.receiver = self;
  v21.super_class = SignpostInterval;
  coreAnalyticsPayload = [(SignpostInterval *)&v21 coreAnalyticsPayload];
  if (coreAnalyticsPayload)
  {
    if (sub_100004094(self))
    {
      attributes = [(SignpostInterval *)self attributes];
      v5 = [attributes objectForKeyedSubscript:@"BundleIdOverride"];

      [coreAnalyticsPayload setObject:v5 forKeyedSubscript:@"StartProcessName"];
      [coreAnalyticsPayload setObject:v5 forKeyedSubscript:@"EndProcessName"];
      v6 = sub_100002620();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C2BC(self);
      }
    }

    else
    {
      beginEvent = [(SignpostInterval *)self beginEvent];
      processImagePath = [beginEvent processImagePath];
      v5 = sub_1000038A0(processImagePath);

      if (v5)
      {
        [coreAnalyticsPayload setObject:v5 forKeyedSubscript:@"StartProcessName"];
      }

      else
      {
        beginEvent2 = [(SignpostInterval *)self beginEvent];
        processName = [beginEvent2 processName];
        if (processName)
        {
          beginEvent3 = [(SignpostInterval *)self beginEvent];
          processName2 = [beginEvent3 processName];
          [coreAnalyticsPayload setObject:processName2 forKeyedSubscript:@"StartProcessName"];
        }

        else
        {
          [coreAnalyticsPayload setObject:@"Unknown" forKeyedSubscript:@"StartProcessName"];
        }
      }

      endEvent = [(SignpostInterval *)self endEvent];
      processImagePath2 = [endEvent processImagePath];
      v6 = sub_1000038A0(processImagePath2);

      if (v6)
      {
        [coreAnalyticsPayload setObject:v6 forKeyedSubscript:@"EndProcessName"];
      }

      else
      {
        endEvent2 = [(SignpostInterval *)self endEvent];
        processName3 = [endEvent2 processName];
        if (processName3)
        {
          endEvent3 = [(SignpostInterval *)self endEvent];
          processName4 = [endEvent3 processName];
          [coreAnalyticsPayload setObject:processName4 forKeyedSubscript:@"EndProcessName"];
        }

        else
        {
          [coreAnalyticsPayload setObject:@"Unknown" forKeyedSubscript:@"EndProcessName"];
        }
      }
    }

    v19 = coreAnalyticsPayload;
  }

  return coreAnalyticsPayload;
}

@end