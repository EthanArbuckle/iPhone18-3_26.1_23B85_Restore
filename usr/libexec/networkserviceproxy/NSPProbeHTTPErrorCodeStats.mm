@interface NSPProbeHTTPErrorCodeStats
- (id)analyticsDict;
@end

@implementation NSPProbeHTTPErrorCodeStats

- (id)analyticsDict
{
  hTTPErrorCode = [(NSPProbeHTTPErrorCodeStats *)self HTTPErrorCode];

  if (hTTPErrorCode)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    interfaceType = [(NSPProbeHTTPErrorCodeStats *)self interfaceType];
    [v4 setObject:interfaceType forKeyedSubscript:@"InterfaceType"];

    v6 = [NSNumber numberWithBool:[(NSPProbeHTTPErrorCodeStats *)self directPath]];
    [v4 setObject:v6 forKeyedSubscript:@"DirectPath"];

    hTTPErrorCode2 = [(NSPProbeHTTPErrorCodeStats *)self HTTPErrorCode];
    [v4 setObject:hTTPErrorCode2 forKeyedSubscript:@"HTTPCode"];
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