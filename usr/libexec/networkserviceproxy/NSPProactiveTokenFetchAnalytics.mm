@interface NSPProactiveTokenFetchAnalytics
- (id)analyticsDict;
@end

@implementation NSPProactiveTokenFetchAnalytics

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSDateFormatter);
  v4 = v3;
  if (v3)
  {
    [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
    v5 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    [v4 setTimeZone:v5];

    v6 = objc_alloc_init(NSMutableDictionary);
    if (v6)
    {
      v7 = v6;
      vendor = [(NSPProactiveTokenFetchAnalytics *)self vendor];
      [v7 setObject:vendor forKeyedSubscript:@"Vendor"];

      type = [(NSPProactiveTokenFetchAnalytics *)self type];
      [v7 setObject:type forKeyedSubscript:@"Type"];

      stats = [(NSPProactiveTokenFetchAnalytics *)self stats];
      [v7 addEntriesFromDictionary:stats];

      fromDate = [(NSPProactiveTokenFetchAnalytics *)self fromDate];
      v12 = [v4 stringFromDate:fromDate];
      [v7 setObject:v12 forKeyedSubscript:@"FromDate"];

      toDate = [(NSPProactiveTokenFetchAnalytics *)self toDate];
      v14 = [v4 stringFromDate:toDate];
      [v7 setObject:v14 forKeyedSubscript:@"ToDate"];

      if ([(NSPProactiveTokenFetchAnalytics *)self tokenFetchTriggered])
      {
        v15 = @"Yes";
      }

      else
      {
        v15 = @"No";
      }

      [v7 setObject:v15 forKeyedSubscript:@"TokenFetchTriggered"];
      v16 = v7;
      v17 = v16;
      goto LABEL_7;
    }

    v19 = nplog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = 136315138;
      v21 = "[NSPProactiveTokenFetchAnalytics analyticsDict]";
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "%s called with null dictionary", &v20, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v20 = 136315138;
      v21 = "[NSPProactiveTokenFetchAnalytics analyticsDict]";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null dateFormatter", &v20, 0xCu);
    }
  }

  v17 = 0;
LABEL_7:

  return v17;
}

@end