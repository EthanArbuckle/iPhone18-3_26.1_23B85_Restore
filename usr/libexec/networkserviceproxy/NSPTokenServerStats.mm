@interface NSPTokenServerStats
- (id)analyticsDict;
@end

@implementation NSPTokenServerStats

- (id)analyticsDict
{
  tierType = [(NSPTokenServerStats *)self tierType];

  if (!tierType)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v11 = 136315138;
    v12 = "[NSPTokenServerStats analyticsDict]";
    v10 = "%s called with null self.tierType";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v10, &v11, 0xCu);
    goto LABEL_10;
  }

  tokenServerAddress = [(NSPTokenServerStats *)self tokenServerAddress];

  if (tokenServerAddress)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    tierType2 = [(NSPTokenServerStats *)self tierType];
    [v5 setObject:tierType2 forKeyedSubscript:@"TierType"];

    tokenServerAddress2 = [(NSPTokenServerStats *)self tokenServerAddress];
    [v5 setObject:tokenServerAddress2 forKeyedSubscript:@"TokenServerAddress"];

    goto LABEL_4;
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v11 = 136315138;
    v12 = "[NSPTokenServerStats analyticsDict]";
    v10 = "%s called with null self.tokenServerAddress";
    goto LABEL_12;
  }

LABEL_10:

  v5 = 0;
LABEL_4:

  return v5;
}

@end