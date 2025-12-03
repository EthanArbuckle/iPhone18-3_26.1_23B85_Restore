@interface NSPPrivateRelayIncompatibleNetworkStats
- (id)analyticsDict;
@end

@implementation NSPPrivateRelayIncompatibleNetworkStats

- (id)analyticsDict
{
  tierType = [(NSPPrivateRelayIncompatibleNetworkStats *)self tierType];

  if (!tierType)
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

  interfaceType = [(NSPPrivateRelayIncompatibleNetworkStats *)self interfaceType];

  if (interfaceType)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    tierType2 = [(NSPPrivateRelayIncompatibleNetworkStats *)self tierType];
    [v5 setObject:tierType2 forKeyedSubscript:@"TierType"];

    interfaceType2 = [(NSPPrivateRelayIncompatibleNetworkStats *)self interfaceType];
    [v5 setObject:interfaceType2 forKeyedSubscript:@"InterfaceType"];

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