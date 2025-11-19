@interface NSPBadTokenInfoStats
- (id)analyticsDict;
@end

@implementation NSPBadTokenInfoStats

- (id)analyticsDict
{
  v3 = [(NSPBadTokenInfoStats *)self tierType];

  if (!v3)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v13 = 136315138;
    v14 = "[NSPBadTokenInfoStats analyticsDict]";
    v12 = "%s called with null self.tierType";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v12, &v13, 0xCu);
    goto LABEL_10;
  }

  v4 = [(NSPBadTokenInfoStats *)self tokenProxy];

  if (v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [(NSPBadTokenInfoStats *)self tierType];
    [v5 setObject:v6 forKeyedSubscript:@"TierType"];

    v7 = [(NSPBadTokenInfoStats *)self tokenProxy];
    [v5 setObject:v7 forKeyedSubscript:@"TokenProxy"];

    v8 = [NSNumber numberWithUnsignedInteger:[(NSPBadTokenInfoStats *)self configAgeHours]];
    [v5 setObject:v8 forKeyedSubscript:@"ConfigAge"];

    v9 = [(NSPBadTokenInfoStats *)self configTag];
    [v5 setObject:v9 forKeyedSubscript:@"ConfigTag"];

    goto LABEL_4;
  }

  v11 = nplog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = 136315138;
    v14 = "[NSPBadTokenInfoStats analyticsDict]";
    v12 = "%s called with null self.tokenProxy";
    goto LABEL_12;
  }

LABEL_10:

  v5 = 0;
LABEL_4:

  return v5;
}

@end