@interface NSPOutageDurationStats
- (id)analyticsDict;
- (id)outageTypeToString;
@end

@implementation NSPOutageDurationStats

- (id)outageTypeToString
{
  outageType = [(NSPOutageDurationStats *)self outageType];
  if (outageType - 1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100109DD0 + outageType - 1);
  }
}

- (id)analyticsDict
{
  if ([(NSPOutageDurationStats *)self outageType])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    outageTypeToString = [(NSPOutageDurationStats *)self outageTypeToString];
    [v3 setObject:outageTypeToString forKeyedSubscript:@"OutageType"];

    v5 = [NSNumber numberWithUnsignedInteger:[(NSPOutageDurationStats *)self outageDurationSec]];
    [v3 setObject:v5 forKeyedSubscript:@"OutageDuration"];
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NSPOutageDurationStats analyticsDict]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null self.outageType", &v8, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

@end