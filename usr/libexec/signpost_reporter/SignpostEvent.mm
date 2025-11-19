@interface SignpostEvent
- (id)coreAnalyticsPayload;
@end

@implementation SignpostEvent

- (id)coreAnalyticsPayload
{
  v13.receiver = self;
  v13.super_class = SignpostEvent;
  v3 = [(SignpostEvent *)&v13 coreAnalyticsPayload];
  if (v3)
  {
    if (sub_100004094(self))
    {
      v4 = [(SignpostEvent *)self attributes];
      v5 = [v4 objectForKeyedSubscript:@"BundleIdOverride"];

      [v3 setObject:v5 forKeyedSubscript:@"StartProcessName"];
      v6 = sub_100002620();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C1DC(self);
      }
    }

    else
    {
      v7 = [(SignpostEvent *)self processImagePath];
      v5 = sub_1000038A0(v7);

      if (v5)
      {
        [v3 setObject:v5 forKeyedSubscript:@"StartProcessName"];
      }

      else
      {
        v8 = [(SignpostEvent *)self processName];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = @"Unknown";
        }

        [v3 setObject:v10 forKeyedSubscript:@"StartProcessName"];
      }
    }

    v11 = v3;
  }

  return v3;
}

@end