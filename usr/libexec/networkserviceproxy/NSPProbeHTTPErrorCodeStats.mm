@interface NSPProbeHTTPErrorCodeStats
- (id)analyticsDict;
@end

@implementation NSPProbeHTTPErrorCodeStats

- (id)analyticsDict
{
  v3 = [(NSPProbeHTTPErrorCodeStats *)self HTTPErrorCode];

  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [(NSPProbeHTTPErrorCodeStats *)self interfaceType];
    [v4 setObject:v5 forKeyedSubscript:@"InterfaceType"];

    v6 = [NSNumber numberWithBool:[(NSPProbeHTTPErrorCodeStats *)self directPath]];
    [v4 setObject:v6 forKeyedSubscript:@"DirectPath"];

    v7 = [(NSPProbeHTTPErrorCodeStats *)self HTTPErrorCode];
    [v4 setObject:v7 forKeyedSubscript:@"HTTPCode"];
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315138;
      v11 = "[NSPProbeHTTPErrorCodeStats analyticsDict]";
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s called with null self.HTTPErrorCode", &v10, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end