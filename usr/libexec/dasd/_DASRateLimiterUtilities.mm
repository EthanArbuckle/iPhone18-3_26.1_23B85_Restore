@interface _DASRateLimiterUtilities
+ (BOOL)consideredInLPMWithState:(id)a3;
+ (BOOL)isAggregateClient:(id)a3;
+ (id)assetsRateLimitConfiguration;
+ (id)ckRateLimitConfiguration;
+ (id)defaultRateLimiterConfiguration;
+ (id)getCurrentBootSessionUUID;
+ (id)pecRateLimitConfiguration;
+ (id)rateLimitIdentifierForActivity:(id)a3;
+ (void)adjustStartAfterDate:(id)a3 forActivity:(id)a4;
@end

@implementation _DASRateLimiterUtilities

+ (id)defaultRateLimiterConfiguration
{
  v2 = +[NSMutableArray array];
  v3 = [_DASActivityRateLimit rateLimitWithMaximum:25 perWindow:300.0];
  [v2 addObject:v3];
  v4 = [_DASActivityRateLimit rateLimitWithMaximum:60 perWindow:3600.0];

  [v2 addObject:v4];
  v5 = [_DASActivityRateLimitConfiguration rateLimitConfigurationWithName:_DASDefaultConfigurationName andLimits:v2];

  return v5;
}

+ (id)ckRateLimitConfiguration
{
  v2 = +[NSMutableArray array];
  v3 = [_DASActivityRateLimit rateLimitWithMaximum:60 perWindow:60.0];
  [v2 addObject:v3];
  v4 = [_DASActivityRateLimit rateLimitWithMaximum:120 perWindow:300.0];

  [v2 addObject:v4];
  v5 = [_DASActivityRateLimit rateLimitWithMaximum:360 perWindow:3600.0];

  [v2 addObject:v5];
  v6 = [_DASActivityRateLimit rateLimitWithMaximum:480 perWindow:14400.0];

  [v2 addObject:v6];
  v7 = [_DASActivityRateLimit rateLimitWithMaximum:1080 perWindow:86400.0];

  [v2 addObject:v7];
  v8 = [_DASActivityRateLimitConfiguration rateLimitConfigurationWithName:_DASCKRateLimitConfigurationName andLimits:v2];

  return v8;
}

+ (id)pecRateLimitConfiguration
{
  v2 = +[NSMutableArray array];
  v3 = [_DASActivityRateLimit rateLimitWithMaximum:100 perWindow:86400.0];
  [v2 addObject:v3];
  v4 = [_DASActivityRateLimitConfiguration rateLimitConfigurationWithName:_DASPECRateLimitConfigurationName andLimits:v2];

  return v4;
}

+ (id)assetsRateLimitConfiguration
{
  v2 = +[NSMutableArray array];
  v3 = [_DASActivityRateLimit rateLimitWithMaximum:1 perWindow:1800.0];
  [v2 addObject:v3];
  v4 = [_DASActivityRateLimitConfiguration rateLimitConfigurationWithName:_DASAssetsRateLimitConfigurationName andLimits:v2];

  return v4;
}

+ (BOOL)consideredInLPMWithState:(id)a3
{
  v3 = a3;
  v4 = +[_CDContextQueries keyPathForPluginStatus];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 BOOLValue];

  v7 = +[_CDContextQueries keyPathForLowPowerModeStatus];
  v8 = [v3 objectForKeyedSubscript:v7];

  LOBYTE(v3) = [v8 BOOLValue];
  return (v6 ^ 1) & v3;
}

+ (BOOL)isAggregateClient:(id)a3
{
  v3 = a3;
  v4 = [v3 groupName];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 groupName];
    v7 = [v6 isEqualToString:@"NSURLSessionBackgroundPoolName"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [v3 groupName];
  if (v8)
  {
    v9 = v8;
    v10 = [v3 groupName];
    v11 = [v10 isEqualToString:@"com.apple.ckdiscretionaryd"];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  v12 = [v3 groupName];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 groupName];
    v15 = [v14 containsString:@"com.apple.mlhost"];

    if (v15)
    {
      goto LABEL_9;
    }
  }

  v16 = [v3 widgetID];

  if (v16 || ([v3 rateLimitConfigurationName], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", _DASCKRateLimitConfigurationName), v17, (v18 & 1) != 0))
  {
LABEL_9:
    v19 = 1;
  }

  else
  {
    v21 = [v3 rateLimitConfigurationName];
    v19 = [v21 isEqualToString:_DASBirdRateLimitConfigurationName];
  }

  return v19;
}

+ (id)rateLimitIdentifierForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 rateLimitConfigurationName];
  if (v5)
  {
    v6 = [NSMutableString stringWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 widgetID];

  if (v7)
  {
    goto LABEL_11;
  }

  if (![a1 isAggregateClient:v4] || (objc_msgSend(v4, "relatedApplications"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, !v9))
  {
    if (!v5)
    {
      v15 = [v4 identifier];
      v16 = [v15 containsString:@"assetsd.backgroundjobservice.lowprioritysearchbattery"];

      if (v16)
      {
        v13 = _DASAssetsRateLimitConfigurationName;
        goto LABEL_12;
      }

      v17 = [v4 serviceName];

      if (v17)
      {
        v13 = [v4 serviceName];
        goto LABEL_12;
      }

      v18 = [v4 involvedProcesses];
      v19 = [v18 count];

      if (v19)
      {
        v20 = [v4 involvedProcesses];
      }

      else
      {
        v21 = [v4 relatedApplications];
        v22 = [v21 count];

        if (!v22)
        {
          v12 = [v4 bundleId];

          if (!v12)
          {
            goto LABEL_13;
          }

          v13 = [v4 bundleId];
LABEL_12:
          v12 = v13;
          goto LABEL_13;
        }

        v20 = [v4 relatedApplications];
      }

      v23 = v20;
      v12 = [v20 objectAtIndexedSubscript:0];

      goto LABEL_13;
    }

LABEL_11:
    v13 = v6;
    v6 = v13;
    goto LABEL_12;
  }

  if (!v6)
  {
    v6 = +[NSMutableString string];
  }

  v10 = [v4 relatedApplications];
  v11 = [v10 objectAtIndexedSubscript:0];

  [v6 appendFormat:@"-%@", v11];
  v6 = v6;

  v12 = v6;
LABEL_13:

  return v12;
}

+ (void)adjustStartAfterDate:(id)a3 forActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 startAfter];
  if (v7 && (v8 = v7, [v6 startAfter], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "timeIntervalSinceDate:", v5), v11 = v10, v9, v8, v11 >= 0.0))
  {
    v12 = [_DASDaemonLogger logForCategory:@"processRateLimiter"];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 identifier];
      v14 = [v6 startAfter];
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activity %@ already has same or later start date %@ than proposed start date %@", &v15, 0x20u);
    }
  }

  else
  {
    [v6 setStartAfter:v5];
  }
}

+ (id)getCurrentBootSessionUUID
{
  size = 0;
  sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0);
  v2 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctlbyname("kern.bootsessionuuid", v2, &size, 0, 0);
  v3 = [NSString stringWithUTF8String:v2];
  free(v2);

  return v3;
}

@end