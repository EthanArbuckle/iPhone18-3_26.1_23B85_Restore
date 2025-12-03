@interface FMDEventLoggerFacilityDataPeek
- (FMDEventLoggerFacilityDataPeek)init;
- (void)logEvent:(id)event;
@end

@implementation FMDEventLoggerFacilityDataPeek

- (FMDEventLoggerFacilityDataPeek)init
{
  v7.receiver = self;
  v7.super_class = FMDEventLoggerFacilityDataPeek;
  v2 = [(FMDEventLoggerFacilityDataPeek *)&v7 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    bundleIdentifier = [v3 bundleIdentifier];

    v5 = [bundleIdentifier stringByAppendingString:@"."];
    [(FMDEventLoggerFacilityDataPeek *)v2 setBaseIdentifierKey:v5];
  }

  return v2;
}

- (void)logEvent:(id)event
{
  eventCopy = event;
  if ([(FMDEventLoggerFacilityDataPeek *)self shouldLog])
  {
    baseIdentifierKey = [(FMDEventLoggerFacilityDataPeek *)self baseIdentifierKey];
    eventName = [eventCopy eventName];
    v7 = [baseIdentifierKey stringByAppendingString:eventName];

    userInfo = [eventCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"FMDEventLoggerFacilityDataPeekDistributionValue"];

    if (v9)
    {
      [v9 doubleValue];
      v11 = v10;
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = v7;
        v19 = 2048;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DataPeek Distribution : %@ %f", &v17, 0x16u);
      }

      ADClientPushValueForDistributionKey();
    }

    userInfo2 = [eventCopy userInfo];
    v14 = [userInfo2 objectForKeyedSubscript:@"FMDEventLoggerFacilityDataPeekCompoundScalarValue"];

    if (v14)
    {
      integerValue = [v14 integerValue];
      v16 = sub_100002880();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = v7;
        v19 = 2048;
        v20 = integerValue;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DataPeek Compound Scalar : %@ %lli", &v17, 0x16u);
      }

      ADClientAddValueForScalarKey();
    }
  }
}

@end