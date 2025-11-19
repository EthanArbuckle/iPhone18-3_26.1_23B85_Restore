@interface SignpostInterval
- (id)coreAnalyticsPayload;
@end

@implementation SignpostInterval

- (id)coreAnalyticsPayload
{
  v21.receiver = self;
  v21.super_class = SignpostInterval;
  v3 = [(SignpostInterval *)&v21 coreAnalyticsPayload];
  if (v3)
  {
    if (sub_100004094(self))
    {
      v4 = [(SignpostInterval *)self attributes];
      v5 = [v4 objectForKeyedSubscript:@"BundleIdOverride"];

      [v3 setObject:v5 forKeyedSubscript:@"StartProcessName"];
      [v3 setObject:v5 forKeyedSubscript:@"EndProcessName"];
      v6 = sub_100002620();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C2BC(self);
      }
    }

    else
    {
      v7 = [(SignpostInterval *)self beginEvent];
      v8 = [v7 processImagePath];
      v5 = sub_1000038A0(v8);

      if (v5)
      {
        [v3 setObject:v5 forKeyedSubscript:@"StartProcessName"];
      }

      else
      {
        v9 = [(SignpostInterval *)self beginEvent];
        v10 = [v9 processName];
        if (v10)
        {
          v11 = [(SignpostInterval *)self beginEvent];
          v12 = [v11 processName];
          [v3 setObject:v12 forKeyedSubscript:@"StartProcessName"];
        }

        else
        {
          [v3 setObject:@"Unknown" forKeyedSubscript:@"StartProcessName"];
        }
      }

      v13 = [(SignpostInterval *)self endEvent];
      v14 = [v13 processImagePath];
      v6 = sub_1000038A0(v14);

      if (v6)
      {
        [v3 setObject:v6 forKeyedSubscript:@"EndProcessName"];
      }

      else
      {
        v15 = [(SignpostInterval *)self endEvent];
        v16 = [v15 processName];
        if (v16)
        {
          v17 = [(SignpostInterval *)self endEvent];
          v18 = [v17 processName];
          [v3 setObject:v18 forKeyedSubscript:@"EndProcessName"];
        }

        else
        {
          [v3 setObject:@"Unknown" forKeyedSubscript:@"EndProcessName"];
        }
      }
    }

    v19 = v3;
  }

  return v3;
}

@end