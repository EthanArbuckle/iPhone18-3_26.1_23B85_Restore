@interface _DASRateLimiterUtilities
+ (BOOL)consideredInLPMWithState:(id)state;
+ (BOOL)isAggregateClient:(id)client;
+ (id)assetsRateLimitConfiguration;
+ (id)ckRateLimitConfiguration;
+ (id)defaultRateLimiterConfiguration;
+ (id)getCurrentBootSessionUUID;
+ (id)pecRateLimitConfiguration;
+ (id)rateLimitIdentifierForActivity:(id)activity;
+ (void)adjustStartAfterDate:(id)date forActivity:(id)activity;
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

+ (BOOL)consideredInLPMWithState:(id)state
{
  stateCopy = state;
  v4 = +[_CDContextQueries keyPathForPluginStatus];
  v5 = [stateCopy objectForKeyedSubscript:v4];
  bOOLValue = [v5 BOOLValue];

  v7 = +[_CDContextQueries keyPathForLowPowerModeStatus];
  v8 = [stateCopy objectForKeyedSubscript:v7];

  LOBYTE(stateCopy) = [v8 BOOLValue];
  return (bOOLValue ^ 1) & stateCopy;
}

+ (BOOL)isAggregateClient:(id)client
{
  clientCopy = client;
  groupName = [clientCopy groupName];
  if (groupName)
  {
    v5 = groupName;
    groupName2 = [clientCopy groupName];
    v7 = [groupName2 isEqualToString:@"NSURLSessionBackgroundPoolName"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  groupName3 = [clientCopy groupName];
  if (groupName3)
  {
    v9 = groupName3;
    groupName4 = [clientCopy groupName];
    v11 = [groupName4 isEqualToString:@"com.apple.ckdiscretionaryd"];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  groupName5 = [clientCopy groupName];
  if (groupName5)
  {
    v13 = groupName5;
    groupName6 = [clientCopy groupName];
    v15 = [groupName6 containsString:@"com.apple.mlhost"];

    if (v15)
    {
      goto LABEL_9;
    }
  }

  widgetID = [clientCopy widgetID];

  if (widgetID || ([clientCopy rateLimitConfigurationName], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", _DASCKRateLimitConfigurationName), v17, (v18 & 1) != 0))
  {
LABEL_9:
    v19 = 1;
  }

  else
  {
    rateLimitConfigurationName = [clientCopy rateLimitConfigurationName];
    v19 = [rateLimitConfigurationName isEqualToString:_DASBirdRateLimitConfigurationName];
  }

  return v19;
}

+ (id)rateLimitIdentifierForActivity:(id)activity
{
  activityCopy = activity;
  rateLimitConfigurationName = [activityCopy rateLimitConfigurationName];
  if (rateLimitConfigurationName)
  {
    v6 = [NSMutableString stringWithString:rateLimitConfigurationName];
  }

  else
  {
    v6 = 0;
  }

  widgetID = [activityCopy widgetID];

  if (widgetID)
  {
    goto LABEL_11;
  }

  if (![self isAggregateClient:activityCopy] || (objc_msgSend(activityCopy, "relatedApplications"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, !v9))
  {
    if (!rateLimitConfigurationName)
    {
      identifier = [activityCopy identifier];
      v16 = [identifier containsString:@"assetsd.backgroundjobservice.lowprioritysearchbattery"];

      if (v16)
      {
        serviceName2 = _DASAssetsRateLimitConfigurationName;
        goto LABEL_12;
      }

      serviceName = [activityCopy serviceName];

      if (serviceName)
      {
        serviceName2 = [activityCopy serviceName];
        goto LABEL_12;
      }

      involvedProcesses = [activityCopy involvedProcesses];
      v19 = [involvedProcesses count];

      if (v19)
      {
        involvedProcesses2 = [activityCopy involvedProcesses];
      }

      else
      {
        relatedApplications = [activityCopy relatedApplications];
        v22 = [relatedApplications count];

        if (!v22)
        {
          bundleId = [activityCopy bundleId];

          if (!bundleId)
          {
            goto LABEL_13;
          }

          serviceName2 = [activityCopy bundleId];
LABEL_12:
          bundleId = serviceName2;
          goto LABEL_13;
        }

        involvedProcesses2 = [activityCopy relatedApplications];
      }

      v23 = involvedProcesses2;
      bundleId = [involvedProcesses2 objectAtIndexedSubscript:0];

      goto LABEL_13;
    }

LABEL_11:
    serviceName2 = v6;
    v6 = serviceName2;
    goto LABEL_12;
  }

  if (!v6)
  {
    v6 = +[NSMutableString string];
  }

  relatedApplications2 = [activityCopy relatedApplications];
  v11 = [relatedApplications2 objectAtIndexedSubscript:0];

  [v6 appendFormat:@"-%@", v11];
  v6 = v6;

  bundleId = v6;
LABEL_13:

  return bundleId;
}

+ (void)adjustStartAfterDate:(id)date forActivity:(id)activity
{
  dateCopy = date;
  activityCopy = activity;
  startAfter = [activityCopy startAfter];
  if (startAfter && (v8 = startAfter, [activityCopy startAfter], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "timeIntervalSinceDate:", dateCopy), v11 = v10, v9, v8, v11 >= 0.0))
  {
    v12 = [_DASDaemonLogger logForCategory:@"processRateLimiter"];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [activityCopy identifier];
      startAfter2 = [activityCopy startAfter];
      v15 = 138412802;
      v16 = identifier;
      v17 = 2112;
      v18 = startAfter2;
      v19 = 2112;
      v20 = dateCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activity %@ already has same or later start date %@ than proposed start date %@", &v15, 0x20u);
    }
  }

  else
  {
    [activityCopy setStartAfter:dateCopy];
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