@interface RPNWActivityUtils
+ (id)activityFromToken:(id)token;
+ (id)tokenForActivity:(id)activity;
+ (id)updateOptions:(id)options withNWActivityMetrics:(id)metrics;
+ (void)failActivity:(id)activity error:(id)error;
@end

@implementation RPNWActivityUtils

+ (id)tokenForActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy && nw_activity_is_activated())
  {
    *uu = 0;
    v7 = 0;
    nw_activity_get_token();
    v4 = 0;
    if (!uuid_is_null(uu))
    {
      v4 = [[NSUUID alloc] initWithUUIDBytes:uu];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)activityFromToken:(id)token
{
  tokenCopy = token;
  if (token)
  {
    v5[0] = 0;
    v5[1] = 0;
    [token getUUIDBytes:v5];
    tokenCopy = nw_activity_create_from_token();
  }

  return tokenCopy;
}

+ (void)failActivity:(id)activity error:(id)error
{
  errorCopy = error;
  activityCopy = activity;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    [domain UTF8String];

    [errorCopy code];
    nw_activity_complete_with_reason_and_underlying_error_string();
  }

  else
  {
    nw_activity_complete_with_reason();
  }
}

+ (id)updateOptions:(id)options withNWActivityMetrics:(id)metrics
{
  optionsCopy = options;
  metricsCopy = metrics;
  if (metricsCopy)
  {
    v7 = [optionsCopy mutableCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
    }

    [v7 setObject:metricsCopy forKeyedSubscript:@"nwActivityMetrics"];

    optionsCopy = v7;
  }

  return optionsCopy;
}

@end