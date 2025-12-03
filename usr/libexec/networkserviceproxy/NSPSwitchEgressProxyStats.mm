@interface NSPSwitchEgressProxyStats
- (id)analyticsDict;
@end

@implementation NSPSwitchEgressProxyStats

- (id)analyticsDict
{
  tierType = [(NSPSwitchEgressProxyStats *)self tierType];

  if (!tierType)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v13 = 136315138;
    v14 = "[NSPSwitchEgressProxyStats analyticsDict]";
    v12 = "%s called with null self.tierType";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v12, &v13, 0xCu);
    goto LABEL_10;
  }

  vendor = [(NSPSwitchEgressProxyStats *)self vendor];

  if (vendor)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    tierType2 = [(NSPSwitchEgressProxyStats *)self tierType];
    [v5 setObject:tierType2 forKeyedSubscript:@"TierType"];

    vendor2 = [(NSPSwitchEgressProxyStats *)self vendor];
    [v5 setObject:vendor2 forKeyedSubscript:@"Vendor"];

    v8 = [NSNumber numberWithBool:[(NSPSwitchEgressProxyStats *)self primaryProxy]];
    [v5 setObject:v8 forKeyedSubscript:@"PrimaryProxy"];

    v9 = [NSNumber numberWithBool:[(NSPSwitchEgressProxyStats *)self fallbackProxy]];
    [v5 setObject:v9 forKeyedSubscript:@"FallbackProxy"];

    goto LABEL_4;
  }

  v11 = nplog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = 136315138;
    v14 = "[NSPSwitchEgressProxyStats analyticsDict]";
    v12 = "%s called with null self.vendor";
    goto LABEL_12;
  }

LABEL_10:

  v5 = 0;
LABEL_4:

  return v5;
}

@end