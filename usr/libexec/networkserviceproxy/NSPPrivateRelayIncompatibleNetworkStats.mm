@interface NSPPrivateRelayIncompatibleNetworkStats
- (id)analyticsDict;
@end

@implementation NSPPrivateRelayIncompatibleNetworkStats

- (id)analyticsDict
{
  v3 = [(NSPPrivateRelayIncompatibleNetworkStats *)self tierType];

  if (!v3)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v11 = 136315138;
    v12 = "[NSPPrivateRelayIncompatibleNetworkStats analyticsDict]";
    v10 = "%s called with null self.tierType";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v10, &v11, 0xCu);
    goto LABEL_10;
  }

  v4 = [(NSPPrivateRelayIncompatibleNetworkStats *)self interfaceType];

  if (v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [(NSPPrivateRelayIncompatibleNetworkStats *)self tierType];
    [v5 setObject:v6 forKeyedSubscript:@"TierType"];

    v7 = [(NSPPrivateRelayIncompatibleNetworkStats *)self interfaceType];
    [v5 setObject:v7 forKeyedSubscript:@"InterfaceType"];

    goto LABEL_4;
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v11 = 136315138;
    v12 = "[NSPPrivateRelayIncompatibleNetworkStats analyticsDict]";
    v10 = "%s called with null self.interfaceType";
    goto LABEL_12;
  }

LABEL_10:

  v5 = 0;
LABEL_4:

  return v5;
}

@end